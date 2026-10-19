; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b2e24, declared_size=440, range_size=440, mode=arm
; class-group: int const& std::priv
; alias: _ZNSt4priv8__medianIiN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E17vert_index_sorterEEERKT_SA_SA_SA_T0_
; demangled: int const& std::priv::__median<int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int const&, int const&, int const&, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b2e24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b2e28  00 50 a0 e1                                      mov r5, r0
007b2e2c  00 90 90 e5                                      ldr sb, [r0]
007b2e30  00 00 91 e5                                      ldr r0, [r1]
007b2e34  01 40 a0 e1                                      mov r4, r1
007b2e38  14 10 a0 e3                                      mov r1, #0x14
007b2e3c  00 60 93 e5                                      ldr r6, [r3]
007b2e40  91 09 09 e0                                      mul sb, r1, sb
007b2e44  91 00 03 e0                                      mul r3, r1, r0
007b2e48  09 70 96 e7                                      ldr r7, [r6, sb]
007b2e4c  03 80 96 e7                                      ldr r8, [r6, r3]
007b2e50  0c d0 4d e2                                      sub sp, sp, #0xc
007b2e54  03 30 86 e0                                      add r3, r6, r3
007b2e58  08 10 a0 e1                                      mov r1, r8
007b2e5c  07 00 a0 e1                                      mov r0, r7
007b2e60  02 a0 a0 e1                                      mov sl, r2
007b2e64  04 30 8d e5                                      str r3, [sp, #4]
007b2e68  27 6e ed eb                                      bl #0x30e70c
007b2e6c  00 00 50 e3                                      cmp r0, #0
007b2e70  09 90 86 e0                                      add sb, r6, sb
007b2e74  32 00 00 1a                                      bne #0x7b2f44
007b2e78  07 00 a0 e1                                      mov r0, r7
007b2e7c  08 10 a0 e1                                      mov r1, r8
007b2e80  1c 6d ed eb                                      bl #0x30e2f8
007b2e84  00 00 50 e3                                      cmp r0, #0
007b2e88  05 00 00 1a                                      bne #0x7b2ea4
007b2e8c  04 30 9d e5                                      ldr r3, [sp, #4]
007b2e90  04 00 99 e5                                      ldr r0, [sb, #4]
007b2e94  04 10 93 e5                                      ldr r1, [r3, #4]
007b2e98  1b 6e ed eb                                      bl #0x30e70c
007b2e9c  00 00 50 e3                                      cmp r0, #0
007b2ea0  27 00 00 1a                                      bne #0x7b2f44
007b2ea4  00 30 9a e5                                      ldr r3, [sl]
007b2ea8  14 20 a0 e3                                      mov r2, #0x14
007b2eac  07 00 a0 e1                                      mov r0, r7
007b2eb0  92 03 03 e0                                      mul r3, r2, r3
007b2eb4  03 b0 96 e7                                      ldr fp, [r6, r3]
007b2eb8  03 60 86 e0                                      add r6, r6, r3
007b2ebc  0b 10 a0 e1                                      mov r1, fp
007b2ec0  11 6e ed eb                                      bl #0x30e70c
007b2ec4  00 00 50 e3                                      cmp r0, #0
007b2ec8  41 00 00 1a                                      bne #0x7b2fd4
007b2ecc  07 00 a0 e1                                      mov r0, r7
007b2ed0  0b 10 a0 e1                                      mov r1, fp
007b2ed4  07 6d ed eb                                      bl #0x30e2f8
007b2ed8  00 00 50 e3                                      cmp r0, #0
007b2edc  04 00 00 1a                                      bne #0x7b2ef4
007b2ee0  04 00 99 e5                                      ldr r0, [sb, #4]
007b2ee4  04 10 96 e5                                      ldr r1, [r6, #4]
007b2ee8  07 6e ed eb                                      bl #0x30e70c
007b2eec  00 00 50 e3                                      cmp r0, #0
007b2ef0  37 00 00 1a                                      bne #0x7b2fd4
007b2ef4  08 00 a0 e1                                      mov r0, r8
007b2ef8  0b 10 a0 e1                                      mov r1, fp
007b2efc  02 6e ed eb                                      bl #0x30e70c
007b2f00  00 00 50 e3                                      cmp r0, #0
007b2f04  0a 00 00 1a                                      bne #0x7b2f34
007b2f08  08 00 a0 e1                                      mov r0, r8
007b2f0c  0b 10 a0 e1                                      mov r1, fp
007b2f10  f8 6c ed eb                                      bl #0x30e2f8
007b2f14  00 00 50 e3                                      cmp r0, #0
007b2f18  06 00 00 1a                                      bne #0x7b2f38
007b2f1c  04 30 9d e5                                      ldr r3, [sp, #4]
007b2f20  04 10 96 e5                                      ldr r1, [r6, #4]
007b2f24  04 00 93 e5                                      ldr r0, [r3, #4]
007b2f28  f7 6d ed eb                                      bl #0x30e70c
007b2f2c  00 00 50 e3                                      cmp r0, #0
007b2f30  00 00 00 0a                                      beq #0x7b2f38
007b2f34  0a 40 a0 e1                                      mov r4, sl
007b2f38  04 00 a0 e1                                      mov r0, r4
007b2f3c  0c d0 8d e2                                      add sp, sp, #0xc
007b2f40  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b2f44  00 30 9a e5                                      ldr r3, [sl]
007b2f48  14 20 a0 e3                                      mov r2, #0x14
007b2f4c  08 00 a0 e1                                      mov r0, r8
007b2f50  92 03 03 e0                                      mul r3, r2, r3
007b2f54  03 b0 96 e7                                      ldr fp, [r6, r3]
007b2f58  03 60 86 e0                                      add r6, r6, r3
007b2f5c  0b 10 a0 e1                                      mov r1, fp
007b2f60  e9 6d ed eb                                      bl #0x30e70c
007b2f64  00 00 50 e3                                      cmp r0, #0
007b2f68  f2 ff ff 1a                                      bne #0x7b2f38
007b2f6c  08 00 a0 e1                                      mov r0, r8
007b2f70  0b 10 a0 e1                                      mov r1, fp
007b2f74  df 6c ed eb                                      bl #0x30e2f8
007b2f78  00 00 50 e3                                      cmp r0, #0
007b2f7c  05 00 00 1a                                      bne #0x7b2f98
007b2f80  04 30 9d e5                                      ldr r3, [sp, #4]
007b2f84  04 10 96 e5                                      ldr r1, [r6, #4]
007b2f88  04 00 93 e5                                      ldr r0, [r3, #4]
007b2f8c  de 6d ed eb                                      bl #0x30e70c
007b2f90  00 00 50 e3                                      cmp r0, #0
007b2f94  e7 ff ff 1a                                      bne #0x7b2f38
007b2f98  07 00 a0 e1                                      mov r0, r7
007b2f9c  0b 10 a0 e1                                      mov r1, fp
007b2fa0  d9 6d ed eb                                      bl #0x30e70c
007b2fa4  00 00 50 e3                                      cmp r0, #0
007b2fa8  e1 ff ff 1a                                      bne #0x7b2f34
007b2fac  07 00 a0 e1                                      mov r0, r7
007b2fb0  0b 10 a0 e1                                      mov r1, fp
007b2fb4  cf 6c ed eb                                      bl #0x30e2f8
007b2fb8  00 00 50 e3                                      cmp r0, #0
007b2fbc  04 00 00 1a                                      bne #0x7b2fd4
007b2fc0  04 00 99 e5                                      ldr r0, [sb, #4]
007b2fc4  04 10 96 e5                                      ldr r1, [r6, #4]
007b2fc8  cf 6d ed eb                                      bl #0x30e70c
007b2fcc  00 00 50 e3                                      cmp r0, #0
007b2fd0  d7 ff ff 1a                                      bne #0x7b2f34
007b2fd4  05 40 a0 e1                                      mov r4, r5
007b2fd8  d6 ff ff ea                                      b #0x7b2f38
