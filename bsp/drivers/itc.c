
/*
 * Sistemas operativos empotrados
 * Driver para el controlador de interrupciones del MC1322x
 */

#include "system.h"

/*****************************************************************************/

/**
 * Acceso estructurado a los registros de control del ITC del MC1322x
 */
typedef struct{
  uint32_t INTCNTL;
  uint32_t NIMASK;
  uint32_t INTENNUM;
  uint32_t INTDISNUM;
  uint32_t INTENABLE;
  uint32_t INTTYPE;
  uint32_t RESERVED[4];
  uint32_t NIVECTOR;
  uint32_t FIVECTOR;
  uint32_t INTSRC;
  uint32_t INTFRC;
  uint32_t NIPEND;
  uint32_t FIPEND;
} itc_regs_t;

static volatile itc_regs_t* const itc_regs = ITC_BASE;

/**
 * Tabla de manejadores de interrupción.
 */
static itc_handler_t itc_handlers[itc_src_max];

/**
 * Variable para almacenar una copia de INTENABLE
 */
static uint32_t OLD_INTENABLE;

/*****************************************************************************/

/**
 * Inicializa el controlador de interrupciones.
 * Deshabilita los bits I y F de la CPU, inicializa la tabla de manejadores a NULL,
 * y habilita el arbitraje de interrupciones Normales y rápidas en el controlador
 * de interupciones.
 */
inline void itc_init (){
  int i;

  for(i=0; i < itc_src_max; i++)
    itc_handlers[i] = NULL;

  // Desactivamos la simulación de interrupciones
  itc_regs -> INTFRC = 0;
  // Deshabilitamos todas las fuentes de interrupción
  itc_regs -> INTENABLE = 0;
  // Ponemos a 0 los bits 19 y 20 para activar el arbitraje de interrupciones IRQ y FIQ
  itc_regs -> INTCNTL = 0;
}

/*****************************************************************************/

/**
 * Deshabilita el envío de peticiones de interrupción a la CPU
 * Permite implementar regiones críticas en modo USER
 */
inline void itc_disable_ints (){
  OLD_INTENABLE = itc_regs->INTENABLE;
  itc_regs->INTENABLE = 0;
}

/*****************************************************************************/

/**
 * Vuelve a habilitar el envío de peticiones de interrupción a la CPU
 * Permite implementar regiones críticas en modo USER
 */
inline void itc_restore_ints (){
  itc_regs->INTENABLE = OLD_INTENABLE;  
}

/*****************************************************************************/

/**
 * Asigna un manejador de interrupción
 * @param src		Identificador de la fuente
 * @param handler	Manejador
 */
inline void itc_set_handler (itc_src_t src, itc_handler_t handler){
  itc_handlers[src] = handler;
}

/*****************************************************************************/

/**
 * Asigna una prioridad (normal o fast) a una fuente de interrupción
 * @param src		Identificador de la fuente
 * @param priority	Tipo de prioridad
 */
inline void itc_set_priority (itc_src_t src, itc_priority_t priority){
  uint32_t mask = (1 << src);

  // Si queremos que una interrupción sea FIQ, debemos asegurarnos que sea la única FIQ
  // En el caso de asignar prioridad de IRQ, sólo debemos hacer 0 el bit correspondiente a src 
  if(priority == itc_priority_fast)
    itc_regs->INTTYPE = mask;
  else
    itc_regs->INTTYPE &= ~(mask);
  
}

/*****************************************************************************/

/**
 * Habilita las interrupciones de una determinda fuente
 * @param src		Identificador de la fuente
 */
inline void itc_enable_interrupt (itc_src_t src){
  itc_regs->INTENNUM = src;
}

/*****************************************************************************/

/**
 * Deshabilita las interrupciones de una determinda fuente
 * @param src		Identificador de la fuente
 */
inline void itc_disable_interrupt (itc_src_t src){
  itc_regs->INTDISNUM = src;
}

/*****************************************************************************/

/**
 * Fuerza una interrupción con propósitos de depuración
 * @param src		Identificador de la fuente
 */
inline void itc_force_interrupt (itc_src_t src){
  itc_regs->INTFRC |= (1 << src);
}

/*****************************************************************************/

/**
 * Desfuerza una interrupción con propósitos de depuración
 * @param src		Identificador de la fuente
 */
inline void itc_unforce_interrupt (itc_src_t src){
  itc_regs->INTFRC &= ~(1 << src);
}

/*****************************************************************************/

/**
 * Da servicio a la interrupción normal pendiente de más prioridad.
 * En el caso de usar un manejador de excepciones IRQ que permita interrupciones
 * anidadas, debe deshabilitar las IRQ de menor prioridad hasta que se haya
 * completado el servicio de la IRQ para evitar inversiones de prioridad
 */
void itc_service_normal_interrupt (){
  itc_src_t src = ((itc_regs->NIVECTOR) & (0xf));

  itc_handlers[src]();
}

/*****************************************************************************/

/**
 * Da servicio a la interrupción rápida pendiente de más prioridad
 */
void itc_service_fast_interrupt (){
  itc_src_t src = ((itc_regs->FIVECTOR) & (0xf));

  itc_handlers[src]();
}

/*****************************************************************************/
