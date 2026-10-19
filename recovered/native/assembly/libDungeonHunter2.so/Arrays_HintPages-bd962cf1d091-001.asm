; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a6dd8, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::HintPages
; alias: _ZN6Arrays9HintPages13finalizeNamesEv
; demangled: Arrays::HintPages::finalizeNames()
; decoder-mode: arm
004a6dd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6ddc  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a6de0  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a6de4  05 50 8f e0                                      add r5, pc, r5
004a6de8  06 30 95 e7                                      ldr r3, [r5, r6]
004a6dec  00 30 93 e5                                      ldr r3, [r3]
004a6df0  00 00 53 e3                                      cmp r3, #0
004a6df4  1a 00 00 0a                                      beq #0x4a6e64
004a6df8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a6dfc  07 20 95 e7                                      ldr r2, [r5, r7]
004a6e00  00 20 92 e5                                      ldr r2, [r2]
004a6e04  00 00 52 e3                                      cmp r2, #0
004a6e08  10 00 00 0a                                      beq #0x4a6e50
004a6e0c  00 40 a0 e3                                      mov r4, #0
004a6e10  01 00 00 ea                                      b #0x4a6e1c
004a6e14  06 30 95 e7                                      ldr r3, [r5, r6]
004a6e18  00 30 93 e5                                      ldr r3, [r3]
004a6e1c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a6e20  01 40 84 e2                                      add r4, r4, #1
004a6e24  00 00 50 e3                                      cmp r0, #0
004a6e28  02 00 00 0a                                      beq #0x4a6e38
004a6e2c  83 a5 f9 eb                                      bl #0x310440
004a6e30  06 30 95 e7                                      ldr r3, [r5, r6]
004a6e34  00 30 93 e5                                      ldr r3, [r3]
004a6e38  07 20 95 e7                                      ldr r2, [r5, r7]
004a6e3c  00 20 92 e5                                      ldr r2, [r2]
004a6e40  04 00 52 e1                                      cmp r2, r4
004a6e44  f2 ff ff 8a                                      bhi #0x4a6e14
004a6e48  00 00 53 e3                                      cmp r3, #0
004a6e4c  01 00 00 0a                                      beq #0x4a6e58
004a6e50  03 00 a0 e1                                      mov r0, r3
004a6e54  79 a5 f9 eb                                      bl #0x310440
004a6e58  06 30 95 e7                                      ldr r3, [r5, r6]
004a6e5c  00 20 a0 e3                                      mov r2, #0
004a6e60  00 20 83 e5                                      str r2, [r3]
004a6e64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6e68  ac dc 4e 00 74 12 00 00 74 31 00 00              .byte 0xac, 0xdc, 0x4e, 0x00, 0x74, 0x12, 0x00, 0x00, 0x74, 0x31, 0x00, 0x00

; FUNCTION 0x004a6e74, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::HintPages
; alias: _ZN6Arrays9HintPages8finalizeEv
; demangled: Arrays::HintPages::finalize()
; decoder-mode: arm
004a6e74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6e78  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a6e7c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a6e80  05 50 8f e0                                      add r5, pc, r5
004a6e84  07 30 95 e7                                      ldr r3, [r5, r7]
004a6e88  00 30 93 e5                                      ldr r3, [r3]
004a6e8c  00 00 53 e3                                      cmp r3, #0
004a6e90  2c 00 00 0a                                      beq #0x4a6f48
004a6e94  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6e98  08 20 95 e7                                      ldr r2, [r5, r8]
004a6e9c  00 20 92 e5                                      ldr r2, [r2]
004a6ea0  00 00 52 e3                                      cmp r2, #0
004a6ea4  12 00 00 0a                                      beq #0x4a6ef4
004a6ea8  00 40 a0 e3                                      mov r4, #0
004a6eac  04 60 a0 e1                                      mov r6, r4
004a6eb0  01 00 00 ea                                      b #0x4a6ebc
004a6eb4  07 30 95 e7                                      ldr r3, [r5, r7]
004a6eb8  00 30 93 e5                                      ldr r3, [r3]
004a6ebc  04 00 83 e0                                      add r0, r3, r4
004a6ec0  04 30 93 e7                                      ldr r3, [r3, r4]
004a6ec4  0f e0 a0 e1                                      mov lr, pc
004a6ec8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a6ecc  08 30 95 e7                                      ldr r3, [r5, r8]
004a6ed0  01 60 86 e2                                      add r6, r6, #1
004a6ed4  0c 40 84 e2                                      add r4, r4, #0xc
004a6ed8  00 30 93 e5                                      ldr r3, [r3]
004a6edc  06 00 53 e1                                      cmp r3, r6
004a6ee0  f3 ff ff 8a                                      bhi #0x4a6eb4
004a6ee4  07 30 95 e7                                      ldr r3, [r5, r7]
004a6ee8  00 30 93 e5                                      ldr r3, [r3]
004a6eec  00 00 53 e3                                      cmp r3, #0
004a6ef0  11 00 00 0a                                      beq #0x4a6f3c
004a6ef4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a6ef8  0c 00 a0 e3                                      mov r0, #0xc
004a6efc  90 32 20 e0                                      mla r0, r0, r2, r3
004a6f00  00 00 53 e1                                      cmp r3, r0
004a6f04  01 00 00 1a                                      bne #0x4a6f10
004a6f08  09 00 00 ea                                      b #0x4a6f34
004a6f0c  04 00 a0 e1                                      mov r0, r4
004a6f10  0c 40 40 e2                                      sub r4, r0, #0xc
004a6f14  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a6f18  04 00 a0 e1                                      mov r0, r4
004a6f1c  0f e0 a0 e1                                      mov lr, pc
004a6f20  00 f0 93 e5                                      ldr pc, [r3]
004a6f24  07 30 95 e7                                      ldr r3, [r5, r7]
004a6f28  00 00 93 e5                                      ldr r0, [r3]
004a6f2c  04 00 50 e1                                      cmp r0, r4
004a6f30  f5 ff ff 1a                                      bne #0x4a6f0c
004a6f34  08 00 40 e2                                      sub r0, r0, #8
004a6f38  40 a5 f9 eb                                      bl #0x310440
004a6f3c  07 30 95 e7                                      ldr r3, [r5, r7]
004a6f40  00 20 a0 e3                                      mov r2, #0
004a6f44  00 20 83 e5                                      str r2, [r3]
004a6f48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6f4c  10 dc 4e 00 a8 4b 00 00 74 31 00 00              .byte 0x10, 0xdc, 0x4e, 0x00, 0xa8, 0x4b, 0x00, 0x00, 0x74, 0x31, 0x00, 0x00

; FUNCTION 0x004b6fc8, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::HintPages
; alias: _ZN6Arrays9HintPages9readNamesEP11IStreamBase
; demangled: Arrays::HintPages::readNames(IStreamBase*)
; decoder-mode: arm
004b6fc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6fcc  00 70 a0 e1                                      mov r7, r0
004b6fd0  1c d0 4d e2                                      sub sp, sp, #0x1c
004b6fd4  7f bf ff eb                                      bl #0x4a6dd8
004b6fd8  07 00 a0 e1                                      mov r0, r7
004b6fdc  ab 72 f9 eb                                      bl #0x313a90
004b6fe0  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b6fe4  01 30 a0 e3                                      mov r3, #1
004b6fe8  00 00 53 e3                                      cmp r3, #0
004b6fec  06 60 8f e0                                      add r6, pc, r6
004b6ff0  14 00 8d e5                                      str r0, [sp, #0x14]
004b6ff4  0c 30 8d e5                                      str r3, [sp, #0xc]
004b6ff8  12 00 00 1a                                      bne #0x4b7048
004b6ffc  14 30 8d e2                                      add r3, sp, #0x14
004b7000  02 20 83 e2                                      add r2, r3, #2
004b7004  01 30 83 e2                                      add r3, r3, #1
004b7008  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b700c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7010  03 00 52 e1                                      cmp r2, r3
004b7014  02 40 a0 e1                                      mov r4, r2
004b7018  01 10 20 e0                                      eor r1, r0, r1
004b701c  01 10 43 e5                                      strb r1, [r3, #-1]
004b7020  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7024  00 10 21 e0                                      eor r1, r1, r0
004b7028  01 10 c2 e5                                      strb r1, [r2, #1]
004b702c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7030  01 20 42 e2                                      sub r2, r2, #1
004b7034  00 10 21 e0                                      eor r1, r1, r0
004b7038  01 10 43 e5                                      strb r1, [r3, #-1]
004b703c  01 30 83 e2                                      add r3, r3, #1
004b7040  f0 ff ff 8a                                      bhi #0x4b7008
004b7044  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b7048  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b704c  03 30 96 e7                                      ldr r3, [r6, r3]
004b7050  00 30 93 e5                                      ldr r3, [r3]
004b7054  00 00 53 e1                                      cmp r3, r0
004b7058  01 00 00 0a                                      beq #0x4b7064
004b705c  1c d0 8d e2                                      add sp, sp, #0x1c
004b7060  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b7064  00 01 a0 e1                                      lsl r0, r0, #2
004b7068  01 10 a0 e3                                      mov r1, #1
004b706c  3e 65 f9 eb                                      bl #0x31056c
004b7070  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b7074  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b7078  09 30 96 e7                                      ldr r3, [r6, sb]
004b707c  00 00 52 e3                                      cmp r2, #0
004b7080  00 00 83 e5                                      str r0, [r3]
004b7084  f4 ff ff 0a                                      beq #0x4b705c
004b7088  10 a0 8d e2                                      add sl, sp, #0x10
004b708c  01 80 a0 e3                                      mov r8, #1
004b7090  08 10 8a e0                                      add r1, sl, r8
004b7094  02 30 8a e2                                      add r3, sl, #2
004b7098  00 40 a0 e3                                      mov r4, #0
004b709c  0a 00 8d e8                                      stm sp, {r1, r3}
004b70a0  07 00 a0 e1                                      mov r0, r7
004b70a4  0a 10 a0 e1                                      mov r1, sl
004b70a8  3c a0 fc eb                                      bl #0x3df1a0
004b70ac  00 00 58 e3                                      cmp r8, #0
004b70b0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b70b4  0f 00 00 1a                                      bne #0x4b70f8
004b70b8  00 30 9d e5                                      ldr r3, [sp]
004b70bc  04 20 9d e5                                      ldr r2, [sp, #4]
004b70c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b70c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b70c8  03 00 52 e1                                      cmp r2, r3
004b70cc  01 10 20 e0                                      eor r1, r0, r1
004b70d0  01 10 43 e5                                      strb r1, [r3, #-1]
004b70d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b70d8  00 10 21 e0                                      eor r1, r1, r0
004b70dc  01 10 c2 e5                                      strb r1, [r2, #1]
004b70e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b70e4  01 20 42 e2                                      sub r2, r2, #1
004b70e8  00 10 21 e0                                      eor r1, r1, r0
004b70ec  01 10 43 e5                                      strb r1, [r3, #-1]
004b70f0  01 30 83 e2                                      add r3, r3, #1
004b70f4  f1 ff ff 8a                                      bhi #0x4b70c0
004b70f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b70fc  09 50 96 e7                                      ldr r5, [r6, sb]
004b7100  01 10 a0 e3                                      mov r1, #1
004b7104  01 00 80 e0                                      add r0, r0, r1
004b7108  00 b0 95 e5                                      ldr fp, [r5]
004b710c  16 65 f9 eb                                      bl #0x31056c
004b7110  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b7114  00 30 95 e5                                      ldr r3, [r5]
004b7118  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b711c  07 00 a0 e1                                      mov r0, r7
004b7120  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b7124  00 30 a0 e3                                      mov r3, #0
004b7128  c9 80 f9 eb                                      bl #0x317454
004b712c  00 30 95 e5                                      ldr r3, [r5]
004b7130  00 10 a0 e3                                      mov r1, #0
004b7134  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b7138  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b713c  01 40 84 e2                                      add r4, r4, #1
004b7140  03 10 c2 e7                                      strb r1, [r2, r3]
004b7144  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b7148  04 00 53 e1                                      cmp r3, r4
004b714c  d3 ff ff 8a                                      bhi #0x4b70a0
004b7150  c1 ff ff ea                                      b #0x4b705c
; mapping-symbol data/literal pool
004b7154  a4 da 4d 00 74 31 00 00 74 12 00 00              .byte 0xa4, 0xda, 0x4d, 0x00, 0x74, 0x31, 0x00, 0x00, 0x74, 0x12, 0x00, 0x00

; FUNCTION 0x004b7160, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::HintPages
; alias: _ZN6Arrays9HintPages9skipNamesEP11IStreamBase
; demangled: Arrays::HintPages::skipNames(IStreamBase*)
; decoder-mode: arm
004b7160  98 ff ff ea                                      b #0x4b6fc8

; FUNCTION 0x004bae14, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::HintPages
; alias: _ZN6Arrays9HintPages4readEP11IStreamBase
; demangled: Arrays::HintPages::read(IStreamBase*)
; decoder-mode: arm
004bae14  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bae18  0c d0 4d e2                                      sub sp, sp, #0xc
004bae1c  00 a0 a0 e1                                      mov sl, r0
004bae20  1a 63 f9 eb                                      bl #0x313a90
004bae24  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004bae28  01 30 a0 e3                                      mov r3, #1
004bae2c  00 00 53 e3                                      cmp r3, #0
004bae30  04 00 8d e5                                      str r0, [sp, #4]
004bae34  00 30 8d e5                                      str r3, [sp]
004bae38  06 60 8f e0                                      add r6, pc, r6
004bae3c  10 00 00 1a                                      bne #0x4bae84
004bae40  04 30 8d e2                                      add r3, sp, #4
004bae44  02 20 83 e2                                      add r2, r3, #2
004bae48  01 30 83 e2                                      add r3, r3, #1
004bae4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bae50  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bae54  03 00 52 e1                                      cmp r2, r3
004bae58  01 10 20 e0                                      eor r1, r0, r1
004bae5c  01 10 43 e5                                      strb r1, [r3, #-1]
004bae60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bae64  00 10 21 e0                                      eor r1, r1, r0
004bae68  01 10 c2 e5                                      strb r1, [r2, #1]
004bae6c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bae70  01 20 42 e2                                      sub r2, r2, #1
004bae74  00 10 21 e0                                      eor r1, r1, r0
004bae78  01 10 43 e5                                      strb r1, [r3, #-1]
004bae7c  01 30 83 e2                                      add r3, r3, #1
004bae80  f1 ff ff 8a                                      bhi #0x4bae4c
004bae84  fa af ff eb                                      bl #0x4a6e74
004bae88  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004bae8c  04 40 9d e5                                      ldr r4, [sp, #4]
004bae90  0c 50 a0 e3                                      mov r5, #0xc
004bae94  07 30 96 e7                                      ldr r3, [r6, r7]
004bae98  95 04 00 e0                                      mul r0, r5, r4
004bae9c  00 40 83 e5                                      str r4, [r3]
004baea0  08 00 80 e2                                      add r0, r0, #8
004baea4  01 10 a0 e3                                      mov r1, #1
004baea8  af 55 f9 eb                                      bl #0x31056c
004baeac  00 00 54 e3                                      cmp r4, #0
004baeb0  00 50 80 e5                                      str r5, [r0]
004baeb4  04 40 80 e5                                      str r4, [r0, #4]
004baeb8  08 30 80 e2                                      add r3, r0, #8
004baebc  08 00 00 0a                                      beq #0x4baee4
004baec0  88 10 9f e5                                      ldr r1, [pc, #0x88]
004baec4  00 20 a0 e3                                      mov r2, #0
004baec8  01 10 96 e7                                      ldr r1, [r6, r1]
004baecc  08 10 81 e2                                      add r1, r1, #8
004baed0  01 20 82 e2                                      add r2, r2, #1
004baed4  04 00 52 e1                                      cmp r2, r4
004baed8  08 10 80 e5                                      str r1, [r0, #8]
004baedc  0c 00 80 e2                                      add r0, r0, #0xc
004baee0  fa ff ff 1a                                      bne #0x4baed0
004baee4  07 20 96 e7                                      ldr r2, [r6, r7]
004baee8  64 80 9f e5                                      ldr r8, [pc, #0x64]
004baeec  00 10 92 e5                                      ldr r1, [r2]
004baef0  08 20 96 e7                                      ldr r2, [r6, r8]
004baef4  00 00 51 e3                                      cmp r1, #0
004baef8  00 30 82 e5                                      str r3, [r2]
004baefc  0f 00 00 0a                                      beq #0x4baf40
004baf00  00 40 a0 e3                                      mov r4, #0
004baf04  04 50 a0 e1                                      mov r5, r4
004baf08  01 00 00 ea                                      b #0x4baf14
004baf0c  08 30 96 e7                                      ldr r3, [r6, r8]
004baf10  00 30 93 e5                                      ldr r3, [r3]
004baf14  04 00 83 e0                                      add r0, r3, r4
004baf18  0a 10 a0 e1                                      mov r1, sl
004baf1c  04 30 93 e7                                      ldr r3, [r3, r4]
004baf20  0f e0 a0 e1                                      mov lr, pc
004baf24  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004baf28  07 30 96 e7                                      ldr r3, [r6, r7]
004baf2c  01 50 85 e2                                      add r5, r5, #1
004baf30  0c 40 84 e2                                      add r4, r4, #0xc
004baf34  00 30 93 e5                                      ldr r3, [r3]
004baf38  05 00 53 e1                                      cmp r3, r5
004baf3c  f2 ff ff 8a                                      bhi #0x4baf0c
004baf40  0c d0 8d e2                                      add sp, sp, #0xc
004baf44  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004baf48  58 9c 4d 00 74 31 00 00 24 1f 00 00 a8 4b 00 00  .byte 0x58, 0x9c, 0x4d, 0x00, 0x74, 0x31, 0x00, 0x00, 0x24, 0x1f, 0x00, 0x00, 0xa8, 0x4b, 0x00, 0x00
