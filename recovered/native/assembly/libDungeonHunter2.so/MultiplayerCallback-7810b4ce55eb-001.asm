; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0049a0c4, declared_size=8, range_size=8, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback9idleStateEPv
; demangled: MultiplayerCallback::idleState(void*)
; decoder-mode: arm
0049a0c4  64 00 a0 e3                                      mov r0, #0x64
0049a0c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0049a0cc, declared_size=8, range_size=8, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback11ingameStateEPv
; demangled: MultiplayerCallback::ingameState(void*)
; decoder-mode: arm
0049a0cc  4b 0f a0 e3                                      mov r0, #0x12c
0049a0d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0049a0d4, declared_size=168, range_size=168, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback32HandleAskResendAttributesMessageEPv
; demangled: MultiplayerCallback::HandleAskResendAttributesMessage(void*)
; decoder-mode: arm
0049a0d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0049a0d8  37 c4 0d eb                                      bl #0x80b1bc
0049a0dc  36 c4 0d eb                                      bl #0x80b1bc
0049a0e0  90 10 9f e5                                      ldr r1, [pc, #0x90]
0049a0e4  01 10 8f e0                                      add r1, pc, r1
0049a0e8  84 c2 0d eb                                      bl #0x80ab00
0049a0ec  00 40 a0 e1                                      mov r4, r0
0049a0f0  a5 9b 0d eb                                      bl #0x800f8c
0049a0f4  f9 90 0d eb                                      bl #0x7fe4e0
0049a0f8  00 70 50 e2                                      subs r7, r0, #0
0049a0fc  0a 00 00 0a                                      beq #0x49a12c
0049a100  a1 9b 0d eb                                      bl #0x800f8c
0049a104  00 30 90 e5                                      ldr r3, [r0]
0049a108  0f e0 a0 e1                                      mov lr, pc
0049a10c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049a110  00 30 90 e5                                      ldr r3, [r0]
0049a114  0f e0 a0 e1                                      mov lr, pc
0049a118  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0049a11c  01 30 a0 e3                                      mov r3, #1
0049a120  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049a124  00 00 a0 e3                                      mov r0, #0
0049a128  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0049a12c  96 9b 0d eb                                      bl #0x800f8c
0049a130  00 30 90 e5                                      ldr r3, [r0]
0049a134  0f e0 a0 e1                                      mov lr, pc
0049a138  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0049a13c  00 50 a0 e1                                      mov r5, r0
0049a140  e5 d7 0d eb                                      bl #0x8100dc
0049a144  00 60 a0 e1                                      mov r6, r0
0049a148  e3 d7 0d eb                                      bl #0x8100dc
0049a14c  07 20 a0 e1                                      mov r2, r7
0049a150  70 11 90 e5                                      ldr r1, [r0, #0x170]
0049a154  06 00 a0 e1                                      mov r0, r6
0049a158  20 d8 0d eb                                      bl #0x8101e0
0049a15c  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
0049a160  03 00 55 e1                                      cmp r5, r3
0049a164  e5 ff ff 0a                                      beq #0x49a100
0049a168  01 30 a0 e3                                      mov r3, #1
0049a16c  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049a170  00 00 a0 e3                                      mov r0, #0
0049a174  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0049a178  4c 4e 42 00                                      .byte 0x4c, 0x4e, 0x42, 0x00

; FUNCTION 0x0049a17c, declared_size=188, range_size=188, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback24HandleGlobalDeathMessageEPv
; demangled: MultiplayerCallback::HandleGlobalDeathMessage(void*)
; decoder-mode: arm
0049a17c  70 40 2d e9                                      push {r4, r5, r6, lr}
0049a180  0d c4 0d eb                                      bl #0x80b1bc
0049a184  0c c4 0d eb                                      bl #0x80b1bc
0049a188  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0049a18c  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
0049a190  01 10 8f e0                                      add r1, pc, r1
0049a194  59 c2 0d eb                                      bl #0x80ab00
0049a198  94 30 9f e5                                      ldr r3, [pc, #0x94]
0049a19c  04 40 8f e0                                      add r4, pc, r4
0049a1a0  00 60 a0 e1                                      mov r6, r0
0049a1a4  03 50 94 e7                                      ldr r5, [r4, r3]
0049a1a8  00 10 a0 e3                                      mov r1, #0
0049a1ac  01 20 a0 e3                                      mov r2, #1
0049a1b0  40 00 95 e5                                      ldr r0, [r5, #0x40]
0049a1b4  af 50 fb eb                                      bl #0x36e478
0049a1b8  60 46 90 e5                                      ldr r4, [r0, #0x660]
0049a1bc  00 00 54 e3                                      cmp r4, #0
0049a1c0  09 00 00 0a                                      beq #0x49a1ec
0049a1c4  00 30 94 e5                                      ldr r3, [r4]
0049a1c8  04 00 a0 e1                                      mov r0, r4
0049a1cc  0f e0 a0 e1                                      mov lr, pc
0049a1d0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0049a1d4  00 10 50 e2                                      subs r1, r0, #0
0049a1d8  0c 00 00 0a                                      beq #0x49a210
0049a1dc  40 00 95 e5                                      ldr r0, [r5, #0x40]
0049a1e0  14 37 90 e5                                      ldr r3, [r0, #0x714]
0049a1e4  00 00 53 e3                                      cmp r3, #0
0049a1e8  03 00 00 0a                                      beq #0x49a1fc
0049a1ec  01 30 a0 e3                                      mov r3, #1
0049a1f0  3c 30 c6 e5                                      strb r3, [r6, #0x3c]
0049a1f4  00 00 a0 e3                                      mov r0, #0
0049a1f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0049a1fc  a6 5a fb eb                                      bl #0x370c9c
0049a200  01 30 a0 e3                                      mov r3, #1
0049a204  3c 30 c6 e5                                      strb r3, [r6, #0x3c]
0049a208  00 00 a0 e3                                      mov r0, #0
0049a20c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0049a210  04 00 a0 e1                                      mov r0, r4
0049a214  01 20 a0 e3                                      mov r2, #1
0049a218  3e 2e fc eb                                      bl #0x3a5b18
0049a21c  01 30 a0 e3                                      mov r3, #1
0049a220  3c 30 c6 e5                                      strb r3, [r6, #0x3c]
0049a224  00 00 a0 e3                                      mov r0, #0
0049a228  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0049a22c  c8 4c 42 00 f4 a8 4f 00 f4 37 00 00              .byte 0xc8, 0x4c, 0x42, 0x00, 0xf4, 0xa8, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0049a6e4, declared_size=120, range_size=120, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback24HandleRaisedEventMessageEPv
; demangled: MultiplayerCallback::HandleRaisedEventMessage(void*)
; decoder-mode: arm
0049a6e4  64 30 9f e5                                      ldr r3, [pc, #0x64]
0049a6e8  64 20 9f e5                                      ldr r2, [pc, #0x64]
0049a6ec  10 40 2d e9                                      push {r4, lr}
0049a6f0  03 30 8f e0                                      add r3, pc, r3
0049a6f4  02 00 93 e7                                      ldr r0, [r3, r2]
0049a6f8  a5 13 fa eb                                      bl #0x31f594
0049a6fc  00 00 50 e3                                      cmp r0, #0
0049a700  02 00 00 0a                                      beq #0x49a710
0049a704  30 31 90 e5                                      ldr r3, [r0, #0x130]
0049a708  26 00 53 e3                                      cmp r3, #0x26
0049a70c  01 00 00 0a                                      beq #0x49a718
0049a710  00 00 a0 e3                                      mov r0, #0
0049a714  10 80 bd e8                                      pop {r4, pc}
0049a718  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
0049a71c  00 00 53 e3                                      cmp r3, #0
0049a720  fa ff ff 0a                                      beq #0x49a710
0049a724  a4 c2 0d eb                                      bl #0x80b1bc
0049a728  a3 c2 0d eb                                      bl #0x80b1bc
0049a72c  24 10 9f e5                                      ldr r1, [pc, #0x24]
0049a730  01 10 8f e0                                      add r1, pc, r1
0049a734  f1 c0 0d eb                                      bl #0x80ab00
0049a738  00 40 a0 e1                                      mov r4, r0
0049a73c  bd fe ff eb                                      bl #0x49a238
0049a740  01 30 a0 e3                                      mov r3, #1
0049a744  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049a748  00 00 a0 e3                                      mov r0, #0
0049a74c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0049a750  a0 a3 4f 00 f4 37 00 00 b0 47 42 00              .byte 0xa0, 0xa3, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb0, 0x47, 0x42, 0x00

; FUNCTION 0x0049a75c, declared_size=172, range_size=172, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback17LoadGLLiveFriendsEv
; demangled: MultiplayerCallback::LoadGLLiveFriends()
; decoder-mode: arm
0049a75c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0049a760  14 d0 4d e2                                      sub sp, sp, #0x14
0049a764  08 9a 0d eb                                      bl #0x800f8c
0049a768  4b 05 0e eb                                      bl #0x81bc9c
0049a76c  00 40 50 e2                                      subs r4, r0, #0
0049a770  01 00 00 0a                                      beq #0x49a77c
0049a774  14 d0 8d e2                                      add sp, sp, #0x14
0049a778  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0049a77c  02 9a 0d eb                                      bl #0x800f8c
0049a780  44 06 0e eb                                      bl #0x81c098
0049a784  00 60 50 e2                                      subs r6, r0, #0
0049a788  19 00 00 da                                      ble #0x49a7f4
0049a78c  04 50 8d e2                                      add r5, sp, #4
0049a790  04 70 a0 e1                                      mov r7, r4
0049a794  fc 99 0d eb                                      bl #0x800f8c
0049a798  04 10 a0 e1                                      mov r1, r4
0049a79c  56 06 0e eb                                      bl #0x81c0fc
0049a7a0  bd cd f9 eb                                      bl #0x30de9c
0049a7a4  08 00 8d e5                                      str r0, [sp, #8]
0049a7a8  f7 99 0d eb                                      bl #0x800f8c
0049a7ac  04 10 a0 e1                                      mov r1, r4
0049a7b0  60 06 0e eb                                      bl #0x81c138
0049a7b4  b8 cd f9 eb                                      bl #0x30de9c
0049a7b8  0d 70 cd e5                                      strb r7, [sp, #0xd]
0049a7bc  04 00 8d e5                                      str r0, [sp, #4]
0049a7c0  f1 99 0d eb                                      bl #0x800f8c
0049a7c4  04 10 a0 e1                                      mov r1, r4
0049a7c8  37 06 0e eb                                      bl #0x81c0ac
0049a7cc  02 00 50 e3                                      cmp r0, #2
0049a7d0  00 00 a0 13                                      movne r0, #0
0049a7d4  01 00 a0 03                                      moveq r0, #1
0049a7d8  0c 00 cd e5                                      strb r0, [sp, #0xc]
0049a7dc  01 40 84 e2                                      add r4, r4, #1
0049a7e0  e9 99 0d eb                                      bl #0x800f8c
0049a7e4  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
0049a7e8  88 11 0e eb                                      bl #0x81ee10
0049a7ec  06 00 54 e1                                      cmp r4, r6
0049a7f0  e7 ff ff 1a                                      bne #0x49a794
0049a7f4  e4 99 0d eb                                      bl #0x800f8c
0049a7f8  01 10 a0 e3                                      mov r1, #1
0049a7fc  14 d0 8d e2                                      add sp, sp, #0x14
0049a800  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
0049a804  27 05 0e ea                                      b #0x81bca8

; FUNCTION 0x0049a808, declared_size=344, range_size=344, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback16HandlePlayerLeftEPv
; demangled: MultiplayerCallback::HandlePlayerLeft(void*)
; decoder-mode: arm
0049a808  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0049a80c  40 41 9f e5                                      ldr r4, [pc, #0x140]
0049a810  40 31 9f e5                                      ldr r3, [pc, #0x140]
0049a814  10 d0 4d e2                                      sub sp, sp, #0x10
0049a818  04 40 8f e0                                      add r4, pc, r4
0049a81c  03 30 94 e7                                      ldr r3, [r4, r3]
0049a820  00 30 93 e5                                      ldr r3, [r3]
0049a824  00 00 53 e3                                      cmp r3, #0
0049a828  40 00 00 0a                                      beq #0x49a930
0049a82c  30 31 93 e5                                      ldr r3, [r3, #0x130]
0049a830  23 00 53 e3                                      cmp r3, #0x23
0049a834  3d 00 00 da                                      ble #0x49a930
0049a838  00 30 e0 e3                                      mvn r3, #0
0049a83c  10 60 8d e2                                      add r6, sp, #0x10
0049a840  04 30 26 e5                                      str r3, [r6, #-4]!
0049a844  24 d6 0d eb                                      bl #0x8100dc
0049a848  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
0049a84c  03 16 a0 e3                                      mov r1, #0x300000
0049a850  03 10 81 e2                                      add r1, r1, #3
0049a854  06 20 a0 e1                                      mov r2, r6
0049a858  04 30 a0 e3                                      mov r3, #4
0049a85c  06 0d 80 e2                                      add r0, r0, #0x180
0049a860  bf 8d 0d eb                                      bl #0x7fdf64
0049a864  05 30 94 e7                                      ldr r3, [r4, r5]
0049a868  38 10 93 e5                                      ldr r1, [r3, #0x38]
0049a86c  01 20 a0 e1                                      mov r2, r1
0049a870  00 31 b2 e5                                      ldr r3, [r2, #0x100]!
0049a874  02 00 53 e1                                      cmp r3, r2
0049a878  23 00 00 0a                                      beq #0x49a90c
0049a87c  00 70 a0 e3                                      mov r7, #0
0049a880  00 30 93 e5                                      ldr r3, [r3]
0049a884  01 70 87 e2                                      add r7, r7, #1
0049a888  03 00 52 e1                                      cmp r2, r3
0049a88c  fb ff ff 1a                                      bne #0x49a880
0049a890  00 60 a0 e3                                      mov r6, #0
0049a894  0d 80 a0 e1                                      mov r8, sp
0049a898  8c af 01 e3                                      movw sl, #0x1f8c
0049a89c  03 00 00 ea                                      b #0x49a8b0
0049a8a0  07 00 56 e1                                      cmp r6, r7
0049a8a4  18 00 00 0a                                      beq #0x49a90c
0049a8a8  05 30 94 e7                                      ldr r3, [r4, r5]
0049a8ac  38 10 93 e5                                      ldr r1, [r3, #0x38]
0049a8b0  06 20 a0 e1                                      mov r2, r6
0049a8b4  0d 00 a0 e1                                      mov r0, sp
0049a8b8  b8 97 fa eb                                      bl #0x3407a0
0049a8bc  0d 00 a0 e1                                      mov r0, sp
0049a8c0  a3 95 fa eb                                      bl #0x33ff54
0049a8c4  00 90 50 e2                                      subs sb, r0, #0
0049a8c8  01 60 86 e2                                      add r6, r6, #1
0049a8cc  f3 ff ff 0a                                      beq #0x49a8a0
0049a8d0  00 30 99 e5                                      ldr r3, [sb]
0049a8d4  0f e0 a0 e1                                      mov lr, pc
0049a8d8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0049a8dc  00 00 50 e3                                      cmp r0, #0
0049a8e0  ee ff ff 0a                                      beq #0x49a8a0
0049a8e4  0a 30 99 e7                                      ldr r3, [sb, sl]
0049a8e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0049a8ec  03 00 52 e1                                      cmp r2, r3
0049a8f0  ea ff ff 1a                                      bne #0x49a8a0
0049a8f4  05 30 94 e7                                      ldr r3, [r4, r5]
0049a8f8  09 10 a0 e1                                      mov r1, sb
0049a8fc  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049a900  1e 5d fb eb                                      bl #0x371d80
0049a904  07 00 56 e1                                      cmp r6, r7
0049a908  e6 ff ff 1a                                      bne #0x49a8a8
0049a90c  f2 d5 0d eb                                      bl #0x8100dc
0049a910  f5 da 0d eb                                      bl #0x8114ec
0049a914  03 00 50 e3                                      cmp r0, #3
0049a918  07 00 00 da                                      ble #0x49a93c
0049a91c  ee d5 0d eb                                      bl #0x8100dc
0049a920  03 16 a0 e3                                      mov r1, #0x300000
0049a924  06 0d 80 e2                                      add r0, r0, #0x180
0049a928  03 10 81 e2                                      add r1, r1, #3
0049a92c  af 8e 0d eb                                      bl #0x7fe3f0
0049a930  00 00 a0 e3                                      mov r0, #0
0049a934  10 d0 8d e2                                      add sp, sp, #0x10
0049a938  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0049a93c  92 99 0d eb                                      bl #0x800f8c
0049a940  01 10 a0 e3                                      mov r1, #1
0049a944  00 30 90 e5                                      ldr r3, [r0]
0049a948  0f e0 a0 e1                                      mov lr, pc
0049a94c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0049a950  f1 ff ff ea                                      b #0x49a91c
; mapping-symbol data/literal pool
0049a954  78 a2 4f 00 64 1d 00 00 f4 37 00 00              .byte 0x78, 0xa2, 0x4f, 0x00, 0x64, 0x1d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0049a960, declared_size=156, range_size=156, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback22HandleMenuReadyMessageEPv
; demangled: MultiplayerCallback::HandleMenuReadyMessage(void*)
; decoder-mode: arm
0049a960  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0049a964  24 d0 4d e2                                      sub sp, sp, #0x24
0049a968  4a 19 fa eb                                      bl #0x320e98
0049a96c  14 30 90 e5                                      ldr r3, [r0, #0x14]
0049a970  c8 00 53 e3                                      cmp r3, #0xc8
0049a974  02 00 00 0a                                      beq #0x49a984
0049a978  00 00 a0 e3                                      mov r0, #0
0049a97c  24 d0 8d e2                                      add sp, sp, #0x24
0049a980  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0049a984  0c c2 0d eb                                      bl #0x80b1bc
0049a988  0b c2 0d eb                                      bl #0x80b1bc
0049a98c  64 10 9f e5                                      ldr r1, [pc, #0x64]
0049a990  00 60 a0 e3                                      mov r6, #0
0049a994  0d 40 a0 e1                                      mov r4, sp
0049a998  01 10 8f e0                                      add r1, pc, r1
0049a99c  57 c0 0d eb                                      bl #0x80ab00
0049a9a0  02 30 a0 e3                                      mov r3, #2
0049a9a4  00 50 a0 e1                                      mov r5, r0
0049a9a8  50 00 90 e5                                      ldr r0, [r0, #0x50]
0049a9ac  54 70 d5 e5                                      ldrb r7, [r5, #0x54]
0049a9b0  01 30 cd e5                                      strb r3, [sp, #1]
0049a9b4  00 60 cd e5                                      strb r6, [sp]
0049a9b8  dc d0 f9 eb                                      bl #0x30ed30
0049a9bc  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
0049a9c0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0049a9c4  01 30 a0 e3                                      mov r3, #1
0049a9c8  0c 60 cd e5                                      strb r6, [sp, #0xc]
0049a9cc  04 20 8d e5                                      str r2, [sp, #4]
0049a9d0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0049a9d4  10 70 cd e5                                      strb r7, [sp, #0x10]
0049a9d8  0d 30 cd e5                                      strb r3, [sp, #0xd]
0049a9dc  08 20 8d e5                                      str r2, [sp, #8]
0049a9e0  0c 00 8d e2                                      add r0, sp, #0xc
0049a9e4  3c 30 c5 e5                                      strb r3, [r5, #0x3c]
0049a9e8  cd f1 0b eb                                      bl #0x797124
0049a9ec  0d 00 a0 e1                                      mov r0, sp
0049a9f0  cb f1 0b eb                                      bl #0x797124
0049a9f4  df ff ff ea                                      b #0x49a978
; mapping-symbol data/literal pool
0049a9f8  38 45 42 00                                      .byte 0x38, 0x45, 0x42, 0x00

; FUNCTION 0x0049a9fc, declared_size=100, range_size=100, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback19HandleIsHostMessageEPv
; demangled: MultiplayerCallback::HandleIsHostMessage(void*)
; decoder-mode: arm
0049a9fc  70 40 2d e9                                      push {r4, r5, r6, lr}
0049aa00  ed c1 0d eb                                      bl #0x80b1bc
0049aa04  ec c1 0d eb                                      bl #0x80b1bc
0049aa08  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0049aa0c  01 10 8f e0                                      add r1, pc, r1
0049aa10  3a c0 0d eb                                      bl #0x80ab00
0049aa14  00 40 a0 e1                                      mov r4, r0
0049aa18  af d5 0d eb                                      bl #0x8100dc
0049aa1c  00 20 a0 e3                                      mov r2, #0
0049aa20  02 30 a0 e1                                      mov r3, r2
0049aa24  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0049aa28  fe d5 0d eb                                      bl #0x810228
0049aa2c  78 51 90 e5                                      ldr r5, [r0, #0x178]
0049aa30  a9 d5 0d eb                                      bl #0x8100dc
0049aa34  70 31 90 e5                                      ldr r3, [r0, #0x170]
0049aa38  03 00 55 e1                                      cmp r5, r3
0049aa3c  02 00 00 0a                                      beq #0x49aa4c
0049aa40  70 51 80 e5                                      str r5, [r0, #0x170]
0049aa44  15 0e 80 e2                                      add r0, r0, #0x150
0049aa48  4d e9 0d eb                                      bl #0x814f84
0049aa4c  01 30 a0 e3                                      mov r3, #1
0049aa50  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049aa54  00 00 a0 e3                                      mov r0, #0
0049aa58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0049aa5c  6c 44 42 00                                      .byte 0x6c, 0x44, 0x42, 0x00

; FUNCTION 0x0049aa60, declared_size=440, range_size=440, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback24HandleSpawnObjectMessageEPv
; demangled: MultiplayerCallback::HandleSpawnObjectMessage(void*)
; decoder-mode: arm
0049aa60  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0049aa64  34 d0 4d e2                                      sub sp, sp, #0x34
0049aa68  d3 c1 0d eb                                      bl #0x80b1bc
0049aa6c  d2 c1 0d eb                                      bl #0x80b1bc
0049aa70  94 11 9f e5                                      ldr r1, [pc, #0x194]
0049aa74  94 41 9f e5                                      ldr r4, [pc, #0x194]
0049aa78  94 71 9f e5                                      ldr r7, [pc, #0x194]
0049aa7c  01 10 8f e0                                      add r1, pc, r1
0049aa80  1e c0 0d eb                                      bl #0x80ab00
0049aa84  04 40 8f e0                                      add r4, pc, r4
0049aa88  07 50 94 e7                                      ldr r5, [r4, r7]
0049aa8c  00 60 a0 e1                                      mov r6, r0
0049aa90  05 00 a0 e1                                      mov r0, r5
0049aa94  be 12 fa eb                                      bl #0x31f594
0049aa98  00 00 50 e3                                      cmp r0, #0
0049aa9c  04 00 00 0a                                      beq #0x49aab4
0049aaa0  05 00 a0 e1                                      mov r0, r5
0049aaa4  ba 12 fa eb                                      bl #0x31f594
0049aaa8  30 31 90 e5                                      ldr r3, [r0, #0x130]
0049aaac  26 00 53 e3                                      cmp r3, #0x26
0049aab0  04 00 00 0a                                      beq #0x49aac8
0049aab4  01 30 a0 e3                                      mov r3, #1
0049aab8  3c 30 c6 e5                                      strb r3, [r6, #0x3c]
0049aabc  00 00 a0 e3                                      mov r0, #0
0049aac0  34 d0 8d e2                                      add sp, sp, #0x34
0049aac4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0049aac8  24 80 8d e2                                      add r8, sp, #0x24
0049aacc  38 10 95 e5                                      ldr r1, [r5, #0x38]
0049aad0  50 20 96 e5                                      ldr r2, [r6, #0x50]
0049aad4  08 00 a0 e1                                      mov r0, r8
0049aad8  30 97 fa eb                                      bl #0x3407a0
0049aadc  08 00 a0 e1                                      mov r0, r8
0049aae0  00 10 a0 e3                                      mov r1, #0
0049aae4  b5 94 fa eb                                      bl #0x33fdc0
0049aae8  00 00 50 e3                                      cmp r0, #0
0049aaec  04 00 00 0a                                      beq #0x49ab04
0049aaf0  68 30 d6 e5                                      ldrb r3, [r6, #0x68]
0049aaf4  00 00 53 e3                                      cmp r3, #0
0049aaf8  ed ff ff 0a                                      beq #0x49aab4
0049aafc  ac 8c fa eb                                      bl #0x33ddb4
0049ab00  eb ff ff ea                                      b #0x49aab4
0049ab04  68 10 d6 e5                                      ldrb r1, [r6, #0x68]
0049ab08  00 00 51 e3                                      cmp r1, #0
0049ab0c  e8 ff ff 1a                                      bne #0x49aab4
0049ab10  01 20 a0 e1                                      mov r2, r1
0049ab14  54 00 96 e5                                      ldr r0, [r6, #0x54]
0049ab18  b6 49 fc eb                                      bl #0x3ad1f8
0049ab1c  18 a0 8d e2                                      add sl, sp, #0x18
0049ab20  00 80 a0 e1                                      mov r8, r0
0049ab24  38 10 95 e5                                      ldr r1, [r5, #0x38]
0049ab28  0a 00 a0 e1                                      mov r0, sl
0049ab2c  58 20 96 e5                                      ldr r2, [r6, #0x58]
0049ab30  1a 97 fa eb                                      bl #0x3407a0
0049ab34  0a 00 a0 e1                                      mov r0, sl
0049ab38  e9 94 fa eb                                      bl #0x33fee4
0049ab3c  00 00 58 e3                                      cmp r8, #0
0049ab40  00 a0 a0 e1                                      mov sl, r0
0049ab44  da ff ff 0a                                      beq #0x49aab4
0049ab48  5c 30 96 e5                                      ldr r3, [r6, #0x5c]
0049ab4c  0c 10 8d e2                                      add r1, sp, #0xc
0049ab50  08 00 a0 e1                                      mov r0, r8
0049ab54  0c 30 8d e5                                      str r3, [sp, #0xc]
0049ab58  60 30 96 e5                                      ldr r3, [r6, #0x60]
0049ab5c  10 30 8d e5                                      str r3, [sp, #0x10]
0049ab60  64 30 96 e5                                      ldr r3, [r6, #0x64]
0049ab64  14 30 8d e5                                      str r3, [sp, #0x14]
0049ab68  6c 31 9a e5                                      ldr r3, [sl, #0x16c]
0049ab6c  00 30 8d e5                                      str r3, [sp]
0049ab70  70 31 9a e5                                      ldr r3, [sl, #0x170]
0049ab74  04 30 8d e5                                      str r3, [sp, #4]
0049ab78  74 31 9a e5                                      ldr r3, [sl, #0x174]
0049ab7c  08 30 8d e5                                      str r3, [sp, #8]
0049ab80  5b 2b fc eb                                      bl #0x3a58f4
0049ab84  51 1d 88 e2                                      add r1, r8, #0x1440
0049ab88  01 20 a0 e3                                      mov r2, #1
0049ab8c  08 00 a0 e1                                      mov r0, r8
0049ab90  10 10 81 e2                                      add r1, r1, #0x10
0049ab94  86 e4 fb eb                                      bl #0x393db4
0049ab98  08 00 a0 e1                                      mov r0, r8
0049ab9c  0d 10 a0 e1                                      mov r1, sp
0049aba0  3e e3 fb eb                                      bl #0x3938a0
0049aba4  01 10 a0 e3                                      mov r1, #1
0049aba8  e4 34 01 e3                                      movw r3, #0x14e4
0049abac  03 10 c8 e7                                      strb r1, [r8, r3]
0049abb0  08 00 a0 e1                                      mov r0, r8
0049abb4  00 30 98 e5                                      ldr r3, [r8]
0049abb8  0f e0 a0 e1                                      mov lr, pc
0049abbc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0049abc0  38 00 95 e5                                      ldr r0, [r5, #0x38]
0049abc4  08 10 a0 e1                                      mov r1, r8
0049abc8  7c a1 fa eb                                      bl #0x3431c0
0049abcc  f4 02 9a e5                                      ldr r0, [sl, #0x2f4]
0049abd0  00 00 50 e3                                      cmp r0, #0
0049abd4  03 00 00 0a                                      beq #0x49abe8
0049abd8  08 10 a0 e1                                      mov r1, r8
0049abdc  ab ef fb eb                                      bl #0x396a90
0049abe0  00 00 50 e3                                      cmp r0, #0
0049abe4  b2 ff ff 1a                                      bne #0x49aab4
0049abe8  07 30 94 e7                                      ldr r3, [r4, r7]
0049abec  08 10 a0 e1                                      mov r1, r8
0049abf0  38 00 93 e5                                      ldr r0, [r3, #0x38]
0049abf4  62 a5 fa eb                                      bl #0x344184
0049abf8  01 30 a0 e3                                      mov r3, #1
0049abfc  ef 32 c8 e5                                      strb r3, [r8, #0x2ef]
0049ac00  08 00 a0 e1                                      mov r0, r8
0049ac04  c1 c6 fb eb                                      bl #0x38c710
0049ac08  a9 ff ff ea                                      b #0x49aab4
; mapping-symbol data/literal pool
0049ac0c  ec 43 42 00 0c a0 4f 00 f4 37 00 00              .byte 0xec, 0x43, 0x42, 0x00, 0x0c, 0xa0, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0049ac18, declared_size=456, range_size=456, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback17HandleLootMessageEPv
; demangled: MultiplayerCallback::HandleLootMessage(void*)
; decoder-mode: arm
0049ac18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0049ac1c  68 d0 4d e2                                      sub sp, sp, #0x68
0049ac20  65 c1 0d eb                                      bl #0x80b1bc
0049ac24  64 c1 0d eb                                      bl #0x80b1bc
0049ac28  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
0049ac2c  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
0049ac30  01 10 8f e0                                      add r1, pc, r1
0049ac34  b1 bf 0d eb                                      bl #0x80ab00
0049ac38  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
0049ac3c  05 50 8f e0                                      add r5, pc, r5
0049ac40  00 40 a0 e1                                      mov r4, r0
0049ac44  03 50 95 e7                                      ldr r5, [r5, r3]
0049ac48  05 00 a0 e1                                      mov r0, r5
0049ac4c  50 12 fa eb                                      bl #0x31f594
0049ac50  00 00 50 e3                                      cmp r0, #0
0049ac54  02 00 00 0a                                      beq #0x49ac64
0049ac58  30 31 90 e5                                      ldr r3, [r0, #0x130]
0049ac5c  26 00 53 e3                                      cmp r3, #0x26
0049ac60  04 00 00 0a                                      beq #0x49ac78
0049ac64  01 30 a0 e3                                      mov r3, #1
0049ac68  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049ac6c  00 00 a0 e3                                      mov r0, #0
0049ac70  68 d0 8d e2                                      add sp, sp, #0x68
0049ac74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0049ac78  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
0049ac7c  00 00 53 e3                                      cmp r3, #0
0049ac80  f7 ff ff 0a                                      beq #0x49ac64
0049ac84  5c 60 8d e2                                      add r6, sp, #0x5c
0049ac88  38 10 95 e5                                      ldr r1, [r5, #0x38]
0049ac8c  58 20 94 e5                                      ldr r2, [r4, #0x58]
0049ac90  06 00 a0 e1                                      mov r0, r6
0049ac94  c1 96 fa eb                                      bl #0x3407a0
0049ac98  06 00 a0 e1                                      mov r0, r6
0049ac9c  90 94 fa eb                                      bl #0x33fee4
0049aca0  50 70 8d e2                                      add r7, sp, #0x50
0049aca4  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0049aca8  38 10 95 e5                                      ldr r1, [r5, #0x38]
0049acac  00 60 a0 e1                                      mov r6, r0
0049acb0  07 00 a0 e1                                      mov r0, r7
0049acb4  b9 96 fa eb                                      bl #0x3407a0
0049acb8  07 00 a0 e1                                      mov r0, r7
0049acbc  88 94 fa eb                                      bl #0x33fee4
0049acc0  50 30 d4 e5                                      ldrb r3, [r4, #0x50]
0049acc4  00 20 a0 e1                                      mov r2, r0
0049acc8  00 00 53 e3                                      cmp r3, #0
0049accc  39 00 00 0a                                      beq #0x49adb8
0049acd0  00 10 a0 e3                                      mov r1, #0
0049acd4  6c 00 a0 e3                                      mov r0, #0x6c
0049acd8  54 50 94 e5                                      ldr r5, [r4, #0x54]
0049acdc  23 d6 f9 eb                                      bl #0x310570
0049ace0  05 10 a0 e1                                      mov r1, r5
0049ace4  01 20 a0 e3                                      mov r2, #1
0049ace8  44 50 8d e2                                      add r5, sp, #0x44
0049acec  00 70 a0 e1                                      mov r7, r0
0049acf0  5d 85 fd eb                                      bl #0x3fc26c
0049acf4  05 00 a0 e1                                      mov r0, r5
0049acf8  06 10 a0 e1                                      mov r1, r6
0049acfc  0a 8c fa eb                                      bl #0x33dd2c
0049ad00  05 00 a0 e1                                      mov r0, r5
0049ad04  92 94 fa eb                                      bl #0x33ff54
0049ad08  00 00 57 e3                                      cmp r7, #0
0049ad0c  00 00 50 13                                      cmpne r0, #0
0049ad10  00 50 a0 e1                                      mov r5, r0
0049ad14  d2 ff ff 0a                                      beq #0x49ac64
0049ad18  0c 90 8d e2                                      add sb, sp, #0xc
0049ad1c  09 00 a0 e1                                      mov r0, sb
0049ad20  36 91 fd eb                                      bl #0x3ff200
0049ad24  01 20 a0 e3                                      mov r2, #1
0049ad28  07 10 a0 e1                                      mov r1, r7
0049ad2c  02 30 a0 e1                                      mov r3, r2
0049ad30  09 00 a0 e1                                      mov r0, sb
0049ad34  f8 93 fd eb                                      bl #0x3ffd1c
0049ad38  00 10 a0 e1                                      mov r1, r0
0049ad3c  09 00 a0 e1                                      mov r0, sb
0049ad40  35 86 fd eb                                      bl #0x3fc61c
0049ad44  00 70 50 e2                                      subs r7, r0, #0
0049ad48  17 00 00 0a                                      beq #0x49adac
0049ad4c  64 80 94 e5                                      ldr r8, [r4, #0x64]
0049ad50  68 a0 94 e5                                      ldr sl, [r4, #0x68]
0049ad54  00 00 58 e3                                      cmp r8, #0
0049ad58  03 30 88 e2                                      add r3, r8, #3
0049ad5c  03 80 a0 b1                                      movlt r8, r3
0049ad60  48 81 a0 e1                                      asr r8, r8, #2
0049ad64  00 00 58 e3                                      cmp r8, #0
0049ad68  07 00 00 da                                      ble #0x49ad8c
0049ad6c  00 60 a0 e3                                      mov r6, #0
0049ad70  06 11 9a e7                                      ldr r1, [sl, r6, lsl #2]
0049ad74  07 00 a0 e1                                      mov r0, r7
0049ad78  01 60 86 e2                                      add r6, r6, #1
0049ad7c  00 20 e0 e3                                      mvn r2, #0
0049ad80  b6 83 fd eb                                      bl #0x3fbc60
0049ad84  08 00 56 e1                                      cmp r6, r8
0049ad88  f8 ff ff 1a                                      bne #0x49ad70
0049ad8c  07 00 a0 e1                                      mov r0, r7
0049ad90  00 10 a0 e3                                      mov r1, #0
0049ad94  c6 9c fd eb                                      bl #0x4020b4
0049ad98  09 00 a0 e1                                      mov r0, sb
0049ad9c  05 10 a0 e1                                      mov r1, r5
0049ada0  05 20 a0 e1                                      mov r2, r5
0049ada4  00 30 a0 e3                                      mov r3, #0
0049ada8  f1 46 fd eb                                      bl #0x3ec974
0049adac  09 00 a0 e1                                      mov r0, sb
0049adb0  aa 91 fd eb                                      bl #0x3ff460
0049adb4  aa ff ff ea                                      b #0x49ac64
0049adb8  54 00 94 e5                                      ldr r0, [r4, #0x54]
0049adbc  60 30 94 e5                                      ldr r3, [r4, #0x60]
0049adc0  01 c0 a0 e3                                      mov ip, #1
0049adc4  06 10 a0 e1                                      mov r1, r6
0049adc8  00 c0 8d e5                                      str ip, [sp]
0049adcc  73 47 fd eb                                      bl #0x3ecba0
0049add0  a3 ff ff ea                                      b #0x49ac64
; mapping-symbol data/literal pool
0049add4  58 42 42 00 54 9e 4f 00 f4 37 00 00              .byte 0x58, 0x42, 0x42, 0x00, 0x54, 0x9e, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0049ade0, declared_size=404, range_size=404, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback19HandleAttackMessageEPv
; demangled: MultiplayerCallback::HandleAttackMessage(void*)
; decoder-mode: arm
0049ade0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0049ade4  1c d0 4d e2                                      sub sp, sp, #0x1c
0049ade8  f3 c0 0d eb                                      bl #0x80b1bc
0049adec  f2 c0 0d eb                                      bl #0x80b1bc
0049adf0  70 11 9f e5                                      ldr r1, [pc, #0x170]
0049adf4  70 41 9f e5                                      ldr r4, [pc, #0x170]
0049adf8  01 10 8f e0                                      add r1, pc, r1
0049adfc  3f bf 0d eb                                      bl #0x80ab00
0049ae00  00 50 a0 e1                                      mov r5, r0
0049ae04  b4 d4 0d eb                                      bl #0x8100dc
0049ae08  00 20 a0 e3                                      mov r2, #0
0049ae0c  02 30 a0 e1                                      mov r3, r2
0049ae10  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0049ae14  03 d5 0d eb                                      bl #0x810228
0049ae18  00 30 90 e5                                      ldr r3, [r0]
0049ae1c  0f e0 a0 e1                                      mov lr, pc
0049ae20  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0049ae24  00 00 50 e3                                      cmp r0, #0
0049ae28  04 40 8f e0                                      add r4, pc, r4
0049ae2c  04 00 00 1a                                      bne #0x49ae44
0049ae30  01 30 a0 e3                                      mov r3, #1
0049ae34  3c 30 c5 e5                                      strb r3, [r5, #0x3c]
0049ae38  00 00 a0 e3                                      mov r0, #0
0049ae3c  1c d0 8d e2                                      add sp, sp, #0x1c
0049ae40  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0049ae44  a4 d4 0d eb                                      bl #0x8100dc
0049ae48  00 20 a0 e3                                      mov r2, #0
0049ae4c  02 30 a0 e1                                      mov r3, r2
0049ae50  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0049ae54  f3 d4 0d eb                                      bl #0x810228
0049ae58  10 31 9f e5                                      ldr r3, [pc, #0x110]
0049ae5c  78 11 90 e5                                      ldr r1, [r0, #0x178]
0049ae60  00 20 a0 e3                                      mov r2, #0
0049ae64  03 40 94 e7                                      ldr r4, [r4, r3]
0049ae68  40 00 94 e5                                      ldr r0, [r4, #0x40]
0049ae6c  4f 4c fb eb                                      bl #0x36dfb0
0049ae70  60 36 90 e5                                      ldr r3, [r0, #0x660]
0049ae74  00 00 53 e3                                      cmp r3, #0
0049ae78  ec ff ff 0a                                      beq #0x49ae30
0049ae7c  04 00 a0 e1                                      mov r0, r4
0049ae80  c3 11 fa eb                                      bl #0x31f594
0049ae84  00 00 50 e3                                      cmp r0, #0
0049ae88  e8 ff ff 0a                                      beq #0x49ae30
0049ae8c  30 31 90 e5                                      ldr r3, [r0, #0x130]
0049ae90  26 00 53 e3                                      cmp r3, #0x26
0049ae94  e5 ff ff 1a                                      bne #0x49ae30
0049ae98  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
0049ae9c  00 00 53 e3                                      cmp r3, #0
0049aea0  e2 ff ff 0a                                      beq #0x49ae30
0049aea4  04 00 a0 e1                                      mov r0, r4
0049aea8  50 60 95 e5                                      ldr r6, [r5, #0x50]
0049aeac  b8 11 fa eb                                      bl #0x31f594
0049aeb0  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0049aeb4  03 00 56 e1                                      cmp r6, r3
0049aeb8  dc ff ff 1a                                      bne #0x49ae30
0049aebc  0c 60 8d e2                                      add r6, sp, #0xc
0049aec0  38 10 94 e5                                      ldr r1, [r4, #0x38]
0049aec4  fc 27 d5 e1                                      ldrsh r2, [r5, #0x7c]
0049aec8  06 00 a0 e1                                      mov r0, r6
0049aecc  33 96 fa eb                                      bl #0x3407a0
0049aed0  06 00 a0 e1                                      mov r0, r6
0049aed4  02 94 fa eb                                      bl #0x33fee4
0049aed8  38 10 94 e5                                      ldr r1, [r4, #0x38]
0049aedc  00 60 a0 e1                                      mov r6, r0
0049aee0  fe 27 d5 e1                                      ldrsh r2, [r5, #0x7e]
0049aee4  0d 00 a0 e1                                      mov r0, sp
0049aee8  2c 96 fa eb                                      bl #0x3407a0
0049aeec  0d 00 a0 e1                                      mov r0, sp
0049aef0  17 94 fa eb                                      bl #0x33ff54
0049aef4  00 00 50 e3                                      cmp r0, #0
0049aef8  00 00 56 13                                      cmpne r6, #0
0049aefc  0d 70 a0 e1                                      mov r7, sp
0049af00  00 40 a0 e1                                      mov r4, r0
0049af04  c9 ff ff 0a                                      beq #0x49ae30
0049af08  80 30 d5 e5                                      ldrb r3, [r5, #0x80]
0049af0c  00 00 53 e3                                      cmp r3, #0
0049af10  0e 00 00 0a                                      beq #0x49af50
0049af14  06 10 a0 e1                                      mov r1, r6
0049af18  54 00 85 e2                                      add r0, r5, #0x54
0049af1c  04 20 a0 e1                                      mov r2, r4
0049af20  01 30 a0 e3                                      mov r3, #1
0049af24  62 58 fc eb                                      bl #0x3b10b4
0049af28  85 30 d4 e5                                      ldrb r3, [r4, #0x85]
0049af2c  00 00 53 e3                                      cmp r3, #0
0049af30  be ff ff 1a                                      bne #0x49ae30
0049af34  10 31 94 e5                                      ldr r3, [r4, #0x110]
0049af38  01 00 73 e3                                      cmn r3, #1
0049af3c  0c 30 95 05                                      ldreq r3, [r5, #0xc]
0049af40  10 31 84 05                                      streq r3, [r4, #0x110]
0049af44  00 30 a0 03                                      moveq r3, #0
0049af48  14 31 84 05                                      streq r3, [r4, #0x114]
0049af4c  b7 ff ff ea                                      b #0x49ae30
0049af50  06 10 a0 e1                                      mov r1, r6
0049af54  54 00 85 e2                                      add r0, r5, #0x54
0049af58  04 20 a0 e1                                      mov r2, r4
0049af5c  01 30 a0 e3                                      mov r3, #1
0049af60  94 54 fc eb                                      bl #0x3b01b8
0049af64  ef ff ff ea                                      b #0x49af28
; mapping-symbol data/literal pool
0049af68  f8 40 42 00 68 9c 4f 00 f4 37 00 00              .byte 0xf8, 0x40, 0x42, 0x00, 0x68, 0x9c, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0049af74, declared_size=224, range_size=224, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback23HandleQuestsSyncMessageEPv
; demangled: MultiplayerCallback::HandleQuestsSyncMessage(void*)
; decoder-mode: arm
0049af74  30 40 2d e9                                      push {r4, r5, lr}
0049af78  0c d0 4d e2                                      sub sp, sp, #0xc
0049af7c  8e c0 0d eb                                      bl #0x80b1bc
0049af80  8d c0 0d eb                                      bl #0x80b1bc
0049af84  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0049af88  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
0049af8c  01 10 8f e0                                      add r1, pc, r1
0049af90  da be 0d eb                                      bl #0x80ab00
0049af94  00 40 a0 e1                                      mov r4, r0
0049af98  fd 89 0d eb                                      bl #0x7fd794
0049af9c  84 89 0d eb                                      bl #0x7fd5b4
0049afa0  00 00 50 e3                                      cmp r0, #0
0049afa4  05 50 8f e0                                      add r5, pc, r5
0049afa8  0d 00 00 0a                                      beq #0x49afe4
0049afac  88 30 9f e5                                      ldr r3, [pc, #0x88]
0049afb0  03 30 95 e7                                      ldr r3, [r5, r3]
0049afb4  00 30 93 e5                                      ldr r3, [r3]
0049afb8  02 00 53 e3                                      cmp r3, #2
0049afbc  00 30 a0 03                                      moveq r3, #0
0049afc0  00 30 83 05                                      streq r3, [r3]
0049afc4  01 00 00 0a                                      beq #0x49afd0
0049afc8  01 00 53 e3                                      cmp r3, #1
0049afcc  0b 00 00 0a                                      beq #0x49b000
0049afd0  01 30 a0 e3                                      mov r3, #1
0049afd4  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049afd8  00 00 a0 e3                                      mov r0, #0
0049afdc  0c d0 8d e2                                      add sp, sp, #0xc
0049afe0  30 80 bd e8                                      pop {r4, r5, pc}
0049afe4  54 30 9f e5                                      ldr r3, [pc, #0x54]
0049afe8  58 10 94 e5                                      ldr r1, [r4, #0x58]
0049afec  50 20 94 e5                                      ldr r2, [r4, #0x50]
0049aff0  03 30 95 e7                                      ldr r3, [r5, r3]
0049aff4  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049aff8  26 4d fb eb                                      bl #0x36e498
0049affc  f3 ff ff ea                                      b #0x49afd0
0049b000  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0049b004  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0049b008  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0049b00c  00 00 95 e7                                      ldr r0, [r5, r0]
0049b010  38 30 9f e5                                      ldr r3, [pc, #0x38]
0049b014  32 c2 00 e3                                      movw ip, #0x232
0049b018  01 10 8f e0                                      add r1, pc, r1
0049b01c  02 20 8f e0                                      add r2, pc, r2
0049b020  03 30 8f e0                                      add r3, pc, r3
0049b024  a8 00 80 e2                                      add r0, r0, #0xa8
0049b028  00 c0 8d e5                                      str ip, [sp]
0049b02c  f4 cb f9 eb                                      bl #0x30e004
0049b030  e6 ff ff ea                                      b #0x49afd0
; mapping-symbol data/literal pool
0049b034  0c 3f 42 00 ec 9a 4f 00 c0 39 00 00 f4 37 00 00  .byte 0x0c, 0x3f, 0x42, 0x00, 0xec, 0x9a, 0x4f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0049b044  c0 19 00 00 c0 33 42 00 4c 35 42 00 68 a2 43 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x33, 0x42, 0x00, 0x4c, 0x35, 0x42, 0x00, 0x68, 0xa2, 0x43, 0x00

; FUNCTION 0x0049b054, declared_size=132, range_size=132, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback20HandleInitialMessageEPv
; demangled: MultiplayerCallback::HandleInitialMessage(void*)
; decoder-mode: arm
0049b054  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0049b058  14 d0 4d e2                                      sub sp, sp, #0x14
0049b05c  56 c0 0d eb                                      bl #0x80b1bc
0049b060  55 c0 0d eb                                      bl #0x80b1bc
0049b064  60 10 9f e5                                      ldr r1, [pc, #0x60]
0049b068  60 50 9f e5                                      ldr r5, [pc, #0x60]
0049b06c  01 10 8f e0                                      add r1, pc, r1
0049b070  a2 be 0d eb                                      bl #0x80ab00
0049b074  58 30 9f e5                                      ldr r3, [pc, #0x58]
0049b078  05 50 8f e0                                      add r5, pc, r5
0049b07c  50 80 90 e5                                      ldr r8, [r0, #0x50]
0049b080  03 a0 95 e7                                      ldr sl, [r5, r3]
0049b084  54 70 90 e5                                      ldr r7, [r0, #0x54]
0049b088  58 60 90 e5                                      ldr r6, [r0, #0x58]
0049b08c  00 40 a0 e1                                      mov r4, r0
0049b090  40 00 9a e5                                      ldr r0, [sl, #0x40]
0049b094  f6 4f fb eb                                      bl #0x36f074
0049b098  00 00 50 e3                                      cmp r0, #0
0049b09c  05 00 00 1a                                      bne #0x49b0b8
0049b0a0  40 00 9a e5                                      ldr r0, [sl, #0x40]
0049b0a4  04 10 8d e2                                      add r1, sp, #4
0049b0a8  04 80 8d e5                                      str r8, [sp, #4]
0049b0ac  08 70 8d e5                                      str r7, [sp, #8]
0049b0b0  0c 60 8d e5                                      str r6, [sp, #0xc]
0049b0b4  e6 4e fb eb                                      bl #0x36ec54
0049b0b8  01 30 a0 e3                                      mov r3, #1
0049b0bc  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049b0c0  00 00 a0 e3                                      mov r0, #0
0049b0c4  14 d0 8d e2                                      add sp, sp, #0x14
0049b0c8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0049b0cc  3c 3e 42 00 18 9a 4f 00 f4 37 00 00              .byte 0x3c, 0x3e, 0x42, 0x00, 0x18, 0x9a, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0049b0d8, declared_size=752, range_size=752, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback22HandleStartGameMessageEPv
; demangled: MultiplayerCallback::HandleStartGameMessage(void*)
; decoder-mode: arm
0049b0d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049b0dc  2c d0 4d e2                                      sub sp, sp, #0x2c
0049b0e0  35 c0 0d eb                                      bl #0x80b1bc
0049b0e4  34 c0 0d eb                                      bl #0x80b1bc
0049b0e8  b4 12 9f e5                                      ldr r1, [pc, #0x2b4]
0049b0ec  b4 42 9f e5                                      ldr r4, [pc, #0x2b4]
0049b0f0  b4 52 9f e5                                      ldr r5, [pc, #0x2b4]
0049b0f4  01 10 8f e0                                      add r1, pc, r1
0049b0f8  80 be 0d eb                                      bl #0x80ab00
0049b0fc  04 40 8f e0                                      add r4, pc, r4
0049b100  05 70 94 e7                                      ldr r7, [r4, r5]
0049b104  00 a0 a0 e1                                      mov sl, r0
0049b108  07 00 a0 e1                                      mov r0, r7
0049b10c  20 11 fa eb                                      bl #0x31f594
0049b110  00 60 50 e2                                      subs r6, r0, #0
0049b114  2b 00 00 0a                                      beq #0x49b1c8
0049b118  30 31 96 e5                                      ldr r3, [r6, #0x130]
0049b11c  26 00 53 e3                                      cmp r3, #0x26
0049b120  1c 00 00 0a                                      beq #0x49b198
0049b124  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
0049b128  50 20 9a e5                                      ldr r2, [sl, #0x50]
0049b12c  03 00 52 e1                                      cmp r2, r3
0049b130  01 30 a0 03                                      moveq r3, #1
0049b134  3c 30 ca 05                                      strbeq r3, [sl, #0x3c]
0049b138  10 00 00 0a                                      beq #0x49b180
0049b13c  00 10 a0 e3                                      mov r1, #0
0049b140  40 00 97 e5                                      ldr r0, [r7, #0x40]
0049b144  01 20 a0 e1                                      mov r2, r1
0049b148  ca 4c fb eb                                      bl #0x36e478
0049b14c  25 35 d0 e5                                      ldrb r3, [r0, #0x525]
0049b150  00 00 53 e3                                      cmp r3, #0
0049b154  09 00 00 0a                                      beq #0x49b180
0049b158  30 31 96 e5                                      ldr r3, [r6, #0x130]
0049b15c  24 00 53 e3                                      cmp r3, #0x24
0049b160  30 31 96 05                                      ldreq r3, [r6, #0x130]
0049b164  01 30 83 02                                      addeq r3, r3, #1
0049b168  30 31 86 05                                      streq r3, [r6, #0x130]
0049b16c  05 30 94 e7                                      ldr r3, [r4, r5]
0049b170  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049b174  00 30 a0 e3                                      mov r3, #0
0049b178  c9 36 c0 e5                                      strb r3, [r0, #0x6c9]
0049b17c  8c 77 fb eb                                      bl #0x378fb4
0049b180  30 31 96 e5                                      ldr r3, [r6, #0x130]
0049b184  26 00 53 e3                                      cmp r3, #0x26
0049b188  02 00 00 0a                                      beq #0x49b198
0049b18c  00 00 a0 e3                                      mov r0, #0
0049b190  2c d0 8d e2                                      add sp, sp, #0x2c
0049b194  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0049b198  98 71 d6 e5                                      ldrb r7, [r6, #0x198]
0049b19c  00 00 57 e3                                      cmp r7, #0
0049b1a0  02 00 00 1a                                      bne #0x49b1b0
0049b1a4  30 31 96 e5                                      ldr r3, [r6, #0x130]
0049b1a8  26 00 53 e3                                      cmp r3, #0x26
0049b1ac  66 00 00 0a                                      beq #0x49b34c
0049b1b0  30 31 96 e5                                      ldr r3, [r6, #0x130]
0049b1b4  26 00 53 e3                                      cmp r3, #0x26
0049b1b8  02 00 00 1a                                      bne #0x49b1c8
0049b1bc  06 00 a0 e1                                      mov r0, r6
0049b1c0  00 10 a0 e3                                      mov r1, #0
0049b1c4  9d 52 fd eb                                      bl #0x3efc40
0049b1c8  5c 30 9a e5                                      ldr r3, [sl, #0x5c]
0049b1cc  68 b0 9a e5                                      ldr fp, [sl, #0x68]
0049b1d0  50 60 9a e5                                      ldr r6, [sl, #0x50]
0049b1d4  54 70 9a e5                                      ldr r7, [sl, #0x54]
0049b1d8  58 80 da e5                                      ldrb r8, [sl, #0x58]
0049b1dc  59 90 da e5                                      ldrb sb, [sl, #0x59]
0049b1e0  24 30 8d e5                                      str r3, [sp, #0x24]
0049b1e4  60 c0 9a e5                                      ldr ip, [sl, #0x60]
0049b1e8  01 00 7b e3                                      cmn fp, #1
0049b1ec  20 c0 8d e5                                      str ip, [sp, #0x20]
0049b1f0  64 30 9a e5                                      ldr r3, [sl, #0x64]
0049b1f4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0049b1f8  0e 00 00 0a                                      beq #0x49b238
0049b1fc  62 97 0d eb                                      bl #0x800f8c
0049b200  00 30 90 e5                                      ldr r3, [r0]
0049b204  0f e0 a0 e1                                      mov lr, pc
0049b208  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0049b20c  01 00 70 e3                                      cmn r0, #1
0049b210  dd ff ff 0a                                      beq #0x49b18c
0049b214  01 30 a0 e3                                      mov r3, #1
0049b218  3c 30 ca e5                                      strb r3, [sl, #0x3c]
0049b21c  ae d3 0d eb                                      bl #0x8100dc
0049b220  00 10 a0 e3                                      mov r1, #0
0049b224  ec d4 0d eb                                      bl #0x8105dc
0049b228  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
0049b22c  03 00 5b e1                                      cmp fp, r3
0049b230  d5 ff ff 1a                                      bne #0x49b18c
0049b234  01 00 00 ea                                      b #0x49b240
0049b238  01 30 a0 e3                                      mov r3, #1
0049b23c  3c 30 ca e5                                      strb r3, [sl, #0x3c]
0049b240  00 00 56 e3                                      cmp r6, #0
0049b244  2a 00 00 ba                                      blt #0x49b2f4
0049b248  12 17 fa eb                                      bl #0x320e98
0049b24c  05 30 94 e7                                      ldr r3, [r4, r5]
0049b250  4b 2f a0 e3                                      mov r2, #0x12c
0049b254  14 20 80 e5                                      str r2, [r0, #0x14]
0049b258  00 10 a0 e3                                      mov r1, #0
0049b25c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049b260  01 20 a0 e1                                      mov r2, r1
0049b264  83 4c fb eb                                      bl #0x36e478
0049b268  64 a6 90 e5                                      ldr sl, [r0, #0x664]
0049b26c  09 17 fa eb                                      bl #0x320e98
0049b270  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049b274  04 00 53 e3                                      cmp r3, #4
0049b278  16 00 00 0a                                      beq #0x49b2d8
0049b27c  05 17 fa eb                                      bl #0x320e98
0049b280  00 30 a0 e3                                      mov r3, #0
0049b284  4c 30 c0 e5                                      strb r3, [r0, #0x4c]
0049b288  20 31 9f e5                                      ldr r3, [pc, #0x120]
0049b28c  48 10 a0 e3                                      mov r1, #0x48
0049b290  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0049b294  03 30 94 e7                                      ldr r3, [r4, r3]
0049b298  05 00 94 e7                                      ldr r0, [r4, r5]
0049b29c  07 20 a0 e1                                      mov r2, r7
0049b2a0  00 30 93 e5                                      ldr r3, [r3]
0049b2a4  91 36 26 e0                                      mla r6, r1, r6, r3
0049b2a8  0a 30 a0 e1                                      mov r3, sl
0049b2ac  20 10 96 e5                                      ldr r1, [r6, #0x20]
0049b2b0  08 c0 8d e5                                      str ip, [sp, #8]
0049b2b4  01 c0 a0 e3                                      mov ip, #1
0049b2b8  0c c0 8d e5                                      str ip, [sp, #0xc]
0049b2bc  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0049b2c0  00 03 8d e8                                      stm sp, {r8, sb}
0049b2c4  10 c0 8d e5                                      str ip, [sp, #0x10]
0049b2c8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0049b2cc  14 c0 8d e5                                      str ip, [sp, #0x14]
0049b2d0  bc 42 fa eb                                      bl #0x32bdc8
0049b2d4  ac ff ff ea                                      b #0x49b18c
0049b2d8  00 00 5a e3                                      cmp sl, #0
0049b2dc  02 00 00 ba                                      blt #0x49b2ec
0049b2e0  78 2b ff eb                                      bl #0x4660c8
0049b2e4  0a 00 50 e1                                      cmp r0, sl
0049b2e8  e3 ff ff ca                                      bgt #0x49b27c
0049b2ec  00 a0 a0 e3                                      mov sl, #0
0049b2f0  e1 ff ff ea                                      b #0x49b27c
0049b2f4  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0049b2f8  03 30 94 e7                                      ldr r3, [r4, r3]
0049b2fc  00 30 93 e5                                      ldr r3, [r3]
0049b300  02 00 53 e3                                      cmp r3, #2
0049b304  00 30 a0 03                                      moveq r3, #0
0049b308  00 30 83 05                                      streq r3, [r3]
0049b30c  cd ff ff 0a                                      beq #0x49b248
0049b310  01 00 53 e3                                      cmp r3, #1
0049b314  cb ff ff 1a                                      bne #0x49b248
0049b318  98 00 9f e5                                      ldr r0, [pc, #0x98]
0049b31c  98 10 9f e5                                      ldr r1, [pc, #0x98]
0049b320  98 20 9f e5                                      ldr r2, [pc, #0x98]
0049b324  00 00 94 e7                                      ldr r0, [r4, r0]
0049b328  94 30 9f e5                                      ldr r3, [pc, #0x94]
0049b32c  8d c1 00 e3                                      movw ip, #0x18d
0049b330  01 10 8f e0                                      add r1, pc, r1
0049b334  02 20 8f e0                                      add r2, pc, r2
0049b338  03 30 8f e0                                      add r3, pc, r3
0049b33c  a8 00 80 e2                                      add r0, r0, #0xa8
0049b340  00 c0 8d e5                                      str ip, [sp]
0049b344  2e cb f9 eb                                      bl #0x30e004
0049b348  be ff ff ea                                      b #0x49b248
0049b34c  05 80 94 e7                                      ldr r8, [r4, r5]
0049b350  01 10 a0 e3                                      mov r1, #1
0049b354  54 30 98 e5                                      ldr r3, [r8, #0x54]
0049b358  f4 30 93 e5                                      ldr r3, [r3, #0xf4]
0049b35c  03 00 a0 e1                                      mov r0, r3
0049b360  00 30 93 e5                                      ldr r3, [r3]
0049b364  0f e0 a0 e1                                      mov lr, pc
0049b368  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0049b36c  40 00 98 e5                                      ldr r0, [r8, #0x40]
0049b370  07 10 a0 e1                                      mov r1, r7
0049b374  01 20 a0 e3                                      mov r2, #1
0049b378  3e 4c fb eb                                      bl #0x36e478
0049b37c  60 36 90 e5                                      ldr r3, [r0, #0x660]
0049b380  00 00 53 e3                                      cmp r3, #0
0049b384  89 ff ff 0a                                      beq #0x49b1b0
0049b388  40 00 98 e5                                      ldr r0, [r8, #0x40]
0049b38c  07 10 a0 e1                                      mov r1, r7
0049b390  01 20 a0 e3                                      mov r2, #1
0049b394  37 4c fb eb                                      bl #0x36e478
0049b398  60 06 90 e5                                      ldr r0, [r0, #0x660]
0049b39c  84 3a fc eb                                      bl #0x3a9db4
0049b3a0  82 ff ff ea                                      b #0x49b1b0
; mapping-symbol data/literal pool
0049b3a4  2c 3e 42 00 94 99 4f 00 f4 37 00 00 74 08 00 00  .byte 0x2c, 0x3e, 0x42, 0x00, 0x94, 0x99, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00
0049b3b4  c0 39 00 00 c0 19 00 00 a8 30 42 00 ac 9f 43 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xa8, 0x30, 0x42, 0x00, 0xac, 0x9f, 0x43, 0x00
0049b3c4  50 9f 43 00                                      .byte 0x50, 0x9f, 0x43, 0x00

; FUNCTION 0x0049b3c8, declared_size=180, range_size=180, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback15roomLobbyUpdateEPv
; demangled: MultiplayerCallback::roomLobbyUpdate(void*)
; decoder-mode: arm
0049b3c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0049b3cc  08 d0 4d e2                                      sub sp, sp, #8
0049b3d0  ed 96 0d eb                                      bl #0x800f8c
0049b3d4  00 30 90 e5                                      ldr r3, [r0]
0049b3d8  0f e0 a0 e1                                      mov lr, pc
0049b3dc  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049b3e0  07 10 a0 e3                                      mov r1, #7
0049b3e4  70 f2 0d eb                                      bl #0x817dac
0049b3e8  00 40 a0 e1                                      mov r4, r0
0049b3ec  e8 88 0d eb                                      bl #0x7fd794
0049b3f0  05 30 d0 e5                                      ldrb r3, [r0, #5]
0049b3f4  00 00 53 e3                                      cmp r3, #0
0049b3f8  01 00 00 0a                                      beq #0x49b404
0049b3fc  00 00 54 e3                                      cmp r4, #0
0049b400  02 00 00 0a                                      beq #0x49b410
0049b404  64 00 a0 e3                                      mov r0, #0x64
0049b408  08 d0 8d e2                                      add sp, sp, #8
0049b40c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0049b410  a0 16 fa eb                                      bl #0x320e98
0049b414  28 40 d0 e5                                      ldrb r4, [r0, #0x28]
0049b418  00 00 54 e3                                      cmp r4, #0
0049b41c  f8 ff ff 1a                                      bne #0x49b404
0049b420  99 45 fe eb                                      bl #0x42ca8c
0049b424  48 10 9f e5                                      ldr r1, [pc, #0x48]
0049b428  01 10 8f e0                                      add r1, pc, r1
0049b42c  6f 47 fe eb                                      bl #0x42d1f0
0049b430  00 50 a0 e1                                      mov r5, r0
0049b434  48 00 80 e2                                      add r0, r0, #0x48
0049b438  41 ab fb eb                                      bl #0x386144
0049b43c  4c 60 95 e5                                      ldr r6, [r5, #0x4c]
0049b440  91 45 fe eb                                      bl #0x42ca8c
0049b444  08 10 85 e2                                      add r1, r5, #8
0049b448  68 47 fe eb                                      bl #0x42d1f0
0049b44c  00 00 50 e3                                      cmp r0, #0
0049b450  eb ff ff 0a                                      beq #0x49b404
0049b454  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0049b458  04 00 95 e5                                      ldr r0, [r5, #4]
0049b45c  06 10 a0 e1                                      mov r1, r6
0049b460  02 20 8f e0                                      add r2, pc, r2
0049b464  04 30 a0 e1                                      mov r3, r4
0049b468  00 40 8d e5                                      str r4, [sp]
0049b46c  66 42 0c eb                                      bl #0x7abe0c
0049b470  e3 ff ff ea                                      b #0x49b404
; mapping-symbol data/literal pool
0049b474  c8 9e 43 00 a8 9e 43 00                          .byte 0xc8, 0x9e, 0x43, 0x00, 0xa8, 0x9e, 0x43, 0x00

; FUNCTION 0x0049b47c, declared_size=260, range_size=260, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback11lobbyUpdateEPv
; demangled: MultiplayerCallback::lobbyUpdate(void*)
; decoder-mode: arm
0049b47c  70 40 2d e9                                      push {r4, r5, r6, lr}
0049b480  08 d0 4d e2                                      sub sp, sp, #8
0049b484  c0 96 0d eb                                      bl #0x800f8c
0049b488  00 30 90 e5                                      ldr r3, [r0]
0049b48c  0f e0 a0 e1                                      mov lr, pc
0049b490  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049b494  07 10 a0 e3                                      mov r1, #7
0049b498  43 f2 0d eb                                      bl #0x817dac
0049b49c  00 50 a0 e1                                      mov r5, r0
0049b4a0  bb 88 0d eb                                      bl #0x7fd794
0049b4a4  05 30 d0 e5                                      ldrb r3, [r0, #5]
0049b4a8  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
0049b4ac  00 00 53 e3                                      cmp r3, #0
0049b4b0  04 40 8f e0                                      add r4, pc, r4
0049b4b4  01 00 00 0a                                      beq #0x49b4c0
0049b4b8  00 00 55 e3                                      cmp r5, #0
0049b4bc  02 00 00 0a                                      beq #0x49b4cc
0049b4c0  c8 00 a0 e3                                      mov r0, #0xc8
0049b4c4  08 d0 8d e2                                      add sp, sp, #8
0049b4c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0049b4cc  71 16 fa eb                                      bl #0x320e98
0049b4d0  28 50 d0 e5                                      ldrb r5, [r0, #0x28]
0049b4d4  00 00 55 e3                                      cmp r5, #0
0049b4d8  f8 ff ff 1a                                      bne #0x49b4c0
0049b4dc  aa 96 0d eb                                      bl #0x800f8c
0049b4e0  00 30 90 e5                                      ldr r3, [r0]
0049b4e4  0f e0 a0 e1                                      mov lr, pc
0049b4e8  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0049b4ec  00 00 50 e3                                      cmp r0, #0
0049b4f0  f2 ff ff 0a                                      beq #0x49b4c0
0049b4f4  78 30 9f e5                                      ldr r3, [pc, #0x78]
0049b4f8  05 10 a0 e1                                      mov r1, r5
0049b4fc  05 20 a0 e1                                      mov r2, r5
0049b500  03 30 94 e7                                      ldr r3, [r4, r3]
0049b504  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049b508  da 4b fb eb                                      bl #0x36e478
0049b50c  e5 44 d0 e5                                      ldrb r4, [r0, #0x4e5]
0049b510  00 00 54 e3                                      cmp r4, #0
0049b514  e9 ff ff 1a                                      bne #0x49b4c0
0049b518  5b 45 fe eb                                      bl #0x42ca8c
0049b51c  54 10 9f e5                                      ldr r1, [pc, #0x54]
0049b520  01 10 8f e0                                      add r1, pc, r1
0049b524  31 47 fe eb                                      bl #0x42d1f0
0049b528  00 50 50 e2                                      subs r5, r0, #0
0049b52c  e3 ff ff 0a                                      beq #0x49b4c0
0049b530  48 00 85 e2                                      add r0, r5, #0x48
0049b534  02 ab fb eb                                      bl #0x386144
0049b538  4c 60 95 e5                                      ldr r6, [r5, #0x4c]
0049b53c  52 45 fe eb                                      bl #0x42ca8c
0049b540  08 10 85 e2                                      add r1, r5, #8
0049b544  29 47 fe eb                                      bl #0x42d1f0
0049b548  00 00 50 e3                                      cmp r0, #0
0049b54c  db ff ff 0a                                      beq #0x49b4c0
0049b550  24 20 9f e5                                      ldr r2, [pc, #0x24]
0049b554  04 00 95 e5                                      ldr r0, [r5, #4]
0049b558  06 10 a0 e1                                      mov r1, r6
0049b55c  02 20 8f e0                                      add r2, pc, r2
0049b560  04 30 a0 e1                                      mov r3, r4
0049b564  00 40 8d e5                                      str r4, [sp]
0049b568  27 42 0c eb                                      bl #0x7abe0c
0049b56c  d3 ff ff ea                                      b #0x49b4c0
; mapping-symbol data/literal pool
0049b570  e0 95 4f 00 f4 37 00 00 78 63 42 00 ac 01 43 00  .byte 0xe0, 0x95, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x78, 0x63, 0x42, 0x00, 0xac, 0x01, 0x43, 0x00

; FUNCTION 0x0049b580, declared_size=224, range_size=224, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback19searchRoomPushNotifEPv
; demangled: MultiplayerCallback::searchRoomPushNotif(void*)
; decoder-mode: arm
0049b580  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0049b584  4c d0 4d e2                                      sub sp, sp, #0x4c
0049b588  42 16 fa eb                                      bl #0x320e98
0049b58c  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0049b590  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
0049b594  00 00 53 e3                                      cmp r3, #0
0049b598  04 40 8f e0                                      add r4, pc, r4
0049b59c  66 00 a0 03                                      moveq r0, #0x66
0049b5a0  01 00 00 1a                                      bne #0x49b5ac
0049b5a4  4c d0 8d e2                                      add sp, sp, #0x4c
0049b5a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0049b5ac  39 16 fa eb                                      bl #0x320e98
0049b5b0  00 60 a0 e3                                      mov r6, #0
0049b5b4  24 50 8d e2                                      add r5, sp, #0x24
0049b5b8  25 60 c0 e5                                      strb r6, [r0, #0x25]
0049b5bc  05 00 a0 e1                                      mov r0, r5
0049b5c0  1d f7 0d eb                                      bl #0x81923c
0049b5c4  ba 3b 0a e3                                      movw r3, #0xabba
0049b5c8  01 10 a0 e3                                      mov r1, #1
0049b5cc  06 20 a0 e1                                      mov r2, r6
0049b5d0  05 00 a0 e1                                      mov r0, r5
0049b5d4  ed 3e 4f e3                                      movt r3, #0xfeed
0049b5d8  c6 f9 0d eb                                      bl #0x819cf8
0049b5dc  78 30 9f e5                                      ldr r3, [pc, #0x78]
0049b5e0  0d 70 a0 e1                                      mov r7, sp
0049b5e4  03 00 94 e7                                      ldr r0, [r4, r3]
0049b5e8  2e 10 fa eb                                      bl #0x31f6a8
0049b5ec  06 20 a0 e1                                      mov r2, r6
0049b5f0  00 30 a0 e1                                      mov r3, r0
0049b5f4  02 10 a0 e3                                      mov r1, #2
0049b5f8  05 00 a0 e1                                      mov r0, r5
0049b5fc  bd f9 0d eb                                      bl #0x819cf8
0049b600  61 96 0d eb                                      bl #0x800f8c
0049b604  05 10 a0 e1                                      mov r1, r5
0049b608  00 40 a0 e1                                      mov r4, r0
0049b60c  0d 00 a0 e1                                      mov r0, sp
0049b610  84 fb 0d eb                                      bl #0x81a428
0049b614  06 30 a0 e1                                      mov r3, r6
0049b618  0d 10 a0 e1                                      mov r1, sp
0049b61c  01 20 a0 e3                                      mov r2, #1
0049b620  04 00 a0 e1                                      mov r0, r4
0049b624  45 8d 0d eb                                      bl #0x7feb40
0049b628  0d 00 a0 e1                                      mov r0, sp
0049b62c  8c f9 0d eb                                      bl #0x819c64
0049b630  18 16 fa eb                                      bl #0x320e98
0049b634  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049b638  03 00 53 e3                                      cmp r3, #3
0049b63c  03 00 00 0a                                      beq #0x49b650
0049b640  05 00 a0 e1                                      mov r0, r5
0049b644  86 f9 0d eb                                      bl #0x819c64
0049b648  64 00 a0 e3                                      mov r0, #0x64
0049b64c  d4 ff ff ea                                      b #0x49b5a4
0049b650  41 fc ff eb                                      bl #0x49a75c
0049b654  f9 ff ff ea                                      b #0x49b640
; mapping-symbol data/literal pool
0049b658  f8 94 4f 00 f4 37 00 00                          .byte 0xf8, 0x94, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0049b660, declared_size=504, range_size=504, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback10searchRoomEPv
; demangled: MultiplayerCallback::searchRoom(void*)
; decoder-mode: arm
0049b660  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049b664  d8 41 9f e5                                      ldr r4, [pc, #0x1d8]
0049b668  d8 51 9f e5                                      ldr r5, [pc, #0x1d8]
0049b66c  7d df 4d e2                                      sub sp, sp, #0x1f4
0049b670  04 40 8f e0                                      add r4, pc, r4
0049b674  05 30 94 e7                                      ldr r3, [r4, r5]
0049b678  00 30 93 e5                                      ldr r3, [r3]
0049b67c  ec 31 8d e5                                      str r3, [sp, #0x1ec]
0049b680  04 16 fa eb                                      bl #0x320e98
0049b684  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0049b688  00 00 53 e3                                      cmp r3, #0
0049b68c  66 00 a0 03                                      moveq r0, #0x66
0049b690  06 00 00 1a                                      bne #0x49b6b0
0049b694  05 30 94 e7                                      ldr r3, [r4, r5]
0049b698  ec 21 9d e5                                      ldr r2, [sp, #0x1ec]
0049b69c  00 30 93 e5                                      ldr r3, [r3]
0049b6a0  03 00 52 e1                                      cmp r2, r3
0049b6a4  65 00 00 1a                                      bne #0x49b840
0049b6a8  7d df 8d e2                                      add sp, sp, #0x1f4
0049b6ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0049b6b0  f8 15 fa eb                                      bl #0x320e98
0049b6b4  90 71 9f e5                                      ldr r7, [pc, #0x190]
0049b6b8  00 10 a0 e3                                      mov r1, #0
0049b6bc  25 10 c0 e5                                      strb r1, [r0, #0x25]
0049b6c0  07 60 94 e7                                      ldr r6, [r4, r7]
0049b6c4  01 20 a0 e1                                      mov r2, r1
0049b6c8  54 a0 8d e2                                      add sl, sp, #0x54
0049b6cc  40 00 96 e5                                      ldr r0, [r6, #0x40]
0049b6d0  68 4b fb eb                                      bl #0x36e478
0049b6d4  64 16 90 e5                                      ldr r1, [r0, #0x664]
0049b6d8  11 20 a0 e3                                      mov r2, #0x11
0049b6dc  0a 00 a0 e1                                      mov r0, sl
0049b6e0  01 00 71 e3                                      cmn r1, #1
0049b6e4  4c 30 96 05                                      ldreq r3, [r6, #0x4c]
0049b6e8  00 80 a0 e3                                      mov r8, #0
0049b6ec  30 60 8d e2                                      add r6, sp, #0x30
0049b6f0  08 10 93 05                                      ldreq r1, [r3, #8]
0049b6f4  00 30 a0 e3                                      mov r3, #0
0049b6f8  ab 27 ff eb                                      bl #0x4655ac
0049b6fc  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0049b700  0a 00 a0 e1                                      mov r0, sl
0049b704  03 30 94 e7                                      ldr r3, [r4, r3]
0049b708  00 90 93 e5                                      ldr sb, [r3]
0049b70c  94 2b ff eb                                      bl #0x466564
0049b710  07 70 94 e7                                      ldr r7, [r4, r7]
0049b714  09 01 80 e0                                      add r0, r0, sb, lsl #2
0049b718  44 b0 90 e5                                      ldr fp, [r0, #0x44]
0049b71c  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049b720  16 45 fe eb                                      bl #0x42cb80
0049b724  00 90 a0 e1                                      mov sb, r0
0049b728  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049b72c  13 45 fe eb                                      bl #0x42cb80
0049b730  5d 31 0c eb                                      bl #0x7a7cac
0049b734  86 62 0b eb                                      bl #0x774154
0049b738  14 21 9f e5                                      ldr r2, [pc, #0x114]
0049b73c  00 10 a0 e1                                      mov r1, r0
0049b740  08 30 a0 e1                                      mov r3, r8
0049b744  02 20 8f e0                                      add r2, pc, r2
0049b748  09 00 a0 e1                                      mov r0, sb
0049b74c  00 80 8d e5                                      str r8, [sp]
0049b750  ad 41 0c eb                                      bl #0x7abe0c
0049b754  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
0049b758  06 00 a0 e1                                      mov r0, r6
0049b75c  0c 90 93 e5                                      ldr sb, [r3, #0xc]
0049b760  b5 f6 0d eb                                      bl #0x81923c
0049b764  cb 15 fa eb                                      bl #0x320e98
0049b768  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049b76c  02 00 53 e3                                      cmp r3, #2
0049b770  08 20 a0 01                                      moveq r2, r8
0049b774  09 30 a0 01                                      moveq r3, sb
0049b778  06 00 a0 01                                      moveq r0, r6
0049b77c  0f 00 00 0a                                      beq #0x49b7c0
0049b780  ba 3b 0a e3                                      movw r3, #0xabba
0049b784  ed 3e 4f e3                                      movt r3, #0xfeed
0049b788  01 10 a0 e3                                      mov r1, #1
0049b78c  08 20 a0 e1                                      mov r2, r8
0049b790  06 00 a0 e1                                      mov r0, r6
0049b794  57 f9 0d eb                                      bl #0x819cf8
0049b798  07 00 a0 e1                                      mov r0, r7
0049b79c  c1 0f fa eb                                      bl #0x31f6a8
0049b7a0  08 20 a0 e1                                      mov r2, r8
0049b7a4  00 30 a0 e1                                      mov r3, r0
0049b7a8  02 10 a0 e3                                      mov r1, #2
0049b7ac  06 00 a0 e1                                      mov r0, r6
0049b7b0  50 f9 0d eb                                      bl #0x819cf8
0049b7b4  06 00 a0 e1                                      mov r0, r6
0049b7b8  08 20 a0 e1                                      mov r2, r8
0049b7bc  09 30 a0 e1                                      mov r3, sb
0049b7c0  04 10 a0 e3                                      mov r1, #4
0049b7c4  4b f9 0d eb                                      bl #0x819cf8
0049b7c8  0b 30 a0 e1                                      mov r3, fp
0049b7cc  03 20 a0 e3                                      mov r2, #3
0049b7d0  05 10 a0 e3                                      mov r1, #5
0049b7d4  06 00 a0 e1                                      mov r0, r6
0049b7d8  46 f9 0d eb                                      bl #0x819cf8
0049b7dc  ea 95 0d eb                                      bl #0x800f8c
0049b7e0  0c 70 8d e2                                      add r7, sp, #0xc
0049b7e4  00 80 a0 e1                                      mov r8, r0
0049b7e8  06 10 a0 e1                                      mov r1, r6
0049b7ec  07 00 a0 e1                                      mov r0, r7
0049b7f0  0c fb 0d eb                                      bl #0x81a428
0049b7f4  00 30 a0 e3                                      mov r3, #0
0049b7f8  07 10 a0 e1                                      mov r1, r7
0049b7fc  01 20 a0 e3                                      mov r2, #1
0049b800  08 00 a0 e1                                      mov r0, r8
0049b804  cd 8c 0d eb                                      bl #0x7feb40
0049b808  07 00 a0 e1                                      mov r0, r7
0049b80c  14 f9 0d eb                                      bl #0x819c64
0049b810  a0 15 fa eb                                      bl #0x320e98
0049b814  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049b818  03 00 53 e3                                      cmp r3, #3
0049b81c  05 00 00 0a                                      beq #0x49b838
0049b820  06 00 a0 e1                                      mov r0, r6
0049b824  0e f9 0d eb                                      bl #0x819c64
0049b828  0a 00 a0 e1                                      mov r0, sl
0049b82c  d6 1f ff eb                                      bl #0x46378c
0049b830  64 00 a0 e3                                      mov r0, #0x64
0049b834  96 ff ff ea                                      b #0x49b694
0049b838  c7 fb ff eb                                      bl #0x49a75c
0049b83c  f7 ff ff ea                                      b #0x49b820
0049b840  b2 ca f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049b844  20 94 4f 00 ac 40 00 00 f4 37 00 00 9c 1a 00 00  .byte 0x20, 0x94, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x1a, 0x00, 0x00
0049b854  dc 9a 43 00                                      .byte 0xdc, 0x9a, 0x43, 0x00

; FUNCTION 0x0049b990, declared_size=964, range_size=964, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback20HandleMenuBackButtonEPv
; demangled: MultiplayerCallback::HandleMenuBackButton(void*)
; decoder-mode: arm
0049b990  70 40 2d e9                                      push {r4, r5, r6, lr}
0049b994  3f 15 fa eb                                      bl #0x320e98
0049b998  30 40 90 e5                                      ldr r4, [r0, #0x30]
0049b99c  3d 15 fa eb                                      bl #0x320e98
0049b9a0  38 40 80 e5                                      str r4, [r0, #0x38]
0049b9a4  3b 15 fa eb                                      bl #0x320e98
0049b9a8  7c 53 9f e5                                      ldr r5, [pc, #0x37c]
0049b9ac  00 00 54 e3                                      cmp r4, #0
0049b9b0  00 30 a0 e3                                      mov r3, #0
0049b9b4  30 30 80 e5                                      str r3, [r0, #0x30]
0049b9b8  05 50 8f e0                                      add r5, pc, r5
0049b9bc  32 00 00 0a                                      beq #0x49ba8c
0049b9c0  68 13 9f e5                                      ldr r1, [pc, #0x368]
0049b9c4  04 00 a0 e1                                      mov r0, r4
0049b9c8  01 10 8f e0                                      add r1, pc, r1
0049b9cc  52 ca f9 eb                                      bl #0x30e31c
0049b9d0  00 00 50 e3                                      cmp r0, #0
0049b9d4  05 00 00 0a                                      beq #0x49b9f0
0049b9d8  54 13 9f e5                                      ldr r1, [pc, #0x354]
0049b9dc  04 00 a0 e1                                      mov r0, r4
0049b9e0  01 10 8f e0                                      add r1, pc, r1
0049b9e4  4c ca f9 eb                                      bl #0x30e31c
0049b9e8  00 00 50 e3                                      cmp r0, #0
0049b9ec  28 00 00 1a                                      bne #0x49ba94
0049b9f0  28 15 fa eb                                      bl #0x320e98
0049b9f4  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049b9f8  01 00 53 e3                                      cmp r3, #1
0049b9fc  8d 00 00 0a                                      beq #0x49bc38
0049ba00  24 15 fa eb                                      bl #0x320e98
0049ba04  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049ba08  02 00 53 e3                                      cmp r3, #2
0049ba0c  33 00 00 0a                                      beq #0x49bae0
0049ba10  20 15 fa eb                                      bl #0x320e98
0049ba14  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049ba18  04 00 53 e3                                      cmp r3, #4
0049ba1c  2f 00 00 0a                                      beq #0x49bae0
0049ba20  1c 15 fa eb                                      bl #0x320e98
0049ba24  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049ba28  03 00 53 e3                                      cmp r3, #3
0049ba2c  91 00 00 0a                                      beq #0x49bc78
0049ba30  00 13 9f e5                                      ldr r1, [pc, #0x300]
0049ba34  04 00 a0 e1                                      mov r0, r4
0049ba38  01 10 8f e0                                      add r1, pc, r1
0049ba3c  36 ca f9 eb                                      bl #0x30e31c
0049ba40  00 00 50 e3                                      cmp r0, #0
0049ba44  56 00 00 0a                                      beq #0x49bba4
0049ba48  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
0049ba4c  04 00 a0 e1                                      mov r0, r4
0049ba50  01 10 8f e0                                      add r1, pc, r1
0049ba54  30 ca f9 eb                                      bl #0x30e31c
0049ba58  00 60 50 e2                                      subs r6, r0, #0
0049ba5c  41 00 00 0a                                      beq #0x49bb68
0049ba60  d8 12 9f e5                                      ldr r1, [pc, #0x2d8]
0049ba64  04 00 a0 e1                                      mov r0, r4
0049ba68  01 10 8f e0                                      add r1, pc, r1
0049ba6c  2a ca f9 eb                                      bl #0x30e31c
0049ba70  00 00 50 e3                                      cmp r0, #0
0049ba74  24 00 00 0a                                      beq #0x49bb0c
0049ba78  c4 42 9f e5                                      ldr r4, [pc, #0x2c4]
0049ba7c  04 30 95 e7                                      ldr r3, [r5, r4]
0049ba80  00 20 a0 e3                                      mov r2, #0
0049ba84  ee 20 c3 e5                                      strb r2, [r3, #0xee]
0049ba88  0e 21 c3 e5                                      strb r2, [r3, #0x10e]
0049ba8c  00 00 a0 e3                                      mov r0, #0
0049ba90  70 80 bd e8                                      pop {r4, r5, r6, pc}
0049ba94  ac 12 9f e5                                      ldr r1, [pc, #0x2ac]
0049ba98  04 00 a0 e1                                      mov r0, r4
0049ba9c  01 10 8f e0                                      add r1, pc, r1
0049baa0  1d ca f9 eb                                      bl #0x30e31c
0049baa4  00 00 50 e3                                      cmp r0, #0
0049baa8  d0 ff ff 0a                                      beq #0x49b9f0
0049baac  98 12 9f e5                                      ldr r1, [pc, #0x298]
0049bab0  04 00 a0 e1                                      mov r0, r4
0049bab4  01 10 8f e0                                      add r1, pc, r1
0049bab8  17 ca f9 eb                                      bl #0x30e31c
0049babc  00 00 50 e3                                      cmp r0, #0
0049bac0  ca ff ff 0a                                      beq #0x49b9f0
0049bac4  84 12 9f e5                                      ldr r1, [pc, #0x284]
0049bac8  04 00 a0 e1                                      mov r0, r4
0049bacc  01 10 8f e0                                      add r1, pc, r1
0049bad0  11 ca f9 eb                                      bl #0x30e31c
0049bad4  00 00 50 e3                                      cmp r0, #0
0049bad8  d4 ff ff 1a                                      bne #0x49ba30
0049badc  c3 ff ff ea                                      b #0x49b9f0
0049bae0  29 95 0d eb                                      bl #0x800f8c
0049bae4  00 00 a0 e3                                      mov r0, #0
0049bae8  74 8a 0d eb                                      bl #0x7fe4c0
0049baec  26 95 0d eb                                      bl #0x800f8c
0049baf0  00 30 90 e5                                      ldr r3, [r0]
0049baf4  0f e0 a0 e1                                      mov lr, pc
0049baf8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0049bafc  24 87 0d eb                                      bl #0x7fd794
0049bb00  00 10 a0 e3                                      mov r1, #0
0049bb04  80 86 0d eb                                      bl #0x7fd50c
0049bb08  c8 ff ff ea                                      b #0x49ba30
0049bb0c  e6 fa 0d eb                                      bl #0x81a6ac
0049bb10  11 60 d0 e5                                      ldrb r6, [r0, #0x11]
0049bb14  00 00 56 e3                                      cmp r6, #0
0049bb18  3d 00 00 0a                                      beq #0x49bc14
0049bb1c  20 42 9f e5                                      ldr r4, [pc, #0x220]
0049bb20  19 95 0d eb                                      bl #0x800f8c
0049bb24  00 30 90 e5                                      ldr r3, [r0]
0049bb28  0f e0 a0 e1                                      mov lr, pc
0049bb2c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0049bb30  00 00 50 e3                                      cmp r0, #0
0049bb34  4a 00 00 1a                                      bne #0x49bc64
0049bb38  d6 14 fa eb                                      bl #0x320e98
0049bb3c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049bb40  04 00 53 e3                                      cmp r3, #4
0049bb44  64 00 00 0a                                      beq #0x49bcdc
0049bb48  6e 40 fa eb                                      bl #0x32bd08
0049bb4c  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
0049bb50  00 00 53 e3                                      cmp r3, #0
0049bb54  c8 ff ff 0a                                      beq #0x49ba7c
0049bb58  04 00 95 e7                                      ldr r0, [r5, r4]
0049bb5c  00 10 a0 e3                                      mov r1, #0
0049bb60  a3 41 fa eb                                      bl #0x32c1f4
0049bb64  c4 ff ff ea                                      b #0x49ba7c
0049bb68  07 95 0d eb                                      bl #0x800f8c
0049bb6c  06 00 a0 e1                                      mov r0, r6
0049bb70  52 8a 0d eb                                      bl #0x7fe4c0
0049bb74  04 95 0d eb                                      bl #0x800f8c
0049bb78  00 30 90 e5                                      ldr r3, [r0]
0049bb7c  0f e0 a0 e1                                      mov lr, pc
0049bb80  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0049bb84  02 87 0d eb                                      bl #0x7fd794
0049bb88  06 10 a0 e1                                      mov r1, r6
0049bb8c  5e 86 0d eb                                      bl #0x7fd50c
0049bb90  c0 14 fa eb                                      bl #0x320e98
0049bb94  26 60 c0 e5                                      strb r6, [r0, #0x26]
0049bb98  be 14 fa eb                                      bl #0x320e98
0049bb9c  27 60 c0 e5                                      strb r6, [r0, #0x27]
0049bba0  ae ff ff ea                                      b #0x49ba60
0049bba4  bb 14 fa eb                                      bl #0x320e98
0049bba8  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049bbac  03 30 43 e2                                      sub r3, r3, #3
0049bbb0  01 00 53 e3                                      cmp r3, #1
0049bbb4  53 00 00 9a                                      bls #0x49bd08
0049bbb8  f3 94 0d eb                                      bl #0x800f8c
0049bbbc  47 8a 0d eb                                      bl #0x7fe4e0
0049bbc0  00 00 50 e3                                      cmp r0, #0
0049bbc4  38 00 00 0a                                      beq #0x49bcac
0049bbc8  ef 94 0d eb                                      bl #0x800f8c
0049bbcc  00 30 90 e5                                      ldr r3, [r0]
0049bbd0  0f e0 a0 e1                                      mov lr, pc
0049bbd4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0049bbd8  eb 94 0d eb                                      bl #0x800f8c
0049bbdc  00 30 90 e5                                      ldr r3, [r0]
0049bbe0  0f e0 a0 e1                                      mov lr, pc
0049bbe4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0049bbe8  aa 14 fa eb                                      bl #0x320e98
0049bbec  64 30 a0 e3                                      mov r3, #0x64
0049bbf0  14 30 80 e5                                      str r3, [r0, #0x14]
0049bbf4  a7 14 fa eb                                      bl #0x320e98
0049bbf8  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049bbfc  03 00 53 e3                                      cmp r3, #3
0049bc00  90 ff ff 1a                                      bne #0x49ba48
0049bc04  a3 14 fa eb                                      bl #0x320e98
0049bc08  00 30 a0 e3                                      mov r3, #0
0049bc0c  4d 30 c0 e5                                      strb r3, [r0, #0x4d]
0049bc10  8c ff ff ea                                      b #0x49ba48
0049bc14  a4 fa 0d eb                                      bl #0x81a6ac
0049bc18  24 41 9f e5                                      ldr r4, [pc, #0x124]
0049bc1c  00 30 90 e5                                      ldr r3, [r0]
0049bc20  0f e0 a0 e1                                      mov lr, pc
0049bc24  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0049bc28  06 10 a0 e1                                      mov r1, r6
0049bc2c  04 00 95 e7                                      ldr r0, [r5, r4]
0049bc30  6f 41 fa eb                                      bl #0x32c1f4
0049bc34  b9 ff ff ea                                      b #0x49bb20
0049bc38  d3 94 0d eb                                      bl #0x800f8c
0049bc3c  00 00 a0 e3                                      mov r0, #0
0049bc40  1e 8a 0d eb                                      bl #0x7fe4c0
0049bc44  d0 94 0d eb                                      bl #0x800f8c
0049bc48  00 30 90 e5                                      ldr r3, [r0]
0049bc4c  0f e0 a0 e1                                      mov lr, pc
0049bc50  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0049bc54  ce 86 0d eb                                      bl #0x7fd794
0049bc58  00 10 a0 e3                                      mov r1, #0
0049bc5c  2a 86 0d eb                                      bl #0x7fd50c
0049bc60  66 ff ff ea                                      b #0x49ba00
0049bc64  c8 94 0d eb                                      bl #0x800f8c
0049bc68  00 30 90 e5                                      ldr r3, [r0]
0049bc6c  0f e0 a0 e1                                      mov lr, pc
0049bc70  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0049bc74  af ff ff ea                                      b #0x49bb38
0049bc78  8b fa 0d eb                                      bl #0x81a6ac
0049bc7c  00 30 90 e5                                      ldr r3, [r0]
0049bc80  0f e0 a0 e1                                      mov lr, pc
0049bc84  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0049bc88  82 14 fa eb                                      bl #0x320e98
0049bc8c  26 60 d0 e5                                      ldrb r6, [r0, #0x26]
0049bc90  00 00 56 e3                                      cmp r6, #0
0049bc94  65 ff ff 1a                                      bne #0x49ba30
0049bc98  7e 14 fa eb                                      bl #0x320e98
0049bc9c  26 60 c0 e5                                      strb r6, [r0, #0x26]
0049bca0  7c 14 fa eb                                      bl #0x320e98
0049bca4  27 60 c0 e5                                      strb r6, [r0, #0x27]
0049bca8  60 ff ff ea                                      b #0x49ba30
0049bcac  b6 94 0d eb                                      bl #0x800f8c
0049bcb0  00 30 90 e5                                      ldr r3, [r0]
0049bcb4  0f e0 a0 e1                                      mov lr, pc
0049bcb8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0049bcbc  75 14 fa eb                                      bl #0x320e98
0049bcc0  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049bcc4  02 00 53 e3                                      cmp r3, #2
0049bcc8  13 00 00 0a                                      beq #0x49bd1c
0049bccc  71 14 fa eb                                      bl #0x320e98
0049bcd0  66 30 a0 e3                                      mov r3, #0x66
0049bcd4  14 30 80 e5                                      str r3, [r0, #0x14]
0049bcd8  5a ff ff ea                                      b #0x49ba48
0049bcdc  09 40 fa eb                                      bl #0x32bd08
0049bce0  05 30 d0 e5                                      ldrb r3, [r0, #5]
0049bce4  00 00 53 e3                                      cmp r3, #0
0049bce8  96 ff ff 0a                                      beq #0x49bb48
0049bcec  05 40 fa eb                                      bl #0x32bd08
0049bcf0  07 30 d0 e5                                      ldrb r3, [r0, #7]
0049bcf4  00 00 53 e3                                      cmp r3, #0
0049bcf8  92 ff ff 0a                                      beq #0x49bb48
0049bcfc  01 40 fa eb                                      bl #0x32bd08
0049bd00  2c f7 ff eb                                      bl #0x4999b8
0049bd04  8f ff ff ea                                      b #0x49bb48
0049bd08  62 14 fa eb                                      bl #0x320e98
0049bd0c  28 30 d0 e5                                      ldrb r3, [r0, #0x28]
0049bd10  00 00 53 e3                                      cmp r3, #0
0049bd14  4b ff ff 1a                                      bne #0x49ba48
0049bd18  a6 ff ff ea                                      b #0x49bbb8
0049bd1c  5d 14 fa eb                                      bl #0x320e98
0049bd20  64 30 a0 e3                                      mov r3, #0x64
0049bd24  14 30 80 e5                                      str r3, [r0, #0x14]
0049bd28  46 ff ff ea                                      b #0x49ba48
; mapping-symbol data/literal pool
0049bd2c  d8 90 4f 00 50 99 43 00 58 99 43 00 60 5e 42 00  .byte 0xd8, 0x90, 0x4f, 0x00, 0x50, 0x99, 0x43, 0x00, 0x58, 0x99, 0x43, 0x00, 0x60, 0x5e, 0x42, 0x00
0049bd3c  70 fd 42 00 80 d7 42 00 f4 37 00 00 b4 98 43 00  .byte 0x70, 0xfd, 0x42, 0x00, 0x80, 0xd7, 0x42, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb4, 0x98, 0x43, 0x00
0049bd4c  0c fd 42 00 9c 98 43 00                          .byte 0x0c, 0xfd, 0x42, 0x00, 0x9c, 0x98, 0x43, 0x00

; FUNCTION 0x0049c5e4, declared_size=464, range_size=464, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback15HandleScriptCmdEPv
; demangled: MultiplayerCallback::HandleScriptCmd(void*)
; decoder-mode: arm
0049c5e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0049c5e8  f3 ba 0d eb                                      bl #0x80b1bc
0049c5ec  f2 ba 0d eb                                      bl #0x80b1bc
0049c5f0  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
0049c5f4  a0 61 9f e5                                      ldr r6, [pc, #0x1a0]
0049c5f8  01 10 8f e0                                      add r1, pc, r1
0049c5fc  3f b9 0d eb                                      bl #0x80ab00
0049c600  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0049c604  00 40 a0 e1                                      mov r4, r0
0049c608  5f 92 0d eb                                      bl #0x800f8c
0049c60c  00 30 90 e5                                      ldr r3, [r0]
0049c610  0f e0 a0 e1                                      mov lr, pc
0049c614  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0049c618  05 00 50 e1                                      cmp r0, r5
0049c61c  06 60 8f e0                                      add r6, pc, r6
0049c620  26 00 00 0a                                      beq #0x49c6c0
0049c624  50 30 84 e2                                      add r3, r4, #0x50
0049c628  a8 00 93 e8                                      ldm r3, {r3, r5, r7}
0049c62c  04 00 53 e3                                      cmp r3, #4
0049c630  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0049c634  21 00 00 ea                                      b #0x49c6c0
0049c638  3a 00 00 ea                                      b #0x49c728
0049c63c  43 00 00 ea                                      b #0x49c750
0049c640  4b 00 00 ea                                      b #0x49c774
0049c644  00 00 00 ea                                      b #0x49c64c
0049c648  20 00 00 ea                                      b #0x49c6d0
0049c64c  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0049c650  03 30 96 e7                                      ldr r3, [r6, r3]
0049c654  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049c658  85 4a fb eb                                      bl #0x36f074
0049c65c  00 00 50 e3                                      cmp r0, #0
0049c660  16 00 00 1a                                      bne #0x49c6c0
0049c664  38 51 9f e5                                      ldr r5, [pc, #0x138]
0049c668  05 00 96 e7                                      ldr r0, [r6, r5]
0049c66c  14 20 90 e5                                      ldr r2, [r0, #0x14]
0049c670  04 30 90 e5                                      ldr r3, [r0, #4]
0049c674  03 00 52 e1                                      cmp r2, r3
0049c678  10 00 00 0a                                      beq #0x49c6c0
0049c67c  04 00 80 e2                                      add r0, r0, #4
0049c680  ee 9d fb eb                                      bl #0x383e40
0049c684  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0049c688  03 30 96 e7                                      ldr r3, [r6, r3]
0049c68c  00 00 93 e5                                      ldr r0, [r3]
0049c690  00 00 50 e3                                      cmp r0, #0
0049c694  00 00 00 0a                                      beq #0x49c69c
0049c698  6e fc ff eb                                      bl #0x49b858
0049c69c  05 30 96 e7                                      ldr r3, [r6, r5]
0049c6a0  04 20 93 e5                                      ldr r2, [r3, #4]
0049c6a4  14 30 93 e5                                      ldr r3, [r3, #0x14]
0049c6a8  02 00 53 e1                                      cmp r3, r2
0049c6ac  03 00 00 0a                                      beq #0x49c6c0
0049c6b0  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0049c6b4  03 30 96 e7                                      ldr r3, [r6, r3]
0049c6b8  00 00 93 e5                                      ldr r0, [r3]
0049c6bc  65 fc ff eb                                      bl #0x49b858
0049c6c0  01 30 a0 e3                                      mov r3, #1
0049c6c4  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049c6c8  00 00 a0 e3                                      mov r0, #0
0049c6cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0049c6d0  2f 84 0d eb                                      bl #0x7fd794
0049c6d4  b6 83 0d eb                                      bl #0x7fd5b4
0049c6d8  00 00 50 e3                                      cmp r0, #0
0049c6dc  f7 ff ff 1a                                      bne #0x49c6c0
0049c6e0  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0049c6e4  03 30 96 e7                                      ldr r3, [r6, r3]
0049c6e8  40 30 93 e5                                      ldr r3, [r3, #0x40]
0049c6ec  1a 37 d3 e5                                      ldrb r3, [r3, #0x71a]
0049c6f0  00 00 53 e3                                      cmp r3, #0
0049c6f4  f1 ff ff 0a                                      beq #0x49c6c0
0049c6f8  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0049c6fc  07 20 a0 e1                                      mov r2, r7
0049c700  05 10 a0 e1                                      mov r1, r5
0049c704  03 60 96 e7                                      ldr r6, [r6, r3]
0049c708  01 30 a0 e3                                      mov r3, #1
0049c70c  06 00 a0 e1                                      mov r0, r6
0049c710  aa 0f ff eb                                      bl #0x4605c0
0049c714  06 00 a0 e1                                      mov r0, r6
0049c718  05 10 a0 e1                                      mov r1, r5
0049c71c  01 20 a0 e3                                      mov r2, #1
0049c720  66 0f ff eb                                      bl #0x4604c0
0049c724  e5 ff ff ea                                      b #0x49c6c0
0049c728  80 30 9f e5                                      ldr r3, [pc, #0x80]
0049c72c  05 10 a0 e1                                      mov r1, r5
0049c730  07 20 a0 e1                                      mov r2, r7
0049c734  03 00 96 e7                                      ldr r0, [r6, r3]
0049c738  01 30 a0 e3                                      mov r3, #1
0049c73c  9f 0f ff eb                                      bl #0x4605c0
0049c740  01 30 a0 e3                                      mov r3, #1
0049c744  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049c748  00 00 a0 e3                                      mov r0, #0
0049c74c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0049c750  58 30 9f e5                                      ldr r3, [pc, #0x58]
0049c754  05 10 a0 e1                                      mov r1, r5
0049c758  01 20 a0 e3                                      mov r2, #1
0049c75c  03 00 96 e7                                      ldr r0, [r6, r3]
0049c760  56 0f ff eb                                      bl #0x4604c0
0049c764  01 30 a0 e3                                      mov r3, #1
0049c768  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049c76c  00 00 a0 e3                                      mov r0, #0
0049c770  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0049c774  34 30 9f e5                                      ldr r3, [pc, #0x34]
0049c778  05 10 a0 e1                                      mov r1, r5
0049c77c  01 20 a0 e3                                      mov r2, #1
0049c780  03 00 96 e7                                      ldr r0, [r6, r3]
0049c784  0b e5 fe eb                                      bl #0x455bb8
0049c788  01 30 a0 e3                                      mov r3, #1
0049c78c  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
0049c790  00 00 a0 e3                                      mov r0, #0
0049c794  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0049c798  c8 28 42 00 74 84 4f 00 f4 37 00 00 74 1e 00 00  .byte 0xc8, 0x28, 0x42, 0x00, 0x74, 0x84, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0x1e, 0x00, 0x00
0049c7a8  5c 1e 00 00 48 38 00 00 20 1a 00 00              .byte 0x5c, 0x1e, 0x00, 0x00, 0x48, 0x38, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x0049c7b4, declared_size=268, range_size=268, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback8joinRoomEPv
; demangled: MultiplayerCallback::joinRoom(void*)
; decoder-mode: arm
0049c7b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0049c7b8  18 d0 4d e2                                      sub sp, sp, #0x18
0049c7bc  b5 11 fa eb                                      bl #0x320e98
0049c7c0  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0049c7c4  00 00 53 e3                                      cmp r3, #0
0049c7c8  67 00 a0 03                                      moveq r0, #0x67
0049c7cc  01 00 00 1a                                      bne #0x49c7d8
0049c7d0  18 d0 8d e2                                      add sp, sp, #0x18
0049c7d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0049c7d8  ae 11 fa eb                                      bl #0x320e98
0049c7dc  30 50 90 e5                                      ldr r5, [r0, #0x30]
0049c7e0  e9 91 0d eb                                      bl #0x800f8c
0049c7e4  00 30 90 e5                                      ldr r3, [r0]
0049c7e8  0f e0 a0 e1                                      mov lr, pc
0049c7ec  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0049c7f0  00 00 50 e3                                      cmp r0, #0
0049c7f4  16 00 00 1a                                      bne #0x49c854
0049c7f8  00 30 a0 e3                                      mov r3, #0
0049c7fc  14 30 8d e5                                      str r3, [sp, #0x14]
0049c800  0c 30 8d e5                                      str r3, [sp, #0xc]
0049c804  10 30 8d e5                                      str r3, [sp, #0x10]
0049c808  a2 11 fa eb                                      bl #0x320e98
0049c80c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049c810  02 00 53 e3                                      cmp r3, #2
0049c814  1a 00 00 0a                                      beq #0x49c884
0049c818  9e 11 fa eb                                      bl #0x320e98
0049c81c  0c 40 8d e2                                      add r4, sp, #0xc
0049c820  50 10 80 e2                                      add r1, r0, #0x50
0049c824  04 00 a0 e1                                      mov r0, r4
0049c828  f3 8c fe eb                                      bl #0x43fbfc
0049c82c  d6 91 0d eb                                      bl #0x800f8c
0049c830  f2 3f a0 e3                                      mov r3, #0x3c8
0049c834  93 05 05 e0                                      mul r5, r3, r5
0049c838  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0049c83c  d5 20 83 e1                                      ldrd r2, r3, [r3, r5]
0049c840  36 8a 0d eb                                      bl #0x7ff120
0049c844  04 00 a0 e1                                      mov r0, r4
0049c848  41 8c fe eb                                      bl #0x43f954
0049c84c  c8 00 a0 e3                                      mov r0, #0xc8
0049c850  de ff ff ea                                      b #0x49c7d0
0049c854  cc 91 0d eb                                      bl #0x800f8c
0049c858  00 30 90 e5                                      ldr r3, [r0]
0049c85c  0f e0 a0 e1                                      mov lr, pc
0049c860  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0049c864  00 30 a0 e3                                      mov r3, #0
0049c868  14 30 8d e5                                      str r3, [sp, #0x14]
0049c86c  0c 30 8d e5                                      str r3, [sp, #0xc]
0049c870  10 30 8d e5                                      str r3, [sp, #0x10]
0049c874  87 11 fa eb                                      bl #0x320e98
0049c878  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049c87c  02 00 53 e3                                      cmp r3, #2
0049c880  e4 ff ff 1a                                      bne #0x49c818
0049c884  c0 91 0d eb                                      bl #0x800f8c
0049c888  00 30 a0 e1                                      mov r3, r0
0049c88c  00 10 a0 e1                                      mov r1, r0
0049c890  00 30 93 e5                                      ldr r3, [r3]
0049c894  0d 00 a0 e1                                      mov r0, sp
0049c898  0c 40 8d e2                                      add r4, sp, #0xc
0049c89c  0f e0 a0 e1                                      mov lr, pc
0049c8a0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0049c8a4  04 00 a0 e1                                      mov r0, r4
0049c8a8  0d 10 a0 e1                                      mov r1, sp
0049c8ac  d2 8c fe eb                                      bl #0x43fbfc
0049c8b0  0d 00 a0 e1                                      mov r0, sp
0049c8b4  0d 60 a0 e1                                      mov r6, sp
0049c8b8  25 8c fe eb                                      bl #0x43f954
0049c8bc  da ff ff ea                                      b #0x49c82c

; FUNCTION 0x0049c8c0, declared_size=1236, range_size=1236, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback10createRoomEPv
; demangled: MultiplayerCallback::createRoom(void*)
; decoder-mode: arm
0049c8c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049c8c4  a4 44 9f e5                                      ldr r4, [pc, #0x4a4]
0049c8c8  a4 64 9f e5                                      ldr r6, [pc, #0x4a4]
0049c8cc  9a de 4d e2                                      sub sp, sp, #0x9a0
0049c8d0  04 40 8f e0                                      add r4, pc, r4
0049c8d4  06 30 94 e7                                      ldr r3, [r4, r6]
0049c8d8  04 d0 4d e2                                      sub sp, sp, #4
0049c8dc  00 30 93 e5                                      ldr r3, [r3]
0049c8e0  9c 39 8d e5                                      str r3, [sp, #0x99c]
0049c8e4  6b 11 fa eb                                      bl #0x320e98
0049c8e8  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0049c8ec  00 00 53 e3                                      cmp r3, #0
0049c8f0  65 00 a0 03                                      moveq r0, #0x65
0049c8f4  07 00 00 1a                                      bne #0x49c918
0049c8f8  06 30 94 e7                                      ldr r3, [r4, r6]
0049c8fc  9c 29 9d e5                                      ldr r2, [sp, #0x99c]
0049c900  00 30 93 e5                                      ldr r3, [r3]
0049c904  03 00 52 e1                                      cmp r2, r3
0049c908  17 01 00 1a                                      bne #0x49cd6c
0049c90c  69 df 8d e2                                      add sp, sp, #0x1a4
0049c910  02 db 8d e2                                      add sp, sp, #0x800
0049c914  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0049c918  58 14 9f e5                                      ldr r1, [pc, #0x458]
0049c91c  0f 5d 8d e2                                      add r5, sp, #0x3c0
0049c920  08 50 45 e2                                      sub r5, r5, #8
0049c924  05 00 a0 e1                                      mov r0, r5
0049c928  10 10 8d e5                                      str r1, [sp, #0x10]
0049c92c  14 f2 0d eb                                      bl #0x819184
0049c930  10 20 9d e5                                      ldr r2, [sp, #0x10]
0049c934  00 10 a0 e3                                      mov r1, #0
0049c938  26 9d 8d e2                                      add sb, sp, #0x980
0049c93c  02 70 94 e7                                      ldr r7, [r4, r2]
0049c940  01 20 a0 e1                                      mov r2, r1
0049c944  04 90 89 e2                                      add sb, sb, #4
0049c948  40 00 97 e5                                      ldr r0, [r7, #0x40]
0049c94c  c9 46 fb eb                                      bl #0x36e478
0049c950  64 16 90 e5                                      ldr r1, [r0, #0x664]
0049c954  01 20 a0 e3                                      mov r2, #1
0049c958  01 00 71 e3                                      cmn r1, #1
0049c95c  4c 30 97 05                                      ldreq r3, [r7, #0x4c]
0049c960  75 7e 8d e2                                      add r7, sp, #0x750
0049c964  0c 70 87 e2                                      add r7, r7, #0xc
0049c968  08 10 93 05                                      ldreq r1, [r3, #8]
0049c96c  07 00 a0 e1                                      mov r0, r7
0049c970  00 30 a0 e3                                      mov r3, #0
0049c974  0c 23 ff eb                                      bl #0x4655ac
0049c978  fc 13 9f e5                                      ldr r1, [pc, #0x3fc]
0049c97c  75 2e 8d e2                                      add r2, sp, #0x750
0049c980  08 20 82 e2                                      add r2, r2, #8
0049c984  01 10 8f e0                                      add r1, pc, r1
0049c988  09 00 a0 e1                                      mov r0, sb
0049c98c  d6 dd f9 eb                                      bl #0x3140ec
0049c990  10 30 9d e5                                      ldr r3, [sp, #0x10]
0049c994  03 80 94 e7                                      ldr r8, [r4, r3]
0049c998  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049c99c  77 40 fe eb                                      bl #0x42cb80
0049c9a0  00 a0 a0 e1                                      mov sl, r0
0049c9a4  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049c9a8  74 40 fe eb                                      bl #0x42cb80
0049c9ac  be 2c 0c eb                                      bl #0x7a7cac
0049c9b0  e7 5d 0b eb                                      bl #0x774154
0049c9b4  c4 23 9f e5                                      ldr r2, [pc, #0x3c4]
0049c9b8  00 c0 a0 e3                                      mov ip, #0
0049c9bc  00 10 a0 e1                                      mov r1, r0
0049c9c0  0c 30 a0 e1                                      mov r3, ip
0049c9c4  0a 00 a0 e1                                      mov r0, sl
0049c9c8  02 20 8f e0                                      add r2, pc, r2
0049c9cc  00 c0 8d e5                                      str ip, [sp]
0049c9d0  0d 3d 0c eb                                      bl #0x7abe0c
0049c9d4  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
0049c9d8  a4 83 9f e5                                      ldr r8, [pc, #0x3a4]
0049c9dc  0c b0 93 e5                                      ldr fp, [r3, #0xc]
0049c9e0  98 37 9d e5                                      ldr r3, [sp, #0x798]
0049c9e4  03 00 5b e1                                      cmp fp, r3
0049c9e8  08 30 94 d7                                      ldrle r3, [r4, r8]
0049c9ec  00 b0 83 d5                                      strle fp, [r3]
0049c9f0  28 11 fa eb                                      bl #0x320e98
0049c9f4  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049c9f8  03 00 53 e3                                      cmp r3, #3
0049c9fc  88 a7 9d 15                                      ldrne sl, [sp, #0x788]
0049ca00  ce 00 00 0a                                      beq #0x49cd40
0049ca04  0a 00 a0 e1                                      mov r0, sl
0049ca08  11 c5 f9 eb                                      bl #0x30de54
0049ca0c  0a 10 a0 e1                                      mov r1, sl
0049ca10  00 20 8a e0                                      add r2, sl, r0
0049ca14  09 00 a0 e1                                      mov r0, sb
0049ca18  f0 cf f9 eb                                      bl #0x3109e0
0049ca1c  08 30 94 e7                                      ldr r3, [r4, r8]
0049ca20  9a ce 8d e2                                      add ip, sp, #0x9a0
0049ca24  00 30 93 e5                                      ldr r3, [r3]
0049ca28  03 21 8c e0                                      add r2, ip, r3, lsl #2
0049ca2c  e8 a1 12 e5                                      ldr sl, [r2, #-0x1e8]
0049ca30  f4 31 12 e5                                      ldr r3, [r2, #-0x1f4]
0049ca34  00 00 5a e3                                      cmp sl, #0
0049ca38  1c 30 8d e5                                      str r3, [sp, #0x1c]
0049ca3c  93 00 00 1a                                      bne #0x49cc90
0049ca40  a1 b9 05 eb                                      bl #0x60b0cc
0049ca44  08 30 94 e7                                      ldr r3, [r4, r8]
0049ca48  9a 2e 8d e2                                      add r2, sp, #0x9a0
0049ca4c  00 a0 a0 e1                                      mov sl, r0
0049ca50  00 30 93 e5                                      ldr r3, [r3]
0049ca54  03 31 82 e0                                      add r3, r2, r3, lsl #2
0049ca58  e8 01 03 e5                                      str r0, [r3, #-0x1e8]
0049ca5c  24 13 9f e5                                      ldr r1, [pc, #0x324]
0049ca60  0a 20 a0 e1                                      mov r2, sl
0049ca64  8f ae 8d e2                                      add sl, sp, #0x8f0
0049ca68  04 a0 8a e2                                      add sl, sl, #4
0049ca6c  95 ce 8d e2                                      add ip, sp, #0x950
0049ca70  04 c0 8c e2                                      add ip, ip, #4
0049ca74  02 30 a0 e1                                      mov r3, r2
0049ca78  01 10 8f e0                                      add r1, pc, r1
0049ca7c  0a 00 a0 e1                                      mov r0, sl
0049ca80  0c c0 8d e5                                      str ip, [sp, #0xc]
0049ca84  16 c8 f9 eb                                      bl #0x30eae4
0049ca88  75 2e 8d e2                                      add r2, sp, #0x750
0049ca8c  0a 10 a0 e1                                      mov r1, sl
0049ca90  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0049ca94  94 dd f9 eb                                      bl #0x3140ec
0049ca98  07 00 a0 e1                                      mov r0, r7
0049ca9c  10 10 a0 e3                                      mov r1, #0x10
0049caa0  62 22 ff eb                                      bl #0x465430
0049caa4  08 80 94 e7                                      ldr r8, [r4, r8]
0049caa8  07 00 a0 e1                                      mov r0, r7
0049caac  93 ae 8d e2                                      add sl, sp, #0x930
0049cab0  00 10 98 e5                                      ldr r1, [r8]
0049cab4  cc 29 ff eb                                      bl #0x4671ec
0049cab8  18 00 8d e5                                      str r0, [sp, #0x18]
0049cabc  07 00 a0 e1                                      mov r0, r7
0049cac0  00 80 98 e5                                      ldr r8, [r8]
0049cac4  a6 26 ff eb                                      bl #0x466564
0049cac8  04 a0 8a e2                                      add sl, sl, #4
0049cacc  08 30 8a e2                                      add r3, sl, #8
0049cad0  08 01 80 e0                                      add r0, r0, r8, lsl #2
0049cad4  00 80 a0 e3                                      mov r8, #0
0049cad8  44 00 90 e5                                      ldr r0, [r0, #0x44]
0049cadc  04 80 83 e4                                      str r8, [r3], #4
0049cae0  04 80 83 e4                                      str r8, [r3], #4
0049cae4  04 80 83 e4                                      str r8, [r3], #4
0049cae8  04 80 83 e4                                      str r8, [r3], #4
0049caec  04 80 83 e4                                      str r8, [r3], #4
0049caf0  00 80 83 e5                                      str r8, [r3]
0049caf4  14 00 8d e5                                      str r0, [sp, #0x14]
0049caf8  98 19 9d e5                                      ldr r1, [sp, #0x998]
0049cafc  0a 00 a0 e1                                      mov r0, sl
0049cb00  34 89 8d e5                                      str r8, [sp, #0x934]
0049cb04  38 89 8d e5                                      str r8, [sp, #0x938]
0049cb08  84 c6 f9 eb                                      bl #0x30e520
0049cb0c  e1 10 fa eb                                      bl #0x320e98
0049cb10  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049cb14  02 00 53 e3                                      cmp r3, #2
0049cb18  76 00 00 0a                                      beq #0x49ccf8
0049cb1c  ba 2b 0a e3                                      movw r2, #0xabba
0049cb20  ed 2e 4f e3                                      movt r2, #0xfeed
0049cb24  01 10 a0 e3                                      mov r1, #1
0049cb28  05 00 a0 e1                                      mov r0, r5
0049cb2c  84 ee 0d eb                                      bl #0x818544
0049cb30  10 10 9d e5                                      ldr r1, [sp, #0x10]
0049cb34  01 00 94 e7                                      ldr r0, [r4, r1]
0049cb38  da 0a fa eb                                      bl #0x31f6a8
0049cb3c  02 10 a0 e3                                      mov r1, #2
0049cb40  00 20 a0 e1                                      mov r2, r0
0049cb44  05 00 a0 e1                                      mov r0, r5
0049cb48  7d ee 0d eb                                      bl #0x818544
0049cb4c  05 00 a0 e1                                      mov r0, r5
0049cb50  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0049cb54  03 10 a0 e3                                      mov r1, #3
0049cb58  79 ee 0d eb                                      bl #0x818544
0049cb5c  05 00 a0 e1                                      mov r0, r5
0049cb60  0b 20 a0 e1                                      mov r2, fp
0049cb64  04 10 a0 e3                                      mov r1, #4
0049cb68  75 ee 0d eb                                      bl #0x818544
0049cb6c  05 00 a0 e1                                      mov r0, r5
0049cb70  14 20 9d e5                                      ldr r2, [sp, #0x14]
0049cb74  05 10 a0 e3                                      mov r1, #5
0049cb78  71 ee 0d eb                                      bl #0x818544
0049cb7c  05 00 a0 e1                                      mov r0, r5
0049cb80  18 20 9d e5                                      ldr r2, [sp, #0x18]
0049cb84  06 10 a0 e3                                      mov r1, #6
0049cb88  6d ee 0d eb                                      bl #0x818544
0049cb8c  05 00 a0 e1                                      mov r0, r5
0049cb90  08 20 a0 e1                                      mov r2, r8
0049cb94  07 10 a0 e3                                      mov r1, #7
0049cb98  69 ee 0d eb                                      bl #0x818544
0049cb9c  05 00 a0 e1                                      mov r0, r5
0049cba0  0a 20 a0 e1                                      mov r2, sl
0049cba4  03 10 a0 e3                                      mov r1, #3
0049cba8  20 30 a0 e3                                      mov r3, #0x20
0049cbac  3f f0 0d eb                                      bl #0x818cb0
0049cbb0  68 29 9d e5                                      ldr r2, [sp, #0x968]
0049cbb4  64 39 9d e5                                      ldr r3, [sp, #0x964]
0049cbb8  05 00 a0 e1                                      mov r0, r5
0049cbbc  04 10 a0 e3                                      mov r1, #4
0049cbc0  03 30 62 e0                                      rsb r3, r2, r3
0049cbc4  39 f0 0d eb                                      bl #0x818cb0
0049cbc8  ef 90 0d eb                                      bl #0x800f8c
0049cbcc  20 80 8d e2                                      add r8, sp, #0x20
0049cbd0  00 a0 a0 e1                                      mov sl, r0
0049cbd4  05 10 a0 e1                                      mov r1, r5
0049cbd8  08 00 a0 e1                                      mov r0, r8
0049cbdc  1b f1 0d eb                                      bl #0x819050
0049cbe0  08 20 a0 e1                                      mov r2, r8
0049cbe4  01 10 a0 e3                                      mov r1, #1
0049cbe8  0a 00 a0 e1                                      mov r0, sl
0049cbec  d7 89 0d eb                                      bl #0x7ff350
0049cbf0  08 00 a0 e1                                      mov r0, r8
0049cbf4  06 f0 0d eb                                      bl #0x818c14
0049cbf8  a6 10 fa eb                                      bl #0x320e98
0049cbfc  01 80 a0 e3                                      mov r8, #1
0049cc00  25 80 c0 e5                                      strb r8, [r0, #0x25]
0049cc04  a3 10 fa eb                                      bl #0x320e98
0049cc08  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049cc0c  03 00 53 e3                                      cmp r3, #3
0049cc10  4d 00 00 0a                                      beq #0x49cd4c
0049cc14  68 09 9d e5                                      ldr r0, [sp, #0x968]
0049cc18  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0049cc1c  02 00 50 e1                                      cmp r0, r2
0049cc20  06 00 00 0a                                      beq #0x49cc40
0049cc24  00 00 50 e3                                      cmp r0, #0
0049cc28  04 00 00 0a                                      beq #0x49cc40
0049cc2c  54 19 9d e5                                      ldr r1, [sp, #0x954]
0049cc30  01 10 60 e0                                      rsb r1, r0, r1
0049cc34  80 00 51 e3                                      cmp r1, #0x80
0049cc38  12 00 00 8a                                      bhi #0x49cc88
0049cc3c  af b0 09 eb                                      bl #0x708f00
0049cc40  98 09 9d e5                                      ldr r0, [sp, #0x998]
0049cc44  09 00 50 e1                                      cmp r0, sb
0049cc48  06 00 00 0a                                      beq #0x49cc68
0049cc4c  00 00 50 e3                                      cmp r0, #0
0049cc50  04 00 00 0a                                      beq #0x49cc68
0049cc54  84 19 9d e5                                      ldr r1, [sp, #0x984]
0049cc58  01 10 60 e0                                      rsb r1, r0, r1
0049cc5c  80 00 51 e3                                      cmp r1, #0x80
0049cc60  06 00 00 8a                                      bhi #0x49cc80
0049cc64  a5 b0 09 eb                                      bl #0x708f00
0049cc68  07 00 a0 e1                                      mov r0, r7
0049cc6c  c6 1a ff eb                                      bl #0x46378c
0049cc70  05 00 a0 e1                                      mov r0, r5
0049cc74  e6 ef 0d eb                                      bl #0x818c14
0049cc78  64 00 a0 e3                                      mov r0, #0x64
0049cc7c  1d ff ff ea                                      b #0x49c8f8
0049cc80  ee cd f9 eb                                      bl #0x310440
0049cc84  f7 ff ff ea                                      b #0x49cc68
0049cc88  ec cd f9 eb                                      bl #0x310440
0049cc8c  eb ff ff ea                                      b #0x49cc40
0049cc90  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0049cc94  96 1e 8d e2                                      add r1, sp, #0x960
0049cc98  0c 10 81 e2                                      add r1, r1, #0xc
0049cc9c  03 30 94 e7                                      ldr r3, [r4, r3]
0049cca0  0c 10 8d e5                                      str r1, [sp, #0xc]
0049cca4  03 00 a0 e1                                      mov r0, r3
0049cca8  08 30 8d e5                                      str r3, [sp, #8]
0049ccac  f5 6a fa eb                                      bl #0x337888
0049ccb0  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0049ccb4  75 2e 8d e2                                      add r2, sp, #0x750
0049ccb8  04 20 82 e2                                      add r2, r2, #4
0049ccbc  01 10 8f e0                                      add r1, pc, r1
0049ccc0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0049ccc4  08 dd f9 eb                                      bl #0x3140ec
0049ccc8  08 30 9d e5                                      ldr r3, [sp, #8]
0049cccc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0049ccd0  03 00 a0 e1                                      mov r0, r3
0049ccd4  6b 6b fa eb                                      bl #0x337a88
0049ccd8  00 30 a0 e1                                      mov r3, r0
0049ccdc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0049cce0  08 30 8d e5                                      str r3, [sp, #8]
0049cce4  5a ed f9 eb                                      bl #0x318254
0049cce8  08 30 9d e5                                      ldr r3, [sp, #8]
0049ccec  00 00 53 e3                                      cmp r3, #0
0049ccf0  59 ff ff 0a                                      beq #0x49ca5c
0049ccf4  51 ff ff ea                                      b #0x49ca40
0049ccf8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0049ccfc  05 00 a0 e1                                      mov r0, r5
0049cd00  05 10 a0 e3                                      mov r1, #5
0049cd04  0e ee 0d eb                                      bl #0x818544
0049cd08  05 00 a0 e1                                      mov r0, r5
0049cd0c  0a 20 a0 e1                                      mov r2, sl
0049cd10  20 30 a0 e3                                      mov r3, #0x20
0049cd14  03 10 a0 e3                                      mov r1, #3
0049cd18  e4 ef 0d eb                                      bl #0x818cb0
0049cd1c  05 00 a0 e1                                      mov r0, r5
0049cd20  18 20 9d e5                                      ldr r2, [sp, #0x18]
0049cd24  06 10 a0 e3                                      mov r1, #6
0049cd28  05 ee 0d eb                                      bl #0x818544
0049cd2c  05 00 a0 e1                                      mov r0, r5
0049cd30  0b 20 a0 e1                                      mov r2, fp
0049cd34  04 10 a0 e3                                      mov r1, #4
0049cd38  01 ee 0d eb                                      bl #0x818544
0049cd3c  a1 ff ff ea                                      b #0x49cbc8
0049cd40  59 f6 0d eb                                      bl #0x81a6ac
0049cd44  04 a0 90 e5                                      ldr sl, [r0, #4]
0049cd48  2d ff ff ea                                      b #0x49ca04
0049cd4c  51 10 fa eb                                      bl #0x320e98
0049cd50  00 10 a0 e3                                      mov r1, #0
0049cd54  44 00 80 e2                                      add r0, r0, #0x44
0049cd58  71 c6 f9 eb                                      bl #0x30e724
0049cd5c  4d 10 fa eb                                      bl #0x320e98
0049cd60  4d 80 c0 e5                                      strb r8, [r0, #0x4d]
0049cd64  7c f6 ff eb                                      bl #0x49a75c
0049cd68  a9 ff ff ea                                      b #0x49cc14
0049cd6c  67 c5 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049cd70  c0 81 4f 00 ac 40 00 00 f4 37 00 00 84 ee 42 00  .byte 0xc0, 0x81, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0xee, 0x42, 0x00
0049cd80  58 88 43 00 9c 1a 00 00 60 02 43 00 84 08 00 00  .byte 0x58, 0x88, 0x43, 0x00, 0x9c, 0x1a, 0x00, 0x00, 0x60, 0x02, 0x43, 0x00, 0x84, 0x08, 0x00, 0x00
0049cd90  cc 23 42 00                                      .byte 0xcc, 0x23, 0x42, 0x00

; FUNCTION 0x0049cd94, declared_size=1200, range_size=1200, mode=arm
; class-group: MultiplayerCallback
; alias: _ZN19MultiplayerCallback18HandlePlayerJoinedEPv
; demangled: MultiplayerCallback::HandlePlayerJoined(void*)
; decoder-mode: arm
0049cd94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049cd98  78 44 9f e5                                      ldr r4, [pc, #0x478]
0049cd9c  78 34 9f e5                                      ldr r3, [pc, #0x478]
0049cda0  78 64 9f e5                                      ldr r6, [pc, #0x478]
0049cda4  04 40 8f e0                                      add r4, pc, r4
0049cda8  03 20 94 e7                                      ldr r2, [r4, r3]
0049cdac  06 30 94 e7                                      ldr r3, [r4, r6]
0049cdb0  95 df 4d e2                                      sub sp, sp, #0x254
0049cdb4  00 50 92 e5                                      ldr r5, [r2]
0049cdb8  00 30 93 e5                                      ldr r3, [r3]
0049cdbc  00 20 e0 e3                                      mvn r2, #0
0049cdc0  00 00 55 e3                                      cmp r5, #0
0049cdc4  4c 20 8d e5                                      str r2, [sp, #0x4c]
0049cdc8  4c 32 8d e5                                      str r3, [sp, #0x24c]
0049cdcc  18 00 00 0a                                      beq #0x49ce34
0049cdd0  c1 cc 0d eb                                      bl #0x8100dc
0049cdd4  04 30 a0 e3                                      mov r3, #4
0049cdd8  03 16 a0 e3                                      mov r1, #0x300000
0049cddc  4c 20 8d e2                                      add r2, sp, #0x4c
0049cde0  06 0d 80 e2                                      add r0, r0, #0x180
0049cde4  5e 84 0d eb                                      bl #0x7fdf64
0049cde8  bb cc 0d eb                                      bl #0x8100dc
0049cdec  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0049cdf0  00 20 a0 e3                                      mov r2, #0
0049cdf4  f9 cc 0d eb                                      bl #0x8101e0
0049cdf8  30 31 95 e5                                      ldr r3, [r5, #0x130]
0049cdfc  00 80 a0 e1                                      mov r8, r0
0049ce00  26 00 53 e3                                      cmp r3, #0x26
0049ce04  4a 00 00 0a                                      beq #0x49cf34
0049ce08  14 74 9f e5                                      ldr r7, [pc, #0x414]
0049ce0c  07 a0 94 e7                                      ldr sl, [r4, r7]
0049ce10  a0 91 98 e5                                      ldr sb, [r8, #0x1a0]
0049ce14  40 00 9a e5                                      ldr r0, [sl, #0x40]
0049ce18  95 48 fb eb                                      bl #0x36f074
0049ce1c  00 00 50 e3                                      cmp r0, #0
0049ce20  1c 00 00 1a                                      bne #0x49ce98
0049ce24  5a 82 0d eb                                      bl #0x7fd794
0049ce28  e1 81 0d eb                                      bl #0x7fd5b4
0049ce2c  00 00 50 e3                                      cmp r0, #0
0049ce30  0b 00 00 1a                                      bne #0x49ce64
0049ce34  a8 cc 0d eb                                      bl #0x8100dc
0049ce38  03 16 a0 e3                                      mov r1, #0x300000
0049ce3c  06 0d 80 e2                                      add r0, r0, #0x180
0049ce40  6a 85 0d eb                                      bl #0x7fe3f0
0049ce44  06 30 94 e7                                      ldr r3, [r4, r6]
0049ce48  4c 22 9d e5                                      ldr r2, [sp, #0x24c]
0049ce4c  00 00 a0 e3                                      mov r0, #0
0049ce50  00 30 93 e5                                      ldr r3, [r3]
0049ce54  03 00 52 e1                                      cmp r2, r3
0049ce58  ed 00 00 1a                                      bne #0x49d214
0049ce5c  95 df 8d e2                                      add sp, sp, #0x254
0049ce60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0049ce64  07 30 94 e7                                      ldr r3, [r4, r7]
0049ce68  0c 20 a0 e3                                      mov r2, #0xc
0049ce6c  25 0e 8d e2                                      add r0, sp, #0x250
0049ce70  10 22 20 e5                                      str r2, [r0, #-0x210]!
0049ce74  38 50 93 e5                                      ldr r5, [r3, #0x38]
0049ce78  10 b0 09 eb                                      bl #0x708ec0
0049ce7c  08 90 80 e5                                      str sb, [r0, #8]
0049ce80  2c 31 95 e5                                      ldr r3, [r5, #0x12c]
0049ce84  4a 2f 85 e2                                      add r2, r5, #0x128
0049ce88  0c 00 80 e8                                      stm r0, {r2, r3}
0049ce8c  00 00 83 e5                                      str r0, [r3]
0049ce90  2c 01 85 e5                                      str r0, [r5, #0x12c]
0049ce94  e6 ff ff ea                                      b #0x49ce34
0049ce98  a0 c1 98 e5                                      ldr ip, [r8, #0x1a0]
0049ce9c  40 00 9a e5                                      ldr r0, [sl, #0x40]
0049cea0  50 80 8d e2                                      add r8, sp, #0x50
0049cea4  0c c0 8d e5                                      str ip, [sp, #0xc]
0049cea8  7b 44 fb eb                                      bl #0x36e09c
0049ceac  01 20 a0 e3                                      mov r2, #1
0049ceb0  64 16 90 e5                                      ldr r1, [r0, #0x664]
0049ceb4  00 30 a0 e3                                      mov r3, #0
0049ceb8  08 00 a0 e1                                      mov r0, r8
0049cebc  ba 21 ff eb                                      bl #0x4655ac
0049cec0  18 31 95 e5                                      ldr r3, [r5, #0x118]
0049cec4  0a 00 a0 e1                                      mov r0, sl
0049cec8  3c b0 95 e5                                      ldr fp, [r5, #0x3c]
0049cecc  10 30 8d e5                                      str r3, [sp, #0x10]
0049ced0  af 09 fa eb                                      bl #0x31f594
0049ced4  dc 50 90 e5                                      ldr r5, [r0, #0xdc]
0049ced8  b7 b8 0d eb                                      bl #0x80b1bc
0049cedc  00 a0 a0 e1                                      mov sl, r0
0049cee0  40 03 9f e5                                      ldr r0, [pc, #0x340]
0049cee4  01 10 a0 e3                                      mov r1, #1
0049cee8  00 00 8f e0                                      add r0, pc, r0
0049ceec  d4 b4 0d eb                                      bl #0x80a244
0049cef0  00 20 a0 e3                                      mov r2, #0
0049cef4  50 b0 80 e5                                      str fp, [r0, #0x50]
0049cef8  59 20 c0 e5                                      strb r2, [r0, #0x59]
0049cefc  10 30 9d e5                                      ldr r3, [sp, #0x10]
0049cf00  64 50 80 e5                                      str r5, [r0, #0x64]
0049cf04  00 10 a0 e1                                      mov r1, r0
0049cf08  5c 30 80 e5                                      str r3, [r0, #0x5c]
0049cf0c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0049cf10  54 20 80 e5                                      str r2, [r0, #0x54]
0049cf14  58 20 c0 e5                                      strb r2, [r0, #0x58]
0049cf18  68 c0 80 e5                                      str ip, [r0, #0x68]
0049cf1c  60 50 80 e5                                      str r5, [r0, #0x60]
0049cf20  0a 00 a0 e1                                      mov r0, sl
0049cf24  de c4 0d eb                                      bl #0x80e2a4
0049cf28  08 00 a0 e1                                      mov r0, r8
0049cf2c  16 1a ff eb                                      bl #0x46378c
0049cf30  bb ff ff ea                                      b #0x49ce24
0049cf34  7a af 8d e2                                      add sl, sp, #0x1e8
0049cf38  0a 00 a0 e1                                      mov r0, sl
0049cf3c  10 10 a0 e3                                      mov r1, #0x10
0049cf40  f8 a1 8d e5                                      str sl, [sp, #0x1f8]
0049cf44  fc a1 8d e5                                      str sl, [sp, #0x1fc]
0049cf48  cb d1 f9 eb                                      bl #0x31167c
0049cf4c  f8 21 9d e5                                      ldr r2, [sp, #0x1f8]
0049cf50  00 30 a0 e3                                      mov r3, #0
0049cf54  8d bf 8d e2                                      add fp, sp, #0x234
0049cf58  c4 72 9f e5                                      ldr r7, [pc, #0x2c4]
0049cf5c  00 30 c2 e5                                      strb r3, [r2]
0049cf60  0b 00 a0 e1                                      mov r0, fp
0049cf64  10 10 a0 e3                                      mov r1, #0x10
0049cf68  10 30 8d e5                                      str r3, [sp, #0x10]
0049cf6c  44 b2 8d e5                                      str fp, [sp, #0x244]
0049cf70  48 b2 8d e5                                      str fp, [sp, #0x248]
0049cf74  c0 d1 f9 eb                                      bl #0x31167c
0049cf78  10 30 9d e5                                      ldr r3, [sp, #0x10]
0049cf7c  44 22 9d e5                                      ldr r2, [sp, #0x244]
0049cf80  07 90 94 e7                                      ldr sb, [r4, r7]
0049cf84  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
0049cf88  00 30 c2 e5                                      strb r3, [r2]
0049cf8c  9c 22 9f e5                                      ldr r2, [pc, #0x29c]
0049cf90  34 c0 99 e5                                      ldr ip, [sb, #0x34]
0049cf94  2c 00 99 e5                                      ldr r0, [sb, #0x2c]
0049cf98  02 20 8f e0                                      add r2, pc, r2
0049cf9c  01 10 8f e0                                      add r1, pc, r1
0049cfa0  10 30 8d e5                                      str r3, [sp, #0x10]
0049cfa4  0c c0 8d e5                                      str ip, [sp, #0xc]
0049cfa8  0b 9f 00 eb                                      bl #0x4c4bdc
0049cfac  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0049cfb0  00 10 a0 e1                                      mov r1, r0
0049cfb4  0c 00 a0 e1                                      mov r0, ip
0049cfb8  c7 af 01 eb                                      bl #0x508edc
0049cfbc  34 c0 99 e5                                      ldr ip, [sb, #0x34]
0049cfc0  81 9f 8d e2                                      add sb, sp, #0x204
0049cfc4  1c 00 8d e5                                      str r0, [sp, #0x1c]
0049cfc8  14 92 8d e5                                      str sb, [sp, #0x214]
0049cfcc  18 92 8d e5                                      str sb, [sp, #0x218]
0049cfd0  e4 12 98 e5                                      ldr r1, [r8, #0x2e4]
0049cfd4  e0 22 98 e5                                      ldr r2, [r8, #0x2e0]
0049cfd8  87 ef 8d e2                                      add lr, sp, #0x21c
0049cfdc  09 00 a0 e1                                      mov r0, sb
0049cfe0  18 e0 8d e5                                      str lr, [sp, #0x18]
0049cfe4  0c c0 8d e5                                      str ip, [sp, #0xc]
0049cfe8  be d1 f9 eb                                      bl #0x3116e8
0049cfec  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0049cff0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0049cff4  10 30 9d e5                                      ldr r3, [sp, #0x10]
0049cff8  0c 10 a0 e1                                      mov r1, ip
0049cffc  09 20 a0 e1                                      mov r2, sb
0049d000  01 ab 01 eb                                      bl #0x507c0c
0049d004  18 02 9d e5                                      ldr r0, [sp, #0x218]
0049d008  09 00 50 e1                                      cmp r0, sb
0049d00c  06 00 00 0a                                      beq #0x49d02c
0049d010  00 00 50 e3                                      cmp r0, #0
0049d014  04 00 00 0a                                      beq #0x49d02c
0049d018  04 12 9d e5                                      ldr r1, [sp, #0x204]
0049d01c  01 10 60 e0                                      rsb r1, r0, r1
0049d020  80 00 51 e3                                      cmp r1, #0x80
0049d024  6d 00 00 8a                                      bhi #0x49d1e0
0049d028  b4 af 09 eb                                      bl #0x708f00
0049d02c  07 30 94 e7                                      ldr r3, [r4, r7]
0049d030  fc 01 9f e5                                      ldr r0, [pc, #0x1fc]
0049d034  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0049d038  0b 10 a0 e1                                      mov r1, fp
0049d03c  14 00 8d e5                                      str r0, [sp, #0x14]
0049d040  34 00 93 e5                                      ldr r0, [r3, #0x34]
0049d044  30 32 9d e5                                      ldr r3, [sp, #0x230]
0049d048  a9 af 01 eb                                      bl #0x508ef4
0049d04c  44 22 9d e5                                      ldr r2, [sp, #0x244]
0049d050  48 12 9d e5                                      ldr r1, [sp, #0x248]
0049d054  0a 00 a0 e1                                      mov r0, sl
0049d058  60 ce f9 eb                                      bl #0x3109e0
0049d05c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0049d060  01 10 94 e7                                      ldr r1, [r4, r1]
0049d064  14 10 8d e5                                      str r1, [sp, #0x14]
0049d068  14 20 9d e5                                      ldr r2, [sp, #0x14]
0049d06c  0a 10 a0 e1                                      mov r1, sl
0049d070  04 90 82 e2                                      add sb, r2, #4
0049d074  09 00 a0 e1                                      mov r0, sb
0049d078  ae 64 fb eb                                      bl #0x376338
0049d07c  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
0049d080  24 c0 8d e2                                      add ip, sp, #0x24
0049d084  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0049d088  14 30 9d e5                                      ldr r3, [sp, #0x14]
0049d08c  0c 10 a0 e1                                      mov r1, ip
0049d090  14 00 83 e2                                      add r0, r3, #0x14
0049d094  9e 40 fb eb                                      bl #0x36d314
0049d098  01 00 50 e3                                      cmp r0, #1
0049d09c  1f 00 00 0a                                      beq #0x49d120
0049d0a0  30 02 9d e5                                      ldr r0, [sp, #0x230]
0049d0a4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0049d0a8  03 00 50 e1                                      cmp r0, r3
0049d0ac  06 00 00 0a                                      beq #0x49d0cc
0049d0b0  00 00 50 e3                                      cmp r0, #0
0049d0b4  04 00 00 0a                                      beq #0x49d0cc
0049d0b8  1c 12 9d e5                                      ldr r1, [sp, #0x21c]
0049d0bc  01 10 60 e0                                      rsb r1, r0, r1
0049d0c0  80 00 51 e3                                      cmp r1, #0x80
0049d0c4  49 00 00 8a                                      bhi #0x49d1f0
0049d0c8  8c af 09 eb                                      bl #0x708f00
0049d0cc  48 02 9d e5                                      ldr r0, [sp, #0x248]
0049d0d0  0b 00 50 e1                                      cmp r0, fp
0049d0d4  06 00 00 0a                                      beq #0x49d0f4
0049d0d8  00 00 50 e3                                      cmp r0, #0
0049d0dc  04 00 00 0a                                      beq #0x49d0f4
0049d0e0  34 12 9d e5                                      ldr r1, [sp, #0x234]
0049d0e4  01 10 60 e0                                      rsb r1, r0, r1
0049d0e8  80 00 51 e3                                      cmp r1, #0x80
0049d0ec  3d 00 00 8a                                      bhi #0x49d1e8
0049d0f0  82 af 09 eb                                      bl #0x708f00
0049d0f4  fc 01 9d e5                                      ldr r0, [sp, #0x1fc]
0049d0f8  0a 00 50 e1                                      cmp r0, sl
0049d0fc  42 ff ff 0a                                      beq #0x49ce0c
0049d100  00 00 50 e3                                      cmp r0, #0
0049d104  40 ff ff 0a                                      beq #0x49ce0c
0049d108  e8 11 9d e5                                      ldr r1, [sp, #0x1e8]
0049d10c  01 10 60 e0                                      rsb r1, r0, r1
0049d110  80 00 51 e3                                      cmp r1, #0x80
0049d114  2f 00 00 8a                                      bhi #0x49d1d8
0049d118  78 af 09 eb                                      bl #0x708f00
0049d11c  3a ff ff ea                                      b #0x49ce0c
0049d120  10 31 9f e5                                      ldr r3, [pc, #0x110]
0049d124  03 30 94 e7                                      ldr r3, [r4, r3]
0049d128  00 30 93 e5                                      ldr r3, [r3]
0049d12c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0049d130  55 3e fe eb                                      bl #0x42ca8c
0049d134  94 3e fe eb                                      bl #0x42cb8c
0049d138  00 00 50 e3                                      cmp r0, #0
0049d13c  14 00 8d e5                                      str r0, [sp, #0x14]
0049d140  d6 ff ff 0a                                      beq #0x49d0a0
0049d144  f0 90 9f e5                                      ldr sb, [pc, #0xf0]
0049d148  09 20 94 e7                                      ldr r2, [r4, sb]
0049d14c  28 00 82 e2                                      add r0, r2, #0x28
0049d150  10 20 8d e5                                      str r2, [sp, #0x10]
0049d154  fa a3 fb eb                                      bl #0x386144
0049d158  10 20 9d e5                                      ldr r2, [sp, #0x10]
0049d15c  2c 30 92 e5                                      ldr r3, [r2, #0x2c]
0049d160  00 00 53 e3                                      cmp r3, #0
0049d164  23 00 00 0a                                      beq #0x49d1f8
0049d168  09 00 94 e7                                      ldr r0, [r4, sb]
0049d16c  f7 2a fe eb                                      bl #0x427d50
0049d170  00 20 a0 e3                                      mov r2, #0
0049d174  34 20 cd e5                                      strb r2, [sp, #0x34]
0049d178  be 34 a0 e3                                      mov r3, #0xbe000000
0049d17c  02 20 a0 e3                                      mov r2, #2
0049d180  35 20 cd e5                                      strb r2, [sp, #0x35]
0049d184  00 c0 a0 e1                                      mov ip, r0
0049d188  25 2e 8d e2                                      add r2, sp, #0x250
0049d18c  c3 3a a0 e1                                      asr r3, r3, #0x15
0049d190  00 00 a0 e3                                      mov r0, #0
0049d194  00 10 a0 e3                                      mov r1, #0
0049d198  f3 00 82 e1                                      strd r0, r1, [r2, r3]
0049d19c  0c 10 a0 e1                                      mov r1, ip
0049d1a0  00 c0 a0 e3                                      mov ip, #0
0049d1a4  38 c0 8d e5                                      str ip, [sp, #0x38]
0049d1a8  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0049d1ac  34 90 8d e2                                      add sb, sp, #0x34
0049d1b0  14 00 9d e5                                      ldr r0, [sp, #0x14]
0049d1b4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0049d1b8  09 30 a0 e1                                      mov r3, sb
0049d1bc  08 c0 89 e5                                      str ip, [sb, #8]
0049d1c0  01 c0 a0 e3                                      mov ip, #1
0049d1c4  00 c0 8d e5                                      str ip, [sp]
0049d1c8  0f 3b 0c eb                                      bl #0x7abe0c
0049d1cc  09 00 a0 e1                                      mov r0, sb
0049d1d0  d3 e7 0b eb                                      bl #0x797124
0049d1d4  b1 ff ff ea                                      b #0x49d0a0
0049d1d8  98 cc f9 eb                                      bl #0x310440
0049d1dc  0a ff ff ea                                      b #0x49ce0c
0049d1e0  96 cc f9 eb                                      bl #0x310440
0049d1e4  90 ff ff ea                                      b #0x49d02c
0049d1e8  94 cc f9 eb                                      bl #0x310440
0049d1ec  c0 ff ff ea                                      b #0x49d0f4
0049d1f0  92 cc f9 eb                                      bl #0x310440
0049d1f4  b4 ff ff ea                                      b #0x49d0cc
0049d1f8  02 00 a0 e1                                      mov r0, r2
0049d1fc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0049d200  02 10 94 e7                                      ldr r1, [r4, r2]
0049d204  14 20 9d e5                                      ldr r2, [sp, #0x14]
0049d208  00 10 91 e5                                      ldr r1, [r1]
0049d20c  a3 2a fe eb                                      bl #0x427ca0
0049d210  d4 ff ff ea                                      b #0x49d168
0049d214  3d c4 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049d218  ec 7c 4f 00 64 1d 00 00 ac 40 00 00 f4 37 00 00  .byte 0xec, 0x7c, 0x4f, 0x00, 0x64, 0x1d, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0049d228  38 20 42 00 8c 1c 42 00 e0 83 43 00 d8 0f 00 00  .byte 0x38, 0x20, 0x42, 0x00, 0x8c, 0x1c, 0x42, 0x00, 0xe0, 0x83, 0x43, 0x00, 0xd8, 0x0f, 0x00, 0x00
0049d238  4c 42 00 00 c4 35 00 00 8c 33 00 00              .byte 0x4c, 0x42, 0x00, 0x00, 0xc4, 0x35, 0x00, 0x00, 0x8c, 0x33, 0x00, 0x00
