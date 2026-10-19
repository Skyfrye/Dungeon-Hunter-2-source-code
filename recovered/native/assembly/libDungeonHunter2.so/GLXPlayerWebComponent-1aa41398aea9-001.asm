; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083155c, declared_size=12, range_size=12, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent19StartResponseParserEPci
; demangled: GLXPlayerWebComponent::StartResponseParser(char*, int)
; decoder-mode: arm
0083155c  28 20 80 e5                                      str r2, [r0, #0x28]
00831560  24 10 80 e5                                      str r1, [r0, #0x24]
00831564  1e ff 2f e1                                      bx lr

; FUNCTION 0x00831568, declared_size=32, range_size=32, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent13GetFunctionIDEci
; demangled: GLXPlayerWebComponent::GetFunctionID(char, int)
; decoder-mode: arm
00831568  66 00 51 e3                                      cmp r1, #0x66
0083156c  01 00 00 1a                                      bne #0x831578
00831570  02 00 a0 e1                                      mov r0, r2
00831574  1e ff 2f e1                                      bx lr
00831578  67 00 51 e3                                      cmp r1, #0x67
0083157c  00 20 e0 13                                      mvnne r2, #0
00831580  7d 2f 82 02                                      addeq r2, r2, #0x1f4
00831584  f9 ff ff ea                                      b #0x831570

; FUNCTION 0x00831588, declared_size=60, range_size=60, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent15OnUpdateSuccessEi
; demangled: GLXPlayerWebComponent::OnUpdateSuccess(int)
; decoder-mode: arm
00831588  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083158c  04 60 90 e5                                      ldr r6, [r0, #4]
00831590  24 50 90 e5                                      ldr r5, [r0, #0x24]
00831594  01 70 a0 e1                                      mov r7, r1
00831598  00 30 96 e5                                      ldr r3, [r6]
0083159c  05 00 a0 e1                                      mov r0, r5
008315a0  08 40 93 e5                                      ldr r4, [r3, #8]
008315a4  80 e6 ff eb                                      bl #0x82afac
008315a8  07 10 a0 e1                                      mov r1, r7
008315ac  00 30 a0 e1                                      mov r3, r0
008315b0  05 20 a0 e1                                      mov r2, r5
008315b4  06 00 a0 e1                                      mov r0, r6
008315b8  34 ff 2f e1                                      blx r4
008315bc  01 00 a0 e3                                      mov r0, #1
008315c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008315c4, declared_size=384, range_size=384, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent10LoadConfigEv
; demangled: GLXPlayerWebComponent::LoadConfig()
; decoder-mode: arm
008315c4  70 31 9f e5                                      ldr r3, [pc, #0x170]
008315c8  70 21 9f e5                                      ldr r2, [pc, #0x170]
008315cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008315d0  03 30 8f e0                                      add r3, pc, r3
008315d4  02 70 93 e7                                      ldr r7, [r3, r2]
008315d8  82 df 4d e2                                      sub sp, sp, #0x208
008315dc  41 5f 8d e2                                      add r5, sp, #0x104
008315e0  00 c0 97 e5                                      ldr ip, [r7]
008315e4  00 40 a0 e1                                      mov r4, r0
008315e8  04 60 8d e2                                      add r6, sp, #4
008315ec  00 10 a0 e3                                      mov r1, #0
008315f0  01 2c a0 e3                                      mov r2, #0x100
008315f4  05 00 a0 e1                                      mov r0, r5
008315f8  04 c2 8d e5                                      str ip, [sp, #0x204]
008315fc  97 73 eb eb                                      bl #0x30e460
00831600  00 10 a0 e3                                      mov r1, #0
00831604  01 2c a0 e3                                      mov r2, #0x100
00831608  06 00 a0 e1                                      mov r0, r6
0083160c  93 73 eb eb                                      bl #0x30e460
00831610  5d f6 ff eb                                      bl #0x82ef8c
00831614  e1 e8 ff eb                                      bl #0x82b9a0
00831618  00 10 a0 e3                                      mov r1, #0
0083161c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00831620  01 2c a0 e3                                      mov r2, #0x100
00831624  05 00 a0 e1                                      mov r0, r5
00831628  4d e7 ff eb                                      bl #0x82b364
0083162c  06 00 a0 e1                                      mov r0, r6
00831630  00 10 a0 e3                                      mov r1, #0
00831634  01 2c a0 e3                                      mov r2, #0x100
00831638  49 e7 ff eb                                      bl #0x82b364
0083163c  2f 30 a0 e3                                      mov r3, #0x2f
00831640  05 10 a0 e1                                      mov r1, r5
00831644  02 20 a0 e3                                      mov r2, #2
00831648  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0083164c  60 e5 ff eb                                      bl #0x82abd4
00831650  00 10 a0 e3                                      mov r1, #0
00831654  00 80 a0 e1                                      mov r8, r0
00831658  01 2c a0 e3                                      mov r2, #0x100
0083165c  05 00 a0 e1                                      mov r0, r5
00831660  3f e7 ff eb                                      bl #0x82b364
00831664  1c a0 94 e5                                      ldr sl, [r4, #0x1c]
00831668  0a 00 a0 e1                                      mov r0, sl
0083166c  4e e6 ff eb                                      bl #0x82afac
00831670  08 10 8a e0                                      add r1, sl, r8
00831674  00 20 68 e0                                      rsb r2, r8, r0
00831678  05 00 a0 e1                                      mov r0, r5
0083167c  33 e7 ff eb                                      bl #0x82b350
00831680  2f 30 a0 e3                                      mov r3, #0x2f
00831684  06 10 a0 e1                                      mov r1, r6
00831688  00 20 a0 e3                                      mov r2, #0
0083168c  05 00 a0 e1                                      mov r0, r5
00831690  4f e5 ff eb                                      bl #0x82abd4
00831694  05 00 a0 e1                                      mov r0, r5
00831698  43 e6 ff eb                                      bl #0x82afac
0083169c  00 a0 a0 e1                                      mov sl, r0
008316a0  06 00 a0 e1                                      mov r0, r6
008316a4  40 e6 ff eb                                      bl #0x82afac
008316a8  01 90 80 e2                                      add sb, r0, #1
008316ac  00 80 a0 e1                                      mov r8, r0
008316b0  09 00 a0 e1                                      mov r0, sb
008316b4  85 72 eb eb                                      bl #0x30e0d0
008316b8  0a a0 68 e0                                      rsb sl, r8, sl
008316bc  10 00 84 e5                                      str r0, [r4, #0x10]
008316c0  09 20 a0 e1                                      mov r2, sb
008316c4  00 10 a0 e3                                      mov r1, #0
008316c8  25 e7 ff eb                                      bl #0x82b364
008316cc  06 10 a0 e1                                      mov r1, r6
008316d0  08 20 a0 e1                                      mov r2, r8
008316d4  01 60 8a e2                                      add r6, sl, #1
008316d8  10 00 94 e5                                      ldr r0, [r4, #0x10]
008316dc  1b e7 ff eb                                      bl #0x82b350
008316e0  06 00 a0 e1                                      mov r0, r6
008316e4  79 72 eb eb                                      bl #0x30e0d0
008316e8  06 20 a0 e1                                      mov r2, r6
008316ec  14 00 84 e5                                      str r0, [r4, #0x14]
008316f0  00 10 a0 e3                                      mov r1, #0
008316f4  1a e7 ff eb                                      bl #0x82b364
008316f8  0a 20 a0 e1                                      mov r2, sl
008316fc  08 10 85 e0                                      add r1, r5, r8
00831700  14 00 94 e5                                      ldr r0, [r4, #0x14]
00831704  11 e7 ff eb                                      bl #0x82b350
00831708  13 f6 ff eb                                      bl #0x82ef5c
0083170c  a3 e8 ff eb                                      bl #0x82b9a0
00831710  18 00 84 e5                                      str r0, [r4, #0x18]
00831714  38 f2 ff eb                                      bl #0x82dffc
00831718  08 00 84 e5                                      str r0, [r4, #8]
0083171c  04 22 9d e5                                      ldr r2, [sp, #0x204]
00831720  00 30 97 e5                                      ldr r3, [r7]
00831724  01 00 a0 e3                                      mov r0, #1
00831728  03 00 52 e1                                      cmp r2, r3
0083172c  01 00 00 1a                                      bne #0x831738
00831730  82 df 8d e2                                      add sp, sp, #0x208
00831734  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00831738  f4 72 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083173c  c0 34 16 00 ac 40 00 00                          .byte 0xc0, 0x34, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00831744, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent20GetNextResponseTokenEPc
; demangled: GLXPlayerWebComponent::GetNextResponseToken(char*)
; decoder-mode: arm
00831744  70 40 2d e9                                      push {r4, r5, r6, lr}
00831748  24 30 90 e5                                      ldr r3, [r0, #0x24]
0083174c  01 40 a0 e1                                      mov r4, r1
00831750  00 20 d3 e5                                      ldrb r2, [r3]
00831754  00 00 52 e3                                      cmp r2, #0
00831758  17 00 00 0a                                      beq #0x8317bc
0083175c  7c 00 52 e3                                      cmp r2, #0x7c
00831760  03 20 a0 01                                      moveq r2, r3
00831764  00 50 a0 03                                      moveq r5, #0
00831768  18 00 00 0a                                      beq #0x8317d0
0083176c  03 20 a0 e1                                      mov r2, r3
00831770  01 00 00 ea                                      b #0x83177c
00831774  7c 00 51 e3                                      cmp r1, #0x7c
00831778  13 00 00 0a                                      beq #0x8317cc
0083177c  01 20 82 e2                                      add r2, r2, #1
00831780  24 20 80 e5                                      str r2, [r0, #0x24]
00831784  00 10 d2 e5                                      ldrb r1, [r2]
00831788  00 00 51 e3                                      cmp r1, #0
0083178c  f8 ff ff 1a                                      bne #0x831774
00831790  02 50 63 e0                                      rsb r5, r3, r2
00831794  00 00 55 e3                                      cmp r5, #0
00831798  07 00 00 0a                                      beq #0x8317bc
0083179c  03 10 a0 e1                                      mov r1, r3
008317a0  04 00 a0 e1                                      mov r0, r4
008317a4  05 20 a0 e1                                      mov r2, r5
008317a8  e3 e6 ff eb                                      bl #0x82b33c
008317ac  00 30 a0 e3                                      mov r3, #0
008317b0  05 30 c4 e7                                      strb r3, [r4, r5]
008317b4  04 00 a0 e1                                      mov r0, r4
008317b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
008317bc  00 30 a0 e3                                      mov r3, #0
008317c0  00 30 c4 e5                                      strb r3, [r4]
008317c4  04 00 a0 e1                                      mov r0, r4
008317c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
008317cc  02 50 63 e0                                      rsb r5, r3, r2
008317d0  01 20 82 e2                                      add r2, r2, #1
008317d4  24 20 80 e5                                      str r2, [r0, #0x24]
008317d8  ed ff ff ea                                      b #0x831794

; FUNCTION 0x008317dc, declared_size=144, range_size=144, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent22IsNextResponseIntTokenEi
; demangled: GLXPlayerWebComponent::IsNextResponseIntToken(int)
; decoder-mode: arm
008317dc  80 30 9f e5                                      ldr r3, [pc, #0x80]
008317e0  80 20 9f e5                                      ldr r2, [pc, #0x80]
008317e4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008317e8  03 30 8f e0                                      add r3, pc, r3
008317ec  02 50 93 e7                                      ldr r5, [r3, r2]
008317f0  43 df 4d e2                                      sub sp, sp, #0x10c
008317f4  04 40 8d e2                                      add r4, sp, #4
008317f8  00 c0 95 e5                                      ldr ip, [r5]
008317fc  00 70 a0 e1                                      mov r7, r0
00831800  01 60 a0 e1                                      mov r6, r1
00831804  01 2c a0 e3                                      mov r2, #0x100
00831808  00 10 a0 e3                                      mov r1, #0
0083180c  04 00 a0 e1                                      mov r0, r4
00831810  04 c1 8d e5                                      str ip, [sp, #0x104]
00831814  11 73 eb eb                                      bl #0x30e460
00831818  01 2c a0 e3                                      mov r2, #0x100
0083181c  04 00 a0 e1                                      mov r0, r4
00831820  00 10 a0 e3                                      mov r1, #0
00831824  ce e6 ff eb                                      bl #0x82b364
00831828  04 10 a0 e1                                      mov r1, r4
0083182c  07 00 a0 e1                                      mov r0, r7
00831830  c3 ff ff eb                                      bl #0x831744
00831834  04 00 a0 e1                                      mov r0, r4
00831838  b8 e6 ff eb                                      bl #0x82b320
0083183c  04 21 9d e5                                      ldr r2, [sp, #0x104]
00831840  00 30 95 e5                                      ldr r3, [r5]
00831844  06 00 50 e1                                      cmp r0, r6
00831848  00 00 a0 13                                      movne r0, #0
0083184c  01 00 a0 03                                      moveq r0, #1
00831850  03 00 52 e1                                      cmp r2, r3
00831854  01 00 00 1a                                      bne #0x831860
00831858  43 df 8d e2                                      add sp, sp, #0x10c
0083185c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00831860  aa 72 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00831864  a8 32 16 00 ac 40 00 00                          .byte 0xa8, 0x32, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0083186c, declared_size=144, range_size=144, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent25IsNextResponseStringTokenEPKc
; demangled: GLXPlayerWebComponent::IsNextResponseStringToken(char const*)
; decoder-mode: arm
0083186c  80 30 9f e5                                      ldr r3, [pc, #0x80]
00831870  80 20 9f e5                                      ldr r2, [pc, #0x80]
00831874  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00831878  03 30 8f e0                                      add r3, pc, r3
0083187c  02 50 93 e7                                      ldr r5, [r3, r2]
00831880  43 df 4d e2                                      sub sp, sp, #0x10c
00831884  04 40 8d e2                                      add r4, sp, #4
00831888  00 c0 95 e5                                      ldr ip, [r5]
0083188c  00 70 a0 e1                                      mov r7, r0
00831890  01 60 a0 e1                                      mov r6, r1
00831894  01 2c a0 e3                                      mov r2, #0x100
00831898  00 10 a0 e3                                      mov r1, #0
0083189c  04 00 a0 e1                                      mov r0, r4
008318a0  04 c1 8d e5                                      str ip, [sp, #0x104]
008318a4  ed 72 eb eb                                      bl #0x30e460
008318a8  01 2c a0 e3                                      mov r2, #0x100
008318ac  04 00 a0 e1                                      mov r0, r4
008318b0  00 10 a0 e3                                      mov r1, #0
008318b4  aa e6 ff eb                                      bl #0x82b364
008318b8  04 10 a0 e1                                      mov r1, r4
008318bc  07 00 a0 e1                                      mov r0, r7
008318c0  9f ff ff eb                                      bl #0x831744
008318c4  06 00 a0 e1                                      mov r0, r6
008318c8  04 10 a0 e1                                      mov r1, r4
008318cc  9e e6 ff eb                                      bl #0x82b34c
008318d0  04 21 9d e5                                      ldr r2, [sp, #0x104]
008318d4  00 30 95 e5                                      ldr r3, [r5]
008318d8  01 00 70 e2                                      rsbs r0, r0, #1
008318dc  00 00 a0 33                                      movlo r0, #0
008318e0  03 00 52 e1                                      cmp r2, r3
008318e4  01 00 00 1a                                      bne #0x8318f0
008318e8  43 df 8d e2                                      add sp, sp, #0x10c
008318ec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008318f0  86 72 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008318f4  18 32 16 00 ac 40 00 00                          .byte 0x18, 0x32, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008318fc, declared_size=128, range_size=128, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent23GetNextResponseIntTokenEv
; demangled: GLXPlayerWebComponent::GetNextResponseIntToken()
; decoder-mode: arm
008318fc  70 30 9f e5                                      ldr r3, [pc, #0x70]
00831900  70 20 9f e5                                      ldr r2, [pc, #0x70]
00831904  70 40 2d e9                                      push {r4, r5, r6, lr}
00831908  03 30 8f e0                                      add r3, pc, r3
0083190c  02 50 93 e7                                      ldr r5, [r3, r2]
00831910  42 df 4d e2                                      sub sp, sp, #0x108
00831914  04 40 8d e2                                      add r4, sp, #4
00831918  00 c0 95 e5                                      ldr ip, [r5]
0083191c  00 60 a0 e1                                      mov r6, r0
00831920  00 10 a0 e3                                      mov r1, #0
00831924  01 2c a0 e3                                      mov r2, #0x100
00831928  04 00 a0 e1                                      mov r0, r4
0083192c  04 c1 8d e5                                      str ip, [sp, #0x104]
00831930  ca 72 eb eb                                      bl #0x30e460
00831934  01 2c a0 e3                                      mov r2, #0x100
00831938  04 00 a0 e1                                      mov r0, r4
0083193c  00 10 a0 e3                                      mov r1, #0
00831940  87 e6 ff eb                                      bl #0x82b364
00831944  04 10 a0 e1                                      mov r1, r4
00831948  06 00 a0 e1                                      mov r0, r6
0083194c  7c ff ff eb                                      bl #0x831744
00831950  04 00 a0 e1                                      mov r0, r4
00831954  71 e6 ff eb                                      bl #0x82b320
00831958  04 21 9d e5                                      ldr r2, [sp, #0x104]
0083195c  00 30 95 e5                                      ldr r3, [r5]
00831960  03 00 52 e1                                      cmp r2, r3
00831964  01 00 00 1a                                      bne #0x831970
00831968  42 df 8d e2                                      add sp, sp, #0x108
0083196c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831970  66 72 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00831974  88 31 16 00 ac 40 00 00                          .byte 0x88, 0x31, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0083197c, declared_size=52, range_size=52, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent15OnUpdateFailureEi
; demangled: GLXPlayerWebComponent::OnUpdateFailure(int)
; decoder-mode: arm
0083197c  70 40 2d e9                                      push {r4, r5, r6, lr}
00831980  00 40 a0 e1                                      mov r4, r0
00831984  01 50 a0 e1                                      mov r5, r1
00831988  db ff ff eb                                      bl #0x8318fc
0083198c  04 30 94 e5                                      ldr r3, [r4, #4]
00831990  00 20 a0 e1                                      mov r2, r0
00831994  05 10 a0 e1                                      mov r1, r5
00831998  03 00 a0 e1                                      mov r0, r3
0083199c  00 30 93 e5                                      ldr r3, [r3]
008319a0  0f e0 a0 e1                                      mov lr, pc
008319a4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008319a8  01 00 a0 e3                                      mov r0, #1
008319ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008319b0, declared_size=548, range_size=548, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent13OnUpdateParseEv
; demangled: GLXPlayerWebComponent::OnUpdateParse()
; decoder-mode: arm
008319b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008319b4  fc 51 9f e5                                      ldr r5, [pc, #0x1fc]
008319b8  fc 71 9f e5                                      ldr r7, [pc, #0x1fc]
008319bc  01 da 4d e2                                      sub sp, sp, #0x1000
008319c0  05 50 8f e0                                      add r5, pc, r5
008319c4  07 20 95 e7                                      ldr r2, [r5, r7]
008319c8  08 d0 4d e2                                      sub sp, sp, #8
008319cc  20 30 90 e5                                      ldr r3, [r0, #0x20]
008319d0  00 20 92 e5                                      ldr r2, [r2]
008319d4  01 1a 8d e2                                      add r1, sp, #0x1000
008319d8  00 40 a0 e1                                      mov r4, r0
008319dc  04 20 81 e5                                      str r2, [r1, #4]
008319e0  03 00 a0 e1                                      mov r0, r3
008319e4  00 30 93 e5                                      ldr r3, [r3]
008319e8  0f e0 a0 e1                                      mov lr, pc
008319ec  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008319f0  20 30 94 e5                                      ldr r3, [r4, #0x20]
008319f4  00 60 a0 e1                                      mov r6, r0
008319f8  03 00 a0 e1                                      mov r0, r3
008319fc  00 30 93 e5                                      ldr r3, [r3]
00831a00  0f e0 a0 e1                                      mov lr, pc
00831a04  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00831a08  06 10 a0 e1                                      mov r1, r6
00831a0c  00 20 a0 e1                                      mov r2, r0
00831a10  04 00 a0 e1                                      mov r0, r4
00831a14  d0 fe ff eb                                      bl #0x83155c
00831a18  24 30 94 e5                                      ldr r3, [r4, #0x24]
00831a1c  00 00 53 e3                                      cmp r3, #0
00831a20  02 00 00 0a                                      beq #0x831a30
00831a24  28 30 94 e5                                      ldr r3, [r4, #0x28]
00831a28  00 00 53 e3                                      cmp r3, #0
00831a2c  0e 00 00 1a                                      bne #0x831a6c
00831a30  04 30 94 e5                                      ldr r3, [r4, #4]
00831a34  03 00 a0 e1                                      mov r0, r3
00831a38  00 30 93 e5                                      ldr r3, [r3]
00831a3c  0f e0 a0 e1                                      mov lr, pc
00831a40  00 f0 93 e5                                      ldr pc, [r3]
00831a44  00 00 a0 e3                                      mov r0, #0
00831a48  07 30 95 e7                                      ldr r3, [r5, r7]
00831a4c  01 1a 8d e2                                      add r1, sp, #0x1000
00831a50  04 20 91 e5                                      ldr r2, [r1, #4]
00831a54  00 30 93 e5                                      ldr r3, [r3]
00831a58  03 00 52 e1                                      cmp r2, r3
00831a5c  54 00 00 1a                                      bne #0x831bb4
00831a60  08 d0 8d e2                                      add sp, sp, #8
00831a64  01 da 8d e2                                      add sp, sp, #0x1000
00831a68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00831a6c  08 60 8d e2                                      add r6, sp, #8
00831a70  04 60 46 e2                                      sub r6, r6, #4
00831a74  01 2a a0 e3                                      mov r2, #0x1000
00831a78  06 00 a0 e1                                      mov r0, r6
00831a7c  00 10 a0 e3                                      mov r1, #0
00831a80  37 e6 ff eb                                      bl #0x82b364
00831a84  06 10 a0 e1                                      mov r1, r6
00831a88  04 00 a0 e1                                      mov r0, r4
00831a8c  2c ff ff eb                                      bl #0x831744
00831a90  28 11 9f e5                                      ldr r1, [pc, #0x128]
00831a94  06 00 a0 e1                                      mov r0, r6
00831a98  01 10 8f e0                                      add r1, pc, r1
00831a9c  2a e6 ff eb                                      bl #0x82b34c
00831aa0  00 00 50 e3                                      cmp r0, #0
00831aa4  66 80 a0 03                                      moveq r8, #0x66
00831aa8  2d 00 00 1a                                      bne #0x831b64
00831aac  01 2a a0 e3                                      mov r2, #0x1000
00831ab0  06 00 a0 e1                                      mov r0, r6
00831ab4  00 10 a0 e3                                      mov r1, #0
00831ab8  29 e6 ff eb                                      bl #0x82b364
00831abc  06 10 a0 e1                                      mov r1, r6
00831ac0  04 00 a0 e1                                      mov r0, r4
00831ac4  1e ff ff eb                                      bl #0x831744
00831ac8  06 00 a0 e1                                      mov r0, r6
00831acc  13 e6 ff eb                                      bl #0x82b320
00831ad0  08 10 a0 e1                                      mov r1, r8
00831ad4  00 20 a0 e1                                      mov r2, r0
00831ad8  04 00 a0 e1                                      mov r0, r4
00831adc  a1 fe ff eb                                      bl #0x831568
00831ae0  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00831ae4  00 80 a0 e1                                      mov r8, r0
00831ae8  04 00 a0 e1                                      mov r0, r4
00831aec  01 10 8f e0                                      add r1, pc, r1
00831af0  5d ff ff eb                                      bl #0x83186c
00831af4  00 00 50 e3                                      cmp r0, #0
00831af8  20 00 00 0a                                      beq #0x831b80
00831afc  01 2a a0 e3                                      mov r2, #0x1000
00831b00  06 00 a0 e1                                      mov r0, r6
00831b04  00 10 a0 e3                                      mov r1, #0
00831b08  15 e6 ff eb                                      bl #0x82b364
00831b0c  06 10 a0 e1                                      mov r1, r6
00831b10  04 00 a0 e1                                      mov r0, r4
00831b14  0a ff ff eb                                      bl #0x831744
00831b18  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00831b1c  06 00 a0 e1                                      mov r0, r6
00831b20  01 10 8f e0                                      add r1, pc, r1
00831b24  08 e6 ff eb                                      bl #0x82b34c
00831b28  00 00 50 e3                                      cmp r0, #0
00831b2c  1a 00 00 0a                                      beq #0x831b9c
00831b30  94 10 9f e5                                      ldr r1, [pc, #0x94]
00831b34  06 00 a0 e1                                      mov r0, r6
00831b38  01 10 8f e0                                      add r1, pc, r1
00831b3c  02 e6 ff eb                                      bl #0x82b34c
00831b40  00 00 50 e3                                      cmp r0, #0
00831b44  01 00 a0 13                                      movne r0, #1
00831b48  be ff ff 1a                                      bne #0x831a48
00831b4c  04 00 a0 e1                                      mov r0, r4
00831b50  08 10 a0 e1                                      mov r1, r8
00831b54  00 30 94 e5                                      ldr r3, [r4]
00831b58  0f e0 a0 e1                                      mov lr, pc
00831b5c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00831b60  b8 ff ff ea                                      b #0x831a48
00831b64  64 10 9f e5                                      ldr r1, [pc, #0x64]
00831b68  06 00 a0 e1                                      mov r0, r6
00831b6c  01 10 8f e0                                      add r1, pc, r1
00831b70  f5 e5 ff eb                                      bl #0x82b34c
00831b74  00 00 50 e3                                      cmp r0, #0
00831b78  67 80 a0 03                                      moveq r8, #0x67
00831b7c  ca ff ff 0a                                      beq #0x831aac
00831b80  04 30 94 e5                                      ldr r3, [r4, #4]
00831b84  03 00 a0 e1                                      mov r0, r3
00831b88  00 30 93 e5                                      ldr r3, [r3]
00831b8c  0f e0 a0 e1                                      mov lr, pc
00831b90  00 f0 93 e5                                      ldr pc, [r3]
00831b94  01 00 a0 e3                                      mov r0, #1
00831b98  aa ff ff ea                                      b #0x831a48
00831b9c  04 00 a0 e1                                      mov r0, r4
00831ba0  08 10 a0 e1                                      mov r1, r8
00831ba4  00 30 94 e5                                      ldr r3, [r4]
00831ba8  0f e0 a0 e1                                      mov lr, pc
00831bac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00831bb0  a4 ff ff ea                                      b #0x831a48
00831bb4  d5 71 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00831bb8  d0 30 16 00 ac 40 00 00 60 13 0b 00 3c cc 0a 00  .byte 0xd0, 0x30, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x60, 0x13, 0x0b, 0x00, 0x3c, 0xcc, 0x0a, 0x00
00831bc8  10 35 09 00 c0 db 0a 00 5c 79 0d 00              .byte 0x10, 0x35, 0x09, 0x00, 0xc0, 0xdb, 0x0a, 0x00, 0x5c, 0x79, 0x0d, 0x00

; FUNCTION 0x00831bd4, declared_size=180, range_size=180, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent10SendByPostEPc
; demangled: GLXPlayerWebComponent::SendByPost(char*)
; decoder-mode: arm
00831bd4  01 30 a0 e3                                      mov r3, #1
00831bd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00831bdc  2c 30 c0 e5                                      strb r3, [r0, #0x2c]
00831be0  00 50 a0 e1                                      mov r5, r0
00831be4  01 00 a0 e1                                      mov r0, r1
00831be8  76 e6 ff eb                                      bl #0x82b5c8
00831bec  00 60 a0 e1                                      mov r6, r0
00831bf0  ed e4 ff eb                                      bl #0x82afac
00831bf4  20 70 80 e2                                      add r7, r0, #0x20
00831bf8  07 00 a0 e1                                      mov r0, r7
00831bfc  33 71 eb eb                                      bl #0x30e0d0
00831c00  07 20 a0 e1                                      mov r2, r7
00831c04  00 10 a0 e3                                      mov r1, #0
00831c08  00 40 a0 e1                                      mov r4, r0
00831c0c  d4 e5 ff eb                                      bl #0x82b364
00831c10  68 10 9f e5                                      ldr r1, [pc, #0x68]
00831c14  04 00 a0 e1                                      mov r0, r4
00831c18  06 20 a0 e1                                      mov r2, r6
00831c1c  01 10 8f e0                                      add r1, pc, r1
00831c20  af 73 eb eb                                      bl #0x30eae4
00831c24  00 00 56 e3                                      cmp r6, #0
00831c28  01 00 00 0a                                      beq #0x831c34
00831c2c  06 00 a0 e1                                      mov r0, r6
00831c30  9e 71 eb eb                                      bl #0x30e2b0
00831c34  04 00 a0 e1                                      mov r0, r4
00831c38  db e4 ff eb                                      bl #0x82afac
00831c3c  00 10 a0 e1                                      mov r1, r0
00831c40  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00831c44  00 00 8f e0                                      add r0, pc, r0
00831c48  cd e6 ff eb                                      bl #0x82b784
00831c4c  20 30 95 e5                                      ldr r3, [r5, #0x20]
00831c50  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00831c54  04 20 a0 e1                                      mov r2, r4
00831c58  03 00 a0 e1                                      mov r0, r3
00831c5c  00 30 93 e5                                      ldr r3, [r3]
00831c60  0f e0 a0 e1                                      mov lr, pc
00831c64  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00831c68  00 00 54 e3                                      cmp r4, #0
00831c6c  01 00 00 0a                                      beq #0x831c78
00831c70  04 00 a0 e1                                      mov r0, r4
00831c74  8d 71 eb eb                                      bl #0x30e2b0
00831c78  01 00 a0 e3                                      mov r0, #1
00831c7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00831c80  1c af 0d 00 4c b3 0d 00                          .byte 0x1c, 0xaf, 0x0d, 0x00, 0x4c, 0xb3, 0x0d, 0x00

; FUNCTION 0x00831c88, declared_size=76, range_size=76, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent6CancelEv
; demangled: GLXPlayerWebComponent::Cancel()
; decoder-mode: arm
00831c88  70 40 2d e9                                      push {r4, r5, r6, lr}
00831c8c  00 40 a0 e1                                      mov r4, r0
00831c90  38 00 9f e5                                      ldr r0, [pc, #0x38]
00831c94  00 50 a0 e3                                      mov r5, #0
00831c98  2c 50 c4 e5                                      strb r5, [r4, #0x2c]
00831c9c  00 00 8f e0                                      add r0, pc, r0
00831ca0  b7 e6 ff eb                                      bl #0x82b784
00831ca4  20 30 94 e5                                      ldr r3, [r4, #0x20]
00831ca8  24 50 84 e5                                      str r5, [r4, #0x24]
00831cac  28 50 84 e5                                      str r5, [r4, #0x28]
00831cb0  03 00 a0 e1                                      mov r0, r3
00831cb4  00 30 93 e5                                      ldr r3, [r3]
00831cb8  0f e0 a0 e1                                      mov lr, pc
00831cbc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00831cc0  00 30 e0 e3                                      mvn r3, #0
00831cc4  38 30 84 e5                                      str r3, [r4, #0x38]
00831cc8  34 50 84 e5                                      str r5, [r4, #0x34]
00831ccc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00831cd0  14 b3 0d 00                                      .byte 0x14, 0xb3, 0x0d, 0x00

; FUNCTION 0x00831cd4, declared_size=296, range_size=296, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent9SendByGetEPc
; demangled: GLXPlayerWebComponent::SendByGet(char*)
; decoder-mode: arm
00831cd4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00831cd8  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
00831cdc  0c 81 9f e5                                      ldr r8, [pc, #0x10c]
00831ce0  01 da 4d e2                                      sub sp, sp, #0x1000
00831ce4  04 40 8f e0                                      add r4, pc, r4
00831ce8  08 30 94 e7                                      ldr r3, [r4, r8]
00831cec  14 d0 4d e2                                      sub sp, sp, #0x14
00831cf0  01 20 a0 e3                                      mov r2, #1
00831cf4  00 30 93 e5                                      ldr r3, [r3]
00831cf8  01 a0 a0 e1                                      mov sl, r1
00831cfc  2c 20 c0 e5                                      strb r2, [r0, #0x2c]
00831d00  00 50 a0 e1                                      mov r5, r0
00831d04  01 00 a0 e1                                      mov r0, r1
00831d08  01 1a 8d e2                                      add r1, sp, #0x1000
00831d0c  0c 30 81 e5                                      str r3, [r1, #0xc]
00831d10  2c e6 ff eb                                      bl #0x82b5c8
00831d14  10 60 8d e2                                      add r6, sp, #0x10
00831d18  0c 60 46 e2                                      sub r6, r6, #0xc
00831d1c  00 70 a0 e1                                      mov r7, r0
00831d20  00 10 a0 e3                                      mov r1, #0
00831d24  06 00 a0 e1                                      mov r0, r6
00831d28  01 2a a0 e3                                      mov r2, #0x1000
00831d2c  8c e5 ff eb                                      bl #0x82b364
00831d30  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00831d34  06 00 a0 e1                                      mov r0, r6
00831d38  07 20 a0 e1                                      mov r2, r7
00831d3c  01 10 8f e0                                      add r1, pc, r1
00831d40  67 73 eb eb                                      bl #0x30eae4
00831d44  00 00 57 e3                                      cmp r7, #0
00831d48  01 00 00 0a                                      beq #0x831d54
00831d4c  07 00 a0 e1                                      mov r0, r7
00831d50  56 71 eb eb                                      bl #0x30e2b0
00831d54  01 7a 8d e2                                      add r7, sp, #0x1000
00831d58  00 c0 a0 e3                                      mov ip, #0
00831d5c  01 ea 8d e2                                      add lr, sp, #0x1000
00831d60  04 70 87 e2                                      add r7, r7, #4
00831d64  01 20 a0 e3                                      mov r2, #1
00831d68  7c 30 a0 e3                                      mov r3, #0x7c
00831d6c  08 c0 8e e5                                      str ip, [lr, #8]
00831d70  04 c0 8e e5                                      str ip, [lr, #4]
00831d74  07 10 a0 e1                                      mov r1, r7
00831d78  0a 00 a0 e1                                      mov r0, sl
00831d7c  d7 e3 ff eb                                      bl #0x82ace0
00831d80  07 00 a0 e1                                      mov r0, r7
00831d84  65 e5 ff eb                                      bl #0x82b320
00831d88  38 00 85 e5                                      str r0, [r5, #0x38]
00831d8c  e9 e4 ff eb                                      bl #0x82b138
00831d90  34 00 85 e5                                      str r0, [r5, #0x34]
00831d94  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
00831d98  06 10 a0 e1                                      mov r1, r6
00831d9c  00 00 8f e0                                      add r0, pc, r0
00831da0  77 e6 ff eb                                      bl #0x82b784
00831da4  20 30 95 e5                                      ldr r3, [r5, #0x20]
00831da8  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00831dac  06 20 a0 e1                                      mov r2, r6
00831db0  03 00 a0 e1                                      mov r0, r3
00831db4  00 30 93 e5                                      ldr r3, [r3]
00831db8  0f e0 a0 e1                                      mov lr, pc
00831dbc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00831dc0  08 30 94 e7                                      ldr r3, [r4, r8]
00831dc4  01 1a 8d e2                                      add r1, sp, #0x1000
00831dc8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00831dcc  00 30 93 e5                                      ldr r3, [r3]
00831dd0  01 00 a0 e3                                      mov r0, #1
00831dd4  03 00 52 e1                                      cmp r2, r3
00831dd8  02 00 00 1a                                      bne #0x831de8
00831ddc  14 d0 8d e2                                      add sp, sp, #0x14
00831de0  01 da 8d e2                                      add sp, sp, #0x1000
00831de4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00831de8  48 71 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00831dec  ac 2d 16 00 ac 40 00 00 fc ad 0d 00 a4 ad 0d 00  .byte 0xac, 0x2d, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0xad, 0x0d, 0x00, 0xa4, 0xad, 0x0d, 0x00

; FUNCTION 0x00831dfc, declared_size=280, range_size=280, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponent6UpdateEv
; demangled: GLXPlayerWebComponent::Update()
; decoder-mode: arm
00831dfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00831e00  2c 30 d0 e5                                      ldrb r3, [r0, #0x2c]
00831e04  00 40 a0 e1                                      mov r4, r0
00831e08  00 00 53 e3                                      cmp r3, #0
00831e0c  00 00 00 1a                                      bne #0x831e14
00831e10  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831e14  20 30 90 e5                                      ldr r3, [r0, #0x20]
00831e18  03 00 a0 e1                                      mov r0, r3
00831e1c  00 30 93 e5                                      ldr r3, [r3]
00831e20  0f e0 a0 e1                                      mov lr, pc
00831e24  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00831e28  20 30 94 e5                                      ldr r3, [r4, #0x20]
00831e2c  03 00 a0 e1                                      mov r0, r3
00831e30  00 30 93 e5                                      ldr r3, [r3]
00831e34  0f e0 a0 e1                                      mov lr, pc
00831e38  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00831e3c  00 00 50 e3                                      cmp r0, #0
00831e40  18 00 00 0a                                      beq #0x831ea8
00831e44  20 30 94 e5                                      ldr r3, [r4, #0x20]
00831e48  03 00 a0 e1                                      mov r0, r3
00831e4c  00 30 93 e5                                      ldr r3, [r3]
00831e50  0f e0 a0 e1                                      mov lr, pc
00831e54  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00831e58  00 00 50 e3                                      cmp r0, #0
00831e5c  eb ff ff 1a                                      bne #0x831e10
00831e60  b4 e4 ff eb                                      bl #0x82b138
00831e64  34 30 94 e5                                      ldr r3, [r4, #0x34]
00831e68  50 26 04 e3                                      movw r2, #0x4650
00831e6c  00 30 63 e0                                      rsb r3, r3, r0
00831e70  02 00 53 e1                                      cmp r3, r2
00831e74  e5 ff ff da                                      ble #0x831e10
00831e78  04 00 a0 e1                                      mov r0, r4
00831e7c  00 30 94 e5                                      ldr r3, [r4]
00831e80  38 50 94 e5                                      ldr r5, [r4, #0x38]
00831e84  0f e0 a0 e1                                      mov lr, pc
00831e88  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00831e8c  04 30 94 e5                                      ldr r3, [r4, #4]
00831e90  05 10 a0 e1                                      mov r1, r5
00831e94  03 00 a0 e1                                      mov r0, r3
00831e98  00 30 93 e5                                      ldr r3, [r3]
00831e9c  0f e0 a0 e1                                      mov lr, pc
00831ea0  04 f0 93 e5                                      ldr pc, [r3, #4]
00831ea4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831ea8  2c 00 c4 e5                                      strb r0, [r4, #0x2c]
00831eac  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
00831eb0  00 00 8f e0                                      add r0, pc, r0
00831eb4  32 e6 ff eb                                      bl #0x82b784
00831eb8  20 30 94 e5                                      ldr r3, [r4, #0x20]
00831ebc  03 00 a0 e1                                      mov r0, r3
00831ec0  00 30 93 e5                                      ldr r3, [r3]
00831ec4  0f e0 a0 e1                                      mov lr, pc
00831ec8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00831ecc  00 00 50 e3                                      cmp r0, #0
00831ed0  04 00 00 1a                                      bne #0x831ee8
00831ed4  04 00 a0 e1                                      mov r0, r4
00831ed8  00 30 94 e5                                      ldr r3, [r4]
00831edc  0f e0 a0 e1                                      mov lr, pc
00831ee0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00831ee4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00831ee8  04 00 a0 e1                                      mov r0, r4
00831eec  00 30 94 e5                                      ldr r3, [r4]
00831ef0  0f e0 a0 e1                                      mov lr, pc
00831ef4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00831ef8  04 30 94 e5                                      ldr r3, [r4, #4]
00831efc  03 00 a0 e1                                      mov r0, r3
00831f00  00 30 93 e5                                      ldr r3, [r3]
00831f04  0f e0 a0 e1                                      mov lr, pc
00831f08  00 f0 93 e5                                      ldr pc, [r3]
00831f0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00831f10  68 ad 0d 00                                      .byte 0x68, 0xad, 0x0d, 0x00

; FUNCTION 0x00831f14, declared_size=208, range_size=208, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponentD1Ev
; demangled: GLXPlayerWebComponent::~GLXPlayerWebComponent()
; decoder-mode: arm
00831f14  70 40 2d e9                                      push {r4, r5, r6, lr}
00831f18  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00831f1c  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00831f20  00 40 a0 e1                                      mov r4, r0
00831f24  03 30 8f e0                                      add r3, pc, r3
00831f28  10 00 90 e5                                      ldr r0, [r0, #0x10]
00831f2c  02 20 93 e7                                      ldr r2, [r3, r2]
00831f30  00 50 a0 e3                                      mov r5, #0
00831f34  05 00 50 e1                                      cmp r0, r5
00831f38  08 20 82 e2                                      add r2, r2, #8
00831f3c  00 20 84 e5                                      str r2, [r4]
00831f40  24 50 84 e5                                      str r5, [r4, #0x24]
00831f44  01 00 00 0a                                      beq #0x831f50
00831f48  5a 70 eb eb                                      bl #0x30e0b8
00831f4c  10 50 84 e5                                      str r5, [r4, #0x10]
00831f50  14 00 94 e5                                      ldr r0, [r4, #0x14]
00831f54  00 00 50 e3                                      cmp r0, #0
00831f58  02 00 00 0a                                      beq #0x831f68
00831f5c  55 70 eb eb                                      bl #0x30e0b8
00831f60  00 30 a0 e3                                      mov r3, #0
00831f64  14 30 84 e5                                      str r3, [r4, #0x14]
00831f68  18 00 94 e5                                      ldr r0, [r4, #0x18]
00831f6c  00 00 50 e3                                      cmp r0, #0
00831f70  02 00 00 0a                                      beq #0x831f80
00831f74  4f 70 eb eb                                      bl #0x30e0b8
00831f78  00 30 a0 e3                                      mov r3, #0
00831f7c  18 30 84 e5                                      str r3, [r4, #0x18]
00831f80  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00831f84  00 00 50 e3                                      cmp r0, #0
00831f88  02 00 00 0a                                      beq #0x831f98
00831f8c  49 70 eb eb                                      bl #0x30e0b8
00831f90  00 30 a0 e3                                      mov r3, #0
00831f94  1c 30 84 e5                                      str r3, [r4, #0x1c]
00831f98  20 30 94 e5                                      ldr r3, [r4, #0x20]
00831f9c  00 00 53 e3                                      cmp r3, #0
00831fa0  05 00 00 0a                                      beq #0x831fbc
00831fa4  03 00 a0 e1                                      mov r0, r3
00831fa8  00 30 93 e5                                      ldr r3, [r3]
00831fac  0f e0 a0 e1                                      mov lr, pc
00831fb0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00831fb4  00 30 a0 e3                                      mov r3, #0
00831fb8  20 30 84 e5                                      str r3, [r4, #0x20]
00831fbc  00 30 a0 e3                                      mov r3, #0
00831fc0  34 30 84 e5                                      str r3, [r4, #0x34]
00831fc4  00 30 e0 e3                                      mvn r3, #0
00831fc8  38 30 84 e5                                      str r3, [r4, #0x38]
00831fcc  04 00 a0 e1                                      mov r0, r4
00831fd0  6a eb ff eb                                      bl #0x82cd80
00831fd4  04 00 a0 e1                                      mov r0, r4
00831fd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00831fdc  6c 2b 16 00 14 0e 00 00                          .byte 0x6c, 0x2b, 0x16, 0x00, 0x14, 0x0e, 0x00, 0x00

; FUNCTION 0x00831fe4, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponentD0Ev
; demangled: GLXPlayerWebComponent::~GLXPlayerWebComponent()
; decoder-mode: arm
00831fe4  10 40 2d e9                                      push {r4, lr}
00831fe8  00 40 a0 e1                                      mov r4, r0
00831fec  c8 ff ff eb                                      bl #0x831f14
00831ff0  04 00 a0 e1                                      mov r0, r4
00831ff4  ad 70 eb eb                                      bl #0x30e2b0
00831ff8  04 00 a0 e1                                      mov r0, r4
00831ffc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00832000, declared_size=208, range_size=208, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponentD2Ev
; demangled: GLXPlayerWebComponent::~GLXPlayerWebComponent()
; decoder-mode: arm
00832000  70 40 2d e9                                      push {r4, r5, r6, lr}
00832004  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00832008  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0083200c  00 40 a0 e1                                      mov r4, r0
00832010  03 30 8f e0                                      add r3, pc, r3
00832014  10 00 90 e5                                      ldr r0, [r0, #0x10]
00832018  02 20 93 e7                                      ldr r2, [r3, r2]
0083201c  00 50 a0 e3                                      mov r5, #0
00832020  05 00 50 e1                                      cmp r0, r5
00832024  08 20 82 e2                                      add r2, r2, #8
00832028  00 20 84 e5                                      str r2, [r4]
0083202c  24 50 84 e5                                      str r5, [r4, #0x24]
00832030  01 00 00 0a                                      beq #0x83203c
00832034  1f 70 eb eb                                      bl #0x30e0b8
00832038  10 50 84 e5                                      str r5, [r4, #0x10]
0083203c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00832040  00 00 50 e3                                      cmp r0, #0
00832044  02 00 00 0a                                      beq #0x832054
00832048  1a 70 eb eb                                      bl #0x30e0b8
0083204c  00 30 a0 e3                                      mov r3, #0
00832050  14 30 84 e5                                      str r3, [r4, #0x14]
00832054  18 00 94 e5                                      ldr r0, [r4, #0x18]
00832058  00 00 50 e3                                      cmp r0, #0
0083205c  02 00 00 0a                                      beq #0x83206c
00832060  14 70 eb eb                                      bl #0x30e0b8
00832064  00 30 a0 e3                                      mov r3, #0
00832068  18 30 84 e5                                      str r3, [r4, #0x18]
0083206c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00832070  00 00 50 e3                                      cmp r0, #0
00832074  02 00 00 0a                                      beq #0x832084
00832078  0e 70 eb eb                                      bl #0x30e0b8
0083207c  00 30 a0 e3                                      mov r3, #0
00832080  1c 30 84 e5                                      str r3, [r4, #0x1c]
00832084  20 30 94 e5                                      ldr r3, [r4, #0x20]
00832088  00 00 53 e3                                      cmp r3, #0
0083208c  05 00 00 0a                                      beq #0x8320a8
00832090  03 00 a0 e1                                      mov r0, r3
00832094  00 30 93 e5                                      ldr r3, [r3]
00832098  0f e0 a0 e1                                      mov lr, pc
0083209c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008320a0  00 30 a0 e3                                      mov r3, #0
008320a4  20 30 84 e5                                      str r3, [r4, #0x20]
008320a8  00 30 a0 e3                                      mov r3, #0
008320ac  34 30 84 e5                                      str r3, [r4, #0x34]
008320b0  00 30 e0 e3                                      mvn r3, #0
008320b4  38 30 84 e5                                      str r3, [r4, #0x38]
008320b8  04 00 a0 e1                                      mov r0, r4
008320bc  2f eb ff eb                                      bl #0x82cd80
008320c0  04 00 a0 e1                                      mov r0, r4
008320c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008320c8  80 2a 16 00 14 0e 00 00                          .byte 0x80, 0x2a, 0x16, 0x00, 0x14, 0x0e, 0x00, 0x00

; FUNCTION 0x008320d0, declared_size=100, range_size=100, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponentC1Ev
; demangled: GLXPlayerWebComponent::GLXPlayerWebComponent()
; decoder-mode: arm
008320d0  70 40 2d e9                                      push {r4, r5, r6, lr}
008320d4  50 50 9f e5                                      ldr r5, [pc, #0x50]
008320d8  00 40 a0 e1                                      mov r4, r0
008320dc  eb ea ff eb                                      bl #0x82cc90
008320e0  48 20 9f e5                                      ldr r2, [pc, #0x48]
008320e4  05 50 8f e0                                      add r5, pc, r5
008320e8  00 30 a0 e3                                      mov r3, #0
008320ec  02 20 95 e7                                      ldr r2, [r5, r2]
008320f0  34 30 84 e5                                      str r3, [r4, #0x34]
008320f4  10 30 84 e5                                      str r3, [r4, #0x10]
008320f8  08 20 82 e2                                      add r2, r2, #8
008320fc  00 20 84 e5                                      str r2, [r4]
00832100  00 20 e0 e3                                      mvn r2, #0
00832104  38 20 84 e5                                      str r2, [r4, #0x38]
00832108  14 30 84 e5                                      str r3, [r4, #0x14]
0083210c  18 30 84 e5                                      str r3, [r4, #0x18]
00832110  1c 30 84 e5                                      str r3, [r4, #0x1c]
00832114  24 30 84 e5                                      str r3, [r4, #0x24]
00832118  28 30 84 e5                                      str r3, [r4, #0x28]
0083211c  2c 30 c4 e5                                      strb r3, [r4, #0x2c]
00832120  20 30 84 e5                                      str r3, [r4, #0x20]
00832124  04 00 a0 e1                                      mov r0, r4
00832128  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0083212c  ac 29 16 00 14 0e 00 00                          .byte 0xac, 0x29, 0x16, 0x00, 0x14, 0x0e, 0x00, 0x00

; FUNCTION 0x00832134, declared_size=100, range_size=100, mode=arm
; class-group: GLXPlayerWebComponent
; alias: _ZN21GLXPlayerWebComponentC2Ev
; demangled: GLXPlayerWebComponent::GLXPlayerWebComponent()
; decoder-mode: arm
00832134  70 40 2d e9                                      push {r4, r5, r6, lr}
00832138  50 50 9f e5                                      ldr r5, [pc, #0x50]
0083213c  00 40 a0 e1                                      mov r4, r0
00832140  d2 ea ff eb                                      bl #0x82cc90
00832144  48 20 9f e5                                      ldr r2, [pc, #0x48]
00832148  05 50 8f e0                                      add r5, pc, r5
0083214c  00 30 a0 e3                                      mov r3, #0
00832150  02 20 95 e7                                      ldr r2, [r5, r2]
00832154  34 30 84 e5                                      str r3, [r4, #0x34]
00832158  10 30 84 e5                                      str r3, [r4, #0x10]
0083215c  08 20 82 e2                                      add r2, r2, #8
00832160  00 20 84 e5                                      str r2, [r4]
00832164  00 20 e0 e3                                      mvn r2, #0
00832168  38 20 84 e5                                      str r2, [r4, #0x38]
0083216c  14 30 84 e5                                      str r3, [r4, #0x14]
00832170  18 30 84 e5                                      str r3, [r4, #0x18]
00832174  1c 30 84 e5                                      str r3, [r4, #0x1c]
00832178  24 30 84 e5                                      str r3, [r4, #0x24]
0083217c  28 30 84 e5                                      str r3, [r4, #0x28]
00832180  2c 30 c4 e5                                      strb r3, [r4, #0x2c]
00832184  20 30 84 e5                                      str r3, [r4, #0x20]
00832188  04 00 a0 e1                                      mov r0, r4
0083218c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00832190  48 29 16 00 14 0e 00 00                          .byte 0x48, 0x29, 0x16, 0x00, 0x14, 0x0e, 0x00, 0x00
