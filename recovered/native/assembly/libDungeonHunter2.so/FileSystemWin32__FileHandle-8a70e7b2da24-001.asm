; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034eb94, declared_size=8, range_size=8, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZNK15FileSystemWin3211_FileHandle7canReadEv
; demangled: FileSystemWin32::_FileHandle::canRead() const
; decoder-mode: arm
0034eb94  0c 00 d0 e5                                      ldrb r0, [r0, #0xc]
0034eb98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034eb9c, declared_size=8, range_size=8, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZNK15FileSystemWin3211_FileHandle8canWriteEv
; demangled: FileSystemWin32::_FileHandle::canWrite() const
; decoder-mode: arm
0034eb9c  0d 00 d0 e5                                      ldrb r0, [r0, #0xd]
0034eba0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034edf0, declared_size=32, range_size=32, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZNK15FileSystemWin3211_FileHandle4tellEv
; demangled: FileSystemWin32::_FileHandle::tell() const
; decoder-mode: arm
0034edf0  10 40 2d e9                                      push {r4, lr}
0034edf4  04 00 90 e5                                      ldr r0, [r0, #4]
0034edf8  0f fc fe eb                                      bl #0x30de3c
0034edfc  00 20 a0 e1                                      mov r2, r0
0034ee00  c2 3f a0 e1                                      asr r3, r2, #0x1f
0034ee04  03 10 a0 e1                                      mov r1, r3
0034ee08  02 00 a0 e1                                      mov r0, r2
0034ee0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034ee10, declared_size=16, range_size=16, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZN15FileSystemWin3211_FileHandle4seekEy
; demangled: FileSystemWin32::_FileHandle::seek(unsigned long long)
; decoder-mode: arm
0034ee10  04 00 90 e5                                      ldr r0, [r0, #4]
0034ee14  02 10 a0 e1                                      mov r1, r2
0034ee18  00 20 a0 e3                                      mov r2, #0
0034ee1c  f2 fd fe ea                                      b #0x30e5ec

; FUNCTION 0x0034ee20, declared_size=84, range_size=84, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZNK15FileSystemWin3211_FileHandle4sizeEv
; demangled: FileSystemWin32::_FileHandle::size() const
; decoder-mode: arm
0034ee20  70 40 2d e9                                      push {r4, r5, r6, lr}
0034ee24  00 40 a0 e1                                      mov r4, r0
0034ee28  04 00 90 e5                                      ldr r0, [r0, #4]
0034ee2c  02 fc fe eb                                      bl #0x30de3c
0034ee30  00 10 a0 e3                                      mov r1, #0
0034ee34  00 60 a0 e1                                      mov r6, r0
0034ee38  02 20 a0 e3                                      mov r2, #2
0034ee3c  04 00 94 e5                                      ldr r0, [r4, #4]
0034ee40  e9 fd fe eb                                      bl #0x30e5ec
0034ee44  04 00 94 e5                                      ldr r0, [r4, #4]
0034ee48  fb fb fe eb                                      bl #0x30de3c
0034ee4c  06 10 a0 e1                                      mov r1, r6
0034ee50  00 50 a0 e1                                      mov r5, r0
0034ee54  00 20 a0 e3                                      mov r2, #0
0034ee58  04 00 94 e5                                      ldr r0, [r4, #4]
0034ee5c  e2 fd fe eb                                      bl #0x30e5ec
0034ee60  05 20 a0 e1                                      mov r2, r5
0034ee64  c2 3f a0 e1                                      asr r3, r2, #0x1f
0034ee68  03 10 a0 e1                                      mov r1, r3
0034ee6c  02 00 a0 e1                                      mov r0, r2
0034ee70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034ee74, declared_size=84, range_size=84, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZN15FileSystemWin3211_FileHandle5writeEPKvy
; demangled: FileSystemWin32::_FileHandle::write(void const*, unsigned long long)
; decoder-mode: arm
0034ee74  70 40 2d e9                                      push {r4, r5, r6, lr}
0034ee78  00 30 90 e5                                      ldr r3, [r0]
0034ee7c  02 60 a0 e1                                      mov r6, r2
0034ee80  00 40 a0 e1                                      mov r4, r0
0034ee84  01 50 a0 e1                                      mov r5, r1
0034ee88  0f e0 a0 e1                                      mov lr, pc
0034ee8c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0034ee90  00 00 50 e3                                      cmp r0, #0
0034ee94  00 20 a0 03                                      moveq r2, #0
0034ee98  00 30 a0 03                                      moveq r3, #0
0034ee9c  06 00 00 0a                                      beq #0x34eebc
0034eea0  06 20 a0 e1                                      mov r2, r6
0034eea4  04 30 94 e5                                      ldr r3, [r4, #4]
0034eea8  05 00 a0 e1                                      mov r0, r5
0034eeac  01 10 a0 e3                                      mov r1, #1
0034eeb0  b8 fd fe eb                                      bl #0x30e598
0034eeb4  00 20 a0 e1                                      mov r2, r0
0034eeb8  00 30 a0 e3                                      mov r3, #0
0034eebc  03 10 a0 e1                                      mov r1, r3
0034eec0  02 00 a0 e1                                      mov r0, r2
0034eec4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034eec8, declared_size=144, range_size=144, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZN15FileSystemWin3211_FileHandle4readEPvy
; demangled: FileSystemWin32::_FileHandle::read(void*, unsigned long long)
; decoder-mode: arm
0034eec8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0034eecc  00 30 90 e5                                      ldr r3, [r0]
0034eed0  00 40 a0 e1                                      mov r4, r0
0034eed4  01 50 a0 e1                                      mov r5, r1
0034eed8  02 80 a0 e1                                      mov r8, r2
0034eedc  0f e0 a0 e1                                      mov lr, pc
0034eee0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0034eee4  00 00 50 e3                                      cmp r0, #0
0034eee8  00 60 a0 03                                      moveq r6, #0
0034eeec  00 70 a0 03                                      moveq r7, #0
0034eef0  02 00 00 1a                                      bne #0x34ef00
0034eef4  07 10 a0 e1                                      mov r1, r7
0034eef8  06 00 a0 e1                                      mov r0, r6
0034eefc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0034ef00  04 00 94 e5                                      ldr r0, [r4, #4]
0034ef04  cc fb fe eb                                      bl #0x30de3c
0034ef08  04 30 94 e5                                      ldr r3, [r4, #4]
0034ef0c  00 a0 a0 e1                                      mov sl, r0
0034ef10  01 10 a0 e3                                      mov r1, #1
0034ef14  05 00 a0 e1                                      mov r0, r5
0034ef18  08 20 a0 e1                                      mov r2, r8
0034ef1c  f2 fc fe eb                                      bl #0x30e2ec
0034ef20  08 30 94 e5                                      ldr r3, [r4, #8]
0034ef24  00 60 a0 e1                                      mov r6, r0
0034ef28  00 70 a0 e3                                      mov r7, #0
0034ef2c  24 30 d3 e5                                      ldrb r3, [r3, #0x24]
0034ef30  00 00 53 e3                                      cmp r3, #0
0034ef34  ee ff ff 0a                                      beq #0x34eef4
0034ef38  03 00 5a e3                                      cmp sl, #3
0034ef3c  ec ff ff ca                                      bgt #0x34eef4
0034ef40  0a 00 a0 e1                                      mov r0, sl
0034ef44  05 10 a0 e1                                      mov r1, r5
0034ef48  08 20 a0 e1                                      mov r2, r8
0034ef4c  04 30 94 e5                                      ldr r3, [r4, #4]
0034ef50  69 fc ff eb                                      bl #0x34e0fc
0034ef54  e6 ff ff ea                                      b #0x34eef4

; FUNCTION 0x0034ef58, declared_size=172, range_size=172, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZNK15FileSystemWin3211_FileHandle4peekEPvy
; demangled: FileSystemWin32::_FileHandle::peek(void*, unsigned long long) const
; decoder-mode: arm
0034ef58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034ef5c  00 30 90 e5                                      ldr r3, [r0]
0034ef60  02 50 a0 e1                                      mov r5, r2
0034ef64  00 40 a0 e1                                      mov r4, r0
0034ef68  01 60 a0 e1                                      mov r6, r1
0034ef6c  0f e0 a0 e1                                      mov lr, pc
0034ef70  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0034ef74  00 00 50 e3                                      cmp r0, #0
0034ef78  00 20 a0 03                                      moveq r2, #0
0034ef7c  00 30 a0 03                                      moveq r3, #0
0034ef80  02 00 00 1a                                      bne #0x34ef90
0034ef84  03 10 a0 e1                                      mov r1, r3
0034ef88  02 00 a0 e1                                      mov r0, r2
0034ef8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0034ef90  04 00 94 e5                                      ldr r0, [r4, #4]
0034ef94  a8 fb fe eb                                      bl #0x30de3c
0034ef98  04 30 94 e5                                      ldr r3, [r4, #4]
0034ef9c  00 80 a0 e1                                      mov r8, r0
0034efa0  01 10 a0 e3                                      mov r1, #1
0034efa4  06 00 a0 e1                                      mov r0, r6
0034efa8  05 20 a0 e1                                      mov r2, r5
0034efac  ce fc fe eb                                      bl #0x30e2ec
0034efb0  08 30 94 e5                                      ldr r3, [r4, #8]
0034efb4  00 70 a0 e1                                      mov r7, r0
0034efb8  24 30 d3 e5                                      ldrb r3, [r3, #0x24]
0034efbc  00 00 53 e3                                      cmp r3, #0
0034efc0  06 00 00 0a                                      beq #0x34efe0
0034efc4  03 00 58 e3                                      cmp r8, #3
0034efc8  04 00 00 ca                                      bgt #0x34efe0
0034efcc  08 00 a0 e1                                      mov r0, r8
0034efd0  06 10 a0 e1                                      mov r1, r6
0034efd4  05 20 a0 e1                                      mov r2, r5
0034efd8  04 30 94 e5                                      ldr r3, [r4, #4]
0034efdc  46 fc ff eb                                      bl #0x34e0fc
0034efe0  00 10 67 e2                                      rsb r1, r7, #0
0034efe4  04 00 94 e5                                      ldr r0, [r4, #4]
0034efe8  01 20 a0 e3                                      mov r2, #1
0034efec  7e fd fe eb                                      bl #0x30e5ec
0034eff0  07 20 a0 e1                                      mov r2, r7
0034eff4  c2 3f a0 e1                                      asr r3, r2, #0x1f
0034eff8  03 10 a0 e1                                      mov r1, r3
0034effc  02 00 a0 e1                                      mov r0, r2
0034f000  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0034fb7c, declared_size=64, range_size=64, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZN15FileSystemWin3211_FileHandleD1Ev
; demangled: FileSystemWin32::_FileHandle::~_FileHandle()
; decoder-mode: arm
0034fb7c  10 40 2d e9                                      push {r4, lr}
0034fb80  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0034fb84  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0034fb88  00 40 a0 e1                                      mov r4, r0
0034fb8c  03 30 8f e0                                      add r3, pc, r3
0034fb90  08 00 90 e5                                      ldr r0, [r0, #8]
0034fb94  02 20 93 e7                                      ldr r2, [r3, r2]
0034fb98  00 00 50 e3                                      cmp r0, #0
0034fb9c  08 20 82 e2                                      add r2, r2, #8
0034fba0  00 20 84 e5                                      str r2, [r4]
0034fba4  00 00 00 0a                                      beq #0x34fbac
0034fba8  22 fd ff eb                                      bl #0x34f038
0034fbac  04 00 a0 e1                                      mov r0, r4
0034fbb0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034fbb4  04 4f 64 00 00 1c 00 00                          .byte 0x04, 0x4f, 0x64, 0x00, 0x00, 0x1c, 0x00, 0x00

; FUNCTION 0x0034fbbc, declared_size=28, range_size=28, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZN15FileSystemWin3211_FileHandleD0Ev
; demangled: FileSystemWin32::_FileHandle::~_FileHandle()
; decoder-mode: arm
0034fbbc  10 40 2d e9                                      push {r4, lr}
0034fbc0  00 40 a0 e1                                      mov r4, r0
0034fbc4  ec ff ff eb                                      bl #0x34fb7c
0034fbc8  04 00 a0 e1                                      mov r0, r4
0034fbcc  1b 02 ff eb                                      bl #0x310440
0034fbd0  04 00 a0 e1                                      mov r0, r4
0034fbd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034fbd8, declared_size=64, range_size=64, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZN15FileSystemWin3211_FileHandleD2Ev
; demangled: FileSystemWin32::_FileHandle::~_FileHandle()
; decoder-mode: arm
0034fbd8  10 40 2d e9                                      push {r4, lr}
0034fbdc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0034fbe0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0034fbe4  00 40 a0 e1                                      mov r4, r0
0034fbe8  03 30 8f e0                                      add r3, pc, r3
0034fbec  08 00 90 e5                                      ldr r0, [r0, #8]
0034fbf0  02 20 93 e7                                      ldr r2, [r3, r2]
0034fbf4  00 00 50 e3                                      cmp r0, #0
0034fbf8  08 20 82 e2                                      add r2, r2, #8
0034fbfc  00 20 84 e5                                      str r2, [r4]
0034fc00  00 00 00 0a                                      beq #0x34fc08
0034fc04  0b fd ff eb                                      bl #0x34f038
0034fc08  04 00 a0 e1                                      mov r0, r4
0034fc0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034fc10  a8 4e 64 00 00 1c 00 00                          .byte 0xa8, 0x4e, 0x64, 0x00, 0x00, 0x1c, 0x00, 0x00

; FUNCTION 0x0034fc18, declared_size=568, range_size=568, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZN15FileSystemWin3211_FileHandleC1EPKcS2_bb
; demangled: FileSystemWin32::_FileHandle::_FileHandle(char const*, char const*, bool, bool)
; decoder-mode: arm
0034fc18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0034fc1c  04 52 9f e5                                      ldr r5, [pc, #0x204]
0034fc20  04 72 9f e5                                      ldr r7, [pc, #0x204]
0034fc24  04 e2 9f e5                                      ldr lr, [pc, #0x204]
0034fc28  05 50 8f e0                                      add r5, pc, r5
0034fc2c  07 c0 95 e7                                      ldr ip, [r5, r7]
0034fc30  0e e0 95 e7                                      ldr lr, [r5, lr]
0034fc34  46 df 4d e2                                      sub sp, sp, #0x118
0034fc38  00 c0 9c e5                                      ldr ip, [ip]
0034fc3c  08 e0 8e e2                                      add lr, lr, #8
0034fc40  00 e0 80 e5                                      str lr, [r0]
0034fc44  00 40 a0 e1                                      mov r4, r0
0034fc48  10 60 8d e2                                      add r6, sp, #0x10
0034fc4c  00 00 a0 e3                                      mov r0, #0
0034fc50  02 a0 a0 e1                                      mov sl, r2
0034fc54  08 00 84 e5                                      str r0, [r4, #8]
0034fc58  06 00 a0 e1                                      mov r0, r6
0034fc5c  14 c1 8d e5                                      str ip, [sp, #0x114]
0034fc60  03 80 a0 e1                                      mov r8, r3
0034fc64  38 91 dd e5                                      ldrb sb, [sp, #0x138]
0034fc68  2c fa fe eb                                      bl #0x30e520
0034fc6c  0a 10 a0 e1                                      mov r1, sl
0034fc70  06 00 a0 e1                                      mov r0, r6
0034fc74  45 fc fe eb                                      bl #0x30ed90
0034fc78  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
0034fc7c  0a 00 a0 e1                                      mov r0, sl
0034fc80  01 10 8f e0                                      add r1, pc, r1
0034fc84  d2 fb fe eb                                      bl #0x30ebd4
0034fc88  00 00 50 e3                                      cmp r0, #0
0034fc8c  07 00 00 0a                                      beq #0x34fcb0
0034fc90  a0 21 9f e5                                      ldr r2, [pc, #0x1a0]
0034fc94  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
0034fc98  0a 30 a0 e1                                      mov r3, sl
0034fc9c  02 20 95 e7                                      ldr r2, [r5, r2]
0034fca0  01 10 8f e0                                      add r1, pc, r1
0034fca4  06 00 a0 e1                                      mov r0, r6
0034fca8  00 20 92 e5                                      ldr r2, [r2]
0034fcac  8c fb fe eb                                      bl #0x30eae4
0034fcb0  88 31 9f e5                                      ldr r3, [pc, #0x188]
0034fcb4  03 30 95 e7                                      ldr r3, [r5, r3]
0034fcb8  a8 30 d3 e5                                      ldrb r3, [r3, #0xa8]
0034fcbc  00 00 53 e3                                      cmp r3, #0
0034fcc0  52 00 00 1a                                      bne #0x34fe10
0034fcc4  00 00 58 e3                                      cmp r8, #0
0034fcc8  38 00 00 0a                                      beq #0x34fdb0
0034fccc  00 00 59 e3                                      cmp sb, #0
0034fcd0  23 00 00 0a                                      beq #0x34fd64
0034fcd4  68 21 9f e5                                      ldr r2, [pc, #0x168]
0034fcd8  0c 00 8d e2                                      add r0, sp, #0xc
0034fcdc  06 10 a0 e1                                      mov r1, r6
0034fce0  02 20 8f e0                                      add r2, pc, r2
0034fce4  d5 77 08 eb                                      bl #0x56dc40
0034fce8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0034fcec  00 00 53 e3                                      cmp r3, #0
0034fcf0  00 20 93 15                                      ldrne r2, [r3]
0034fcf4  01 20 82 12                                      addne r2, r2, #1
0034fcf8  00 20 83 15                                      strne r2, [r3]
0034fcfc  08 00 94 e5                                      ldr r0, [r4, #8]
0034fd00  08 30 84 e5                                      str r3, [r4, #8]
0034fd04  00 00 50 e3                                      cmp r0, #0
0034fd08  00 00 00 0a                                      beq #0x34fd10
0034fd0c  c9 fc ff eb                                      bl #0x34f038
0034fd10  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0034fd14  00 00 50 e3                                      cmp r0, #0
0034fd18  00 00 00 0a                                      beq #0x34fd20
0034fd1c  c5 fc ff eb                                      bl #0x34f038
0034fd20  01 30 a0 e3                                      mov r3, #1
0034fd24  0d 30 c4 e5                                      strb r3, [r4, #0xd]
0034fd28  0c 30 c4 e5                                      strb r3, [r4, #0xc]
0034fd2c  08 30 94 e5                                      ldr r3, [r4, #8]
0034fd30  00 20 a0 e3                                      mov r2, #0
0034fd34  04 20 84 e5                                      str r2, [r4, #4]
0034fd38  02 00 53 e1                                      cmp r3, r2
0034fd3c  04 30 93 15                                      ldrne r3, [r3, #4]
0034fd40  04 00 a0 e1                                      mov r0, r4
0034fd44  04 30 84 15                                      strne r3, [r4, #4]
0034fd48  07 30 95 e7                                      ldr r3, [r5, r7]
0034fd4c  14 21 9d e5                                      ldr r2, [sp, #0x114]
0034fd50  00 30 93 e5                                      ldr r3, [r3]
0034fd54  03 00 52 e1                                      cmp r2, r3
0034fd58  31 00 00 1a                                      bne #0x34fe24
0034fd5c  46 df 8d e2                                      add sp, sp, #0x118
0034fd60  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0034fd64  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0034fd68  08 00 8d e2                                      add r0, sp, #8
0034fd6c  06 10 a0 e1                                      mov r1, r6
0034fd70  02 20 8f e0                                      add r2, pc, r2
0034fd74  b1 77 08 eb                                      bl #0x56dc40
0034fd78  08 30 9d e5                                      ldr r3, [sp, #8]
0034fd7c  00 00 53 e3                                      cmp r3, #0
0034fd80  00 20 93 15                                      ldrne r2, [r3]
0034fd84  01 20 82 12                                      addne r2, r2, #1
0034fd88  00 20 83 15                                      strne r2, [r3]
0034fd8c  08 00 94 e5                                      ldr r0, [r4, #8]
0034fd90  08 30 84 e5                                      str r3, [r4, #8]
0034fd94  00 00 50 e3                                      cmp r0, #0
0034fd98  00 00 00 0a                                      beq #0x34fda0
0034fd9c  a5 fc ff eb                                      bl #0x34f038
0034fda0  08 00 9d e5                                      ldr r0, [sp, #8]
0034fda4  00 00 50 e3                                      cmp r0, #0
0034fda8  db ff ff 1a                                      bne #0x34fd1c
0034fdac  db ff ff ea                                      b #0x34fd20
0034fdb0  94 20 9f e5                                      ldr r2, [pc, #0x94]
0034fdb4  04 00 8d e2                                      add r0, sp, #4
0034fdb8  06 10 a0 e1                                      mov r1, r6
0034fdbc  02 20 8f e0                                      add r2, pc, r2
0034fdc0  9e 77 08 eb                                      bl #0x56dc40
0034fdc4  04 30 9d e5                                      ldr r3, [sp, #4]
0034fdc8  00 00 53 e3                                      cmp r3, #0
0034fdcc  00 20 93 15                                      ldrne r2, [r3]
0034fdd0  01 20 82 12                                      addne r2, r2, #1
0034fdd4  00 20 83 15                                      strne r2, [r3]
0034fdd8  08 00 94 e5                                      ldr r0, [r4, #8]
0034fddc  08 30 84 e5                                      str r3, [r4, #8]
0034fde0  00 00 50 e3                                      cmp r0, #0
0034fde4  00 00 00 0a                                      beq #0x34fdec
0034fde8  92 fc ff eb                                      bl #0x34f038
0034fdec  04 00 9d e5                                      ldr r0, [sp, #4]
0034fdf0  00 00 50 e3                                      cmp r0, #0
0034fdf4  00 00 00 0a                                      beq #0x34fdfc
0034fdf8  8e fc ff eb                                      bl #0x34f038
0034fdfc  01 30 a0 e3                                      mov r3, #1
0034fe00  0c 30 c4 e5                                      strb r3, [r4, #0xc]
0034fe04  00 30 a0 e3                                      mov r3, #0
0034fe08  0d 30 c4 e5                                      strb r3, [r4, #0xd]
0034fe0c  c6 ff ff ea                                      b #0x34fd2c
0034fe10  06 00 a0 e1                                      mov r0, r6
0034fe14  00 10 a0 e3                                      mov r1, #0
0034fe18  00 20 e0 e3                                      mvn r2, #0
0034fe1c  7c f9 ff eb                                      bl #0x34e414
0034fe20  a7 ff ff ea                                      b #0x34fcc4
0034fe24  39 f9 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034fe28  68 4e 64 00 ac 40 00 00 00 1c 00 00 00 0b 57 00  .byte 0x68, 0x4e, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x0b, 0x57, 0x00
0034fe38  00 06 00 00 68 0e 57 00 f4 37 00 00 b0 0a 57 00  .byte 0x00, 0x06, 0x00, 0x00, 0x68, 0x0e, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb0, 0x0a, 0x57, 0x00
0034fe48  28 0a 57 00 e4 09 57 00                          .byte 0x28, 0x0a, 0x57, 0x00, 0xe4, 0x09, 0x57, 0x00

; FUNCTION 0x0035003c, declared_size=568, range_size=568, mode=arm
; class-group: FileSystemWin32::_FileHandle
; alias: _ZN15FileSystemWin3211_FileHandleC2EPKcS2_bb
; demangled: FileSystemWin32::_FileHandle::_FileHandle(char const*, char const*, bool, bool)
; decoder-mode: arm
0035003c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00350040  04 52 9f e5                                      ldr r5, [pc, #0x204]
00350044  04 72 9f e5                                      ldr r7, [pc, #0x204]
00350048  04 e2 9f e5                                      ldr lr, [pc, #0x204]
0035004c  05 50 8f e0                                      add r5, pc, r5
00350050  07 c0 95 e7                                      ldr ip, [r5, r7]
00350054  0e e0 95 e7                                      ldr lr, [r5, lr]
00350058  46 df 4d e2                                      sub sp, sp, #0x118
0035005c  00 c0 9c e5                                      ldr ip, [ip]
00350060  08 e0 8e e2                                      add lr, lr, #8
00350064  00 e0 80 e5                                      str lr, [r0]
00350068  00 40 a0 e1                                      mov r4, r0
0035006c  10 60 8d e2                                      add r6, sp, #0x10
00350070  00 00 a0 e3                                      mov r0, #0
00350074  02 a0 a0 e1                                      mov sl, r2
00350078  08 00 84 e5                                      str r0, [r4, #8]
0035007c  06 00 a0 e1                                      mov r0, r6
00350080  14 c1 8d e5                                      str ip, [sp, #0x114]
00350084  03 80 a0 e1                                      mov r8, r3
00350088  38 91 dd e5                                      ldrb sb, [sp, #0x138]
0035008c  23 f9 fe eb                                      bl #0x30e520
00350090  0a 10 a0 e1                                      mov r1, sl
00350094  06 00 a0 e1                                      mov r0, r6
00350098  3c fb fe eb                                      bl #0x30ed90
0035009c  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
003500a0  0a 00 a0 e1                                      mov r0, sl
003500a4  01 10 8f e0                                      add r1, pc, r1
003500a8  c9 fa fe eb                                      bl #0x30ebd4
003500ac  00 00 50 e3                                      cmp r0, #0
003500b0  07 00 00 0a                                      beq #0x3500d4
003500b4  a0 21 9f e5                                      ldr r2, [pc, #0x1a0]
003500b8  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
003500bc  0a 30 a0 e1                                      mov r3, sl
003500c0  02 20 95 e7                                      ldr r2, [r5, r2]
003500c4  01 10 8f e0                                      add r1, pc, r1
003500c8  06 00 a0 e1                                      mov r0, r6
003500cc  00 20 92 e5                                      ldr r2, [r2]
003500d0  83 fa fe eb                                      bl #0x30eae4
003500d4  88 31 9f e5                                      ldr r3, [pc, #0x188]
003500d8  03 30 95 e7                                      ldr r3, [r5, r3]
003500dc  a8 30 d3 e5                                      ldrb r3, [r3, #0xa8]
003500e0  00 00 53 e3                                      cmp r3, #0
003500e4  52 00 00 1a                                      bne #0x350234
003500e8  00 00 58 e3                                      cmp r8, #0
003500ec  38 00 00 0a                                      beq #0x3501d4
003500f0  00 00 59 e3                                      cmp sb, #0
003500f4  23 00 00 0a                                      beq #0x350188
003500f8  68 21 9f e5                                      ldr r2, [pc, #0x168]
003500fc  0c 00 8d e2                                      add r0, sp, #0xc
00350100  06 10 a0 e1                                      mov r1, r6
00350104  02 20 8f e0                                      add r2, pc, r2
00350108  cc 76 08 eb                                      bl #0x56dc40
0035010c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00350110  00 00 53 e3                                      cmp r3, #0
00350114  00 20 93 15                                      ldrne r2, [r3]
00350118  01 20 82 12                                      addne r2, r2, #1
0035011c  00 20 83 15                                      strne r2, [r3]
00350120  08 00 94 e5                                      ldr r0, [r4, #8]
00350124  08 30 84 e5                                      str r3, [r4, #8]
00350128  00 00 50 e3                                      cmp r0, #0
0035012c  00 00 00 0a                                      beq #0x350134
00350130  c0 fb ff eb                                      bl #0x34f038
00350134  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00350138  00 00 50 e3                                      cmp r0, #0
0035013c  00 00 00 0a                                      beq #0x350144
00350140  bc fb ff eb                                      bl #0x34f038
00350144  01 30 a0 e3                                      mov r3, #1
00350148  0d 30 c4 e5                                      strb r3, [r4, #0xd]
0035014c  0c 30 c4 e5                                      strb r3, [r4, #0xc]
00350150  08 30 94 e5                                      ldr r3, [r4, #8]
00350154  00 20 a0 e3                                      mov r2, #0
00350158  04 20 84 e5                                      str r2, [r4, #4]
0035015c  02 00 53 e1                                      cmp r3, r2
00350160  04 30 93 15                                      ldrne r3, [r3, #4]
00350164  04 00 a0 e1                                      mov r0, r4
00350168  04 30 84 15                                      strne r3, [r4, #4]
0035016c  07 30 95 e7                                      ldr r3, [r5, r7]
00350170  14 21 9d e5                                      ldr r2, [sp, #0x114]
00350174  00 30 93 e5                                      ldr r3, [r3]
00350178  03 00 52 e1                                      cmp r2, r3
0035017c  31 00 00 1a                                      bne #0x350248
00350180  46 df 8d e2                                      add sp, sp, #0x118
00350184  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00350188  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0035018c  08 00 8d e2                                      add r0, sp, #8
00350190  06 10 a0 e1                                      mov r1, r6
00350194  02 20 8f e0                                      add r2, pc, r2
00350198  a8 76 08 eb                                      bl #0x56dc40
0035019c  08 30 9d e5                                      ldr r3, [sp, #8]
003501a0  00 00 53 e3                                      cmp r3, #0
003501a4  00 20 93 15                                      ldrne r2, [r3]
003501a8  01 20 82 12                                      addne r2, r2, #1
003501ac  00 20 83 15                                      strne r2, [r3]
003501b0  08 00 94 e5                                      ldr r0, [r4, #8]
003501b4  08 30 84 e5                                      str r3, [r4, #8]
003501b8  00 00 50 e3                                      cmp r0, #0
003501bc  00 00 00 0a                                      beq #0x3501c4
003501c0  9c fb ff eb                                      bl #0x34f038
003501c4  08 00 9d e5                                      ldr r0, [sp, #8]
003501c8  00 00 50 e3                                      cmp r0, #0
003501cc  db ff ff 1a                                      bne #0x350140
003501d0  db ff ff ea                                      b #0x350144
003501d4  94 20 9f e5                                      ldr r2, [pc, #0x94]
003501d8  04 00 8d e2                                      add r0, sp, #4
003501dc  06 10 a0 e1                                      mov r1, r6
003501e0  02 20 8f e0                                      add r2, pc, r2
003501e4  95 76 08 eb                                      bl #0x56dc40
003501e8  04 30 9d e5                                      ldr r3, [sp, #4]
003501ec  00 00 53 e3                                      cmp r3, #0
003501f0  00 20 93 15                                      ldrne r2, [r3]
003501f4  01 20 82 12                                      addne r2, r2, #1
003501f8  00 20 83 15                                      strne r2, [r3]
003501fc  08 00 94 e5                                      ldr r0, [r4, #8]
00350200  08 30 84 e5                                      str r3, [r4, #8]
00350204  00 00 50 e3                                      cmp r0, #0
00350208  00 00 00 0a                                      beq #0x350210
0035020c  89 fb ff eb                                      bl #0x34f038
00350210  04 00 9d e5                                      ldr r0, [sp, #4]
00350214  00 00 50 e3                                      cmp r0, #0
00350218  00 00 00 0a                                      beq #0x350220
0035021c  85 fb ff eb                                      bl #0x34f038
00350220  01 30 a0 e3                                      mov r3, #1
00350224  0c 30 c4 e5                                      strb r3, [r4, #0xc]
00350228  00 30 a0 e3                                      mov r3, #0
0035022c  0d 30 c4 e5                                      strb r3, [r4, #0xd]
00350230  c6 ff ff ea                                      b #0x350150
00350234  06 00 a0 e1                                      mov r0, r6
00350238  00 10 a0 e3                                      mov r1, #0
0035023c  00 20 e0 e3                                      mvn r2, #0
00350240  73 f8 ff eb                                      bl #0x34e414
00350244  a7 ff ff ea                                      b #0x3500e8
00350248  30 f8 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0035024c  44 4a 64 00 ac 40 00 00 00 1c 00 00 dc 06 57 00  .byte 0x44, 0x4a, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x1c, 0x00, 0x00, 0xdc, 0x06, 0x57, 0x00
0035025c  00 06 00 00 44 0a 57 00 f4 37 00 00 8c 06 57 00  .byte 0x00, 0x06, 0x00, 0x00, 0x44, 0x0a, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x8c, 0x06, 0x57, 0x00
0035026c  04 06 57 00 c0 05 57 00                          .byte 0x04, 0x06, 0x57, 0x00, 0xc0, 0x05, 0x57, 0x00
