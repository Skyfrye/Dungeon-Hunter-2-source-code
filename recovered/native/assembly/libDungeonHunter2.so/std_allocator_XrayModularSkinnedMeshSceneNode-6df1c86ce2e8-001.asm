; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00472eac, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<XrayModularSkinnedMeshSceneNode*>
; alias: _ZNSaIP31XrayModularSkinnedMeshSceneNodeE11_M_allocateEjRj
; demangled: std::allocator<XrayModularSkinnedMeshSceneNode*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00472eac  10 40 2d e9                                      push {r4, lr}
00472eb0  07 01 71 e3                                      cmn r1, #0xc0000001
00472eb4  08 d0 4d e2                                      sub sp, sp, #8
00472eb8  02 40 a0 e1                                      mov r4, r2
00472ebc  10 00 00 8a                                      bhi #0x472f04
00472ec0  00 00 51 e3                                      cmp r1, #0
00472ec4  01 00 a0 01                                      moveq r0, r1
00472ec8  01 00 00 1a                                      bne #0x472ed4
00472ecc  08 d0 8d e2                                      add sp, sp, #8
00472ed0  10 80 bd e8                                      pop {r4, pc}
00472ed4  01 01 a0 e1                                      lsl r0, r1, #2
00472ed8  80 00 50 e3                                      cmp r0, #0x80
00472edc  04 00 8d e5                                      str r0, [sp, #4]
00472ee0  05 00 00 8a                                      bhi #0x472efc
00472ee4  04 00 8d e2                                      add r0, sp, #4
00472ee8  f4 57 0a eb                                      bl #0x708ec0
00472eec  04 30 9d e5                                      ldr r3, [sp, #4]
00472ef0  23 31 a0 e1                                      lsr r3, r3, #2
00472ef4  00 30 84 e5                                      str r3, [r4]
00472ef8  f3 ff ff ea                                      b #0x472ecc
00472efc  54 75 fa eb                                      bl #0x310454
00472f00  f9 ff ff ea                                      b #0x472eec
00472f04  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00472f08  00 00 8f e0                                      add r0, pc, r0
00472f0c  6c 6c fa eb                                      bl #0x30e0c4
00472f10  01 00 a0 e3                                      mov r0, #1
00472f14  cb 6b fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00472f18  68 b5 44 00                                      .byte 0x68, 0xb5, 0x44, 0x00
