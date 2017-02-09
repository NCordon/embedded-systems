/*****************************************************************************/
/*                                                                           */
/* Sistemas Empotrados                                                       */
/* El "hola mundo" en la Redwire EconoTAG en C                               */
/*                                                                           */
/*****************************************************************************/

#include <stdint.h>
#include <stdio.h>
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
uint blink_red = 1;
uint blink_green = 1;

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
void leds_on(){
  /* Encendemos el led correspondiente a un pin dado*/
  if(blink_red)
    gpio_set_pin(GPIO_RED);
  if(blink_green)
    gpio_set_pin(GPIO_GREEN);
}

/*****************************************************************************/

/*
 * Apaga los leds indicados en la máscara
 * @param mask Máscara para seleccionar leds
 */
void leds_off(){
  /* Apagamos el led correspondiente a un pin dado */
  gpio_clear_pin(GPIO_GREEN);
  gpio_clear_pin(GPIO_RED);
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


void test_blink(){
  // Recibimos un carácter por la UART1
  char c = getchar();
  
  if(c=='r')
    blink_red = !blink_red;
  else if(c=='g')
    blink_green = !blink_green;
  
}

/*
 * Programa principal
 */
int main (){
  gpio_init();
  uart_set_receive_callback(uart_1, test_blink);
  
  while(1){
    leds_on();
    pause();
    leds_off();
    pause();
  }

  return 0;
}
