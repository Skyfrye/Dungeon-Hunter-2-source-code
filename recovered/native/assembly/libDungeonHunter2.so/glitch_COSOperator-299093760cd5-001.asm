; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a0c80, declared_size=8, range_size=8, mode=arm
; class-group: glitch::COSOperator
; alias: _ZNK6glitch11COSOperator25getOperationSystemVersionEv
; demangled: glitch::COSOperator::getOperationSystemVersion() const
; decoder-mode: arm
006a0c80  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006a0c84  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0c88, declared_size=4, range_size=4, mode=arm
; class-group: glitch::COSOperator
; alias: _ZNK6glitch11COSOperator15copyToClipboardEPKc
; demangled: glitch::COSOperator::copyToClipboard(char const*) const
; decoder-mode: arm
006a0c88  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0c8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::COSOperator
; alias: _ZNK6glitch11COSOperator20getTextFromClipboardEv
; demangled: glitch::COSOperator::getTextFromClipboard() const
; decoder-mode: arm
006a0c8c  00 00 a0 e3                                      mov r0, #0
006a0c90  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0c94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::COSOperator
; alias: _ZNK6glitch11COSOperator20getProcessorSpeedMHzEPj
; demangled: glitch::COSOperator::getProcessorSpeedMHz(unsigned int*) const
; decoder-mode: arm
006a0c94  00 00 a0 e3                                      mov r0, #0
006a0c98  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0c9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::COSOperator
; alias: _ZNK6glitch11COSOperator15getSystemMemoryEPjS1_
; demangled: glitch::COSOperator::getSystemMemory(unsigned int*, unsigned int*) const
; decoder-mode: arm
006a0c9c  00 00 a0 e3                                      mov r0, #0
006a0ca0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0cd8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::COSOperator
; alias: _ZN6glitch11COSOperatorD0Ev
; demangled: glitch::COSOperator::~COSOperator()
; decoder-mode: arm
006a0cd8  44 30 9f e5                                      ldr r3, [pc, #0x44]
006a0cdc  44 20 9f e5                                      ldr r2, [pc, #0x44]
006a0ce0  10 40 2d e9                                      push {r4, lr}
006a0ce4  03 30 8f e0                                      add r3, pc, r3
006a0ce8  02 20 93 e7                                      ldr r2, [r3, r2]
006a0cec  00 10 a0 e1                                      mov r1, r0
006a0cf0  00 40 a0 e1                                      mov r4, r0
006a0cf4  08 20 82 e2                                      add r2, r2, #8
006a0cf8  08 20 81 e4                                      str r2, [r1], #8
006a0cfc  44 00 91 e5                                      ldr r0, [r1, #0x44]
006a0d00  01 00 50 e1                                      cmp r0, r1
006a0d04  02 00 00 0a                                      beq #0x6a0d14
006a0d08  00 00 50 e3                                      cmp r0, #0
006a0d0c  00 00 00 0a                                      beq #0x6a0d14
006a0d10  ce bd f1 eb                                      bl #0x310450
006a0d14  04 00 a0 e1                                      mov r0, r4
006a0d18  64 b5 f1 eb                                      bl #0x30e2b0
006a0d1c  04 00 a0 e1                                      mov r0, r4
006a0d20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a0d24  ac 3d 2f 00 b0 47 00 00                          .byte 0xac, 0x3d, 0x2f, 0x00, 0xb0, 0x47, 0x00, 0x00

; FUNCTION 0x006a0d2c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::COSOperator
; alias: _ZN6glitch11COSOperatorD1Ev
; demangled: glitch::COSOperator::~COSOperator()
; decoder-mode: arm
006a0d2c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006a0d30  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006a0d34  10 40 2d e9                                      push {r4, lr}
006a0d38  03 30 8f e0                                      add r3, pc, r3
006a0d3c  02 20 93 e7                                      ldr r2, [r3, r2]
006a0d40  00 10 a0 e1                                      mov r1, r0
006a0d44  00 40 a0 e1                                      mov r4, r0
006a0d48  08 20 82 e2                                      add r2, r2, #8
006a0d4c  08 20 81 e4                                      str r2, [r1], #8
006a0d50  44 00 91 e5                                      ldr r0, [r1, #0x44]
006a0d54  01 00 50 e1                                      cmp r0, r1
006a0d58  02 00 00 0a                                      beq #0x6a0d68
006a0d5c  00 00 50 e3                                      cmp r0, #0
006a0d60  00 00 00 0a                                      beq #0x6a0d68
006a0d64  b9 bd f1 eb                                      bl #0x310450
006a0d68  04 00 a0 e1                                      mov r0, r4
006a0d6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a0d70  58 3d 2f 00 b0 47 00 00                          .byte 0x58, 0x3d, 0x2f, 0x00, 0xb0, 0x47, 0x00, 0x00

; FUNCTION 0x006a0d78, declared_size=168, range_size=168, mode=arm
; class-group: glitch::COSOperator
; alias: _ZN6glitch11COSOperatorC1EPKc
; demangled: glitch::COSOperator::COSOperator(char const*)
; decoder-mode: arm
006a0d78  98 30 9f e5                                      ldr r3, [pc, #0x98]
006a0d7c  98 20 9f e5                                      ldr r2, [pc, #0x98]
006a0d80  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006a0d84  03 30 8f e0                                      add r3, pc, r3
006a0d88  02 20 93 e7                                      ldr r2, [r3, r2]
006a0d8c  00 60 a0 e1                                      mov r6, r0
006a0d90  00 40 a0 e1                                      mov r4, r0
006a0d94  08 20 82 e2                                      add r2, r2, #8
006a0d98  01 00 a0 e3                                      mov r0, #1
006a0d9c  04 00 84 e5                                      str r0, [r4, #4]
006a0da0  08 20 86 e4                                      str r2, [r6], #8
006a0da4  4c d0 4d e2                                      sub sp, sp, #0x4c
006a0da8  01 70 a0 e1                                      mov r7, r1
006a0dac  06 00 a0 e1                                      mov r0, r6
006a0db0  10 10 a0 e3                                      mov r1, #0x10
006a0db4  48 60 84 e5                                      str r6, [r4, #0x48]
006a0db8  4c 60 84 e5                                      str r6, [r4, #0x4c]
006a0dbc  d7 fe f1 eb                                      bl #0x320920
006a0dc0  48 30 94 e5                                      ldr r3, [r4, #0x48]
006a0dc4  00 20 a0 e3                                      mov r2, #0
006a0dc8  0d 50 a0 e1                                      mov r5, sp
006a0dcc  00 20 83 e5                                      str r2, [r3]
006a0dd0  07 10 a0 e1                                      mov r1, r7
006a0dd4  0d 00 a0 e1                                      mov r0, sp
006a0dd8  3a 15 f2 eb                                      bl #0x3262c8
006a0ddc  05 00 56 e1                                      cmp r6, r5
006a0de0  03 00 00 0a                                      beq #0x6a0df4
006a0de4  06 00 a0 e1                                      mov r0, r6
006a0de8  44 10 9d e5                                      ldr r1, [sp, #0x44]
006a0dec  40 20 9d e5                                      ldr r2, [sp, #0x40]
006a0df0  ea 08 f2 eb                                      bl #0x3231a0
006a0df4  44 00 9d e5                                      ldr r0, [sp, #0x44]
006a0df8  05 00 50 e1                                      cmp r0, r5
006a0dfc  02 00 00 0a                                      beq #0x6a0e0c
006a0e00  00 00 50 e3                                      cmp r0, #0
006a0e04  00 00 00 0a                                      beq #0x6a0e0c
006a0e08  90 bd f1 eb                                      bl #0x310450
006a0e0c  04 00 a0 e1                                      mov r0, r4
006a0e10  4c d0 8d e2                                      add sp, sp, #0x4c
006a0e14  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006a0e18  0c 3d 2f 00 b0 47 00 00                          .byte 0x0c, 0x3d, 0x2f, 0x00, 0xb0, 0x47, 0x00, 0x00

; FUNCTION 0x006a0e20, declared_size=168, range_size=168, mode=arm
; class-group: glitch::COSOperator
; alias: _ZN6glitch11COSOperatorC2EPKc
; demangled: glitch::COSOperator::COSOperator(char const*)
; decoder-mode: arm
006a0e20  98 30 9f e5                                      ldr r3, [pc, #0x98]
006a0e24  98 20 9f e5                                      ldr r2, [pc, #0x98]
006a0e28  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006a0e2c  03 30 8f e0                                      add r3, pc, r3
006a0e30  02 20 93 e7                                      ldr r2, [r3, r2]
006a0e34  00 60 a0 e1                                      mov r6, r0
006a0e38  00 40 a0 e1                                      mov r4, r0
006a0e3c  08 20 82 e2                                      add r2, r2, #8
006a0e40  01 00 a0 e3                                      mov r0, #1
006a0e44  04 00 84 e5                                      str r0, [r4, #4]
006a0e48  08 20 86 e4                                      str r2, [r6], #8
006a0e4c  4c d0 4d e2                                      sub sp, sp, #0x4c
006a0e50  01 70 a0 e1                                      mov r7, r1
006a0e54  06 00 a0 e1                                      mov r0, r6
006a0e58  10 10 a0 e3                                      mov r1, #0x10
006a0e5c  48 60 84 e5                                      str r6, [r4, #0x48]
006a0e60  4c 60 84 e5                                      str r6, [r4, #0x4c]
006a0e64  ad fe f1 eb                                      bl #0x320920
006a0e68  48 30 94 e5                                      ldr r3, [r4, #0x48]
006a0e6c  00 20 a0 e3                                      mov r2, #0
006a0e70  0d 50 a0 e1                                      mov r5, sp
006a0e74  00 20 83 e5                                      str r2, [r3]
006a0e78  07 10 a0 e1                                      mov r1, r7
006a0e7c  0d 00 a0 e1                                      mov r0, sp
006a0e80  10 15 f2 eb                                      bl #0x3262c8
006a0e84  05 00 56 e1                                      cmp r6, r5
006a0e88  03 00 00 0a                                      beq #0x6a0e9c
006a0e8c  06 00 a0 e1                                      mov r0, r6
006a0e90  44 10 9d e5                                      ldr r1, [sp, #0x44]
006a0e94  40 20 9d e5                                      ldr r2, [sp, #0x40]
006a0e98  c0 08 f2 eb                                      bl #0x3231a0
006a0e9c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006a0ea0  05 00 50 e1                                      cmp r0, r5
006a0ea4  02 00 00 0a                                      beq #0x6a0eb4
006a0ea8  00 00 50 e3                                      cmp r0, #0
006a0eac  00 00 00 0a                                      beq #0x6a0eb4
006a0eb0  66 bd f1 eb                                      bl #0x310450
006a0eb4  04 00 a0 e1                                      mov r0, r4
006a0eb8  4c d0 8d e2                                      add sp, sp, #0x4c
006a0ebc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006a0ec0  64 3c 2f 00 b0 47 00 00                          .byte 0x64, 0x3c, 0x2f, 0x00, 0xb0, 0x47, 0x00, 0x00
