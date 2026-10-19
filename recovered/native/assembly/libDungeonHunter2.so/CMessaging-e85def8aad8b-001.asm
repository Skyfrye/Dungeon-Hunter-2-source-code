; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080a710, declared_size=40, range_size=40, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging13IsInitializedEv
; demangled: CMessaging::IsInitialized()
; decoder-mode: arm
0080a710  18 30 9f e5                                      ldr r3, [pc, #0x18]
0080a714  18 20 9f e5                                      ldr r2, [pc, #0x18]
0080a718  03 30 8f e0                                      add r3, pc, r3
0080a71c  02 20 93 e7                                      ldr r2, [r3, r2]
0080a720  00 00 92 e5                                      ldr r0, [r2]
0080a724  00 00 50 e3                                      cmp r0, #0
0080a728  04 00 d0 15                                      ldrbne r0, [r0, #4]
0080a72c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0080a730  78 a3 18 00 dc 42 00 00                          .byte 0x78, 0xa3, 0x18, 0x00, 0xdc, 0x42, 0x00, 0x00

; FUNCTION 0x0080a738, declared_size=68, range_size=68, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging9TerminateEv
; demangled: CMessaging::Terminate()
; decoder-mode: arm
0080a738  34 30 9f e5                                      ldr r3, [pc, #0x34]
0080a73c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0080a740  10 40 2d e9                                      push {r4, lr}
0080a744  03 30 8f e0                                      add r3, pc, r3
0080a748  02 40 93 e7                                      ldr r4, [r3, r2]
0080a74c  00 30 94 e5                                      ldr r3, [r4]
0080a750  00 00 53 e3                                      cmp r3, #0
0080a754  05 00 00 0a                                      beq #0x80a770
0080a758  03 00 a0 e1                                      mov r0, r3
0080a75c  00 30 93 e5                                      ldr r3, [r3]
0080a760  0f e0 a0 e1                                      mov lr, pc
0080a764  04 f0 93 e5                                      ldr pc, [r3, #4]
0080a768  00 30 a0 e3                                      mov r3, #0
0080a76c  00 30 84 e5                                      str r3, [r4]
0080a770  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0080a774  4c a3 18 00 dc 42 00 00                          .byte 0x4c, 0xa3, 0x18, 0x00, 0xdc, 0x42, 0x00, 0x00

; FUNCTION 0x0080a77c, declared_size=8, range_size=8, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging6UpdateEv
; demangled: CMessaging::Update()
; decoder-mode: arm
0080a77c  00 00 a0 e3                                      mov r0, #0
0080a780  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080a784, declared_size=168, range_size=168, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging14PrintRecvQueueEv
; demangled: CMessaging::PrintRecvQueue()
; decoder-mode: arm
0080a784  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0080a788  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0080a78c  1c 50 80 e2                                      add r5, r0, #0x1c
0080a790  0c d0 4d e2                                      sub sp, sp, #0xc
0080a794  05 00 53 e1                                      cmp r3, r5
0080a798  00 40 a0 e1                                      mov r4, r0
0080a79c  1e 00 00 0a                                      beq #0x80a81c
0080a7a0  08 70 80 e2                                      add r7, r0, #8
0080a7a4  07 00 a0 e1                                      mov r0, r7
0080a7a8  ef 0e 00 eb                                      bl #0x80e36c
0080a7ac  70 00 9f e5                                      ldr r0, [pc, #0x70]
0080a7b0  70 60 9f e5                                      ldr r6, [pc, #0x70]
0080a7b4  00 00 8f e0                                      add r0, pc, r0
0080a7b8  b1 0d ec eb                                      bl #0x30de84
0080a7bc  1c 40 94 e5                                      ldr r4, [r4, #0x1c]
0080a7c0  06 60 8f e0                                      add r6, pc, r6
0080a7c4  06 00 a0 e1                                      mov r0, r6
0080a7c8  04 00 55 e1                                      cmp r5, r4
0080a7cc  0c 00 00 0a                                      beq #0x80a804
0080a7d0  08 c0 94 e5                                      ldr ip, [r4, #8]
0080a7d4  00 00 5c e3                                      cmp ip, #0
0080a7d8  05 00 00 0a                                      beq #0x80a7f4
0080a7dc  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0080a7e0  04 20 9c e5                                      ldr r2, [ip, #4]
0080a7e4  40 30 9c e5                                      ldr r3, [ip, #0x40]
0080a7e8  08 c0 9c e5                                      ldr ip, [ip, #8]
0080a7ec  00 c0 8d e5                                      str ip, [sp]
0080a7f0  a3 0d ec eb                                      bl #0x30de84
0080a7f4  00 40 94 e5                                      ldr r4, [r4]
0080a7f8  06 00 a0 e1                                      mov r0, r6
0080a7fc  04 00 55 e1                                      cmp r5, r4
0080a800  f2 ff ff 1a                                      bne #0x80a7d0
0080a804  0a 00 a0 e3                                      mov r0, #0xa
0080a808  58 10 ec eb                                      bl #0x30e970
0080a80c  07 00 a0 e1                                      mov r0, r7
0080a810  0c d0 8d e2                                      add sp, sp, #0xc
0080a814  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
0080a818  d2 0e 00 ea                                      b #0x80e368
0080a81c  0c d0 8d e2                                      add sp, sp, #0xc
0080a820  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0080a824  6c 1a 10 00 68 1a 10 00                          .byte 0x6c, 0x1a, 0x10, 0x00, 0x68, 0x1a, 0x10, 0x00

; FUNCTION 0x0080a82c, declared_size=168, range_size=168, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging14PrintSendQueueEv
; demangled: CMessaging::PrintSendQueue()
; decoder-mode: arm
0080a82c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0080a830  24 30 90 e5                                      ldr r3, [r0, #0x24]
0080a834  24 50 80 e2                                      add r5, r0, #0x24
0080a838  0c d0 4d e2                                      sub sp, sp, #0xc
0080a83c  05 00 53 e1                                      cmp r3, r5
0080a840  00 40 a0 e1                                      mov r4, r0
0080a844  1e 00 00 0a                                      beq #0x80a8c4
0080a848  0c 70 80 e2                                      add r7, r0, #0xc
0080a84c  07 00 a0 e1                                      mov r0, r7
0080a850  c5 0e 00 eb                                      bl #0x80e36c
0080a854  70 00 9f e5                                      ldr r0, [pc, #0x70]
0080a858  70 60 9f e5                                      ldr r6, [pc, #0x70]
0080a85c  00 00 8f e0                                      add r0, pc, r0
0080a860  87 0d ec eb                                      bl #0x30de84
0080a864  24 40 94 e5                                      ldr r4, [r4, #0x24]
0080a868  06 60 8f e0                                      add r6, pc, r6
0080a86c  06 00 a0 e1                                      mov r0, r6
0080a870  04 00 55 e1                                      cmp r5, r4
0080a874  0c 00 00 0a                                      beq #0x80a8ac
0080a878  08 c0 94 e5                                      ldr ip, [r4, #8]
0080a87c  00 00 5c e3                                      cmp ip, #0
0080a880  05 00 00 0a                                      beq #0x80a89c
0080a884  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0080a888  04 20 9c e5                                      ldr r2, [ip, #4]
0080a88c  40 30 9c e5                                      ldr r3, [ip, #0x40]
0080a890  08 c0 9c e5                                      ldr ip, [ip, #8]
0080a894  00 c0 8d e5                                      str ip, [sp]
0080a898  79 0d ec eb                                      bl #0x30de84
0080a89c  00 40 94 e5                                      ldr r4, [r4]
0080a8a0  06 00 a0 e1                                      mov r0, r6
0080a8a4  04 00 55 e1                                      cmp r5, r4
0080a8a8  f2 ff ff 1a                                      bne #0x80a878
0080a8ac  0a 00 a0 e3                                      mov r0, #0xa
0080a8b0  2e 10 ec eb                                      bl #0x30e970
0080a8b4  07 00 a0 e1                                      mov r0, r7
0080a8b8  0c d0 8d e2                                      add sp, sp, #0xc
0080a8bc  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
0080a8c0  a8 0e 00 ea                                      b #0x80e368
0080a8c4  0c d0 8d e2                                      add sp, sp, #0xc
0080a8c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0080a8cc  e4 19 10 00 c0 19 10 00                          .byte 0xe4, 0x19, 0x10, 0x00, 0xc0, 0x19, 0x10, 0x00

; FUNCTION 0x0080a8d4, declared_size=184, range_size=184, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging18ResendLostMessagesEiRSt3setItSt4lessItESaItEE
; demangled: CMessaging::ResendLostMessages(int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >&)
; decoder-mode: arm
0080a8d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080a8d8  0c 80 80 e2                                      add r8, r0, #0xc
0080a8dc  00 60 a0 e1                                      mov r6, r0
0080a8e0  08 00 a0 e1                                      mov r0, r8
0080a8e4  01 70 a0 e1                                      mov r7, r1
0080a8e8  02 40 a0 e1                                      mov r4, r2
0080a8ec  9e 0e 00 eb                                      bl #0x80e36c
0080a8f0  24 50 b6 e5                                      ldr r5, [r6, #0x24]!
0080a8f4  05 00 56 e1                                      cmp r6, r5
0080a8f8  1e 00 00 0a                                      beq #0x80a978
0080a8fc  08 a0 95 e5                                      ldr sl, [r5, #8]
0080a900  0a 00 a0 e1                                      mov r0, sl
0080a904  fc fc ff eb                                      bl #0x809cfc
0080a908  04 30 94 e5                                      ldr r3, [r4, #4]
0080a90c  00 00 53 e3                                      cmp r3, #0
0080a910  1b 00 00 0a                                      beq #0x80a984
0080a914  04 10 a0 e1                                      mov r1, r4
0080a918  00 00 00 ea                                      b #0x80a920
0080a91c  02 30 a0 e1                                      mov r3, r2
0080a920  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080a924  00 00 52 e1                                      cmp r2, r0
0080a928  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
0080a92c  08 20 93 25                                      ldrhs r2, [r3, #8]
0080a930  01 30 a0 31                                      movlo r3, r1
0080a934  03 10 a0 e1                                      mov r1, r3
0080a938  00 00 52 e3                                      cmp r2, #0
0080a93c  f6 ff ff 1a                                      bne #0x80a91c
0080a940  03 00 54 e1                                      cmp r4, r3
0080a944  08 00 00 0a                                      beq #0x80a96c
0080a948  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080a94c  00 00 52 e1                                      cmp r2, r0
0080a950  0b 00 00 8a                                      bhi #0x80a984
0080a954  03 00 54 e1                                      cmp r4, r3
0080a958  03 00 00 0a                                      beq #0x80a96c
0080a95c  0a 00 a0 e1                                      mov r0, sl
0080a960  07 10 a0 e1                                      mov r1, r7
0080a964  00 20 a0 e3                                      mov r2, #0
0080a968  e6 fc ff eb                                      bl #0x809d08
0080a96c  00 50 95 e5                                      ldr r5, [r5]
0080a970  05 00 56 e1                                      cmp r6, r5
0080a974  e0 ff ff 1a                                      bne #0x80a8fc
0080a978  08 00 a0 e1                                      mov r0, r8
0080a97c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0080a980  78 0e 00 ea                                      b #0x80e368
0080a984  04 30 a0 e1                                      mov r3, r4
0080a988  f1 ff ff ea                                      b #0x80a954

; FUNCTION 0x0080a98c, declared_size=8, range_size=8, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging18AcknowledgeMessageEiP8CMessage
; demangled: CMessaging::AcknowledgeMessage(int, CMessage*)
; decoder-mode: arm
0080a98c  02 00 a0 e1                                      mov r0, r2
0080a990  37 fd ff ea                                      b #0x809e74

; FUNCTION 0x0080a994, declared_size=188, range_size=188, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging23AcknowledgeSentMessagesEiRSt3setItSt4lessItESaItEE
; demangled: CMessaging::AcknowledgeSentMessages(int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >&)
; decoder-mode: arm
0080a994  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080a998  00 70 a0 e1                                      mov r7, r0
0080a99c  0c a0 80 e2                                      add sl, r0, #0xc
0080a9a0  07 60 a0 e1                                      mov r6, r7
0080a9a4  0a 00 a0 e1                                      mov r0, sl
0080a9a8  01 80 a0 e1                                      mov r8, r1
0080a9ac  02 40 a0 e1                                      mov r4, r2
0080a9b0  6d 0e 00 eb                                      bl #0x80e36c
0080a9b4  24 50 b6 e5                                      ldr r5, [r6, #0x24]!
0080a9b8  05 00 56 e1                                      cmp r6, r5
0080a9bc  1e 00 00 0a                                      beq #0x80aa3c
0080a9c0  08 90 95 e5                                      ldr sb, [r5, #8]
0080a9c4  09 00 a0 e1                                      mov r0, sb
0080a9c8  cb fc ff eb                                      bl #0x809cfc
0080a9cc  04 30 94 e5                                      ldr r3, [r4, #4]
0080a9d0  00 00 53 e3                                      cmp r3, #0
0080a9d4  1b 00 00 0a                                      beq #0x80aa48
0080a9d8  04 10 a0 e1                                      mov r1, r4
0080a9dc  00 00 00 ea                                      b #0x80a9e4
0080a9e0  02 30 a0 e1                                      mov r3, r2
0080a9e4  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080a9e8  00 00 52 e1                                      cmp r2, r0
0080a9ec  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
0080a9f0  08 20 93 25                                      ldrhs r2, [r3, #8]
0080a9f4  01 30 a0 31                                      movlo r3, r1
0080a9f8  03 10 a0 e1                                      mov r1, r3
0080a9fc  00 00 52 e3                                      cmp r2, #0
0080aa00  f6 ff ff 1a                                      bne #0x80a9e0
0080aa04  03 00 54 e1                                      cmp r4, r3
0080aa08  08 00 00 0a                                      beq #0x80aa30
0080aa0c  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080aa10  00 00 52 e1                                      cmp r2, r0
0080aa14  0b 00 00 8a                                      bhi #0x80aa48
0080aa18  03 00 54 e1                                      cmp r4, r3
0080aa1c  03 00 00 0a                                      beq #0x80aa30
0080aa20  09 20 a0 e1                                      mov r2, sb
0080aa24  07 00 a0 e1                                      mov r0, r7
0080aa28  08 10 a0 e1                                      mov r1, r8
0080aa2c  d6 ff ff eb                                      bl #0x80a98c
0080aa30  00 50 95 e5                                      ldr r5, [r5]
0080aa34  05 00 56 e1                                      cmp r6, r5
0080aa38  e0 ff ff 1a                                      bne #0x80a9c0
0080aa3c  0a 00 a0 e1                                      mov r0, sl
0080aa40  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0080aa44  47 0e 00 ea                                      b #0x80e368
0080aa48  04 30 a0 e1                                      mov r3, r4
0080aa4c  f1 ff ff ea                                      b #0x80aa18

; FUNCTION 0x0080aa50, declared_size=176, range_size=176, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging23AreMessagesAcknowledgedEPKc
; demangled: CMessaging::AreMessagesAcknowledged(char const*)
; decoder-mode: arm
0080aa50  00 00 51 e3                                      cmp r1, #0
0080aa54  70 40 2d e9                                      push {r4, r5, r6, lr}
0080aa58  00 50 a0 e1                                      mov r5, r0
0080aa5c  1b 00 00 0a                                      beq #0x80aad0
0080aa60  01 00 a0 e1                                      mov r0, r1
0080aa64  de fd ff eb                                      bl #0x80a1e4
0080aa68  0c 60 85 e2                                      add r6, r5, #0xc
0080aa6c  00 40 a0 e1                                      mov r4, r0
0080aa70  06 00 a0 e1                                      mov r0, r6
0080aa74  3c 0e 00 eb                                      bl #0x80e36c
0080aa78  24 30 b5 e5                                      ldr r3, [r5, #0x24]!
0080aa7c  03 00 55 e1                                      cmp r5, r3
0080aa80  0b 00 00 0a                                      beq #0x80aab4
0080aa84  08 20 93 e5                                      ldr r2, [r3, #8]
0080aa88  00 00 52 e3                                      cmp r2, #0
0080aa8c  05 00 00 0a                                      beq #0x80aaa8
0080aa90  3c 10 d2 e5                                      ldrb r1, [r2, #0x3c]
0080aa94  00 00 51 e3                                      cmp r1, #0
0080aa98  02 00 00 1a                                      bne #0x80aaa8
0080aa9c  d0 21 d2 e1                                      ldrsb r2, [r2, #0x10]
0080aaa0  02 00 54 e1                                      cmp r4, r2
0080aaa4  04 00 00 0a                                      beq #0x80aabc
0080aaa8  00 30 93 e5                                      ldr r3, [r3]
0080aaac  03 00 55 e1                                      cmp r5, r3
0080aab0  f3 ff ff 1a                                      bne #0x80aa84
0080aab4  01 40 a0 e3                                      mov r4, #1
0080aab8  00 00 00 ea                                      b #0x80aac0
0080aabc  01 40 a0 e1                                      mov r4, r1
0080aac0  06 00 a0 e1                                      mov r0, r6
0080aac4  27 0e 00 eb                                      bl #0x80e368
0080aac8  04 00 a0 e1                                      mov r0, r4
0080aacc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080aad0  24 30 b5 e5                                      ldr r3, [r5, #0x24]!
0080aad4  05 00 53 e1                                      cmp r3, r5
0080aad8  01 40 a0 01                                      moveq r4, r1
0080aadc  f9 ff ff 0a                                      beq #0x80aac8
0080aae0  00 30 93 e5                                      ldr r3, [r3]
0080aae4  01 10 81 e2                                      add r1, r1, #1
0080aae8  03 00 55 e1                                      cmp r5, r3
0080aaec  fb ff ff 1a                                      bne #0x80aae0
0080aaf0  00 40 51 e2                                      subs r4, r1, #0
0080aaf4  01 40 a0 13                                      movne r4, #1
0080aaf8  04 00 a0 e1                                      mov r0, r4
0080aafc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080ab00, declared_size=128, range_size=128, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging19GetMessageFromQueueEPKc
; demangled: CMessaging::GetMessageFromQueue(char const*)
; decoder-mode: arm
0080ab00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080ab04  00 40 a0 e1                                      mov r4, r0
0080ab08  01 00 a0 e1                                      mov r0, r1
0080ab0c  b4 fd ff eb                                      bl #0x80a1e4
0080ab10  08 70 84 e2                                      add r7, r4, #8
0080ab14  00 60 a0 e1                                      mov r6, r0
0080ab18  07 00 a0 e1                                      mov r0, r7
0080ab1c  12 0e 00 eb                                      bl #0x80e36c
0080ab20  1c 30 b4 e5                                      ldr r3, [r4, #0x1c]!
0080ab24  03 00 54 e1                                      cmp r4, r3
0080ab28  08 00 00 0a                                      beq #0x80ab50
0080ab2c  08 50 93 e5                                      ldr r5, [r3, #8]
0080ab30  00 00 55 e3                                      cmp r5, #0
0080ab34  02 00 00 0a                                      beq #0x80ab44
0080ab38  d0 21 d5 e1                                      ldrsb r2, [r5, #0x10]
0080ab3c  02 00 56 e1                                      cmp r6, r2
0080ab40  07 00 00 0a                                      beq #0x80ab64
0080ab44  00 30 93 e5                                      ldr r3, [r3]
0080ab48  03 00 54 e1                                      cmp r4, r3
0080ab4c  f6 ff ff 1a                                      bne #0x80ab2c
0080ab50  07 00 a0 e1                                      mov r0, r7
0080ab54  00 50 a0 e3                                      mov r5, #0
0080ab58  02 0e 00 eb                                      bl #0x80e368
0080ab5c  05 00 a0 e1                                      mov r0, r5
0080ab60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0080ab64  3c 20 d5 e5                                      ldrb r2, [r5, #0x3c]
0080ab68  00 00 52 e3                                      cmp r2, #0
0080ab6c  f4 ff ff 1a                                      bne #0x80ab44
0080ab70  07 00 a0 e1                                      mov r0, r7
0080ab74  fb 0d 00 eb                                      bl #0x80e368
0080ab78  05 00 a0 e1                                      mov r0, r5
0080ab7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080ab80, declared_size=20, range_size=20, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging17IsMessageReceivedEPKc
; demangled: CMessaging::IsMessageReceived(char const*)
; decoder-mode: arm
0080ab80  10 40 2d e9                                      push {r4, lr}
0080ab84  dd ff ff eb                                      bl #0x80ab00
0080ab88  00 00 50 e2                                      subs r0, r0, #0
0080ab8c  01 00 a0 13                                      movne r0, #1
0080ab90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080ac34, declared_size=132, range_size=132, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging17ClearMessageQueueEPSt4listIP8CMessageSaIS2_EEP9CNetMutex
; demangled: CMessaging::ClearMessageQueue(std::list<CMessage*, std::allocator<CMessage*> >*, CNetMutex*)
; decoder-mode: arm
0080ac34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080ac38  02 00 a0 e1                                      mov r0, r2
0080ac3c  01 60 a0 e1                                      mov r6, r1
0080ac40  02 80 a0 e1                                      mov r8, r2
0080ac44  c8 0d 00 eb                                      bl #0x80e36c
0080ac48  00 30 96 e5                                      ldr r3, [r6]
0080ac4c  00 70 a0 e3                                      mov r7, #0
0080ac50  0c 10 a0 e3                                      mov r1, #0xc
0080ac54  03 00 56 e1                                      cmp r6, r3
0080ac58  03 00 a0 e1                                      mov r0, r3
0080ac5c  10 00 00 0a                                      beq #0x80aca4
0080ac60  00 40 93 e5                                      ldr r4, [r3]
0080ac64  24 00 93 e9                                      ldmib r3, {r2, r5}
0080ac68  08 70 83 e5                                      str r7, [r3, #8]
0080ac6c  00 40 82 e5                                      str r4, [r2]
0080ac70  04 20 84 e5                                      str r2, [r4, #4]
0080ac74  af cd 02 eb                                      bl #0x8be338
0080ac78  00 00 55 e3                                      cmp r5, #0
0080ac7c  05 00 a0 e1                                      mov r0, r5
0080ac80  02 00 00 0a                                      beq #0x80ac90
0080ac84  00 30 95 e5                                      ldr r3, [r5]
0080ac88  0f e0 a0 e1                                      mov lr, pc
0080ac8c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080ac90  04 30 a0 e1                                      mov r3, r4
0080ac94  03 00 56 e1                                      cmp r6, r3
0080ac98  03 00 a0 e1                                      mov r0, r3
0080ac9c  0c 10 a0 e3                                      mov r1, #0xc
0080aca0  ee ff ff 1a                                      bne #0x80ac60
0080aca4  08 00 a0 e1                                      mov r0, r8
0080aca8  ae 0d 00 eb                                      bl #0x80e368
0080acac  08 00 a0 e1                                      mov r0, r8
0080acb0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0080acb4  ab 0d 00 ea                                      b #0x80e368

; FUNCTION 0x0080acb8, declared_size=156, range_size=156, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging22PurgeMessagesFromQueueEPSt4listIP8CMessageSaIS2_EEP9CNetMutexPKc
; demangled: CMessaging::PurgeMessagesFromQueue(std::list<CMessage*, std::allocator<CMessage*> >*, CNetMutex*, char const*)
; decoder-mode: arm
0080acb8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080acbc  02 00 a0 e1                                      mov r0, r2
0080acc0  01 60 a0 e1                                      mov r6, r1
0080acc4  02 80 a0 e1                                      mov r8, r2
0080acc8  a7 0d 00 eb                                      bl #0x80e36c
0080accc  00 30 96 e5                                      ldr r3, [r6]
0080acd0  00 70 a0 e3                                      mov r7, #0
0080acd4  0c 10 a0 e3                                      mov r1, #0xc
0080acd8  03 00 56 e1                                      cmp r6, r3
0080acdc  03 00 a0 e1                                      mov r0, r3
0080ace0  16 00 00 0a                                      beq #0x80ad40
0080ace4  08 40 93 e5                                      ldr r4, [r3, #8]
0080ace8  00 50 93 e5                                      ldr r5, [r3]
0080acec  00 00 54 e3                                      cmp r4, #0
0080acf0  02 00 00 0a                                      beq #0x80ad00
0080acf4  3c 20 d4 e5                                      ldrb r2, [r4, #0x3c]
0080acf8  00 00 52 e3                                      cmp r2, #0
0080acfc  0a 00 00 0a                                      beq #0x80ad2c
0080ad00  04 20 93 e5                                      ldr r2, [r3, #4]
0080ad04  08 70 83 e5                                      str r7, [r3, #8]
0080ad08  00 50 82 e5                                      str r5, [r2]
0080ad0c  04 20 85 e5                                      str r2, [r5, #4]
0080ad10  88 cd 02 eb                                      bl #0x8be338
0080ad14  00 00 54 e3                                      cmp r4, #0
0080ad18  04 00 a0 e1                                      mov r0, r4
0080ad1c  02 00 00 0a                                      beq #0x80ad2c
0080ad20  00 30 94 e5                                      ldr r3, [r4]
0080ad24  0f e0 a0 e1                                      mov lr, pc
0080ad28  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080ad2c  05 30 a0 e1                                      mov r3, r5
0080ad30  03 00 56 e1                                      cmp r6, r3
0080ad34  03 00 a0 e1                                      mov r0, r3
0080ad38  0c 10 a0 e3                                      mov r1, #0xc
0080ad3c  e8 ff ff 1a                                      bne #0x80ace4
0080ad40  08 00 a0 e1                                      mov r0, r8
0080ad44  87 0d 00 eb                                      bl #0x80e368
0080ad48  08 00 a0 e1                                      mov r0, r8
0080ad4c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0080ad50  84 0d 00 ea                                      b #0x80e368

; FUNCTION 0x0080ad54, declared_size=124, range_size=124, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging16ProcessRecvQueueEv
; demangled: CMessaging::ProcessRecvQueue()
; decoder-mode: arm
0080ad54  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080ad58  00 a0 a0 e1                                      mov sl, r0
0080ad5c  08 40 80 e2                                      add r4, r0, #8
0080ad60  0a 70 a0 e1                                      mov r7, sl
0080ad64  04 00 a0 e1                                      mov r0, r4
0080ad68  7f 0d 00 eb                                      bl #0x80e36c
0080ad6c  1c 50 b7 e5                                      ldr r5, [r7, #0x1c]!
0080ad70  01 80 a0 e3                                      mov r8, #1
0080ad74  05 00 57 e1                                      cmp r7, r5
0080ad78  08 00 00 0a                                      beq #0x80ada0
0080ad7c  08 60 95 e5                                      ldr r6, [r5, #8]
0080ad80  00 00 56 e2                                      subs r0, r6, #0
0080ad84  02 00 00 0a                                      beq #0x80ad94
0080ad88  e6 fc ff eb                                      bl #0x80a128
0080ad8c  00 00 50 e3                                      cmp r0, #0
0080ad90  3c 80 c6 15                                      strbne r8, [r6, #0x3c]
0080ad94  00 50 95 e5                                      ldr r5, [r5]
0080ad98  05 00 57 e1                                      cmp r7, r5
0080ad9c  f6 ff ff 1a                                      bne #0x80ad7c
0080ada0  04 00 a0 e1                                      mov r0, r4
0080ada4  6f 0d 00 eb                                      bl #0x80e368
0080ada8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0080adac  0a 00 a0 e1                                      mov r0, sl
0080adb0  07 10 a0 e1                                      mov r1, r7
0080adb4  03 30 8f e0                                      add r3, pc, r3
0080adb8  04 20 a0 e1                                      mov r2, r4
0080adbc  bd ff ff eb                                      bl #0x80acb8
0080adc0  04 00 a0 e1                                      mov r0, r4
0080adc4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0080adc8  66 0d 00 ea                                      b #0x80e368
; mapping-symbol data/literal pool
0080adcc  94 14 10 00                                      .byte 0x94, 0x14, 0x10, 0x00

; FUNCTION 0x0080ae90, declared_size=340, range_size=340, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging11ResetQueuesEb
; demangled: CMessaging::ResetQueues(bool)
; decoder-mode: arm
0080ae90  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080ae94  0c 20 80 e2                                      add r2, r0, #0xc
0080ae98  00 40 a0 e1                                      mov r4, r0
0080ae9c  01 50 a0 e1                                      mov r5, r1
0080aea0  24 10 80 e2                                      add r1, r0, #0x24
0080aea4  62 ff ff eb                                      bl #0x80ac34
0080aea8  04 00 a0 e1                                      mov r0, r4
0080aeac  1c 10 84 e2                                      add r1, r4, #0x1c
0080aeb0  08 20 84 e2                                      add r2, r4, #8
0080aeb4  5e ff ff eb                                      bl #0x80ac34
0080aeb8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0080aebc  18 61 9f e5                                      ldr r6, [pc, #0x118]
0080aec0  00 00 53 e3                                      cmp r3, #0
0080aec4  06 60 8f e0                                      add r6, pc, r6
0080aec8  08 00 00 0a                                      beq #0x80aef0
0080aecc  2c 70 84 e2                                      add r7, r4, #0x2c
0080aed0  07 00 a0 e1                                      mov r0, r7
0080aed4  30 10 94 e5                                      ldr r1, [r4, #0x30]
0080aed8  2d ff ff eb                                      bl #0x80ab94
0080aedc  00 30 a0 e3                                      mov r3, #0
0080aee0  38 70 84 e5                                      str r7, [r4, #0x38]
0080aee4  3c 30 84 e5                                      str r3, [r4, #0x3c]
0080aee8  34 70 84 e5                                      str r7, [r4, #0x34]
0080aeec  30 30 84 e5                                      str r3, [r4, #0x30]
0080aef0  14 70 84 e2                                      add r7, r4, #0x14
0080aef4  07 00 a0 e1                                      mov r0, r7
0080aef8  18 80 84 e2                                      add r8, r4, #0x18
0080aefc  1a 0d 00 eb                                      bl #0x80e36c
0080af00  08 00 a0 e1                                      mov r0, r8
0080af04  18 0d 00 eb                                      bl #0x80e36c
0080af08  84 30 94 e5                                      ldr r3, [r4, #0x84]
0080af0c  00 00 53 e3                                      cmp r3, #0
0080af10  10 00 00 1a                                      bne #0x80af58
0080af14  00 00 55 e3                                      cmp r5, #0
0080af18  09 00 00 0a                                      beq #0x80af44
0080af1c  54 30 94 e5                                      ldr r3, [r4, #0x54]
0080af20  00 00 53 e3                                      cmp r3, #0
0080af24  1f 00 00 1a                                      bne #0x80afa8
0080af28  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0080af2c  00 00 53 e3                                      cmp r3, #0
0080af30  12 00 00 1a                                      bne #0x80af80
0080af34  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0080af38  00 20 a0 e3                                      mov r2, #0
0080af3c  03 30 96 e7                                      ldr r3, [r6, r3]
0080af40  00 20 83 e5                                      str r2, [r3]
0080af44  08 00 a0 e1                                      mov r0, r8
0080af48  06 0d 00 eb                                      bl #0x80e368
0080af4c  07 00 a0 e1                                      mov r0, r7
0080af50  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0080af54  03 0d 00 ea                                      b #0x80e368
0080af58  74 a0 84 e2                                      add sl, r4, #0x74
0080af5c  0a 00 a0 e1                                      mov r0, sl
0080af60  78 10 94 e5                                      ldr r1, [r4, #0x78]
0080af64  a9 ff ff eb                                      bl #0x80ae10
0080af68  00 30 a0 e3                                      mov r3, #0
0080af6c  80 a0 84 e5                                      str sl, [r4, #0x80]
0080af70  84 30 84 e5                                      str r3, [r4, #0x84]
0080af74  7c a0 84 e5                                      str sl, [r4, #0x7c]
0080af78  78 30 84 e5                                      str r3, [r4, #0x78]
0080af7c  e4 ff ff ea                                      b #0x80af14
0080af80  5c 50 84 e2                                      add r5, r4, #0x5c
0080af84  05 00 a0 e1                                      mov r0, r5
0080af88  60 10 94 e5                                      ldr r1, [r4, #0x60]
0080af8c  40 eb ec eb                                      bl #0x345c94
0080af90  00 30 a0 e3                                      mov r3, #0
0080af94  6c 30 84 e5                                      str r3, [r4, #0x6c]
0080af98  68 50 84 e5                                      str r5, [r4, #0x68]
0080af9c  64 50 84 e5                                      str r5, [r4, #0x64]
0080afa0  60 30 84 e5                                      str r3, [r4, #0x60]
0080afa4  e2 ff ff ea                                      b #0x80af34
0080afa8  44 50 84 e2                                      add r5, r4, #0x44
0080afac  05 00 a0 e1                                      mov r0, r5
0080afb0  48 10 94 e5                                      ldr r1, [r4, #0x48]
0080afb4  36 eb ec eb                                      bl #0x345c94
0080afb8  00 30 a0 e3                                      mov r3, #0
0080afbc  54 30 84 e5                                      str r3, [r4, #0x54]
0080afc0  48 30 84 e5                                      str r3, [r4, #0x48]
0080afc4  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0080afc8  50 50 84 e5                                      str r5, [r4, #0x50]
0080afcc  4c 50 84 e5                                      str r5, [r4, #0x4c]
0080afd0  00 00 53 e3                                      cmp r3, #0
0080afd4  d6 ff ff 0a                                      beq #0x80af34
0080afd8  e8 ff ff ea                                      b #0x80af80
; mapping-symbol data/literal pool
0080afdc  cc 9b 18 00 d4 22 00 00                          .byte 0xcc, 0x9b, 0x18, 0x00, 0xd4, 0x22, 0x00, 0x00

; FUNCTION 0x0080afe4, declared_size=304, range_size=304, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessagingC1Ev
; demangled: CMessaging::CMessaging()
; decoder-mode: arm
0080afe4  70 40 2d e9                                      push {r4, r5, r6, lr}
0080afe8  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
0080afec  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
0080aff0  00 60 a0 e3                                      mov r6, #0
0080aff4  05 50 8f e0                                      add r5, pc, r5
0080aff8  03 30 95 e7                                      ldr r3, [r5, r3]
0080affc  00 40 a0 e1                                      mov r4, r0
0080b000  08 d0 4d e2                                      sub sp, sp, #8
0080b004  08 30 83 e2                                      add r3, r3, #8
0080b008  00 30 80 e5                                      str r3, [r0]
0080b00c  04 60 c0 e5                                      strb r6, [r0, #4]
0080b010  08 00 80 e2                                      add r0, r0, #8
0080b014  df 0c 00 eb                                      bl #0x80e398
0080b018  0c 00 84 e2                                      add r0, r4, #0xc
0080b01c  dd 0c 00 eb                                      bl #0x80e398
0080b020  10 00 84 e2                                      add r0, r4, #0x10
0080b024  db 0c 00 eb                                      bl #0x80e398
0080b028  14 00 84 e2                                      add r0, r4, #0x14
0080b02c  d9 0c 00 eb                                      bl #0x80e398
0080b030  18 00 84 e2                                      add r0, r4, #0x18
0080b034  d7 0c 00 eb                                      bl #0x80e398
0080b038  04 20 a0 e1                                      mov r2, r4
0080b03c  1c 10 84 e2                                      add r1, r4, #0x1c
0080b040  24 30 84 e2                                      add r3, r4, #0x24
0080b044  20 10 84 e5                                      str r1, [r4, #0x20]
0080b048  28 30 84 e5                                      str r3, [r4, #0x28]
0080b04c  1c 10 84 e5                                      str r1, [r4, #0x1c]
0080b050  24 30 84 e5                                      str r3, [r4, #0x24]
0080b054  30 60 84 e5                                      str r6, [r4, #0x30]
0080b058  04 30 a0 e1                                      mov r3, r4
0080b05c  2c 60 e2 e5                                      strb r6, [r2, #0x2c]!
0080b060  38 20 84 e5                                      str r2, [r4, #0x38]
0080b064  34 20 84 e5                                      str r2, [r4, #0x34]
0080b068  3c 60 84 e5                                      str r6, [r4, #0x3c]
0080b06c  04 20 a0 e1                                      mov r2, r4
0080b070  48 60 84 e5                                      str r6, [r4, #0x48]
0080b074  44 60 e3 e5                                      strb r6, [r3, #0x44]!
0080b078  50 30 84 e5                                      str r3, [r4, #0x50]
0080b07c  4c 30 84 e5                                      str r3, [r4, #0x4c]
0080b080  54 60 84 e5                                      str r6, [r4, #0x54]
0080b084  04 30 a0 e1                                      mov r3, r4
0080b088  60 60 84 e5                                      str r6, [r4, #0x60]
0080b08c  5c 60 e2 e5                                      strb r6, [r2, #0x5c]!
0080b090  68 20 84 e5                                      str r2, [r4, #0x68]
0080b094  64 20 84 e5                                      str r2, [r4, #0x64]
0080b098  6c 60 84 e5                                      str r6, [r4, #0x6c]
0080b09c  78 60 84 e5                                      str r6, [r4, #0x78]
0080b0a0  74 60 e3 e5                                      strb r6, [r3, #0x74]!
0080b0a4  80 30 84 e5                                      str r3, [r4, #0x80]
0080b0a8  7c 30 84 e5                                      str r3, [r4, #0x7c]
0080b0ac  04 00 a0 e1                                      mov r0, r4
0080b0b0  84 60 84 e5                                      str r6, [r4, #0x84]
0080b0b4  01 10 a0 e3                                      mov r1, #1
0080b0b8  74 ff ff eb                                      bl #0x80ae90
0080b0bc  40 30 9f e5                                      ldr r3, [pc, #0x40]
0080b0c0  40 00 9f e5                                      ldr r0, [pc, #0x40]
0080b0c4  03 10 95 e7                                      ldr r1, [r5, r3]
0080b0c8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0080b0cc  00 c0 95 e7                                      ldr ip, [r5, r0]
0080b0d0  01 00 a0 e3                                      mov r0, #1
0080b0d4  03 20 95 e7                                      ldr r2, [r5, r3]
0080b0d8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0080b0dc  00 c0 8d e5                                      str ip, [sp]
0080b0e0  03 30 95 e7                                      ldr r3, [r5, r3]
0080b0e4  5b 28 00 eb                                      bl #0x815258
0080b0e8  01 30 a0 e3                                      mov r3, #1
0080b0ec  04 30 c4 e5                                      strb r3, [r4, #4]
0080b0f0  04 00 a0 e1                                      mov r0, r4
0080b0f4  08 d0 8d e2                                      add sp, sp, #8
0080b0f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080b0fc  9c 9a 18 00 90 44 00 00 80 1d 00 00 34 44 00 00  .byte 0x9c, 0x9a, 0x18, 0x00, 0x90, 0x44, 0x00, 0x00, 0x80, 0x1d, 0x00, 0x00, 0x34, 0x44, 0x00, 0x00
0080b10c  b4 0e 00 00 48 1c 00 00                          .byte 0xb4, 0x0e, 0x00, 0x00, 0x48, 0x1c, 0x00, 0x00

; FUNCTION 0x0080b114, declared_size=88, range_size=88, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging10InitializeEv
; demangled: CMessaging::Initialize()
; decoder-mode: arm
0080b114  48 30 9f e5                                      ldr r3, [pc, #0x48]
0080b118  48 20 9f e5                                      ldr r2, [pc, #0x48]
0080b11c  70 40 2d e9                                      push {r4, r5, r6, lr}
0080b120  03 30 8f e0                                      add r3, pc, r3
0080b124  02 40 93 e7                                      ldr r4, [r3, r2]
0080b128  00 30 94 e5                                      ldr r3, [r4]
0080b12c  00 00 53 e3                                      cmp r3, #0
0080b130  01 00 00 0a                                      beq #0x80b13c
0080b134  00 00 a0 e3                                      mov r0, #0
0080b138  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080b13c  02 10 a0 e3                                      mov r1, #2
0080b140  8c 00 a0 e3                                      mov r0, #0x8c
0080b144  09 15 ec eb                                      bl #0x310570
0080b148  00 50 a0 e1                                      mov r5, r0
0080b14c  a4 ff ff eb                                      bl #0x80afe4
0080b150  00 00 55 e3                                      cmp r5, #0
0080b154  00 50 84 e5                                      str r5, [r4]
0080b158  f5 ff ff 1a                                      bne #0x80b134
0080b15c  00 00 e0 e3                                      mvn r0, #0
0080b160  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080b164  70 99 18 00 dc 42 00 00                          .byte 0x70, 0x99, 0x18, 0x00, 0xdc, 0x42, 0x00, 0x00

; FUNCTION 0x0080b16c, declared_size=80, range_size=80, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging11GetInstanceEv
; demangled: CMessaging::GetInstance()
; decoder-mode: arm
0080b16c  40 30 9f e5                                      ldr r3, [pc, #0x40]
0080b170  40 20 9f e5                                      ldr r2, [pc, #0x40]
0080b174  70 40 2d e9                                      push {r4, r5, r6, lr}
0080b178  03 30 8f e0                                      add r3, pc, r3
0080b17c  02 40 93 e7                                      ldr r4, [r3, r2]
0080b180  00 50 94 e5                                      ldr r5, [r4]
0080b184  00 00 55 e3                                      cmp r5, #0
0080b188  01 00 00 0a                                      beq #0x80b194
0080b18c  05 00 a0 e1                                      mov r0, r5
0080b190  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080b194  02 10 a0 e3                                      mov r1, #2
0080b198  8c 00 a0 e3                                      mov r0, #0x8c
0080b19c  f3 14 ec eb                                      bl #0x310570
0080b1a0  00 50 a0 e1                                      mov r5, r0
0080b1a4  8e ff ff eb                                      bl #0x80afe4
0080b1a8  00 50 84 e5                                      str r5, [r4]
0080b1ac  05 00 a0 e1                                      mov r0, r5
0080b1b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080b1b4  18 99 18 00 dc 42 00 00                          .byte 0x18, 0x99, 0x18, 0x00, 0xdc, 0x42, 0x00, 0x00

; FUNCTION 0x0080b1bc, declared_size=4, range_size=4, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging3GetEv
; demangled: CMessaging::Get()
; decoder-mode: arm
0080b1bc  ea ff ff ea                                      b #0x80b16c

; FUNCTION 0x0080b1c4, declared_size=304, range_size=304, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessagingC2Ev
; demangled: CMessaging::CMessaging()
; decoder-mode: arm
0080b1c4  70 40 2d e9                                      push {r4, r5, r6, lr}
0080b1c8  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
0080b1cc  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
0080b1d0  00 60 a0 e3                                      mov r6, #0
0080b1d4  05 50 8f e0                                      add r5, pc, r5
0080b1d8  03 30 95 e7                                      ldr r3, [r5, r3]
0080b1dc  00 40 a0 e1                                      mov r4, r0
0080b1e0  08 d0 4d e2                                      sub sp, sp, #8
0080b1e4  08 30 83 e2                                      add r3, r3, #8
0080b1e8  00 30 80 e5                                      str r3, [r0]
0080b1ec  04 60 c0 e5                                      strb r6, [r0, #4]
0080b1f0  08 00 80 e2                                      add r0, r0, #8
0080b1f4  67 0c 00 eb                                      bl #0x80e398
0080b1f8  0c 00 84 e2                                      add r0, r4, #0xc
0080b1fc  65 0c 00 eb                                      bl #0x80e398
0080b200  10 00 84 e2                                      add r0, r4, #0x10
0080b204  63 0c 00 eb                                      bl #0x80e398
0080b208  14 00 84 e2                                      add r0, r4, #0x14
0080b20c  61 0c 00 eb                                      bl #0x80e398
0080b210  18 00 84 e2                                      add r0, r4, #0x18
0080b214  5f 0c 00 eb                                      bl #0x80e398
0080b218  04 20 a0 e1                                      mov r2, r4
0080b21c  1c 10 84 e2                                      add r1, r4, #0x1c
0080b220  24 30 84 e2                                      add r3, r4, #0x24
0080b224  20 10 84 e5                                      str r1, [r4, #0x20]
0080b228  28 30 84 e5                                      str r3, [r4, #0x28]
0080b22c  1c 10 84 e5                                      str r1, [r4, #0x1c]
0080b230  24 30 84 e5                                      str r3, [r4, #0x24]
0080b234  30 60 84 e5                                      str r6, [r4, #0x30]
0080b238  04 30 a0 e1                                      mov r3, r4
0080b23c  2c 60 e2 e5                                      strb r6, [r2, #0x2c]!
0080b240  38 20 84 e5                                      str r2, [r4, #0x38]
0080b244  34 20 84 e5                                      str r2, [r4, #0x34]
0080b248  3c 60 84 e5                                      str r6, [r4, #0x3c]
0080b24c  04 20 a0 e1                                      mov r2, r4
0080b250  48 60 84 e5                                      str r6, [r4, #0x48]
0080b254  44 60 e3 e5                                      strb r6, [r3, #0x44]!
0080b258  50 30 84 e5                                      str r3, [r4, #0x50]
0080b25c  4c 30 84 e5                                      str r3, [r4, #0x4c]
0080b260  54 60 84 e5                                      str r6, [r4, #0x54]
0080b264  04 30 a0 e1                                      mov r3, r4
0080b268  60 60 84 e5                                      str r6, [r4, #0x60]
0080b26c  5c 60 e2 e5                                      strb r6, [r2, #0x5c]!
0080b270  68 20 84 e5                                      str r2, [r4, #0x68]
0080b274  64 20 84 e5                                      str r2, [r4, #0x64]
0080b278  6c 60 84 e5                                      str r6, [r4, #0x6c]
0080b27c  78 60 84 e5                                      str r6, [r4, #0x78]
0080b280  74 60 e3 e5                                      strb r6, [r3, #0x74]!
0080b284  80 30 84 e5                                      str r3, [r4, #0x80]
0080b288  7c 30 84 e5                                      str r3, [r4, #0x7c]
0080b28c  04 00 a0 e1                                      mov r0, r4
0080b290  84 60 84 e5                                      str r6, [r4, #0x84]
0080b294  01 10 a0 e3                                      mov r1, #1
0080b298  fc fe ff eb                                      bl #0x80ae90
0080b29c  40 30 9f e5                                      ldr r3, [pc, #0x40]
0080b2a0  40 00 9f e5                                      ldr r0, [pc, #0x40]
0080b2a4  03 10 95 e7                                      ldr r1, [r5, r3]
0080b2a8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0080b2ac  00 c0 95 e7                                      ldr ip, [r5, r0]
0080b2b0  01 00 a0 e3                                      mov r0, #1
0080b2b4  03 20 95 e7                                      ldr r2, [r5, r3]
0080b2b8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0080b2bc  00 c0 8d e5                                      str ip, [sp]
0080b2c0  03 30 95 e7                                      ldr r3, [r5, r3]
0080b2c4  e3 27 00 eb                                      bl #0x815258
0080b2c8  01 30 a0 e3                                      mov r3, #1
0080b2cc  04 30 c4 e5                                      strb r3, [r4, #4]
0080b2d0  04 00 a0 e1                                      mov r0, r4
0080b2d4  08 d0 8d e2                                      add sp, sp, #8
0080b2d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080b2dc  bc 98 18 00 90 44 00 00 80 1d 00 00 34 44 00 00  .byte 0xbc, 0x98, 0x18, 0x00, 0x90, 0x44, 0x00, 0x00, 0x80, 0x1d, 0x00, 0x00, 0x34, 0x44, 0x00, 0x00
0080b2ec  b4 0e 00 00 48 1c 00 00                          .byte 0xb4, 0x0e, 0x00, 0x00, 0x48, 0x1c, 0x00, 0x00

; FUNCTION 0x0080b2f4, declared_size=324, range_size=324, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessagingD2Ev
; demangled: CMessaging::~CMessaging()
; decoder-mode: arm
0080b2f4  34 31 9f e5                                      ldr r3, [pc, #0x134]
0080b2f8  34 21 9f e5                                      ldr r2, [pc, #0x134]
0080b2fc  70 40 2d e9                                      push {r4, r5, r6, lr}
0080b300  03 30 8f e0                                      add r3, pc, r3
0080b304  02 20 93 e7                                      ldr r2, [r3, r2]
0080b308  00 50 a0 e3                                      mov r5, #0
0080b30c  00 40 a0 e1                                      mov r4, r0
0080b310  08 20 82 e2                                      add r2, r2, #8
0080b314  00 20 80 e5                                      str r2, [r0]
0080b318  04 50 c0 e5                                      strb r5, [r0, #4]
0080b31c  01 00 a0 e3                                      mov r0, #1
0080b320  e6 27 00 eb                                      bl #0x8152c0
0080b324  04 00 a0 e1                                      mov r0, r4
0080b328  01 10 a0 e3                                      mov r1, #1
0080b32c  d7 fe ff eb                                      bl #0x80ae90
0080b330  84 30 94 e5                                      ldr r3, [r4, #0x84]
0080b334  05 00 53 e1                                      cmp r3, r5
0080b338  33 00 00 1a                                      bne #0x80b40c
0080b33c  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0080b340  00 00 53 e3                                      cmp r3, #0
0080b344  08 00 00 0a                                      beq #0x80b36c
0080b348  5c 50 84 e2                                      add r5, r4, #0x5c
0080b34c  05 00 a0 e1                                      mov r0, r5
0080b350  60 10 94 e5                                      ldr r1, [r4, #0x60]
0080b354  4e ea ec eb                                      bl #0x345c94
0080b358  00 30 a0 e3                                      mov r3, #0
0080b35c  68 50 84 e5                                      str r5, [r4, #0x68]
0080b360  6c 30 84 e5                                      str r3, [r4, #0x6c]
0080b364  64 50 84 e5                                      str r5, [r4, #0x64]
0080b368  60 30 84 e5                                      str r3, [r4, #0x60]
0080b36c  54 30 94 e5                                      ldr r3, [r4, #0x54]
0080b370  00 00 53 e3                                      cmp r3, #0
0080b374  08 00 00 0a                                      beq #0x80b39c
0080b378  44 50 84 e2                                      add r5, r4, #0x44
0080b37c  05 00 a0 e1                                      mov r0, r5
0080b380  48 10 94 e5                                      ldr r1, [r4, #0x48]
0080b384  42 ea ec eb                                      bl #0x345c94
0080b388  00 30 a0 e3                                      mov r3, #0
0080b38c  50 50 84 e5                                      str r5, [r4, #0x50]
0080b390  54 30 84 e5                                      str r3, [r4, #0x54]
0080b394  4c 50 84 e5                                      str r5, [r4, #0x4c]
0080b398  48 30 84 e5                                      str r3, [r4, #0x48]
0080b39c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0080b3a0  00 00 53 e3                                      cmp r3, #0
0080b3a4  08 00 00 0a                                      beq #0x80b3cc
0080b3a8  2c 50 84 e2                                      add r5, r4, #0x2c
0080b3ac  05 00 a0 e1                                      mov r0, r5
0080b3b0  30 10 94 e5                                      ldr r1, [r4, #0x30]
0080b3b4  f6 fd ff eb                                      bl #0x80ab94
0080b3b8  00 30 a0 e3                                      mov r3, #0
0080b3bc  38 50 84 e5                                      str r5, [r4, #0x38]
0080b3c0  3c 30 84 e5                                      str r3, [r4, #0x3c]
0080b3c4  34 50 84 e5                                      str r5, [r4, #0x34]
0080b3c8  30 30 84 e5                                      str r3, [r4, #0x30]
0080b3cc  24 00 84 e2                                      add r0, r4, #0x24
0080b3d0  7e fe ff eb                                      bl #0x80add0
0080b3d4  1c 00 84 e2                                      add r0, r4, #0x1c
0080b3d8  7c fe ff eb                                      bl #0x80add0
0080b3dc  18 00 84 e2                                      add r0, r4, #0x18
0080b3e0  e2 0b 00 eb                                      bl #0x80e370
0080b3e4  14 00 84 e2                                      add r0, r4, #0x14
0080b3e8  e0 0b 00 eb                                      bl #0x80e370
0080b3ec  10 00 84 e2                                      add r0, r4, #0x10
0080b3f0  de 0b 00 eb                                      bl #0x80e370
0080b3f4  0c 00 84 e2                                      add r0, r4, #0xc
0080b3f8  dc 0b 00 eb                                      bl #0x80e370
0080b3fc  08 00 84 e2                                      add r0, r4, #8
0080b400  da 0b 00 eb                                      bl #0x80e370
0080b404  04 00 a0 e1                                      mov r0, r4
0080b408  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080b40c  74 60 84 e2                                      add r6, r4, #0x74
0080b410  06 00 a0 e1                                      mov r0, r6
0080b414  78 10 94 e5                                      ldr r1, [r4, #0x78]
0080b418  7c fe ff eb                                      bl #0x80ae10
0080b41c  80 60 84 e5                                      str r6, [r4, #0x80]
0080b420  84 50 84 e5                                      str r5, [r4, #0x84]
0080b424  7c 60 84 e5                                      str r6, [r4, #0x7c]
0080b428  78 50 84 e5                                      str r5, [r4, #0x78]
0080b42c  c2 ff ff ea                                      b #0x80b33c
; mapping-symbol data/literal pool
0080b430  90 97 18 00 90 44 00 00                          .byte 0x90, 0x97, 0x18, 0x00, 0x90, 0x44, 0x00, 0x00

; FUNCTION 0x0080b438, declared_size=324, range_size=324, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessagingD1Ev
; demangled: CMessaging::~CMessaging()
; decoder-mode: arm
0080b438  34 31 9f e5                                      ldr r3, [pc, #0x134]
0080b43c  34 21 9f e5                                      ldr r2, [pc, #0x134]
0080b440  70 40 2d e9                                      push {r4, r5, r6, lr}
0080b444  03 30 8f e0                                      add r3, pc, r3
0080b448  02 20 93 e7                                      ldr r2, [r3, r2]
0080b44c  00 50 a0 e3                                      mov r5, #0
0080b450  00 40 a0 e1                                      mov r4, r0
0080b454  08 20 82 e2                                      add r2, r2, #8
0080b458  00 20 80 e5                                      str r2, [r0]
0080b45c  04 50 c0 e5                                      strb r5, [r0, #4]
0080b460  01 00 a0 e3                                      mov r0, #1
0080b464  95 27 00 eb                                      bl #0x8152c0
0080b468  04 00 a0 e1                                      mov r0, r4
0080b46c  01 10 a0 e3                                      mov r1, #1
0080b470  86 fe ff eb                                      bl #0x80ae90
0080b474  84 30 94 e5                                      ldr r3, [r4, #0x84]
0080b478  05 00 53 e1                                      cmp r3, r5
0080b47c  33 00 00 1a                                      bne #0x80b550
0080b480  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0080b484  00 00 53 e3                                      cmp r3, #0
0080b488  08 00 00 0a                                      beq #0x80b4b0
0080b48c  5c 50 84 e2                                      add r5, r4, #0x5c
0080b490  05 00 a0 e1                                      mov r0, r5
0080b494  60 10 94 e5                                      ldr r1, [r4, #0x60]
0080b498  fd e9 ec eb                                      bl #0x345c94
0080b49c  00 30 a0 e3                                      mov r3, #0
0080b4a0  68 50 84 e5                                      str r5, [r4, #0x68]
0080b4a4  6c 30 84 e5                                      str r3, [r4, #0x6c]
0080b4a8  64 50 84 e5                                      str r5, [r4, #0x64]
0080b4ac  60 30 84 e5                                      str r3, [r4, #0x60]
0080b4b0  54 30 94 e5                                      ldr r3, [r4, #0x54]
0080b4b4  00 00 53 e3                                      cmp r3, #0
0080b4b8  08 00 00 0a                                      beq #0x80b4e0
0080b4bc  44 50 84 e2                                      add r5, r4, #0x44
0080b4c0  05 00 a0 e1                                      mov r0, r5
0080b4c4  48 10 94 e5                                      ldr r1, [r4, #0x48]
0080b4c8  f1 e9 ec eb                                      bl #0x345c94
0080b4cc  00 30 a0 e3                                      mov r3, #0
0080b4d0  50 50 84 e5                                      str r5, [r4, #0x50]
0080b4d4  54 30 84 e5                                      str r3, [r4, #0x54]
0080b4d8  4c 50 84 e5                                      str r5, [r4, #0x4c]
0080b4dc  48 30 84 e5                                      str r3, [r4, #0x48]
0080b4e0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0080b4e4  00 00 53 e3                                      cmp r3, #0
0080b4e8  08 00 00 0a                                      beq #0x80b510
0080b4ec  2c 50 84 e2                                      add r5, r4, #0x2c
0080b4f0  05 00 a0 e1                                      mov r0, r5
0080b4f4  30 10 94 e5                                      ldr r1, [r4, #0x30]
0080b4f8  a5 fd ff eb                                      bl #0x80ab94
0080b4fc  00 30 a0 e3                                      mov r3, #0
0080b500  38 50 84 e5                                      str r5, [r4, #0x38]
0080b504  3c 30 84 e5                                      str r3, [r4, #0x3c]
0080b508  34 50 84 e5                                      str r5, [r4, #0x34]
0080b50c  30 30 84 e5                                      str r3, [r4, #0x30]
0080b510  24 00 84 e2                                      add r0, r4, #0x24
0080b514  2d fe ff eb                                      bl #0x80add0
0080b518  1c 00 84 e2                                      add r0, r4, #0x1c
0080b51c  2b fe ff eb                                      bl #0x80add0
0080b520  18 00 84 e2                                      add r0, r4, #0x18
0080b524  91 0b 00 eb                                      bl #0x80e370
0080b528  14 00 84 e2                                      add r0, r4, #0x14
0080b52c  8f 0b 00 eb                                      bl #0x80e370
0080b530  10 00 84 e2                                      add r0, r4, #0x10
0080b534  8d 0b 00 eb                                      bl #0x80e370
0080b538  0c 00 84 e2                                      add r0, r4, #0xc
0080b53c  8b 0b 00 eb                                      bl #0x80e370
0080b540  08 00 84 e2                                      add r0, r4, #8
0080b544  89 0b 00 eb                                      bl #0x80e370
0080b548  04 00 a0 e1                                      mov r0, r4
0080b54c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080b550  74 60 84 e2                                      add r6, r4, #0x74
0080b554  06 00 a0 e1                                      mov r0, r6
0080b558  78 10 94 e5                                      ldr r1, [r4, #0x78]
0080b55c  2b fe ff eb                                      bl #0x80ae10
0080b560  80 60 84 e5                                      str r6, [r4, #0x80]
0080b564  84 50 84 e5                                      str r5, [r4, #0x84]
0080b568  7c 60 84 e5                                      str r6, [r4, #0x7c]
0080b56c  78 50 84 e5                                      str r5, [r4, #0x78]
0080b570  c2 ff ff ea                                      b #0x80b480
; mapping-symbol data/literal pool
0080b574  4c 96 18 00 90 44 00 00                          .byte 0x4c, 0x96, 0x18, 0x00, 0x90, 0x44, 0x00, 0x00

; FUNCTION 0x0080b57c, declared_size=28, range_size=28, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessagingD0Ev
; demangled: CMessaging::~CMessaging()
; decoder-mode: arm
0080b57c  10 40 2d e9                                      push {r4, lr}
0080b580  00 40 a0 e1                                      mov r4, r0
0080b584  ab ff ff eb                                      bl #0x80b438
0080b588  04 00 a0 e1                                      mov r0, r4
0080b58c  ab 13 ec eb                                      bl #0x310440
0080b590  04 00 a0 e1                                      mov r0, r4
0080b594  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080b900, declared_size=376, range_size=376, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging12PackMessagesEiR12NetBitStream
; demangled: CMessaging::PackMessages(int, NetBitStream&)
; decoder-mode: arm
0080b900  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0080b904  0c 90 81 e2                                      add sb, r1, #0xc
0080b908  00 40 a0 e1                                      mov r4, r0
0080b90c  1c d0 4d e2                                      sub sp, sp, #0x1c
0080b910  09 00 a0 e1                                      mov r0, sb
0080b914  01 80 a0 e1                                      mov r8, r1
0080b918  03 a0 a0 e1                                      mov sl, r3
0080b91c  02 50 a0 e1                                      mov r5, r2
0080b920  91 0a 00 eb                                      bl #0x80e36c
0080b924  00 30 a0 e3                                      mov r3, #0
0080b928  10 30 84 e5                                      str r3, [r4, #0x10]
0080b92c  04 30 84 e5                                      str r3, [r4, #4]
0080b930  00 30 c4 e5                                      strb r3, [r4]
0080b934  08 40 84 e5                                      str r4, [r4, #8]
0080b938  0c 40 84 e5                                      str r4, [r4, #0xc]
0080b93c  24 60 b8 e5                                      ldr r6, [r8, #0x24]!
0080b940  16 30 8d e2                                      add r3, sp, #0x16
0080b944  0c b0 8d e2                                      add fp, sp, #0xc
0080b948  06 00 58 e1                                      cmp r8, r6
0080b94c  04 30 8d e5                                      str r3, [sp, #4]
0080b950  08 00 00 0a                                      beq #0x80b978
0080b954  08 70 96 e5                                      ldr r7, [r6, #8]
0080b958  00 00 57 e3                                      cmp r7, #0
0080b95c  02 00 00 0a                                      beq #0x80b96c
0080b960  3c 30 d7 e5                                      ldrb r3, [r7, #0x3c]
0080b964  00 00 53 e3                                      cmp r3, #0
0080b968  0b 00 00 0a                                      beq #0x80b99c
0080b96c  00 60 96 e5                                      ldr r6, [r6]
0080b970  06 00 58 e1                                      cmp r8, r6
0080b974  f6 ff ff 1a                                      bne #0x80b954
0080b978  0a 00 a0 e1                                      mov r0, sl
0080b97c  00 10 a0 e3                                      mov r1, #0
0080b980  01 20 a0 e3                                      mov r2, #1
0080b984  d7 0a 00 eb                                      bl #0x80e4e8
0080b988  09 00 a0 e1                                      mov r0, sb
0080b98c  75 0a 00 eb                                      bl #0x80e368
0080b990  04 00 a0 e1                                      mov r0, r4
0080b994  1c d0 8d e2                                      add sp, sp, #0x1c
0080b998  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0080b99c  07 00 a0 e1                                      mov r0, r7
0080b9a0  05 10 a0 e1                                      mov r1, r5
0080b9a4  26 f9 ff eb                                      bl #0x809e44
0080b9a8  00 00 50 e3                                      cmp r0, #0
0080b9ac  ee ff ff 1a                                      bne #0x80b96c
0080b9b0  07 00 a0 e1                                      mov r0, r7
0080b9b4  05 10 a0 e1                                      mov r1, r5
0080b9b8  9e f9 ff eb                                      bl #0x80a038
0080b9bc  00 00 50 e3                                      cmp r0, #0
0080b9c0  e9 ff ff 1a                                      bne #0x80b96c
0080b9c4  07 00 a0 e1                                      mov r0, r7
0080b9c8  05 10 a0 e1                                      mov r1, r5
0080b9cc  7c f8 ff eb                                      bl #0x809bc4
0080b9d0  00 00 50 e3                                      cmp r0, #0
0080b9d4  21 00 00 0a                                      beq #0x80ba60
0080b9d8  00 30 97 e5                                      ldr r3, [r7]
0080b9dc  07 00 a0 e1                                      mov r0, r7
0080b9e0  0f e0 a0 e1                                      mov lr, pc
0080b9e4  08 f0 93 e5                                      ldr pc, [r3, #8]
0080b9e8  10 30 9a e5                                      ldr r3, [sl, #0x10]
0080b9ec  08 20 9a e5                                      ldr r2, [sl, #8]
0080b9f0  10 00 80 e2                                      add r0, r0, #0x10
0080b9f4  07 10 13 e2                                      ands r1, r3, #7
0080b9f8  01 20 42 e2                                      sub r2, r2, #1
0080b9fc  01 10 a0 13                                      movne r1, #1
0080ba00  a3 31 42 e0                                      sub r3, r2, r3, lsr #3
0080ba04  03 10 61 e0                                      rsb r1, r1, r3
0080ba08  00 00 51 e1                                      cmp r1, r0
0080ba0c  d6 ff ff 3a                                      blo #0x80b96c
0080ba10  01 10 a0 e3                                      mov r1, #1
0080ba14  01 20 a0 e1                                      mov r2, r1
0080ba18  0a 00 a0 e1                                      mov r0, sl
0080ba1c  b1 0a 00 eb                                      bl #0x80e4e8
0080ba20  0a 10 a0 e1                                      mov r1, sl
0080ba24  07 00 a0 e1                                      mov r0, r7
0080ba28  54 f8 ff eb                                      bl #0x809b80
0080ba2c  07 00 a0 e1                                      mov r0, r7
0080ba30  b1 f8 ff eb                                      bl #0x809cfc
0080ba34  04 20 9d e5                                      ldr r2, [sp, #4]
0080ba38  b6 01 cd e1                                      strh r0, [sp, #0x16]
0080ba3c  04 10 a0 e1                                      mov r1, r4
0080ba40  0b 00 a0 e1                                      mov r0, fp
0080ba44  4d ff ff eb                                      bl #0x80b780
0080ba48  07 00 a0 e1                                      mov r0, r7
0080ba4c  05 10 a0 e1                                      mov r1, r5
0080ba50  01 20 a0 e3                                      mov r2, #1
0080ba54  ab f8 ff eb                                      bl #0x809d08
0080ba58  00 60 96 e5                                      ldr r6, [r6]
0080ba5c  c3 ff ff ea                                      b #0x80b970
0080ba60  49 d5 ff eb                                      bl #0x800f8c
0080ba64  9d ca ff eb                                      bl #0x7fe4e0
0080ba68  00 00 50 e3                                      cmp r0, #0
0080ba6c  d9 ff ff 0a                                      beq #0x80b9d8
0080ba70  00 60 96 e5                                      ldr r6, [r6]
0080ba74  bd ff ff ea                                      b #0x80b970

; FUNCTION 0x0080ba78, declared_size=92, range_size=92, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging18AddMissingMessagesEiii
; demangled: CMessaging::AddMissingMessages(int, int, int)
; decoder-mode: arm
0080ba78  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080ba7c  01 40 82 e2                                      add r4, r2, #1
0080ba80  04 00 53 e1                                      cmp r3, r4
0080ba84  14 d0 4d e2                                      sub sp, sp, #0x14
0080ba88  03 50 a0 e1                                      mov r5, r3
0080ba8c  01 60 a0 e1                                      mov r6, r1
0080ba90  0d 00 00 da                                      ble #0x80bacc
0080ba94  2c a0 80 e2                                      add sl, r0, #0x2c
0080ba98  04 80 8d e2                                      add r8, sp, #4
0080ba9c  0e 70 8d e2                                      add r7, sp, #0xe
0080baa0  04 10 a0 e1                                      mov r1, r4
0080baa4  06 00 a0 e1                                      mov r0, r6
0080baa8  87 f8 ff eb                                      bl #0x809ccc
0080baac  01 40 84 e2                                      add r4, r4, #1
0080bab0  be 00 cd e1                                      strh r0, [sp, #0xe]
0080bab4  0a 10 a0 e1                                      mov r1, sl
0080bab8  08 00 a0 e1                                      mov r0, r8
0080babc  07 20 a0 e1                                      mov r2, r7
0080bac0  2e ff ff eb                                      bl #0x80b780
0080bac4  05 00 54 e1                                      cmp r4, r5
0080bac8  f4 ff ff 1a                                      bne #0x80baa0
0080bacc  14 d0 8d e2                                      add sp, sp, #0x14
0080bad0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0080cbbc, declared_size=304, range_size=304, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging17ProcessLostPacketEii
; demangled: CMessaging::ProcessLostPacket(int, int)
; decoder-mode: arm
0080cbbc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0080cbc0  84 30 90 e5                                      ldr r3, [r0, #0x84]
0080cbc4  14 d0 4d e2                                      sub sp, sp, #0x14
0080cbc8  00 40 a0 e1                                      mov r4, r0
0080cbcc  00 00 53 e3                                      cmp r3, #0
0080cbd0  04 10 8d e5                                      str r1, [sp, #4]
0080cbd4  00 20 8d e5                                      str r2, [sp]
0080cbd8  01 00 00 1a                                      bne #0x80cbe4
0080cbdc  14 d0 8d e2                                      add sp, sp, #0x14
0080cbe0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0080cbe4  74 60 80 e2                                      add r6, r0, #0x74
0080cbe8  04 50 8d e2                                      add r5, sp, #4
0080cbec  06 00 a0 e1                                      mov r0, r6
0080cbf0  05 10 a0 e1                                      mov r1, r5
0080cbf4  5e ff ff eb                                      bl #0x80c974
0080cbf8  04 30 90 e5                                      ldr r3, [r0, #4]
0080cbfc  00 00 53 e3                                      cmp r3, #0
0080cc00  37 00 00 0a                                      beq #0x80cce4
0080cc04  00 c0 9d e5                                      ldr ip, [sp]
0080cc08  00 10 a0 e1                                      mov r1, r0
0080cc0c  00 00 00 ea                                      b #0x80cc14
0080cc10  02 30 a0 e1                                      mov r3, r2
0080cc14  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080cc18  0c 00 52 e1                                      cmp r2, ip
0080cc1c  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
0080cc20  08 20 93 a5                                      ldrge r2, [r3, #8]
0080cc24  01 30 a0 b1                                      movlt r3, r1
0080cc28  03 10 a0 e1                                      mov r1, r3
0080cc2c  00 00 52 e3                                      cmp r2, #0
0080cc30  f6 ff ff 1a                                      bne #0x80cc10
0080cc34  03 00 50 e1                                      cmp r0, r3
0080cc38  e7 ff ff 0a                                      beq #0x80cbdc
0080cc3c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080cc40  0c 00 52 e1                                      cmp r2, ip
0080cc44  26 00 00 ca                                      bgt #0x80cce4
0080cc48  03 00 50 e1                                      cmp r0, r3
0080cc4c  e2 ff ff 0a                                      beq #0x80cbdc
0080cc50  05 10 a0 e1                                      mov r1, r5
0080cc54  06 00 a0 e1                                      mov r0, r6
0080cc58  04 70 9d e5                                      ldr r7, [sp, #4]
0080cc5c  44 ff ff eb                                      bl #0x80c974
0080cc60  0d 10 a0 e1                                      mov r1, sp
0080cc64  8b ff ff eb                                      bl #0x80ca98
0080cc68  07 10 a0 e1                                      mov r1, r7
0080cc6c  00 20 a0 e1                                      mov r2, r0
0080cc70  04 00 a0 e1                                      mov r0, r4
0080cc74  16 f7 ff eb                                      bl #0x80a8d4
0080cc78  06 00 a0 e1                                      mov r0, r6
0080cc7c  05 10 a0 e1                                      mov r1, r5
0080cc80  3b ff ff eb                                      bl #0x80c974
0080cc84  04 30 90 e5                                      ldr r3, [r0, #4]
0080cc88  00 00 53 e3                                      cmp r3, #0
0080cc8c  d2 ff ff 0a                                      beq #0x80cbdc
0080cc90  00 c0 9d e5                                      ldr ip, [sp]
0080cc94  00 10 a0 e1                                      mov r1, r0
0080cc98  00 00 00 ea                                      b #0x80cca0
0080cc9c  02 30 a0 e1                                      mov r3, r2
0080cca0  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080cca4  0c 00 52 e1                                      cmp r2, ip
0080cca8  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
0080ccac  08 20 93 a5                                      ldrge r2, [r3, #8]
0080ccb0  01 30 a0 b1                                      movlt r3, r1
0080ccb4  03 10 a0 e1                                      mov r1, r3
0080ccb8  00 00 52 e3                                      cmp r2, #0
0080ccbc  f6 ff ff 1a                                      bne #0x80cc9c
0080ccc0  03 00 50 e1                                      cmp r0, r3
0080ccc4  c4 ff ff 0a                                      beq #0x80cbdc
0080ccc8  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080cccc  0c 00 52 e1                                      cmp r2, ip
0080ccd0  c1 ff ff ca                                      bgt #0x80cbdc
0080ccd4  10 10 8d e2                                      add r1, sp, #0x10
0080ccd8  04 30 21 e5                                      str r3, [r1, #-4]!
0080ccdc  3c fa ff eb                                      bl #0x80b5d4
0080cce0  bd ff ff ea                                      b #0x80cbdc
0080cce4  00 30 a0 e1                                      mov r3, r0
0080cce8  d6 ff ff ea                                      b #0x80cc48

; FUNCTION 0x0080ccec, declared_size=44, range_size=44, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging18sProcessLostPacketEii
; demangled: CMessaging::sProcessLostPacket(int, int)
; decoder-mode: arm
0080ccec  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0080ccf0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0080ccf4  00 c0 a0 e1                                      mov ip, r0
0080ccf8  03 30 8f e0                                      add r3, pc, r3
0080ccfc  02 00 93 e7                                      ldr r0, [r3, r2]
0080cd00  01 20 a0 e1                                      mov r2, r1
0080cd04  0c 10 a0 e1                                      mov r1, ip
0080cd08  00 00 90 e5                                      ldr r0, [r0]
0080cd0c  aa ff ff ea                                      b #0x80cbbc
; mapping-symbol data/literal pool
0080cd10  98 7d 18 00 dc 42 00 00                          .byte 0x98, 0x7d, 0x18, 0x00, 0xdc, 0x42, 0x00, 0x00

; FUNCTION 0x0080cd18, declared_size=304, range_size=304, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging25ProcessAcknowledgedPacketEii
; demangled: CMessaging::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
0080cd18  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0080cd1c  84 30 90 e5                                      ldr r3, [r0, #0x84]
0080cd20  14 d0 4d e2                                      sub sp, sp, #0x14
0080cd24  00 40 a0 e1                                      mov r4, r0
0080cd28  00 00 53 e3                                      cmp r3, #0
0080cd2c  04 10 8d e5                                      str r1, [sp, #4]
0080cd30  00 20 8d e5                                      str r2, [sp]
0080cd34  01 00 00 1a                                      bne #0x80cd40
0080cd38  14 d0 8d e2                                      add sp, sp, #0x14
0080cd3c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0080cd40  74 60 80 e2                                      add r6, r0, #0x74
0080cd44  04 50 8d e2                                      add r5, sp, #4
0080cd48  06 00 a0 e1                                      mov r0, r6
0080cd4c  05 10 a0 e1                                      mov r1, r5
0080cd50  07 ff ff eb                                      bl #0x80c974
0080cd54  04 30 90 e5                                      ldr r3, [r0, #4]
0080cd58  00 00 53 e3                                      cmp r3, #0
0080cd5c  37 00 00 0a                                      beq #0x80ce40
0080cd60  00 c0 9d e5                                      ldr ip, [sp]
0080cd64  00 10 a0 e1                                      mov r1, r0
0080cd68  00 00 00 ea                                      b #0x80cd70
0080cd6c  02 30 a0 e1                                      mov r3, r2
0080cd70  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080cd74  0c 00 52 e1                                      cmp r2, ip
0080cd78  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
0080cd7c  08 20 93 a5                                      ldrge r2, [r3, #8]
0080cd80  01 30 a0 b1                                      movlt r3, r1
0080cd84  03 10 a0 e1                                      mov r1, r3
0080cd88  00 00 52 e3                                      cmp r2, #0
0080cd8c  f6 ff ff 1a                                      bne #0x80cd6c
0080cd90  03 00 50 e1                                      cmp r0, r3
0080cd94  e7 ff ff 0a                                      beq #0x80cd38
0080cd98  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080cd9c  0c 00 52 e1                                      cmp r2, ip
0080cda0  26 00 00 ca                                      bgt #0x80ce40
0080cda4  03 00 50 e1                                      cmp r0, r3
0080cda8  e2 ff ff 0a                                      beq #0x80cd38
0080cdac  05 10 a0 e1                                      mov r1, r5
0080cdb0  06 00 a0 e1                                      mov r0, r6
0080cdb4  04 70 9d e5                                      ldr r7, [sp, #4]
0080cdb8  ed fe ff eb                                      bl #0x80c974
0080cdbc  0d 10 a0 e1                                      mov r1, sp
0080cdc0  34 ff ff eb                                      bl #0x80ca98
0080cdc4  07 10 a0 e1                                      mov r1, r7
0080cdc8  00 20 a0 e1                                      mov r2, r0
0080cdcc  04 00 a0 e1                                      mov r0, r4
0080cdd0  ef f6 ff eb                                      bl #0x80a994
0080cdd4  06 00 a0 e1                                      mov r0, r6
0080cdd8  05 10 a0 e1                                      mov r1, r5
0080cddc  e4 fe ff eb                                      bl #0x80c974
0080cde0  04 30 90 e5                                      ldr r3, [r0, #4]
0080cde4  00 00 53 e3                                      cmp r3, #0
0080cde8  d2 ff ff 0a                                      beq #0x80cd38
0080cdec  00 c0 9d e5                                      ldr ip, [sp]
0080cdf0  00 10 a0 e1                                      mov r1, r0
0080cdf4  00 00 00 ea                                      b #0x80cdfc
0080cdf8  02 30 a0 e1                                      mov r3, r2
0080cdfc  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080ce00  0c 00 52 e1                                      cmp r2, ip
0080ce04  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
0080ce08  08 20 93 a5                                      ldrge r2, [r3, #8]
0080ce0c  01 30 a0 b1                                      movlt r3, r1
0080ce10  03 10 a0 e1                                      mov r1, r3
0080ce14  00 00 52 e3                                      cmp r2, #0
0080ce18  f6 ff ff 1a                                      bne #0x80cdf8
0080ce1c  03 00 50 e1                                      cmp r0, r3
0080ce20  c4 ff ff 0a                                      beq #0x80cd38
0080ce24  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080ce28  0c 00 52 e1                                      cmp r2, ip
0080ce2c  c1 ff ff ca                                      bgt #0x80cd38
0080ce30  10 10 8d e2                                      add r1, sp, #0x10
0080ce34  04 30 21 e5                                      str r3, [r1, #-4]!
0080ce38  e5 f9 ff eb                                      bl #0x80b5d4
0080ce3c  bd ff ff ea                                      b #0x80cd38
0080ce40  00 30 a0 e1                                      mov r3, r0
0080ce44  d6 ff ff ea                                      b #0x80cda4

; FUNCTION 0x0080ce48, declared_size=44, range_size=44, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging26sProcessAcknowledgedPacketEii
; demangled: CMessaging::sProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
0080ce48  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0080ce4c  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0080ce50  00 c0 a0 e1                                      mov ip, r0
0080ce54  03 30 8f e0                                      add r3, pc, r3
0080ce58  02 00 93 e7                                      ldr r0, [r3, r2]
0080ce5c  01 20 a0 e1                                      mov r2, r1
0080ce60  0c 10 a0 e1                                      mov r1, ip
0080ce64  00 00 90 e5                                      ldr r0, [r0]
0080ce68  aa ff ff ea                                      b #0x80cd18
; mapping-symbol data/literal pool
0080ce6c  3c 7c 18 00 dc 42 00 00                          .byte 0x3c, 0x7c, 0x18, 0x00, 0xdc, 0x42, 0x00, 0x00

; FUNCTION 0x0080cf1c, declared_size=192, range_size=192, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging15WritePacketDataEiiR12NetBitStream
; demangled: CMessaging::WritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
0080cf1c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0080cf20  00 c0 a0 e1                                      mov ip, r0
0080cf24  00 40 a0 e1                                      mov r4, r0
0080cf28  24 00 bc e5                                      ldr r0, [ip, #0x24]!
0080cf2c  24 d0 4d e2                                      sub sp, sp, #0x24
0080cf30  04 10 8d e5                                      str r1, [sp, #4]
0080cf34  0c 00 50 e1                                      cmp r0, ip
0080cf38  00 20 8d e5                                      str r2, [sp]
0080cf3c  03 70 a0 e1                                      mov r7, r3
0080cf40  1b 00 00 0a                                      beq #0x80cfb4
0080cf44  00 00 90 e5                                      ldr r0, [r0]
0080cf48  00 00 5c e1                                      cmp ip, r0
0080cf4c  fc ff ff 1a                                      bne #0x80cf44
0080cf50  01 10 a0 e3                                      mov r1, #1
0080cf54  01 20 a0 e1                                      mov r2, r1
0080cf58  07 00 a0 e1                                      mov r0, r7
0080cf5c  61 05 00 eb                                      bl #0x80e4e8
0080cf60  04 10 8d e2                                      add r1, sp, #4
0080cf64  74 00 84 e2                                      add r0, r4, #0x74
0080cf68  81 fe ff eb                                      bl #0x80c974
0080cf6c  0d 10 a0 e1                                      mov r1, sp
0080cf70  c8 fe ff eb                                      bl #0x80ca98
0080cf74  08 50 8d e2                                      add r5, sp, #8
0080cf78  07 30 a0 e1                                      mov r3, r7
0080cf7c  00 60 a0 e1                                      mov r6, r0
0080cf80  04 10 a0 e1                                      mov r1, r4
0080cf84  04 20 9d e5                                      ldr r2, [sp, #4]
0080cf88  05 00 a0 e1                                      mov r0, r5
0080cf8c  5b fa ff eb                                      bl #0x80b900
0080cf90  06 00 a0 e1                                      mov r0, r6
0080cf94  05 10 a0 e1                                      mov r1, r5
0080cf98  b5 ff ff eb                                      bl #0x80ce74
0080cf9c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0080cfa0  00 00 53 e3                                      cmp r3, #0
0080cfa4  08 00 00 1a                                      bne #0x80cfcc
0080cfa8  01 00 a0 e3                                      mov r0, #1
0080cfac  24 d0 8d e2                                      add sp, sp, #0x24
0080cfb0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0080cfb4  03 00 a0 e1                                      mov r0, r3
0080cfb8  00 10 a0 e3                                      mov r1, #0
0080cfbc  01 20 a0 e3                                      mov r2, #1
0080cfc0  48 05 00 eb                                      bl #0x80e4e8
0080cfc4  00 00 a0 e3                                      mov r0, #0
0080cfc8  f7 ff ff ea                                      b #0x80cfac
0080cfcc  05 00 a0 e1                                      mov r0, r5
0080cfd0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0080cfd4  ee f6 ff eb                                      bl #0x80ab94
0080cfd8  f2 ff ff ea                                      b #0x80cfa8

; FUNCTION 0x0080cfdc, declared_size=60, range_size=60, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging16sWritePacketDataEiiR12NetBitStream
; demangled: CMessaging::sWritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
0080cfdc  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
0080cfe0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0080cfe4  30 00 2d e9                                      push {r4, r5}
0080cfe8  0c c0 8f e0                                      add ip, pc, ip
0080cfec  00 50 a0 e1                                      mov r5, r0
0080cff0  03 00 9c e7                                      ldr r0, [ip, r3]
0080cff4  01 40 a0 e1                                      mov r4, r1
0080cff8  02 30 a0 e1                                      mov r3, r2
0080cffc  00 00 90 e5                                      ldr r0, [r0]
0080d000  05 10 a0 e1                                      mov r1, r5
0080d004  04 20 a0 e1                                      mov r2, r4
0080d008  30 00 bd e8                                      pop {r4, r5}
0080d00c  c2 ff ff ea                                      b #0x80cf1c
; mapping-symbol data/literal pool
0080d010  a8 7a 18 00 dc 42 00 00                          .byte 0xa8, 0x7a, 0x18, 0x00, 0xdc, 0x42, 0x00, 0x00

; FUNCTION 0x0080d058, declared_size=1484, range_size=1484, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging22ProcessMissingMessagesEP8CMessage
; demangled: CMessaging::ProcessMissingMessages(CMessage*)
; decoder-mode: arm
0080d058  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080d05c  14 90 80 e2                                      add sb, r0, #0x14
0080d060  00 50 a0 e1                                      mov r5, r0
0080d064  88 d0 4d e2                                      sub sp, sp, #0x88
0080d068  09 00 a0 e1                                      mov r0, sb
0080d06c  01 80 a0 e1                                      mov r8, r1
0080d070  bd 04 00 eb                                      bl #0x80e36c
0080d074  48 c0 95 e5                                      ldr ip, [r5, #0x48]
0080d078  0c 40 98 e5                                      ldr r4, [r8, #0xc]
0080d07c  04 a0 98 e5                                      ldr sl, [r8, #4]
0080d080  00 00 5c e3                                      cmp ip, #0
0080d084  44 60 85 e2                                      add r6, r5, #0x44
0080d088  03 01 00 0a                                      beq #0x80d49c
0080d08c  06 10 a0 e1                                      mov r1, r6
0080d090  0c 30 a0 e1                                      mov r3, ip
0080d094  00 00 00 ea                                      b #0x80d09c
0080d098  02 30 a0 e1                                      mov r3, r2
0080d09c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080d0a0  02 00 54 e1                                      cmp r4, r2
0080d0a4  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
0080d0a8  08 20 93 d5                                      ldrle r2, [r3, #8]
0080d0ac  01 30 a0 c1                                      movgt r3, r1
0080d0b0  03 10 a0 e1                                      mov r1, r3
0080d0b4  00 00 52 e3                                      cmp r2, #0
0080d0b8  f6 ff ff 1a                                      bne #0x80d098
0080d0bc  03 00 56 e1                                      cmp r6, r3
0080d0c0  f9 00 00 0a                                      beq #0x80d4ac
0080d0c4  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080d0c8  02 00 54 e1                                      cmp r4, r2
0080d0cc  f2 00 00 ba                                      blt #0x80d49c
0080d0d0  03 00 56 e1                                      cmp r6, r3
0080d0d4  5c 70 85 12                                      addne r7, r5, #0x5c
0080d0d8  f3 00 00 0a                                      beq #0x80d4ac
0080d0dc  60 c0 95 e5                                      ldr ip, [r5, #0x60]
0080d0e0  00 00 5c e3                                      cmp ip, #0
0080d0e4  07 c0 a0 01                                      moveq ip, r7
0080d0e8  0a 00 00 0a                                      beq #0x80d118
0080d0ec  07 20 a0 e1                                      mov r2, r7
0080d0f0  00 00 00 ea                                      b #0x80d0f8
0080d0f4  03 c0 a0 e1                                      mov ip, r3
0080d0f8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d0fc  03 00 54 e1                                      cmp r4, r3
0080d100  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d104  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d108  02 c0 a0 c1                                      movgt ip, r2
0080d10c  0c 20 a0 e1                                      mov r2, ip
0080d110  00 00 53 e3                                      cmp r3, #0
0080d114  f6 ff ff 1a                                      bne #0x80d0f4
0080d118  0c 00 57 e1                                      cmp r7, ip
0080d11c  96 00 00 0a                                      beq #0x80d37c
0080d120  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d124  0c 30 a0 e1                                      mov r3, ip
0080d128  02 00 54 e1                                      cmp r4, r2
0080d12c  92 00 00 ba                                      blt #0x80d37c
0080d130  14 30 93 e5                                      ldr r3, [r3, #0x14]
0080d134  0a 00 53 e1                                      cmp r3, sl
0080d138  9c 00 00 ca                                      bgt #0x80d3b0
0080d13c  48 c0 95 e5                                      ldr ip, [r5, #0x48]
0080d140  00 00 5c e3                                      cmp ip, #0
0080d144  06 c0 a0 01                                      moveq ip, r6
0080d148  0a 00 00 0a                                      beq #0x80d178
0080d14c  06 20 a0 e1                                      mov r2, r6
0080d150  00 00 00 ea                                      b #0x80d158
0080d154  03 c0 a0 e1                                      mov ip, r3
0080d158  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d15c  03 00 54 e1                                      cmp r4, r3
0080d160  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d164  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d168  02 c0 a0 c1                                      movgt ip, r2
0080d16c  0c 20 a0 e1                                      mov r2, ip
0080d170  00 00 53 e3                                      cmp r3, #0
0080d174  f6 ff ff 1a                                      bne #0x80d154
0080d178  0c 00 56 e1                                      cmp r6, ip
0080d17c  37 00 00 0a                                      beq #0x80d260
0080d180  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d184  0c 30 a0 e1                                      mov r3, ip
0080d188  02 00 54 e1                                      cmp r4, r2
0080d18c  33 00 00 ba                                      blt #0x80d260
0080d190  14 30 93 e5                                      ldr r3, [r3, #0x14]
0080d194  0a 00 53 e1                                      cmp r3, sl
0080d198  3d 00 00 ba                                      blt #0x80d294
0080d19c  08 00 a0 e1                                      mov r0, r8
0080d1a0  d5 f2 ff eb                                      bl #0x809cfc
0080d1a4  30 30 95 e5                                      ldr r3, [r5, #0x30]
0080d1a8  2c 40 85 e2                                      add r4, r5, #0x2c
0080d1ac  00 00 53 e3                                      cmp r3, #0
0080d1b0  bb 00 00 0a                                      beq #0x80d4a4
0080d1b4  04 10 a0 e1                                      mov r1, r4
0080d1b8  00 00 00 ea                                      b #0x80d1c0
0080d1bc  02 30 a0 e1                                      mov r3, r2
0080d1c0  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080d1c4  00 00 52 e1                                      cmp r2, r0
0080d1c8  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
0080d1cc  08 20 93 25                                      ldrhs r2, [r3, #8]
0080d1d0  01 30 a0 31                                      movlo r3, r1
0080d1d4  03 10 a0 e1                                      mov r1, r3
0080d1d8  00 00 52 e3                                      cmp r2, #0
0080d1dc  f6 ff ff 1a                                      bne #0x80d1bc
0080d1e0  03 00 54 e1                                      cmp r4, r3
0080d1e4  19 00 00 0a                                      beq #0x80d250
0080d1e8  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080d1ec  00 00 52 e1                                      cmp r2, r0
0080d1f0  ab 00 00 8a                                      bhi #0x80d4a4
0080d1f4  03 00 54 e1                                      cmp r4, r3
0080d1f8  14 00 00 0a                                      beq #0x80d250
0080d1fc  08 00 a0 e1                                      mov r0, r8
0080d200  bd f2 ff eb                                      bl #0x809cfc
0080d204  30 30 95 e5                                      ldr r3, [r5, #0x30]
0080d208  00 00 53 e3                                      cmp r3, #0
0080d20c  04 10 a0 11                                      movne r1, r4
0080d210  01 00 00 1a                                      bne #0x80d21c
0080d214  0d 00 00 ea                                      b #0x80d250
0080d218  02 30 a0 e1                                      mov r3, r2
0080d21c  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080d220  00 00 52 e1                                      cmp r2, r0
0080d224  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
0080d228  08 20 93 25                                      ldrhs r2, [r3, #8]
0080d22c  01 30 a0 31                                      movlo r3, r1
0080d230  03 10 a0 e1                                      mov r1, r3
0080d234  00 00 52 e3                                      cmp r2, #0
0080d238  f6 ff ff 1a                                      bne #0x80d218
0080d23c  03 00 54 e1                                      cmp r4, r3
0080d240  02 00 00 0a                                      beq #0x80d250
0080d244  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080d248  00 00 52 e1                                      cmp r2, r0
0080d24c  ed 00 00 9a                                      bls #0x80d608
0080d250  09 00 a0 e1                                      mov r0, sb
0080d254  43 04 00 eb                                      bl #0x80e368
0080d258  88 d0 8d e2                                      add sp, sp, #0x88
0080d25c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0080d260  14 30 8d e2                                      add r3, sp, #0x14
0080d264  00 e0 a0 e3                                      mov lr, #0
0080d268  54 00 8d e2                                      add r0, sp, #0x54
0080d26c  06 10 a0 e1                                      mov r1, r6
0080d270  58 20 8d e2                                      add r2, sp, #0x58
0080d274  18 e0 8d e5                                      str lr, [sp, #0x18]
0080d278  58 c0 8d e5                                      str ip, [sp, #0x58]
0080d27c  14 40 8d e5                                      str r4, [sp, #0x14]
0080d280  4d d6 ec eb                                      bl #0x342bbc
0080d284  54 30 9d e5                                      ldr r3, [sp, #0x54]
0080d288  14 30 93 e5                                      ldr r3, [r3, #0x14]
0080d28c  0a 00 53 e1                                      cmp r3, sl
0080d290  c1 ff ff aa                                      bge #0x80d19c
0080d294  48 c0 95 e5                                      ldr ip, [r5, #0x48]
0080d298  00 00 5c e3                                      cmp ip, #0
0080d29c  06 c0 a0 01                                      moveq ip, r6
0080d2a0  0a 00 00 0a                                      beq #0x80d2d0
0080d2a4  06 20 a0 e1                                      mov r2, r6
0080d2a8  00 00 00 ea                                      b #0x80d2b0
0080d2ac  03 c0 a0 e1                                      mov ip, r3
0080d2b0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d2b4  03 00 54 e1                                      cmp r4, r3
0080d2b8  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d2bc  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d2c0  02 c0 a0 c1                                      movgt ip, r2
0080d2c4  0c 20 a0 e1                                      mov r2, ip
0080d2c8  00 00 53 e3                                      cmp r3, #0
0080d2cc  f6 ff ff 1a                                      bne #0x80d2ac
0080d2d0  0c 00 56 e1                                      cmp r6, ip
0080d2d4  c0 00 00 0a                                      beq #0x80d5dc
0080d2d8  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d2dc  0c 30 a0 e1                                      mov r3, ip
0080d2e0  02 00 54 e1                                      cmp r4, r2
0080d2e4  bc 00 00 ba                                      blt #0x80d5dc
0080d2e8  14 20 93 e5                                      ldr r2, [r3, #0x14]
0080d2ec  05 00 a0 e1                                      mov r0, r5
0080d2f0  04 10 a0 e1                                      mov r1, r4
0080d2f4  0a 30 a0 e1                                      mov r3, sl
0080d2f8  de f9 ff eb                                      bl #0x80ba78
0080d2fc  48 c0 95 e5                                      ldr ip, [r5, #0x48]
0080d300  00 00 5c e3                                      cmp ip, #0
0080d304  06 c0 a0 01                                      moveq ip, r6
0080d308  0a 00 00 0a                                      beq #0x80d338
0080d30c  06 20 a0 e1                                      mov r2, r6
0080d310  00 00 00 ea                                      b #0x80d318
0080d314  03 c0 a0 e1                                      mov ip, r3
0080d318  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d31c  03 00 54 e1                                      cmp r4, r3
0080d320  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d324  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d328  02 c0 a0 c1                                      movgt ip, r2
0080d32c  0c 20 a0 e1                                      mov r2, ip
0080d330  00 00 53 e3                                      cmp r3, #0
0080d334  f6 ff ff 1a                                      bne #0x80d314
0080d338  0c 00 56 e1                                      cmp r6, ip
0080d33c  03 00 00 0a                                      beq #0x80d350
0080d340  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d344  0c 30 a0 e1                                      mov r3, ip
0080d348  02 00 54 e1                                      cmp r4, r2
0080d34c  08 00 00 aa                                      bge #0x80d374
0080d350  04 30 8d e2                                      add r3, sp, #4
0080d354  00 e0 a0 e3                                      mov lr, #0
0080d358  06 10 a0 e1                                      mov r1, r6
0080d35c  44 00 8d e2                                      add r0, sp, #0x44
0080d360  48 20 8d e2                                      add r2, sp, #0x48
0080d364  10 40 8d e9                                      stmib sp, {r4, lr}
0080d368  48 c0 8d e5                                      str ip, [sp, #0x48]
0080d36c  12 d6 ec eb                                      bl #0x342bbc
0080d370  44 30 9d e5                                      ldr r3, [sp, #0x44]
0080d374  14 a0 83 e5                                      str sl, [r3, #0x14]
0080d378  87 ff ff ea                                      b #0x80d19c
0080d37c  2c 30 8d e2                                      add r3, sp, #0x2c
0080d380  00 e0 a0 e3                                      mov lr, #0
0080d384  6c 00 8d e2                                      add r0, sp, #0x6c
0080d388  07 10 a0 e1                                      mov r1, r7
0080d38c  70 20 8d e2                                      add r2, sp, #0x70
0080d390  30 e0 8d e5                                      str lr, [sp, #0x30]
0080d394  70 c0 8d e5                                      str ip, [sp, #0x70]
0080d398  2c 40 8d e5                                      str r4, [sp, #0x2c]
0080d39c  06 d6 ec eb                                      bl #0x342bbc
0080d3a0  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0080d3a4  14 30 93 e5                                      ldr r3, [r3, #0x14]
0080d3a8  0a 00 53 e1                                      cmp r3, sl
0080d3ac  62 ff ff da                                      ble #0x80d13c
0080d3b0  60 c0 95 e5                                      ldr ip, [r5, #0x60]
0080d3b4  00 00 5c e3                                      cmp ip, #0
0080d3b8  07 c0 a0 01                                      moveq ip, r7
0080d3bc  0a 00 00 0a                                      beq #0x80d3ec
0080d3c0  07 20 a0 e1                                      mov r2, r7
0080d3c4  00 00 00 ea                                      b #0x80d3cc
0080d3c8  03 c0 a0 e1                                      mov ip, r3
0080d3cc  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d3d0  03 00 54 e1                                      cmp r4, r3
0080d3d4  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d3d8  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d3dc  02 c0 a0 c1                                      movgt ip, r2
0080d3e0  0c 20 a0 e1                                      mov r2, ip
0080d3e4  00 00 53 e3                                      cmp r3, #0
0080d3e8  f6 ff ff 1a                                      bne #0x80d3c8
0080d3ec  0c 00 57 e1                                      cmp r7, ip
0080d3f0  6e 00 00 0a                                      beq #0x80d5b0
0080d3f4  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d3f8  0c 30 a0 e1                                      mov r3, ip
0080d3fc  02 00 54 e1                                      cmp r4, r2
0080d400  6a 00 00 ba                                      blt #0x80d5b0
0080d404  14 30 93 e5                                      ldr r3, [r3, #0x14]
0080d408  05 00 a0 e1                                      mov r0, r5
0080d40c  04 10 a0 e1                                      mov r1, r4
0080d410  0a 20 a0 e1                                      mov r2, sl
0080d414  97 f9 ff eb                                      bl #0x80ba78
0080d418  60 c0 95 e5                                      ldr ip, [r5, #0x60]
0080d41c  00 00 5c e3                                      cmp ip, #0
0080d420  07 c0 a0 01                                      moveq ip, r7
0080d424  0a 00 00 0a                                      beq #0x80d454
0080d428  07 20 a0 e1                                      mov r2, r7
0080d42c  00 00 00 ea                                      b #0x80d434
0080d430  03 c0 a0 e1                                      mov ip, r3
0080d434  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d438  03 00 54 e1                                      cmp r4, r3
0080d43c  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d440  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d444  02 c0 a0 c1                                      movgt ip, r2
0080d448  0c 20 a0 e1                                      mov r2, ip
0080d44c  00 00 53 e3                                      cmp r3, #0
0080d450  f6 ff ff 1a                                      bne #0x80d430
0080d454  0c 00 57 e1                                      cmp r7, ip
0080d458  03 00 00 0a                                      beq #0x80d46c
0080d45c  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d460  0c 30 a0 e1                                      mov r3, ip
0080d464  02 00 54 e1                                      cmp r4, r2
0080d468  09 00 00 aa                                      bge #0x80d494
0080d46c  1c 30 8d e2                                      add r3, sp, #0x1c
0080d470  00 e0 a0 e3                                      mov lr, #0
0080d474  07 10 a0 e1                                      mov r1, r7
0080d478  5c 00 8d e2                                      add r0, sp, #0x5c
0080d47c  60 20 8d e2                                      add r2, sp, #0x60
0080d480  20 e0 8d e5                                      str lr, [sp, #0x20]
0080d484  60 c0 8d e5                                      str ip, [sp, #0x60]
0080d488  1c 40 8d e5                                      str r4, [sp, #0x1c]
0080d48c  ca d5 ec eb                                      bl #0x342bbc
0080d490  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0080d494  14 a0 83 e5                                      str sl, [r3, #0x14]
0080d498  27 ff ff ea                                      b #0x80d13c
0080d49c  06 30 a0 e1                                      mov r3, r6
0080d4a0  0a ff ff ea                                      b #0x80d0d0
0080d4a4  04 30 a0 e1                                      mov r3, r4
0080d4a8  51 ff ff ea                                      b #0x80d1f4
0080d4ac  00 00 5c e3                                      cmp ip, #0
0080d4b0  59 00 00 0a                                      beq #0x80d61c
0080d4b4  06 20 a0 e1                                      mov r2, r6
0080d4b8  00 00 00 ea                                      b #0x80d4c0
0080d4bc  03 c0 a0 e1                                      mov ip, r3
0080d4c0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d4c4  03 00 54 e1                                      cmp r4, r3
0080d4c8  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d4cc  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d4d0  02 c0 a0 c1                                      movgt ip, r2
0080d4d4  0c 20 a0 e1                                      mov r2, ip
0080d4d8  00 00 53 e3                                      cmp r3, #0
0080d4dc  f6 ff ff 1a                                      bne #0x80d4bc
0080d4e0  0c 00 56 e1                                      cmp r6, ip
0080d4e4  26 00 00 0a                                      beq #0x80d584
0080d4e8  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d4ec  0c 30 a0 e1                                      mov r3, ip
0080d4f0  02 00 54 e1                                      cmp r4, r2
0080d4f4  22 00 00 ba                                      blt #0x80d584
0080d4f8  14 a0 83 e5                                      str sl, [r3, #0x14]
0080d4fc  60 c0 95 e5                                      ldr ip, [r5, #0x60]
0080d500  5c 70 85 e2                                      add r7, r5, #0x5c
0080d504  00 00 5c e3                                      cmp ip, #0
0080d508  07 c0 a0 01                                      moveq ip, r7
0080d50c  0a 00 00 0a                                      beq #0x80d53c
0080d510  07 20 a0 e1                                      mov r2, r7
0080d514  00 00 00 ea                                      b #0x80d51c
0080d518  03 c0 a0 e1                                      mov ip, r3
0080d51c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d520  03 00 54 e1                                      cmp r4, r3
0080d524  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d528  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d52c  02 c0 a0 c1                                      movgt ip, r2
0080d530  0c 20 a0 e1                                      mov r2, ip
0080d534  00 00 53 e3                                      cmp r3, #0
0080d538  f6 ff ff 1a                                      bne #0x80d518
0080d53c  0c 00 57 e1                                      cmp r7, ip
0080d540  03 00 00 0a                                      beq #0x80d554
0080d544  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d548  0c 30 a0 e1                                      mov r3, ip
0080d54c  02 00 54 e1                                      cmp r4, r2
0080d550  09 00 00 aa                                      bge #0x80d57c
0080d554  34 30 8d e2                                      add r3, sp, #0x34
0080d558  00 e0 a0 e3                                      mov lr, #0
0080d55c  74 00 8d e2                                      add r0, sp, #0x74
0080d560  07 10 a0 e1                                      mov r1, r7
0080d564  78 20 8d e2                                      add r2, sp, #0x78
0080d568  38 e0 8d e5                                      str lr, [sp, #0x38]
0080d56c  78 c0 8d e5                                      str ip, [sp, #0x78]
0080d570  34 40 8d e5                                      str r4, [sp, #0x34]
0080d574  90 d5 ec eb                                      bl #0x342bbc
0080d578  74 30 9d e5                                      ldr r3, [sp, #0x74]
0080d57c  14 a0 83 e5                                      str sl, [r3, #0x14]
0080d580  d5 fe ff ea                                      b #0x80d0dc
0080d584  3c 30 8d e2                                      add r3, sp, #0x3c
0080d588  00 e0 a0 e3                                      mov lr, #0
0080d58c  7c 00 8d e2                                      add r0, sp, #0x7c
0080d590  06 10 a0 e1                                      mov r1, r6
0080d594  80 20 8d e2                                      add r2, sp, #0x80
0080d598  40 e0 8d e5                                      str lr, [sp, #0x40]
0080d59c  80 c0 8d e5                                      str ip, [sp, #0x80]
0080d5a0  3c 40 8d e5                                      str r4, [sp, #0x3c]
0080d5a4  84 d5 ec eb                                      bl #0x342bbc
0080d5a8  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0080d5ac  d1 ff ff ea                                      b #0x80d4f8
0080d5b0  24 30 8d e2                                      add r3, sp, #0x24
0080d5b4  00 e0 a0 e3                                      mov lr, #0
0080d5b8  64 00 8d e2                                      add r0, sp, #0x64
0080d5bc  07 10 a0 e1                                      mov r1, r7
0080d5c0  68 20 8d e2                                      add r2, sp, #0x68
0080d5c4  28 e0 8d e5                                      str lr, [sp, #0x28]
0080d5c8  68 c0 8d e5                                      str ip, [sp, #0x68]
0080d5cc  24 40 8d e5                                      str r4, [sp, #0x24]
0080d5d0  79 d5 ec eb                                      bl #0x342bbc
0080d5d4  64 30 9d e5                                      ldr r3, [sp, #0x64]
0080d5d8  89 ff ff ea                                      b #0x80d404
0080d5dc  0c 30 8d e2                                      add r3, sp, #0xc
0080d5e0  00 e0 a0 e3                                      mov lr, #0
0080d5e4  4c 00 8d e2                                      add r0, sp, #0x4c
0080d5e8  06 10 a0 e1                                      mov r1, r6
0080d5ec  50 20 8d e2                                      add r2, sp, #0x50
0080d5f0  10 e0 8d e5                                      str lr, [sp, #0x10]
0080d5f4  50 c0 8d e5                                      str ip, [sp, #0x50]
0080d5f8  0c 40 8d e5                                      str r4, [sp, #0xc]
0080d5fc  6e d5 ec eb                                      bl #0x342bbc
0080d600  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0080d604  37 ff ff ea                                      b #0x80d2e8
0080d608  88 10 8d e2                                      add r1, sp, #0x88
0080d60c  04 30 21 e5                                      str r3, [r1, #-4]!
0080d610  04 00 a0 e1                                      mov r0, r4
0080d614  df f7 ff eb                                      bl #0x80b598
0080d618  0c ff ff ea                                      b #0x80d250
0080d61c  06 c0 a0 e1                                      mov ip, r6
0080d620  ae ff ff ea                                      b #0x80d4e0

; FUNCTION 0x0080d624, declared_size=88, range_size=88, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging14AddToRecvQueueEP8CMessage
; demangled: CMessaging::AddToRecvQueue(CMessage*)
; decoder-mode: arm
0080d624  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080d628  00 40 a0 e1                                      mov r4, r0
0080d62c  08 50 80 e2                                      add r5, r0, #8
0080d630  01 60 a0 e1                                      mov r6, r1
0080d634  1c 70 84 e2                                      add r7, r4, #0x1c
0080d638  86 fe ff eb                                      bl #0x80d058
0080d63c  05 00 a0 e1                                      mov r0, r5
0080d640  49 03 00 eb                                      bl #0x80e36c
0080d644  07 00 a0 e1                                      mov r0, r7
0080d648  72 fe ff eb                                      bl #0x80d018
0080d64c  08 60 80 e5                                      str r6, [r0, #8]
0080d650  20 20 94 e5                                      ldr r2, [r4, #0x20]
0080d654  00 30 a0 e1                                      mov r3, r0
0080d658  00 70 80 e5                                      str r7, [r0]
0080d65c  04 20 83 e5                                      str r2, [r3, #4]
0080d660  05 00 a0 e1                                      mov r0, r5
0080d664  00 30 82 e5                                      str r3, [r2]
0080d668  20 30 84 e5                                      str r3, [r4, #0x20]
0080d66c  3d 03 00 eb                                      bl #0x80e368
0080d670  05 00 a0 e1                                      mov r0, r5
0080d674  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0080d678  3a 03 00 ea                                      b #0x80e368

; FUNCTION 0x0080d67c, declared_size=548, range_size=548, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging20HasMessageBeenQueuedEP8CMessage
; demangled: CMessaging::HasMessageBeenQueued(CMessage*)
; decoder-mode: arm
0080d67c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080d680  14 60 80 e2                                      add r6, r0, #0x14
0080d684  01 80 a0 e1                                      mov r8, r1
0080d688  24 d0 4d e2                                      sub sp, sp, #0x24
0080d68c  00 50 a0 e1                                      mov r5, r0
0080d690  06 00 a0 e1                                      mov r0, r6
0080d694  34 03 00 eb                                      bl #0x80e36c
0080d698  08 00 a0 e1                                      mov r0, r8
0080d69c  0c 40 98 e5                                      ldr r4, [r8, #0xc]
0080d6a0  04 70 98 e5                                      ldr r7, [r8, #4]
0080d6a4  7a f1 ff eb                                      bl #0x809c94
0080d6a8  00 00 50 e3                                      cmp r0, #0
0080d6ac  05 00 00 0a                                      beq #0x80d6c8
0080d6b0  00 40 a0 e3                                      mov r4, #0
0080d6b4  06 00 a0 e1                                      mov r0, r6
0080d6b8  2a 03 00 eb                                      bl #0x80e368
0080d6bc  04 00 a0 e1                                      mov r0, r4
0080d6c0  24 d0 8d e2                                      add sp, sp, #0x24
0080d6c4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0080d6c8  48 30 95 e5                                      ldr r3, [r5, #0x48]
0080d6cc  44 a0 85 e2                                      add sl, r5, #0x44
0080d6d0  00 00 53 e3                                      cmp r3, #0
0080d6d4  6f 00 00 0a                                      beq #0x80d898
0080d6d8  0a 10 a0 e1                                      mov r1, sl
0080d6dc  00 00 00 ea                                      b #0x80d6e4
0080d6e0  02 30 a0 e1                                      mov r3, r2
0080d6e4  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080d6e8  02 00 54 e1                                      cmp r4, r2
0080d6ec  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
0080d6f0  08 20 93 d5                                      ldrle r2, [r3, #8]
0080d6f4  01 30 a0 c1                                      movgt r3, r1
0080d6f8  03 10 a0 e1                                      mov r1, r3
0080d6fc  00 00 52 e3                                      cmp r2, #0
0080d700  f6 ff ff 1a                                      bne #0x80d6e0
0080d704  03 00 5a e1                                      cmp sl, r3
0080d708  e8 ff ff 0a                                      beq #0x80d6b0
0080d70c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080d710  02 00 54 e1                                      cmp r4, r2
0080d714  5f 00 00 ba                                      blt #0x80d898
0080d718  03 00 5a e1                                      cmp sl, r3
0080d71c  e3 ff ff 0a                                      beq #0x80d6b0
0080d720  08 00 a0 e1                                      mov r0, r8
0080d724  74 f1 ff eb                                      bl #0x809cfc
0080d728  30 30 95 e5                                      ldr r3, [r5, #0x30]
0080d72c  2c c0 85 e2                                      add ip, r5, #0x2c
0080d730  00 00 53 e3                                      cmp r3, #0
0080d734  0c 10 a0 11                                      movne r1, ip
0080d738  01 00 00 1a                                      bne #0x80d744
0080d73c  0d 00 00 ea                                      b #0x80d778
0080d740  02 30 a0 e1                                      mov r3, r2
0080d744  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080d748  00 00 52 e1                                      cmp r2, r0
0080d74c  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
0080d750  08 20 93 25                                      ldrhs r2, [r3, #8]
0080d754  01 30 a0 31                                      movlo r3, r1
0080d758  03 10 a0 e1                                      mov r1, r3
0080d75c  00 00 52 e3                                      cmp r2, #0
0080d760  f6 ff ff 1a                                      bne #0x80d740
0080d764  03 00 5c e1                                      cmp ip, r3
0080d768  05 00 00 0a                                      beq #0x80d784
0080d76c  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
0080d770  00 00 52 e1                                      cmp r2, r0
0080d774  00 00 00 9a                                      bls #0x80d77c
0080d778  0c 30 a0 e1                                      mov r3, ip
0080d77c  03 00 5c e1                                      cmp ip, r3
0080d780  ca ff ff 1a                                      bne #0x80d6b0
0080d784  48 c0 95 e5                                      ldr ip, [r5, #0x48]
0080d788  00 00 5c e3                                      cmp ip, #0
0080d78c  0a c0 a0 01                                      moveq ip, sl
0080d790  0a 00 00 0a                                      beq #0x80d7c0
0080d794  0a 20 a0 e1                                      mov r2, sl
0080d798  00 00 00 ea                                      b #0x80d7a0
0080d79c  03 c0 a0 e1                                      mov ip, r3
0080d7a0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d7a4  03 00 54 e1                                      cmp r4, r3
0080d7a8  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d7ac  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d7b0  02 c0 a0 c1                                      movgt ip, r2
0080d7b4  0c 20 a0 e1                                      mov r2, ip
0080d7b8  00 00 53 e3                                      cmp r3, #0
0080d7bc  f6 ff ff 1a                                      bne #0x80d79c
0080d7c0  0c 00 5a e1                                      cmp sl, ip
0080d7c4  03 00 00 0a                                      beq #0x80d7d8
0080d7c8  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d7cc  0c 30 a0 e1                                      mov r3, ip
0080d7d0  02 00 54 e1                                      cmp r4, r2
0080d7d4  09 00 00 aa                                      bge #0x80d800
0080d7d8  08 30 8d e2                                      add r3, sp, #8
0080d7dc  00 e0 a0 e3                                      mov lr, #0
0080d7e0  0a 10 a0 e1                                      mov r1, sl
0080d7e4  18 00 8d e2                                      add r0, sp, #0x18
0080d7e8  1c 20 8d e2                                      add r2, sp, #0x1c
0080d7ec  0c e0 8d e5                                      str lr, [sp, #0xc]
0080d7f0  1c c0 8d e5                                      str ip, [sp, #0x1c]
0080d7f4  08 40 8d e5                                      str r4, [sp, #8]
0080d7f8  ef d4 ec eb                                      bl #0x342bbc
0080d7fc  18 30 9d e5                                      ldr r3, [sp, #0x18]
0080d800  14 30 93 e5                                      ldr r3, [r3, #0x14]
0080d804  07 00 53 e1                                      cmp r3, r7
0080d808  a8 ff ff ba                                      blt #0x80d6b0
0080d80c  60 c0 95 e5                                      ldr ip, [r5, #0x60]
0080d810  5c 10 85 e2                                      add r1, r5, #0x5c
0080d814  00 00 5c e3                                      cmp ip, #0
0080d818  01 c0 a0 01                                      moveq ip, r1
0080d81c  0a 00 00 0a                                      beq #0x80d84c
0080d820  01 20 a0 e1                                      mov r2, r1
0080d824  00 00 00 ea                                      b #0x80d82c
0080d828  03 c0 a0 e1                                      mov ip, r3
0080d82c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080d830  03 00 54 e1                                      cmp r4, r3
0080d834  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
0080d838  08 30 9c d5                                      ldrle r3, [ip, #8]
0080d83c  02 c0 a0 c1                                      movgt ip, r2
0080d840  0c 20 a0 e1                                      mov r2, ip
0080d844  00 00 53 e3                                      cmp r3, #0
0080d848  f6 ff ff 1a                                      bne #0x80d828
0080d84c  0c 00 51 e1                                      cmp r1, ip
0080d850  03 00 00 0a                                      beq #0x80d864
0080d854  10 20 9c e5                                      ldr r2, [ip, #0x10]
0080d858  0c 30 a0 e1                                      mov r3, ip
0080d85c  02 00 54 e1                                      cmp r4, r2
0080d860  07 00 00 aa                                      bge #0x80d884
0080d864  0d 30 a0 e1                                      mov r3, sp
0080d868  00 e0 a0 e3                                      mov lr, #0
0080d86c  10 00 8d e2                                      add r0, sp, #0x10
0080d870  14 20 8d e2                                      add r2, sp, #0x14
0080d874  10 40 8d e8                                      stm sp, {r4, lr}
0080d878  14 c0 8d e5                                      str ip, [sp, #0x14]
0080d87c  ce d4 ec eb                                      bl #0x342bbc
0080d880  10 30 9d e5                                      ldr r3, [sp, #0x10]
0080d884  14 30 93 e5                                      ldr r3, [r3, #0x14]
0080d888  07 00 53 e1                                      cmp r3, r7
0080d88c  01 40 a0 d3                                      movle r4, #1
0080d890  87 ff ff da                                      ble #0x80d6b4
0080d894  85 ff ff ea                                      b #0x80d6b0
0080d898  0a 30 a0 e1                                      mov r3, sl
0080d89c  9d ff ff ea                                      b #0x80d718

; FUNCTION 0x0080d8a0, declared_size=288, range_size=288, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging16ProcessSendQueueEv
; demangled: CMessaging::ProcessSendQueue()
; decoder-mode: arm
0080d8a0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080d8a4  04 30 d0 e5                                      ldrb r3, [r0, #4]
0080d8a8  00 80 a0 e1                                      mov r8, r0
0080d8ac  00 00 53 e3                                      cmp r3, #0
0080d8b0  00 00 00 1a                                      bne #0x80d8b8
0080d8b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0080d8b8  0c 40 80 e2                                      add r4, r0, #0xc
0080d8bc  04 00 a0 e1                                      mov r0, r4
0080d8c0  08 70 a0 e1                                      mov r7, r8
0080d8c4  a8 02 00 eb                                      bl #0x80e36c
0080d8c8  24 60 b7 e5                                      ldr r6, [r7, #0x24]!
0080d8cc  01 a0 a0 e3                                      mov sl, #1
0080d8d0  06 00 57 e1                                      cmp r7, r6
0080d8d4  0e 00 00 0a                                      beq #0x80d914
0080d8d8  08 50 96 e5                                      ldr r5, [r6, #8]
0080d8dc  00 60 96 e5                                      ldr r6, [r6]
0080d8e0  00 00 55 e3                                      cmp r5, #0
0080d8e4  f9 ff ff 0a                                      beq #0x80d8d0
0080d8e8  05 00 a0 e1                                      mov r0, r5
0080d8ec  de f0 ff eb                                      bl #0x809c6c
0080d8f0  00 00 50 e3                                      cmp r0, #0
0080d8f4  17 00 00 1a                                      bne #0x80d958
0080d8f8  05 00 a0 e1                                      mov r0, r5
0080d8fc  31 f0 ff eb                                      bl #0x8099c8
0080d900  00 00 50 e3                                      cmp r0, #0
0080d904  0d 00 00 1a                                      bne #0x80d940
0080d908  3c a0 c5 e5                                      strb sl, [r5, #0x3c]
0080d90c  06 00 57 e1                                      cmp r7, r6
0080d910  f0 ff ff 1a                                      bne #0x80d8d8
0080d914  04 00 a0 e1                                      mov r0, r4
0080d918  92 02 00 eb                                      bl #0x80e368
0080d91c  98 30 9f e5                                      ldr r3, [pc, #0x98]
0080d920  08 00 a0 e1                                      mov r0, r8
0080d924  07 10 a0 e1                                      mov r1, r7
0080d928  03 30 8f e0                                      add r3, pc, r3
0080d92c  04 20 a0 e1                                      mov r2, r4
0080d930  e0 f4 ff eb                                      bl #0x80acb8
0080d934  04 00 a0 e1                                      mov r0, r4
0080d938  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0080d93c  89 02 00 ea                                      b #0x80e368
0080d940  05 00 a0 e1                                      mov r0, r5
0080d944  da f1 ff eb                                      bl #0x80a0b4
0080d948  00 00 50 e3                                      cmp r0, #0
0080d94c  df ff ff 0a                                      beq #0x80d8d0
0080d950  3c a0 c5 e5                                      strb sl, [r5, #0x3c]
0080d954  ec ff ff ea                                      b #0x80d90c
0080d958  05 00 a0 e1                                      mov r0, r5
0080d95c  b8 f0 ff eb                                      bl #0x809c44
0080d960  00 00 50 e3                                      cmp r0, #0
0080d964  e3 ff ff 0a                                      beq #0x80d8f8
0080d968  05 00 a0 e1                                      mov r0, r5
0080d96c  aa f0 ff eb                                      bl #0x809c1c
0080d970  00 00 50 e3                                      cmp r0, #0
0080d974  df ff ff 0a                                      beq #0x80d8f8
0080d978  08 00 a0 e1                                      mov r0, r8
0080d97c  05 10 a0 e1                                      mov r1, r5
0080d980  3d ff ff eb                                      bl #0x80d67c
0080d984  00 00 50 e3                                      cmp r0, #0
0080d988  da ff ff 1a                                      bne #0x80d8f8
0080d98c  00 30 95 e5                                      ldr r3, [r5]
0080d990  05 00 a0 e1                                      mov r0, r5
0080d994  0f e0 a0 e1                                      mov lr, pc
0080d998  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0080d99c  00 10 a0 e1                                      mov r1, r0
0080d9a0  08 00 a0 e1                                      mov r0, r8
0080d9a4  1e ff ff eb                                      bl #0x80d624
0080d9a8  08 00 a0 e1                                      mov r0, r8
0080d9ac  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0080d9b0  05 20 a0 e1                                      mov r2, r5
0080d9b4  f4 f3 ff eb                                      bl #0x80a98c
0080d9b8  ce ff ff ea                                      b #0x80d8f8
; mapping-symbol data/literal pool
0080d9bc  28 e9 0f 00                                      .byte 0x28, 0xe9, 0x0f, 0x00

; FUNCTION 0x0080d9c0, declared_size=184, range_size=184, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging14ReceiveMessageEP8CMessage
; demangled: CMessaging::ReceiveMessage(CMessage*)
; decoder-mode: arm
0080d9c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0080d9c4  00 50 a0 e1                                      mov r5, r0
0080d9c8  01 00 a0 e1                                      mov r0, r1
0080d9cc  01 40 a0 e1                                      mov r4, r1
0080d9d0  91 f0 ff eb                                      bl #0x809c1c
0080d9d4  00 00 50 e3                                      cmp r0, #0
0080d9d8  0a 00 00 1a                                      bne #0x80da08
0080d9dc  6a cd ff eb                                      bl #0x800f8c
0080d9e0  be c2 ff eb                                      bl #0x7fe4e0
0080d9e4  00 00 50 e3                                      cmp r0, #0
0080d9e8  16 00 00 1a                                      bne #0x80da48
0080d9ec  00 00 54 e3                                      cmp r4, #0
0080d9f0  03 00 00 0a                                      beq #0x80da04
0080d9f4  04 00 a0 e1                                      mov r0, r4
0080d9f8  00 30 94 e5                                      ldr r3, [r4]
0080d9fc  0f e0 a0 e1                                      mov lr, pc
0080da00  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080da04  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080da08  05 00 a0 e1                                      mov r0, r5
0080da0c  04 10 a0 e1                                      mov r1, r4
0080da10  19 ff ff eb                                      bl #0x80d67c
0080da14  00 00 50 e3                                      cmp r0, #0
0080da18  ef ff ff 1a                                      bne #0x80d9dc
0080da1c  00 30 94 e5                                      ldr r3, [r4]
0080da20  04 00 a0 e1                                      mov r0, r4
0080da24  0f e0 a0 e1                                      mov lr, pc
0080da28  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0080da2c  00 10 a0 e1                                      mov r1, r0
0080da30  05 00 a0 e1                                      mov r0, r5
0080da34  fa fe ff eb                                      bl #0x80d624
0080da38  53 cd ff eb                                      bl #0x800f8c
0080da3c  a7 c2 ff eb                                      bl #0x7fe4e0
0080da40  00 00 50 e3                                      cmp r0, #0
0080da44  e8 ff ff 0a                                      beq #0x80d9ec
0080da48  04 00 a0 e1                                      mov r0, r4
0080da4c  5f f1 ff eb                                      bl #0x809fd0
0080da50  00 00 50 e3                                      cmp r0, #0
0080da54  e4 ff ff 0a                                      beq #0x80d9ec
0080da58  00 30 94 e5                                      ldr r3, [r4]
0080da5c  04 00 a0 e1                                      mov r0, r4
0080da60  0f e0 a0 e1                                      mov lr, pc
0080da64  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0080da68  00 10 a0 e1                                      mov r1, r0
0080da6c  05 00 a0 e1                                      mov r0, r5
0080da70  2b 00 00 eb                                      bl #0x80db24
0080da74  dc ff ff ea                                      b #0x80d9ec

; FUNCTION 0x0080da78, declared_size=60, range_size=60, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging14UnpackMessagesER12NetBitStream
; demangled: CMessaging::UnpackMessages(NetBitStream&)
; decoder-mode: arm
0080da78  70 40 2d e9                                      push {r4, r5, r6, lr}
0080da7c  00 50 a0 e1                                      mov r5, r0
0080da80  01 40 a0 e1                                      mov r4, r1
0080da84  04 00 00 ea                                      b #0x80da9c
0080da88  04 00 a0 e1                                      mov r0, r4
0080da8c  28 f1 ff eb                                      bl #0x809f34
0080da90  00 10 a0 e1                                      mov r1, r0
0080da94  05 00 a0 e1                                      mov r0, r5
0080da98  c8 ff ff eb                                      bl #0x80d9c0
0080da9c  01 10 a0 e3                                      mov r1, #1
0080daa0  04 00 a0 e1                                      mov r0, r4
0080daa4  ae 02 00 eb                                      bl #0x80e564
0080daa8  00 00 50 e3                                      cmp r0, #0
0080daac  f5 ff ff 1a                                      bne #0x80da88
0080dab0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080dab4, declared_size=52, range_size=52, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging14ReadPacketDataEiiR12NetBitStream
; demangled: CMessaging::ReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
0080dab4  70 40 2d e9                                      push {r4, r5, r6, lr}
0080dab8  01 10 a0 e3                                      mov r1, #1
0080dabc  00 50 a0 e1                                      mov r5, r0
0080dac0  03 00 a0 e1                                      mov r0, r3
0080dac4  03 40 a0 e1                                      mov r4, r3
0080dac8  a5 02 00 eb                                      bl #0x80e564
0080dacc  00 00 50 e3                                      cmp r0, #0
0080dad0  00 00 00 1a                                      bne #0x80dad8
0080dad4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080dad8  05 00 a0 e1                                      mov r0, r5
0080dadc  04 10 a0 e1                                      mov r1, r4
0080dae0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0080dae4  e3 ff ff ea                                      b #0x80da78

; FUNCTION 0x0080dae8, declared_size=60, range_size=60, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging15sReadPacketDataEiiR12NetBitStream
; demangled: CMessaging::sReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
0080dae8  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
0080daec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0080daf0  30 00 2d e9                                      push {r4, r5}
0080daf4  0c c0 8f e0                                      add ip, pc, ip
0080daf8  00 50 a0 e1                                      mov r5, r0
0080dafc  03 00 9c e7                                      ldr r0, [ip, r3]
0080db00  01 40 a0 e1                                      mov r4, r1
0080db04  02 30 a0 e1                                      mov r3, r2
0080db08  00 00 90 e5                                      ldr r0, [r0]
0080db0c  05 10 a0 e1                                      mov r1, r5
0080db10  04 20 a0 e1                                      mov r2, r4
0080db14  30 00 bd e8                                      pop {r4, r5}
0080db18  e5 ff ff ea                                      b #0x80dab4
; mapping-symbol data/literal pool
0080db1c  9c 6f 18 00 dc 42 00 00                          .byte 0x9c, 0x6f, 0x18, 0x00, 0xdc, 0x42, 0x00, 0x00

; FUNCTION 0x0080db24, declared_size=1732, range_size=1732, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging14AddToSendQueueEP8CMessage
; demangled: CMessaging::AddToSendQueue(CMessage*)
; decoder-mode: arm
0080db24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0080db28  ac 26 9f e5                                      ldr r2, [pc, #0x6ac]
0080db2c  ac 36 9f e5                                      ldr r3, [pc, #0x6ac]
0080db30  91 df 4d e2                                      sub sp, sp, #0x244
0080db34  02 20 8f e0                                      add r2, pc, r2
0080db38  10 30 8d e5                                      str r3, [sp, #0x10]
0080db3c  03 30 92 e7                                      ldr r3, [r2, r3]
0080db40  00 00 8d e5                                      str r0, [sp]
0080db44  01 00 a0 e1                                      mov r0, r1
0080db48  00 30 93 e5                                      ldr r3, [r3]
0080db4c  06 00 8d e9                                      stmib sp, {r1, r2}
0080db50  3c 32 8d e5                                      str r3, [sp, #0x23c]
0080db54  4e f0 ff eb                                      bl #0x809c94
0080db58  00 00 50 e3                                      cmp r0, #0
0080db5c  90 01 00 1a                                      bne #0x80e1a4
0080db60  00 e0 9d e5                                      ldr lr, [sp]
0080db64  0c e0 8e e2                                      add lr, lr, #0xc
0080db68  0e 00 a0 e1                                      mov r0, lr
0080db6c  0c e0 8d e5                                      str lr, [sp, #0xc]
0080db70  fd 01 00 eb                                      bl #0x80e36c
0080db74  04 cd ff eb                                      bl #0x800f8c
0080db78  00 30 90 e5                                      ldr r3, [r0]
0080db7c  0f e0 a0 e1                                      mov lr, pc
0080db80  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0080db84  00 20 9d e5                                      ldr r2, [sp]
0080db88  00 10 a0 e1                                      mov r1, r0
0080db8c  04 00 9d e5                                      ldr r0, [sp, #4]
0080db90  24 40 82 e2                                      add r4, r2, #0x24
0080db94  b6 f0 ff eb                                      bl #0x809e74
0080db98  04 00 a0 e1                                      mov r0, r4
0080db9c  1d fd ff eb                                      bl #0x80d018
0080dba0  04 30 9d e5                                      ldr r3, [sp, #4]
0080dba4  08 30 80 e5                                      str r3, [r0, #8]
0080dba8  00 e0 9d e5                                      ldr lr, [sp]
0080dbac  28 30 9e e5                                      ldr r3, [lr, #0x28]
0080dbb0  00 40 80 e5                                      str r4, [r0]
0080dbb4  04 30 80 e5                                      str r3, [r0, #4]
0080dbb8  00 00 83 e5                                      str r0, [r3]
0080dbbc  24 30 9e e5                                      ldr r3, [lr, #0x24]
0080dbc0  28 00 8e e5                                      str r0, [lr, #0x28]
0080dbc4  03 00 54 e1                                      cmp r4, r3
0080dbc8  45 01 00 0a                                      beq #0x80e0e4
0080dbcc  00 30 93 e5                                      ldr r3, [r3]
0080dbd0  03 00 54 e1                                      cmp r4, r3
0080dbd4  42 01 00 0a                                      beq #0x80e0e4
0080dbd8  1c 50 8d e2                                      add r5, sp, #0x1c
0080dbdc  24 60 8d e2                                      add r6, sp, #0x24
0080dbe0  1c 50 8d e5                                      str r5, [sp, #0x1c]
0080dbe4  20 50 8d e5                                      str r5, [sp, #0x20]
0080dbe8  06 70 a0 e1                                      mov r7, r6
0080dbec  02 8c 86 e2                                      add r8, r6, #0x200
0080dbf0  00 70 87 e5                                      str r7, [r7]
0080dbf4  04 70 87 e5                                      str r7, [r7, #4]
0080dbf8  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
0080dbfc  05 00 5a e1                                      cmp sl, r5
0080dc00  0b 00 00 0a                                      beq #0x80dc34
0080dc04  07 00 a0 e1                                      mov r0, r7
0080dc08  02 fd ff eb                                      bl #0x80d018
0080dc0c  08 30 9a e5                                      ldr r3, [sl, #8]
0080dc10  08 30 80 e5                                      str r3, [r0, #8]
0080dc14  04 30 97 e5                                      ldr r3, [r7, #4]
0080dc18  00 70 80 e5                                      str r7, [r0]
0080dc1c  04 30 80 e5                                      str r3, [r0, #4]
0080dc20  00 00 83 e5                                      str r0, [r3]
0080dc24  04 00 87 e5                                      str r0, [r7, #4]
0080dc28  00 a0 9a e5                                      ldr sl, [sl]
0080dc2c  05 00 5a e1                                      cmp sl, r5
0080dc30  f3 ff ff 1a                                      bne #0x80dc04
0080dc34  08 70 87 e2                                      add r7, r7, #8
0080dc38  08 00 57 e1                                      cmp r7, r8
0080dc3c  eb ff ff 1a                                      bne #0x80dbf0
0080dc40  9c b5 9f e5                                      ldr fp, [pc, #0x59c]
0080dc44  00 70 a0 e3                                      mov r7, #0
0080dc48  0b b0 8f e0                                      add fp, pc, fp
0080dc4c  17 00 00 ea                                      b #0x80dcb0
0080dc50  01 30 96 e7                                      ldr r3, [r6, r1]
0080dc54  01 10 86 e0                                      add r1, r6, r1
0080dc58  01 00 53 e1                                      cmp r3, r1
0080dc5c  8a 00 00 0a                                      beq #0x80de8c
0080dc60  05 00 52 e1                                      cmp r2, r5
0080dc64  b5 00 00 0a                                      beq #0x80df40
0080dc68  1c 30 8d e5                                      str r3, [sp, #0x1c]
0080dc6c  04 00 91 e5                                      ldr r0, [r1, #4]
0080dc70  20 30 9d e5                                      ldr r3, [sp, #0x20]
0080dc74  20 00 8d e5                                      str r0, [sp, #0x20]
0080dc78  0c 00 81 e8                                      stm r1, {r2, r3}
0080dc7c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0080dc80  00 c0 93 e5                                      ldr ip, [r3]
0080dc84  00 00 92 e5                                      ldr r0, [r2]
0080dc88  00 c0 82 e5                                      str ip, [r2]
0080dc8c  00 00 83 e5                                      str r0, [r3]
0080dc90  00 30 91 e5                                      ldr r3, [r1]
0080dc94  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080dc98  04 00 93 e5                                      ldr r0, [r3, #4]
0080dc9c  04 10 92 e5                                      ldr r1, [r2, #4]
0080dca0  04 00 82 e5                                      str r0, [r2, #4]
0080dca4  04 10 83 e5                                      str r1, [r3, #4]
0080dca8  07 00 59 e1                                      cmp sb, r7
0080dcac  81 00 00 0a                                      beq #0x80deb8
0080dcb0  00 30 94 e5                                      ldr r3, [r4]
0080dcb4  04 00 53 e1                                      cmp r3, r4
0080dcb8  a8 00 00 0a                                      beq #0x80df60
0080dcbc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0080dcc0  00 10 93 e5                                      ldr r1, [r3]
0080dcc4  03 00 50 e1                                      cmp r0, r3
0080dcc8  00 20 a0 e1                                      mov r2, r0
0080dccc  0f 00 00 0a                                      beq #0x80dd10
0080dcd0  01 00 50 e1                                      cmp r0, r1
0080dcd4  0d 00 00 0a                                      beq #0x80dd10
0080dcd8  04 20 91 e5                                      ldr r2, [r1, #4]
0080dcdc  00 00 82 e5                                      str r0, [r2]
0080dce0  04 20 93 e5                                      ldr r2, [r3, #4]
0080dce4  00 10 82 e5                                      str r1, [r2]
0080dce8  04 20 90 e5                                      ldr r2, [r0, #4]
0080dcec  00 30 82 e5                                      str r3, [r2]
0080dcf0  04 c0 91 e5                                      ldr ip, [r1, #4]
0080dcf4  04 20 90 e5                                      ldr r2, [r0, #4]
0080dcf8  04 c0 80 e5                                      str ip, [r0, #4]
0080dcfc  04 00 93 e5                                      ldr r0, [r3, #4]
0080dd00  04 00 81 e5                                      str r0, [r1, #4]
0080dd04  04 20 83 e5                                      str r2, [r3, #4]
0080dd08  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0080dd0c  00 20 a0 e1                                      mov r2, r0
0080dd10  00 00 57 e3                                      cmp r7, #0
0080dd14  07 10 a0 01                                      moveq r1, r7
0080dd18  07 90 a0 01                                      moveq sb, r7
0080dd1c  cb ff ff 0a                                      beq #0x80dc50
0080dd20  00 30 96 e5                                      ldr r3, [r6]
0080dd24  06 00 53 e1                                      cmp r3, r6
0080dd28  00 90 a0 13                                      movne sb, #0
0080dd2c  00 10 a0 03                                      moveq r1, #0
0080dd30  09 00 a0 11                                      movne r0, sb
0080dd34  00 20 a0 01                                      moveq r2, r0
0080dd38  01 90 a0 01                                      moveq sb, r1
0080dd3c  c3 ff ff 0a                                      beq #0x80dc50
0080dd40  00 00 86 e0                                      add r0, r6, r0
0080dd44  13 00 00 ea                                      b #0x80dd98
0080dd48  00 10 92 e5                                      ldr r1, [r2]
0080dd4c  01 00 53 e1                                      cmp r3, r1
0080dd50  03 c0 a0 01                                      moveq ip, r3
0080dd54  0d 00 00 0a                                      beq #0x80dd90
0080dd58  04 e0 91 e5                                      ldr lr, [r1, #4]
0080dd5c  03 c0 a0 e1                                      mov ip, r3
0080dd60  00 30 8e e5                                      str r3, [lr]
0080dd64  04 e0 92 e5                                      ldr lr, [r2, #4]
0080dd68  00 10 8e e5                                      str r1, [lr]
0080dd6c  04 e0 93 e5                                      ldr lr, [r3, #4]
0080dd70  00 20 8e e5                                      str r2, [lr]
0080dd74  04 a0 91 e5                                      ldr sl, [r1, #4]
0080dd78  04 e0 93 e5                                      ldr lr, [r3, #4]
0080dd7c  04 a0 83 e5                                      str sl, [r3, #4]
0080dd80  04 a0 92 e5                                      ldr sl, [r2, #4]
0080dd84  01 30 a0 e1                                      mov r3, r1
0080dd88  04 a0 81 e5                                      str sl, [r1, #4]
0080dd8c  04 e0 82 e5                                      str lr, [r2, #4]
0080dd90  03 20 a0 e1                                      mov r2, r3
0080dd94  0c 30 a0 e1                                      mov r3, ip
0080dd98  03 00 50 e1                                      cmp r0, r3
0080dd9c  0a 00 00 0a                                      beq #0x80ddcc
0080dda0  05 00 52 e1                                      cmp r2, r5
0080dda4  18 00 00 0a                                      beq #0x80de0c
0080dda8  08 c0 92 e5                                      ldr ip, [r2, #8]
0080ddac  08 10 93 e5                                      ldr r1, [r3, #8]
0080ddb0  38 c0 9c e5                                      ldr ip, [ip, #0x38]
0080ddb4  38 10 91 e5                                      ldr r1, [r1, #0x38]
0080ddb8  01 00 5c e1                                      cmp ip, r1
0080ddbc  e1 ff ff 3a                                      blo #0x80dd48
0080ddc0  00 c0 93 e5                                      ldr ip, [r3]
0080ddc4  02 30 a0 e1                                      mov r3, r2
0080ddc8  f0 ff ff ea                                      b #0x80dd90
0080ddcc  05 00 52 e1                                      cmp r2, r5
0080ddd0  0d 00 00 0a                                      beq #0x80de0c
0080ddd4  05 00 50 e1                                      cmp r0, r5
0080ddd8  0b 00 00 0a                                      beq #0x80de0c
0080dddc  20 30 9d e5                                      ldr r3, [sp, #0x20]
0080dde0  00 00 83 e5                                      str r0, [r3]
0080dde4  04 30 92 e5                                      ldr r3, [r2, #4]
0080dde8  00 50 83 e5                                      str r5, [r3]
0080ddec  04 30 90 e5                                      ldr r3, [r0, #4]
0080ddf0  00 20 83 e5                                      str r2, [r3]
0080ddf4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0080ddf8  04 30 90 e5                                      ldr r3, [r0, #4]
0080ddfc  04 10 80 e5                                      str r1, [r0, #4]
0080de00  04 10 92 e5                                      ldr r1, [r2, #4]
0080de04  20 10 8d e5                                      str r1, [sp, #0x20]
0080de08  04 30 82 e5                                      str r3, [r2, #4]
0080de0c  00 30 90 e5                                      ldr r3, [r0]
0080de10  01 90 89 e2                                      add sb, sb, #1
0080de14  03 00 50 e1                                      cmp r0, r3
0080de18  33 00 00 0a                                      beq #0x80deec
0080de1c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080de20  05 00 52 e1                                      cmp r2, r5
0080de24  3c 00 00 0a                                      beq #0x80df1c
0080de28  1c 30 8d e5                                      str r3, [sp, #0x1c]
0080de2c  04 10 90 e5                                      ldr r1, [r0, #4]
0080de30  20 30 9d e5                                      ldr r3, [sp, #0x20]
0080de34  20 10 8d e5                                      str r1, [sp, #0x20]
0080de38  0c 00 80 e8                                      stm r0, {r2, r3}
0080de3c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0080de40  00 c0 93 e5                                      ldr ip, [r3]
0080de44  00 10 92 e5                                      ldr r1, [r2]
0080de48  00 c0 82 e5                                      str ip, [r2]
0080de4c  00 10 83 e5                                      str r1, [r3]
0080de50  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080de54  00 30 90 e5                                      ldr r3, [r0]
0080de58  04 10 92 e5                                      ldr r1, [r2, #4]
0080de5c  04 00 93 e5                                      ldr r0, [r3, #4]
0080de60  04 00 82 e5                                      str r0, [r2, #4]
0080de64  04 10 83 e5                                      str r1, [r3, #4]
0080de68  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080de6c  07 00 59 e1                                      cmp sb, r7
0080de70  16 00 00 1a                                      bne #0x80ded0
0080de74  89 11 a0 e1                                      lsl r1, sb, #3
0080de78  01 30 96 e7                                      ldr r3, [r6, r1]
0080de7c  01 10 86 e0                                      add r1, r6, r1
0080de80  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080de84  01 00 53 e1                                      cmp r3, r1
0080de88  74 ff ff 1a                                      bne #0x80dc60
0080de8c  05 00 52 e1                                      cmp r2, r5
0080de90  84 ff ff 0a                                      beq #0x80dca8
0080de94  00 20 81 e5                                      str r2, [r1]
0080de98  04 30 82 e5                                      str r3, [r2, #4]
0080de9c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0080dea0  07 00 59 e1                                      cmp sb, r7
0080dea4  04 20 81 e5                                      str r2, [r1, #4]
0080dea8  00 30 82 e5                                      str r3, [r2]
0080deac  1c 50 8d e5                                      str r5, [sp, #0x1c]
0080deb0  20 50 8d e5                                      str r5, [sp, #0x20]
0080deb4  7d ff ff 1a                                      bne #0x80dcb0
0080deb8  01 70 87 e2                                      add r7, r7, #1
0080debc  3f 00 57 e3                                      cmp r7, #0x3f
0080dec0  7a ff ff da                                      ble #0x80dcb0
0080dec4  0b 00 a0 e1                                      mov r0, fp
0080dec8  0a c1 02 eb                                      bl #0x8be2f8
0080decc  77 ff ff ea                                      b #0x80dcb0
0080ded0  89 31 96 e7                                      ldr r3, [r6, sb, lsl #3]
0080ded4  89 01 a0 e1                                      lsl r0, sb, #3
0080ded8  00 10 86 e0                                      add r1, r6, r0
0080dedc  01 00 53 e1                                      cmp r3, r1
0080dee0  e9 ff ff 0a                                      beq #0x80de8c
0080dee4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080dee8  94 ff ff ea                                      b #0x80dd40
0080deec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0080def0  05 00 53 e1                                      cmp r3, r5
0080def4  00 30 80 15                                      strne r3, [r0]
0080def8  04 00 83 15                                      strne r0, [r3, #4]
0080defc  20 30 9d 15                                      ldrne r3, [sp, #0x20]
0080df00  05 20 a0 01                                      moveq r2, r5
0080df04  05 20 a0 11                                      movne r2, r5
0080df08  04 30 80 15                                      strne r3, [r0, #4]
0080df0c  00 00 83 15                                      strne r0, [r3]
0080df10  1c 50 8d 15                                      strne r5, [sp, #0x1c]
0080df14  20 50 8d 15                                      strne r5, [sp, #0x20]
0080df18  d3 ff ff ea                                      b #0x80de6c
0080df1c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0080df20  04 50 83 e5                                      str r5, [r3, #4]
0080df24  04 30 90 e5                                      ldr r3, [r0, #4]
0080df28  20 30 8d e5                                      str r3, [sp, #0x20]
0080df2c  00 50 83 e5                                      str r5, [r3]
0080df30  04 00 80 e5                                      str r0, [r0, #4]
0080df34  00 00 80 e5                                      str r0, [r0]
0080df38  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080df3c  ca ff ff ea                                      b #0x80de6c
0080df40  1c 30 8d e5                                      str r3, [sp, #0x1c]
0080df44  04 50 83 e5                                      str r5, [r3, #4]
0080df48  04 30 91 e5                                      ldr r3, [r1, #4]
0080df4c  20 30 8d e5                                      str r3, [sp, #0x20]
0080df50  00 50 83 e5                                      str r5, [r3]
0080df54  04 10 81 e5                                      str r1, [r1, #4]
0080df58  00 10 81 e5                                      str r1, [r1]
0080df5c  51 ff ff ea                                      b #0x80dca8
0080df60  01 00 57 e3                                      cmp r7, #1
0080df64  3d 00 00 da                                      ble #0x80e060
0080df68  00 90 a0 e3                                      mov sb, #0
0080df6c  01 b0 a0 e3                                      mov fp, #1
0080df70  14 80 8d e5                                      str r8, [sp, #0x14]
0080df74  8b c1 86 e0                                      add ip, r6, fp, lsl #3
0080df78  09 e0 86 e0                                      add lr, r6, sb
0080df7c  8b 31 96 e7                                      ldr r3, [r6, fp, lsl #3]
0080df80  09 20 96 e7                                      ldr r2, [r6, sb]
0080df84  13 00 00 ea                                      b #0x80dfd8
0080df88  00 10 92 e5                                      ldr r1, [r2]
0080df8c  01 00 53 e1                                      cmp r3, r1
0080df90  03 00 a0 01                                      moveq r0, r3
0080df94  0d 00 00 0a                                      beq #0x80dfd0
0080df98  04 80 91 e5                                      ldr r8, [r1, #4]
0080df9c  03 00 a0 e1                                      mov r0, r3
0080dfa0  00 30 88 e5                                      str r3, [r8]
0080dfa4  04 80 92 e5                                      ldr r8, [r2, #4]
0080dfa8  00 10 88 e5                                      str r1, [r8]
0080dfac  04 80 93 e5                                      ldr r8, [r3, #4]
0080dfb0  00 20 88 e5                                      str r2, [r8]
0080dfb4  04 a0 91 e5                                      ldr sl, [r1, #4]
0080dfb8  04 80 93 e5                                      ldr r8, [r3, #4]
0080dfbc  04 a0 83 e5                                      str sl, [r3, #4]
0080dfc0  04 a0 92 e5                                      ldr sl, [r2, #4]
0080dfc4  01 30 a0 e1                                      mov r3, r1
0080dfc8  04 a0 81 e5                                      str sl, [r1, #4]
0080dfcc  04 80 82 e5                                      str r8, [r2, #4]
0080dfd0  03 20 a0 e1                                      mov r2, r3
0080dfd4  00 30 a0 e1                                      mov r3, r0
0080dfd8  03 00 5c e1                                      cmp ip, r3
0080dfdc  0a 00 00 0a                                      beq #0x80e00c
0080dfe0  02 00 5e e1                                      cmp lr, r2
0080dfe4  18 00 00 0a                                      beq #0x80e04c
0080dfe8  08 00 92 e5                                      ldr r0, [r2, #8]
0080dfec  08 10 93 e5                                      ldr r1, [r3, #8]
0080dff0  38 00 90 e5                                      ldr r0, [r0, #0x38]
0080dff4  38 10 91 e5                                      ldr r1, [r1, #0x38]
0080dff8  01 00 50 e1                                      cmp r0, r1
0080dffc  e1 ff ff 3a                                      blo #0x80df88
0080e000  00 00 93 e5                                      ldr r0, [r3]
0080e004  02 30 a0 e1                                      mov r3, r2
0080e008  f0 ff ff ea                                      b #0x80dfd0
0080e00c  02 00 5e e1                                      cmp lr, r2
0080e010  0d 00 00 0a                                      beq #0x80e04c
0080e014  0e 00 5c e1                                      cmp ip, lr
0080e018  0b 00 00 0a                                      beq #0x80e04c
0080e01c  04 30 9e e5                                      ldr r3, [lr, #4]
0080e020  00 c0 83 e5                                      str ip, [r3]
0080e024  04 30 92 e5                                      ldr r3, [r2, #4]
0080e028  00 e0 83 e5                                      str lr, [r3]
0080e02c  04 30 9c e5                                      ldr r3, [ip, #4]
0080e030  00 20 83 e5                                      str r2, [r3]
0080e034  04 10 9e e5                                      ldr r1, [lr, #4]
0080e038  04 30 9c e5                                      ldr r3, [ip, #4]
0080e03c  04 10 8c e5                                      str r1, [ip, #4]
0080e040  04 10 92 e5                                      ldr r1, [r2, #4]
0080e044  04 10 8e e5                                      str r1, [lr, #4]
0080e048  04 30 82 e5                                      str r3, [r2, #4]
0080e04c  01 b0 8b e2                                      add fp, fp, #1
0080e050  07 00 5b e1                                      cmp fp, r7
0080e054  08 90 89 e2                                      add sb, sb, #8
0080e058  c5 ff ff 1a                                      bne #0x80df74
0080e05c  14 80 9d e5                                      ldr r8, [sp, #0x14]
0080e060  01 30 47 e2                                      sub r3, r7, #1
0080e064  83 21 96 e7                                      ldr r2, [r6, r3, lsl #3]
0080e068  83 31 86 e0                                      add r3, r6, r3, lsl #3
0080e06c  03 00 52 e1                                      cmp r2, r3
0080e070  3f 00 00 0a                                      beq #0x80e174
0080e074  00 10 9d e5                                      ldr r1, [sp]
0080e078  24 c0 91 e5                                      ldr ip, [r1, #0x24]
0080e07c  0c 00 54 e1                                      cmp r4, ip
0080e080  4b 00 00 0a                                      beq #0x80e1b4
0080e084  00 e0 9d e5                                      ldr lr, [sp]
0080e088  04 00 93 e5                                      ldr r0, [r3, #4]
0080e08c  28 10 9e e5                                      ldr r1, [lr, #0x28]
0080e090  24 20 8e e5                                      str r2, [lr, #0x24]
0080e094  00 c0 83 e5                                      str ip, [r3]
0080e098  28 00 8e e5                                      str r0, [lr, #0x28]
0080e09c  04 10 83 e5                                      str r1, [r3, #4]
0080e0a0  00 20 90 e5                                      ldr r2, [r0]
0080e0a4  00 c0 91 e5                                      ldr ip, [r1]
0080e0a8  00 c0 80 e5                                      str ip, [r0]
0080e0ac  00 20 81 e5                                      str r2, [r1]
0080e0b0  24 20 9e e5                                      ldr r2, [lr, #0x24]
0080e0b4  00 30 93 e5                                      ldr r3, [r3]
0080e0b8  04 10 92 e5                                      ldr r1, [r2, #4]
0080e0bc  04 00 93 e5                                      ldr r0, [r3, #4]
0080e0c0  04 00 82 e5                                      str r0, [r2, #4]
0080e0c4  04 10 83 e5                                      str r1, [r3, #4]
0080e0c8  06 00 a0 e1                                      mov r0, r6
0080e0cc  08 60 86 e2                                      add r6, r6, #8
0080e0d0  3e f3 ff eb                                      bl #0x80add0
0080e0d4  08 00 56 e1                                      cmp r6, r8
0080e0d8  fa ff ff 1a                                      bne #0x80e0c8
0080e0dc  05 00 a0 e1                                      mov r0, r5
0080e0e0  3a f3 ff eb                                      bl #0x80add0
0080e0e4  04 00 9d e5                                      ldr r0, [sp, #4]
0080e0e8  32 30 d0 e5                                      ldrb r3, [r0, #0x32]
0080e0ec  00 00 53 e3                                      cmp r3, #0
0080e0f0  14 00 00 0a                                      beq #0x80e148
0080e0f4  04 30 9d e5                                      ldr r3, [sp, #4]
0080e0f8  89 4f 8d e2                                      add r4, sp, #0x224
0080e0fc  24 20 90 e5                                      ldr r2, [r0, #0x24]
0080e100  28 10 93 e5                                      ldr r1, [r3, #0x28]
0080e104  04 00 a0 e1                                      mov r0, r4
0080e108  34 42 8d e5                                      str r4, [sp, #0x234]
0080e10c  38 42 8d e5                                      str r4, [sp, #0x238]
0080e110  74 0d ec eb                                      bl #0x3116e8
0080e114  38 02 9d e5                                      ldr r0, [sp, #0x238]
0080e118  04 00 50 e1                                      cmp r0, r4
0080e11c  06 00 00 0a                                      beq #0x80e13c
0080e120  00 00 50 e3                                      cmp r0, #0
0080e124  04 00 00 0a                                      beq #0x80e13c
0080e128  24 12 9d e5                                      ldr r1, [sp, #0x224]
0080e12c  01 10 60 e0                                      rsb r1, r0, r1
0080e130  80 00 51 e3                                      cmp r1, #0x80
0080e134  26 00 00 8a                                      bhi #0x80e1d4
0080e138  7e c0 02 eb                                      bl #0x8be338
0080e13c  29 1c 00 eb                                      bl #0x8151e8
0080e140  00 30 a0 e3                                      mov r3, #0
0080e144  2c 30 80 e5                                      str r3, [r0, #0x2c]
0080e148  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0080e14c  85 00 00 eb                                      bl #0x80e368
0080e150  08 10 9d e5                                      ldr r1, [sp, #8]
0080e154  10 00 9d e5                                      ldr r0, [sp, #0x10]
0080e158  3c 22 9d e5                                      ldr r2, [sp, #0x23c]
0080e15c  00 30 91 e7                                      ldr r3, [r1, r0]
0080e160  00 30 93 e5                                      ldr r3, [r3]
0080e164  03 00 52 e1                                      cmp r2, r3
0080e168  10 00 00 1a                                      bne #0x80e1b0
0080e16c  91 df 8d e2                                      add sp, sp, #0x244
0080e170  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0080e174  00 00 9d e5                                      ldr r0, [sp]
0080e178  24 30 90 e5                                      ldr r3, [r0, #0x24]
0080e17c  03 00 54 e1                                      cmp r4, r3
0080e180  d0 ff ff 0a                                      beq #0x80e0c8
0080e184  00 30 82 e5                                      str r3, [r2]
0080e188  04 20 83 e5                                      str r2, [r3, #4]
0080e18c  28 30 90 e5                                      ldr r3, [r0, #0x28]
0080e190  04 30 82 e5                                      str r3, [r2, #4]
0080e194  00 20 83 e5                                      str r2, [r3]
0080e198  28 40 80 e5                                      str r4, [r0, #0x28]
0080e19c  24 40 80 e5                                      str r4, [r0, #0x24]
0080e1a0  c8 ff ff ea                                      b #0x80e0c8
0080e1a4  03 00 9d e8                                      ldm sp, {r0, r1}
0080e1a8  04 fe ff eb                                      bl #0x80d9c0
0080e1ac  e7 ff ff ea                                      b #0x80e150
0080e1b0  56 00 ec eb                                      bl #0x30e310
0080e1b4  24 20 81 e5                                      str r2, [r1, #0x24]
0080e1b8  04 40 82 e5                                      str r4, [r2, #4]
0080e1bc  04 20 93 e5                                      ldr r2, [r3, #4]
0080e1c0  28 20 81 e5                                      str r2, [r1, #0x28]
0080e1c4  00 40 82 e5                                      str r4, [r2]
0080e1c8  04 30 83 e5                                      str r3, [r3, #4]
0080e1cc  00 30 83 e5                                      str r3, [r3]
0080e1d0  bc ff ff ea                                      b #0x80e0c8
0080e1d4  99 08 ec eb                                      bl #0x310440
0080e1d8  d7 ff ff ea                                      b #0x80e13c
; mapping-symbol data/literal pool
0080e1dc  5c 6f 18 00 ac 40 00 00 68 24 0b 00              .byte 0x5c, 0x6f, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x24, 0x0b, 0x00

; FUNCTION 0x0080e1e8, declared_size=84, range_size=84, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging15SendMsgToServerEP8CMessage
; demangled: CMessaging::SendMsgToServer(CMessage*)
; decoder-mode: arm
0080e1e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080e1ec  01 40 a0 e1                                      mov r4, r1
0080e1f0  00 50 a0 e1                                      mov r5, r0
0080e1f4  64 cb ff eb                                      bl #0x800f8c
0080e1f8  00 30 90 e5                                      ldr r3, [r0]
0080e1fc  00 70 a0 e1                                      mov r7, r0
0080e200  84 60 93 e5                                      ldr r6, [r3, #0x84]
0080e204  60 cb ff eb                                      bl #0x800f8c
0080e208  00 30 90 e5                                      ldr r3, [r0]
0080e20c  0f e0 a0 e1                                      mov lr, pc
0080e210  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0080e214  00 10 a0 e1                                      mov r1, r0
0080e218  07 00 a0 e1                                      mov r0, r7
0080e21c  36 ff 2f e1                                      blx r6
0080e220  00 10 a0 e1                                      mov r1, r0
0080e224  04 00 a0 e1                                      mov r0, r4
0080e228  d0 ee ff eb                                      bl #0x809d70
0080e22c  05 00 a0 e1                                      mov r0, r5
0080e230  04 10 a0 e1                                      mov r1, r4
0080e234  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0080e238  39 fe ff ea                                      b #0x80db24

; FUNCTION 0x0080e23c, declared_size=104, range_size=104, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging9SendMsgToEP8CMessagei
; demangled: CMessaging::SendMsgTo(CMessage*, int)
; decoder-mode: arm
0080e23c  70 40 2d e9                                      push {r4, r5, r6, lr}
0080e240  02 40 a0 e1                                      mov r4, r2
0080e244  01 50 a0 e1                                      mov r5, r1
0080e248  00 60 a0 e1                                      mov r6, r0
0080e24c  4e cb ff eb                                      bl #0x800f8c
0080e250  00 30 90 e5                                      ldr r3, [r0]
0080e254  0f e0 a0 e1                                      mov lr, pc
0080e258  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0080e25c  04 00 50 e1                                      cmp r0, r4
0080e260  0b 00 00 0a                                      beq #0x80e294
0080e264  48 cb ff eb                                      bl #0x800f8c
0080e268  04 10 a0 e1                                      mov r1, r4
0080e26c  00 30 90 e5                                      ldr r3, [r0]
0080e270  0f e0 a0 e1                                      mov lr, pc
0080e274  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0080e278  00 10 a0 e1                                      mov r1, r0
0080e27c  05 00 a0 e1                                      mov r0, r5
0080e280  ba ee ff eb                                      bl #0x809d70
0080e284  06 00 a0 e1                                      mov r0, r6
0080e288  05 10 a0 e1                                      mov r1, r5
0080e28c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0080e290  23 fe ff ea                                      b #0x80db24
0080e294  06 00 a0 e1                                      mov r0, r6
0080e298  05 10 a0 e1                                      mov r1, r5
0080e29c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0080e2a0  df fc ff ea                                      b #0x80d624

; FUNCTION 0x0080e2a4, declared_size=40, range_size=40, mode=arm
; class-group: CMessaging
; alias: _ZN10CMessaging7SendMsgEP8CMessage
; demangled: CMessaging::SendMsg(CMessage*)
; decoder-mode: arm
0080e2a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0080e2a8  01 40 a0 e1                                      mov r4, r1
0080e2ac  00 50 a0 e1                                      mov r5, r0
0080e2b0  00 10 e0 e3                                      mvn r1, #0
0080e2b4  04 00 a0 e1                                      mov r0, r4
0080e2b8  ac ee ff eb                                      bl #0x809d70
0080e2bc  05 00 a0 e1                                      mov r0, r5
0080e2c0  04 10 a0 e1                                      mov r1, r4
0080e2c4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0080e2c8  15 fe ff ea                                      b #0x80db24
