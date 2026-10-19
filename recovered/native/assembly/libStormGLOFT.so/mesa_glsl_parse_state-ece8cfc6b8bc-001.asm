; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0005973c, declared_size=68, range_size=68, mode=thumb
; class-group: _mesa_glsl_parse_state
; alias: _ZN22_mesa_glsl_parse_state39check_explicit_uniform_location_allowedEP7YYLTYPEPK11ir_variable
; demangled: _mesa_glsl_parse_state::check_explicit_uniform_location_allowed(YYLTYPE*, ir_variable const*)
; decoder-mode: thumb
0005973c  03 46                                            mov r3, r0
0005973e  93 f8 9c 01                                      ldrb.w r0, [r3, #0x19c]
00059742  58 b9                                            cbnz r0, #0x5975c
00059744  93 f8 7c 00                                      ldrb.w r0, [r3, #0x7c]
00059748  4f f4 a5 72                                      mov.w r2, #0x14a
0005974c  d3 f8 80 c0                                      ldr.w ip, [r3, #0x80]
00059750  00 28                                            cmp r0, #0
00059752  18 bf                                            it ne
00059754  4f f4 96 72                                      movne.w r2, #0x12c
00059758  94 45                                            cmp ip, r2
0005975a  04 d3                                            blo #0x59766
0005975c  93 f8 9e 01                                      ldrb.w r0, [r3, #0x19e]
00059760  08 b1                                            cbz r0, #0x59766
00059762  01 20                                            movs r0, #1
00059764  70 47                                            bx lr
00059766  80 b5                                            push {r7, lr}
00059768  6f 46                                            mov r7, sp
0005976a  04 4a                                            ldr r2, [pc, #0x10]
0005976c  08 46                                            mov r0, r1
0005976e  19 46                                            mov r1, r3
00059770  7a 44                                            add r2, pc
00059772  d9 f7 a2 e8                                      blx #0x328b8
00059776  00 20                                            movs r0, #0
00059778  80 bd                                            pop {r7, pc}
0005977a  00 bf                                            nop
0005977c  51 29                                            cmp r1, #0x51
0005977e  06 00                                            movs r6, r0

; FUNCTION 0x00059780, declared_size=168, range_size=168, mode=thumb
; class-group: _mesa_glsl_parse_state
; alias: _ZN22_mesa_glsl_parse_state38check_explicit_attrib_location_allowedEP7YYLTYPEPK11ir_variable
; demangled: _mesa_glsl_parse_state::check_explicit_attrib_location_allowed(YYLTYPE*, ir_variable const*)
; decoder-mode: thumb
00059780  f0 b5                                            push {r4, r5, r6, r7, lr}
00059782  03 af                                            add r7, sp, #0xc
00059784  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00059788  82 b0                                            sub sp, #8
0005978a  04 46                                            mov r4, r0
0005978c  0d 46                                            mov r5, r1
0005978e  94 f8 9c 01                                      ldrb.w r0, [r4, #0x19c]
00059792  f8 b9                                            cbnz r0, #0x597d4
00059794  94 f8 7c 00                                      ldrb.w r0, [r4, #0x7c]
00059798  4f f4 a5 71                                      mov.w r1, #0x14a
0005979c  d4 f8 80 30                                      ldr.w r3, [r4, #0x80]
000597a0  00 28                                            cmp r0, #0
000597a2  18 bf                                            it ne
000597a4  4f f4 96 71                                      movne.w r1, #0x12c
000597a8  8b 42                                            cmp r3, r1
000597aa  13 d2                                            bhs #0x597d4
000597ac  df f8 30 80                                      ldr.w r8, [pc, #0x30]
000597b0  0c a1                                            adr r1, #0x30
000597b2  00 28                                            cmp r0, #0
000597b4  19 a6                                            adr r6, #0x64
000597b6  10 46                                            mov r0, r2
000597b8  f8 44                                            add r8, pc
000597ba  08 bf                                            it eq
000597bc  0e 46                                            moveq r6, r1
000597be  d9 f7 f2 ea                                      blx #0x32da4
000597c2  03 46                                            mov r3, r0
000597c4  28 46                                            mov r0, r5
000597c6  21 46                                            mov r1, r4
000597c8  42 46                                            mov r2, r8
000597ca  00 96                                            str r6, [sp]
000597cc  d9 f7 74 e8                                      blx #0x328b8
000597d0  00 20                                            movs r0, #0
000597d2  00 e0                                            b #0x597d6
000597d4  01 20                                            movs r0, #1
000597d6  02 b0                                            add sp, #8
000597d8  5d f8 04 8b                                      ldr r8, [sp], #4
000597dc  f0 bd                                            pop {r4, r5, r6, r7, pc}
000597de  00 bf                                            nop
000597e0  85 29                                            cmp r1, #0x85
000597e2  06 00                                            movs r6, r0
000597e4  47 4c                                            ldr r4, [pc, #0x11c]
000597e6  5f 41                                            adcs r7, r3
000597e8  52 42                                            rsbs r2, r2, #0
000597ea  5f 65                                            str r7, [r3, #0x54]
000597ec  78 70                                            strb r0, [r7, #1]
000597ee  6c 69                                            ldr r4, [r5, #0x14]
000597f0  63 69                                            ldr r3, [r4, #0x14]
000597f2  74 5f                                            ldrsh r4, [r6, r5]
000597f4  61 74                                            strb r1, [r4, #0x11]
000597f6  74 72                                            strb r4, [r6, #9]
000597f8  69 62                                            str r1, [r5, #0x24]
000597fa  5f 6c                                            ldr r7, [r3, #0x44]
000597fc  6f 63                                            str r7, [r5, #0x34]
000597fe  61 74                                            strb r1, [r4, #0x11]
00059800  69 6f                                            ldr r1, [r5, #0x74]
00059802  6e 20                                            movs r0, #0x6e
00059804  65 78                                            ldrb r5, [r4, #1]
00059806  74 65                                            str r4, [r6, #0x54]
00059808  6e 73                                            strb r6, [r5, #0xd]
0005980a  69 6f                                            ldr r1, [r5, #0x74]
0005980c  6e 20                                            movs r0, #0x6e
0005980e  6f 72                                            strb r7, [r5, #9]
00059810  20 47                                            bx r4
00059812  4c 53                                            strh r4, [r1, r5]
00059814  4c 20                                            movs r0, #0x4c
00059816  33 33                                            adds r3, #0x33
00059818  30 00                                            movs r0, r6
0005981a  00 00                                            movs r0, r0
0005981c  47 4c                                            ldr r4, [pc, #0x11c]
0005981e  53 4c                                            ldr r4, [pc, #0x14c]
00059820  20 45                                            cmp r0, r4
00059822  53 20                                            movs r0, #0x53
00059824  33 30                                            adds r0, #0x33
00059826  30 00                                            movs r0, r6

; FUNCTION 0x00059828, declared_size=196, range_size=196, mode=thumb
; class-group: _mesa_glsl_parse_state
; alias: _ZN22_mesa_glsl_parse_state37check_separate_shader_objects_allowedEP7YYLTYPEPK11ir_variable
; demangled: _mesa_glsl_parse_state::check_separate_shader_objects_allowed(YYLTYPE*, ir_variable const*)
; decoder-mode: thumb
00059828  f0 b5                                            push {r4, r5, r6, r7, lr}
0005982a  03 af                                            add r7, sp, #0xc
0005982c  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00059830  82 b0                                            sub sp, #8
00059832  04 46                                            mov r4, r0
00059834  0d 46                                            mov r5, r1
00059836  94 f8 a8 01                                      ldrb.w r0, [r4, #0x1a8]
0005983a  50 b9                                            cbnz r0, #0x59852
0005983c  94 f8 7c 00                                      ldrb.w r0, [r4, #0x7c]
00059840  20 b9                                            cbnz r0, #0x5984c
00059842  d4 f8 80 10                                      ldr.w r1, [r4, #0x80]
00059846  49 08                                            lsrs r1, r1, #1
00059848  cc 29                                            cmp r1, #0xcc
0005984a  02 d8                                            bhi #0x59852
0005984c  94 f8 e0 11                                      ldrb.w r1, [r4, #0x1e0]
00059850  21 b1                                            cbz r1, #0x5985c
00059852  01 20                                            movs r0, #1
00059854  02 b0                                            add sp, #8
00059856  5d f8 04 8b                                      ldr r8, [sp], #4
0005985a  f0 bd                                            pop {r4, r5, r6, r7, pc}
0005985c  df f8 24 80                                      ldr.w r8, [pc, #0x24]
00059860  09 a1                                            adr r1, #0x24
00059862  00 28                                            cmp r0, #0
00059864  16 a6                                            adr r6, #0x58
00059866  10 46                                            mov r0, r2
00059868  f8 44                                            add r8, pc
0005986a  08 bf                                            it eq
0005986c  0e 46                                            moveq r6, r1
0005986e  d9 f7 9a ea                                      blx #0x32da4
00059872  03 46                                            mov r3, r0
00059874  28 46                                            mov r0, r5
00059876  21 46                                            mov r1, r4
00059878  42 46                                            mov r2, r8
0005987a  00 96                                            str r6, [sp]
0005987c  d9 f7 1c e8                                      blx #0x328b8
00059880  00 20                                            movs r0, #0
00059882  e7 e7                                            b #0x59854
00059884  d5 28                                            cmp r0, #0xd5
00059886  06 00                                            movs r6, r0
00059888  47 4c                                            ldr r4, [pc, #0x11c]
0005988a  5f 41                                            adcs r7, r3
0005988c  52 42                                            rsbs r2, r2, #0
0005988e  5f 73                                            strb r7, [r3, #0xd]
00059890  65 70                                            strb r5, [r4, #1]
00059892  61 72                                            strb r1, [r4, #9]
00059894  61 74                                            strb r1, [r4, #0x11]
00059896  65 5f                                            ldrsh r5, [r4, r5]
00059898  73 68                                            ldr r3, [r6, #4]
0005989a  61 64                                            str r1, [r4, #0x44]
0005989c  65 72                                            strb r5, [r4, #9]
0005989e  5f 6f                                            ldr r7, [r3, #0x74]
000598a0  62 6a                                            ldr r2, [r4, #0x24]
000598a2  65 63                                            str r5, [r4, #0x34]
000598a4  74 73                                            strb r4, [r6, #0xd]
000598a6  20 65                                            str r0, [r4, #0x50]
000598a8  78 74                                            strb r0, [r7, #0x11]
000598aa  65 6e                                            ldr r5, [r4, #0x64]
000598ac  73 69                                            ldr r3, [r6, #0x14]
000598ae  6f 6e                                            ldr r7, [r5, #0x64]
000598b0  20 6f                                            ldr r0, [r4, #0x70]
000598b2  72 20                                            movs r0, #0x72
000598b4  47 4c                                            ldr r4, [pc, #0x11c]
000598b6  53 4c                                            ldr r4, [pc, #0x14c]
000598b8  20 34                                            adds r4, #0x20
000598ba  32 30                                            adds r0, #0x32
000598bc  00 00                                            movs r0, r0
000598be  00 00                                            movs r0, r0
000598c0  47 4c                                            ldr r4, [pc, #0x11c]
000598c2  5f 45                                            cmp r7, fp
000598c4  58 54                                            strb r0, [r3, r1]
000598c6  5f 73                                            strb r7, [r3, #0xd]
000598c8  65 70                                            strb r5, [r4, #1]
000598ca  61 72                                            strb r1, [r4, #9]
000598cc  61 74                                            strb r1, [r4, #0x11]
000598ce  65 5f                                            ldrsh r5, [r4, r5]
000598d0  73 68                                            ldr r3, [r6, #4]
000598d2  61 64                                            str r1, [r4, #0x44]
000598d4  65 72                                            strb r5, [r4, #9]
000598d6  5f 6f                                            ldr r7, [r3, #0x74]
000598d8  62 6a                                            ldr r2, [r4, #0x24]
000598da  65 63                                            str r5, [r4, #0x34]
000598dc  74 73                                            strb r4, [r6, #0xd]
000598de  20 65                                            str r0, [r4, #0x50]
000598e0  78 74                                            strb r0, [r7, #0x11]
000598e2  65 6e                                            ldr r5, [r4, #0x64]
000598e4  73 69                                            ldr r3, [r6, #0x14]
000598e6  6f 6e                                            ldr r7, [r5, #0x64]
000598e8  00 00                                            movs r0, r0
000598ea  00 00                                            movs r0, r0

; FUNCTION 0x00077b94, declared_size=2, range_size=2, mode=thumb
; class-group: _mesa_glsl_parse_state
; alias: _ZN22_mesa_glsl_parse_state18_ralloc_destructorEPv
; demangled: _mesa_glsl_parse_state::_ralloc_destructor(void*)
; decoder-mode: thumb
00077b94  70 47                                            bx lr

; FUNCTION 0x0007c710, declared_size=120, range_size=120, mode=thumb
; class-group: _mesa_glsl_parse_state
; alias: _ZN22_mesa_glsl_parse_state36check_explicit_attrib_stream_allowedEP7YYLTYPE
; demangled: _mesa_glsl_parse_state::check_explicit_attrib_stream_allowed(YYLTYPE*)
; decoder-mode: thumb
0007c710  84 46                                            mov ip, r0
0007c712  9c f8 a4 01                                      ldrb.w r0, [ip, #0x1a4]
0007c716  08 b1                                            cbz r0, #0x7c71c
0007c718  01 20                                            movs r0, #1
0007c71a  70 47                                            bx lr
0007c71c  9c f8 7c 00                                      ldrb.w r0, [ip, #0x7c]
0007c720  20 b9                                            cbnz r0, #0x7c72c
0007c722  dc f8 80 00                                      ldr.w r0, [ip, #0x80]
0007c726  00 09                                            lsrs r0, r0, #4
0007c728  18 28                                            cmp r0, #0x18
0007c72a  f5 d8                                            bhi #0x7c718
0007c72c  80 b5                                            push {r7, lr}
0007c72e  6f 46                                            mov r7, sp
0007c730  03 a2                                            adr r2, #0xc
0007c732  0a a3                                            adr r3, #0x28
0007c734  08 46                                            mov r0, r1
0007c736  61 46                                            mov r1, ip
0007c738  b6 f7 be e8                                      blx #0x328b8
0007c73c  00 20                                            movs r0, #0
0007c73e  80 bd                                            pop {r7, pc}
0007c740  65 78                                            ldrb r5, [r4, #1]
0007c742  70 6c                                            ldr r0, [r6, #0x44]
0007c744  69 63                                            str r1, [r5, #0x34]
0007c746  69 74                                            strb r1, [r5, #0x11]
0007c748  20 73                                            strb r0, [r4, #0xc]
0007c74a  74 72                                            strb r4, [r6, #9]
0007c74c  65 61                                            str r5, [r4, #0x14]
0007c74e  6d 20                                            movs r0, #0x6d
0007c750  72 65                                            str r2, [r6, #0x54]
0007c752  71 75                                            strb r1, [r6, #0x15]
0007c754  69 72                                            strb r1, [r5, #9]
0007c756  65 73                                            strb r5, [r4, #0xd]
0007c758  20 25                                            movs r5, #0x20
0007c75a  73 00                                            lsls r3, r6, #1
0007c75c  47 4c                                            ldr r4, [pc, #0x11c]
0007c75e  5f 41                                            adcs r7, r3
0007c760  52 42                                            rsbs r2, r2, #0
0007c762  5f 67                                            str r7, [r3, #0x74]
0007c764  70 75                                            strb r0, [r6, #0x15]
0007c766  5f 73                                            strb r7, [r3, #0xd]
0007c768  68 61                                            str r0, [r5, #0x14]
0007c76a  64 65                                            str r4, [r4, #0x54]
0007c76c  72 35                                            adds r5, #0x72
0007c76e  20 65                                            str r0, [r4, #0x50]
0007c770  78 74                                            strb r0, [r7, #0x11]
0007c772  65 6e                                            ldr r5, [r4, #0x64]
0007c774  73 69                                            ldr r3, [r6, #0x14]
0007c776  6f 6e                                            ldr r7, [r5, #0x64]
0007c778  20 6f                                            ldr r0, [r4, #0x70]
0007c77a  72 20                                            movs r0, #0x72
0007c77c  47 4c                                            ldr r4, [pc, #0x11c]
0007c77e  53 4c                                            ldr r4, [pc, #0x14c]
0007c780  20 34                                            adds r4, #0x20
0007c782  30 30                                            adds r0, #0x30
0007c784  00 00                                            movs r0, r0
0007c786  00 00                                            movs r0, r0

; FUNCTION 0x0007cb88, declared_size=1104, range_size=1104, mode=thumb
; class-group: _mesa_glsl_parse_state
; alias: _ZN22_mesa_glsl_parse_stateC1EP10gl_context15gl_shader_stagePv
; demangled: _mesa_glsl_parse_state::_mesa_glsl_parse_state(gl_context*, gl_shader_stage, void*)
; alias: _ZN22_mesa_glsl_parse_stateC2EP10gl_context15gl_shader_stagePv
; demangled: _mesa_glsl_parse_state::_mesa_glsl_parse_state(gl_context*, gl_shader_stage, void*)
; decoder-mode: thumb
0007cb88  f0 b5                                            push {r4, r5, r6, r7, lr}
0007cb8a  03 af                                            add r7, sp, #0xc
0007cb8c  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0007cb90  85 b0                                            sub sp, #0x14
0007cb92  04 46                                            mov r4, r0
0007cb94  df f8 d0 03                                      ldr.w r0, [pc, #0x3d0]
0007cb98  00 25                                            movs r5, #0
0007cb9a  98 46                                            mov r8, r3
0007cb9c  78 44                                            add r0, pc
0007cb9e  16 46                                            mov r6, r2
0007cba0  00 68                                            ldr r0, [r0]
0007cba2  00 68                                            ldr r0, [r0]
0007cba4  04 90                                            str r0, [sp, #0x10]
0007cba6  04 f5 b2 70                                      add.w r0, r4, #0x164
0007cbaa  84 f8 a0 50                                      strb.w r5, [r4, #0xa0]
0007cbae  21 60                                            str r1, [r4]
0007cbb0  20 21                                            movs r1, #0x20
0007cbb2  c4 e9 29 55                                      strd r5, r5, [r4, #0xa4]
0007cbb6  c4 f8 ac 50                                      str.w r5, [r4, #0xac]
0007cbba  b5 f7 52 ed                                      blx #0x32660
0007cbbe  20 46                                            mov r0, r4
0007cbc0  65 60                                            str r5, [r4, #4]
0007cbc2  c4 f8 88 60                                      str.w r6, [r4, #0x88]
0007cbc6  0c 21                                            movs r1, #0xc
0007cbc8  40 f8 0c 5f                                      str r5, [r0, #0xc]!
0007cbcc  a0 60                                            str r0, [r4, #8]
0007cbce  04 f1 08 00                                      add.w r0, r4, #8
0007cbd2  20 61                                            str r0, [r4, #0x10]
0007cbd4  40 46                                            mov r0, r8
0007cbd6  b5 f7 a4 ed                                      blx #0x32720
0007cbda  06 46                                            mov r6, r0
0007cbdc  e3 48                                            ldr r0, [pc, #0x38c]
0007cbde  78 44                                            add r0, pc
0007cbe0  01 68                                            ldr r1, [r0]
0007cbe2  30 46                                            mov r0, r6
0007cbe4  b5 f7 8c ee                                      blx #0x32900
0007cbe8  30 46                                            mov r0, r6
0007cbea  b6 f7 8c ea                                      blx #0x33104
0007cbee  e0 49                                            ldr r1, [pc, #0x380]
0007cbf0  40 46                                            mov r0, r8
0007cbf2  66 61                                            str r6, [r4, #0x14]
0007cbf4  79 44                                            add r1, pc
0007cbf6  b5 f7 2e ed                                      blx #0x32654
0007cbfa  21 68                                            ldr r1, [r4]
0007cbfc  c4 f8 8c 01                                      str.w r0, [r4, #0x18c]
0007cc00  01 20                                            movs r0, #1
0007cc02  84 f8 5d 51                                      strb.w r5, [r4, #0x15d]
0007cc06  c4 f8 60 51                                      str.w r5, [r4, #0x160]
0007cc0a  c4 f8 8c 50                                      str.w r5, [r4, #0x8c]
0007cc0e  84 f8 f0 51                                      strb.w r5, [r4, #0x1f0]
0007cc12  d1 f8 b0 22                                      ldr.w r2, [r1, #0x2b0]
0007cc16  a4 f8 7c 50                                      strh.w r5, [r4, #0x7c]
0007cc1a  a4 f8 84 50                                      strh.w r5, [r4, #0x84]
0007cc1e  00 2a                                            cmp r2, #0
0007cc20  84 f8 c2 01                                      strb.w r0, [r4, #0x1c2]
0007cc24  08 bf                                            it eq
0007cc26  6e 22                                            moveq r2, #0x6e
0007cc28  c4 f8 80 20                                      str.w r2, [r4, #0x80]
0007cc2c  0a 68                                            ldr r2, [r1]
0007cc2e  02 2a                                            cmp r2, #2
0007cc30  01 bf                                            itttt eq
0007cc32  84 f8 7c 00                                      strbeq.w r0, [r4, #0x7c]
0007cc36  64 20                                            moveq r0, #0x64
0007cc38  c4 f8 80 00                                      streq.w r0, [r4, #0x80]
0007cc3c  84 f8 c2 51                                      strbeq.w r5, [r4, #0x1c2]
0007cc40  01 f5 7c 70                                      add.w r0, r1, #0x3f0
0007cc44  c4 f8 ec 01                                      str.w r0, [r4, #0x1ec]
0007cc48  88 6f                                            ldr r0, [r1, #0x78]
0007cc4a  4f f4 55 72                                      mov.w r2, #0x354
0007cc4e  c4 f8 b8 00                                      str.w r0, [r4, #0xb8]
0007cc52  48 6f                                            ldr r0, [r1, #0x74]
0007cc54  c4 f8 bc 00                                      str.w r0, [r4, #0xbc]
0007cc58  08 6b                                            ldr r0, [r1, #0x30]
0007cc5a  c4 f8 c0 00                                      str.w r0, [r4, #0xc0]
0007cc5e  88 6a                                            ldr r0, [r1, #0x28]
0007cc60  c4 f8 c4 00                                      str.w r0, [r4, #0xc4]
0007cc64  d1 f8 ac 00                                      ldr.w r0, [r1, #0xac]
0007cc68  c4 f8 c8 00                                      str.w r0, [r4, #0xc8]
0007cc6c  d1 f8 e8 00                                      ldr.w r0, [r1, #0xe8]
0007cc70  c4 f8 cc 00                                      str.w r0, [r4, #0xcc]
0007cc74  d1 f8 fc 00                                      ldr.w r0, [r1, #0xfc]
0007cc78  c4 f8 d0 00                                      str.w r0, [r4, #0xd0]
0007cc7c  c8 6a                                            ldr r0, [r1, #0x2c]
0007cc7e  c4 f8 d4 00                                      str.w r0, [r4, #0xd4]
0007cc82  d1 f8 dc 01                                      ldr.w r0, [r1, #0x1dc]
0007cc86  c4 f8 d8 00                                      str.w r0, [r4, #0xd8]
0007cc8a  d1 f8 c8 01                                      ldr.w r0, [r1, #0x1c8]
0007cc8e  c4 f8 dc 00                                      str.w r0, [r4, #0xdc]
0007cc92  d1 f8 e8 02                                      ldr.w r0, [r1, #0x2e8]
0007cc96  c4 f8 e4 00                                      str.w r0, [r4, #0xe4]
0007cc9a  d1 f8 ec 02                                      ldr.w r0, [r1, #0x2ec]
0007cc9e  c4 f8 e8 00                                      str.w r0, [r4, #0xe8]
0007cca2  d1 f8 78 02                                      ldr.w r0, [r1, #0x278]
0007cca6  c4 f8 e0 00                                      str.w r0, [r4, #0xe0]
0007ccaa  d1 f8 f0 00                                      ldr.w r0, [r1, #0xf0]
0007ccae  c4 f8 ec 00                                      str.w r0, [r4, #0xec]
0007ccb2  d1 f8 5c 01                                      ldr.w r0, [r1, #0x15c]
0007ccb6  c4 f8 f0 00                                      str.w r0, [r4, #0xf0]
0007ccba  d1 f8 60 01                                      ldr.w r0, [r1, #0x160]
0007ccbe  c4 f8 f4 00                                      str.w r0, [r4, #0xf4]
0007ccc2  d1 f8 cc 01                                      ldr.w r0, [r1, #0x1cc]
0007ccc6  c4 f8 f8 00                                      str.w r0, [r4, #0xf8]
0007ccca  d1 f8 6c 01                                      ldr.w r0, [r1, #0x16c]
0007ccce  c4 f8 fc 00                                      str.w r0, [r4, #0xfc]
0007ccd2  d1 f8 a0 02                                      ldr.w r0, [r1, #0x2a0]
0007ccd6  c4 f8 00 01                                      str.w r0, [r4, #0x100]
0007ccda  d1 f8 a4 02                                      ldr.w r0, [r1, #0x2a4]
0007ccde  c4 f8 04 01                                      str.w r0, [r4, #0x104]
0007cce2  d1 f8 58 01                                      ldr.w r0, [r1, #0x158]
0007cce6  c4 f8 08 01                                      str.w r0, [r4, #0x108]
0007ccea  d1 f8 04 01                                      ldr.w r0, [r1, #0x104]
0007ccee  c4 f8 0c 01                                      str.w r0, [r4, #0x10c]
0007ccf2  d1 f8 74 01                                      ldr.w r0, [r1, #0x174]
0007ccf6  c4 f8 10 01                                      str.w r0, [r4, #0x110]
0007ccfa  d1 f8 e4 01                                      ldr.w r0, [r1, #0x1e4]
0007ccfe  c4 f8 14 01                                      str.w r0, [r4, #0x114]
0007cd02  d1 f8 38 03                                      ldr.w r0, [r1, #0x338]
0007cd06  c4 f8 18 01                                      str.w r0, [r4, #0x118]
0007cd0a  20 68                                            ldr r0, [r4]
0007cd0c  d0 f8 2c 13                                      ldr.w r1, [r0, #0x32c]
0007cd10  c4 f8 1c 11                                      str.w r1, [r4, #0x11c]
0007cd14  4f f6 cc 51                                      movw r1, #0xfdcc
0007cd18  cf f6 ff 71                                      movt r1, #0xffff
0007cd1c  a3 18                                            adds r3, r4, r2
0007cd1e  80 58                                            ldr r0, [r0, r2]
0007cd20  04 32                                            adds r2, #4
0007cd22  58 50                                            str r0, [r3, r1]
0007cd24  b2 f5 58 7f                                      cmp.w r2, #0x360
0007cd28  20 68                                            ldr r0, [r4]
0007cd2a  f7 d1                                            bne #0x7cd1c
0007cd2c  4f f4 58 72                                      mov.w r2, #0x360
0007cd30  a3 18                                            adds r3, r4, r2
0007cd32  80 58                                            ldr r0, [r0, r2]
0007cd34  04 32                                            adds r2, #4
0007cd36  58 50                                            str r0, [r3, r1]
0007cd38  b2 f5 5b 7f                                      cmp.w r2, #0x36c
0007cd3c  20 68                                            ldr r0, [r4]
0007cd3e  f7 d1                                            bne #0x7cd30
0007cd40  d0 f8 44 13                                      ldr.w r1, [r0, #0x344]
0007cd44  00 22                                            movs r2, #0
0007cd46  c4 f8 38 11                                      str.w r1, [r4, #0x138]
0007cd4a  00 26                                            movs r6, #0
0007cd4c  d0 f8 48 13                                      ldr.w r1, [r0, #0x348]
0007cd50  c4 f8 3c 11                                      str.w r1, [r4, #0x13c]
0007cd54  d0 f8 4c 13                                      ldr.w r1, [r0, #0x34c]
0007cd58  c4 f8 40 11                                      str.w r1, [r4, #0x140]
0007cd5c  d0 f8 08 11                                      ldr.w r1, [r0, #0x108]
0007cd60  c4 f8 44 11                                      str.w r1, [r4, #0x144]
0007cd64  d0 f8 78 11                                      ldr.w r1, [r0, #0x178]
0007cd68  c4 f8 48 11                                      str.w r1, [r4, #0x148]
0007cd6c  d0 f8 e8 11                                      ldr.w r1, [r0, #0x1e8]
0007cd70  c4 f8 4c 11                                      str.w r1, [r4, #0x14c]
0007cd74  d0 f8 50 13                                      ldr.w r1, [r0, #0x350]
0007cd78  84 f8 5c 21                                      strb.w r2, [r4, #0x15c]
0007cd7c  84 f8 5e 21                                      strb.w r2, [r4, #0x15e]
0007cd80  c4 f8 58 21                                      str.w r2, [r4, #0x158]
0007cd84  c4 e9 54 12                                      strd r1, r2, [r4, #0x150]
0007cd88  00 21                                            movs r1, #0
0007cd8a  c4 e9 61 22                                      strd r2, r2, [r4, #0x184]
0007cd8e  a2 61                                            str r2, [r4, #0x18]
0007cd90  03 68                                            ldr r3, [r0]
0007cd92  03 2b                                            cmp r3, #3
0007cd94  18 bf                                            it ne
0007cd96  01 21                                            movne r1, #1
0007cd98  00 2b                                            cmp r3, #0
0007cd9a  08 bf                                            it eq
0007cd9c  01 26                                            moveq r6, #1
0007cd9e  96 ea 01 0f                                      teq.w r6, r1
0007cda2  01 d0                                            beq #0x7cda8
0007cda4  00 21                                            movs r1, #0
0007cda6  15 e0                                            b #0x7cdd4
0007cda8  72 a3                                            adr r3, #0x1c8
0007cdaa  00 21                                            movs r1, #0
0007cdac  00 26                                            movs r6, #0
0007cdae  d0 f8 a8 52                                      ldr.w r5, [r0, #0x2a8]
0007cdb2  53 f8 26 00                                      ldr.w r0, [r3, r6, lsl #2]
0007cdb6  a8 42                                            cmp r0, r5
0007cdb8  07 d8                                            bhi #0x7cdca
0007cdba  04 eb c1 01                                      add.w r1, r4, r1, lsl #3
0007cdbe  81 f8 20 20                                      strb.w r2, [r1, #0x20]
0007cdc2  c8 61                                            str r0, [r1, #0x1c]
0007cdc4  a0 69                                            ldr r0, [r4, #0x18]
0007cdc6  41 1c                                            adds r1, r0, #1
0007cdc8  a1 61                                            str r1, [r4, #0x18]
0007cdca  20 68                                            ldr r0, [r4]
0007cdcc  01 36                                            adds r6, #1
0007cdce  0b 2e                                            cmp r6, #0xb
0007cdd0  ed d1                                            bne #0x7cdae
0007cdd2  03 68                                            ldr r3, [r0]
0007cdd4  02 2b                                            cmp r3, #2
0007cdd6  02 d0                                            beq #0x7cdde
0007cdd8  90 f8 f4 23                                      ldrb.w r2, [r0, #0x3f4]
0007cddc  8a b1                                            cbz r2, #0x7ce02
0007cdde  04 eb c1 00                                      add.w r0, r4, r1, lsl #3
0007cde2  01 21                                            movs r1, #1
0007cde4  80 f8 20 10                                      strb.w r1, [r0, #0x20]
0007cde8  64 21                                            movs r1, #0x64
0007cdea  c1 61                                            str r1, [r0, #0x1c]
0007cdec  a1 69                                            ldr r1, [r4, #0x18]
0007cdee  20 68                                            ldr r0, [r4]
0007cdf0  01 31                                            adds r1, #1
0007cdf2  a1 61                                            str r1, [r4, #0x18]
0007cdf4  02 68                                            ldr r2, [r0]
0007cdf6  02 2a                                            cmp r2, #2
0007cdf8  03 d1                                            bne #0x7ce02
0007cdfa  d0 f8 98 24                                      ldr.w r2, [r0, #0x498]
0007cdfe  1d 2a                                            cmp r2, #0x1d
0007ce00  02 d8                                            bhi #0x7ce08
0007ce02  90 f8 f5 03                                      ldrb.w r0, [r0, #0x3f5]
0007ce06  50 b1                                            cbz r0, #0x7ce1e
0007ce08  04 eb c1 00                                      add.w r0, r4, r1, lsl #3
0007ce0c  01 21                                            movs r1, #1
0007ce0e  80 f8 20 10                                      strb.w r1, [r0, #0x20]
0007ce12  4f f4 96 71                                      mov.w r1, #0x12c
0007ce16  c1 61                                            str r1, [r0, #0x1c]
0007ce18  a0 69                                            ldr r0, [r4, #0x18]
0007ce1a  01 30                                            adds r0, #1
0007ce1c  a0 61                                            str r0, [r4, #0x18]
0007ce1e  60 49                                            ldr r1, [pc, #0x180]
0007ce20  20 46                                            mov r0, r4
0007ce22  79 44                                            add r1, pc
0007ce24  b5 f7 16 ec                                      blx #0x32654
0007ce28  03 90                                            str r0, [sp, #0xc]
0007ce2a  a1 69                                            ldr r1, [r4, #0x18]
0007ce2c  91 b3                                            cbz r1, #0x7ce94
0007ce2e  0f f2 80 19                                      addw sb, pc, #0x180
0007ce32  0d f1 0c 08                                      add.w r8, sp, #0xc
0007ce36  0f f2 7c 1b                                      addw fp, pc, #0x17c
0007ce3a  00 25                                            movs r5, #0
0007ce3c  4f f0 64 0a                                      mov.w sl, #0x64
0007ce40  04 eb c5 03                                      add.w r3, r4, r5, lsl #3
0007ce44  00 2d                                            cmp r5, #0
0007ce46  d8 69                                            ldr r0, [r3, #0x1c]
0007ce48  06 d0                                            beq #0x7ce58
0007ce4a  01 39                                            subs r1, #1
0007ce4c  55 a2                                            adr r2, #0x154
0007ce4e  8d 42                                            cmp r5, r1
0007ce50  55 a1                                            adr r1, #0x154
0007ce52  08 bf                                            it eq
0007ce54  0a 46                                            moveq r2, r1
0007ce56  01 e0                                            b #0x7ce5c
0007ce58  5d 4a                                            ldr r2, [pc, #0x174]
0007ce5a  7a 44                                            add r2, pc
0007ce5c  48 f2 1f 51                                      movw r1, #0x851f
0007ce60  c5 f2 eb 11                                      movt r1, #0x51eb
0007ce64  a0 fb 01 16                                      umull r1, r6, r0, r1
0007ce68  93 f8 20 10                                      ldrb.w r1, [r3, #0x20]
0007ce6c  00 29                                            cmp r1, #0
0007ce6e  59 49                                            ldr r1, [pc, #0x164]
0007ce70  79 44                                            add r1, pc
0007ce72  4f ea 56 13                                      lsr.w r3, r6, #5
0007ce76  18 bf                                            it ne
0007ce78  49 46                                            movne r1, sb
0007ce7a  03 fb 1a 00                                      mls r0, r3, sl, r0
0007ce7e  cd e9 00 01                                      strd r0, r1, [sp]
0007ce82  40 46                                            mov r0, r8
0007ce84  59 46                                            mov r1, fp
0007ce86  b5 f7 88 ec                                      blx #0x32798
0007ce8a  a1 69                                            ldr r1, [r4, #0x18]
0007ce8c  01 35                                            adds r5, #1
0007ce8e  8d 42                                            cmp r5, r1
0007ce90  d6 d3                                            blo #0x7ce40
0007ce92  03 98                                            ldr r0, [sp, #0xc]
0007ce94  21 68                                            ldr r1, [r4]
0007ce96  c4 f8 b4 00                                      str.w r0, [r4, #0xb4]
0007ce9a  91 f8 ac 02                                      ldrb.w r0, [r1, #0x2ac]
0007ce9e  38 b1                                            cbz r0, #0x7ceb0
0007cea0  47 4a                                            ldr r2, [pc, #0x11c]
0007cea2  48 a0                                            adr r0, #0x120
0007cea4  00 21                                            movs r1, #0
0007cea6  00 23                                            movs r3, #0
0007cea8  7a 44                                            add r2, pc
0007ceaa  00 94                                            str r4, [sp]
0007ceac  b6 f7 60 ec                                      blx #0x33770
0007ceb0  20 46                                            mov r0, r4
0007ceb2  40 21                                            movs r1, #0x40
0007ceb4  b5 f7 34 ec                                      blx #0x32720
0007ceb8  06 46                                            mov r6, r0
0007ceba  43 48                                            ldr r0, [pc, #0x10c]
0007cebc  78 44                                            add r0, pc
0007cebe  05 68                                            ldr r5, [r0]
0007cec0  30 46                                            mov r0, r6
0007cec2  29 46                                            mov r1, r5
0007cec4  b5 f7 1c ed                                      blx #0x32900
0007cec8  c4 f8 90 60                                      str.w r6, [r4, #0x90]
0007cecc  4f f0 00 08                                      mov.w r8, #0
0007ced0  30 68                                            ldr r0, [r6]
0007ced2  40 f0 80 70                                      orr r0, r0, #0x1000000
0007ced6  30 60                                            str r0, [r6]
0007ced8  d4 f8 90 00                                      ldr.w r0, [r4, #0x90]
0007cedc  01 68                                            ldr r1, [r0]
0007cede  41 f0 80 61                                      orr r1, r1, #0x4000000
0007cee2  01 60                                            str r1, [r0]
0007cee4  20 46                                            mov r0, r4
0007cee6  40 21                                            movs r1, #0x40
0007cee8  c4 f8 f4 81                                      str.w r8, [r4, #0x1f4]
0007ceec  84 f8 f1 81                                      strb.w r8, [r4, #0x1f1]
0007cef0  84 f8 98 80                                      strb.w r8, [r4, #0x98]
0007cef4  c4 f8 94 80                                      str.w r8, [r4, #0x94]
0007cef8  b5 f7 12 ec                                      blx #0x32720
0007cefc  29 46                                            mov r1, r5
0007cefe  06 46                                            mov r6, r0
0007cf00  b5 f7 fe ec                                      blx #0x32900
0007cf04  30 46                                            mov r0, r6
0007cf06  40 21                                            movs r1, #0x40
0007cf08  b5 f7 9c ea                                      blx #0x32444
0007cf0c  20 46                                            mov r0, r4
0007cf0e  40 21                                            movs r1, #0x40
0007cf10  c4 f8 9c 60                                      str.w r6, [r4, #0x9c]
0007cf14  b5 f7 04 ec                                      blx #0x32720
0007cf18  29 46                                            mov r1, r5
0007cf1a  06 46                                            mov r6, r0
0007cf1c  b5 f7 f0 ec                                      blx #0x32900
0007cf20  30 46                                            mov r0, r6
0007cf22  40 21                                            movs r1, #0x40
0007cf24  b5 f7 8e ea                                      blx #0x32444
0007cf28  04 f5 fe 70                                      add.w r0, r4, #0x1fc
0007cf2c  4f f4 b4 71                                      mov.w r1, #0x168
0007cf30  84 f8 f8 81                                      strb.w r8, [r4, #0x1f8]
0007cf34  c4 f8 b0 60                                      str.w r6, [r4, #0xb0]
0007cf38  b5 f7 92 eb                                      blx #0x32660
0007cf3c  20 68                                            ldr r0, [r4]
0007cf3e  90 f8 b4 02                                      ldrb.w r0, [r0, #0x2b4]
0007cf42  00 28                                            cmp r0, #0
0007cf44  18 bf                                            it ne
0007cf46  01 20                                            movne r0, #1
0007cf48  84 f8 64 03                                      strb.w r0, [r4, #0x364]
0007cf4c  1f 48                                            ldr r0, [pc, #0x7c]
0007cf4e  04 99                                            ldr r1, [sp, #0x10]
0007cf50  78 44                                            add r0, pc
0007cf52  00 68                                            ldr r0, [r0]
0007cf54  00 68                                            ldr r0, [r0]
0007cf56  40 1a                                            subs r0, r0, r1
0007cf58  01 bf                                            itttt eq
0007cf5a  20 46                                            moveq r0, r4
0007cf5c  05 b0                                            addeq sp, #0x14
0007cf5e  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
0007cf62  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0007cf64  b5 f7 7c e8                                      blx #0x32060
0007cf68  18 f9 05 00                                      ldrsb.w r0, [r8, r5]
0007cf6c  b6 f9 05 00                                      ldrsh.w r0, [r6, #5]
0007cf70  cb c5                                            stm r5!, {r0, r1, r3, r6, r7}
0007cf72  03 00                                            movs r3, r0
0007cf74  6e 00                                            lsls r6, r5, #1
0007cf76  00 00                                            movs r0, r0
0007cf78  78 00                                            lsls r0, r7, #1
0007cf7a  00 00                                            movs r0, r0
0007cf7c  82 00                                            lsls r2, r0, #2
0007cf7e  00 00                                            movs r0, r0
0007cf80  8c 00                                            lsls r4, r1, #2
0007cf82  00 00                                            movs r0, r0
0007cf84  96 00                                            lsls r6, r2, #2
0007cf86  00 00                                            movs r0, r0
0007cf88  4a 01                                            lsls r2, r1, #5
0007cf8a  00 00                                            movs r0, r0
0007cf8c  90 01                                            lsls r0, r2, #6
0007cf8e  00 00                                            movs r0, r0
0007cf90  9a 01                                            lsls r2, r3, #6
0007cf92  00 00                                            movs r0, r0
0007cf94  a4 01                                            lsls r4, r4, #6
0007cf96  00 00                                            movs r0, r0
0007cf98  ae 01                                            lsls r6, r5, #6
0007cf9a  00 00                                            movs r0, r0
0007cf9c  b8 01                                            lsls r0, r7, #6
0007cf9e  00 00                                            movs r0, r0
0007cfa0  9d c3                                            stm r3!, {r0, r2, r3, r4, r7}
0007cfa2  03 00                                            movs r3, r0
0007cfa4  2c 20                                            movs r0, #0x2c
0007cfa6  00 00                                            movs r0, r0
0007cfa8  2c 20                                            movs r0, #0x2c
0007cfaa  61 6e                                            ldr r1, [r4, #0x64]
0007cfac  64 20                                            movs r0, #0x64
0007cfae  00 00                                            movs r0, r0
0007cfb0  20 45                                            cmp r0, r4
0007cfb2  53 00                                            lsls r3, r2, #1
0007cfb4  25 73                                            strb r5, [r4, #0xc]
0007cfb6  25 75                                            strb r5, [r4, #0x14]
0007cfb8  2e 25                                            movs r5, #0x2e
0007cfba  30 32                                            adds r2, #0x30
0007cfbc  75 25                                            movs r5, #0x75
0007cfbe  73 00                                            lsls r3, r6, #1
0007cfc0  4c 35                                            adds r5, #0x4c
0007cfc2  04 00                                            movs r4, r0
0007cfc4  61 6c                                            ldr r1, [r4, #0x44]
0007cfc6  6c 00                                            lsls r4, r5, #1
0007cfc8  4c fa                                            .byte 0x4c, 0xfa
0007cfca  05 00                                            movs r5, r0
0007cfcc  64 f5 05 00                                      sbc r0, r4, #0x850000
0007cfd0  65 c3                                            stm r3!, {r0, r2, r5, r6}
0007cfd2  03 00                                            movs r3, r0
0007cfd4  4f c3                                            stm r3!, {r0, r1, r2, r3, r6}
0007cfd6  03 00                                            movs r3, r0

; FUNCTION 0x0007d1f4, declared_size=396, range_size=396, mode=thumb
; class-group: _mesa_glsl_parse_state
; alias: _ZN22_mesa_glsl_parse_state13check_versionEjjP7YYLTYPEPKcz
; demangled: _mesa_glsl_parse_state::check_version(unsigned int, unsigned int, YYLTYPE*, char const*, ...)
; decoder-mode: thumb
0007d1f4  f0 b5                                            push {r4, r5, r6, r7, lr}
0007d1f6  03 af                                            add r7, sp, #0xc
0007d1f8  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0007d1fc  87 b0                                            sub sp, #0x1c
0007d1fe  05 46                                            mov r5, r0
0007d200  4a 48                                            ldr r0, [pc, #0x128]
0007d202  0c 46                                            mov r4, r1
0007d204  16 46                                            mov r6, r2
0007d206  78 44                                            add r0, pc
0007d208  00 68                                            ldr r0, [r0]
0007d20a  00 68                                            ldr r0, [r0]
0007d20c  06 90                                            str r0, [sp, #0x18]
0007d20e  95 f8 7c 00                                      ldrb.w r0, [r5, #0x7c]
0007d212  00 28                                            cmp r0, #0
0007d214  20 46                                            mov r0, r4
0007d216  18 bf                                            it ne
0007d218  30 46                                            movne r0, r6
0007d21a  18 b1                                            cbz r0, #0x7d224
0007d21c  d5 f8 80 10                                      ldr.w r1, [r5, #0x80]
0007d220  81 42                                            cmp r1, r0
0007d222  67 d2                                            bhs #0x7d2f4
0007d224  b9 68                                            ldr r1, [r7, #8]
0007d226  07 f1 0c 02                                      add.w r2, r7, #0xc
0007d22a  28 46                                            mov r0, r5
0007d22c  03 93                                            str r3, [sp, #0xc]
0007d22e  05 92                                            str r2, [sp, #0x14]
0007d230  b5 f7 36 eb                                      blx #0x328a0
0007d234  48 f2 1f 59                                      movw sb, #0x851f
0007d238  04 90                                            str r0, [sp, #0x10]
0007d23a  c5 f2 eb 19                                      movt sb, #0x51eb
0007d23e  4f f0 64 0a                                      mov.w sl, #0x64
0007d242  a4 fb 09 01                                      umull r0, r1, r4, sb
0007d246  df f8 e8 80                                      ldr.w r8, [pc, #0xe8]
0007d24a  3a 4a                                            ldr r2, [pc, #0xe8]
0007d24c  f8 44                                            add r8, pc
0007d24e  7a 44                                            add r2, pc
0007d250  4b 09                                            lsrs r3, r1, #5
0007d252  41 46                                            mov r1, r8
0007d254  03 fb 1a 40                                      mls r0, r3, sl, r4
0007d258  00 90                                            str r0, [sp]
0007d25a  28 46                                            mov r0, r5
0007d25c  b5 f7 a8 ea                                      blx #0x327b0
0007d260  83 46                                            mov fp, r0
0007d262  a6 fb 09 01                                      umull r0, r1, r6, sb
0007d266  4b 09                                            lsrs r3, r1, #5
0007d268  41 46                                            mov r1, r8
0007d26a  03 fb 1a 60                                      mls r0, r3, sl, r6
0007d26e  0f f2 c8 0a                                      addw sl, pc, #0xc8
0007d272  52 46                                            mov r2, sl
0007d274  00 90                                            str r0, [sp]
0007d276  28 46                                            mov r0, r5
0007d278  b5 f7 9a ea                                      blx #0x327b0
0007d27c  03 46                                            mov r3, r0
0007d27e  4c b1                                            cbz r4, #0x7d294
0007d280  46 b1                                            cbz r6, #0x7d294
0007d282  33 a1                                            adr r1, #0xcc
0007d284  28 46                                            mov r0, r5
0007d286  5a 46                                            mov r2, fp
0007d288  b5 f7 92 ea                                      blx #0x327b0
0007d28c  04 46                                            mov r4, r0
0007d28e  dd f8 0c 80                                      ldr.w r8, [sp, #0xc]
0007d292  08 e0                                            b #0x7d2a6
0007d294  dd f8 0c 80                                      ldr.w r8, [sp, #0xc]
0007d298  d4 b3                                            cbz r4, #0x7d310
0007d29a  29 a1                                            adr r1, #0xa4
0007d29c  28 46                                            mov r0, r5
0007d29e  5a 46                                            mov r2, fp
0007d2a0  b5 f7 86 ea                                      blx #0x327b0
0007d2a4  04 46                                            mov r4, r0
0007d2a6  dd f8 10 90                                      ldr.w sb, [sp, #0x10]
0007d2aa  d5 f8 80 00                                      ldr.w r0, [r5, #0x80]
0007d2ae  48 f2 1f 51                                      movw r1, #0x851f
0007d2b2  c5 f2 eb 11                                      movt r1, #0x51eb
0007d2b6  95 f8 7c 60                                      ldrb.w r6, [r5, #0x7c]
0007d2ba  a0 fb 01 12                                      umull r1, r2, r0, r1
0007d2be  00 2e                                            cmp r6, #0
0007d2c0  4f f0 64 01                                      mov.w r1, #0x64
0007d2c4  4f ea 52 13                                      lsr.w r3, r2, #5
0007d2c8  27 4a                                            ldr r2, [pc, #0x9c]
0007d2ca  03 fb 11 00                                      mls r0, r3, r1, r0
0007d2ce  27 49                                            ldr r1, [pc, #0x9c]
0007d2d0  7a 44                                            add r2, pc
0007d2d2  79 44                                            add r1, pc
0007d2d4  00 90                                            str r0, [sp]
0007d2d6  18 bf                                            it ne
0007d2d8  52 46                                            movne r2, sl
0007d2da  28 46                                            mov r0, r5
0007d2dc  b5 f7 68 ea                                      blx #0x327b0
0007d2e0  23 a2                                            adr r2, #0x8c
0007d2e2  cd e9 00 04                                      strd r0, r4, [sp]
0007d2e6  40 46                                            mov r0, r8
0007d2e8  29 46                                            mov r1, r5
0007d2ea  4b 46                                            mov r3, sb
0007d2ec  b5 f7 e4 ea                                      blx #0x328b8
0007d2f0  00 20                                            movs r0, #0
0007d2f2  00 e0                                            b #0x7d2f6
0007d2f4  01 20                                            movs r0, #1
0007d2f6  21 49                                            ldr r1, [pc, #0x84]
0007d2f8  06 9a                                            ldr r2, [sp, #0x18]
0007d2fa  79 44                                            add r1, pc
0007d2fc  09 68                                            ldr r1, [r1]
0007d2fe  09 68                                            ldr r1, [r1]
0007d300  89 1a                                            subs r1, r1, r2
0007d302  02 bf                                            ittt eq
0007d304  07 b0                                            addeq sp, #0x1c
0007d306  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
0007d30a  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0007d30c  b4 f7 a8 ee                                      blx #0x32060
0007d310  dd f8 10 90                                      ldr.w sb, [sp, #0x10]
0007d314  36 b1                                            cbz r6, #0x7d324
0007d316  0a a1                                            adr r1, #0x28
0007d318  28 46                                            mov r0, r5
0007d31a  1a 46                                            mov r2, r3
0007d31c  b5 f7 48 ea                                      blx #0x327b0
0007d320  04 46                                            mov r4, r0
0007d322  c2 e7                                            b #0x7d2aa
0007d324  05 4c                                            ldr r4, [pc, #0x14]
0007d326  7c 44                                            add r4, pc
0007d328  bf e7                                            b #0x7d2aa
0007d32a  00 bf                                            nop
0007d32c  ae f2 05 00                                      subw r0, lr, #5
0007d330  99 31                                            adds r1, #0x99
0007d332  04 00                                            movs r4, r0
0007d334  71 bf                                            iteee vc
0007d336  03 00                                            movs r3, r0
0007d338  20 45                                            cmpvs r0, r4
0007d33a  53 00                                            lslvs r3, r2, #1
0007d33c  99 be                                            bkpt #0x99
0007d33e  03 00                                            movs r3, r0
0007d340  20 28                                            cmp r0, #0x20
0007d342  25 73                                            strb r5, [r4, #0xc]
0007d344  20 72                                            strb r0, [r4, #8]
0007d346  65 71                                            strb r5, [r4, #5]
0007d348  75 69                                            ldr r5, [r6, #0x14]
0007d34a  72 65                                            str r2, [r6, #0x54]
0007d34c  64 29                                            cmp r1, #0x64
0007d34e  00 00                                            movs r0, r0
0007d350  20 28                                            cmp r0, #0x20
0007d352  25 73                                            strb r5, [r4, #0xc]
0007d354  20 6f                                            ldr r0, [r4, #0x70]
0007d356  72 20                                            movs r0, #0x72
0007d358  25 73                                            strb r5, [r4, #0xc]
0007d35a  20 72                                            strb r0, [r4, #8]
0007d35c  65 71                                            strb r5, [r4, #5]
0007d35e  75 69                                            ldr r5, [r6, #0x14]
0007d360  72 65                                            str r2, [r6, #0x54]
0007d362  64 29                                            cmp r1, #0x64
0007d364  00 00                                            movs r0, r0
0007d366  00 00                                            movs r0, r0
0007d368  ef be                                            bkpt #0xef
0007d36a  03 00                                            movs r3, r0
0007d36c  13 31                                            adds r1, #0x13
0007d36e  04 00                                            movs r4, r0
0007d370  25 73                                            strb r5, [r4, #0xc]
0007d372  20 69                                            ldr r0, [r4, #0x10]
0007d374  6e 20                                            movs r0, #0x6e
0007d376  25 73                                            strb r5, [r4, #0xc]
0007d378  25 73                                            strb r5, [r4, #0xc]
0007d37a  00 00                                            movs r0, r0
0007d37c  ba f1 05 00                                      subs.w r0, sl, #5

; FUNCTION 0x0007d3d0, declared_size=428, range_size=428, mode=thumb
; class-group: _mesa_glsl_parse_state
; alias: _ZN22_mesa_glsl_parse_state25process_version_directiveEP7YYLTYPEiPKc
; demangled: _mesa_glsl_parse_state::process_version_directive(YYLTYPE*, int, char const*)
; decoder-mode: thumb
0007d3d0  f0 b5                                            push {r4, r5, r6, r7, lr}
0007d3d2  03 af                                            add r7, sp, #0xc
0007d3d4  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007d3d8  82 b0                                            sub sp, #8
0007d3da  1d 46                                            mov r5, r3
0007d3dc  16 46                                            mov r6, r2
0007d3de  88 46                                            mov r8, r1
0007d3e0  04 46                                            mov r4, r0
0007d3e2  fd b1                                            cbz r5, #0x7d424
0007d3e4  43 a1                                            adr r1, #0x10c
0007d3e6  28 46                                            mov r0, r5
0007d3e8  b4 f7 aa ed                                      blx #0x31f40
0007d3ec  98 b1                                            cbz r0, #0x7d416
0007d3ee  96 2e                                            cmp r6, #0x96
0007d3f0  13 db                                            blt #0x7d41a
0007d3f2  4b a1                                            adr r1, #0x12c
0007d3f4  28 46                                            mov r0, r5
0007d3f6  b4 f7 a4 ed                                      blx #0x31f40
0007d3fa  88 b3                                            cbz r0, #0x7d460
0007d3fc  4a a1                                            adr r1, #0x128
0007d3fe  28 46                                            mov r0, r5
0007d400  b4 f7 9e ed                                      blx #0x31f40
0007d404  38 b3                                            cbz r0, #0x7d456
0007d406  4c 4a                                            ldr r2, [pc, #0x130]
0007d408  40 46                                            mov r0, r8
0007d40a  21 46                                            mov r1, r4
0007d40c  2b 46                                            mov r3, r5
0007d40e  7a 44                                            add r2, pc
0007d410  b5 f7 52 ea                                      blx #0x328b8
0007d414  24 e0                                            b #0x7d460
0007d416  01 20                                            movs r0, #1
0007d418  05 e0                                            b #0x7d426
0007d41a  37 a2                                            adr r2, #0xdc
0007d41c  40 46                                            mov r0, r8
0007d41e  21 46                                            mov r1, r4
0007d420  b5 f7 4a ea                                      blx #0x328b8
0007d424  00 20                                            movs r0, #0
0007d426  64 2e                                            cmp r6, #0x64
0007d428  84 f8 7c 00                                      strb.w r0, [r4, #0x7c]
0007d42c  09 d1                                            bne #0x7d442
0007d42e  01 28                                            cmp r0, #1
0007d430  0a d1                                            bne #0x7d448
0007d432  4d 4a                                            ldr r2, [pc, #0x134]
0007d434  40 46                                            mov r0, r8
0007d436  21 46                                            mov r1, r4
0007d438  7a 44                                            add r2, pc
0007d43a  b5 f7 3e ea                                      blx #0x328b8
0007d43e  94 f8 7c 00                                      ldrb.w r0, [r4, #0x7c]
0007d442  20 b9                                            cbnz r0, #0x7d44e
0007d444  00 20                                            movs r0, #0
0007d446  0e e0                                            b #0x7d466
0007d448  01 20                                            movs r0, #1
0007d44a  84 f8 7c 00                                      strb.w r0, [r4, #0x7c]
0007d44e  00 21                                            movs r1, #0
0007d450  84 f8 c2 11                                      strb.w r1, [r4, #0x1c2]
0007d454  07 e0                                            b #0x7d466
0007d456  39 a2                                            adr r2, #0xe4
0007d458  40 46                                            mov r0, r8
0007d45a  21 46                                            mov r1, r4
0007d45c  b5 f7 2c ea                                      blx #0x328b8
0007d460  00 20                                            movs r0, #0
0007d462  84 f8 7c 00                                      strb.w r0, [r4, #0x7c]
0007d466  01 21                                            movs r1, #1
0007d468  84 f8 84 10                                      strb.w r1, [r4, #0x84]
0007d46c  a1 69                                            ldr r1, [r4, #0x18]
0007d46e  c4 f8 80 60                                      str.w r6, [r4, #0x80]
0007d472  61 b1                                            cbz r1, #0x7d48e
0007d474  00 22                                            movs r2, #0
0007d476  04 eb c2 03                                      add.w r3, r4, r2, lsl #3
0007d47a  dd 69                                            ldr r5, [r3, #0x1c]
0007d47c  b5 42                                            cmp r5, r6
0007d47e  04 bf                                            itt eq
0007d480  93 f8 20 30                                      ldrbeq.w r3, [r3, #0x20]
0007d484  83 42                                            cmpeq r3, r0
0007d486  30 d0                                            beq #0x7d4ea
0007d488  01 32                                            adds r2, #1
0007d48a  8a 42                                            cmp r2, r1
0007d48c  f3 d3                                            blo #0x7d476
0007d48e  48 f2 1f 51                                      movw r1, #0x851f
0007d492  64 25                                            movs r5, #0x64
0007d494  c5 f2 eb 11                                      movt r1, #0x51eb
0007d498  00 28                                            cmp r0, #0
0007d49a  a6 fb 01 12                                      umull r1, r2, r6, r1
0007d49e  20 46                                            mov r0, r4
0007d4a0  33 49                                            ldr r1, [pc, #0xcc]
0007d4a2  79 44                                            add r1, pc
0007d4a4  4f ea 52 13                                      lsr.w r3, r2, #5
0007d4a8  03 fb 15 62                                      mls r2, r3, r5, r6
0007d4ac  2f 4e                                            ldr r6, [pc, #0xbc]
0007d4ae  7e 44                                            add r6, pc
0007d4b0  00 92                                            str r2, [sp]
0007d4b2  30 a2                                            adr r2, #0xc0
0007d4b4  08 bf                                            it eq
0007d4b6  32 46                                            moveq r2, r6
0007d4b8  b5 f7 7a e9                                      blx #0x327b0
0007d4bc  2e 4a                                            ldr r2, [pc, #0xb8]
0007d4be  03 46                                            mov r3, r0
0007d4c0  d4 f8 b4 00                                      ldr.w r0, [r4, #0xb4]
0007d4c4  21 46                                            mov r1, r4
0007d4c6  7a 44                                            add r2, pc
0007d4c8  00 90                                            str r0, [sp]
0007d4ca  40 46                                            mov r0, r8
0007d4cc  b5 f7 f4 e9                                      blx #0x328b8
0007d4d0  20 68                                            ldr r0, [r4]
0007d4d2  01 68                                            ldr r1, [r0]
0007d4d4  4a 1e                                            subs r2, r1, #1
0007d4d6  02 2a                                            cmp r2, #2
0007d4d8  05 d3                                            blo #0x7d4e6
0007d4da  03 29                                            cmp r1, #3
0007d4dc  18 bf                                            it ne
0007d4de  00 29                                            cmpne r1, #0
0007d4e0  03 d1                                            bne #0x7d4ea
0007d4e2  d0 f8 a8 52                                      ldr.w r5, [r0, #0x2a8]
0007d4e6  c4 f8 80 50                                      str.w r5, [r4, #0x80]
0007d4ea  02 b0                                            add sp, #8
0007d4ec  5d f8 04 8b                                      ldr r8, [sp], #4
0007d4f0  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007d4f2  00 bf                                            nop
0007d4f4  65 73                                            strb r5, [r4, #0xd]
0007d4f6  00 00                                            movs r0, r0
0007d4f8  69 6c                                            ldr r1, [r5, #0x44]
0007d4fa  6c 65                                            str r4, [r5, #0x54]
0007d4fc  67 61                                            str r7, [r4, #0x14]
0007d4fe  6c 20                                            movs r0, #0x6c
0007d500  74 65                                            str r4, [r6, #0x54]
0007d502  78 74                                            strb r0, [r7, #0x11]
0007d504  20 66                                            str r0, [r4, #0x60]
0007d506  6f 6c                                            ldr r7, [r5, #0x44]
0007d508  6c 6f                                            ldr r4, [r5, #0x74]
0007d50a  77 69                                            ldr r7, [r6, #0x14]
0007d50c  6e 67                                            str r6, [r5, #0x74]
0007d50e  20 76                                            strb r0, [r4, #0x18]
0007d510  65 72                                            strb r5, [r4, #9]
0007d512  73 69                                            ldr r3, [r6, #0x14]
0007d514  6f 6e                                            ldr r7, [r5, #0x64]
0007d516  20 6e                                            ldr r0, [r4, #0x60]
0007d518  75 6d                                            ldr r5, [r6, #0x54]
0007d51a  62 65                                            str r2, [r4, #0x54]
0007d51c  72 00                                            lsls r2, r6, #1
0007d51e  00 00                                            movs r0, r0
0007d520  63 6f                                            ldr r3, [r4, #0x74]
0007d522  72 65                                            str r2, [r6, #0x54]
0007d524  00 00                                            movs r0, r0
0007d526  00 00                                            movs r0, r0
0007d528  63 6f                                            ldr r3, [r4, #0x74]
0007d52a  6d 70                                            strb r5, [r5, #1]
0007d52c  61 74                                            strb r1, [r4, #0x11]
0007d52e  69 62                                            str r1, [r5, #0x24]
0007d530  69 6c                                            ldr r1, [r5, #0x44]
0007d532  69 74                                            strb r1, [r5, #0x11]
0007d534  79 00                                            lsls r1, r7, #1
0007d536  00 00                                            movs r0, r0
0007d538  eb 2f                                            cmp r7, #0xeb
0007d53a  04 00                                            movs r4, r0
0007d53c  74 68                                            ldr r4, [r6, #4]
0007d53e  65 20                                            movs r0, #0x65
0007d540  63 6f                                            ldr r3, [r4, #0x74]
0007d542  6d 70                                            strb r5, [r5, #1]
0007d544  61 74                                            strb r1, [r4, #0x11]
0007d546  69 62                                            str r1, [r5, #0x24]
0007d548  69 6c                                            ldr r1, [r5, #0x44]
0007d54a  69 74                                            strb r1, [r5, #0x11]
0007d54c  79 20                                            movs r0, #0x79
0007d54e  70 72                                            strb r0, [r6, #9]
0007d550  6f 66                                            str r7, [r5, #0x64]
0007d552  69 6c                                            ldr r1, [r5, #0x44]
0007d554  65 20                                            movs r0, #0x65
0007d556  69 73                                            strb r1, [r5, #0xd]
0007d558  20 6e                                            ldr r0, [r4, #0x60]
0007d55a  6f 74                                            strb r7, [r5, #0x11]
0007d55c  20 73                                            strb r0, [r4, #0xc]
0007d55e  75 70                                            strb r5, [r6, #1]
0007d560  70 6f                                            ldr r0, [r6, #0x74]
0007d562  72 74                                            strb r2, [r6, #0x11]
0007d564  65 64                                            str r5, [r4, #0x44]
0007d566  00 00                                            movs r0, r0
0007d568  0d 30                                            adds r0, #0xd
0007d56a  04 00                                            movs r4, r0
0007d56c  11 bd                                            pop {r0, r4, pc}
0007d56e  03 00                                            movs r3, r0
0007d570  43 2f                                            cmp r7, #0x43
0007d572  04 00                                            movs r4, r0
0007d574  20 45                                            cmp r0, r4
0007d576  53 00                                            lsls r3, r2, #1
0007d578  b4 2f                                            cmp r7, #0xb4
0007d57a  04 00                                            movs r4, r0
