; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007f6210, declared_size=664, range_size=664, mode=arm
; class-group: b2ContactSolver
; alias: _ZN15b2ContactSolver23InitVelocityConstraintsERK10b2TimeStep
; demangled: b2ContactSolver::InitVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007f6210  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f6214  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
007f6218  34 d0 4d e2                                      sub sp, sp, #0x34
007f621c  00 c0 a0 e1                                      mov ip, r0
007f6220  00 00 52 e3                                      cmp r2, #0
007f6224  08 10 8d e5                                      str r1, [sp, #8]
007f6228  27 00 00 da                                      ble #0x7f62cc
007f622c  00 b0 a0 e3                                      mov fp, #0
007f6230  0b 30 a0 e1                                      mov r3, fp
007f6234  18 70 9c e5                                      ldr r7, [ip, #0x18]
007f6238  08 00 9d e5                                      ldr r0, [sp, #8]
007f623c  0b 70 87 e0                                      add r7, r7, fp
007f6240  10 10 d0 e5                                      ldrb r1, [r0, #0x10]
007f6244  80 00 97 e5                                      ldr r0, [r7, #0x80]
007f6248  8c 60 97 e5                                      ldr r6, [r7, #0x8c]
007f624c  90 50 97 e5                                      ldr r5, [r7, #0x90]
007f6250  10 00 8d e5                                      str r0, [sp, #0x10]
007f6254  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f6258  00 00 51 e3                                      cmp r1, #0
007f625c  18 00 8d e5                                      str r0, [sp, #0x18]
007f6260  80 00 96 e5                                      ldr r0, [r6, #0x80]
007f6264  24 00 8d e5                                      str r0, [sp, #0x24]
007f6268  78 00 95 e5                                      ldr r0, [r5, #0x78]
007f626c  14 00 8d e5                                      str r0, [sp, #0x14]
007f6270  80 00 95 e5                                      ldr r0, [r5, #0x80]
007f6274  20 00 8d e5                                      str r0, [sp, #0x20]
007f6278  84 00 97 e5                                      ldr r0, [r7, #0x84]
007f627c  0c 00 8d e5                                      str r0, [sp, #0xc]
007f6280  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f6284  02 01 80 e2                                      add r0, r0, #0x80000000
007f6288  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f628c  10 00 00 1a                                      bne #0x7f62d4
007f6290  9c 00 97 e5                                      ldr r0, [r7, #0x9c]
007f6294  00 00 50 e3                                      cmp r0, #0
007f6298  07 00 00 da                                      ble #0x7f62bc
007f629c  01 10 81 e2                                      add r1, r1, #1
007f62a0  00 20 a0 e3                                      mov r2, #0
007f62a4  00 00 51 e1                                      cmp r1, r0
007f62a8  20 20 87 e5                                      str r2, [r7, #0x20]
007f62ac  24 20 87 e5                                      str r2, [r7, #0x24]
007f62b0  40 70 87 e2                                      add r7, r7, #0x40
007f62b4  f8 ff ff ba                                      blt #0x7f629c
007f62b8  1c 20 9c e5                                      ldr r2, [ip, #0x1c]
007f62bc  01 30 83 e2                                      add r3, r3, #1
007f62c0  03 00 52 e1                                      cmp r2, r3
007f62c4  a0 b0 8b e2                                      add fp, fp, #0xa0
007f62c8  d9 ff ff ca                                      bgt #0x7f6234
007f62cc  34 d0 8d e2                                      add sp, sp, #0x34
007f62d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f62d4  9c 10 97 e5                                      ldr r1, [r7, #0x9c]
007f62d8  00 00 51 e3                                      cmp r1, #0
007f62dc  f6 ff ff da                                      ble #0x7f62bc
007f62e0  07 40 a0 e1                                      mov r4, r7
007f62e4  00 90 a0 e3                                      mov sb, #0
007f62e8  28 b0 8d e5                                      str fp, [sp, #0x28]
007f62ec  2c 30 8d e5                                      str r3, [sp, #0x2c]
007f62f0  08 20 9d e5                                      ldr r2, [sp, #8]
007f62f4  20 00 94 e5                                      ldr r0, [r4, #0x20]
007f62f8  01 90 89 e2                                      add sb, sb, #1
007f62fc  08 10 92 e5                                      ldr r1, [r2, #8]
007f6300  00 c0 8d e5                                      str ip, [sp]
007f6304  98 62 ec eb                                      bl #0x30ed6c
007f6308  20 00 84 e5                                      str r0, [r4, #0x20]
007f630c  08 30 9d e5                                      ldr r3, [sp, #8]
007f6310  00 a0 a0 e1                                      mov sl, r0
007f6314  24 00 94 e5                                      ldr r0, [r4, #0x24]
007f6318  08 10 93 e5                                      ldr r1, [r3, #8]
007f631c  92 62 ec eb                                      bl #0x30ed6c
007f6320  24 00 84 e5                                      str r0, [r4, #0x24]
007f6324  00 80 a0 e1                                      mov r8, r0
007f6328  0a 10 a0 e1                                      mov r1, sl
007f632c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f6330  8d 62 ec eb                                      bl #0x30ed6c
007f6334  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f6338  00 b0 a0 e1                                      mov fp, r0
007f633c  0a 00 a0 e1                                      mov r0, sl
007f6340  89 62 ec eb                                      bl #0x30ed6c
007f6344  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f6348  00 30 a0 e1                                      mov r3, r0
007f634c  08 00 a0 e1                                      mov r0, r8
007f6350  04 30 8d e5                                      str r3, [sp, #4]
007f6354  84 62 ec eb                                      bl #0x30ed6c
007f6358  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007f635c  00 a0 a0 e1                                      mov sl, r0
007f6360  08 00 a0 e1                                      mov r0, r8
007f6364  80 62 ec eb                                      bl #0x30ed6c
007f6368  0a 10 a0 e1                                      mov r1, sl
007f636c  00 80 a0 e1                                      mov r8, r0
007f6370  0b 00 a0 e1                                      mov r0, fp
007f6374  0a 62 ec eb                                      bl #0x30eba4
007f6378  04 30 9d e5                                      ldr r3, [sp, #4]
007f637c  00 a0 a0 e1                                      mov sl, r0
007f6380  08 10 a0 e1                                      mov r1, r8
007f6384  03 00 a0 e1                                      mov r0, r3
007f6388  05 62 ec eb                                      bl #0x30eba4
007f638c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f6390  00 80 a0 e1                                      mov r8, r0
007f6394  74 62 ec eb                                      bl #0x30ed6c
007f6398  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f639c  00 b0 a0 e1                                      mov fp, r0
007f63a0  0a 00 a0 e1                                      mov r0, sl
007f63a4  70 62 ec eb                                      bl #0x30ed6c
007f63a8  00 10 a0 e1                                      mov r1, r0
007f63ac  0b 00 a0 e1                                      mov r0, fp
007f63b0  fd 5f ec eb                                      bl #0x30e3ac
007f63b4  00 10 a0 e1                                      mov r1, r0
007f63b8  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f63bc  6a 62 ec eb                                      bl #0x30ed6c
007f63c0  00 10 a0 e1                                      mov r1, r0
007f63c4  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f63c8  f7 5f ec eb                                      bl #0x30e3ac
007f63cc  48 00 86 e5                                      str r0, [r6, #0x48]
007f63d0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f63d4  0a 10 a0 e1                                      mov r1, sl
007f63d8  63 62 ec eb                                      bl #0x30ed6c
007f63dc  00 10 a0 e1                                      mov r1, r0
007f63e0  40 00 96 e5                                      ldr r0, [r6, #0x40]
007f63e4  f0 5f ec eb                                      bl #0x30e3ac
007f63e8  40 00 86 e5                                      str r0, [r6, #0x40]
007f63ec  08 10 a0 e1                                      mov r1, r8
007f63f0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f63f4  5c 62 ec eb                                      bl #0x30ed6c
007f63f8  00 10 a0 e1                                      mov r1, r0
007f63fc  44 00 96 e5                                      ldr r0, [r6, #0x44]
007f6400  e9 5f ec eb                                      bl #0x30e3ac
007f6404  44 00 86 e5                                      str r0, [r6, #0x44]
007f6408  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f640c  08 00 a0 e1                                      mov r0, r8
007f6410  55 62 ec eb                                      bl #0x30ed6c
007f6414  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007f6418  00 b0 a0 e1                                      mov fp, r0
007f641c  0a 00 a0 e1                                      mov r0, sl
007f6420  51 62 ec eb                                      bl #0x30ed6c
007f6424  00 10 a0 e1                                      mov r1, r0
007f6428  0b 00 a0 e1                                      mov r0, fp
007f642c  de 5f ec eb                                      bl #0x30e3ac
007f6430  00 10 a0 e1                                      mov r1, r0
007f6434  20 00 9d e5                                      ldr r0, [sp, #0x20]
007f6438  4b 62 ec eb                                      bl #0x30ed6c
007f643c  00 10 a0 e1                                      mov r1, r0
007f6440  48 00 95 e5                                      ldr r0, [r5, #0x48]
007f6444  d6 61 ec eb                                      bl #0x30eba4
007f6448  48 00 85 e5                                      str r0, [r5, #0x48]
007f644c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f6450  0a 10 a0 e1                                      mov r1, sl
007f6454  44 62 ec eb                                      bl #0x30ed6c
007f6458  00 10 a0 e1                                      mov r1, r0
007f645c  40 00 95 e5                                      ldr r0, [r5, #0x40]
007f6460  cf 61 ec eb                                      bl #0x30eba4
007f6464  40 00 85 e5                                      str r0, [r5, #0x40]
007f6468  08 10 a0 e1                                      mov r1, r8
007f646c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f6470  3d 62 ec eb                                      bl #0x30ed6c
007f6474  00 10 a0 e1                                      mov r1, r0
007f6478  44 00 95 e5                                      ldr r0, [r5, #0x44]
007f647c  c8 61 ec eb                                      bl #0x30eba4
007f6480  44 00 85 e5                                      str r0, [r5, #0x44]
007f6484  9c 30 97 e5                                      ldr r3, [r7, #0x9c]
007f6488  40 40 84 e2                                      add r4, r4, #0x40
007f648c  00 c0 9d e5                                      ldr ip, [sp]
007f6490  09 00 53 e1                                      cmp r3, sb
007f6494  95 ff ff ca                                      bgt #0x7f62f0
007f6498  28 b0 9d e5                                      ldr fp, [sp, #0x28]
007f649c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007f64a0  1c 20 9c e5                                      ldr r2, [ip, #0x1c]
007f64a4  84 ff ff ea                                      b #0x7f62bc

; FUNCTION 0x007f64a8, declared_size=1656, range_size=1656, mode=arm
; class-group: b2ContactSolver
; alias: _ZN15b2ContactSolver24SolveVelocityConstraintsEv
; demangled: b2ContactSolver::SolveVelocityConstraints()
; decoder-mode: arm
007f64a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f64ac  6c d0 4d e2                                      sub sp, sp, #0x6c
007f64b0  5c 00 8d e5                                      str r0, [sp, #0x5c]
007f64b4  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
007f64b8  00 00 53 e3                                      cmp r3, #0
007f64bc  95 01 00 da                                      ble #0x7f6b18
007f64c0  00 10 a0 e3                                      mov r1, #0
007f64c4  50 10 8d e5                                      str r1, [sp, #0x50]
007f64c8  54 10 8d e5                                      str r1, [sp, #0x54]
007f64cc  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
007f64d0  50 10 9d e5                                      ldr r1, [sp, #0x50]
007f64d4  18 30 92 e5                                      ldr r3, [r2, #0x18]
007f64d8  01 30 83 e0                                      add r3, r3, r1
007f64dc  9c 20 93 e5                                      ldr r2, [r3, #0x9c]
007f64e0  40 20 8d e5                                      str r2, [sp, #0x40]
007f64e4  8c 10 93 e5                                      ldr r1, [r3, #0x8c]
007f64e8  3c 10 8d e5                                      str r1, [sp, #0x3c]
007f64ec  90 20 93 e5                                      ldr r2, [r3, #0x90]
007f64f0  38 20 8d e5                                      str r2, [sp, #0x38]
007f64f4  80 10 93 e5                                      ldr r1, [r3, #0x80]
007f64f8  40 20 9d e5                                      ldr r2, [sp, #0x40]
007f64fc  18 10 8d e5                                      str r1, [sp, #0x18]
007f6500  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007f6504  00 00 52 e3                                      cmp r2, #0
007f6508  38 20 9d e5                                      ldr r2, [sp, #0x38]
007f650c  48 70 91 e5                                      ldr r7, [r1, #0x48]
007f6510  44 b0 91 e5                                      ldr fp, [r1, #0x44]
007f6514  40 90 91 e5                                      ldr sb, [r1, #0x40]
007f6518  78 10 91 e5                                      ldr r1, [r1, #0x78]
007f651c  48 60 92 e5                                      ldr r6, [r2, #0x48]
007f6520  44 a0 92 e5                                      ldr sl, [r2, #0x44]
007f6524  40 80 92 e5                                      ldr r8, [r2, #0x40]
007f6528  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
007f652c  34 10 8d e5                                      str r1, [sp, #0x34]
007f6530  38 10 9d e5                                      ldr r1, [sp, #0x38]
007f6534  80 20 92 e5                                      ldr r2, [r2, #0x80]
007f6538  4c 20 8d e5                                      str r2, [sp, #0x4c]
007f653c  78 10 91 e5                                      ldr r1, [r1, #0x78]
007f6540  38 20 9d e5                                      ldr r2, [sp, #0x38]
007f6544  30 10 8d e5                                      str r1, [sp, #0x30]
007f6548  80 20 92 e5                                      ldr r2, [r2, #0x80]
007f654c  48 20 8d e5                                      str r2, [sp, #0x48]
007f6550  18 20 9d e5                                      ldr r2, [sp, #0x18]
007f6554  84 10 93 e5                                      ldr r1, [r3, #0x84]
007f6558  02 21 82 e2                                      add r2, r2, #0x80000000
007f655c  2c 10 8d e5                                      str r1, [sp, #0x2c]
007f6560  44 20 8d e5                                      str r2, [sp, #0x44]
007f6564  94 10 93 e5                                      ldr r1, [r3, #0x94]
007f6568  58 10 8d e5                                      str r1, [sp, #0x58]
007f656c  57 01 00 da                                      ble #0x7f6ad0
007f6570  00 20 a0 e3                                      mov r2, #0
007f6574  03 50 a0 e1                                      mov r5, r3
007f6578  14 20 8d e5                                      str r2, [sp, #0x14]
007f657c  60 30 8d e5                                      str r3, [sp, #0x60]
007f6580  0c 80 8d e5                                      str r8, [sp, #0xc]
007f6584  64 30 8d e5                                      str r3, [sp, #0x64]
007f6588  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007f658c  02 01 86 e2                                      add r0, r6, #0x80000000
007f6590  03 10 a0 e1                                      mov r1, r3
007f6594  24 30 8d e5                                      str r3, [sp, #0x24]
007f6598  f3 61 ec eb                                      bl #0x30ed6c
007f659c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f65a0  00 40 a0 e1                                      mov r4, r0
007f65a4  06 00 a0 e1                                      mov r0, r6
007f65a8  28 10 8d e5                                      str r1, [sp, #0x28]
007f65ac  ee 61 ec eb                                      bl #0x30ed6c
007f65b0  04 10 a0 e1                                      mov r1, r4
007f65b4  00 80 a0 e1                                      mov r8, r0
007f65b8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f65bc  78 61 ec eb                                      bl #0x30eba4
007f65c0  08 10 a0 e1                                      mov r1, r8
007f65c4  00 30 a0 e1                                      mov r3, r0
007f65c8  0a 00 a0 e1                                      mov r0, sl
007f65cc  08 30 8d e5                                      str r3, [sp, #8]
007f65d0  73 61 ec eb                                      bl #0x30eba4
007f65d4  08 30 9d e5                                      ldr r3, [sp, #8]
007f65d8  00 40 a0 e1                                      mov r4, r0
007f65dc  09 10 a0 e1                                      mov r1, sb
007f65e0  03 00 a0 e1                                      mov r0, r3
007f65e4  70 5f ec eb                                      bl #0x30e3ac
007f65e8  0b 10 a0 e1                                      mov r1, fp
007f65ec  00 30 a0 e1                                      mov r3, r0
007f65f0  04 00 a0 e1                                      mov r0, r4
007f65f4  08 30 8d e5                                      str r3, [sp, #8]
007f65f8  6b 5f ec eb                                      bl #0x30e3ac
007f65fc  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f6600  00 20 a0 e1                                      mov r2, r0
007f6604  02 01 87 e2                                      add r0, r7, #0x80000000
007f6608  04 20 8d e5                                      str r2, [sp, #4]
007f660c  1c 10 8d e5                                      str r1, [sp, #0x1c]
007f6610  d5 61 ec eb                                      bl #0x30ed6c
007f6614  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f6618  00 40 a0 e1                                      mov r4, r0
007f661c  07 00 a0 e1                                      mov r0, r7
007f6620  20 10 8d e5                                      str r1, [sp, #0x20]
007f6624  d0 61 ec eb                                      bl #0x30ed6c
007f6628  08 30 9d e5                                      ldr r3, [sp, #8]
007f662c  00 c0 a0 e1                                      mov ip, r0
007f6630  04 10 a0 e1                                      mov r1, r4
007f6634  03 00 a0 e1                                      mov r0, r3
007f6638  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
007f663c  08 c0 8d e5                                      str ip, [sp, #8]
007f6640  59 5f ec eb                                      bl #0x30e3ac
007f6644  00 10 a0 e1                                      mov r1, r0
007f6648  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f664c  c6 61 ec eb                                      bl #0x30ed6c
007f6650  04 10 9d e9                                      ldmib sp, {r2, ip}
007f6654  00 40 a0 e1                                      mov r4, r0
007f6658  02 00 a0 e1                                      mov r0, r2
007f665c  0c 10 a0 e1                                      mov r1, ip
007f6660  51 5f ec eb                                      bl #0x30e3ac
007f6664  00 10 a0 e1                                      mov r1, r0
007f6668  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007f666c  be 61 ec eb                                      bl #0x30ed6c
007f6670  00 10 a0 e1                                      mov r1, r0
007f6674  04 00 a0 e1                                      mov r0, r4
007f6678  49 61 ec eb                                      bl #0x30eba4
007f667c  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
007f6680  49 5f ec eb                                      bl #0x30e3ac
007f6684  02 81 88 e2                                      add r8, r8, #0x80000000
007f6688  00 10 a0 e1                                      mov r1, r0
007f668c  08 00 a0 e1                                      mov r0, r8
007f6690  b5 61 ec eb                                      bl #0x30ed6c
007f6694  20 40 95 e5                                      ldr r4, [r5, #0x20]
007f6698  00 10 a0 e1                                      mov r1, r0
007f669c  04 00 a0 e1                                      mov r0, r4
007f66a0  3f 61 ec eb                                      bl #0x30eba4
007f66a4  00 10 a0 e3                                      mov r1, #0
007f66a8  10 00 8d e5                                      str r0, [sp, #0x10]
007f66ac  11 5f ec eb                                      bl #0x30e2f8
007f66b0  00 00 50 e3                                      cmp r0, #0
007f66b4  00 20 a0 03                                      moveq r2, #0
007f66b8  10 20 8d 05                                      streq r2, [sp, #0x10]
007f66bc  04 10 a0 e1                                      mov r1, r4
007f66c0  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f66c4  38 5f ec eb                                      bl #0x30e3ac
007f66c8  00 80 a0 e1                                      mov r8, r0
007f66cc  08 10 a0 e1                                      mov r1, r8
007f66d0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f66d4  a4 61 ec eb                                      bl #0x30ed6c
007f66d8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007f66dc  00 40 a0 e1                                      mov r4, r0
007f66e0  08 00 a0 e1                                      mov r0, r8
007f66e4  a0 61 ec eb                                      bl #0x30ed6c
007f66e8  04 10 a0 e1                                      mov r1, r4
007f66ec  00 80 a0 e1                                      mov r8, r0
007f66f0  34 00 9d e5                                      ldr r0, [sp, #0x34]
007f66f4  9c 61 ec eb                                      bl #0x30ed6c
007f66f8  00 10 a0 e1                                      mov r1, r0
007f66fc  09 00 a0 e1                                      mov r0, sb
007f6700  29 5f ec eb                                      bl #0x30e3ac
007f6704  08 10 a0 e1                                      mov r1, r8
007f6708  00 90 a0 e1                                      mov sb, r0
007f670c  34 00 9d e5                                      ldr r0, [sp, #0x34]
007f6710  95 61 ec eb                                      bl #0x30ed6c
007f6714  00 10 a0 e1                                      mov r1, r0
007f6718  0b 00 a0 e1                                      mov r0, fp
007f671c  22 5f ec eb                                      bl #0x30e3ac
007f6720  08 10 a0 e1                                      mov r1, r8
007f6724  00 b0 a0 e1                                      mov fp, r0
007f6728  20 00 9d e5                                      ldr r0, [sp, #0x20]
007f672c  8e 61 ec eb                                      bl #0x30ed6c
007f6730  04 10 a0 e1                                      mov r1, r4
007f6734  00 30 a0 e1                                      mov r3, r0
007f6738  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f673c  08 30 8d e5                                      str r3, [sp, #8]
007f6740  89 61 ec eb                                      bl #0x30ed6c
007f6744  08 30 9d e5                                      ldr r3, [sp, #8]
007f6748  00 10 a0 e1                                      mov r1, r0
007f674c  03 00 a0 e1                                      mov r0, r3
007f6750  15 5f ec eb                                      bl #0x30e3ac
007f6754  00 10 a0 e1                                      mov r1, r0
007f6758  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007f675c  82 61 ec eb                                      bl #0x30ed6c
007f6760  00 10 a0 e1                                      mov r1, r0
007f6764  07 00 a0 e1                                      mov r0, r7
007f6768  0f 5f ec eb                                      bl #0x30e3ac
007f676c  04 10 a0 e1                                      mov r1, r4
007f6770  00 70 a0 e1                                      mov r7, r0
007f6774  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f6778  7b 61 ec eb                                      bl #0x30ed6c
007f677c  00 10 a0 e1                                      mov r1, r0
007f6780  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f6784  06 61 ec eb                                      bl #0x30eba4
007f6788  08 10 a0 e1                                      mov r1, r8
007f678c  0c 00 8d e5                                      str r0, [sp, #0xc]
007f6790  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f6794  74 61 ec eb                                      bl #0x30ed6c
007f6798  00 10 a0 e1                                      mov r1, r0
007f679c  0a 00 a0 e1                                      mov r0, sl
007f67a0  ff 60 ec eb                                      bl #0x30eba4
007f67a4  08 10 a0 e1                                      mov r1, r8
007f67a8  00 a0 a0 e1                                      mov sl, r0
007f67ac  28 00 9d e5                                      ldr r0, [sp, #0x28]
007f67b0  6d 61 ec eb                                      bl #0x30ed6c
007f67b4  04 10 a0 e1                                      mov r1, r4
007f67b8  00 80 a0 e1                                      mov r8, r0
007f67bc  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f67c0  69 61 ec eb                                      bl #0x30ed6c
007f67c4  00 10 a0 e1                                      mov r1, r0
007f67c8  08 00 a0 e1                                      mov r0, r8
007f67cc  f6 5e ec eb                                      bl #0x30e3ac
007f67d0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007f67d4  00 10 a0 e1                                      mov r1, r0
007f67d8  48 00 9d e5                                      ldr r0, [sp, #0x48]
007f67dc  01 30 83 e2                                      add r3, r3, #1
007f67e0  14 30 8d e5                                      str r3, [sp, #0x14]
007f67e4  60 61 ec eb                                      bl #0x30ed6c
007f67e8  00 10 a0 e1                                      mov r1, r0
007f67ec  06 00 a0 e1                                      mov r0, r6
007f67f0  eb 60 ec eb                                      bl #0x30eba4
007f67f4  14 10 9d e5                                      ldr r1, [sp, #0x14]
007f67f8  40 20 9d e5                                      ldr r2, [sp, #0x40]
007f67fc  10 30 9d e5                                      ldr r3, [sp, #0x10]
007f6800  00 60 a0 e1                                      mov r6, r0
007f6804  02 00 51 e1                                      cmp r1, r2
007f6808  20 30 85 e5                                      str r3, [r5, #0x20]
007f680c  40 50 85 e2                                      add r5, r5, #0x40
007f6810  5c ff ff ba                                      blt #0x7f6588
007f6814  64 30 9d e5                                      ldr r3, [sp, #0x64]
007f6818  60 40 9d e5                                      ldr r4, [sp, #0x60]
007f681c  00 10 a0 e3                                      mov r1, #0
007f6820  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
007f6824  14 10 8d e5                                      str r1, [sp, #0x14]
007f6828  10 a0 8d e5                                      str sl, [sp, #0x10]
007f682c  40 30 8d e5                                      str r3, [sp, #0x40]
007f6830  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
007f6834  02 01 86 e2                                      add r0, r6, #0x80000000
007f6838  02 10 a0 e1                                      mov r1, r2
007f683c  20 20 8d e5                                      str r2, [sp, #0x20]
007f6840  49 61 ec eb                                      bl #0x30ed6c
007f6844  18 30 94 e5                                      ldr r3, [r4, #0x18]
007f6848  00 50 a0 e1                                      mov r5, r0
007f684c  06 00 a0 e1                                      mov r0, r6
007f6850  03 10 a0 e1                                      mov r1, r3
007f6854  24 30 8d e5                                      str r3, [sp, #0x24]
007f6858  43 61 ec eb                                      bl #0x30ed6c
007f685c  05 10 a0 e1                                      mov r1, r5
007f6860  00 80 a0 e1                                      mov r8, r0
007f6864  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f6868  cd 60 ec eb                                      bl #0x30eba4
007f686c  08 10 a0 e1                                      mov r1, r8
007f6870  00 a0 a0 e1                                      mov sl, r0
007f6874  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f6878  c9 60 ec eb                                      bl #0x30eba4
007f687c  09 10 a0 e1                                      mov r1, sb
007f6880  00 50 a0 e1                                      mov r5, r0
007f6884  0a 00 a0 e1                                      mov r0, sl
007f6888  c7 5e ec eb                                      bl #0x30e3ac
007f688c  0b 10 a0 e1                                      mov r1, fp
007f6890  00 a0 a0 e1                                      mov sl, r0
007f6894  05 00 a0 e1                                      mov r0, r5
007f6898  c3 5e ec eb                                      bl #0x30e3ac
007f689c  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f68a0  00 30 a0 e1                                      mov r3, r0
007f68a4  02 01 87 e2                                      add r0, r7, #0x80000000
007f68a8  08 30 8d e5                                      str r3, [sp, #8]
007f68ac  18 10 8d e5                                      str r1, [sp, #0x18]
007f68b0  2d 61 ec eb                                      bl #0x30ed6c
007f68b4  10 20 94 e5                                      ldr r2, [r4, #0x10]
007f68b8  00 50 a0 e1                                      mov r5, r0
007f68bc  07 00 a0 e1                                      mov r0, r7
007f68c0  02 10 a0 e1                                      mov r1, r2
007f68c4  1c 20 8d e5                                      str r2, [sp, #0x1c]
007f68c8  27 61 ec eb                                      bl #0x30ed6c
007f68cc  20 10 94 e5                                      ldr r1, [r4, #0x20]
007f68d0  00 20 a0 e1                                      mov r2, r0
007f68d4  58 00 9d e5                                      ldr r0, [sp, #0x58]
007f68d8  04 20 8d e5                                      str r2, [sp, #4]
007f68dc  22 61 ec eb                                      bl #0x30ed6c
007f68e0  05 10 a0 e1                                      mov r1, r5
007f68e4  00 80 a0 e1                                      mov r8, r0
007f68e8  0a 00 a0 e1                                      mov r0, sl
007f68ec  ae 5e ec eb                                      bl #0x30e3ac
007f68f0  00 10 a0 e1                                      mov r1, r0
007f68f4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007f68f8  1b 61 ec eb                                      bl #0x30ed6c
007f68fc  0c 00 9d e9                                      ldmib sp, {r2, r3}
007f6900  00 50 a0 e1                                      mov r5, r0
007f6904  02 10 a0 e1                                      mov r1, r2
007f6908  03 00 a0 e1                                      mov r0, r3
007f690c  a6 5e ec eb                                      bl #0x30e3ac
007f6910  00 10 a0 e1                                      mov r1, r0
007f6914  44 00 9d e5                                      ldr r0, [sp, #0x44]
007f6918  13 61 ec eb                                      bl #0x30ed6c
007f691c  00 10 a0 e1                                      mov r1, r0
007f6920  05 00 a0 e1                                      mov r0, r5
007f6924  9e 60 ec eb                                      bl #0x30eba4
007f6928  24 30 94 e5                                      ldr r3, [r4, #0x24]
007f692c  02 01 80 e2                                      add r0, r0, #0x80000000
007f6930  02 a1 88 e2                                      add sl, r8, #0x80000000
007f6934  28 30 8d e5                                      str r3, [sp, #0x28]
007f6938  30 10 94 e5                                      ldr r1, [r4, #0x30]
007f693c  0a 61 ec eb                                      bl #0x30ed6c
007f6940  00 10 a0 e1                                      mov r1, r0
007f6944  28 00 9d e5                                      ldr r0, [sp, #0x28]
007f6948  95 60 ec eb                                      bl #0x30eba4
007f694c  00 50 a0 e1                                      mov r5, r0
007f6950  00 10 a0 e1                                      mov r1, r0
007f6954  08 00 a0 e1                                      mov r0, r8
007f6958  66 5e ec eb                                      bl #0x30e2f8
007f695c  00 00 50 e3                                      cmp r0, #0
007f6960  08 50 a0 01                                      moveq r5, r8
007f6964  05 10 a0 e1                                      mov r1, r5
007f6968  0a 00 a0 e1                                      mov r0, sl
007f696c  61 5e ec eb                                      bl #0x30e2f8
007f6970  00 00 50 e3                                      cmp r0, #0
007f6974  05 a0 a0 01                                      moveq sl, r5
007f6978  28 10 9d e5                                      ldr r1, [sp, #0x28]
007f697c  0a 00 a0 e1                                      mov r0, sl
007f6980  89 5e ec eb                                      bl #0x30e3ac
007f6984  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007f6988  00 80 a0 e1                                      mov r8, r0
007f698c  f6 60 ec eb                                      bl #0x30ed6c
007f6990  44 10 9d e5                                      ldr r1, [sp, #0x44]
007f6994  00 50 a0 e1                                      mov r5, r0
007f6998  08 00 a0 e1                                      mov r0, r8
007f699c  f2 60 ec eb                                      bl #0x30ed6c
007f69a0  05 10 a0 e1                                      mov r1, r5
007f69a4  00 80 a0 e1                                      mov r8, r0
007f69a8  34 00 9d e5                                      ldr r0, [sp, #0x34]
007f69ac  ee 60 ec eb                                      bl #0x30ed6c
007f69b0  00 10 a0 e1                                      mov r1, r0
007f69b4  09 00 a0 e1                                      mov r0, sb
007f69b8  7b 5e ec eb                                      bl #0x30e3ac
007f69bc  08 10 a0 e1                                      mov r1, r8
007f69c0  00 90 a0 e1                                      mov sb, r0
007f69c4  34 00 9d e5                                      ldr r0, [sp, #0x34]
007f69c8  e7 60 ec eb                                      bl #0x30ed6c
007f69cc  00 10 a0 e1                                      mov r1, r0
007f69d0  0b 00 a0 e1                                      mov r0, fp
007f69d4  74 5e ec eb                                      bl #0x30e3ac
007f69d8  08 10 a0 e1                                      mov r1, r8
007f69dc  00 b0 a0 e1                                      mov fp, r0
007f69e0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f69e4  e0 60 ec eb                                      bl #0x30ed6c
007f69e8  05 10 a0 e1                                      mov r1, r5
007f69ec  00 30 a0 e1                                      mov r3, r0
007f69f0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f69f4  08 30 8d e5                                      str r3, [sp, #8]
007f69f8  db 60 ec eb                                      bl #0x30ed6c
007f69fc  08 30 9d e5                                      ldr r3, [sp, #8]
007f6a00  00 10 a0 e1                                      mov r1, r0
007f6a04  03 00 a0 e1                                      mov r0, r3
007f6a08  67 5e ec eb                                      bl #0x30e3ac
007f6a0c  00 10 a0 e1                                      mov r1, r0
007f6a10  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007f6a14  d4 60 ec eb                                      bl #0x30ed6c
007f6a18  00 10 a0 e1                                      mov r1, r0
007f6a1c  07 00 a0 e1                                      mov r0, r7
007f6a20  61 5e ec eb                                      bl #0x30e3ac
007f6a24  05 10 a0 e1                                      mov r1, r5
007f6a28  00 70 a0 e1                                      mov r7, r0
007f6a2c  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f6a30  cd 60 ec eb                                      bl #0x30ed6c
007f6a34  00 10 a0 e1                                      mov r1, r0
007f6a38  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f6a3c  58 60 ec eb                                      bl #0x30eba4
007f6a40  08 10 a0 e1                                      mov r1, r8
007f6a44  0c 00 8d e5                                      str r0, [sp, #0xc]
007f6a48  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f6a4c  c6 60 ec eb                                      bl #0x30ed6c
007f6a50  00 10 a0 e1                                      mov r1, r0
007f6a54  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f6a58  51 60 ec eb                                      bl #0x30eba4
007f6a5c  08 10 a0 e1                                      mov r1, r8
007f6a60  10 00 8d e5                                      str r0, [sp, #0x10]
007f6a64  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f6a68  bf 60 ec eb                                      bl #0x30ed6c
007f6a6c  05 10 a0 e1                                      mov r1, r5
007f6a70  00 80 a0 e1                                      mov r8, r0
007f6a74  20 00 9d e5                                      ldr r0, [sp, #0x20]
007f6a78  bb 60 ec eb                                      bl #0x30ed6c
007f6a7c  00 10 a0 e1                                      mov r1, r0
007f6a80  08 00 a0 e1                                      mov r0, r8
007f6a84  48 5e ec eb                                      bl #0x30e3ac
007f6a88  14 20 9d e5                                      ldr r2, [sp, #0x14]
007f6a8c  00 10 a0 e1                                      mov r1, r0
007f6a90  48 00 9d e5                                      ldr r0, [sp, #0x48]
007f6a94  01 20 82 e2                                      add r2, r2, #1
007f6a98  14 20 8d e5                                      str r2, [sp, #0x14]
007f6a9c  b2 60 ec eb                                      bl #0x30ed6c
007f6aa0  00 10 a0 e1                                      mov r1, r0
007f6aa4  06 00 a0 e1                                      mov r0, r6
007f6aa8  3d 60 ec eb                                      bl #0x30eba4
007f6aac  40 30 9d e5                                      ldr r3, [sp, #0x40]
007f6ab0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007f6ab4  00 60 a0 e1                                      mov r6, r0
007f6ab8  24 a0 84 e5                                      str sl, [r4, #0x24]
007f6abc  01 00 53 e1                                      cmp r3, r1
007f6ac0  40 40 84 e2                                      add r4, r4, #0x40
007f6ac4  59 ff ff ca                                      bgt #0x7f6830
007f6ac8  0c 80 9d e5                                      ldr r8, [sp, #0xc]
007f6acc  10 a0 9d e5                                      ldr sl, [sp, #0x10]
007f6ad0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
007f6ad4  48 70 82 e5                                      str r7, [r2, #0x48]
007f6ad8  44 b0 82 e5                                      str fp, [r2, #0x44]
007f6adc  40 90 82 e5                                      str sb, [r2, #0x40]
007f6ae0  38 30 9d e5                                      ldr r3, [sp, #0x38]
007f6ae4  48 60 83 e5                                      str r6, [r3, #0x48]
007f6ae8  44 a0 83 e5                                      str sl, [r3, #0x44]
007f6aec  40 80 83 e5                                      str r8, [r3, #0x40]
007f6af0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
007f6af4  54 20 9d e5                                      ldr r2, [sp, #0x54]
007f6af8  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
007f6afc  50 10 9d e5                                      ldr r1, [sp, #0x50]
007f6b00  01 20 82 e2                                      add r2, r2, #1
007f6b04  02 00 53 e1                                      cmp r3, r2
007f6b08  a0 10 81 e2                                      add r1, r1, #0xa0
007f6b0c  54 20 8d e5                                      str r2, [sp, #0x54]
007f6b10  50 10 8d e5                                      str r1, [sp, #0x50]
007f6b14  6c fe ff ca                                      bgt #0x7f64cc
007f6b18  6c d0 8d e2                                      add sp, sp, #0x6c
007f6b1c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007f6b20, declared_size=124, range_size=124, mode=arm
; class-group: b2ContactSolver
; alias: _ZN15b2ContactSolver27FinalizeVelocityConstraintsEv
; demangled: b2ContactSolver::FinalizeVelocityConstraints()
; decoder-mode: arm
007f6b20  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
007f6b24  70 00 2d e9                                      push {r4, r5, r6}
007f6b28  00 00 51 e3                                      cmp r1, #0
007f6b2c  18 00 00 da                                      ble #0x7f6b94
007f6b30  00 50 a0 e3                                      mov r5, #0
007f6b34  05 60 a0 e1                                      mov r6, r5
007f6b38  18 c0 90 e5                                      ldr ip, [r0, #0x18]
007f6b3c  05 c0 8c e0                                      add ip, ip, r5
007f6b40  9c 30 9c e5                                      ldr r3, [ip, #0x9c]
007f6b44  88 20 9c e5                                      ldr r2, [ip, #0x88]
007f6b48  00 00 53 e3                                      cmp r3, #0
007f6b4c  0c 00 00 da                                      ble #0x7f6b84
007f6b50  0c 30 a0 e1                                      mov r3, ip
007f6b54  00 10 a0 e3                                      mov r1, #0
007f6b58  20 40 93 e5                                      ldr r4, [r3, #0x20]
007f6b5c  01 10 81 e2                                      add r1, r1, #1
007f6b60  14 40 82 e5                                      str r4, [r2, #0x14]
007f6b64  24 40 93 e5                                      ldr r4, [r3, #0x24]
007f6b68  40 30 83 e2                                      add r3, r3, #0x40
007f6b6c  18 40 82 e5                                      str r4, [r2, #0x18]
007f6b70  9c 40 9c e5                                      ldr r4, [ip, #0x9c]
007f6b74  20 20 82 e2                                      add r2, r2, #0x20
007f6b78  01 00 54 e1                                      cmp r4, r1
007f6b7c  f5 ff ff ca                                      bgt #0x7f6b58
007f6b80  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
007f6b84  01 60 86 e2                                      add r6, r6, #1
007f6b88  06 00 51 e1                                      cmp r1, r6
007f6b8c  a0 50 85 e2                                      add r5, r5, #0xa0
007f6b90  e8 ff ff ca                                      bgt #0x7f6b38
007f6b94  70 00 bd e8                                      pop {r4, r5, r6}
007f6b98  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f6b9c, declared_size=1156, range_size=1156, mode=arm
; class-group: b2ContactSolver
; alias: _ZN15b2ContactSolver24SolvePositionConstraintsEf
; demangled: b2ContactSolver::SolvePositionConstraints(float)
; decoder-mode: arm
007f6b9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f6ba0  44 d0 4d e2                                      sub sp, sp, #0x44
007f6ba4  3c 00 8d e5                                      str r0, [sp, #0x3c]
007f6ba8  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
007f6bac  38 10 8d e5                                      str r1, [sp, #0x38]
007f6bb0  00 00 56 e3                                      cmp r6, #0
007f6bb4  01 00 a0 d3                                      movle r0, #1
007f6bb8  16 01 00 da                                      ble #0x7f7018
007f6bbc  00 30 a0 e3                                      mov r3, #0
007f6bc0  00 20 a0 e3                                      mov r2, #0
007f6bc4  24 20 8d e5                                      str r2, [sp, #0x24]
007f6bc8  20 30 8d e5                                      str r3, [sp, #0x20]
007f6bcc  28 30 8d e5                                      str r3, [sp, #0x28]
007f6bd0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
007f6bd4  20 30 9d e5                                      ldr r3, [sp, #0x20]
007f6bd8  18 70 92 e5                                      ldr r7, [r2, #0x18]
007f6bdc  03 70 87 e0                                      add r7, r7, r3
007f6be0  8c 50 97 e5                                      ldr r5, [r7, #0x8c]
007f6be4  90 40 97 e5                                      ldr r4, [r7, #0x90]
007f6be8  74 80 95 e5                                      ldr r8, [r5, #0x74]
007f6bec  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f6bf0  08 00 a0 e1                                      mov r0, r8
007f6bf4  5c 60 ec eb                                      bl #0x30ed6c
007f6bf8  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f6bfc  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f6c00  08 00 a0 e1                                      mov r0, r8
007f6c04  58 60 ec eb                                      bl #0x30ed6c
007f6c08  30 00 8d e5                                      str r0, [sp, #0x30]
007f6c0c  74 80 94 e5                                      ldr r8, [r4, #0x74]
007f6c10  78 10 94 e5                                      ldr r1, [r4, #0x78]
007f6c14  08 00 a0 e1                                      mov r0, r8
007f6c18  53 60 ec eb                                      bl #0x30ed6c
007f6c1c  18 00 8d e5                                      str r0, [sp, #0x18]
007f6c20  80 10 94 e5                                      ldr r1, [r4, #0x80]
007f6c24  08 00 a0 e1                                      mov r0, r8
007f6c28  4f 60 ec eb                                      bl #0x30ed6c
007f6c2c  2c 00 8d e5                                      str r0, [sp, #0x2c]
007f6c30  84 20 97 e5                                      ldr r2, [r7, #0x84]
007f6c34  9c 30 97 e5                                      ldr r3, [r7, #0x9c]
007f6c38  14 20 8d e5                                      str r2, [sp, #0x14]
007f6c3c  80 20 97 e5                                      ldr r2, [r7, #0x80]
007f6c40  00 00 53 e3                                      cmp r3, #0
007f6c44  10 20 8d e5                                      str r2, [sp, #0x10]
007f6c48  e2 00 00 da                                      ble #0x7f6fd8
007f6c4c  07 60 a0 e1                                      mov r6, r7
007f6c50  00 80 a0 e3                                      mov r8, #0
007f6c54  34 70 8d e5                                      str r7, [sp, #0x34]
007f6c58  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f6c5c  00 00 96 e5                                      ldr r0, [r6]
007f6c60  d1 5d ec eb                                      bl #0x30e3ac
007f6c64  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f6c68  00 a0 a0 e1                                      mov sl, r0
007f6c6c  04 00 96 e5                                      ldr r0, [r6, #4]
007f6c70  cd 5d ec eb                                      bl #0x30e3ac
007f6c74  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f6c78  00 70 a0 e1                                      mov r7, r0
007f6c7c  0a 00 a0 e1                                      mov r0, sl
007f6c80  39 60 ec eb                                      bl #0x30ed6c
007f6c84  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f6c88  00 90 a0 e1                                      mov sb, r0
007f6c8c  07 00 a0 e1                                      mov r0, r7
007f6c90  35 60 ec eb                                      bl #0x30ed6c
007f6c94  00 10 a0 e1                                      mov r1, r0
007f6c98  09 00 a0 e1                                      mov r0, sb
007f6c9c  c0 5f ec eb                                      bl #0x30eba4
007f6ca0  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f6ca4  00 b0 a0 e1                                      mov fp, r0
007f6ca8  0a 00 a0 e1                                      mov r0, sl
007f6cac  2e 60 ec eb                                      bl #0x30ed6c
007f6cb0  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f6cb4  00 a0 a0 e1                                      mov sl, r0
007f6cb8  07 00 a0 e1                                      mov r0, r7
007f6cbc  2a 60 ec eb                                      bl #0x30ed6c
007f6cc0  00 10 a0 e1                                      mov r1, r0
007f6cc4  0a 00 a0 e1                                      mov r0, sl
007f6cc8  b5 5f ec eb                                      bl #0x30eba4
007f6ccc  0c 00 8d e5                                      str r0, [sp, #0xc]
007f6cd0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007f6cd4  08 00 96 e5                                      ldr r0, [r6, #8]
007f6cd8  b3 5d ec eb                                      bl #0x30e3ac
007f6cdc  20 10 94 e5                                      ldr r1, [r4, #0x20]
007f6ce0  00 a0 a0 e1                                      mov sl, r0
007f6ce4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
007f6ce8  af 5d ec eb                                      bl #0x30e3ac
007f6cec  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f6cf0  00 70 a0 e1                                      mov r7, r0
007f6cf4  0a 00 a0 e1                                      mov r0, sl
007f6cf8  1b 60 ec eb                                      bl #0x30ed6c
007f6cfc  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f6d00  00 90 a0 e1                                      mov sb, r0
007f6d04  07 00 a0 e1                                      mov r0, r7
007f6d08  17 60 ec eb                                      bl #0x30ed6c
007f6d0c  00 10 a0 e1                                      mov r1, r0
007f6d10  09 00 a0 e1                                      mov r0, sb
007f6d14  a2 5f ec eb                                      bl #0x30eba4
007f6d18  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f6d1c  00 90 a0 e1                                      mov sb, r0
007f6d20  0a 00 a0 e1                                      mov r0, sl
007f6d24  10 60 ec eb                                      bl #0x30ed6c
007f6d28  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f6d2c  00 a0 a0 e1                                      mov sl, r0
007f6d30  07 00 a0 e1                                      mov r0, r7
007f6d34  0c 60 ec eb                                      bl #0x30ed6c
007f6d38  00 10 a0 e1                                      mov r1, r0
007f6d3c  0a 00 a0 e1                                      mov r0, sl
007f6d40  97 5f ec eb                                      bl #0x30eba4
007f6d44  08 00 8d e5                                      str r0, [sp, #8]
007f6d48  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007f6d4c  0b 00 a0 e1                                      mov r0, fp
007f6d50  93 5f ec eb                                      bl #0x30eba4
007f6d54  30 10 95 e5                                      ldr r1, [r5, #0x30]
007f6d58  00 a0 a0 e1                                      mov sl, r0
007f6d5c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f6d60  8f 5f ec eb                                      bl #0x30eba4
007f6d64  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007f6d68  00 20 a0 e1                                      mov r2, r0
007f6d6c  09 00 a0 e1                                      mov r0, sb
007f6d70  00 20 8d e5                                      str r2, [sp]
007f6d74  8a 5f ec eb                                      bl #0x30eba4
007f6d78  30 10 94 e5                                      ldr r1, [r4, #0x30]
007f6d7c  00 70 a0 e1                                      mov r7, r0
007f6d80  08 00 9d e5                                      ldr r0, [sp, #8]
007f6d84  86 5f ec eb                                      bl #0x30eba4
007f6d88  0a 10 a0 e1                                      mov r1, sl
007f6d8c  00 30 a0 e1                                      mov r3, r0
007f6d90  07 00 a0 e1                                      mov r0, r7
007f6d94  04 30 8d e5                                      str r3, [sp, #4]
007f6d98  83 5d ec eb                                      bl #0x30e3ac
007f6d9c  00 10 a0 e1                                      mov r1, r0
007f6da0  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f6da4  f0 5f ec eb                                      bl #0x30ed6c
007f6da8  0c 00 9d e8                                      ldm sp, {r2, r3}
007f6dac  00 70 a0 e1                                      mov r7, r0
007f6db0  03 00 a0 e1                                      mov r0, r3
007f6db4  02 10 a0 e1                                      mov r1, r2
007f6db8  7b 5d ec eb                                      bl #0x30e3ac
007f6dbc  00 10 a0 e1                                      mov r1, r0
007f6dc0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f6dc4  e8 5f ec eb                                      bl #0x30ed6c
007f6dc8  00 10 a0 e1                                      mov r1, r0
007f6dcc  07 00 a0 e1                                      mov r0, r7
007f6dd0  73 5f ec eb                                      bl #0x30eba4
007f6dd4  38 10 96 e5                                      ldr r1, [r6, #0x38]
007f6dd8  71 5f ec eb                                      bl #0x30eba4
007f6ddc  00 70 a0 e1                                      mov r7, r0
007f6de0  07 10 a0 e1                                      mov r1, r7
007f6de4  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f6de8  47 5e ec eb                                      bl #0x30e70c
007f6dec  0a 17 0d e3                                      movw r1, #0xd70a
007f6df0  00 00 50 e3                                      cmp r0, #0
007f6df4  a3 1b 43 e3                                      movt r1, #0x3ba3
007f6df8  07 00 a0 e1                                      mov r0, r7
007f6dfc  24 70 8d 05                                      streq r7, [sp, #0x24]
007f6e00  67 5f ec eb                                      bl #0x30eba4
007f6e04  00 10 a0 e3                                      mov r1, #0
007f6e08  00 70 a0 e1                                      mov r7, r0
007f6e0c  3e 5e ec eb                                      bl #0x30e70c
007f6e10  00 00 50 e3                                      cmp r0, #0
007f6e14  00 70 a0 03                                      moveq r7, #0
007f6e18  06 00 00 0a                                      beq #0x7f6e38
007f6e1c  cd 1c 0c e3                                      movw r1, #0xcccd
007f6e20  07 00 a0 e1                                      mov r0, r7
007f6e24  4c 1e 4b e3                                      movt r1, #0xbe4c
007f6e28  37 5e ec eb                                      bl #0x30e70c
007f6e2c  00 00 50 e3                                      cmp r0, #0
007f6e30  cd 7c 0c 13                                      movwne r7, #0xcccd
007f6e34  4c 7e 4b 13                                      movtne r7, #0xbe4c
007f6e38  34 30 96 e5                                      ldr r3, [r6, #0x34]
007f6e3c  38 00 9d e5                                      ldr r0, [sp, #0x38]
007f6e40  07 10 a0 e1                                      mov r1, r7
007f6e44  02 71 83 e2                                      add r7, r3, #0x80000000
007f6e48  c7 5f ec eb                                      bl #0x30ed6c
007f6e4c  00 10 a0 e1                                      mov r1, r0
007f6e50  07 00 a0 e1                                      mov r0, r7
007f6e54  c4 5f ec eb                                      bl #0x30ed6c
007f6e58  28 a0 96 e5                                      ldr sl, [r6, #0x28]
007f6e5c  00 10 a0 e1                                      mov r1, r0
007f6e60  01 80 88 e2                                      add r8, r8, #1
007f6e64  0a 00 a0 e1                                      mov r0, sl
007f6e68  4d 5f ec eb                                      bl #0x30eba4
007f6e6c  00 10 a0 e3                                      mov r1, #0
007f6e70  00 70 a0 e1                                      mov r7, r0
007f6e74  1f 5d ec eb                                      bl #0x30e2f8
007f6e78  00 00 50 e3                                      cmp r0, #0
007f6e7c  00 70 a0 03                                      moveq r7, #0
007f6e80  28 70 86 e5                                      str r7, [r6, #0x28]
007f6e84  0a 10 a0 e1                                      mov r1, sl
007f6e88  07 00 a0 e1                                      mov r0, r7
007f6e8c  46 5d ec eb                                      bl #0x30e3ac
007f6e90  00 a0 a0 e1                                      mov sl, r0
007f6e94  0a 10 a0 e1                                      mov r1, sl
007f6e98  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f6e9c  b2 5f ec eb                                      bl #0x30ed6c
007f6ea0  0a 10 a0 e1                                      mov r1, sl
007f6ea4  00 70 a0 e1                                      mov r7, r0
007f6ea8  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f6eac  ae 5f ec eb                                      bl #0x30ed6c
007f6eb0  07 10 a0 e1                                      mov r1, r7
007f6eb4  00 a0 a0 e1                                      mov sl, r0
007f6eb8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f6ebc  aa 5f ec eb                                      bl #0x30ed6c
007f6ec0  00 10 a0 e1                                      mov r1, r0
007f6ec4  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
007f6ec8  37 5d ec eb                                      bl #0x30e3ac
007f6ecc  2c 00 85 e5                                      str r0, [r5, #0x2c]
007f6ed0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f6ed4  0a 10 a0 e1                                      mov r1, sl
007f6ed8  a3 5f ec eb                                      bl #0x30ed6c
007f6edc  00 10 a0 e1                                      mov r1, r0
007f6ee0  30 00 95 e5                                      ldr r0, [r5, #0x30]
007f6ee4  30 5d ec eb                                      bl #0x30e3ac
007f6ee8  0a 10 a0 e1                                      mov r1, sl
007f6eec  30 00 85 e5                                      str r0, [r5, #0x30]
007f6ef0  0b 00 a0 e1                                      mov r0, fp
007f6ef4  9c 5f ec eb                                      bl #0x30ed6c
007f6ef8  07 10 a0 e1                                      mov r1, r7
007f6efc  00 b0 a0 e1                                      mov fp, r0
007f6f00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f6f04  98 5f ec eb                                      bl #0x30ed6c
007f6f08  00 10 a0 e1                                      mov r1, r0
007f6f0c  0b 00 a0 e1                                      mov r0, fp
007f6f10  25 5d ec eb                                      bl #0x30e3ac
007f6f14  00 10 a0 e1                                      mov r1, r0
007f6f18  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f6f1c  92 5f ec eb                                      bl #0x30ed6c
007f6f20  00 10 a0 e1                                      mov r1, r0
007f6f24  38 00 95 e5                                      ldr r0, [r5, #0x38]
007f6f28  1f 5d ec eb                                      bl #0x30e3ac
007f6f2c  38 00 85 e5                                      str r0, [r5, #0x38]
007f6f30  05 00 a0 e1                                      mov r0, r5
007f6f34  b8 c1 ff eb                                      bl #0x7e761c
007f6f38  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f6f3c  07 10 a0 e1                                      mov r1, r7
007f6f40  89 5f ec eb                                      bl #0x30ed6c
007f6f44  00 10 a0 e1                                      mov r1, r0
007f6f48  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007f6f4c  14 5f ec eb                                      bl #0x30eba4
007f6f50  2c 00 84 e5                                      str r0, [r4, #0x2c]
007f6f54  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f6f58  0a 10 a0 e1                                      mov r1, sl
007f6f5c  82 5f ec eb                                      bl #0x30ed6c
007f6f60  00 10 a0 e1                                      mov r1, r0
007f6f64  30 00 94 e5                                      ldr r0, [r4, #0x30]
007f6f68  0d 5f ec eb                                      bl #0x30eba4
007f6f6c  0a 10 a0 e1                                      mov r1, sl
007f6f70  30 00 84 e5                                      str r0, [r4, #0x30]
007f6f74  09 00 a0 e1                                      mov r0, sb
007f6f78  7b 5f ec eb                                      bl #0x30ed6c
007f6f7c  07 10 a0 e1                                      mov r1, r7
007f6f80  00 a0 a0 e1                                      mov sl, r0
007f6f84  08 00 9d e5                                      ldr r0, [sp, #8]
007f6f88  77 5f ec eb                                      bl #0x30ed6c
007f6f8c  00 10 a0 e1                                      mov r1, r0
007f6f90  0a 00 a0 e1                                      mov r0, sl
007f6f94  04 5d ec eb                                      bl #0x30e3ac
007f6f98  00 10 a0 e1                                      mov r1, r0
007f6f9c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007f6fa0  71 5f ec eb                                      bl #0x30ed6c
007f6fa4  00 10 a0 e1                                      mov r1, r0
007f6fa8  38 00 94 e5                                      ldr r0, [r4, #0x38]
007f6fac  fc 5e ec eb                                      bl #0x30eba4
007f6fb0  38 00 84 e5                                      str r0, [r4, #0x38]
007f6fb4  04 00 a0 e1                                      mov r0, r4
007f6fb8  97 c1 ff eb                                      bl #0x7e761c
007f6fbc  34 20 9d e5                                      ldr r2, [sp, #0x34]
007f6fc0  40 60 86 e2                                      add r6, r6, #0x40
007f6fc4  9c 30 92 e5                                      ldr r3, [r2, #0x9c]
007f6fc8  08 00 53 e1                                      cmp r3, r8
007f6fcc  21 ff ff ca                                      bgt #0x7f6c58
007f6fd0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007f6fd4  1c 60 93 e5                                      ldr r6, [r3, #0x1c]
007f6fd8  28 20 9d e5                                      ldr r2, [sp, #0x28]
007f6fdc  20 30 9d e5                                      ldr r3, [sp, #0x20]
007f6fe0  01 20 82 e2                                      add r2, r2, #1
007f6fe4  a0 30 83 e2                                      add r3, r3, #0xa0
007f6fe8  02 00 56 e1                                      cmp r6, r2
007f6fec  28 20 8d e5                                      str r2, [sp, #0x28]
007f6ff0  20 30 8d e5                                      str r3, [sp, #0x20]
007f6ff4  f5 fe ff ca                                      bgt #0x7f6bd0
007f6ff8  8f 12 0c e3                                      movw r1, #0xc28f
007f6ffc  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f7000  f5 1b 4b e3                                      movt r1, #0xbbf5
007f7004  2a 5d ec eb                                      bl #0x30e4b4
007f7008  00 00 50 e3                                      cmp r0, #0
007f700c  00 00 a0 e3                                      mov r0, #0
007f7010  01 00 a0 13                                      movne r0, #1
007f7014  70 00 ef e6                                      uxtb r0, r0
007f7018  44 d0 8d e2                                      add sp, sp, #0x44
007f701c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007f7020, declared_size=28, range_size=28, mode=arm
; class-group: b2ContactSolver
; alias: _ZN15b2ContactSolverD1Ev
; demangled: b2ContactSolver::~b2ContactSolver()
; decoder-mode: arm
007f7020  10 40 2d e9                                      push {r4, lr}
007f7024  00 40 a0 e1                                      mov r4, r0
007f7028  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f702c  14 00 90 e5                                      ldr r0, [r0, #0x14]
007f7030  5c f1 ff eb                                      bl #0x7f35a8
007f7034  04 00 a0 e1                                      mov r0, r4
007f7038  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007f703c, declared_size=28, range_size=28, mode=arm
; class-group: b2ContactSolver
; alias: _ZN15b2ContactSolverD2Ev
; demangled: b2ContactSolver::~b2ContactSolver()
; decoder-mode: arm
007f703c  10 40 2d e9                                      push {r4, lr}
007f7040  00 40 a0 e1                                      mov r4, r0
007f7044  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f7048  14 00 90 e5                                      ldr r0, [r0, #0x14]
007f704c  55 f1 ff eb                                      bl #0x7f35a8
007f7050  04 00 a0 e1                                      mov r0, r4
007f7054  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007f7058, declared_size=2016, range_size=2016, mode=arm
; class-group: b2ContactSolver
; alias: _ZN15b2ContactSolverC1ERK10b2TimeStepPP9b2ContactiP16b2StackAllocator
; demangled: b2ContactSolver::b2ContactSolver(b2TimeStep const&, b2Contact**, int, b2StackAllocator*)
; decoder-mode: arm
007f7058  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f705c  8c d0 4d e2                                      sub sp, sp, #0x8c
007f7060  64 00 8d e5                                      str r0, [sp, #0x64]
007f7064  64 e0 9d e5                                      ldr lr, [sp, #0x64]
007f7068  80 30 8d e5                                      str r3, [sp, #0x80]
007f706c  84 20 8d e5                                      str r2, [sp, #0x84]
007f7070  01 c0 a0 e1                                      mov ip, r1
007f7074  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007f7078  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007f707c  00 20 9c e5                                      ldr r2, [ip]
007f7080  80 10 9d e5                                      ldr r1, [sp, #0x80]
007f7084  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
007f7088  00 20 8e e5                                      str r2, [lr]
007f708c  64 20 9d e5                                      ldr r2, [sp, #0x64]
007f7090  00 00 51 e3                                      cmp r1, #0
007f7094  00 10 a0 e3                                      mov r1, #0
007f7098  14 00 82 e5                                      str r0, [r2, #0x14]
007f709c  1c 10 82 e5                                      str r1, [r2, #0x1c]
007f70a0  e0 01 00 da                                      ble #0x7f7828
007f70a4  64 c0 9d e5                                      ldr ip, [sp, #0x64]
007f70a8  84 e0 9d e5                                      ldr lr, [sp, #0x84]
007f70ac  80 40 9d e5                                      ldr r4, [sp, #0x80]
007f70b0  01 30 a0 e1                                      mov r3, r1
007f70b4  03 21 9e e7                                      ldr r2, [lr, r3, lsl #2]
007f70b8  01 30 83 e2                                      add r3, r3, #1
007f70bc  04 00 53 e1                                      cmp r3, r4
007f70c0  08 20 92 e5                                      ldr r2, [r2, #8]
007f70c4  02 10 81 e0                                      add r1, r1, r2
007f70c8  1c 10 8c e5                                      str r1, [ip, #0x1c]
007f70cc  f8 ff ff 1a                                      bne #0x7f70b4
007f70d0  a0 30 a0 e3                                      mov r3, #0xa0
007f70d4  93 01 01 e0                                      mul r1, r3, r1
007f70d8  59 f1 ff eb                                      bl #0x7f3644
007f70dc  64 e0 9d e5                                      ldr lr, [sp, #0x64]
007f70e0  00 30 a0 e3                                      mov r3, #0
007f70e4  78 30 8d e5                                      str r3, [sp, #0x78]
007f70e8  18 00 8e e5                                      str r0, [lr, #0x18]
007f70ec  7c 30 8d e5                                      str r3, [sp, #0x7c]
007f70f0  78 10 9d e5                                      ldr r1, [sp, #0x78]
007f70f4  84 20 9d e5                                      ldr r2, [sp, #0x84]
007f70f8  01 41 92 e7                                      ldr r4, [r2, r1, lsl #2]
007f70fc  08 e0 94 e5                                      ldr lr, [r4, #8]
007f7100  38 30 94 e5                                      ldr r3, [r4, #0x38]
007f7104  34 20 94 e5                                      ldr r2, [r4, #0x34]
007f7108  60 e0 8d e5                                      str lr, [sp, #0x60]
007f710c  0c 50 93 e5                                      ldr r5, [r3, #0xc]
007f7110  04 00 a0 e1                                      mov r0, r4
007f7114  00 30 94 e5                                      ldr r3, [r4]
007f7118  0c 60 92 e5                                      ldr r6, [r2, #0xc]
007f711c  0f e0 a0 e1                                      mov lr, pc
007f7120  00 f0 93 e5                                      ldr pc, [r3]
007f7124  40 20 94 e5                                      ldr r2, [r4, #0x40]
007f7128  60 10 9d e5                                      ldr r1, [sp, #0x60]
007f712c  68 20 8d e5                                      str r2, [sp, #0x68]
007f7130  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
007f7134  00 00 51 e3                                      cmp r1, #0
007f7138  6c 40 8d e5                                      str r4, [sp, #0x6c]
007f713c  44 30 96 e5                                      ldr r3, [r6, #0x44]
007f7140  5c 30 8d e5                                      str r3, [sp, #0x5c]
007f7144  40 10 96 e5                                      ldr r1, [r6, #0x40]
007f7148  58 10 8d e5                                      str r1, [sp, #0x58]
007f714c  44 20 95 e5                                      ldr r2, [r5, #0x44]
007f7150  54 20 8d e5                                      str r2, [sp, #0x54]
007f7154  40 30 95 e5                                      ldr r3, [r5, #0x40]
007f7158  50 30 8d e5                                      str r3, [sp, #0x50]
007f715c  48 10 96 e5                                      ldr r1, [r6, #0x48]
007f7160  4c 10 8d e5                                      str r1, [sp, #0x4c]
007f7164  48 20 95 e5                                      ldr r2, [r5, #0x48]
007f7168  48 20 8d e5                                      str r2, [sp, #0x48]
007f716c  a4 01 00 da                                      ble #0x7f7804
007f7170  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
007f7174  a0 30 a0 e3                                      mov r3, #0xa0
007f7178  00 20 a0 e3                                      mov r2, #0
007f717c  93 01 03 e0                                      mul r3, r3, r1
007f7180  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
007f7184  3c 30 8d e5                                      str r3, [sp, #0x3c]
007f7188  48 30 9d e5                                      ldr r3, [sp, #0x48]
007f718c  02 11 81 e2                                      add r1, r1, #0x80000000
007f7190  18 00 8d e5                                      str r0, [sp, #0x18]
007f7194  02 31 83 e2                                      add r3, r3, #0x80000000
007f7198  38 20 8d e5                                      str r2, [sp, #0x38]
007f719c  70 30 8d e5                                      str r3, [sp, #0x70]
007f71a0  74 10 8d e5                                      str r1, [sp, #0x74]
007f71a4  18 30 9d e5                                      ldr r3, [sp, #0x18]
007f71a8  64 20 9d e5                                      ldr r2, [sp, #0x64]
007f71ac  18 10 9d e5                                      ldr r1, [sp, #0x18]
007f71b0  44 30 93 e5                                      ldr r3, [r3, #0x44]
007f71b4  18 80 92 e5                                      ldr r8, [r2, #0x18]
007f71b8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
007f71bc  0c 30 8d e5                                      str r3, [sp, #0xc]
007f71c0  40 10 91 e5                                      ldr r1, [r1, #0x40]
007f71c4  02 80 88 e0                                      add r8, r8, r2
007f71c8  1c 10 8d e5                                      str r1, [sp, #0x1c]
007f71cc  8c 60 88 e5                                      str r6, [r8, #0x8c]
007f71d0  90 50 88 e5                                      str r5, [r8, #0x90]
007f71d4  18 30 9d e5                                      ldr r3, [sp, #0x18]
007f71d8  88 30 88 e5                                      str r3, [r8, #0x88]
007f71dc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f71e0  84 10 88 e5                                      str r1, [r8, #0x84]
007f71e4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007f71e8  80 20 88 e5                                      str r2, [r8, #0x80]
007f71ec  18 10 9d e5                                      ldr r1, [sp, #0x18]
007f71f0  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
007f71f4  48 30 91 e5                                      ldr r3, [r1, #0x48]
007f71f8  94 20 88 e5                                      str r2, [r8, #0x94]
007f71fc  68 10 9d e5                                      ldr r1, [sp, #0x68]
007f7200  00 00 53 e3                                      cmp r3, #0
007f7204  9c 30 88 e5                                      str r3, [r8, #0x9c]
007f7208  98 10 88 e5                                      str r1, [r8, #0x98]
007f720c  6c 01 00 da                                      ble #0x7f77c4
007f7210  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007f7214  70 30 9d e5                                      ldr r3, [sp, #0x70]
007f7218  74 e0 9d e5                                      ldr lr, [sp, #0x74]
007f721c  18 70 9d e5                                      ldr r7, [sp, #0x18]
007f7220  02 21 82 e2                                      add r2, r2, #0x80000000
007f7224  00 10 a0 e3                                      mov r1, #0
007f7228  34 20 8d e5                                      str r2, [sp, #0x34]
007f722c  44 30 8d e5                                      str r3, [sp, #0x44]
007f7230  40 e0 8d e5                                      str lr, [sp, #0x40]
007f7234  08 40 a0 e1                                      mov r4, r8
007f7238  20 10 8d e5                                      str r1, [sp, #0x20]
007f723c  10 80 8d e5                                      str r8, [sp, #0x10]
007f7240  14 30 97 e5                                      ldr r3, [r7, #0x14]
007f7244  20 30 84 e5                                      str r3, [r4, #0x20]
007f7248  18 30 97 e5                                      ldr r3, [r7, #0x18]
007f724c  24 30 84 e5                                      str r3, [r4, #0x24]
007f7250  10 20 97 e5                                      ldr r2, [r7, #0x10]
007f7254  00 30 a0 e3                                      mov r3, #0
007f7258  14 20 8d e5                                      str r2, [sp, #0x14]
007f725c  38 20 84 e5                                      str r2, [r4, #0x38]
007f7260  28 30 84 e5                                      str r3, [r4, #0x28]
007f7264  00 30 97 e5                                      ldr r3, [r7]
007f7268  00 30 84 e5                                      str r3, [r4]
007f726c  04 30 97 e5                                      ldr r3, [r7, #4]
007f7270  04 30 84 e5                                      str r3, [r4, #4]
007f7274  08 30 97 e5                                      ldr r3, [r7, #8]
007f7278  08 30 84 e5                                      str r3, [r4, #8]
007f727c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007f7280  0c 30 84 e5                                      str r3, [r4, #0xc]
007f7284  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007f7288  00 00 97 e5                                      ldr r0, [r7]
007f728c  46 5c ec eb                                      bl #0x30e3ac
007f7290  20 10 96 e5                                      ldr r1, [r6, #0x20]
007f7294  00 a0 a0 e1                                      mov sl, r0
007f7298  04 00 97 e5                                      ldr r0, [r7, #4]
007f729c  42 5c ec eb                                      bl #0x30e3ac
007f72a0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f72a4  00 80 a0 e1                                      mov r8, r0
007f72a8  0a 00 a0 e1                                      mov r0, sl
007f72ac  ae 5e ec eb                                      bl #0x30ed6c
007f72b0  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f72b4  00 90 a0 e1                                      mov sb, r0
007f72b8  08 00 a0 e1                                      mov r0, r8
007f72bc  aa 5e ec eb                                      bl #0x30ed6c
007f72c0  00 10 a0 e1                                      mov r1, r0
007f72c4  09 00 a0 e1                                      mov r0, sb
007f72c8  35 5e ec eb                                      bl #0x30eba4
007f72cc  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f72d0  00 b0 a0 e1                                      mov fp, r0
007f72d4  0a 00 a0 e1                                      mov r0, sl
007f72d8  a3 5e ec eb                                      bl #0x30ed6c
007f72dc  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f72e0  00 a0 a0 e1                                      mov sl, r0
007f72e4  08 00 a0 e1                                      mov r0, r8
007f72e8  9f 5e ec eb                                      bl #0x30ed6c
007f72ec  00 10 a0 e1                                      mov r1, r0
007f72f0  0a 00 a0 e1                                      mov r0, sl
007f72f4  2a 5e ec eb                                      bl #0x30eba4
007f72f8  10 b0 84 e5                                      str fp, [r4, #0x10]
007f72fc  14 00 84 e5                                      str r0, [r4, #0x14]
007f7300  00 90 a0 e1                                      mov sb, r0
007f7304  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f7308  08 00 97 e5                                      ldr r0, [r7, #8]
007f730c  26 5c ec eb                                      bl #0x30e3ac
007f7310  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f7314  00 80 a0 e1                                      mov r8, r0
007f7318  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007f731c  22 5c ec eb                                      bl #0x30e3ac
007f7320  08 00 8d e5                                      str r0, [sp, #8]
007f7324  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f7328  08 00 a0 e1                                      mov r0, r8
007f732c  8e 5e ec eb                                      bl #0x30ed6c
007f7330  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f7334  00 a0 a0 e1                                      mov sl, r0
007f7338  08 00 9d e5                                      ldr r0, [sp, #8]
007f733c  8a 5e ec eb                                      bl #0x30ed6c
007f7340  00 10 a0 e1                                      mov r1, r0
007f7344  0a 00 a0 e1                                      mov r0, sl
007f7348  15 5e ec eb                                      bl #0x30eba4
007f734c  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f7350  00 a0 a0 e1                                      mov sl, r0
007f7354  08 00 a0 e1                                      mov r0, r8
007f7358  83 5e ec eb                                      bl #0x30ed6c
007f735c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f7360  00 80 a0 e1                                      mov r8, r0
007f7364  08 00 9d e5                                      ldr r0, [sp, #8]
007f7368  7f 5e ec eb                                      bl #0x30ed6c
007f736c  00 10 a0 e1                                      mov r1, r0
007f7370  08 00 a0 e1                                      mov r0, r8
007f7374  0a 5e ec eb                                      bl #0x30eba4
007f7378  0b 10 a0 e1                                      mov r1, fp
007f737c  00 80 a0 e1                                      mov r8, r0
007f7380  1c 00 84 e5                                      str r0, [r4, #0x1c]
007f7384  18 a0 84 e5                                      str sl, [r4, #0x18]
007f7388  0b 00 a0 e1                                      mov r0, fp
007f738c  76 5e ec eb                                      bl #0x30ed6c
007f7390  09 10 a0 e1                                      mov r1, sb
007f7394  00 30 a0 e1                                      mov r3, r0
007f7398  09 00 a0 e1                                      mov r0, sb
007f739c  00 30 8d e5                                      str r3, [sp]
007f73a0  71 5e ec eb                                      bl #0x30ed6c
007f73a4  00 30 9d e5                                      ldr r3, [sp]
007f73a8  00 10 a0 e1                                      mov r1, r0
007f73ac  03 00 a0 e1                                      mov r0, r3
007f73b0  fb 5d ec eb                                      bl #0x30eba4
007f73b4  0a 10 a0 e1                                      mov r1, sl
007f73b8  24 00 8d e5                                      str r0, [sp, #0x24]
007f73bc  0a 00 a0 e1                                      mov r0, sl
007f73c0  69 5e ec eb                                      bl #0x30ed6c
007f73c4  08 10 a0 e1                                      mov r1, r8
007f73c8  00 30 a0 e1                                      mov r3, r0
007f73cc  08 00 a0 e1                                      mov r0, r8
007f73d0  00 30 8d e5                                      str r3, [sp]
007f73d4  64 5e ec eb                                      bl #0x30ed6c
007f73d8  00 30 9d e5                                      ldr r3, [sp]
007f73dc  00 10 a0 e1                                      mov r1, r0
007f73e0  03 00 a0 e1                                      mov r0, r3
007f73e4  ee 5d ec eb                                      bl #0x30eba4
007f73e8  0b 10 a0 e1                                      mov r1, fp
007f73ec  28 00 8d e5                                      str r0, [sp, #0x28]
007f73f0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f73f4  5c 5e ec eb                                      bl #0x30ed6c
007f73f8  09 10 a0 e1                                      mov r1, sb
007f73fc  00 30 a0 e1                                      mov r3, r0
007f7400  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f7404  00 30 8d e5                                      str r3, [sp]
007f7408  57 5e ec eb                                      bl #0x30ed6c
007f740c  00 30 9d e5                                      ldr r3, [sp]
007f7410  00 10 a0 e1                                      mov r1, r0
007f7414  03 00 a0 e1                                      mov r0, r3
007f7418  e1 5d ec eb                                      bl #0x30eba4
007f741c  0a 10 a0 e1                                      mov r1, sl
007f7420  00 20 a0 e1                                      mov r2, r0
007f7424  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f7428  04 20 8d e5                                      str r2, [sp, #4]
007f742c  4e 5e ec eb                                      bl #0x30ed6c
007f7430  08 10 a0 e1                                      mov r1, r8
007f7434  00 30 a0 e1                                      mov r3, r0
007f7438  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f743c  00 30 8d e5                                      str r3, [sp]
007f7440  49 5e ec eb                                      bl #0x30ed6c
007f7444  00 30 9d e5                                      ldr r3, [sp]
007f7448  00 10 a0 e1                                      mov r1, r0
007f744c  03 00 a0 e1                                      mov r0, r3
007f7450  d3 5d ec eb                                      bl #0x30eba4
007f7454  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f7458  00 30 a0 e1                                      mov r3, r0
007f745c  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f7460  00 30 8d e5                                      str r3, [sp]
007f7464  ce 5d ec eb                                      bl #0x30eba4
007f7468  04 20 9d e5                                      ldr r2, [sp, #4]
007f746c  00 c0 a0 e1                                      mov ip, r0
007f7470  04 c0 8d e5                                      str ip, [sp, #4]
007f7474  02 10 a0 e1                                      mov r1, r2
007f7478  02 00 a0 e1                                      mov r0, r2
007f747c  3a 5e ec eb                                      bl #0x30ed6c
007f7480  00 10 a0 e1                                      mov r1, r0
007f7484  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f7488  c7 5b ec eb                                      bl #0x30e3ac
007f748c  00 30 9d e5                                      ldr r3, [sp]
007f7490  2c 00 8d e5                                      str r0, [sp, #0x2c]
007f7494  03 10 a0 e1                                      mov r1, r3
007f7498  03 00 a0 e1                                      mov r0, r3
007f749c  32 5e ec eb                                      bl #0x30ed6c
007f74a0  00 10 a0 e1                                      mov r1, r0
007f74a4  28 00 9d e5                                      ldr r0, [sp, #0x28]
007f74a8  bf 5b ec eb                                      bl #0x30e3ac
007f74ac  30 00 8d e5                                      str r0, [sp, #0x30]
007f74b0  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f74b4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007f74b8  2b 5e ec eb                                      bl #0x30ed6c
007f74bc  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f74c0  00 30 a0 e1                                      mov r3, r0
007f74c4  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f74c8  00 30 8d e5                                      str r3, [sp]
007f74cc  26 5e ec eb                                      bl #0x30ed6c
007f74d0  00 30 9d e5                                      ldr r3, [sp]
007f74d4  00 10 a0 e1                                      mov r1, r0
007f74d8  03 00 a0 e1                                      mov r0, r3
007f74dc  b0 5d ec eb                                      bl #0x30eba4
007f74e0  04 c0 9d e5                                      ldr ip, [sp, #4]
007f74e4  0c 10 a0 e1                                      mov r1, ip
007f74e8  ad 5d ec eb                                      bl #0x30eba4
007f74ec  00 10 a0 e1                                      mov r1, r0
007f74f0  fe 05 a0 e3                                      mov r0, #0x3f800000
007f74f4  e6 5d ec eb                                      bl #0x30ec94
007f74f8  2c 00 84 e5                                      str r0, [r4, #0x2c]
007f74fc  74 20 96 e5                                      ldr r2, [r6, #0x74]
007f7500  78 10 96 e5                                      ldr r1, [r6, #0x78]
007f7504  02 00 a0 e1                                      mov r0, r2
007f7508  04 20 8d e5                                      str r2, [sp, #4]
007f750c  16 5e ec eb                                      bl #0x30ed6c
007f7510  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f7514  00 30 a0 e1                                      mov r3, r0
007f7518  74 00 95 e5                                      ldr r0, [r5, #0x74]
007f751c  00 30 8d e5                                      str r3, [sp]
007f7520  11 5e ec eb                                      bl #0x30ed6c
007f7524  00 30 9d e5                                      ldr r3, [sp]
007f7528  00 10 a0 e1                                      mov r1, r0
007f752c  03 00 a0 e1                                      mov r0, r3
007f7530  9b 5d ec eb                                      bl #0x30eba4
007f7534  04 20 9d e5                                      ldr r2, [sp, #4]
007f7538  00 c0 a0 e1                                      mov ip, r0
007f753c  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f7540  02 00 a0 e1                                      mov r0, r2
007f7544  04 c0 8d e5                                      str ip, [sp, #4]
007f7548  07 5e ec eb                                      bl #0x30ed6c
007f754c  00 10 a0 e1                                      mov r1, r0
007f7550  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007f7554  04 5e ec eb                                      bl #0x30ed6c
007f7558  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f755c  00 30 a0 e1                                      mov r3, r0
007f7560  74 00 95 e5                                      ldr r0, [r5, #0x74]
007f7564  00 30 8d e5                                      str r3, [sp]
007f7568  ff 5d ec eb                                      bl #0x30ed6c
007f756c  00 10 a0 e1                                      mov r1, r0
007f7570  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f7574  fc 5d ec eb                                      bl #0x30ed6c
007f7578  00 30 9d e5                                      ldr r3, [sp]
007f757c  00 10 a0 e1                                      mov r1, r0
007f7580  03 00 a0 e1                                      mov r0, r3
007f7584  86 5d ec eb                                      bl #0x30eba4
007f7588  04 c0 9d e5                                      ldr ip, [sp, #4]
007f758c  0c 10 a0 e1                                      mov r1, ip
007f7590  83 5d ec eb                                      bl #0x30eba4
007f7594  00 10 a0 e1                                      mov r1, r0
007f7598  fe 05 a0 e3                                      mov r0, #0x3f800000
007f759c  bc 5d ec eb                                      bl #0x30ec94
007f75a0  34 00 84 e5                                      str r0, [r4, #0x34]
007f75a4  0b 10 a0 e1                                      mov r1, fp
007f75a8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f75ac  ee 5d ec eb                                      bl #0x30ed6c
007f75b0  09 10 a0 e1                                      mov r1, sb
007f75b4  00 b0 a0 e1                                      mov fp, r0
007f75b8  34 00 9d e5                                      ldr r0, [sp, #0x34]
007f75bc  ea 5d ec eb                                      bl #0x30ed6c
007f75c0  00 10 a0 e1                                      mov r1, r0
007f75c4  0b 00 a0 e1                                      mov r0, fp
007f75c8  75 5d ec eb                                      bl #0x30eba4
007f75cc  0a 10 a0 e1                                      mov r1, sl
007f75d0  00 90 a0 e1                                      mov sb, r0
007f75d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f75d8  e3 5d ec eb                                      bl #0x30ed6c
007f75dc  08 10 a0 e1                                      mov r1, r8
007f75e0  00 a0 a0 e1                                      mov sl, r0
007f75e4  34 00 9d e5                                      ldr r0, [sp, #0x34]
007f75e8  df 5d ec eb                                      bl #0x30ed6c
007f75ec  00 10 a0 e1                                      mov r1, r0
007f75f0  0a 00 a0 e1                                      mov r0, sl
007f75f4  6a 5d ec eb                                      bl #0x30eba4
007f75f8  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f75fc  00 a0 a0 e1                                      mov sl, r0
007f7600  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f7604  66 5d ec eb                                      bl #0x30eba4
007f7608  09 10 a0 e1                                      mov r1, sb
007f760c  00 80 a0 e1                                      mov r8, r0
007f7610  09 00 a0 e1                                      mov r0, sb
007f7614  d4 5d ec eb                                      bl #0x30ed6c
007f7618  00 10 a0 e1                                      mov r1, r0
007f761c  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f7620  61 5b ec eb                                      bl #0x30e3ac
007f7624  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f7628  cf 5d ec eb                                      bl #0x30ed6c
007f762c  0a 10 a0 e1                                      mov r1, sl
007f7630  00 90 a0 e1                                      mov sb, r0
007f7634  0a 00 a0 e1                                      mov r0, sl
007f7638  cb 5d ec eb                                      bl #0x30ed6c
007f763c  00 10 a0 e1                                      mov r1, r0
007f7640  28 00 9d e5                                      ldr r0, [sp, #0x28]
007f7644  58 5b ec eb                                      bl #0x30e3ac
007f7648  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f764c  c6 5d ec eb                                      bl #0x30ed6c
007f7650  00 10 a0 e1                                      mov r1, r0
007f7654  09 00 a0 e1                                      mov r0, sb
007f7658  51 5d ec eb                                      bl #0x30eba4
007f765c  08 10 a0 e1                                      mov r1, r8
007f7660  4f 5d ec eb                                      bl #0x30eba4
007f7664  00 10 a0 e1                                      mov r1, r0
007f7668  fe 05 a0 e3                                      mov r0, #0x3f800000
007f766c  88 5d ec eb                                      bl #0x30ec94
007f7670  00 e0 a0 e3                                      mov lr, #0
007f7674  30 00 84 e5                                      str r0, [r4, #0x30]
007f7678  3c e0 84 e5                                      str lr, [r4, #0x3c]
007f767c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f7680  0e 10 a0 e1                                      mov r1, lr
007f7684  1b 5b ec eb                                      bl #0x30e2f8
007f7688  00 00 50 e3                                      cmp r0, #0
007f768c  04 00 00 0a                                      beq #0x7f76a4
007f7690  c2 14 a0 e3                                      mov r1, #0xc2000000
007f7694  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f7698  07 16 81 e2                                      add r1, r1, #0x700000
007f769c  b2 5d ec eb                                      bl #0x30ed6c
007f76a0  3c 00 84 e5                                      str r0, [r4, #0x3c]
007f76a4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007f76a8  44 00 9d e5                                      ldr r0, [sp, #0x44]
007f76ac  ae 5d ec eb                                      bl #0x30ed6c
007f76b0  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f76b4  00 a0 a0 e1                                      mov sl, r0
007f76b8  48 00 9d e5                                      ldr r0, [sp, #0x48]
007f76bc  aa 5d ec eb                                      bl #0x30ed6c
007f76c0  0a 10 a0 e1                                      mov r1, sl
007f76c4  00 80 a0 e1                                      mov r8, r0
007f76c8  50 00 9d e5                                      ldr r0, [sp, #0x50]
007f76cc  34 5d ec eb                                      bl #0x30eba4
007f76d0  08 10 a0 e1                                      mov r1, r8
007f76d4  00 a0 a0 e1                                      mov sl, r0
007f76d8  54 00 9d e5                                      ldr r0, [sp, #0x54]
007f76dc  30 5d ec eb                                      bl #0x30eba4
007f76e0  58 10 9d e5                                      ldr r1, [sp, #0x58]
007f76e4  00 80 a0 e1                                      mov r8, r0
007f76e8  0a 00 a0 e1                                      mov r0, sl
007f76ec  2e 5b ec eb                                      bl #0x30e3ac
007f76f0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
007f76f4  00 90 a0 e1                                      mov sb, r0
007f76f8  08 00 a0 e1                                      mov r0, r8
007f76fc  2a 5b ec eb                                      bl #0x30e3ac
007f7700  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f7704  00 80 a0 e1                                      mov r8, r0
007f7708  40 00 9d e5                                      ldr r0, [sp, #0x40]
007f770c  96 5d ec eb                                      bl #0x30ed6c
007f7710  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f7714  00 a0 a0 e1                                      mov sl, r0
007f7718  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007f771c  92 5d ec eb                                      bl #0x30ed6c
007f7720  0a 10 a0 e1                                      mov r1, sl
007f7724  00 b0 a0 e1                                      mov fp, r0
007f7728  09 00 a0 e1                                      mov r0, sb
007f772c  1e 5b ec eb                                      bl #0x30e3ac
007f7730  10 20 9d e5                                      ldr r2, [sp, #0x10]
007f7734  80 10 92 e5                                      ldr r1, [r2, #0x80]
007f7738  8b 5d ec eb                                      bl #0x30ed6c
007f773c  0b 10 a0 e1                                      mov r1, fp
007f7740  00 a0 a0 e1                                      mov sl, r0
007f7744  08 00 a0 e1                                      mov r0, r8
007f7748  17 5b ec eb                                      bl #0x30e3ac
007f774c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007f7750  84 10 93 e5                                      ldr r1, [r3, #0x84]
007f7754  84 5d ec eb                                      bl #0x30ed6c
007f7758  00 10 a0 e1                                      mov r1, r0
007f775c  0a 00 a0 e1                                      mov r0, sl
007f7760  0f 5d ec eb                                      bl #0x30eba4
007f7764  bf 14 a0 e3                                      mov r1, #0xbf000000
007f7768  02 15 81 e2                                      add r1, r1, #0x800000
007f776c  00 80 a0 e1                                      mov r8, r0
007f7770  e5 5b ec eb                                      bl #0x30e70c
007f7774  00 00 50 e3                                      cmp r0, #0
007f7778  08 00 00 0a                                      beq #0x7f77a0
007f777c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
007f7780  08 10 a0 e1                                      mov r1, r8
007f7784  98 00 9e e5                                      ldr r0, [lr, #0x98]
007f7788  02 01 80 e2                                      add r0, r0, #0x80000000
007f778c  76 5d ec eb                                      bl #0x30ed6c
007f7790  00 10 a0 e1                                      mov r1, r0
007f7794  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007f7798  01 5d ec eb                                      bl #0x30eba4
007f779c  3c 00 84 e5                                      str r0, [r4, #0x3c]
007f77a0  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f77a4  20 20 9d e5                                      ldr r2, [sp, #0x20]
007f77a8  20 70 87 e2                                      add r7, r7, #0x20
007f77ac  9c 30 91 e5                                      ldr r3, [r1, #0x9c]
007f77b0  01 20 82 e2                                      add r2, r2, #1
007f77b4  20 20 8d e5                                      str r2, [sp, #0x20]
007f77b8  02 00 53 e1                                      cmp r3, r2
007f77bc  40 40 84 e2                                      add r4, r4, #0x40
007f77c0  9e fe ff ca                                      bgt #0x7f7240
007f77c4  38 30 9d e5                                      ldr r3, [sp, #0x38]
007f77c8  60 10 9d e5                                      ldr r1, [sp, #0x60]
007f77cc  18 20 9d e5                                      ldr r2, [sp, #0x18]
007f77d0  01 30 83 e2                                      add r3, r3, #1
007f77d4  38 30 8d e5                                      str r3, [sp, #0x38]
007f77d8  01 00 53 e1                                      cmp r3, r1
007f77dc  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007f77e0  4c 20 82 e2                                      add r2, r2, #0x4c
007f77e4  18 20 8d e5                                      str r2, [sp, #0x18]
007f77e8  a0 30 83 e2                                      add r3, r3, #0xa0
007f77ec  3c 30 8d e5                                      str r3, [sp, #0x3c]
007f77f0  6b fe ff 1a                                      bne #0x7f71a4
007f77f4  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
007f77f8  38 20 9d e5                                      ldr r2, [sp, #0x38]
007f77fc  02 10 81 e0                                      add r1, r1, r2
007f7800  7c 10 8d e5                                      str r1, [sp, #0x7c]
007f7804  78 30 9d e5                                      ldr r3, [sp, #0x78]
007f7808  80 10 9d e5                                      ldr r1, [sp, #0x80]
007f780c  01 30 83 e2                                      add r3, r3, #1
007f7810  01 00 53 e1                                      cmp r3, r1
007f7814  78 30 8d e5                                      str r3, [sp, #0x78]
007f7818  34 fe ff 1a                                      bne #0x7f70f0
007f781c  64 00 9d e5                                      ldr r0, [sp, #0x64]
007f7820  8c d0 8d e2                                      add sp, sp, #0x8c
007f7824  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f7828  85 ef ff eb                                      bl #0x7f3644
007f782c  64 20 9d e5                                      ldr r2, [sp, #0x64]
007f7830  18 00 82 e5                                      str r0, [r2, #0x18]
007f7834  f8 ff ff ea                                      b #0x7f781c

; FUNCTION 0x007f7838, declared_size=2016, range_size=2016, mode=arm
; class-group: b2ContactSolver
; alias: _ZN15b2ContactSolverC2ERK10b2TimeStepPP9b2ContactiP16b2StackAllocator
; demangled: b2ContactSolver::b2ContactSolver(b2TimeStep const&, b2Contact**, int, b2StackAllocator*)
; decoder-mode: arm
007f7838  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f783c  8c d0 4d e2                                      sub sp, sp, #0x8c
007f7840  64 00 8d e5                                      str r0, [sp, #0x64]
007f7844  64 e0 9d e5                                      ldr lr, [sp, #0x64]
007f7848  80 30 8d e5                                      str r3, [sp, #0x80]
007f784c  84 20 8d e5                                      str r2, [sp, #0x84]
007f7850  01 c0 a0 e1                                      mov ip, r1
007f7854  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007f7858  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007f785c  00 20 9c e5                                      ldr r2, [ip]
007f7860  80 10 9d e5                                      ldr r1, [sp, #0x80]
007f7864  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
007f7868  00 20 8e e5                                      str r2, [lr]
007f786c  64 20 9d e5                                      ldr r2, [sp, #0x64]
007f7870  00 00 51 e3                                      cmp r1, #0
007f7874  00 10 a0 e3                                      mov r1, #0
007f7878  14 00 82 e5                                      str r0, [r2, #0x14]
007f787c  1c 10 82 e5                                      str r1, [r2, #0x1c]
007f7880  e0 01 00 da                                      ble #0x7f8008
007f7884  64 c0 9d e5                                      ldr ip, [sp, #0x64]
007f7888  84 e0 9d e5                                      ldr lr, [sp, #0x84]
007f788c  80 40 9d e5                                      ldr r4, [sp, #0x80]
007f7890  01 30 a0 e1                                      mov r3, r1
007f7894  03 21 9e e7                                      ldr r2, [lr, r3, lsl #2]
007f7898  01 30 83 e2                                      add r3, r3, #1
007f789c  04 00 53 e1                                      cmp r3, r4
007f78a0  08 20 92 e5                                      ldr r2, [r2, #8]
007f78a4  02 10 81 e0                                      add r1, r1, r2
007f78a8  1c 10 8c e5                                      str r1, [ip, #0x1c]
007f78ac  f8 ff ff 1a                                      bne #0x7f7894
007f78b0  a0 30 a0 e3                                      mov r3, #0xa0
007f78b4  93 01 01 e0                                      mul r1, r3, r1
007f78b8  61 ef ff eb                                      bl #0x7f3644
007f78bc  64 e0 9d e5                                      ldr lr, [sp, #0x64]
007f78c0  00 30 a0 e3                                      mov r3, #0
007f78c4  78 30 8d e5                                      str r3, [sp, #0x78]
007f78c8  18 00 8e e5                                      str r0, [lr, #0x18]
007f78cc  7c 30 8d e5                                      str r3, [sp, #0x7c]
007f78d0  78 10 9d e5                                      ldr r1, [sp, #0x78]
007f78d4  84 20 9d e5                                      ldr r2, [sp, #0x84]
007f78d8  01 41 92 e7                                      ldr r4, [r2, r1, lsl #2]
007f78dc  08 e0 94 e5                                      ldr lr, [r4, #8]
007f78e0  38 30 94 e5                                      ldr r3, [r4, #0x38]
007f78e4  34 20 94 e5                                      ldr r2, [r4, #0x34]
007f78e8  60 e0 8d e5                                      str lr, [sp, #0x60]
007f78ec  0c 50 93 e5                                      ldr r5, [r3, #0xc]
007f78f0  04 00 a0 e1                                      mov r0, r4
007f78f4  00 30 94 e5                                      ldr r3, [r4]
007f78f8  0c 60 92 e5                                      ldr r6, [r2, #0xc]
007f78fc  0f e0 a0 e1                                      mov lr, pc
007f7900  00 f0 93 e5                                      ldr pc, [r3]
007f7904  40 20 94 e5                                      ldr r2, [r4, #0x40]
007f7908  60 10 9d e5                                      ldr r1, [sp, #0x60]
007f790c  68 20 8d e5                                      str r2, [sp, #0x68]
007f7910  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
007f7914  00 00 51 e3                                      cmp r1, #0
007f7918  6c 40 8d e5                                      str r4, [sp, #0x6c]
007f791c  44 30 96 e5                                      ldr r3, [r6, #0x44]
007f7920  5c 30 8d e5                                      str r3, [sp, #0x5c]
007f7924  40 10 96 e5                                      ldr r1, [r6, #0x40]
007f7928  58 10 8d e5                                      str r1, [sp, #0x58]
007f792c  44 20 95 e5                                      ldr r2, [r5, #0x44]
007f7930  54 20 8d e5                                      str r2, [sp, #0x54]
007f7934  40 30 95 e5                                      ldr r3, [r5, #0x40]
007f7938  50 30 8d e5                                      str r3, [sp, #0x50]
007f793c  48 10 96 e5                                      ldr r1, [r6, #0x48]
007f7940  4c 10 8d e5                                      str r1, [sp, #0x4c]
007f7944  48 20 95 e5                                      ldr r2, [r5, #0x48]
007f7948  48 20 8d e5                                      str r2, [sp, #0x48]
007f794c  a4 01 00 da                                      ble #0x7f7fe4
007f7950  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
007f7954  a0 30 a0 e3                                      mov r3, #0xa0
007f7958  00 20 a0 e3                                      mov r2, #0
007f795c  93 01 03 e0                                      mul r3, r3, r1
007f7960  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
007f7964  3c 30 8d e5                                      str r3, [sp, #0x3c]
007f7968  48 30 9d e5                                      ldr r3, [sp, #0x48]
007f796c  02 11 81 e2                                      add r1, r1, #0x80000000
007f7970  18 00 8d e5                                      str r0, [sp, #0x18]
007f7974  02 31 83 e2                                      add r3, r3, #0x80000000
007f7978  38 20 8d e5                                      str r2, [sp, #0x38]
007f797c  70 30 8d e5                                      str r3, [sp, #0x70]
007f7980  74 10 8d e5                                      str r1, [sp, #0x74]
007f7984  18 30 9d e5                                      ldr r3, [sp, #0x18]
007f7988  64 20 9d e5                                      ldr r2, [sp, #0x64]
007f798c  18 10 9d e5                                      ldr r1, [sp, #0x18]
007f7990  44 30 93 e5                                      ldr r3, [r3, #0x44]
007f7994  18 80 92 e5                                      ldr r8, [r2, #0x18]
007f7998  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
007f799c  0c 30 8d e5                                      str r3, [sp, #0xc]
007f79a0  40 10 91 e5                                      ldr r1, [r1, #0x40]
007f79a4  02 80 88 e0                                      add r8, r8, r2
007f79a8  1c 10 8d e5                                      str r1, [sp, #0x1c]
007f79ac  8c 60 88 e5                                      str r6, [r8, #0x8c]
007f79b0  90 50 88 e5                                      str r5, [r8, #0x90]
007f79b4  18 30 9d e5                                      ldr r3, [sp, #0x18]
007f79b8  88 30 88 e5                                      str r3, [r8, #0x88]
007f79bc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f79c0  84 10 88 e5                                      str r1, [r8, #0x84]
007f79c4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007f79c8  80 20 88 e5                                      str r2, [r8, #0x80]
007f79cc  18 10 9d e5                                      ldr r1, [sp, #0x18]
007f79d0  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
007f79d4  48 30 91 e5                                      ldr r3, [r1, #0x48]
007f79d8  94 20 88 e5                                      str r2, [r8, #0x94]
007f79dc  68 10 9d e5                                      ldr r1, [sp, #0x68]
007f79e0  00 00 53 e3                                      cmp r3, #0
007f79e4  9c 30 88 e5                                      str r3, [r8, #0x9c]
007f79e8  98 10 88 e5                                      str r1, [r8, #0x98]
007f79ec  6c 01 00 da                                      ble #0x7f7fa4
007f79f0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007f79f4  70 30 9d e5                                      ldr r3, [sp, #0x70]
007f79f8  74 e0 9d e5                                      ldr lr, [sp, #0x74]
007f79fc  18 70 9d e5                                      ldr r7, [sp, #0x18]
007f7a00  02 21 82 e2                                      add r2, r2, #0x80000000
007f7a04  00 10 a0 e3                                      mov r1, #0
007f7a08  34 20 8d e5                                      str r2, [sp, #0x34]
007f7a0c  44 30 8d e5                                      str r3, [sp, #0x44]
007f7a10  40 e0 8d e5                                      str lr, [sp, #0x40]
007f7a14  08 40 a0 e1                                      mov r4, r8
007f7a18  20 10 8d e5                                      str r1, [sp, #0x20]
007f7a1c  10 80 8d e5                                      str r8, [sp, #0x10]
007f7a20  14 30 97 e5                                      ldr r3, [r7, #0x14]
007f7a24  20 30 84 e5                                      str r3, [r4, #0x20]
007f7a28  18 30 97 e5                                      ldr r3, [r7, #0x18]
007f7a2c  24 30 84 e5                                      str r3, [r4, #0x24]
007f7a30  10 20 97 e5                                      ldr r2, [r7, #0x10]
007f7a34  00 30 a0 e3                                      mov r3, #0
007f7a38  14 20 8d e5                                      str r2, [sp, #0x14]
007f7a3c  38 20 84 e5                                      str r2, [r4, #0x38]
007f7a40  28 30 84 e5                                      str r3, [r4, #0x28]
007f7a44  00 30 97 e5                                      ldr r3, [r7]
007f7a48  00 30 84 e5                                      str r3, [r4]
007f7a4c  04 30 97 e5                                      ldr r3, [r7, #4]
007f7a50  04 30 84 e5                                      str r3, [r4, #4]
007f7a54  08 30 97 e5                                      ldr r3, [r7, #8]
007f7a58  08 30 84 e5                                      str r3, [r4, #8]
007f7a5c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007f7a60  0c 30 84 e5                                      str r3, [r4, #0xc]
007f7a64  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007f7a68  00 00 97 e5                                      ldr r0, [r7]
007f7a6c  4e 5a ec eb                                      bl #0x30e3ac
007f7a70  20 10 96 e5                                      ldr r1, [r6, #0x20]
007f7a74  00 a0 a0 e1                                      mov sl, r0
007f7a78  04 00 97 e5                                      ldr r0, [r7, #4]
007f7a7c  4a 5a ec eb                                      bl #0x30e3ac
007f7a80  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f7a84  00 80 a0 e1                                      mov r8, r0
007f7a88  0a 00 a0 e1                                      mov r0, sl
007f7a8c  b6 5c ec eb                                      bl #0x30ed6c
007f7a90  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f7a94  00 90 a0 e1                                      mov sb, r0
007f7a98  08 00 a0 e1                                      mov r0, r8
007f7a9c  b2 5c ec eb                                      bl #0x30ed6c
007f7aa0  00 10 a0 e1                                      mov r1, r0
007f7aa4  09 00 a0 e1                                      mov r0, sb
007f7aa8  3d 5c ec eb                                      bl #0x30eba4
007f7aac  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f7ab0  00 b0 a0 e1                                      mov fp, r0
007f7ab4  0a 00 a0 e1                                      mov r0, sl
007f7ab8  ab 5c ec eb                                      bl #0x30ed6c
007f7abc  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f7ac0  00 a0 a0 e1                                      mov sl, r0
007f7ac4  08 00 a0 e1                                      mov r0, r8
007f7ac8  a7 5c ec eb                                      bl #0x30ed6c
007f7acc  00 10 a0 e1                                      mov r1, r0
007f7ad0  0a 00 a0 e1                                      mov r0, sl
007f7ad4  32 5c ec eb                                      bl #0x30eba4
007f7ad8  10 b0 84 e5                                      str fp, [r4, #0x10]
007f7adc  14 00 84 e5                                      str r0, [r4, #0x14]
007f7ae0  00 90 a0 e1                                      mov sb, r0
007f7ae4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f7ae8  08 00 97 e5                                      ldr r0, [r7, #8]
007f7aec  2e 5a ec eb                                      bl #0x30e3ac
007f7af0  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f7af4  00 80 a0 e1                                      mov r8, r0
007f7af8  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007f7afc  2a 5a ec eb                                      bl #0x30e3ac
007f7b00  08 00 8d e5                                      str r0, [sp, #8]
007f7b04  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f7b08  08 00 a0 e1                                      mov r0, r8
007f7b0c  96 5c ec eb                                      bl #0x30ed6c
007f7b10  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f7b14  00 a0 a0 e1                                      mov sl, r0
007f7b18  08 00 9d e5                                      ldr r0, [sp, #8]
007f7b1c  92 5c ec eb                                      bl #0x30ed6c
007f7b20  00 10 a0 e1                                      mov r1, r0
007f7b24  0a 00 a0 e1                                      mov r0, sl
007f7b28  1d 5c ec eb                                      bl #0x30eba4
007f7b2c  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f7b30  00 a0 a0 e1                                      mov sl, r0
007f7b34  08 00 a0 e1                                      mov r0, r8
007f7b38  8b 5c ec eb                                      bl #0x30ed6c
007f7b3c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f7b40  00 80 a0 e1                                      mov r8, r0
007f7b44  08 00 9d e5                                      ldr r0, [sp, #8]
007f7b48  87 5c ec eb                                      bl #0x30ed6c
007f7b4c  00 10 a0 e1                                      mov r1, r0
007f7b50  08 00 a0 e1                                      mov r0, r8
007f7b54  12 5c ec eb                                      bl #0x30eba4
007f7b58  0b 10 a0 e1                                      mov r1, fp
007f7b5c  00 80 a0 e1                                      mov r8, r0
007f7b60  1c 00 84 e5                                      str r0, [r4, #0x1c]
007f7b64  18 a0 84 e5                                      str sl, [r4, #0x18]
007f7b68  0b 00 a0 e1                                      mov r0, fp
007f7b6c  7e 5c ec eb                                      bl #0x30ed6c
007f7b70  09 10 a0 e1                                      mov r1, sb
007f7b74  00 30 a0 e1                                      mov r3, r0
007f7b78  09 00 a0 e1                                      mov r0, sb
007f7b7c  00 30 8d e5                                      str r3, [sp]
007f7b80  79 5c ec eb                                      bl #0x30ed6c
007f7b84  00 30 9d e5                                      ldr r3, [sp]
007f7b88  00 10 a0 e1                                      mov r1, r0
007f7b8c  03 00 a0 e1                                      mov r0, r3
007f7b90  03 5c ec eb                                      bl #0x30eba4
007f7b94  0a 10 a0 e1                                      mov r1, sl
007f7b98  24 00 8d e5                                      str r0, [sp, #0x24]
007f7b9c  0a 00 a0 e1                                      mov r0, sl
007f7ba0  71 5c ec eb                                      bl #0x30ed6c
007f7ba4  08 10 a0 e1                                      mov r1, r8
007f7ba8  00 30 a0 e1                                      mov r3, r0
007f7bac  08 00 a0 e1                                      mov r0, r8
007f7bb0  00 30 8d e5                                      str r3, [sp]
007f7bb4  6c 5c ec eb                                      bl #0x30ed6c
007f7bb8  00 30 9d e5                                      ldr r3, [sp]
007f7bbc  00 10 a0 e1                                      mov r1, r0
007f7bc0  03 00 a0 e1                                      mov r0, r3
007f7bc4  f6 5b ec eb                                      bl #0x30eba4
007f7bc8  0b 10 a0 e1                                      mov r1, fp
007f7bcc  28 00 8d e5                                      str r0, [sp, #0x28]
007f7bd0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f7bd4  64 5c ec eb                                      bl #0x30ed6c
007f7bd8  09 10 a0 e1                                      mov r1, sb
007f7bdc  00 30 a0 e1                                      mov r3, r0
007f7be0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f7be4  00 30 8d e5                                      str r3, [sp]
007f7be8  5f 5c ec eb                                      bl #0x30ed6c
007f7bec  00 30 9d e5                                      ldr r3, [sp]
007f7bf0  00 10 a0 e1                                      mov r1, r0
007f7bf4  03 00 a0 e1                                      mov r0, r3
007f7bf8  e9 5b ec eb                                      bl #0x30eba4
007f7bfc  0a 10 a0 e1                                      mov r1, sl
007f7c00  00 20 a0 e1                                      mov r2, r0
007f7c04  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f7c08  04 20 8d e5                                      str r2, [sp, #4]
007f7c0c  56 5c ec eb                                      bl #0x30ed6c
007f7c10  08 10 a0 e1                                      mov r1, r8
007f7c14  00 30 a0 e1                                      mov r3, r0
007f7c18  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f7c1c  00 30 8d e5                                      str r3, [sp]
007f7c20  51 5c ec eb                                      bl #0x30ed6c
007f7c24  00 30 9d e5                                      ldr r3, [sp]
007f7c28  00 10 a0 e1                                      mov r1, r0
007f7c2c  03 00 a0 e1                                      mov r0, r3
007f7c30  db 5b ec eb                                      bl #0x30eba4
007f7c34  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f7c38  00 30 a0 e1                                      mov r3, r0
007f7c3c  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f7c40  00 30 8d e5                                      str r3, [sp]
007f7c44  d6 5b ec eb                                      bl #0x30eba4
007f7c48  04 20 9d e5                                      ldr r2, [sp, #4]
007f7c4c  00 c0 a0 e1                                      mov ip, r0
007f7c50  04 c0 8d e5                                      str ip, [sp, #4]
007f7c54  02 10 a0 e1                                      mov r1, r2
007f7c58  02 00 a0 e1                                      mov r0, r2
007f7c5c  42 5c ec eb                                      bl #0x30ed6c
007f7c60  00 10 a0 e1                                      mov r1, r0
007f7c64  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f7c68  cf 59 ec eb                                      bl #0x30e3ac
007f7c6c  00 30 9d e5                                      ldr r3, [sp]
007f7c70  2c 00 8d e5                                      str r0, [sp, #0x2c]
007f7c74  03 10 a0 e1                                      mov r1, r3
007f7c78  03 00 a0 e1                                      mov r0, r3
007f7c7c  3a 5c ec eb                                      bl #0x30ed6c
007f7c80  00 10 a0 e1                                      mov r1, r0
007f7c84  28 00 9d e5                                      ldr r0, [sp, #0x28]
007f7c88  c7 59 ec eb                                      bl #0x30e3ac
007f7c8c  30 00 8d e5                                      str r0, [sp, #0x30]
007f7c90  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f7c94  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007f7c98  33 5c ec eb                                      bl #0x30ed6c
007f7c9c  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f7ca0  00 30 a0 e1                                      mov r3, r0
007f7ca4  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f7ca8  00 30 8d e5                                      str r3, [sp]
007f7cac  2e 5c ec eb                                      bl #0x30ed6c
007f7cb0  00 30 9d e5                                      ldr r3, [sp]
007f7cb4  00 10 a0 e1                                      mov r1, r0
007f7cb8  03 00 a0 e1                                      mov r0, r3
007f7cbc  b8 5b ec eb                                      bl #0x30eba4
007f7cc0  04 c0 9d e5                                      ldr ip, [sp, #4]
007f7cc4  0c 10 a0 e1                                      mov r1, ip
007f7cc8  b5 5b ec eb                                      bl #0x30eba4
007f7ccc  00 10 a0 e1                                      mov r1, r0
007f7cd0  fe 05 a0 e3                                      mov r0, #0x3f800000
007f7cd4  ee 5b ec eb                                      bl #0x30ec94
007f7cd8  2c 00 84 e5                                      str r0, [r4, #0x2c]
007f7cdc  74 20 96 e5                                      ldr r2, [r6, #0x74]
007f7ce0  78 10 96 e5                                      ldr r1, [r6, #0x78]
007f7ce4  02 00 a0 e1                                      mov r0, r2
007f7ce8  04 20 8d e5                                      str r2, [sp, #4]
007f7cec  1e 5c ec eb                                      bl #0x30ed6c
007f7cf0  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f7cf4  00 30 a0 e1                                      mov r3, r0
007f7cf8  74 00 95 e5                                      ldr r0, [r5, #0x74]
007f7cfc  00 30 8d e5                                      str r3, [sp]
007f7d00  19 5c ec eb                                      bl #0x30ed6c
007f7d04  00 30 9d e5                                      ldr r3, [sp]
007f7d08  00 10 a0 e1                                      mov r1, r0
007f7d0c  03 00 a0 e1                                      mov r0, r3
007f7d10  a3 5b ec eb                                      bl #0x30eba4
007f7d14  04 20 9d e5                                      ldr r2, [sp, #4]
007f7d18  00 c0 a0 e1                                      mov ip, r0
007f7d1c  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f7d20  02 00 a0 e1                                      mov r0, r2
007f7d24  04 c0 8d e5                                      str ip, [sp, #4]
007f7d28  0f 5c ec eb                                      bl #0x30ed6c
007f7d2c  00 10 a0 e1                                      mov r1, r0
007f7d30  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007f7d34  0c 5c ec eb                                      bl #0x30ed6c
007f7d38  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f7d3c  00 30 a0 e1                                      mov r3, r0
007f7d40  74 00 95 e5                                      ldr r0, [r5, #0x74]
007f7d44  00 30 8d e5                                      str r3, [sp]
007f7d48  07 5c ec eb                                      bl #0x30ed6c
007f7d4c  00 10 a0 e1                                      mov r1, r0
007f7d50  30 00 9d e5                                      ldr r0, [sp, #0x30]
007f7d54  04 5c ec eb                                      bl #0x30ed6c
007f7d58  00 30 9d e5                                      ldr r3, [sp]
007f7d5c  00 10 a0 e1                                      mov r1, r0
007f7d60  03 00 a0 e1                                      mov r0, r3
007f7d64  8e 5b ec eb                                      bl #0x30eba4
007f7d68  04 c0 9d e5                                      ldr ip, [sp, #4]
007f7d6c  0c 10 a0 e1                                      mov r1, ip
007f7d70  8b 5b ec eb                                      bl #0x30eba4
007f7d74  00 10 a0 e1                                      mov r1, r0
007f7d78  fe 05 a0 e3                                      mov r0, #0x3f800000
007f7d7c  c4 5b ec eb                                      bl #0x30ec94
007f7d80  34 00 84 e5                                      str r0, [r4, #0x34]
007f7d84  0b 10 a0 e1                                      mov r1, fp
007f7d88  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f7d8c  f6 5b ec eb                                      bl #0x30ed6c
007f7d90  09 10 a0 e1                                      mov r1, sb
007f7d94  00 b0 a0 e1                                      mov fp, r0
007f7d98  34 00 9d e5                                      ldr r0, [sp, #0x34]
007f7d9c  f2 5b ec eb                                      bl #0x30ed6c
007f7da0  00 10 a0 e1                                      mov r1, r0
007f7da4  0b 00 a0 e1                                      mov r0, fp
007f7da8  7d 5b ec eb                                      bl #0x30eba4
007f7dac  0a 10 a0 e1                                      mov r1, sl
007f7db0  00 90 a0 e1                                      mov sb, r0
007f7db4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f7db8  eb 5b ec eb                                      bl #0x30ed6c
007f7dbc  08 10 a0 e1                                      mov r1, r8
007f7dc0  00 a0 a0 e1                                      mov sl, r0
007f7dc4  34 00 9d e5                                      ldr r0, [sp, #0x34]
007f7dc8  e7 5b ec eb                                      bl #0x30ed6c
007f7dcc  00 10 a0 e1                                      mov r1, r0
007f7dd0  0a 00 a0 e1                                      mov r0, sl
007f7dd4  72 5b ec eb                                      bl #0x30eba4
007f7dd8  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f7ddc  00 a0 a0 e1                                      mov sl, r0
007f7de0  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f7de4  6e 5b ec eb                                      bl #0x30eba4
007f7de8  09 10 a0 e1                                      mov r1, sb
007f7dec  00 80 a0 e1                                      mov r8, r0
007f7df0  09 00 a0 e1                                      mov r0, sb
007f7df4  dc 5b ec eb                                      bl #0x30ed6c
007f7df8  00 10 a0 e1                                      mov r1, r0
007f7dfc  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f7e00  69 59 ec eb                                      bl #0x30e3ac
007f7e04  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f7e08  d7 5b ec eb                                      bl #0x30ed6c
007f7e0c  0a 10 a0 e1                                      mov r1, sl
007f7e10  00 90 a0 e1                                      mov sb, r0
007f7e14  0a 00 a0 e1                                      mov r0, sl
007f7e18  d3 5b ec eb                                      bl #0x30ed6c
007f7e1c  00 10 a0 e1                                      mov r1, r0
007f7e20  28 00 9d e5                                      ldr r0, [sp, #0x28]
007f7e24  60 59 ec eb                                      bl #0x30e3ac
007f7e28  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f7e2c  ce 5b ec eb                                      bl #0x30ed6c
007f7e30  00 10 a0 e1                                      mov r1, r0
007f7e34  09 00 a0 e1                                      mov r0, sb
007f7e38  59 5b ec eb                                      bl #0x30eba4
007f7e3c  08 10 a0 e1                                      mov r1, r8
007f7e40  57 5b ec eb                                      bl #0x30eba4
007f7e44  00 10 a0 e1                                      mov r1, r0
007f7e48  fe 05 a0 e3                                      mov r0, #0x3f800000
007f7e4c  90 5b ec eb                                      bl #0x30ec94
007f7e50  00 e0 a0 e3                                      mov lr, #0
007f7e54  30 00 84 e5                                      str r0, [r4, #0x30]
007f7e58  3c e0 84 e5                                      str lr, [r4, #0x3c]
007f7e5c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f7e60  0e 10 a0 e1                                      mov r1, lr
007f7e64  23 59 ec eb                                      bl #0x30e2f8
007f7e68  00 00 50 e3                                      cmp r0, #0
007f7e6c  04 00 00 0a                                      beq #0x7f7e84
007f7e70  c2 14 a0 e3                                      mov r1, #0xc2000000
007f7e74  14 00 9d e5                                      ldr r0, [sp, #0x14]
007f7e78  07 16 81 e2                                      add r1, r1, #0x700000
007f7e7c  ba 5b ec eb                                      bl #0x30ed6c
007f7e80  3c 00 84 e5                                      str r0, [r4, #0x3c]
007f7e84  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007f7e88  44 00 9d e5                                      ldr r0, [sp, #0x44]
007f7e8c  b6 5b ec eb                                      bl #0x30ed6c
007f7e90  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f7e94  00 a0 a0 e1                                      mov sl, r0
007f7e98  48 00 9d e5                                      ldr r0, [sp, #0x48]
007f7e9c  b2 5b ec eb                                      bl #0x30ed6c
007f7ea0  0a 10 a0 e1                                      mov r1, sl
007f7ea4  00 80 a0 e1                                      mov r8, r0
007f7ea8  50 00 9d e5                                      ldr r0, [sp, #0x50]
007f7eac  3c 5b ec eb                                      bl #0x30eba4
007f7eb0  08 10 a0 e1                                      mov r1, r8
007f7eb4  00 a0 a0 e1                                      mov sl, r0
007f7eb8  54 00 9d e5                                      ldr r0, [sp, #0x54]
007f7ebc  38 5b ec eb                                      bl #0x30eba4
007f7ec0  58 10 9d e5                                      ldr r1, [sp, #0x58]
007f7ec4  00 80 a0 e1                                      mov r8, r0
007f7ec8  0a 00 a0 e1                                      mov r0, sl
007f7ecc  36 59 ec eb                                      bl #0x30e3ac
007f7ed0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
007f7ed4  00 90 a0 e1                                      mov sb, r0
007f7ed8  08 00 a0 e1                                      mov r0, r8
007f7edc  32 59 ec eb                                      bl #0x30e3ac
007f7ee0  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f7ee4  00 80 a0 e1                                      mov r8, r0
007f7ee8  40 00 9d e5                                      ldr r0, [sp, #0x40]
007f7eec  9e 5b ec eb                                      bl #0x30ed6c
007f7ef0  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f7ef4  00 a0 a0 e1                                      mov sl, r0
007f7ef8  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007f7efc  9a 5b ec eb                                      bl #0x30ed6c
007f7f00  0a 10 a0 e1                                      mov r1, sl
007f7f04  00 b0 a0 e1                                      mov fp, r0
007f7f08  09 00 a0 e1                                      mov r0, sb
007f7f0c  26 59 ec eb                                      bl #0x30e3ac
007f7f10  10 20 9d e5                                      ldr r2, [sp, #0x10]
007f7f14  80 10 92 e5                                      ldr r1, [r2, #0x80]
007f7f18  93 5b ec eb                                      bl #0x30ed6c
007f7f1c  0b 10 a0 e1                                      mov r1, fp
007f7f20  00 a0 a0 e1                                      mov sl, r0
007f7f24  08 00 a0 e1                                      mov r0, r8
007f7f28  1f 59 ec eb                                      bl #0x30e3ac
007f7f2c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007f7f30  84 10 93 e5                                      ldr r1, [r3, #0x84]
007f7f34  8c 5b ec eb                                      bl #0x30ed6c
007f7f38  00 10 a0 e1                                      mov r1, r0
007f7f3c  0a 00 a0 e1                                      mov r0, sl
007f7f40  17 5b ec eb                                      bl #0x30eba4
007f7f44  bf 14 a0 e3                                      mov r1, #0xbf000000
007f7f48  02 15 81 e2                                      add r1, r1, #0x800000
007f7f4c  00 80 a0 e1                                      mov r8, r0
007f7f50  ed 59 ec eb                                      bl #0x30e70c
007f7f54  00 00 50 e3                                      cmp r0, #0
007f7f58  08 00 00 0a                                      beq #0x7f7f80
007f7f5c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
007f7f60  08 10 a0 e1                                      mov r1, r8
007f7f64  98 00 9e e5                                      ldr r0, [lr, #0x98]
007f7f68  02 01 80 e2                                      add r0, r0, #0x80000000
007f7f6c  7e 5b ec eb                                      bl #0x30ed6c
007f7f70  00 10 a0 e1                                      mov r1, r0
007f7f74  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007f7f78  09 5b ec eb                                      bl #0x30eba4
007f7f7c  3c 00 84 e5                                      str r0, [r4, #0x3c]
007f7f80  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f7f84  20 20 9d e5                                      ldr r2, [sp, #0x20]
007f7f88  20 70 87 e2                                      add r7, r7, #0x20
007f7f8c  9c 30 91 e5                                      ldr r3, [r1, #0x9c]
007f7f90  01 20 82 e2                                      add r2, r2, #1
007f7f94  20 20 8d e5                                      str r2, [sp, #0x20]
007f7f98  02 00 53 e1                                      cmp r3, r2
007f7f9c  40 40 84 e2                                      add r4, r4, #0x40
007f7fa0  9e fe ff ca                                      bgt #0x7f7a20
007f7fa4  38 30 9d e5                                      ldr r3, [sp, #0x38]
007f7fa8  60 10 9d e5                                      ldr r1, [sp, #0x60]
007f7fac  18 20 9d e5                                      ldr r2, [sp, #0x18]
007f7fb0  01 30 83 e2                                      add r3, r3, #1
007f7fb4  38 30 8d e5                                      str r3, [sp, #0x38]
007f7fb8  01 00 53 e1                                      cmp r3, r1
007f7fbc  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007f7fc0  4c 20 82 e2                                      add r2, r2, #0x4c
007f7fc4  18 20 8d e5                                      str r2, [sp, #0x18]
007f7fc8  a0 30 83 e2                                      add r3, r3, #0xa0
007f7fcc  3c 30 8d e5                                      str r3, [sp, #0x3c]
007f7fd0  6b fe ff 1a                                      bne #0x7f7984
007f7fd4  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
007f7fd8  38 20 9d e5                                      ldr r2, [sp, #0x38]
007f7fdc  02 10 81 e0                                      add r1, r1, r2
007f7fe0  7c 10 8d e5                                      str r1, [sp, #0x7c]
007f7fe4  78 30 9d e5                                      ldr r3, [sp, #0x78]
007f7fe8  80 10 9d e5                                      ldr r1, [sp, #0x80]
007f7fec  01 30 83 e2                                      add r3, r3, #1
007f7ff0  01 00 53 e1                                      cmp r3, r1
007f7ff4  78 30 8d e5                                      str r3, [sp, #0x78]
007f7ff8  34 fe ff 1a                                      bne #0x7f78d0
007f7ffc  64 00 9d e5                                      ldr r0, [sp, #0x64]
007f8000  8c d0 8d e2                                      add sp, sp, #0x8c
007f8004  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f8008  8d ed ff eb                                      bl #0x7f3644
007f800c  64 20 9d e5                                      ldr r2, [sp, #0x64]
007f8010  18 00 82 e5                                      str r0, [r2, #0x18]
007f8014  f8 ff ff ea                                      b #0x7f7ffc
