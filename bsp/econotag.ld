/*****************************************************************************/
/*                                                                           */
/* Sistemas Empotrados                                                       */
/*                                                                           */
/* Linker script para la Redwire EconoTAG                                    */
/* Runtime de C para ser cargado por la BIOS de la placa                     */
/*****************************************************************************/

/*****************************************************************************/
/* Punto de entrada                                                          */
/*****************************************************************************/

ENTRY(_vector_table)

/*
 * Mapa de memoria de la placa
 */
 
MEMORY
{
        ram :  org = 0x00400000,       len = 0x00018000        /* (96  KB) */
}

SECTIONS
{

        /* Código del cargador */
        .startup : ALIGN(4)
        {
                *(.startup);
        } > ram
        

        /* Código del programa */
        .text : ALIGN(4)
        {
                *(.text);
        } > ram
        
        /* Variables locales inicializadas y distintas de 0*/
        /* Esto no hace falta incluirlo, ya está por defecto incluido en el cargador
        .data : ALIGN(4)
        {
                _data_start = .;
                *(.data);
                . = ALIGN(4);
                _data_end = .;
        } > ram
        */
        /* Variables globales */
        .rodata :
        {
                *(.rodata*);
                . = ALIGN(4);
        } > ram


        /* Variables locales inicializadas a 0 y sin inicializar */
        .bss :
        {
                _bss_start = .;
                *(.bss);
                . = ALIGN(4);
                *(COMMON);
                . = ALIGN(4);
                _bss_end = .;
        } > ram
        
        _ram_limit = ORIGIN(ram) + LENGTH(ram);
        _sys_stack_size = 1024;
        _irq_stack_size =  256;
        _fiq_stack_size =  256;
        _svc_stack_size =  256;
        _abt_stack_size =   16;
        _und_stack_size =   16;
        _stacks_size = _stacks_top - _stacks_bottom;
        

        .stacks _ram_limit - _stacks_size :
        {
                _stacks_bottom = . ;
                . += _sys_stack_size ;
                _sys_stack_top = . ;
                . += _svc_stack_size ;
                _svc_stack_top = . ;
                . += _abt_stack_size ;
                _abt_stack_top = . ;
                . += _und_stack_size ;
                _und_stack_top = . ;
                . += _irq_stack_size ;
                _irq_stack_top = . ;
                . += _fiq_stack_size ;
                _fiq_stack_top = . ;
                _stacks_top = . ;  
        }

        .heap _bss_end :
        {
                _heap_start = .;
                . += (_stacks_bottom - .);
                _heap_end = .;
        }
}
