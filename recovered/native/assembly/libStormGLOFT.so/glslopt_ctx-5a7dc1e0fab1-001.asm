; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00077230, declared_size=132, range_size=132, mode=thumb
; class-group: glslopt_ctx
; alias: _ZN11glslopt_ctxC2E14glslopt_target
; demangled: glslopt_ctx::glslopt_ctx(glslopt_target)
; decoder-mode: thumb
00077230  b0 b5                                            push {r4, r5, r7, lr}
00077232  02 af                                            add r7, sp, #8
00077234  04 46                                            mov r4, r0
00077236  0d 46                                            mov r5, r1
00077238  00 20                                            movs r0, #0
0007723a  c4 f8 ac 54                                      str.w r5, [r4, #0x4ac]
0007723e  bb f7 56 ef                                      blx #0x330ec
00077242  03 2d                                            cmp r5, #3
00077244  c4 f8 a8 04                                      str.w r0, [r4, #0x4a8]
00077248  18 bf                                            it ne
0007724a  02 2d                                            cmpne r5, #2
0007724c  0a d0                                            beq #0x77264
0007724e  20 46                                            mov r0, r4
00077250  01 2d                                            cmp r5, #1
00077252  11 d1                                            bne #0x77278
00077254  02 21                                            movs r1, #2
00077256  bc f7 42 e9                                      blx #0x334dc
0007725a  4f f0 01 30                                      mov.w r0, #0x1010101
0007725e  c4 f8 6b 04                                      str.w r0, [r4, #0x46b]
00077262  0f e0                                            b #0x77284
00077264  20 46                                            mov r0, r4
00077266  03 21                                            movs r1, #3
00077268  bc f7 38 e9                                      blx #0x334dc
0007726c  01 20                                            movs r0, #1
0007726e  84 f8 6e 04                                      strb.w r0, [r4, #0x46e]
00077272  84 f8 f5 03                                      strb.w r0, [r4, #0x3f5]
00077276  05 e0                                            b #0x77284
00077278  00 21                                            movs r1, #0
0007727a  bc f7 30 e9                                      blx #0x334dc
0007727e  8c 20                                            movs r0, #0x8c
00077280  c4 f8 a8 02                                      str.w r0, [r4, #0x2a8]
00077284  0a 49                                            ldr r1, [pc, #0x28]
00077286  10 22                                            movs r2, #0x10
00077288  08 48                                            ldr r0, [pc, #0x20]
0007728a  79 44                                            add r1, pc
0007728c  c4 f8 dc 21                                      str.w r2, [r4, #0x1dc]
00077290  78 44                                            add r0, pc
00077292  c4 f8 fc 20                                      str.w r2, [r4, #0xfc]
00077296  a2 62                                            str r2, [r4, #0x28]
00077298  c4 f8 6c 21                                      str.w r2, [r4, #0x16c]
0007729c  04 22                                            movs r2, #4
0007729e  09 68                                            ldr r1, [r1]
000772a0  c4 f8 78 22                                      str.w r2, [r4, #0x278]
000772a4  c4 e9 01 10                                      strd r1, r0, [r4, #4]
000772a8  20 46                                            mov r0, r4
000772aa  b0 bd                                            pop {r4, r5, r7, pc}
000772ac  fb 08                                            lsrs r3, r7, #3
000772ae  00 00                                            movs r0, r0
000772b0  4e 56                                            ldrsb r6, [r1, r1]
000772b2  06 00                                            movs r6, r0
