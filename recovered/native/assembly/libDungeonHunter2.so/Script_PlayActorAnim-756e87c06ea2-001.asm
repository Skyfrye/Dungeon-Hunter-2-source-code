; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00459628, declared_size=112, range_size=112, mode=arm
; class-group: Script_PlayActorAnim
; alias: _ZNK20Script_PlayActorAnim10IsBlockingEv
; demangled: Script_PlayActorAnim::IsBlocking() const
; decoder-mode: arm
00459628  70 40 2d e9                                      push {r4, r5, r6, lr}
0045962c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00459630  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
00459634  00 00 53 e3                                      cmp r3, #0
00459638  01 00 00 1a                                      bne #0x459644
0045963c  00 00 a0 e3                                      mov r0, #0
00459640  70 80 bd e8                                      pop {r4, r5, r6, pc}
00459644  10 50 80 e2                                      add r5, r0, #0x10
00459648  05 00 a0 e1                                      mov r0, r5
0045964c  00 10 a0 e3                                      mov r1, #0
00459650  4d 9a fb eb                                      bl #0x33ff8c
00459654  00 00 50 e3                                      cmp r0, #0
00459658  f7 ff ff 0a                                      beq #0x45963c
0045965c  05 00 a0 e1                                      mov r0, r5
00459660  00 10 a0 e3                                      mov r1, #0
00459664  48 9a fb eb                                      bl #0x33ff8c
00459668  00 00 50 e3                                      cmp r0, #0
0045966c  f2 ff ff 0a                                      beq #0x45963c
00459670  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
00459674  00 00 53 e3                                      cmp r3, #0
00459678  ef ff ff 1a                                      bne #0x45963c
0045967c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00459680  e8 34 90 e5                                      ldr r3, [r0, #0x4e8]
00459684  02 00 82 e2                                      add r0, r2, #2
00459688  03 00 50 e1                                      cmp r0, r3
0045968c  00 00 a0 13                                      movne r0, #0
00459690  01 00 a0 03                                      moveq r0, #1
00459694  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0045a2ec, declared_size=152, range_size=152, mode=arm
; class-group: Script_PlayActorAnim
; alias: _ZN20Script_PlayActorAnim4InitEv
; demangled: Script_PlayActorAnim::Init()
; decoder-mode: arm
0045a2ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0045a2f0  84 c0 9f e5                                      ldr ip, [pc, #0x84]
0045a2f4  84 30 9f e5                                      ldr r3, [pc, #0x84]
0045a2f8  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0045a2fc  0c c0 8f e0                                      add ip, pc, ip
0045a300  03 30 9c e7                                      ldr r3, [ip, r3]
0045a304  18 d0 4d e2                                      sub sp, sp, #0x18
0045a308  0c 60 8d e2                                      add r6, sp, #0xc
0045a30c  38 10 93 e5                                      ldr r1, [r3, #0x38]
0045a310  18 20 95 e5                                      ldr r2, [r5, #0x18]
0045a314  00 40 a0 e3                                      mov r4, #0
0045a318  00 30 e0 e3                                      mvn r3, #0
0045a31c  06 00 a0 e1                                      mov r0, r6
0045a320  00 40 8d e5                                      str r4, [sp]
0045a324  04 40 8d e5                                      str r4, [sp, #4]
0045a328  5c c2 fb eb                                      bl #0x34aca0
0045a32c  06 00 a0 e1                                      mov r0, r6
0045a330  04 10 a0 e1                                      mov r1, r4
0045a334  a1 96 fb eb                                      bl #0x33fdc0
0045a338  04 00 50 e1                                      cmp r0, r4
0045a33c  01 00 00 1a                                      bne #0x45a348
0045a340  18 d0 8d e2                                      add sp, sp, #0x18
0045a344  70 80 bd e8                                      pop {r4, r5, r6, pc}
0045a348  06 00 a0 e1                                      mov r0, r6
0045a34c  00 97 fb eb                                      bl #0x33ff54
0045a350  00 40 50 e2                                      subs r4, r0, #0
0045a354  f9 ff ff 0a                                      beq #0x45a340
0045a358  49 4e 84 e2                                      add r4, r4, #0x490
0045a35c  0c 40 84 e2                                      add r4, r4, #0xc
0045a360  08 10 95 e5                                      ldr r1, [r5, #8]
0045a364  04 00 a0 e1                                      mov r0, r4
0045a368  e9 bd fd eb                                      bl #0x3c9b14
0045a36c  04 00 a0 e1                                      mov r0, r4
0045a370  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0045a374  e6 bd fd eb                                      bl #0x3c9b14
0045a378  f0 ff ff ea                                      b #0x45a340
; mapping-symbol data/literal pool
0045a37c  94 a7 53 00 f4 37 00 00                          .byte 0x94, 0xa7, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0045e890, declared_size=372, range_size=372, mode=arm
; class-group: Script_PlayActorAnim
; alias: _ZN20Script_PlayActorAnim7ExecuteEbi
; demangled: Script_PlayActorAnim::Execute(bool, int)
; decoder-mode: arm
0045e890  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045e894  50 41 9f e5                                      ldr r4, [pc, #0x150]
0045e898  50 51 9f e5                                      ldr r5, [pc, #0x150]
0045e89c  44 d0 4d e2                                      sub sp, sp, #0x44
0045e8a0  04 40 8f e0                                      add r4, pc, r4
0045e8a4  05 30 94 e7                                      ldr r3, [r4, r5]
0045e8a8  00 70 51 e2                                      subs r7, r1, #0
0045e8ac  00 60 a0 e1                                      mov r6, r0
0045e8b0  00 30 93 e5                                      ldr r3, [r3]
0045e8b4  02 90 a0 e1                                      mov sb, r2
0045e8b8  3c 30 8d e5                                      str r3, [sp, #0x3c]
0045e8bc  06 00 00 0a                                      beq #0x45e8dc
0045e8c0  05 30 94 e7                                      ldr r3, [r4, r5]
0045e8c4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0045e8c8  00 30 93 e5                                      ldr r3, [r3]
0045e8cc  03 00 52 e1                                      cmp r2, r3
0045e8d0  44 00 00 1a                                      bne #0x45e9e8
0045e8d4  44 d0 8d e2                                      add sp, sp, #0x44
0045e8d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045e8dc  10 31 9f e5                                      ldr r3, [pc, #0x110]
0045e8e0  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0045e8e4  24 a0 8d e2                                      add sl, sp, #0x24
0045e8e8  03 b0 94 e7                                      ldr fp, [r4, r3]
0045e8ec  10 30 8d e2                                      add r3, sp, #0x10
0045e8f0  08 30 8d e5                                      str r3, [sp, #8]
0045e8f4  10 30 80 e2                                      add r3, r0, #0x10
0045e8f8  0b 00 a0 e1                                      mov r0, fp
0045e8fc  0c 30 8d e5                                      str r3, [sp, #0xc]
0045e900  e0 63 fb eb                                      bl #0x337888
0045e904  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0045e908  20 20 8d e2                                      add r2, sp, #0x20
0045e90c  0a 00 a0 e1                                      mov r0, sl
0045e910  01 10 8f e0                                      add r1, pc, r1
0045e914  f4 d5 fa eb                                      bl #0x3140ec
0045e918  0a 10 a0 e1                                      mov r1, sl
0045e91c  0b 00 a0 e1                                      mov r0, fp
0045e920  58 64 fb eb                                      bl #0x337a88
0045e924  0a 00 a0 e1                                      mov r0, sl
0045e928  49 e6 fa eb                                      bl #0x318254
0045e92c  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0045e930  18 20 98 e5                                      ldr r2, [r8, #0x18]
0045e934  09 30 a0 e1                                      mov r3, sb
0045e938  01 10 94 e7                                      ldr r1, [r4, r1]
0045e93c  08 00 9d e5                                      ldr r0, [sp, #8]
0045e940  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045e944  00 70 8d e5                                      str r7, [sp]
0045e948  04 70 8d e5                                      str r7, [sp, #4]
0045e94c  d3 b0 fb eb                                      bl #0x34aca0
0045e950  08 30 9d e5                                      ldr r3, [sp, #8]
0045e954  10 20 9d e5                                      ldr r2, [sp, #0x10]
0045e958  08 10 93 e5                                      ldr r1, [r3, #8]
0045e95c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0045e960  10 20 86 e5                                      str r2, [r6, #0x10]
0045e964  18 10 86 e5                                      str r1, [r6, #0x18]
0045e968  14 30 86 e5                                      str r3, [r6, #0x14]
0045e96c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0045e970  07 10 a0 e1                                      mov r1, r7
0045e974  11 85 fb eb                                      bl #0x33fdc0
0045e978  00 00 50 e3                                      cmp r0, #0
0045e97c  cf ff ff 0a                                      beq #0x45e8c0
0045e980  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0045e984  72 85 fb eb                                      bl #0x33ff54
0045e988  00 00 50 e3                                      cmp r0, #0
0045e98c  10 a0 98 e5                                      ldr sl, [r8, #0x10]
0045e990  ca ff ff 0a                                      beq #0x45e8c0
0045e994  64 30 9f e5                                      ldr r3, [pc, #0x64]
0045e998  02 10 8a e2                                      add r1, sl, #2
0045e99c  14 60 a0 e3                                      mov r6, #0x14
0045e9a0  03 c0 94 e7                                      ldr ip, [r4, r3]
0045e9a4  08 90 98 e5                                      ldr sb, [r8, #8]
0045e9a8  08 a0 8a e2                                      add sl, sl, #8
0045e9ac  00 30 9c e5                                      ldr r3, [ip]
0045e9b0  4f 0e 80 e2                                      add r0, r0, #0x4f0
0045e9b4  0c 00 80 e2                                      add r0, r0, #0xc
0045e9b8  96 31 23 e0                                      mla r3, r6, r1, r3
0045e9bc  07 20 a0 e1                                      mov r2, r7
0045e9c0  0c e0 93 e5                                      ldr lr, [r3, #0xc]
0045e9c4  01 30 a0 e3                                      mov r3, #1
0045e9c8  08 90 8e e5                                      str sb, [lr, #8]
0045e9cc  00 c0 9c e5                                      ldr ip, [ip]
0045e9d0  0c e0 98 e5                                      ldr lr, [r8, #0xc]
0045e9d4  96 ca 26 e0                                      mla r6, r6, sl, ip
0045e9d8  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0045e9dc  08 e0 8c e5                                      str lr, [ip, #8]
0045e9e0  30 8c fd eb                                      bl #0x3c1aa8
0045e9e4  b5 ff ff ea                                      b #0x45e8c0
0045e9e8  48 be fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045e9ec  f0 61 53 00 ac 40 00 00 84 08 00 00 70 e7 46 00  .byte 0xf0, 0x61, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x70, 0xe7, 0x46, 0x00
0045e9fc  f4 37 00 00 7c 3c 00 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00
