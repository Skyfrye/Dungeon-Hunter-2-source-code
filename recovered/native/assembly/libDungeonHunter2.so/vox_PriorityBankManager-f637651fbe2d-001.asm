; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863578, declared_size=244, range_size=244, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManager14_CanAddEmitterEii
; demangled: vox::PriorityBankManager::_CanAddEmitter(int, int)
; decoder-mode: arm
00863578  04 40 2d e5                                      str r4, [sp, #-4]!
0086357c  00 30 90 e5                                      ldr r3, [r0]
00863580  01 00 53 e1                                      cmp r3, r1
00863584  00 30 a0 c3                                      movgt r3, #0
00863588  01 30 a0 d3                                      movle r3, #1
0086358c  a1 3f 93 e1                                      orrs r3, r3, r1, lsr #31
00863590  14 00 00 1a                                      bne #0x8635e8
00863594  18 c0 a0 e3                                      mov ip, #0x18
00863598  9c 01 01 e0                                      mul r1, ip, r1
0086359c  04 00 90 e5                                      ldr r0, [r0, #4]
008635a0  01 c0 90 e7                                      ldr ip, [r0, r1]
008635a4  01 10 80 e0                                      add r1, r0, r1
008635a8  02 00 5c e1                                      cmp ip, r2
008635ac  0d 00 00 ca                                      bgt #0x8635e8
008635b0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
008635b4  10 00 91 e5                                      ldr r0, [r1, #0x10]
008635b8  04 40 91 e5                                      ldr r4, [r1, #4]
008635bc  00 00 6c e0                                      rsb r0, ip, r0
008635c0  c0 01 a0 e1                                      asr r0, r0, #3
008635c4  00 00 54 e1                                      cmp r4, r0
008635c8  09 00 00 ca                                      bgt #0x8635f4
008635cc  08 10 91 e5                                      ldr r1, [r1, #8]
008635d0  01 00 51 e3                                      cmp r1, #1
008635d4  08 00 00 0a                                      beq #0x8635fc
008635d8  02 00 51 e3                                      cmp r1, #2
008635dc  14 00 00 0a                                      beq #0x863634
008635e0  00 00 51 e3                                      cmp r1, #0
008635e4  02 00 00 0a                                      beq #0x8635f4
008635e8  00 00 a0 e3                                      mov r0, #0
008635ec  10 00 bd e8                                      ldm sp!, {r4}
008635f0  1e ff 2f e1                                      bx lr
008635f4  01 00 a0 e3                                      mov r0, #1
008635f8  fb ff ff ea                                      b #0x8635ec
008635fc  00 00 50 e3                                      cmp r0, #0
00863600  f8 ff ff da                                      ble #0x8635e8
00863604  04 10 9c e5                                      ldr r1, [ip, #4]
00863608  01 00 52 e1                                      cmp r2, r1
0086360c  03 00 00 da                                      ble #0x863620
00863610  f7 ff ff ea                                      b #0x8635f4
00863614  04 10 91 e5                                      ldr r1, [r1, #4]
00863618  01 00 52 e1                                      cmp r2, r1
0086361c  f4 ff ff ca                                      bgt #0x8635f4
00863620  01 30 83 e2                                      add r3, r3, #1
00863624  00 00 53 e1                                      cmp r3, r0
00863628  83 11 8c e0                                      add r1, ip, r3, lsl #3
0086362c  f8 ff ff 1a                                      bne #0x863614
00863630  ec ff ff ea                                      b #0x8635e8
00863634  00 00 50 e3                                      cmp r0, #0
00863638  ea ff ff da                                      ble #0x8635e8
0086363c  04 10 9c e5                                      ldr r1, [ip, #4]
00863640  01 00 52 e1                                      cmp r2, r1
00863644  03 00 00 ba                                      blt #0x863658
00863648  e9 ff ff ea                                      b #0x8635f4
0086364c  04 10 91 e5                                      ldr r1, [r1, #4]
00863650  01 00 52 e1                                      cmp r2, r1
00863654  e6 ff ff aa                                      bge #0x8635f4
00863658  01 30 83 e2                                      add r3, r3, #1
0086365c  00 00 53 e1                                      cmp r3, r0
00863660  83 11 8c e0                                      add r1, ip, r3, lsl #3
00863664  f8 ff ff 1a                                      bne #0x86364c
00863668  de ff ff ea                                      b #0x8635e8

; FUNCTION 0x0086418c, declared_size=68, range_size=68, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManagerD1Ev
; demangled: vox::PriorityBankManager::~PriorityBankManager()
; decoder-mode: arm
0086418c  30 40 2d e9                                      push {r4, r5, lr}
00864190  06 00 90 e9                                      ldmib r0, {r1, r2}
00864194  0c d0 4d e2                                      sub sp, sp, #0xc
00864198  00 40 a0 e1                                      mov r4, r0
0086419c  02 00 51 e1                                      cmp r1, r2
008641a0  04 50 80 e2                                      add r5, r0, #4
008641a4  02 00 00 0a                                      beq #0x8641b4
008641a8  05 00 a0 e1                                      mov r0, r5
008641ac  04 30 8d e2                                      add r3, sp, #4
008641b0  db ff ff eb                                      bl #0x864124
008641b4  10 00 84 e2                                      add r0, r4, #0x10
008641b8  fa bc 00 eb                                      bl #0x8935a8
008641bc  05 00 a0 e1                                      mov r0, r5
008641c0  b6 fd ff eb                                      bl #0x8638a0
008641c4  04 00 a0 e1                                      mov r0, r4
008641c8  0c d0 8d e2                                      add sp, sp, #0xc
008641cc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00864a80, declared_size=156, range_size=156, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManager12GetDebugInfoEPNS_15DebugChunk_bankE
; demangled: vox::PriorityBankManager::GetDebugInfo(vox::DebugChunk_bank*)
; decoder-mode: arm
00864a80  70 40 2d e9                                      push {r4, r5, r6, lr}
00864a84  10 50 80 e2                                      add r5, r0, #0x10
00864a88  00 40 a0 e1                                      mov r4, r0
00864a8c  05 00 a0 e1                                      mov r0, r5
00864a90  01 60 a0 e1                                      mov r6, r1
00864a94  78 ba 00 eb                                      bl #0x89347c
00864a98  00 30 94 e5                                      ldr r3, [r4]
00864a9c  00 00 53 e3                                      cmp r3, #0
00864aa0  1a 00 00 da                                      ble #0x864b10
00864aa4  00 30 a0 e3                                      mov r3, #0
00864aa8  03 20 a0 e1                                      mov r2, r3
00864aac  00 20 86 e5                                      str r2, [r6]
00864ab0  04 10 94 e5                                      ldr r1, [r4, #4]
00864ab4  01 20 82 e2                                      add r2, r2, #1
00864ab8  03 10 81 e0                                      add r1, r1, r3
00864abc  08 10 91 e5                                      ldr r1, [r1, #8]
00864ac0  04 10 86 e5                                      str r1, [r6, #4]
00864ac4  04 10 94 e5                                      ldr r1, [r4, #4]
00864ac8  03 10 91 e7                                      ldr r1, [r1, r3]
00864acc  08 10 86 e5                                      str r1, [r6, #8]
00864ad0  04 10 94 e5                                      ldr r1, [r4, #4]
00864ad4  03 10 81 e0                                      add r1, r1, r3
00864ad8  04 10 91 e5                                      ldr r1, [r1, #4]
00864adc  0c 10 86 e5                                      str r1, [r6, #0xc]
00864ae0  04 10 94 e5                                      ldr r1, [r4, #4]
00864ae4  03 10 81 e0                                      add r1, r1, r3
00864ae8  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00864aec  10 10 91 e5                                      ldr r1, [r1, #0x10]
00864af0  18 30 83 e2                                      add r3, r3, #0x18
00864af4  01 10 60 e0                                      rsb r1, r0, r1
00864af8  c1 11 a0 e1                                      asr r1, r1, #3
00864afc  10 10 86 e5                                      str r1, [r6, #0x10]
00864b00  00 10 94 e5                                      ldr r1, [r4]
00864b04  14 60 86 e2                                      add r6, r6, #0x14
00864b08  02 00 51 e1                                      cmp r1, r2
00864b0c  e6 ff ff ca                                      bgt #0x864aac
00864b10  05 00 a0 e1                                      mov r0, r5
00864b14  70 40 bd e8                                      pop {r4, r5, r6, lr}
00864b18  56 ba 00 ea                                      b #0x893478

; FUNCTION 0x00864b1c, declared_size=64, range_size=64, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManager13CanAddEmitterEii
; demangled: vox::PriorityBankManager::CanAddEmitter(int, int)
; decoder-mode: arm
00864b1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00864b20  10 40 80 e2                                      add r4, r0, #0x10
00864b24  00 50 a0 e1                                      mov r5, r0
00864b28  01 70 a0 e1                                      mov r7, r1
00864b2c  02 60 a0 e1                                      mov r6, r2
00864b30  04 00 a0 e1                                      mov r0, r4
00864b34  50 ba 00 eb                                      bl #0x89347c
00864b38  07 10 a0 e1                                      mov r1, r7
00864b3c  06 20 a0 e1                                      mov r2, r6
00864b40  05 00 a0 e1                                      mov r0, r5
00864b44  8b fa ff eb                                      bl #0x863578
00864b48  00 50 a0 e1                                      mov r5, r0
00864b4c  04 00 a0 e1                                      mov r0, r4
00864b50  48 ba 00 eb                                      bl #0x893478
00864b54  05 00 a0 e1                                      mov r0, r5
00864b58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008661bc, declared_size=156, range_size=156, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManager15SetPriorityBankEiiiNS_20PriorityBankBehaviorE
; demangled: vox::PriorityBankManager::SetPriorityBank(int, int, int, vox::PriorityBankBehavior)
; decoder-mode: arm
008661bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008661c0  10 50 80 e2                                      add r5, r0, #0x10
008661c4  00 40 a0 e1                                      mov r4, r0
008661c8  05 00 a0 e1                                      mov r0, r5
008661cc  01 60 a0 e1                                      mov r6, r1
008661d0  02 70 a0 e1                                      mov r7, r2
008661d4  03 a0 a0 e1                                      mov sl, r3
008661d8  a7 b4 00 eb                                      bl #0x89347c
008661dc  00 80 94 e5                                      ldr r8, [r4]
008661e0  00 00 56 e3                                      cmp r6, #0
008661e4  06 00 58 a1                                      cmpge r8, r6
008661e8  00 80 a0 d3                                      movle r8, #0
008661ec  01 80 a0 c3                                      movgt r8, #1
008661f0  03 00 00 ca                                      bgt #0x866204
008661f4  05 00 a0 e1                                      mov r0, r5
008661f8  9e b4 00 eb                                      bl #0x893478
008661fc  08 00 a0 e1                                      mov r0, r8
00866200  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00866204  18 30 a0 e3                                      mov r3, #0x18
00866208  93 06 06 e0                                      mul r6, r3, r6
0086620c  04 30 94 e5                                      ldr r3, [r4, #4]
00866210  0a 10 a0 e1                                      mov r1, sl
00866214  01 80 a0 e3                                      mov r8, #1
00866218  06 70 83 e7                                      str r7, [r3, r6]
0086621c  04 30 94 e5                                      ldr r3, [r4, #4]
00866220  06 30 83 e0                                      add r3, r3, r6
00866224  04 a0 83 e5                                      str sl, [r3, #4]
00866228  04 30 94 e5                                      ldr r3, [r4, #4]
0086622c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00866230  06 30 83 e0                                      add r3, r3, r6
00866234  08 20 83 e5                                      str r2, [r3, #8]
00866238  04 30 94 e5                                      ldr r3, [r4, #4]
0086623c  06 60 83 e0                                      add r6, r3, r6
00866240  0c 00 86 e2                                      add r0, r6, #0xc
00866244  ac ff ff eb                                      bl #0x8660fc
00866248  05 00 a0 e1                                      mov r0, r5
0086624c  89 b4 00 eb                                      bl #0x893478
00866250  08 00 a0 e1                                      mov r0, r8
00866254  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x008696d0, declared_size=236, range_size=236, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManager15AddPriorityBankEiiNS_20PriorityBankBehaviorE
; demangled: vox::PriorityBankManager::AddPriorityBank(int, int, vox::PriorityBankBehavior)
; decoder-mode: arm
008696d0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008696d4  10 50 80 e2                                      add r5, r0, #0x10
008696d8  1c d0 4d e2                                      sub sp, sp, #0x1c
008696dc  00 40 a0 e1                                      mov r4, r0
008696e0  05 00 a0 e1                                      mov r0, r5
008696e4  02 70 a0 e1                                      mov r7, r2
008696e8  03 80 a0 e1                                      mov r8, r3
008696ec  01 a0 a0 e1                                      mov sl, r1
008696f0  61 a7 00 eb                                      bl #0x89347c
008696f4  06 21 a0 e3                                      mov r2, #0x80000001
008696f8  00 20 8d e5                                      str r2, [sp]
008696fc  02 21 e0 e3                                      mvn r2, #0x80000000
00869700  00 30 a0 e3                                      mov r3, #0
00869704  0d 10 a0 e1                                      mov r1, sp
00869708  04 00 84 e2                                      add r0, r4, #4
0086970c  04 20 8d e5                                      str r2, [sp, #4]
00869710  03 20 a0 e3                                      mov r2, #3
00869714  08 20 8d e5                                      str r2, [sp, #8]
00869718  14 30 8d e5                                      str r3, [sp, #0x14]
0086971c  0c 30 8d e5                                      str r3, [sp, #0xc]
00869720  10 30 8d e5                                      str r3, [sp, #0x10]
00869724  98 ff ff eb                                      bl #0x86958c
00869728  0d 00 a0 e1                                      mov r0, sp
0086972c  4f e8 ff eb                                      bl #0x863870
00869730  08 20 94 e5                                      ldr r2, [r4, #8]
00869734  0a 00 94 e8                                      ldm r4, {r1, r3}
00869738  02 20 63 e0                                      rsb r2, r3, r2
0086973c  c2 21 a0 e1                                      asr r2, r2, #3
00869740  01 10 81 e2                                      add r1, r1, #1
00869744  02 61 82 e0                                      add r6, r2, r2, lsl #2
00869748  00 10 84 e5                                      str r1, [r4]
0086974c  06 62 86 e0                                      add r6, r6, r6, lsl #4
00869750  06 64 86 e0                                      add r6, r6, r6, lsl #8
00869754  06 68 86 e0                                      add r6, r6, r6, lsl #16
00869758  86 60 82 e0                                      add r6, r2, r6, lsl #1
0086975c  06 00 51 e1                                      cmp r1, r6
00869760  01 60 46 e2                                      sub r6, r6, #1
00869764  00 60 e0 13                                      mvnne r6, #0
00869768  04 00 00 0a                                      beq #0x869780
0086976c  05 00 a0 e1                                      mov r0, r5
00869770  40 a7 00 eb                                      bl #0x893478
00869774  06 00 a0 e1                                      mov r0, r6
00869778  1c d0 8d e2                                      add sp, sp, #0x1c
0086977c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00869780  18 20 a0 e3                                      mov r2, #0x18
00869784  92 06 02 e0                                      mul r2, r2, r6
00869788  07 10 a0 e1                                      mov r1, r7
0086978c  02 a0 83 e7                                      str sl, [r3, r2]
00869790  04 30 94 e5                                      ldr r3, [r4, #4]
00869794  02 30 83 e0                                      add r3, r3, r2
00869798  04 70 83 e5                                      str r7, [r3, #4]
0086979c  04 30 94 e5                                      ldr r3, [r4, #4]
008697a0  02 30 83 e0                                      add r3, r3, r2
008697a4  08 80 83 e5                                      str r8, [r3, #8]
008697a8  04 30 94 e5                                      ldr r3, [r4, #4]
008697ac  02 20 83 e0                                      add r2, r3, r2
008697b0  0c 00 82 e2                                      add r0, r2, #0xc
008697b4  50 f2 ff eb                                      bl #0x8660fc
008697b8  eb ff ff ea                                      b #0x86976c

; FUNCTION 0x008697bc, declared_size=156, range_size=156, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManagerC1Ei
; demangled: vox::PriorityBankManager::PriorityBankManager(int)
; decoder-mode: arm
008697bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008697c0  00 70 a0 e1                                      mov r7, r0
008697c4  00 40 a0 e3                                      mov r4, #0
008697c8  00 10 80 e5                                      str r1, [r0]
008697cc  1c d0 4d e2                                      sub sp, sp, #0x1c
008697d0  04 40 80 e5                                      str r4, [r0, #4]
008697d4  08 40 80 e5                                      str r4, [r0, #8]
008697d8  0c 40 80 e5                                      str r4, [r0, #0xc]
008697dc  04 80 87 e2                                      add r8, r7, #4
008697e0  10 00 80 e2                                      add r0, r0, #0x10
008697e4  79 a7 00 eb                                      bl #0x8935d0
008697e8  08 00 a0 e1                                      mov r0, r8
008697ec  00 10 97 e5                                      ldr r1, [r7]
008697f0  9e f2 ff eb                                      bl #0x866270
008697f4  00 30 97 e5                                      ldr r3, [r7]
008697f8  04 00 53 e1                                      cmp r3, r4
008697fc  12 00 00 da                                      ble #0x86984c
00869800  0d 60 a0 e1                                      mov r6, sp
00869804  06 b1 a0 e3                                      mov fp, #0x80000001
00869808  02 91 e0 e3                                      mvn sb, #0x80000000
0086980c  03 a0 a0 e3                                      mov sl, #3
00869810  04 50 a0 e1                                      mov r5, r4
00869814  0d 10 a0 e1                                      mov r1, sp
00869818  08 00 a0 e1                                      mov r0, r8
0086981c  00 b0 8d e5                                      str fp, [sp]
00869820  00 06 8d e9                                      stmib sp, {sb, sl}
00869824  0c 50 8d e5                                      str r5, [sp, #0xc]
00869828  10 50 8d e5                                      str r5, [sp, #0x10]
0086982c  14 50 8d e5                                      str r5, [sp, #0x14]
00869830  55 ff ff eb                                      bl #0x86958c
00869834  0d 00 a0 e1                                      mov r0, sp
00869838  0c e8 ff eb                                      bl #0x863870
0086983c  00 30 97 e5                                      ldr r3, [r7]
00869840  01 40 84 e2                                      add r4, r4, #1
00869844  04 00 53 e1                                      cmp r3, r4
00869848  f1 ff ff ca                                      bgt #0x869814
0086984c  07 00 a0 e1                                      mov r0, r7
00869850  1c d0 8d e2                                      add sp, sp, #0x1c
00869854  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00869858, declared_size=72, range_size=72, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManagerC1Ev
; demangled: vox::PriorityBankManager::PriorityBankManager()
; decoder-mode: arm
00869858  30 40 2d e9                                      push {r4, r5, lr}
0086985c  00 30 a0 e3                                      mov r3, #0
00869860  1c d0 4d e2                                      sub sp, sp, #0x1c
00869864  0c 30 80 e5                                      str r3, [r0, #0xc]
00869868  04 30 80 e5                                      str r3, [r0, #4]
0086986c  08 30 80 e5                                      str r3, [r0, #8]
00869870  00 40 a0 e1                                      mov r4, r0
00869874  04 50 8d e2                                      add r5, sp, #4
00869878  10 00 80 e2                                      add r0, r0, #0x10
0086987c  53 a7 00 eb                                      bl #0x8935d0
00869880  01 10 a0 e3                                      mov r1, #1
00869884  05 00 a0 e1                                      mov r0, r5
00869888  cb ff ff eb                                      bl #0x8697bc
0086988c  05 00 a0 e1                                      mov r0, r5
00869890  3d ea ff eb                                      bl #0x86418c
00869894  04 00 a0 e1                                      mov r0, r4
00869898  1c d0 8d e2                                      add sp, sp, #0x1c
0086989c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x008698a0, declared_size=72, range_size=72, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManagerC2Ev
; demangled: vox::PriorityBankManager::PriorityBankManager()
; decoder-mode: arm
008698a0  30 40 2d e9                                      push {r4, r5, lr}
008698a4  00 30 a0 e3                                      mov r3, #0
008698a8  1c d0 4d e2                                      sub sp, sp, #0x1c
008698ac  0c 30 80 e5                                      str r3, [r0, #0xc]
008698b0  04 30 80 e5                                      str r3, [r0, #4]
008698b4  08 30 80 e5                                      str r3, [r0, #8]
008698b8  00 40 a0 e1                                      mov r4, r0
008698bc  04 50 8d e2                                      add r5, sp, #4
008698c0  10 00 80 e2                                      add r0, r0, #0x10
008698c4  41 a7 00 eb                                      bl #0x8935d0
008698c8  01 10 a0 e3                                      mov r1, #1
008698cc  05 00 a0 e1                                      mov r0, r5
008698d0  b9 ff ff eb                                      bl #0x8697bc
008698d4  05 00 a0 e1                                      mov r0, r5
008698d8  2b ea ff eb                                      bl #0x86418c
008698dc  04 00 a0 e1                                      mov r0, r4
008698e0  1c d0 8d e2                                      add sp, sp, #0x1c
008698e4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x008698e8, declared_size=156, range_size=156, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManagerC2Ei
; demangled: vox::PriorityBankManager::PriorityBankManager(int)
; decoder-mode: arm
008698e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008698ec  00 70 a0 e1                                      mov r7, r0
008698f0  00 40 a0 e3                                      mov r4, #0
008698f4  00 10 80 e5                                      str r1, [r0]
008698f8  1c d0 4d e2                                      sub sp, sp, #0x1c
008698fc  04 40 80 e5                                      str r4, [r0, #4]
00869900  08 40 80 e5                                      str r4, [r0, #8]
00869904  0c 40 80 e5                                      str r4, [r0, #0xc]
00869908  04 80 87 e2                                      add r8, r7, #4
0086990c  10 00 80 e2                                      add r0, r0, #0x10
00869910  2e a7 00 eb                                      bl #0x8935d0
00869914  08 00 a0 e1                                      mov r0, r8
00869918  00 10 97 e5                                      ldr r1, [r7]
0086991c  53 f2 ff eb                                      bl #0x866270
00869920  00 30 97 e5                                      ldr r3, [r7]
00869924  04 00 53 e1                                      cmp r3, r4
00869928  12 00 00 da                                      ble #0x869978
0086992c  0d 60 a0 e1                                      mov r6, sp
00869930  06 b1 a0 e3                                      mov fp, #0x80000001
00869934  02 91 e0 e3                                      mvn sb, #0x80000000
00869938  03 a0 a0 e3                                      mov sl, #3
0086993c  04 50 a0 e1                                      mov r5, r4
00869940  0d 10 a0 e1                                      mov r1, sp
00869944  08 00 a0 e1                                      mov r0, r8
00869948  00 b0 8d e5                                      str fp, [sp]
0086994c  00 06 8d e9                                      stmib sp, {sb, sl}
00869950  0c 50 8d e5                                      str r5, [sp, #0xc]
00869954  10 50 8d e5                                      str r5, [sp, #0x10]
00869958  14 50 8d e5                                      str r5, [sp, #0x14]
0086995c  0a ff ff eb                                      bl #0x86958c
00869960  0d 00 a0 e1                                      mov r0, sp
00869964  c1 e7 ff eb                                      bl #0x863870
00869968  00 30 97 e5                                      ldr r3, [r7]
0086996c  01 40 84 e2                                      add r4, r4, #1
00869970  04 00 53 e1                                      cmp r3, r4
00869974  f1 ff ff ca                                      bgt #0x869940
00869978  07 00 a0 e1                                      mov r0, r7
0086997c  1c d0 8d e2                                      add sp, sp, #0x1c
00869980  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0086a3c8, declared_size=316, range_size=316, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManager6UpdateEv
; demangled: vox::PriorityBankManager::Update()
; decoder-mode: arm
0086a3c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086a3cc  10 a0 80 e2                                      add sl, r0, #0x10
0086a3d0  00 70 a0 e1                                      mov r7, r0
0086a3d4  0a 00 a0 e1                                      mov r0, sl
0086a3d8  27 a4 00 eb                                      bl #0x89347c
0086a3dc  00 20 97 e5                                      ldr r2, [r7]
0086a3e0  00 00 52 e3                                      cmp r2, #0
0086a3e4  31 00 00 da                                      ble #0x86a4b0
0086a3e8  00 60 a0 e3                                      mov r6, #0
0086a3ec  06 80 a0 e1                                      mov r8, r6
0086a3f0  04 30 97 e5                                      ldr r3, [r7, #4]
0086a3f4  06 30 83 e0                                      add r3, r3, r6
0086a3f8  10 50 93 e5                                      ldr r5, [r3, #0x10]
0086a3fc  0c 40 93 e5                                      ldr r4, [r3, #0xc]
0086a400  05 00 54 e1                                      cmp r4, r5
0086a404  02 00 00 1a                                      bne #0x86a414
0086a408  24 00 00 ea                                      b #0x86a4a0
0086a40c  04 00 55 e1                                      cmp r5, r4
0086a410  21 00 00 0a                                      beq #0x86a49c
0086a414  00 00 94 e5                                      ldr r0, [r4]
0086a418  00 00 50 e3                                      cmp r0, #0
0086a41c  26 00 00 0a                                      beq #0x86a4bc
0086a420  5d ec ff eb                                      bl #0x86559c
0086a424  00 00 50 e3                                      cmp r0, #0
0086a428  08 40 84 12                                      addne r4, r4, #8
0086a42c  f6 ff ff 1a                                      bne #0x86a40c
0086a430  04 20 a0 e1                                      mov r2, r4
0086a434  08 30 92 e4                                      ldr r3, [r2], #8
0086a438  34 00 c3 e5                                      strb r0, [r3, #0x34]
0086a43c  04 c0 97 e5                                      ldr ip, [r7, #4]
0086a440  06 c0 8c e0                                      add ip, ip, r6
0086a444  10 30 9c e5                                      ldr r3, [ip, #0x10]
0086a448  03 00 52 e1                                      cmp r2, r3
0086a44c  0b 00 00 0a                                      beq #0x86a480
0086a450  03 20 62 e0                                      rsb r2, r2, r3
0086a454  c2 21 a0 e1                                      asr r2, r2, #3
0086a458  00 00 52 e3                                      cmp r2, #0
0086a45c  07 00 00 da                                      ble #0x86a480
0086a460  04 30 a0 e1                                      mov r3, r4
0086a464  08 00 93 e5                                      ldr r0, [r3, #8]
0086a468  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0086a46c  01 20 52 e2                                      subs r2, r2, #1
0086a470  03 00 83 e8                                      stm r3, {r0, r1}
0086a474  08 30 83 e2                                      add r3, r3, #8
0086a478  f9 ff ff 1a                                      bne #0x86a464
0086a47c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0086a480  08 30 43 e2                                      sub r3, r3, #8
0086a484  10 30 8c e5                                      str r3, [ip, #0x10]
0086a488  04 30 97 e5                                      ldr r3, [r7, #4]
0086a48c  06 30 83 e0                                      add r3, r3, r6
0086a490  10 50 93 e5                                      ldr r5, [r3, #0x10]
0086a494  04 00 55 e1                                      cmp r5, r4
0086a498  dd ff ff 1a                                      bne #0x86a414
0086a49c  00 20 97 e5                                      ldr r2, [r7]
0086a4a0  01 80 88 e2                                      add r8, r8, #1
0086a4a4  08 00 52 e1                                      cmp r2, r8
0086a4a8  18 60 86 e2                                      add r6, r6, #0x18
0086a4ac  cf ff ff ca                                      bgt #0x86a3f0
0086a4b0  0a 00 a0 e1                                      mov r0, sl
0086a4b4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0086a4b8  ee a3 00 ea                                      b #0x893478
0086a4bc  04 c0 97 e5                                      ldr ip, [r7, #4]
0086a4c0  08 20 84 e2                                      add r2, r4, #8
0086a4c4  06 c0 8c e0                                      add ip, ip, r6
0086a4c8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0086a4cc  03 00 52 e1                                      cmp r2, r3
0086a4d0  ea ff ff 0a                                      beq #0x86a480
0086a4d4  03 20 62 e0                                      rsb r2, r2, r3
0086a4d8  c2 21 a0 e1                                      asr r2, r2, #3
0086a4dc  00 00 52 e3                                      cmp r2, #0
0086a4e0  e6 ff ff da                                      ble #0x86a480
0086a4e4  04 30 a0 e1                                      mov r3, r4
0086a4e8  08 00 93 e5                                      ldr r0, [r3, #8]
0086a4ec  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0086a4f0  01 20 52 e2                                      subs r2, r2, #1
0086a4f4  03 00 83 e8                                      stm r3, {r0, r1}
0086a4f8  08 30 83 e2                                      add r3, r3, #8
0086a4fc  f9 ff ff 1a                                      bne #0x86a4e8
0086a500  dd ff ff ea                                      b #0x86a47c

; FUNCTION 0x0086e078, declared_size=232, range_size=232, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManager13RemoveEmitterEiPNS_10EmitterObjE
; demangled: vox::PriorityBankManager::RemoveEmitter(int, vox::EmitterObj*)
; decoder-mode: arm
0086e078  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086e07c  10 50 80 e2                                      add r5, r0, #0x10
0086e080  00 40 a0 e1                                      mov r4, r0
0086e084  05 00 a0 e1                                      mov r0, r5
0086e088  01 60 a0 e1                                      mov r6, r1
0086e08c  02 70 a0 e1                                      mov r7, r2
0086e090  f9 94 00 eb                                      bl #0x89347c
0086e094  00 30 94 e5                                      ldr r3, [r4]
0086e098  06 00 53 e1                                      cmp r3, r6
0086e09c  00 30 a0 c3                                      movgt r3, #0
0086e0a0  01 30 a0 d3                                      movle r3, #1
0086e0a4  a6 3f 93 e1                                      orrs r3, r3, r6, lsr #31
0086e0a8  27 00 00 1a                                      bne #0x86e14c
0086e0ac  00 00 57 e3                                      cmp r7, #0
0086e0b0  25 00 00 0a                                      beq #0x86e14c
0086e0b4  04 30 94 e5                                      ldr r3, [r4, #4]
0086e0b8  18 20 a0 e3                                      mov r2, #0x18
0086e0bc  92 36 26 e0                                      mla r6, r2, r6, r3
0086e0c0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0086e0c4  10 10 96 e5                                      ldr r1, [r6, #0x10]
0086e0c8  01 00 53 e1                                      cmp r3, r1
0086e0cc  03 00 00 1a                                      bne #0x86e0e0
0086e0d0  1d 00 00 ea                                      b #0x86e14c
0086e0d4  08 30 83 e2                                      add r3, r3, #8
0086e0d8  01 00 53 e1                                      cmp r3, r1
0086e0dc  1a 00 00 0a                                      beq #0x86e14c
0086e0e0  00 20 93 e5                                      ldr r2, [r3]
0086e0e4  07 00 52 e1                                      cmp r2, r7
0086e0e8  f9 ff ff 1a                                      bne #0x86e0d4
0086e0ec  08 00 83 e2                                      add r0, r3, #8
0086e0f0  00 00 51 e1                                      cmp r1, r0
0086e0f4  0d 00 00 0a                                      beq #0x86e130
0086e0f8  01 20 60 e0                                      rsb r2, r0, r1
0086e0fc  c2 21 a0 e1                                      asr r2, r2, #3
0086e100  00 00 52 e3                                      cmp r2, #0
0086e104  01 00 00 ca                                      bgt #0x86e110
0086e108  08 00 00 ea                                      b #0x86e130
0086e10c  08 00 80 e2                                      add r0, r0, #8
0086e110  08 c0 93 e5                                      ldr ip, [r3, #8]
0086e114  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0086e118  01 20 52 e2                                      subs r2, r2, #1
0086e11c  00 c0 83 e5                                      str ip, [r3]
0086e120  04 10 83 e5                                      str r1, [r3, #4]
0086e124  00 30 a0 e1                                      mov r3, r0
0086e128  f7 ff ff 1a                                      bne #0x86e10c
0086e12c  10 10 96 e5                                      ldr r1, [r6, #0x10]
0086e130  08 10 41 e2                                      sub r1, r1, #8
0086e134  05 00 a0 e1                                      mov r0, r5
0086e138  10 10 86 e5                                      str r1, [r6, #0x10]
0086e13c  01 40 a0 e3                                      mov r4, #1
0086e140  cc 94 00 eb                                      bl #0x893478
0086e144  04 00 a0 e1                                      mov r0, r4
0086e148  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086e14c  05 00 a0 e1                                      mov r0, r5
0086e150  00 40 a0 e3                                      mov r4, #0
0086e154  c7 94 00 eb                                      bl #0x893478
0086e158  04 00 a0 e1                                      mov r0, r4
0086e15c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0086ea54, declared_size=684, range_size=684, mode=arm
; class-group: vox::PriorityBankManager
; alias: _ZN3vox19PriorityBankManager10AddEmitterEiPNS_10EmitterObjE
; demangled: vox::PriorityBankManager::AddEmitter(int, vox::EmitterObj*)
; decoder-mode: arm
0086ea54  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086ea58  10 50 80 e2                                      add r5, r0, #0x10
0086ea5c  02 70 a0 e1                                      mov r7, r2
0086ea60  24 d0 4d e2                                      sub sp, sp, #0x24
0086ea64  00 40 a0 e1                                      mov r4, r0
0086ea68  05 00 a0 e1                                      mov r0, r5
0086ea6c  01 60 a0 e1                                      mov r6, r1
0086ea70  81 92 00 eb                                      bl #0x89347c
0086ea74  00 00 57 e3                                      cmp r7, #0
0086ea78  05 00 00 0a                                      beq #0x86ea94
0086ea7c  00 30 94 e5                                      ldr r3, [r4]
0086ea80  06 00 53 e1                                      cmp r3, r6
0086ea84  00 30 a0 c3                                      movgt r3, #0
0086ea88  01 30 a0 d3                                      movle r3, #1
0086ea8c  a6 3f 93 e1                                      orrs r3, r3, r6, lsr #31
0086ea90  05 00 00 0a                                      beq #0x86eaac
0086ea94  00 40 a0 e3                                      mov r4, #0
0086ea98  05 00 a0 e1                                      mov r0, r5
0086ea9c  75 92 00 eb                                      bl #0x893478
0086eaa0  04 00 a0 e1                                      mov r0, r4
0086eaa4  24 d0 8d e2                                      add sp, sp, #0x24
0086eaa8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0086eaac  34 30 d7 e5                                      ldrb r3, [r7, #0x34]
0086eab0  00 00 53 e3                                      cmp r3, #0
0086eab4  f6 ff ff 1a                                      bne #0x86ea94
0086eab8  04 00 a0 e1                                      mov r0, r4
0086eabc  06 10 a0 e1                                      mov r1, r6
0086eac0  2c 20 97 e5                                      ldr r2, [r7, #0x2c]
0086eac4  ab d2 ff eb                                      bl #0x863578
0086eac8  00 00 50 e3                                      cmp r0, #0
0086eacc  f0 ff ff 0a                                      beq #0x86ea94
0086ead0  18 30 a0 e3                                      mov r3, #0x18
0086ead4  93 06 06 e0                                      mul r6, r3, r6
0086ead8  04 00 94 e5                                      ldr r0, [r4, #4]
0086eadc  06 00 80 e0                                      add r0, r0, r6
0086eae0  08 30 90 e5                                      ldr r3, [r0, #8]
0086eae4  03 00 53 e3                                      cmp r3, #3
0086eae8  05 00 00 0a                                      beq #0x86eb04
0086eaec  10 10 90 e5                                      ldr r1, [r0, #0x10]
0086eaf0  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0086eaf4  04 20 90 e5                                      ldr r2, [r0, #4]
0086eaf8  01 c0 68 e0                                      rsb ip, r8, r1
0086eafc  cc 01 52 e1                                      cmp r2, ip, asr #3
0086eb00  07 00 00 da                                      ble #0x86eb24
0086eb04  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
0086eb08  0c 00 80 e2                                      add r0, r0, #0xc
0086eb0c  18 10 8d e2                                      add r1, sp, #0x18
0086eb10  18 70 8d e5                                      str r7, [sp, #0x18]
0086eb14  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086eb18  01 40 a0 e3                                      mov r4, #1
0086eb1c  58 ea ff eb                                      bl #0x869484
0086eb20  dc ff ff ea                                      b #0x86ea98
0086eb24  00 00 53 e3                                      cmp r3, #0
0086eb28  18 00 00 1a                                      bne #0x86eb90
0086eb2c  00 20 98 e5                                      ldr r2, [r8]
0086eb30  00 00 52 e3                                      cmp r2, #0
0086eb34  06 00 00 0a                                      beq #0x86eb54
0086eb38  34 30 c2 e5                                      strb r3, [r2, #0x34]
0086eb3c  00 00 98 e5                                      ldr r0, [r8]
0086eb40  00 10 a0 e3                                      mov r1, #0
0086eb44  47 ff ff eb                                      bl #0x86e868
0086eb48  04 00 94 e5                                      ldr r0, [r4, #4]
0086eb4c  06 00 80 e0                                      add r0, r0, r6
0086eb50  10 10 90 e5                                      ldr r1, [r0, #0x10]
0086eb54  01 00 58 e1                                      cmp r8, r1
0086eb58  04 00 00 0a                                      beq #0x86eb70
0086eb5c  0c 00 80 e2                                      add r0, r0, #0xc
0086eb60  08 10 a0 e1                                      mov r1, r8
0086eb64  c5 d2 ff eb                                      bl #0x863680
0086eb68  04 00 94 e5                                      ldr r0, [r4, #4]
0086eb6c  06 00 80 e0                                      add r0, r0, r6
0086eb70  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
0086eb74  0c 00 80 e2                                      add r0, r0, #0xc
0086eb78  10 10 8d e2                                      add r1, sp, #0x10
0086eb7c  10 70 8d e5                                      str r7, [sp, #0x10]
0086eb80  14 30 8d e5                                      str r3, [sp, #0x14]
0086eb84  01 40 a0 e3                                      mov r4, #1
0086eb88  3d ea ff eb                                      bl #0x869484
0086eb8c  c1 ff ff ea                                      b #0x86ea98
0086eb90  01 00 53 e3                                      cmp r3, #1
0086eb94  2e 00 00 0a                                      beq #0x86ec54
0086eb98  08 00 51 e1                                      cmp r1, r8
0086eb9c  2c c0 97 e5                                      ldr ip, [r7, #0x2c]
0086eba0  bb ff ff 0a                                      beq #0x86ea94
0086eba4  01 a0 a0 e1                                      mov sl, r1
0086eba8  08 30 a0 e1                                      mov r3, r8
0086ebac  00 20 93 e5                                      ldr r2, [r3]
0086ebb0  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
0086ebb4  02 00 5c e1                                      cmp ip, r2
0086ebb8  02 00 00 ca                                      bgt #0x86ebc8
0086ebbc  01 00 5a e1                                      cmp sl, r1
0086ebc0  02 00 5c 01                                      cmpeq ip, r2
0086ebc4  01 00 00 1a                                      bne #0x86ebd0
0086ebc8  02 c0 a0 e1                                      mov ip, r2
0086ebcc  03 a0 a0 e1                                      mov sl, r3
0086ebd0  08 30 83 e2                                      add r3, r3, #8
0086ebd4  01 00 53 e1                                      cmp r3, r1
0086ebd8  f3 ff ff 1a                                      bne #0x86ebac
0086ebdc  08 20 88 e2                                      add r2, r8, #8
0086ebe0  03 30 62 e0                                      rsb r3, r2, r3
0086ebe4  07 30 c3 e3                                      bic r3, r3, #7
0086ebe8  08 30 83 e2                                      add r3, r3, #8
0086ebec  03 80 88 e0                                      add r8, r8, r3
0086ebf0  08 00 5a e1                                      cmp sl, r8
0086ebf4  a6 ff ff 0a                                      beq #0x86ea94
0086ebf8  00 30 9a e5                                      ldr r3, [sl]
0086ebfc  00 00 53 e3                                      cmp r3, #0
0086ec00  06 00 00 0a                                      beq #0x86ec20
0086ec04  00 20 a0 e3                                      mov r2, #0
0086ec08  34 20 c3 e5                                      strb r2, [r3, #0x34]
0086ec0c  00 00 9a e5                                      ldr r0, [sl]
0086ec10  00 10 a0 e3                                      mov r1, #0
0086ec14  13 ff ff eb                                      bl #0x86e868
0086ec18  04 00 94 e5                                      ldr r0, [r4, #4]
0086ec1c  06 00 80 e0                                      add r0, r0, r6
0086ec20  0a 10 a0 e1                                      mov r1, sl
0086ec24  0c 00 80 e2                                      add r0, r0, #0xc
0086ec28  94 d2 ff eb                                      bl #0x863680
0086ec2c  04 00 94 e5                                      ldr r0, [r4, #4]
0086ec30  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
0086ec34  0d 10 a0 e1                                      mov r1, sp
0086ec38  06 00 80 e0                                      add r0, r0, r6
0086ec3c  0c 00 80 e2                                      add r0, r0, #0xc
0086ec40  00 70 8d e5                                      str r7, [sp]
0086ec44  04 30 8d e5                                      str r3, [sp, #4]
0086ec48  01 40 a0 e3                                      mov r4, #1
0086ec4c  0c ea ff eb                                      bl #0x869484
0086ec50  90 ff ff ea                                      b #0x86ea98
0086ec54  08 00 51 e1                                      cmp r1, r8
0086ec58  2c c0 97 e5                                      ldr ip, [r7, #0x2c]
0086ec5c  8c ff ff 0a                                      beq #0x86ea94
0086ec60  01 a0 a0 e1                                      mov sl, r1
0086ec64  08 30 a0 e1                                      mov r3, r8
0086ec68  00 20 93 e5                                      ldr r2, [r3]
0086ec6c  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
0086ec70  02 00 5c e1                                      cmp ip, r2
0086ec74  03 a0 a0 c1                                      movgt sl, r3
0086ec78  08 30 83 e2                                      add r3, r3, #8
0086ec7c  02 c0 a0 c1                                      movgt ip, r2
0086ec80  01 00 53 e1                                      cmp r3, r1
0086ec84  f7 ff ff 1a                                      bne #0x86ec68
0086ec88  08 20 88 e2                                      add r2, r8, #8
0086ec8c  03 30 62 e0                                      rsb r3, r2, r3
0086ec90  07 30 c3 e3                                      bic r3, r3, #7
0086ec94  08 30 83 e2                                      add r3, r3, #8
0086ec98  03 80 88 e0                                      add r8, r8, r3
0086ec9c  08 00 5a e1                                      cmp sl, r8
0086eca0  7b ff ff 0a                                      beq #0x86ea94
0086eca4  00 30 9a e5                                      ldr r3, [sl]
0086eca8  00 00 53 e3                                      cmp r3, #0
0086ecac  06 00 00 0a                                      beq #0x86eccc
0086ecb0  00 20 a0 e3                                      mov r2, #0
0086ecb4  34 20 c3 e5                                      strb r2, [r3, #0x34]
0086ecb8  00 00 9a e5                                      ldr r0, [sl]
0086ecbc  00 10 a0 e3                                      mov r1, #0
0086ecc0  e8 fe ff eb                                      bl #0x86e868
0086ecc4  04 00 94 e5                                      ldr r0, [r4, #4]
0086ecc8  06 00 80 e0                                      add r0, r0, r6
0086eccc  0a 10 a0 e1                                      mov r1, sl
0086ecd0  0c 00 80 e2                                      add r0, r0, #0xc
0086ecd4  69 d2 ff eb                                      bl #0x863680
0086ecd8  04 00 94 e5                                      ldr r0, [r4, #4]
0086ecdc  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
0086ece0  08 10 8d e2                                      add r1, sp, #8
0086ece4  06 00 80 e0                                      add r0, r0, r6
0086ece8  0c 00 80 e2                                      add r0, r0, #0xc
0086ecec  08 70 8d e5                                      str r7, [sp, #8]
0086ecf0  0c 30 8d e5                                      str r3, [sp, #0xc]
0086ecf4  01 40 a0 e3                                      mov r4, #1
0086ecf8  e1 e9 ff eb                                      bl #0x869484
0086ecfc  65 ff ff ea                                      b #0x86ea98
