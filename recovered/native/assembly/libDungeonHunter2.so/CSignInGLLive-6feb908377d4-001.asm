; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00824204, declared_size=24, range_size=24, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive10InitializeEv
; demangled: CSignInGLLive::Initialize()
; decoder-mode: arm
00824204  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
00824208  00 00 53 e3                                      cmp r3, #0
0082420c  01 30 a0 03                                      moveq r3, #1
00824210  10 30 c0 05                                      strbeq r3, [r0, #0x10]
00824214  00 00 a0 e3                                      mov r0, #0
00824218  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082421c, declared_size=8, range_size=8, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive6SignInEv
; demangled: CSignInGLLive::SignIn()
; decoder-mode: arm
0082421c  00 00 a0 e3                                      mov r0, #0
00824220  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824224, declared_size=84, range_size=84, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive11CancelLoginEv
; demangled: CSignInGLLive::CancelLogin()
; decoder-mode: arm
00824224  10 40 2d e9                                      push {r4, lr}
00824228  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
0082422c  00 40 a0 e1                                      mov r4, r0
00824230  00 00 53 e3                                      cmp r3, #0
00824234  04 00 00 0a                                      beq #0x82424c
00824238  00 30 90 e5                                      ldr r3, [r0]
0082423c  0f e0 a0 e1                                      mov lr, pc
00824240  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00824244  00 30 a0 e3                                      mov r3, #0
00824248  11 30 c4 e5                                      strb r3, [r4, #0x11]
0082424c  00 30 a0 e3                                      mov r3, #0
00824250  28 30 c4 e5                                      strb r3, [r4, #0x28]
00824254  14 00 84 e2                                      add r0, r4, #0x14
00824258  14 30 94 e5                                      ldr r3, [r4, #0x14]
0082425c  0f e0 a0 e1                                      mov lr, pc
00824260  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00824264  2c 00 84 e2                                      add r0, r4, #0x2c
00824268  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0082426c  0f e0 a0 e1                                      mov lr, pc
00824270  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00824274  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00824278, declared_size=4, range_size=4, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive7DestroyEv
; demangled: CSignInGLLive::Destroy()
; decoder-mode: arm
00824278  aa d8 ff ea                                      b #0x81a528

; FUNCTION 0x0082427c, declared_size=56, range_size=56, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive9TerminateEv
; demangled: CSignInGLLive::Terminate()
; decoder-mode: arm
0082427c  10 40 2d e9                                      push {r4, lr}
00824280  00 40 a0 e1                                      mov r4, r0
00824284  9c d8 ff eb                                      bl #0x81a4fc
00824288  00 30 a0 e3                                      mov r3, #0
0082428c  28 30 c4 e5                                      strb r3, [r4, #0x28]
00824290  14 00 84 e2                                      add r0, r4, #0x14
00824294  14 30 94 e5                                      ldr r3, [r4, #0x14]
00824298  0f e0 a0 e1                                      mov lr, pc
0082429c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008242a0  2c 00 84 e2                                      add r0, r4, #0x2c
008242a4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
008242a8  0f e0 a0 e1                                      mov lr, pc
008242ac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008242b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008242b4, declared_size=244, range_size=244, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive10LoginLobbyEv
; demangled: CSignInGLLive::LoginLobby()
; decoder-mode: arm
008242b4  70 40 2d e9                                      push {r4, r5, r6, lr}
008242b8  10 d0 4d e2                                      sub sp, sp, #0x10
008242bc  53 e0 ff eb                                      bl #0x81c410
008242c0  52 e0 ff eb                                      bl #0x81c410
008242c4  05 30 d0 e5                                      ldrb r3, [r0, #5]
008242c8  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
008242cc  00 00 53 e3                                      cmp r3, #0
008242d0  04 40 8f e0                                      add r4, pc, r4
008242d4  01 00 00 1a                                      bne #0x8242e0
008242d8  10 d0 8d e2                                      add sp, sp, #0x10
008242dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
008242e0  29 73 ff eb                                      bl #0x800f8c
008242e4  e8 37 06 e3                                      movw r3, #0x67e8
008242e8  03 30 d0 e7                                      ldrb r3, [r0, r3]
008242ec  00 00 53 e3                                      cmp r3, #0
008242f0  12 00 00 1a                                      bne #0x824340
008242f4  20 eb ff eb                                      bl #0x81ef7c
008242f8  00 50 a0 e1                                      mov r5, r0
008242fc  b9 e0 ff eb                                      bl #0x81c5e8
00824300  80 22 00 eb                                      bl #0x82cd08
00824304  00 60 a0 e1                                      mov r6, r0
00824308  b6 e0 ff eb                                      bl #0x81c5e8
0082430c  7f 22 00 eb                                      bl #0x82cd10
00824310  00 40 a0 e1                                      mov r4, r0
00824314  b3 e0 ff eb                                      bl #0x81c5e8
00824318  7c 22 00 eb                                      bl #0x82cd10
0082431c  cc a6 eb eb                                      bl #0x30de54
00824320  01 c0 a0 e3                                      mov ip, #1
00824324  00 30 a0 e1                                      mov r3, r0
00824328  06 10 a0 e1                                      mov r1, r6
0082432c  05 00 a0 e1                                      mov r0, r5
00824330  04 20 a0 e1                                      mov r2, r4
00824334  00 c0 8d e5                                      str ip, [sp]
00824338  7a 51 00 eb                                      bl #0x838928
0082433c  e5 ff ff ea                                      b #0x8242d8
00824340  0d eb ff eb                                      bl #0x81ef7c
00824344  00 60 a0 e1                                      mov r6, r0
00824348  0f 73 ff eb                                      bl #0x800f8c
0082434c  8e df ff eb                                      bl #0x81c18c
00824350  48 30 9f e5                                      ldr r3, [pc, #0x48]
00824354  00 50 a0 e1                                      mov r5, r0
00824358  03 30 94 e7                                      ldr r3, [r4, r3]
0082435c  04 40 93 e5                                      ldr r4, [r3, #4]
00824360  04 00 a0 e1                                      mov r0, r4
00824364  ba a6 eb eb                                      bl #0x30de54
00824368  34 c0 9f e5                                      ldr ip, [pc, #0x34]
0082436c  01 e0 a0 e3                                      mov lr, #1
00824370  00 30 a0 e1                                      mov r3, r0
00824374  0c c0 8f e0                                      add ip, pc, ip
00824378  06 00 a0 e1                                      mov r0, r6
0082437c  05 10 a0 e1                                      mov r1, r5
00824380  04 20 a0 e1                                      mov r2, r4
00824384  04 e0 8d e5                                      str lr, [sp, #4]
00824388  0c c0 8d e5                                      str ip, [sp, #0xc]
0082438c  00 e0 8d e5                                      str lr, [sp]
00824390  08 40 8d e5                                      str r4, [sp, #8]
00824394  3d 51 00 eb                                      bl #0x838890
00824398  ce ff ff ea                                      b #0x8242d8
; mapping-symbol data/literal pool
0082439c  c0 07 17 00 94 0d 00 00 ec 7f 0e 00              .byte 0xc0, 0x07, 0x17, 0x00, 0x94, 0x0d, 0x00, 0x00, 0xec, 0x7f, 0x0e, 0x00

; FUNCTION 0x008243a8, declared_size=52, range_size=52, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive7SignOutEv
; demangled: CSignInGLLive::SignOut()
; decoder-mode: arm
008243a8  10 40 2d e9                                      push {r4, lr}
008243ac  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
008243b0  00 40 a0 e1                                      mov r4, r0
008243b4  00 00 53 e3                                      cmp r3, #0
008243b8  01 00 00 0a                                      beq #0x8243c4
008243bc  89 e0 ff eb                                      bl #0x81c5e8
008243c0  7e 3d 00 eb                                      bl #0x8339c0
008243c4  00 20 a0 e3                                      mov r2, #0
008243c8  14 00 84 e2                                      add r0, r4, #0x14
008243cc  04 10 a0 e3                                      mov r1, #4
008243d0  02 30 a0 e1                                      mov r3, r2
008243d4  10 40 bd e8                                      pop {r4, lr}
008243d8  89 67 ff ea                                      b #0x7fe204

; FUNCTION 0x008243dc, declared_size=160, range_size=160, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive6SignInER18CSignInCredentials
; demangled: CSignInGLLive::SignIn(CSignInCredentials&)
; decoder-mode: arm
008243dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008243e0  10 60 d0 e5                                      ldrb r6, [r0, #0x10]
008243e4  10 d0 4d e2                                      sub sp, sp, #0x10
008243e8  00 40 a0 e1                                      mov r4, r0
008243ec  00 00 56 e3                                      cmp r6, #0
008243f0  01 50 a0 e1                                      mov r5, r1
008243f4  1c 00 00 0a                                      beq #0x82446c
008243f8  7a e0 ff eb                                      bl #0x81c5e8
008243fc  74 c0 9f e5                                      ldr ip, [pc, #0x74]
00824400  06 40 95 e8                                      ldm r5, {r1, r2, lr}
00824404  01 60 a0 e3                                      mov r6, #1
00824408  0c c0 8f e0                                      add ip, pc, ip
0082440c  00 30 a0 e3                                      mov r3, #0
00824410  04 e0 8d e5                                      str lr, [sp, #4]
00824414  08 c0 8d e5                                      str ip, [sp, #8]
00824418  00 60 8d e5                                      str r6, [sp]
0082441c  0c 60 8d e5                                      str r6, [sp, #0xc]
00824420  25 3e 00 eb                                      bl #0x833cbc
00824424  05 10 a0 e1                                      mov r1, r5
00824428  04 30 91 e4                                      ldr r3, [r1], #4
0082442c  08 c0 84 e2                                      add ip, r4, #8
00824430  00 20 a0 e3                                      mov r2, #0
00824434  04 30 84 e5                                      str r3, [r4, #4]
00824438  04 e0 95 e5                                      ldr lr, [r5, #4]
0082443c  02 30 a0 e1                                      mov r3, r2
00824440  14 00 84 e2                                      add r0, r4, #0x14
00824444  04 e0 8c e4                                      str lr, [ip], #4
00824448  04 e0 91 e5                                      ldr lr, [r1, #4]
0082444c  06 10 a0 e1                                      mov r1, r6
00824450  00 e0 8c e5                                      str lr, [ip]
00824454  6a 67 ff eb                                      bl #0x7fe204
00824458  00 20 a0 e3                                      mov r2, #0
0082445c  2c 00 84 e2                                      add r0, r4, #0x2c
00824460  06 10 a0 e1                                      mov r1, r6
00824464  02 30 a0 e1                                      mov r3, r2
00824468  65 67 ff eb                                      bl #0x7fe204
0082446c  06 00 a0 e1                                      mov r0, r6
00824470  10 d0 8d e2                                      add sp, sp, #0x10
00824474  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00824478  70 8a 0b 00                                      .byte 0x70, 0x8a, 0x0b, 0x00

; FUNCTION 0x0082447c, declared_size=568, range_size=568, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLive6UpdateEv
; demangled: CSignInGLLive::Update()
; decoder-mode: arm
0082447c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00824480  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
00824484  20 42 9f e5                                      ldr r4, [pc, #0x220]
00824488  00 50 a0 e1                                      mov r5, r0
0082448c  00 00 53 e3                                      cmp r3, #0
00824490  04 40 8f e0                                      add r4, pc, r4
00824494  00 00 00 1a                                      bne #0x82449c
00824498  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0082449c  3d e0 ff eb                                      bl #0x81c598
008244a0  04 30 d0 e5                                      ldrb r3, [r0, #4]
008244a4  00 00 53 e3                                      cmp r3, #0
008244a8  65 00 00 1a                                      bne #0x824644
008244ac  28 30 d5 e5                                      ldrb r3, [r5, #0x28]
008244b0  00 00 53 e3                                      cmp r3, #0
008244b4  5d 00 00 1a                                      bne #0x824630
008244b8  2c 60 85 e2                                      add r6, r5, #0x2c
008244bc  06 00 a0 e1                                      mov r0, r6
008244c0  01 10 a0 e3                                      mov r1, #1
008244c4  00 20 a0 e3                                      mov r2, #0
008244c8  ca 67 ff eb                                      bl #0x7fe3f8
008244cc  00 00 50 e3                                      cmp r0, #0
008244d0  47 00 00 1a                                      bne #0x8245f4
008244d4  06 00 a0 e1                                      mov r0, r6
008244d8  02 10 a0 e3                                      mov r1, #2
008244dc  00 20 a0 e3                                      mov r2, #0
008244e0  c4 67 ff eb                                      bl #0x7fe3f8
008244e4  00 00 50 e3                                      cmp r0, #0
008244e8  2c 00 00 1a                                      bne #0x8245a0
008244ec  06 00 a0 e1                                      mov r0, r6
008244f0  04 10 a0 e3                                      mov r1, #4
008244f4  00 20 a0 e3                                      mov r2, #0
008244f8  be 67 ff eb                                      bl #0x7fe3f8
008244fc  00 00 50 e3                                      cmp r0, #0
00824500  17 00 00 1a                                      bne #0x824564
00824504  06 00 a0 e1                                      mov r0, r6
00824508  06 10 a0 e3                                      mov r1, #6
0082450c  00 20 a0 e3                                      mov r2, #0
00824510  b8 67 ff eb                                      bl #0x7fe3f8
00824514  00 00 50 e3                                      cmp r0, #0
00824518  de ff ff 0a                                      beq #0x824498
0082451c  96 ea ff eb                                      bl #0x81ef7c
00824520  60 30 d0 e5                                      ldrb r3, [r0, #0x60]
00824524  01 00 53 e3                                      cmp r3, #1
00824528  da ff ff 9a                                      bls #0x824498
0082452c  06 00 a0 e1                                      mov r0, r6
00824530  06 10 a0 e3                                      mov r1, #6
00824534  ad 67 ff eb                                      bl #0x7fe3f0
00824538  00 20 a0 e3                                      mov r2, #0
0082453c  02 30 a0 e1                                      mov r3, r2
00824540  02 10 a0 e3                                      mov r1, #2
00824544  14 00 85 e2                                      add r0, r5, #0x14
00824548  2d 67 ff eb                                      bl #0x7fe204
0082454c  01 30 a0 e3                                      mov r3, #1
00824550  11 30 c5 e5                                      strb r3, [r5, #0x11]
00824554  8c 72 ff eb                                      bl #0x800f8c
00824558  02 10 a0 e3                                      mov r1, #2
0082455c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00824560  04 eb ff ea                                      b #0x81f178
00824564  a9 df ff eb                                      bl #0x81c410
00824568  05 30 d0 e5                                      ldrb r3, [r0, #5]
0082456c  00 00 53 e3                                      cmp r3, #0
00824570  e3 ff ff 0a                                      beq #0x824504
00824574  04 10 a0 e3                                      mov r1, #4
00824578  06 00 a0 e1                                      mov r0, r6
0082457c  9b 67 ff eb                                      bl #0x7fe3f0
00824580  05 00 a0 e1                                      mov r0, r5
00824584  4a ff ff eb                                      bl #0x8242b4
00824588  00 20 a0 e3                                      mov r2, #0
0082458c  06 00 a0 e1                                      mov r0, r6
00824590  06 10 a0 e3                                      mov r1, #6
00824594  02 30 a0 e1                                      mov r3, r2
00824598  19 67 ff eb                                      bl #0x7fe204
0082459c  d8 ff ff ea                                      b #0x824504
008245a0  fc df ff eb                                      bl #0x81c598
008245a4  d6 30 d0 e1                                      ldrsb r3, [r0, #6]
008245a8  00 00 53 e3                                      cmp r3, #0
008245ac  ce ff ff 0a                                      beq #0x8244ec
008245b0  01 30 a0 e3                                      mov r3, #1
008245b4  28 30 c5 e5                                      strb r3, [r5, #0x28]
008245b8  02 10 a0 e3                                      mov r1, #2
008245bc  06 00 a0 e1                                      mov r0, r6
008245c0  8a 67 ff eb                                      bl #0x7fe3f0
008245c4  6c ea ff eb                                      bl #0x81ef7c
008245c8  00 30 90 e5                                      ldr r3, [r0]
008245cc  0f e0 a0 e1                                      mov lr, pc
008245d0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008245d4  00 20 a0 e3                                      mov r2, #0
008245d8  04 10 a0 e3                                      mov r1, #4
008245dc  02 30 a0 e1                                      mov r3, r2
008245e0  06 00 a0 e1                                      mov r0, r6
008245e4  06 67 ff eb                                      bl #0x7fe204
008245e8  fe df ff eb                                      bl #0x81c5e8
008245ec  c7 21 00 eb                                      bl #0x82cd10
008245f0  bd ff ff ea                                      b #0x8244ec
008245f4  e7 df ff eb                                      bl #0x81c598
008245f8  05 70 d0 e5                                      ldrb r7, [r0, #5]
008245fc  00 00 57 e3                                      cmp r7, #0
00824600  14 00 00 0a                                      beq #0x824658
00824604  01 10 a0 e3                                      mov r1, #1
00824608  06 00 a0 e1                                      mov r0, r6
0082460c  77 67 ff eb                                      bl #0x7fe3f0
00824610  f4 df ff eb                                      bl #0x81c5e8
00824614  c3 3b 00 eb                                      bl #0x833528
00824618  00 20 a0 e3                                      mov r2, #0
0082461c  06 00 a0 e1                                      mov r0, r6
00824620  02 10 a0 e3                                      mov r1, #2
00824624  02 30 a0 e1                                      mov r3, r2
00824628  f5 66 ff eb                                      bl #0x7fe204
0082462c  a8 ff ff ea                                      b #0x8244d4
00824630  51 ea ff eb                                      bl #0x81ef7c
00824634  00 30 90 e5                                      ldr r3, [r0]
00824638  0f e0 a0 e1                                      mov lr, pc
0082463c  08 f0 93 e5                                      ldr pc, [r3, #8]
00824640  9c ff ff ea                                      b #0x8244b8
00824644  e7 df ff eb                                      bl #0x81c5e8
00824648  00 30 90 e5                                      ldr r3, [r0]
0082464c  0f e0 a0 e1                                      mov lr, pc
00824650  08 f0 93 e5                                      ldr pc, [r3, #8]
00824654  94 ff ff ea                                      b #0x8244ac
00824658  4b 72 ff eb                                      bl #0x800f8c
0082465c  e8 37 06 e3                                      movw r3, #0x67e8
00824660  03 30 d0 e7                                      ldrb r3, [r0, r3]
00824664  00 00 53 e3                                      cmp r3, #0
00824668  99 ff ff 0a                                      beq #0x8244d4
0082466c  01 10 a0 e3                                      mov r1, #1
00824670  06 00 a0 e1                                      mov r0, r6
00824674  5d 67 ff eb                                      bl #0x7fe3f0
00824678  da df ff eb                                      bl #0x81c5e8
0082467c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00824680  07 20 a0 e1                                      mov r2, r7
00824684  07 30 a0 e1                                      mov r3, r7
00824688  01 10 94 e7                                      ldr r1, [r4, r1]
0082468c  04 10 91 e5                                      ldr r1, [r1, #4]
00824690  d5 3b 00 eb                                      bl #0x8335ec
00824694  06 00 a0 e1                                      mov r0, r6
00824698  07 20 a0 e1                                      mov r2, r7
0082469c  02 10 a0 e3                                      mov r1, #2
008246a0  07 30 a0 e1                                      mov r3, r7
008246a4  d6 66 ff eb                                      bl #0x7fe204
008246a8  89 ff ff ea                                      b #0x8244d4
; mapping-symbol data/literal pool
008246ac  00 06 17 00 94 0d 00 00                          .byte 0x00, 0x06, 0x17, 0x00, 0x94, 0x0d, 0x00, 0x00

; FUNCTION 0x008246b8, declared_size=124, range_size=124, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLiveC1Ev
; demangled: CSignInGLLive::CSignInGLLive()
; decoder-mode: arm
008246b8  70 40 2d e9                                      push {r4, r5, r6, lr}
008246bc  60 50 9f e5                                      ldr r5, [pc, #0x60]
008246c0  00 40 a0 e1                                      mov r4, r0
008246c4  d4 d7 ff eb                                      bl #0x81a61c
008246c8  58 20 9f e5                                      ldr r2, [pc, #0x58]
008246cc  58 30 9f e5                                      ldr r3, [pc, #0x58]
008246d0  05 50 8f e0                                      add r5, pc, r5
008246d4  02 20 95 e7                                      ldr r2, [r5, r2]
008246d8  03 30 95 e7                                      ldr r3, [r5, r3]
008246dc  00 60 a0 e3                                      mov r6, #0
008246e0  08 20 82 e2                                      add r2, r2, #8
008246e4  08 30 83 e2                                      add r3, r3, #8
008246e8  00 20 84 e5                                      str r2, [r4]
008246ec  2c 30 84 e5                                      str r3, [r4, #0x2c]
008246f0  28 60 c4 e5                                      strb r6, [r4, #0x28]
008246f4  30 00 84 e2                                      add r0, r4, #0x30
008246f8  26 a7 ff eb                                      bl #0x80e398
008246fc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00824700  34 20 84 e2                                      add r2, r4, #0x34
00824704  38 20 84 e5                                      str r2, [r4, #0x38]
00824708  03 30 95 e7                                      ldr r3, [r5, r3]
0082470c  3c 60 84 e5                                      str r6, [r4, #0x3c]
00824710  34 20 84 e5                                      str r2, [r4, #0x34]
00824714  08 30 83 e2                                      add r3, r3, #8
00824718  2c 30 84 e5                                      str r3, [r4, #0x2c]
0082471c  04 00 a0 e1                                      mov r0, r4
00824720  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00824724  c0 03 17 00 48 28 00 00 4c 0a 00 00 6c 19 00 00  .byte 0xc0, 0x03, 0x17, 0x00, 0x48, 0x28, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0x6c, 0x19, 0x00, 0x00

; FUNCTION 0x00824734, declared_size=124, range_size=124, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLiveC2Ev
; demangled: CSignInGLLive::CSignInGLLive()
; decoder-mode: arm
00824734  70 40 2d e9                                      push {r4, r5, r6, lr}
00824738  60 50 9f e5                                      ldr r5, [pc, #0x60]
0082473c  00 40 a0 e1                                      mov r4, r0
00824740  b5 d7 ff eb                                      bl #0x81a61c
00824744  58 20 9f e5                                      ldr r2, [pc, #0x58]
00824748  58 30 9f e5                                      ldr r3, [pc, #0x58]
0082474c  05 50 8f e0                                      add r5, pc, r5
00824750  02 20 95 e7                                      ldr r2, [r5, r2]
00824754  03 30 95 e7                                      ldr r3, [r5, r3]
00824758  00 60 a0 e3                                      mov r6, #0
0082475c  08 20 82 e2                                      add r2, r2, #8
00824760  08 30 83 e2                                      add r3, r3, #8
00824764  00 20 84 e5                                      str r2, [r4]
00824768  2c 30 84 e5                                      str r3, [r4, #0x2c]
0082476c  28 60 c4 e5                                      strb r6, [r4, #0x28]
00824770  30 00 84 e2                                      add r0, r4, #0x30
00824774  07 a7 ff eb                                      bl #0x80e398
00824778  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0082477c  34 20 84 e2                                      add r2, r4, #0x34
00824780  38 20 84 e5                                      str r2, [r4, #0x38]
00824784  03 30 95 e7                                      ldr r3, [r5, r3]
00824788  3c 60 84 e5                                      str r6, [r4, #0x3c]
0082478c  34 20 84 e5                                      str r2, [r4, #0x34]
00824790  08 30 83 e2                                      add r3, r3, #8
00824794  2c 30 84 e5                                      str r3, [r4, #0x2c]
00824798  04 00 a0 e1                                      mov r0, r4
0082479c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008247a0  44 03 17 00 48 28 00 00 4c 0a 00 00 6c 19 00 00  .byte 0x44, 0x03, 0x17, 0x00, 0x48, 0x28, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0x6c, 0x19, 0x00, 0x00

; FUNCTION 0x008247ec, declared_size=92, range_size=92, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLiveD1Ev
; demangled: CSignInGLLive::~CSignInGLLive()
; decoder-mode: arm
008247ec  48 30 9f e5                                      ldr r3, [pc, #0x48]
008247f0  48 10 9f e5                                      ldr r1, [pc, #0x48]
008247f4  48 20 9f e5                                      ldr r2, [pc, #0x48]
008247f8  03 30 8f e0                                      add r3, pc, r3
008247fc  01 10 93 e7                                      ldr r1, [r3, r1]
00824800  02 20 93 e7                                      ldr r2, [r3, r2]
00824804  10 40 2d e9                                      push {r4, lr}
00824808  08 10 81 e2                                      add r1, r1, #8
0082480c  08 20 82 e2                                      add r2, r2, #8
00824810  00 40 a0 e1                                      mov r4, r0
00824814  00 10 80 e5                                      str r1, [r0]
00824818  2c 20 80 e5                                      str r2, [r0, #0x2c]
0082481c  34 00 80 e2                                      add r0, r0, #0x34
00824820  d2 62 ff eb                                      bl #0x7fd370
00824824  30 00 84 e2                                      add r0, r4, #0x30
00824828  d0 a6 ff eb                                      bl #0x80e370
0082482c  04 00 a0 e1                                      mov r0, r4
00824830  1f d8 ff eb                                      bl #0x81a8b4
00824834  04 00 a0 e1                                      mov r0, r4
00824838  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0082483c  98 02 17 00 48 28 00 00 4c 0a 00 00              .byte 0x98, 0x02, 0x17, 0x00, 0x48, 0x28, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x00824848, declared_size=28, range_size=28, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLiveD0Ev
; demangled: CSignInGLLive::~CSignInGLLive()
; decoder-mode: arm
00824848  10 40 2d e9                                      push {r4, lr}
0082484c  00 40 a0 e1                                      mov r4, r0
00824850  e5 ff ff eb                                      bl #0x8247ec
00824854  04 00 a0 e1                                      mov r0, r4
00824858  f8 ae eb eb                                      bl #0x310440
0082485c  04 00 a0 e1                                      mov r0, r4
00824860  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008248a8, declared_size=92, range_size=92, mode=arm
; class-group: CSignInGLLive
; alias: _ZN13CSignInGLLiveD2Ev
; demangled: CSignInGLLive::~CSignInGLLive()
; decoder-mode: arm
008248a8  48 30 9f e5                                      ldr r3, [pc, #0x48]
008248ac  48 10 9f e5                                      ldr r1, [pc, #0x48]
008248b0  48 20 9f e5                                      ldr r2, [pc, #0x48]
008248b4  03 30 8f e0                                      add r3, pc, r3
008248b8  01 10 93 e7                                      ldr r1, [r3, r1]
008248bc  02 20 93 e7                                      ldr r2, [r3, r2]
008248c0  10 40 2d e9                                      push {r4, lr}
008248c4  08 10 81 e2                                      add r1, r1, #8
008248c8  08 20 82 e2                                      add r2, r2, #8
008248cc  00 40 a0 e1                                      mov r4, r0
008248d0  00 10 80 e5                                      str r1, [r0]
008248d4  2c 20 80 e5                                      str r2, [r0, #0x2c]
008248d8  34 00 80 e2                                      add r0, r0, #0x34
008248dc  a3 62 ff eb                                      bl #0x7fd370
008248e0  30 00 84 e2                                      add r0, r4, #0x30
008248e4  a1 a6 ff eb                                      bl #0x80e370
008248e8  04 00 a0 e1                                      mov r0, r4
008248ec  f0 d7 ff eb                                      bl #0x81a8b4
008248f0  04 00 a0 e1                                      mov r0, r4
008248f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008248f8  dc 01 17 00 48 28 00 00 4c 0a 00 00              .byte 0xdc, 0x01, 0x17, 0x00, 0x48, 0x28, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00
