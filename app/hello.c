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

/* El led rojo,verde está en el GPIO 44,45 resp. (el bit 12,13 resp. de los registros GPIO_X_1) */
gpio_pin_t const GPIO_RED    = gpio_pin_44;
gpio_pin_t const GPIO_GREEN  = gpio_pin_45;
gpio_pin_t const GPIO_IN_S2  = gpio_pin_23;
gpio_pin_t const GPIO_IN_S3  = gpio_pin_22;
gpio_pin_t const GPIO_OUT_S2 = gpio_pin_27;
gpio_pin_t const GPIO_OUT_S3 = gpio_pin_26;

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
void leds_on (uint32_t led_pin){
  /* Encendemos el led correspondiente a un pin dado*/
  gpio_set_pin(led_pin);
}

/*****************************************************************************/

/*
 * Apaga los leds indicados en la máscara
 * @param mask Máscara para seleccionar leds
 */
void leds_off (uint32_t led_pin){
  /* Apagamos el led correspondiente a un pin dado */
  gpio_clear_pin(led_pin);
}

/*
 * Inicialización de los pines de E/S
 */
void gpio_init(void){
  // Configuramos ambos LEDS para que sean de salida. Deberían contener un 0 inicialmente
  gpio_set_pin_dir_output(GPIO_RED);
  gpio_set_pin_dir_output(GPIO_GREEN);
  gpio_clear_pin(GPIO_RED);
  gpio_clear_pin(GPIO_GREEN);
  
  // Configuramos las salidas de los pulsadores (vistas desde la CPU) como un 1
  gpio_set_pin_dir_output(GPIO_OUT_S2);
  gpio_set_pin_dir_output(GPIO_OUT_S3);
  gpio_set_pin(GPIO_OUT_S2);
  gpio_set_pin(GPIO_OUT_S3);
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
  uint32_t in_s2;
  uint32_t in_s3;
  gpio_get_pin(GPIO_IN_S2, &in_s2);
  gpio_get_pin(GPIO_IN_S3, &in_s3);  

  in_s2 = 
  if(in_s2){
    the_led = GPIO_RED;
    gpio_clear_pin(GPIO_GREEN);
  }
  else if(in_s3){
    the_led = GPIO_GREEN;
    gpio_clear_pin(GPIO_RED);
  }

}

/*
 * Programa principal
 */
int main (){
  gpio_init();
  
  the_led = GPIO_RED;
  
  while(1){
    test_buttons();          
    leds_on(the_led);
    pause();
    leds_off(the_led);
    pause();
  }

  return 0;
}
