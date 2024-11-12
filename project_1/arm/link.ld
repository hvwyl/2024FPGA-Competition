ENTRY(_start)

SECTIONS { 
  . = 0x0000;
  .text             : {*(.text)}
  .rodata ALIGN(4)  : {*(.rodata)}
  .data   ALIGN(4)  : {*(.data)}
  __bss_start = ALIGN(4);
  .bss              : {*(.bss) *(COMMON)}
  __bss_end = ALIGN(4);
  . = 0x4000;
  __stack_top = ALIGN(4);
}