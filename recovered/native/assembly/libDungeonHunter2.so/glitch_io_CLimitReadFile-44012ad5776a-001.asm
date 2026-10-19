; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b44e8, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFile4readEPvj
; demangled: glitch::io::CLimitReadFile::read(void*, unsigned int)
; decoder-mode: arm
006b44e8  70 40 2d e9                                      push {r4, r5, r6, lr}
006b44ec  48 30 90 e5                                      ldr r3, [r0, #0x48]
006b44f0  00 40 a0 e1                                      mov r4, r0
006b44f4  01 60 a0 e1                                      mov r6, r1
006b44f8  03 00 a0 e1                                      mov r0, r3
006b44fc  00 30 93 e5                                      ldr r3, [r3]
006b4500  02 50 a0 e1                                      mov r5, r2
006b4504  0f e0 a0 e1                                      mov lr, pc
006b4508  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006b450c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
006b4510  01 00 50 e1                                      cmp r0, r1
006b4514  06 00 00 0a                                      beq #0x6b4534
006b4518  48 30 94 e5                                      ldr r3, [r4, #0x48]
006b451c  00 20 a0 e3                                      mov r2, #0
006b4520  03 00 a0 e1                                      mov r0, r3
006b4524  00 30 93 e5                                      ldr r3, [r3]
006b4528  0f e0 a0 e1                                      mov lr, pc
006b452c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b4530  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006b4534  44 30 94 e5                                      ldr r3, [r4, #0x44]
006b4538  03 00 50 e1                                      cmp r0, r3
006b453c  0d 00 00 aa                                      bge #0x6b4578
006b4540  05 20 80 e0                                      add r2, r0, r5
006b4544  02 00 53 e1                                      cmp r3, r2
006b4548  03 50 60 d0                                      rsble r5, r0, r3
006b454c  48 30 94 e5                                      ldr r3, [r4, #0x48]
006b4550  06 10 a0 e1                                      mov r1, r6
006b4554  05 20 a0 e1                                      mov r2, r5
006b4558  03 00 a0 e1                                      mov r0, r3
006b455c  00 30 93 e5                                      ldr r3, [r3]
006b4560  0f e0 a0 e1                                      mov lr, pc
006b4564  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b4568  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006b456c  00 30 83 e0                                      add r3, r3, r0
006b4570  4c 30 84 e5                                      str r3, [r4, #0x4c]
006b4574  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b4578  00 00 a0 e3                                      mov r0, #0
006b457c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b4580, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFile9readAsyncEPvjPFviiPNS0_9IReadFileES2_ES2_
; demangled: glitch::io::CLimitReadFile::readAsync(void*, unsigned int, void (*)(int, int, glitch::io::IReadFile*, void*), void*)
; decoder-mode: arm
006b4580  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b4584  00 c0 90 e5                                      ldr ip, [r0]
006b4588  08 d0 4d e2                                      sub sp, sp, #8
006b458c  03 60 a0 e1                                      mov r6, r3
006b4590  02 70 a0 e1                                      mov r7, r2
006b4594  00 40 a0 e1                                      mov r4, r0
006b4598  01 80 a0 e1                                      mov r8, r1
006b459c  14 50 9c e5                                      ldr r5, [ip, #0x14]
006b45a0  0f e0 a0 e1                                      mov lr, pc
006b45a4  24 f0 9c e5                                      ldr pc, [ip, #0x24]
006b45a8  20 20 9d e5                                      ldr r2, [sp, #0x20]
006b45ac  00 30 a0 e1                                      mov r3, r0
006b45b0  00 60 8d e5                                      str r6, [sp]
006b45b4  04 20 8d e5                                      str r2, [sp, #4]
006b45b8  04 00 a0 e1                                      mov r0, r4
006b45bc  08 10 a0 e1                                      mov r1, r8
006b45c0  07 20 a0 e1                                      mov r2, r7
006b45c4  35 ff 2f e1                                      blx r5
006b45c8  08 d0 8d e2                                      add sp, sp, #8
006b45cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006b45d0, declared_size=116, range_size=116, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFile9readAsyncEPvjlPFviiPNS0_9IReadFileES2_ES2_
; demangled: glitch::io::CLimitReadFile::readAsync(void*, unsigned int, long, void (*)(int, int, glitch::io::IReadFile*, void*), void*)
; decoder-mode: arm
006b45d0  30 40 2d e9                                      push {r4, r5, lr}
006b45d4  40 c0 90 e5                                      ldr ip, [r0, #0x40]
006b45d8  00 40 a0 e1                                      mov r4, r0
006b45dc  44 00 90 e5                                      ldr r0, [r0, #0x44]
006b45e0  0c 30 83 e0                                      add r3, r3, ip
006b45e4  0c d0 4d e2                                      sub sp, sp, #0xc
006b45e8  00 00 53 e1                                      cmp r3, r0
006b45ec  02 50 a0 e1                                      mov r5, r2
006b45f0  4c 30 84 e5                                      str r3, [r4, #0x4c]
006b45f4  00 00 a0 a3                                      movge r0, #0
006b45f8  0f 00 00 aa                                      bge #0x6b463c
006b45fc  02 20 83 e0                                      add r2, r3, r2
006b4600  02 00 50 e1                                      cmp r0, r2
006b4604  48 20 94 e5                                      ldr r2, [r4, #0x48]
006b4608  00 50 63 d0                                      rsble r5, r3, r0
006b460c  00 c0 92 e5                                      ldr ip, [r2]
006b4610  02 00 a0 e1                                      mov r0, r2
006b4614  18 20 9d e5                                      ldr r2, [sp, #0x18]
006b4618  00 20 8d e5                                      str r2, [sp]
006b461c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006b4620  04 20 8d e5                                      str r2, [sp, #4]
006b4624  05 20 a0 e1                                      mov r2, r5
006b4628  0f e0 a0 e1                                      mov lr, pc
006b462c  14 f0 9c e5                                      ldr pc, [ip, #0x14]
006b4630  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006b4634  05 50 83 e0                                      add r5, r3, r5
006b4638  4c 50 84 e5                                      str r5, [r4, #0x4c]
006b463c  0c d0 8d e2                                      add sp, sp, #0xc
006b4640  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006b4644, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFile4seekElb
; demangled: glitch::io::CLimitReadFile::seek(long, bool)
; decoder-mode: arm
006b4644  70 40 2d e9                                      push {r4, r5, r6, lr}
006b4648  48 30 90 e5                                      ldr r3, [r0, #0x48]
006b464c  00 40 a0 e1                                      mov r4, r0
006b4650  01 60 a0 e1                                      mov r6, r1
006b4654  03 00 a0 e1                                      mov r0, r3
006b4658  00 30 93 e5                                      ldr r3, [r3]
006b465c  02 50 a0 e1                                      mov r5, r2
006b4660  0f e0 a0 e1                                      mov lr, pc
006b4664  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006b4668  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006b466c  00 00 55 e3                                      cmp r5, #0
006b4670  06 60 63 e0                                      rsb r6, r3, r6
006b4674  00 10 86 e0                                      add r1, r6, r0
006b4678  0c 00 00 0a                                      beq #0x6b46b0
006b467c  44 20 94 e5                                      ldr r2, [r4, #0x44]
006b4680  03 30 81 e0                                      add r3, r1, r3
006b4684  02 00 53 e1                                      cmp r3, r2
006b4688  02 10 60 c0                                      rsbgt r1, r0, r2
006b468c  00 00 81 e0                                      add r0, r1, r0
006b4690  4c 00 84 e5                                      str r0, [r4, #0x4c]
006b4694  48 30 94 e5                                      ldr r3, [r4, #0x48]
006b4698  05 20 a0 e1                                      mov r2, r5
006b469c  03 00 a0 e1                                      mov r0, r3
006b46a0  00 30 93 e5                                      ldr r3, [r3]
006b46a4  0f e0 a0 e1                                      mov lr, pc
006b46a8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b46ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b46b0  40 20 94 e5                                      ldr r2, [r4, #0x40]
006b46b4  44 30 94 e5                                      ldr r3, [r4, #0x44]
006b46b8  02 10 81 e0                                      add r1, r1, r2
006b46bc  03 00 51 e1                                      cmp r1, r3
006b46c0  4c 10 84 d5                                      strle r1, [r4, #0x4c]
006b46c4  f2 ff ff da                                      ble #0x6b4694
006b46c8  05 00 a0 e1                                      mov r0, r5
006b46cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b46d0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZNK6glitch2io14CLimitReadFile7getSizeEv
; demangled: glitch::io::CLimitReadFile::getSize() const
; decoder-mode: arm
006b46d0  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
006b46d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b46d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZNK6glitch2io14CLimitReadFile6getPosEv
; demangled: glitch::io::CLimitReadFile::getPos() const
; decoder-mode: arm
006b46d8  40 30 90 e5                                      ldr r3, [r0, #0x40]
006b46dc  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006b46e0  00 00 63 e0                                      rsb r0, r3, r0
006b46e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b46e8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZNK6glitch2io14CLimitReadFile11getFileNameEv
; demangled: glitch::io::CLimitReadFile::getFileName() const
; decoder-mode: arm
006b46e8  20 00 90 e5                                      ldr r0, [r0, #0x20]
006b46ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b46f0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZNK6glitch2io14CLimitReadFile11getFullPathEv
; demangled: glitch::io::CLimitReadFile::getFullPath() const
; decoder-mode: arm
006b46f0  38 00 90 e5                                      ldr r0, [r0, #0x38]
006b46f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b4740, declared_size=208, range_size=208, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFile4initEPKc
; demangled: glitch::io::CLimitReadFile::init(char const*)
; decoder-mode: arm
006b4740  70 40 2d e9                                      push {r4, r5, r6, lr}
006b4744  48 30 90 e5                                      ldr r3, [r0, #0x48]
006b4748  00 40 a0 e1                                      mov r4, r0
006b474c  01 50 a0 e1                                      mov r5, r1
006b4750  00 00 53 e3                                      cmp r3, #0
006b4754  19 00 00 0a                                      beq #0x6b47c0
006b4758  03 00 a0 e1                                      mov r0, r3
006b475c  00 30 93 e5                                      ldr r3, [r3]
006b4760  0f e0 a0 e1                                      mov lr, pc
006b4764  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006b4768  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
006b476c  48 30 94 e5                                      ldr r3, [r4, #0x48]
006b4770  40 00 84 e5                                      str r0, [r4, #0x40]
006b4774  02 20 80 e0                                      add r2, r0, r2
006b4778  44 20 84 e5                                      str r2, [r4, #0x44]
006b477c  00 10 a0 e1                                      mov r1, r0
006b4780  00 20 a0 e3                                      mov r2, #0
006b4784  03 00 a0 e1                                      mov r0, r3
006b4788  00 30 93 e5                                      ldr r3, [r3]
006b478c  0f e0 a0 e1                                      mov lr, pc
006b4790  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b4794  40 30 94 e5                                      ldr r3, [r4, #0x40]
006b4798  00 00 55 e3                                      cmp r5, #0
006b479c  4c 30 84 e5                                      str r3, [r4, #0x4c]
006b47a0  07 00 00 0a                                      beq #0x6b47c4
006b47a4  05 00 a0 e1                                      mov r0, r5
006b47a8  a9 65 f1 eb                                      bl #0x30de54
006b47ac  05 10 a0 e1                                      mov r1, r5
006b47b0  00 20 85 e0                                      add r2, r5, r0
006b47b4  24 00 84 e2                                      add r0, r4, #0x24
006b47b8  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b47bc  f1 b0 f1 ea                                      b #0x320b88
006b47c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b47c4  48 30 94 e5                                      ldr r3, [r4, #0x48]
006b47c8  24 50 84 e2                                      add r5, r4, #0x24
006b47cc  03 00 a0 e1                                      mov r0, r3
006b47d0  00 30 93 e5                                      ldr r3, [r3]
006b47d4  0f e0 a0 e1                                      mov lr, pc
006b47d8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006b47dc  00 10 a0 e1                                      mov r1, r0
006b47e0  05 00 a0 e1                                      mov r0, r5
006b47e4  cb ff ff eb                                      bl #0x6b4718
006b47e8  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
006b47ec  05 00 a0 e1                                      mov r0, r5
006b47f0  01 10 8f e0                                      add r1, pc, r1
006b47f4  c7 ff ff eb                                      bl #0x6b4718
006b47f8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
006b47fc  20 10 94 e5                                      ldr r1, [r4, #0x20]
006b4800  05 00 a0 e1                                      mov r0, r5
006b4804  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b4808  8f b0 f1 ea                                      b #0x320a4c
; mapping-symbol data/literal pool
006b480c  68 c4 20 00                                      .byte 0x68, 0xc4, 0x20, 0x00

; FUNCTION 0x006b4810, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileC1EPNS0_9IReadFileElPKcS5_
; demangled: glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile*, long, char const*, char const*)
; decoder-mode: arm
006b4810  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
006b4814  70 40 2d e9                                      push {r4, r5, r6, lr}
006b4818  98 e0 9f e5                                      ldr lr, [pc, #0x98]
006b481c  0c c0 8f e0                                      add ip, pc, ip
006b4820  00 40 a0 e1                                      mov r4, r0
006b4824  0e e0 9c e7                                      ldr lr, [ip, lr]
006b4828  08 d0 4d e2                                      sub sp, sp, #8
006b482c  01 50 a0 e3                                      mov r5, #1
006b4830  08 e0 8e e2                                      add lr, lr, #8
006b4834  04 50 84 e5                                      str r5, [r4, #4]
006b4838  02 60 a0 e1                                      mov r6, r2
006b483c  0c e0 80 e4                                      str lr, [r0], #0xc
006b4840  01 50 a0 e1                                      mov r5, r1
006b4844  04 20 8d e2                                      add r2, sp, #4
006b4848  03 10 a0 e1                                      mov r1, r3
006b484c  fa c5 f1 eb                                      bl #0x32603c
006b4850  24 30 84 e2                                      add r3, r4, #0x24
006b4854  03 00 a0 e1                                      mov r0, r3
006b4858  34 30 84 e5                                      str r3, [r4, #0x34]
006b485c  38 30 84 e5                                      str r3, [r4, #0x38]
006b4860  10 10 a0 e3                                      mov r1, #0x10
006b4864  4f b0 f1 eb                                      bl #0x3209a8
006b4868  34 20 94 e5                                      ldr r2, [r4, #0x34]
006b486c  00 30 a0 e3                                      mov r3, #0
006b4870  05 00 a0 e1                                      mov r0, r5
006b4874  00 30 c2 e5                                      strb r3, [r2]
006b4878  3c 60 84 e5                                      str r6, [r4, #0x3c]
006b487c  4c 30 84 e5                                      str r3, [r4, #0x4c]
006b4880  40 30 84 e5                                      str r3, [r4, #0x40]
006b4884  44 30 84 e5                                      str r3, [r4, #0x44]
006b4888  48 50 84 e5                                      str r5, [r4, #0x48]
006b488c  00 30 95 e5                                      ldr r3, [r5]
006b4890  0f e0 a0 e1                                      mov lr, pc
006b4894  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b4898  48 00 84 e5                                      str r0, [r4, #0x48]
006b489c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006b48a0  04 00 a0 e1                                      mov r0, r4
006b48a4  a5 ff ff eb                                      bl #0x6b4740
006b48a8  04 00 a0 e1                                      mov r0, r4
006b48ac  08 d0 8d e2                                      add sp, sp, #8
006b48b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006b48b4  74 02 2e 00 b4 2b 00 00                          .byte 0x74, 0x02, 0x2e, 0x00, 0xb4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b48bc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZNK6glitch2io14CLimitReadFile5cloneEv
; demangled: glitch::io::CLimitReadFile::clone() const
; decoder-mode: arm
006b48bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006b48c0  00 10 a0 e3                                      mov r1, #0
006b48c4  00 40 a0 e1                                      mov r4, r0
006b48c8  0c d0 4d e2                                      sub sp, sp, #0xc
006b48cc  50 00 a0 e3                                      mov r0, #0x50
006b48d0  20 70 94 e5                                      ldr r7, [r4, #0x20]
006b48d4  38 60 94 e5                                      ldr r6, [r4, #0x38]
006b48d8  33 fe f9 eb                                      bl #0x5341ac
006b48dc  48 10 94 e5                                      ldr r1, [r4, #0x48]
006b48e0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
006b48e4  07 30 a0 e1                                      mov r3, r7
006b48e8  00 50 a0 e1                                      mov r5, r0
006b48ec  00 60 8d e5                                      str r6, [sp]
006b48f0  c6 ff ff eb                                      bl #0x6b4810
006b48f4  44 30 94 e5                                      ldr r3, [r4, #0x44]
006b48f8  05 00 a0 e1                                      mov r0, r5
006b48fc  44 30 85 e5                                      str r3, [r5, #0x44]
006b4900  40 30 94 e5                                      ldr r3, [r4, #0x40]
006b4904  40 30 85 e5                                      str r3, [r5, #0x40]
006b4908  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006b490c  4c 30 85 e5                                      str r3, [r5, #0x4c]
006b4910  0c d0 8d e2                                      add sp, sp, #0xc
006b4914  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006b4918, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileC2EPNS0_9IReadFileElPKcS5_
; demangled: glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile*, long, char const*, char const*)
; decoder-mode: arm
006b4918  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
006b491c  70 40 2d e9                                      push {r4, r5, r6, lr}
006b4920  98 e0 9f e5                                      ldr lr, [pc, #0x98]
006b4924  0c c0 8f e0                                      add ip, pc, ip
006b4928  00 40 a0 e1                                      mov r4, r0
006b492c  0e e0 9c e7                                      ldr lr, [ip, lr]
006b4930  08 d0 4d e2                                      sub sp, sp, #8
006b4934  01 50 a0 e3                                      mov r5, #1
006b4938  08 e0 8e e2                                      add lr, lr, #8
006b493c  04 50 84 e5                                      str r5, [r4, #4]
006b4940  02 60 a0 e1                                      mov r6, r2
006b4944  0c e0 80 e4                                      str lr, [r0], #0xc
006b4948  01 50 a0 e1                                      mov r5, r1
006b494c  04 20 8d e2                                      add r2, sp, #4
006b4950  03 10 a0 e1                                      mov r1, r3
006b4954  b8 c5 f1 eb                                      bl #0x32603c
006b4958  24 30 84 e2                                      add r3, r4, #0x24
006b495c  03 00 a0 e1                                      mov r0, r3
006b4960  34 30 84 e5                                      str r3, [r4, #0x34]
006b4964  38 30 84 e5                                      str r3, [r4, #0x38]
006b4968  10 10 a0 e3                                      mov r1, #0x10
006b496c  0d b0 f1 eb                                      bl #0x3209a8
006b4970  34 20 94 e5                                      ldr r2, [r4, #0x34]
006b4974  00 30 a0 e3                                      mov r3, #0
006b4978  05 00 a0 e1                                      mov r0, r5
006b497c  00 30 c2 e5                                      strb r3, [r2]
006b4980  3c 60 84 e5                                      str r6, [r4, #0x3c]
006b4984  4c 30 84 e5                                      str r3, [r4, #0x4c]
006b4988  40 30 84 e5                                      str r3, [r4, #0x40]
006b498c  44 30 84 e5                                      str r3, [r4, #0x44]
006b4990  48 50 84 e5                                      str r5, [r4, #0x48]
006b4994  00 30 95 e5                                      ldr r3, [r5]
006b4998  0f e0 a0 e1                                      mov lr, pc
006b499c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b49a0  48 00 84 e5                                      str r0, [r4, #0x48]
006b49a4  18 10 9d e5                                      ldr r1, [sp, #0x18]
006b49a8  04 00 a0 e1                                      mov r0, r4
006b49ac  63 ff ff eb                                      bl #0x6b4740
006b49b0  04 00 a0 e1                                      mov r0, r4
006b49b4  08 d0 8d e2                                      add sp, sp, #8
006b49b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006b49bc  6c 01 2e 00 b4 2b 00 00                          .byte 0x6c, 0x01, 0x2e, 0x00, 0xb4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b49c4, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileC1EPNS0_9IReadFileElPKc
; demangled: glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile*, long, char const*)
; decoder-mode: arm
006b49c4  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
006b49c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006b49cc  98 e0 9f e5                                      ldr lr, [pc, #0x98]
006b49d0  0c c0 8f e0                                      add ip, pc, ip
006b49d4  00 40 a0 e1                                      mov r4, r0
006b49d8  0e e0 9c e7                                      ldr lr, [ip, lr]
006b49dc  0c d0 4d e2                                      sub sp, sp, #0xc
006b49e0  01 50 a0 e3                                      mov r5, #1
006b49e4  08 e0 8e e2                                      add lr, lr, #8
006b49e8  04 50 84 e5                                      str r5, [r4, #4]
006b49ec  02 60 a0 e1                                      mov r6, r2
006b49f0  0c e0 80 e4                                      str lr, [r0], #0xc
006b49f4  01 50 a0 e1                                      mov r5, r1
006b49f8  04 20 8d e2                                      add r2, sp, #4
006b49fc  03 10 a0 e1                                      mov r1, r3
006b4a00  8d c5 f1 eb                                      bl #0x32603c
006b4a04  24 30 84 e2                                      add r3, r4, #0x24
006b4a08  03 00 a0 e1                                      mov r0, r3
006b4a0c  34 30 84 e5                                      str r3, [r4, #0x34]
006b4a10  38 30 84 e5                                      str r3, [r4, #0x38]
006b4a14  10 10 a0 e3                                      mov r1, #0x10
006b4a18  e2 af f1 eb                                      bl #0x3209a8
006b4a1c  34 30 94 e5                                      ldr r3, [r4, #0x34]
006b4a20  00 70 a0 e3                                      mov r7, #0
006b4a24  05 00 a0 e1                                      mov r0, r5
006b4a28  00 70 c3 e5                                      strb r7, [r3]
006b4a2c  3c 60 84 e5                                      str r6, [r4, #0x3c]
006b4a30  40 70 84 e5                                      str r7, [r4, #0x40]
006b4a34  44 70 84 e5                                      str r7, [r4, #0x44]
006b4a38  48 50 84 e5                                      str r5, [r4, #0x48]
006b4a3c  4c 70 84 e5                                      str r7, [r4, #0x4c]
006b4a40  00 30 95 e5                                      ldr r3, [r5]
006b4a44  0f e0 a0 e1                                      mov lr, pc
006b4a48  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b4a4c  07 10 a0 e1                                      mov r1, r7
006b4a50  48 00 84 e5                                      str r0, [r4, #0x48]
006b4a54  04 00 a0 e1                                      mov r0, r4
006b4a58  38 ff ff eb                                      bl #0x6b4740
006b4a5c  04 00 a0 e1                                      mov r0, r4
006b4a60  0c d0 8d e2                                      add sp, sp, #0xc
006b4a64  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006b4a68  c0 00 2e 00 b4 2b 00 00                          .byte 0xc0, 0x00, 0x2e, 0x00, 0xb4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b4aa8, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileC2EPNS0_9IReadFileElPKc
; demangled: glitch::io::CLimitReadFile::CLimitReadFile(glitch::io::IReadFile*, long, char const*)
; decoder-mode: arm
006b4aa8  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
006b4aac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006b4ab0  98 e0 9f e5                                      ldr lr, [pc, #0x98]
006b4ab4  0c c0 8f e0                                      add ip, pc, ip
006b4ab8  00 40 a0 e1                                      mov r4, r0
006b4abc  0e e0 9c e7                                      ldr lr, [ip, lr]
006b4ac0  0c d0 4d e2                                      sub sp, sp, #0xc
006b4ac4  01 50 a0 e3                                      mov r5, #1
006b4ac8  08 e0 8e e2                                      add lr, lr, #8
006b4acc  04 50 84 e5                                      str r5, [r4, #4]
006b4ad0  02 60 a0 e1                                      mov r6, r2
006b4ad4  0c e0 80 e4                                      str lr, [r0], #0xc
006b4ad8  01 50 a0 e1                                      mov r5, r1
006b4adc  04 20 8d e2                                      add r2, sp, #4
006b4ae0  03 10 a0 e1                                      mov r1, r3
006b4ae4  54 c5 f1 eb                                      bl #0x32603c
006b4ae8  24 30 84 e2                                      add r3, r4, #0x24
006b4aec  03 00 a0 e1                                      mov r0, r3
006b4af0  34 30 84 e5                                      str r3, [r4, #0x34]
006b4af4  38 30 84 e5                                      str r3, [r4, #0x38]
006b4af8  10 10 a0 e3                                      mov r1, #0x10
006b4afc  a9 af f1 eb                                      bl #0x3209a8
006b4b00  34 30 94 e5                                      ldr r3, [r4, #0x34]
006b4b04  00 70 a0 e3                                      mov r7, #0
006b4b08  05 00 a0 e1                                      mov r0, r5
006b4b0c  00 70 c3 e5                                      strb r7, [r3]
006b4b10  3c 60 84 e5                                      str r6, [r4, #0x3c]
006b4b14  40 70 84 e5                                      str r7, [r4, #0x40]
006b4b18  44 70 84 e5                                      str r7, [r4, #0x44]
006b4b1c  48 50 84 e5                                      str r5, [r4, #0x48]
006b4b20  4c 70 84 e5                                      str r7, [r4, #0x4c]
006b4b24  00 30 95 e5                                      ldr r3, [r5]
006b4b28  0f e0 a0 e1                                      mov lr, pc
006b4b2c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b4b30  07 10 a0 e1                                      mov r1, r7
006b4b34  48 00 84 e5                                      str r0, [r4, #0x48]
006b4b38  04 00 a0 e1                                      mov r0, r4
006b4b3c  ff fe ff eb                                      bl #0x6b4740
006b4b40  04 00 a0 e1                                      mov r0, r4
006b4b44  0c d0 8d e2                                      add sp, sp, #0xc
006b4b48  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006b4b4c  dc ff 2d 00 b4 2b 00 00                          .byte 0xdc, 0xff, 0x2d, 0x00, 0xb4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b4b54, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileD2Ev
; demangled: glitch::io::CLimitReadFile::~CLimitReadFile()
; decoder-mode: arm
006b4b54  10 40 2d e9                                      push {r4, lr}
006b4b58  64 30 9f e5                                      ldr r3, [pc, #0x64]
006b4b5c  64 20 9f e5                                      ldr r2, [pc, #0x64]
006b4b60  00 40 a0 e1                                      mov r4, r0
006b4b64  03 30 8f e0                                      add r3, pc, r3
006b4b68  48 00 90 e5                                      ldr r0, [r0, #0x48]
006b4b6c  02 20 93 e7                                      ldr r2, [r3, r2]
006b4b70  00 00 50 e3                                      cmp r0, #0
006b4b74  08 20 82 e2                                      add r2, r2, #8
006b4b78  00 20 84 e5                                      str r2, [r4]
006b4b7c  00 00 00 0a                                      beq #0x6b4b84
006b4b80  7f a2 f1 eb                                      bl #0x31d584
006b4b84  24 30 84 e2                                      add r3, r4, #0x24
006b4b88  14 00 93 e5                                      ldr r0, [r3, #0x14]
006b4b8c  03 00 50 e1                                      cmp r0, r3
006b4b90  02 00 00 0a                                      beq #0x6b4ba0
006b4b94  00 00 50 e3                                      cmp r0, #0
006b4b98  00 00 00 0a                                      beq #0x6b4ba0
006b4b9c  2b 6e f1 eb                                      bl #0x310450
006b4ba0  0c 30 84 e2                                      add r3, r4, #0xc
006b4ba4  14 00 93 e5                                      ldr r0, [r3, #0x14]
006b4ba8  03 00 50 e1                                      cmp r0, r3
006b4bac  02 00 00 0a                                      beq #0x6b4bbc
006b4bb0  00 00 50 e3                                      cmp r0, #0
006b4bb4  00 00 00 0a                                      beq #0x6b4bbc
006b4bb8  24 6e f1 eb                                      bl #0x310450
006b4bbc  04 00 a0 e1                                      mov r0, r4
006b4bc0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b4bc4  2c ff 2d 00 b4 2b 00 00                          .byte 0x2c, 0xff, 0x2d, 0x00, 0xb4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b4bcc, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileD1Ev
; demangled: glitch::io::CLimitReadFile::~CLimitReadFile()
; decoder-mode: arm
006b4bcc  10 40 2d e9                                      push {r4, lr}
006b4bd0  64 30 9f e5                                      ldr r3, [pc, #0x64]
006b4bd4  64 20 9f e5                                      ldr r2, [pc, #0x64]
006b4bd8  00 40 a0 e1                                      mov r4, r0
006b4bdc  03 30 8f e0                                      add r3, pc, r3
006b4be0  48 00 90 e5                                      ldr r0, [r0, #0x48]
006b4be4  02 20 93 e7                                      ldr r2, [r3, r2]
006b4be8  00 00 50 e3                                      cmp r0, #0
006b4bec  08 20 82 e2                                      add r2, r2, #8
006b4bf0  00 20 84 e5                                      str r2, [r4]
006b4bf4  00 00 00 0a                                      beq #0x6b4bfc
006b4bf8  61 a2 f1 eb                                      bl #0x31d584
006b4bfc  24 30 84 e2                                      add r3, r4, #0x24
006b4c00  14 00 93 e5                                      ldr r0, [r3, #0x14]
006b4c04  03 00 50 e1                                      cmp r0, r3
006b4c08  02 00 00 0a                                      beq #0x6b4c18
006b4c0c  00 00 50 e3                                      cmp r0, #0
006b4c10  00 00 00 0a                                      beq #0x6b4c18
006b4c14  0d 6e f1 eb                                      bl #0x310450
006b4c18  0c 30 84 e2                                      add r3, r4, #0xc
006b4c1c  14 00 93 e5                                      ldr r0, [r3, #0x14]
006b4c20  03 00 50 e1                                      cmp r0, r3
006b4c24  02 00 00 0a                                      beq #0x6b4c34
006b4c28  00 00 50 e3                                      cmp r0, #0
006b4c2c  00 00 00 0a                                      beq #0x6b4c34
006b4c30  06 6e f1 eb                                      bl #0x310450
006b4c34  04 00 a0 e1                                      mov r0, r4
006b4c38  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b4c3c  b4 fe 2d 00 b4 2b 00 00                          .byte 0xb4, 0xfe, 0x2d, 0x00, 0xb4, 0x2b, 0x00, 0x00

; FUNCTION 0x006b4c44, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CLimitReadFile
; alias: _ZN6glitch2io14CLimitReadFileD0Ev
; demangled: glitch::io::CLimitReadFile::~CLimitReadFile()
; decoder-mode: arm
006b4c44  10 40 2d e9                                      push {r4, lr}
006b4c48  00 40 a0 e1                                      mov r4, r0
006b4c4c  de ff ff eb                                      bl #0x6b4bcc
006b4c50  04 00 a0 e1                                      mov r0, r4
006b4c54  95 65 f1 eb                                      bl #0x30e2b0
006b4c58  04 00 a0 e1                                      mov r0, r4
006b4c5c  10 80 bd e8                                      pop {r4, pc}
