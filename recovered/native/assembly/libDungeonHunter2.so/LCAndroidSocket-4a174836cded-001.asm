; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0089e5b0, declared_size=4, range_size=4, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket4InitEv
; demangled: LCAndroidSocket::Init()
; decoder-mode: arm
0089e5b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089e5b4, declared_size=40, range_size=40, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket12IsReadyForRWEv
; demangled: LCAndroidSocket::IsReadyForRW()
; decoder-mode: arm
0089e5b4  08 30 90 e5                                      ldr r3, [r0, #8]
0089e5b8  01 10 a0 e3                                      mov r1, #1
0089e5bc  c3 22 a0 e1                                      asr r2, r3, #5
0089e5c0  1f 30 03 e2                                      and r3, r3, #0x1f
0089e5c4  02 01 80 e0                                      add r0, r0, r2, lsl #2
0089e5c8  68 28 90 e5                                      ldr r2, [r0, #0x868]
0089e5cc  11 23 12 e0                                      ands r2, r2, r1, lsl r3
0089e5d0  00 00 a0 03                                      moveq r0, #0
0089e5d4  01 00 a0 13                                      movne r0, #1
0089e5d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089e5dc, declared_size=244, range_size=244, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket13SendBroadcastEPKcii
; demangled: LCAndroidSocket::SendBroadcast(char const*, int, int)
; decoder-mode: arm
0089e5dc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0089e5e0  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0089e5e4  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0089e5e8  00 70 a0 e1                                      mov r7, r0
0089e5ec  04 40 8f e0                                      add r4, pc, r4
0089e5f0  05 00 94 e7                                      ldr r0, [r4, r5]
0089e5f4  24 d0 4d e2                                      sub sp, sp, #0x24
0089e5f8  00 e0 a0 e3                                      mov lr, #0
0089e5fc  00 a0 90 e5                                      ldr sl, [r0]
0089e600  14 c0 8d e2                                      add ip, sp, #0x14
0089e604  08 00 97 e5                                      ldr r0, [r7, #8]
0089e608  1c a0 8d e5                                      str sl, [sp, #0x1c]
0089e60c  04 e0 8c e4                                      str lr, [ip], #4
0089e610  00 e0 8c e5                                      str lr, [ip]
0089e614  03 60 a0 e1                                      mov r6, r3
0089e618  00 c0 e0 e3                                      mvn ip, #0
0089e61c  03 38 a0 e1                                      lsl r3, r3, #0x10
0089e620  10 c0 8d e5                                      str ip, [sp, #0x10]
0089e624  0c c0 8d e2                                      add ip, sp, #0xc
0089e628  23 8c a0 e1                                      lsr r8, r3, #0x18
0089e62c  00 c0 8d e5                                      str ip, [sp]
0089e630  10 c0 a0 e3                                      mov ip, #0x10
0089e634  23 84 88 e1                                      orr r8, r8, r3, lsr #8
0089e638  04 c0 8d e5                                      str ip, [sp, #4]
0089e63c  0e 30 a0 e1                                      mov r3, lr
0089e640  02 c0 a0 e3                                      mov ip, #2
0089e644  be 80 cd e1                                      strh r8, [sp, #0xe]
0089e648  bc c0 cd e1                                      strh ip, [sp, #0xc]
0089e64c  01 a0 a0 e1                                      mov sl, r1
0089e650  ff c0 e9 eb                                      bl #0x30ea54
0089e654  00 80 50 e2                                      subs r8, r0, #0
0089e658  0d 00 00 da                                      ble #0x89e694
0089e65c  64 00 9f e5                                      ldr r0, [pc, #0x64]
0089e660  06 10 a0 e1                                      mov r1, r6
0089e664  0a 30 a0 e1                                      mov r3, sl
0089e668  00 00 8f e0                                      add r0, pc, r0
0089e66c  08 20 a0 e1                                      mov r2, r8
0089e670  23 f7 ff eb                                      bl #0x89c304
0089e674  05 30 94 e7                                      ldr r3, [r4, r5]
0089e678  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0089e67c  08 00 a0 e1                                      mov r0, r8
0089e680  00 30 93 e5                                      ldr r3, [r3]
0089e684  03 00 52 e1                                      cmp r2, r3
0089e688  0b 00 00 1a                                      bne #0x89e6bc
0089e68c  24 d0 8d e2                                      add sp, sp, #0x24
0089e690  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0089e694  07 00 a0 e1                                      mov r0, r7
0089e698  00 30 97 e5                                      ldr r3, [r7]
0089e69c  0f e0 a0 e1                                      mov lr, pc
0089e6a0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089e6a4  00 20 a0 e1                                      mov r2, r0
0089e6a8  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0089e6ac  06 10 a0 e1                                      mov r1, r6
0089e6b0  00 00 8f e0                                      add r0, pc, r0
0089e6b4  12 f7 ff eb                                      bl #0x89c304
0089e6b8  ed ff ff ea                                      b #0x89e674
0089e6bc  13 bf e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089e6c0  a4 64 0f 00 ac 40 00 00 40 65 07 00 28 65 07 00  .byte 0xa4, 0x64, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0x65, 0x07, 0x00, 0x28, 0x65, 0x07, 0x00

; FUNCTION 0x0089e6d0, declared_size=100, range_size=100, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket12SetBroadcastEv
; demangled: LCAndroidSocket::SetBroadcast()
; decoder-mode: arm
0089e6d0  10 40 2d e9                                      push {r4, lr}
0089e6d4  10 d0 4d e2                                      sub sp, sp, #0x10
0089e6d8  01 10 a0 e3                                      mov r1, #1
0089e6dc  10 30 8d e2                                      add r3, sp, #0x10
0089e6e0  04 c0 a0 e3                                      mov ip, #4
0089e6e4  00 40 a0 e1                                      mov r4, r0
0089e6e8  06 20 a0 e3                                      mov r2, #6
0089e6ec  08 00 90 e5                                      ldr r0, [r0, #8]
0089e6f0  04 10 23 e5                                      str r1, [r3, #-4]!
0089e6f4  00 c0 8d e5                                      str ip, [sp]
0089e6f8  de c0 e9 eb                                      bl #0x30ea78
0089e6fc  00 00 50 e3                                      cmp r0, #0
0089e700  01 00 00 ba                                      blt #0x89e70c
0089e704  10 d0 8d e2                                      add sp, sp, #0x10
0089e708  10 80 bd e8                                      pop {r4, pc}
0089e70c  04 00 a0 e1                                      mov r0, r4
0089e710  00 30 94 e5                                      ldr r3, [r4]
0089e714  0f e0 a0 e1                                      mov lr, pc
0089e718  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089e71c  00 10 a0 e1                                      mov r1, r0
0089e720  08 00 9f e5                                      ldr r0, [pc, #8]
0089e724  00 00 8f e0                                      add r0, pc, r0
0089e728  f5 f6 ff eb                                      bl #0x89c304
0089e72c  f4 ff ff ea                                      b #0x89e704
; mapping-symbol data/literal pool
0089e730  f4 64 07 00                                      .byte 0xf4, 0x64, 0x07, 0x00

; FUNCTION 0x0089e734, declared_size=44, range_size=44, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket6ListenEi
; demangled: LCAndroidSocket::Listen(int)
; decoder-mode: arm
0089e734  10 40 2d e9                                      push {r4, lr}
0089e738  08 00 90 e5                                      ldr r0, [r0, #8]
0089e73c  53 bf e9 eb                                      bl #0x30e490
0089e740  00 00 50 e3                                      cmp r0, #0
0089e744  00 00 00 ba                                      blt #0x89e74c
0089e748  10 80 bd e8                                      pop {r4, pc}
0089e74c  08 00 9f e5                                      ldr r0, [pc, #8]
0089e750  00 00 8f e0                                      add r0, pc, r0
0089e754  10 40 bd e8                                      pop {r4, lr}
0089e758  e9 f6 ff ea                                      b #0x89c304
; mapping-symbol data/literal pool
0089e75c  40 02 07 00                                      .byte 0x40, 0x02, 0x07, 0x00

; FUNCTION 0x0089e760, declared_size=136, range_size=136, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket13GetSocketPortEv
; demangled: LCAndroidSocket::GetSocketPort()
; decoder-mode: arm
0089e760  78 30 9f e5                                      ldr r3, [pc, #0x78]
0089e764  78 20 9f e5                                      ldr r2, [pc, #0x78]
0089e768  10 40 2d e9                                      push {r4, lr}
0089e76c  03 30 8f e0                                      add r3, pc, r3
0089e770  02 40 93 e7                                      ldr r4, [r3, r2]
0089e774  18 d0 4d e2                                      sub sp, sp, #0x18
0089e778  00 10 a0 e3                                      mov r1, #0
0089e77c  00 c0 94 e5                                      ldr ip, [r4]
0089e780  08 20 8d e2                                      add r2, sp, #8
0089e784  10 e0 a0 e3                                      mov lr, #0x10
0089e788  14 c0 8d e5                                      str ip, [sp, #0x14]
0089e78c  04 10 82 e4                                      str r1, [r2], #4
0089e790  04 10 82 e4                                      str r1, [r2], #4
0089e794  00 10 82 e5                                      str r1, [r2]
0089e798  04 10 8d e5                                      str r1, [sp, #4]
0089e79c  00 e0 8d e5                                      str lr, [sp]
0089e7a0  04 10 8d e2                                      add r1, sp, #4
0089e7a4  0d 20 a0 e1                                      mov r2, sp
0089e7a8  08 00 90 e5                                      ldr r0, [r0, #8]
0089e7ac  a6 bf e9 eb                                      bl #0x30e64c
0089e7b0  b6 30 dd e1                                      ldrh r3, [sp, #6]
0089e7b4  14 10 9d e5                                      ldr r1, [sp, #0x14]
0089e7b8  00 20 94 e5                                      ldr r2, [r4]
0089e7bc  23 04 a0 e1                                      lsr r0, r3, #8
0089e7c0  03 34 80 e1                                      orr r3, r0, r3, lsl #8
0089e7c4  02 00 51 e1                                      cmp r1, r2
0089e7c8  03 08 a0 e1                                      lsl r0, r3, #0x10
0089e7cc  20 08 a0 e1                                      lsr r0, r0, #0x10
0089e7d0  01 00 00 1a                                      bne #0x89e7dc
0089e7d4  18 d0 8d e2                                      add sp, sp, #0x18
0089e7d8  10 80 bd e8                                      pop {r4, pc}
0089e7dc  cb be e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089e7e0  24 63 0f 00 ac 40 00 00                          .byte 0x24, 0x63, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0089e7e8, declared_size=152, range_size=152, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket13GetSocketAddrEv
; demangled: LCAndroidSocket::GetSocketAddr()
; decoder-mode: arm
0089e7e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0089e7ec  84 40 9f e5                                      ldr r4, [pc, #0x84]
0089e7f0  84 60 9f e5                                      ldr r6, [pc, #0x84]
0089e7f4  42 df 4d e2                                      sub sp, sp, #0x108
0089e7f8  04 40 8f e0                                      add r4, pc, r4
0089e7fc  06 30 94 e7                                      ldr r3, [r4, r6]
0089e800  04 50 8d e2                                      add r5, sp, #4
0089e804  00 10 a0 e3                                      mov r1, #0
0089e808  00 30 93 e5                                      ldr r3, [r3]
0089e80c  01 2c a0 e3                                      mov r2, #0x100
0089e810  05 00 a0 e1                                      mov r0, r5
0089e814  04 31 8d e5                                      str r3, [sp, #0x104]
0089e818  b8 f9 ff eb                                      bl #0x89cf00
0089e81c  05 00 a0 e1                                      mov r0, r5
0089e820  01 1c a0 e3                                      mov r1, #0x100
0089e824  45 c0 e9 eb                                      bl #0x30e940
0089e828  00 00 50 e3                                      cmp r0, #0
0089e82c  07 00 00 0a                                      beq #0x89e850
0089e830  00 00 a0 e3                                      mov r0, #0
0089e834  06 30 94 e7                                      ldr r3, [r4, r6]
0089e838  04 21 9d e5                                      ldr r2, [sp, #0x104]
0089e83c  00 30 93 e5                                      ldr r3, [r3]
0089e840  03 00 52 e1                                      cmp r2, r3
0089e844  0a 00 00 1a                                      bne #0x89e874
0089e848  42 df 8d e2                                      add sp, sp, #0x108
0089e84c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0089e850  05 00 a0 e1                                      mov r0, r5
0089e854  c9 bd e9 eb                                      bl #0x30df80
0089e858  00 00 50 e3                                      cmp r0, #0
0089e85c  f3 ff ff 0a                                      beq #0x89e830
0089e860  10 30 90 e5                                      ldr r3, [r0, #0x10]
0089e864  00 30 93 e5                                      ldr r3, [r3]
0089e868  00 00 93 e5                                      ldr r0, [r3]
0089e86c  e6 be e9 eb                                      bl #0x30e40c
0089e870  ef ff ff ea                                      b #0x89e834
0089e874  a5 be e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089e878  98 62 0f 00 ac 40 00 00                          .byte 0x98, 0x62, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0089e880, declared_size=280, range_size=280, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket16RecvFromUnkownIPEPciPS0_Pi
; demangled: LCAndroidSocket::RecvFromUnkownIP(char*, int, char**, int*)
; decoder-mode: arm
0089e880  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089e884  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
0089e888  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
0089e88c  20 d0 4d e2                                      sub sp, sp, #0x20
0089e890  04 40 8f e0                                      add r4, pc, r4
0089e894  05 e0 94 e7                                      ldr lr, [r4, r5]
0089e898  00 c0 a0 e3                                      mov ip, #0
0089e89c  00 70 a0 e1                                      mov r7, r0
0089e8a0  00 60 9e e5                                      ldr r6, [lr]
0089e8a4  10 e0 8d e2                                      add lr, sp, #0x10
0089e8a8  08 00 90 e5                                      ldr r0, [r0, #8]
0089e8ac  1c 60 8d e5                                      str r6, [sp, #0x1c]
0089e8b0  04 c0 8e e4                                      str ip, [lr], #4
0089e8b4  04 c0 8e e4                                      str ip, [lr], #4
0089e8b8  00 c0 8e e5                                      str ip, [lr]
0089e8bc  10 e0 a0 e3                                      mov lr, #0x10
0089e8c0  08 e0 8d e5                                      str lr, [sp, #8]
0089e8c4  0c e0 8d e2                                      add lr, sp, #0xc
0089e8c8  0c c0 8d e5                                      str ip, [sp, #0xc]
0089e8cc  00 e0 8d e5                                      str lr, [sp]
0089e8d0  03 80 a0 e1                                      mov r8, r3
0089e8d4  08 e0 8d e2                                      add lr, sp, #8
0089e8d8  0c 30 a0 e1                                      mov r3, ip
0089e8dc  02 c0 a0 e3                                      mov ip, #2
0089e8e0  04 e0 8d e5                                      str lr, [sp, #4]
0089e8e4  bc c0 cd e1                                      strh ip, [sp, #0xc]
0089e8e8  01 90 a0 e1                                      mov sb, r1
0089e8ec  40 a0 9d e5                                      ldr sl, [sp, #0x40]
0089e8f0  ae c0 e9 eb                                      bl #0x30ebb0
0089e8f4  00 60 50 e2                                      subs r6, r0, #0
0089e8f8  17 00 00 da                                      ble #0x89e95c
0089e8fc  10 00 9d e5                                      ldr r0, [sp, #0x10]
0089e900  c1 be e9 eb                                      bl #0x30e40c
0089e904  84 fa ff eb                                      bl #0x89d31c
0089e908  be 30 dd e1                                      ldrh r3, [sp, #0xe]
0089e90c  00 00 88 e5                                      str r0, [r8]
0089e910  78 00 9f e5                                      ldr r0, [pc, #0x78]
0089e914  23 24 a0 e1                                      lsr r2, r3, #8
0089e918  03 24 82 e1                                      orr r2, r2, r3, lsl #8
0089e91c  00 00 8f e0                                      add r0, pc, r0
0089e920  02 28 a0 e1                                      lsl r2, r2, #0x10
0089e924  06 30 a0 e1                                      mov r3, r6
0089e928  22 28 a0 e1                                      lsr r2, r2, #0x10
0089e92c  00 20 8a e5                                      str r2, [sl]
0089e930  00 10 98 e5                                      ldr r1, [r8]
0089e934  00 90 8d e5                                      str sb, [sp]
0089e938  71 f6 ff eb                                      bl #0x89c304
0089e93c  05 30 94 e7                                      ldr r3, [r4, r5]
0089e940  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0089e944  06 00 a0 e1                                      mov r0, r6
0089e948  00 30 93 e5                                      ldr r3, [r3]
0089e94c  03 00 52 e1                                      cmp r2, r3
0089e950  0b 00 00 1a                                      bne #0x89e984
0089e954  20 d0 8d e2                                      add sp, sp, #0x20
0089e958  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0089e95c  f6 ff ff 0a                                      beq #0x89e93c
0089e960  07 00 a0 e1                                      mov r0, r7
0089e964  00 30 97 e5                                      ldr r3, [r7]
0089e968  0f e0 a0 e1                                      mov lr, pc
0089e96c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089e970  00 10 a0 e1                                      mov r1, r0
0089e974  18 00 9f e5                                      ldr r0, [pc, #0x18]
0089e978  00 00 8f e0                                      add r0, pc, r0
0089e97c  60 f6 ff eb                                      bl #0x89c304
0089e980  ed ff ff ea                                      b #0x89e93c
0089e984  61 be e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089e988  00 62 0f 00 ac 40 00 00 34 63 07 00 10 63 07 00  .byte 0x00, 0x62, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x63, 0x07, 0x00, 0x10, 0x63, 0x07, 0x00

; FUNCTION 0x0089e998, declared_size=104, range_size=104, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket11GetHostNameEPPc
; demangled: LCAndroidSocket::GetHostName(char**)
; decoder-mode: arm
0089e998  58 30 9f e5                                      ldr r3, [pc, #0x58]
0089e99c  58 20 9f e5                                      ldr r2, [pc, #0x58]
0089e9a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0089e9a4  03 30 8f e0                                      add r3, pc, r3
0089e9a8  02 40 93 e7                                      ldr r4, [r3, r2]
0089e9ac  42 df 4d e2                                      sub sp, sp, #0x108
0089e9b0  04 50 8d e2                                      add r5, sp, #4
0089e9b4  00 20 94 e5                                      ldr r2, [r4]
0089e9b8  01 60 a0 e1                                      mov r6, r1
0089e9bc  05 00 a0 e1                                      mov r0, r5
0089e9c0  ff 10 a0 e3                                      mov r1, #0xff
0089e9c4  04 21 8d e5                                      str r2, [sp, #0x104]
0089e9c8  dc bf e9 eb                                      bl #0x30e940
0089e9cc  05 00 a0 e1                                      mov r0, r5
0089e9d0  51 fa ff eb                                      bl #0x89d31c
0089e9d4  00 00 86 e5                                      str r0, [r6]
0089e9d8  04 21 9d e5                                      ldr r2, [sp, #0x104]
0089e9dc  00 30 94 e5                                      ldr r3, [r4]
0089e9e0  00 00 a0 e3                                      mov r0, #0
0089e9e4  03 00 52 e1                                      cmp r2, r3
0089e9e8  01 00 00 1a                                      bne #0x89e9f4
0089e9ec  42 df 8d e2                                      add sp, sp, #0x108
0089e9f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0089e9f4  45 be e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089e9f8  ec 60 0f 00 ac 40 00 00                          .byte 0xec, 0x60, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0089ea00, declared_size=284, range_size=284, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket8RecvFromEPci
; demangled: LCAndroidSocket::RecvFrom(char*, int)
; decoder-mode: arm
0089ea00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089ea04  00 41 9f e5                                      ldr r4, [pc, #0x100]
0089ea08  00 51 9f e5                                      ldr r5, [pc, #0x100]
0089ea0c  20 d0 4d e2                                      sub sp, sp, #0x20
0089ea10  04 40 8f e0                                      add r4, pc, r4
0089ea14  05 30 94 e7                                      ldr r3, [r4, r5]
0089ea18  00 c0 a0 e3                                      mov ip, #0
0089ea1c  10 e0 8d e2                                      add lr, sp, #0x10
0089ea20  00 30 93 e5                                      ldr r3, [r3]
0089ea24  00 70 a0 e1                                      mov r7, r0
0089ea28  08 00 90 e5                                      ldr r0, [r0, #8]
0089ea2c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0089ea30  04 c0 8e e4                                      str ip, [lr], #4
0089ea34  04 c0 8e e4                                      str ip, [lr], #4
0089ea38  00 c0 8e e5                                      str ip, [lr]
0089ea3c  10 e0 a0 e3                                      mov lr, #0x10
0089ea40  08 e0 8d e5                                      str lr, [sp, #8]
0089ea44  0c e0 8d e2                                      add lr, sp, #0xc
0089ea48  0c c0 8d e5                                      str ip, [sp, #0xc]
0089ea4c  0c 30 a0 e1                                      mov r3, ip
0089ea50  00 e0 8d e5                                      str lr, [sp]
0089ea54  02 c0 a0 e3                                      mov ip, #2
0089ea58  08 e0 8d e2                                      add lr, sp, #8
0089ea5c  04 e0 8d e5                                      str lr, [sp, #4]
0089ea60  bc c0 cd e1                                      strh ip, [sp, #0xc]
0089ea64  01 80 a0 e1                                      mov r8, r1
0089ea68  50 c0 e9 eb                                      bl #0x30ebb0
0089ea6c  00 60 50 e2                                      subs r6, r0, #0
0089ea70  1a 00 00 da                                      ble #0x89eae0
0089ea74  10 00 9d e5                                      ldr r0, [sp, #0x10]
0089ea78  63 be e9 eb                                      bl #0x30e40c
0089ea7c  26 fa ff eb                                      bl #0x89d31c
0089ea80  be 30 dd e1                                      ldrh r3, [sp, #0xe]
0089ea84  00 70 a0 e1                                      mov r7, r0
0089ea88  00 10 a0 e1                                      mov r1, r0
0089ea8c  23 24 a0 e1                                      lsr r2, r3, #8
0089ea90  03 24 82 e1                                      orr r2, r2, r3, lsl #8
0089ea94  78 00 9f e5                                      ldr r0, [pc, #0x78]
0089ea98  02 28 a0 e1                                      lsl r2, r2, #0x10
0089ea9c  06 30 a0 e1                                      mov r3, r6
0089eaa0  00 00 8f e0                                      add r0, pc, r0
0089eaa4  22 28 a0 e1                                      lsr r2, r2, #0x10
0089eaa8  00 80 8d e5                                      str r8, [sp]
0089eaac  14 f6 ff eb                                      bl #0x89c304
0089eab0  00 00 57 e3                                      cmp r7, #0
0089eab4  01 00 00 0a                                      beq #0x89eac0
0089eab8  07 00 a0 e1                                      mov r0, r7
0089eabc  7d bd e9 eb                                      bl #0x30e0b8
0089eac0  05 30 94 e7                                      ldr r3, [r4, r5]
0089eac4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0089eac8  06 00 a0 e1                                      mov r0, r6
0089eacc  00 30 93 e5                                      ldr r3, [r3]
0089ead0  03 00 52 e1                                      cmp r2, r3
0089ead4  0b 00 00 1a                                      bne #0x89eb08
0089ead8  20 d0 8d e2                                      add sp, sp, #0x20
0089eadc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0089eae0  f6 ff ff 0a                                      beq #0x89eac0
0089eae4  07 00 a0 e1                                      mov r0, r7
0089eae8  00 30 97 e5                                      ldr r3, [r7]
0089eaec  0f e0 a0 e1                                      mov lr, pc
0089eaf0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089eaf4  00 10 a0 e1                                      mov r1, r0
0089eaf8  18 00 9f e5                                      ldr r0, [pc, #0x18]
0089eafc  00 00 8f e0                                      add r0, pc, r0
0089eb00  ff f5 ff eb                                      bl #0x89c304
0089eb04  ed ff ff ea                                      b #0x89eac0
0089eb08  00 be e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089eb0c  80 60 0f 00 ac 40 00 00 20 62 07 00 f4 61 07 00  .byte 0x80, 0x60, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x62, 0x07, 0x00, 0xf4, 0x61, 0x07, 0x00

; FUNCTION 0x0089eb1c, declared_size=240, range_size=240, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket6SendToEPKciS1_i
; demangled: LCAndroidSocket::SendTo(char const*, int, char const*, int)
; decoder-mode: arm
0089eb1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089eb20  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0089eb24  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0089eb28  00 70 53 e2                                      subs r7, r3, #0
0089eb2c  04 40 8f e0                                      add r4, pc, r4
0089eb30  05 30 94 e7                                      ldr r3, [r4, r5]
0089eb34  24 d0 4d e2                                      sub sp, sp, #0x24
0089eb38  00 60 a0 e1                                      mov r6, r0
0089eb3c  00 30 93 e5                                      ldr r3, [r3]
0089eb40  01 80 a0 e1                                      mov r8, r1
0089eb44  02 b0 a0 e1                                      mov fp, r2
0089eb48  48 a0 9d e5                                      ldr sl, [sp, #0x48]
0089eb4c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0089eb50  07 60 a0 01                                      moveq r6, r7
0089eb54  20 00 00 0a                                      beq #0x89ebdc
0089eb58  00 90 a0 e3                                      mov sb, #0
0089eb5c  10 30 8d e2                                      add r3, sp, #0x10
0089eb60  04 90 83 e4                                      str sb, [r3], #4
0089eb64  04 90 83 e4                                      str sb, [r3], #4
0089eb68  00 90 83 e5                                      str sb, [r3]
0089eb6c  07 00 a0 e1                                      mov r0, r7
0089eb70  02 30 a0 e3                                      mov r3, #2
0089eb74  0c 90 8d e5                                      str sb, [sp, #0xc]
0089eb78  bc 30 cd e1                                      strh r3, [sp, #0xc]
0089eb7c  ec bd e9 eb                                      bl #0x30e334
0089eb80  0a 38 a0 e1                                      lsl r3, sl, #0x10
0089eb84  08 10 96 e5                                      ldr r1, [r6, #8]
0089eb88  23 cc a0 e1                                      lsr ip, r3, #0x18
0089eb8c  23 c4 8c e1                                      orr ip, ip, r3, lsr #8
0089eb90  be c0 cd e1                                      strh ip, [sp, #0xe]
0089eb94  0c c0 8d e2                                      add ip, sp, #0xc
0089eb98  10 00 8d e5                                      str r0, [sp, #0x10]
0089eb9c  0b 20 a0 e1                                      mov r2, fp
0089eba0  09 30 a0 e1                                      mov r3, sb
0089eba4  01 00 a0 e1                                      mov r0, r1
0089eba8  00 c0 8d e5                                      str ip, [sp]
0089ebac  08 10 a0 e1                                      mov r1, r8
0089ebb0  10 c0 a0 e3                                      mov ip, #0x10
0089ebb4  04 c0 8d e5                                      str ip, [sp, #4]
0089ebb8  a5 bf e9 eb                                      bl #0x30ea54
0089ebbc  00 60 a0 e1                                      mov r6, r0
0089ebc0  40 00 9f e5                                      ldr r0, [pc, #0x40]
0089ebc4  07 10 a0 e1                                      mov r1, r7
0089ebc8  0a 20 a0 e1                                      mov r2, sl
0089ebcc  00 00 8f e0                                      add r0, pc, r0
0089ebd0  06 30 a0 e1                                      mov r3, r6
0089ebd4  00 80 8d e5                                      str r8, [sp]
0089ebd8  c9 f5 ff eb                                      bl #0x89c304
0089ebdc  05 30 94 e7                                      ldr r3, [r4, r5]
0089ebe0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0089ebe4  06 00 a0 e1                                      mov r0, r6
0089ebe8  00 30 93 e5                                      ldr r3, [r3]
0089ebec  03 00 52 e1                                      cmp r2, r3
0089ebf0  01 00 00 1a                                      bne #0x89ebfc
0089ebf4  24 d0 8d e2                                      add sp, sp, #0x24
0089ebf8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089ebfc  c3 bd e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089ec00  64 5f 0f 00 ac 40 00 00 54 61 07 00              .byte 0x64, 0x5f, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x61, 0x07, 0x00

; FUNCTION 0x0089ec0c, declared_size=52, range_size=52, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket15CreateUdpSocketEv
; demangled: LCAndroidSocket::CreateUdpSocket()
; decoder-mode: arm
0089ec0c  10 40 2d e9                                      push {r4, lr}
0089ec10  00 40 a0 e1                                      mov r4, r0
0089ec14  02 00 a0 e3                                      mov r0, #2
0089ec18  00 10 a0 e1                                      mov r1, r0
0089ec1c  11 20 a0 e3                                      mov r2, #0x11
0089ec20  9a bf e9 eb                                      bl #0x30ea90
0089ec24  00 00 50 e3                                      cmp r0, #0
0089ec28  02 30 a0 a3                                      movge r3, #2
0089ec2c  08 00 84 e5                                      str r0, [r4, #8]
0089ec30  20 38 84 a5                                      strge r3, [r4, #0x820]
0089ec34  00 00 a0 b3                                      movlt r0, #0
0089ec38  01 00 a0 a3                                      movge r0, #1
0089ec3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089ec40, declared_size=48, range_size=48, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket15CreateTcpSocketEv
; demangled: LCAndroidSocket::CreateTcpSocket()
; decoder-mode: arm
0089ec40  10 40 2d e9                                      push {r4, lr}
0089ec44  01 10 a0 e3                                      mov r1, #1
0089ec48  00 40 a0 e1                                      mov r4, r0
0089ec4c  06 20 a0 e3                                      mov r2, #6
0089ec50  02 00 a0 e3                                      mov r0, #2
0089ec54  8d bf e9 eb                                      bl #0x30ea90
0089ec58  00 00 50 e3                                      cmp r0, #0
0089ec5c  08 00 84 e5                                      str r0, [r4, #8]
0089ec60  01 00 a0 a3                                      movge r0, #1
0089ec64  00 00 a0 b3                                      movlt r0, #0
0089ec68  20 08 84 a5                                      strge r0, [r4, #0x820]
0089ec6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089ec70, declared_size=116, range_size=116, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket12CreateSocketEv
; demangled: LCAndroidSocket::CreateSocket()
; decoder-mode: arm
0089ec70  10 40 2d e9                                      push {r4, lr}
0089ec74  01 10 a0 e3                                      mov r1, #1
0089ec78  00 40 a0 e1                                      mov r4, r0
0089ec7c  00 20 a0 e3                                      mov r2, #0
0089ec80  02 00 a0 e3                                      mov r0, #2
0089ec84  81 bf e9 eb                                      bl #0x30ea90
0089ec88  00 00 50 e3                                      cmp r0, #0
0089ec8c  08 00 84 e5                                      str r0, [r4, #8]
0089ec90  05 00 00 ba                                      blt #0x89ecac
0089ec94  00 10 a0 e1                                      mov r1, r0
0089ec98  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0089ec9c  00 00 8f e0                                      add r0, pc, r0
0089eca0  97 f5 ff eb                                      bl #0x89c304
0089eca4  01 00 a0 e3                                      mov r0, #1
0089eca8  10 80 bd e8                                      pop {r4, pc}
0089ecac  00 30 94 e5                                      ldr r3, [r4]
0089ecb0  04 00 a0 e1                                      mov r0, r4
0089ecb4  0f e0 a0 e1                                      mov lr, pc
0089ecb8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089ecbc  00 10 a0 e1                                      mov r1, r0
0089ecc0  18 00 9f e5                                      ldr r0, [pc, #0x18]
0089ecc4  00 00 8f e0                                      add r0, pc, r0
0089ecc8  8d f5 ff eb                                      bl #0x89c304
0089eccc  07 30 a0 e3                                      mov r3, #7
0089ecd0  04 30 84 e5                                      str r3, [r4, #4]
0089ecd4  00 00 a0 e3                                      mov r0, #0
0089ecd8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089ecdc  dc 60 07 00 8c 60 07 00                          .byte 0xdc, 0x60, 0x07, 0x00, 0x8c, 0x60, 0x07, 0x00

; FUNCTION 0x0089ece4, declared_size=280, range_size=280, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket4BindEPct
; demangled: LCAndroidSocket::Bind(char*, unsigned short)
; decoder-mode: arm
0089ece4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089ece8  04 61 9f e5                                      ldr r6, [pc, #0x104]
0089ecec  04 91 9f e5                                      ldr sb, [pc, #0x104]
0089ecf0  20 d0 4d e2                                      sub sp, sp, #0x20
0089ecf4  06 60 8f e0                                      add r6, pc, r6
0089ecf8  09 e0 96 e7                                      ldr lr, [r6, sb]
0089ecfc  0c 50 8d e2                                      add r5, sp, #0xc
0089ed00  00 c0 a0 e3                                      mov ip, #0
0089ed04  00 e0 9e e5                                      ldr lr, [lr]
0089ed08  04 30 85 e2                                      add r3, r5, #4
0089ed0c  00 00 51 e3                                      cmp r1, #0
0089ed10  1c e0 8d e5                                      str lr, [sp, #0x1c]
0089ed14  04 c0 83 e4                                      str ip, [r3], #4
0089ed18  04 c0 83 e4                                      str ip, [r3], #4
0089ed1c  00 c0 83 e5                                      str ip, [r3]
0089ed20  02 30 a0 e3                                      mov r3, #2
0089ed24  0c c0 8d e5                                      str ip, [sp, #0xc]
0089ed28  00 40 a0 e1                                      mov r4, r0
0089ed2c  02 70 a0 e1                                      mov r7, r2
0089ed30  bc 30 cd e1                                      strh r3, [sp, #0xc]
0089ed34  10 10 8d 05                                      streq r1, [sp, #0x10]
0089ed38  01 00 00 0a                                      beq #0x89ed44
0089ed3c  01 00 a0 e1                                      mov r0, r1
0089ed40  7b bd e9 eb                                      bl #0x30e334
0089ed44  27 c4 a0 e1                                      lsr ip, r7, #8
0089ed48  01 10 a0 e3                                      mov r1, #1
0089ed4c  20 30 8d e2                                      add r3, sp, #0x20
0089ed50  07 c4 8c e1                                      orr ip, ip, r7, lsl #8
0089ed54  08 00 94 e5                                      ldr r0, [r4, #8]
0089ed58  02 20 a0 e3                                      mov r2, #2
0089ed5c  18 10 23 e5                                      str r1, [r3, #-0x18]!
0089ed60  be c0 cd e1                                      strh ip, [sp, #0xe]
0089ed64  04 c0 a0 e3                                      mov ip, #4
0089ed68  00 c0 8d e5                                      str ip, [sp]
0089ed6c  41 bf e9 eb                                      bl #0x30ea78
0089ed70  08 00 94 e5                                      ldr r0, [r4, #8]
0089ed74  05 10 a0 e1                                      mov r1, r5
0089ed78  10 20 a0 e3                                      mov r2, #0x10
0089ed7c  3a bf e9 eb                                      bl #0x30ea6c
0089ed80  00 00 50 e3                                      cmp r0, #0
0089ed84  00 a0 a0 a3                                      movge sl, #0
0089ed88  10 00 00 aa                                      bge #0x89edd0
0089ed8c  01 80 87 e2                                      add r8, r7, #1
0089ed90  08 88 a0 e1                                      lsl r8, r8, #0x10
0089ed94  00 a0 a0 e3                                      mov sl, #0
0089ed98  28 88 a0 e1                                      lsr r8, r8, #0x10
0089ed9c  28 34 a0 e1                                      lsr r3, r8, #8
0089eda0  08 34 83 e1                                      orr r3, r3, r8, lsl #8
0089eda4  08 00 94 e5                                      ldr r0, [r4, #8]
0089eda8  05 10 a0 e1                                      mov r1, r5
0089edac  10 20 a0 e3                                      mov r2, #0x10
0089edb0  be 30 cd e1                                      strh r3, [sp, #0xe]
0089edb4  2c bf e9 eb                                      bl #0x30ea6c
0089edb8  01 80 88 e2                                      add r8, r8, #1
0089edbc  08 88 a0 e1                                      lsl r8, r8, #0x10
0089edc0  00 00 50 e3                                      cmp r0, #0
0089edc4  01 a0 8a e2                                      add sl, sl, #1
0089edc8  28 88 a0 e1                                      lsr r8, r8, #0x10
0089edcc  f2 ff ff ba                                      blt #0x89ed9c
0089edd0  09 30 96 e7                                      ldr r3, [r6, sb]
0089edd4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0089edd8  07 00 8a e0                                      add r0, sl, r7
0089eddc  00 30 93 e5                                      ldr r3, [r3]
0089ede0  03 00 52 e1                                      cmp r2, r3
0089ede4  01 00 00 1a                                      bne #0x89edf0
0089ede8  20 d0 8d e2                                      add sp, sp, #0x20
0089edec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0089edf0  46 bd e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089edf4  9c 5d 0f 00 ac 40 00 00                          .byte 0x9c, 0x5d, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0089edfc, declared_size=80, range_size=80, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket4RecvEPci
; demangled: LCAndroidSocket::Recv(char*, int)
; decoder-mode: arm
0089edfc  70 40 2d e9                                      push {r4, r5, r6, lr}
0089ee00  00 30 a0 e3                                      mov r3, #0
0089ee04  08 00 90 e5                                      ldr r0, [r0, #8]
0089ee08  01 50 a0 e1                                      mov r5, r1
0089ee0c  75 bd e9 eb                                      bl #0x30e3e8
0089ee10  00 40 a0 e1                                      mov r4, r0
0089ee14  63 f9 ff eb                                      bl #0x89d3a8
0089ee18  f9 3e a0 e3                                      mov r3, #0xf90
0089ee1c  0b 30 83 e2                                      add r3, r3, #0xb
0089ee20  03 00 54 e1                                      cmp r4, r3
0089ee24  05 00 00 8a                                      bhi #0x89ee40
0089ee28  00 10 a0 e1                                      mov r1, r0
0089ee2c  14 00 9f e5                                      ldr r0, [pc, #0x14]
0089ee30  05 30 a0 e1                                      mov r3, r5
0089ee34  04 20 a0 e1                                      mov r2, r4
0089ee38  00 00 8f e0                                      add r0, pc, r0
0089ee3c  30 f5 ff eb                                      bl #0x89c304
0089ee40  04 00 a0 e1                                      mov r0, r4
0089ee44  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0089ee48  68 5f 07 00                                      .byte 0x68, 0x5f, 0x07, 0x00

; FUNCTION 0x0089ee4c, declared_size=240, range_size=240, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket4SendEPci
; demangled: LCAndroidSocket::Send(char*, int)
; decoder-mode: arm
0089ee4c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089ee50  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0089ee54  d4 60 9f e5                                      ldr r6, [pc, #0xd4]
0089ee58  01 da 4d e2                                      sub sp, sp, #0x1000
0089ee5c  04 40 8f e0                                      add r4, pc, r4
0089ee60  06 30 94 e7                                      ldr r3, [r4, r6]
0089ee64  08 d0 4d e2                                      sub sp, sp, #8
0089ee68  01 70 a0 e1                                      mov r7, r1
0089ee6c  00 30 93 e5                                      ldr r3, [r3]
0089ee70  01 1a 8d e2                                      add r1, sp, #0x1000
0089ee74  00 50 a0 e1                                      mov r5, r0
0089ee78  04 30 81 e5                                      str r3, [r1, #4]
0089ee7c  02 80 a0 e1                                      mov r8, r2
0089ee80  48 f9 ff eb                                      bl #0x89d3a8
0089ee84  00 90 a0 e1                                      mov sb, r0
0089ee88  07 10 a0 e1                                      mov r1, r7
0089ee8c  08 00 95 e5                                      ldr r0, [r5, #8]
0089ee90  08 20 a0 e1                                      mov r2, r8
0089ee94  00 30 a0 e3                                      mov r3, #0
0089ee98  ec bc e9 eb                                      bl #0x30e250
0089ee9c  01 0a 50 e3                                      cmp r0, #0x1000
0089eea0  00 50 a0 e1                                      mov r5, r0
0089eea4  0e 00 00 ba                                      blt #0x89eee4
0089eea8  00 20 a0 e1                                      mov r2, r0
0089eeac  80 00 9f e5                                      ldr r0, [pc, #0x80]
0089eeb0  09 10 a0 e1                                      mov r1, sb
0089eeb4  00 00 8f e0                                      add r0, pc, r0
0089eeb8  11 f5 ff eb                                      bl #0x89c304
0089eebc  06 30 94 e7                                      ldr r3, [r4, r6]
0089eec0  01 1a 8d e2                                      add r1, sp, #0x1000
0089eec4  04 20 91 e5                                      ldr r2, [r1, #4]
0089eec8  00 30 93 e5                                      ldr r3, [r3]
0089eecc  05 00 a0 e1                                      mov r0, r5
0089eed0  03 00 52 e1                                      cmp r2, r3
0089eed4  13 00 00 1a                                      bne #0x89ef28
0089eed8  08 d0 8d e2                                      add sp, sp, #8
0089eedc  01 da 8d e2                                      add sp, sp, #0x1000
0089eee0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0089eee4  08 a0 8d e2                                      add sl, sp, #8
0089eee8  04 a0 4a e2                                      sub sl, sl, #4
0089eeec  0a 00 a0 e1                                      mov r0, sl
0089eef0  00 10 a0 e3                                      mov r1, #0
0089eef4  01 2a a0 e3                                      mov r2, #0x1000
0089eef8  00 f8 ff eb                                      bl #0x89cf00
0089eefc  07 10 a0 e1                                      mov r1, r7
0089ef00  08 20 a0 e1                                      mov r2, r8
0089ef04  0a 00 a0 e1                                      mov r0, sl
0089ef08  f7 f7 ff eb                                      bl #0x89ceec
0089ef0c  24 00 9f e5                                      ldr r0, [pc, #0x24]
0089ef10  09 10 a0 e1                                      mov r1, sb
0089ef14  0a 30 a0 e1                                      mov r3, sl
0089ef18  00 00 8f e0                                      add r0, pc, r0
0089ef1c  05 20 a0 e1                                      mov r2, r5
0089ef20  f7 f4 ff eb                                      bl #0x89c304
0089ef24  e4 ff ff ea                                      b #0x89eebc
0089ef28  f8 bc e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089ef2c  34 5c 0f 00 ac 40 00 00 44 5f 07 00 b0 5e 07 00  .byte 0x34, 0x5c, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x5f, 0x07, 0x00, 0xb0, 0x5e, 0x07, 0x00

; FUNCTION 0x0089ef3c, declared_size=200, range_size=200, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket6SelectEN15LCXPlayerSocket17XSocketSelectFlagE
; demangled: LCAndroidSocket::Select(LCXPlayerSocket::XSocketSelectFlag)
; decoder-mode: arm
0089ef3c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0089ef40  08 30 90 e5                                      ldr r3, [r0, #8]
0089ef44  00 50 a0 e3                                      mov r5, #0
0089ef48  14 d0 4d e2                                      sub sp, sp, #0x14
0089ef4c  05 00 53 e1                                      cmp r3, r5
0089ef50  00 40 a0 e1                                      mov r4, r0
0089ef54  01 60 a0 e1                                      mov r6, r1
0089ef58  08 50 8d e5                                      str r5, [sp, #8]
0089ef5c  0c 50 8d e5                                      str r5, [sp, #0xc]
0089ef60  12 00 00 ba                                      blt #0x89efb0
0089ef64  86 7e 80 e2                                      add r7, r0, #0x860
0089ef68  08 70 87 e2                                      add r7, r7, #8
0089ef6c  05 10 a0 e1                                      mov r1, r5
0089ef70  80 20 a0 e3                                      mov r2, #0x80
0089ef74  07 00 a0 e1                                      mov r0, r7
0089ef78  38 bd e9 eb                                      bl #0x30e460
0089ef7c  08 20 94 e5                                      ldr r2, [r4, #8]
0089ef80  01 00 a0 e3                                      mov r0, #1
0089ef84  00 00 56 e3                                      cmp r6, #0
0089ef88  c2 32 a0 e1                                      asr r3, r2, #5
0089ef8c  86 3f 83 e2                                      add r3, r3, #0x218
0089ef90  02 30 83 e2                                      add r3, r3, #2
0089ef94  03 11 94 e7                                      ldr r1, [r4, r3, lsl #2]
0089ef98  1f 20 02 e2                                      and r2, r2, #0x1f
0089ef9c  10 22 81 e1                                      orr r2, r1, r0, lsl r2
0089efa0  03 21 84 e7                                      str r2, [r4, r3, lsl #2]
0089efa4  04 00 00 0a                                      beq #0x89efbc
0089efa8  01 00 56 e3                                      cmp r6, #1
0089efac  0b 00 00 0a                                      beq #0x89efe0
0089efb0  00 00 e0 e3                                      mvn r0, #0
0089efb4  14 d0 8d e2                                      add sp, sp, #0x14
0089efb8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0089efbc  08 00 94 e5                                      ldr r0, [r4, #8]
0089efc0  08 c0 8d e2                                      add ip, sp, #8
0089efc4  06 20 a0 e1                                      mov r2, r6
0089efc8  07 10 a0 e1                                      mov r1, r7
0089efcc  06 30 a0 e1                                      mov r3, r6
0089efd0  01 00 80 e2                                      add r0, r0, #1
0089efd4  00 c0 8d e5                                      str ip, [sp]
0089efd8  a3 bb e9 eb                                      bl #0x30de6c
0089efdc  f4 ff ff ea                                      b #0x89efb4
0089efe0  08 00 94 e5                                      ldr r0, [r4, #8]
0089efe4  08 c0 8d e2                                      add ip, sp, #8
0089efe8  05 10 a0 e1                                      mov r1, r5
0089efec  07 20 a0 e1                                      mov r2, r7
0089eff0  05 30 a0 e1                                      mov r3, r5
0089eff4  01 00 80 e2                                      add r0, r0, #1
0089eff8  00 c0 8d e5                                      str ip, [sp]
0089effc  9a bb e9 eb                                      bl #0x30de6c
0089f000  eb ff ff ea                                      b #0x89efb4

; FUNCTION 0x0089f004, declared_size=80, range_size=80, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket11CloseSocketEv
; demangled: LCAndroidSocket::CloseSocket()
; decoder-mode: arm
0089f004  10 40 2d e9                                      push {r4, lr}
0089f008  00 40 a0 e1                                      mov r4, r0
0089f00c  08 10 90 e5                                      ldr r1, [r0, #8]
0089f010  34 00 9f e5                                      ldr r0, [pc, #0x34]
0089f014  00 00 8f e0                                      add r0, pc, r0
0089f018  b9 f4 ff eb                                      bl #0x89c304
0089f01c  08 10 94 e5                                      ldr r1, [r4, #8]
0089f020  00 00 51 e3                                      cmp r1, #0
0089f024  06 00 00 ba                                      blt #0x89f044
0089f028  20 00 9f e5                                      ldr r0, [pc, #0x20]
0089f02c  00 00 8f e0                                      add r0, pc, r0
0089f030  b3 f4 ff eb                                      bl #0x89c304
0089f034  08 00 94 e5                                      ldr r0, [r4, #8]
0089f038  d3 be e9 eb                                      bl #0x30eb8c
0089f03c  00 30 e0 e3                                      mvn r3, #0
0089f040  08 30 84 e5                                      str r3, [r4, #8]
0089f044  01 00 a0 e3                                      mov r0, #1
0089f048  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089f04c  0c 5e 07 00 fc fa 06 00                          .byte 0x0c, 0x5e, 0x07, 0x00, 0xfc, 0xfa, 0x06, 0x00

; FUNCTION 0x0089f054, declared_size=572, range_size=572, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket9ConnectToEPci
; demangled: LCAndroidSocket::ConnectTo(char*, int)
; decoder-mode: arm
0089f054  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089f058  20 42 9f e5                                      ldr r4, [pc, #0x220]
0089f05c  20 72 9f e5                                      ldr r7, [pc, #0x220]
0089f060  58 68 90 e5                                      ldr r6, [r0, #0x858]
0089f064  04 40 8f e0                                      add r4, pc, r4
0089f068  07 30 94 e7                                      ldr r3, [r4, r7]
0089f06c  28 d0 4d e2                                      sub sp, sp, #0x28
0089f070  00 00 56 e3                                      cmp r6, #0
0089f074  00 30 93 e5                                      ldr r3, [r3]
0089f078  00 50 a0 e1                                      mov r5, r0
0089f07c  01 a0 a0 e1                                      mov sl, r1
0089f080  02 80 a0 e1                                      mov r8, r2
0089f084  24 30 8d e5                                      str r3, [sp, #0x24]
0089f088  09 00 00 0a                                      beq #0x89f0b4
0089f08c  01 00 56 e3                                      cmp r6, #1
0089f090  25 00 00 0a                                      beq #0x89f12c
0089f094  00 00 a0 e3                                      mov r0, #0
0089f098  07 30 94 e7                                      ldr r3, [r4, r7]
0089f09c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0089f0a0  00 30 93 e5                                      ldr r3, [r3]
0089f0a4  03 00 52 e1                                      cmp r2, r3
0089f0a8  73 00 00 1a                                      bne #0x89f27c
0089f0ac  28 d0 8d e2                                      add sp, sp, #0x28
0089f0b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0089f0b4  14 90 8d e2                                      add sb, sp, #0x14
0089f0b8  06 10 a0 e1                                      mov r1, r6
0089f0bc  10 20 a0 e3                                      mov r2, #0x10
0089f0c0  09 00 a0 e1                                      mov r0, sb
0089f0c4  8d f7 ff eb                                      bl #0x89cf00
0089f0c8  02 30 a0 e3                                      mov r3, #2
0089f0cc  0a 00 a0 e1                                      mov r0, sl
0089f0d0  b4 31 cd e1                                      strh r3, [sp, #0x14]
0089f0d4  96 bc e9 eb                                      bl #0x30e334
0089f0d8  08 88 a0 e1                                      lsl r8, r8, #0x10
0089f0dc  18 00 8d e5                                      str r0, [sp, #0x18]
0089f0e0  28 3c a0 e1                                      lsr r3, r8, #0x18
0089f0e4  28 84 83 e1                                      orr r8, r3, r8, lsr #8
0089f0e8  b6 81 cd e1                                      strh r8, [sp, #0x16]
0089f0ec  00 30 95 e5                                      ldr r3, [r5]
0089f0f0  05 00 a0 e1                                      mov r0, r5
0089f0f4  0f e0 a0 e1                                      mov lr, pc
0089f0f8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0089f0fc  00 a0 50 e2                                      subs sl, r0, #0
0089f100  2e 00 00 0a                                      beq #0x89f1c0
0089f104  09 10 a0 e1                                      mov r1, sb
0089f108  08 00 95 e5                                      ldr r0, [r5, #8]
0089f10c  10 20 a0 e3                                      mov r2, #0x10
0089f110  3d bb e9 eb                                      bl #0x30de0c
0089f114  00 00 50 e3                                      cmp r0, #0
0089f118  3f 00 00 ba                                      blt #0x89f21c
0089f11c  01 30 a0 e3                                      mov r3, #1
0089f120  58 38 85 e5                                      str r3, [r5, #0x858]
0089f124  00 00 a0 e3                                      mov r0, #0
0089f128  da ff ff ea                                      b #0x89f098
0089f12c  00 30 90 e5                                      ldr r3, [r0]
0089f130  06 10 a0 e1                                      mov r1, r6
0089f134  0f e0 a0 e1                                      mov lr, pc
0089f138  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0089f13c  00 00 50 e3                                      cmp r0, #0
0089f140  2b 00 00 ba                                      blt #0x89f1f4
0089f144  d2 ff ff 0a                                      beq #0x89f094
0089f148  04 80 a0 e3                                      mov r8, #4
0089f14c  08 00 95 e5                                      ldr r0, [r5, #8]
0089f150  0c c0 8d e2                                      add ip, sp, #0xc
0089f154  06 10 a0 e1                                      mov r1, r6
0089f158  08 20 a0 e1                                      mov r2, r8
0089f15c  10 30 8d e2                                      add r3, sp, #0x10
0089f160  00 c0 8d e5                                      str ip, [sp]
0089f164  0c 80 8d e5                                      str r8, [sp, #0xc]
0089f168  8c bc e9 eb                                      bl #0x30e3a0
0089f16c  00 00 50 e3                                      cmp r0, #0
0089f170  1f 00 00 ba                                      blt #0x89f1f4
0089f174  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0089f178  00 00 5a e3                                      cmp sl, #0
0089f17c  1c 00 00 1a                                      bne #0x89f1f4
0089f180  08 00 95 e5                                      ldr r0, [r5, #8]
0089f184  03 10 a0 e3                                      mov r1, #3
0089f188  0a 20 a0 e1                                      mov r2, sl
0089f18c  f3 bb e9 eb                                      bl #0x30e160
0089f190  00 00 50 e3                                      cmp r0, #0
0089f194  0c 00 00 ba                                      blt #0x89f1cc
0089f198  02 2b c0 e3                                      bic r2, r0, #0x800
0089f19c  08 10 a0 e1                                      mov r1, r8
0089f1a0  08 00 95 e5                                      ldr r0, [r5, #8]
0089f1a4  ed bb e9 eb                                      bl #0x30e160
0089f1a8  00 00 50 e3                                      cmp r0, #0
0089f1ac  02 30 a0 a3                                      movge r3, #2
0089f1b0  58 38 85 a5                                      strge r3, [r5, #0x858]
0089f1b4  06 00 a0 a1                                      movge r0, r6
0089f1b8  b6 ff ff aa                                      bge #0x89f098
0089f1bc  02 00 00 ea                                      b #0x89f1cc
0089f1c0  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
0089f1c4  00 00 8f e0                                      add r0, pc, r0
0089f1c8  4d f4 ff eb                                      bl #0x89c304
0089f1cc  00 30 95 e5                                      ldr r3, [r5]
0089f1d0  05 00 a0 e1                                      mov r0, r5
0089f1d4  0f e0 a0 e1                                      mov lr, pc
0089f1d8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f1dc  03 30 a0 e3                                      mov r3, #3
0089f1e0  58 38 85 e5                                      str r3, [r5, #0x858]
0089f1e4  07 30 a0 e3                                      mov r3, #7
0089f1e8  04 30 85 e5                                      str r3, [r5, #4]
0089f1ec  0a 00 a0 e1                                      mov r0, sl
0089f1f0  a8 ff ff ea                                      b #0x89f098
0089f1f4  00 30 95 e5                                      ldr r3, [r5]
0089f1f8  05 00 a0 e1                                      mov r0, r5
0089f1fc  0f e0 a0 e1                                      mov lr, pc
0089f200  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f204  03 30 a0 e3                                      mov r3, #3
0089f208  58 38 85 e5                                      str r3, [r5, #0x858]
0089f20c  07 30 a0 e3                                      mov r3, #7
0089f210  04 30 85 e5                                      str r3, [r5, #4]
0089f214  00 00 a0 e3                                      mov r0, #0
0089f218  9e ff ff ea                                      b #0x89f098
0089f21c  00 30 95 e5                                      ldr r3, [r5]
0089f220  05 00 a0 e1                                      mov r0, r5
0089f224  0f e0 a0 e1                                      mov lr, pc
0089f228  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f22c  73 00 50 e3                                      cmp r0, #0x73
0089f230  b9 ff ff 0a                                      beq #0x89f11c
0089f234  00 30 95 e5                                      ldr r3, [r5]
0089f238  05 00 a0 e1                                      mov r0, r5
0089f23c  0f e0 a0 e1                                      mov lr, pc
0089f240  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f244  00 10 a0 e1                                      mov r1, r0
0089f248  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0089f24c  00 00 8f e0                                      add r0, pc, r0
0089f250  2b f4 ff eb                                      bl #0x89c304
0089f254  00 30 95 e5                                      ldr r3, [r5]
0089f258  05 00 a0 e1                                      mov r0, r5
0089f25c  0f e0 a0 e1                                      mov lr, pc
0089f260  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f264  03 30 a0 e3                                      mov r3, #3
0089f268  58 38 85 e5                                      str r3, [r5, #0x858]
0089f26c  07 30 a0 e3                                      mov r3, #7
0089f270  04 30 85 e5                                      str r3, [r5, #4]
0089f274  06 00 a0 e1                                      mov r0, r6
0089f278  86 ff ff ea                                      b #0x89f098
0089f27c  23 bc e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089f280  2c 5a 0f 00 ac 40 00 00 84 5c 07 00 3c 5c 07 00  .byte 0x2c, 0x5a, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x5c, 0x07, 0x00, 0x3c, 0x5c, 0x07, 0x00

; FUNCTION 0x0089f290, declared_size=620, range_size=620, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket7ConnectEv
; demangled: LCAndroidSocket::Connect()
; decoder-mode: arm
0089f290  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0089f294  50 42 9f e5                                      ldr r4, [pc, #0x250]
0089f298  50 72 9f e5                                      ldr r7, [pc, #0x250]
0089f29c  58 68 90 e5                                      ldr r6, [r0, #0x858]
0089f2a0  04 40 8f e0                                      add r4, pc, r4
0089f2a4  07 30 94 e7                                      ldr r3, [r4, r7]
0089f2a8  2c d0 4d e2                                      sub sp, sp, #0x2c
0089f2ac  00 00 56 e3                                      cmp r6, #0
0089f2b0  00 30 93 e5                                      ldr r3, [r3]
0089f2b4  00 50 a0 e1                                      mov r5, r0
0089f2b8  24 30 8d e5                                      str r3, [sp, #0x24]
0089f2bc  09 00 00 0a                                      beq #0x89f2e8
0089f2c0  01 00 56 e3                                      cmp r6, #1
0089f2c4  2b 00 00 0a                                      beq #0x89f378
0089f2c8  00 00 a0 e3                                      mov r0, #0
0089f2cc  07 30 94 e7                                      ldr r3, [r4, r7]
0089f2d0  24 20 9d e5                                      ldr r2, [sp, #0x24]
0089f2d4  00 30 93 e5                                      ldr r3, [r3]
0089f2d8  03 00 52 e1                                      cmp r2, r3
0089f2dc  81 00 00 1a                                      bne #0x89f4e8
0089f2e0  2c d0 8d e2                                      add sp, sp, #0x2c
0089f2e4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0089f2e8  14 80 8d e2                                      add r8, sp, #0x14
0089f2ec  08 00 a0 e1                                      mov r0, r8
0089f2f0  06 10 a0 e1                                      mov r1, r6
0089f2f4  10 20 a0 e3                                      mov r2, #0x10
0089f2f8  00 f7 ff eb                                      bl #0x89cf00
0089f2fc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0089f300  02 30 a0 e3                                      mov r3, #2
0089f304  b4 31 cd e1                                      strh r3, [sp, #0x14]
0089f308  10 30 92 e5                                      ldr r3, [r2, #0x10]
0089f30c  04 00 88 e2                                      add r0, r8, #4
0089f310  0c 20 92 e5                                      ldr r2, [r2, #0xc]
0089f314  00 10 93 e5                                      ldr r1, [r3]
0089f318  f3 f6 ff eb                                      bl #0x89ceec
0089f31c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0089f320  00 30 95 e5                                      ldr r3, [r5]
0089f324  05 00 a0 e1                                      mov r0, r5
0089f328  02 28 a0 e1                                      lsl r2, r2, #0x10
0089f32c  22 1c a0 e1                                      lsr r1, r2, #0x18
0089f330  22 24 81 e1                                      orr r2, r1, r2, lsr #8
0089f334  b6 21 cd e1                                      strh r2, [sp, #0x16]
0089f338  0f e0 a0 e1                                      mov lr, pc
0089f33c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0089f340  00 a0 50 e2                                      subs sl, r0, #0
0089f344  30 00 00 0a                                      beq #0x89f40c
0089f348  08 10 a0 e1                                      mov r1, r8
0089f34c  08 00 95 e5                                      ldr r0, [r5, #8]
0089f350  10 20 a0 e3                                      mov r2, #0x10
0089f354  ac ba e9 eb                                      bl #0x30de0c
0089f358  00 00 50 e3                                      cmp r0, #0
0089f35c  37 00 00 ba                                      blt #0x89f440
0089f360  01 30 a0 e3                                      mov r3, #1
0089f364  58 38 85 e5                                      str r3, [r5, #0x858]
0089f368  0e f8 ff eb                                      bl #0x89d3a8
0089f36c  60 08 85 e5                                      str r0, [r5, #0x860]
0089f370  00 00 a0 e3                                      mov r0, #0
0089f374  d4 ff ff ea                                      b #0x89f2cc
0089f378  00 30 90 e5                                      ldr r3, [r0]
0089f37c  06 10 a0 e1                                      mov r1, r6
0089f380  0f e0 a0 e1                                      mov lr, pc
0089f384  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0089f388  00 a0 50 e2                                      subs sl, r0, #0
0089f38c  43 00 00 ba                                      blt #0x89f4a0
0089f390  4c 00 00 0a                                      beq #0x89f4c8
0089f394  04 80 a0 e3                                      mov r8, #4
0089f398  08 00 95 e5                                      ldr r0, [r5, #8]
0089f39c  0c c0 8d e2                                      add ip, sp, #0xc
0089f3a0  06 10 a0 e1                                      mov r1, r6
0089f3a4  08 20 a0 e1                                      mov r2, r8
0089f3a8  10 30 8d e2                                      add r3, sp, #0x10
0089f3ac  00 c0 8d e5                                      str ip, [sp]
0089f3b0  0c 80 8d e5                                      str r8, [sp, #0xc]
0089f3b4  f9 bb e9 eb                                      bl #0x30e3a0
0089f3b8  00 00 50 e3                                      cmp r0, #0
0089f3bc  37 00 00 ba                                      blt #0x89f4a0
0089f3c0  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0089f3c4  00 00 5a e3                                      cmp sl, #0
0089f3c8  34 00 00 1a                                      bne #0x89f4a0
0089f3cc  08 00 95 e5                                      ldr r0, [r5, #8]
0089f3d0  03 10 a0 e3                                      mov r1, #3
0089f3d4  0a 20 a0 e1                                      mov r2, sl
0089f3d8  60 bb e9 eb                                      bl #0x30e160
0089f3dc  00 00 50 e3                                      cmp r0, #0
0089f3e0  0c 00 00 ba                                      blt #0x89f418
0089f3e4  02 2b c0 e3                                      bic r2, r0, #0x800
0089f3e8  08 10 a0 e1                                      mov r1, r8
0089f3ec  08 00 95 e5                                      ldr r0, [r5, #8]
0089f3f0  5a bb e9 eb                                      bl #0x30e160
0089f3f4  00 00 50 e3                                      cmp r0, #0
0089f3f8  02 30 a0 a3                                      movge r3, #2
0089f3fc  58 38 85 a5                                      strge r3, [r5, #0x858]
0089f400  06 00 a0 a1                                      movge r0, r6
0089f404  b0 ff ff aa                                      bge #0x89f2cc
0089f408  02 00 00 ea                                      b #0x89f418
0089f40c  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
0089f410  00 00 8f e0                                      add r0, pc, r0
0089f414  ba f3 ff eb                                      bl #0x89c304
0089f418  00 30 95 e5                                      ldr r3, [r5]
0089f41c  05 00 a0 e1                                      mov r0, r5
0089f420  0f e0 a0 e1                                      mov lr, pc
0089f424  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f428  03 30 a0 e3                                      mov r3, #3
0089f42c  58 38 85 e5                                      str r3, [r5, #0x858]
0089f430  07 30 a0 e3                                      mov r3, #7
0089f434  04 30 85 e5                                      str r3, [r5, #4]
0089f438  0a 00 a0 e1                                      mov r0, sl
0089f43c  a2 ff ff ea                                      b #0x89f2cc
0089f440  00 30 95 e5                                      ldr r3, [r5]
0089f444  05 00 a0 e1                                      mov r0, r5
0089f448  0f e0 a0 e1                                      mov lr, pc
0089f44c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f450  73 00 50 e3                                      cmp r0, #0x73
0089f454  c1 ff ff 0a                                      beq #0x89f360
0089f458  00 30 95 e5                                      ldr r3, [r5]
0089f45c  05 00 a0 e1                                      mov r0, r5
0089f460  0f e0 a0 e1                                      mov lr, pc
0089f464  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f468  00 10 a0 e1                                      mov r1, r0
0089f46c  84 00 9f e5                                      ldr r0, [pc, #0x84]
0089f470  00 00 8f e0                                      add r0, pc, r0
0089f474  a2 f3 ff eb                                      bl #0x89c304
0089f478  00 30 95 e5                                      ldr r3, [r5]
0089f47c  05 00 a0 e1                                      mov r0, r5
0089f480  0f e0 a0 e1                                      mov lr, pc
0089f484  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f488  03 30 a0 e3                                      mov r3, #3
0089f48c  58 38 85 e5                                      str r3, [r5, #0x858]
0089f490  07 30 a0 e3                                      mov r3, #7
0089f494  04 30 85 e5                                      str r3, [r5, #4]
0089f498  06 00 a0 e1                                      mov r0, r6
0089f49c  8a ff ff ea                                      b #0x89f2cc
0089f4a0  00 30 95 e5                                      ldr r3, [r5]
0089f4a4  05 00 a0 e1                                      mov r0, r5
0089f4a8  0f e0 a0 e1                                      mov lr, pc
0089f4ac  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f4b0  03 30 a0 e3                                      mov r3, #3
0089f4b4  58 38 85 e5                                      str r3, [r5, #0x858]
0089f4b8  07 30 a0 e3                                      mov r3, #7
0089f4bc  04 30 85 e5                                      str r3, [r5, #4]
0089f4c0  00 00 a0 e3                                      mov r0, #0
0089f4c4  80 ff ff ea                                      b #0x89f2cc
0089f4c8  b6 f7 ff eb                                      bl #0x89d3a8
0089f4cc  60 28 95 e5                                      ldr r2, [r5, #0x860]
0089f4d0  75 3c a0 e3                                      mov r3, #0x7500
0089f4d4  30 30 83 e2                                      add r3, r3, #0x30
0089f4d8  00 20 62 e0                                      rsb r2, r2, r0
0089f4dc  03 00 52 e1                                      cmp r2, r3
0089f4e0  78 ff ff 9a                                      bls #0x89f2c8
0089f4e4  cb ff ff ea                                      b #0x89f418
0089f4e8  88 bb e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089f4ec  f0 57 0f 00 ac 40 00 00 a0 5a 07 00 18 5a 07 00  .byte 0xf0, 0x57, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0x5a, 0x07, 0x00, 0x18, 0x5a, 0x07, 0x00

; FUNCTION 0x0089f4fc, declared_size=716, range_size=716, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket13ConnectByNameEPc
; demangled: LCAndroidSocket::ConnectByName(char*)
; decoder-mode: arm
0089f4fc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0089f500  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
0089f504  ac 72 9f e5                                      ldr r7, [pc, #0x2ac]
0089f508  58 68 90 e5                                      ldr r6, [r0, #0x858]
0089f50c  04 40 8f e0                                      add r4, pc, r4
0089f510  07 30 94 e7                                      ldr r3, [r4, r7]
0089f514  2c d0 4d e2                                      sub sp, sp, #0x2c
0089f518  00 00 56 e3                                      cmp r6, #0
0089f51c  00 30 93 e5                                      ldr r3, [r3]
0089f520  00 50 a0 e1                                      mov r5, r0
0089f524  24 30 8d e5                                      str r3, [sp, #0x24]
0089f528  09 00 00 0a                                      beq #0x89f554
0089f52c  01 00 56 e3                                      cmp r6, #1
0089f530  32 00 00 0a                                      beq #0x89f600
0089f534  00 00 a0 e3                                      mov r0, #0
0089f538  07 30 94 e7                                      ldr r3, [r4, r7]
0089f53c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0089f540  00 30 93 e5                                      ldr r3, [r3]
0089f544  03 00 52 e1                                      cmp r2, r3
0089f548  98 00 00 1a                                      bne #0x89f7b0
0089f54c  2c d0 8d e2                                      add sp, sp, #0x2c
0089f550  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0089f554  00 30 90 e5                                      ldr r3, [r0]
0089f558  0f e0 a0 e1                                      mov lr, pc
0089f55c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0089f560  00 00 50 e3                                      cmp r0, #0
0089f564  00 a0 a0 e1                                      mov sl, r0
0089f568  0c 00 85 e5                                      str r0, [r5, #0xc]
0089f56c  77 00 00 0a                                      beq #0x89f750
0089f570  14 80 8d e2                                      add r8, sp, #0x14
0089f574  08 00 a0 e1                                      mov r0, r8
0089f578  06 10 a0 e1                                      mov r1, r6
0089f57c  10 20 a0 e3                                      mov r2, #0x10
0089f580  5e f6 ff eb                                      bl #0x89cf00
0089f584  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0089f588  02 30 a0 e3                                      mov r3, #2
0089f58c  b4 31 cd e1                                      strh r3, [sp, #0x14]
0089f590  10 30 92 e5                                      ldr r3, [r2, #0x10]
0089f594  04 00 88 e2                                      add r0, r8, #4
0089f598  0c 20 92 e5                                      ldr r2, [r2, #0xc]
0089f59c  00 10 93 e5                                      ldr r1, [r3]
0089f5a0  51 f6 ff eb                                      bl #0x89ceec
0089f5a4  10 20 95 e5                                      ldr r2, [r5, #0x10]
0089f5a8  00 30 95 e5                                      ldr r3, [r5]
0089f5ac  05 00 a0 e1                                      mov r0, r5
0089f5b0  02 28 a0 e1                                      lsl r2, r2, #0x10
0089f5b4  22 1c a0 e1                                      lsr r1, r2, #0x18
0089f5b8  22 24 81 e1                                      orr r2, r1, r2, lsr #8
0089f5bc  b6 21 cd e1                                      strh r2, [sp, #0x16]
0089f5c0  0f e0 a0 e1                                      mov lr, pc
0089f5c4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0089f5c8  00 a0 50 e2                                      subs sl, r0, #0
0089f5cc  30 00 00 0a                                      beq #0x89f694
0089f5d0  08 10 a0 e1                                      mov r1, r8
0089f5d4  08 00 95 e5                                      ldr r0, [r5, #8]
0089f5d8  10 20 a0 e3                                      mov r2, #0x10
0089f5dc  0a ba e9 eb                                      bl #0x30de0c
0089f5e0  00 00 50 e3                                      cmp r0, #0
0089f5e4  37 00 00 ba                                      blt #0x89f6c8
0089f5e8  01 30 a0 e3                                      mov r3, #1
0089f5ec  58 38 85 e5                                      str r3, [r5, #0x858]
0089f5f0  6c f7 ff eb                                      bl #0x89d3a8
0089f5f4  60 08 85 e5                                      str r0, [r5, #0x860]
0089f5f8  00 00 a0 e3                                      mov r0, #0
0089f5fc  cd ff ff ea                                      b #0x89f538
0089f600  00 30 90 e5                                      ldr r3, [r0]
0089f604  06 10 a0 e1                                      mov r1, r6
0089f608  0f e0 a0 e1                                      mov lr, pc
0089f60c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0089f610  00 a0 50 e2                                      subs sl, r0, #0
0089f614  43 00 00 ba                                      blt #0x89f728
0089f618  5c 00 00 0a                                      beq #0x89f790
0089f61c  04 80 a0 e3                                      mov r8, #4
0089f620  08 00 95 e5                                      ldr r0, [r5, #8]
0089f624  0c c0 8d e2                                      add ip, sp, #0xc
0089f628  06 10 a0 e1                                      mov r1, r6
0089f62c  08 20 a0 e1                                      mov r2, r8
0089f630  10 30 8d e2                                      add r3, sp, #0x10
0089f634  00 c0 8d e5                                      str ip, [sp]
0089f638  0c 80 8d e5                                      str r8, [sp, #0xc]
0089f63c  57 bb e9 eb                                      bl #0x30e3a0
0089f640  00 00 50 e3                                      cmp r0, #0
0089f644  37 00 00 ba                                      blt #0x89f728
0089f648  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0089f64c  00 00 5a e3                                      cmp sl, #0
0089f650  34 00 00 1a                                      bne #0x89f728
0089f654  08 00 95 e5                                      ldr r0, [r5, #8]
0089f658  03 10 a0 e3                                      mov r1, #3
0089f65c  0a 20 a0 e1                                      mov r2, sl
0089f660  be ba e9 eb                                      bl #0x30e160
0089f664  00 00 50 e3                                      cmp r0, #0
0089f668  0c 00 00 ba                                      blt #0x89f6a0
0089f66c  02 2b c0 e3                                      bic r2, r0, #0x800
0089f670  08 10 a0 e1                                      mov r1, r8
0089f674  08 00 95 e5                                      ldr r0, [r5, #8]
0089f678  b8 ba e9 eb                                      bl #0x30e160
0089f67c  00 00 50 e3                                      cmp r0, #0
0089f680  02 30 a0 a3                                      movge r3, #2
0089f684  58 38 85 a5                                      strge r3, [r5, #0x858]
0089f688  06 00 a0 a1                                      movge r0, r6
0089f68c  a9 ff ff aa                                      bge #0x89f538
0089f690  02 00 00 ea                                      b #0x89f6a0
0089f694  20 01 9f e5                                      ldr r0, [pc, #0x120]
0089f698  00 00 8f e0                                      add r0, pc, r0
0089f69c  18 f3 ff eb                                      bl #0x89c304
0089f6a0  00 30 95 e5                                      ldr r3, [r5]
0089f6a4  05 00 a0 e1                                      mov r0, r5
0089f6a8  0f e0 a0 e1                                      mov lr, pc
0089f6ac  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f6b0  03 30 a0 e3                                      mov r3, #3
0089f6b4  58 38 85 e5                                      str r3, [r5, #0x858]
0089f6b8  07 30 a0 e3                                      mov r3, #7
0089f6bc  04 30 85 e5                                      str r3, [r5, #4]
0089f6c0  0a 00 a0 e1                                      mov r0, sl
0089f6c4  9b ff ff ea                                      b #0x89f538
0089f6c8  00 30 95 e5                                      ldr r3, [r5]
0089f6cc  05 00 a0 e1                                      mov r0, r5
0089f6d0  0f e0 a0 e1                                      mov lr, pc
0089f6d4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f6d8  73 00 50 e3                                      cmp r0, #0x73
0089f6dc  c1 ff ff 0a                                      beq #0x89f5e8
0089f6e0  00 30 95 e5                                      ldr r3, [r5]
0089f6e4  05 00 a0 e1                                      mov r0, r5
0089f6e8  0f e0 a0 e1                                      mov lr, pc
0089f6ec  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f6f0  00 10 a0 e1                                      mov r1, r0
0089f6f4  c4 00 9f e5                                      ldr r0, [pc, #0xc4]
0089f6f8  00 00 8f e0                                      add r0, pc, r0
0089f6fc  00 f3 ff eb                                      bl #0x89c304
0089f700  00 30 95 e5                                      ldr r3, [r5]
0089f704  05 00 a0 e1                                      mov r0, r5
0089f708  0f e0 a0 e1                                      mov lr, pc
0089f70c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f710  03 30 a0 e3                                      mov r3, #3
0089f714  58 38 85 e5                                      str r3, [r5, #0x858]
0089f718  07 30 a0 e3                                      mov r3, #7
0089f71c  04 30 85 e5                                      str r3, [r5, #4]
0089f720  06 00 a0 e1                                      mov r0, r6
0089f724  83 ff ff ea                                      b #0x89f538
0089f728  00 30 95 e5                                      ldr r3, [r5]
0089f72c  05 00 a0 e1                                      mov r0, r5
0089f730  0f e0 a0 e1                                      mov lr, pc
0089f734  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f738  03 30 a0 e3                                      mov r3, #3
0089f73c  58 38 85 e5                                      str r3, [r5, #0x858]
0089f740  07 30 a0 e3                                      mov r3, #7
0089f744  04 30 85 e5                                      str r3, [r5, #4]
0089f748  00 00 a0 e3                                      mov r0, #0
0089f74c  79 ff ff ea                                      b #0x89f538
0089f750  14 f7 ff eb                                      bl #0x89d3a8
0089f754  64 28 95 e5                                      ldr r2, [r5, #0x864]
0089f758  27 3c a0 e3                                      mov r3, #0x2700
0089f75c  0f 30 83 e2                                      add r3, r3, #0xf
0089f760  00 20 62 e0                                      rsb r2, r2, r0
0089f764  03 00 52 e1                                      cmp r2, r3
0089f768  71 ff ff 9a                                      bls #0x89f534
0089f76c  00 30 95 e5                                      ldr r3, [r5]
0089f770  05 00 a0 e1                                      mov r0, r5
0089f774  0f e0 a0 e1                                      mov lr, pc
0089f778  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f77c  00 10 a0 e1                                      mov r1, r0
0089f780  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0089f784  00 00 8f e0                                      add r0, pc, r0
0089f788  dd f2 ff eb                                      bl #0x89c304
0089f78c  c3 ff ff ea                                      b #0x89f6a0
0089f790  04 f7 ff eb                                      bl #0x89d3a8
0089f794  60 28 95 e5                                      ldr r2, [r5, #0x860]
0089f798  75 3c a0 e3                                      mov r3, #0x7500
0089f79c  30 30 83 e2                                      add r3, r3, #0x30
0089f7a0  00 20 62 e0                                      rsb r2, r2, r0
0089f7a4  03 00 52 e1                                      cmp r2, r3
0089f7a8  61 ff ff 9a                                      bls #0x89f534
0089f7ac  bb ff ff ea                                      b #0x89f6a0
0089f7b0  d6 ba e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089f7b4  84 55 0f 00 ac 40 00 00 98 58 07 00 90 58 07 00  .byte 0x84, 0x55, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x58, 0x07, 0x00, 0x90, 0x58, 0x07, 0x00
0089f7c4  6c 57 07 00                                      .byte 0x6c, 0x57, 0x07, 0x00

; FUNCTION 0x0089f7c8, declared_size=200, range_size=200, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket14SetNonBlockingEv
; demangled: LCAndroidSocket::SetNonBlocking()
; decoder-mode: arm
0089f7c8  10 40 2d e9                                      push {r4, lr}
0089f7cc  03 10 a0 e3                                      mov r1, #3
0089f7d0  00 40 a0 e1                                      mov r4, r0
0089f7d4  00 20 a0 e3                                      mov r2, #0
0089f7d8  08 00 90 e5                                      ldr r0, [r0, #8]
0089f7dc  5f ba e9 eb                                      bl #0x30e160
0089f7e0  00 00 50 e3                                      cmp r0, #0
0089f7e4  07 00 00 ba                                      blt #0x89f808
0089f7e8  02 2b 80 e3                                      orr r2, r0, #0x800
0089f7ec  04 10 a0 e3                                      mov r1, #4
0089f7f0  08 00 94 e5                                      ldr r0, [r4, #8]
0089f7f4  59 ba e9 eb                                      bl #0x30e160
0089f7f8  00 00 50 e3                                      cmp r0, #0
0089f7fc  11 00 00 ba                                      blt #0x89f848
0089f800  01 00 a0 e3                                      mov r0, #1
0089f804  10 80 bd e8                                      pop {r4, pc}
0089f808  00 30 94 e5                                      ldr r3, [r4]
0089f80c  04 00 a0 e1                                      mov r0, r4
0089f810  0f e0 a0 e1                                      mov lr, pc
0089f814  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f818  00 10 a0 e1                                      mov r1, r0
0089f81c  64 00 9f e5                                      ldr r0, [pc, #0x64]
0089f820  00 00 8f e0                                      add r0, pc, r0
0089f824  b6 f2 ff eb                                      bl #0x89c304
0089f828  00 30 94 e5                                      ldr r3, [r4]
0089f82c  04 00 a0 e1                                      mov r0, r4
0089f830  0f e0 a0 e1                                      mov lr, pc
0089f834  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f838  07 30 a0 e3                                      mov r3, #7
0089f83c  04 30 84 e5                                      str r3, [r4, #4]
0089f840  00 00 a0 e3                                      mov r0, #0
0089f844  10 80 bd e8                                      pop {r4, pc}
0089f848  00 30 94 e5                                      ldr r3, [r4]
0089f84c  04 00 a0 e1                                      mov r0, r4
0089f850  0f e0 a0 e1                                      mov lr, pc
0089f854  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0089f858  00 10 a0 e1                                      mov r1, r0
0089f85c  28 00 9f e5                                      ldr r0, [pc, #0x28]
0089f860  00 00 8f e0                                      add r0, pc, r0
0089f864  a6 f2 ff eb                                      bl #0x89c304
0089f868  00 30 94 e5                                      ldr r3, [r4]
0089f86c  04 00 a0 e1                                      mov r0, r4
0089f870  0f e0 a0 e1                                      mov lr, pc
0089f874  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0089f878  07 30 a0 e3                                      mov r3, #7
0089f87c  04 30 84 e5                                      str r3, [r4, #4]
0089f880  00 00 a0 e3                                      mov r0, #0
0089f884  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089f888  a0 57 07 00 60 57 07 00                          .byte 0xa0, 0x57, 0x07, 0x00, 0x60, 0x57, 0x07, 0x00

; FUNCTION 0x0089f890, declared_size=16, range_size=16, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket12GetLastErrorEv
; demangled: LCAndroidSocket::GetLastError()
; decoder-mode: arm
0089f890  10 40 2d e9                                      push {r4, lr}
0089f894  4d b9 e9 eb                                      bl #0x30ddd0
0089f898  00 00 90 e5                                      ldr r0, [r0]
0089f89c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089f9a0, declared_size=356, range_size=356, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket9GetHostIPEPc
; demangled: LCAndroidSocket::GetHostIP(char*)
; decoder-mode: arm
0089f9a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089f9a4  40 71 9f e5                                      ldr r7, [pc, #0x140]
0089f9a8  00 40 a0 e1                                      mov r4, r0
0089f9ac  3c 01 9f e5                                      ldr r0, [pc, #0x13c]
0089f9b0  3c 81 9f e5                                      ldr r8, [pc, #0x13c]
0089f9b4  07 70 8f e0                                      add r7, pc, r7
0089f9b8  00 00 8f e0                                      add r0, pc, r0
0089f9bc  50 f2 ff eb                                      bl #0x89c304
0089f9c0  08 30 97 e7                                      ldr r3, [r7, r8]
0089f9c4  00 30 93 e5                                      ldr r3, [r3]
0089f9c8  00 00 53 e3                                      cmp r3, #0
0089f9cc  14 00 00 da                                      ble #0x89fa24
0089f9d0  20 31 9f e5                                      ldr r3, [pc, #0x120]
0089f9d4  00 50 a0 e3                                      mov r5, #0
0089f9d8  03 60 97 e7                                      ldr r6, [r7, r3]
0089f9dc  04 00 00 ea                                      b #0x89f9f4
0089f9e0  08 30 97 e7                                      ldr r3, [r7, r8]
0089f9e4  01 50 85 e2                                      add r5, r5, #1
0089f9e8  00 30 93 e5                                      ldr r3, [r3]
0089f9ec  05 00 53 e1                                      cmp r3, r5
0089f9f0  0b 00 00 da                                      ble #0x89fa24
0089f9f4  05 31 96 e7                                      ldr r3, [r6, r5, lsl #2]
0089f9f8  04 00 a0 e1                                      mov r0, r4
0089f9fc  00 10 93 e5                                      ldr r1, [r3]
0089fa00  38 f5 ff eb                                      bl #0x89cee8
0089fa04  00 00 50 e3                                      cmp r0, #0
0089fa08  f4 ff ff 1a                                      bne #0x89f9e0
0089fa0c  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
0089fa10  04 10 a0 e1                                      mov r1, r4
0089fa14  00 00 8f e0                                      add r0, pc, r0
0089fa18  39 f2 ff eb                                      bl #0x89c304
0089fa1c  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0089fa20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0089fa24  04 00 a0 e1                                      mov r0, r4
0089fa28  54 b9 e9 eb                                      bl #0x30df80
0089fa2c  00 60 50 e2                                      subs r6, r0, #0
0089fa30  03 00 00 0a                                      beq #0x89fa44
0089fa34  08 50 97 e7                                      ldr r5, [r7, r8]
0089fa38  00 80 95 e5                                      ldr r8, [r5]
0089fa3c  03 00 58 e3                                      cmp r8, #3
0089fa40  01 00 00 da                                      ble #0x89fa4c
0089fa44  06 00 a0 e1                                      mov r0, r6
0089fa48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0089fa4c  14 00 a0 e3                                      mov r0, #0x14
0089fa50  8d bb e9 eb                                      bl #0x30e88c
0089fa54  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0089fa58  00 30 95 e5                                      ldr r3, [r5]
0089fa5c  00 10 a0 e3                                      mov r1, #0
0089fa60  02 70 97 e7                                      ldr r7, [r7, r2]
0089fa64  14 20 a0 e3                                      mov r2, #0x14
0089fa68  08 01 87 e7                                      str r0, [r7, r8, lsl #2]
0089fa6c  03 01 97 e7                                      ldr r0, [r7, r3, lsl #2]
0089fa70  22 f5 ff eb                                      bl #0x89cf00
0089fa74  00 30 95 e5                                      ldr r3, [r5]
0089fa78  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0089fa7c  04 00 a0 e1                                      mov r0, r4
0089fa80  03 31 97 e7                                      ldr r3, [r7, r3, lsl #2]
0089fa84  0c 20 83 e5                                      str r2, [r3, #0xc]
0089fa88  00 30 95 e5                                      ldr r3, [r5]
0089fa8c  03 81 97 e7                                      ldr r8, [r7, r3, lsl #2]
0089fa90  21 f6 ff eb                                      bl #0x89d31c
0089fa94  00 00 88 e5                                      str r0, [r8]
0089fa98  00 30 95 e5                                      ldr r3, [r5]
0089fa9c  04 00 a0 e3                                      mov r0, #4
0089faa0  03 81 97 e7                                      ldr r8, [r7, r3, lsl #2]
0089faa4  89 b9 e9 eb                                      bl #0x30e0d0
0089faa8  10 00 88 e5                                      str r0, [r8, #0x10]
0089faac  00 30 95 e5                                      ldr r3, [r5]
0089fab0  10 20 96 e5                                      ldr r2, [r6, #0x10]
0089fab4  03 31 97 e7                                      ldr r3, [r7, r3, lsl #2]
0089fab8  00 00 92 e5                                      ldr r0, [r2]
0089fabc  10 70 93 e5                                      ldr r7, [r3, #0x10]
0089fac0  15 f6 ff eb                                      bl #0x89d31c
0089fac4  00 00 87 e5                                      str r0, [r7]
0089fac8  00 30 95 e5                                      ldr r3, [r5]
0089facc  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
0089fad0  04 10 a0 e1                                      mov r1, r4
0089fad4  01 30 83 e2                                      add r3, r3, #1
0089fad8  00 00 8f e0                                      add r0, pc, r0
0089fadc  00 30 85 e5                                      str r3, [r5]
0089fae0  07 f2 ff eb                                      bl #0x89c304
0089fae4  06 00 a0 e1                                      mov r0, r6
0089fae8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0089faec  dc 50 0f 00 38 56 07 00 4c 13 00 00 1c 3f 00 00  .byte 0xdc, 0x50, 0x0f, 0x00, 0x38, 0x56, 0x07, 0x00, 0x4c, 0x13, 0x00, 0x00, 0x1c, 0x3f, 0x00, 0x00
0089fafc  54 f3 06 00 70 f2 06 00                          .byte 0x54, 0xf3, 0x06, 0x00, 0x70, 0xf2, 0x06, 0x00

; FUNCTION 0x0089fb04, declared_size=280, range_size=280, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket13GetHostByNameEPc
; demangled: LCAndroidSocket::GetHostByName(char*)
; decoder-mode: arm
0089fb04  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089fb08  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
0089fb0c  00 70 51 e2                                      subs r7, r1, #0
0089fb10  00 40 a0 e1                                      mov r4, r0
0089fb14  05 50 8f e0                                      add r5, pc, r5
0089fb18  1d 00 00 0a                                      beq #0x89fb94
0089fb1c  07 00 a0 e1                                      mov r0, r7
0089fb20  5c f4 ff eb                                      bl #0x89cc98
0089fb24  01 0b 50 e3                                      cmp r0, #0x400
0089fb28  19 00 00 ca                                      bgt #0x89fb94
0089fb2c  d8 a0 9f e5                                      ldr sl, [pc, #0xd8]
0089fb30  0a 30 95 e7                                      ldr r3, [r5, sl]
0089fb34  00 30 93 e5                                      ldr r3, [r3]
0089fb38  00 00 53 e3                                      cmp r3, #0
0089fb3c  11 00 00 da                                      ble #0x89fb88
0089fb40  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
0089fb44  00 60 a0 e3                                      mov r6, #0
0089fb48  03 80 95 e7                                      ldr r8, [r5, r3]
0089fb4c  06 31 98 e7                                      ldr r3, [r8, r6, lsl #2]
0089fb50  07 00 a0 e1                                      mov r0, r7
0089fb54  00 00 53 e3                                      cmp r3, #0
0089fb58  05 00 00 0a                                      beq #0x89fb74
0089fb5c  00 30 93 e5                                      ldr r3, [r3]
0089fb60  00 10 53 e2                                      subs r1, r3, #0
0089fb64  02 00 00 0a                                      beq #0x89fb74
0089fb68  de f4 ff eb                                      bl #0x89cee8
0089fb6c  00 00 50 e3                                      cmp r0, #0
0089fb70  09 00 00 0a                                      beq #0x89fb9c
0089fb74  0a 30 95 e7                                      ldr r3, [r5, sl]
0089fb78  01 60 86 e2                                      add r6, r6, #1
0089fb7c  00 30 93 e5                                      ldr r3, [r3]
0089fb80  06 00 53 e1                                      cmp r3, r6
0089fb84  f0 ff ff ca                                      bgt #0x89fb4c
0089fb88  5c 68 94 e5                                      ldr r6, [r4, #0x85c]
0089fb8c  00 00 56 e3                                      cmp r6, #0
0089fb90  07 00 00 0a                                      beq #0x89fbb4
0089fb94  00 00 a0 e3                                      mov r0, #0
0089fb98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0089fb9c  70 00 9f e5                                      ldr r0, [pc, #0x70]
0089fba0  07 10 a0 e1                                      mov r1, r7
0089fba4  00 00 8f e0                                      add r0, pc, r0
0089fba8  d5 f1 ff eb                                      bl #0x89c304
0089fbac  06 01 98 e7                                      ldr r0, [r8, r6, lsl #2]
0089fbb0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0089fbb4  fb f5 ff eb                                      bl #0x89d3a8
0089fbb8  85 3e 84 e2                                      add r3, r4, #0x850
0089fbbc  0c 30 83 e2                                      add r3, r3, #0xc
0089fbc0  64 08 84 e5                                      str r0, [r4, #0x864]
0089fbc4  ec 38 84 e5                                      str r3, [r4, #0x8ec]
0089fbc8  07 10 a0 e1                                      mov r1, r7
0089fbcc  01 2b a0 e3                                      mov r2, #0x400
0089fbd0  8f 0e 84 e2                                      add r0, r4, #0x8f0
0089fbd4  88 b9 e9 eb                                      bl #0x30e1fc
0089fbd8  38 30 9f e5                                      ldr r3, [pc, #0x38]
0089fbdc  8e 0e 84 e2                                      add r0, r4, #0x8e0
0089fbe0  06 10 a0 e1                                      mov r1, r6
0089fbe4  03 20 95 e7                                      ldr r2, [r5, r3]
0089fbe8  0c 30 80 e2                                      add r3, r0, #0xc
0089fbec  08 00 80 e2                                      add r0, r0, #8
0089fbf0  fa b8 e9 eb                                      bl #0x30dfe0
0089fbf4  00 00 50 e3                                      cmp r0, #0
0089fbf8  e5 ff ff 1a                                      bne #0x89fb94
0089fbfc  01 30 a0 e3                                      mov r3, #1
0089fc00  5c 38 84 e5                                      str r3, [r4, #0x85c]
0089fc04  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0089fc08  7c 4f 0f 00 4c 13 00 00 1c 3f 00 00 c4 f1 06 00  .byte 0x7c, 0x4f, 0x0f, 0x00, 0x4c, 0x13, 0x00, 0x00, 0x1c, 0x3f, 0x00, 0x00, 0xc4, 0xf1, 0x06, 0x00
0089fc18  14 38 00 00                                      .byte 0x14, 0x38, 0x00, 0x00

; FUNCTION 0x0089fc1c, declared_size=92, range_size=92, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket9TransToIpERPc
; demangled: LCAndroidSocket::TransToIp(char*&)
; decoder-mode: arm
0089fc1c  70 40 2d e9                                      push {r4, r5, r6, lr}
0089fc20  00 40 a0 e1                                      mov r4, r0
0089fc24  48 00 9f e5                                      ldr r0, [pc, #0x48]
0089fc28  00 00 8f e0                                      add r0, pc, r0
0089fc2c  b4 f1 ff eb                                      bl #0x89c304
0089fc30  00 00 94 e5                                      ldr r0, [r4]
0089fc34  59 ff ff eb                                      bl #0x89f9a0
0089fc38  00 50 a0 e1                                      mov r5, r0
0089fc3c  00 00 94 e5                                      ldr r0, [r4]
0089fc40  00 00 50 e3                                      cmp r0, #0
0089fc44  02 00 00 0a                                      beq #0x89fc54
0089fc48  98 b9 e9 eb                                      bl #0x30e2b0
0089fc4c  00 30 a0 e3                                      mov r3, #0
0089fc50  00 30 84 e5                                      str r3, [r4]
0089fc54  00 00 55 e3                                      cmp r5, #0
0089fc58  04 00 00 0a                                      beq #0x89fc70
0089fc5c  10 30 95 e5                                      ldr r3, [r5, #0x10]
0089fc60  00 30 93 e5                                      ldr r3, [r3]
0089fc64  00 00 93 e5                                      ldr r0, [r3]
0089fc68  e7 b9 e9 eb                                      bl #0x30e40c
0089fc6c  00 00 84 e5                                      str r0, [r4]
0089fc70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0089fc74  e8 53 07 00                                      .byte 0xe8, 0x53, 0x07, 0x00

; FUNCTION 0x0089fc78, declared_size=268, range_size=268, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket7ClearupEv
; demangled: LCAndroidSocket::Clearup()
; decoder-mode: arm
0089fc78  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089fc7c  f0 00 9f e5                                      ldr r0, [pc, #0xf0]
0089fc80  f0 60 9f e5                                      ldr r6, [pc, #0xf0]
0089fc84  f0 b0 9f e5                                      ldr fp, [pc, #0xf0]
0089fc88  00 00 8f e0                                      add r0, pc, r0
0089fc8c  06 60 8f e0                                      add r6, pc, r6
0089fc90  9b f1 ff eb                                      bl #0x89c304
0089fc94  0b 30 96 e7                                      ldr r3, [r6, fp]
0089fc98  00 30 93 e5                                      ldr r3, [r3]
0089fc9c  00 00 53 e3                                      cmp r3, #0
0089fca0  2f 00 00 da                                      ble #0x89fd64
0089fca4  d4 80 9f e5                                      ldr r8, [pc, #0xd4]
0089fca8  00 40 a0 e3                                      mov r4, #0
0089fcac  04 a0 a0 e1                                      mov sl, r4
0089fcb0  08 90 96 e7                                      ldr sb, [r6, r8]
0089fcb4  04 70 a0 e1                                      mov r7, r4
0089fcb8  09 30 94 e7                                      ldr r3, [r4, sb]
0089fcbc  01 a0 8a e2                                      add sl, sl, #1
0089fcc0  00 00 93 e5                                      ldr r0, [r3]
0089fcc4  00 00 50 e3                                      cmp r0, #0
0089fcc8  03 00 00 0a                                      beq #0x89fcdc
0089fccc  77 b9 e9 eb                                      bl #0x30e2b0
0089fcd0  09 30 94 e7                                      ldr r3, [r4, sb]
0089fcd4  00 70 83 e5                                      str r7, [r3]
0089fcd8  09 30 94 e7                                      ldr r3, [r4, sb]
0089fcdc  10 30 93 e5                                      ldr r3, [r3, #0x10]
0089fce0  00 00 93 e5                                      ldr r0, [r3]
0089fce4  00 00 50 e3                                      cmp r0, #0
0089fce8  06 00 00 0a                                      beq #0x89fd08
0089fcec  6f b9 e9 eb                                      bl #0x30e2b0
0089fcf0  08 30 96 e7                                      ldr r3, [r6, r8]
0089fcf4  03 20 94 e7                                      ldr r2, [r4, r3]
0089fcf8  10 20 92 e5                                      ldr r2, [r2, #0x10]
0089fcfc  00 70 82 e5                                      str r7, [r2]
0089fd00  03 30 94 e7                                      ldr r3, [r4, r3]
0089fd04  10 30 93 e5                                      ldr r3, [r3, #0x10]
0089fd08  08 50 96 e7                                      ldr r5, [r6, r8]
0089fd0c  00 70 83 e5                                      str r7, [r3]
0089fd10  05 30 94 e7                                      ldr r3, [r4, r5]
0089fd14  10 00 93 e5                                      ldr r0, [r3, #0x10]
0089fd18  00 00 50 e3                                      cmp r0, #0
0089fd1c  03 00 00 0a                                      beq #0x89fd30
0089fd20  62 b9 e9 eb                                      bl #0x30e2b0
0089fd24  05 30 94 e7                                      ldr r3, [r4, r5]
0089fd28  10 70 83 e5                                      str r7, [r3, #0x10]
0089fd2c  05 30 94 e7                                      ldr r3, [r4, r5]
0089fd30  00 00 53 e3                                      cmp r3, #0
0089fd34  03 00 00 0a                                      beq #0x89fd48
0089fd38  03 00 a0 e1                                      mov r0, r3
0089fd3c  5b b9 e9 eb                                      bl #0x30e2b0
0089fd40  08 30 96 e7                                      ldr r3, [r6, r8]
0089fd44  03 70 84 e7                                      str r7, [r4, r3]
0089fd48  0b 30 96 e7                                      ldr r3, [r6, fp]
0089fd4c  08 20 96 e7                                      ldr r2, [r6, r8]
0089fd50  00 30 93 e5                                      ldr r3, [r3]
0089fd54  02 70 84 e7                                      str r7, [r4, r2]
0089fd58  04 40 84 e2                                      add r4, r4, #4
0089fd5c  0a 00 53 e1                                      cmp r3, sl
0089fd60  d4 ff ff ca                                      bgt #0x89fcb8
0089fd64  0b 30 96 e7                                      ldr r3, [r6, fp]
0089fd68  00 20 a0 e3                                      mov r2, #0
0089fd6c  00 20 83 e5                                      str r2, [r3]
0089fd70  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0089fd74  a8 53 07 00 04 4e 0f 00 4c 13 00 00 1c 3f 00 00  .byte 0xa8, 0x53, 0x07, 0x00, 0x04, 0x4e, 0x0f, 0x00, 0x4c, 0x13, 0x00, 0x00, 0x1c, 0x3f, 0x00, 0x00

; FUNCTION 0x0089fd84, declared_size=360, range_size=360, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket10GetLocalIPEPc
; demangled: LCAndroidSocket::GetLocalIP(char*)
; decoder-mode: arm
0089fd84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089fd88  4c 71 9f e5                                      ldr r7, [pc, #0x14c]
0089fd8c  4c 91 9f e5                                      ldr sb, [pc, #0x14c]
0089fd90  4c 01 9f e5                                      ldr r0, [pc, #0x14c]
0089fd94  07 70 8f e0                                      add r7, pc, r7
0089fd98  09 30 97 e7                                      ldr r3, [r7, sb]
0089fd9c  fb de 4d e2                                      sub sp, sp, #0xfb0
0089fda0  0c d0 4d e2                                      sub sp, sp, #0xc
0089fda4  00 30 93 e5                                      ldr r3, [r3]
0089fda8  00 00 8f e0                                      add r0, pc, r0
0089fdac  00 10 8d e5                                      str r1, [sp]
0089fdb0  b4 3f 8d e5                                      str r3, [sp, #0xfb4]
0089fdb4  00 b0 a0 e3                                      mov fp, #0
0089fdb8  51 f1 ff eb                                      bl #0x89c304
0089fdbc  02 00 a0 e3                                      mov r0, #2
0089fdc0  18 40 8d e2                                      add r4, sp, #0x18
0089fdc4  fa 3e a0 e3                                      mov r3, #0xfa0
0089fdc8  04 50 44 e2                                      sub r5, r4, #4
0089fdcc  00 10 a0 e1                                      mov r1, r0
0089fdd0  0b 20 a0 e1                                      mov r2, fp
0089fdd4  0c 30 8d e5                                      str r3, [sp, #0xc]
0089fdd8  10 50 8d e5                                      str r5, [sp, #0x10]
0089fddc  2b bb e9 eb                                      bl #0x30ea90
0089fde0  01 00 70 e3                                      cmn r0, #1
0089fde4  00 a0 a0 e1                                      mov sl, r0
0089fde8  38 00 00 0a                                      beq #0x89fed0
0089fdec  89 1c a0 e3                                      mov r1, #0x8900
0089fdf0  12 10 81 e2                                      add r1, r1, #0x12
0089fdf4  0c 20 44 e2                                      sub r2, r4, #0xc
0089fdf8  f3 b8 e9 eb                                      bl #0x30e1cc
0089fdfc  0b 00 50 e1                                      cmp r0, fp
0089fe00  32 00 00 ba                                      blt #0x89fed0
0089fe04  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0089fe08  05 40 a0 e1                                      mov r4, r5
0089fe0c  03 30 8f e0                                      add r3, pc, r3
0089fe10  04 30 8d e5                                      str r3, [sp, #4]
0089fe14  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0089fe18  03 30 85 e0                                      add r3, r5, r3
0089fe1c  03 00 54 e1                                      cmp r4, r3
0089fe20  1f 00 00 2a                                      bhs #0x89fea4
0089fe24  14 00 94 e5                                      ldr r0, [r4, #0x14]
0089fe28  77 b9 e9 eb                                      bl #0x30e40c
0089fe2c  04 60 a0 e1                                      mov r6, r4
0089fe30  20 40 84 e2                                      add r4, r4, #0x20
0089fe34  b0 31 54 e1                                      ldrh r3, [r4, #-0x10]
0089fe38  00 80 a0 e1                                      mov r8, r0
0089fe3c  02 00 53 e3                                      cmp r3, #2
0089fe40  f3 ff ff 1a                                      bne #0x89fe14
0089fe44  3a 10 a0 e3                                      mov r1, #0x3a
0089fe48  01 20 a0 e3                                      mov r2, #1
0089fe4c  06 00 a0 e1                                      mov r0, r6
0089fe50  28 f1 ff eb                                      bl #0x89c2f8
0089fe54  00 00 50 e3                                      cmp r0, #0
0089fe58  0b 30 a0 11                                      movne r3, fp
0089fe5c  89 1c a0 e3                                      mov r1, #0x8900
0089fe60  00 30 c0 15                                      strbne r3, [r0]
0089fe64  13 10 81 e2                                      add r1, r1, #0x13
0089fe68  06 20 a0 e1                                      mov r2, r6
0089fe6c  0a 00 a0 e1                                      mov r0, sl
0089fe70  d5 b8 e9 eb                                      bl #0x30e1cc
0089fe74  b0 31 54 e1                                      ldrh r3, [r4, #-0x10]
0089fe78  01 00 13 e3                                      tst r3, #1
0089fe7c  e4 ff ff 0a                                      beq #0x89fe14
0089fe80  08 00 a0 e1                                      mov r0, r8
0089fe84  04 10 9d e5                                      ldr r1, [sp, #4]
0089fe88  16 f4 ff eb                                      bl #0x89cee8
0089fe8c  00 00 50 e3                                      cmp r0, #0
0089fe90  df ff ff 0a                                      beq #0x89fe14
0089fe94  08 10 a0 e1                                      mov r1, r8
0089fe98  00 00 9d e5                                      ldr r0, [sp]
0089fe9c  0e f4 ff eb                                      bl #0x89cedc
0089fea0  db ff ff ea                                      b #0x89fe14
0089fea4  0a 00 a0 e1                                      mov r0, sl
0089fea8  37 bb e9 eb                                      bl #0x30eb8c
0089feac  01 00 a0 e3                                      mov r0, #1
0089feb0  09 30 97 e7                                      ldr r3, [r7, sb]
0089feb4  b4 2f 9d e5                                      ldr r2, [sp, #0xfb4]
0089feb8  00 30 93 e5                                      ldr r3, [r3]
0089febc  03 00 52 e1                                      cmp r2, r3
0089fec0  04 00 00 1a                                      bne #0x89fed8
0089fec4  ef df 8d e2                                      add sp, sp, #0x3bc
0089fec8  03 db 8d e2                                      add sp, sp, #0xc00
0089fecc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089fed0  00 00 a0 e3                                      mov r0, #0
0089fed4  f5 ff ff ea                                      b #0x89feb0
0089fed8  0c b9 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089fedc  fc 4c 0f 00 ac 40 00 00 a8 52 07 00 a4 c5 06 00  .byte 0xfc, 0x4c, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x52, 0x07, 0x00, 0xa4, 0xc5, 0x06, 0x00

; FUNCTION 0x0089feec, declared_size=104, range_size=104, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket7StartupEv
; demangled: LCAndroidSocket::Startup()
; decoder-mode: arm
0089feec  10 40 2d e9                                      push {r4, lr}
0089fef0  50 00 9f e5                                      ldr r0, [pc, #0x50]
0089fef4  10 d0 4d e2                                      sub sp, sp, #0x10
0089fef8  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
0089fefc  00 00 8f e0                                      add r0, pc, r0
0089ff00  ff f0 ff eb                                      bl #0x89c304
0089ff04  44 30 9f e5                                      ldr r3, [pc, #0x44]
0089ff08  04 40 8f e0                                      add r4, pc, r4
0089ff0c  10 10 8d e2                                      add r1, sp, #0x10
0089ff10  03 c0 94 e7                                      ldr ip, [r4, r3]
0089ff14  01 30 a0 e3                                      mov r3, #1
0089ff18  10 30 21 e5                                      str r3, [r1, #-0x10]!
0089ff1c  00 30 a0 e3                                      mov r3, #0
0089ff20  0d 10 a0 e1                                      mov r1, sp
0089ff24  03 20 a0 e1                                      mov r2, r3
0089ff28  0c 30 8c e5                                      str r3, [ip, #0xc]
0089ff2c  00 30 8c e5                                      str r3, [ip]
0089ff30  04 30 8c e5                                      str r3, [ip, #4]
0089ff34  08 30 8c e5                                      str r3, [ip, #8]
0089ff38  0d 00 a0 e3                                      mov r0, #0xd
0089ff3c  79 ba e9 eb                                      bl #0x30e928
0089ff40  10 d0 8d e2                                      add sp, sp, #0x10
0089ff44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089ff48  74 51 07 00 88 4b 0f 00 1c 3f 00 00              .byte 0x74, 0x51, 0x07, 0x00, 0x88, 0x4b, 0x0f, 0x00, 0x1c, 0x3f, 0x00, 0x00

; FUNCTION 0x0089ff54, declared_size=88, range_size=88, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocketD1Ev
; demangled: LCAndroidSocket::~LCAndroidSocket()
; decoder-mode: arm
0089ff54  10 40 2d e9                                      push {r4, lr}
0089ff58  44 30 9f e5                                      ldr r3, [pc, #0x44]
0089ff5c  44 20 9f e5                                      ldr r2, [pc, #0x44]
0089ff60  5c 18 90 e5                                      ldr r1, [r0, #0x85c]
0089ff64  03 30 8f e0                                      add r3, pc, r3
0089ff68  02 20 93 e7                                      ldr r2, [r3, r2]
0089ff6c  00 00 51 e3                                      cmp r1, #0
0089ff70  00 40 a0 e1                                      mov r4, r0
0089ff74  08 20 82 e2                                      add r2, r2, #8
0089ff78  00 20 80 e5                                      str r2, [r0]
0089ff7c  02 00 00 0a                                      beq #0x89ff8c
0089ff80  e8 08 90 e5                                      ldr r0, [r0, #0x8e8]
0089ff84  00 10 a0 e3                                      mov r1, #0
0089ff88  44 bb e9 eb                                      bl #0x30eca0
0089ff8c  04 00 a0 e1                                      mov r0, r4
0089ff90  1b fc ff eb                                      bl #0x89f004
0089ff94  04 00 a0 e1                                      mov r0, r4
0089ff98  5f 01 00 eb                                      bl #0x8a051c
0089ff9c  04 00 a0 e1                                      mov r0, r4
0089ffa0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089ffa4  2c 4b 0f 00 78 2f 00 00                          .byte 0x2c, 0x4b, 0x0f, 0x00, 0x78, 0x2f, 0x00, 0x00

; FUNCTION 0x0089ffac, declared_size=28, range_size=28, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocketD0Ev
; demangled: LCAndroidSocket::~LCAndroidSocket()
; decoder-mode: arm
0089ffac  10 40 2d e9                                      push {r4, lr}
0089ffb0  00 40 a0 e1                                      mov r4, r0
0089ffb4  e6 ff ff eb                                      bl #0x89ff54
0089ffb8  04 00 a0 e1                                      mov r0, r4
0089ffbc  bb b8 e9 eb                                      bl #0x30e2b0
0089ffc0  04 00 a0 e1                                      mov r0, r4
0089ffc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089ffc8, declared_size=88, range_size=88, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocketD2Ev
; demangled: LCAndroidSocket::~LCAndroidSocket()
; decoder-mode: arm
0089ffc8  10 40 2d e9                                      push {r4, lr}
0089ffcc  44 30 9f e5                                      ldr r3, [pc, #0x44]
0089ffd0  44 20 9f e5                                      ldr r2, [pc, #0x44]
0089ffd4  5c 18 90 e5                                      ldr r1, [r0, #0x85c]
0089ffd8  03 30 8f e0                                      add r3, pc, r3
0089ffdc  02 20 93 e7                                      ldr r2, [r3, r2]
0089ffe0  00 00 51 e3                                      cmp r1, #0
0089ffe4  00 40 a0 e1                                      mov r4, r0
0089ffe8  08 20 82 e2                                      add r2, r2, #8
0089ffec  00 20 80 e5                                      str r2, [r0]
0089fff0  02 00 00 0a                                      beq #0x8a0000
0089fff4  e8 08 90 e5                                      ldr r0, [r0, #0x8e8]
0089fff8  00 10 a0 e3                                      mov r1, #0
0089fffc  27 bb e9 eb                                      bl #0x30eca0
008a0000  04 00 a0 e1                                      mov r0, r4
008a0004  fe fb ff eb                                      bl #0x89f004
008a0008  04 00 a0 e1                                      mov r0, r4
008a000c  42 01 00 eb                                      bl #0x8a051c
008a0010  04 00 a0 e1                                      mov r0, r4
008a0014  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008a0018  b8 4a 0f 00 78 2f 00 00                          .byte 0xb8, 0x4a, 0x0f, 0x00, 0x78, 0x2f, 0x00, 0x00

; FUNCTION 0x008a0020, declared_size=72, range_size=72, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocketC1EPciP23LCXPlayerSocketObserver
; demangled: LCAndroidSocket::LCAndroidSocket(char*, int, LCXPlayerSocketObserver*)
; decoder-mode: arm
008a0020  70 40 2d e9                                      push {r4, r5, r6, lr}
008a0024  30 40 9f e5                                      ldr r4, [pc, #0x30]
008a0028  00 50 a0 e1                                      mov r5, r0
008a002c  e2 00 00 eb                                      bl #0x8a03bc
008a0030  28 30 9f e5                                      ldr r3, [pc, #0x28]
008a0034  04 40 8f e0                                      add r4, pc, r4
008a0038  24 00 9f e5                                      ldr r0, [pc, #0x24]
008a003c  03 30 94 e7                                      ldr r3, [r4, r3]
008a0040  00 00 8f e0                                      add r0, pc, r0
008a0044  08 30 83 e2                                      add r3, r3, #8
008a0048  00 30 85 e5                                      str r3, [r5]
008a004c  ac f0 ff eb                                      bl #0x89c304
008a0050  a5 ff ff eb                                      bl #0x89feec
008a0054  05 00 a0 e1                                      mov r0, r5
008a0058  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a005c  5c 4a 0f 00 78 2f 00 00 50 50 07 00              .byte 0x5c, 0x4a, 0x0f, 0x00, 0x78, 0x2f, 0x00, 0x00, 0x50, 0x50, 0x07, 0x00

; FUNCTION 0x008a0068, declared_size=212, range_size=212, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocket6AcceptEv
; demangled: LCAndroidSocket::Accept()
; decoder-mode: arm
008a0068  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
008a006c  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
008a0070  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008a0074  03 30 8f e0                                      add r3, pc, r3
008a0078  02 50 93 e7                                      ldr r5, [r3, r2]
008a007c  18 d0 4d e2                                      sub sp, sp, #0x18
008a0080  10 20 a0 e3                                      mov r2, #0x10
008a0084  00 c0 95 e5                                      ldr ip, [r5]
008a0088  00 20 8d e5                                      str r2, [sp]
008a008c  02 20 a0 e3                                      mov r2, #2
008a0090  14 c0 8d e5                                      str ip, [sp, #0x14]
008a0094  b4 20 cd e1                                      strh r2, [sp, #4]
008a0098  04 10 8d e2                                      add r1, sp, #4
008a009c  0d 20 a0 e1                                      mov r2, sp
008a00a0  08 00 90 e5                                      ldr r0, [r0, #8]
008a00a4  00 bb e9 eb                                      bl #0x30ecac
008a00a8  00 70 a0 e1                                      mov r7, r0
008a00ac  08 00 9d e5                                      ldr r0, [sp, #8]
008a00b0  d5 b8 e9 eb                                      bl #0x30e40c
008a00b4  00 80 a0 e1                                      mov r8, r0
008a00b8  cf 0e a0 e3                                      mov r0, #0xcf0
008a00bc  b6 60 dd e1                                      ldrh r6, [sp, #6]
008a00c0  f1 b9 e9 eb                                      bl #0x30e88c
008a00c4  00 10 a0 e3                                      mov r1, #0
008a00c8  01 20 a0 e1                                      mov r2, r1
008a00cc  01 30 a0 e1                                      mov r3, r1
008a00d0  00 40 a0 e1                                      mov r4, r0
008a00d4  d1 ff ff eb                                      bl #0x8a0020
008a00d8  04 00 a0 e1                                      mov r0, r4
008a00dc  07 10 a0 e1                                      mov r1, r7
008a00e0  2d 00 00 eb                                      bl #0x8a019c
008a00e4  04 00 a0 e1                                      mov r0, r4
008a00e8  08 10 a0 e1                                      mov r1, r8
008a00ec  82 00 00 eb                                      bl #0x8a02fc
008a00f0  26 14 a0 e1                                      lsr r1, r6, #8
008a00f4  06 64 81 e1                                      orr r6, r1, r6, lsl #8
008a00f8  04 00 a0 e1                                      mov r0, r4
008a00fc  06 18 a0 e1                                      lsl r1, r6, #0x10
008a0100  21 18 a0 e1                                      lsr r1, r1, #0x10
008a0104  22 00 00 eb                                      bl #0x8a0194
008a0108  04 00 a0 e1                                      mov r0, r4
008a010c  01 10 a0 e3                                      mov r1, #1
008a0110  25 00 00 eb                                      bl #0x8a01ac
008a0114  14 20 9d e5                                      ldr r2, [sp, #0x14]
008a0118  00 30 95 e5                                      ldr r3, [r5]
008a011c  04 00 a0 e1                                      mov r0, r4
008a0120  03 00 52 e1                                      cmp r2, r3
008a0124  01 00 00 1a                                      bne #0x8a0130
008a0128  18 d0 8d e2                                      add sp, sp, #0x18
008a012c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008a0130  76 b8 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008a0134  1c 4a 0f 00 ac 40 00 00                          .byte 0x1c, 0x4a, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a013c, declared_size=72, range_size=72, mode=arm
; class-group: LCAndroidSocket
; alias: _ZN15LCAndroidSocketC2EPciP23LCXPlayerSocketObserver
; demangled: LCAndroidSocket::LCAndroidSocket(char*, int, LCXPlayerSocketObserver*)
; decoder-mode: arm
008a013c  70 40 2d e9                                      push {r4, r5, r6, lr}
008a0140  30 40 9f e5                                      ldr r4, [pc, #0x30]
008a0144  00 50 a0 e1                                      mov r5, r0
008a0148  9b 00 00 eb                                      bl #0x8a03bc
008a014c  28 30 9f e5                                      ldr r3, [pc, #0x28]
008a0150  04 40 8f e0                                      add r4, pc, r4
008a0154  24 00 9f e5                                      ldr r0, [pc, #0x24]
008a0158  03 30 94 e7                                      ldr r3, [r4, r3]
008a015c  00 00 8f e0                                      add r0, pc, r0
008a0160  08 30 83 e2                                      add r3, r3, #8
008a0164  00 30 85 e5                                      str r3, [r5]
008a0168  65 f0 ff eb                                      bl #0x89c304
008a016c  5e ff ff eb                                      bl #0x89feec
008a0170  05 00 a0 e1                                      mov r0, r5
008a0174  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a0178  40 49 0f 00 78 2f 00 00 34 4f 07 00              .byte 0x40, 0x49, 0x0f, 0x00, 0x78, 0x2f, 0x00, 0x00, 0x34, 0x4f, 0x07, 0x00
