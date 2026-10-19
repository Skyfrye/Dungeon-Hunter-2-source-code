; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00756cdc, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::filter_texture_cache
; alias: _ZN7gameswf20filter_texture_cache36get_region_size_requirement_cellsizeERiS1_
; demangled: gameswf::filter_texture_cache::get_region_size_requirement_cellsize(int&, int&)
; decoder-mode: arm
00756cdc  00 30 91 e5                                      ldr r3, [r1]
00756ce0  04 40 2d e5                                      str r4, [sp, #-4]!
00756ce4  c3 0f a0 e1                                      asr r0, r3, #0x1f
00756ce8  0f c0 83 e2                                      add ip, r3, #0xf
00756cec  20 0e a0 e1                                      lsr r0, r0, #0x1c
00756cf0  00 40 83 e0                                      add r4, r3, r0
00756cf4  00 00 53 e3                                      cmp r3, #0
00756cf8  0f 40 04 e2                                      and r4, r4, #0xf
00756cfc  04 00 60 e0                                      rsb r0, r0, r4
00756d00  0c 30 a0 b1                                      movlt r3, ip
00756d04  43 32 a0 e1                                      asr r3, r3, #4
00756d08  00 00 50 e3                                      cmp r0, #0
00756d0c  01 30 83 c2                                      addgt r3, r3, #1
00756d10  03 32 a0 e1                                      lsl r3, r3, #4
00756d14  10 00 53 e3                                      cmp r3, #0x10
00756d18  10 30 a0 b3                                      movlt r3, #0x10
00756d1c  00 30 81 e5                                      str r3, [r1]
00756d20  00 30 92 e5                                      ldr r3, [r2]
00756d24  c3 0f a0 e1                                      asr r0, r3, #0x1f
00756d28  00 00 53 e3                                      cmp r3, #0
00756d2c  20 0e a0 e1                                      lsr r0, r0, #0x1c
00756d30  00 40 83 e0                                      add r4, r3, r0
00756d34  0f c0 83 e2                                      add ip, r3, #0xf
00756d38  0f 40 04 e2                                      and r4, r4, #0xf
00756d3c  0c 30 a0 b1                                      movlt r3, ip
00756d40  04 00 60 e0                                      rsb r0, r0, r4
00756d44  00 00 50 e3                                      cmp r0, #0
00756d48  43 32 a0 e1                                      asr r3, r3, #4
00756d4c  01 30 83 c2                                      addgt r3, r3, #1
00756d50  03 32 a0 e1                                      lsl r3, r3, #4
00756d54  10 00 53 e3                                      cmp r3, #0x10
00756d58  10 30 a0 b3                                      movlt r3, #0x10
00756d5c  00 30 82 e5                                      str r3, [r2]
00756d60  00 30 91 e5                                      ldr r3, [r1]
00756d64  10 00 53 e3                                      cmp r3, #0x10
00756d68  10 30 a0 b3                                      movlt r3, #0x10
00756d6c  00 30 81 e5                                      str r3, [r1]
00756d70  00 30 92 e5                                      ldr r3, [r2]
00756d74  10 00 53 e3                                      cmp r3, #0x10
00756d78  10 30 a0 b3                                      movlt r3, #0x10
00756d7c  00 30 82 e5                                      str r3, [r2]
00756d80  10 00 bd e8                                      ldm sp!, {r4}
00756d84  1e ff 2f e1                                      bx lr

; FUNCTION 0x00758a80, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::filter_texture_cache
; alias: _ZN7gameswf20filter_texture_cache20get_character_regionEPNS_9characterEii
; demangled: gameswf::filter_texture_cache::get_character_region(gameswf::character*, int, int)
; decoder-mode: arm
00758a80  d0 40 2d e9                                      push {r4, r6, r7, lr}
00758a84  18 d0 4d e2                                      sub sp, sp, #0x18
00758a88  01 60 a0 e1                                      mov r6, r1
00758a8c  c6 7f a0 e1                                      asr r7, r6, #0x1f
00758a90  04 20 8d e5                                      str r2, [sp, #4]
00758a94  00 30 8d e5                                      str r3, [sp]
00758a98  00 20 a0 e3                                      mov r2, #0
00758a9c  00 30 a0 e3                                      mov r3, #0
00758aa0  00 40 a0 e1                                      mov r4, r0
00758aa4  08 10 8d e2                                      add r1, sp, #8
00758aa8  30 00 80 e2                                      add r0, r0, #0x30
00758aac  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00758ab0  f0 21 cd e1                                      strd r2, r3, [sp, #0x10]
00758ab4  18 f9 ff eb                                      bl #0x756f1c
00758ab8  00 00 50 e3                                      cmp r0, #0
00758abc  04 00 00 ba                                      blt #0x758ad4
00758ac0  30 30 94 e5                                      ldr r3, [r4, #0x30]
00758ac4  80 02 83 e0                                      add r0, r3, r0, lsl #5
00758ac8  20 00 90 e5                                      ldr r0, [r0, #0x20]
00758acc  18 d0 8d e2                                      add sp, sp, #0x18
00758ad0  d0 80 bd e8                                      pop {r4, r6, r7, pc}
00758ad4  04 10 8d e2                                      add r1, sp, #4
00758ad8  0d 20 a0 e1                                      mov r2, sp
00758adc  04 00 a0 e1                                      mov r0, r4
00758ae0  7d f8 ff eb                                      bl #0x756cdc
00758ae4  04 00 a0 e1                                      mov r0, r4
00758ae8  04 10 9d e5                                      ldr r1, [sp, #4]
00758aec  00 20 9d e5                                      ldr r2, [sp]
00758af0  dc ee 00 eb                                      bl #0x794668
00758af4  f4 ff ff ea                                      b #0x758acc
