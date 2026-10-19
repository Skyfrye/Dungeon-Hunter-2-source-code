; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00472f1c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ShadowSkinnedMeshSceneNode*>
; alias: _ZNSaIP26ShadowSkinnedMeshSceneNodeE11_M_allocateEjRj
; demangled: std::allocator<ShadowSkinnedMeshSceneNode*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00472f1c  10 40 2d e9                                      push {r4, lr}
00472f20  07 01 71 e3                                      cmn r1, #0xc0000001
00472f24  08 d0 4d e2                                      sub sp, sp, #8
00472f28  02 40 a0 e1                                      mov r4, r2
00472f2c  10 00 00 8a                                      bhi #0x472f74
00472f30  00 00 51 e3                                      cmp r1, #0
00472f34  01 00 a0 01                                      moveq r0, r1
00472f38  01 00 00 1a                                      bne #0x472f44
00472f3c  08 d0 8d e2                                      add sp, sp, #8
00472f40  10 80 bd e8                                      pop {r4, pc}
00472f44  01 01 a0 e1                                      lsl r0, r1, #2
00472f48  80 00 50 e3                                      cmp r0, #0x80
00472f4c  04 00 8d e5                                      str r0, [sp, #4]
00472f50  05 00 00 8a                                      bhi #0x472f6c
00472f54  04 00 8d e2                                      add r0, sp, #4
00472f58  d8 57 0a eb                                      bl #0x708ec0
00472f5c  04 30 9d e5                                      ldr r3, [sp, #4]
00472f60  23 31 a0 e1                                      lsr r3, r3, #2
00472f64  00 30 84 e5                                      str r3, [r4]
00472f68  f3 ff ff ea                                      b #0x472f3c
00472f6c  38 75 fa eb                                      bl #0x310454
00472f70  f9 ff ff ea                                      b #0x472f5c
00472f74  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00472f78  00 00 8f e0                                      add r0, pc, r0
00472f7c  50 6c fa eb                                      bl #0x30e0c4
00472f80  01 00 a0 e3                                      mov r0, #1
00472f84  af 6b fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00472f88  f8 b4 44 00                                      .byte 0xf8, 0xb4, 0x44, 0x00
