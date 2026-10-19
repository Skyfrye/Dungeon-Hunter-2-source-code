; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00844908, declared_size=68, range_size=68, mode=arm
; class-group: slim::XmlBase
; alias: _ZN4slim7XmlBaseC2Ev
; demangled: slim::XmlBase::XmlBase()
; decoder-mode: arm
00844908  70 40 2d e9                                      push {r4, r5, r6, lr}
0084490c  00 40 a0 e1                                      mov r4, r0
00844910  10 00 84 e5                                      str r0, [r4, #0x10]
00844914  14 00 84 e5                                      str r0, [r4, #0x14]
00844918  f9 ff ff eb                                      bl #0x844904
0084491c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00844920  18 30 84 e2                                      add r3, r4, #0x18
00844924  00 50 a0 e3                                      mov r5, #0
00844928  00 50 c2 e5                                      strb r5, [r2]
0084492c  03 00 a0 e1                                      mov r0, r3
00844930  28 30 84 e5                                      str r3, [r4, #0x28]
00844934  2c 30 84 e5                                      str r3, [r4, #0x2c]
00844938  f1 ff ff eb                                      bl #0x844904
0084493c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00844940  04 00 a0 e1                                      mov r0, r4
00844944  00 50 c3 e5                                      strb r5, [r3]
00844948  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00844acc, declared_size=120, range_size=120, mode=arm
; class-group: slim::XmlBase
; alias: _ZN4slim7XmlBaseD2Ev
; demangled: slim::XmlBase::~XmlBase()
; decoder-mode: arm
00844acc  10 40 2d e9                                      push {r4, lr}
00844ad0  18 30 80 e2                                      add r3, r0, #0x18
00844ad4  00 40 a0 e1                                      mov r4, r0
00844ad8  14 00 93 e5                                      ldr r0, [r3, #0x14]
00844adc  03 00 50 e1                                      cmp r0, r3
00844ae0  06 00 00 0a                                      beq #0x844b00
00844ae4  00 00 50 e3                                      cmp r0, #0
00844ae8  04 00 00 0a                                      beq #0x844b00
00844aec  18 10 94 e5                                      ldr r1, [r4, #0x18]
00844af0  01 10 60 e0                                      rsb r1, r0, r1
00844af4  80 00 51 e3                                      cmp r1, #0x80
00844af8  0f 00 00 8a                                      bhi #0x844b3c
00844afc  0d e6 01 eb                                      bl #0x8be338
00844b00  14 00 94 e5                                      ldr r0, [r4, #0x14]
00844b04  04 00 50 e1                                      cmp r0, r4
00844b08  06 00 00 0a                                      beq #0x844b28
00844b0c  00 00 50 e3                                      cmp r0, #0
00844b10  04 00 00 0a                                      beq #0x844b28
00844b14  00 10 94 e5                                      ldr r1, [r4]
00844b18  01 10 60 e0                                      rsb r1, r0, r1
00844b1c  80 00 51 e3                                      cmp r1, #0x80
00844b20  02 00 00 8a                                      bhi #0x844b30
00844b24  03 e6 01 eb                                      bl #0x8be338
00844b28  04 00 a0 e1                                      mov r0, r4
00844b2c  10 80 bd e8                                      pop {r4, pc}
00844b30  de 25 eb eb                                      bl #0x30e2b0
00844b34  04 00 a0 e1                                      mov r0, r4
00844b38  10 80 bd e8                                      pop {r4, pc}
00844b3c  db 25 eb eb                                      bl #0x30e2b0
00844b40  ee ff ff ea                                      b #0x844b00
