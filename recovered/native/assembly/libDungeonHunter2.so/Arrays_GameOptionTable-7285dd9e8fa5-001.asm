; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a8d28, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::GameOptionTable
; alias: _ZN6Arrays15GameOptionTable13finalizeNamesEv
; demangled: Arrays::GameOptionTable::finalizeNames()
; decoder-mode: arm
004a8d28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8d2c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a8d30  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a8d34  05 50 8f e0                                      add r5, pc, r5
004a8d38  06 30 95 e7                                      ldr r3, [r5, r6]
004a8d3c  00 30 93 e5                                      ldr r3, [r3]
004a8d40  00 00 53 e3                                      cmp r3, #0
004a8d44  1a 00 00 0a                                      beq #0x4a8db4
004a8d48  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a8d4c  07 20 95 e7                                      ldr r2, [r5, r7]
004a8d50  00 20 92 e5                                      ldr r2, [r2]
004a8d54  00 00 52 e3                                      cmp r2, #0
004a8d58  10 00 00 0a                                      beq #0x4a8da0
004a8d5c  00 40 a0 e3                                      mov r4, #0
004a8d60  01 00 00 ea                                      b #0x4a8d6c
004a8d64  06 30 95 e7                                      ldr r3, [r5, r6]
004a8d68  00 30 93 e5                                      ldr r3, [r3]
004a8d6c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a8d70  01 40 84 e2                                      add r4, r4, #1
004a8d74  00 00 50 e3                                      cmp r0, #0
004a8d78  02 00 00 0a                                      beq #0x4a8d88
004a8d7c  af 9d f9 eb                                      bl #0x310440
004a8d80  06 30 95 e7                                      ldr r3, [r5, r6]
004a8d84  00 30 93 e5                                      ldr r3, [r3]
004a8d88  07 20 95 e7                                      ldr r2, [r5, r7]
004a8d8c  00 20 92 e5                                      ldr r2, [r2]
004a8d90  04 00 52 e1                                      cmp r2, r4
004a8d94  f2 ff ff 8a                                      bhi #0x4a8d64
004a8d98  00 00 53 e3                                      cmp r3, #0
004a8d9c  01 00 00 0a                                      beq #0x4a8da8
004a8da0  03 00 a0 e1                                      mov r0, r3
004a8da4  a5 9d f9 eb                                      bl #0x310440
004a8da8  06 30 95 e7                                      ldr r3, [r5, r6]
004a8dac  00 20 a0 e3                                      mov r2, #0
004a8db0  00 20 83 e5                                      str r2, [r3]
004a8db4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8db8  5c bd 4e 00 3c 1f 00 00 60 35 00 00              .byte 0x5c, 0xbd, 0x4e, 0x00, 0x3c, 0x1f, 0x00, 0x00, 0x60, 0x35, 0x00, 0x00

; FUNCTION 0x004a8dc4, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::GameOptionTable
; alias: _ZN6Arrays15GameOptionTable8finalizeEv
; demangled: Arrays::GameOptionTable::finalize()
; decoder-mode: arm
004a8dc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8dc8  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a8dcc  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a8dd0  05 50 8f e0                                      add r5, pc, r5
004a8dd4  06 30 95 e7                                      ldr r3, [r5, r6]
004a8dd8  00 30 93 e5                                      ldr r3, [r3]
004a8ddc  00 00 53 e3                                      cmp r3, #0
004a8de0  29 00 00 0a                                      beq #0x4a8e8c
004a8de4  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a8de8  07 20 95 e7                                      ldr r2, [r5, r7]
004a8dec  00 20 92 e5                                      ldr r2, [r2]
004a8df0  00 00 52 e3                                      cmp r2, #0
004a8df4  10 00 00 0a                                      beq #0x4a8e3c
004a8df8  00 40 a0 e3                                      mov r4, #0
004a8dfc  01 00 00 ea                                      b #0x4a8e08
004a8e00  06 30 95 e7                                      ldr r3, [r5, r6]
004a8e04  00 30 93 e5                                      ldr r3, [r3]
004a8e08  84 02 83 e0                                      add r0, r3, r4, lsl #5
004a8e0c  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004a8e10  0f e0 a0 e1                                      mov lr, pc
004a8e14  08 f0 93 e5                                      ldr pc, [r3, #8]
004a8e18  07 30 95 e7                                      ldr r3, [r5, r7]
004a8e1c  01 40 84 e2                                      add r4, r4, #1
004a8e20  00 30 93 e5                                      ldr r3, [r3]
004a8e24  04 00 53 e1                                      cmp r3, r4
004a8e28  f4 ff ff 8a                                      bhi #0x4a8e00
004a8e2c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8e30  00 30 93 e5                                      ldr r3, [r3]
004a8e34  00 00 53 e3                                      cmp r3, #0
004a8e38  10 00 00 0a                                      beq #0x4a8e80
004a8e3c  04 00 13 e5                                      ldr r0, [r3, #-4]
004a8e40  80 02 83 e0                                      add r0, r3, r0, lsl #5
004a8e44  00 00 53 e1                                      cmp r3, r0
004a8e48  01 00 00 1a                                      bne #0x4a8e54
004a8e4c  09 00 00 ea                                      b #0x4a8e78
004a8e50  04 00 a0 e1                                      mov r0, r4
004a8e54  20 40 40 e2                                      sub r4, r0, #0x20
004a8e58  20 30 10 e5                                      ldr r3, [r0, #-0x20]
004a8e5c  04 00 a0 e1                                      mov r0, r4
004a8e60  0f e0 a0 e1                                      mov lr, pc
004a8e64  00 f0 93 e5                                      ldr pc, [r3]
004a8e68  06 30 95 e7                                      ldr r3, [r5, r6]
004a8e6c  00 00 93 e5                                      ldr r0, [r3]
004a8e70  04 00 50 e1                                      cmp r0, r4
004a8e74  f5 ff ff 1a                                      bne #0x4a8e50
004a8e78  08 00 40 e2                                      sub r0, r0, #8
004a8e7c  6f 9d f9 eb                                      bl #0x310440
004a8e80  06 30 95 e7                                      ldr r3, [r5, r6]
004a8e84  00 20 a0 e3                                      mov r2, #0
004a8e88  00 20 83 e5                                      str r2, [r3]
004a8e8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8e90  c0 bc 4e 00 7c 1a 00 00 60 35 00 00              .byte 0xc0, 0xbc, 0x4e, 0x00, 0x7c, 0x1a, 0x00, 0x00, 0x60, 0x35, 0x00, 0x00

; FUNCTION 0x004b360c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::GameOptionTable
; alias: _ZN6Arrays15GameOptionTable9readNamesEP11IStreamBase
; demangled: Arrays::GameOptionTable::readNames(IStreamBase*)
; decoder-mode: arm
004b360c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b3610  00 70 a0 e1                                      mov r7, r0
004b3614  1c d0 4d e2                                      sub sp, sp, #0x1c
004b3618  c2 d5 ff eb                                      bl #0x4a8d28
004b361c  07 00 a0 e1                                      mov r0, r7
004b3620  1a 81 f9 eb                                      bl #0x313a90
004b3624  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b3628  01 30 a0 e3                                      mov r3, #1
004b362c  00 00 53 e3                                      cmp r3, #0
004b3630  06 60 8f e0                                      add r6, pc, r6
004b3634  14 00 8d e5                                      str r0, [sp, #0x14]
004b3638  0c 30 8d e5                                      str r3, [sp, #0xc]
004b363c  12 00 00 1a                                      bne #0x4b368c
004b3640  14 30 8d e2                                      add r3, sp, #0x14
004b3644  02 20 83 e2                                      add r2, r3, #2
004b3648  01 30 83 e2                                      add r3, r3, #1
004b364c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3650  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3654  03 00 52 e1                                      cmp r2, r3
004b3658  02 40 a0 e1                                      mov r4, r2
004b365c  01 10 20 e0                                      eor r1, r0, r1
004b3660  01 10 43 e5                                      strb r1, [r3, #-1]
004b3664  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3668  00 10 21 e0                                      eor r1, r1, r0
004b366c  01 10 c2 e5                                      strb r1, [r2, #1]
004b3670  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3674  01 20 42 e2                                      sub r2, r2, #1
004b3678  00 10 21 e0                                      eor r1, r1, r0
004b367c  01 10 43 e5                                      strb r1, [r3, #-1]
004b3680  01 30 83 e2                                      add r3, r3, #1
004b3684  f0 ff ff 8a                                      bhi #0x4b364c
004b3688  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b368c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b3690  03 30 96 e7                                      ldr r3, [r6, r3]
004b3694  00 30 93 e5                                      ldr r3, [r3]
004b3698  00 00 53 e1                                      cmp r3, r0
004b369c  01 00 00 0a                                      beq #0x4b36a8
004b36a0  1c d0 8d e2                                      add sp, sp, #0x1c
004b36a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b36a8  00 01 a0 e1                                      lsl r0, r0, #2
004b36ac  01 10 a0 e3                                      mov r1, #1
004b36b0  ad 73 f9 eb                                      bl #0x31056c
004b36b4  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b36b8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b36bc  09 30 96 e7                                      ldr r3, [r6, sb]
004b36c0  00 00 52 e3                                      cmp r2, #0
004b36c4  00 00 83 e5                                      str r0, [r3]
004b36c8  f4 ff ff 0a                                      beq #0x4b36a0
004b36cc  10 a0 8d e2                                      add sl, sp, #0x10
004b36d0  01 80 a0 e3                                      mov r8, #1
004b36d4  08 10 8a e0                                      add r1, sl, r8
004b36d8  02 30 8a e2                                      add r3, sl, #2
004b36dc  00 40 a0 e3                                      mov r4, #0
004b36e0  0a 00 8d e8                                      stm sp, {r1, r3}
004b36e4  07 00 a0 e1                                      mov r0, r7
004b36e8  0a 10 a0 e1                                      mov r1, sl
004b36ec  ab ae fc eb                                      bl #0x3df1a0
004b36f0  00 00 58 e3                                      cmp r8, #0
004b36f4  0c 80 8d e5                                      str r8, [sp, #0xc]
004b36f8  0f 00 00 1a                                      bne #0x4b373c
004b36fc  00 30 9d e5                                      ldr r3, [sp]
004b3700  04 20 9d e5                                      ldr r2, [sp, #4]
004b3704  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3708  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b370c  03 00 52 e1                                      cmp r2, r3
004b3710  01 10 20 e0                                      eor r1, r0, r1
004b3714  01 10 43 e5                                      strb r1, [r3, #-1]
004b3718  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b371c  00 10 21 e0                                      eor r1, r1, r0
004b3720  01 10 c2 e5                                      strb r1, [r2, #1]
004b3724  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3728  01 20 42 e2                                      sub r2, r2, #1
004b372c  00 10 21 e0                                      eor r1, r1, r0
004b3730  01 10 43 e5                                      strb r1, [r3, #-1]
004b3734  01 30 83 e2                                      add r3, r3, #1
004b3738  f1 ff ff 8a                                      bhi #0x4b3704
004b373c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b3740  09 50 96 e7                                      ldr r5, [r6, sb]
004b3744  01 10 a0 e3                                      mov r1, #1
004b3748  01 00 80 e0                                      add r0, r0, r1
004b374c  00 b0 95 e5                                      ldr fp, [r5]
004b3750  85 73 f9 eb                                      bl #0x31056c
004b3754  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b3758  00 30 95 e5                                      ldr r3, [r5]
004b375c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b3760  07 00 a0 e1                                      mov r0, r7
004b3764  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b3768  00 30 a0 e3                                      mov r3, #0
004b376c  38 8f f9 eb                                      bl #0x317454
004b3770  00 30 95 e5                                      ldr r3, [r5]
004b3774  00 10 a0 e3                                      mov r1, #0
004b3778  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b377c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b3780  01 40 84 e2                                      add r4, r4, #1
004b3784  03 10 c2 e7                                      strb r1, [r2, r3]
004b3788  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b378c  04 00 53 e1                                      cmp r3, r4
004b3790  d3 ff ff 8a                                      bhi #0x4b36e4
004b3794  c1 ff ff ea                                      b #0x4b36a0
; mapping-symbol data/literal pool
004b3798  60 14 4e 00 60 35 00 00 3c 1f 00 00              .byte 0x60, 0x14, 0x4e, 0x00, 0x60, 0x35, 0x00, 0x00, 0x3c, 0x1f, 0x00, 0x00

; FUNCTION 0x004bc8e0, declared_size=312, range_size=312, mode=arm
; class-group: Arrays::GameOptionTable
; alias: _ZN6Arrays15GameOptionTable4readEP11IStreamBase
; demangled: Arrays::GameOptionTable::read(IStreamBase*)
; decoder-mode: arm
004bc8e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004bc8e4  08 d0 4d e2                                      sub sp, sp, #8
004bc8e8  00 80 a0 e1                                      mov r8, r0
004bc8ec  67 5c f9 eb                                      bl #0x313a90
004bc8f0  10 51 9f e5                                      ldr r5, [pc, #0x110]
004bc8f4  01 30 a0 e3                                      mov r3, #1
004bc8f8  00 00 53 e3                                      cmp r3, #0
004bc8fc  04 00 8d e5                                      str r0, [sp, #4]
004bc900  00 30 8d e5                                      str r3, [sp]
004bc904  05 50 8f e0                                      add r5, pc, r5
004bc908  10 00 00 1a                                      bne #0x4bc950
004bc90c  04 30 8d e2                                      add r3, sp, #4
004bc910  02 20 83 e2                                      add r2, r3, #2
004bc914  01 30 83 e2                                      add r3, r3, #1
004bc918  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc91c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bc920  03 00 52 e1                                      cmp r2, r3
004bc924  01 10 20 e0                                      eor r1, r0, r1
004bc928  01 10 43 e5                                      strb r1, [r3, #-1]
004bc92c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc930  00 10 21 e0                                      eor r1, r1, r0
004bc934  01 10 c2 e5                                      strb r1, [r2, #1]
004bc938  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bc93c  01 20 42 e2                                      sub r2, r2, #1
004bc940  00 10 21 e0                                      eor r1, r1, r0
004bc944  01 10 43 e5                                      strb r1, [r3, #-1]
004bc948  01 30 83 e2                                      add r3, r3, #1
004bc94c  f1 ff ff 8a                                      bhi #0x4bc918
004bc950  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
004bc954  1a b1 ff eb                                      bl #0x4a8dc4
004bc958  04 40 9d e5                                      ldr r4, [sp, #4]
004bc95c  06 30 95 e7                                      ldr r3, [r5, r6]
004bc960  01 10 a0 e3                                      mov r1, #1
004bc964  84 02 a0 e1                                      lsl r0, r4, #5
004bc968  00 40 83 e5                                      str r4, [r3]
004bc96c  08 00 80 e2                                      add r0, r0, #8
004bc970  fd 4e f9 eb                                      bl #0x31056c
004bc974  20 30 a0 e3                                      mov r3, #0x20
004bc978  00 00 54 e3                                      cmp r4, #0
004bc97c  18 00 80 e8                                      stm r0, {r3, r4}
004bc980  08 30 80 e2                                      add r3, r0, #8
004bc984  08 00 00 0a                                      beq #0x4bc9ac
004bc988  80 10 9f e5                                      ldr r1, [pc, #0x80]
004bc98c  00 20 a0 e3                                      mov r2, #0
004bc990  01 10 95 e7                                      ldr r1, [r5, r1]
004bc994  08 10 81 e2                                      add r1, r1, #8
004bc998  01 20 82 e2                                      add r2, r2, #1
004bc99c  04 00 52 e1                                      cmp r2, r4
004bc9a0  08 10 80 e5                                      str r1, [r0, #8]
004bc9a4  20 00 80 e2                                      add r0, r0, #0x20
004bc9a8  fa ff ff 1a                                      bne #0x4bc998
004bc9ac  06 20 95 e7                                      ldr r2, [r5, r6]
004bc9b0  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004bc9b4  00 10 92 e5                                      ldr r1, [r2]
004bc9b8  07 20 95 e7                                      ldr r2, [r5, r7]
004bc9bc  00 00 51 e3                                      cmp r1, #0
004bc9c0  00 30 82 e5                                      str r3, [r2]
004bc9c4  0d 00 00 0a                                      beq #0x4bca00
004bc9c8  00 40 a0 e3                                      mov r4, #0
004bc9cc  01 00 00 ea                                      b #0x4bc9d8
004bc9d0  07 30 95 e7                                      ldr r3, [r5, r7]
004bc9d4  00 30 93 e5                                      ldr r3, [r3]
004bc9d8  84 02 83 e0                                      add r0, r3, r4, lsl #5
004bc9dc  08 10 a0 e1                                      mov r1, r8
004bc9e0  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004bc9e4  0f e0 a0 e1                                      mov lr, pc
004bc9e8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bc9ec  06 30 95 e7                                      ldr r3, [r5, r6]
004bc9f0  01 40 84 e2                                      add r4, r4, #1
004bc9f4  00 30 93 e5                                      ldr r3, [r3]
004bc9f8  04 00 53 e1                                      cmp r3, r4
004bc9fc  f3 ff ff 8a                                      bhi #0x4bc9d0
004bca00  08 d0 8d e2                                      add sp, sp, #8
004bca04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004bca08  8c 81 4d 00 60 35 00 00 64 0b 00 00 7c 1a 00 00  .byte 0x8c, 0x81, 0x4d, 0x00, 0x60, 0x35, 0x00, 0x00, 0x64, 0x0b, 0x00, 0x00, 0x7c, 0x1a, 0x00, 0x00
