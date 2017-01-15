/*****************************************************************************/
/*                                                                           */
/* Sistemas Empotrados                                                       */
/* El "hola mundo" en la Redwire EconoTAG en C                               */
/*                                                                           */
/*****************************************************************************/

#include <stdint.h>
// Incluimos las cabeceras del BSP
#include "system.h"


/*
 * Constantes relativas a la plataforma
 */

/* Dirección del registro de control para LEDS */
volatile uint32_t * const reg_gpio_pad_dir1    = (uint32_t *) 0x80000004;

/* Dirección del registro de activación de los LEDS */
volatile uint32_t * const reg_gpio_data_set1   = (uint32_t *) 0x8000004c;

/* Dirección del registro de limpieza de bits de los LEDS */
volatile uint32_t * const reg_gpio_data_reset1 = (uint32_t *) 0x80000054;

/* El led rojo,verde está en el GPIO 44,45 resp. (el bit 12,13 resp. de los registros GPIO_X_1) */
uint32_t const led_red_mask  = (1 << 12);
uint32_t const led_green_mask= (1 << 13);

/*
 * Constantes relativas a la aplicacion
 */
uint32_t const delay = 0x10000;
 

/*
 * Máscara del led que se hará parpadear
 */
uint32_t the_led;


/*****************************************************************************/

/*
 * Enciende los leds indicados en la máscara
 * @param mask Máscara para seleccionar leds
 */
void leds_on (uint32_t mask){
  /* Encendemos los leds indicados en la máscara */
  *reg_gpio_data_set1 = mask;
}

/*****************************************************************************/

/*
 * Apaga los leds indicados en la máscara
 * @param mask Máscara para seleccionar leds
 */
void leds_off (uint32_t mask){
  /* Apagamos los leds indicados en la máscara */
  *reg_gpio_data_reset1 = mask;
}


/*
 * Nuestro propio manejador de undef
 */

void my_asm_handler(void){
  // Encendemos el LED verde y desactivamos la interrupción del asm
  itc_unforce_interrupt(itc_src_asm);
  leds_on (led_green_mask);
}


/*
 * Inicialización de los pines de E/S
 */
void gpio_init(void){
  // Configuramos ambos LEDS para que sean de salida. Deberían contener un 0 inicialmente
  *reg_gpio_pad_dir1 = (led_red_mask | led_green_mask);
}


/*****************************************************************************/

/*
 * Retardo para el parpedeo
 */
void pause(void){
  uint32_t i;
  for (i=0 ; i<delay ; i++);
}


/*
 * Programa principal
 */
int main (){
  gpio_init();

  // Inicializamos el controlador de interrupciones
  itc_init();
  // Habilitamos la interrupción ASM
  itc_enable_interrupt(itc_src_asm);
  // Le asignamos el manejador que enciende el LED verde y la forzamos
  itc_set_handler(itc_src_asm, my_asm_handler);
  itc_force_interrupt(itc_src_asm);
  itc_service_normal_interrupt();

  the_led = led_red_mask;
  
  while(1){
    leds_on(the_led);
    pause();
    leds_off(the_led);
    pause();
  }

  return 0;
}
