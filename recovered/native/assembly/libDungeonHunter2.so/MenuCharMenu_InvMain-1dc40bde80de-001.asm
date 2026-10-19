; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00452468, declared_size=936, range_size=936, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMain19RenderCharacterPaneERN7gameswf12render_stateEPv
; demangled: MenuCharMenu_InvMain::RenderCharacterPane(gameswf::render_state&, void*)
; decoder-mode: arm
00452468  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045246c  01 00 a0 e1                                      mov r0, r1
00452470  5c d0 4d e2                                      sub sp, sp, #0x5c
00452474  01 40 a0 e1                                      mov r4, r1
00452478  04 50 91 e5                                      ldr r5, [r1, #4]
0045247c  f2 3e ff eb                                      bl #0x42204c
00452480  78 13 9f e5                                      ldr r1, [pc, #0x378]
00452484  00 20 a0 e1                                      mov r2, r0
00452488  05 00 a0 e1                                      mov r0, r5
0045248c  01 10 8f e0                                      add r1, pc, r1
00452490  7b 59 0d eb                                      bl #0x7a8a84
00452494  68 53 9f e5                                      ldr r5, [pc, #0x368]
00452498  00 10 a0 e1                                      mov r1, r0
0045249c  30 00 8d e2                                      add r0, sp, #0x30
004524a0  75 11 ff eb                                      bl #0x416a7c
004524a4  5c 33 9f e5                                      ldr r3, [pc, #0x35c]
004524a8  05 50 8f e0                                      add r5, pc, r5
004524ac  04 00 94 e5                                      ldr r0, [r4, #4]
004524b0  03 60 95 e7                                      ldr r6, [r5, r3]
004524b4  10 30 96 e5                                      ldr r3, [r6, #0x10]
004524b8  10 80 93 e5                                      ldr r8, [r3, #0x10]
004524bc  cc 30 98 e5                                      ldr r3, [r8, #0xcc]
004524c0  04 30 13 e5                                      ldr r3, [r3, #-4]
004524c4  14 20 93 e5                                      ldr r2, [r3, #0x14]
004524c8  20 20 8d e5                                      str r2, [sp, #0x20]
004524cc  18 20 93 e5                                      ldr r2, [r3, #0x18]
004524d0  24 20 8d e5                                      str r2, [sp, #0x24]
004524d4  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
004524d8  28 20 8d e5                                      str r2, [sp, #0x28]
004524dc  20 30 93 e5                                      ldr r3, [r3, #0x20]
004524e0  2c 30 8d e5                                      str r3, [sp, #0x2c]
004524e4  f0 55 0d eb                                      bl #0x7a7cac
004524e8  12 10 ff eb                                      bl #0x416538
004524ec  00 70 a0 e1                                      mov r7, r0
004524f0  04 00 94 e5                                      ldr r0, [r4, #4]
004524f4  ec 55 0d eb                                      bl #0x7a7cac
004524f8  1e 10 ff eb                                      bl #0x416578
004524fc  07 10 a0 e1                                      mov r1, r7
00452500  00 40 a0 e1                                      mov r4, r0
00452504  30 00 9d e5                                      ldr r0, [sp, #0x30]
00452508  e1 f1 fa eb                                      bl #0x30ec94
0045250c  ee ef fa eb                                      bl #0x30e4cc
00452510  07 10 a0 e1                                      mov r1, r7
00452514  00 90 a0 e1                                      mov sb, r0
00452518  34 00 9d e5                                      ldr r0, [sp, #0x34]
0045251c  dc f1 fa eb                                      bl #0x30ec94
00452520  e9 ef fa eb                                      bl #0x30e4cc
00452524  04 10 a0 e1                                      mov r1, r4
00452528  00 70 a0 e1                                      mov r7, r0
0045252c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00452530  d7 f1 fa eb                                      bl #0x30ec94
00452534  e4 ef fa eb                                      bl #0x30e4cc
00452538  04 10 a0 e1                                      mov r1, r4
0045253c  00 a0 a0 e1                                      mov sl, r0
00452540  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00452544  d2 f1 fa eb                                      bl #0x30ec94
00452548  df ef fa eb                                      bl #0x30e4cc
0045254c  18 70 8d e5                                      str r7, [sp, #0x18]
00452550  1c 00 8d e5                                      str r0, [sp, #0x1c]
00452554  10 90 8d e5                                      str sb, [sp, #0x10]
00452558  14 a0 8d e5                                      str sl, [sp, #0x14]
0045255c  cc 30 98 e5                                      ldr r3, [r8, #0xcc]
00452560  10 10 8d e2                                      add r1, sp, #0x10
00452564  04 30 13 e5                                      ldr r3, [r3, #-4]
00452568  03 00 a0 e1                                      mov r0, r3
0045256c  00 30 93 e5                                      ldr r3, [r3]
00452570  0f e0 a0 e1                                      mov lr, pc
00452574  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00452578  10 30 9d e5                                      ldr r3, [sp, #0x10]
0045257c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00452580  00 00 63 e0                                      rsb r0, r3, r0
00452584  80 32 9f e5                                      ldr r3, [pc, #0x280]
00452588  03 40 95 e7                                      ldr r4, [r5, r3]
0045258c  f4 f0 fa eb                                      bl #0x30e964
00452590  14 30 9d e5                                      ldr r3, [sp, #0x14]
00452594  00 70 a0 e1                                      mov r7, r0
00452598  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0045259c  00 50 94 e5                                      ldr r5, [r4]
004525a0  00 00 63 e0                                      rsb r0, r3, r0
004525a4  ee f0 fa eb                                      bl #0x30e964
004525a8  00 10 a0 e1                                      mov r1, r0
004525ac  07 00 a0 e1                                      mov r0, r7
004525b0  b7 f1 fa eb                                      bl #0x30ec94
004525b4  00 30 95 e5                                      ldr r3, [r5]
004525b8  00 10 a0 e1                                      mov r1, r0
004525bc  05 00 a0 e1                                      mov r0, r5
004525c0  0f e0 a0 e1                                      mov lr, pc
004525c4  38 f1 93 e5                                      ldr pc, [r3, #0x138]
004525c8  10 30 96 e5                                      ldr r3, [r6, #0x10]
004525cc  00 10 94 e5                                      ldr r1, [r4]
004525d0  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
004525d4  b9 da 04 eb                                      bl #0x5890c0
004525d8  06 00 a0 e1                                      mov r0, r6
004525dc  ec 33 fb eb                                      bl #0x31f594
004525e0  00 10 a0 e3                                      mov r1, #0
004525e4  00 b0 a0 e1                                      mov fp, r0
004525e8  01 20 a0 e3                                      mov r2, #1
004525ec  40 00 96 e5                                      ldr r0, [r6, #0x40]
004525f0  a0 6f fc eb                                      bl #0x36e478
004525f4  60 56 90 e5                                      ldr r5, [r0, #0x660]
004525f8  00 00 55 e3                                      cmp r5, #0
004525fc  7d 00 00 0a                                      beq #0x4527f8
00452600  49 0e 85 e2                                      add r0, r5, #0x490
00452604  0c 00 80 e2                                      add r0, r0, #0xc
00452608  4b e2 fd eb                                      bl #0x3caf3c
0045260c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00452610  06 00 a0 e1                                      mov r0, r6
00452614  00 70 a0 e3                                      mov r7, #0
00452618  1c 40 93 e5                                      ldr r4, [r3, #0x1c]
0045261c  0d a0 a0 e1                                      mov sl, sp
00452620  00 30 94 e5                                      ldr r3, [r4]
00452624  60 90 93 e5                                      ldr sb, [r3, #0x60]
00452628  0f 34 fb eb                                      bl #0x31f66c
0045262c  2b ef fa eb                                      bl #0x30e2e0
00452630  00 20 a0 e3                                      mov r2, #0
00452634  00 10 a0 e1                                      mov r1, r0
00452638  04 00 a0 e1                                      mov r0, r4
0045263c  39 ff 2f e1                                      blx sb
00452640  d8 32 95 e5                                      ldr r3, [r5, #0x2d8]
00452644  54 02 94 e5                                      ldr r0, [r4, #0x254]
00452648  08 40 93 e5                                      ldr r4, [r3, #8]
0045264c  9e ef fa eb                                      bl #0x30e4cc
00452650  00 10 a0 e1                                      mov r1, r0
00452654  04 00 a0 e1                                      mov r0, r4
00452658  02 27 fc eb                                      bl #0x35c268
0045265c  00 30 94 e5                                      ldr r3, [r4]
00452660  04 00 a0 e1                                      mov r0, r4
00452664  0f e0 a0 e1                                      mov lr, pc
00452668  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0045266c  00 30 94 e5                                      ldr r3, [r4]
00452670  4c 10 8d e2                                      add r1, sp, #0x4c
00452674  04 00 a0 e1                                      mov r0, r4
00452678  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0045267c  4c 70 8d e5                                      str r7, [sp, #0x4c]
00452680  50 70 8d e5                                      str r7, [sp, #0x50]
00452684  54 70 8d e5                                      str r7, [sp, #0x54]
00452688  33 ff 2f e1                                      blx r3
0045268c  00 30 94 e5                                      ldr r3, [r4]
00452690  04 00 a0 e1                                      mov r0, r4
00452694  0f e0 a0 e1                                      mov lr, pc
00452698  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0045269c  48 70 8d e5                                      str r7, [sp, #0x48]
004526a0  40 70 8d e5                                      str r7, [sp, #0x40]
004526a4  44 70 8d e5                                      str r7, [sp, #0x44]
004526a8  00 30 94 e5                                      ldr r3, [r4]
004526ac  04 00 a0 e1                                      mov r0, r4
004526b0  0f e0 a0 e1                                      mov lr, pc
004526b4  98 f0 93 e5                                      ldr pc, [r3, #0x98]
004526b8  40 10 8d e2                                      add r1, sp, #0x40
004526bc  e5 81 ff eb                                      bl #0x432e58
004526c0  35 1a 0f e3                                      movw r1, #0xfa35
004526c4  40 00 9d e5                                      ldr r0, [sp, #0x40]
004526c8  8e 1c 43 e3                                      movt r1, #0x3c8e
004526cc  a6 f1 fa eb                                      bl #0x30ed6c
004526d0  35 1a 0f e3                                      movw r1, #0xfa35
004526d4  00 70 a0 e1                                      mov r7, r0
004526d8  8e 1c 43 e3                                      movt r1, #0x3c8e
004526dc  44 00 9d e5                                      ldr r0, [sp, #0x44]
004526e0  40 70 8d e5                                      str r7, [sp, #0x40]
004526e4  a0 f1 fa eb                                      bl #0x30ed6c
004526e8  35 1a 0f e3                                      movw r1, #0xfa35
004526ec  00 90 a0 e1                                      mov sb, r0
004526f0  8e 1c 43 e3                                      movt r1, #0x3c8e
004526f4  48 00 9d e5                                      ldr r0, [sp, #0x48]
004526f8  44 90 8d e5                                      str sb, [sp, #0x44]
004526fc  9a f1 fa eb                                      bl #0x30ed6c
00452700  48 00 8d e5                                      str r0, [sp, #0x48]
00452704  00 c0 94 e5                                      ldr ip, [r4]
00452708  09 20 a0 e1                                      mov r2, sb
0045270c  07 10 a0 e1                                      mov r1, r7
00452710  bf 34 a0 e3                                      mov r3, #0xbf000000
00452714  0d 00 a0 e1                                      mov r0, sp
00452718  9c 70 9c e5                                      ldr r7, [ip, #0x9c]
0045271c  ad 28 fc eb                                      bl #0x35c9d8
00452720  04 00 a0 e1                                      mov r0, r4
00452724  0d 10 a0 e1                                      mov r1, sp
00452728  37 ff 2f e1                                      blx r7
0045272c  00 30 94 e5                                      ldr r3, [r4]
00452730  04 00 a0 e1                                      mov r0, r4
00452734  01 10 a0 e3                                      mov r1, #1
00452738  0f e0 a0 e1                                      mov lr, pc
0045273c  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00452740  10 30 96 e5                                      ldr r3, [r6, #0x10]
00452744  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00452748  e4 20 93 e5                                      ldr r2, [r3, #0xe4]
0045274c  00 00 52 e3                                      cmp r2, #0
00452750  04 00 00 0a                                      beq #0x452768
00452754  03 00 a0 e1                                      mov r0, r3
00452758  04 10 a0 e1                                      mov r1, r4
0045275c  00 30 93 e5                                      ldr r3, [r3]
00452760  0f e0 a0 e1                                      mov lr, pc
00452764  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00452768  cc 30 98 e5                                      ldr r3, [r8, #0xcc]
0045276c  20 10 8d e2                                      add r1, sp, #0x20
00452770  04 30 13 e5                                      ldr r3, [r3, #-4]
00452774  03 00 a0 e1                                      mov r0, r3
00452778  00 30 93 e5                                      ldr r3, [r3]
0045277c  0f e0 a0 e1                                      mov lr, pc
00452780  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00452784  05 00 a0 e1                                      mov r0, r5
00452788  16 1e 85 e2                                      add r1, r5, #0x160
0045278c  01 20 a0 e3                                      mov r2, #1
00452790  87 05 fd eb                                      bl #0x393db4
00452794  e0 32 95 e5                                      ldr r3, [r5, #0x2e0]
00452798  00 00 53 e3                                      cmp r3, #0
0045279c  08 00 00 0a                                      beq #0x4527c4
004527a0  03 00 a0 e1                                      mov r0, r3
004527a4  00 30 93 e5                                      ldr r3, [r3]
004527a8  0f e0 a0 e1                                      mov lr, pc
004527ac  08 f0 93 e5                                      ldr pc, [r3, #8]
004527b0  e0 32 95 e5                                      ldr r3, [r5, #0x2e0]
004527b4  03 00 a0 e1                                      mov r0, r3
004527b8  00 30 93 e5                                      ldr r3, [r3]
004527bc  0f e0 a0 e1                                      mov lr, pc
004527c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004527c4  28 41 9b e5                                      ldr r4, [fp, #0x128]
004527c8  05 10 a0 e1                                      mov r1, r5
004527cc  00 20 a0 e3                                      mov r2, #0
004527d0  04 00 a0 e1                                      mov r0, r4
004527d4  7a fc fe eb                                      bl #0x4119c4
004527d8  04 00 a0 e1                                      mov r0, r4
004527dc  1e f3 fe eb                                      bl #0x40f45c
004527e0  04 00 a0 e1                                      mov r0, r4
004527e4  00 30 94 e5                                      ldr r3, [r4]
004527e8  0f e0 a0 e1                                      mov lr, pc
004527ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004527f0  d8 02 95 e5                                      ldr r0, [r5, #0x2d8]
004527f4  53 80 00 eb                                      bl #0x472948
004527f8  5c d0 8d e2                                      add sp, sp, #0x5c
004527fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00452800  ac 90 47 00 e8 25 54 00 f4 37 00 00 8c 17 00 00  .byte 0xac, 0x90, 0x47, 0x00, 0xe8, 0x25, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x8c, 0x17, 0x00, 0x00

; FUNCTION 0x00452810, declared_size=144, range_size=144, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMain19DestroyAvatarCameraEv
; demangled: MenuCharMenu_InvMain::DestroyAvatarCamera()
; decoder-mode: arm
00452810  70 40 2d e9                                      push {r4, r5, r6, lr}
00452814  78 40 9f e5                                      ldr r4, [pc, #0x78]
00452818  78 30 9f e5                                      ldr r3, [pc, #0x78]
0045281c  04 40 8f e0                                      add r4, pc, r4
00452820  03 50 94 e7                                      ldr r5, [r4, r3]
00452824  00 30 95 e5                                      ldr r3, [r5]
00452828  00 00 53 e3                                      cmp r3, #0
0045282c  17 00 00 0a                                      beq #0x452890
00452830  03 00 a0 e1                                      mov r0, r3
00452834  00 30 93 e5                                      ldr r3, [r3]
00452838  0f e0 a0 e1                                      mov lr, pc
0045283c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00452840  00 30 95 e5                                      ldr r3, [r5]
00452844  00 20 93 e5                                      ldr r2, [r3]
00452848  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0045284c  00 00 83 e0                                      add r0, r3, r0
00452850  4b 2b fb eb                                      bl #0x31d584
00452854  00 30 a0 e3                                      mov r3, #0
00452858  00 30 85 e5                                      str r3, [r5]
0045285c  8a 68 ff eb                                      bl #0x42ca8c
00452860  60 30 90 e5                                      ldr r3, [r0, #0x60]
00452864  00 00 53 e3                                      cmp r3, #0
00452868  08 00 00 0a                                      beq #0x452890
0045286c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00452870  03 30 94 e7                                      ldr r3, [r4, r3]
00452874  10 30 93 e5                                      ldr r3, [r3, #0x10]
00452878  1c 40 93 e5                                      ldr r4, [r3, #0x1c]
0045287c  82 68 ff eb                                      bl #0x42ca8c
00452880  60 10 90 e5                                      ldr r1, [r0, #0x60]
00452884  04 00 a0 e1                                      mov r0, r4
00452888  70 40 bd e8                                      pop {r4, r5, r6, lr}
0045288c  0b da 04 ea                                      b #0x5890c0
00452890  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00452894  74 22 54 00 8c 17 00 00 f4 37 00 00              .byte 0x74, 0x22, 0x54, 0x00, 0x8c, 0x17, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004528a0, declared_size=24, range_size=24, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMain4HideEv
; demangled: MenuCharMenu_InvMain::Hide()
; decoder-mode: arm
004528a0  10 40 2d e9                                      push {r4, lr}
004528a4  00 40 a0 e1                                      mov r4, r0
004528a8  d8 ff ff eb                                      bl #0x452810
004528ac  04 00 a0 e1                                      mov r0, r4
004528b0  10 40 bd e8                                      pop {r4, lr}
004528b4  8e 48 ff ea                                      b #0x424af4

; FUNCTION 0x004528d0, declared_size=588, range_size=588, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMain18CreateAvatarCameraEv
; demangled: MenuCharMenu_InvMain::CreateAvatarCamera()
; decoder-mode: arm
004528d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004528d4  34 42 9f e5                                      ldr r4, [pc, #0x234]
004528d8  34 52 9f e5                                      ldr r5, [pc, #0x234]
004528dc  30 d0 4d e2                                      sub sp, sp, #0x30
004528e0  04 40 8f e0                                      add r4, pc, r4
004528e4  05 30 94 e7                                      ldr r3, [r4, r5]
004528e8  00 30 93 e5                                      ldr r3, [r3]
004528ec  00 00 53 e3                                      cmp r3, #0
004528f0  01 00 00 0a                                      beq #0x4528fc
004528f4  30 d0 8d e2                                      add sp, sp, #0x30
004528f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004528fc  62 68 ff eb                                      bl #0x42ca8c
00452900  60 30 90 e5                                      ldr r3, [r0, #0x60]
00452904  00 00 53 e3                                      cmp r3, #0
00452908  78 00 00 0a                                      beq #0x452af0
0045290c  04 62 9f e5                                      ldr r6, [pc, #0x204]
00452910  43 24 a0 e3                                      mov r2, #0x43000000
00452914  31 c3 a0 e3                                      mov ip, #0xc4000000
00452918  00 30 a0 e3                                      mov r3, #0
0045291c  12 c7 8c e2                                      add ip, ip, #0x480000
00452920  12 27 82 e2                                      add r2, r2, #0x480000
00452924  00 10 a0 e3                                      mov r1, #0
00452928  e3 0f a0 e3                                      mov r0, #0x38c
0045292c  01 80 a0 e1                                      mov r8, r1
00452930  28 c0 8d e5                                      str ip, [sp, #0x28]
00452934  1c 30 8d e5                                      str r3, [sp, #0x1c]
00452938  20 20 8d e5                                      str r2, [sp, #0x20]
0045293c  24 30 8d e5                                      str r3, [sp, #0x24]
00452940  2c 20 8d e5                                      str r2, [sp, #0x2c]
00452944  18 30 8d e5                                      str r3, [sp, #0x18]
00452948  17 86 03 eb                                      bl #0x5341ac
0045294c  24 20 8d e2                                      add r2, sp, #0x24
00452950  18 30 8d e2                                      add r3, sp, #0x18
00452954  00 10 e0 e3                                      mvn r1, #0
00452958  00 70 a0 e1                                      mov r7, r0
0045295c  00 80 8d e5                                      str r8, [sp]
00452960  73 c3 04 eb                                      bl #0x583734
00452964  06 90 94 e7                                      ldr sb, [r4, r6]
00452968  05 a0 94 e7                                      ldr sl, [r4, r5]
0045296c  07 10 a0 e1                                      mov r1, r7
00452970  10 30 99 e5                                      ldr r3, [sb, #0x10]
00452974  00 70 8a e5                                      str r7, [sl]
00452978  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0045297c  04 30 93 e5                                      ldr r3, [r3, #4]
00452980  03 00 a0 e1                                      mov r0, r3
00452984  00 30 93 e5                                      ldr r3, [r3]
00452988  0f e0 a0 e1                                      mov lr, pc
0045298c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00452990  40 00 99 e5                                      ldr r0, [sb, #0x40]
00452994  08 10 a0 e1                                      mov r1, r8
00452998  01 20 a0 e3                                      mov r2, #1
0045299c  b5 6e fc eb                                      bl #0x36e478
004529a0  60 36 90 e5                                      ldr r3, [r0, #0x660]
004529a4  08 00 53 e1                                      cmp r3, r8
004529a8  08 00 00 0a                                      beq #0x4529d0
004529ac  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
004529b0  08 00 53 e1                                      cmp r3, r8
004529b4  05 00 00 0a                                      beq #0x4529d0
004529b8  08 30 93 e5                                      ldr r3, [r3, #8]
004529bc  00 10 9a e5                                      ldr r1, [sl]
004529c0  03 00 a0 e1                                      mov r0, r3
004529c4  00 30 93 e5                                      ldr r3, [r3]
004529c8  0f e0 a0 e1                                      mov lr, pc
004529cc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
004529d0  05 50 94 e7                                      ldr r5, [r4, r5]
004529d4  00 30 95 e5                                      ldr r3, [r5]
004529d8  00 20 93 e5                                      ldr r2, [r3]
004529dc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
004529e0  00 00 83 e0                                      add r0, r3, r0
004529e4  e6 2a fb eb                                      bl #0x31d584
004529e8  06 40 94 e7                                      ldr r4, [r4, r6]
004529ec  00 10 95 e5                                      ldr r1, [r5]
004529f0  10 30 94 e5                                      ldr r3, [r4, #0x10]
004529f4  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
004529f8  b0 d9 04 eb                                      bl #0x5890c0
004529fc  00 00 95 e5                                      ldr r0, [r5]
00452a00  fe c5 a0 e3                                      mov ip, #0x3f800000
00452a04  00 20 a0 e3                                      mov r2, #0
00452a08  00 30 90 e5                                      ldr r3, [r0]
00452a0c  0c 10 8d e2                                      add r1, sp, #0xc
00452a10  14 31 93 e5                                      ldr r3, [r3, #0x114]
00452a14  14 c0 8d e5                                      str ip, [sp, #0x14]
00452a18  10 20 8d e5                                      str r2, [sp, #0x10]
00452a1c  0c 20 8d e5                                      str r2, [sp, #0xc]
00452a20  33 ff 2f e1                                      blx r3
00452a24  00 30 95 e5                                      ldr r3, [r5]
00452a28  e9 18 07 e3                                      movw r1, #0x78e9
00452a2c  d5 1f 43 e3                                      movt r1, #0x3fd5
00452a30  03 00 a0 e1                                      mov r0, r3
00452a34  00 30 93 e5                                      ldr r3, [r3]
00452a38  0f e0 a0 e1                                      mov lr, pc
00452a3c  38 f1 93 e5                                      ldr pc, [r3, #0x138]
00452a40  00 30 95 e5                                      ldr r3, [r5]
00452a44  1a 1b 0f e3                                      movw r1, #0xfb1a
00452a48  0e 1f 43 e3                                      movt r1, #0x3f0e
00452a4c  03 00 a0 e1                                      mov r0, r3
00452a50  00 30 93 e5                                      ldr r3, [r3]
00452a54  0f e0 a0 e1                                      mov lr, pc
00452a58  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
00452a5c  00 30 95 e5                                      ldr r3, [r5]
00452a60  41 14 a0 e3                                      mov r1, #0x41000000
00452a64  02 16 81 e2                                      add r1, r1, #0x200000
00452a68  00 20 93 e5                                      ldr r2, [r3]
00452a6c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00452a70  02 30 83 e0                                      add r3, r3, r2
00452a74  04 20 93 e5                                      ldr r2, [r3, #4]
00452a78  01 20 82 e2                                      add r2, r2, #1
00452a7c  04 20 83 e5                                      str r2, [r3, #4]
00452a80  00 30 95 e5                                      ldr r3, [r5]
00452a84  03 00 a0 e1                                      mov r0, r3
00452a88  00 30 93 e5                                      ldr r3, [r3]
00452a8c  0f e0 a0 e1                                      mov lr, pc
00452a90  30 f1 93 e5                                      ldr pc, [r3, #0x130]
00452a94  00 30 95 e5                                      ldr r3, [r5]
00452a98  11 13 a0 e3                                      mov r1, #0x44000000
00452a9c  7a 18 81 e2                                      add r1, r1, #0x7a0000
00452aa0  03 00 a0 e1                                      mov r0, r3
00452aa4  00 30 93 e5                                      ldr r3, [r3]
00452aa8  0f e0 a0 e1                                      mov lr, pc
00452aac  34 f1 93 e5                                      ldr pc, [r3, #0x134]
00452ab0  40 00 94 e5                                      ldr r0, [r4, #0x40]
00452ab4  00 10 a0 e3                                      mov r1, #0
00452ab8  01 20 a0 e3                                      mov r2, #1
00452abc  6d 6e fc eb                                      bl #0x36e478
00452ac0  60 46 90 e5                                      ldr r4, [r0, #0x660]
00452ac4  00 00 54 e3                                      cmp r4, #0
00452ac8  89 ff ff 0a                                      beq #0x4528f4
00452acc  4f 4e 84 e2                                      add r4, r4, #0x4f0
00452ad0  0c 40 84 e2                                      add r4, r4, #0xc
00452ad4  04 00 a0 e1                                      mov r0, r4
00452ad8  44 b6 fd eb                                      bl #0x3c03f0
00452adc  00 10 50 e2                                      subs r1, r0, #0
00452ae0  83 ff ff 1a                                      bne #0x4528f4
00452ae4  04 00 a0 e1                                      mov r0, r4
00452ae8  c4 bb fd eb                                      bl #0x3c1a00
00452aec  80 ff ff ea                                      b #0x4528f4
00452af0  e5 67 ff eb                                      bl #0x42ca8c
00452af4  1c 60 9f e5                                      ldr r6, [pc, #0x1c]
00452af8  06 30 94 e7                                      ldr r3, [r4, r6]
00452afc  10 30 93 e5                                      ldr r3, [r3, #0x10]
00452b00  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00452b04  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
00452b08  60 30 80 e5                                      str r3, [r0, #0x60]
00452b0c  7f ff ff ea                                      b #0x452910
; mapping-symbol data/literal pool
00452b10  b0 21 54 00 8c 17 00 00 f4 37 00 00              .byte 0xb0, 0x21, 0x54, 0x00, 0x8c, 0x17, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00452b1c, declared_size=72, range_size=72, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMain4ShowEv
; demangled: MenuCharMenu_InvMain::Show()
; decoder-mode: arm
00452b1c  10 40 2d e9                                      push {r4, lr}
00452b20  30 c0 9f e5                                      ldr ip, [pc, #0x30]
00452b24  30 30 9f e5                                      ldr r3, [pc, #0x30]
00452b28  30 10 9f e5                                      ldr r1, [pc, #0x30]
00452b2c  0c c0 8f e0                                      add ip, pc, ip
00452b30  03 20 9c e7                                      ldr r2, [ip, r3]
00452b34  00 40 a0 e1                                      mov r4, r0
00452b38  00 30 a0 e1                                      mov r3, r0
00452b3c  01 10 8f e0                                      add r1, pc, r1
00452b40  04 00 90 e5                                      ldr r0, [r0, #4]
00452b44  a3 59 0d eb                                      bl #0x7a91d8
00452b48  60 ff ff eb                                      bl #0x4528d0
00452b4c  04 00 a0 e1                                      mov r0, r4
00452b50  10 40 bd e8                                      pop {r4, lr}
00452b54  3d 4a ff ea                                      b #0x425450
; mapping-symbol data/literal pool
00452b58  64 1f 54 00 e8 49 00 00 fc 89 47 00              .byte 0x64, 0x1f, 0x54, 0x00, 0xe8, 0x49, 0x00, 0x00, 0xfc, 0x89, 0x47, 0x00

; FUNCTION 0x00452b64, declared_size=104, range_size=104, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMainD1Ev
; demangled: MenuCharMenu_InvMain::~MenuCharMenu_InvMain()
; decoder-mode: arm
00452b64  54 30 9f e5                                      ldr r3, [pc, #0x54]
00452b68  54 20 9f e5                                      ldr r2, [pc, #0x54]
00452b6c  54 10 9f e5                                      ldr r1, [pc, #0x54]
00452b70  03 30 8f e0                                      add r3, pc, r3
00452b74  70 40 2d e9                                      push {r4, r5, r6, lr}
00452b78  02 20 93 e7                                      ldr r2, [r3, r2]
00452b7c  01 50 93 e7                                      ldr r5, [r3, r1]
00452b80  00 40 a0 e1                                      mov r4, r0
00452b84  08 20 82 e2                                      add r2, r2, #8
00452b88  00 20 80 e5                                      str r2, [r0]
00452b8c  00 20 95 e5                                      ldr r2, [r5]
00452b90  00 00 52 e3                                      cmp r2, #0
00452b94  05 00 00 0a                                      beq #0x452bb0
00452b98  00 30 92 e5                                      ldr r3, [r2]
00452b9c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00452ba0  00 00 82 e0                                      add r0, r2, r0
00452ba4  76 2a fb eb                                      bl #0x31d584
00452ba8  00 30 a0 e3                                      mov r3, #0
00452bac  00 30 85 e5                                      str r3, [r5]
00452bb0  04 00 a0 e1                                      mov r0, r4
00452bb4  6e 3f ff eb                                      bl #0x422974
00452bb8  04 00 a0 e1                                      mov r0, r4
00452bbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00452bc0  20 1f 54 00 5c 45 00 00 8c 17 00 00              .byte 0x20, 0x1f, 0x54, 0x00, 0x5c, 0x45, 0x00, 0x00, 0x8c, 0x17, 0x00, 0x00

; FUNCTION 0x00452bcc, declared_size=28, range_size=28, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMainD0Ev
; demangled: MenuCharMenu_InvMain::~MenuCharMenu_InvMain()
; decoder-mode: arm
00452bcc  10 40 2d e9                                      push {r4, lr}
00452bd0  00 40 a0 e1                                      mov r4, r0
00452bd4  e2 ff ff eb                                      bl #0x452b64
00452bd8  04 00 a0 e1                                      mov r0, r4
00452bdc  17 f6 fa eb                                      bl #0x310440
00452be0  04 00 a0 e1                                      mov r0, r4
00452be4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00452be8, declared_size=104, range_size=104, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMainD2Ev
; demangled: MenuCharMenu_InvMain::~MenuCharMenu_InvMain()
; decoder-mode: arm
00452be8  54 30 9f e5                                      ldr r3, [pc, #0x54]
00452bec  54 20 9f e5                                      ldr r2, [pc, #0x54]
00452bf0  54 10 9f e5                                      ldr r1, [pc, #0x54]
00452bf4  03 30 8f e0                                      add r3, pc, r3
00452bf8  70 40 2d e9                                      push {r4, r5, r6, lr}
00452bfc  02 20 93 e7                                      ldr r2, [r3, r2]
00452c00  01 50 93 e7                                      ldr r5, [r3, r1]
00452c04  00 40 a0 e1                                      mov r4, r0
00452c08  08 20 82 e2                                      add r2, r2, #8
00452c0c  00 20 80 e5                                      str r2, [r0]
00452c10  00 20 95 e5                                      ldr r2, [r5]
00452c14  00 00 52 e3                                      cmp r2, #0
00452c18  05 00 00 0a                                      beq #0x452c34
00452c1c  00 30 92 e5                                      ldr r3, [r2]
00452c20  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00452c24  00 00 82 e0                                      add r0, r2, r0
00452c28  55 2a fb eb                                      bl #0x31d584
00452c2c  00 30 a0 e3                                      mov r3, #0
00452c30  00 30 85 e5                                      str r3, [r5]
00452c34  04 00 a0 e1                                      mov r0, r4
00452c38  4d 3f ff eb                                      bl #0x422974
00452c3c  04 00 a0 e1                                      mov r0, r4
00452c40  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00452c44  9c 1e 54 00 5c 45 00 00 8c 17 00 00              .byte 0x9c, 0x1e, 0x54, 0x00, 0x5c, 0x45, 0x00, 0x00, 0x8c, 0x17, 0x00, 0x00

; FUNCTION 0x00452e00, declared_size=32, range_size=32, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMain4InitEv
; demangled: MenuCharMenu_InvMain::Init()
; decoder-mode: arm
00452e00  10 40 2d e9                                      push {r4, lr}
00452e04  00 40 a0 e1                                      mov r4, r0
00452e08  1f 67 ff eb                                      bl #0x42ca8c
00452e0c  04 10 a0 e1                                      mov r1, r4
00452e10  1f 70 ff eb                                      bl #0x42ee94
00452e14  d8 ff ff eb                                      bl #0x452d7c
00452e18  10 40 bd e8                                      pop {r4, lr}
00452e1c  ac ff ff ea                                      b #0x452cd4

; FUNCTION 0x00452e20, declared_size=72, range_size=72, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMainC1Ev
; demangled: MenuCharMenu_InvMain::MenuCharMenu_InvMain()
; decoder-mode: arm
00452e20  34 10 9f e5                                      ldr r1, [pc, #0x34]
00452e24  70 40 2d e9                                      push {r4, r5, r6, lr}
00452e28  01 10 8f e0                                      add r1, pc, r1
00452e2c  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
00452e30  00 50 a0 e1                                      mov r5, r0
00452e34  f1 50 ff eb                                      bl #0x427200
00452e38  24 30 9f e5                                      ldr r3, [pc, #0x24]
00452e3c  04 40 8f e0                                      add r4, pc, r4
00452e40  05 00 a0 e1                                      mov r0, r5
00452e44  03 30 94 e7                                      ldr r3, [r4, r3]
00452e48  08 30 83 e2                                      add r3, r3, #8
00452e4c  00 30 85 e5                                      str r3, [r5]
00452e50  ea ff ff eb                                      bl #0x452e00
00452e54  05 00 a0 e1                                      mov r0, r5
00452e58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00452e5c  18 8c 47 00 54 1c 54 00 5c 45 00 00              .byte 0x18, 0x8c, 0x47, 0x00, 0x54, 0x1c, 0x54, 0x00, 0x5c, 0x45, 0x00, 0x00

; FUNCTION 0x00452e68, declared_size=72, range_size=72, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMainC2Ev
; demangled: MenuCharMenu_InvMain::MenuCharMenu_InvMain()
; decoder-mode: arm
00452e68  34 10 9f e5                                      ldr r1, [pc, #0x34]
00452e6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00452e70  01 10 8f e0                                      add r1, pc, r1
00452e74  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
00452e78  00 50 a0 e1                                      mov r5, r0
00452e7c  df 50 ff eb                                      bl #0x427200
00452e80  24 30 9f e5                                      ldr r3, [pc, #0x24]
00452e84  04 40 8f e0                                      add r4, pc, r4
00452e88  05 00 a0 e1                                      mov r0, r5
00452e8c  03 30 94 e7                                      ldr r3, [r4, r3]
00452e90  08 30 83 e2                                      add r3, r3, #8
00452e94  00 30 85 e5                                      str r3, [r5]
00452e98  d8 ff ff eb                                      bl #0x452e00
00452e9c  05 00 a0 e1                                      mov r0, r5
00452ea0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00452ea4  d0 8b 47 00 0c 1c 54 00 5c 45 00 00              .byte 0xd0, 0x8b, 0x47, 0x00, 0x0c, 0x1c, 0x54, 0x00, 0x5c, 0x45, 0x00, 0x00

; FUNCTION 0x00452eb0, declared_size=136, range_size=136, mode=arm
; class-group: MenuCharMenu_InvMain
; alias: _ZN20MenuCharMenu_InvMain11GetInstanceEv
; demangled: MenuCharMenu_InvMain::GetInstance()
; decoder-mode: arm
00452eb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00452eb4  68 50 9f e5                                      ldr r5, [pc, #0x68]
00452eb8  68 40 9f e5                                      ldr r4, [pc, #0x68]
00452ebc  05 50 8f e0                                      add r5, pc, r5
00452ec0  c8 30 95 e5                                      ldr r3, [r5, #0xc8]
00452ec4  04 40 8f e0                                      add r4, pc, r4
00452ec8  01 00 13 e3                                      tst r3, #1
00452ecc  03 00 00 0a                                      beq #0x452ee0
00452ed0  54 00 9f e5                                      ldr r0, [pc, #0x54]
00452ed4  00 00 8f e0                                      add r0, pc, r0
00452ed8  cc 00 80 e2                                      add r0, r0, #0xcc
00452edc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00452ee0  c8 60 85 e2                                      add r6, r5, #0xc8
00452ee4  06 00 a0 e1                                      mov r0, r6
00452ee8  1f ee fa eb                                      bl #0x30e76c
00452eec  00 00 50 e3                                      cmp r0, #0
00452ef0  f6 ff ff 0a                                      beq #0x452ed0
00452ef4  cc 50 85 e2                                      add r5, r5, #0xcc
00452ef8  05 00 a0 e1                                      mov r0, r5
00452efc  c7 ff ff eb                                      bl #0x452e20
00452f00  06 00 a0 e1                                      mov r0, r6
00452f04  cc ee fa eb                                      bl #0x30ea3c
00452f08  20 30 9f e5                                      ldr r3, [pc, #0x20]
00452f0c  05 00 a0 e1                                      mov r0, r5
00452f10  03 10 94 e7                                      ldr r1, [r4, r3]
00452f14  18 30 9f e5                                      ldr r3, [pc, #0x18]
00452f18  03 20 94 e7                                      ldr r2, [r4, r3]
00452f1c  f8 ec fa eb                                      bl #0x30e304
00452f20  ea ff ff ea                                      b #0x452ed0
; mapping-symbol data/literal pool
00452f24  58 2d 55 00 cc 1b 54 00 40 2d 55 00 90 23 00 00  .byte 0x58, 0x2d, 0x55, 0x00, 0xcc, 0x1b, 0x54, 0x00, 0x40, 0x2d, 0x55, 0x00, 0x90, 0x23, 0x00, 0x00
00452f34  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00
