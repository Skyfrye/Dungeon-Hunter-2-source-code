; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007f1038, declared_size=612, range_size=612, mode=arm
; class-group: b2PulleyJointDef
; alias: _ZN16b2PulleyJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_S4_S4_f
; demangled: b2PulleyJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&, b2Vec2 const&, b2Vec2 const&, b2Vec2 const&, float)
; decoder-mode: arm
007f1038  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f103c  00 40 a0 e1                                      mov r4, r0
007f1040  0c 20 84 e5                                      str r2, [r4, #0xc]
007f1044  08 10 84 e5                                      str r1, [r4, #8]
007f1048  03 b0 a0 e1                                      mov fp, r3
007f104c  00 30 93 e5                                      ldr r3, [r3]
007f1050  14 d0 4d e2                                      sub sp, sp, #0x14
007f1054  38 a0 9d e5                                      ldr sl, [sp, #0x38]
007f1058  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
007f105c  14 30 80 e5                                      str r3, [r0, #0x14]
007f1060  04 30 9b e5                                      ldr r3, [fp, #4]
007f1064  40 80 9d e5                                      ldr r8, [sp, #0x40]
007f1068  44 70 9d e5                                      ldr r7, [sp, #0x44]
007f106c  18 30 80 e5                                      str r3, [r0, #0x18]
007f1070  00 30 9a e5                                      ldr r3, [sl]
007f1074  01 60 a0 e1                                      mov r6, r1
007f1078  02 50 a0 e1                                      mov r5, r2
007f107c  1c 30 80 e5                                      str r3, [r0, #0x1c]
007f1080  04 30 9a e5                                      ldr r3, [sl, #4]
007f1084  20 30 80 e5                                      str r3, [r0, #0x20]
007f1088  04 10 91 e5                                      ldr r1, [r1, #4]
007f108c  00 00 99 e5                                      ldr r0, [sb]
007f1090  c5 74 ec eb                                      bl #0x30e3ac
007f1094  08 00 8d e5                                      str r0, [sp, #8]
007f1098  08 10 96 e5                                      ldr r1, [r6, #8]
007f109c  04 00 99 e5                                      ldr r0, [sb, #4]
007f10a0  c1 74 ec eb                                      bl #0x30e3ac
007f10a4  0c 00 8d e5                                      str r0, [sp, #0xc]
007f10a8  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f10ac  08 00 9d e5                                      ldr r0, [sp, #8]
007f10b0  2d 77 ec eb                                      bl #0x30ed6c
007f10b4  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f10b8  00 30 a0 e1                                      mov r3, r0
007f10bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f10c0  00 30 8d e5                                      str r3, [sp]
007f10c4  28 77 ec eb                                      bl #0x30ed6c
007f10c8  00 30 9d e5                                      ldr r3, [sp]
007f10cc  00 10 a0 e1                                      mov r1, r0
007f10d0  03 00 a0 e1                                      mov r0, r3
007f10d4  b2 76 ec eb                                      bl #0x30eba4
007f10d8  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f10dc  00 20 a0 e1                                      mov r2, r0
007f10e0  08 00 9d e5                                      ldr r0, [sp, #8]
007f10e4  04 20 8d e5                                      str r2, [sp, #4]
007f10e8  1f 77 ec eb                                      bl #0x30ed6c
007f10ec  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f10f0  00 30 a0 e1                                      mov r3, r0
007f10f4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f10f8  00 30 8d e5                                      str r3, [sp]
007f10fc  1a 77 ec eb                                      bl #0x30ed6c
007f1100  00 30 9d e5                                      ldr r3, [sp]
007f1104  00 10 a0 e1                                      mov r1, r0
007f1108  03 00 a0 e1                                      mov r0, r3
007f110c  a4 76 ec eb                                      bl #0x30eba4
007f1110  04 20 9d e5                                      ldr r2, [sp, #4]
007f1114  28 00 84 e5                                      str r0, [r4, #0x28]
007f1118  24 20 84 e5                                      str r2, [r4, #0x24]
007f111c  04 10 95 e5                                      ldr r1, [r5, #4]
007f1120  00 00 98 e5                                      ldr r0, [r8]
007f1124  a0 74 ec eb                                      bl #0x30e3ac
007f1128  08 10 95 e5                                      ldr r1, [r5, #8]
007f112c  00 60 a0 e1                                      mov r6, r0
007f1130  04 00 98 e5                                      ldr r0, [r8, #4]
007f1134  9c 74 ec eb                                      bl #0x30e3ac
007f1138  08 00 8d e5                                      str r0, [sp, #8]
007f113c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f1140  06 00 a0 e1                                      mov r0, r6
007f1144  08 77 ec eb                                      bl #0x30ed6c
007f1148  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f114c  00 30 a0 e1                                      mov r3, r0
007f1150  08 00 9d e5                                      ldr r0, [sp, #8]
007f1154  00 30 8d e5                                      str r3, [sp]
007f1158  03 77 ec eb                                      bl #0x30ed6c
007f115c  00 30 9d e5                                      ldr r3, [sp]
007f1160  00 10 a0 e1                                      mov r1, r0
007f1164  03 00 a0 e1                                      mov r0, r3
007f1168  8d 76 ec eb                                      bl #0x30eba4
007f116c  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f1170  00 30 a0 e1                                      mov r3, r0
007f1174  06 00 a0 e1                                      mov r0, r6
007f1178  00 30 8d e5                                      str r3, [sp]
007f117c  fa 76 ec eb                                      bl #0x30ed6c
007f1180  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f1184  00 60 a0 e1                                      mov r6, r0
007f1188  08 00 9d e5                                      ldr r0, [sp, #8]
007f118c  f6 76 ec eb                                      bl #0x30ed6c
007f1190  00 10 a0 e1                                      mov r1, r0
007f1194  06 00 a0 e1                                      mov r0, r6
007f1198  81 76 ec eb                                      bl #0x30eba4
007f119c  30 00 84 e5                                      str r0, [r4, #0x30]
007f11a0  00 30 9d e5                                      ldr r3, [sp]
007f11a4  2c 30 84 e5                                      str r3, [r4, #0x2c]
007f11a8  00 10 9b e5                                      ldr r1, [fp]
007f11ac  00 00 99 e5                                      ldr r0, [sb]
007f11b0  7d 74 ec eb                                      bl #0x30e3ac
007f11b4  04 10 9b e5                                      ldr r1, [fp, #4]
007f11b8  00 50 a0 e1                                      mov r5, r0
007f11bc  04 00 99 e5                                      ldr r0, [sb, #4]
007f11c0  79 74 ec eb                                      bl #0x30e3ac
007f11c4  05 10 a0 e1                                      mov r1, r5
007f11c8  00 60 a0 e1                                      mov r6, r0
007f11cc  05 00 a0 e1                                      mov r0, r5
007f11d0  e5 76 ec eb                                      bl #0x30ed6c
007f11d4  06 10 a0 e1                                      mov r1, r6
007f11d8  00 50 a0 e1                                      mov r5, r0
007f11dc  06 00 a0 e1                                      mov r0, r6
007f11e0  e1 76 ec eb                                      bl #0x30ed6c
007f11e4  00 10 a0 e1                                      mov r1, r0
007f11e8  05 00 a0 e1                                      mov r0, r5
007f11ec  6c 76 ec eb                                      bl #0x30eba4
007f11f0  cb 73 ec eb                                      bl #0x30e124
007f11f4  34 00 84 e5                                      str r0, [r4, #0x34]
007f11f8  00 10 9a e5                                      ldr r1, [sl]
007f11fc  00 00 98 e5                                      ldr r0, [r8]
007f1200  69 74 ec eb                                      bl #0x30e3ac
007f1204  04 10 9a e5                                      ldr r1, [sl, #4]
007f1208  00 50 a0 e1                                      mov r5, r0
007f120c  04 00 98 e5                                      ldr r0, [r8, #4]
007f1210  65 74 ec eb                                      bl #0x30e3ac
007f1214  05 10 a0 e1                                      mov r1, r5
007f1218  00 60 a0 e1                                      mov r6, r0
007f121c  05 00 a0 e1                                      mov r0, r5
007f1220  d1 76 ec eb                                      bl #0x30ed6c
007f1224  06 10 a0 e1                                      mov r1, r6
007f1228  00 50 a0 e1                                      mov r5, r0
007f122c  06 00 a0 e1                                      mov r0, r6
007f1230  cd 76 ec eb                                      bl #0x30ed6c
007f1234  00 10 a0 e1                                      mov r1, r0
007f1238  05 00 a0 e1                                      mov r0, r5
007f123c  58 76 ec eb                                      bl #0x30eba4
007f1240  b7 73 ec eb                                      bl #0x30e124
007f1244  44 70 84 e5                                      str r7, [r4, #0x44]
007f1248  00 10 a0 e1                                      mov r1, r0
007f124c  3c 00 84 e5                                      str r0, [r4, #0x3c]
007f1250  07 00 a0 e1                                      mov r0, r7
007f1254  c4 76 ec eb                                      bl #0x30ed6c
007f1258  34 10 94 e5                                      ldr r1, [r4, #0x34]
007f125c  50 76 ec eb                                      bl #0x30eba4
007f1260  03 11 a0 e3                                      mov r1, #0xc0000000
007f1264  00 50 a0 e1                                      mov r5, r0
007f1268  07 00 a0 e1                                      mov r0, r7
007f126c  be 76 ec eb                                      bl #0x30ed6c
007f1270  05 10 a0 e1                                      mov r1, r5
007f1274  4a 76 ec eb                                      bl #0x30eba4
007f1278  01 11 a0 e3                                      mov r1, #0x40000000
007f127c  38 00 84 e5                                      str r0, [r4, #0x38]
007f1280  05 00 a0 e1                                      mov r0, r5
007f1284  48 74 ec eb                                      bl #0x30e3ac
007f1288  07 10 a0 e1                                      mov r1, r7
007f128c  80 76 ec eb                                      bl #0x30ec94
007f1290  40 00 84 e5                                      str r0, [r4, #0x40]
007f1294  14 d0 8d e2                                      add sp, sp, #0x14
007f1298  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
