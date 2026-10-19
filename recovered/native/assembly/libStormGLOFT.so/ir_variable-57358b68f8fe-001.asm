; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00059338, declared_size=36, range_size=36, mode=thumb
; class-group: ir_variable
; alias: _ZN11ir_variable21reinit_interface_typeEPK9glsl_type
; demangled: ir_variable::reinit_interface_type(glsl_type const*)
; decoder-mode: thumb
00059338  b0 b5                                            push {r4, r5, r7, lr}
0005933a  02 af                                            add r7, sp, #8
0005933c  05 46                                            mov r5, r0
0005933e  0c 46                                            mov r4, r1
00059340  e8 6b                                            ldr r0, [r5, #0x3c]
00059342  18 b1                                            cbz r0, #0x5934c
00059344  d9 f7 ce e9                                      blx #0x326e4
00059348  00 20                                            movs r0, #0
0005934a  e8 63                                            str r0, [r5, #0x3c]
0005934c  00 20                                            movs r0, #0
0005934e  21 46                                            mov r1, r4
00059350  28 64                                            str r0, [r5, #0x40]
00059352  28 46                                            mov r0, r5
00059354  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00059358  57 f0 e6 bb                                      b.w #0xb0b28

; FUNCTION 0x0005935c, declared_size=42, range_size=42, mode=thumb
; class-group: ir_variable
; alias: _ZN11ir_variable19init_interface_typeEPK9glsl_type
; demangled: ir_variable::init_interface_type(glsl_type const*)
; decoder-mode: thumb
0005935c  d0 b5                                            push {r4, r6, r7, lr}
0005935e  02 af                                            add r7, sp, #8
00059360  04 46                                            mov r4, r0
00059362  20 69                                            ldr r0, [r4, #0x10]
00059364  21 64                                            str r1, [r4, #0x40]
00059366  88 42                                            cmp r0, r1
00059368  06 d0                                            beq #0x59378
0005936a  42 68                                            ldr r2, [r0, #4]
0005936c  09 2a                                            cmp r2, #9
0005936e  04 bf                                            itt eq
00059370  40 69                                            ldreq r0, [r0, #0x14]
00059372  88 42                                            cmpeq r0, r1
00059374  00 d0                                            beq #0x59378
00059376  d0 bd                                            pop {r4, r6, r7, pc}
00059378  0a 69                                            ldr r2, [r1, #0x10]
0005937a  20 46                                            mov r0, r4
0005937c  04 21                                            movs r1, #4
0005937e  d9 f7 7e ea                                      blx #0x3287c
00059382  e0 63                                            str r0, [r4, #0x3c]
00059384  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x00081c90, declared_size=220, range_size=220, mode=thumb
; class-group: ir_variable
; alias: _ZN11ir_variableC1EPK9glsl_typePKc16ir_variable_mode14glsl_precision
; demangled: ir_variable::ir_variable(glsl_type const*, char const*, ir_variable_mode, glsl_precision)
; alias: _ZN11ir_variableC2EPK9glsl_typePKc16ir_variable_mode14glsl_precision
; demangled: ir_variable::ir_variable(glsl_type const*, char const*, ir_variable_mode, glsl_precision)
; decoder-mode: thumb
00081c90  f0 b5                                            push {r4, r5, r6, r7, lr}
00081c92  03 af                                            add r7, sp, #0xc
00081c94  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00081c98  0d 46                                            mov r5, r1
00081c9a  31 49                                            ldr r1, [pc, #0xc4]
00081c9c  04 46                                            mov r4, r0
00081c9e  2f 48                                            ldr r0, [pc, #0xbc]
00081ca0  79 44                                            add r1, pc
00081ca2  1e 46                                            mov r6, r3
00081ca4  78 44                                            add r0, pc
00081ca6  07 23                                            movs r3, #7
00081ca8  09 68                                            ldr r1, [r1]
00081caa  00 68                                            ldr r0, [r0]
00081cac  e3 60                                            str r3, [r4, #0xc]
00081cae  08 31                                            adds r1, #8
00081cb0  25 61                                            str r5, [r4, #0x10]
00081cb2  21 60                                            str r1, [r4]
00081cb4  01 78                                            ldrb r1, [r0]
00081cb6  d7 f8 08 80                                      ldr.w r8, [r7, #8]
00081cba  00 29                                            cmp r1, #0
00081cbc  18 bf                                            it ne
00081cbe  11 46                                            movne r1, r2
00081cc0  0a 2e                                            cmp r6, #0xa
00081cc2  18 bf                                            it ne
00081cc4  11 46                                            movne r1, r2
00081cc6  09 d1                                            bne #0x81cdc
00081cc8  26 48                                            ldr r0, [pc, #0x98]
00081cca  00 29                                            cmp r1, #0
00081ccc  78 44                                            add r0, pc
00081cce  00 68                                            ldr r0, [r0]
00081cd0  07 d0                                            beq #0x81ce2
00081cd2  25 4a                                            ldr r2, [pc, #0x94]
00081cd4  7a 44                                            add r2, pc
00081cd6  12 68                                            ldr r2, [r2]
00081cd8  91 42                                            cmp r1, r2
00081cda  02 d0                                            beq #0x81ce2
00081cdc  20 46                                            mov r0, r4
00081cde  b0 f7 ba ec                                      blx #0x32654
00081ce2  21 46                                            mov r1, r4
00081ce4  00 23                                            movs r3, #0
00081ce6  51 f8 18 2f                                      ldr r2, [r1, #0x18]!
00081cea  00 2d                                            cmp r5, #0
00081cec  41 f8 04 0c                                      str r0, [r1, #-0x4]
00081cf0  4f f0 ff 30                                      mov.w r0, #-1
00081cf4  4b 81                                            strh r3, [r1, #0xa]
00081cf6  c8 60                                            str r0, [r1, #0xc]
00081cf8  4f f4 f0 50                                      mov.w r0, #0x1e00
00081cfc  00 ea 46 20                                      and.w r0, r0, r6, lsl #9
00081d00  4b 71                                            strb r3, [r1, #5]
00081d02  c1 e9 05 33                                      strd r3, r3, [r1, #0x14]
00081d06  68 f3 d0 30                                      bfi r0, r8, #0xf, #2
00081d0a  c1 e9 07 33                                      strd r3, r3, [r1, #0x1c]
00081d0e  4b 62                                            str r3, [r1, #0x24]
00081d10  0b 71                                            strb r3, [r1, #4]
00081d12  40 f2 50 03                                      movw r3, #0x50
00081d16  cf f6 b0 43                                      movt r3, #0xfcb0
00081d1a  02 ea 03 02                                      and.w r2, r2, r3
00081d1e  40 ea 02 00                                      orr.w r0, r0, r2
00081d22  08 60                                            str r0, [r1]
00081d24  16 d0                                            beq #0x81d54
00081d26  6a 68                                            ldr r2, [r5, #4]
00081d28  04 2a                                            cmp r2, #4
00081d2a  05 d1                                            bne #0x81d38
00081d2c  00 22                                            movs r2, #0
00081d2e  40 f0 01 00                                      orr r0, r0, #1
00081d32  0a 71                                            strb r2, [r1, #4]
00081d34  08 60                                            str r0, [r1]
00081d36  6a 68                                            ldr r2, [r5, #4]
00081d38  09 2a                                            cmp r2, #9
00081d3a  04 d0                                            beq #0x81d46
00081d3c  08 2a                                            cmp r2, #8
00081d3e  09 d1                                            bne #0x81d54
00081d40  20 46                                            mov r0, r4
00081d42  29 46                                            mov r1, r5
00081d44  04 e0                                            b #0x81d50
00081d46  69 69                                            ldr r1, [r5, #0x14]
00081d48  48 68                                            ldr r0, [r1, #4]
00081d4a  08 28                                            cmp r0, #8
00081d4c  02 d1                                            bne #0x81d54
00081d4e  20 46                                            mov r0, r4
00081d50  b1 f7 be e8                                      blx #0x32ed0
00081d54  20 46                                            mov r0, r4
00081d56  5d f8 04 8b                                      ldr r8, [sp], #4
00081d5a  f0 bd                                            pop {r4, r5, r6, r7, pc}
00081d5c  a4 a8                                            add r0, sp, #0x290
00081d5e  05 00                                            movs r5, r0
00081d60  ec ac                                            add r4, sp, #0x3b0
00081d62  05 00                                            movs r5, r0
00081d64  c4 ac                                            add r4, sp, #0x310
00081d66  05 00                                            movs r5, r0
00081d68  bc ac                                            add r4, sp, #0x2f0
00081d6a  05 00                                            movs r5, r0

; FUNCTION 0x00081d88, declared_size=32, range_size=32, mode=thumb
; class-group: ir_variable
; alias: _ZN11ir_variable28determine_interpolation_modeEb
; demangled: ir_variable::determine_interpolation_mode(bool)
; decoder-mode: thumb
00081d88  02 46                                            mov r2, r0
00081d8a  90 69                                            ldr r0, [r2, #0x18]
00081d8c  c0 f3 41 30                                      ubfx r0, r0, #0xd, #2
00081d90  00 b1                                            cbz r0, #0x81d94
00081d92  70 47                                            bx lr
00081d94  01 29                                            cmp r1, #1
00081d96  05 d1                                            bne #0x81da4
00081d98  50 6a                                            ldr r0, [r2, #0x24]
00081d9a  01 38                                            subs r0, #1
00081d9c  02 28                                            cmp r0, #2
00081d9e  3c bf                                            itt lo
00081da0  02 20                                            movlo r0, #2
00081da2  70 47                                            bxlo lr
00081da4  01 20                                            movs r0, #1
00081da6  70 47                                            bx lr

; FUNCTION 0x00081da8, declared_size=56, range_size=56, mode=thumb
; class-group: ir_variable
; alias: _ZN11ir_variable24enable_extension_warningEPKc
; demangled: ir_variable::enable_extension_warning(char const*)
; decoder-mode: thumb
00081da8  f0 b5                                            push {r4, r5, r6, r7, lr}
00081daa  03 af                                            add r7, sp, #0xc
00081dac  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00081db0  80 46                                            mov r8, r0
00081db2  0a 48                                            ldr r0, [pc, #0x28]
00081db4  0d 46                                            mov r5, r1
00081db6  00 26                                            movs r6, #0
00081db8  78 44                                            add r0, pc
00081dba  04 68                                            ldr r4, [r0]
00081dbc  54 f8 26 00                                      ldr.w r0, [r4, r6, lsl #2]
00081dc0  29 46                                            mov r1, r5
00081dc2  b0 f7 be e8                                      blx #0x31f40
00081dc6  18 b1                                            cbz r0, #0x81dd0
00081dc8  01 36                                            adds r6, #1
00081dca  03 2e                                            cmp r6, #3
00081dcc  f6 d3                                            blo #0x81dbc
00081dce  00 26                                            movs r6, #0
00081dd0  88 f8 1d 60                                      strb.w r6, [r8, #0x1d]
00081dd4  5d f8 04 8b                                      ldr r8, [sp], #4
00081dd8  f0 bd                                            pop {r4, r5, r6, r7, pc}
00081dda  00 bf                                            nop
00081ddc  dc ab                                            add r3, sp, #0x370
00081dde  05 00                                            movs r5, r0

; FUNCTION 0x00081de0, declared_size=24, range_size=24, mode=thumb
; class-group: ir_variable
; alias: _ZNK11ir_variable21get_extension_warningEv
; demangled: ir_variable::get_extension_warning() const
; decoder-mode: thumb
00081de0  40 7f                                            ldrb r0, [r0, #0x1d]
00081de2  28 b1                                            cbz r0, #0x81df0
00081de4  03 49                                            ldr r1, [pc, #0xc]
00081de6  79 44                                            add r1, pc
00081de8  09 68                                            ldr r1, [r1]
00081dea  51 f8 20 00                                      ldr.w r0, [r1, r0, lsl #2]
00081dee  70 47                                            bx lr
00081df0  00 20                                            movs r0, #0
00081df2  70 47                                            bx lr
00081df4  ae ab                                            add r3, sp, #0x2b8
00081df6  05 00                                            movs r5, r0

; FUNCTION 0x00082ab0, declared_size=296, range_size=296, mode=thumb
; class-group: ir_variable
; alias: _ZNK11ir_variable5cloneEPvP10hash_table
; demangled: ir_variable::clone(void*, hash_table*) const
; decoder-mode: thumb
00082ab0  f0 b5                                            push {r4, r5, r6, r7, lr}
00082ab2  03 af                                            add r7, sp, #0xc
00082ab4  2d e9 00 07                                      push.w {r8, sb, sl}
00082ab8  82 b0                                            sub sp, #8
00082aba  88 46                                            mov r8, r1
00082abc  82 46                                            mov sl, r0
00082abe  40 46                                            mov r0, r8
00082ac0  44 21                                            movs r1, #0x44
00082ac2  91 46                                            mov sb, r2
00082ac4  af f7 2c ee                                      blx #0x32720
00082ac8  06 46                                            mov r6, r0
00082aca  42 48                                            ldr r0, [pc, #0x108]
00082acc  78 44                                            add r0, pc
00082ace  01 68                                            ldr r1, [r0]
00082ad0  30 46                                            mov r0, r6
00082ad2  af f7 16 ef                                      blx #0x32900
00082ad6  55 46                                            mov r5, sl
00082ad8  55 f8 18 0f                                      ldr r0, [r5, #0x18]!
00082adc  55 e9 02 12                                      ldrd r1, r2, [r5, #-0x8]
00082ae0  c0 f3 c1 33                                      ubfx r3, r0, #0xf, #2
00082ae4  00 93                                            str r3, [sp]
00082ae6  c0 f3 43 23                                      ubfx r3, r0, #9, #4
00082aea  30 46                                            mov r0, r6
00082aec  af f7 44 ef                                      blx #0x32978
00082af0  a8 69                                            ldr r0, [r5, #0x18]
00082af2  06 f1 18 04                                      add.w r4, r6, #0x18
00082af6  30 63                                            str r0, [r6, #0x30]
00082af8  a8 6a                                            ldr r0, [r5, #0x28]
00082afa  55 f8 08 1c                                      ldr r1, [r5, #-0x8]
00082afe  81 42                                            cmp r1, r0
00082b00  05 d0                                            beq #0x82b0e
00082b02  4a 68                                            ldr r2, [r1, #4]
00082b04  09 2a                                            cmp r2, #9
00082b06  04 bf                                            itt eq
00082b08  49 69                                            ldreq r1, [r1, #0x14]
00082b0a  81 42                                            cmpeq r1, r0
00082b0c  0b d1                                            bne #0x82b26
00082b0e  02 69                                            ldr r2, [r0, #0x10]
00082b10  30 46                                            mov r0, r6
00082b12  04 21                                            movs r1, #4
00082b14  af f7 b2 ee                                      blx #0x3287c
00082b18  f0 63                                            str r0, [r6, #0x3c]
00082b1a  da e9 0f 12                                      ldrd r1, r2, [sl, #0x3c]
00082b1e  12 69                                            ldr r2, [r2, #0x10]
00082b20  92 00                                            lsls r2, r2, #2
00082b22  af f7 8e eb                                      blx #0x32240
00082b26  07 cd                                            ldm r5!, {r0, r1, r2}
00082b28  07 c4                                            stm r4!, {r0, r1, r2}
00082b2a  95 e8 0f 00                                      ldm.w r5, {r0, r1, r2, r3}
00082b2e  0f c4                                            stm r4!, {r0, r1, r2, r3}
00082b30  da f8 10 00                                      ldr.w r0, [sl, #0x10]
00082b34  da f8 40 10                                      ldr.w r1, [sl, #0x40]
00082b38  88 42                                            cmp r0, r1
00082b3a  29 d0                                            beq #0x82b90
00082b3c  42 68                                            ldr r2, [r0, #4]
00082b3e  09 2a                                            cmp r2, #9
00082b40  04 bf                                            itt eq
00082b42  40 69                                            ldreq r0, [r0, #0x14]
00082b44  88 42                                            cmpeq r0, r1
00082b46  23 d0                                            beq #0x82b90
00082b48  da f8 3c 00                                      ldr.w r0, [sl, #0x3c]
00082b4c  00 b3                                            cbz r0, #0x82b90
00082b4e  ba f8 20 50                                      ldrh.w r5, [sl, #0x20]
00082b52  30 46                                            mov r0, r6
00082b54  18 21                                            movs r1, #0x18
00082b56  2a 46                                            mov r2, r5
00082b58  b0 f7 7e e9                                      blx #0x32e58
00082b5c  f0 63                                            str r0, [r6, #0x3c]
00082b5e  00 28                                            cmp r0, #0
00082b60  08 bf                                            it eq
00082b62  05 46                                            moveq r5, r0
00082b64  35 84                                            strh r5, [r6, #0x20]
00082b66  da f8 10 10                                      ldr.w r1, [sl, #0x10]
00082b6a  da f8 40 20                                      ldr.w r2, [sl, #0x40]
00082b6e  91 42                                            cmp r1, r2
00082b70  08 d0                                            beq #0x82b84
00082b72  4b 68                                            ldr r3, [r1, #4]
00082b74  09 2b                                            cmp r3, #9
00082b76  04 bf                                            itt eq
00082b78  49 69                                            ldreq r1, [r1, #0x14]
00082b7a  91 42                                            cmpeq r1, r2
00082b7c  02 d0                                            beq #0x82b84
00082b7e  da f8 3c 10                                      ldr.w r1, [sl, #0x3c]
00082b82  00 e0                                            b #0x82b86
00082b84  00 21                                            movs r1, #0
00082b86  05 eb 45 02                                      add.w r2, r5, r5, lsl #1
00082b8a  d2 00                                            lsls r2, r2, #3
00082b8c  af f7 58 eb                                      blx #0x32240
00082b90  da f8 34 00                                      ldr.w r0, [sl, #0x34]
00082b94  28 b1                                            cbz r0, #0x82ba2
00082b96  01 68                                            ldr r1, [r0]
00082b98  4a 46                                            mov r2, sb
00082b9a  0b 69                                            ldr r3, [r1, #0x10]
00082b9c  41 46                                            mov r1, r8
00082b9e  98 47                                            blx r3
00082ba0  70 63                                            str r0, [r6, #0x34]
00082ba2  da f8 38 00                                      ldr.w r0, [sl, #0x38]
00082ba6  28 b1                                            cbz r0, #0x82bb4
00082ba8  01 68                                            ldr r1, [r0]
00082baa  4a 46                                            mov r2, sb
00082bac  0b 69                                            ldr r3, [r1, #0x10]
00082bae  41 46                                            mov r1, r8
00082bb0  98 47                                            blx r3
00082bb2  b0 63                                            str r0, [r6, #0x38]
00082bb4  da f8 40 00                                      ldr.w r0, [sl, #0x40]
00082bb8  b9 f1 00 0f                                      cmp.w sb, #0
00082bbc  30 64                                            str r0, [r6, #0x40]
00082bbe  04 d0                                            beq #0x82bca
00082bc0  48 46                                            mov r0, sb
00082bc2  31 46                                            mov r1, r6
00082bc4  52 46                                            mov r2, sl
00082bc6  af f7 ca ed                                      blx #0x3275c
00082bca  30 46                                            mov r0, r6
00082bcc  02 b0                                            add sp, #8
00082bce  bd e8 00 07                                      pop.w {r8, sb, sl}
00082bd2  f0 bd                                            pop {r4, r5, r6, r7, pc}
00082bd4  6c 9a                                            ldr r2, [sp, #0x1b0]
00082bd6  05 00                                            movs r5, r0

; FUNCTION 0x000836f2, declared_size=22, range_size=22, mode=thumb
; class-group: ir_variable
; alias: _ZN11ir_variableD0Ev
; demangled: ir_variable::~ir_variable()
; decoder-mode: thumb
000836f2  d0 b5                                            push {r4, r6, r7, lr}
000836f4  02 af                                            add r7, sp, #8
000836f6  00 21                                            movs r1, #0
000836f8  04 46                                            mov r4, r0
000836fa  af f7 02 e9                                      blx #0x32900
000836fe  20 46                                            mov r0, r4
00083700  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00083704  2d f0 b0 b9                                      b.w #0xb0a68

; FUNCTION 0x00083708, declared_size=12, range_size=12, mode=thumb
; class-group: ir_variable
; alias: _ZN11ir_variable6acceptEP10ir_visitor
; demangled: ir_variable::accept(ir_visitor*)
; decoder-mode: thumb
00083708  02 46                                            mov r2, r0
0008370a  08 68                                            ldr r0, [r1]
0008370c  c3 68                                            ldr r3, [r0, #0xc]
0008370e  08 46                                            mov r0, r1
00083710  11 46                                            mov r1, r2
00083712  18 47                                            bx r3

; FUNCTION 0x0008737c, declared_size=12, range_size=12, mode=thumb
; class-group: ir_variable
; alias: _ZN11ir_variable6acceptEP23ir_hierarchical_visitor
; demangled: ir_variable::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
0008737c  02 46                                            mov r2, r0
0008737e  08 68                                            ldr r0, [r1]
00087380  43 68                                            ldr r3, [r0, #4]
00087382  08 46                                            mov r0, r1
00087384  11 46                                            mov r1, r2
00087386  18 47                                            bx r3
