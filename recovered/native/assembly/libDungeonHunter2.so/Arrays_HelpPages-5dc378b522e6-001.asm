; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a6f58, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::HelpPages
; alias: _ZN6Arrays9HelpPages13finalizeNamesEv
; demangled: Arrays::HelpPages::finalizeNames()
; decoder-mode: arm
004a6f58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6f5c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a6f60  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a6f64  05 50 8f e0                                      add r5, pc, r5
004a6f68  06 30 95 e7                                      ldr r3, [r5, r6]
004a6f6c  00 30 93 e5                                      ldr r3, [r3]
004a6f70  00 00 53 e3                                      cmp r3, #0
004a6f74  1a 00 00 0a                                      beq #0x4a6fe4
004a6f78  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a6f7c  07 20 95 e7                                      ldr r2, [r5, r7]
004a6f80  00 20 92 e5                                      ldr r2, [r2]
004a6f84  00 00 52 e3                                      cmp r2, #0
004a6f88  10 00 00 0a                                      beq #0x4a6fd0
004a6f8c  00 40 a0 e3                                      mov r4, #0
004a6f90  01 00 00 ea                                      b #0x4a6f9c
004a6f94  06 30 95 e7                                      ldr r3, [r5, r6]
004a6f98  00 30 93 e5                                      ldr r3, [r3]
004a6f9c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a6fa0  01 40 84 e2                                      add r4, r4, #1
004a6fa4  00 00 50 e3                                      cmp r0, #0
004a6fa8  02 00 00 0a                                      beq #0x4a6fb8
004a6fac  23 a5 f9 eb                                      bl #0x310440
004a6fb0  06 30 95 e7                                      ldr r3, [r5, r6]
004a6fb4  00 30 93 e5                                      ldr r3, [r3]
004a6fb8  07 20 95 e7                                      ldr r2, [r5, r7]
004a6fbc  00 20 92 e5                                      ldr r2, [r2]
004a6fc0  04 00 52 e1                                      cmp r2, r4
004a6fc4  f2 ff ff 8a                                      bhi #0x4a6f94
004a6fc8  00 00 53 e3                                      cmp r3, #0
004a6fcc  01 00 00 0a                                      beq #0x4a6fd8
004a6fd0  03 00 a0 e1                                      mov r0, r3
004a6fd4  19 a5 f9 eb                                      bl #0x310440
004a6fd8  06 30 95 e7                                      ldr r3, [r5, r6]
004a6fdc  00 20 a0 e3                                      mov r2, #0
004a6fe0  00 20 83 e5                                      str r2, [r3]
004a6fe4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6fe8  2c db 4e 00 ac 05 00 00 68 31 00 00              .byte 0x2c, 0xdb, 0x4e, 0x00, 0xac, 0x05, 0x00, 0x00, 0x68, 0x31, 0x00, 0x00

; FUNCTION 0x004a6ff4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::HelpPages
; alias: _ZN6Arrays9HelpPages8finalizeEv
; demangled: Arrays::HelpPages::finalize()
; decoder-mode: arm
004a6ff4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6ff8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a6ffc  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a7000  05 50 8f e0                                      add r5, pc, r5
004a7004  07 30 95 e7                                      ldr r3, [r5, r7]
004a7008  00 30 93 e5                                      ldr r3, [r3]
004a700c  00 00 53 e3                                      cmp r3, #0
004a7010  2c 00 00 0a                                      beq #0x4a70c8
004a7014  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a7018  08 20 95 e7                                      ldr r2, [r5, r8]
004a701c  00 20 92 e5                                      ldr r2, [r2]
004a7020  00 00 52 e3                                      cmp r2, #0
004a7024  12 00 00 0a                                      beq #0x4a7074
004a7028  00 40 a0 e3                                      mov r4, #0
004a702c  04 60 a0 e1                                      mov r6, r4
004a7030  01 00 00 ea                                      b #0x4a703c
004a7034  07 30 95 e7                                      ldr r3, [r5, r7]
004a7038  00 30 93 e5                                      ldr r3, [r3]
004a703c  04 00 83 e0                                      add r0, r3, r4
004a7040  04 30 93 e7                                      ldr r3, [r3, r4]
004a7044  0f e0 a0 e1                                      mov lr, pc
004a7048  08 f0 93 e5                                      ldr pc, [r3, #8]
004a704c  08 30 95 e7                                      ldr r3, [r5, r8]
004a7050  01 60 86 e2                                      add r6, r6, #1
004a7054  0c 40 84 e2                                      add r4, r4, #0xc
004a7058  00 30 93 e5                                      ldr r3, [r3]
004a705c  06 00 53 e1                                      cmp r3, r6
004a7060  f3 ff ff 8a                                      bhi #0x4a7034
004a7064  07 30 95 e7                                      ldr r3, [r5, r7]
004a7068  00 30 93 e5                                      ldr r3, [r3]
004a706c  00 00 53 e3                                      cmp r3, #0
004a7070  11 00 00 0a                                      beq #0x4a70bc
004a7074  04 20 13 e5                                      ldr r2, [r3, #-4]
004a7078  0c 00 a0 e3                                      mov r0, #0xc
004a707c  90 32 20 e0                                      mla r0, r0, r2, r3
004a7080  00 00 53 e1                                      cmp r3, r0
004a7084  01 00 00 1a                                      bne #0x4a7090
004a7088  09 00 00 ea                                      b #0x4a70b4
004a708c  04 00 a0 e1                                      mov r0, r4
004a7090  0c 40 40 e2                                      sub r4, r0, #0xc
004a7094  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a7098  04 00 a0 e1                                      mov r0, r4
004a709c  0f e0 a0 e1                                      mov lr, pc
004a70a0  00 f0 93 e5                                      ldr pc, [r3]
004a70a4  07 30 95 e7                                      ldr r3, [r5, r7]
004a70a8  00 00 93 e5                                      ldr r0, [r3]
004a70ac  04 00 50 e1                                      cmp r0, r4
004a70b0  f5 ff ff 1a                                      bne #0x4a708c
004a70b4  08 00 40 e2                                      sub r0, r0, #8
004a70b8  e0 a4 f9 eb                                      bl #0x310440
004a70bc  07 30 95 e7                                      ldr r3, [r5, r7]
004a70c0  00 20 a0 e3                                      mov r2, #0
004a70c4  00 20 83 e5                                      str r2, [r3]
004a70c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a70cc  90 da 4e 00 24 1d 00 00 68 31 00 00              .byte 0x90, 0xda, 0x4e, 0x00, 0x24, 0x1d, 0x00, 0x00, 0x68, 0x31, 0x00, 0x00

; FUNCTION 0x004b7164, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::HelpPages
; alias: _ZN6Arrays9HelpPages9readNamesEP11IStreamBase
; demangled: Arrays::HelpPages::readNames(IStreamBase*)
; decoder-mode: arm
004b7164  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b7168  00 70 a0 e1                                      mov r7, r0
004b716c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b7170  78 bf ff eb                                      bl #0x4a6f58
004b7174  07 00 a0 e1                                      mov r0, r7
004b7178  44 72 f9 eb                                      bl #0x313a90
004b717c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b7180  01 30 a0 e3                                      mov r3, #1
004b7184  00 00 53 e3                                      cmp r3, #0
004b7188  06 60 8f e0                                      add r6, pc, r6
004b718c  14 00 8d e5                                      str r0, [sp, #0x14]
004b7190  0c 30 8d e5                                      str r3, [sp, #0xc]
004b7194  12 00 00 1a                                      bne #0x4b71e4
004b7198  14 30 8d e2                                      add r3, sp, #0x14
004b719c  02 20 83 e2                                      add r2, r3, #2
004b71a0  01 30 83 e2                                      add r3, r3, #1
004b71a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b71a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b71ac  03 00 52 e1                                      cmp r2, r3
004b71b0  02 40 a0 e1                                      mov r4, r2
004b71b4  01 10 20 e0                                      eor r1, r0, r1
004b71b8  01 10 43 e5                                      strb r1, [r3, #-1]
004b71bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b71c0  00 10 21 e0                                      eor r1, r1, r0
004b71c4  01 10 c2 e5                                      strb r1, [r2, #1]
004b71c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b71cc  01 20 42 e2                                      sub r2, r2, #1
004b71d0  00 10 21 e0                                      eor r1, r1, r0
004b71d4  01 10 43 e5                                      strb r1, [r3, #-1]
004b71d8  01 30 83 e2                                      add r3, r3, #1
004b71dc  f0 ff ff 8a                                      bhi #0x4b71a4
004b71e0  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b71e4  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b71e8  03 30 96 e7                                      ldr r3, [r6, r3]
004b71ec  00 30 93 e5                                      ldr r3, [r3]
004b71f0  00 00 53 e1                                      cmp r3, r0
004b71f4  01 00 00 0a                                      beq #0x4b7200
004b71f8  1c d0 8d e2                                      add sp, sp, #0x1c
004b71fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b7200  00 01 a0 e1                                      lsl r0, r0, #2
004b7204  01 10 a0 e3                                      mov r1, #1
004b7208  d7 64 f9 eb                                      bl #0x31056c
004b720c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b7210  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b7214  09 30 96 e7                                      ldr r3, [r6, sb]
004b7218  00 00 52 e3                                      cmp r2, #0
004b721c  00 00 83 e5                                      str r0, [r3]
004b7220  f4 ff ff 0a                                      beq #0x4b71f8
004b7224  10 a0 8d e2                                      add sl, sp, #0x10
004b7228  01 80 a0 e3                                      mov r8, #1
004b722c  08 10 8a e0                                      add r1, sl, r8
004b7230  02 30 8a e2                                      add r3, sl, #2
004b7234  00 40 a0 e3                                      mov r4, #0
004b7238  0a 00 8d e8                                      stm sp, {r1, r3}
004b723c  07 00 a0 e1                                      mov r0, r7
004b7240  0a 10 a0 e1                                      mov r1, sl
004b7244  d5 9f fc eb                                      bl #0x3df1a0
004b7248  00 00 58 e3                                      cmp r8, #0
004b724c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b7250  0f 00 00 1a                                      bne #0x4b7294
004b7254  00 30 9d e5                                      ldr r3, [sp]
004b7258  04 20 9d e5                                      ldr r2, [sp, #4]
004b725c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7260  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7264  03 00 52 e1                                      cmp r2, r3
004b7268  01 10 20 e0                                      eor r1, r0, r1
004b726c  01 10 43 e5                                      strb r1, [r3, #-1]
004b7270  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7274  00 10 21 e0                                      eor r1, r1, r0
004b7278  01 10 c2 e5                                      strb r1, [r2, #1]
004b727c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7280  01 20 42 e2                                      sub r2, r2, #1
004b7284  00 10 21 e0                                      eor r1, r1, r0
004b7288  01 10 43 e5                                      strb r1, [r3, #-1]
004b728c  01 30 83 e2                                      add r3, r3, #1
004b7290  f1 ff ff 8a                                      bhi #0x4b725c
004b7294  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b7298  09 50 96 e7                                      ldr r5, [r6, sb]
004b729c  01 10 a0 e3                                      mov r1, #1
004b72a0  01 00 80 e0                                      add r0, r0, r1
004b72a4  00 b0 95 e5                                      ldr fp, [r5]
004b72a8  af 64 f9 eb                                      bl #0x31056c
004b72ac  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b72b0  00 30 95 e5                                      ldr r3, [r5]
004b72b4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b72b8  07 00 a0 e1                                      mov r0, r7
004b72bc  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b72c0  00 30 a0 e3                                      mov r3, #0
004b72c4  62 80 f9 eb                                      bl #0x317454
004b72c8  00 30 95 e5                                      ldr r3, [r5]
004b72cc  00 10 a0 e3                                      mov r1, #0
004b72d0  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b72d4  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b72d8  01 40 84 e2                                      add r4, r4, #1
004b72dc  03 10 c2 e7                                      strb r1, [r2, r3]
004b72e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b72e4  04 00 53 e1                                      cmp r3, r4
004b72e8  d3 ff ff 8a                                      bhi #0x4b723c
004b72ec  c1 ff ff ea                                      b #0x4b71f8
; mapping-symbol data/literal pool
004b72f0  08 d9 4d 00 68 31 00 00 ac 05 00 00              .byte 0x08, 0xd9, 0x4d, 0x00, 0x68, 0x31, 0x00, 0x00, 0xac, 0x05, 0x00, 0x00

; FUNCTION 0x004b72fc, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::HelpPages
; alias: _ZN6Arrays9HelpPages9skipNamesEP11IStreamBase
; demangled: Arrays::HelpPages::skipNames(IStreamBase*)
; decoder-mode: arm
004b72fc  98 ff ff ea                                      b #0x4b7164

; FUNCTION 0x004baf58, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::HelpPages
; alias: _ZN6Arrays9HelpPages4readEP11IStreamBase
; demangled: Arrays::HelpPages::read(IStreamBase*)
; decoder-mode: arm
004baf58  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004baf5c  0c d0 4d e2                                      sub sp, sp, #0xc
004baf60  00 a0 a0 e1                                      mov sl, r0
004baf64  c9 62 f9 eb                                      bl #0x313a90
004baf68  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004baf6c  01 30 a0 e3                                      mov r3, #1
004baf70  00 00 53 e3                                      cmp r3, #0
004baf74  04 00 8d e5                                      str r0, [sp, #4]
004baf78  00 30 8d e5                                      str r3, [sp]
004baf7c  06 60 8f e0                                      add r6, pc, r6
004baf80  10 00 00 1a                                      bne #0x4bafc8
004baf84  04 30 8d e2                                      add r3, sp, #4
004baf88  02 20 83 e2                                      add r2, r3, #2
004baf8c  01 30 83 e2                                      add r3, r3, #1
004baf90  01 00 d2 e5                                      ldrb r0, [r2, #1]
004baf94  01 10 53 e5                                      ldrb r1, [r3, #-1]
004baf98  03 00 52 e1                                      cmp r2, r3
004baf9c  01 10 20 e0                                      eor r1, r0, r1
004bafa0  01 10 43 e5                                      strb r1, [r3, #-1]
004bafa4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bafa8  00 10 21 e0                                      eor r1, r1, r0
004bafac  01 10 c2 e5                                      strb r1, [r2, #1]
004bafb0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bafb4  01 20 42 e2                                      sub r2, r2, #1
004bafb8  00 10 21 e0                                      eor r1, r1, r0
004bafbc  01 10 43 e5                                      strb r1, [r3, #-1]
004bafc0  01 30 83 e2                                      add r3, r3, #1
004bafc4  f1 ff ff 8a                                      bhi #0x4baf90
004bafc8  09 b0 ff eb                                      bl #0x4a6ff4
004bafcc  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004bafd0  04 40 9d e5                                      ldr r4, [sp, #4]
004bafd4  0c 50 a0 e3                                      mov r5, #0xc
004bafd8  07 30 96 e7                                      ldr r3, [r6, r7]
004bafdc  95 04 00 e0                                      mul r0, r5, r4
004bafe0  00 40 83 e5                                      str r4, [r3]
004bafe4  08 00 80 e2                                      add r0, r0, #8
004bafe8  01 10 a0 e3                                      mov r1, #1
004bafec  5e 55 f9 eb                                      bl #0x31056c
004baff0  00 00 54 e3                                      cmp r4, #0
004baff4  00 50 80 e5                                      str r5, [r0]
004baff8  04 40 80 e5                                      str r4, [r0, #4]
004baffc  08 30 80 e2                                      add r3, r0, #8
004bb000  08 00 00 0a                                      beq #0x4bb028
004bb004  88 10 9f e5                                      ldr r1, [pc, #0x88]
004bb008  00 20 a0 e3                                      mov r2, #0
004bb00c  01 10 96 e7                                      ldr r1, [r6, r1]
004bb010  08 10 81 e2                                      add r1, r1, #8
004bb014  01 20 82 e2                                      add r2, r2, #1
004bb018  04 00 52 e1                                      cmp r2, r4
004bb01c  08 10 80 e5                                      str r1, [r0, #8]
004bb020  0c 00 80 e2                                      add r0, r0, #0xc
004bb024  fa ff ff 1a                                      bne #0x4bb014
004bb028  07 20 96 e7                                      ldr r2, [r6, r7]
004bb02c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bb030  00 10 92 e5                                      ldr r1, [r2]
004bb034  08 20 96 e7                                      ldr r2, [r6, r8]
004bb038  00 00 51 e3                                      cmp r1, #0
004bb03c  00 30 82 e5                                      str r3, [r2]
004bb040  0f 00 00 0a                                      beq #0x4bb084
004bb044  00 40 a0 e3                                      mov r4, #0
004bb048  04 50 a0 e1                                      mov r5, r4
004bb04c  01 00 00 ea                                      b #0x4bb058
004bb050  08 30 96 e7                                      ldr r3, [r6, r8]
004bb054  00 30 93 e5                                      ldr r3, [r3]
004bb058  04 00 83 e0                                      add r0, r3, r4
004bb05c  0a 10 a0 e1                                      mov r1, sl
004bb060  04 30 93 e7                                      ldr r3, [r3, r4]
004bb064  0f e0 a0 e1                                      mov lr, pc
004bb068  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bb06c  07 30 96 e7                                      ldr r3, [r6, r7]
004bb070  01 50 85 e2                                      add r5, r5, #1
004bb074  0c 40 84 e2                                      add r4, r4, #0xc
004bb078  00 30 93 e5                                      ldr r3, [r3]
004bb07c  05 00 53 e1                                      cmp r3, r5
004bb080  f2 ff ff 8a                                      bhi #0x4bb050
004bb084  0c d0 8d e2                                      add sp, sp, #0xc
004bb088  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bb08c  14 9b 4d 00 68 31 00 00 d8 23 00 00 24 1d 00 00  .byte 0x14, 0x9b, 0x4d, 0x00, 0x68, 0x31, 0x00, 0x00, 0xd8, 0x23, 0x00, 0x00, 0x24, 0x1d, 0x00, 0x00
