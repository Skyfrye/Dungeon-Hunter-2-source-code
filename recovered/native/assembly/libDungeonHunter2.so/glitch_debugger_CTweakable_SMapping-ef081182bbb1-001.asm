; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00320294, declared_size=92, range_size=92, mode=arm
; class-group: glitch::debugger::CTweakable::SMapping
; alias: _ZN6glitch8debugger10CTweakable8SMappingaSERKS2_
; demangled: glitch::debugger::CTweakable::SMapping::operator=(glitch::debugger::CTweakable::SMapping const&)
; decoder-mode: arm
00320294  70 40 2d e9                                      push {r4, r5, r6, lr}
00320298  00 30 91 e5                                      ldr r3, [r1]
0032029c  00 50 a0 e1                                      mov r5, r0
003202a0  08 20 81 e2                                      add r2, r1, #8
003202a4  00 30 85 e5                                      str r3, [r5]
003202a8  04 30 91 e5                                      ldr r3, [r1, #4]
003202ac  08 00 80 e2                                      add r0, r0, #8
003202b0  02 00 50 e1                                      cmp r0, r2
003202b4  01 40 a0 e1                                      mov r4, r1
003202b8  04 30 85 e5                                      str r3, [r5, #4]
003202bc  02 00 00 0a                                      beq #0x3202cc
003202c0  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
003202c4  18 20 94 e5                                      ldr r2, [r4, #0x18]
003202c8  c4 c1 ff eb                                      bl #0x3109e0
003202cc  20 00 85 e2                                      add r0, r5, #0x20
003202d0  20 30 84 e2                                      add r3, r4, #0x20
003202d4  03 00 50 e1                                      cmp r0, r3
003202d8  02 00 00 0a                                      beq #0x3202e8
003202dc  30 20 94 e5                                      ldr r2, [r4, #0x30]
003202e0  34 10 94 e5                                      ldr r1, [r4, #0x34]
003202e4  bd c1 ff eb                                      bl #0x3109e0
003202e8  05 00 a0 e1                                      mov r0, r5
003202ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0032d088, declared_size=88, range_size=88, mode=arm
; class-group: glitch::debugger::CTweakable::SMapping
; alias: _ZN6glitch8debugger10CTweakable8SMappingC1ENS_2io16E_ATTRIBUTE_TYPEEPv
; demangled: glitch::debugger::CTweakable::SMapping::SMapping(glitch::io::E_ATTRIBUTE_TYPE, void*)
; decoder-mode: arm
0032d088  70 40 2d e9                                      push {r4, r5, r6, lr}
0032d08c  08 30 80 e2                                      add r3, r0, #8
0032d090  00 40 a0 e1                                      mov r4, r0
0032d094  06 00 80 e8                                      stm r0, {r1, r2}
0032d098  10 10 a0 e3                                      mov r1, #0x10
0032d09c  03 00 a0 e1                                      mov r0, r3
0032d0a0  18 30 84 e5                                      str r3, [r4, #0x18]
0032d0a4  1c 30 84 e5                                      str r3, [r4, #0x1c]
0032d0a8  73 91 ff eb                                      bl #0x31167c
0032d0ac  18 20 94 e5                                      ldr r2, [r4, #0x18]
0032d0b0  20 30 84 e2                                      add r3, r4, #0x20
0032d0b4  00 50 a0 e3                                      mov r5, #0
0032d0b8  00 50 c2 e5                                      strb r5, [r2]
0032d0bc  03 00 a0 e1                                      mov r0, r3
0032d0c0  30 30 84 e5                                      str r3, [r4, #0x30]
0032d0c4  34 30 84 e5                                      str r3, [r4, #0x34]
0032d0c8  10 10 a0 e3                                      mov r1, #0x10
0032d0cc  6a 91 ff eb                                      bl #0x31167c
0032d0d0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0032d0d4  04 00 a0 e1                                      mov r0, r4
0032d0d8  00 50 c3 e5                                      strb r5, [r3]
0032d0dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
