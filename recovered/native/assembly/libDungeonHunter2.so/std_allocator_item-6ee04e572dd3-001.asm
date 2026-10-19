; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00842994, declared_size=104, range_size=104, mode=arm
; class-group: std::allocator<item>
; alias: _ZNSaI4itemE11_M_allocateEjRj
; demangled: std::allocator<item>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00842994  38 3e 08 e3                                      movw r3, #0x8e38
00842998  e3 30 40 e3                                      movt r3, #0xe3
0084299c  03 00 51 e1                                      cmp r1, r3
008429a0  70 40 2d e9                                      push {r4, r5, r6, lr}
008429a4  02 40 a0 e1                                      mov r4, r2
008429a8  0d 00 00 8a                                      bhi #0x8429e4
008429ac  00 00 51 e3                                      cmp r1, #0
008429b0  01 00 00 1a                                      bne #0x8429bc
008429b4  01 00 a0 e1                                      mov r0, r1
008429b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
008429bc  12 5e a0 e3                                      mov r5, #0x120
008429c0  95 01 05 e0                                      mul r5, r5, r1
008429c4  05 00 a0 e1                                      mov r0, r5
008429c8  af 2f eb eb                                      bl #0x30e88c
008429cc  39 1e 08 e3                                      movw r1, #0x8e39
008429d0  e3 18 43 e3                                      movt r1, #0x38e3
008429d4  91 35 81 e0                                      umull r3, r1, r1, r5
008429d8  21 13 a0 e1                                      lsr r1, r1, #6
008429dc  00 10 84 e5                                      str r1, [r4]
008429e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008429e4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
008429e8  00 00 8f e0                                      add r0, pc, r0
008429ec  b4 2d eb eb                                      bl #0x30e0c4
008429f0  01 00 a0 e3                                      mov r0, #1
008429f4  13 2d eb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
008429f8  88 ba 07 00                                      .byte 0x88, 0xba, 0x07, 0x00
