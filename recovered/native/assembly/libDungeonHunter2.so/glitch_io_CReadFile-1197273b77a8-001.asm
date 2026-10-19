; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005703e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZNK6glitch2io9CReadFile6isOpenEv
; demangled: glitch::io::CReadFile::isOpen() const
; decoder-mode: arm
005703e4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
005703e8  00 00 50 e2                                      subs r0, r0, #0
005703ec  01 00 a0 13                                      movne r0, #1
005703f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005703f4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFile9readAsyncEPvjPFviiPNS0_9IReadFileES2_ES2_
; demangled: glitch::io::CReadFile::readAsync(void*, unsigned int, void (*)(int, int, glitch::io::IReadFile*, void*), void*)
; decoder-mode: arm
005703f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005703f8  00 c0 90 e5                                      ldr ip, [r0]
005703fc  08 d0 4d e2                                      sub sp, sp, #8
00570400  03 60 a0 e1                                      mov r6, r3
00570404  02 70 a0 e1                                      mov r7, r2
00570408  00 40 a0 e1                                      mov r4, r0
0057040c  01 80 a0 e1                                      mov r8, r1
00570410  14 50 9c e5                                      ldr r5, [ip, #0x14]
00570414  0f e0 a0 e1                                      mov lr, pc
00570418  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0057041c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00570420  00 30 a0 e1                                      mov r3, r0
00570424  00 60 8d e5                                      str r6, [sp]
00570428  04 20 8d e5                                      str r2, [sp, #4]
0057042c  04 00 a0 e1                                      mov r0, r4
00570430  08 10 a0 e1                                      mov r1, r8
00570434  07 20 a0 e1                                      mov r2, r7
00570438  35 ff 2f e1                                      blx r5
0057043c  08 d0 8d e2                                      add sp, sp, #8
00570440  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00570444, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFile9readAsyncEPvjlPFviiPNS0_9IReadFileES2_ES2_
; demangled: glitch::io::CReadFile::readAsync(void*, unsigned int, long, void (*)(int, int, glitch::io::IReadFile*, void*), void*)
; decoder-mode: arm
00570444  01 00 a0 e3                                      mov r0, #1
00570448  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057044c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZNK6glitch2io9CReadFile7getSizeEv
; demangled: glitch::io::CReadFile::getSize() const
; decoder-mode: arm
0057044c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00570450  1e ff 2f e1                                      bx lr

; FUNCTION 0x00570454, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZNK6glitch2io9CReadFile11getFileNameEv
; demangled: glitch::io::CReadFile::getFileName() const
; decoder-mode: arm
00570454  28 00 90 e5                                      ldr r0, [r0, #0x28]
00570458  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057045c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZNK6glitch2io9CReadFile11getFullPathEv
; demangled: glitch::io::CReadFile::getFullPath() const
; decoder-mode: arm
0057045c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00570460  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00570464  1e ff 2f e1                                      bx lr

; FUNCTION 0x00570488, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFile4seekElb
; demangled: glitch::io::CReadFile::seek(long, bool)
; decoder-mode: arm
00570488  70 40 2d e9                                      push {r4, r5, r6, lr}
0057048c  00 30 90 e5                                      ldr r3, [r0]
00570490  00 40 a0 e1                                      mov r4, r0
00570494  01 60 a0 e1                                      mov r6, r1
00570498  02 50 a0 e1                                      mov r5, r2
0057049c  0f e0 a0 e1                                      mov lr, pc
005704a0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005704a4  00 00 50 e3                                      cmp r0, #0
005704a8  06 00 00 0a                                      beq #0x5704c8
005704ac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005704b0  06 10 a0 e1                                      mov r1, r6
005704b4  05 20 a0 e1                                      mov r2, r5
005704b8  04 00 93 e5                                      ldr r0, [r3, #4]
005704bc  4a 78 f6 eb                                      bl #0x30e5ec
005704c0  01 00 70 e2                                      rsbs r0, r0, #1
005704c4  00 00 a0 33                                      movlo r0, #0
005704c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005704cc, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFile8openFileEv
; demangled: glitch::io::CReadFile::openFile()
; decoder-mode: arm
005704cc  10 40 2d e9                                      push {r4, lr}
005704d0  28 10 90 e5                                      ldr r1, [r0, #0x28]
005704d4  24 30 90 e5                                      ldr r3, [r0, #0x24]
005704d8  08 d0 4d e2                                      sub sp, sp, #8
005704dc  00 40 a0 e1                                      mov r4, r0
005704e0  01 00 53 e1                                      cmp r3, r1
005704e4  27 00 00 0a                                      beq #0x570588
005704e8  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
005704ec  04 00 8d e2                                      add r0, sp, #4
005704f0  02 20 8f e0                                      add r2, pc, r2
005704f4  d1 f5 ff eb                                      bl #0x56dc40
005704f8  04 30 9d e5                                      ldr r3, [sp, #4]
005704fc  00 00 53 e3                                      cmp r3, #0
00570500  00 20 93 15                                      ldrne r2, [r3]
00570504  01 20 82 12                                      addne r2, r2, #1
00570508  00 20 83 15                                      strne r2, [r3]
0057050c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00570510  0c 30 84 e5                                      str r3, [r4, #0xc]
00570514  00 00 50 e3                                      cmp r0, #0
00570518  00 00 00 0a                                      beq #0x570520
0057051c  c5 7a f7 eb                                      bl #0x34f038
00570520  04 00 9d e5                                      ldr r0, [sp, #4]
00570524  00 00 50 e3                                      cmp r0, #0
00570528  00 00 00 0a                                      beq #0x570530
0057052c  c1 7a f7 eb                                      bl #0x34f038
00570530  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00570534  00 00 53 e3                                      cmp r3, #0
00570538  10 00 00 0a                                      beq #0x570580
0057053c  00 10 a0 e3                                      mov r1, #0
00570540  02 20 a0 e3                                      mov r2, #2
00570544  04 00 93 e5                                      ldr r0, [r3, #4]
00570548  27 78 f6 eb                                      bl #0x30e5ec
0057054c  00 30 94 e5                                      ldr r3, [r4]
00570550  04 00 a0 e1                                      mov r0, r4
00570554  0f e0 a0 e1                                      mov lr, pc
00570558  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0057055c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00570560  10 00 84 e5                                      str r0, [r4, #0x10]
00570564  00 10 a0 e3                                      mov r1, #0
00570568  04 00 93 e5                                      ldr r0, [r3, #4]
0057056c  01 20 a0 e1                                      mov r2, r1
00570570  1d 78 f6 eb                                      bl #0x30e5ec
00570574  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00570578  24 30 d3 e5                                      ldrb r3, [r3, #0x24]
0057057c  2c 30 c4 e5                                      strb r3, [r4, #0x2c]
00570580  08 d0 8d e2                                      add sp, sp, #8
00570584  10 80 bd e8                                      pop {r4, pc}
00570588  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0057058c  00 30 a0 e3                                      mov r3, #0
00570590  0c 30 84 e5                                      str r3, [r4, #0xc]
00570594  03 00 50 e1                                      cmp r0, r3
00570598  f8 ff ff 0a                                      beq #0x570580
0057059c  a5 7a f7 eb                                      bl #0x34f038
005705a0  f6 ff ff ea                                      b #0x570580
; mapping-symbol data/literal pool
005705a4  b0 02 35 00                                      .byte 0xb0, 0x02, 0x35, 0x00

; FUNCTION 0x005705a8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZNK6glitch2io9CReadFile6getPosEv
; demangled: glitch::io::CReadFile::getPos() const
; decoder-mode: arm
005705a8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
005705ac  04 00 93 e5                                      ldr r0, [r3, #4]
005705b0  21 76 f6 ea                                      b #0x30de3c

; FUNCTION 0x005705b4, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFile4readEPvj
; demangled: glitch::io::CReadFile::read(void*, unsigned int)
; decoder-mode: arm
005705b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005705b8  00 30 90 e5                                      ldr r3, [r0]
005705bc  00 50 a0 e1                                      mov r5, r0
005705c0  01 40 a0 e1                                      mov r4, r1
005705c4  02 60 a0 e1                                      mov r6, r2
005705c8  0f e0 a0 e1                                      mov lr, pc
005705cc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005705d0  00 00 50 e3                                      cmp r0, #0
005705d4  00 00 00 1a                                      bne #0x5705dc
005705d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005705dc  00 30 95 e5                                      ldr r3, [r5]
005705e0  05 00 a0 e1                                      mov r0, r5
005705e4  0f e0 a0 e1                                      mov lr, pc
005705e8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005705ec  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005705f0  00 70 a0 e1                                      mov r7, r0
005705f4  01 10 a0 e3                                      mov r1, #1
005705f8  04 30 93 e5                                      ldr r3, [r3, #4]
005705fc  04 00 a0 e1                                      mov r0, r4
00570600  06 20 a0 e1                                      mov r2, r6
00570604  38 77 f6 eb                                      bl #0x30e2ec
00570608  2c 30 d5 e5                                      ldrb r3, [r5, #0x2c]
0057060c  00 00 53 e3                                      cmp r3, #0
00570610  f0 ff ff 0a                                      beq #0x5705d8
00570614  03 00 57 e3                                      cmp r7, #3
00570618  ee ff ff ca                                      bgt #0x5705d8
0057061c  04 c0 67 e2                                      rsb ip, r7, #4
00570620  06 00 5c e1                                      cmp ip, r6
00570624  06 c0 a0 21                                      movhs ip, r6
00570628  00 00 5c e3                                      cmp ip, #0
0057062c  e9 ff ff da                                      ble #0x5705d8
00570630  07 70 e0 e1                                      mvn r7, r7
00570634  77 70 ef e6                                      uxtb r7, r7
00570638  00 30 a0 e3                                      mov r3, #0
0057063c  03 10 d4 e7                                      ldrb r1, [r4, r3]
00570640  01 20 47 e2                                      sub r2, r7, #1
00570644  01 70 87 e0                                      add r7, r7, r1
00570648  03 70 c4 e7                                      strb r7, [r4, r3]
0057064c  01 30 83 e2                                      add r3, r3, #1
00570650  03 00 5c e1                                      cmp ip, r3
00570654  72 70 ef e6                                      uxtb r7, r2
00570658  f7 ff ff 1a                                      bne #0x57063c
0057065c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00570660, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFileD1Ev
; demangled: glitch::io::CReadFile::~CReadFile()
; decoder-mode: arm
00570660  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00570664  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00570668  10 40 2d e9                                      push {r4, lr}
0057066c  03 30 8f e0                                      add r3, pc, r3
00570670  02 20 93 e7                                      ldr r2, [r3, r2]
00570674  00 10 a0 e1                                      mov r1, r0
00570678  00 40 a0 e1                                      mov r4, r0
0057067c  08 20 82 e2                                      add r2, r2, #8
00570680  14 20 81 e4                                      str r2, [r1], #0x14
00570684  14 00 91 e5                                      ldr r0, [r1, #0x14]
00570688  01 00 50 e1                                      cmp r0, r1
0057068c  02 00 00 0a                                      beq #0x57069c
00570690  00 00 50 e3                                      cmp r0, #0
00570694  00 00 00 0a                                      beq #0x57069c
00570698  6c 7f f6 eb                                      bl #0x310450
0057069c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005706a0  00 00 50 e3                                      cmp r0, #0
005706a4  00 00 00 0a                                      beq #0x5706ac
005706a8  62 7a f7 eb                                      bl #0x34f038
005706ac  04 00 a0 e1                                      mov r0, r4
005706b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005706b4  24 44 42 00 cc 3d 00 00                          .byte 0x24, 0x44, 0x42, 0x00, 0xcc, 0x3d, 0x00, 0x00

; FUNCTION 0x005706bc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFileD0Ev
; demangled: glitch::io::CReadFile::~CReadFile()
; decoder-mode: arm
005706bc  10 40 2d e9                                      push {r4, lr}
005706c0  00 40 a0 e1                                      mov r4, r0
005706c4  e5 ff ff eb                                      bl #0x570660
005706c8  04 00 a0 e1                                      mov r0, r4
005706cc  f7 76 f6 eb                                      bl #0x30e2b0
005706d0  04 00 a0 e1                                      mov r0, r4
005706d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005706d8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFileD2Ev
; demangled: glitch::io::CReadFile::~CReadFile()
; decoder-mode: arm
005706d8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005706dc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
005706e0  10 40 2d e9                                      push {r4, lr}
005706e4  03 30 8f e0                                      add r3, pc, r3
005706e8  02 20 93 e7                                      ldr r2, [r3, r2]
005706ec  00 10 a0 e1                                      mov r1, r0
005706f0  00 40 a0 e1                                      mov r4, r0
005706f4  08 20 82 e2                                      add r2, r2, #8
005706f8  14 20 81 e4                                      str r2, [r1], #0x14
005706fc  14 00 91 e5                                      ldr r0, [r1, #0x14]
00570700  01 00 50 e1                                      cmp r0, r1
00570704  02 00 00 0a                                      beq #0x570714
00570708  00 00 50 e3                                      cmp r0, #0
0057070c  00 00 00 0a                                      beq #0x570714
00570710  4e 7f f6 eb                                      bl #0x310450
00570714  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00570718  00 00 50 e3                                      cmp r0, #0
0057071c  00 00 00 0a                                      beq #0x570724
00570720  44 7a f7 eb                                      bl #0x34f038
00570724  04 00 a0 e1                                      mov r0, r4
00570728  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0057072c  ac 43 42 00 cc 3d 00 00                          .byte 0xac, 0x43, 0x42, 0x00, 0xcc, 0x3d, 0x00, 0x00

; FUNCTION 0x00570734, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFileC1EPKcb
; demangled: glitch::io::CReadFile::CReadFile(char const*, bool)
; decoder-mode: arm
00570734  70 30 9f e5                                      ldr r3, [pc, #0x70]
00570738  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0057073c  70 40 2d e9                                      push {r4, r5, r6, lr}
00570740  03 30 8f e0                                      add r3, pc, r3
00570744  0c c0 93 e7                                      ldr ip, [r3, ip]
00570748  00 40 a0 e1                                      mov r4, r0
0057074c  08 d0 4d e2                                      sub sp, sp, #8
00570750  00 50 a0 e3                                      mov r5, #0
00570754  08 c0 8c e2                                      add ip, ip, #8
00570758  01 00 a0 e3                                      mov r0, #1
0057075c  04 00 84 e5                                      str r0, [r4, #4]
00570760  00 c0 84 e5                                      str ip, [r4]
00570764  02 60 a0 e1                                      mov r6, r2
00570768  0c 50 84 e5                                      str r5, [r4, #0xc]
0057076c  04 20 8d e2                                      add r2, sp, #4
00570770  10 50 84 e5                                      str r5, [r4, #0x10]
00570774  14 00 84 e2                                      add r0, r4, #0x14
00570778  2f d6 f6 eb                                      bl #0x32603c
0057077c  2c 60 c4 e5                                      strb r6, [r4, #0x2c]
00570780  04 00 a0 e1                                      mov r0, r4
00570784  50 ff ff eb                                      bl #0x5704cc
00570788  2c 30 d4 e5                                      ldrb r3, [r4, #0x2c]
0057078c  05 00 53 e1                                      cmp r3, r5
00570790  02 00 00 0a                                      beq #0x5707a0
00570794  10 30 94 e5                                      ldr r3, [r4, #0x10]
00570798  03 00 53 e3                                      cmp r3, #3
0057079c  2c 50 c4 d5                                      strble r5, [r4, #0x2c]
005707a0  04 00 a0 e1                                      mov r0, r4
005707a4  08 d0 8d e2                                      add sp, sp, #8
005707a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005707ac  50 43 42 00 cc 3d 00 00                          .byte 0x50, 0x43, 0x42, 0x00, 0xcc, 0x3d, 0x00, 0x00

; FUNCTION 0x00570808, declared_size=108, range_size=108, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZNK6glitch2io9CReadFile5cloneEv
; demangled: glitch::io::CReadFile::clone() const
; decoder-mode: arm
00570808  70 40 2d e9                                      push {r4, r5, r6, lr}
0057080c  00 30 90 e5                                      ldr r3, [r0]
00570810  00 50 a0 e1                                      mov r5, r0
00570814  0f e0 a0 e1                                      mov lr, pc
00570818  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0057081c  00 10 a0 e3                                      mov r1, #0
00570820  00 60 a0 e1                                      mov r6, r0
00570824  30 00 a0 e3                                      mov r0, #0x30
00570828  5f 0e ff eb                                      bl #0x5341ac
0057082c  06 10 a0 e1                                      mov r1, r6
00570830  00 20 a0 e3                                      mov r2, #0
00570834  00 40 a0 e1                                      mov r4, r0
00570838  bd ff ff eb                                      bl #0x570734
0057083c  2c 30 d5 e5                                      ldrb r3, [r5, #0x2c]
00570840  00 20 94 e5                                      ldr r2, [r4]
00570844  05 00 a0 e1                                      mov r0, r5
00570848  2c 30 c4 e5                                      strb r3, [r4, #0x2c]
0057084c  00 30 95 e5                                      ldr r3, [r5]
00570850  18 50 92 e5                                      ldr r5, [r2, #0x18]
00570854  0f e0 a0 e1                                      mov lr, pc
00570858  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0057085c  00 20 a0 e3                                      mov r2, #0
00570860  00 10 a0 e1                                      mov r1, r0
00570864  04 00 a0 e1                                      mov r0, r4
00570868  35 ff 2f e1                                      blx r5
0057086c  04 00 a0 e1                                      mov r0, r4
00570870  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00570874, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CReadFile
; alias: _ZN6glitch2io9CReadFileC2EPKcb
; demangled: glitch::io::CReadFile::CReadFile(char const*, bool)
; decoder-mode: arm
00570874  70 30 9f e5                                      ldr r3, [pc, #0x70]
00570878  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0057087c  70 40 2d e9                                      push {r4, r5, r6, lr}
00570880  03 30 8f e0                                      add r3, pc, r3
00570884  0c c0 93 e7                                      ldr ip, [r3, ip]
00570888  00 40 a0 e1                                      mov r4, r0
0057088c  08 d0 4d e2                                      sub sp, sp, #8
00570890  00 50 a0 e3                                      mov r5, #0
00570894  08 c0 8c e2                                      add ip, ip, #8
00570898  01 00 a0 e3                                      mov r0, #1
0057089c  04 00 84 e5                                      str r0, [r4, #4]
005708a0  00 c0 84 e5                                      str ip, [r4]
005708a4  02 60 a0 e1                                      mov r6, r2
005708a8  0c 50 84 e5                                      str r5, [r4, #0xc]
005708ac  04 20 8d e2                                      add r2, sp, #4
005708b0  10 50 84 e5                                      str r5, [r4, #0x10]
005708b4  14 00 84 e2                                      add r0, r4, #0x14
005708b8  df d5 f6 eb                                      bl #0x32603c
005708bc  2c 60 c4 e5                                      strb r6, [r4, #0x2c]
005708c0  04 00 a0 e1                                      mov r0, r4
005708c4  00 ff ff eb                                      bl #0x5704cc
005708c8  2c 30 d4 e5                                      ldrb r3, [r4, #0x2c]
005708cc  05 00 53 e1                                      cmp r3, r5
005708d0  02 00 00 0a                                      beq #0x5708e0
005708d4  10 30 94 e5                                      ldr r3, [r4, #0x10]
005708d8  03 00 53 e3                                      cmp r3, #3
005708dc  2c 50 c4 d5                                      strble r5, [r4, #0x2c]
005708e0  04 00 a0 e1                                      mov r0, r4
005708e4  08 d0 8d e2                                      add sp, sp, #8
005708e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005708ec  10 42 42 00 cc 3d 00 00                          .byte 0x10, 0x42, 0x42, 0x00, 0xcc, 0x3d, 0x00, 0x00
