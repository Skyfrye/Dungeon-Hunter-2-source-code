; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a3f88, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::AnimDict
; alias: _ZN6Arrays8AnimDict13finalizeNamesEv
; demangled: Arrays::AnimDict::finalizeNames()
; decoder-mode: arm
004a3f88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a3f8c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a3f90  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a3f94  05 50 8f e0                                      add r5, pc, r5
004a3f98  06 30 95 e7                                      ldr r3, [r5, r6]
004a3f9c  00 30 93 e5                                      ldr r3, [r3]
004a3fa0  00 00 53 e3                                      cmp r3, #0
004a3fa4  1a 00 00 0a                                      beq #0x4a4014
004a3fa8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a3fac  07 20 95 e7                                      ldr r2, [r5, r7]
004a3fb0  00 20 92 e5                                      ldr r2, [r2]
004a3fb4  00 00 52 e3                                      cmp r2, #0
004a3fb8  10 00 00 0a                                      beq #0x4a4000
004a3fbc  00 40 a0 e3                                      mov r4, #0
004a3fc0  01 00 00 ea                                      b #0x4a3fcc
004a3fc4  06 30 95 e7                                      ldr r3, [r5, r6]
004a3fc8  00 30 93 e5                                      ldr r3, [r3]
004a3fcc  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a3fd0  01 40 84 e2                                      add r4, r4, #1
004a3fd4  00 00 50 e3                                      cmp r0, #0
004a3fd8  02 00 00 0a                                      beq #0x4a3fe8
004a3fdc  17 b1 f9 eb                                      bl #0x310440
004a3fe0  06 30 95 e7                                      ldr r3, [r5, r6]
004a3fe4  00 30 93 e5                                      ldr r3, [r3]
004a3fe8  07 20 95 e7                                      ldr r2, [r5, r7]
004a3fec  00 20 92 e5                                      ldr r2, [r2]
004a3ff0  04 00 52 e1                                      cmp r2, r4
004a3ff4  f2 ff ff 8a                                      bhi #0x4a3fc4
004a3ff8  00 00 53 e3                                      cmp r3, #0
004a3ffc  01 00 00 0a                                      beq #0x4a4008
004a4000  03 00 a0 e1                                      mov r0, r3
004a4004  0d b1 f9 eb                                      bl #0x310440
004a4008  06 30 95 e7                                      ldr r3, [r5, r6]
004a400c  00 20 a0 e3                                      mov r2, #0
004a4010  00 20 83 e5                                      str r2, [r3]
004a4014  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4018  fc 0a 4f 00 98 2e 00 00 38 22 00 00              .byte 0xfc, 0x0a, 0x4f, 0x00, 0x98, 0x2e, 0x00, 0x00, 0x38, 0x22, 0x00, 0x00

; FUNCTION 0x004a4024, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::AnimDict
; alias: _ZN6Arrays8AnimDict8finalizeEv
; demangled: Arrays::AnimDict::finalize()
; decoder-mode: arm
004a4024  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4028  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a402c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a4030  05 50 8f e0                                      add r5, pc, r5
004a4034  07 30 95 e7                                      ldr r3, [r5, r7]
004a4038  00 30 93 e5                                      ldr r3, [r3]
004a403c  00 00 53 e3                                      cmp r3, #0
004a4040  2c 00 00 0a                                      beq #0x4a40f8
004a4044  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a4048  08 20 95 e7                                      ldr r2, [r5, r8]
004a404c  00 20 92 e5                                      ldr r2, [r2]
004a4050  00 00 52 e3                                      cmp r2, #0
004a4054  12 00 00 0a                                      beq #0x4a40a4
004a4058  00 40 a0 e3                                      mov r4, #0
004a405c  04 60 a0 e1                                      mov r6, r4
004a4060  01 00 00 ea                                      b #0x4a406c
004a4064  07 30 95 e7                                      ldr r3, [r5, r7]
004a4068  00 30 93 e5                                      ldr r3, [r3]
004a406c  04 00 83 e0                                      add r0, r3, r4
004a4070  04 30 93 e7                                      ldr r3, [r3, r4]
004a4074  0f e0 a0 e1                                      mov lr, pc
004a4078  08 f0 93 e5                                      ldr pc, [r3, #8]
004a407c  08 30 95 e7                                      ldr r3, [r5, r8]
004a4080  01 60 86 e2                                      add r6, r6, #1
004a4084  0c 40 84 e2                                      add r4, r4, #0xc
004a4088  00 30 93 e5                                      ldr r3, [r3]
004a408c  06 00 53 e1                                      cmp r3, r6
004a4090  f3 ff ff 8a                                      bhi #0x4a4064
004a4094  07 30 95 e7                                      ldr r3, [r5, r7]
004a4098  00 30 93 e5                                      ldr r3, [r3]
004a409c  00 00 53 e3                                      cmp r3, #0
004a40a0  11 00 00 0a                                      beq #0x4a40ec
004a40a4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a40a8  0c 00 a0 e3                                      mov r0, #0xc
004a40ac  90 32 20 e0                                      mla r0, r0, r2, r3
004a40b0  00 00 53 e1                                      cmp r3, r0
004a40b4  01 00 00 1a                                      bne #0x4a40c0
004a40b8  09 00 00 ea                                      b #0x4a40e4
004a40bc  04 00 a0 e1                                      mov r0, r4
004a40c0  0c 40 40 e2                                      sub r4, r0, #0xc
004a40c4  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a40c8  04 00 a0 e1                                      mov r0, r4
004a40cc  0f e0 a0 e1                                      mov lr, pc
004a40d0  00 f0 93 e5                                      ldr pc, [r3]
004a40d4  07 30 95 e7                                      ldr r3, [r5, r7]
004a40d8  00 00 93 e5                                      ldr r0, [r3]
004a40dc  04 00 50 e1                                      cmp r0, r4
004a40e0  f5 ff ff 1a                                      bne #0x4a40bc
004a40e4  08 00 40 e2                                      sub r0, r0, #8
004a40e8  d4 b0 f9 eb                                      bl #0x310440
004a40ec  07 30 95 e7                                      ldr r3, [r5, r7]
004a40f0  00 20 a0 e3                                      mov r2, #0
004a40f4  00 20 83 e5                                      str r2, [r3]
004a40f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a40fc  60 0a 4f 00 70 0e 00 00 38 22 00 00              .byte 0x60, 0x0a, 0x4f, 0x00, 0x70, 0x0e, 0x00, 0x00, 0x38, 0x22, 0x00, 0x00

; FUNCTION 0x004b1f94, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::AnimDict
; alias: _ZN6Arrays8AnimDict9readNamesEP11IStreamBase
; demangled: Arrays::AnimDict::readNames(IStreamBase*)
; decoder-mode: arm
004b1f94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b1f98  00 70 a0 e1                                      mov r7, r0
004b1f9c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b1fa0  f8 c7 ff eb                                      bl #0x4a3f88
004b1fa4  07 00 a0 e1                                      mov r0, r7
004b1fa8  b8 86 f9 eb                                      bl #0x313a90
004b1fac  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b1fb0  01 30 a0 e3                                      mov r3, #1
004b1fb4  00 00 53 e3                                      cmp r3, #0
004b1fb8  06 60 8f e0                                      add r6, pc, r6
004b1fbc  14 00 8d e5                                      str r0, [sp, #0x14]
004b1fc0  0c 30 8d e5                                      str r3, [sp, #0xc]
004b1fc4  12 00 00 1a                                      bne #0x4b2014
004b1fc8  14 30 8d e2                                      add r3, sp, #0x14
004b1fcc  02 20 83 e2                                      add r2, r3, #2
004b1fd0  01 30 83 e2                                      add r3, r3, #1
004b1fd4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1fd8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1fdc  03 00 52 e1                                      cmp r2, r3
004b1fe0  02 40 a0 e1                                      mov r4, r2
004b1fe4  01 10 20 e0                                      eor r1, r0, r1
004b1fe8  01 10 43 e5                                      strb r1, [r3, #-1]
004b1fec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1ff0  00 10 21 e0                                      eor r1, r1, r0
004b1ff4  01 10 c2 e5                                      strb r1, [r2, #1]
004b1ff8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1ffc  01 20 42 e2                                      sub r2, r2, #1
004b2000  00 10 21 e0                                      eor r1, r1, r0
004b2004  01 10 43 e5                                      strb r1, [r3, #-1]
004b2008  01 30 83 e2                                      add r3, r3, #1
004b200c  f0 ff ff 8a                                      bhi #0x4b1fd4
004b2010  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b2014  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b2018  03 30 96 e7                                      ldr r3, [r6, r3]
004b201c  00 30 93 e5                                      ldr r3, [r3]
004b2020  00 00 53 e1                                      cmp r3, r0
004b2024  01 00 00 0a                                      beq #0x4b2030
004b2028  1c d0 8d e2                                      add sp, sp, #0x1c
004b202c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b2030  00 01 a0 e1                                      lsl r0, r0, #2
004b2034  01 10 a0 e3                                      mov r1, #1
004b2038  4b 79 f9 eb                                      bl #0x31056c
004b203c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b2040  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b2044  09 30 96 e7                                      ldr r3, [r6, sb]
004b2048  00 00 52 e3                                      cmp r2, #0
004b204c  00 00 83 e5                                      str r0, [r3]
004b2050  f4 ff ff 0a                                      beq #0x4b2028
004b2054  10 a0 8d e2                                      add sl, sp, #0x10
004b2058  01 80 a0 e3                                      mov r8, #1
004b205c  08 10 8a e0                                      add r1, sl, r8
004b2060  02 30 8a e2                                      add r3, sl, #2
004b2064  00 40 a0 e3                                      mov r4, #0
004b2068  0a 00 8d e8                                      stm sp, {r1, r3}
004b206c  07 00 a0 e1                                      mov r0, r7
004b2070  0a 10 a0 e1                                      mov r1, sl
004b2074  49 b4 fc eb                                      bl #0x3df1a0
004b2078  00 00 58 e3                                      cmp r8, #0
004b207c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b2080  0f 00 00 1a                                      bne #0x4b20c4
004b2084  00 30 9d e5                                      ldr r3, [sp]
004b2088  04 20 9d e5                                      ldr r2, [sp, #4]
004b208c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2090  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2094  03 00 52 e1                                      cmp r2, r3
004b2098  01 10 20 e0                                      eor r1, r0, r1
004b209c  01 10 43 e5                                      strb r1, [r3, #-1]
004b20a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b20a4  00 10 21 e0                                      eor r1, r1, r0
004b20a8  01 10 c2 e5                                      strb r1, [r2, #1]
004b20ac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b20b0  01 20 42 e2                                      sub r2, r2, #1
004b20b4  00 10 21 e0                                      eor r1, r1, r0
004b20b8  01 10 43 e5                                      strb r1, [r3, #-1]
004b20bc  01 30 83 e2                                      add r3, r3, #1
004b20c0  f1 ff ff 8a                                      bhi #0x4b208c
004b20c4  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b20c8  09 50 96 e7                                      ldr r5, [r6, sb]
004b20cc  01 10 a0 e3                                      mov r1, #1
004b20d0  01 00 80 e0                                      add r0, r0, r1
004b20d4  00 b0 95 e5                                      ldr fp, [r5]
004b20d8  23 79 f9 eb                                      bl #0x31056c
004b20dc  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b20e0  00 30 95 e5                                      ldr r3, [r5]
004b20e4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b20e8  07 00 a0 e1                                      mov r0, r7
004b20ec  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b20f0  00 30 a0 e3                                      mov r3, #0
004b20f4  d6 94 f9 eb                                      bl #0x317454
004b20f8  00 30 95 e5                                      ldr r3, [r5]
004b20fc  00 10 a0 e3                                      mov r1, #0
004b2100  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b2104  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b2108  01 40 84 e2                                      add r4, r4, #1
004b210c  03 10 c2 e7                                      strb r1, [r2, r3]
004b2110  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b2114  04 00 53 e1                                      cmp r3, r4
004b2118  d3 ff ff 8a                                      bhi #0x4b206c
004b211c  c1 ff ff ea                                      b #0x4b2028
; mapping-symbol data/literal pool
004b2120  d8 2a 4e 00 38 22 00 00 98 2e 00 00              .byte 0xd8, 0x2a, 0x4e, 0x00, 0x38, 0x22, 0x00, 0x00, 0x98, 0x2e, 0x00, 0x00

; FUNCTION 0x004b212c, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::AnimDict
; alias: _ZN6Arrays8AnimDict9skipNamesEP11IStreamBase
; demangled: Arrays::AnimDict::skipNames(IStreamBase*)
; decoder-mode: arm
004b212c  98 ff ff ea                                      b #0x4b1f94

; FUNCTION 0x004b85a4, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::AnimDict
; alias: _ZN6Arrays8AnimDict4readEP11IStreamBase
; demangled: Arrays::AnimDict::read(IStreamBase*)
; decoder-mode: arm
004b85a4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b85a8  0c d0 4d e2                                      sub sp, sp, #0xc
004b85ac  00 a0 a0 e1                                      mov sl, r0
004b85b0  36 6d f9 eb                                      bl #0x313a90
004b85b4  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b85b8  01 30 a0 e3                                      mov r3, #1
004b85bc  00 00 53 e3                                      cmp r3, #0
004b85c0  04 00 8d e5                                      str r0, [sp, #4]
004b85c4  00 30 8d e5                                      str r3, [sp]
004b85c8  06 60 8f e0                                      add r6, pc, r6
004b85cc  10 00 00 1a                                      bne #0x4b8614
004b85d0  04 30 8d e2                                      add r3, sp, #4
004b85d4  02 20 83 e2                                      add r2, r3, #2
004b85d8  01 30 83 e2                                      add r3, r3, #1
004b85dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b85e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b85e4  03 00 52 e1                                      cmp r2, r3
004b85e8  01 10 20 e0                                      eor r1, r0, r1
004b85ec  01 10 43 e5                                      strb r1, [r3, #-1]
004b85f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b85f4  00 10 21 e0                                      eor r1, r1, r0
004b85f8  01 10 c2 e5                                      strb r1, [r2, #1]
004b85fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8600  01 20 42 e2                                      sub r2, r2, #1
004b8604  00 10 21 e0                                      eor r1, r1, r0
004b8608  01 10 43 e5                                      strb r1, [r3, #-1]
004b860c  01 30 83 e2                                      add r3, r3, #1
004b8610  f1 ff ff 8a                                      bhi #0x4b85dc
004b8614  82 ae ff eb                                      bl #0x4a4024
004b8618  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b861c  04 40 9d e5                                      ldr r4, [sp, #4]
004b8620  0c 50 a0 e3                                      mov r5, #0xc
004b8624  07 30 96 e7                                      ldr r3, [r6, r7]
004b8628  95 04 00 e0                                      mul r0, r5, r4
004b862c  00 40 83 e5                                      str r4, [r3]
004b8630  08 00 80 e2                                      add r0, r0, #8
004b8634  01 10 a0 e3                                      mov r1, #1
004b8638  cb 5f f9 eb                                      bl #0x31056c
004b863c  00 00 54 e3                                      cmp r4, #0
004b8640  00 50 80 e5                                      str r5, [r0]
004b8644  04 40 80 e5                                      str r4, [r0, #4]
004b8648  08 30 80 e2                                      add r3, r0, #8
004b864c  0a 00 00 0a                                      beq #0x4b867c
004b8650  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b8654  00 20 a0 e3                                      mov r2, #0
004b8658  02 c0 a0 e1                                      mov ip, r2
004b865c  01 10 96 e7                                      ldr r1, [r6, r1]
004b8660  08 10 81 e2                                      add r1, r1, #8
004b8664  01 20 82 e2                                      add r2, r2, #1
004b8668  04 00 52 e1                                      cmp r2, r4
004b866c  08 10 80 e5                                      str r1, [r0, #8]
004b8670  10 c0 80 e5                                      str ip, [r0, #0x10]
004b8674  0c 00 80 e2                                      add r0, r0, #0xc
004b8678  f9 ff ff 1a                                      bne #0x4b8664
004b867c  07 20 96 e7                                      ldr r2, [r6, r7]
004b8680  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b8684  00 10 92 e5                                      ldr r1, [r2]
004b8688  08 20 96 e7                                      ldr r2, [r6, r8]
004b868c  00 00 51 e3                                      cmp r1, #0
004b8690  00 30 82 e5                                      str r3, [r2]
004b8694  0f 00 00 0a                                      beq #0x4b86d8
004b8698  00 40 a0 e3                                      mov r4, #0
004b869c  04 50 a0 e1                                      mov r5, r4
004b86a0  01 00 00 ea                                      b #0x4b86ac
004b86a4  08 30 96 e7                                      ldr r3, [r6, r8]
004b86a8  00 30 93 e5                                      ldr r3, [r3]
004b86ac  04 00 83 e0                                      add r0, r3, r4
004b86b0  0a 10 a0 e1                                      mov r1, sl
004b86b4  04 30 93 e7                                      ldr r3, [r3, r4]
004b86b8  0f e0 a0 e1                                      mov lr, pc
004b86bc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b86c0  07 30 96 e7                                      ldr r3, [r6, r7]
004b86c4  01 50 85 e2                                      add r5, r5, #1
004b86c8  0c 40 84 e2                                      add r4, r4, #0xc
004b86cc  00 30 93 e5                                      ldr r3, [r3]
004b86d0  05 00 53 e1                                      cmp r3, r5
004b86d4  f2 ff ff 8a                                      bhi #0x4b86a4
004b86d8  0c d0 8d e2                                      add sp, sp, #0xc
004b86dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b86e0  c8 c4 4d 00 38 22 00 00 bc 0a 00 00 70 0e 00 00  .byte 0xc8, 0xc4, 0x4d, 0x00, 0x38, 0x22, 0x00, 0x00, 0xbc, 0x0a, 0x00, 0x00, 0x70, 0x0e, 0x00, 0x00
