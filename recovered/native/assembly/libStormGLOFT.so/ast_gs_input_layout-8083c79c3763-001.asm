; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00059388, declared_size=276, range_size=276, mode=thumb
; class-group: ast_gs_input_layout
; alias: _ZN19ast_gs_input_layout3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_gs_input_layout::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00059388  f0 b5                                            push {r4, r5, r6, r7, lr}
0005938a  03 af                                            add r7, sp, #0xc
0005938c  2d e9 00 07                                      push.w {r8, sb, sl}
00059390  88 b0                                            sub sp, #0x20
00059392  88 46                                            mov r8, r1
00059394  3c 49                                            ldr r1, [pc, #0xf0]
00059396  06 1d                                            adds r6, r0, #4
00059398  14 46                                            mov r4, r2
0005939a  79 44                                            add r1, pc
0005939c  09 68                                            ldr r1, [r1]
0005939e  09 68                                            ldr r1, [r1]
000593a0  07 91                                            str r1, [sp, #0x1c]
000593a2  6e ce                                            ldm r6, {r1, r2, r3, r5, r6}
000593a4  06 91                                            str r1, [sp, #0x18]
000593a6  02 a9                                            add r1, sp, #8
000593a8  6c c1                                            stm r1!, {r2, r3, r5, r6}
000593aa  94 f8 98 10                                      ldrb.w r1, [r4, #0x98]
000593ae  61 b1                                            cbz r1, #0x593ca
000593b0  d4 f8 9c 10                                      ldr.w r1, [r4, #0x9c]
000593b4  02 6a                                            ldr r2, [r0, #0x20]
000593b6  08 6a                                            ldr r0, [r1, #0x20]
000593b8  90 42                                            cmp r0, r2
000593ba  07 d0                                            beq #0x593cc
000593bc  33 4a                                            ldr r2, [pc, #0xcc]
000593be  02 a8                                            add r0, sp, #8
000593c0  21 46                                            mov r1, r4
000593c2  7a 44                                            add r2, pc
000593c4  d9 f7 78 ea                                      blx #0x328b8
000593c8  50 e0                                            b #0x5946c
000593ca  00 6a                                            ldr r0, [r0, #0x20]
000593cc  d9 f7 fc ec                                      blx #0x32dc8
000593d0  82 46                                            mov sl, r0
000593d2  d4 f8 f4 01                                      ldr.w r0, [r4, #0x1f4]
000593d6  50 b1                                            cbz r0, #0x593ee
000593d8  50 45                                            cmp r0, sl
000593da  08 d0                                            beq #0x593ee
000593dc  2c 4a                                            ldr r2, [pc, #0xb0]
000593de  21 46                                            mov r1, r4
000593e0  00 90                                            str r0, [sp]
000593e2  02 a8                                            add r0, sp, #8
000593e4  7a 44                                            add r2, pc
000593e6  53 46                                            mov r3, sl
000593e8  d9 f7 66 ea                                      blx #0x328b8
000593ec  3e e0                                            b #0x5946c
000593ee  01 20                                            movs r0, #1
000593f0  84 f8 98 00                                      strb.w r0, [r4, #0x98]
000593f4  d8 f8 00 60                                      ldr.w r6, [r8]
000593f8  00 2e                                            cmp r6, #0
000593fa  18 bf                                            it ne
000593fc  04 3e                                            subne r6, #4
000593fe  35 46                                            mov r5, r6
00059400  55 f8 04 0f                                      ldr r0, [r5, #4]!
00059404  90 b3                                            cbz r0, #0x5946c
00059406  df f8 8c 80                                      ldr.w r8, [pc, #0x8c]
0005940a  0d f1 08 09                                      add.w sb, sp, #8
0005940e  f8 44                                            add r8, pc
00059410  12 e0                                            b #0x59438
00059412  31 6b                                            ldr r1, [r6, #0x30]
00059414  51 45                                            cmp r1, sl
00059416  05 d2                                            bhs #0x59424
00059418  40 69                                            ldr r0, [r0, #0x14]
0005941a  51 46                                            mov r1, sl
0005941c  d9 f7 a2 eb                                      blx #0x32b64
00059420  30 61                                            str r0, [r6, #0x10]
00059422  1a e0                                            b #0x5945a
00059424  70 69                                            ldr r0, [r6, #0x14]
00059426  42 46                                            mov r2, r8
00059428  53 46                                            mov r3, sl
0005942a  cd e9 00 10                                      strd r1, r0, [sp]
0005942e  48 46                                            mov r0, sb
00059430  21 46                                            mov r1, r4
00059432  d9 f7 42 ea                                      blx #0x328b8
00059436  10 e0                                            b #0x5945a
00059438  7e b1                                            cbz r6, #0x5945a
0005943a  f0 68                                            ldr r0, [r6, #0xc]
0005943c  07 28                                            cmp r0, #7
0005943e  02 bf                                            ittt eq
00059440  b0 69                                            ldreq r0, [r6, #0x18]
00059442  00 f4 f0 50                                      andeq r0, r0, #0x1e00
00059446  90 f4 80 6f                                      teqeq.w r0, #0x400
0005944a  06 d1                                            bne #0x5945a
0005944c  30 69                                            ldr r0, [r6, #0x10]
0005944e  41 68                                            ldr r1, [r0, #4]
00059450  09 29                                            cmp r1, #9
00059452  04 bf                                            itt eq
00059454  01 69                                            ldreq r1, [r0, #0x10]
00059456  00 29                                            cmpeq r1, #0
00059458  db d0                                            beq #0x59412
0005945a  2e 68                                            ldr r6, [r5]
0005945c  00 2e                                            cmp r6, #0
0005945e  18 bf                                            it ne
00059460  04 3e                                            subne r6, #4
00059462  35 46                                            mov r5, r6
00059464  55 f8 04 0f                                      ldr r0, [r5, #4]!
00059468  00 28                                            cmp r0, #0
0005946a  e5 d1                                            bne #0x59438
0005946c  0a 48                                            ldr r0, [pc, #0x28]
0005946e  07 99                                            ldr r1, [sp, #0x1c]
00059470  78 44                                            add r0, pc
00059472  00 68                                            ldr r0, [r0]
00059474  00 68                                            ldr r0, [r0]
00059476  40 1a                                            subs r0, r0, r1
00059478  01 bf                                            itttt eq
0005947a  00 20                                            moveq r0, #0
0005947c  08 b0                                            addeq sp, #0x20
0005947e  bd e8 00 07                                      popeq.w {r8, sb, sl}
00059482  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00059484  d8 f7 ec ed                                      blx #0x32060
00059488  1a 31                                            adds r1, #0x1a
0005948a  08 00                                            movs r0, r1
0005948c  68 22                                            movs r2, #0x68
0005948e  06 00                                            movs r6, r0
00059490  87 22                                            movs r2, #0x87
00059492  06 00                                            movs r6, r0
00059494  d0 22                                            movs r2, #0xd0
00059496  06 00                                            movs r6, r0
00059498  44 30                                            adds r0, #0x44
0005949a  08 00                                            movs r0, r1
