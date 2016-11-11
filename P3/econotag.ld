/*****************************************************************************/
/*                                                                           */
/* Sistemas Empotrados                                                       */
/*                                                                           */
/* Linker script para la Redwire EconoTAG                                    */
/*                                                                           */
/*****************************************************************************/

/*****************************************************************************/
/* Punto de entrada                                                          */
/*****************************************************************************/

ENTRY(_start)


/*
 * Mapa de memoria de la placa
 */
MEMORY
{
        ram0 :  org = 0x00400000,       len = 0x00002000        /* (8  KB) */
        ram1 :  org = 0x00402000,       len = 0x00006000        /* (24 KB) */
        ram2 :  org = 0x00408000,       len = 0x00008000        /* (32 KB) */
        ram3 :  org = 0x00410000,       len = 0x00008000        /* (32 KB) */
}

SECTIONS
{
        /* Código del programa */
        .text : ALIGN(4)
        {
                *(.text);
        } > ram0


        .ram1 :
        {
                s1 = .;
        } > ram1

        .ram2 :
        {
                s2 = .;
        } > ram2

        .ram3 :
        {
                s3 = .;
        } > ram3


        .data :
        {
                GPIO_PAD_DIR0: .word GPIO_PAD_DIR0;
                GPIO_PAD_DIR1: .word GPIO_PAD_DIR1;
                GPIO_DATA0: .word GPIO_DATA0;
                GPIO_DATA_SET0: .word GPIO_DATA_SET0;
                GPIO_DATA_SET1: .word GPIO_DATA_SET1;
                GPIO_DATA_RESET1: .word GPIO_DATA_RESET1;
                LED_RED_MASK: .word LED_RED_MASK;
                LED_GREEN_MASK: .word LED_GREEN_MASK;
                LED_ALL_MASK: .word LED_ALL_MASK;
                IN_S2: .word IN_S2;
                IN_S3: .word IN_S3;
                OUT_S2: .word OUT_S2;
                OUT_S3: .word OUT_S3;
                IN_ALL: .word IN_ALL;
                OUT_ALL: .word OUT_ALL;
                DELAY: .word DELAY;
        } > ram1
}
