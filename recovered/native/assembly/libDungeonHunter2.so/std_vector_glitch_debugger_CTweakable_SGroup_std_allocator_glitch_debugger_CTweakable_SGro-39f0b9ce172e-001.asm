; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329cec, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::debugger::CTweakable::SGroup, std::allocator<glitch::debugger::CTweakable::SGroup> >
; alias: _ZNSt6vectorIN6glitch8debugger10CTweakable6SGroupESaIS3_EED1Ev
; demangled: std::vector<glitch::debugger::CTweakable::SGroup, std::allocator<glitch::debugger::CTweakable::SGroup> >::~vector()
; decoder-mode: arm
00329cec  70 40 2d e9                                      push {r4, r5, r6, lr}
00329cf0  04 50 90 e5                                      ldr r5, [r0, #4]
00329cf4  00 60 90 e5                                      ldr r6, [r0]
00329cf8  00 40 a0 e1                                      mov r4, r0
00329cfc  06 00 55 e1                                      cmp r5, r6
00329d00  04 00 00 0a                                      beq #0x329d18
00329d04  34 50 45 e2                                      sub r5, r5, #0x34
00329d08  05 00 a0 e1                                      mov r0, r5
00329d0c  14 00 00 eb                                      bl #0x329d64
00329d10  05 00 56 e1                                      cmp r6, r5
00329d14  fa ff ff 1a                                      bne #0x329d04
00329d18  00 00 94 e5                                      ldr r0, [r4]
00329d1c  00 00 50 e3                                      cmp r0, #0
00329d20  0a 00 00 0a                                      beq #0x329d50
00329d24  08 10 94 e5                                      ldr r1, [r4, #8]
00329d28  c5 3e 04 e3                                      movw r3, #0x4ec5
00329d2c  ec 34 4c e3                                      movt r3, #0xc4ec
00329d30  01 10 60 e0                                      rsb r1, r0, r1
00329d34  41 11 a0 e1                                      asr r1, r1, #2
00329d38  93 01 03 e0                                      mul r3, r3, r1
00329d3c  34 10 a0 e3                                      mov r1, #0x34
00329d40  91 03 01 e0                                      mul r1, r1, r3
00329d44  80 00 51 e3                                      cmp r1, #0x80
00329d48  02 00 00 8a                                      bhi #0x329d58
00329d4c  6b 7c 0f eb                                      bl #0x708f00
00329d50  04 00 a0 e1                                      mov r0, r4
00329d54  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329d58  b8 99 ff eb                                      bl #0x310440
00329d5c  04 00 a0 e1                                      mov r0, r4
00329d60  70 80 bd e8                                      pop {r4, r5, r6, pc}
