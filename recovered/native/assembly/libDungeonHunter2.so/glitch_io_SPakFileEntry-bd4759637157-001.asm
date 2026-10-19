; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056f494, declared_size=108, range_size=108, mode=arm
; class-group: glitch::io::SPakFileEntry
; alias: _ZN6glitch2io13SPakFileEntryC1Ev
; demangled: glitch::io::SPakFileEntry::SPakFileEntry()
; decoder-mode: arm
0056f494  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f498  00 40 a0 e1                                      mov r4, r0
0056f49c  10 00 84 e5                                      str r0, [r4, #0x10]
0056f4a0  14 00 84 e5                                      str r0, [r4, #0x14]
0056f4a4  10 10 a0 e3                                      mov r1, #0x10
0056f4a8  3e c5 f6 eb                                      bl #0x3209a8
0056f4ac  10 20 94 e5                                      ldr r2, [r4, #0x10]
0056f4b0  18 30 84 e2                                      add r3, r4, #0x18
0056f4b4  00 50 a0 e3                                      mov r5, #0
0056f4b8  00 50 c2 e5                                      strb r5, [r2]
0056f4bc  03 00 a0 e1                                      mov r0, r3
0056f4c0  28 30 84 e5                                      str r3, [r4, #0x28]
0056f4c4  2c 30 84 e5                                      str r3, [r4, #0x2c]
0056f4c8  10 10 a0 e3                                      mov r1, #0x10
0056f4cc  35 c5 f6 eb                                      bl #0x3209a8
0056f4d0  28 20 94 e5                                      ldr r2, [r4, #0x28]
0056f4d4  30 30 84 e2                                      add r3, r4, #0x30
0056f4d8  03 00 a0 e1                                      mov r0, r3
0056f4dc  00 50 c2 e5                                      strb r5, [r2]
0056f4e0  10 10 a0 e3                                      mov r1, #0x10
0056f4e4  40 30 84 e5                                      str r3, [r4, #0x40]
0056f4e8  44 30 84 e5                                      str r3, [r4, #0x44]
0056f4ec  2d c5 f6 eb                                      bl #0x3209a8
0056f4f0  40 30 94 e5                                      ldr r3, [r4, #0x40]
0056f4f4  04 00 a0 e1                                      mov r0, r4
0056f4f8  00 50 c3 e5                                      strb r5, [r3]
0056f4fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056f500, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::SPakFileEntry
; alias: _ZN6glitch2io13SPakFileEntryC1ERKS1_
; demangled: glitch::io::SPakFileEntry::SPakFileEntry(glitch::io::SPakFileEntry const&)
; decoder-mode: arm
0056f500  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f504  00 40 a0 e1                                      mov r4, r0
0056f508  01 50 a0 e1                                      mov r5, r1
0056f50c  10 00 84 e5                                      str r0, [r4, #0x10]
0056f510  14 00 84 e5                                      str r0, [r4, #0x14]
0056f514  10 20 95 e5                                      ldr r2, [r5, #0x10]
0056f518  14 10 91 e5                                      ldr r1, [r1, #0x14]
0056f51c  b4 da f6 eb                                      bl #0x325ff4
0056f520  18 00 84 e2                                      add r0, r4, #0x18
0056f524  28 00 84 e5                                      str r0, [r4, #0x28]
0056f528  2c 00 84 e5                                      str r0, [r4, #0x2c]
0056f52c  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0056f530  28 20 95 e5                                      ldr r2, [r5, #0x28]
0056f534  ae da f6 eb                                      bl #0x325ff4
0056f538  30 00 84 e2                                      add r0, r4, #0x30
0056f53c  40 00 84 e5                                      str r0, [r4, #0x40]
0056f540  44 00 84 e5                                      str r0, [r4, #0x44]
0056f544  44 10 95 e5                                      ldr r1, [r5, #0x44]
0056f548  40 20 95 e5                                      ldr r2, [r5, #0x40]
0056f54c  a8 da f6 eb                                      bl #0x325ff4
0056f550  48 30 95 e5                                      ldr r3, [r5, #0x48]
0056f554  04 00 a0 e1                                      mov r0, r4
0056f558  48 30 84 e5                                      str r3, [r4, #0x48]
0056f55c  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0056f560  4c 30 84 e5                                      str r3, [r4, #0x4c]
0056f564  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056f5e0, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::SPakFileEntry
; alias: _ZN6glitch2io13SPakFileEntryaSERKS1_
; demangled: glitch::io::SPakFileEntry::operator=(glitch::io::SPakFileEntry const&)
; decoder-mode: arm
0056f5e0  01 00 50 e1                                      cmp r0, r1
0056f5e4  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f5e8  01 40 a0 e1                                      mov r4, r1
0056f5ec  00 50 a0 e1                                      mov r5, r0
0056f5f0  02 00 00 0a                                      beq #0x56f600
0056f5f4  14 10 91 e5                                      ldr r1, [r1, #0x14]
0056f5f8  10 20 94 e5                                      ldr r2, [r4, #0x10]
0056f5fc  61 c5 f6 eb                                      bl #0x320b88
0056f600  18 00 85 e2                                      add r0, r5, #0x18
0056f604  18 30 84 e2                                      add r3, r4, #0x18
0056f608  03 00 50 e1                                      cmp r0, r3
0056f60c  02 00 00 0a                                      beq #0x56f61c
0056f610  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0056f614  28 20 94 e5                                      ldr r2, [r4, #0x28]
0056f618  5a c5 f6 eb                                      bl #0x320b88
0056f61c  30 00 85 e2                                      add r0, r5, #0x30
0056f620  30 30 84 e2                                      add r3, r4, #0x30
0056f624  03 00 50 e1                                      cmp r0, r3
0056f628  02 00 00 0a                                      beq #0x56f638
0056f62c  44 10 94 e5                                      ldr r1, [r4, #0x44]
0056f630  40 20 94 e5                                      ldr r2, [r4, #0x40]
0056f634  53 c5 f6 eb                                      bl #0x320b88
0056f638  48 30 94 e5                                      ldr r3, [r4, #0x48]
0056f63c  05 00 a0 e1                                      mov r0, r5
0056f640  48 30 85 e5                                      str r3, [r5, #0x48]
0056f644  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0056f648  4c 30 85 e5                                      str r3, [r5, #0x4c]
0056f64c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056f650, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::SPakFileEntry
; alias: _ZN6glitch2io13SPakFileEntryD1Ev
; demangled: glitch::io::SPakFileEntry::~SPakFileEntry()
; decoder-mode: arm
0056f650  10 40 2d e9                                      push {r4, lr}
0056f654  30 30 80 e2                                      add r3, r0, #0x30
0056f658  00 40 a0 e1                                      mov r4, r0
0056f65c  14 00 93 e5                                      ldr r0, [r3, #0x14]
0056f660  03 00 50 e1                                      cmp r0, r3
0056f664  02 00 00 0a                                      beq #0x56f674
0056f668  00 00 50 e3                                      cmp r0, #0
0056f66c  00 00 00 0a                                      beq #0x56f674
0056f670  76 83 f6 eb                                      bl #0x310450
0056f674  18 30 84 e2                                      add r3, r4, #0x18
0056f678  14 00 93 e5                                      ldr r0, [r3, #0x14]
0056f67c  03 00 50 e1                                      cmp r0, r3
0056f680  02 00 00 0a                                      beq #0x56f690
0056f684  00 00 50 e3                                      cmp r0, #0
0056f688  00 00 00 0a                                      beq #0x56f690
0056f68c  6f 83 f6 eb                                      bl #0x310450
0056f690  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056f694  04 00 50 e1                                      cmp r0, r4
0056f698  02 00 00 0a                                      beq #0x56f6a8
0056f69c  00 00 50 e3                                      cmp r0, #0
0056f6a0  00 00 00 0a                                      beq #0x56f6a8
0056f6a4  69 83 f6 eb                                      bl #0x310450
0056f6a8  04 00 a0 e1                                      mov r0, r4
0056f6ac  10 80 bd e8                                      pop {r4, pc}
