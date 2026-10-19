; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d8ac4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::core::SSharedProcessBuffer
; alias: _ZN6glitch4core20SSharedProcessBuffer5resetEi
; demangled: glitch::core::SSharedProcessBuffer::reset(int)
; decoder-mode: arm
005d8ac4  70 40 2d e9                                      push {r4, r5, r6, lr}
005d8ac8  00 30 90 e5                                      ldr r3, [r0]
005d8acc  00 40 a0 e1                                      mov r4, r0
005d8ad0  01 50 a0 e1                                      mov r5, r1
005d8ad4  00 00 53 e3                                      cmp r3, #0
005d8ad8  06 00 00 0a                                      beq #0x5d8af8
005d8adc  04 20 13 e5                                      ldr r2, [r3, #-4]
005d8ae0  01 20 42 e2                                      sub r2, r2, #1
005d8ae4  00 00 52 e3                                      cmp r2, #0
005d8ae8  04 20 03 e5                                      str r2, [r3, #-4]
005d8aec  09 00 00 0a                                      beq #0x5d8b18
005d8af0  00 30 a0 e3                                      mov r3, #0
005d8af4  00 30 84 e5                                      str r3, [r4]
005d8af8  00 00 55 e3                                      cmp r5, #0
005d8afc  04 00 00 da                                      ble #0x5d8b14
005d8b00  04 00 85 e2                                      add r0, r5, #4
005d8b04  ba 6e fd eb                                      bl #0x5345f4
005d8b08  01 30 a0 e3                                      mov r3, #1
005d8b0c  04 30 80 e4                                      str r3, [r0], #4
005d8b10  00 00 84 e5                                      str r0, [r4]
005d8b14  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d8b18  00 00 90 e5                                      ldr r0, [r0]
005d8b1c  04 00 40 e2                                      sub r0, r0, #4
005d8b20  d8 6e fd eb                                      bl #0x534688
005d8b24  f1 ff ff ea                                      b #0x5d8af0
