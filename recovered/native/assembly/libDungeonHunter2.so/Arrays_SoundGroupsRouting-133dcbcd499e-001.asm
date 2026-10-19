; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4e70, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::SoundGroupsRouting
; alias: _ZN6Arrays18SoundGroupsRouting13finalizeNamesEv
; demangled: Arrays::SoundGroupsRouting::finalizeNames()
; decoder-mode: arm
004a4e70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4e74  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4e78  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4e7c  05 50 8f e0                                      add r5, pc, r5
004a4e80  06 30 95 e7                                      ldr r3, [r5, r6]
004a4e84  00 30 93 e5                                      ldr r3, [r3]
004a4e88  00 00 53 e3                                      cmp r3, #0
004a4e8c  1a 00 00 0a                                      beq #0x4a4efc
004a4e90  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a4e94  07 20 95 e7                                      ldr r2, [r5, r7]
004a4e98  00 20 92 e5                                      ldr r2, [r2]
004a4e9c  00 00 52 e3                                      cmp r2, #0
004a4ea0  10 00 00 0a                                      beq #0x4a4ee8
004a4ea4  00 40 a0 e3                                      mov r4, #0
004a4ea8  01 00 00 ea                                      b #0x4a4eb4
004a4eac  06 30 95 e7                                      ldr r3, [r5, r6]
004a4eb0  00 30 93 e5                                      ldr r3, [r3]
004a4eb4  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a4eb8  01 40 84 e2                                      add r4, r4, #1
004a4ebc  00 00 50 e3                                      cmp r0, #0
004a4ec0  02 00 00 0a                                      beq #0x4a4ed0
004a4ec4  5d ad f9 eb                                      bl #0x310440
004a4ec8  06 30 95 e7                                      ldr r3, [r5, r6]
004a4ecc  00 30 93 e5                                      ldr r3, [r3]
004a4ed0  07 20 95 e7                                      ldr r2, [r5, r7]
004a4ed4  00 20 92 e5                                      ldr r2, [r2]
004a4ed8  04 00 52 e1                                      cmp r2, r4
004a4edc  f2 ff ff 8a                                      bhi #0x4a4eac
004a4ee0  00 00 53 e3                                      cmp r3, #0
004a4ee4  01 00 00 0a                                      beq #0x4a4ef0
004a4ee8  03 00 a0 e1                                      mov r0, r3
004a4eec  53 ad f9 eb                                      bl #0x310440
004a4ef0  06 30 95 e7                                      ldr r3, [r5, r6]
004a4ef4  00 20 a0 e3                                      mov r2, #0
004a4ef8  00 20 83 e5                                      str r2, [r3]
004a4efc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4f00  14 fc 4e 00 e4 12 00 00 58 47 00 00              .byte 0x14, 0xfc, 0x4e, 0x00, 0xe4, 0x12, 0x00, 0x00, 0x58, 0x47, 0x00, 0x00

; FUNCTION 0x004a4f0c, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::SoundGroupsRouting
; alias: _ZN6Arrays18SoundGroupsRouting8finalizeEv
; demangled: Arrays::SoundGroupsRouting::finalize()
; decoder-mode: arm
004a4f0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4f10  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a4f14  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a4f18  05 50 8f e0                                      add r5, pc, r5
004a4f1c  06 30 95 e7                                      ldr r3, [r5, r6]
004a4f20  00 30 93 e5                                      ldr r3, [r3]
004a4f24  00 00 53 e3                                      cmp r3, #0
004a4f28  29 00 00 0a                                      beq #0x4a4fd4
004a4f2c  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a4f30  07 20 95 e7                                      ldr r2, [r5, r7]
004a4f34  00 20 92 e5                                      ldr r2, [r2]
004a4f38  00 00 52 e3                                      cmp r2, #0
004a4f3c  10 00 00 0a                                      beq #0x4a4f84
004a4f40  00 40 a0 e3                                      mov r4, #0
004a4f44  01 00 00 ea                                      b #0x4a4f50
004a4f48  06 30 95 e7                                      ldr r3, [r5, r6]
004a4f4c  00 30 93 e5                                      ldr r3, [r3]
004a4f50  04 02 83 e0                                      add r0, r3, r4, lsl #4
004a4f54  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
004a4f58  0f e0 a0 e1                                      mov lr, pc
004a4f5c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a4f60  07 30 95 e7                                      ldr r3, [r5, r7]
004a4f64  01 40 84 e2                                      add r4, r4, #1
004a4f68  00 30 93 e5                                      ldr r3, [r3]
004a4f6c  04 00 53 e1                                      cmp r3, r4
004a4f70  f4 ff ff 8a                                      bhi #0x4a4f48
004a4f74  06 30 95 e7                                      ldr r3, [r5, r6]
004a4f78  00 30 93 e5                                      ldr r3, [r3]
004a4f7c  00 00 53 e3                                      cmp r3, #0
004a4f80  10 00 00 0a                                      beq #0x4a4fc8
004a4f84  04 00 13 e5                                      ldr r0, [r3, #-4]
004a4f88  00 02 83 e0                                      add r0, r3, r0, lsl #4
004a4f8c  00 00 53 e1                                      cmp r3, r0
004a4f90  01 00 00 1a                                      bne #0x4a4f9c
004a4f94  09 00 00 ea                                      b #0x4a4fc0
004a4f98  04 00 a0 e1                                      mov r0, r4
004a4f9c  10 40 40 e2                                      sub r4, r0, #0x10
004a4fa0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004a4fa4  04 00 a0 e1                                      mov r0, r4
004a4fa8  0f e0 a0 e1                                      mov lr, pc
004a4fac  00 f0 93 e5                                      ldr pc, [r3]
004a4fb0  06 30 95 e7                                      ldr r3, [r5, r6]
004a4fb4  00 00 93 e5                                      ldr r0, [r3]
004a4fb8  04 00 50 e1                                      cmp r0, r4
004a4fbc  f5 ff ff 1a                                      bne #0x4a4f98
004a4fc0  08 00 40 e2                                      sub r0, r0, #8
004a4fc4  1d ad f9 eb                                      bl #0x310440
004a4fc8  06 30 95 e7                                      ldr r3, [r5, r6]
004a4fcc  00 20 a0 e3                                      mov r2, #0
004a4fd0  00 20 83 e5                                      str r2, [r3]
004a4fd4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4fd8  78 fb 4e 00 f0 46 00 00 58 47 00 00              .byte 0x78, 0xfb, 0x4e, 0x00, 0xf0, 0x46, 0x00, 0x00, 0x58, 0x47, 0x00, 0x00

; FUNCTION 0x004b0f98, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::SoundGroupsRouting
; alias: _ZN6Arrays18SoundGroupsRouting9readNamesEP11IStreamBase
; demangled: Arrays::SoundGroupsRouting::readNames(IStreamBase*)
; decoder-mode: arm
004b0f98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b0f9c  00 70 a0 e1                                      mov r7, r0
004b0fa0  1c d0 4d e2                                      sub sp, sp, #0x1c
004b0fa4  b1 cf ff eb                                      bl #0x4a4e70
004b0fa8  07 00 a0 e1                                      mov r0, r7
004b0fac  b7 8a f9 eb                                      bl #0x313a90
004b0fb0  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b0fb4  01 30 a0 e3                                      mov r3, #1
004b0fb8  00 00 53 e3                                      cmp r3, #0
004b0fbc  06 60 8f e0                                      add r6, pc, r6
004b0fc0  14 00 8d e5                                      str r0, [sp, #0x14]
004b0fc4  0c 30 8d e5                                      str r3, [sp, #0xc]
004b0fc8  12 00 00 1a                                      bne #0x4b1018
004b0fcc  14 30 8d e2                                      add r3, sp, #0x14
004b0fd0  02 20 83 e2                                      add r2, r3, #2
004b0fd4  01 30 83 e2                                      add r3, r3, #1
004b0fd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0fdc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0fe0  03 00 52 e1                                      cmp r2, r3
004b0fe4  02 40 a0 e1                                      mov r4, r2
004b0fe8  01 10 20 e0                                      eor r1, r0, r1
004b0fec  01 10 43 e5                                      strb r1, [r3, #-1]
004b0ff0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0ff4  00 10 21 e0                                      eor r1, r1, r0
004b0ff8  01 10 c2 e5                                      strb r1, [r2, #1]
004b0ffc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1000  01 20 42 e2                                      sub r2, r2, #1
004b1004  00 10 21 e0                                      eor r1, r1, r0
004b1008  01 10 43 e5                                      strb r1, [r3, #-1]
004b100c  01 30 83 e2                                      add r3, r3, #1
004b1010  f0 ff ff 8a                                      bhi #0x4b0fd8
004b1014  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b1018  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b101c  03 30 96 e7                                      ldr r3, [r6, r3]
004b1020  00 30 93 e5                                      ldr r3, [r3]
004b1024  00 00 53 e1                                      cmp r3, r0
004b1028  01 00 00 0a                                      beq #0x4b1034
004b102c  1c d0 8d e2                                      add sp, sp, #0x1c
004b1030  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b1034  00 01 a0 e1                                      lsl r0, r0, #2
004b1038  01 10 a0 e3                                      mov r1, #1
004b103c  4a 7d f9 eb                                      bl #0x31056c
004b1040  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b1044  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b1048  09 30 96 e7                                      ldr r3, [r6, sb]
004b104c  00 00 52 e3                                      cmp r2, #0
004b1050  00 00 83 e5                                      str r0, [r3]
004b1054  f4 ff ff 0a                                      beq #0x4b102c
004b1058  10 a0 8d e2                                      add sl, sp, #0x10
004b105c  01 80 a0 e3                                      mov r8, #1
004b1060  08 10 8a e0                                      add r1, sl, r8
004b1064  02 30 8a e2                                      add r3, sl, #2
004b1068  00 40 a0 e3                                      mov r4, #0
004b106c  0a 00 8d e8                                      stm sp, {r1, r3}
004b1070  07 00 a0 e1                                      mov r0, r7
004b1074  0a 10 a0 e1                                      mov r1, sl
004b1078  48 b8 fc eb                                      bl #0x3df1a0
004b107c  00 00 58 e3                                      cmp r8, #0
004b1080  0c 80 8d e5                                      str r8, [sp, #0xc]
004b1084  0f 00 00 1a                                      bne #0x4b10c8
004b1088  00 30 9d e5                                      ldr r3, [sp]
004b108c  04 20 9d e5                                      ldr r2, [sp, #4]
004b1090  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1094  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1098  03 00 52 e1                                      cmp r2, r3
004b109c  01 10 20 e0                                      eor r1, r0, r1
004b10a0  01 10 43 e5                                      strb r1, [r3, #-1]
004b10a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b10a8  00 10 21 e0                                      eor r1, r1, r0
004b10ac  01 10 c2 e5                                      strb r1, [r2, #1]
004b10b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b10b4  01 20 42 e2                                      sub r2, r2, #1
004b10b8  00 10 21 e0                                      eor r1, r1, r0
004b10bc  01 10 43 e5                                      strb r1, [r3, #-1]
004b10c0  01 30 83 e2                                      add r3, r3, #1
004b10c4  f1 ff ff 8a                                      bhi #0x4b1090
004b10c8  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b10cc  09 50 96 e7                                      ldr r5, [r6, sb]
004b10d0  01 10 a0 e3                                      mov r1, #1
004b10d4  01 00 80 e0                                      add r0, r0, r1
004b10d8  00 b0 95 e5                                      ldr fp, [r5]
004b10dc  22 7d f9 eb                                      bl #0x31056c
004b10e0  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b10e4  00 30 95 e5                                      ldr r3, [r5]
004b10e8  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b10ec  07 00 a0 e1                                      mov r0, r7
004b10f0  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b10f4  00 30 a0 e3                                      mov r3, #0
004b10f8  d5 98 f9 eb                                      bl #0x317454
004b10fc  00 30 95 e5                                      ldr r3, [r5]
004b1100  00 10 a0 e3                                      mov r1, #0
004b1104  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b1108  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b110c  01 40 84 e2                                      add r4, r4, #1
004b1110  03 10 c2 e7                                      strb r1, [r2, r3]
004b1114  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b1118  04 00 53 e1                                      cmp r3, r4
004b111c  d3 ff ff 8a                                      bhi #0x4b1070
004b1120  c1 ff ff ea                                      b #0x4b102c
; mapping-symbol data/literal pool
004b1124  d4 3a 4e 00 58 47 00 00 e4 12 00 00              .byte 0xd4, 0x3a, 0x4e, 0x00, 0x58, 0x47, 0x00, 0x00, 0xe4, 0x12, 0x00, 0x00

; FUNCTION 0x004b92f8, declared_size=316, range_size=316, mode=arm
; class-group: Arrays::SoundGroupsRouting
; alias: _ZN6Arrays18SoundGroupsRouting4readEP11IStreamBase
; demangled: Arrays::SoundGroupsRouting::read(IStreamBase*)
; decoder-mode: arm
004b92f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004b92fc  08 d0 4d e2                                      sub sp, sp, #8
004b9300  00 80 a0 e1                                      mov r8, r0
004b9304  e1 69 f9 eb                                      bl #0x313a90
004b9308  14 51 9f e5                                      ldr r5, [pc, #0x114]
004b930c  01 30 a0 e3                                      mov r3, #1
004b9310  00 00 53 e3                                      cmp r3, #0
004b9314  04 00 8d e5                                      str r0, [sp, #4]
004b9318  00 30 8d e5                                      str r3, [sp]
004b931c  05 50 8f e0                                      add r5, pc, r5
004b9320  10 00 00 1a                                      bne #0x4b9368
004b9324  04 30 8d e2                                      add r3, sp, #4
004b9328  02 20 83 e2                                      add r2, r3, #2
004b932c  01 30 83 e2                                      add r3, r3, #1
004b9330  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9334  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b9338  03 00 52 e1                                      cmp r2, r3
004b933c  01 10 20 e0                                      eor r1, r0, r1
004b9340  01 10 43 e5                                      strb r1, [r3, #-1]
004b9344  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9348  00 10 21 e0                                      eor r1, r1, r0
004b934c  01 10 c2 e5                                      strb r1, [r2, #1]
004b9350  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b9354  01 20 42 e2                                      sub r2, r2, #1
004b9358  00 10 21 e0                                      eor r1, r1, r0
004b935c  01 10 43 e5                                      strb r1, [r3, #-1]
004b9360  01 30 83 e2                                      add r3, r3, #1
004b9364  f1 ff ff 8a                                      bhi #0x4b9330
004b9368  b8 60 9f e5                                      ldr r6, [pc, #0xb8]
004b936c  e6 ae ff eb                                      bl #0x4a4f0c
004b9370  04 40 9d e5                                      ldr r4, [sp, #4]
004b9374  06 30 95 e7                                      ldr r3, [r5, r6]
004b9378  01 10 a0 e3                                      mov r1, #1
004b937c  04 02 a0 e1                                      lsl r0, r4, #4
004b9380  00 40 83 e5                                      str r4, [r3]
004b9384  08 00 80 e2                                      add r0, r0, #8
004b9388  77 5c f9 eb                                      bl #0x31056c
004b938c  10 30 a0 e3                                      mov r3, #0x10
004b9390  00 00 54 e3                                      cmp r4, #0
004b9394  18 00 80 e8                                      stm r0, {r3, r4}
004b9398  08 30 80 e2                                      add r3, r0, #8
004b939c  09 00 00 0a                                      beq #0x4b93c8
004b93a0  84 10 9f e5                                      ldr r1, [pc, #0x84]
004b93a4  00 20 a0 e3                                      mov r2, #0
004b93a8  02 c0 a0 e1                                      mov ip, r2
004b93ac  01 10 95 e7                                      ldr r1, [r5, r1]
004b93b0  08 10 81 e2                                      add r1, r1, #8
004b93b4  01 20 82 e2                                      add r2, r2, #1
004b93b8  04 00 52 e1                                      cmp r2, r4
004b93bc  08 10 80 e5                                      str r1, [r0, #8]
004b93c0  10 c0 a0 e5                                      str ip, [r0, #0x10]!
004b93c4  fa ff ff 1a                                      bne #0x4b93b4
004b93c8  06 20 95 e7                                      ldr r2, [r5, r6]
004b93cc  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004b93d0  00 10 92 e5                                      ldr r1, [r2]
004b93d4  07 20 95 e7                                      ldr r2, [r5, r7]
004b93d8  00 00 51 e3                                      cmp r1, #0
004b93dc  00 30 82 e5                                      str r3, [r2]
004b93e0  0d 00 00 0a                                      beq #0x4b941c
004b93e4  00 40 a0 e3                                      mov r4, #0
004b93e8  01 00 00 ea                                      b #0x4b93f4
004b93ec  07 30 95 e7                                      ldr r3, [r5, r7]
004b93f0  00 30 93 e5                                      ldr r3, [r3]
004b93f4  04 02 83 e0                                      add r0, r3, r4, lsl #4
004b93f8  08 10 a0 e1                                      mov r1, r8
004b93fc  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
004b9400  0f e0 a0 e1                                      mov lr, pc
004b9404  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9408  06 30 95 e7                                      ldr r3, [r5, r6]
004b940c  01 40 84 e2                                      add r4, r4, #1
004b9410  00 30 93 e5                                      ldr r3, [r3]
004b9414  04 00 53 e1                                      cmp r3, r4
004b9418  f3 ff ff 8a                                      bhi #0x4b93ec
004b941c  08 d0 8d e2                                      add sp, sp, #8
004b9420  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004b9424  74 b7 4d 00 58 47 00 00 00 3b 00 00 f0 46 00 00  .byte 0x74, 0xb7, 0x4d, 0x00, 0x58, 0x47, 0x00, 0x00, 0x00, 0x3b, 0x00, 0x00, 0xf0, 0x46, 0x00, 0x00
