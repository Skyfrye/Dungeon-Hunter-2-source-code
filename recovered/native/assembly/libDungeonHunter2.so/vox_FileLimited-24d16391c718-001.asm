; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008939f0, declared_size=4, range_size=4, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimitedD1Ev
; demangled: vox::FileLimited::~FileLimited()
; decoder-mode: arm
008939f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008939f4, declared_size=8, range_size=8, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimited5WriteEPKvii
; demangled: vox::FileLimited::Write(void const*, int, int)
; decoder-mode: arm
008939f4  00 00 a0 e3                                      mov r0, #0
008939f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00893b34, declared_size=72, range_size=72, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimitedC2Ev
; demangled: vox::FileLimited::FileLimited()
; decoder-mode: arm
00893b34  38 10 9f e5                                      ldr r1, [pc, #0x38]
00893b38  38 c0 9f e5                                      ldr ip, [pc, #0x38]
00893b3c  00 20 a0 e3                                      mov r2, #0
00893b40  01 10 8f e0                                      add r1, pc, r1
00893b44  0c c0 91 e7                                      ldr ip, [r1, ip]
00893b48  04 40 2d e5                                      str r4, [sp, #-4]!
00893b4c  08 c0 8c e2                                      add ip, ip, #8
00893b50  01 40 a0 e3                                      mov r4, #1
00893b54  08 40 80 e5                                      str r4, [r0, #8]
00893b58  00 c0 80 e5                                      str ip, [r0]
00893b5c  14 20 80 e5                                      str r2, [r0, #0x14]
00893b60  04 20 80 e5                                      str r2, [r0, #4]
00893b64  0c 20 80 e5                                      str r2, [r0, #0xc]
00893b68  10 20 80 e5                                      str r2, [r0, #0x10]
00893b6c  10 00 bd e8                                      ldm sp!, {r4}
00893b70  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00893b74  50 0f 10 00 00 4a 00 00                          .byte 0x50, 0x0f, 0x10, 0x00, 0x00, 0x4a, 0x00, 0x00

; FUNCTION 0x00893b7c, declared_size=72, range_size=72, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimitedC1Ev
; demangled: vox::FileLimited::FileLimited()
; decoder-mode: arm
00893b7c  38 10 9f e5                                      ldr r1, [pc, #0x38]
00893b80  38 c0 9f e5                                      ldr ip, [pc, #0x38]
00893b84  00 20 a0 e3                                      mov r2, #0
00893b88  01 10 8f e0                                      add r1, pc, r1
00893b8c  0c c0 91 e7                                      ldr ip, [r1, ip]
00893b90  04 40 2d e5                                      str r4, [sp, #-4]!
00893b94  08 c0 8c e2                                      add ip, ip, #8
00893b98  01 40 a0 e3                                      mov r4, #1
00893b9c  08 40 80 e5                                      str r4, [r0, #8]
00893ba0  00 c0 80 e5                                      str ip, [r0]
00893ba4  14 20 80 e5                                      str r2, [r0, #0x14]
00893ba8  04 20 80 e5                                      str r2, [r0, #4]
00893bac  0c 20 80 e5                                      str r2, [r0, #0xc]
00893bb0  10 20 80 e5                                      str r2, [r0, #0x10]
00893bb4  10 00 bd e8                                      ldm sp!, {r4}
00893bb8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00893bbc  08 0f 10 00 00 4a 00 00                          .byte 0x08, 0x0f, 0x10, 0x00, 0x00, 0x4a, 0x00, 0x00

; FUNCTION 0x00893bc4, declared_size=176, range_size=176, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimited4ReadEPvii
; demangled: vox::FileLimited::Read(void*, int, int)
; decoder-mode: arm
00893bc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00893bc8  14 c0 90 e5                                      ldr ip, [r0, #0x14]
00893bcc  00 40 a0 e1                                      mov r4, r0
00893bd0  02 50 a0 e1                                      mov r5, r2
00893bd4  10 00 90 e5                                      ldr r0, [r0, #0x10]
00893bd8  92 c3 22 e0                                      mla r2, r2, r3, ip
00893bdc  88 60 9f e5                                      ldr r6, [pc, #0x88]
00893be0  00 00 52 e1                                      cmp r2, r0
00893be4  01 70 a0 e1                                      mov r7, r1
00893be8  06 60 8f e0                                      add r6, pc, r6
00893bec  12 00 00 da                                      ble #0x893c3c
00893bf0  00 00 6c e0                                      rsb r0, ip, r0
00893bf4  05 10 a0 e1                                      mov r1, r5
00893bf8  a9 e9 e9 eb                                      bl #0x30e2a4
00893bfc  00 20 50 e2                                      subs r2, r0, #0
00893c00  0b 00 00 da                                      ble #0x893c34
00893c04  64 30 9f e5                                      ldr r3, [pc, #0x64]
00893c08  05 10 a0 e1                                      mov r1, r5
00893c0c  07 00 a0 e1                                      mov r0, r7
00893c10  03 c0 96 e7                                      ldr ip, [r6, r3]
00893c14  04 30 94 e5                                      ldr r3, [r4, #4]
00893c18  0f e0 a0 e1                                      mov lr, pc
00893c1c  00 f0 9c e5                                      ldr pc, [ip]
00893c20  14 20 94 e5                                      ldr r2, [r4, #0x14]
00893c24  00 30 a0 e1                                      mov r3, r0
00893c28  95 23 25 e0                                      mla r5, r5, r3, r2
00893c2c  14 50 84 e5                                      str r5, [r4, #0x14]
00893c30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00893c34  00 00 a0 e3                                      mov r0, #0
00893c38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00893c3c  03 20 a0 e1                                      mov r2, r3
00893c40  28 30 9f e5                                      ldr r3, [pc, #0x28]
00893c44  01 00 a0 e1                                      mov r0, r1
00893c48  05 10 a0 e1                                      mov r1, r5
00893c4c  03 c0 96 e7                                      ldr ip, [r6, r3]
00893c50  04 30 94 e5                                      ldr r3, [r4, #4]
00893c54  0f e0 a0 e1                                      mov lr, pc
00893c58  00 f0 9c e5                                      ldr pc, [ip]
00893c5c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00893c60  95 30 25 e0                                      mla r5, r5, r0, r3
00893c64  14 50 84 e5                                      str r5, [r4, #0x14]
00893c68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00893c6c  a8 0e 10 00 78 15 00 00                          .byte 0xa8, 0x0e, 0x10, 0x00, 0x78, 0x15, 0x00, 0x00

; FUNCTION 0x00893c74, declared_size=252, range_size=252, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimited4SeekEiNS_17VoxFileSeekOriginE
; demangled: vox::FileLimited::Seek(int, vox::VoxFileSeekOrigin)
; decoder-mode: arm
00893c74  ec 30 9f e5                                      ldr r3, [pc, #0xec]
00893c78  01 00 52 e3                                      cmp r2, #1
00893c7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00893c80  03 30 8f e0                                      add r3, pc, r3
00893c84  00 40 a0 e1                                      mov r4, r0
00893c88  22 00 00 0a                                      beq #0x893d18
00893c8c  02 00 52 e3                                      cmp r2, #2
00893c90  15 00 00 0a                                      beq #0x893cec
00893c94  00 00 52 e3                                      cmp r2, #0
00893c98  11 00 00 1a                                      bne #0x893ce4
00893c9c  10 20 90 e5                                      ldr r2, [r0, #0x10]
00893ca0  01 00 52 e1                                      cmp r2, r1
00893ca4  2c 00 00 ba                                      blt #0x893d5c
00893ca8  00 00 51 e3                                      cmp r1, #0
00893cac  24 00 00 ba                                      blt #0x893d44
00893cb0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00893cb4  01 50 a0 e1                                      mov r5, r1
00893cb8  02 10 81 e0                                      add r1, r1, r2
00893cbc  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00893cc0  04 00 94 e5                                      ldr r0, [r4, #4]
00893cc4  02 30 93 e7                                      ldr r3, [r3, r2]
00893cc8  00 20 a0 e3                                      mov r2, #0
00893ccc  0f e0 a0 e1                                      mov lr, pc
00893cd0  08 f0 93 e5                                      ldr pc, [r3, #8]
00893cd4  00 00 50 e3                                      cmp r0, #0
00893cd8  14 50 84 05                                      streq r5, [r4, #0x14]
00893cdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00893ce0  14 20 84 e5                                      str r2, [r4, #0x14]
00893ce4  00 00 e0 e3                                      mvn r0, #0
00893ce8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00893cec  10 20 90 e5                                      ldr r2, [r0, #0x10]
00893cf0  00 00 61 e2                                      rsb r0, r1, #0
00893cf4  02 00 50 e1                                      cmp r0, r2
00893cf8  11 00 00 ca                                      bgt #0x893d44
00893cfc  00 00 51 e3                                      cmp r1, #0
00893d00  f6 ff ff ca                                      bgt #0x893ce0
00893d04  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00893d08  02 50 81 e0                                      add r5, r1, r2
00893d0c  00 20 82 e0                                      add r2, r2, r0
00893d10  01 10 82 e0                                      add r1, r2, r1
00893d14  e8 ff ff ea                                      b #0x893cbc
00893d18  14 20 90 e5                                      ldr r2, [r0, #0x14]
00893d1c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00893d20  02 50 81 e0                                      add r5, r1, r2
00893d24  00 00 55 e1                                      cmp r5, r0
00893d28  08 00 00 ca                                      bgt #0x893d50
00893d2c  00 00 55 e3                                      cmp r5, #0
00893d30  03 00 00 ba                                      blt #0x893d44
00893d34  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00893d38  00 20 82 e0                                      add r2, r2, r0
00893d3c  01 10 82 e0                                      add r1, r2, r1
00893d40  dd ff ff ea                                      b #0x893cbc
00893d44  00 00 e0 e3                                      mvn r0, #0
00893d48  14 00 84 e5                                      str r0, [r4, #0x14]
00893d4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00893d50  14 00 84 e5                                      str r0, [r4, #0x14]
00893d54  00 00 e0 e3                                      mvn r0, #0
00893d58  70 80 bd e8                                      pop {r4, r5, r6, pc}
00893d5c  14 20 80 e5                                      str r2, [r0, #0x14]
00893d60  00 00 e0 e3                                      mvn r0, #0
00893d64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00893d68  10 0e 10 00 78 15 00 00                          .byte 0x10, 0x0e, 0x10, 0x00, 0x78, 0x15, 0x00, 0x00

; FUNCTION 0x00893d70, declared_size=88, range_size=88, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimitedC1EPvii
; demangled: vox::FileLimited::FileLimited(void*, int, int)
; decoder-mode: arm
00893d70  48 c0 9f e5                                      ldr ip, [pc, #0x48]
00893d74  70 40 2d e9                                      push {r4, r5, r6, lr}
00893d78  44 e0 9f e5                                      ldr lr, [pc, #0x44]
00893d7c  0c c0 8f e0                                      add ip, pc, ip
00893d80  00 50 a0 e3                                      mov r5, #0
00893d84  0e e0 9c e7                                      ldr lr, [ip, lr]
00893d88  10 30 80 e5                                      str r3, [r0, #0x10]
00893d8c  01 30 a0 e3                                      mov r3, #1
00893d90  08 e0 8e e2                                      add lr, lr, #8
00893d94  00 40 a0 e1                                      mov r4, r0
00893d98  04 10 80 e5                                      str r1, [r0, #4]
00893d9c  0c 20 80 e5                                      str r2, [r0, #0xc]
00893da0  05 10 a0 e1                                      mov r1, r5
00893da4  00 e0 80 e5                                      str lr, [r0]
00893da8  08 30 80 e5                                      str r3, [r0, #8]
00893dac  14 50 80 e5                                      str r5, [r0, #0x14]
00893db0  05 20 a0 e1                                      mov r2, r5
00893db4  ae ff ff eb                                      bl #0x893c74
00893db8  04 00 a0 e1                                      mov r0, r4
00893dbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00893dc0  14 0d 10 00 00 4a 00 00                          .byte 0x14, 0x0d, 0x10, 0x00, 0x00, 0x4a, 0x00, 0x00

; FUNCTION 0x00893dc8, declared_size=88, range_size=88, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimitedC2EPvii
; demangled: vox::FileLimited::FileLimited(void*, int, int)
; decoder-mode: arm
00893dc8  48 c0 9f e5                                      ldr ip, [pc, #0x48]
00893dcc  70 40 2d e9                                      push {r4, r5, r6, lr}
00893dd0  44 e0 9f e5                                      ldr lr, [pc, #0x44]
00893dd4  0c c0 8f e0                                      add ip, pc, ip
00893dd8  00 50 a0 e3                                      mov r5, #0
00893ddc  0e e0 9c e7                                      ldr lr, [ip, lr]
00893de0  10 30 80 e5                                      str r3, [r0, #0x10]
00893de4  01 30 a0 e3                                      mov r3, #1
00893de8  08 e0 8e e2                                      add lr, lr, #8
00893dec  00 40 a0 e1                                      mov r4, r0
00893df0  04 10 80 e5                                      str r1, [r0, #4]
00893df4  0c 20 80 e5                                      str r2, [r0, #0xc]
00893df8  05 10 a0 e1                                      mov r1, r5
00893dfc  00 e0 80 e5                                      str lr, [r0]
00893e00  08 30 80 e5                                      str r3, [r0, #8]
00893e04  14 50 80 e5                                      str r5, [r0, #0x14]
00893e08  05 20 a0 e1                                      mov r2, r5
00893e0c  98 ff ff eb                                      bl #0x893c74
00893e10  04 00 a0 e1                                      mov r0, r4
00893e14  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00893e18  bc 0c 10 00 00 4a 00 00                          .byte 0xbc, 0x0c, 0x10, 0x00, 0x00, 0x4a, 0x00, 0x00

; FUNCTION 0x00893e20, declared_size=8, range_size=8, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimited4TellEv
; demangled: vox::FileLimited::Tell()
; decoder-mode: arm
00893e20  14 00 90 e5                                      ldr r0, [r0, #0x14]
00893e24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00893e74, declared_size=20, range_size=20, mode=arm
; class-group: vox::FileLimited
; alias: _ZN3vox11FileLimitedD0Ev
; demangled: vox::FileLimited::~FileLimited()
; decoder-mode: arm
00893e74  10 40 2d e9                                      push {r4, lr}
00893e78  00 40 a0 e1                                      mov r4, r0
00893e7c  0b e9 e9 eb                                      bl #0x30e2b0
00893e80  04 00 a0 e1                                      mov r0, r4
00893e84  10 80 bd e8                                      pop {r4, pc}
