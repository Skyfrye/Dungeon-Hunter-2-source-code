; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00331af8, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<glitch::scene::ISceneNode*>
; alias: _ZNSaIPN6glitch5scene10ISceneNodeEE11_M_allocateEjRj
; demangled: std::allocator<glitch::scene::ISceneNode*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00331af8  10 40 2d e9                                      push {r4, lr}
00331afc  07 01 71 e3                                      cmn r1, #0xc0000001
00331b00  08 d0 4d e2                                      sub sp, sp, #8
00331b04  02 40 a0 e1                                      mov r4, r2
00331b08  10 00 00 8a                                      bhi #0x331b50
00331b0c  00 00 51 e3                                      cmp r1, #0
00331b10  01 00 a0 01                                      moveq r0, r1
00331b14  01 00 00 1a                                      bne #0x331b20
00331b18  08 d0 8d e2                                      add sp, sp, #8
00331b1c  10 80 bd e8                                      pop {r4, pc}
00331b20  01 01 a0 e1                                      lsl r0, r1, #2
00331b24  80 00 50 e3                                      cmp r0, #0x80
00331b28  04 00 8d e5                                      str r0, [sp, #4]
00331b2c  05 00 00 8a                                      bhi #0x331b48
00331b30  04 00 8d e2                                      add r0, sp, #4
00331b34  e1 5c 0f eb                                      bl #0x708ec0
00331b38  04 30 9d e5                                      ldr r3, [sp, #4]
00331b3c  23 31 a0 e1                                      lsr r3, r3, #2
00331b40  00 30 84 e5                                      str r3, [r4]
00331b44  f3 ff ff ea                                      b #0x331b18
00331b48  41 7a ff eb                                      bl #0x310454
00331b4c  f9 ff ff ea                                      b #0x331b38
00331b50  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00331b54  00 00 8f e0                                      add r0, pc, r0
00331b58  59 71 ff eb                                      bl #0x30e0c4
00331b5c  01 00 a0 e3                                      mov r0, #1
00331b60  b8 70 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00331b64  1c c9 58 00                                      .byte 0x1c, 0xc9, 0x58, 0x00
