; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088ee5c, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid8_InitOSLEPv
; demangled: vox::DriverAndroid::_InitOSL(void*)
; decoder-mode: arm
0088ee5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ee60, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid12_ShutdownOSLEv
; demangled: vox::DriverAndroid::_ShutdownOSL()
; decoder-mode: arm
0088ee60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ee64, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid11_SuspendOSLEv
; demangled: vox::DriverAndroid::_SuspendOSL()
; decoder-mode: arm
0088ee64  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ee68, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid10_ResumeOSLEv
; demangled: vox::DriverAndroid::_ResumeOSL()
; decoder-mode: arm
0088ee68  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ee6c, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid10PrintDebugEv
; demangled: vox::DriverAndroid::PrintDebug()
; decoder-mode: arm
0088ee6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ee70, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid9_UpdateATEf
; demangled: vox::DriverAndroid::_UpdateAT(float)
; decoder-mode: arm
0088ee70  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ee74, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid10_UpdateOSLEf
; demangled: vox::DriverAndroid::_UpdateOSL(float)
; decoder-mode: arm
0088ee74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ee78, declared_size=28, range_size=28, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid6UpdateEf
; demangled: vox::DriverAndroid::Update(float)
; decoder-mode: arm
0088ee78  54 30 90 e5                                      ldr r3, [r0, #0x54]
0088ee7c  01 00 53 e3                                      cmp r3, #1
0088ee80  02 00 00 0a                                      beq #0x88ee90
0088ee84  02 00 53 e3                                      cmp r3, #2
0088ee88  1e ff 2f 11                                      bxne lr
0088ee8c  f8 ff ff ea                                      b #0x88ee74
0088ee90  f6 ff ff ea                                      b #0x88ee70

; FUNCTION 0x0088ef6c, declared_size=188, range_size=188, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid9_ResumeATEv
; demangled: vox::DriverAndroid::_ResumeAT()
; decoder-mode: arm
0088ef6c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0088ef70  04 60 80 e2                                      add r6, r0, #4
0088ef74  00 50 a0 e1                                      mov r5, r0
0088ef78  0c d0 4d e2                                      sub sp, sp, #0xc
0088ef7c  06 00 a0 e1                                      mov r0, r6
0088ef80  3d 11 00 eb                                      bl #0x89347c
0088ef84  08 30 d5 e5                                      ldrb r3, [r5, #8]
0088ef88  84 40 9f e5                                      ldr r4, [pc, #0x84]
0088ef8c  00 00 53 e3                                      cmp r3, #0
0088ef90  04 40 8f e0                                      add r4, pc, r4
0088ef94  03 00 00 1a                                      bne #0x88efa8
0088ef98  06 00 a0 e1                                      mov r0, r6
0088ef9c  35 11 00 eb                                      bl #0x893478
0088efa0  0c d0 8d e2                                      add sp, sp, #0xc
0088efa4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0088efa8  68 30 9f e5                                      ldr r3, [pc, #0x68]
0088efac  08 10 8d e2                                      add r1, sp, #8
0088efb0  00 70 a0 e3                                      mov r7, #0
0088efb4  03 30 94 e7                                      ldr r3, [r4, r3]
0088efb8  04 70 21 e5                                      str r7, [r1, #-4]!
0088efbc  01 28 a0 e3                                      mov r2, #0x10000
0088efc0  00 30 93 e5                                      ldr r3, [r3]
0088efc4  02 20 82 e2                                      add r2, r2, #2
0088efc8  03 00 a0 e1                                      mov r0, r3
0088efcc  00 30 93 e5                                      ldr r3, [r3]
0088efd0  0f e0 a0 e1                                      mov lr, pc
0088efd4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088efd8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0088efdc  04 00 9d e5                                      ldr r0, [sp, #4]
0088efe0  64 10 95 e5                                      ldr r1, [r5, #0x64]
0088efe4  03 20 94 e7                                      ldr r2, [r4, r3]
0088efe8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0088efec  00 20 92 e5                                      ldr r2, [r2]
0088eff0  03 30 94 e7                                      ldr r3, [r4, r3]
0088eff4  00 30 93 e5                                      ldr r3, [r3]
0088eff8  b2 ff ff eb                                      bl #0x88eec8
0088effc  60 70 c5 e5                                      strb r7, [r5, #0x60]
0088f000  fb 4e ff eb                                      bl #0x862bf4
0088f004  18 30 9f e5                                      ldr r3, [pc, #0x18]
0088f008  03 30 94 e7                                      ldr r3, [r4, r3]
0088f00c  f0 00 c3 e1                                      strd r0, r1, [r3]
0088f010  e0 ff ff ea                                      b #0x88ef98
; mapping-symbol data/literal pool
0088f014  00 5b 10 00 f8 4a 00 00 14 43 00 00 a8 46 00 00  .byte 0x00, 0x5b, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0xa8, 0x46, 0x00, 0x00
0088f024  88 07 00 00                                      .byte 0x88, 0x07, 0x00, 0x00

; FUNCTION 0x0088f028, declared_size=28, range_size=28, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid6ResumeEv
; demangled: vox::DriverAndroid::Resume()
; decoder-mode: arm
0088f028  54 30 90 e5                                      ldr r3, [r0, #0x54]
0088f02c  01 00 53 e3                                      cmp r3, #1
0088f030  02 00 00 0a                                      beq #0x88f040
0088f034  02 00 53 e3                                      cmp r3, #2
0088f038  1e ff 2f 11                                      bxne lr
0088f03c  89 ff ff ea                                      b #0x88ee68
0088f040  c9 ff ff ea                                      b #0x88ef6c

; FUNCTION 0x0088f044, declared_size=236, range_size=236, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid10_SuspendATEv
; demangled: vox::DriverAndroid::_SuspendAT()
; decoder-mode: arm
0088f044  70 43 2d e9                                      push {r4, r5, r6, r8, sb, lr}
0088f048  04 50 80 e2                                      add r5, r0, #4
0088f04c  00 60 a0 e1                                      mov r6, r0
0088f050  08 d0 4d e2                                      sub sp, sp, #8
0088f054  05 00 a0 e1                                      mov r0, r5
0088f058  07 11 00 eb                                      bl #0x89347c
0088f05c  08 30 d6 e5                                      ldrb r3, [r6, #8]
0088f060  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
0088f064  00 00 53 e3                                      cmp r3, #0
0088f068  04 40 8f e0                                      add r4, pc, r4
0088f06c  03 00 00 1a                                      bne #0x88f080
0088f070  05 00 a0 e1                                      mov r0, r5
0088f074  ff 10 00 eb                                      bl #0x893478
0088f078  08 d0 8d e2                                      add sp, sp, #8
0088f07c  70 83 bd e8                                      pop {r4, r5, r6, r8, sb, pc}
0088f080  94 30 9f e5                                      ldr r3, [pc, #0x94]
0088f084  08 10 8d e2                                      add r1, sp, #8
0088f088  00 20 a0 e3                                      mov r2, #0
0088f08c  03 30 94 e7                                      ldr r3, [r4, r3]
0088f090  04 20 21 e5                                      str r2, [r1, #-4]!
0088f094  01 28 a0 e3                                      mov r2, #0x10000
0088f098  00 30 93 e5                                      ldr r3, [r3]
0088f09c  02 20 82 e2                                      add r2, r2, #2
0088f0a0  03 00 a0 e1                                      mov r0, r3
0088f0a4  00 30 93 e5                                      ldr r3, [r3]
0088f0a8  0f e0 a0 e1                                      mov lr, pc
0088f0ac  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f0b0  68 30 9f e5                                      ldr r3, [pc, #0x68]
0088f0b4  64 10 96 e5                                      ldr r1, [r6, #0x64]
0088f0b8  04 00 9d e5                                      ldr r0, [sp, #4]
0088f0bc  03 20 94 e7                                      ldr r2, [r4, r3]
0088f0c0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0088f0c4  00 20 92 e5                                      ldr r2, [r2]
0088f0c8  03 30 94 e7                                      ldr r3, [r4, r3]
0088f0cc  00 30 93 e5                                      ldr r3, [r3]
0088f0d0  7c ff ff eb                                      bl #0x88eec8
0088f0d4  01 30 a0 e3                                      mov r3, #1
0088f0d8  60 30 c6 e5                                      strb r3, [r6, #0x60]
0088f0dc  44 30 9f e5                                      ldr r3, [pc, #0x44]
0088f0e0  03 60 94 e7                                      ldr r6, [r4, r3]
0088f0e4  d0 80 c6 e1                                      ldrd r8, sb, [r6]
0088f0e8  c1 4e ff eb                                      bl #0x862bf4
0088f0ec  38 30 9f e5                                      ldr r3, [pc, #0x38]
0088f0f0  03 30 94 e7                                      ldr r3, [r4, r3]
0088f0f4  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f0f8  0b fd e9 eb                                      bl #0x30e52c
0088f0fc  00 20 a0 e1                                      mov r2, r0
0088f100  01 30 a0 e1                                      mov r3, r1
0088f104  08 00 a0 e1                                      mov r0, r8
0088f108  09 10 a0 e1                                      mov r1, sb
0088f10c  06 fd e9 eb                                      bl #0x30e52c
0088f110  f0 00 c6 e1                                      strd r0, r1, [r6]
0088f114  d5 ff ff ea                                      b #0x88f070
; mapping-symbol data/literal pool
0088f118  28 5a 10 00 f8 4a 00 00 14 43 00 00 a4 0a 00 00  .byte 0x28, 0x5a, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0xa4, 0x0a, 0x00, 0x00
0088f128  b4 43 00 00 88 07 00 00                          .byte 0xb4, 0x43, 0x00, 0x00, 0x88, 0x07, 0x00, 0x00

; FUNCTION 0x0088f130, declared_size=28, range_size=28, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid7SuspendEv
; demangled: vox::DriverAndroid::Suspend()
; decoder-mode: arm
0088f130  54 30 90 e5                                      ldr r3, [r0, #0x54]
0088f134  01 00 53 e3                                      cmp r3, #1
0088f138  02 00 00 0a                                      beq #0x88f148
0088f13c  02 00 53 e3                                      cmp r3, #2
0088f140  1e ff 2f 11                                      bxne lr
0088f144  46 ff ff ea                                      b #0x88ee64
0088f148  bd ff ff ea                                      b #0x88f044

; FUNCTION 0x0088f14c, declared_size=476, range_size=476, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid12DoCallbackATERP7_jarray
; demangled: vox::DriverAndroid::DoCallbackAT(_jarray*&)
; decoder-mode: arm
0088f14c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088f150  ac 41 9f e5                                      ldr r4, [pc, #0x1ac]
0088f154  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0088f158  18 d0 4d e2                                      sub sp, sp, #0x18
0088f15c  04 40 8f e0                                      add r4, pc, r4
0088f160  03 20 94 e7                                      ldr r2, [r4, r3]
0088f164  00 50 a0 e3                                      mov r5, #0
0088f168  18 30 8d e2                                      add r3, sp, #0x18
0088f16c  00 c0 92 e5                                      ldr ip, [r2]
0088f170  04 50 23 e5                                      str r5, [r3, #-4]!
0088f174  01 28 a0 e3                                      mov r2, #0x10000
0088f178  01 60 a0 e1                                      mov r6, r1
0088f17c  02 20 82 e2                                      add r2, r2, #2
0088f180  03 10 a0 e1                                      mov r1, r3
0088f184  00 70 a0 e1                                      mov r7, r0
0088f188  00 30 9c e5                                      ldr r3, [ip]
0088f18c  0c 00 a0 e1                                      mov r0, ip
0088f190  0f e0 a0 e1                                      mov lr, pc
0088f194  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f198  14 30 9d e5                                      ldr r3, [sp, #0x14]
0088f19c  00 10 96 e5                                      ldr r1, [r6]
0088f1a0  05 20 a0 e1                                      mov r2, r5
0088f1a4  03 00 a0 e1                                      mov r0, r3
0088f1a8  00 30 93 e5                                      ldr r3, [r3]
0088f1ac  0f e0 a0 e1                                      mov lr, pc
0088f1b0  78 f3 93 e5                                      ldr pc, [r3, #0x378]
0088f1b4  00 80 50 e2                                      subs r8, r0, #0
0088f1b8  48 00 00 0a                                      beq #0x88f2e0
0088f1bc  5c 90 97 e5                                      ldr sb, [r7, #0x5c]
0088f1c0  04 a0 87 e2                                      add sl, r7, #4
0088f1c4  0a 00 a0 e1                                      mov r0, sl
0088f1c8  ab 10 00 eb                                      bl #0x89347c
0088f1cc  09 20 a0 e1                                      mov r2, sb
0088f1d0  08 10 a0 e1                                      mov r1, r8
0088f1d4  07 00 a0 e1                                      mov r0, r7
0088f1d8  da 04 00 eb                                      bl #0x890548
0088f1dc  0a 00 a0 e1                                      mov r0, sl
0088f1e0  a4 10 00 eb                                      bl #0x893478
0088f1e4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0088f1e8  00 10 96 e5                                      ldr r1, [r6]
0088f1ec  05 30 a0 e1                                      mov r3, r5
0088f1f0  0c 00 a0 e1                                      mov r0, ip
0088f1f4  08 20 a0 e1                                      mov r2, r8
0088f1f8  00 c0 9c e5                                      ldr ip, [ip]
0088f1fc  0f e0 a0 e1                                      mov lr, pc
0088f200  7c f3 9c e5                                      ldr pc, [ip, #0x37c]
0088f204  00 31 9f e5                                      ldr r3, [pc, #0x100]
0088f208  00 c0 96 e5                                      ldr ip, [r6]
0088f20c  64 10 97 e5                                      ldr r1, [r7, #0x64]
0088f210  03 20 94 e7                                      ldr r2, [r4, r3]
0088f214  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0088f218  09 91 a0 e1                                      lsl sb, sb, #2
0088f21c  00 20 92 e5                                      ldr r2, [r2]
0088f220  03 30 94 e7                                      ldr r3, [r4, r3]
0088f224  14 00 9d e5                                      ldr r0, [sp, #0x14]
0088f228  00 30 93 e5                                      ldr r3, [r3]
0088f22c  00 c0 8d e5                                      str ip, [sp]
0088f230  20 02 8d e9                                      stmib sp, {r5, sb}
0088f234  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0088f238  30 ff ff eb                                      bl #0x88ef00
0088f23c  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0088f240  05 60 94 e7                                      ldr r6, [r4, r5]
0088f244  03 30 94 e7                                      ldr r3, [r4, r3]
0088f248  d0 00 c6 e1                                      ldrd r0, r1, [r6]
0088f24c  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f250  3b fe e9 eb                                      bl #0x30eb44
0088f254  f0 00 c6 e1                                      strd r0, r1, [r6]
0088f258  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
0088f25c  06 60 8f e0                                      add r6, pc, r6
0088f260  00 30 d6 e5                                      ldrb r3, [r6]
0088f264  00 00 53 e3                                      cmp r3, #0
0088f268  1e 00 00 1a                                      bne #0x88f2e8
0088f26c  ac 80 9f e5                                      ldr r8, [pc, #0xac]
0088f270  05 30 94 e7                                      ldr r3, [r4, r5]
0088f274  d0 60 c3 e1                                      ldrd r6, r7, [r3]
0088f278  5d 4e ff eb                                      bl #0x862bf4
0088f27c  08 30 94 e7                                      ldr r3, [r4, r8]
0088f280  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f284  a8 fc e9 eb                                      bl #0x30e52c
0088f288  00 20 a0 e1                                      mov r2, r0
0088f28c  01 30 a0 e1                                      mov r3, r1
0088f290  06 00 a0 e1                                      mov r0, r6
0088f294  07 10 a0 e1                                      mov r1, r7
0088f298  a3 fc e9 eb                                      bl #0x30e52c
0088f29c  80 30 9f e5                                      ldr r3, [pc, #0x80]
0088f2a0  03 30 94 e7                                      ldr r3, [r4, r3]
0088f2a4  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f2a8  ec fa e9 eb                                      bl #0x30de60
0088f2ac  00 00 50 e3                                      cmp r0, #0
0088f2b0  08 00 00 0a                                      beq #0x88f2d8
0088f2b4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0088f2b8  80 34 08 e3                                      movw r3, #0x8480
0088f2bc  00 20 a0 e3                                      mov r2, #0
0088f2c0  01 10 94 e7                                      ldr r1, [r4, r1]
0088f2c4  2e 31 44 e3                                      movt r3, #0x412e
0088f2c8  d0 00 c1 e1                                      ldrd r0, r1, [r1]
0088f2cc  f8 fd e9 eb                                      bl #0x30eab4
0088f2d0  be fd e9 eb                                      bl #0x30e9d0
0088f2d4  69 fd e9 eb                                      bl #0x30e880
0088f2d8  18 d0 8d e2                                      add sp, sp, #0x18
0088f2dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088f2e0  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0088f2e4  db ff ff ea                                      b #0x88f258
0088f2e8  41 4e ff eb                                      bl #0x862bf4
0088f2ec  2c 80 9f e5                                      ldr r8, [pc, #0x2c]
0088f2f0  00 30 a0 e3                                      mov r3, #0
0088f2f4  00 30 c6 e5                                      strb r3, [r6]
0088f2f8  08 30 94 e7                                      ldr r3, [r4, r8]
0088f2fc  f0 00 c3 e1                                      strd r0, r1, [r3]
0088f300  da ff ff ea                                      b #0x88f270
; mapping-symbol data/literal pool
0088f304  34 59 10 00 f8 4a 00 00 14 43 00 00 c4 21 00 00  .byte 0x34, 0x59, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0xc4, 0x21, 0x00, 0x00
0088f314  b4 43 00 00 10 07 00 00 ec ef 10 00 88 07 00 00  .byte 0xb4, 0x43, 0x00, 0x00, 0x10, 0x07, 0x00, 0x00, 0xec, 0xef, 0x10, 0x00, 0x88, 0x07, 0x00, 0x00
0088f324  90 07 00 00                                      .byte 0x90, 0x07, 0x00, 0x00

; FUNCTION 0x0088f328, declared_size=628, range_size=628, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid16UpdateThreadedATEPv
; demangled: vox::DriverAndroid::UpdateThreadedAT(void*)
; decoder-mode: arm
0088f328  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088f32c  40 52 9f e5                                      ldr r5, [pc, #0x240]
0088f330  00 40 50 e2                                      subs r4, r0, #0
0088f334  2c d0 4d e2                                      sub sp, sp, #0x2c
0088f338  05 50 8f e0                                      add r5, pc, r5
0088f33c  81 00 00 0a                                      beq #0x88f548
0088f340  30 b2 9f e5                                      ldr fp, [pc, #0x230]
0088f344  00 60 a0 e3                                      mov r6, #0
0088f348  28 80 8d e2                                      add r8, sp, #0x28
0088f34c  04 90 84 e2                                      add sb, r4, #4
0088f350  09 00 a0 e1                                      mov r0, sb
0088f354  08 60 28 e5                                      str r6, [r8, #-8]!
0088f358  24 60 8d e5                                      str r6, [sp, #0x24]
0088f35c  46 10 00 eb                                      bl #0x89347c
0088f360  0b 70 95 e7                                      ldr r7, [r5, fp]
0088f364  08 10 a0 e1                                      mov r1, r8
0088f368  06 20 a0 e1                                      mov r2, r6
0088f36c  00 30 97 e5                                      ldr r3, [r7]
0088f370  03 00 a0 e1                                      mov r0, r3
0088f374  00 30 93 e5                                      ldr r3, [r3]
0088f378  0f e0 a0 e1                                      mov lr, pc
0088f37c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0088f380  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f384  06 00 53 e1                                      cmp r3, r6
0088f388  6c 00 00 0a                                      beq #0x88f540
0088f38c  03 00 a0 e1                                      mov r0, r3
0088f390  02 10 a0 e3                                      mov r1, #2
0088f394  00 30 93 e5                                      ldr r3, [r3]
0088f398  0f e0 a0 e1                                      mov lr, pc
0088f39c  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0088f3a0  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0088f3a4  44 2c 0a e3                                      movw r2, #0xac44
0088f3a8  00 20 8d e5                                      str r2, [sp]
0088f3ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
0088f3b0  03 60 95 e7                                      ldr r6, [r5, r3]
0088f3b4  0c 20 a0 e3                                      mov r2, #0xc
0088f3b8  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0088f3bc  04 20 8d e5                                      str r2, [sp, #4]
0088f3c0  02 20 a0 e3                                      mov r2, #2
0088f3c4  08 20 8d e5                                      str r2, [sp, #8]
0088f3c8  58 c0 94 e5                                      ldr ip, [r4, #0x58]
0088f3cc  03 30 95 e7                                      ldr r3, [r5, r3]
0088f3d0  00 10 96 e5                                      ldr r1, [r6]
0088f3d4  0c c1 a0 e1                                      lsl ip, ip, #2
0088f3d8  00 20 93 e5                                      ldr r2, [r3]
0088f3dc  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f3e0  01 80 a0 e3                                      mov r8, #1
0088f3e4  03 30 a0 e3                                      mov r3, #3
0088f3e8  0c c0 8d e5                                      str ip, [sp, #0xc]
0088f3ec  10 80 8d e5                                      str r8, [sp, #0x10]
0088f3f0  a7 fe ff eb                                      bl #0x88ee94
0088f3f4  00 00 50 e3                                      cmp r0, #0
0088f3f8  64 00 84 e5                                      str r0, [r4, #0x64]
0088f3fc  56 00 00 0a                                      beq #0x88f55c
0088f400  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0088f404  00 10 a0 e1                                      mov r1, r0
0088f408  00 20 96 e5                                      ldr r2, [r6]
0088f40c  03 30 95 e7                                      ldr r3, [r5, r3]
0088f410  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f414  00 30 93 e5                                      ldr r3, [r3]
0088f418  aa fe ff eb                                      bl #0x88eec8
0088f41c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f420  58 10 94 e5                                      ldr r1, [r4, #0x58]
0088f424  03 00 a0 e1                                      mov r0, r3
0088f428  01 11 a0 e1                                      lsl r1, r1, #2
0088f42c  00 30 93 e5                                      ldr r3, [r3]
0088f430  0f e0 a0 e1                                      mov lr, pc
0088f434  c0 f2 93 e5                                      ldr pc, [r3, #0x2c0]
0088f438  00 00 50 e3                                      cmp r0, #0
0088f43c  24 00 8d e5                                      str r0, [sp, #0x24]
0088f440  45 00 00 0a                                      beq #0x88f55c
0088f444  08 80 c4 e5                                      strb r8, [r4, #8]
0088f448  09 00 a0 e1                                      mov r0, sb
0088f44c  09 10 00 eb                                      bl #0x893478
0088f450  e7 4d ff eb                                      bl #0x862bf4
0088f454  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0088f458  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
0088f45c  2c a1 9f e5                                      ldr sl, [pc, #0x12c]
0088f460  03 30 95 e7                                      ldr r3, [r5, r3]
0088f464  02 80 95 e7                                      ldr r8, [r5, r2]
0088f468  24 70 8d e2                                      add r7, sp, #0x24
0088f46c  f0 00 c3 e1                                      strd r0, r1, [r3]
0088f470  00 60 d8 e5                                      ldrb r6, [r8]
0088f474  04 00 a0 e1                                      mov r0, r4
0088f478  07 10 a0 e1                                      mov r1, r7
0088f47c  00 00 56 e3                                      cmp r6, #0
0088f480  0f 00 00 0a                                      beq #0x88f4c4
0088f484  60 c0 d4 e5                                      ldrb ip, [r4, #0x60]
0088f488  80 34 08 e3                                      movw r3, #0x8480
0088f48c  00 20 a0 e3                                      mov r2, #0
0088f490  00 00 5c e3                                      cmp ip, #0
0088f494  2e 31 44 e3                                      movt r3, #0x412e
0088f498  2d 00 00 0a                                      beq #0x88f554
0088f49c  0a 10 95 e7                                      ldr r1, [r5, sl]
0088f4a0  d0 00 c1 e1                                      ldrd r0, r1, [r1]
0088f4a4  82 fd e9 eb                                      bl #0x30eab4
0088f4a8  5d fd e9 eb                                      bl #0x30ea24
0088f4ac  f3 fc e9 eb                                      bl #0x30e880
0088f4b0  00 60 d8 e5                                      ldrb r6, [r8]
0088f4b4  04 00 a0 e1                                      mov r0, r4
0088f4b8  07 10 a0 e1                                      mov r1, r7
0088f4bc  00 00 56 e3                                      cmp r6, #0
0088f4c0  ef ff ff 1a                                      bne #0x88f484
0088f4c4  09 00 a0 e1                                      mov r0, sb
0088f4c8  08 60 c4 e5                                      strb r6, [r4, #8]
0088f4cc  ea 0f 00 eb                                      bl #0x89347c
0088f4d0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0088f4d4  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f4d8  64 10 94 e5                                      ldr r1, [r4, #0x64]
0088f4dc  03 70 95 e7                                      ldr r7, [r5, r3]
0088f4e0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0088f4e4  00 20 97 e5                                      ldr r2, [r7]
0088f4e8  03 30 95 e7                                      ldr r3, [r5, r3]
0088f4ec  00 30 93 e5                                      ldr r3, [r3]
0088f4f0  74 fe ff eb                                      bl #0x88eec8
0088f4f4  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0088f4f8  00 20 97 e5                                      ldr r2, [r7]
0088f4fc  64 10 94 e5                                      ldr r1, [r4, #0x64]
0088f500  03 30 95 e7                                      ldr r3, [r5, r3]
0088f504  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f508  00 30 93 e5                                      ldr r3, [r3]
0088f50c  6d fe ff eb                                      bl #0x88eec8
0088f510  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f514  06 10 a0 e1                                      mov r1, r6
0088f518  03 00 a0 e1                                      mov r0, r3
0088f51c  00 30 93 e5                                      ldr r3, [r3]
0088f520  0f e0 a0 e1                                      mov lr, pc
0088f524  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0088f528  0b 30 95 e7                                      ldr r3, [r5, fp]
0088f52c  00 30 93 e5                                      ldr r3, [r3]
0088f530  03 00 a0 e1                                      mov r0, r3
0088f534  00 30 93 e5                                      ldr r3, [r3]
0088f538  0f e0 a0 e1                                      mov lr, pc
0088f53c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0088f540  09 00 a0 e1                                      mov r0, sb
0088f544  cb 0f 00 eb                                      bl #0x893478
0088f548  00 00 a0 e3                                      mov r0, #0
0088f54c  2c d0 8d e2                                      add sp, sp, #0x2c
0088f550  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088f554  fc fe ff eb                                      bl #0x88f14c
0088f558  c4 ff ff ea                                      b #0x88f470
0088f55c  00 30 97 e5                                      ldr r3, [r7]
0088f560  03 00 a0 e1                                      mov r0, r3
0088f564  00 30 93 e5                                      ldr r3, [r3]
0088f568  0f e0 a0 e1                                      mov lr, pc
0088f56c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0088f570  f2 ff ff ea                                      b #0x88f540
; mapping-symbol data/literal pool
0088f574  58 57 10 00 f8 4a 00 00 14 43 00 00 d8 11 00 00  .byte 0x58, 0x57, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0xd8, 0x11, 0x00, 0x00
0088f584  a8 46 00 00 88 07 00 00 f4 07 00 00 10 07 00 00  .byte 0xa8, 0x46, 0x00, 0x00, 0x88, 0x07, 0x00, 0x00, 0xf4, 0x07, 0x00, 0x00, 0x10, 0x07, 0x00, 0x00
0088f594  c8 2b 00 00 f0 19 00 00                          .byte 0xc8, 0x2b, 0x00, 0x00, 0xf0, 0x19, 0x00, 0x00

; FUNCTION 0x0088f59c, declared_size=124, range_size=124, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid19DestroyDriverSourceEPNS_21DriverSourceInterfaceE
; demangled: vox::DriverAndroid::DestroyDriverSource(vox::DriverSourceInterface*)
; decoder-mode: arm
0088f59c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088f5a0  04 40 80 e2                                      add r4, r0, #4
0088f5a4  00 50 a0 e1                                      mov r5, r0
0088f5a8  01 60 a0 e1                                      mov r6, r1
0088f5ac  04 00 a0 e1                                      mov r0, r4
0088f5b0  b1 0f 00 eb                                      bl #0x89347c
0088f5b4  00 00 56 e3                                      cmp r6, #0
0088f5b8  10 00 b5 15                                      ldrne r0, [r5, #0x10]!
0088f5bc  04 00 00 1a                                      bne #0x88f5d4
0088f5c0  0b 00 00 ea                                      b #0x88f5f4
0088f5c4  08 30 90 e5                                      ldr r3, [r0, #8]
0088f5c8  03 00 56 e1                                      cmp r6, r3
0088f5cc  0b 00 00 0a                                      beq #0x88f600
0088f5d0  00 00 90 e5                                      ldr r0, [r0]
0088f5d4  00 00 55 e1                                      cmp r5, r0
0088f5d8  f9 ff ff 1a                                      bne #0x88f5c4
0088f5dc  00 30 96 e5                                      ldr r3, [r6]
0088f5e0  06 00 a0 e1                                      mov r0, r6
0088f5e4  0f e0 a0 e1                                      mov lr, pc
0088f5e8  00 f0 93 e5                                      ldr pc, [r3]
0088f5ec  06 00 a0 e1                                      mov r0, r6
0088f5f0  93 03 ea eb                                      bl #0x310444
0088f5f4  04 00 a0 e1                                      mov r0, r4
0088f5f8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088f5fc  9d 0f 00 ea                                      b #0x893478
0088f600  00 30 90 e5                                      ldr r3, [r0]
0088f604  04 20 90 e5                                      ldr r2, [r0, #4]
0088f608  00 30 82 e5                                      str r3, [r2]
0088f60c  04 20 83 e5                                      str r2, [r3, #4]
0088f610  8b 03 ea eb                                      bl #0x310444
0088f614  f0 ff ff ea                                      b #0x88f5dc

; FUNCTION 0x0088f618, declared_size=44, range_size=44, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid11_ShutdownATEv
; demangled: vox::DriverAndroid::_ShutdownAT()
; decoder-mode: arm
0088f618  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0088f61c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0088f620  00 20 a0 e3                                      mov r2, #0
0088f624  03 30 8f e0                                      add r3, pc, r3
0088f628  01 c0 93 e7                                      ldr ip, [r3, r1]
0088f62c  02 10 a0 e1                                      mov r1, r2
0088f630  00 20 cc e5                                      strb r2, [ip]
0088f634  68 00 90 e5                                      ldr r0, [r0, #0x68]
0088f638  98 fd e9 ea                                      b #0x30eca0
; mapping-symbol data/literal pool
0088f63c  6c 54 10 00 f4 07 00 00                          .byte 0x6c, 0x54, 0x10, 0x00, 0xf4, 0x07, 0x00, 0x00

; FUNCTION 0x0088f644, declared_size=28, range_size=28, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid8ShutdownEv
; demangled: vox::DriverAndroid::Shutdown()
; decoder-mode: arm
0088f644  54 30 90 e5                                      ldr r3, [r0, #0x54]
0088f648  01 00 53 e3                                      cmp r3, #1
0088f64c  02 00 00 0a                                      beq #0x88f65c
0088f650  02 00 53 e3                                      cmp r3, #2
0088f654  1e ff 2f 11                                      bxne lr
0088f658  00 fe ff ea                                      b #0x88ee60
0088f65c  ed ff ff ea                                      b #0x88f618

; FUNCTION 0x0088f660, declared_size=832, range_size=832, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid7_InitATEPv
; demangled: vox::DriverAndroid::_InitAT(void*)
; decoder-mode: arm
0088f660  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0088f664  00 50 a0 e1                                      mov r5, r0
0088f668  14 d0 4d e2                                      sub sp, sp, #0x14
0088f66c  bc 42 9f e5                                      ldr r4, [pc, #0x2bc]
0088f670  44 0c 0a e3                                      movw r0, #0xac44
0088f674  03 03 00 eb                                      bl #0x890288
0088f678  b4 32 9f e5                                      ldr r3, [pc, #0x2b4]
0088f67c  04 40 8f e0                                      add r4, pc, r4
0088f680  03 30 94 e7                                      ldr r3, [r4, r3]
0088f684  00 30 93 e5                                      ldr r3, [r3]
0088f688  00 00 53 e3                                      cmp r3, #0
0088f68c  4a 00 00 0a                                      beq #0x88f7bc
0088f690  10 10 8d e2                                      add r1, sp, #0x10
0088f694  00 20 a0 e3                                      mov r2, #0
0088f698  04 20 21 e5                                      str r2, [r1, #-4]!
0088f69c  01 28 a0 e3                                      mov r2, #0x10000
0088f6a0  03 00 a0 e1                                      mov r0, r3
0088f6a4  02 20 82 e2                                      add r2, r2, #2
0088f6a8  00 30 93 e5                                      ldr r3, [r3]
0088f6ac  0f e0 a0 e1                                      mov lr, pc
0088f6b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f6b4  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
0088f6b8  03 60 94 e7                                      ldr r6, [r4, r3]
0088f6bc  00 10 96 e5                                      ldr r1, [r6]
0088f6c0  00 00 51 e3                                      cmp r1, #0
0088f6c4  3e 00 00 0a                                      beq #0x88f7c4
0088f6c8  6c 72 9f e5                                      ldr r7, [pc, #0x26c]
0088f6cc  07 30 94 e7                                      ldr r3, [r4, r7]
0088f6d0  0c c0 a0 e3                                      mov ip, #0xc
0088f6d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f6d8  00 20 93 e5                                      ldr r2, [r3]
0088f6dc  44 3c 0a e3                                      movw r3, #0xac44
0088f6e0  00 c0 8d e5                                      str ip, [sp]
0088f6e4  02 c0 a0 e3                                      mov ip, #2
0088f6e8  04 c0 8d e5                                      str ip, [sp, #4]
0088f6ec  11 fe ff eb                                      bl #0x88ef38
0088f6f0  03 30 80 e2                                      add r3, r0, #3
0088f6f4  00 00 50 e3                                      cmp r0, #0
0088f6f8  03 00 a0 b1                                      movlt r0, r3
0088f6fc  40 01 a0 e1                                      asr r0, r0, #2
0088f700  01 0b 50 e3                                      cmp r0, #0x400
0088f704  01 3b a0 e3                                      mov r3, #0x400
0088f708  5c 30 85 e5                                      str r3, [r5, #0x5c]
0088f70c  58 00 85 e5                                      str r0, [r5, #0x58]
0088f710  03 00 a0 a1                                      movge r0, r3
0088f714  24 32 9f e5                                      ldr r3, [pc, #0x224]
0088f718  5c 00 85 b5                                      strlt r0, [r5, #0x5c]
0088f71c  00 80 a0 e3                                      mov r8, #0
0088f720  03 60 94 e7                                      ldr r6, [r4, r3]
0088f724  81 fd e9 eb                                      bl #0x30ed30
0088f728  80 38 08 e3                                      movw r3, #0x8880
0088f72c  00 20 a0 e3                                      mov r2, #0
0088f730  e5 30 44 e3                                      movt r3, #0x40e5
0088f734  01 fb e9 eb                                      bl #0x30e340
0088f738  04 32 9f e5                                      ldr r3, [pc, #0x204]
0088f73c  f0 00 c6 e1                                      strd r0, r1, [r6]
0088f740  03 70 94 e7                                      ldr r7, [r4, r3]
0088f744  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0088f748  58 00 95 e5                                      ldr r0, [r5, #0x58]
0088f74c  00 90 a0 e3                                      mov sb, #0
0088f750  03 60 94 e7                                      ldr r6, [r4, r3]
0088f754  75 fd e9 eb                                      bl #0x30ed30
0088f758  80 38 08 e3                                      movw r3, #0x8880
0088f75c  00 20 a0 e3                                      mov r2, #0
0088f760  e5 30 44 e3                                      movt r3, #0x40e5
0088f764  f5 fa e9 eb                                      bl #0x30e340
0088f768  d0 20 c7 e1                                      ldrd r2, r3, [r7]
0088f76c  d0 fc e9 eb                                      bl #0x30eab4
0088f770  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0088f774  02 11 81 e2                                      add r1, r1, #0x80000000
0088f778  01 e0 a0 e3                                      mov lr, #1
0088f77c  03 20 94 e7                                      ldr r2, [r4, r3]
0088f780  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
0088f784  04 10 86 e5                                      str r1, [r6, #4]
0088f788  f0 80 c2 e1                                      strd r8, sb, [r2]
0088f78c  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f790  bc 21 9f e5                                      ldr r2, [pc, #0x1bc]
0088f794  00 30 a0 e3                                      mov r3, #0
0088f798  00 00 86 e5                                      str r0, [r6]
0088f79c  03 10 a0 e1                                      mov r1, r3
0088f7a0  54 e0 85 e5                                      str lr, [r5, #0x54]
0088f7a4  02 20 94 e7                                      ldr r2, [r4, r2]
0088f7a8  00 e0 cc e5                                      strb lr, [ip]
0088f7ac  68 00 85 e2                                      add r0, r5, #0x68
0088f7b0  60 30 c5 e5                                      strb r3, [r5, #0x60]
0088f7b4  05 30 a0 e1                                      mov r3, r5
0088f7b8  08 fa e9 eb                                      bl #0x30dfe0
0088f7bc  14 d0 8d e2                                      add sp, sp, #0x14
0088f7c0  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
0088f7c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088f7c8  88 11 9f e5                                      ldr r1, [pc, #0x188]
0088f7cc  03 00 a0 e1                                      mov r0, r3
0088f7d0  01 10 8f e0                                      add r1, pc, r1
0088f7d4  00 30 93 e5                                      ldr r3, [r3]
0088f7d8  0f e0 a0 e1                                      mov lr, pc
0088f7dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f7e0  00 00 50 e3                                      cmp r0, #0
0088f7e4  00 00 86 e5                                      str r0, [r6]
0088f7e8  f3 ff ff 0a                                      beq #0x88f7bc
0088f7ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088f7f0  00 10 a0 e1                                      mov r1, r0
0088f7f4  40 71 9f e5                                      ldr r7, [pc, #0x140]
0088f7f8  03 00 a0 e1                                      mov r0, r3
0088f7fc  00 30 93 e5                                      ldr r3, [r3]
0088f800  0f e0 a0 e1                                      mov lr, pc
0088f804  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0088f808  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0088f80c  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0088f810  00 c0 a0 e1                                      mov ip, r0
0088f814  00 10 a0 e1                                      mov r1, r0
0088f818  02 20 8f e0                                      add r2, pc, r2
0088f81c  03 30 8f e0                                      add r3, pc, r3
0088f820  00 c0 86 e5                                      str ip, [r6]
0088f824  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f828  52 fd ff eb                                      bl #0x88ed78
0088f82c  30 31 9f e5                                      ldr r3, [pc, #0x130]
0088f830  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0088f834  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
0088f838  03 30 94 e7                                      ldr r3, [r4, r3]
0088f83c  00 10 96 e5                                      ldr r1, [r6]
0088f840  02 20 8f e0                                      add r2, pc, r2
0088f844  00 00 83 e5                                      str r0, [r3]
0088f848  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0088f84c  0c 00 a0 e1                                      mov r0, ip
0088f850  00 c0 9c e5                                      ldr ip, [ip]
0088f854  03 30 8f e0                                      add r3, pc, r3
0088f858  0f e0 a0 e1                                      mov lr, pc
0088f85c  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0088f860  08 81 9f e5                                      ldr r8, [pc, #0x108]
0088f864  07 30 94 e7                                      ldr r3, [r4, r7]
0088f868  04 21 9f e5                                      ldr r2, [pc, #0x104]
0088f86c  08 80 8f e0                                      add r8, pc, r8
0088f870  00 00 83 e5                                      str r0, [r3]
0088f874  02 20 8f e0                                      add r2, pc, r2
0088f878  00 10 96 e5                                      ldr r1, [r6]
0088f87c  08 30 a0 e1                                      mov r3, r8
0088f880  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f884  3b fd ff eb                                      bl #0x88ed78
0088f888  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
0088f88c  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
0088f890  00 10 96 e5                                      ldr r1, [r6]
0088f894  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f898  02 20 8f e0                                      add r2, pc, r2
0088f89c  08 30 a0 e1                                      mov r3, r8
0088f8a0  00 00 8c e5                                      str r0, [ip]
0088f8a4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8a8  32 fd ff eb                                      bl #0x88ed78
0088f8ac  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0088f8b0  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0088f8b4  00 10 96 e5                                      ldr r1, [r6]
0088f8b8  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f8bc  02 20 8f e0                                      add r2, pc, r2
0088f8c0  08 30 a0 e1                                      mov r3, r8
0088f8c4  00 00 8c e5                                      str r0, [ip]
0088f8c8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8cc  29 fd ff eb                                      bl #0x88ed78
0088f8d0  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0088f8d4  08 30 a0 e1                                      mov r3, r8
0088f8d8  00 10 96 e5                                      ldr r1, [r6]
0088f8dc  02 c0 94 e7                                      ldr ip, [r4, r2]
0088f8e0  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0088f8e4  00 00 8c e5                                      str r0, [ip]
0088f8e8  02 20 8f e0                                      add r2, pc, r2
0088f8ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8f0  20 fd ff eb                                      bl #0x88ed78
0088f8f4  94 30 9f e5                                      ldr r3, [pc, #0x94]
0088f8f8  94 20 9f e5                                      ldr r2, [pc, #0x94]
0088f8fc  03 10 94 e7                                      ldr r1, [r4, r3]
0088f900  90 30 9f e5                                      ldr r3, [pc, #0x90]
0088f904  02 20 8f e0                                      add r2, pc, r2
0088f908  00 00 81 e5                                      str r0, [r1]
0088f90c  03 30 8f e0                                      add r3, pc, r3
0088f910  00 10 96 e5                                      ldr r1, [r6]
0088f914  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f918  16 fd ff eb                                      bl #0x88ed78
0088f91c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0088f920  00 10 96 e5                                      ldr r1, [r6]
0088f924  03 30 94 e7                                      ldr r3, [r4, r3]
0088f928  00 00 83 e5                                      str r0, [r3]
0088f92c  66 ff ff ea                                      b #0x88f6cc
; mapping-symbol data/literal pool
0088f930  14 54 10 00 f8 4a 00 00 14 43 00 00 7c 35 00 00  .byte 0x14, 0x54, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0x7c, 0x35, 0x00, 0x00
0088f940  10 07 00 00 58 14 00 00 90 07 00 00 b4 43 00 00  .byte 0x10, 0x07, 0x00, 0x00, 0x58, 0x14, 0x00, 0x00, 0x90, 0x07, 0x00, 0x00, 0xb4, 0x43, 0x00, 0x00
0088f950  f4 07 00 00 9c 3a 00 00 b0 21 08 00 88 21 08 00  .byte 0xf4, 0x07, 0x00, 0x00, 0x9c, 0x3a, 0x00, 0x00, 0xb0, 0x21, 0x08, 0x00, 0x88, 0x21, 0x08, 0x00
0088f960  8c 21 08 00 d8 11 00 00 78 21 08 00 7c 21 08 00  .byte 0x8c, 0x21, 0x08, 0x00, 0xd8, 0x11, 0x00, 0x00, 0x78, 0x21, 0x08, 0x00, 0x7c, 0x21, 0x08, 0x00
0088f970  c4 de 04 00 44 9b 07 00 a8 46 00 00 40 21 08 00  .byte 0xc4, 0xde, 0x04, 0x00, 0x44, 0x9b, 0x07, 0x00, 0xa8, 0x46, 0x00, 0x00, 0x40, 0x21, 0x08, 0x00
0088f980  a4 0a 00 00 04 9b 07 00 c8 2b 00 00 f0 52 03 00  .byte 0xa4, 0x0a, 0x00, 0x00, 0x04, 0x9b, 0x07, 0x00, 0xc8, 0x2b, 0x00, 0x00, 0xf0, 0x52, 0x03, 0x00
0088f990  f0 19 00 00 dc 20 08 00 dc 20 08 00 c4 21 00 00  .byte 0xf0, 0x19, 0x00, 0x00, 0xdc, 0x20, 0x08, 0x00, 0xdc, 0x20, 0x08, 0x00, 0xc4, 0x21, 0x00, 0x00

; FUNCTION 0x0088f9a0, declared_size=76, range_size=76, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid4InitEPv
; demangled: vox::DriverAndroid::Init(void*)
; decoder-mode: arm
0088f9a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0088f9a4  04 50 80 e2                                      add r5, r0, #4
0088f9a8  00 40 a0 e1                                      mov r4, r0
0088f9ac  01 60 a0 e1                                      mov r6, r1
0088f9b0  05 00 a0 e1                                      mov r0, r5
0088f9b4  b0 0e 00 eb                                      bl #0x89347c
0088f9b8  06 10 a0 e1                                      mov r1, r6
0088f9bc  04 00 a0 e1                                      mov r0, r4
0088f9c0  38 02 00 eb                                      bl #0x8902a8
0088f9c4  04 00 a0 e1                                      mov r0, r4
0088f9c8  73 02 00 eb                                      bl #0x89039c
0088f9cc  04 00 a0 e1                                      mov r0, r4
0088f9d0  06 10 a0 e1                                      mov r1, r6
0088f9d4  21 ff ff eb                                      bl #0x88f660
0088f9d8  04 00 a0 e1                                      mov r0, r4
0088f9dc  6e 02 00 eb                                      bl #0x89039c
0088f9e0  05 00 a0 e1                                      mov r0, r5
0088f9e4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088f9e8  a2 0e 00 ea                                      b #0x893478

; FUNCTION 0x0088f9ec, declared_size=60, range_size=60, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroidD1Ev
; demangled: vox::DriverAndroid::~DriverAndroid()
; decoder-mode: arm
0088f9ec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0088f9f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0088f9f4  10 40 2d e9                                      push {r4, lr}
0088f9f8  03 30 8f e0                                      add r3, pc, r3
0088f9fc  02 20 93 e7                                      ldr r2, [r3, r2]
0088fa00  00 40 a0 e1                                      mov r4, r0
0088fa04  08 20 82 e2                                      add r2, r2, #8
0088fa08  00 20 80 e5                                      str r2, [r0]
0088fa0c  0c ff ff eb                                      bl #0x88f644
0088fa10  04 00 a0 e1                                      mov r0, r4
0088fa14  c1 05 00 eb                                      bl #0x891120
0088fa18  04 00 a0 e1                                      mov r0, r4
0088fa1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0088fa20  98 50 10 00 20 38 00 00                          .byte 0x98, 0x50, 0x10, 0x00, 0x20, 0x38, 0x00, 0x00

; FUNCTION 0x0088fa28, declared_size=28, range_size=28, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroidD0Ev
; demangled: vox::DriverAndroid::~DriverAndroid()
; decoder-mode: arm
0088fa28  10 40 2d e9                                      push {r4, lr}
0088fa2c  00 40 a0 e1                                      mov r4, r0
0088fa30  ed ff ff eb                                      bl #0x88f9ec
0088fa34  04 00 a0 e1                                      mov r0, r4
0088fa38  1c fa e9 eb                                      bl #0x30e2b0
0088fa3c  04 00 a0 e1                                      mov r0, r4
0088fa40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088fa44, declared_size=60, range_size=60, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroidD2Ev
; demangled: vox::DriverAndroid::~DriverAndroid()
; decoder-mode: arm
0088fa44  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0088fa48  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0088fa4c  10 40 2d e9                                      push {r4, lr}
0088fa50  03 30 8f e0                                      add r3, pc, r3
0088fa54  02 20 93 e7                                      ldr r2, [r3, r2]
0088fa58  00 40 a0 e1                                      mov r4, r0
0088fa5c  08 20 82 e2                                      add r2, r2, #8
0088fa60  00 20 80 e5                                      str r2, [r0]
0088fa64  f6 fe ff eb                                      bl #0x88f644
0088fa68  04 00 a0 e1                                      mov r0, r4
0088fa6c  ab 05 00 eb                                      bl #0x891120
0088fa70  04 00 a0 e1                                      mov r0, r4
0088fa74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0088fa78  40 50 10 00 20 38 00 00                          .byte 0x40, 0x50, 0x10, 0x00, 0x20, 0x38, 0x00, 0x00

; FUNCTION 0x0088fa80, declared_size=68, range_size=68, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroidC1Ev
; demangled: vox::DriverAndroid::DriverAndroid()
; decoder-mode: arm
0088fa80  70 40 2d e9                                      push {r4, r5, r6, lr}
0088fa84  30 40 9f e5                                      ldr r4, [pc, #0x30]
0088fa88  00 50 a0 e1                                      mov r5, r0
0088fa8c  28 06 00 eb                                      bl #0x891334
0088fa90  28 30 9f e5                                      ldr r3, [pc, #0x28]
0088fa94  04 40 8f e0                                      add r4, pc, r4
0088fa98  00 10 a0 e3                                      mov r1, #0
0088fa9c  03 30 94 e7                                      ldr r3, [r4, r3]
0088faa0  05 00 a0 e1                                      mov r0, r5
0088faa4  54 10 85 e5                                      str r1, [r5, #0x54]
0088faa8  08 30 83 e2                                      add r3, r3, #8
0088faac  00 30 85 e5                                      str r3, [r5]
0088fab0  ba ff ff eb                                      bl #0x88f9a0
0088fab4  05 00 a0 e1                                      mov r0, r5
0088fab8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0088fabc  fc 4f 10 00 20 38 00 00                          .byte 0xfc, 0x4f, 0x10, 0x00, 0x20, 0x38, 0x00, 0x00

; FUNCTION 0x0088fae4, declared_size=68, range_size=68, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroidC2Ev
; demangled: vox::DriverAndroid::DriverAndroid()
; decoder-mode: arm
0088fae4  70 40 2d e9                                      push {r4, r5, r6, lr}
0088fae8  30 40 9f e5                                      ldr r4, [pc, #0x30]
0088faec  00 50 a0 e1                                      mov r5, r0
0088faf0  0f 06 00 eb                                      bl #0x891334
0088faf4  28 30 9f e5                                      ldr r3, [pc, #0x28]
0088faf8  04 40 8f e0                                      add r4, pc, r4
0088fafc  00 10 a0 e3                                      mov r1, #0
0088fb00  03 30 94 e7                                      ldr r3, [r4, r3]
0088fb04  05 00 a0 e1                                      mov r0, r5
0088fb08  54 10 85 e5                                      str r1, [r5, #0x54]
0088fb0c  08 30 83 e2                                      add r3, r3, #8
0088fb10  00 30 85 e5                                      str r3, [r5]
0088fb14  a1 ff ff eb                                      bl #0x88f9a0
0088fb18  05 00 a0 e1                                      mov r0, r5
0088fb1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0088fb20  98 4f 10 00 20 38 00 00                          .byte 0x98, 0x4f, 0x10, 0x00, 0x20, 0x38, 0x00, 0x00

; FUNCTION 0x0088fbe8, declared_size=164, range_size=164, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid18CreateDriverSourceEPvS1_i
; demangled: vox::DriverAndroid::CreateDriverSource(void*, void*, int)
; decoder-mode: arm
0088fbe8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088fbec  04 50 80 e2                                      add r5, r0, #4
0088fbf0  00 40 a0 e1                                      mov r4, r0
0088fbf4  05 00 a0 e1                                      mov r0, r5
0088fbf8  01 70 a0 e1                                      mov r7, r1
0088fbfc  02 80 a0 e1                                      mov r8, r2
0088fc00  1d 0e 00 eb                                      bl #0x89347c
0088fc04  08 30 d4 e5                                      ldrb r3, [r4, #8]
0088fc08  00 00 53 e3                                      cmp r3, #0
0088fc0c  04 00 00 1a                                      bne #0x88fc24
0088fc10  05 00 a0 e1                                      mov r0, r5
0088fc14  00 60 a0 e3                                      mov r6, #0
0088fc18  16 0e 00 eb                                      bl #0x893478
0088fc1c  06 00 a0 e1                                      mov r0, r6
0088fc20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088fc24  00 10 a0 e3                                      mov r1, #0
0088fc28  b4 00 a0 e3                                      mov r0, #0xb4
0088fc2c  85 02 ea eb                                      bl #0x310648
0088fc30  07 10 a0 e1                                      mov r1, r7
0088fc34  00 60 a0 e1                                      mov r6, r0
0088fc38  08 20 a0 e1                                      mov r2, r8
0088fc3c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088fc40  d9 ff ff eb                                      bl #0x88fbac
0088fc44  00 00 56 e3                                      cmp r6, #0
0088fc48  f0 ff ff 0a                                      beq #0x88fc10
0088fc4c  00 10 a0 e3                                      mov r1, #0
0088fc50  0c 00 a0 e3                                      mov r0, #0xc
0088fc54  7b 02 ea eb                                      bl #0x310648
0088fc58  08 60 80 e5                                      str r6, [r0, #8]
0088fc5c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0088fc60  10 20 84 e2                                      add r2, r4, #0x10
0088fc64  0c 00 80 e8                                      stm r0, {r2, r3}
0088fc68  00 00 83 e5                                      str r0, [r3]
0088fc6c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088fc70  14 00 84 e5                                      str r0, [r4, #0x14]
0088fc74  05 00 a0 e1                                      mov r0, r5
0088fc78  01 30 83 e2                                      add r3, r3, #1
0088fc7c  0c 30 84 e5                                      str r3, [r4, #0xc]
0088fc80  fc 0d 00 eb                                      bl #0x893478
0088fc84  06 00 a0 e1                                      mov r0, r6
0088fc88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
