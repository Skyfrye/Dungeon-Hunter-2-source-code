; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00472f8c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ShadowModularSkinnedMeshSceneNode*>
; alias: _ZNSaIP33ShadowModularSkinnedMeshSceneNodeE11_M_allocateEjRj
; demangled: std::allocator<ShadowModularSkinnedMeshSceneNode*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00472f8c  10 40 2d e9                                      push {r4, lr}
00472f90  07 01 71 e3                                      cmn r1, #0xc0000001
00472f94  08 d0 4d e2                                      sub sp, sp, #8
00472f98  02 40 a0 e1                                      mov r4, r2
00472f9c  10 00 00 8a                                      bhi #0x472fe4
00472fa0  00 00 51 e3                                      cmp r1, #0
00472fa4  01 00 a0 01                                      moveq r0, r1
00472fa8  01 00 00 1a                                      bne #0x472fb4
00472fac  08 d0 8d e2                                      add sp, sp, #8
00472fb0  10 80 bd e8                                      pop {r4, pc}
00472fb4  01 01 a0 e1                                      lsl r0, r1, #2
00472fb8  80 00 50 e3                                      cmp r0, #0x80
00472fbc  04 00 8d e5                                      str r0, [sp, #4]
00472fc0  05 00 00 8a                                      bhi #0x472fdc
00472fc4  04 00 8d e2                                      add r0, sp, #4
00472fc8  bc 57 0a eb                                      bl #0x708ec0
00472fcc  04 30 9d e5                                      ldr r3, [sp, #4]
00472fd0  23 31 a0 e1                                      lsr r3, r3, #2
00472fd4  00 30 84 e5                                      str r3, [r4]
00472fd8  f3 ff ff ea                                      b #0x472fac
00472fdc  1c 75 fa eb                                      bl #0x310454
00472fe0  f9 ff ff ea                                      b #0x472fcc
00472fe4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00472fe8  00 00 8f e0                                      add r0, pc, r0
00472fec  34 6c fa eb                                      bl #0x30e0c4
00472ff0  01 00 a0 e3                                      mov r0, #1
00472ff4  93 6b fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00472ff8  88 b4 44 00                                      .byte 0x88, 0xb4, 0x44, 0x00
