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

/* Dirección del registro de control para pulsadores */
volatile uint32_t * const reg_gpio_pad_dir0    = (uint32_t *) 0x80000000;

/* Dirección del registro de control para LEDS */
volatile uint32_t * const reg_gpio_pad_dir1    = (uint32_t *) 0x80000004;

/* Dirección del registro de activación de los pulsadores */
volatile uint32_t * const reg_gpio_data_set0   = (uint32_t *) 0x80000048;

/* Dirección del registro de activación de los LEDS */
volatile uint32_t * const reg_gpio_data_set1   = (uint32_t *) 0x8000004c;

/* Dirección del registro de limpieza de bits de los LEDS */
volatile uint32_t * const reg_gpio_data_reset1 = (uint32_t *) 0x80000054;

/* Dirección del registro de consulta de los pulsadores */
volatile uint32_t * const reg_gpio_data0   = (uint32_t *) 0x80000008;

/* El led rojo,verde está en el GPIO 44,45 resp. (el bit 12,13 resp. de los registros GPIO_X_1) */
uint32_t const led_red_mask  = (1 << 12);
uint32_t const led_green_mask= (1 << 13);
uint32_t const in_s2 = (1 << 23);
uint32_t const in_s3 = (1 << 22);
uint32_t const out_s2 = (1 << 27);
uint32_t const out_s3 = (1 << 26);

/*
 * Constantes relativas a la aplicacion
 */
uint32_t const delay = 0x10000;
 

/*
 * Máscara del led que se hará parpadear
 */
uint32_t the_led;



/*****************************************************************************/

/*****************************************************************************/

/*
 * Enciende los leds indicados en la máscara
 * @param mask Máscara para seleccionar leds
 */
void leds_on (uint32_t mask)
{
  /* Encendemos los leds indicados en la máscara */
  *reg_gpio_data_set1 = mask;
}

/*****************************************************************************/

/*
 * Apaga los leds indicados en la máscara
 * @param mask Máscara para seleccionar leds
 */
void leds_off (uint32_t mask)
{
  /* Apagamos los leds indicados en la máscara */
  *reg_gpio_data_reset1 = mask;
}


/*
 * Nuestro propio manejador de undef
 */

__attribute__ ((interrupt ("UNDEF")))
void my_undef_handler(void){
  // Encendemos el LED verde indicando que se ha producido unan excepción
  leds_on(led_green_mask);
}


/*
 * Inicialización de los pines de E/S
 */
void gpio_init(void){
  // Configuramos ambos LEDS para que sean de salida. Deberían contener un 0 inicialmente
  *reg_gpio_pad_dir1 = (led_red_mask | led_green_mask);
  // Configuramos las salidas de los pulsadores (vistas desde la CPU) como un 1
  *reg_gpio_pad_dir0 = (out_s2 | out_s3);
  *reg_gpio_data_set0 = (out_s2 | out_s3);

  // Fijamos el manejador de las excepciones UNDEF
  excep_t undef = excep_undef;
  excep_set_handler(undef, my_undef_handler);
}


/*****************************************************************************/

/*
 * Retardo para el parpedeo
 */
void pause(void){
  uint32_t i;
  for (i=0 ; i<delay ; i++);
}


void test_buttons(){
  // Marcamos para encender un LED, apagamos el otro
  if((*reg_gpio_data0 & in_s2) == in_s2){
    the_led = led_red_mask;
    *reg_gpio_data_reset1 = led_green_mask;
  }
  else if((*reg_gpio_data0 & in_s3) == in_s3){
    the_led = led_green_mask;
    *reg_gpio_data_reset1 = led_red_mask;
  }

}


/*
 * Programa principal
 */
int main (){
  gpio_init();
  the_led = led_red_mask;

  /* Bucle infinito
     En función de si se pulsa un pulsador u otro, se hará parpadear uno de los LEDS 
     y se apaga el otro 
  */

  asm(".word 0x26889912\n");

  
  while(1){
    test_buttons();          
    leds_on(the_led);
    pause();
    leds_off(the_led);
    pause();
  }

  return 0;
}
