; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00827b18, declared_size=4, range_size=4, mode=arm
; class-group: CSocketAbstract
; alias: _ZN15CSocketAbstractD1Ev
; demangled: CSocketAbstract::~CSocketAbstract()
; decoder-mode: arm
00827b18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00827b1c, declared_size=64, range_size=64, mode=arm
; class-group: CSocketAbstract
; alias: _ZN15CSocketAbstract6AssignEij
; demangled: CSocketAbstract::Assign(int, unsigned int)
; decoder-mode: arm
00827b1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00827b20  01 30 a0 e3                                      mov r3, #1
00827b24  04 10 80 e5                                      str r1, [r0, #4]
00827b28  08 30 c0 e5                                      strb r3, [r0, #8]
00827b2c  00 30 90 e5                                      ldr r3, [r0]
00827b30  00 40 a0 e1                                      mov r4, r0
00827b34  02 50 a0 e1                                      mov r5, r2
00827b38  0f e0 a0 e1                                      mov lr, pc
00827b3c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00827b40  05 10 a0 e1                                      mov r1, r5
00827b44  0a 00 c4 e5                                      strb r0, [r4, #0xa]
00827b48  00 30 94 e5                                      ldr r3, [r4]
00827b4c  04 00 a0 e1                                      mov r0, r4
00827b50  0f e0 a0 e1                                      mov lr, pc
00827b54  00 f0 93 e5                                      ldr pc, [r3]
00827b58  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00828b30, declared_size=52, range_size=52, mode=arm
; class-group: CSocketAbstract
; alias: _ZN15CSocketAbstractD0Ev
; demangled: CSocketAbstract::~CSocketAbstract()
; decoder-mode: arm
00828b30  24 30 9f e5                                      ldr r3, [pc, #0x24]
00828b34  24 20 9f e5                                      ldr r2, [pc, #0x24]
00828b38  10 40 2d e9                                      push {r4, lr}
00828b3c  03 30 8f e0                                      add r3, pc, r3
00828b40  02 20 93 e7                                      ldr r2, [r3, r2]
00828b44  00 40 a0 e1                                      mov r4, r0
00828b48  08 20 82 e2                                      add r2, r2, #8
00828b4c  00 20 80 e5                                      str r2, [r0]
00828b50  3a 9e eb eb                                      bl #0x310440
00828b54  04 00 a0 e1                                      mov r0, r4
00828b58  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00828b5c  54 bf 16 00 3c 07 00 00                          .byte 0x54, 0xbf, 0x16, 0x00, 0x3c, 0x07, 0x00, 0x00
