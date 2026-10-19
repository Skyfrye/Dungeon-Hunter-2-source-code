; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00510fe0, declared_size=92, range_size=92, mode=arm
; class-group: PropertyInstance
; alias: _ZN16PropertyInstance8ToStringEv
; demangled: PropertyInstance::ToString()
; decoder-mode: arm
00510fe0  10 40 2d e9                                      push {r4, lr}
00510fe4  04 20 91 e5                                      ldr r2, [r1, #4]
00510fe8  08 d0 4d e2                                      sub sp, sp, #8
00510fec  00 40 a0 e1                                      mov r4, r0
00510ff0  00 00 52 e3                                      cmp r2, #0
00510ff4  09 00 00 0a                                      beq #0x511020
00510ff8  00 30 91 e5                                      ldr r3, [r1]
00510ffc  00 00 53 e3                                      cmp r3, #0
00511000  06 00 00 0a                                      beq #0x511020
00511004  03 10 a0 e1                                      mov r1, r3
00511008  00 30 93 e5                                      ldr r3, [r3]
0051100c  0f e0 a0 e1                                      mov lr, pc
00511010  00 f0 93 e5                                      ldr pc, [r3]
00511014  04 00 a0 e1                                      mov r0, r4
00511018  08 d0 8d e2                                      add sp, sp, #8
0051101c  10 80 bd e8                                      pop {r4, pc}
00511020  10 10 9f e5                                      ldr r1, [pc, #0x10]
00511024  04 00 a0 e1                                      mov r0, r4
00511028  04 20 8d e2                                      add r2, sp, #4
0051102c  01 10 8f e0                                      add r1, pc, r1
00511030  2d 0c f8 eb                                      bl #0x3140ec
00511034  f6 ff ff ea                                      b #0x511014
; mapping-symbol data/literal pool
00511038  dc a7 3b 00                                      .byte 0xdc, 0xa7, 0x3b, 0x00
