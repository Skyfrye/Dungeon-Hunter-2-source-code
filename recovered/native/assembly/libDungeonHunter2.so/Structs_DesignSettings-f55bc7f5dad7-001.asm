; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6a14, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DesignSettings
; alias: _ZN7Structs14DesignSettingsD2Ev
; demangled: Structs::DesignSettings::~DesignSettings()
; decoder-mode: arm
004c6a14  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6a18, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DesignSettings
; alias: _ZN7Structs14DesignSettingsD1Ev
; demangled: Structs::DesignSettings::~DesignSettings()
; decoder-mode: arm
004c6a18  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6a1c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DesignSettings
; alias: _ZN7Structs14DesignSettings8finalizeEv
; demangled: Structs::DesignSettings::finalize()
; decoder-mode: arm
004c6a1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce400, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DesignSettings
; alias: _ZN7Structs14DesignSettingsD0Ev
; demangled: Structs::DesignSettings::~DesignSettings()
; decoder-mode: arm
004ce400  10 40 2d e9                                      push {r4, lr}
004ce404  00 40 a0 e1                                      mov r4, r0
004ce408  82 e1 ff eb                                      bl #0x4c6a18
004ce40c  04 00 a0 e1                                      mov r0, r4
004ce410  0a 08 f9 eb                                      bl #0x310440
004ce414  04 00 a0 e1                                      mov r0, r4
004ce418  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ee0d0, declared_size=3980, range_size=3980, mode=arm
; class-group: Structs::DesignSettings
; alias: _ZN7Structs14DesignSettings4readEP11IStreamBase
; demangled: Structs::DesignSettings::read(IStreamBase*)
; decoder-mode: arm
004ee0d0  30 40 2d e9                                      push {r4, r5, lr}
004ee0d4  00 40 a0 e1                                      mov r4, r0
004ee0d8  0c d0 4d e2                                      sub sp, sp, #0xc
004ee0dc  01 00 a0 e1                                      mov r0, r1
004ee0e0  01 50 a0 e1                                      mov r5, r1
004ee0e4  04 10 84 e2                                      add r1, r4, #4
004ee0e8  17 b6 ff eb                                      bl #0x4db94c
004ee0ec  01 30 a0 e3                                      mov r3, #1
004ee0f0  00 00 53 e3                                      cmp r3, #0
004ee0f4  04 30 8d e5                                      str r3, [sp, #4]
004ee0f8  0f 00 00 1a                                      bne #0x4ee13c
004ee0fc  05 30 84 e2                                      add r3, r4, #5
004ee100  06 20 84 e2                                      add r2, r4, #6
004ee104  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee108  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee10c  02 00 53 e1                                      cmp r3, r2
004ee110  01 10 20 e0                                      eor r1, r0, r1
004ee114  01 10 43 e5                                      strb r1, [r3, #-1]
004ee118  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee11c  00 10 21 e0                                      eor r1, r1, r0
004ee120  01 10 c2 e5                                      strb r1, [r2, #1]
004ee124  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee128  01 20 42 e2                                      sub r2, r2, #1
004ee12c  00 10 21 e0                                      eor r1, r1, r0
004ee130  01 10 43 e5                                      strb r1, [r3, #-1]
004ee134  01 30 83 e2                                      add r3, r3, #1
004ee138  f1 ff ff 3a                                      blo #0x4ee104
004ee13c  05 00 a0 e1                                      mov r0, r5
004ee140  08 10 84 e2                                      add r1, r4, #8
004ee144  00 b6 ff eb                                      bl #0x4db94c
004ee148  01 30 a0 e3                                      mov r3, #1
004ee14c  00 00 53 e3                                      cmp r3, #0
004ee150  04 30 8d e5                                      str r3, [sp, #4]
004ee154  0f 00 00 1a                                      bne #0x4ee198
004ee158  09 30 84 e2                                      add r3, r4, #9
004ee15c  0a 20 84 e2                                      add r2, r4, #0xa
004ee160  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee164  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee168  02 00 53 e1                                      cmp r3, r2
004ee16c  01 10 20 e0                                      eor r1, r0, r1
004ee170  01 10 43 e5                                      strb r1, [r3, #-1]
004ee174  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee178  00 10 21 e0                                      eor r1, r1, r0
004ee17c  01 10 c2 e5                                      strb r1, [r2, #1]
004ee180  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee184  01 20 42 e2                                      sub r2, r2, #1
004ee188  00 10 21 e0                                      eor r1, r1, r0
004ee18c  01 10 43 e5                                      strb r1, [r3, #-1]
004ee190  01 30 83 e2                                      add r3, r3, #1
004ee194  f1 ff ff 3a                                      blo #0x4ee160
004ee198  05 00 a0 e1                                      mov r0, r5
004ee19c  0c 10 84 e2                                      add r1, r4, #0xc
004ee1a0  e9 b5 ff eb                                      bl #0x4db94c
004ee1a4  01 30 a0 e3                                      mov r3, #1
004ee1a8  00 00 53 e3                                      cmp r3, #0
004ee1ac  04 30 8d e5                                      str r3, [sp, #4]
004ee1b0  0f 00 00 1a                                      bne #0x4ee1f4
004ee1b4  0d 30 84 e2                                      add r3, r4, #0xd
004ee1b8  0e 20 84 e2                                      add r2, r4, #0xe
004ee1bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee1c0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee1c4  02 00 53 e1                                      cmp r3, r2
004ee1c8  01 10 20 e0                                      eor r1, r0, r1
004ee1cc  01 10 43 e5                                      strb r1, [r3, #-1]
004ee1d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee1d4  00 10 21 e0                                      eor r1, r1, r0
004ee1d8  01 10 c2 e5                                      strb r1, [r2, #1]
004ee1dc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee1e0  01 20 42 e2                                      sub r2, r2, #1
004ee1e4  00 10 21 e0                                      eor r1, r1, r0
004ee1e8  01 10 43 e5                                      strb r1, [r3, #-1]
004ee1ec  01 30 83 e2                                      add r3, r3, #1
004ee1f0  f1 ff ff 3a                                      blo #0x4ee1bc
004ee1f4  05 00 a0 e1                                      mov r0, r5
004ee1f8  10 10 84 e2                                      add r1, r4, #0x10
004ee1fc  d2 b5 ff eb                                      bl #0x4db94c
004ee200  01 30 a0 e3                                      mov r3, #1
004ee204  00 00 53 e3                                      cmp r3, #0
004ee208  04 30 8d e5                                      str r3, [sp, #4]
004ee20c  0f 00 00 1a                                      bne #0x4ee250
004ee210  11 30 84 e2                                      add r3, r4, #0x11
004ee214  12 20 84 e2                                      add r2, r4, #0x12
004ee218  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee21c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee220  02 00 53 e1                                      cmp r3, r2
004ee224  01 10 20 e0                                      eor r1, r0, r1
004ee228  01 10 43 e5                                      strb r1, [r3, #-1]
004ee22c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee230  00 10 21 e0                                      eor r1, r1, r0
004ee234  01 10 c2 e5                                      strb r1, [r2, #1]
004ee238  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee23c  01 20 42 e2                                      sub r2, r2, #1
004ee240  00 10 21 e0                                      eor r1, r1, r0
004ee244  01 10 43 e5                                      strb r1, [r3, #-1]
004ee248  01 30 83 e2                                      add r3, r3, #1
004ee24c  f1 ff ff 3a                                      blo #0x4ee218
004ee250  05 00 a0 e1                                      mov r0, r5
004ee254  14 10 84 e2                                      add r1, r4, #0x14
004ee258  8c ab fd eb                                      bl #0x459090
004ee25c  01 30 a0 e3                                      mov r3, #1
004ee260  00 00 53 e3                                      cmp r3, #0
004ee264  04 30 8d e5                                      str r3, [sp, #4]
004ee268  0f 00 00 1a                                      bne #0x4ee2ac
004ee26c  15 30 84 e2                                      add r3, r4, #0x15
004ee270  16 20 84 e2                                      add r2, r4, #0x16
004ee274  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee278  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee27c  02 00 53 e1                                      cmp r3, r2
004ee280  01 10 20 e0                                      eor r1, r0, r1
004ee284  01 10 43 e5                                      strb r1, [r3, #-1]
004ee288  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee28c  00 10 21 e0                                      eor r1, r1, r0
004ee290  01 10 c2 e5                                      strb r1, [r2, #1]
004ee294  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee298  01 20 42 e2                                      sub r2, r2, #1
004ee29c  00 10 21 e0                                      eor r1, r1, r0
004ee2a0  01 10 43 e5                                      strb r1, [r3, #-1]
004ee2a4  01 30 83 e2                                      add r3, r3, #1
004ee2a8  f1 ff ff 3a                                      blo #0x4ee274
004ee2ac  05 00 a0 e1                                      mov r0, r5
004ee2b0  18 10 84 e2                                      add r1, r4, #0x18
004ee2b4  a4 b5 ff eb                                      bl #0x4db94c
004ee2b8  01 30 a0 e3                                      mov r3, #1
004ee2bc  00 00 53 e3                                      cmp r3, #0
004ee2c0  04 30 8d e5                                      str r3, [sp, #4]
004ee2c4  0f 00 00 1a                                      bne #0x4ee308
004ee2c8  19 30 84 e2                                      add r3, r4, #0x19
004ee2cc  1a 20 84 e2                                      add r2, r4, #0x1a
004ee2d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee2d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee2d8  02 00 53 e1                                      cmp r3, r2
004ee2dc  01 10 20 e0                                      eor r1, r0, r1
004ee2e0  01 10 43 e5                                      strb r1, [r3, #-1]
004ee2e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee2e8  00 10 21 e0                                      eor r1, r1, r0
004ee2ec  01 10 c2 e5                                      strb r1, [r2, #1]
004ee2f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee2f4  01 20 42 e2                                      sub r2, r2, #1
004ee2f8  00 10 21 e0                                      eor r1, r1, r0
004ee2fc  01 10 43 e5                                      strb r1, [r3, #-1]
004ee300  01 30 83 e2                                      add r3, r3, #1
004ee304  f1 ff ff 3a                                      blo #0x4ee2d0
004ee308  05 00 a0 e1                                      mov r0, r5
004ee30c  1c 10 84 e2                                      add r1, r4, #0x1c
004ee310  8d b5 ff eb                                      bl #0x4db94c
004ee314  01 30 a0 e3                                      mov r3, #1
004ee318  00 00 53 e3                                      cmp r3, #0
004ee31c  04 30 8d e5                                      str r3, [sp, #4]
004ee320  0f 00 00 1a                                      bne #0x4ee364
004ee324  1d 30 84 e2                                      add r3, r4, #0x1d
004ee328  1e 20 84 e2                                      add r2, r4, #0x1e
004ee32c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee330  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee334  02 00 53 e1                                      cmp r3, r2
004ee338  01 10 20 e0                                      eor r1, r0, r1
004ee33c  01 10 43 e5                                      strb r1, [r3, #-1]
004ee340  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee344  00 10 21 e0                                      eor r1, r1, r0
004ee348  01 10 c2 e5                                      strb r1, [r2, #1]
004ee34c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee350  01 20 42 e2                                      sub r2, r2, #1
004ee354  00 10 21 e0                                      eor r1, r1, r0
004ee358  01 10 43 e5                                      strb r1, [r3, #-1]
004ee35c  01 30 83 e2                                      add r3, r3, #1
004ee360  f1 ff ff 3a                                      blo #0x4ee32c
004ee364  05 00 a0 e1                                      mov r0, r5
004ee368  20 10 84 e2                                      add r1, r4, #0x20
004ee36c  76 b5 ff eb                                      bl #0x4db94c
004ee370  01 30 a0 e3                                      mov r3, #1
004ee374  00 00 53 e3                                      cmp r3, #0
004ee378  04 30 8d e5                                      str r3, [sp, #4]
004ee37c  0f 00 00 1a                                      bne #0x4ee3c0
004ee380  21 30 84 e2                                      add r3, r4, #0x21
004ee384  22 20 84 e2                                      add r2, r4, #0x22
004ee388  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee38c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee390  02 00 53 e1                                      cmp r3, r2
004ee394  01 10 20 e0                                      eor r1, r0, r1
004ee398  01 10 43 e5                                      strb r1, [r3, #-1]
004ee39c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee3a0  00 10 21 e0                                      eor r1, r1, r0
004ee3a4  01 10 c2 e5                                      strb r1, [r2, #1]
004ee3a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee3ac  01 20 42 e2                                      sub r2, r2, #1
004ee3b0  00 10 21 e0                                      eor r1, r1, r0
004ee3b4  01 10 43 e5                                      strb r1, [r3, #-1]
004ee3b8  01 30 83 e2                                      add r3, r3, #1
004ee3bc  f1 ff ff 3a                                      blo #0x4ee388
004ee3c0  05 00 a0 e1                                      mov r0, r5
004ee3c4  24 10 84 e2                                      add r1, r4, #0x24
004ee3c8  30 ab fd eb                                      bl #0x459090
004ee3cc  01 30 a0 e3                                      mov r3, #1
004ee3d0  00 00 53 e3                                      cmp r3, #0
004ee3d4  04 30 8d e5                                      str r3, [sp, #4]
004ee3d8  0f 00 00 1a                                      bne #0x4ee41c
004ee3dc  25 30 84 e2                                      add r3, r4, #0x25
004ee3e0  26 20 84 e2                                      add r2, r4, #0x26
004ee3e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee3e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee3ec  02 00 53 e1                                      cmp r3, r2
004ee3f0  01 10 20 e0                                      eor r1, r0, r1
004ee3f4  01 10 43 e5                                      strb r1, [r3, #-1]
004ee3f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee3fc  00 10 21 e0                                      eor r1, r1, r0
004ee400  01 10 c2 e5                                      strb r1, [r2, #1]
004ee404  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee408  01 20 42 e2                                      sub r2, r2, #1
004ee40c  00 10 21 e0                                      eor r1, r1, r0
004ee410  01 10 43 e5                                      strb r1, [r3, #-1]
004ee414  01 30 83 e2                                      add r3, r3, #1
004ee418  f1 ff ff 3a                                      blo #0x4ee3e4
004ee41c  05 00 a0 e1                                      mov r0, r5
004ee420  28 10 84 e2                                      add r1, r4, #0x28
004ee424  19 ab fd eb                                      bl #0x459090
004ee428  01 30 a0 e3                                      mov r3, #1
004ee42c  00 00 53 e3                                      cmp r3, #0
004ee430  04 30 8d e5                                      str r3, [sp, #4]
004ee434  0f 00 00 1a                                      bne #0x4ee478
004ee438  29 30 84 e2                                      add r3, r4, #0x29
004ee43c  2a 20 84 e2                                      add r2, r4, #0x2a
004ee440  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee444  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee448  02 00 53 e1                                      cmp r3, r2
004ee44c  01 10 20 e0                                      eor r1, r0, r1
004ee450  01 10 43 e5                                      strb r1, [r3, #-1]
004ee454  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee458  00 10 21 e0                                      eor r1, r1, r0
004ee45c  01 10 c2 e5                                      strb r1, [r2, #1]
004ee460  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee464  01 20 42 e2                                      sub r2, r2, #1
004ee468  00 10 21 e0                                      eor r1, r1, r0
004ee46c  01 10 43 e5                                      strb r1, [r3, #-1]
004ee470  01 30 83 e2                                      add r3, r3, #1
004ee474  f1 ff ff 3a                                      blo #0x4ee440
004ee478  05 00 a0 e1                                      mov r0, r5
004ee47c  2c 10 84 e2                                      add r1, r4, #0x2c
004ee480  31 b5 ff eb                                      bl #0x4db94c
004ee484  01 30 a0 e3                                      mov r3, #1
004ee488  00 00 53 e3                                      cmp r3, #0
004ee48c  04 30 8d e5                                      str r3, [sp, #4]
004ee490  0f 00 00 1a                                      bne #0x4ee4d4
004ee494  2d 30 84 e2                                      add r3, r4, #0x2d
004ee498  2e 20 84 e2                                      add r2, r4, #0x2e
004ee49c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee4a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee4a4  02 00 53 e1                                      cmp r3, r2
004ee4a8  01 10 20 e0                                      eor r1, r0, r1
004ee4ac  01 10 43 e5                                      strb r1, [r3, #-1]
004ee4b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee4b4  00 10 21 e0                                      eor r1, r1, r0
004ee4b8  01 10 c2 e5                                      strb r1, [r2, #1]
004ee4bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee4c0  01 20 42 e2                                      sub r2, r2, #1
004ee4c4  00 10 21 e0                                      eor r1, r1, r0
004ee4c8  01 10 43 e5                                      strb r1, [r3, #-1]
004ee4cc  01 30 83 e2                                      add r3, r3, #1
004ee4d0  f1 ff ff 3a                                      blo #0x4ee49c
004ee4d4  05 00 a0 e1                                      mov r0, r5
004ee4d8  30 10 84 e2                                      add r1, r4, #0x30
004ee4dc  1a b5 ff eb                                      bl #0x4db94c
004ee4e0  01 30 a0 e3                                      mov r3, #1
004ee4e4  00 00 53 e3                                      cmp r3, #0
004ee4e8  04 30 8d e5                                      str r3, [sp, #4]
004ee4ec  0f 00 00 1a                                      bne #0x4ee530
004ee4f0  31 30 84 e2                                      add r3, r4, #0x31
004ee4f4  32 20 84 e2                                      add r2, r4, #0x32
004ee4f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee4fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee500  02 00 53 e1                                      cmp r3, r2
004ee504  01 10 20 e0                                      eor r1, r0, r1
004ee508  01 10 43 e5                                      strb r1, [r3, #-1]
004ee50c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee510  00 10 21 e0                                      eor r1, r1, r0
004ee514  01 10 c2 e5                                      strb r1, [r2, #1]
004ee518  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee51c  01 20 42 e2                                      sub r2, r2, #1
004ee520  00 10 21 e0                                      eor r1, r1, r0
004ee524  01 10 43 e5                                      strb r1, [r3, #-1]
004ee528  01 30 83 e2                                      add r3, r3, #1
004ee52c  f1 ff ff 3a                                      blo #0x4ee4f8
004ee530  05 00 a0 e1                                      mov r0, r5
004ee534  34 10 84 e2                                      add r1, r4, #0x34
004ee538  03 b5 ff eb                                      bl #0x4db94c
004ee53c  01 30 a0 e3                                      mov r3, #1
004ee540  00 00 53 e3                                      cmp r3, #0
004ee544  04 30 8d e5                                      str r3, [sp, #4]
004ee548  0f 00 00 1a                                      bne #0x4ee58c
004ee54c  35 30 84 e2                                      add r3, r4, #0x35
004ee550  36 20 84 e2                                      add r2, r4, #0x36
004ee554  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee558  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee55c  02 00 53 e1                                      cmp r3, r2
004ee560  01 10 20 e0                                      eor r1, r0, r1
004ee564  01 10 43 e5                                      strb r1, [r3, #-1]
004ee568  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee56c  00 10 21 e0                                      eor r1, r1, r0
004ee570  01 10 c2 e5                                      strb r1, [r2, #1]
004ee574  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee578  01 20 42 e2                                      sub r2, r2, #1
004ee57c  00 10 21 e0                                      eor r1, r1, r0
004ee580  01 10 43 e5                                      strb r1, [r3, #-1]
004ee584  01 30 83 e2                                      add r3, r3, #1
004ee588  f1 ff ff 3a                                      blo #0x4ee554
004ee58c  05 00 a0 e1                                      mov r0, r5
004ee590  38 10 84 e2                                      add r1, r4, #0x38
004ee594  ec b4 ff eb                                      bl #0x4db94c
004ee598  01 30 a0 e3                                      mov r3, #1
004ee59c  00 00 53 e3                                      cmp r3, #0
004ee5a0  04 30 8d e5                                      str r3, [sp, #4]
004ee5a4  0f 00 00 1a                                      bne #0x4ee5e8
004ee5a8  39 30 84 e2                                      add r3, r4, #0x39
004ee5ac  3a 20 84 e2                                      add r2, r4, #0x3a
004ee5b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee5b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee5b8  02 00 53 e1                                      cmp r3, r2
004ee5bc  01 10 20 e0                                      eor r1, r0, r1
004ee5c0  01 10 43 e5                                      strb r1, [r3, #-1]
004ee5c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee5c8  00 10 21 e0                                      eor r1, r1, r0
004ee5cc  01 10 c2 e5                                      strb r1, [r2, #1]
004ee5d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee5d4  01 20 42 e2                                      sub r2, r2, #1
004ee5d8  00 10 21 e0                                      eor r1, r1, r0
004ee5dc  01 10 43 e5                                      strb r1, [r3, #-1]
004ee5e0  01 30 83 e2                                      add r3, r3, #1
004ee5e4  f1 ff ff 3a                                      blo #0x4ee5b0
004ee5e8  05 00 a0 e1                                      mov r0, r5
004ee5ec  3c 10 84 e2                                      add r1, r4, #0x3c
004ee5f0  d5 b4 ff eb                                      bl #0x4db94c
004ee5f4  01 30 a0 e3                                      mov r3, #1
004ee5f8  00 00 53 e3                                      cmp r3, #0
004ee5fc  04 30 8d e5                                      str r3, [sp, #4]
004ee600  0f 00 00 1a                                      bne #0x4ee644
004ee604  3d 30 84 e2                                      add r3, r4, #0x3d
004ee608  3e 20 84 e2                                      add r2, r4, #0x3e
004ee60c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee610  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee614  02 00 53 e1                                      cmp r3, r2
004ee618  01 10 20 e0                                      eor r1, r0, r1
004ee61c  01 10 43 e5                                      strb r1, [r3, #-1]
004ee620  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee624  00 10 21 e0                                      eor r1, r1, r0
004ee628  01 10 c2 e5                                      strb r1, [r2, #1]
004ee62c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee630  01 20 42 e2                                      sub r2, r2, #1
004ee634  00 10 21 e0                                      eor r1, r1, r0
004ee638  01 10 43 e5                                      strb r1, [r3, #-1]
004ee63c  01 30 83 e2                                      add r3, r3, #1
004ee640  f1 ff ff 3a                                      blo #0x4ee60c
004ee644  05 00 a0 e1                                      mov r0, r5
004ee648  40 10 84 e2                                      add r1, r4, #0x40
004ee64c  be b4 ff eb                                      bl #0x4db94c
004ee650  01 30 a0 e3                                      mov r3, #1
004ee654  00 00 53 e3                                      cmp r3, #0
004ee658  04 30 8d e5                                      str r3, [sp, #4]
004ee65c  0f 00 00 1a                                      bne #0x4ee6a0
004ee660  41 30 84 e2                                      add r3, r4, #0x41
004ee664  42 20 84 e2                                      add r2, r4, #0x42
004ee668  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee66c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee670  02 00 53 e1                                      cmp r3, r2
004ee674  01 10 20 e0                                      eor r1, r0, r1
004ee678  01 10 43 e5                                      strb r1, [r3, #-1]
004ee67c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee680  00 10 21 e0                                      eor r1, r1, r0
004ee684  01 10 c2 e5                                      strb r1, [r2, #1]
004ee688  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee68c  01 20 42 e2                                      sub r2, r2, #1
004ee690  00 10 21 e0                                      eor r1, r1, r0
004ee694  01 10 43 e5                                      strb r1, [r3, #-1]
004ee698  01 30 83 e2                                      add r3, r3, #1
004ee69c  f1 ff ff 3a                                      blo #0x4ee668
004ee6a0  05 00 a0 e1                                      mov r0, r5
004ee6a4  44 10 84 e2                                      add r1, r4, #0x44
004ee6a8  a7 b4 ff eb                                      bl #0x4db94c
004ee6ac  01 30 a0 e3                                      mov r3, #1
004ee6b0  00 00 53 e3                                      cmp r3, #0
004ee6b4  04 30 8d e5                                      str r3, [sp, #4]
004ee6b8  0f 00 00 1a                                      bne #0x4ee6fc
004ee6bc  45 30 84 e2                                      add r3, r4, #0x45
004ee6c0  46 20 84 e2                                      add r2, r4, #0x46
004ee6c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee6c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee6cc  02 00 53 e1                                      cmp r3, r2
004ee6d0  01 10 20 e0                                      eor r1, r0, r1
004ee6d4  01 10 43 e5                                      strb r1, [r3, #-1]
004ee6d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee6dc  00 10 21 e0                                      eor r1, r1, r0
004ee6e0  01 10 c2 e5                                      strb r1, [r2, #1]
004ee6e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee6e8  01 20 42 e2                                      sub r2, r2, #1
004ee6ec  00 10 21 e0                                      eor r1, r1, r0
004ee6f0  01 10 43 e5                                      strb r1, [r3, #-1]
004ee6f4  01 30 83 e2                                      add r3, r3, #1
004ee6f8  f1 ff ff 3a                                      blo #0x4ee6c4
004ee6fc  05 00 a0 e1                                      mov r0, r5
004ee700  48 10 84 e2                                      add r1, r4, #0x48
004ee704  90 b4 ff eb                                      bl #0x4db94c
004ee708  01 30 a0 e3                                      mov r3, #1
004ee70c  00 00 53 e3                                      cmp r3, #0
004ee710  04 30 8d e5                                      str r3, [sp, #4]
004ee714  0f 00 00 1a                                      bne #0x4ee758
004ee718  49 30 84 e2                                      add r3, r4, #0x49
004ee71c  4a 20 84 e2                                      add r2, r4, #0x4a
004ee720  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee724  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee728  02 00 53 e1                                      cmp r3, r2
004ee72c  01 10 20 e0                                      eor r1, r0, r1
004ee730  01 10 43 e5                                      strb r1, [r3, #-1]
004ee734  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee738  00 10 21 e0                                      eor r1, r1, r0
004ee73c  01 10 c2 e5                                      strb r1, [r2, #1]
004ee740  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee744  01 20 42 e2                                      sub r2, r2, #1
004ee748  00 10 21 e0                                      eor r1, r1, r0
004ee74c  01 10 43 e5                                      strb r1, [r3, #-1]
004ee750  01 30 83 e2                                      add r3, r3, #1
004ee754  f1 ff ff 3a                                      blo #0x4ee720
004ee758  05 00 a0 e1                                      mov r0, r5
004ee75c  4c 10 84 e2                                      add r1, r4, #0x4c
004ee760  79 b4 ff eb                                      bl #0x4db94c
004ee764  01 30 a0 e3                                      mov r3, #1
004ee768  00 00 53 e3                                      cmp r3, #0
004ee76c  04 30 8d e5                                      str r3, [sp, #4]
004ee770  0f 00 00 1a                                      bne #0x4ee7b4
004ee774  4d 30 84 e2                                      add r3, r4, #0x4d
004ee778  4e 20 84 e2                                      add r2, r4, #0x4e
004ee77c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee780  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee784  02 00 53 e1                                      cmp r3, r2
004ee788  01 10 20 e0                                      eor r1, r0, r1
004ee78c  01 10 43 e5                                      strb r1, [r3, #-1]
004ee790  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee794  00 10 21 e0                                      eor r1, r1, r0
004ee798  01 10 c2 e5                                      strb r1, [r2, #1]
004ee79c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee7a0  01 20 42 e2                                      sub r2, r2, #1
004ee7a4  00 10 21 e0                                      eor r1, r1, r0
004ee7a8  01 10 43 e5                                      strb r1, [r3, #-1]
004ee7ac  01 30 83 e2                                      add r3, r3, #1
004ee7b0  f1 ff ff 3a                                      blo #0x4ee77c
004ee7b4  05 00 a0 e1                                      mov r0, r5
004ee7b8  50 10 84 e2                                      add r1, r4, #0x50
004ee7bc  62 b4 ff eb                                      bl #0x4db94c
004ee7c0  01 30 a0 e3                                      mov r3, #1
004ee7c4  00 00 53 e3                                      cmp r3, #0
004ee7c8  04 30 8d e5                                      str r3, [sp, #4]
004ee7cc  0f 00 00 1a                                      bne #0x4ee810
004ee7d0  51 30 84 e2                                      add r3, r4, #0x51
004ee7d4  52 20 84 e2                                      add r2, r4, #0x52
004ee7d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee7dc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee7e0  02 00 53 e1                                      cmp r3, r2
004ee7e4  01 10 20 e0                                      eor r1, r0, r1
004ee7e8  01 10 43 e5                                      strb r1, [r3, #-1]
004ee7ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee7f0  00 10 21 e0                                      eor r1, r1, r0
004ee7f4  01 10 c2 e5                                      strb r1, [r2, #1]
004ee7f8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee7fc  01 20 42 e2                                      sub r2, r2, #1
004ee800  00 10 21 e0                                      eor r1, r1, r0
004ee804  01 10 43 e5                                      strb r1, [r3, #-1]
004ee808  01 30 83 e2                                      add r3, r3, #1
004ee80c  f1 ff ff 3a                                      blo #0x4ee7d8
004ee810  05 00 a0 e1                                      mov r0, r5
004ee814  54 10 84 e2                                      add r1, r4, #0x54
004ee818  4b b4 ff eb                                      bl #0x4db94c
004ee81c  01 30 a0 e3                                      mov r3, #1
004ee820  00 00 53 e3                                      cmp r3, #0
004ee824  04 30 8d e5                                      str r3, [sp, #4]
004ee828  0f 00 00 1a                                      bne #0x4ee86c
004ee82c  55 30 84 e2                                      add r3, r4, #0x55
004ee830  56 20 84 e2                                      add r2, r4, #0x56
004ee834  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee838  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee83c  02 00 53 e1                                      cmp r3, r2
004ee840  01 10 20 e0                                      eor r1, r0, r1
004ee844  01 10 43 e5                                      strb r1, [r3, #-1]
004ee848  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee84c  00 10 21 e0                                      eor r1, r1, r0
004ee850  01 10 c2 e5                                      strb r1, [r2, #1]
004ee854  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee858  01 20 42 e2                                      sub r2, r2, #1
004ee85c  00 10 21 e0                                      eor r1, r1, r0
004ee860  01 10 43 e5                                      strb r1, [r3, #-1]
004ee864  01 30 83 e2                                      add r3, r3, #1
004ee868  f1 ff ff 3a                                      blo #0x4ee834
004ee86c  05 00 a0 e1                                      mov r0, r5
004ee870  58 10 84 e2                                      add r1, r4, #0x58
004ee874  34 b4 ff eb                                      bl #0x4db94c
004ee878  01 30 a0 e3                                      mov r3, #1
004ee87c  00 00 53 e3                                      cmp r3, #0
004ee880  04 30 8d e5                                      str r3, [sp, #4]
004ee884  0f 00 00 1a                                      bne #0x4ee8c8
004ee888  59 30 84 e2                                      add r3, r4, #0x59
004ee88c  5a 20 84 e2                                      add r2, r4, #0x5a
004ee890  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee894  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee898  02 00 53 e1                                      cmp r3, r2
004ee89c  01 10 20 e0                                      eor r1, r0, r1
004ee8a0  01 10 43 e5                                      strb r1, [r3, #-1]
004ee8a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee8a8  00 10 21 e0                                      eor r1, r1, r0
004ee8ac  01 10 c2 e5                                      strb r1, [r2, #1]
004ee8b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee8b4  01 20 42 e2                                      sub r2, r2, #1
004ee8b8  00 10 21 e0                                      eor r1, r1, r0
004ee8bc  01 10 43 e5                                      strb r1, [r3, #-1]
004ee8c0  01 30 83 e2                                      add r3, r3, #1
004ee8c4  f1 ff ff 3a                                      blo #0x4ee890
004ee8c8  05 00 a0 e1                                      mov r0, r5
004ee8cc  5c 10 84 e2                                      add r1, r4, #0x5c
004ee8d0  1d b4 ff eb                                      bl #0x4db94c
004ee8d4  01 30 a0 e3                                      mov r3, #1
004ee8d8  00 00 53 e3                                      cmp r3, #0
004ee8dc  04 30 8d e5                                      str r3, [sp, #4]
004ee8e0  0f 00 00 1a                                      bne #0x4ee924
004ee8e4  5d 30 84 e2                                      add r3, r4, #0x5d
004ee8e8  5e 20 84 e2                                      add r2, r4, #0x5e
004ee8ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee8f0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee8f4  02 00 53 e1                                      cmp r3, r2
004ee8f8  01 10 20 e0                                      eor r1, r0, r1
004ee8fc  01 10 43 e5                                      strb r1, [r3, #-1]
004ee900  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee904  00 10 21 e0                                      eor r1, r1, r0
004ee908  01 10 c2 e5                                      strb r1, [r2, #1]
004ee90c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee910  01 20 42 e2                                      sub r2, r2, #1
004ee914  00 10 21 e0                                      eor r1, r1, r0
004ee918  01 10 43 e5                                      strb r1, [r3, #-1]
004ee91c  01 30 83 e2                                      add r3, r3, #1
004ee920  f1 ff ff 3a                                      blo #0x4ee8ec
004ee924  05 00 a0 e1                                      mov r0, r5
004ee928  60 10 84 e2                                      add r1, r4, #0x60
004ee92c  06 b4 ff eb                                      bl #0x4db94c
004ee930  01 30 a0 e3                                      mov r3, #1
004ee934  00 00 53 e3                                      cmp r3, #0
004ee938  04 30 8d e5                                      str r3, [sp, #4]
004ee93c  0f 00 00 1a                                      bne #0x4ee980
004ee940  61 30 84 e2                                      add r3, r4, #0x61
004ee944  62 20 84 e2                                      add r2, r4, #0x62
004ee948  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee94c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee950  02 00 53 e1                                      cmp r3, r2
004ee954  01 10 20 e0                                      eor r1, r0, r1
004ee958  01 10 43 e5                                      strb r1, [r3, #-1]
004ee95c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee960  00 10 21 e0                                      eor r1, r1, r0
004ee964  01 10 c2 e5                                      strb r1, [r2, #1]
004ee968  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee96c  01 20 42 e2                                      sub r2, r2, #1
004ee970  00 10 21 e0                                      eor r1, r1, r0
004ee974  01 10 43 e5                                      strb r1, [r3, #-1]
004ee978  01 30 83 e2                                      add r3, r3, #1
004ee97c  f1 ff ff 3a                                      blo #0x4ee948
004ee980  05 00 a0 e1                                      mov r0, r5
004ee984  64 10 84 e2                                      add r1, r4, #0x64
004ee988  c0 a9 fd eb                                      bl #0x459090
004ee98c  01 30 a0 e3                                      mov r3, #1
004ee990  00 00 53 e3                                      cmp r3, #0
004ee994  04 30 8d e5                                      str r3, [sp, #4]
004ee998  0f 00 00 1a                                      bne #0x4ee9dc
004ee99c  65 30 84 e2                                      add r3, r4, #0x65
004ee9a0  66 20 84 e2                                      add r2, r4, #0x66
004ee9a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee9a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee9ac  02 00 53 e1                                      cmp r3, r2
004ee9b0  01 10 20 e0                                      eor r1, r0, r1
004ee9b4  01 10 43 e5                                      strb r1, [r3, #-1]
004ee9b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee9bc  00 10 21 e0                                      eor r1, r1, r0
004ee9c0  01 10 c2 e5                                      strb r1, [r2, #1]
004ee9c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee9c8  01 20 42 e2                                      sub r2, r2, #1
004ee9cc  00 10 21 e0                                      eor r1, r1, r0
004ee9d0  01 10 43 e5                                      strb r1, [r3, #-1]
004ee9d4  01 30 83 e2                                      add r3, r3, #1
004ee9d8  f1 ff ff 3a                                      blo #0x4ee9a4
004ee9dc  05 00 a0 e1                                      mov r0, r5
004ee9e0  68 10 84 e2                                      add r1, r4, #0x68
004ee9e4  a9 a9 fd eb                                      bl #0x459090
004ee9e8  01 30 a0 e3                                      mov r3, #1
004ee9ec  00 00 53 e3                                      cmp r3, #0
004ee9f0  04 30 8d e5                                      str r3, [sp, #4]
004ee9f4  0f 00 00 1a                                      bne #0x4eea38
004ee9f8  69 30 84 e2                                      add r3, r4, #0x69
004ee9fc  6a 20 84 e2                                      add r2, r4, #0x6a
004eea00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eea04  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eea08  02 00 53 e1                                      cmp r3, r2
004eea0c  01 10 20 e0                                      eor r1, r0, r1
004eea10  01 10 43 e5                                      strb r1, [r3, #-1]
004eea14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eea18  00 10 21 e0                                      eor r1, r1, r0
004eea1c  01 10 c2 e5                                      strb r1, [r2, #1]
004eea20  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eea24  01 20 42 e2                                      sub r2, r2, #1
004eea28  00 10 21 e0                                      eor r1, r1, r0
004eea2c  01 10 43 e5                                      strb r1, [r3, #-1]
004eea30  01 30 83 e2                                      add r3, r3, #1
004eea34  f1 ff ff 3a                                      blo #0x4eea00
004eea38  05 00 a0 e1                                      mov r0, r5
004eea3c  6c 10 84 e2                                      add r1, r4, #0x6c
004eea40  92 a9 fd eb                                      bl #0x459090
004eea44  01 30 a0 e3                                      mov r3, #1
004eea48  00 00 53 e3                                      cmp r3, #0
004eea4c  04 30 8d e5                                      str r3, [sp, #4]
004eea50  0f 00 00 1a                                      bne #0x4eea94
004eea54  6d 30 84 e2                                      add r3, r4, #0x6d
004eea58  6e 20 84 e2                                      add r2, r4, #0x6e
004eea5c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eea60  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eea64  02 00 53 e1                                      cmp r3, r2
004eea68  01 10 20 e0                                      eor r1, r0, r1
004eea6c  01 10 43 e5                                      strb r1, [r3, #-1]
004eea70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eea74  00 10 21 e0                                      eor r1, r1, r0
004eea78  01 10 c2 e5                                      strb r1, [r2, #1]
004eea7c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eea80  01 20 42 e2                                      sub r2, r2, #1
004eea84  00 10 21 e0                                      eor r1, r1, r0
004eea88  01 10 43 e5                                      strb r1, [r3, #-1]
004eea8c  01 30 83 e2                                      add r3, r3, #1
004eea90  f1 ff ff 3a                                      blo #0x4eea5c
004eea94  05 00 a0 e1                                      mov r0, r5
004eea98  70 10 84 e2                                      add r1, r4, #0x70
004eea9c  7b a9 fd eb                                      bl #0x459090
004eeaa0  01 30 a0 e3                                      mov r3, #1
004eeaa4  00 00 53 e3                                      cmp r3, #0
004eeaa8  04 30 8d e5                                      str r3, [sp, #4]
004eeaac  0f 00 00 1a                                      bne #0x4eeaf0
004eeab0  71 30 84 e2                                      add r3, r4, #0x71
004eeab4  72 20 84 e2                                      add r2, r4, #0x72
004eeab8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eeabc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eeac0  02 00 53 e1                                      cmp r3, r2
004eeac4  01 10 20 e0                                      eor r1, r0, r1
004eeac8  01 10 43 e5                                      strb r1, [r3, #-1]
004eeacc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eead0  00 10 21 e0                                      eor r1, r1, r0
004eead4  01 10 c2 e5                                      strb r1, [r2, #1]
004eead8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eeadc  01 20 42 e2                                      sub r2, r2, #1
004eeae0  00 10 21 e0                                      eor r1, r1, r0
004eeae4  01 10 43 e5                                      strb r1, [r3, #-1]
004eeae8  01 30 83 e2                                      add r3, r3, #1
004eeaec  f1 ff ff 3a                                      blo #0x4eeab8
004eeaf0  05 00 a0 e1                                      mov r0, r5
004eeaf4  74 10 84 e2                                      add r1, r4, #0x74
004eeaf8  64 a9 fd eb                                      bl #0x459090
004eeafc  01 30 a0 e3                                      mov r3, #1
004eeb00  00 00 53 e3                                      cmp r3, #0
004eeb04  04 30 8d e5                                      str r3, [sp, #4]
004eeb08  0f 00 00 1a                                      bne #0x4eeb4c
004eeb0c  75 30 84 e2                                      add r3, r4, #0x75
004eeb10  76 20 84 e2                                      add r2, r4, #0x76
004eeb14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eeb18  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eeb1c  02 00 53 e1                                      cmp r3, r2
004eeb20  01 10 20 e0                                      eor r1, r0, r1
004eeb24  01 10 43 e5                                      strb r1, [r3, #-1]
004eeb28  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eeb2c  00 10 21 e0                                      eor r1, r1, r0
004eeb30  01 10 c2 e5                                      strb r1, [r2, #1]
004eeb34  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eeb38  01 20 42 e2                                      sub r2, r2, #1
004eeb3c  00 10 21 e0                                      eor r1, r1, r0
004eeb40  01 10 43 e5                                      strb r1, [r3, #-1]
004eeb44  01 30 83 e2                                      add r3, r3, #1
004eeb48  f1 ff ff 3a                                      blo #0x4eeb14
004eeb4c  05 00 a0 e1                                      mov r0, r5
004eeb50  78 10 84 e2                                      add r1, r4, #0x78
004eeb54  4d a9 fd eb                                      bl #0x459090
004eeb58  01 30 a0 e3                                      mov r3, #1
004eeb5c  00 00 53 e3                                      cmp r3, #0
004eeb60  04 30 8d e5                                      str r3, [sp, #4]
004eeb64  0f 00 00 1a                                      bne #0x4eeba8
004eeb68  79 30 84 e2                                      add r3, r4, #0x79
004eeb6c  7a 20 84 e2                                      add r2, r4, #0x7a
004eeb70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eeb74  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eeb78  02 00 53 e1                                      cmp r3, r2
004eeb7c  01 10 20 e0                                      eor r1, r0, r1
004eeb80  01 10 43 e5                                      strb r1, [r3, #-1]
004eeb84  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eeb88  00 10 21 e0                                      eor r1, r1, r0
004eeb8c  01 10 c2 e5                                      strb r1, [r2, #1]
004eeb90  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eeb94  01 20 42 e2                                      sub r2, r2, #1
004eeb98  00 10 21 e0                                      eor r1, r1, r0
004eeb9c  01 10 43 e5                                      strb r1, [r3, #-1]
004eeba0  01 30 83 e2                                      add r3, r3, #1
004eeba4  f1 ff ff 3a                                      blo #0x4eeb70
004eeba8  05 00 a0 e1                                      mov r0, r5
004eebac  7c 10 84 e2                                      add r1, r4, #0x7c
004eebb0  36 a9 fd eb                                      bl #0x459090
004eebb4  01 30 a0 e3                                      mov r3, #1
004eebb8  00 00 53 e3                                      cmp r3, #0
004eebbc  04 30 8d e5                                      str r3, [sp, #4]
004eebc0  0f 00 00 1a                                      bne #0x4eec04
004eebc4  7d 30 84 e2                                      add r3, r4, #0x7d
004eebc8  7e 20 84 e2                                      add r2, r4, #0x7e
004eebcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eebd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eebd4  02 00 53 e1                                      cmp r3, r2
004eebd8  01 10 20 e0                                      eor r1, r0, r1
004eebdc  01 10 43 e5                                      strb r1, [r3, #-1]
004eebe0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eebe4  00 10 21 e0                                      eor r1, r1, r0
004eebe8  01 10 c2 e5                                      strb r1, [r2, #1]
004eebec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eebf0  01 20 42 e2                                      sub r2, r2, #1
004eebf4  00 10 21 e0                                      eor r1, r1, r0
004eebf8  01 10 43 e5                                      strb r1, [r3, #-1]
004eebfc  01 30 83 e2                                      add r3, r3, #1
004eec00  f1 ff ff 3a                                      blo #0x4eebcc
004eec04  05 00 a0 e1                                      mov r0, r5
004eec08  80 10 84 e2                                      add r1, r4, #0x80
004eec0c  1f a9 fd eb                                      bl #0x459090
004eec10  01 30 a0 e3                                      mov r3, #1
004eec14  00 00 53 e3                                      cmp r3, #0
004eec18  04 30 8d e5                                      str r3, [sp, #4]
004eec1c  0f 00 00 1a                                      bne #0x4eec60
004eec20  81 30 84 e2                                      add r3, r4, #0x81
004eec24  82 20 84 e2                                      add r2, r4, #0x82
004eec28  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eec2c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eec30  02 00 53 e1                                      cmp r3, r2
004eec34  01 10 20 e0                                      eor r1, r0, r1
004eec38  01 10 43 e5                                      strb r1, [r3, #-1]
004eec3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eec40  00 10 21 e0                                      eor r1, r1, r0
004eec44  01 10 c2 e5                                      strb r1, [r2, #1]
004eec48  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eec4c  01 20 42 e2                                      sub r2, r2, #1
004eec50  00 10 21 e0                                      eor r1, r1, r0
004eec54  01 10 43 e5                                      strb r1, [r3, #-1]
004eec58  01 30 83 e2                                      add r3, r3, #1
004eec5c  f1 ff ff 3a                                      blo #0x4eec28
004eec60  05 00 a0 e1                                      mov r0, r5
004eec64  84 10 84 e2                                      add r1, r4, #0x84
004eec68  08 a9 fd eb                                      bl #0x459090
004eec6c  01 30 a0 e3                                      mov r3, #1
004eec70  00 00 53 e3                                      cmp r3, #0
004eec74  04 30 8d e5                                      str r3, [sp, #4]
004eec78  0f 00 00 1a                                      bne #0x4eecbc
004eec7c  85 30 84 e2                                      add r3, r4, #0x85
004eec80  86 20 84 e2                                      add r2, r4, #0x86
004eec84  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eec88  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eec8c  02 00 53 e1                                      cmp r3, r2
004eec90  01 10 20 e0                                      eor r1, r0, r1
004eec94  01 10 43 e5                                      strb r1, [r3, #-1]
004eec98  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eec9c  00 10 21 e0                                      eor r1, r1, r0
004eeca0  01 10 c2 e5                                      strb r1, [r2, #1]
004eeca4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eeca8  01 20 42 e2                                      sub r2, r2, #1
004eecac  00 10 21 e0                                      eor r1, r1, r0
004eecb0  01 10 43 e5                                      strb r1, [r3, #-1]
004eecb4  01 30 83 e2                                      add r3, r3, #1
004eecb8  f1 ff ff 3a                                      blo #0x4eec84
004eecbc  05 00 a0 e1                                      mov r0, r5
004eecc0  88 10 84 e2                                      add r1, r4, #0x88
004eecc4  f1 a8 fd eb                                      bl #0x459090
004eecc8  01 30 a0 e3                                      mov r3, #1
004eeccc  00 00 53 e3                                      cmp r3, #0
004eecd0  04 30 8d e5                                      str r3, [sp, #4]
004eecd4  0f 00 00 1a                                      bne #0x4eed18
004eecd8  89 30 84 e2                                      add r3, r4, #0x89
004eecdc  8a 20 84 e2                                      add r2, r4, #0x8a
004eece0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eece4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eece8  02 00 53 e1                                      cmp r3, r2
004eecec  01 10 20 e0                                      eor r1, r0, r1
004eecf0  01 10 43 e5                                      strb r1, [r3, #-1]
004eecf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eecf8  00 10 21 e0                                      eor r1, r1, r0
004eecfc  01 10 c2 e5                                      strb r1, [r2, #1]
004eed00  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eed04  01 20 42 e2                                      sub r2, r2, #1
004eed08  00 10 21 e0                                      eor r1, r1, r0
004eed0c  01 10 43 e5                                      strb r1, [r3, #-1]
004eed10  01 30 83 e2                                      add r3, r3, #1
004eed14  f1 ff ff 3a                                      blo #0x4eece0
004eed18  05 00 a0 e1                                      mov r0, r5
004eed1c  8c 10 84 e2                                      add r1, r4, #0x8c
004eed20  09 b3 ff eb                                      bl #0x4db94c
004eed24  01 30 a0 e3                                      mov r3, #1
004eed28  00 00 53 e3                                      cmp r3, #0
004eed2c  04 30 8d e5                                      str r3, [sp, #4]
004eed30  0f 00 00 1a                                      bne #0x4eed74
004eed34  8d 30 84 e2                                      add r3, r4, #0x8d
004eed38  8e 20 84 e2                                      add r2, r4, #0x8e
004eed3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eed40  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eed44  02 00 53 e1                                      cmp r3, r2
004eed48  01 10 20 e0                                      eor r1, r0, r1
004eed4c  01 10 43 e5                                      strb r1, [r3, #-1]
004eed50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eed54  00 10 21 e0                                      eor r1, r1, r0
004eed58  01 10 c2 e5                                      strb r1, [r2, #1]
004eed5c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eed60  01 20 42 e2                                      sub r2, r2, #1
004eed64  00 10 21 e0                                      eor r1, r1, r0
004eed68  01 10 43 e5                                      strb r1, [r3, #-1]
004eed6c  01 30 83 e2                                      add r3, r3, #1
004eed70  f1 ff ff 3a                                      blo #0x4eed3c
004eed74  05 00 a0 e1                                      mov r0, r5
004eed78  90 10 84 e2                                      add r1, r4, #0x90
004eed7c  f2 b2 ff eb                                      bl #0x4db94c
004eed80  01 30 a0 e3                                      mov r3, #1
004eed84  00 00 53 e3                                      cmp r3, #0
004eed88  04 30 8d e5                                      str r3, [sp, #4]
004eed8c  0f 00 00 1a                                      bne #0x4eedd0
004eed90  91 30 84 e2                                      add r3, r4, #0x91
004eed94  92 20 84 e2                                      add r2, r4, #0x92
004eed98  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eed9c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eeda0  03 00 52 e1                                      cmp r2, r3
004eeda4  01 10 20 e0                                      eor r1, r0, r1
004eeda8  01 10 43 e5                                      strb r1, [r3, #-1]
004eedac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eedb0  00 10 21 e0                                      eor r1, r1, r0
004eedb4  01 10 c2 e5                                      strb r1, [r2, #1]
004eedb8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eedbc  01 20 42 e2                                      sub r2, r2, #1
004eedc0  00 10 21 e0                                      eor r1, r1, r0
004eedc4  01 10 43 e5                                      strb r1, [r3, #-1]
004eedc8  01 30 83 e2                                      add r3, r3, #1
004eedcc  f1 ff ff 8a                                      bhi #0x4eed98
004eedd0  05 00 a0 e1                                      mov r0, r5
004eedd4  94 10 84 e2                                      add r1, r4, #0x94
004eedd8  db b2 ff eb                                      bl #0x4db94c
004eeddc  01 30 a0 e3                                      mov r3, #1
004eede0  00 00 53 e3                                      cmp r3, #0
004eede4  04 30 8d e5                                      str r3, [sp, #4]
004eede8  0f 00 00 1a                                      bne #0x4eee2c
004eedec  95 30 84 e2                                      add r3, r4, #0x95
004eedf0  96 20 84 e2                                      add r2, r4, #0x96
004eedf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eedf8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eedfc  02 00 53 e1                                      cmp r3, r2
004eee00  01 10 20 e0                                      eor r1, r0, r1
004eee04  01 10 43 e5                                      strb r1, [r3, #-1]
004eee08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eee0c  00 10 21 e0                                      eor r1, r1, r0
004eee10  01 10 c2 e5                                      strb r1, [r2, #1]
004eee14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eee18  01 20 42 e2                                      sub r2, r2, #1
004eee1c  00 10 21 e0                                      eor r1, r1, r0
004eee20  01 10 43 e5                                      strb r1, [r3, #-1]
004eee24  01 30 83 e2                                      add r3, r3, #1
004eee28  f1 ff ff 3a                                      blo #0x4eedf4
004eee2c  05 00 a0 e1                                      mov r0, r5
004eee30  98 10 84 e2                                      add r1, r4, #0x98
004eee34  c4 b2 ff eb                                      bl #0x4db94c
004eee38  01 30 a0 e3                                      mov r3, #1
004eee3c  00 00 53 e3                                      cmp r3, #0
004eee40  04 30 8d e5                                      str r3, [sp, #4]
004eee44  0f 00 00 1a                                      bne #0x4eee88
004eee48  99 30 84 e2                                      add r3, r4, #0x99
004eee4c  9a 20 84 e2                                      add r2, r4, #0x9a
004eee50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eee54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eee58  03 00 52 e1                                      cmp r2, r3
004eee5c  01 10 20 e0                                      eor r1, r0, r1
004eee60  01 10 43 e5                                      strb r1, [r3, #-1]
004eee64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eee68  00 10 21 e0                                      eor r1, r1, r0
004eee6c  01 10 c2 e5                                      strb r1, [r2, #1]
004eee70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eee74  01 20 42 e2                                      sub r2, r2, #1
004eee78  00 10 21 e0                                      eor r1, r1, r0
004eee7c  01 10 43 e5                                      strb r1, [r3, #-1]
004eee80  01 30 83 e2                                      add r3, r3, #1
004eee84  f1 ff ff 8a                                      bhi #0x4eee50
004eee88  05 00 a0 e1                                      mov r0, r5
004eee8c  9c 10 84 e2                                      add r1, r4, #0x9c
004eee90  ad b2 ff eb                                      bl #0x4db94c
004eee94  01 30 a0 e3                                      mov r3, #1
004eee98  00 00 53 e3                                      cmp r3, #0
004eee9c  04 30 8d e5                                      str r3, [sp, #4]
004eeea0  0f 00 00 1a                                      bne #0x4eeee4
004eeea4  9d 30 84 e2                                      add r3, r4, #0x9d
004eeea8  9e 20 84 e2                                      add r2, r4, #0x9e
004eeeac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eeeb0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eeeb4  03 00 52 e1                                      cmp r2, r3
004eeeb8  01 10 20 e0                                      eor r1, r0, r1
004eeebc  01 10 43 e5                                      strb r1, [r3, #-1]
004eeec0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eeec4  00 10 21 e0                                      eor r1, r1, r0
004eeec8  01 10 c2 e5                                      strb r1, [r2, #1]
004eeecc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eeed0  01 20 42 e2                                      sub r2, r2, #1
004eeed4  00 10 21 e0                                      eor r1, r1, r0
004eeed8  01 10 43 e5                                      strb r1, [r3, #-1]
004eeedc  01 30 83 e2                                      add r3, r3, #1
004eeee0  f1 ff ff 8a                                      bhi #0x4eeeac
004eeee4  05 00 a0 e1                                      mov r0, r5
004eeee8  a0 10 84 e2                                      add r1, r4, #0xa0
004eeeec  96 b2 ff eb                                      bl #0x4db94c
004eeef0  01 30 a0 e3                                      mov r3, #1
004eeef4  00 00 53 e3                                      cmp r3, #0
004eeef8  04 30 8d e5                                      str r3, [sp, #4]
004eeefc  0f 00 00 1a                                      bne #0x4eef40
004eef00  a1 30 84 e2                                      add r3, r4, #0xa1
004eef04  a2 20 84 e2                                      add r2, r4, #0xa2
004eef08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eef0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eef10  03 00 52 e1                                      cmp r2, r3
004eef14  01 10 20 e0                                      eor r1, r0, r1
004eef18  01 10 43 e5                                      strb r1, [r3, #-1]
004eef1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eef20  00 10 21 e0                                      eor r1, r1, r0
004eef24  01 10 c2 e5                                      strb r1, [r2, #1]
004eef28  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eef2c  01 20 42 e2                                      sub r2, r2, #1
004eef30  00 10 21 e0                                      eor r1, r1, r0
004eef34  01 10 43 e5                                      strb r1, [r3, #-1]
004eef38  01 30 83 e2                                      add r3, r3, #1
004eef3c  f1 ff ff 8a                                      bhi #0x4eef08
004eef40  05 00 a0 e1                                      mov r0, r5
004eef44  a4 10 84 e2                                      add r1, r4, #0xa4
004eef48  7f b2 ff eb                                      bl #0x4db94c
004eef4c  01 30 a0 e3                                      mov r3, #1
004eef50  00 00 53 e3                                      cmp r3, #0
004eef54  04 30 8d e5                                      str r3, [sp, #4]
004eef58  0f 00 00 1a                                      bne #0x4eef9c
004eef5c  a5 30 84 e2                                      add r3, r4, #0xa5
004eef60  a6 20 84 e2                                      add r2, r4, #0xa6
004eef64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eef68  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eef6c  02 00 53 e1                                      cmp r3, r2
004eef70  01 10 20 e0                                      eor r1, r0, r1
004eef74  01 10 43 e5                                      strb r1, [r3, #-1]
004eef78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eef7c  00 10 21 e0                                      eor r1, r1, r0
004eef80  01 10 c2 e5                                      strb r1, [r2, #1]
004eef84  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eef88  01 20 42 e2                                      sub r2, r2, #1
004eef8c  00 10 21 e0                                      eor r1, r1, r0
004eef90  01 10 43 e5                                      strb r1, [r3, #-1]
004eef94  01 30 83 e2                                      add r3, r3, #1
004eef98  f1 ff ff 3a                                      blo #0x4eef64
004eef9c  05 00 a0 e1                                      mov r0, r5
004eefa0  a8 10 84 e2                                      add r1, r4, #0xa8
004eefa4  68 b2 ff eb                                      bl #0x4db94c
004eefa8  01 30 a0 e3                                      mov r3, #1
004eefac  00 00 53 e3                                      cmp r3, #0
004eefb0  04 30 8d e5                                      str r3, [sp, #4]
004eefb4  0f 00 00 1a                                      bne #0x4eeff8
004eefb8  a9 30 84 e2                                      add r3, r4, #0xa9
004eefbc  aa 20 84 e2                                      add r2, r4, #0xaa
004eefc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eefc4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eefc8  03 00 52 e1                                      cmp r2, r3
004eefcc  01 10 20 e0                                      eor r1, r0, r1
004eefd0  01 10 43 e5                                      strb r1, [r3, #-1]
004eefd4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eefd8  00 10 21 e0                                      eor r1, r1, r0
004eefdc  01 10 c2 e5                                      strb r1, [r2, #1]
004eefe0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eefe4  01 20 42 e2                                      sub r2, r2, #1
004eefe8  00 10 21 e0                                      eor r1, r1, r0
004eefec  01 10 43 e5                                      strb r1, [r3, #-1]
004eeff0  01 30 83 e2                                      add r3, r3, #1
004eeff4  f1 ff ff 8a                                      bhi #0x4eefc0
004eeff8  05 00 a0 e1                                      mov r0, r5
004eeffc  ac 10 84 e2                                      add r1, r4, #0xac
004ef000  51 b2 ff eb                                      bl #0x4db94c
004ef004  01 30 a0 e3                                      mov r3, #1
004ef008  00 00 53 e3                                      cmp r3, #0
004ef00c  04 30 8d e5                                      str r3, [sp, #4]
004ef010  0f 00 00 1a                                      bne #0x4ef054
004ef014  ae 30 84 e2                                      add r3, r4, #0xae
004ef018  ad 40 84 e2                                      add r4, r4, #0xad
004ef01c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef020  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ef024  04 00 53 e1                                      cmp r3, r4
004ef028  02 20 21 e0                                      eor r2, r1, r2
004ef02c  01 20 44 e5                                      strb r2, [r4, #-1]
004ef030  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef034  01 20 22 e0                                      eor r2, r2, r1
004ef038  01 20 c3 e5                                      strb r2, [r3, #1]
004ef03c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ef040  01 30 43 e2                                      sub r3, r3, #1
004ef044  01 20 22 e0                                      eor r2, r2, r1
004ef048  01 20 44 e5                                      strb r2, [r4, #-1]
004ef04c  01 40 84 e2                                      add r4, r4, #1
004ef050  f1 ff ff 8a                                      bhi #0x4ef01c
004ef054  0c d0 8d e2                                      add sp, sp, #0xc
004ef058  30 80 bd e8                                      pop {r4, r5, pc}
