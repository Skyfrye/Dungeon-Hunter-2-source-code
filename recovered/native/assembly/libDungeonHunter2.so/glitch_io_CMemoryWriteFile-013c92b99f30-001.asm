; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b4c60, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZN6glitch2io16CMemoryWriteFile5flushEv
; demangled: glitch::io::CMemoryWriteFile::flush()
; decoder-mode: arm
006b4c60  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b4c64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZNK6glitch2io16CMemoryWriteFile6getPosEv
; demangled: glitch::io::CMemoryWriteFile::getPos() const
; decoder-mode: arm
006b4c64  08 00 90 e5                                      ldr r0, [r0, #8]
006b4c68  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b4c6c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZNK6glitch2io16CMemoryWriteFile11getFileNameEv
; demangled: glitch::io::CMemoryWriteFile::getFileName() const
; decoder-mode: arm
006b4c6c  04 00 9f e5                                      ldr r0, [pc, #4]
006b4c70  00 00 8f e0                                      add r0, pc, r0
006b4c74  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b4c78  a8 65 23 00                                      .byte 0xa8, 0x65, 0x23, 0x00

; FUNCTION 0x006b4c7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZNK6glitch2io16CMemoryWriteFile11getFullPathEv
; demangled: glitch::io::CMemoryWriteFile::getFullPath() const
; decoder-mode: arm
006b4c7c  04 00 9f e5                                      ldr r0, [pc, #4]
006b4c80  00 00 8f e0                                      add r0, pc, r0
006b4c84  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b4c88  98 65 23 00                                      .byte 0x98, 0x65, 0x23, 0x00

; FUNCTION 0x006b4c8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZNK6glitch2io16CMemoryWriteFile9getBufferEv
; demangled: glitch::io::CMemoryWriteFile::getBuffer() const
; decoder-mode: arm
006b4c8c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006b4c90  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b4c94, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZNK6glitch2io16CMemoryWriteFile13getBufferSizeEv
; demangled: glitch::io::CMemoryWriteFile::getBufferSize() const
; decoder-mode: arm
006b4c94  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006b4c98  10 00 90 e5                                      ldr r0, [r0, #0x10]
006b4c9c  00 00 63 e0                                      rsb r0, r3, r0
006b4ca0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b4cc4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZN6glitch2io16CMemoryWriteFileD1Ev
; demangled: glitch::io::CMemoryWriteFile::~CMemoryWriteFile()
; decoder-mode: arm
006b4cc4  10 40 2d e9                                      push {r4, lr}
006b4cc8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006b4ccc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006b4cd0  00 40 a0 e1                                      mov r4, r0
006b4cd4  03 30 8f e0                                      add r3, pc, r3
006b4cd8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006b4cdc  02 20 93 e7                                      ldr r2, [r3, r2]
006b4ce0  00 00 50 e3                                      cmp r0, #0
006b4ce4  08 20 82 e2                                      add r2, r2, #8
006b4ce8  00 20 84 e5                                      str r2, [r4]
006b4cec  00 00 00 0a                                      beq #0x6b4cf4
006b4cf0  d6 6d f1 eb                                      bl #0x310450
006b4cf4  04 00 a0 e1                                      mov r0, r4
006b4cf8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b4cfc  bc fd 2d 00 d4 2b 00 00                          .byte 0xbc, 0xfd, 0x2d, 0x00, 0xd4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b4d04, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZN6glitch2io16CMemoryWriteFileC1Ej
; demangled: glitch::io::CMemoryWriteFile::CMemoryWriteFile(unsigned int)
; decoder-mode: arm
006b4d04  44 30 9f e5                                      ldr r3, [pc, #0x44]
006b4d08  44 20 9f e5                                      ldr r2, [pc, #0x44]
006b4d0c  10 40 2d e9                                      push {r4, lr}
006b4d10  03 30 8f e0                                      add r3, pc, r3
006b4d14  02 20 93 e7                                      ldr r2, [r3, r2]
006b4d18  00 40 a0 e1                                      mov r4, r0
006b4d1c  01 c0 a0 e3                                      mov ip, #1
006b4d20  00 00 a0 e3                                      mov r0, #0
006b4d24  08 20 82 e2                                      add r2, r2, #8
006b4d28  14 00 84 e5                                      str r0, [r4, #0x14]
006b4d2c  08 00 84 e5                                      str r0, [r4, #8]
006b4d30  0c 00 84 e5                                      str r0, [r4, #0xc]
006b4d34  10 00 84 e5                                      str r0, [r4, #0x10]
006b4d38  04 c0 84 e5                                      str ip, [r4, #4]
006b4d3c  0c 00 84 e2                                      add r0, r4, #0xc
006b4d40  00 20 84 e5                                      str r2, [r4]
006b4d44  56 14 fb eb                                      bl #0x579ea4
006b4d48  04 00 a0 e1                                      mov r0, r4
006b4d4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b4d50  80 fd 2d 00 d4 2b 00 00                          .byte 0x80, 0xfd, 0x2d, 0x00, 0xd4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b4d58, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZN6glitch2io16CMemoryWriteFileC2Ej
; demangled: glitch::io::CMemoryWriteFile::CMemoryWriteFile(unsigned int)
; decoder-mode: arm
006b4d58  44 30 9f e5                                      ldr r3, [pc, #0x44]
006b4d5c  44 20 9f e5                                      ldr r2, [pc, #0x44]
006b4d60  10 40 2d e9                                      push {r4, lr}
006b4d64  03 30 8f e0                                      add r3, pc, r3
006b4d68  02 20 93 e7                                      ldr r2, [r3, r2]
006b4d6c  00 40 a0 e1                                      mov r4, r0
006b4d70  01 c0 a0 e3                                      mov ip, #1
006b4d74  00 00 a0 e3                                      mov r0, #0
006b4d78  08 20 82 e2                                      add r2, r2, #8
006b4d7c  14 00 84 e5                                      str r0, [r4, #0x14]
006b4d80  08 00 84 e5                                      str r0, [r4, #8]
006b4d84  0c 00 84 e5                                      str r0, [r4, #0xc]
006b4d88  10 00 84 e5                                      str r0, [r4, #0x10]
006b4d8c  04 c0 84 e5                                      str ip, [r4, #4]
006b4d90  0c 00 84 e2                                      add r0, r4, #0xc
006b4d94  00 20 84 e5                                      str r2, [r4]
006b4d98  41 14 fb eb                                      bl #0x579ea4
006b4d9c  04 00 a0 e1                                      mov r0, r4
006b4da0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b4da4  2c fd 2d 00 d4 2b 00 00                          .byte 0x2c, 0xfd, 0x2d, 0x00, 0xd4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b4dac, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZN6glitch2io16CMemoryWriteFile4seekElb
; demangled: glitch::io::CMemoryWriteFile::seek(long, bool)
; decoder-mode: arm
006b4dac  30 40 2d e9                                      push {r4, r5, lr}
006b4db0  00 00 52 e3                                      cmp r2, #0
006b4db4  0c d0 4d e2                                      sub sp, sp, #0xc
006b4db8  00 40 a0 e1                                      mov r4, r0
006b4dbc  16 00 00 0a                                      beq #0x6b4e1c
006b4dc0  08 30 90 e5                                      ldr r3, [r0, #8]
006b4dc4  03 10 81 e0                                      add r1, r1, r3
006b4dc8  00 00 51 e3                                      cmp r1, #0
006b4dcc  00 30 a0 b3                                      movlt r3, #0
006b4dd0  08 10 80 e5                                      str r1, [r0, #8]
006b4dd4  08 30 80 b5                                      strlt r3, [r0, #8]
006b4dd8  0f 00 00 ba                                      blt #0x6b4e1c
006b4ddc  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006b4de0  10 20 90 e5                                      ldr r2, [r0, #0x10]
006b4de4  02 20 63 e0                                      rsb r2, r3, r2
006b4de8  02 00 51 e1                                      cmp r1, r2
006b4dec  0a 00 00 9a                                      bls #0x6b4e1c
006b4df0  14 20 90 e5                                      ldr r2, [r0, #0x14]
006b4df4  02 30 63 e0                                      rsb r3, r3, r2
006b4df8  03 00 51 e1                                      cmp r1, r3
006b4dfc  0c 50 80 92                                      addls r5, r0, #0xc
006b4e00  08 00 00 8a                                      bhi #0x6b4e28
006b4e04  08 20 8d e2                                      add r2, sp, #8
006b4e08  00 30 a0 e3                                      mov r3, #0
006b4e0c  01 30 62 e5                                      strb r3, [r2, #-1]!
006b4e10  05 00 a0 e1                                      mov r0, r5
006b4e14  01 10 81 e2                                      add r1, r1, #1
006b4e18  cb 22 fb eb                                      bl #0x57d94c
006b4e1c  01 00 a0 e3                                      mov r0, #1
006b4e20  0c d0 8d e2                                      add sp, sp, #0xc
006b4e24  30 80 bd e8                                      pop {r4, r5, pc}
006b4e28  01 10 81 e2                                      add r1, r1, #1
006b4e2c  0c 50 80 e2                                      add r5, r0, #0xc
006b4e30  81 10 a0 e1                                      lsl r1, r1, #1
006b4e34  05 00 a0 e1                                      mov r0, r5
006b4e38  19 14 fb eb                                      bl #0x579ea4
006b4e3c  08 10 94 e5                                      ldr r1, [r4, #8]
006b4e40  ef ff ff ea                                      b #0x6b4e04

; FUNCTION 0x006b4e44, declared_size=168, range_size=168, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZN6glitch2io16CMemoryWriteFile5writeEPKvj
; demangled: glitch::io::CMemoryWriteFile::write(void const*, unsigned int)
; decoder-mode: arm
006b4e44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006b4e48  00 40 a0 e1                                      mov r4, r0
006b4e4c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006b4e50  08 00 90 e5                                      ldr r0, [r0, #8]
006b4e54  10 e0 94 e5                                      ldr lr, [r4, #0x10]
006b4e58  0c d0 4d e2                                      sub sp, sp, #0xc
006b4e5c  00 c0 82 e0                                      add ip, r2, r0
006b4e60  0e e0 63 e0                                      rsb lr, r3, lr
006b4e64  0e 00 5c e1                                      cmp ip, lr
006b4e68  02 50 a0 e1                                      mov r5, r2
006b4e6c  01 60 a0 e1                                      mov r6, r1
006b4e70  0c 00 00 9a                                      bls #0x6b4ea8
006b4e74  14 20 94 e5                                      ldr r2, [r4, #0x14]
006b4e78  02 30 63 e0                                      rsb r3, r3, r2
006b4e7c  03 00 5c e1                                      cmp ip, r3
006b4e80  0c 70 84 92                                      addls r7, r4, #0xc
006b4e84  11 00 00 8a                                      bhi #0x6b4ed0
006b4e88  00 30 a0 e3                                      mov r3, #0
006b4e8c  08 20 8d e2                                      add r2, sp, #8
006b4e90  01 30 62 e5                                      strb r3, [r2, #-1]!
006b4e94  07 00 a0 e1                                      mov r0, r7
006b4e98  0c 10 a0 e1                                      mov r1, ip
006b4e9c  aa 22 fb eb                                      bl #0x57d94c
006b4ea0  08 00 94 e5                                      ldr r0, [r4, #8]
006b4ea4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006b4ea8  05 20 a0 e1                                      mov r2, r5
006b4eac  00 00 83 e0                                      add r0, r3, r0
006b4eb0  06 10 a0 e1                                      mov r1, r6
006b4eb4  6b 66 f1 eb                                      bl #0x30e868
006b4eb8  08 30 94 e5                                      ldr r3, [r4, #8]
006b4ebc  05 00 a0 e1                                      mov r0, r5
006b4ec0  05 50 83 e0                                      add r5, r3, r5
006b4ec4  08 50 84 e5                                      str r5, [r4, #8]
006b4ec8  0c d0 8d e2                                      add sp, sp, #0xc
006b4ecc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006b4ed0  0c 70 84 e2                                      add r7, r4, #0xc
006b4ed4  8c 10 a0 e1                                      lsl r1, ip, #1
006b4ed8  07 00 a0 e1                                      mov r0, r7
006b4edc  f0 13 fb eb                                      bl #0x579ea4
006b4ee0  08 c0 94 e5                                      ldr ip, [r4, #8]
006b4ee4  0c c0 85 e0                                      add ip, r5, ip
006b4ee8  e6 ff ff ea                                      b #0x6b4e88

; FUNCTION 0x006b4eec, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CMemoryWriteFile
; alias: _ZN6glitch2io16CMemoryWriteFileD0Ev
; demangled: glitch::io::CMemoryWriteFile::~CMemoryWriteFile()
; decoder-mode: arm
006b4eec  10 40 2d e9                                      push {r4, lr}
006b4ef0  34 30 9f e5                                      ldr r3, [pc, #0x34]
006b4ef4  34 20 9f e5                                      ldr r2, [pc, #0x34]
006b4ef8  00 40 a0 e1                                      mov r4, r0
006b4efc  03 30 8f e0                                      add r3, pc, r3
006b4f00  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006b4f04  02 20 93 e7                                      ldr r2, [r3, r2]
006b4f08  00 00 50 e3                                      cmp r0, #0
006b4f0c  08 20 82 e2                                      add r2, r2, #8
006b4f10  00 20 84 e5                                      str r2, [r4]
006b4f14  00 00 00 0a                                      beq #0x6b4f1c
006b4f18  4c 6d f1 eb                                      bl #0x310450
006b4f1c  04 00 a0 e1                                      mov r0, r4
006b4f20  e2 64 f1 eb                                      bl #0x30e2b0
006b4f24  04 00 a0 e1                                      mov r0, r4
006b4f28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b4f2c  94 fb 2d 00 d4 2b 00 00                          .byte 0x94, 0xfb, 0x2d, 0x00, 0xd4, 0x2b, 0x00, 0x00
