; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00756c30, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache17get_region_boundsEPKNS0_6regionERNS_4rectE
; demangled: gameswf::texture_cache::get_region_bounds(gameswf::texture_cache::region const*, gameswf::rect&)
; decoder-mode: arm
00756c30  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00756c34  34 30 90 e5                                      ldr r3, [r0, #0x34]
00756c38  00 40 a0 e1                                      mov r4, r0
00756c3c  02 50 a0 e1                                      mov r5, r2
00756c40  03 00 a0 e1                                      mov r0, r3
00756c44  00 30 93 e5                                      ldr r3, [r3]
00756c48  01 60 a0 e1                                      mov r6, r1
00756c4c  0f e0 a0 e1                                      mov lr, pc
00756c50  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00756c54  10 40 94 e5                                      ldr r4, [r4, #0x10]
00756c58  40 a2 a0 e1                                      asr sl, r0, #4
00756c5c  01 00 4a e2                                      sub r0, sl, #1
00756c60  06 40 64 e0                                      rsb r4, r4, r6
00756c64  44 42 a0 e1                                      asr r4, r4, #4
00756c68  04 00 00 e0                                      and r0, r0, r4
00756c6c  00 02 a0 e1                                      lsl r0, r0, #4
00756c70  3b df ee eb                                      bl #0x30e964
00756c74  0c 70 96 e5                                      ldr r7, [r6, #0xc]
00756c78  08 80 96 e5                                      ldr r8, [r6, #8]
00756c7c  0a 10 a0 e1                                      mov r1, sl
00756c80  00 60 a0 e1                                      mov r6, r0
00756c84  00 00 85 e5                                      str r0, [r5]
00756c88  04 00 a0 e1                                      mov r0, r4
00756c8c  84 dd ee eb                                      bl #0x30e2a4
00756c90  00 02 a0 e1                                      lsl r0, r0, #4
00756c94  32 df ee eb                                      bl #0x30e964
00756c98  08 82 a0 e1                                      lsl r8, r8, #4
00756c9c  00 40 a0 e1                                      mov r4, r0
00756ca0  08 00 85 e5                                      str r0, [r5, #8]
00756ca4  08 00 a0 e1                                      mov r0, r8
00756ca8  2d df ee eb                                      bl #0x30e964
00756cac  00 10 a0 e1                                      mov r1, r0
00756cb0  06 00 a0 e1                                      mov r0, r6
00756cb4  ba df ee eb                                      bl #0x30eba4
00756cb8  07 72 a0 e1                                      lsl r7, r7, #4
00756cbc  04 00 85 e5                                      str r0, [r5, #4]
00756cc0  07 00 a0 e1                                      mov r0, r7
00756cc4  26 df ee eb                                      bl #0x30e964
00756cc8  00 10 a0 e1                                      mov r1, r0
00756ccc  04 00 a0 e1                                      mov r0, r4
00756cd0  b3 df ee eb                                      bl #0x30eba4
00756cd4  0c 00 85 e5                                      str r0, [r5, #0xc]
00756cd8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00758b8c, declared_size=284, range_size=284, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cacheD2Ev
; demangled: gameswf::texture_cache::~texture_cache()
; decoder-mode: arm
00758b8c  d0 40 2d e9                                      push {r4, r6, r7, lr}
00758b90  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00758b94  00 40 a0 e1                                      mov r4, r0
00758b98  00 00 53 e3                                      cmp r3, #0
00758b9c  06 00 00 0a                                      beq #0x758bbc
00758ba0  34 30 90 e5                                      ldr r3, [r0, #0x34]
00758ba4  03 00 a0 e1                                      mov r0, r3
00758ba8  00 30 93 e5                                      ldr r3, [r3]
00758bac  0f e0 a0 e1                                      mov lr, pc
00758bb0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00758bb4  00 30 a0 e3                                      mov r3, #0
00758bb8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00758bbc  34 00 94 e5                                      ldr r0, [r4, #0x34]
00758bc0  00 00 50 e3                                      cmp r0, #0
00758bc4  00 00 00 0a                                      beq #0x758bcc
00758bc8  9c 05 00 eb                                      bl #0x75a240
00758bcc  30 00 84 e2                                      add r0, r4, #0x30
00758bd0  75 f9 ff eb                                      bl #0x7571ac
00758bd4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00758bd8  00 00 53 e3                                      cmp r3, #0
00758bdc  16 00 00 da                                      ble #0x758c3c
00758be0  2c 30 d4 e5                                      ldrb r3, [r4, #0x2c]
00758be4  00 20 a0 e3                                      mov r2, #0
00758be8  24 20 84 e5                                      str r2, [r4, #0x24]
00758bec  02 00 53 e1                                      cmp r3, r2
00758bf0  08 00 00 1a                                      bne #0x758c18
00758bf4  20 00 94 e5                                      ldr r0, [r4, #0x20]
00758bf8  28 10 94 e5                                      ldr r1, [r4, #0x28]
00758bfc  28 30 84 e5                                      str r3, [r4, #0x28]
00758c00  02 00 50 e1                                      cmp r0, r2
00758c04  01 00 00 0a                                      beq #0x758c10
00758c08  01 11 a0 e1                                      lsl r1, r1, #2
00758c0c  c9 e7 ff eb                                      bl #0x752b38
00758c10  00 30 a0 e3                                      mov r3, #0
00758c14  20 30 84 e5                                      str r3, [r4, #0x20]
00758c18  14 20 94 e5                                      ldr r2, [r4, #0x14]
00758c1c  10 00 84 e2                                      add r0, r4, #0x10
00758c20  00 00 52 e3                                      cmp r2, #0
00758c24  0d 00 00 da                                      ble #0x758c60
00758c28  00 10 a0 e3                                      mov r1, #0
00758c2c  14 10 84 e5                                      str r1, [r4, #0x14]
00758c30  13 fa ff eb                                      bl #0x757484
00758c34  04 00 a0 e1                                      mov r0, r4
00758c38  d0 80 bd e8                                      pop {r4, r6, r7, pc}
00758c3c  e7 ff ff aa                                      bge #0x758be0
00758c40  03 21 a0 e1                                      lsl r2, r3, #2
00758c44  00 00 a0 e3                                      mov r0, #0
00758c48  20 10 94 e5                                      ldr r1, [r4, #0x20]
00758c4c  01 30 93 e2                                      adds r3, r3, #1
00758c50  02 00 81 e7                                      str r0, [r1, r2]
00758c54  04 20 82 e2                                      add r2, r2, #4
00758c58  fa ff ff 1a                                      bne #0x758c48
00758c5c  df ff ff ea                                      b #0x758be0
00758c60  f0 ff ff aa                                      bge #0x758c28
00758c64  02 32 a0 e1                                      lsl r3, r2, #4
00758c68  00 60 a0 e3                                      mov r6, #0
00758c6c  00 70 a0 e3                                      mov r7, #0
00758c70  00 e0 a0 e3                                      mov lr, #0
00758c74  00 c0 90 e5                                      ldr ip, [r0]
00758c78  01 20 92 e2                                      adds r2, r2, #1
00758c7c  03 10 8c e0                                      add r1, ip, r3
00758c80  f3 60 8c e1                                      strd r6, r7, [ip, r3]
00758c84  0c e0 81 e5                                      str lr, [r1, #0xc]
00758c88  08 e0 81 e5                                      str lr, [r1, #8]
00758c8c  10 30 83 e2                                      add r3, r3, #0x10
00758c90  f7 ff ff 1a                                      bne #0x758c74
00758c94  00 10 a0 e3                                      mov r1, #0
00758c98  14 10 84 e5                                      str r1, [r4, #0x14]
00758c9c  f8 f9 ff eb                                      bl #0x757484
00758ca0  04 00 a0 e1                                      mov r0, r4
00758ca4  d0 80 bd e8                                      pop {r4, r6, r7, pc}

; FUNCTION 0x0079352c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache16verify_integrityEPNS0_6regionE
; demangled: gameswf::texture_cache::verify_integrity(gameswf::texture_cache::region*)
; decoder-mode: arm
0079352c  10 40 2d e9                                      push {r4, lr}
00793530  34 30 90 e5                                      ldr r3, [r0, #0x34]
00793534  00 40 a0 e1                                      mov r4, r0
00793538  03 00 a0 e1                                      mov r0, r3
0079353c  00 30 93 e5                                      ldr r3, [r3]
00793540  0f e0 a0 e1                                      mov lr, pc
00793544  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00793548  34 30 94 e5                                      ldr r3, [r4, #0x34]
0079354c  03 00 a0 e1                                      mov r0, r3
00793550  00 30 93 e5                                      ldr r3, [r3]
00793554  0f e0 a0 e1                                      mov lr, pc
00793558  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0079355c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00793560, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache27get_region_size_requirementERiS1_
; demangled: gameswf::texture_cache::get_region_size_requirement(int&, int&)
; decoder-mode: arm
00793560  04 40 2d e5                                      str r4, [sp, #-4]!
00793564  00 30 90 e5                                      ldr r3, [r0]
00793568  c3 2f a0 e1                                      asr r2, r3, #0x1f
0079356c  0f c0 83 e2                                      add ip, r3, #0xf
00793570  22 2e a0 e1                                      lsr r2, r2, #0x1c
00793574  02 40 83 e0                                      add r4, r3, r2
00793578  00 00 53 e3                                      cmp r3, #0
0079357c  0f 40 04 e2                                      and r4, r4, #0xf
00793580  0c 30 a0 b1                                      movlt r3, ip
00793584  04 20 62 e0                                      rsb r2, r2, r4
00793588  00 00 52 e3                                      cmp r2, #0
0079358c  43 32 a0 e1                                      asr r3, r3, #4
00793590  01 30 83 c2                                      addgt r3, r3, #1
00793594  03 32 a0 e1                                      lsl r3, r3, #4
00793598  10 00 53 e3                                      cmp r3, #0x10
0079359c  10 30 a0 b3                                      movlt r3, #0x10
007935a0  00 30 80 e5                                      str r3, [r0]
007935a4  00 30 91 e5                                      ldr r3, [r1]
007935a8  c3 2f a0 e1                                      asr r2, r3, #0x1f
007935ac  00 00 53 e3                                      cmp r3, #0
007935b0  22 2e a0 e1                                      lsr r2, r2, #0x1c
007935b4  02 c0 83 e0                                      add ip, r3, r2
007935b8  0f 00 83 e2                                      add r0, r3, #0xf
007935bc  0f c0 0c e2                                      and ip, ip, #0xf
007935c0  00 30 a0 b1                                      movlt r3, r0
007935c4  0c 20 62 e0                                      rsb r2, r2, ip
007935c8  00 00 52 e3                                      cmp r2, #0
007935cc  43 32 a0 e1                                      asr r3, r3, #4
007935d0  01 30 83 c2                                      addgt r3, r3, #1
007935d4  03 32 a0 e1                                      lsl r3, r3, #4
007935d8  10 00 53 e3                                      cmp r3, #0x10
007935dc  10 30 a0 b3                                      movlt r3, #0x10
007935e0  00 30 81 e5                                      str r3, [r1]
007935e4  10 00 bd e8                                      ldm sp!, {r4}
007935e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007935ec, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache10unlock_allEPNS_14player_contextE
; demangled: gameswf::texture_cache::unlock_all(gameswf::player_context*)
; decoder-mode: arm
007935ec  70 40 2d e9                                      push {r4, r5, r6, lr}
007935f0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007935f4  00 50 a0 e1                                      mov r5, r0
007935f8  28 40 93 e5                                      ldr r4, [r3, #0x28]
007935fc  00 00 54 e3                                      cmp r4, #0
00793600  09 00 00 0a                                      beq #0x79362c
00793604  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00793608  00 00 53 e3                                      cmp r3, #0
0079360c  06 00 00 0a                                      beq #0x79362c
00793610  34 30 94 e5                                      ldr r3, [r4, #0x34]
00793614  03 00 a0 e1                                      mov r0, r3
00793618  00 30 93 e5                                      ldr r3, [r3]
0079361c  0f e0 a0 e1                                      mov lr, pc
00793620  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00793624  00 30 a0 e3                                      mov r3, #0
00793628  3c 30 84 e5                                      str r3, [r4, #0x3c]
0079362c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00793630  0c 40 93 e5                                      ldr r4, [r3, #0xc]
00793634  00 00 54 e3                                      cmp r4, #0
00793638  09 00 00 0a                                      beq #0x793664
0079363c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00793640  00 00 53 e3                                      cmp r3, #0
00793644  06 00 00 0a                                      beq #0x793664
00793648  34 30 94 e5                                      ldr r3, [r4, #0x34]
0079364c  03 00 a0 e1                                      mov r0, r3
00793650  00 30 93 e5                                      ldr r3, [r3]
00793654  0f e0 a0 e1                                      mov lr, pc
00793658  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0079365c  00 30 a0 e3                                      mov r3, #0
00793660  3c 30 84 e5                                      str r3, [r4, #0x3c]
00793664  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00793d78, declared_size=352, range_size=352, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache16verify_integrityEv
; demangled: gameswf::texture_cache::verify_integrity()
; decoder-mode: arm
00793d78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00793d7c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00793d80  08 d0 4d e2                                      sub sp, sp, #8
00793d84  00 50 a0 e1                                      mov r5, r0
00793d88  00 00 53 e3                                      cmp r3, #0
00793d8c  08 00 00 da                                      ble #0x793db4
00793d90  00 40 a0 e3                                      mov r4, #0
00793d94  20 30 95 e5                                      ldr r3, [r5, #0x20]
00793d98  05 00 a0 e1                                      mov r0, r5
00793d9c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00793da0  e1 fd ff eb                                      bl #0x79352c
00793da4  24 30 95 e5                                      ldr r3, [r5, #0x24]
00793da8  01 40 84 e2                                      add r4, r4, #1
00793dac  03 00 54 e1                                      cmp r4, r3
00793db0  f7 ff ff ba                                      blt #0x793d94
00793db4  30 20 95 e5                                      ldr r2, [r5, #0x30]
00793db8  00 40 a0 e3                                      mov r4, #0
00793dbc  04 40 8d e5                                      str r4, [sp, #4]
00793dc0  04 00 52 e1                                      cmp r2, r4
00793dc4  30 70 85 e2                                      add r7, r5, #0x30
00793dc8  06 00 00 0a                                      beq #0x793de8
00793dcc  04 10 92 e5                                      ldr r1, [r2, #4]
00793dd0  04 00 51 e1                                      cmp r1, r4
00793dd4  2e 00 00 aa                                      bge #0x793e94
00793dd8  00 00 57 e3                                      cmp r7, #0
00793ddc  00 30 97 15                                      ldrne r3, [r7]
00793de0  04 80 8d 12                                      addne r8, sp, #4
00793de4  1d 00 00 1a                                      bne #0x793e60
00793de8  04 80 8d e2                                      add r8, sp, #4
00793dec  24 00 00 ea                                      b #0x793e84
00793df0  18 10 92 e5                                      ldr r1, [r2, #0x18]
00793df4  cc fd ff eb                                      bl #0x79352c
00793df8  00 10 97 e5                                      ldr r1, [r7]
00793dfc  08 00 a0 e1                                      mov r0, r8
00793e00  06 10 81 e0                                      add r1, r1, r6
00793e04  18 10 81 e2                                      add r1, r1, #0x18
00793e08  af ff ff eb                                      bl #0x793ccc
00793e0c  00 30 97 e5                                      ldr r3, [r7]
00793e10  06 30 83 e0                                      add r3, r3, r6
00793e14  18 30 93 e5                                      ldr r3, [r3, #0x18]
00793e18  00 30 80 e5                                      str r3, [r0]
00793e1c  00 30 97 e5                                      ldr r3, [r7]
00793e20  04 20 93 e5                                      ldr r2, [r3, #4]
00793e24  02 00 54 e1                                      cmp r4, r2
00793e28  0e 00 00 ca                                      bgt #0x793e68
00793e2c  01 40 84 e2                                      add r4, r4, #1
00793e30  02 00 54 e1                                      cmp r4, r2
00793e34  09 00 00 ca                                      bgt #0x793e60
00793e38  84 12 a0 e1                                      lsl r1, r4, #5
00793e3c  08 10 81 e2                                      add r1, r1, #8
00793e40  01 00 93 e7                                      ldr r0, [r3, r1]
00793e44  01 c0 83 e0                                      add ip, r3, r1
00793e48  20 10 81 e2                                      add r1, r1, #0x20
00793e4c  02 00 70 e3                                      cmn r0, #2
00793e50  1c 00 00 0a                                      beq #0x793ec8
00793e54  04 00 9c e5                                      ldr r0, [ip, #4]
00793e58  01 00 70 e3                                      cmn r0, #1
00793e5c  19 00 00 0a                                      beq #0x793ec8
00793e60  84 62 a0 e1                                      lsl r6, r4, #5
00793e64  08 60 86 e2                                      add r6, r6, #8
00793e68  00 00 53 e3                                      cmp r3, #0
00793e6c  06 20 83 e0                                      add r2, r3, r6
00793e70  05 00 a0 e1                                      mov r0, r5
00793e74  02 00 00 0a                                      beq #0x793e84
00793e78  04 30 93 e5                                      ldr r3, [r3, #4]
00793e7c  03 00 54 e1                                      cmp r4, r3
00793e80  da ff ff da                                      ble #0x793df0
00793e84  08 00 a0 e1                                      mov r0, r8
00793e88  77 fe ff eb                                      bl #0x79386c
00793e8c  08 d0 8d e2                                      add sp, sp, #8
00793e90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00793e94  08 30 a0 e3                                      mov r3, #8
00793e98  03 00 92 e7                                      ldr r0, [r2, r3]
00793e9c  03 c0 82 e0                                      add ip, r2, r3
00793ea0  20 30 83 e2                                      add r3, r3, #0x20
00793ea4  02 00 70 e3                                      cmn r0, #2
00793ea8  02 00 00 0a                                      beq #0x793eb8
00793eac  04 00 9c e5                                      ldr r0, [ip, #4]
00793eb0  01 00 70 e3                                      cmn r0, #1
00793eb4  c7 ff ff 1a                                      bne #0x793dd8
00793eb8  01 40 84 e2                                      add r4, r4, #1
00793ebc  01 00 54 e1                                      cmp r4, r1
00793ec0  f4 ff ff da                                      ble #0x793e98
00793ec4  c3 ff ff ea                                      b #0x793dd8
00793ec8  01 40 84 e2                                      add r4, r4, #1
00793ecc  02 00 54 e1                                      cmp r4, r2
00793ed0  da ff ff da                                      ble #0x793e40
00793ed4  e1 ff ff ea                                      b #0x793e60

; FUNCTION 0x00793ed8, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache5resetEv
; demangled: gameswf::texture_cache::reset()
; decoder-mode: arm
00793ed8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00793edc  00 40 a0 e1                                      mov r4, r0
00793ee0  30 00 80 e2                                      add r0, r0, #0x30
00793ee4  b0 0c ff eb                                      bl #0x7571ac
00793ee8  24 30 94 e5                                      ldr r3, [r4, #0x24]
00793eec  00 00 53 e3                                      cmp r3, #0
00793ef0  45 00 00 da                                      ble #0x79400c
00793ef4  01 00 a0 e3                                      mov r0, #1
00793ef8  d0 20 c4 e1                                      ldrd r2, r3, [r4]
00793efc  00 10 a0 e3                                      mov r1, #0
00793f00  00 20 92 e0                                      adds r2, r2, r0
00793f04  01 30 a3 e0                                      adc r3, r3, r1
00793f08  f8 20 c4 e1                                      strd r2, r3, [r4, #8]
00793f0c  f0 20 c4 e1                                      strd r2, r3, [r4]
00793f10  34 30 94 e5                                      ldr r3, [r4, #0x34]
00793f14  00 70 a0 e3                                      mov r7, #0
00793f18  24 70 84 e5                                      str r7, [r4, #0x24]
00793f1c  03 00 a0 e1                                      mov r0, r3
00793f20  00 30 93 e5                                      ldr r3, [r3]
00793f24  0f e0 a0 e1                                      mov lr, pc
00793f28  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00793f2c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00793f30  07 00 50 e1                                      cmp r0, r7
00793f34  0f 60 80 e2                                      add r6, r0, #0xf
00793f38  00 60 a0 a1                                      movge r6, r0
00793f3c  03 00 a0 e1                                      mov r0, r3
00793f40  00 30 93 e5                                      ldr r3, [r3]
00793f44  0f e0 a0 e1                                      mov lr, pc
00793f48  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00793f4c  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
00793f50  0f 50 80 e2                                      add r5, r0, #0xf
00793f54  07 00 50 e1                                      cmp r0, r7
00793f58  05 00 a0 b1                                      movlt r0, r5
00793f5c  07 00 58 e1                                      cmp r8, r7
00793f60  46 62 a0 e1                                      asr r6, r6, #4
00793f64  40 52 a0 e1                                      asr r5, r0, #4
00793f68  10 00 00 0a                                      beq #0x793fb0
00793f6c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00793f70  03 00 a0 e1                                      mov r0, r3
00793f74  00 30 93 e5                                      ldr r3, [r3]
00793f78  0f e0 a0 e1                                      mov lr, pc
00793f7c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00793f80  34 30 94 e5                                      ldr r3, [r4, #0x34]
00793f84  00 a0 a0 e1                                      mov sl, r0
00793f88  03 00 a0 e1                                      mov r0, r3
00793f8c  00 30 93 e5                                      ldr r3, [r3]
00793f90  0f e0 a0 e1                                      mov lr, pc
00793f94  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00793f98  38 20 94 e5                                      ldr r2, [r4, #0x38]
00793f9c  90 0a 03 e0                                      mul r3, r0, sl
00793fa0  07 10 a0 e1                                      mov r1, r7
00793fa4  08 00 a0 e1                                      mov r0, r8
00793fa8  92 03 02 e0                                      mul r2, r2, r3
00793fac  2b e9 ed eb                                      bl #0x30e460
00793fb0  96 05 01 e0                                      mul r1, r6, r5
00793fb4  10 00 84 e2                                      add r0, r4, #0x10
00793fb8  6a fe ff eb                                      bl #0x793968
00793fbc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00793fc0  00 00 a0 e3                                      mov r0, #0
00793fc4  00 10 a0 e3                                      mov r1, #0
00793fc8  f0 00 c3 e1                                      strd r0, r1, [r3]
00793fcc  0c 50 83 e5                                      str r5, [r3, #0xc]
00793fd0  08 60 83 e5                                      str r6, [r3, #8]
00793fd4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00793fd8  28 20 94 e5                                      ldr r2, [r4, #0x28]
00793fdc  10 60 94 e5                                      ldr r6, [r4, #0x10]
00793fe0  01 50 83 e2                                      add r5, r3, #1
00793fe4  02 00 55 e1                                      cmp r5, r2
00793fe8  03 00 00 da                                      ble #0x793ffc
00793fec  20 00 84 e2                                      add r0, r4, #0x20
00793ff0  c5 10 85 e0                                      add r1, r5, r5, asr #1
00793ff4  3c fe ff eb                                      bl #0x7938ec
00793ff8  24 30 94 e5                                      ldr r3, [r4, #0x24]
00793ffc  20 20 94 e5                                      ldr r2, [r4, #0x20]
00794000  03 61 82 e7                                      str r6, [r2, r3, lsl #2]
00794004  24 50 84 e5                                      str r5, [r4, #0x24]
00794008  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0079400c  b8 ff ff aa                                      bge #0x793ef4
00794010  03 21 a0 e1                                      lsl r2, r3, #2
00794014  00 00 a0 e3                                      mov r0, #0
00794018  20 10 94 e5                                      ldr r1, [r4, #0x20]
0079401c  01 30 93 e2                                      adds r3, r3, #1
00794020  02 00 81 e7                                      str r0, [r1, r2]
00794024  04 20 82 e2                                      add r2, r2, #4
00794028  fa ff ff 1a                                      bne #0x794018
0079402c  b0 ff ff ea                                      b #0x793ef4

; FUNCTION 0x00794030, declared_size=400, range_size=400, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cacheC1Eiiib
; demangled: gameswf::texture_cache::texture_cache(int, int, int, bool)
; decoder-mode: arm
00794030  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00794034  00 60 a0 e3                                      mov r6, #0
00794038  0c d0 4d e2                                      sub sp, sp, #0xc
0079403c  00 70 a0 e3                                      mov r7, #0
00794040  04 10 8d e5                                      str r1, [sp, #4]
00794044  f8 60 c0 e1                                      strd r6, r7, [r0, #8]
00794048  f0 60 c0 e1                                      strd r6, r7, [r0]
0079404c  00 50 a0 e3                                      mov r5, #0
00794050  38 30 80 e5                                      str r3, [r0, #0x38]
00794054  10 50 80 e5                                      str r5, [r0, #0x10]
00794058  14 50 80 e5                                      str r5, [r0, #0x14]
0079405c  18 50 80 e5                                      str r5, [r0, #0x18]
00794060  1c 50 c0 e5                                      strb r5, [r0, #0x1c]
00794064  20 50 80 e5                                      str r5, [r0, #0x20]
00794068  24 50 80 e5                                      str r5, [r0, #0x24]
0079406c  28 50 80 e5                                      str r5, [r0, #0x28]
00794070  2c 50 c0 e5                                      strb r5, [r0, #0x2c]
00794074  30 50 80 e5                                      str r5, [r0, #0x30]
00794078  34 50 80 e5                                      str r5, [r0, #0x34]
0079407c  3c 50 80 e5                                      str r5, [r0, #0x3c]
00794080  00 40 a0 e1                                      mov r4, r0
00794084  0d 10 a0 e1                                      mov r1, sp
00794088  04 00 8d e2                                      add r0, sp, #4
0079408c  00 20 8d e5                                      str r2, [sp]
00794090  20 70 dd e5                                      ldrb r7, [sp, #0x20]
00794094  31 fd ff eb                                      bl #0x793560
00794098  38 30 94 e5                                      ldr r3, [r4, #0x38]
0079409c  14 61 9f e5                                      ldr r6, [pc, #0x114]
007940a0  01 00 53 e3                                      cmp r3, #1
007940a4  06 60 8f e0                                      add r6, pc, r6
007940a8  37 00 00 0a                                      beq #0x79418c
007940ac  00 00 57 e3                                      cmp r7, #0
007940b0  11 00 00 0a                                      beq #0x7940fc
007940b4  00 31 9f e5                                      ldr r3, [pc, #0x100]
007940b8  04 10 9d e5                                      ldr r1, [sp, #4]
007940bc  00 20 9d e5                                      ldr r2, [sp]
007940c0  03 30 96 e7                                      ldr r3, [r6, r3]
007940c4  00 30 93 e5                                      ldr r3, [r3]
007940c8  03 00 a0 e1                                      mov r0, r3
007940cc  00 30 93 e5                                      ldr r3, [r3]
007940d0  0f e0 a0 e1                                      mov lr, pc
007940d4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007940d8  00 10 a0 e1                                      mov r1, r0
007940dc  34 00 84 e2                                      add r0, r4, #0x34
007940e0  96 99 ff eb                                      bl #0x77a740
007940e4  34 30 94 e5                                      ldr r3, [r4, #0x34]
007940e8  03 00 a0 e1                                      mov r0, r3
007940ec  00 30 93 e5                                      ldr r3, [r3]
007940f0  0f e0 a0 e1                                      mov lr, pc
007940f4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007940f8  1e 00 00 ea                                      b #0x794178
007940fc  07 10 a0 e1                                      mov r1, r7
00794100  18 00 a0 e3                                      mov r0, #0x18
00794104  a7 fa fe eb                                      bl #0x752ba8
00794108  04 10 9d e5                                      ldr r1, [sp, #4]
0079410c  00 50 a0 e1                                      mov r5, r0
00794110  00 20 9d e5                                      ldr r2, [sp]
00794114  b4 85 00 eb                                      bl #0x7b57ec
00794118  10 30 95 e5                                      ldr r3, [r5, #0x10]
0079411c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00794120  07 10 a0 e1                                      mov r1, r7
00794124  08 00 95 e5                                      ldr r0, [r5, #8]
00794128  92 03 02 e0                                      mul r2, r2, r3
0079412c  cb e8 ed eb                                      bl #0x30e460
00794130  84 30 9f e5                                      ldr r3, [pc, #0x84]
00794134  05 10 a0 e1                                      mov r1, r5
00794138  03 30 96 e7                                      ldr r3, [r6, r3]
0079413c  00 30 93 e5                                      ldr r3, [r3]
00794140  03 00 a0 e1                                      mov r0, r3
00794144  00 30 93 e5                                      ldr r3, [r3]
00794148  0f e0 a0 e1                                      mov lr, pc
0079414c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00794150  00 10 a0 e1                                      mov r1, r0
00794154  34 00 84 e2                                      add r0, r4, #0x34
00794158  78 99 ff eb                                      bl #0x77a740
0079415c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00794160  03 00 a0 e1                                      mov r0, r3
00794164  00 30 93 e5                                      ldr r3, [r3]
00794168  0f e0 a0 e1                                      mov lr, pc
0079416c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00794170  05 00 a0 e1                                      mov r0, r5
00794174  1b 18 ff eb                                      bl #0x75a1e8
00794178  04 00 a0 e1                                      mov r0, r4
0079417c  55 ff ff eb                                      bl #0x793ed8
00794180  04 00 a0 e1                                      mov r0, r4
00794184  0c d0 8d e2                                      add sp, sp, #0xc
00794188  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0079418c  28 20 9f e5                                      ldr r2, [pc, #0x28]
00794190  05 30 a0 e1                                      mov r3, r5
00794194  04 10 9d e5                                      ldr r1, [sp, #4]
00794198  02 00 96 e7                                      ldr r0, [r6, r2]
0079419c  00 20 9d e5                                      ldr r2, [sp]
007941a0  00 c0 90 e5                                      ldr ip, [r0]
007941a4  0c 00 a0 e1                                      mov r0, ip
007941a8  00 c0 9c e5                                      ldr ip, [ip]
007941ac  0f e0 a0 e1                                      mov lr, pc
007941b0  0c f0 9c e5                                      ldr pc, [ip, #0xc]
007941b4  c7 ff ff ea                                      b #0x7940d8
; mapping-symbol data/literal pool
007941b8  ec 09 20 00 b4 39 00 00                          .byte 0xec, 0x09, 0x20, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007941c0, declared_size=400, range_size=400, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cacheC2Eiiib
; demangled: gameswf::texture_cache::texture_cache(int, int, int, bool)
; decoder-mode: arm
007941c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007941c4  00 60 a0 e3                                      mov r6, #0
007941c8  0c d0 4d e2                                      sub sp, sp, #0xc
007941cc  00 70 a0 e3                                      mov r7, #0
007941d0  04 10 8d e5                                      str r1, [sp, #4]
007941d4  f8 60 c0 e1                                      strd r6, r7, [r0, #8]
007941d8  f0 60 c0 e1                                      strd r6, r7, [r0]
007941dc  00 50 a0 e3                                      mov r5, #0
007941e0  38 30 80 e5                                      str r3, [r0, #0x38]
007941e4  10 50 80 e5                                      str r5, [r0, #0x10]
007941e8  14 50 80 e5                                      str r5, [r0, #0x14]
007941ec  18 50 80 e5                                      str r5, [r0, #0x18]
007941f0  1c 50 c0 e5                                      strb r5, [r0, #0x1c]
007941f4  20 50 80 e5                                      str r5, [r0, #0x20]
007941f8  24 50 80 e5                                      str r5, [r0, #0x24]
007941fc  28 50 80 e5                                      str r5, [r0, #0x28]
00794200  2c 50 c0 e5                                      strb r5, [r0, #0x2c]
00794204  30 50 80 e5                                      str r5, [r0, #0x30]
00794208  34 50 80 e5                                      str r5, [r0, #0x34]
0079420c  3c 50 80 e5                                      str r5, [r0, #0x3c]
00794210  00 40 a0 e1                                      mov r4, r0
00794214  0d 10 a0 e1                                      mov r1, sp
00794218  04 00 8d e2                                      add r0, sp, #4
0079421c  00 20 8d e5                                      str r2, [sp]
00794220  20 70 dd e5                                      ldrb r7, [sp, #0x20]
00794224  cd fc ff eb                                      bl #0x793560
00794228  38 30 94 e5                                      ldr r3, [r4, #0x38]
0079422c  14 61 9f e5                                      ldr r6, [pc, #0x114]
00794230  01 00 53 e3                                      cmp r3, #1
00794234  06 60 8f e0                                      add r6, pc, r6
00794238  37 00 00 0a                                      beq #0x79431c
0079423c  00 00 57 e3                                      cmp r7, #0
00794240  11 00 00 0a                                      beq #0x79428c
00794244  00 31 9f e5                                      ldr r3, [pc, #0x100]
00794248  04 10 9d e5                                      ldr r1, [sp, #4]
0079424c  00 20 9d e5                                      ldr r2, [sp]
00794250  03 30 96 e7                                      ldr r3, [r6, r3]
00794254  00 30 93 e5                                      ldr r3, [r3]
00794258  03 00 a0 e1                                      mov r0, r3
0079425c  00 30 93 e5                                      ldr r3, [r3]
00794260  0f e0 a0 e1                                      mov lr, pc
00794264  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00794268  00 10 a0 e1                                      mov r1, r0
0079426c  34 00 84 e2                                      add r0, r4, #0x34
00794270  32 99 ff eb                                      bl #0x77a740
00794274  34 30 94 e5                                      ldr r3, [r4, #0x34]
00794278  03 00 a0 e1                                      mov r0, r3
0079427c  00 30 93 e5                                      ldr r3, [r3]
00794280  0f e0 a0 e1                                      mov lr, pc
00794284  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00794288  1e 00 00 ea                                      b #0x794308
0079428c  07 10 a0 e1                                      mov r1, r7
00794290  18 00 a0 e3                                      mov r0, #0x18
00794294  43 fa fe eb                                      bl #0x752ba8
00794298  04 10 9d e5                                      ldr r1, [sp, #4]
0079429c  00 50 a0 e1                                      mov r5, r0
007942a0  00 20 9d e5                                      ldr r2, [sp]
007942a4  50 85 00 eb                                      bl #0x7b57ec
007942a8  10 30 95 e5                                      ldr r3, [r5, #0x10]
007942ac  14 20 95 e5                                      ldr r2, [r5, #0x14]
007942b0  07 10 a0 e1                                      mov r1, r7
007942b4  08 00 95 e5                                      ldr r0, [r5, #8]
007942b8  92 03 02 e0                                      mul r2, r2, r3
007942bc  67 e8 ed eb                                      bl #0x30e460
007942c0  84 30 9f e5                                      ldr r3, [pc, #0x84]
007942c4  05 10 a0 e1                                      mov r1, r5
007942c8  03 30 96 e7                                      ldr r3, [r6, r3]
007942cc  00 30 93 e5                                      ldr r3, [r3]
007942d0  03 00 a0 e1                                      mov r0, r3
007942d4  00 30 93 e5                                      ldr r3, [r3]
007942d8  0f e0 a0 e1                                      mov lr, pc
007942dc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007942e0  00 10 a0 e1                                      mov r1, r0
007942e4  34 00 84 e2                                      add r0, r4, #0x34
007942e8  14 99 ff eb                                      bl #0x77a740
007942ec  34 30 94 e5                                      ldr r3, [r4, #0x34]
007942f0  03 00 a0 e1                                      mov r0, r3
007942f4  00 30 93 e5                                      ldr r3, [r3]
007942f8  0f e0 a0 e1                                      mov lr, pc
007942fc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00794300  05 00 a0 e1                                      mov r0, r5
00794304  b7 17 ff eb                                      bl #0x75a1e8
00794308  04 00 a0 e1                                      mov r0, r4
0079430c  f1 fe ff eb                                      bl #0x793ed8
00794310  04 00 a0 e1                                      mov r0, r4
00794314  0c d0 8d e2                                      add sp, sp, #0xc
00794318  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0079431c  28 20 9f e5                                      ldr r2, [pc, #0x28]
00794320  05 30 a0 e1                                      mov r3, r5
00794324  04 10 9d e5                                      ldr r1, [sp, #4]
00794328  02 00 96 e7                                      ldr r0, [r6, r2]
0079432c  00 20 9d e5                                      ldr r2, [sp]
00794330  00 c0 90 e5                                      ldr ip, [r0]
00794334  0c 00 a0 e1                                      mov r0, ip
00794338  00 c0 9c e5                                      ldr ip, [ip]
0079433c  0f e0 a0 e1                                      mov lr, pc
00794340  0c f0 9c e5                                      ldr pc, [ip, #0xc]
00794344  c7 ff ff ea                                      b #0x794268
; mapping-symbol data/literal pool
00794348  5c 08 20 00 b4 39 00 00                          .byte 0x5c, 0x08, 0x20, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00794350, declared_size=312, range_size=312, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache16subdivide_regionEPNS0_6regionEii
; demangled: gameswf::texture_cache::subdivide_region(gameswf::texture_cache::region*, int, int)
; decoder-mode: arm
00794350  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00794354  01 50 a0 e1                                      mov r5, r1
00794358  34 c0 90 e5                                      ldr ip, [r0, #0x34]
0079435c  02 70 a0 e1                                      mov r7, r2
00794360  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00794364  0c d0 4d e2                                      sub sp, sp, #0xc
00794368  08 60 91 e5                                      ldr r6, [r1, #8]
0079436c  00 40 a0 e1                                      mov r4, r0
00794370  00 10 9c e5                                      ldr r1, [ip]
00794374  0c 00 a0 e1                                      mov r0, ip
00794378  04 20 8d e5                                      str r2, [sp, #4]
0079437c  03 80 a0 e1                                      mov r8, r3
00794380  0f e0 a0 e1                                      mov lr, pc
00794384  24 f0 91 e5                                      ldr pc, [r1, #0x24]
00794388  10 30 94 e5                                      ldr r3, [r4, #0x10]
0079438c  06 10 67 e0                                      rsb r1, r7, r6
00794390  00 00 51 e3                                      cmp r1, #0
00794394  05 90 63 e0                                      rsb sb, r3, r5
00794398  00 a0 a0 e1                                      mov sl, r0
0079439c  49 92 a0 e1                                      asr sb, sb, #4
007943a0  0f 00 00 da                                      ble #0x7943e4
007943a4  07 20 89 e0                                      add r2, sb, r7
007943a8  02 22 a0 e1                                      lsl r2, r2, #4
007943ac  02 b0 83 e0                                      add fp, r3, r2
007943b0  08 10 8b e5                                      str r1, [fp, #8]
007943b4  00 00 a0 e3                                      mov r0, #0
007943b8  00 10 a0 e3                                      mov r1, #0
007943bc  0c 80 8b e5                                      str r8, [fp, #0xc]
007943c0  f2 00 83 e1                                      strd r0, r1, [r3, r2]
007943c4  24 20 94 e5                                      ldr r2, [r4, #0x24]
007943c8  28 10 94 e5                                      ldr r1, [r4, #0x28]
007943cc  01 30 82 e2                                      add r3, r2, #1
007943d0  01 00 53 e1                                      cmp r3, r1
007943d4  24 00 00 ca                                      bgt #0x79446c
007943d8  20 10 94 e5                                      ldr r1, [r4, #0x20]
007943dc  02 b1 81 e7                                      str fp, [r1, r2, lsl #2]
007943e0  24 30 84 e5                                      str r3, [r4, #0x24]
007943e4  04 20 9d e5                                      ldr r2, [sp, #4]
007943e8  02 30 68 e0                                      rsb r3, r8, r2
007943ec  00 00 53 e3                                      cmp r3, #0
007943f0  14 00 00 da                                      ble #0x794448
007943f4  0f 20 8a e2                                      add r2, sl, #0xf
007943f8  00 00 5a e3                                      cmp sl, #0
007943fc  02 a0 a0 b1                                      movlt sl, r2
00794400  4a a2 a0 e1                                      asr sl, sl, #4
00794404  98 9a 29 e0                                      mla sb, r8, sl, sb
00794408  10 20 94 e5                                      ldr r2, [r4, #0x10]
0079440c  09 92 a0 e1                                      lsl sb, sb, #4
00794410  00 00 a0 e3                                      mov r0, #0
00794414  09 b0 82 e0                                      add fp, r2, sb
00794418  00 10 a0 e3                                      mov r1, #0
0079441c  08 60 8b e5                                      str r6, [fp, #8]
00794420  0c 30 8b e5                                      str r3, [fp, #0xc]
00794424  f9 00 82 e1                                      strd r0, r1, [r2, sb]
00794428  24 30 94 e5                                      ldr r3, [r4, #0x24]
0079442c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00794430  01 60 83 e2                                      add r6, r3, #1
00794434  02 00 56 e1                                      cmp r6, r2
00794438  06 00 00 ca                                      bgt #0x794458
0079443c  20 20 94 e5                                      ldr r2, [r4, #0x20]
00794440  03 b1 82 e7                                      str fp, [r2, r3, lsl #2]
00794444  24 60 84 e5                                      str r6, [r4, #0x24]
00794448  0c 80 85 e5                                      str r8, [r5, #0xc]
0079444c  08 70 85 e5                                      str r7, [r5, #8]
00794450  0c d0 8d e2                                      add sp, sp, #0xc
00794454  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00794458  20 00 84 e2                                      add r0, r4, #0x20
0079445c  c6 10 86 e0                                      add r1, r6, r6, asr #1
00794460  21 fd ff eb                                      bl #0x7938ec
00794464  24 30 94 e5                                      ldr r3, [r4, #0x24]
00794468  f3 ff ff ea                                      b #0x79443c
0079446c  c3 10 83 e0                                      add r1, r3, r3, asr #1
00794470  20 00 84 e2                                      add r0, r4, #0x20
00794474  00 30 8d e5                                      str r3, [sp]
00794478  1b fd ff eb                                      bl #0x7938ec
0079447c  24 20 94 e5                                      ldr r2, [r4, #0x24]
00794480  00 30 9d e5                                      ldr r3, [sp]
00794484  d3 ff ff ea                                      b #0x7943d8

; FUNCTION 0x00794488, declared_size=480, range_size=480, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache16find_used_regionEii
; demangled: gameswf::texture_cache::find_used_region(int, int)
; decoder-mode: arm
00794488  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0079448c  30 30 90 e5                                      ldr r3, [r0, #0x30]
00794490  0f 70 81 e2                                      add r7, r1, #0xf
00794494  00 00 51 e3                                      cmp r1, #0
00794498  0f 80 82 e2                                      add r8, r2, #0xf
0079449c  07 10 a0 b1                                      movlt r1, r7
007944a0  00 00 52 e3                                      cmp r2, #0
007944a4  08 20 a0 b1                                      movlt r2, r8
007944a8  00 00 53 e3                                      cmp r3, #0
007944ac  1c d0 4d e2                                      sub sp, sp, #0x1c
007944b0  00 a0 a0 e1                                      mov sl, r0
007944b4  41 72 a0 e1                                      asr r7, r1, #4
007944b8  42 82 a0 e1                                      asr r8, r2, #4
007944bc  30 50 80 e2                                      add r5, r0, #0x30
007944c0  08 00 00 0a                                      beq #0x7944e8
007944c4  04 10 93 e5                                      ldr r1, [r3, #4]
007944c8  00 00 51 e3                                      cmp r1, #0
007944cc  00 c0 a0 b3                                      movlt ip, #0
007944d0  46 00 00 aa                                      bge #0x7945f0
007944d4  00 00 55 e3                                      cmp r5, #0
007944d8  08 20 8d 12                                      addne r2, sp, #8
007944dc  00 60 a0 13                                      movne r6, #0
007944e0  04 20 8d 15                                      strne r2, [sp, #4]
007944e4  22 00 00 1a                                      bne #0x794574
007944e8  00 00 a0 e3                                      mov r0, #0
007944ec  1c d0 8d e2                                      add sp, sp, #0x1c
007944f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007944f4  8c 42 a0 e1                                      lsl r4, ip, #5
007944f8  08 40 84 e2                                      add r4, r4, #8
007944fc  04 00 83 e0                                      add r0, r3, r4
00794500  18 10 90 e5                                      ldr r1, [r0, #0x18]
00794504  08 90 91 e5                                      ldr sb, [r1, #8]
00794508  09 00 57 e1                                      cmp r7, sb
0079450c  09 00 00 ca                                      bgt #0x794538
00794510  0c 90 91 e5                                      ldr sb, [r1, #0xc]
00794514  09 00 58 e1                                      cmp r8, sb
00794518  06 00 00 ca                                      bgt #0x794538
0079451c  00 00 56 e3                                      cmp r6, #0
00794520  44 00 00 0a                                      beq #0x794638
00794524  04 b0 96 e5                                      ldr fp, [r6, #4]
00794528  04 90 91 e5                                      ldr sb, [r1, #4]
0079452c  09 00 5b e1                                      cmp fp, sb
00794530  40 00 00 8a                                      bhi #0x794638
00794534  3b 00 00 0a                                      beq #0x794628
00794538  00 90 95 e5                                      ldr sb, [r5]
0079453c  01 c0 8c e2                                      add ip, ip, #1
00794540  02 00 5c e1                                      cmp ip, r2
00794544  8c 12 a0 d1                                      lslle r1, ip, #5
00794548  08 10 81 d2                                      addle r1, r1, #8
0079454c  07 00 00 ca                                      bgt #0x794570
00794550  01 00 93 e7                                      ldr r0, [r3, r1]
00794554  01 40 83 e0                                      add r4, r3, r1
00794558  20 10 81 e2                                      add r1, r1, #0x20
0079455c  02 00 70 e3                                      cmn r0, #2
00794560  1d 00 00 0a                                      beq #0x7945dc
00794564  04 00 94 e5                                      ldr r0, [r4, #4]
00794568  01 00 70 e3                                      cmn r0, #1
0079456c  1a 00 00 0a                                      beq #0x7945dc
00794570  09 30 a0 e1                                      mov r3, sb
00794574  00 00 53 e3                                      cmp r3, #0
00794578  02 00 00 0a                                      beq #0x794588
0079457c  04 20 93 e5                                      ldr r2, [r3, #4]
00794580  02 00 5c e1                                      cmp ip, r2
00794584  da ff ff da                                      ble #0x7944f4
00794588  00 00 56 e3                                      cmp r6, #0
0079458c  06 00 a0 e1                                      mov r0, r6
00794590  d5 ff ff 0a                                      beq #0x7944ec
00794594  05 00 a0 e1                                      mov r0, r5
00794598  08 10 8d e2                                      add r1, sp, #8
0079459c  9c fc ff eb                                      bl #0x793814
007945a0  08 30 96 e5                                      ldr r3, [r6, #8]
007945a4  03 00 57 e1                                      cmp r7, r3
007945a8  02 00 00 ba                                      blt #0x7945b8
007945ac  0c 30 96 e5                                      ldr r3, [r6, #0xc]
007945b0  03 00 58 e1                                      cmp r8, r3
007945b4  04 00 00 aa                                      bge #0x7945cc
007945b8  07 20 a0 e1                                      mov r2, r7
007945bc  08 30 a0 e1                                      mov r3, r8
007945c0  0a 00 a0 e1                                      mov r0, sl
007945c4  06 10 a0 e1                                      mov r1, r6
007945c8  60 ff ff eb                                      bl #0x794350
007945cc  d0 20 ca e1                                      ldrd r2, r3, [sl]
007945d0  06 00 a0 e1                                      mov r0, r6
007945d4  f8 20 ca e1                                      strd r2, r3, [sl, #8]
007945d8  c3 ff ff ea                                      b #0x7944ec
007945dc  01 c0 8c e2                                      add ip, ip, #1
007945e0  02 00 5c e1                                      cmp ip, r2
007945e4  d9 ff ff da                                      ble #0x794550
007945e8  09 30 a0 e1                                      mov r3, sb
007945ec  e0 ff ff ea                                      b #0x794574
007945f0  08 20 a0 e3                                      mov r2, #8
007945f4  00 c0 a0 e3                                      mov ip, #0
007945f8  02 00 93 e7                                      ldr r0, [r3, r2]
007945fc  02 40 83 e0                                      add r4, r3, r2
00794600  20 20 82 e2                                      add r2, r2, #0x20
00794604  02 00 70 e3                                      cmn r0, #2
00794608  02 00 00 0a                                      beq #0x794618
0079460c  04 00 94 e5                                      ldr r0, [r4, #4]
00794610  01 00 70 e3                                      cmn r0, #1
00794614  ae ff ff 1a                                      bne #0x7944d4
00794618  01 c0 8c e2                                      add ip, ip, #1
0079461c  01 00 5c e1                                      cmp ip, r1
00794620  f4 ff ff da                                      ble #0x7945f8
00794624  aa ff ff ea                                      b #0x7944d4
00794628  00 10 91 e5                                      ldr r1, [r1]
0079462c  00 90 96 e5                                      ldr sb, [r6]
00794630  01 00 59 e1                                      cmp sb, r1
00794634  bf ff ff 9a                                      bls #0x794538
00794638  04 60 9d e5                                      ldr r6, [sp, #4]
0079463c  08 00 80 e2                                      add r0, r0, #8
00794640  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
00794644  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00794648  00 90 95 e5                                      ldr sb, [r5]
0079464c  04 20 99 e5                                      ldr r2, [sb, #4]
00794650  04 40 89 e0                                      add r4, sb, r4
00794654  18 60 94 e5                                      ldr r6, [r4, #0x18]
00794658  02 00 5c e1                                      cmp ip, r2
0079465c  09 30 a0 e1                                      mov r3, sb
00794660  c3 ff ff ca                                      bgt #0x794574
00794664  b4 ff ff ea                                      b #0x79453c

; FUNCTION 0x00794668, declared_size=232, range_size=232, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache21find_available_regionEii
; demangled: gameswf::texture_cache::find_available_region(int, int)
; decoder-mode: arm
00794668  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0079466c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00794670  0f 70 81 e2                                      add r7, r1, #0xf
00794674  00 00 51 e3                                      cmp r1, #0
00794678  0f 50 82 e2                                      add r5, r2, #0xf
0079467c  07 10 a0 b1                                      movlt r1, r7
00794680  00 00 52 e3                                      cmp r2, #0
00794684  05 20 a0 b1                                      movlt r2, r5
00794688  00 00 53 e3                                      cmp r3, #0
0079468c  00 60 a0 e1                                      mov r6, r0
00794690  41 72 a0 e1                                      asr r7, r1, #4
00794694  42 52 a0 e1                                      asr r5, r2, #4
00794698  29 00 00 da                                      ble #0x794744
0079469c  20 40 90 e5                                      ldr r4, [r0, #0x20]
007946a0  00 20 a0 e3                                      mov r2, #0
007946a4  00 10 e0 e3                                      mvn r1, #0
007946a8  02 01 94 e7                                      ldr r0, [r4, r2, lsl #2]
007946ac  08 c0 90 e5                                      ldr ip, [r0, #8]
007946b0  0c 00 57 e1                                      cmp r7, ip
007946b4  09 00 00 ca                                      bgt #0x7946e0
007946b8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
007946bc  00 00 55 e1                                      cmp r5, r0
007946c0  06 00 00 ca                                      bgt #0x7946e0
007946c4  01 00 71 e3                                      cmn r1, #1
007946c8  03 00 00 0a                                      beq #0x7946dc
007946cc  01 81 94 e7                                      ldr r8, [r4, r1, lsl #2]
007946d0  08 a0 98 e5                                      ldr sl, [r8, #8]
007946d4  0a 00 5c e1                                      cmp ip, sl
007946d8  15 00 00 aa                                      bge #0x794734
007946dc  02 10 a0 e1                                      mov r1, r2
007946e0  01 20 82 e2                                      add r2, r2, #1
007946e4  03 00 52 e1                                      cmp r2, r3
007946e8  ee ff ff 1a                                      bne #0x7946a8
007946ec  01 00 71 e3                                      cmn r1, #1
007946f0  13 00 00 0a                                      beq #0x794744
007946f4  01 41 94 e7                                      ldr r4, [r4, r1, lsl #2]
007946f8  20 00 86 e2                                      add r0, r6, #0x20
007946fc  88 fd ff eb                                      bl #0x793d24
00794700  08 30 94 e5                                      ldr r3, [r4, #8]
00794704  03 00 57 e1                                      cmp r7, r3
00794708  02 00 00 ba                                      blt #0x794718
0079470c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00794710  03 00 55 e1                                      cmp r5, r3
00794714  04 00 00 aa                                      bge #0x79472c
00794718  06 00 a0 e1                                      mov r0, r6
0079471c  07 20 a0 e1                                      mov r2, r7
00794720  05 30 a0 e1                                      mov r3, r5
00794724  04 10 a0 e1                                      mov r1, r4
00794728  08 ff ff eb                                      bl #0x794350
0079472c  04 00 a0 e1                                      mov r0, r4
00794730  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00794734  0c c0 98 e5                                      ldr ip, [r8, #0xc]
00794738  0c 00 50 e1                                      cmp r0, ip
0079473c  e7 ff ff aa                                      bge #0x7946e0
00794740  e5 ff ff ea                                      b #0x7946dc
00794744  00 40 a0 e3                                      mov r4, #0
00794748  04 00 a0 e1                                      mov r0, r4
0079474c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007c44d8, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::texture_cache
; alias: _ZN7gameswf13texture_cache4lockEv
; demangled: gameswf::texture_cache::lock()
; decoder-mode: arm
007c44d8  70 40 2d e9                                      push {r4, r5, r6, lr}
007c44dc  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
007c44e0  00 40 a0 e1                                      mov r4, r0
007c44e4  00 00 55 e3                                      cmp r5, #0
007c44e8  01 00 00 0a                                      beq #0x7c44f4
007c44ec  05 00 a0 e1                                      mov r0, r5
007c44f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c44f4  34 30 90 e5                                      ldr r3, [r0, #0x34]
007c44f8  03 00 a0 e1                                      mov r0, r3
007c44fc  00 30 93 e5                                      ldr r3, [r3]
007c4500  0f e0 a0 e1                                      mov lr, pc
007c4504  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007c4508  30 30 94 e5                                      ldr r3, [r4, #0x30]
007c450c  00 50 a0 e1                                      mov r5, r0
007c4510  3c 00 84 e5                                      str r0, [r4, #0x3c]
007c4514  00 00 53 e3                                      cmp r3, #0
007c4518  02 00 00 0a                                      beq #0x7c4528
007c451c  00 30 93 e5                                      ldr r3, [r3]
007c4520  00 00 53 e3                                      cmp r3, #0
007c4524  f0 ff ff 1a                                      bne #0x7c44ec
007c4528  34 30 94 e5                                      ldr r3, [r4, #0x34]
007c452c  03 00 a0 e1                                      mov r0, r3
007c4530  00 30 93 e5                                      ldr r3, [r3]
007c4534  0f e0 a0 e1                                      mov lr, pc
007c4538  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007c453c  34 30 94 e5                                      ldr r3, [r4, #0x34]
007c4540  00 60 a0 e1                                      mov r6, r0
007c4544  03 00 a0 e1                                      mov r0, r3
007c4548  00 30 93 e5                                      ldr r3, [r3]
007c454c  0f e0 a0 e1                                      mov lr, pc
007c4550  28 f0 93 e5                                      ldr pc, [r3, #0x28]
007c4554  38 20 94 e5                                      ldr r2, [r4, #0x38]
007c4558  90 06 03 e0                                      mul r3, r0, r6
007c455c  00 10 a0 e3                                      mov r1, #0
007c4560  05 00 a0 e1                                      mov r0, r5
007c4564  92 03 02 e0                                      mul r2, r2, r3
007c4568  bc 27 ed eb                                      bl #0x30e460
007c456c  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
007c4570  dd ff ff ea                                      b #0x7c44ec
