; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00077988, declared_size=144, range_size=144, mode=thumb
; class-group: glslopt_shader
; alias: _ZN14glslopt_shaderC2Ev
; demangled: glslopt_shader::glslopt_shader()
; decoder-mode: thumb
00077988  d0 b5                                            push {r4, r6, r7, lr}
0007798a  02 af                                            add r7, sp, #8
0007798c  04 46                                            mov r4, r0
0007798e  48 f6 30 40                                      movw r0, #0x8c30
00077992  00 21                                            movs r1, #0
00077994  21 54                                            strb r1, [r4, r0]
00077996  48 f6 08 40                                      movw r0, #0x8c08
0007799a  20 44                                            add r0, r4
0007799c  24 21                                            movs r1, #0x24
0007799e  ba f7 60 ee                                      blx #0x32660
000779a2  48 f6 2c 40                                      movw r0, #0x8c2c
000779a6  15 a1                                            adr r1, #0x54
000779a8  21 50                                            str r1, [r4, r0]
000779aa  00 20                                            movs r0, #0
000779ac  ec 21                                            movs r1, #0xec
000779ae  bb f7 b0 ee                                      blx #0x33710
000779b2  18 49                                            ldr r1, [pc, #0x60]
000779b4  20 60                                            str r0, [r4]
000779b6  79 44                                            add r1, pc
000779b8  ba f7 4c ee                                      blx #0x32654
000779bc  22 68                                            ldr r2, [r4]
000779be  d2 e9 05 31                                      ldrd r3, r1, [r2, #0x14]
000779c2  c2 f8 cc 00                                      str.w r0, [r2, #0xcc]
000779c6  10 46                                            mov r0, r2
000779c8  01 33                                            adds r3, #1
000779ca  04 22                                            movs r2, #4
000779cc  bb f7 68 ea                                      blx #0x32ea0
000779d0  21 68                                            ldr r1, [r4]
000779d2  88 61                                            str r0, [r1, #0x18]
000779d4  08 46                                            mov r0, r1
000779d6  4f f4 b8 71                                      mov.w r1, #0x170
000779da  bb f7 9a ee                                      blx #0x33710
000779de  21 68                                            ldr r1, [r4]
000779e0  60 60                                            str r0, [r4, #4]
000779e2  d1 e9 05 21                                      ldrd r2, r1, [r1, #0x14]
000779e6  41 f8 22 00                                      str.w r0, [r1, r2, lsl #2]
000779ea  01 22                                            movs r2, #1
000779ec  20 68                                            ldr r0, [r4]
000779ee  41 69                                            ldr r1, [r0, #0x14]
000779f0  80 f8 c8 20                                      strb.w r2, [r0, #0xc8]
000779f4  01 31                                            adds r1, #1
000779f6  41 61                                            str r1, [r0, #0x14]
000779f8  20 46                                            mov r0, r4
000779fa  d0 bd                                            pop {r4, r6, r7, pc}
000779fc  53 68                                            ldr r3, [r2, #4]
000779fe  61 64                                            str r1, [r4, #0x44]
00077a00  65 72                                            strb r5, [r4, #9]
00077a02  20 6e                                            ldr r0, [r4, #0x60]
00077a04  6f 74                                            strb r7, [r5, #0x11]
00077a06  20 63                                            str r0, [r4, #0x30]
00077a08  6f 6d                                            ldr r7, [r5, #0x54]
00077a0a  70 69                                            ldr r0, [r6, #0x14]
00077a0c  6c 65                                            str r4, [r5, #0x54]
00077a0e  64 20                                            movs r0, #0x64
00077a10  79 65                                            str r1, [r7, #0x54]
00077a12  74 00                                            lsls r4, r6, #1
00077a14  09 18                                            adds r1, r1, r0
00077a16  04 00                                            movs r4, r0

; FUNCTION 0x00077a2c, declared_size=54, range_size=54, mode=thumb
; class-group: glslopt_shader
; alias: _ZN14glslopt_shaderD2Ev
; demangled: glslopt_shader::~glslopt_shader()
; decoder-mode: thumb
00077a2c  b0 b5                                            push {r4, r5, r7, lr}
00077a2e  02 af                                            add r7, sp, #8
00077a30  04 46                                            mov r4, r0
00077a32  36 25                                            movs r5, #0x36
00077a34  20 68                                            ldr r0, [r4]
00077a36  50 f8 25 00                                      ldr.w r0, [r0, r5, lsl #2]
00077a3a  ba f7 54 ee                                      blx #0x326e4
00077a3e  01 35                                            adds r5, #1
00077a40  3a 2d                                            cmp r5, #0x3a
00077a42  f7 d1                                            bne #0x77a34
00077a44  20 68                                            ldr r0, [r4]
00077a46  ba f7 4e ee                                      blx #0x326e4
00077a4a  48 f6 24 40                                      movw r0, #0x8c24
00077a4e  20 58                                            ldr r0, [r4, r0]
00077a50  ba f7 48 ee                                      blx #0x326e4
00077a54  48 f6 28 40                                      movw r0, #0x8c28
00077a58  20 58                                            ldr r0, [r4, r0]
00077a5a  ba f7 44 ee                                      blx #0x326e4
00077a5e  20 46                                            mov r0, r4
00077a60  b0 bd                                            pop {r4, r5, r7, pc}
