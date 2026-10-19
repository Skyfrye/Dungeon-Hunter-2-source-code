; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00056708, declared_size=612, range_size=612, mode=thumb
; class-group: ast_parameter_declarator
; alias: _ZN24ast_parameter_declarator3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_parameter_declarator::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00056708  f0 b5                                            push {r4, r5, r6, r7, lr}
0005670a  03 af                                            add r7, sp, #0xc
0005670c  2d e9 00 0b                                      push.w {r8, sb, fp}
00056710  88 b0                                            sub sp, #0x20
00056712  06 46                                            mov r6, r0
00056714  6a 48                                            ldr r0, [pc, #0x1a8]
00056716  35 1d                                            adds r5, r6, #4
00056718  14 46                                            mov r4, r2
0005671a  78 44                                            add r0, pc
0005671c  88 46                                            mov r8, r1
0005671e  00 68                                            ldr r0, [r0]
00056720  00 68                                            ldr r0, [r0]
00056722  07 90                                            str r0, [sp, #0x1c]
00056724  00 20                                            movs r0, #0
00056726  06 90                                            str r0, [sp, #0x18]
00056728  2f cd                                            ldm r5, {r0, r1, r2, r3, r5}
0005672a  05 90                                            str r0, [sp, #0x14]
0005672c  01 a8                                            add r0, sp, #4
0005672e  2e c0                                            stm r0!, {r1, r2, r3, r5}
00056730  06 a9                                            add r1, sp, #0x18
00056732  22 46                                            mov r2, r4
00056734  30 6a                                            ldr r0, [r6, #0x20]
00056736  00 6e                                            ldr r0, [r0, #0x60]
00056738  dc f7 7e e9                                      blx #0x32a38
0005673c  01 46                                            mov r1, r0
0005673e  99 b9                                            cbnz r1, #0x56768
00056740  06 9d                                            ldr r5, [sp, #0x18]
00056742  73 6a                                            ldr r3, [r6, #0x24]
00056744  35 b1                                            cbz r5, #0x56754
00056746  5f 4a                                            ldr r2, [pc, #0x17c]
00056748  01 a8                                            add r0, sp, #4
0005674a  00 93                                            str r3, [sp]
0005674c  21 46                                            mov r1, r4
0005674e  7a 44                                            add r2, pc
00056750  2b 46                                            mov r3, r5
00056752  03 e0                                            b #0x5675c
00056754  5c 4a                                            ldr r2, [pc, #0x170]
00056756  01 a8                                            add r0, sp, #4
00056758  21 46                                            mov r1, r4
0005675a  7a 44                                            add r2, pc
0005675c  dc f7 ac e8                                      blx #0x328b8
00056760  5a 48                                            ldr r0, [pc, #0x168]
00056762  78 44                                            add r0, pc
00056764  00 68                                            ldr r0, [r0]
00056766  01 68                                            ldr r1, [r0]
00056768  48 68                                            ldr r0, [r1, #4]
0005676a  0a 28                                            cmp r0, #0xa
0005676c  0b d1                                            bne #0x56786
0005676e  70 6a                                            ldr r0, [r6, #0x24]
00056770  28 b1                                            cbz r0, #0x5677e
00056772  7c 4a                                            ldr r2, [pc, #0x1f0]
00056774  01 a8                                            add r0, sp, #4
00056776  21 46                                            mov r1, r4
00056778  7a 44                                            add r2, pc
0005677a  dc f7 9e e8                                      blx #0x328b8
0005677e  01 20                                            movs r0, #1
00056780  86 f8 2d 00                                      strb.w r0, [r6, #0x2d]
00056784  8d e0                                            b #0x568a2
00056786  96 f8 2c 00                                      ldrb.w r0, [r6, #0x2c]
0005678a  18 b1                                            cbz r0, #0x56794
0005678c  70 6a                                            ldr r0, [r6, #0x24]
0005678e  00 28                                            cmp r0, #0
00056790  00 f0 82 80                                      beq.w #0x56898
00056794  b2 6a                                            ldr r2, [r6, #0x28]
00056796  01 a8                                            add r0, sp, #4
00056798  23 46                                            mov r3, r4
0005679a  fe f7 51 f8                                      bl #0x54840
0005679e  81 46                                            mov sb, r0
000567a0  d9 f8 04 00                                      ldr.w r0, [sb, #4]
000567a4  09 28                                            cmp r0, #9
000567a6  04 bf                                            itt eq
000567a8  d9 f8 10 00                                      ldreq.w r0, [sb, #0x10]
000567ac  00 28                                            cmpeq r0, #0
000567ae  09 d1                                            bne #0x567c4
000567b0  01 a8                                            add r0, sp, #4
000567b2  4f a2                                            adr r2, #0x13c
000567b4  21 46                                            mov r1, r4
000567b6  dc f7 80 e8                                      blx #0x328b8
000567ba  5b 48                                            ldr r0, [pc, #0x16c]
000567bc  78 44                                            add r0, pc
000567be  00 68                                            ldr r0, [r0]
000567c0  d0 f8 00 90                                      ldr.w sb, [r0]
000567c4  00 20                                            movs r0, #0
000567c6  44 21                                            movs r1, #0x44
000567c8  86 f8 2d 00                                      strb.w r0, [r6, #0x2d]
000567cc  20 46                                            mov r0, r4
000567ce  db f7 a8 ef                                      blx #0x32720
000567d2  05 46                                            mov r5, r0
000567d4  55 48                                            ldr r0, [pc, #0x154]
000567d6  78 44                                            add r0, pc
000567d8  01 68                                            ldr r1, [r0]
000567da  28 46                                            mov r0, r5
000567dc  dc f7 90 e8                                      blx #0x32900
000567e0  d6 e9 08 02                                      ldrd r0, r2, [r6, #0x20]
000567e4  49 46                                            mov r1, sb
000567e6  05 23                                            movs r3, #5
000567e8  90 f8 28 00                                      ldrb.w r0, [r0, #0x28]
000567ec  00 f0 03 00                                      and r0, r0, #3
000567f0  00 90                                            str r0, [sp]
000567f2  28 46                                            mov r0, r5
000567f4  dc f7 c0 e8                                      blx #0x32978
000567f8  30 6a                                            ldr r0, [r6, #0x20]
000567fa  01 21                                            movs r1, #1
000567fc  01 ab                                            add r3, sp, #4
000567fe  00 91                                            str r1, [sp]
00056800  20 30                                            adds r0, #0x20
00056802  29 46                                            mov r1, r5
00056804  22 46                                            mov r2, r4
00056806  ff f7 1f f8                                      bl #0x55848
0005680a  94 f8 7c 00                                      ldrb.w r0, [r4, #0x7c]
0005680e  00 28                                            cmp r0, #0
00056810  0d d0                                            beq #0x5682e
00056812  30 6a                                            ldr r0, [r6, #0x20]
00056814  2e 46                                            mov r6, r5
00056816  56 f8 18 1f                                      ldr r1, [r6, #0x18]!
0005681a  90 f8 28 00                                      ldrb.w r0, [r0, #0x28]
0005681e  21 f4 c0 31                                      bic r1, r1, #0x18000
00056822  00 f0 03 00                                      and r0, r0, #3
00056826  41 ea c0 30                                      orr.w r0, r1, r0, lsl #15
0005682a  30 60                                            str r0, [r6]
0005682c  02 e0                                            b #0x56834
0005682e  2e 46                                            mov r6, r5
00056830  56 f8 18 0f                                      ldr r0, [r6, #0x18]!
00056834  00 f4 e0 50                                      and r0, r0, #0x1c00
00056838  90 f4 40 6f                                      teq.w r0, #0xc00
0005683c  0f d1                                            bne #0x5685e
0005683e  48 46                                            mov r0, sb
00056840  dc f7 38 ea                                      blx #0x32cb4
00056844  01 28                                            cmp r0, #1
00056846  0a d1                                            bne #0x5685e
00056848  39 4a                                            ldr r2, [pc, #0xe4]
0005684a  01 a8                                            add r0, sp, #4
0005684c  21 46                                            mov r1, r4
0005684e  7a 44                                            add r2, pc
00056850  dc f7 32 e8                                      blx #0x328b8
00056854  37 48                                            ldr r0, [pc, #0xdc]
00056856  78 44                                            add r0, pc
00056858  00 68                                            ldr r0, [r0]
0005685a  d0 f8 00 90                                      ldr.w sb, [r0]
0005685e  30 68                                            ldr r0, [r6]
00056860  00 f4 e0 50                                      and r0, r0, #0x1c00
00056864  90 f4 40 6f                                      teq.w r0, #0xc00
00056868  04 bf                                            itt eq
0005686a  d9 f8 04 00                                      ldreq.w r0, [sb, #4]
0005686e  09 28                                            cmpeq r0, #9
00056870  07 d1                                            bne #0x56882
00056872  31 a0                                            adr r0, #0xc4
00056874  01 ab                                            add r3, sp, #4
00056876  00 90                                            str r0, [sp]
00056878  20 46                                            mov r0, r4
0005687a  78 21                                            movs r1, #0x78
0005687c  64 22                                            movs r2, #0x64
0005687e  dc f7 e2 e8                                      blx #0x32a44
00056882  08 f1 04 00                                      add.w r0, r8, #4
00056886  45 f8 04 0f                                      str r0, [r5, #4]!
0005688a  d8 f8 08 00                                      ldr.w r0, [r8, #8]
0005688e  68 60                                            str r0, [r5, #4]
00056890  05 60                                            str r5, [r0]
00056892  c8 f8 08 50                                      str.w r5, [r8, #8]
00056896  04 e0                                            b #0x568a2
00056898  01 a8                                            add r0, sp, #4
0005689a  0d a2                                            adr r2, #0x34
0005689c  21 46                                            mov r1, r4
0005689e  dc f7 0c e8                                      blx #0x328b8
000568a2  31 48                                            ldr r0, [pc, #0xc4]
000568a4  07 99                                            ldr r1, [sp, #0x1c]
000568a6  78 44                                            add r0, pc
000568a8  00 68                                            ldr r0, [r0]
000568aa  00 68                                            ldr r0, [r0]
000568ac  40 1a                                            subs r0, r0, r1
000568ae  01 bf                                            itttt eq
000568b0  00 20                                            moveq r0, #0
000568b2  08 b0                                            addeq sp, #0x20
000568b4  bd e8 00 0b                                      popeq.w {r8, sb, fp}
000568b8  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000568ba  db f7 d2 eb                                      blx #0x32060
000568be  00 bf                                            nop
000568c0  9a 5d                                            ldrb r2, [r3, r6]
000568c2  08 00                                            movs r0, r1
000568c4  75 40                                            eors r5, r6
000568c6  06 00                                            movs r6, r0
000568c8  92 40                                            lsls r2, r2
000568ca  06 00                                            movs r6, r0
000568cc  da 5d                                            ldrb r2, [r3, r7]
000568ce  08 00                                            movs r0, r1
000568d0  66 6f                                            ldr r6, [r4, #0x74]
000568d2  72 6d                                            ldr r2, [r6, #0x54]
000568d4  61 6c                                            ldr r1, [r4, #0x44]
000568d6  20 70                                            strb r0, [r4]
000568d8  61 72                                            strb r1, [r4, #9]
000568da  61 6d                                            ldr r1, [r4, #0x54]
000568dc  65 74                                            strb r5, [r4, #0x11]
000568de  65 72                                            strb r5, [r4, #9]
000568e0  20 6c                                            ldr r0, [r4, #0x40]
000568e2  61 63                                            str r1, [r4, #0x34]
000568e4  6b 73                                            strb r3, [r5, #0xd]
000568e6  20 61                                            str r0, [r4, #0x10]
000568e8  20 6e                                            ldr r0, [r4, #0x60]
000568ea  61 6d                                            ldr r1, [r4, #0x54]
000568ec  65 00                                            lsls r5, r4, #1
000568ee  00 00                                            movs r0, r0
000568f0  61 72                                            strb r1, [r4, #9]
000568f2  72 61                                            str r2, [r6, #0x14]
000568f4  79 73                                            strb r1, [r7, #0xd]
000568f6  20 70                                            strb r0, [r4]
000568f8  61 73                                            strb r1, [r4, #0xd]
000568fa  73 65                                            str r3, [r6, #0x54]
000568fc  64 20                                            movs r0, #0x64
000568fe  61 73                                            strb r1, [r4, #0xd]
00056900  20 70                                            strb r0, [r4]
00056902  61 72                                            strb r1, [r4, #9]
00056904  61 6d                                            ldr r1, [r4, #0x54]
00056906  65 74                                            strb r5, [r4, #0x11]
00056908  65 72                                            strb r5, [r4, #9]
0005690a  73 20                                            movs r0, #0x73
0005690c  6d 75                                            strb r5, [r5, #0x15]
0005690e  73 74                                            strb r3, [r6, #0x11]
00056910  20 68                                            ldr r0, [r4]
00056912  61 76                                            strb r1, [r4, #0x19]
00056914  65 20                                            movs r0, #0x65
00056916  61 20                                            movs r0, #0x61
00056918  64 65                                            str r4, [r4, #0x54]
0005691a  63 6c                                            ldr r3, [r4, #0x44]
0005691c  61 72                                            strb r1, [r4, #9]
0005691e  65 64                                            str r5, [r4, #0x44]
00056920  20 73                                            strb r0, [r4, #0xc]
00056922  69 7a                                            ldrb r1, [r5, #9]
00056924  65 00                                            lsls r5, r4, #1
00056926  00 00                                            movs r0, r0
00056928  80 5d                                            ldrb r0, [r0, r6]
0005692a  08 00                                            movs r0, r1
0005692c  62 5d                                            ldrb r2, [r4, r5]
0005692e  08 00                                            movs r0, r1
00056930  2f 45                                            cmp r7, r5
00056932  06 00                                            movs r6, r0
00056934  e6 5c                                            ldrb r6, [r4, r3]
00056936  08 00                                            movs r0, r1
00056938  61 72                                            strb r1, [r4, #9]
0005693a  72 61                                            str r2, [r6, #0x14]
0005693c  79 73                                            strb r1, [r7, #0xd]
0005693e  20 63                                            str r0, [r4, #0x30]
00056940  61 6e                                            ldr r1, [r4, #0x64]
00056942  6e 6f                                            ldr r6, [r5, #0x74]
00056944  74 20                                            movs r0, #0x74
00056946  62 65                                            str r2, [r4, #0x54]
00056948  20 6f                                            ldr r0, [r4, #0x70]
0005694a  75 74                                            strb r5, [r6, #0x11]
0005694c  20 6f                                            ldr r0, [r4, #0x70]
0005694e  72 20                                            movs r0, #0x72
00056950  69 6e                                            ldr r1, [r5, #0x64]
00056952  6f 75                                            strb r7, [r5, #0x15]
00056954  74 20                                            movs r0, #0x74
00056956  70 61                                            str r0, [r6, #0x14]
00056958  72 61                                            str r2, [r6, #0x14]
0005695a  6d 65                                            str r5, [r5, #0x54]
0005695c  74 65                                            str r4, [r6, #0x54]
0005695e  72 73                                            strb r2, [r6, #0xd]
00056960  00 00                                            movs r0, r0
00056962  00 00                                            movs r0, r0
00056964  dd 45                                            cmp sp, fp
00056966  06 00                                            movs r6, r0
00056968  0e 5c                                            ldrb r6, [r1, r0]
0005696a  08 00                                            movs r0, r1

; FUNCTION 0x0005696c, declared_size=204, range_size=204, mode=thumb
; class-group: ast_parameter_declarator
; alias: _ZN24ast_parameter_declarator17parameters_to_hirEP9exec_listbS1_P22_mesa_glsl_parse_state
; demangled: ast_parameter_declarator::parameters_to_hir(exec_list*, bool, exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
0005696c  f0 b5                                            push {r4, r5, r6, r7, lr}
0005696e  03 af                                            add r7, sp, #0xc
00056970  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00056974  87 b0                                            sub sp, #0x1c
00056976  8a 46                                            mov sl, r1
00056978  23 49                                            ldr r1, [pc, #0x8c]
0005697a  98 46                                            mov r8, r3
0005697c  91 46                                            mov sb, r2
0005697e  79 44                                            add r1, pc
00056980  09 68                                            ldr r1, [r1]
00056982  09 68                                            ldr r1, [r1]
00056984  06 91                                            str r1, [sp, #0x18]
00056986  05 68                                            ldr r5, [r0]
00056988  28 68                                            ldr r0, [r5]
0005698a  78 b3                                            cbz r0, #0x569ec
0005698c  00 26                                            movs r6, #0
0005698e  4f f0 00 0b                                      mov.w fp, #0
00056992  2c 46                                            mov r4, r5
00056994  49 46                                            mov r1, sb
00056996  54 f8 18 0d                                      ldr r0, [r4, #-0x18]!
0005699a  42 46                                            mov r2, r8
0005699c  85 f8 14 a0                                      strb.w sl, [r5, #0x14]
000569a0  43 68                                            ldr r3, [r0, #4]
000569a2  20 46                                            mov r0, r4
000569a4  98 47                                            blx r3
000569a6  28 68                                            ldr r0, [r5]
000569a8  01 36                                            adds r6, #1
000569aa  69 7d                                            ldrb r1, [r5, #0x15]
000569ac  00 29                                            cmp r1, #0
000569ae  18 bf                                            it ne
000569b0  a3 46                                            movne fp, r4
000569b2  01 68                                            ldr r1, [r0]
000569b4  05 46                                            mov r5, r0
000569b6  00 29                                            cmp r1, #0
000569b8  eb d1                                            bne #0x56992
000569ba  bb f1 00 0f                                      cmp.w fp, #0
000569be  18 bf                                            it ne
000569c0  01 2e                                            cmpne r6, #1
000569c2  13 d9                                            bls #0x569ec
000569c4  db f8 04 00                                      ldr.w r0, [fp, #4]
000569c8  10 a2                                            adr r2, #0x40
000569ca  05 90                                            str r0, [sp, #0x14]
000569cc  41 46                                            mov r1, r8
000569ce  db f8 08 00                                      ldr.w r0, [fp, #8]
000569d2  01 90                                            str r0, [sp, #4]
000569d4  db f8 0c 00                                      ldr.w r0, [fp, #0xc]
000569d8  02 90                                            str r0, [sp, #8]
000569da  db f8 10 00                                      ldr.w r0, [fp, #0x10]
000569de  03 90                                            str r0, [sp, #0xc]
000569e0  db f8 14 00                                      ldr.w r0, [fp, #0x14]
000569e4  04 90                                            str r0, [sp, #0x10]
000569e6  01 a8                                            add r0, sp, #4
000569e8  db f7 66 ef                                      blx #0x328b8
000569ec  11 48                                            ldr r0, [pc, #0x44]
000569ee  06 99                                            ldr r1, [sp, #0x18]
000569f0  78 44                                            add r0, pc
000569f2  00 68                                            ldr r0, [r0]
000569f4  00 68                                            ldr r0, [r0]
000569f6  40 1a                                            subs r0, r0, r1
000569f8  02 bf                                            ittt eq
000569fa  07 b0                                            addeq sp, #0x1c
000569fc  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00056a00  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00056a02  db f7 2e eb                                      blx #0x32060
00056a06  00 bf                                            nop
00056a08  36 5b                                            ldrh r6, [r6, r4]
00056a0a  08 00                                            movs r0, r1
00056a0c  60 76                                            strb r0, [r4, #0x19]
00056a0e  6f 69                                            ldr r7, [r5, #0x14]
00056a10  64 27                                            movs r7, #0x64
00056a12  20 70                                            strb r0, [r4]
00056a14  61 72                                            strb r1, [r4, #9]
00056a16  61 6d                                            ldr r1, [r4, #0x54]
00056a18  65 74                                            strb r5, [r4, #0x11]
00056a1a  65 72                                            strb r5, [r4, #9]
00056a1c  20 6d                                            ldr r0, [r4, #0x50]
00056a1e  75 73                                            strb r5, [r6, #0xd]
00056a20  74 20                                            movs r0, #0x74
00056a22  62 65                                            str r2, [r4, #0x54]
00056a24  20 6f                                            ldr r0, [r4, #0x70]
00056a26  6e 6c                                            ldr r6, [r5, #0x44]
00056a28  79 20                                            movs r0, #0x79
00056a2a  70 61                                            str r0, [r6, #0x14]
00056a2c  72 61                                            str r2, [r6, #0x14]
00056a2e  6d 65                                            str r5, [r5, #0x54]
00056a30  74 65                                            str r4, [r6, #0x54]
00056a32  72 00                                            lsls r2, r6, #1
00056a34  c4 5a                                            ldrh r4, [r0, r3]
00056a36  08 00                                            movs r0, r1

; FUNCTION 0x0007dd30, declared_size=44, range_size=44, mode=thumb
; class-group: ast_parameter_declarator
; alias: _ZNK24ast_parameter_declarator5printEv
; demangled: ast_parameter_declarator::print() const
; decoder-mode: thumb
0007dd30  d0 b5                                            push {r4, r6, r7, lr}
0007dd32  02 af                                            add r7, sp, #8
0007dd34  04 46                                            mov r4, r0
0007dd36  20 6a                                            ldr r0, [r4, #0x20]
0007dd38  01 68                                            ldr r1, [r0]
0007dd3a  09 68                                            ldr r1, [r1]
0007dd3c  88 47                                            blx r1
0007dd3e  61 6a                                            ldr r1, [r4, #0x24]
0007dd40  11 b1                                            cbz r1, #0x7dd48
0007dd42  05 a0                                            adr r0, #0x14
0007dd44  b4 f7 d0 ea                                      blx #0x322e8
0007dd48  a0 6a                                            ldr r0, [r4, #0x28]
0007dd4a  20 b1                                            cbz r0, #0x7dd56
0007dd4c  01 68                                            ldr r1, [r0]
0007dd4e  09 68                                            ldr r1, [r1]
0007dd50  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007dd54  08 47                                            bx r1
0007dd56  d0 bd                                            pop {r4, r6, r7, pc}
0007dd58  25 73                                            strb r5, [r4, #0xc]
0007dd5a  20 00                                            movs r0, r4
