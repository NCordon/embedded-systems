
/*
 * Sistemas operativos empotrados
 * Driver para el GPIO del MC1322x
 */

#include "system.h"

/*****************************************************************************/

/**
 * Acceso estructurado a los registros de control del gpio del MC1322x
 */
typedef struct{
  uint32_t GPIO_PAD_DIR[2];
  uint32_t GPIO_DATA[2];
  uint32_t RESERVED[2];
  uint32_t GPIO_FUNC_SEL[4];
  uint32_t RESERVED2[8];
  uint32_t GPIO_DATA_SET[2];
  uint32_t GPIO_DATA_RESET[2];
  uint32_t GPIO_PAD_DIR_SET[2];
  uint32_t GPIO_PAD_DIR_RESET[2];
} gpio_regs_t;

static volatile gpio_regs_t* const gpio_regs = GPIO_BASE;

/*****************************************************************************/

/**
 * Fija la dirección los pines seleccionados en la máscara como de entrada
 *
 * @param 	port 	Puerto
 * @pre         port    Supone puerto menor que gpio_port_max (esto es, 0 o 1)
 * @param 	mask 	Máscara para seleccionar los pines
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_set_port_dir_input (gpio_port_t port, uint32_t mask){
  gpio_regs-> GPIO_PAD_DIR_RESET[port] = mask;
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Fija la dirección los pines seleccionados en la máscara como de salida
 *
 * @param	port 	Puerto
 * @pre         port    Supone puerto menor que gpio_port_max (esto es, 0 o 1)
 * @param	mask 	Máscara para seleccionar los pines
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_set_port_dir_output (gpio_port_t port, uint32_t mask){
  gpio_regs-> GPIO_PAD_DIR_SET[port] = mask;
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Fija la dirección del pin indicado como de entrada
 *
 * @param	pin 	Número de pin
 * @pre         pin     Suponemos un número de pin correcto
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_set_pin_dir_input (gpio_pin_t pin){
  gpio_regs-> GPIO_PAD_DIR_RESET[pin/32] = (1 << (pin%32));
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Fija la dirección del pin indicado como de salida
 *
 * @param	pin 	Número de pin
 * @pre         pin     Suponemos un número de pin correcto
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_set_pin_dir_output (gpio_pin_t pin){
  gpio_regs-> GPIO_PAD_DIR_SET[pin/32] = (1 << (pin%32));
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Escribe unos en los pines seleccionados en la máscara
 *
 * @param	port 	Puerto
 * @param	mask 	Máscara para seleccionar los pines
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_set_port (gpio_port_t port, uint32_t mask){
  gpio_regs-> GPIO_DATA_SET[port] = mask;
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Escribe ceros en los pines seleccionados en la máscara
 *
 * @param	port 	Puerto
 * @param	mask 	Máscara para seleccionar los pines
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_clear_port (gpio_port_t port, uint32_t mask){
  gpio_regs-> GPIO_DATA_SET[port] = mask;
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Escribe un uno en el pin indicado
 *
 * @param	pin 	Número de pin
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_set_pin (gpio_pin_t pin){
  gpio_regs-> GPIO_DATA_SET[pin/32] = (1 << (pin%32));
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Escribe un cero en el pin indicado
 *
 * @param	pin 	Número de pin
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_clear_pin (gpio_pin_t pin){
  gpio_regs-> GPIO_DATA_RESET[pin/32] = (1 << (pin%32));
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Lee el valor de los pines de un puerto
 *
 * @param	port	  Puerto
 * @param	port_data Valor de los pines del puerto
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			  gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_get_port (gpio_port_t port, uint32_t *port_data){
  *port_data = (gpio_regs -> GPIO_DATA[port]);
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Lee el valor del pin indicado
 *
 * @param	pin	  Número de pin
 * @param       pin_data  Cero si el pin está a cero, distinto de cero en otro caso
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			  gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_get_pin (gpio_pin_t pin, uint32_t *pin_data){
  *pin_data = ((gpio_regs -> GPIO_DATA[pin/32]) >> pin%32) & 0x1;
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Fija los pines seleccionados a una función
 *
 * @param	port 	Puerto
 * @param	func	Función
 * @param	mask	Máscara para seleccionar los pines
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_set_port_func (gpio_port_t port, gpio_func_t func, uint32_t mask){
  uint32_t func_mask = 0;
  int i;
  
  for(i=0; i<16; i++)
    func_mask |= (func << (2*i));
  
  gpio_regs -> GPIO_FUNC_SEL[port] |= (func_mask & mask);
  return gpio_no_error;
}

/*****************************************************************************/

/**
 * Fija el pin seleccionado a una función
 *
 * @param	pin 	Pin
 * @param	func	Función
 * @return	gpio_no_error si los parámetros de entrada son corectos o
 *			gpio_invalid_parameter en otro caso
 */
inline gpio_err_t gpio_set_pin_func (gpio_pin_t pin, gpio_func_t func){
  gpio_regs -> GPIO_FUNC_SEL[pin/16] = (func << (2*(pin % 16)));
  return gpio_no_error;
}

/*****************************************************************************/
