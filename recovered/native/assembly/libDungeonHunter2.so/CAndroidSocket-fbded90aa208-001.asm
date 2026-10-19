; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00840880, declared_size=4, range_size=4, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket4InitEv
; demangled: CAndroidSocket::Init()
; decoder-mode: arm
00840880  1e ff 2f e1                                      bx lr

; FUNCTION 0x00840884, declared_size=40, range_size=40, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket12IsReadyForRWEv
; demangled: CAndroidSocket::IsReadyForRW()
; decoder-mode: arm
00840884  08 30 90 e5                                      ldr r3, [r0, #8]
00840888  01 10 a0 e3                                      mov r1, #1
0084088c  c3 22 a0 e1                                      asr r2, r3, #5
00840890  1f 30 03 e2                                      and r3, r3, #0x1f
00840894  02 01 80 e0                                      add r0, r0, r2, lsl #2
00840898  6c 28 90 e5                                      ldr r2, [r0, #0x86c]
0084089c  11 23 12 e0                                      ands r2, r2, r1, lsl r3
008408a0  00 00 a0 03                                      moveq r0, #0
008408a4  01 00 a0 13                                      movne r0, #1
008408a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008408ac, declared_size=244, range_size=244, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket13SendBroadcastEPKcii
; demangled: CAndroidSocket::SendBroadcast(char const*, int, int)
; decoder-mode: arm
008408ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008408b0  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
008408b4  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
008408b8  00 70 a0 e1                                      mov r7, r0
008408bc  04 40 8f e0                                      add r4, pc, r4
008408c0  05 00 94 e7                                      ldr r0, [r4, r5]
008408c4  24 d0 4d e2                                      sub sp, sp, #0x24
008408c8  00 e0 a0 e3                                      mov lr, #0
008408cc  00 a0 90 e5                                      ldr sl, [r0]
008408d0  14 c0 8d e2                                      add ip, sp, #0x14
008408d4  08 00 97 e5                                      ldr r0, [r7, #8]
008408d8  1c a0 8d e5                                      str sl, [sp, #0x1c]
008408dc  04 e0 8c e4                                      str lr, [ip], #4
008408e0  00 e0 8c e5                                      str lr, [ip]
008408e4  03 60 a0 e1                                      mov r6, r3
008408e8  00 c0 e0 e3                                      mvn ip, #0
008408ec  73 30 ff e6                                      uxth r3, r3
008408f0  10 c0 8d e5                                      str ip, [sp, #0x10]
008408f4  0c c0 8d e2                                      add ip, sp, #0xc
008408f8  23 84 a0 e1                                      lsr r8, r3, #8
008408fc  00 c0 8d e5                                      str ip, [sp]
00840900  10 c0 a0 e3                                      mov ip, #0x10
00840904  03 84 88 e1                                      orr r8, r8, r3, lsl #8
00840908  04 c0 8d e5                                      str ip, [sp, #4]
0084090c  0e 30 a0 e1                                      mov r3, lr
00840910  02 c0 a0 e3                                      mov ip, #2
00840914  be 80 cd e1                                      strh r8, [sp, #0xe]
00840918  bc c0 cd e1                                      strh ip, [sp, #0xc]
0084091c  01 a0 a0 e1                                      mov sl, r1
00840920  4b 38 eb eb                                      bl #0x30ea54
00840924  00 80 50 e2                                      subs r8, r0, #0
00840928  0d 00 00 da                                      ble #0x840964
0084092c  64 00 9f e5                                      ldr r0, [pc, #0x64]
00840930  06 10 a0 e1                                      mov r1, r6
00840934  0a 30 a0 e1                                      mov r3, sl
00840938  00 00 8f e0                                      add r0, pc, r0
0084093c  08 20 a0 e1                                      mov r2, r8
00840940  8f ab ff eb                                      bl #0x82b784
00840944  05 30 94 e7                                      ldr r3, [r4, r5]
00840948  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0084094c  08 00 a0 e1                                      mov r0, r8
00840950  00 30 93 e5                                      ldr r3, [r3]
00840954  03 00 52 e1                                      cmp r2, r3
00840958  0b 00 00 1a                                      bne #0x84098c
0084095c  24 d0 8d e2                                      add sp, sp, #0x24
00840960  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00840964  07 00 a0 e1                                      mov r0, r7
00840968  00 30 97 e5                                      ldr r3, [r7]
0084096c  0f e0 a0 e1                                      mov lr, pc
00840970  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00840974  00 20 a0 e1                                      mov r2, r0
00840978  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0084097c  06 10 a0 e1                                      mov r1, r6
00840980  00 00 8f e0                                      add r0, pc, r0
00840984  7e ab ff eb                                      bl #0x82b784
00840988  ed ff ff ea                                      b #0x840944
0084098c  5f 36 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840990  d4 41 15 00 ac 40 00 00 b8 df 0c 00 a0 df 0c 00  .byte 0xd4, 0x41, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0xdf, 0x0c, 0x00, 0xa0, 0xdf, 0x0c, 0x00

; FUNCTION 0x008409a0, declared_size=100, range_size=100, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket12SetBroadcastEv
; demangled: CAndroidSocket::SetBroadcast()
; decoder-mode: arm
008409a0  10 40 2d e9                                      push {r4, lr}
008409a4  10 d0 4d e2                                      sub sp, sp, #0x10
008409a8  01 10 a0 e3                                      mov r1, #1
008409ac  10 30 8d e2                                      add r3, sp, #0x10
008409b0  04 c0 a0 e3                                      mov ip, #4
008409b4  00 40 a0 e1                                      mov r4, r0
008409b8  06 20 a0 e3                                      mov r2, #6
008409bc  08 00 90 e5                                      ldr r0, [r0, #8]
008409c0  04 10 23 e5                                      str r1, [r3, #-4]!
008409c4  00 c0 8d e5                                      str ip, [sp]
008409c8  2a 38 eb eb                                      bl #0x30ea78
008409cc  00 00 50 e3                                      cmp r0, #0
008409d0  01 00 00 ba                                      blt #0x8409dc
008409d4  10 d0 8d e2                                      add sp, sp, #0x10
008409d8  10 80 bd e8                                      pop {r4, pc}
008409dc  04 00 a0 e1                                      mov r0, r4
008409e0  00 30 94 e5                                      ldr r3, [r4]
008409e4  0f e0 a0 e1                                      mov lr, pc
008409e8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008409ec  00 10 a0 e1                                      mov r1, r0
008409f0  08 00 9f e5                                      ldr r0, [pc, #8]
008409f4  00 00 8f e0                                      add r0, pc, r0
008409f8  61 ab ff eb                                      bl #0x82b784
008409fc  f4 ff ff ea                                      b #0x8409d4
; mapping-symbol data/literal pool
00840a00  64 df 0c 00                                      .byte 0x64, 0xdf, 0x0c, 0x00

; FUNCTION 0x00840a04, declared_size=44, range_size=44, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket6ListenEi
; demangled: CAndroidSocket::Listen(int)
; decoder-mode: arm
00840a04  10 40 2d e9                                      push {r4, lr}
00840a08  08 00 90 e5                                      ldr r0, [r0, #8]
00840a0c  9f 36 eb eb                                      bl #0x30e490
00840a10  00 00 50 e3                                      cmp r0, #0
00840a14  00 00 00 ba                                      blt #0x840a1c
00840a18  10 80 bd e8                                      pop {r4, pc}
00840a1c  08 00 9f e5                                      ldr r0, [pc, #8]
00840a20  00 00 8f e0                                      add r0, pc, r0
00840a24  10 40 bd e8                                      pop {r4, lr}
00840a28  55 ab ff ea                                      b #0x82b784
; mapping-symbol data/literal pool
00840a2c  70 df 0c 00                                      .byte 0x70, 0xdf, 0x0c, 0x00

; FUNCTION 0x00840a30, declared_size=132, range_size=132, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket13GetSocketPortEv
; demangled: CAndroidSocket::GetSocketPort()
; decoder-mode: arm
00840a30  74 30 9f e5                                      ldr r3, [pc, #0x74]
00840a34  74 20 9f e5                                      ldr r2, [pc, #0x74]
00840a38  10 40 2d e9                                      push {r4, lr}
00840a3c  03 30 8f e0                                      add r3, pc, r3
00840a40  02 40 93 e7                                      ldr r4, [r3, r2]
00840a44  18 d0 4d e2                                      sub sp, sp, #0x18
00840a48  00 10 a0 e3                                      mov r1, #0
00840a4c  00 c0 94 e5                                      ldr ip, [r4]
00840a50  08 20 8d e2                                      add r2, sp, #8
00840a54  10 e0 a0 e3                                      mov lr, #0x10
00840a58  14 c0 8d e5                                      str ip, [sp, #0x14]
00840a5c  04 10 82 e4                                      str r1, [r2], #4
00840a60  04 10 82 e4                                      str r1, [r2], #4
00840a64  00 10 82 e5                                      str r1, [r2]
00840a68  04 10 8d e5                                      str r1, [sp, #4]
00840a6c  00 e0 8d e5                                      str lr, [sp]
00840a70  04 10 8d e2                                      add r1, sp, #4
00840a74  0d 20 a0 e1                                      mov r2, sp
00840a78  08 00 90 e5                                      ldr r0, [r0, #8]
00840a7c  f2 36 eb eb                                      bl #0x30e64c
00840a80  b6 30 dd e1                                      ldrh r3, [sp, #6]
00840a84  14 10 9d e5                                      ldr r1, [sp, #0x14]
00840a88  00 20 94 e5                                      ldr r2, [r4]
00840a8c  23 04 a0 e1                                      lsr r0, r3, #8
00840a90  03 34 80 e1                                      orr r3, r0, r3, lsl #8
00840a94  02 00 51 e1                                      cmp r1, r2
00840a98  73 00 ff e6                                      uxth r0, r3
00840a9c  01 00 00 1a                                      bne #0x840aa8
00840aa0  18 d0 8d e2                                      add sp, sp, #0x18
00840aa4  10 80 bd e8                                      pop {r4, pc}
00840aa8  18 36 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840aac  54 40 15 00 ac 40 00 00                          .byte 0x54, 0x40, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00840ab4, declared_size=152, range_size=152, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket13GetSocketAddrEv
; demangled: CAndroidSocket::GetSocketAddr()
; decoder-mode: arm
00840ab4  70 40 2d e9                                      push {r4, r5, r6, lr}
00840ab8  84 40 9f e5                                      ldr r4, [pc, #0x84]
00840abc  84 60 9f e5                                      ldr r6, [pc, #0x84]
00840ac0  42 df 4d e2                                      sub sp, sp, #0x108
00840ac4  04 40 8f e0                                      add r4, pc, r4
00840ac8  06 30 94 e7                                      ldr r3, [r4, r6]
00840acc  04 50 8d e2                                      add r5, sp, #4
00840ad0  00 10 a0 e3                                      mov r1, #0
00840ad4  00 30 93 e5                                      ldr r3, [r3]
00840ad8  01 2c a0 e3                                      mov r2, #0x100
00840adc  05 00 a0 e1                                      mov r0, r5
00840ae0  04 31 8d e5                                      str r3, [sp, #0x104]
00840ae4  1e aa ff eb                                      bl #0x82b364
00840ae8  05 00 a0 e1                                      mov r0, r5
00840aec  01 1c a0 e3                                      mov r1, #0x100
00840af0  92 37 eb eb                                      bl #0x30e940
00840af4  00 00 50 e3                                      cmp r0, #0
00840af8  07 00 00 0a                                      beq #0x840b1c
00840afc  00 00 a0 e3                                      mov r0, #0
00840b00  06 30 94 e7                                      ldr r3, [r4, r6]
00840b04  04 21 9d e5                                      ldr r2, [sp, #0x104]
00840b08  00 30 93 e5                                      ldr r3, [r3]
00840b0c  03 00 52 e1                                      cmp r2, r3
00840b10  0a 00 00 1a                                      bne #0x840b40
00840b14  42 df 8d e2                                      add sp, sp, #0x108
00840b18  70 80 bd e8                                      pop {r4, r5, r6, pc}
00840b1c  05 00 a0 e1                                      mov r0, r5
00840b20  16 35 eb eb                                      bl #0x30df80
00840b24  00 00 50 e3                                      cmp r0, #0
00840b28  f3 ff ff 0a                                      beq #0x840afc
00840b2c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00840b30  00 30 93 e5                                      ldr r3, [r3]
00840b34  00 00 93 e5                                      ldr r0, [r3]
00840b38  33 36 eb eb                                      bl #0x30e40c
00840b3c  ef ff ff ea                                      b #0x840b00
00840b40  f2 35 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840b44  cc 3f 15 00 ac 40 00 00                          .byte 0xcc, 0x3f, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00840b4c, declared_size=276, range_size=276, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket16RecvFromUnkownIPEPciPS0_Pi
; demangled: CAndroidSocket::RecvFromUnkownIP(char*, int, char**, int*)
; decoder-mode: arm
00840b4c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00840b50  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
00840b54  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
00840b58  20 d0 4d e2                                      sub sp, sp, #0x20
00840b5c  04 40 8f e0                                      add r4, pc, r4
00840b60  05 e0 94 e7                                      ldr lr, [r4, r5]
00840b64  00 c0 a0 e3                                      mov ip, #0
00840b68  00 70 a0 e1                                      mov r7, r0
00840b6c  00 60 9e e5                                      ldr r6, [lr]
00840b70  10 e0 8d e2                                      add lr, sp, #0x10
00840b74  08 00 90 e5                                      ldr r0, [r0, #8]
00840b78  1c 60 8d e5                                      str r6, [sp, #0x1c]
00840b7c  04 c0 8e e4                                      str ip, [lr], #4
00840b80  04 c0 8e e4                                      str ip, [lr], #4
00840b84  00 c0 8e e5                                      str ip, [lr]
00840b88  10 e0 a0 e3                                      mov lr, #0x10
00840b8c  08 e0 8d e5                                      str lr, [sp, #8]
00840b90  0c e0 8d e2                                      add lr, sp, #0xc
00840b94  0c c0 8d e5                                      str ip, [sp, #0xc]
00840b98  00 e0 8d e5                                      str lr, [sp]
00840b9c  03 80 a0 e1                                      mov r8, r3
00840ba0  08 e0 8d e2                                      add lr, sp, #8
00840ba4  0c 30 a0 e1                                      mov r3, ip
00840ba8  02 c0 a0 e3                                      mov ip, #2
00840bac  04 e0 8d e5                                      str lr, [sp, #4]
00840bb0  bc c0 cd e1                                      strh ip, [sp, #0xc]
00840bb4  01 90 a0 e1                                      mov sb, r1
00840bb8  40 a0 9d e5                                      ldr sl, [sp, #0x40]
00840bbc  fb 37 eb eb                                      bl #0x30ebb0
00840bc0  00 60 50 e2                                      subs r6, r0, #0
00840bc4  16 00 00 da                                      ble #0x840c24
00840bc8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00840bcc  0e 36 eb eb                                      bl #0x30e40c
00840bd0  72 ab ff eb                                      bl #0x82b9a0
00840bd4  be 30 dd e1                                      ldrh r3, [sp, #0xe]
00840bd8  00 00 88 e5                                      str r0, [r8]
00840bdc  74 00 9f e5                                      ldr r0, [pc, #0x74]
00840be0  23 24 a0 e1                                      lsr r2, r3, #8
00840be4  03 24 82 e1                                      orr r2, r2, r3, lsl #8
00840be8  72 20 ff e6                                      uxth r2, r2
00840bec  00 20 8a e5                                      str r2, [sl]
00840bf0  00 10 98 e5                                      ldr r1, [r8]
00840bf4  00 00 8f e0                                      add r0, pc, r0
00840bf8  06 30 a0 e1                                      mov r3, r6
00840bfc  00 90 8d e5                                      str sb, [sp]
00840c00  df aa ff eb                                      bl #0x82b784
00840c04  05 30 94 e7                                      ldr r3, [r4, r5]
00840c08  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00840c0c  06 00 a0 e1                                      mov r0, r6
00840c10  00 30 93 e5                                      ldr r3, [r3]
00840c14  03 00 52 e1                                      cmp r2, r3
00840c18  0b 00 00 1a                                      bne #0x840c4c
00840c1c  20 d0 8d e2                                      add sp, sp, #0x20
00840c20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00840c24  f6 ff ff 0a                                      beq #0x840c04
00840c28  07 00 a0 e1                                      mov r0, r7
00840c2c  00 30 97 e5                                      ldr r3, [r7]
00840c30  0f e0 a0 e1                                      mov lr, pc
00840c34  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00840c38  00 10 a0 e1                                      mov r1, r0
00840c3c  18 00 9f e5                                      ldr r0, [pc, #0x18]
00840c40  00 00 8f e0                                      add r0, pc, r0
00840c44  ce aa ff eb                                      bl #0x82b784
00840c48  ed ff ff ea                                      b #0x840c04
00840c4c  af 35 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840c50  34 3f 15 00 ac 40 00 00 ac dd 0c 00 98 dd 0c 00  .byte 0x34, 0x3f, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0xdd, 0x0c, 0x00, 0x98, 0xdd, 0x0c, 0x00

; FUNCTION 0x00840c60, declared_size=104, range_size=104, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket11GetHostNameEPPc
; demangled: CAndroidSocket::GetHostName(char**)
; decoder-mode: arm
00840c60  58 30 9f e5                                      ldr r3, [pc, #0x58]
00840c64  58 20 9f e5                                      ldr r2, [pc, #0x58]
00840c68  70 40 2d e9                                      push {r4, r5, r6, lr}
00840c6c  03 30 8f e0                                      add r3, pc, r3
00840c70  02 40 93 e7                                      ldr r4, [r3, r2]
00840c74  42 df 4d e2                                      sub sp, sp, #0x108
00840c78  04 50 8d e2                                      add r5, sp, #4
00840c7c  00 20 94 e5                                      ldr r2, [r4]
00840c80  01 60 a0 e1                                      mov r6, r1
00840c84  05 00 a0 e1                                      mov r0, r5
00840c88  ff 10 a0 e3                                      mov r1, #0xff
00840c8c  04 21 8d e5                                      str r2, [sp, #0x104]
00840c90  2a 37 eb eb                                      bl #0x30e940
00840c94  05 00 a0 e1                                      mov r0, r5
00840c98  40 ab ff eb                                      bl #0x82b9a0
00840c9c  00 00 86 e5                                      str r0, [r6]
00840ca0  04 21 9d e5                                      ldr r2, [sp, #0x104]
00840ca4  00 30 94 e5                                      ldr r3, [r4]
00840ca8  00 00 a0 e3                                      mov r0, #0
00840cac  03 00 52 e1                                      cmp r2, r3
00840cb0  01 00 00 1a                                      bne #0x840cbc
00840cb4  42 df 8d e2                                      add sp, sp, #0x108
00840cb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00840cbc  93 35 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840cc0  24 3e 15 00 ac 40 00 00                          .byte 0x24, 0x3e, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00840cc8, declared_size=280, range_size=280, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket8RecvFromEPci
; demangled: CAndroidSocket::RecvFrom(char*, int)
; decoder-mode: arm
00840cc8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00840ccc  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
00840cd0  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
00840cd4  20 d0 4d e2                                      sub sp, sp, #0x20
00840cd8  04 40 8f e0                                      add r4, pc, r4
00840cdc  05 30 94 e7                                      ldr r3, [r4, r5]
00840ce0  00 c0 a0 e3                                      mov ip, #0
00840ce4  10 e0 8d e2                                      add lr, sp, #0x10
00840ce8  00 30 93 e5                                      ldr r3, [r3]
00840cec  00 70 a0 e1                                      mov r7, r0
00840cf0  08 00 90 e5                                      ldr r0, [r0, #8]
00840cf4  1c 30 8d e5                                      str r3, [sp, #0x1c]
00840cf8  04 c0 8e e4                                      str ip, [lr], #4
00840cfc  04 c0 8e e4                                      str ip, [lr], #4
00840d00  00 c0 8e e5                                      str ip, [lr]
00840d04  10 e0 a0 e3                                      mov lr, #0x10
00840d08  08 e0 8d e5                                      str lr, [sp, #8]
00840d0c  0c e0 8d e2                                      add lr, sp, #0xc
00840d10  0c c0 8d e5                                      str ip, [sp, #0xc]
00840d14  0c 30 a0 e1                                      mov r3, ip
00840d18  00 e0 8d e5                                      str lr, [sp]
00840d1c  02 c0 a0 e3                                      mov ip, #2
00840d20  08 e0 8d e2                                      add lr, sp, #8
00840d24  04 e0 8d e5                                      str lr, [sp, #4]
00840d28  bc c0 cd e1                                      strh ip, [sp, #0xc]
00840d2c  01 80 a0 e1                                      mov r8, r1
00840d30  9e 37 eb eb                                      bl #0x30ebb0
00840d34  00 60 50 e2                                      subs r6, r0, #0
00840d38  19 00 00 da                                      ble #0x840da4
00840d3c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00840d40  b1 35 eb eb                                      bl #0x30e40c
00840d44  15 ab ff eb                                      bl #0x82b9a0
00840d48  be 30 dd e1                                      ldrh r3, [sp, #0xe]
00840d4c  00 70 a0 e1                                      mov r7, r0
00840d50  00 10 a0 e1                                      mov r1, r0
00840d54  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00840d58  23 24 a0 e1                                      lsr r2, r3, #8
00840d5c  03 24 82 e1                                      orr r2, r2, r3, lsl #8
00840d60  00 00 8f e0                                      add r0, pc, r0
00840d64  72 20 ff e6                                      uxth r2, r2
00840d68  06 30 a0 e1                                      mov r3, r6
00840d6c  00 80 8d e5                                      str r8, [sp]
00840d70  83 aa ff eb                                      bl #0x82b784
00840d74  00 00 57 e3                                      cmp r7, #0
00840d78  01 00 00 0a                                      beq #0x840d84
00840d7c  07 00 a0 e1                                      mov r0, r7
00840d80  cc 34 eb eb                                      bl #0x30e0b8
00840d84  05 30 94 e7                                      ldr r3, [r4, r5]
00840d88  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00840d8c  06 00 a0 e1                                      mov r0, r6
00840d90  00 30 93 e5                                      ldr r3, [r3]
00840d94  03 00 52 e1                                      cmp r2, r3
00840d98  0b 00 00 1a                                      bne #0x840dcc
00840d9c  20 d0 8d e2                                      add sp, sp, #0x20
00840da0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00840da4  f6 ff ff 0a                                      beq #0x840d84
00840da8  07 00 a0 e1                                      mov r0, r7
00840dac  00 30 97 e5                                      ldr r3, [r7]
00840db0  0f e0 a0 e1                                      mov lr, pc
00840db4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00840db8  00 10 a0 e1                                      mov r1, r0
00840dbc  18 00 9f e5                                      ldr r0, [pc, #0x18]
00840dc0  00 00 8f e0                                      add r0, pc, r0
00840dc4  6e aa ff eb                                      bl #0x82b784
00840dc8  ed ff ff ea                                      b #0x840d84
00840dcc  4f 35 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840dd0  b8 3d 15 00 ac 40 00 00 b0 dc 0c 00 80 dc 0c 00  .byte 0xb8, 0x3d, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb0, 0xdc, 0x0c, 0x00, 0x80, 0xdc, 0x0c, 0x00

; FUNCTION 0x00840de0, declared_size=240, range_size=240, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket6SendToEPKciS1_i
; demangled: CAndroidSocket::SendTo(char const*, int, char const*, int)
; decoder-mode: arm
00840de0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00840de4  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
00840de8  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
00840dec  00 70 53 e2                                      subs r7, r3, #0
00840df0  04 40 8f e0                                      add r4, pc, r4
00840df4  05 30 94 e7                                      ldr r3, [r4, r5]
00840df8  24 d0 4d e2                                      sub sp, sp, #0x24
00840dfc  00 60 a0 e1                                      mov r6, r0
00840e00  00 30 93 e5                                      ldr r3, [r3]
00840e04  01 80 a0 e1                                      mov r8, r1
00840e08  02 b0 a0 e1                                      mov fp, r2
00840e0c  48 a0 9d e5                                      ldr sl, [sp, #0x48]
00840e10  1c 30 8d e5                                      str r3, [sp, #0x1c]
00840e14  07 60 a0 01                                      moveq r6, r7
00840e18  20 00 00 0a                                      beq #0x840ea0
00840e1c  00 90 a0 e3                                      mov sb, #0
00840e20  10 30 8d e2                                      add r3, sp, #0x10
00840e24  04 90 83 e4                                      str sb, [r3], #4
00840e28  04 90 83 e4                                      str sb, [r3], #4
00840e2c  00 90 83 e5                                      str sb, [r3]
00840e30  07 00 a0 e1                                      mov r0, r7
00840e34  02 30 a0 e3                                      mov r3, #2
00840e38  0c 90 8d e5                                      str sb, [sp, #0xc]
00840e3c  bc 30 cd e1                                      strh r3, [sp, #0xc]
00840e40  3b 35 eb eb                                      bl #0x30e334
00840e44  7a 30 ff e6                                      uxth r3, sl
00840e48  08 10 96 e5                                      ldr r1, [r6, #8]
00840e4c  23 c4 a0 e1                                      lsr ip, r3, #8
00840e50  03 c4 8c e1                                      orr ip, ip, r3, lsl #8
00840e54  be c0 cd e1                                      strh ip, [sp, #0xe]
00840e58  0c c0 8d e2                                      add ip, sp, #0xc
00840e5c  10 00 8d e5                                      str r0, [sp, #0x10]
00840e60  0b 20 a0 e1                                      mov r2, fp
00840e64  09 30 a0 e1                                      mov r3, sb
00840e68  01 00 a0 e1                                      mov r0, r1
00840e6c  00 c0 8d e5                                      str ip, [sp]
00840e70  08 10 a0 e1                                      mov r1, r8
00840e74  10 c0 a0 e3                                      mov ip, #0x10
00840e78  04 c0 8d e5                                      str ip, [sp, #4]
00840e7c  f4 36 eb eb                                      bl #0x30ea54
00840e80  00 60 a0 e1                                      mov r6, r0
00840e84  40 00 9f e5                                      ldr r0, [pc, #0x40]
00840e88  07 10 a0 e1                                      mov r1, r7
00840e8c  0a 20 a0 e1                                      mov r2, sl
00840e90  00 00 8f e0                                      add r0, pc, r0
00840e94  06 30 a0 e1                                      mov r3, r6
00840e98  00 80 8d e5                                      str r8, [sp]
00840e9c  38 aa ff eb                                      bl #0x82b784
00840ea0  05 30 94 e7                                      ldr r3, [r4, r5]
00840ea4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00840ea8  06 00 a0 e1                                      mov r0, r6
00840eac  00 30 93 e5                                      ldr r3, [r3]
00840eb0  03 00 52 e1                                      cmp r2, r3
00840eb4  01 00 00 1a                                      bne #0x840ec0
00840eb8  24 d0 8d e2                                      add sp, sp, #0x24
00840ebc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00840ec0  12 35 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840ec4  a0 3c 15 00 ac 40 00 00 e0 db 0c 00              .byte 0xa0, 0x3c, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0xdb, 0x0c, 0x00

; FUNCTION 0x00840ed0, declared_size=52, range_size=52, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket16CreateIcmpSocketEv
; demangled: CAndroidSocket::CreateIcmpSocket()
; decoder-mode: arm
00840ed0  10 40 2d e9                                      push {r4, lr}
00840ed4  00 40 a0 e1                                      mov r4, r0
00840ed8  02 00 a0 e3                                      mov r0, #2
00840edc  00 10 a0 e1                                      mov r1, r0
00840ee0  01 20 a0 e3                                      mov r2, #1
00840ee4  e9 36 eb eb                                      bl #0x30ea90
00840ee8  00 00 50 e3                                      cmp r0, #0
00840eec  02 30 a0 a3                                      movge r3, #2
00840ef0  08 00 84 e5                                      str r0, [r4, #8]
00840ef4  20 38 84 a5                                      strge r3, [r4, #0x820]
00840ef8  00 00 a0 b3                                      movlt r0, #0
00840efc  01 00 a0 a3                                      movge r0, #1
00840f00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00840f04, declared_size=52, range_size=52, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket15CreateUdpSocketEv
; demangled: CAndroidSocket::CreateUdpSocket()
; decoder-mode: arm
00840f04  10 40 2d e9                                      push {r4, lr}
00840f08  00 40 a0 e1                                      mov r4, r0
00840f0c  02 00 a0 e3                                      mov r0, #2
00840f10  00 10 a0 e1                                      mov r1, r0
00840f14  11 20 a0 e3                                      mov r2, #0x11
00840f18  dc 36 eb eb                                      bl #0x30ea90
00840f1c  00 00 50 e3                                      cmp r0, #0
00840f20  02 30 a0 a3                                      movge r3, #2
00840f24  08 00 84 e5                                      str r0, [r4, #8]
00840f28  20 38 84 a5                                      strge r3, [r4, #0x820]
00840f2c  00 00 a0 b3                                      movlt r0, #0
00840f30  01 00 a0 a3                                      movge r0, #1
00840f34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00840f38, declared_size=48, range_size=48, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket15CreateTcpSocketEv
; demangled: CAndroidSocket::CreateTcpSocket()
; decoder-mode: arm
00840f38  10 40 2d e9                                      push {r4, lr}
00840f3c  01 10 a0 e3                                      mov r1, #1
00840f40  00 40 a0 e1                                      mov r4, r0
00840f44  06 20 a0 e3                                      mov r2, #6
00840f48  02 00 a0 e3                                      mov r0, #2
00840f4c  cf 36 eb eb                                      bl #0x30ea90
00840f50  00 00 50 e3                                      cmp r0, #0
00840f54  08 00 84 e5                                      str r0, [r4, #8]
00840f58  01 00 a0 a3                                      movge r0, #1
00840f5c  00 00 a0 b3                                      movlt r0, #0
00840f60  20 08 84 a5                                      strge r0, [r4, #0x820]
00840f64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00840f68, declared_size=96, range_size=96, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket12CreateSocketEv
; demangled: CAndroidSocket::CreateSocket()
; decoder-mode: arm
00840f68  10 40 2d e9                                      push {r4, lr}
00840f6c  01 10 a0 e3                                      mov r1, #1
00840f70  00 40 a0 e1                                      mov r4, r0
00840f74  00 20 a0 e3                                      mov r2, #0
00840f78  02 00 a0 e3                                      mov r0, #2
00840f7c  c3 36 eb eb                                      bl #0x30ea90
00840f80  00 00 50 e3                                      cmp r0, #0
00840f84  08 00 84 e5                                      str r0, [r4, #8]
00840f88  01 00 00 ba                                      blt #0x840f94
00840f8c  01 00 a0 e3                                      mov r0, #1
00840f90  10 80 bd e8                                      pop {r4, pc}
00840f94  00 30 94 e5                                      ldr r3, [r4]
00840f98  04 00 a0 e1                                      mov r0, r4
00840f9c  0f e0 a0 e1                                      mov lr, pc
00840fa0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00840fa4  00 10 a0 e1                                      mov r1, r0
00840fa8  14 00 9f e5                                      ldr r0, [pc, #0x14]
00840fac  00 00 8f e0                                      add r0, pc, r0
00840fb0  f3 a9 ff eb                                      bl #0x82b784
00840fb4  07 30 a0 e3                                      mov r3, #7
00840fb8  04 30 84 e5                                      str r3, [r4, #4]
00840fbc  00 00 a0 e3                                      mov r0, #0
00840fc0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00840fc4  f4 da 0c 00                                      .byte 0xf4, 0xda, 0x0c, 0x00

; FUNCTION 0x00840fc8, declared_size=272, range_size=272, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket4BindEPct
; demangled: CAndroidSocket::Bind(char*, unsigned short)
; decoder-mode: arm
00840fc8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00840fcc  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
00840fd0  fc 90 9f e5                                      ldr sb, [pc, #0xfc]
00840fd4  20 d0 4d e2                                      sub sp, sp, #0x20
00840fd8  06 60 8f e0                                      add r6, pc, r6
00840fdc  09 e0 96 e7                                      ldr lr, [r6, sb]
00840fe0  0c 50 8d e2                                      add r5, sp, #0xc
00840fe4  00 c0 a0 e3                                      mov ip, #0
00840fe8  00 e0 9e e5                                      ldr lr, [lr]
00840fec  04 30 85 e2                                      add r3, r5, #4
00840ff0  00 00 51 e3                                      cmp r1, #0
00840ff4  1c e0 8d e5                                      str lr, [sp, #0x1c]
00840ff8  04 c0 83 e4                                      str ip, [r3], #4
00840ffc  04 c0 83 e4                                      str ip, [r3], #4
00841000  00 c0 83 e5                                      str ip, [r3]
00841004  02 30 a0 e3                                      mov r3, #2
00841008  0c c0 8d e5                                      str ip, [sp, #0xc]
0084100c  00 40 a0 e1                                      mov r4, r0
00841010  02 70 a0 e1                                      mov r7, r2
00841014  bc 30 cd e1                                      strh r3, [sp, #0xc]
00841018  10 10 8d 05                                      streq r1, [sp, #0x10]
0084101c  01 00 00 0a                                      beq #0x841028
00841020  01 00 a0 e1                                      mov r0, r1
00841024  c2 34 eb eb                                      bl #0x30e334
00841028  27 c4 a0 e1                                      lsr ip, r7, #8
0084102c  01 10 a0 e3                                      mov r1, #1
00841030  20 30 8d e2                                      add r3, sp, #0x20
00841034  07 c4 8c e1                                      orr ip, ip, r7, lsl #8
00841038  08 00 94 e5                                      ldr r0, [r4, #8]
0084103c  02 20 a0 e3                                      mov r2, #2
00841040  18 10 23 e5                                      str r1, [r3, #-0x18]!
00841044  be c0 cd e1                                      strh ip, [sp, #0xe]
00841048  04 c0 a0 e3                                      mov ip, #4
0084104c  00 c0 8d e5                                      str ip, [sp]
00841050  88 36 eb eb                                      bl #0x30ea78
00841054  08 00 94 e5                                      ldr r0, [r4, #8]
00841058  05 10 a0 e1                                      mov r1, r5
0084105c  10 20 a0 e3                                      mov r2, #0x10
00841060  81 36 eb eb                                      bl #0x30ea6c
00841064  00 00 50 e3                                      cmp r0, #0
00841068  00 a0 a0 a3                                      movge sl, #0
0084106c  0e 00 00 aa                                      bge #0x8410ac
00841070  01 80 87 e2                                      add r8, r7, #1
00841074  78 80 ff e6                                      uxth r8, r8
00841078  00 a0 a0 e3                                      mov sl, #0
0084107c  28 34 a0 e1                                      lsr r3, r8, #8
00841080  08 34 83 e1                                      orr r3, r3, r8, lsl #8
00841084  08 00 94 e5                                      ldr r0, [r4, #8]
00841088  05 10 a0 e1                                      mov r1, r5
0084108c  10 20 a0 e3                                      mov r2, #0x10
00841090  be 30 cd e1                                      strh r3, [sp, #0xe]
00841094  74 36 eb eb                                      bl #0x30ea6c
00841098  01 80 88 e2                                      add r8, r8, #1
0084109c  00 00 50 e3                                      cmp r0, #0
008410a0  01 a0 8a e2                                      add sl, sl, #1
008410a4  78 80 ff e6                                      uxth r8, r8
008410a8  f3 ff ff ba                                      blt #0x84107c
008410ac  09 30 96 e7                                      ldr r3, [r6, sb]
008410b0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008410b4  07 00 8a e0                                      add r0, sl, r7
008410b8  00 30 93 e5                                      ldr r3, [r3]
008410bc  03 00 52 e1                                      cmp r2, r3
008410c0  01 00 00 1a                                      bne #0x8410cc
008410c4  20 d0 8d e2                                      add sp, sp, #0x20
008410c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008410cc  8f 34 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008410d0  b8 3a 15 00 ac 40 00 00                          .byte 0xb8, 0x3a, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008410d8, declared_size=32, range_size=32, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket4RecvEPci
; demangled: CAndroidSocket::Recv(char*, int)
; decoder-mode: arm
008410d8  10 40 2d e9                                      push {r4, lr}
008410dc  00 30 a0 e3                                      mov r3, #0
008410e0  08 00 90 e5                                      ldr r0, [r0, #8]
008410e4  bf 34 eb eb                                      bl #0x30e3e8
008410e8  00 40 a0 e1                                      mov r4, r0
008410ec  11 a8 ff eb                                      bl #0x82b138
008410f0  04 00 a0 e1                                      mov r0, r4
008410f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008410f8, declared_size=240, range_size=240, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket4SendEPci
; demangled: CAndroidSocket::Send(char*, int)
; decoder-mode: arm
008410f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008410fc  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
00841100  d4 60 9f e5                                      ldr r6, [pc, #0xd4]
00841104  01 da 4d e2                                      sub sp, sp, #0x1000
00841108  04 40 8f e0                                      add r4, pc, r4
0084110c  06 30 94 e7                                      ldr r3, [r4, r6]
00841110  08 d0 4d e2                                      sub sp, sp, #8
00841114  01 70 a0 e1                                      mov r7, r1
00841118  00 30 93 e5                                      ldr r3, [r3]
0084111c  01 1a 8d e2                                      add r1, sp, #0x1000
00841120  00 50 a0 e1                                      mov r5, r0
00841124  04 30 81 e5                                      str r3, [r1, #4]
00841128  02 80 a0 e1                                      mov r8, r2
0084112c  01 a8 ff eb                                      bl #0x82b138
00841130  00 90 a0 e1                                      mov sb, r0
00841134  07 10 a0 e1                                      mov r1, r7
00841138  08 00 95 e5                                      ldr r0, [r5, #8]
0084113c  08 20 a0 e1                                      mov r2, r8
00841140  00 30 a0 e3                                      mov r3, #0
00841144  41 34 eb eb                                      bl #0x30e250
00841148  01 0a 50 e3                                      cmp r0, #0x1000
0084114c  00 50 a0 e1                                      mov r5, r0
00841150  0e 00 00 ba                                      blt #0x841190
00841154  00 20 a0 e1                                      mov r2, r0
00841158  80 00 9f e5                                      ldr r0, [pc, #0x80]
0084115c  09 10 a0 e1                                      mov r1, sb
00841160  00 00 8f e0                                      add r0, pc, r0
00841164  86 a9 ff eb                                      bl #0x82b784
00841168  06 30 94 e7                                      ldr r3, [r4, r6]
0084116c  01 1a 8d e2                                      add r1, sp, #0x1000
00841170  04 20 91 e5                                      ldr r2, [r1, #4]
00841174  00 30 93 e5                                      ldr r3, [r3]
00841178  05 00 a0 e1                                      mov r0, r5
0084117c  03 00 52 e1                                      cmp r2, r3
00841180  13 00 00 1a                                      bne #0x8411d4
00841184  08 d0 8d e2                                      add sp, sp, #8
00841188  01 da 8d e2                                      add sp, sp, #0x1000
0084118c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00841190  08 a0 8d e2                                      add sl, sp, #8
00841194  04 a0 4a e2                                      sub sl, sl, #4
00841198  0a 00 a0 e1                                      mov r0, sl
0084119c  00 10 a0 e3                                      mov r1, #0
008411a0  01 2a a0 e3                                      mov r2, #0x1000
008411a4  6e a8 ff eb                                      bl #0x82b364
008411a8  07 10 a0 e1                                      mov r1, r7
008411ac  08 20 a0 e1                                      mov r2, r8
008411b0  0a 00 a0 e1                                      mov r0, sl
008411b4  65 a8 ff eb                                      bl #0x82b350
008411b8  24 00 9f e5                                      ldr r0, [pc, #0x24]
008411bc  09 10 a0 e1                                      mov r1, sb
008411c0  0a 30 a0 e1                                      mov r3, sl
008411c4  00 00 8f e0                                      add r0, pc, r0
008411c8  05 20 a0 e1                                      mov r2, r5
008411cc  6c a9 ff eb                                      bl #0x82b784
008411d0  e4 ff ff ea                                      b #0x841168
008411d4  4d 34 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008411d8  88 39 15 00 ac 40 00 00 a0 d9 0c 00 0c d9 0c 00  .byte 0x88, 0x39, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0xd9, 0x0c, 0x00, 0x0c, 0xd9, 0x0c, 0x00

; FUNCTION 0x008411e8, declared_size=204, range_size=204, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket6SelectEN15GLXPlayerSocket17XSocketSelectFlagE
; demangled: CAndroidSocket::Select(GLXPlayerSocket::XSocketSelectFlag)
; decoder-mode: arm
008411e8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008411ec  08 30 90 e5                                      ldr r3, [r0, #8]
008411f0  00 50 a0 e3                                      mov r5, #0
008411f4  14 d0 4d e2                                      sub sp, sp, #0x14
008411f8  05 00 53 e1                                      cmp r3, r5
008411fc  00 40 a0 e1                                      mov r4, r0
00841200  01 70 a0 e1                                      mov r7, r1
00841204  08 50 8d e5                                      str r5, [sp, #8]
00841208  0c 50 8d e5                                      str r5, [sp, #0xc]
0084120c  13 00 00 ba                                      blt #0x841260
00841210  86 6e 80 e2                                      add r6, r0, #0x860
00841214  0c 60 86 e2                                      add r6, r6, #0xc
00841218  05 10 a0 e1                                      mov r1, r5
0084121c  80 20 a0 e3                                      mov r2, #0x80
00841220  06 00 a0 e1                                      mov r0, r6
00841224  8d 34 eb eb                                      bl #0x30e460
00841228  08 20 94 e5                                      ldr r2, [r4, #8]
0084122c  01 00 a0 e3                                      mov r0, #1
00841230  00 00 57 e3                                      cmp r7, #0
00841234  c2 32 a0 e1                                      asr r3, r2, #5
00841238  86 3f 83 e2                                      add r3, r3, #0x218
0084123c  02 30 83 e2                                      add r3, r3, #2
00841240  03 31 84 e0                                      add r3, r4, r3, lsl #2
00841244  04 10 93 e5                                      ldr r1, [r3, #4]
00841248  1f 20 02 e2                                      and r2, r2, #0x1f
0084124c  10 22 81 e1                                      orr r2, r1, r0, lsl r2
00841250  04 20 83 e5                                      str r2, [r3, #4]
00841254  04 00 00 0a                                      beq #0x84126c
00841258  01 00 57 e3                                      cmp r7, #1
0084125c  0b 00 00 0a                                      beq #0x841290
00841260  00 00 e0 e3                                      mvn r0, #0
00841264  14 d0 8d e2                                      add sp, sp, #0x14
00841268  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0084126c  08 00 94 e5                                      ldr r0, [r4, #8]
00841270  08 c0 8d e2                                      add ip, sp, #8
00841274  07 20 a0 e1                                      mov r2, r7
00841278  06 10 a0 e1                                      mov r1, r6
0084127c  07 30 a0 e1                                      mov r3, r7
00841280  01 00 80 e2                                      add r0, r0, #1
00841284  00 c0 8d e5                                      str ip, [sp]
00841288  f7 32 eb eb                                      bl #0x30de6c
0084128c  f4 ff ff ea                                      b #0x841264
00841290  08 00 94 e5                                      ldr r0, [r4, #8]
00841294  08 c0 8d e2                                      add ip, sp, #8
00841298  05 10 a0 e1                                      mov r1, r5
0084129c  06 20 a0 e1                                      mov r2, r6
008412a0  05 30 a0 e1                                      mov r3, r5
008412a4  01 00 80 e2                                      add r0, r0, #1
008412a8  00 c0 8d e5                                      str ip, [sp]
008412ac  ee 32 eb eb                                      bl #0x30de6c
008412b0  eb ff ff ea                                      b #0x841264

; FUNCTION 0x008412b4, declared_size=60, range_size=60, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket11CloseSocketEv
; demangled: CAndroidSocket::CloseSocket()
; decoder-mode: arm
008412b4  10 40 2d e9                                      push {r4, lr}
008412b8  08 10 90 e5                                      ldr r1, [r0, #8]
008412bc  00 40 a0 e1                                      mov r4, r0
008412c0  00 00 51 e3                                      cmp r1, #0
008412c4  06 00 00 ba                                      blt #0x8412e4
008412c8  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
008412cc  00 00 8f e0                                      add r0, pc, r0
008412d0  2b a9 ff eb                                      bl #0x82b784
008412d4  08 00 94 e5                                      ldr r0, [r4, #8]
008412d8  2b 36 eb eb                                      bl #0x30eb8c
008412dc  00 30 e0 e3                                      mvn r3, #0
008412e0  08 30 84 e5                                      str r3, [r4, #8]
008412e4  01 00 a0 e3                                      mov r0, #1
008412e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008412ec  5c d8 0c 00                                      .byte 0x5c, 0xd8, 0x0c, 0x00

; FUNCTION 0x008412f0, declared_size=572, range_size=572, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket9ConnectToEPci
; demangled: CAndroidSocket::ConnectTo(char*, int)
; decoder-mode: arm
008412f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008412f4  20 42 9f e5                                      ldr r4, [pc, #0x220]
008412f8  20 72 9f e5                                      ldr r7, [pc, #0x220]
008412fc  5c 68 90 e5                                      ldr r6, [r0, #0x85c]
00841300  04 40 8f e0                                      add r4, pc, r4
00841304  07 30 94 e7                                      ldr r3, [r4, r7]
00841308  28 d0 4d e2                                      sub sp, sp, #0x28
0084130c  00 00 56 e3                                      cmp r6, #0
00841310  00 30 93 e5                                      ldr r3, [r3]
00841314  00 50 a0 e1                                      mov r5, r0
00841318  01 a0 a0 e1                                      mov sl, r1
0084131c  02 80 a0 e1                                      mov r8, r2
00841320  24 30 8d e5                                      str r3, [sp, #0x24]
00841324  09 00 00 0a                                      beq #0x841350
00841328  01 00 56 e3                                      cmp r6, #1
0084132c  25 00 00 0a                                      beq #0x8413c8
00841330  00 00 a0 e3                                      mov r0, #0
00841334  07 30 94 e7                                      ldr r3, [r4, r7]
00841338  24 20 9d e5                                      ldr r2, [sp, #0x24]
0084133c  00 30 93 e5                                      ldr r3, [r3]
00841340  03 00 52 e1                                      cmp r2, r3
00841344  73 00 00 1a                                      bne #0x841518
00841348  28 d0 8d e2                                      add sp, sp, #0x28
0084134c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00841350  14 90 8d e2                                      add sb, sp, #0x14
00841354  06 10 a0 e1                                      mov r1, r6
00841358  10 20 a0 e3                                      mov r2, #0x10
0084135c  09 00 a0 e1                                      mov r0, sb
00841360  ff a7 ff eb                                      bl #0x82b364
00841364  02 30 a0 e3                                      mov r3, #2
00841368  0a 00 a0 e1                                      mov r0, sl
0084136c  b4 31 cd e1                                      strh r3, [sp, #0x14]
00841370  ef 33 eb eb                                      bl #0x30e334
00841374  78 80 ff e6                                      uxth r8, r8
00841378  18 00 8d e5                                      str r0, [sp, #0x18]
0084137c  28 34 a0 e1                                      lsr r3, r8, #8
00841380  08 84 83 e1                                      orr r8, r3, r8, lsl #8
00841384  b6 81 cd e1                                      strh r8, [sp, #0x16]
00841388  00 30 95 e5                                      ldr r3, [r5]
0084138c  05 00 a0 e1                                      mov r0, r5
00841390  0f e0 a0 e1                                      mov lr, pc
00841394  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00841398  00 a0 50 e2                                      subs sl, r0, #0
0084139c  2e 00 00 0a                                      beq #0x84145c
008413a0  09 10 a0 e1                                      mov r1, sb
008413a4  08 00 95 e5                                      ldr r0, [r5, #8]
008413a8  10 20 a0 e3                                      mov r2, #0x10
008413ac  96 32 eb eb                                      bl #0x30de0c
008413b0  00 00 50 e3                                      cmp r0, #0
008413b4  3f 00 00 ba                                      blt #0x8414b8
008413b8  01 30 a0 e3                                      mov r3, #1
008413bc  5c 38 85 e5                                      str r3, [r5, #0x85c]
008413c0  00 00 a0 e3                                      mov r0, #0
008413c4  da ff ff ea                                      b #0x841334
008413c8  00 30 90 e5                                      ldr r3, [r0]
008413cc  06 10 a0 e1                                      mov r1, r6
008413d0  0f e0 a0 e1                                      mov lr, pc
008413d4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008413d8  00 00 50 e3                                      cmp r0, #0
008413dc  2b 00 00 ba                                      blt #0x841490
008413e0  d2 ff ff 0a                                      beq #0x841330
008413e4  04 80 a0 e3                                      mov r8, #4
008413e8  08 00 95 e5                                      ldr r0, [r5, #8]
008413ec  0c c0 8d e2                                      add ip, sp, #0xc
008413f0  06 10 a0 e1                                      mov r1, r6
008413f4  08 20 a0 e1                                      mov r2, r8
008413f8  10 30 8d e2                                      add r3, sp, #0x10
008413fc  00 c0 8d e5                                      str ip, [sp]
00841400  0c 80 8d e5                                      str r8, [sp, #0xc]
00841404  e5 33 eb eb                                      bl #0x30e3a0
00841408  00 00 50 e3                                      cmp r0, #0
0084140c  1f 00 00 ba                                      blt #0x841490
00841410  10 a0 9d e5                                      ldr sl, [sp, #0x10]
00841414  00 00 5a e3                                      cmp sl, #0
00841418  1c 00 00 1a                                      bne #0x841490
0084141c  08 00 95 e5                                      ldr r0, [r5, #8]
00841420  03 10 a0 e3                                      mov r1, #3
00841424  0a 20 a0 e1                                      mov r2, sl
00841428  4c 33 eb eb                                      bl #0x30e160
0084142c  00 00 50 e3                                      cmp r0, #0
00841430  0c 00 00 ba                                      blt #0x841468
00841434  02 2b c0 e3                                      bic r2, r0, #0x800
00841438  08 10 a0 e1                                      mov r1, r8
0084143c  08 00 95 e5                                      ldr r0, [r5, #8]
00841440  46 33 eb eb                                      bl #0x30e160
00841444  00 00 50 e3                                      cmp r0, #0
00841448  02 30 a0 a3                                      movge r3, #2
0084144c  5c 38 85 a5                                      strge r3, [r5, #0x85c]
00841450  06 00 a0 a1                                      movge r0, r6
00841454  b6 ff ff aa                                      bge #0x841334
00841458  02 00 00 ea                                      b #0x841468
0084145c  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
00841460  00 00 8f e0                                      add r0, pc, r0
00841464  c6 a8 ff eb                                      bl #0x82b784
00841468  00 30 95 e5                                      ldr r3, [r5]
0084146c  05 00 a0 e1                                      mov r0, r5
00841470  0f e0 a0 e1                                      mov lr, pc
00841474  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841478  03 30 a0 e3                                      mov r3, #3
0084147c  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841480  07 30 a0 e3                                      mov r3, #7
00841484  04 30 85 e5                                      str r3, [r5, #4]
00841488  0a 00 a0 e1                                      mov r0, sl
0084148c  a8 ff ff ea                                      b #0x841334
00841490  00 30 95 e5                                      ldr r3, [r5]
00841494  05 00 a0 e1                                      mov r0, r5
00841498  0f e0 a0 e1                                      mov lr, pc
0084149c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008414a0  03 30 a0 e3                                      mov r3, #3
008414a4  5c 38 85 e5                                      str r3, [r5, #0x85c]
008414a8  07 30 a0 e3                                      mov r3, #7
008414ac  04 30 85 e5                                      str r3, [r5, #4]
008414b0  00 00 a0 e3                                      mov r0, #0
008414b4  9e ff ff ea                                      b #0x841334
008414b8  00 30 95 e5                                      ldr r3, [r5]
008414bc  05 00 a0 e1                                      mov r0, r5
008414c0  0f e0 a0 e1                                      mov lr, pc
008414c4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008414c8  73 00 50 e3                                      cmp r0, #0x73
008414cc  b9 ff ff 0a                                      beq #0x8413b8
008414d0  00 30 95 e5                                      ldr r3, [r5]
008414d4  05 00 a0 e1                                      mov r0, r5
008414d8  0f e0 a0 e1                                      mov lr, pc
008414dc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008414e0  00 10 a0 e1                                      mov r1, r0
008414e4  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
008414e8  00 00 8f e0                                      add r0, pc, r0
008414ec  a4 a8 ff eb                                      bl #0x82b784
008414f0  00 30 95 e5                                      ldr r3, [r5]
008414f4  05 00 a0 e1                                      mov r0, r5
008414f8  0f e0 a0 e1                                      mov lr, pc
008414fc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841500  03 30 a0 e3                                      mov r3, #3
00841504  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841508  07 30 a0 e3                                      mov r3, #7
0084150c  04 30 85 e5                                      str r3, [r5, #4]
00841510  06 00 a0 e1                                      mov r0, r6
00841514  86 ff ff ea                                      b #0x841334
00841518  7c 33 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0084151c  90 37 15 00 ac 40 00 00 e0 d6 0c 00 98 d6 0c 00  .byte 0x90, 0x37, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0xd6, 0x0c, 0x00, 0x98, 0xd6, 0x0c, 0x00

; FUNCTION 0x0084152c, declared_size=612, range_size=612, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket7ConnectEv
; demangled: CAndroidSocket::Connect()
; decoder-mode: arm
0084152c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00841530  48 42 9f e5                                      ldr r4, [pc, #0x248]
00841534  48 72 9f e5                                      ldr r7, [pc, #0x248]
00841538  5c 68 90 e5                                      ldr r6, [r0, #0x85c]
0084153c  04 40 8f e0                                      add r4, pc, r4
00841540  07 30 94 e7                                      ldr r3, [r4, r7]
00841544  2c d0 4d e2                                      sub sp, sp, #0x2c
00841548  00 00 56 e3                                      cmp r6, #0
0084154c  00 30 93 e5                                      ldr r3, [r3]
00841550  00 50 a0 e1                                      mov r5, r0
00841554  24 30 8d e5                                      str r3, [sp, #0x24]
00841558  09 00 00 0a                                      beq #0x841584
0084155c  01 00 56 e3                                      cmp r6, #1
00841560  2a 00 00 0a                                      beq #0x841610
00841564  00 00 a0 e3                                      mov r0, #0
00841568  07 30 94 e7                                      ldr r3, [r4, r7]
0084156c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00841570  00 30 93 e5                                      ldr r3, [r3]
00841574  03 00 52 e1                                      cmp r2, r3
00841578  7f 00 00 1a                                      bne #0x84177c
0084157c  2c d0 8d e2                                      add sp, sp, #0x2c
00841580  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00841584  14 80 8d e2                                      add r8, sp, #0x14
00841588  08 00 a0 e1                                      mov r0, r8
0084158c  06 10 a0 e1                                      mov r1, r6
00841590  10 20 a0 e3                                      mov r2, #0x10
00841594  72 a7 ff eb                                      bl #0x82b364
00841598  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0084159c  02 30 a0 e3                                      mov r3, #2
008415a0  b4 31 cd e1                                      strh r3, [sp, #0x14]
008415a4  10 30 92 e5                                      ldr r3, [r2, #0x10]
008415a8  04 00 88 e2                                      add r0, r8, #4
008415ac  0c 20 92 e5                                      ldr r2, [r2, #0xc]
008415b0  00 10 93 e5                                      ldr r1, [r3]
008415b4  65 a7 ff eb                                      bl #0x82b350
008415b8  b0 21 d5 e1                                      ldrh r2, [r5, #0x10]
008415bc  00 30 95 e5                                      ldr r3, [r5]
008415c0  05 00 a0 e1                                      mov r0, r5
008415c4  22 14 a0 e1                                      lsr r1, r2, #8
008415c8  02 24 81 e1                                      orr r2, r1, r2, lsl #8
008415cc  b6 21 cd e1                                      strh r2, [sp, #0x16]
008415d0  0f e0 a0 e1                                      mov lr, pc
008415d4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
008415d8  00 a0 50 e2                                      subs sl, r0, #0
008415dc  30 00 00 0a                                      beq #0x8416a4
008415e0  08 10 a0 e1                                      mov r1, r8
008415e4  08 00 95 e5                                      ldr r0, [r5, #8]
008415e8  10 20 a0 e3                                      mov r2, #0x10
008415ec  06 32 eb eb                                      bl #0x30de0c
008415f0  00 00 50 e3                                      cmp r0, #0
008415f4  37 00 00 ba                                      blt #0x8416d8
008415f8  01 30 a0 e3                                      mov r3, #1
008415fc  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841600  cc a6 ff eb                                      bl #0x82b138
00841604  64 08 85 e5                                      str r0, [r5, #0x864]
00841608  00 00 a0 e3                                      mov r0, #0
0084160c  d5 ff ff ea                                      b #0x841568
00841610  00 30 90 e5                                      ldr r3, [r0]
00841614  06 10 a0 e1                                      mov r1, r6
00841618  0f e0 a0 e1                                      mov lr, pc
0084161c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00841620  00 a0 50 e2                                      subs sl, r0, #0
00841624  43 00 00 ba                                      blt #0x841738
00841628  4c 00 00 0a                                      beq #0x841760
0084162c  04 80 a0 e3                                      mov r8, #4
00841630  08 00 95 e5                                      ldr r0, [r5, #8]
00841634  0c c0 8d e2                                      add ip, sp, #0xc
00841638  06 10 a0 e1                                      mov r1, r6
0084163c  08 20 a0 e1                                      mov r2, r8
00841640  10 30 8d e2                                      add r3, sp, #0x10
00841644  00 c0 8d e5                                      str ip, [sp]
00841648  0c 80 8d e5                                      str r8, [sp, #0xc]
0084164c  53 33 eb eb                                      bl #0x30e3a0
00841650  00 00 50 e3                                      cmp r0, #0
00841654  37 00 00 ba                                      blt #0x841738
00841658  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0084165c  00 00 5a e3                                      cmp sl, #0
00841660  34 00 00 1a                                      bne #0x841738
00841664  08 00 95 e5                                      ldr r0, [r5, #8]
00841668  03 10 a0 e3                                      mov r1, #3
0084166c  0a 20 a0 e1                                      mov r2, sl
00841670  ba 32 eb eb                                      bl #0x30e160
00841674  00 00 50 e3                                      cmp r0, #0
00841678  0c 00 00 ba                                      blt #0x8416b0
0084167c  02 2b c0 e3                                      bic r2, r0, #0x800
00841680  08 10 a0 e1                                      mov r1, r8
00841684  08 00 95 e5                                      ldr r0, [r5, #8]
00841688  b4 32 eb eb                                      bl #0x30e160
0084168c  00 00 50 e3                                      cmp r0, #0
00841690  02 30 a0 a3                                      movge r3, #2
00841694  5c 38 85 a5                                      strge r3, [r5, #0x85c]
00841698  06 00 a0 a1                                      movge r0, r6
0084169c  b1 ff ff aa                                      bge #0x841568
008416a0  02 00 00 ea                                      b #0x8416b0
008416a4  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
008416a8  00 00 8f e0                                      add r0, pc, r0
008416ac  34 a8 ff eb                                      bl #0x82b784
008416b0  00 30 95 e5                                      ldr r3, [r5]
008416b4  05 00 a0 e1                                      mov r0, r5
008416b8  0f e0 a0 e1                                      mov lr, pc
008416bc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008416c0  03 30 a0 e3                                      mov r3, #3
008416c4  5c 38 85 e5                                      str r3, [r5, #0x85c]
008416c8  07 30 a0 e3                                      mov r3, #7
008416cc  04 30 85 e5                                      str r3, [r5, #4]
008416d0  0a 00 a0 e1                                      mov r0, sl
008416d4  a3 ff ff ea                                      b #0x841568
008416d8  00 30 95 e5                                      ldr r3, [r5]
008416dc  05 00 a0 e1                                      mov r0, r5
008416e0  0f e0 a0 e1                                      mov lr, pc
008416e4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008416e8  73 00 50 e3                                      cmp r0, #0x73
008416ec  c1 ff ff 0a                                      beq #0x8415f8
008416f0  00 30 95 e5                                      ldr r3, [r5]
008416f4  05 00 a0 e1                                      mov r0, r5
008416f8  0f e0 a0 e1                                      mov lr, pc
008416fc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00841700  00 10 a0 e1                                      mov r1, r0
00841704  80 00 9f e5                                      ldr r0, [pc, #0x80]
00841708  00 00 8f e0                                      add r0, pc, r0
0084170c  1c a8 ff eb                                      bl #0x82b784
00841710  00 30 95 e5                                      ldr r3, [r5]
00841714  05 00 a0 e1                                      mov r0, r5
00841718  0f e0 a0 e1                                      mov lr, pc
0084171c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841720  03 30 a0 e3                                      mov r3, #3
00841724  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841728  07 30 a0 e3                                      mov r3, #7
0084172c  04 30 85 e5                                      str r3, [r5, #4]
00841730  06 00 a0 e1                                      mov r0, r6
00841734  8b ff ff ea                                      b #0x841568
00841738  00 30 95 e5                                      ldr r3, [r5]
0084173c  05 00 a0 e1                                      mov r0, r5
00841740  0f e0 a0 e1                                      mov lr, pc
00841744  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841748  03 30 a0 e3                                      mov r3, #3
0084174c  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841750  07 30 a0 e3                                      mov r3, #7
00841754  04 30 85 e5                                      str r3, [r5, #4]
00841758  00 00 a0 e3                                      mov r0, #0
0084175c  81 ff ff ea                                      b #0x841568
00841760  74 a6 ff eb                                      bl #0x82b138
00841764  64 38 95 e5                                      ldr r3, [r5, #0x864]
00841768  30 25 07 e3                                      movw r2, #0x7530
0084176c  00 30 63 e0                                      rsb r3, r3, r0
00841770  02 00 53 e1                                      cmp r3, r2
00841774  7a ff ff da                                      ble #0x841564
00841778  cc ff ff ea                                      b #0x8416b0
0084177c  e3 32 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00841780  54 35 15 00 ac 40 00 00 00 d5 0c 00 78 d4 0c 00  .byte 0x54, 0x35, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0xd5, 0x0c, 0x00, 0x78, 0xd4, 0x0c, 0x00

; FUNCTION 0x00841790, declared_size=832, range_size=832, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket13ConnectByNameEPct
; demangled: CAndroidSocket::ConnectByName(char*, unsigned short)
; decoder-mode: arm
00841790  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00841794  18 43 9f e5                                      ldr r4, [pc, #0x318]
00841798  18 73 9f e5                                      ldr r7, [pc, #0x318]
0084179c  5c 68 90 e5                                      ldr r6, [r0, #0x85c]
008417a0  04 40 8f e0                                      add r4, pc, r4
008417a4  07 30 94 e7                                      ldr r3, [r4, r7]
008417a8  2c d0 4d e2                                      sub sp, sp, #0x2c
008417ac  00 00 56 e3                                      cmp r6, #0
008417b0  00 30 93 e5                                      ldr r3, [r3]
008417b4  00 50 a0 e1                                      mov r5, r0
008417b8  01 80 a0 e1                                      mov r8, r1
008417bc  24 30 8d e5                                      str r3, [sp, #0x24]
008417c0  09 00 00 0a                                      beq #0x8417ec
008417c4  01 00 56 e3                                      cmp r6, #1
008417c8  3b 00 00 0a                                      beq #0x8418bc
008417cc  00 00 a0 e3                                      mov r0, #0
008417d0  07 30 94 e7                                      ldr r3, [r4, r7]
008417d4  24 20 9d e5                                      ldr r2, [sp, #0x24]
008417d8  00 30 93 e5                                      ldr r3, [r3]
008417dc  03 00 52 e1                                      cmp r2, r3
008417e0  b2 00 00 1a                                      bne #0x841ab0
008417e4  2c d0 8d e2                                      add sp, sp, #0x2c
008417e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008417ec  00 30 90 e5                                      ldr r3, [r0]
008417f0  0f e0 a0 e1                                      mov lr, pc
008417f4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
008417f8  00 00 50 e3                                      cmp r0, #0
008417fc  00 a0 a0 e1                                      mov sl, r0
00841800  0c 00 85 e5                                      str r0, [r5, #0xc]
00841804  89 00 00 0a                                      beq #0x841a30
00841808  14 a0 8d e2                                      add sl, sp, #0x14
0084180c  0a 00 a0 e1                                      mov r0, sl
00841810  06 10 a0 e1                                      mov r1, r6
00841814  10 20 a0 e3                                      mov r2, #0x10
00841818  d1 a6 ff eb                                      bl #0x82b364
0084181c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00841820  02 30 a0 e3                                      mov r3, #2
00841824  b4 31 cd e1                                      strh r3, [sp, #0x14]
00841828  10 30 92 e5                                      ldr r3, [r2, #0x10]
0084182c  04 00 8a e2                                      add r0, sl, #4
00841830  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00841834  00 10 93 e5                                      ldr r1, [r3]
00841838  c4 a6 ff eb                                      bl #0x82b350
0084183c  b0 31 d5 e1                                      ldrh r3, [r5, #0x10]
00841840  74 02 9f e5                                      ldr r0, [pc, #0x274]
00841844  08 10 a0 e1                                      mov r1, r8
00841848  23 24 a0 e1                                      lsr r2, r3, #8
0084184c  03 34 82 e1                                      orr r3, r2, r3, lsl #8
00841850  00 00 8f e0                                      add r0, pc, r0
00841854  b6 31 cd e1                                      strh r3, [sp, #0x16]
00841858  c9 a7 ff eb                                      bl #0x82b784
0084185c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00841860  e9 32 eb eb                                      bl #0x30e40c
00841864  00 10 a0 e1                                      mov r1, r0
00841868  50 02 9f e5                                      ldr r0, [pc, #0x250]
0084186c  00 00 8f e0                                      add r0, pc, r0
00841870  c3 a7 ff eb                                      bl #0x82b784
00841874  00 30 95 e5                                      ldr r3, [r5]
00841878  05 00 a0 e1                                      mov r0, r5
0084187c  0f e0 a0 e1                                      mov lr, pc
00841880  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00841884  00 80 50 e2                                      subs r8, r0, #0
00841888  39 00 00 0a                                      beq #0x841974
0084188c  0a 10 a0 e1                                      mov r1, sl
00841890  08 00 95 e5                                      ldr r0, [r5, #8]
00841894  10 20 a0 e3                                      mov r2, #0x10
00841898  5b 31 eb eb                                      bl #0x30de0c
0084189c  00 00 50 e3                                      cmp r0, #0
008418a0  40 00 00 ba                                      blt #0x8419a8
008418a4  01 30 a0 e3                                      mov r3, #1
008418a8  5c 38 85 e5                                      str r3, [r5, #0x85c]
008418ac  21 a6 ff eb                                      bl #0x82b138
008418b0  64 08 85 e5                                      str r0, [r5, #0x864]
008418b4  00 00 a0 e3                                      mov r0, #0
008418b8  c4 ff ff ea                                      b #0x8417d0
008418bc  00 30 90 e5                                      ldr r3, [r0]
008418c0  06 10 a0 e1                                      mov r1, r6
008418c4  0f e0 a0 e1                                      mov lr, pc
008418c8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008418cc  00 a0 50 e2                                      subs sl, r0, #0
008418d0  4c 00 00 ba                                      blt #0x841a08
008418d4  6e 00 00 0a                                      beq #0x841a94
008418d8  04 80 a0 e3                                      mov r8, #4
008418dc  08 00 95 e5                                      ldr r0, [r5, #8]
008418e0  0c c0 8d e2                                      add ip, sp, #0xc
008418e4  06 10 a0 e1                                      mov r1, r6
008418e8  08 20 a0 e1                                      mov r2, r8
008418ec  10 30 8d e2                                      add r3, sp, #0x10
008418f0  00 c0 8d e5                                      str ip, [sp]
008418f4  0c 80 8d e5                                      str r8, [sp, #0xc]
008418f8  a8 32 eb eb                                      bl #0x30e3a0
008418fc  00 00 50 e3                                      cmp r0, #0
00841900  40 00 00 ba                                      blt #0x841a08
00841904  10 a0 9d e5                                      ldr sl, [sp, #0x10]
00841908  00 00 5a e3                                      cmp sl, #0
0084190c  3d 00 00 1a                                      bne #0x841a08
00841910  08 00 95 e5                                      ldr r0, [r5, #8]
00841914  03 10 a0 e3                                      mov r1, #3
00841918  0a 20 a0 e1                                      mov r2, sl
0084191c  0f 32 eb eb                                      bl #0x30e160
00841920  00 00 50 e3                                      cmp r0, #0
00841924  08 00 00 ba                                      blt #0x84194c
00841928  02 2b c0 e3                                      bic r2, r0, #0x800
0084192c  08 10 a0 e1                                      mov r1, r8
00841930  08 00 95 e5                                      ldr r0, [r5, #8]
00841934  09 32 eb eb                                      bl #0x30e160
00841938  00 00 50 e3                                      cmp r0, #0
0084193c  02 30 a0 a3                                      movge r3, #2
00841940  5c 38 85 a5                                      strge r3, [r5, #0x85c]
00841944  06 00 a0 a1                                      movge r0, r6
00841948  a0 ff ff aa                                      bge #0x8417d0
0084194c  00 30 95 e5                                      ldr r3, [r5]
00841950  05 00 a0 e1                                      mov r0, r5
00841954  0f e0 a0 e1                                      mov lr, pc
00841958  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0084195c  03 30 a0 e3                                      mov r3, #3
00841960  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841964  07 30 a0 e3                                      mov r3, #7
00841968  04 30 85 e5                                      str r3, [r5, #4]
0084196c  0a 00 a0 e1                                      mov r0, sl
00841970  96 ff ff ea                                      b #0x8417d0
00841974  48 01 9f e5                                      ldr r0, [pc, #0x148]
00841978  00 00 8f e0                                      add r0, pc, r0
0084197c  80 a7 ff eb                                      bl #0x82b784
00841980  00 30 95 e5                                      ldr r3, [r5]
00841984  05 00 a0 e1                                      mov r0, r5
00841988  0f e0 a0 e1                                      mov lr, pc
0084198c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841990  03 30 a0 e3                                      mov r3, #3
00841994  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841998  07 30 a0 e3                                      mov r3, #7
0084199c  04 30 85 e5                                      str r3, [r5, #4]
008419a0  08 00 a0 e1                                      mov r0, r8
008419a4  89 ff ff ea                                      b #0x8417d0
008419a8  00 30 95 e5                                      ldr r3, [r5]
008419ac  05 00 a0 e1                                      mov r0, r5
008419b0  0f e0 a0 e1                                      mov lr, pc
008419b4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008419b8  73 00 50 e3                                      cmp r0, #0x73
008419bc  b8 ff ff 0a                                      beq #0x8418a4
008419c0  00 30 95 e5                                      ldr r3, [r5]
008419c4  05 00 a0 e1                                      mov r0, r5
008419c8  0f e0 a0 e1                                      mov lr, pc
008419cc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
008419d0  00 10 a0 e1                                      mov r1, r0
008419d4  ec 00 9f e5                                      ldr r0, [pc, #0xec]
008419d8  00 00 8f e0                                      add r0, pc, r0
008419dc  68 a7 ff eb                                      bl #0x82b784
008419e0  00 30 95 e5                                      ldr r3, [r5]
008419e4  05 00 a0 e1                                      mov r0, r5
008419e8  0f e0 a0 e1                                      mov lr, pc
008419ec  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008419f0  03 30 a0 e3                                      mov r3, #3
008419f4  5c 38 85 e5                                      str r3, [r5, #0x85c]
008419f8  07 30 a0 e3                                      mov r3, #7
008419fc  04 30 85 e5                                      str r3, [r5, #4]
00841a00  06 00 a0 e1                                      mov r0, r6
00841a04  71 ff ff ea                                      b #0x8417d0
00841a08  00 30 95 e5                                      ldr r3, [r5]
00841a0c  05 00 a0 e1                                      mov r0, r5
00841a10  0f e0 a0 e1                                      mov lr, pc
00841a14  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841a18  03 30 a0 e3                                      mov r3, #3
00841a1c  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841a20  07 30 a0 e3                                      mov r3, #7
00841a24  04 30 85 e5                                      str r3, [r5, #4]
00841a28  00 00 a0 e3                                      mov r0, #0
00841a2c  67 ff ff ea                                      b #0x8417d0
00841a30  c0 a5 ff eb                                      bl #0x82b138
00841a34  68 38 95 e5                                      ldr r3, [r5, #0x868]
00841a38  0f 27 02 e3                                      movw r2, #0x270f
00841a3c  00 30 63 e0                                      rsb r3, r3, r0
00841a40  02 00 53 e1                                      cmp r3, r2
00841a44  60 ff ff da                                      ble #0x8417cc
00841a48  00 30 95 e5                                      ldr r3, [r5]
00841a4c  05 00 a0 e1                                      mov r0, r5
00841a50  0f e0 a0 e1                                      mov lr, pc
00841a54  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00841a58  00 10 a0 e1                                      mov r1, r0
00841a5c  68 00 9f e5                                      ldr r0, [pc, #0x68]
00841a60  00 00 8f e0                                      add r0, pc, r0
00841a64  46 a7 ff eb                                      bl #0x82b784
00841a68  00 30 95 e5                                      ldr r3, [r5]
00841a6c  05 00 a0 e1                                      mov r0, r5
00841a70  0f e0 a0 e1                                      mov lr, pc
00841a74  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841a78  07 30 a0 e3                                      mov r3, #7
00841a7c  04 30 85 e5                                      str r3, [r5, #4]
00841a80  03 30 a0 e3                                      mov r3, #3
00841a84  5c 38 85 e5                                      str r3, [r5, #0x85c]
00841a88  60 a8 85 e5                                      str sl, [r5, #0x860]
00841a8c  0a 00 a0 e1                                      mov r0, sl
00841a90  4e ff ff ea                                      b #0x8417d0
00841a94  a7 a5 ff eb                                      bl #0x82b138
00841a98  64 38 95 e5                                      ldr r3, [r5, #0x864]
00841a9c  30 25 07 e3                                      movw r2, #0x7530
00841aa0  00 30 63 e0                                      rsb r3, r3, r0
00841aa4  02 00 53 e1                                      cmp r3, r2
00841aa8  47 ff ff da                                      ble #0x8417cc
00841aac  a6 ff ff ea                                      b #0x84194c
00841ab0  16 32 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00841ab4  f0 32 15 00 ac 40 00 00 d0 d3 0c 00 ec d3 0c 00  .byte 0xf0, 0x32, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd0, 0xd3, 0x0c, 0x00, 0xec, 0xd3, 0x0c, 0x00
00841ac4  18 d3 0c 00 08 d3 0c 00 80 d1 0c 00              .byte 0x18, 0xd3, 0x0c, 0x00, 0x08, 0xd3, 0x0c, 0x00, 0x80, 0xd1, 0x0c, 0x00

; FUNCTION 0x00841ad0, declared_size=200, range_size=200, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket14SetNonBlockingEv
; demangled: CAndroidSocket::SetNonBlocking()
; decoder-mode: arm
00841ad0  10 40 2d e9                                      push {r4, lr}
00841ad4  03 10 a0 e3                                      mov r1, #3
00841ad8  00 40 a0 e1                                      mov r4, r0
00841adc  00 20 a0 e3                                      mov r2, #0
00841ae0  08 00 90 e5                                      ldr r0, [r0, #8]
00841ae4  9d 31 eb eb                                      bl #0x30e160
00841ae8  00 00 50 e3                                      cmp r0, #0
00841aec  07 00 00 ba                                      blt #0x841b10
00841af0  02 2b 80 e3                                      orr r2, r0, #0x800
00841af4  04 10 a0 e3                                      mov r1, #4
00841af8  08 00 94 e5                                      ldr r0, [r4, #8]
00841afc  97 31 eb eb                                      bl #0x30e160
00841b00  00 00 50 e3                                      cmp r0, #0
00841b04  11 00 00 ba                                      blt #0x841b50
00841b08  01 00 a0 e3                                      mov r0, #1
00841b0c  10 80 bd e8                                      pop {r4, pc}
00841b10  00 30 94 e5                                      ldr r3, [r4]
00841b14  04 00 a0 e1                                      mov r0, r4
00841b18  0f e0 a0 e1                                      mov lr, pc
00841b1c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00841b20  00 10 a0 e1                                      mov r1, r0
00841b24  64 00 9f e5                                      ldr r0, [pc, #0x64]
00841b28  00 00 8f e0                                      add r0, pc, r0
00841b2c  14 a7 ff eb                                      bl #0x82b784
00841b30  00 30 94 e5                                      ldr r3, [r4]
00841b34  04 00 a0 e1                                      mov r0, r4
00841b38  0f e0 a0 e1                                      mov lr, pc
00841b3c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841b40  07 30 a0 e3                                      mov r3, #7
00841b44  04 30 84 e5                                      str r3, [r4, #4]
00841b48  00 00 a0 e3                                      mov r0, #0
00841b4c  10 80 bd e8                                      pop {r4, pc}
00841b50  00 30 94 e5                                      ldr r3, [r4]
00841b54  04 00 a0 e1                                      mov r0, r4
00841b58  0f e0 a0 e1                                      mov lr, pc
00841b5c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00841b60  00 10 a0 e1                                      mov r1, r0
00841b64  28 00 9f e5                                      ldr r0, [pc, #0x28]
00841b68  00 00 8f e0                                      add r0, pc, r0
00841b6c  04 a7 ff eb                                      bl #0x82b784
00841b70  00 30 94 e5                                      ldr r3, [r4]
00841b74  04 00 a0 e1                                      mov r0, r4
00841b78  0f e0 a0 e1                                      mov lr, pc
00841b7c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00841b80  07 30 a0 e3                                      mov r3, #7
00841b84  04 30 84 e5                                      str r3, [r4, #4]
00841b88  00 00 a0 e3                                      mov r0, #0
00841b8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00841b90  f0 d1 0c 00 b0 d1 0c 00                          .byte 0xf0, 0xd1, 0x0c, 0x00, 0xb0, 0xd1, 0x0c, 0x00

; FUNCTION 0x00841b98, declared_size=16, range_size=16, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket12GetLastErrorEv
; demangled: CAndroidSocket::GetLastError()
; decoder-mode: arm
00841b98  10 40 2d e9                                      push {r4, lr}
00841b9c  8b 30 eb eb                                      bl #0x30ddd0
00841ba0  00 00 90 e5                                      ldr r0, [r0]
00841ba4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00841ca8, declared_size=420, range_size=420, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket13GetHostByNameEPc
; demangled: CAndroidSocket::GetHostByName(char*)
; decoder-mode: arm
00841ca8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00841cac  84 41 9f e5                                      ldr r4, [pc, #0x184]
00841cb0  00 50 51 e2                                      subs r5, r1, #0
00841cb4  00 80 a0 e1                                      mov r8, r0
00841cb8  04 40 8f e0                                      add r4, pc, r4
00841cbc  20 00 00 0a                                      beq #0x841d44
00841cc0  05 00 a0 e1                                      mov r0, r5
00841cc4  b8 a4 ff eb                                      bl #0x82afac
00841cc8  01 0b 50 e3                                      cmp r0, #0x400
00841ccc  1c 00 00 ca                                      bgt #0x841d44
00841cd0  64 91 9f e5                                      ldr sb, [pc, #0x164]
00841cd4  09 30 94 e7                                      ldr r3, [r4, sb]
00841cd8  00 30 93 e5                                      ldr r3, [r3]
00841cdc  00 00 53 e3                                      cmp r3, #0
00841ce0  19 00 00 da                                      ble #0x841d4c
00841ce4  60 38 98 e5                                      ldr r3, [r8, #0x860]
00841ce8  01 00 53 e3                                      cmp r3, #1
00841cec  14 00 00 0a                                      beq #0x841d44
00841cf0  48 61 9f e5                                      ldr r6, [pc, #0x148]
00841cf4  00 70 a0 e3                                      mov r7, #0
00841cf8  06 60 94 e7                                      ldr r6, [r4, r6]
00841cfc  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
00841d00  05 00 a0 e1                                      mov r0, r5
00841d04  00 00 53 e3                                      cmp r3, #0
00841d08  05 00 00 0a                                      beq #0x841d24
00841d0c  00 30 93 e5                                      ldr r3, [r3]
00841d10  00 10 53 e2                                      subs r1, r3, #0
00841d14  02 00 00 0a                                      beq #0x841d24
00841d18  8b a5 ff eb                                      bl #0x82b34c
00841d1c  00 00 50 e3                                      cmp r0, #0
00841d20  3e 00 00 0a                                      beq #0x841e20
00841d24  09 30 94 e7                                      ldr r3, [r4, sb]
00841d28  01 70 87 e2                                      add r7, r7, #1
00841d2c  00 30 93 e5                                      ldr r3, [r3]
00841d30  07 00 53 e1                                      cmp r3, r7
00841d34  04 00 00 da                                      ble #0x841d4c
00841d38  60 38 98 e5                                      ldr r3, [r8, #0x860]
00841d3c  01 00 53 e3                                      cmp r3, #1
00841d40  ed ff ff 1a                                      bne #0x841cfc
00841d44  00 00 a0 e3                                      mov r0, #0
00841d48  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00841d4c  05 00 a0 e1                                      mov r0, r5
00841d50  8a 30 eb eb                                      bl #0x30df80
00841d54  00 a0 50 e2                                      subs sl, r0, #0
00841d58  f9 ff ff 0a                                      beq #0x841d44
00841d5c  09 70 94 e7                                      ldr r7, [r4, sb]
00841d60  00 80 97 e5                                      ldr r8, [r7]
00841d64  03 00 58 e3                                      cmp r8, #3
00841d68  04 00 00 da                                      ble #0x841d80
00841d6c  cc 60 9f e5                                      ldr r6, [pc, #0xcc]
00841d70  06 30 94 e7                                      ldr r3, [r4, r6]
00841d74  01 80 48 e2                                      sub r8, r8, #1
00841d78  08 01 93 e7                                      ldr r0, [r3, r8, lsl #2]
00841d7c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00841d80  14 00 a0 e3                                      mov r0, #0x14
00841d84  c0 32 eb eb                                      bl #0x30e88c
00841d88  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
00841d8c  00 30 97 e5                                      ldr r3, [r7]
00841d90  00 10 a0 e3                                      mov r1, #0
00841d94  06 90 94 e7                                      ldr sb, [r4, r6]
00841d98  14 20 a0 e3                                      mov r2, #0x14
00841d9c  08 01 89 e7                                      str r0, [sb, r8, lsl #2]
00841da0  03 01 99 e7                                      ldr r0, [sb, r3, lsl #2]
00841da4  6e a5 ff eb                                      bl #0x82b364
00841da8  00 30 97 e5                                      ldr r3, [r7]
00841dac  0c 20 9a e5                                      ldr r2, [sl, #0xc]
00841db0  05 00 a0 e1                                      mov r0, r5
00841db4  03 31 99 e7                                      ldr r3, [sb, r3, lsl #2]
00841db8  0c 20 83 e5                                      str r2, [r3, #0xc]
00841dbc  00 30 97 e5                                      ldr r3, [r7]
00841dc0  03 81 99 e7                                      ldr r8, [sb, r3, lsl #2]
00841dc4  f5 a6 ff eb                                      bl #0x82b9a0
00841dc8  00 00 88 e5                                      str r0, [r8]
00841dcc  00 30 97 e5                                      ldr r3, [r7]
00841dd0  04 00 a0 e3                                      mov r0, #4
00841dd4  03 81 99 e7                                      ldr r8, [sb, r3, lsl #2]
00841dd8  bc 30 eb eb                                      bl #0x30e0d0
00841ddc  10 00 88 e5                                      str r0, [r8, #0x10]
00841de0  00 30 97 e5                                      ldr r3, [r7]
00841de4  10 20 9a e5                                      ldr r2, [sl, #0x10]
00841de8  03 31 99 e7                                      ldr r3, [sb, r3, lsl #2]
00841dec  00 00 92 e5                                      ldr r0, [r2]
00841df0  10 80 93 e5                                      ldr r8, [r3, #0x10]
00841df4  e9 a6 ff eb                                      bl #0x82b9a0
00841df8  00 00 88 e5                                      str r0, [r8]
00841dfc  00 30 97 e5                                      ldr r3, [r7]
00841e00  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00841e04  05 10 a0 e1                                      mov r1, r5
00841e08  01 30 83 e2                                      add r3, r3, #1
00841e0c  00 00 8f e0                                      add r0, pc, r0
00841e10  00 30 87 e5                                      str r3, [r7]
00841e14  5a a6 ff eb                                      bl #0x82b784
00841e18  00 80 97 e5                                      ldr r8, [r7]
00841e1c  d3 ff ff ea                                      b #0x841d70
00841e20  20 00 9f e5                                      ldr r0, [pc, #0x20]
00841e24  05 10 a0 e1                                      mov r1, r5
00841e28  00 00 8f e0                                      add r0, pc, r0
00841e2c  54 a6 ff eb                                      bl #0x82b784
00841e30  07 01 96 e7                                      ldr r0, [r6, r7, lsl #2]
00841e34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00841e38  d8 2d 15 00 d8 38 00 00 94 45 00 00 3c cf 0c 00  .byte 0xd8, 0x2d, 0x15, 0x00, 0xd8, 0x38, 0x00, 0x00, 0x94, 0x45, 0x00, 0x00, 0x3c, 0xcf, 0x0c, 0x00
00841e48  40 cf 0c 00                                      .byte 0x40, 0xcf, 0x0c, 0x00

; FUNCTION 0x00841e4c, declared_size=368, range_size=368, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket9GetHostIPEPc
; demangled: CAndroidSocket::GetHostIP(char*)
; decoder-mode: arm
00841e4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00841e50  50 71 9f e5                                      ldr r7, [pc, #0x150]
00841e54  50 81 9f e5                                      ldr r8, [pc, #0x150]
00841e58  00 40 a0 e1                                      mov r4, r0
00841e5c  07 70 8f e0                                      add r7, pc, r7
00841e60  08 30 97 e7                                      ldr r3, [r7, r8]
00841e64  00 30 93 e5                                      ldr r3, [r3]
00841e68  00 00 53 e3                                      cmp r3, #0
00841e6c  14 00 00 da                                      ble #0x841ec4
00841e70  38 31 9f e5                                      ldr r3, [pc, #0x138]
00841e74  00 50 a0 e3                                      mov r5, #0
00841e78  03 60 97 e7                                      ldr r6, [r7, r3]
00841e7c  04 00 00 ea                                      b #0x841e94
00841e80  08 30 97 e7                                      ldr r3, [r7, r8]
00841e84  01 50 85 e2                                      add r5, r5, #1
00841e88  00 30 93 e5                                      ldr r3, [r3]
00841e8c  05 00 53 e1                                      cmp r3, r5
00841e90  0b 00 00 da                                      ble #0x841ec4
00841e94  05 31 96 e7                                      ldr r3, [r6, r5, lsl #2]
00841e98  04 00 a0 e1                                      mov r0, r4
00841e9c  00 10 93 e5                                      ldr r1, [r3]
00841ea0  29 a5 ff eb                                      bl #0x82b34c
00841ea4  00 00 50 e3                                      cmp r0, #0
00841ea8  f4 ff ff 1a                                      bne #0x841e80
00841eac  00 01 9f e5                                      ldr r0, [pc, #0x100]
00841eb0  04 10 a0 e1                                      mov r1, r4
00841eb4  00 00 8f e0                                      add r0, pc, r0
00841eb8  31 a6 ff eb                                      bl #0x82b784
00841ebc  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
00841ec0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00841ec4  04 00 a0 e1                                      mov r0, r4
00841ec8  2c 30 eb eb                                      bl #0x30df80
00841ecc  00 60 50 e2                                      subs r6, r0, #0
00841ed0  03 00 00 0a                                      beq #0x841ee4
00841ed4  08 50 97 e7                                      ldr r5, [r7, r8]
00841ed8  00 80 95 e5                                      ldr r8, [r5]
00841edc  03 00 58 e3                                      cmp r8, #3
00841ee0  01 00 00 da                                      ble #0x841eec
00841ee4  06 00 a0 e1                                      mov r0, r6
00841ee8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00841eec  14 00 a0 e3                                      mov r0, #0x14
00841ef0  65 32 eb eb                                      bl #0x30e88c
00841ef4  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00841ef8  00 30 95 e5                                      ldr r3, [r5]
00841efc  00 10 a0 e3                                      mov r1, #0
00841f00  02 70 97 e7                                      ldr r7, [r7, r2]
00841f04  14 20 a0 e3                                      mov r2, #0x14
00841f08  08 01 87 e7                                      str r0, [r7, r8, lsl #2]
00841f0c  03 01 97 e7                                      ldr r0, [r7, r3, lsl #2]
00841f10  13 a5 ff eb                                      bl #0x82b364
00841f14  00 30 95 e5                                      ldr r3, [r5]
00841f18  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00841f1c  04 00 a0 e1                                      mov r0, r4
00841f20  03 31 97 e7                                      ldr r3, [r7, r3, lsl #2]
00841f24  0c 20 83 e5                                      str r2, [r3, #0xc]
00841f28  00 30 95 e5                                      ldr r3, [r5]
00841f2c  03 81 97 e7                                      ldr r8, [r7, r3, lsl #2]
00841f30  9a a6 ff eb                                      bl #0x82b9a0
00841f34  00 00 88 e5                                      str r0, [r8]
00841f38  00 30 95 e5                                      ldr r3, [r5]
00841f3c  04 00 a0 e3                                      mov r0, #4
00841f40  03 81 97 e7                                      ldr r8, [r7, r3, lsl #2]
00841f44  61 30 eb eb                                      bl #0x30e0d0
00841f48  10 00 88 e5                                      str r0, [r8, #0x10]
00841f4c  00 30 95 e5                                      ldr r3, [r5]
00841f50  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00841f54  03 31 97 e7                                      ldr r3, [r7, r3, lsl #2]
00841f58  10 80 93 e5                                      ldr r8, [r3, #0x10]
00841f5c  5b 30 eb eb                                      bl #0x30e0d0
00841f60  00 00 88 e5                                      str r0, [r8]
00841f64  00 30 95 e5                                      ldr r3, [r5]
00841f68  10 10 96 e5                                      ldr r1, [r6, #0x10]
00841f6c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00841f70  03 31 97 e7                                      ldr r3, [r7, r3, lsl #2]
00841f74  00 10 91 e5                                      ldr r1, [r1]
00841f78  10 30 93 e5                                      ldr r3, [r3, #0x10]
00841f7c  00 00 93 e5                                      ldr r0, [r3]
00841f80  38 32 eb eb                                      bl #0x30e868
00841f84  00 30 95 e5                                      ldr r3, [r5]
00841f88  28 00 9f e5                                      ldr r0, [pc, #0x28]
00841f8c  04 10 a0 e1                                      mov r1, r4
00841f90  01 30 83 e2                                      add r3, r3, #1
00841f94  00 00 8f e0                                      add r0, pc, r0
00841f98  00 30 85 e5                                      str r3, [r5]
00841f9c  f8 a5 ff eb                                      bl #0x82b784
00841fa0  06 00 a0 e1                                      mov r0, r6
00841fa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00841fa8  34 2c 15 00 d8 38 00 00 94 45 00 00 b4 ce 0c 00  .byte 0x34, 0x2c, 0x15, 0x00, 0xd8, 0x38, 0x00, 0x00, 0x94, 0x45, 0x00, 0x00, 0xb4, 0xce, 0x0c, 0x00
00841fb8  b4 cd 0c 00                                      .byte 0xb4, 0xcd, 0x0c, 0x00

; FUNCTION 0x00841fbc, declared_size=336, range_size=336, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket10GetLocalIPEPc
; demangled: CAndroidSocket::GetLocalIP(char*)
; decoder-mode: arm
00841fbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00841fc0  38 71 9f e5                                      ldr r7, [pc, #0x138]
00841fc4  38 91 9f e5                                      ldr sb, [pc, #0x138]
00841fc8  fb de 4d e2                                      sub sp, sp, #0xfb0
00841fcc  07 70 8f e0                                      add r7, pc, r7
00841fd0  09 30 97 e7                                      ldr r3, [r7, sb]
00841fd4  0c d0 4d e2                                      sub sp, sp, #0xc
00841fd8  02 00 a0 e3                                      mov r0, #2
00841fdc  00 30 93 e5                                      ldr r3, [r3]
00841fe0  00 b0 a0 e3                                      mov fp, #0
00841fe4  18 40 8d e2                                      add r4, sp, #0x18
00841fe8  00 10 8d e5                                      str r1, [sp]
00841fec  b4 3f 8d e5                                      str r3, [sp, #0xfb4]
00841ff0  04 50 44 e2                                      sub r5, r4, #4
00841ff4  fa 3e a0 e3                                      mov r3, #0xfa0
00841ff8  00 10 a0 e1                                      mov r1, r0
00841ffc  0b 20 a0 e1                                      mov r2, fp
00842000  0c 30 8d e5                                      str r3, [sp, #0xc]
00842004  10 50 8d e5                                      str r5, [sp, #0x10]
00842008  a0 32 eb eb                                      bl #0x30ea90
0084200c  01 00 70 e3                                      cmn r0, #1
00842010  00 a0 a0 e1                                      mov sl, r0
00842014  36 00 00 0a                                      beq #0x8420f4
00842018  0c 20 44 e2                                      sub r2, r4, #0xc
0084201c  12 19 08 e3                                      movw r1, #0x8912
00842020  69 30 eb eb                                      bl #0x30e1cc
00842024  0b 00 50 e1                                      cmp r0, fp
00842028  31 00 00 ba                                      blt #0x8420f4
0084202c  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00842030  05 40 a0 e1                                      mov r4, r5
00842034  03 30 8f e0                                      add r3, pc, r3
00842038  04 30 8d e5                                      str r3, [sp, #4]
0084203c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00842040  03 30 85 e0                                      add r3, r5, r3
00842044  03 00 54 e1                                      cmp r4, r3
00842048  1e 00 00 2a                                      bhs #0x8420c8
0084204c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00842050  ed 30 eb eb                                      bl #0x30e40c
00842054  04 60 a0 e1                                      mov r6, r4
00842058  20 40 84 e2                                      add r4, r4, #0x20
0084205c  b0 31 54 e1                                      ldrh r3, [r4, #-0x10]
00842060  00 80 a0 e1                                      mov r8, r0
00842064  02 00 53 e3                                      cmp r3, #2
00842068  f3 ff ff 1a                                      bne #0x84203c
0084206c  3a 10 a0 e3                                      mov r1, #0x3a
00842070  01 20 a0 e3                                      mov r2, #1
00842074  06 00 a0 e1                                      mov r0, r6
00842078  a9 a4 ff eb                                      bl #0x82b324
0084207c  00 00 50 e3                                      cmp r0, #0
00842080  0b 30 a0 11                                      movne r3, fp
00842084  00 30 c0 15                                      strbne r3, [r0]
00842088  06 20 a0 e1                                      mov r2, r6
0084208c  0a 00 a0 e1                                      mov r0, sl
00842090  13 19 08 e3                                      movw r1, #0x8913
00842094  4c 30 eb eb                                      bl #0x30e1cc
00842098  b0 31 54 e1                                      ldrh r3, [r4, #-0x10]
0084209c  01 00 13 e3                                      tst r3, #1
008420a0  e5 ff ff 0a                                      beq #0x84203c
008420a4  08 00 a0 e1                                      mov r0, r8
008420a8  04 10 9d e5                                      ldr r1, [sp, #4]
008420ac  a6 a4 ff eb                                      bl #0x82b34c
008420b0  00 00 50 e3                                      cmp r0, #0
008420b4  e0 ff ff 0a                                      beq #0x84203c
008420b8  08 10 a0 e1                                      mov r1, r8
008420bc  00 00 9d e5                                      ldr r0, [sp]
008420c0  9e a4 ff eb                                      bl #0x82b340
008420c4  dc ff ff ea                                      b #0x84203c
008420c8  0a 00 a0 e1                                      mov r0, sl
008420cc  ae 32 eb eb                                      bl #0x30eb8c
008420d0  01 00 a0 e3                                      mov r0, #1
008420d4  09 30 97 e7                                      ldr r3, [r7, sb]
008420d8  b4 2f 9d e5                                      ldr r2, [sp, #0xfb4]
008420dc  00 30 93 e5                                      ldr r3, [r3]
008420e0  03 00 52 e1                                      cmp r2, r3
008420e4  04 00 00 1a                                      bne #0x8420fc
008420e8  ef df 8d e2                                      add sp, sp, #0x3bc
008420ec  03 db 8d e2                                      add sp, sp, #0xc00
008420f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008420f4  00 00 a0 e3                                      mov r0, #0
008420f8  f5 ff ff ea                                      b #0x8420d4
008420fc  83 30 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00842100  c4 2a 15 00 ac 40 00 00 7c a3 0c 00              .byte 0xc4, 0x2a, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x7c, 0xa3, 0x0c, 0x00

; FUNCTION 0x0084210c, declared_size=252, range_size=252, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket7ClearupEv
; demangled: CAndroidSocket::Clearup()
; decoder-mode: arm
0084210c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00842110  e4 60 9f e5                                      ldr r6, [pc, #0xe4]
00842114  e4 b0 9f e5                                      ldr fp, [pc, #0xe4]
00842118  06 60 8f e0                                      add r6, pc, r6
0084211c  0b 30 96 e7                                      ldr r3, [r6, fp]
00842120  00 30 93 e5                                      ldr r3, [r3]
00842124  00 00 53 e3                                      cmp r3, #0
00842128  2f 00 00 da                                      ble #0x8421ec
0084212c  d0 80 9f e5                                      ldr r8, [pc, #0xd0]
00842130  00 40 a0 e3                                      mov r4, #0
00842134  04 a0 a0 e1                                      mov sl, r4
00842138  08 90 96 e7                                      ldr sb, [r6, r8]
0084213c  04 70 a0 e1                                      mov r7, r4
00842140  09 30 94 e7                                      ldr r3, [r4, sb]
00842144  01 a0 8a e2                                      add sl, sl, #1
00842148  00 00 93 e5                                      ldr r0, [r3]
0084214c  00 00 50 e3                                      cmp r0, #0
00842150  03 00 00 0a                                      beq #0x842164
00842154  55 30 eb eb                                      bl #0x30e2b0
00842158  09 30 94 e7                                      ldr r3, [r4, sb]
0084215c  00 70 83 e5                                      str r7, [r3]
00842160  09 30 94 e7                                      ldr r3, [r4, sb]
00842164  10 30 93 e5                                      ldr r3, [r3, #0x10]
00842168  00 00 93 e5                                      ldr r0, [r3]
0084216c  00 00 50 e3                                      cmp r0, #0
00842170  06 00 00 0a                                      beq #0x842190
00842174  4d 30 eb eb                                      bl #0x30e2b0
00842178  08 30 96 e7                                      ldr r3, [r6, r8]
0084217c  03 20 94 e7                                      ldr r2, [r4, r3]
00842180  10 20 92 e5                                      ldr r2, [r2, #0x10]
00842184  00 70 82 e5                                      str r7, [r2]
00842188  03 30 94 e7                                      ldr r3, [r4, r3]
0084218c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00842190  08 50 96 e7                                      ldr r5, [r6, r8]
00842194  00 70 83 e5                                      str r7, [r3]
00842198  05 30 94 e7                                      ldr r3, [r4, r5]
0084219c  10 00 93 e5                                      ldr r0, [r3, #0x10]
008421a0  00 00 50 e3                                      cmp r0, #0
008421a4  03 00 00 0a                                      beq #0x8421b8
008421a8  40 30 eb eb                                      bl #0x30e2b0
008421ac  05 30 94 e7                                      ldr r3, [r4, r5]
008421b0  10 70 83 e5                                      str r7, [r3, #0x10]
008421b4  05 30 94 e7                                      ldr r3, [r4, r5]
008421b8  00 00 53 e3                                      cmp r3, #0
008421bc  03 00 00 0a                                      beq #0x8421d0
008421c0  03 00 a0 e1                                      mov r0, r3
008421c4  39 30 eb eb                                      bl #0x30e2b0
008421c8  08 30 96 e7                                      ldr r3, [r6, r8]
008421cc  03 70 84 e7                                      str r7, [r4, r3]
008421d0  0b 30 96 e7                                      ldr r3, [r6, fp]
008421d4  08 20 96 e7                                      ldr r2, [r6, r8]
008421d8  00 30 93 e5                                      ldr r3, [r3]
008421dc  02 70 84 e7                                      str r7, [r4, r2]
008421e0  04 40 84 e2                                      add r4, r4, #4
008421e4  0a 00 53 e1                                      cmp r3, sl
008421e8  d4 ff ff ca                                      bgt #0x842140
008421ec  0b 30 96 e7                                      ldr r3, [r6, fp]
008421f0  00 20 a0 e3                                      mov r2, #0
008421f4  00 20 83 e5                                      str r2, [r3]
008421f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
008421fc  78 29 15 00 d8 38 00 00 94 45 00 00              .byte 0x78, 0x29, 0x15, 0x00, 0xd8, 0x38, 0x00, 0x00, 0x94, 0x45, 0x00, 0x00

; FUNCTION 0x00842208, declared_size=88, range_size=88, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket7StartupEv
; demangled: CAndroidSocket::Startup()
; decoder-mode: arm
00842208  04 e0 2d e5                                      str lr, [sp, #-4]!
0084220c  44 e0 9f e5                                      ldr lr, [pc, #0x44]
00842210  44 30 9f e5                                      ldr r3, [pc, #0x44]
00842214  14 d0 4d e2                                      sub sp, sp, #0x14
00842218  0e e0 8f e0                                      add lr, pc, lr
0084221c  03 c0 9e e7                                      ldr ip, [lr, r3]
00842220  10 10 8d e2                                      add r1, sp, #0x10
00842224  01 30 a0 e3                                      mov r3, #1
00842228  10 30 21 e5                                      str r3, [r1, #-0x10]!
0084222c  00 30 a0 e3                                      mov r3, #0
00842230  0d 10 a0 e1                                      mov r1, sp
00842234  03 20 a0 e1                                      mov r2, r3
00842238  0c 30 8c e5                                      str r3, [ip, #0xc]
0084223c  00 30 8c e5                                      str r3, [ip]
00842240  04 30 8c e5                                      str r3, [ip, #4]
00842244  08 30 8c e5                                      str r3, [ip, #8]
00842248  0d 00 a0 e3                                      mov r0, #0xd
0084224c  b5 31 eb eb                                      bl #0x30e928
00842250  14 d0 8d e2                                      add sp, sp, #0x14
00842254  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
00842258  78 28 15 00 94 45 00 00                          .byte 0x78, 0x28, 0x15, 0x00, 0x94, 0x45, 0x00, 0x00

; FUNCTION 0x00842260, declared_size=88, range_size=88, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocketD1Ev
; demangled: CAndroidSocket::~CAndroidSocket()
; decoder-mode: arm
00842260  10 40 2d e9                                      push {r4, lr}
00842264  44 30 9f e5                                      ldr r3, [pc, #0x44]
00842268  44 20 9f e5                                      ldr r2, [pc, #0x44]
0084226c  60 18 90 e5                                      ldr r1, [r0, #0x860]
00842270  03 30 8f e0                                      add r3, pc, r3
00842274  02 20 93 e7                                      ldr r2, [r3, r2]
00842278  00 00 51 e3                                      cmp r1, #0
0084227c  00 40 a0 e1                                      mov r4, r0
00842280  08 20 82 e2                                      add r2, r2, #8
00842284  00 20 80 e5                                      str r2, [r0]
00842288  02 00 00 0a                                      beq #0x842298
0084228c  ec 08 90 e5                                      ldr r0, [r0, #0x8ec]
00842290  00 10 a0 e3                                      mov r1, #0
00842294  81 32 eb eb                                      bl #0x30eca0
00842298  04 00 a0 e1                                      mov r0, r4
0084229c  04 fc ff eb                                      bl #0x8412b4
008422a0  04 00 a0 e1                                      mov r0, r4
008422a4  f0 b7 ff eb                                      bl #0x83026c
008422a8  04 00 a0 e1                                      mov r0, r4
008422ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008422b0  20 28 15 00 d8 06 00 00                          .byte 0x20, 0x28, 0x15, 0x00, 0xd8, 0x06, 0x00, 0x00

; FUNCTION 0x008422b8, declared_size=28, range_size=28, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocketD0Ev
; demangled: CAndroidSocket::~CAndroidSocket()
; decoder-mode: arm
008422b8  10 40 2d e9                                      push {r4, lr}
008422bc  00 40 a0 e1                                      mov r4, r0
008422c0  e6 ff ff eb                                      bl #0x842260
008422c4  04 00 a0 e1                                      mov r0, r4
008422c8  f8 2f eb eb                                      bl #0x30e2b0
008422cc  04 00 a0 e1                                      mov r0, r4
008422d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008422d4, declared_size=88, range_size=88, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocketD2Ev
; demangled: CAndroidSocket::~CAndroidSocket()
; decoder-mode: arm
008422d4  10 40 2d e9                                      push {r4, lr}
008422d8  44 30 9f e5                                      ldr r3, [pc, #0x44]
008422dc  44 20 9f e5                                      ldr r2, [pc, #0x44]
008422e0  60 18 90 e5                                      ldr r1, [r0, #0x860]
008422e4  03 30 8f e0                                      add r3, pc, r3
008422e8  02 20 93 e7                                      ldr r2, [r3, r2]
008422ec  00 00 51 e3                                      cmp r1, #0
008422f0  00 40 a0 e1                                      mov r4, r0
008422f4  08 20 82 e2                                      add r2, r2, #8
008422f8  00 20 80 e5                                      str r2, [r0]
008422fc  02 00 00 0a                                      beq #0x84230c
00842300  ec 08 90 e5                                      ldr r0, [r0, #0x8ec]
00842304  00 10 a0 e3                                      mov r1, #0
00842308  64 32 eb eb                                      bl #0x30eca0
0084230c  04 00 a0 e1                                      mov r0, r4
00842310  e7 fb ff eb                                      bl #0x8412b4
00842314  04 00 a0 e1                                      mov r0, r4
00842318  d3 b7 ff eb                                      bl #0x83026c
0084231c  04 00 a0 e1                                      mov r0, r4
00842320  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00842324  ac 27 15 00 d8 06 00 00                          .byte 0xac, 0x27, 0x15, 0x00, 0xd8, 0x06, 0x00, 0x00

; FUNCTION 0x0084232c, declared_size=52, range_size=52, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocketC1EPciP23GLXPlayerSocketObserver
; demangled: CAndroidSocket::CAndroidSocket(char*, int, GLXPlayerSocketObserver*)
; decoder-mode: arm
0084232c  70 40 2d e9                                      push {r4, r5, r6, lr}
00842330  20 40 9f e5                                      ldr r4, [pc, #0x20]
00842334  00 50 a0 e1                                      mov r5, r0
00842338  17 b8 ff eb                                      bl #0x83039c
0084233c  18 30 9f e5                                      ldr r3, [pc, #0x18]
00842340  04 40 8f e0                                      add r4, pc, r4
00842344  05 00 a0 e1                                      mov r0, r5
00842348  03 30 94 e7                                      ldr r3, [r4, r3]
0084234c  08 30 83 e2                                      add r3, r3, #8
00842350  00 30 85 e5                                      str r3, [r5]
00842354  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00842358  50 27 15 00 d8 06 00 00                          .byte 0x50, 0x27, 0x15, 0x00, 0xd8, 0x06, 0x00, 0x00

; FUNCTION 0x00842360, declared_size=208, range_size=208, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocket6AcceptEv
; demangled: CAndroidSocket::Accept()
; decoder-mode: arm
00842360  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00842364  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
00842368  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084236c  03 30 8f e0                                      add r3, pc, r3
00842370  02 50 93 e7                                      ldr r5, [r3, r2]
00842374  18 d0 4d e2                                      sub sp, sp, #0x18
00842378  10 20 a0 e3                                      mov r2, #0x10
0084237c  00 c0 95 e5                                      ldr ip, [r5]
00842380  00 20 8d e5                                      str r2, [sp]
00842384  02 20 a0 e3                                      mov r2, #2
00842388  14 c0 8d e5                                      str ip, [sp, #0x14]
0084238c  b4 20 cd e1                                      strh r2, [sp, #4]
00842390  04 10 8d e2                                      add r1, sp, #4
00842394  0d 20 a0 e1                                      mov r2, sp
00842398  08 00 90 e5                                      ldr r0, [r0, #8]
0084239c  42 32 eb eb                                      bl #0x30ecac
008423a0  00 70 a0 e1                                      mov r7, r0
008423a4  08 00 9d e5                                      ldr r0, [sp, #8]
008423a8  17 30 eb eb                                      bl #0x30e40c
008423ac  00 80 a0 e1                                      mov r8, r0
008423b0  f4 0c 00 e3                                      movw r0, #0xcf4
008423b4  b6 60 dd e1                                      ldrh r6, [sp, #6]
008423b8  33 31 eb eb                                      bl #0x30e88c
008423bc  00 10 a0 e3                                      mov r1, #0
008423c0  01 20 a0 e1                                      mov r2, r1
008423c4  00 40 a0 e1                                      mov r4, r0
008423c8  01 30 a0 e1                                      mov r3, r1
008423cc  d6 ff ff eb                                      bl #0x84232c
008423d0  04 00 a0 e1                                      mov r0, r4
008423d4  07 10 a0 e1                                      mov r1, r7
008423d8  1d b7 ff eb                                      bl #0x830054
008423dc  04 00 a0 e1                                      mov r0, r4
008423e0  08 10 a0 e1                                      mov r1, r8
008423e4  bb b7 ff eb                                      bl #0x8302d8
008423e8  26 34 a0 e1                                      lsr r3, r6, #8
008423ec  06 64 83 e1                                      orr r6, r3, r6, lsl #8
008423f0  76 10 ff e6                                      uxth r1, r6
008423f4  04 00 a0 e1                                      mov r0, r4
008423f8  13 b7 ff eb                                      bl #0x83004c
008423fc  04 00 a0 e1                                      mov r0, r4
00842400  01 10 a0 e3                                      mov r1, #1
00842404  16 b7 ff eb                                      bl #0x830064
00842408  14 20 9d e5                                      ldr r2, [sp, #0x14]
0084240c  00 30 95 e5                                      ldr r3, [r5]
00842410  04 00 a0 e1                                      mov r0, r4
00842414  03 00 52 e1                                      cmp r2, r3
00842418  01 00 00 1a                                      bne #0x842424
0084241c  18 d0 8d e2                                      add sp, sp, #0x18
00842420  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00842424  b9 2f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00842428  24 27 15 00 ac 40 00 00                          .byte 0x24, 0x27, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00842430, declared_size=52, range_size=52, mode=arm
; class-group: CAndroidSocket
; alias: _ZN14CAndroidSocketC2EPciP23GLXPlayerSocketObserver
; demangled: CAndroidSocket::CAndroidSocket(char*, int, GLXPlayerSocketObserver*)
; decoder-mode: arm
00842430  70 40 2d e9                                      push {r4, r5, r6, lr}
00842434  20 40 9f e5                                      ldr r4, [pc, #0x20]
00842438  00 50 a0 e1                                      mov r5, r0
0084243c  d6 b7 ff eb                                      bl #0x83039c
00842440  18 30 9f e5                                      ldr r3, [pc, #0x18]
00842444  04 40 8f e0                                      add r4, pc, r4
00842448  05 00 a0 e1                                      mov r0, r5
0084244c  03 30 94 e7                                      ldr r3, [r4, r3]
00842450  08 30 83 e2                                      add r3, r3, #8
00842454  00 30 85 e5                                      str r3, [r5]
00842458  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0084245c  4c 26 15 00 d8 06 00 00                          .byte 0x4c, 0x26, 0x15, 0x00, 0xd8, 0x06, 0x00, 0x00
