; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008902a8, declared_size=60, range_size=60, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterface4InitEPv
; demangled: vox::DriverCallbackInterface::Init(void*)
; decoder-mode: arm
008902a8  28 30 9f e5                                      ldr r3, [pc, #0x28]
008902ac  28 20 9f e5                                      ldr r2, [pc, #0x28]
008902b0  03 30 8f e0                                      add r3, pc, r3
008902b4  02 00 93 e7                                      ldr r0, [r3, r2]
008902b8  20 20 9f e5                                      ldr r2, [pc, #0x20]
008902bc  02 10 93 e7                                      ldr r1, [r3, r2]
008902c0  00 20 a0 e3                                      mov r2, #0
008902c4  04 20 80 e5                                      str r2, [r0, #4]
008902c8  04 20 81 e5                                      str r2, [r1, #4]
008902cc  00 20 80 e5                                      str r2, [r0]
008902d0  00 20 81 e5                                      str r2, [r1]
008902d4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008902d8  e0 47 10 00 80 09 00 00 74 28 00 00              .byte 0xe0, 0x47, 0x10, 0x00, 0x80, 0x09, 0x00, 0x00, 0x74, 0x28, 0x00, 0x00

; FUNCTION 0x008902e4, declared_size=184, range_size=184, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterface15_Set3DParameterEiPv
; demangled: vox::DriverCallbackInterface::_Set3DParameter(int, void*)
; decoder-mode: arm
008902e4  05 00 51 e3                                      cmp r1, #5
008902e8  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
008902ec  12 00 00 ea                                      b #0x89033c
008902f0  12 00 00 ea                                      b #0x890340
008902f4  14 00 00 ea                                      b #0x89034c
008902f8  16 00 00 ea                                      b #0x890358
008902fc  18 00 00 ea                                      b #0x890364
00890300  1e 00 00 ea                                      b #0x890380
00890304  ff ff ff ea                                      b #0x890308
00890308  00 10 92 e5                                      ldr r1, [r2]
0089030c  0c 30 82 e2                                      add r3, r2, #0xc
00890310  3c 10 80 e5                                      str r1, [r0, #0x3c]
00890314  04 10 92 e5                                      ldr r1, [r2, #4]
00890318  40 10 80 e5                                      str r1, [r0, #0x40]
0089031c  08 10 92 e5                                      ldr r1, [r2, #8]
00890320  44 10 80 e5                                      str r1, [r0, #0x44]
00890324  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00890328  48 20 80 e5                                      str r2, [r0, #0x48]
0089032c  04 20 93 e5                                      ldr r2, [r3, #4]
00890330  4c 20 80 e5                                      str r2, [r0, #0x4c]
00890334  08 30 93 e5                                      ldr r3, [r3, #8]
00890338  50 30 80 e5                                      str r3, [r0, #0x50]
0089033c  1e ff 2f e1                                      bx lr
00890340  00 30 92 e5                                      ldr r3, [r2]
00890344  18 30 80 e5                                      str r3, [r0, #0x18]
00890348  1e ff 2f e1                                      bx lr
0089034c  00 30 92 e5                                      ldr r3, [r2]
00890350  1c 30 80 e5                                      str r3, [r0, #0x1c]
00890354  1e ff 2f e1                                      bx lr
00890358  00 30 92 e5                                      ldr r3, [r2]
0089035c  20 30 80 e5                                      str r3, [r0, #0x20]
00890360  1e ff 2f e1                                      bx lr
00890364  00 30 92 e5                                      ldr r3, [r2]
00890368  24 30 80 e5                                      str r3, [r0, #0x24]
0089036c  04 30 92 e5                                      ldr r3, [r2, #4]
00890370  28 30 80 e5                                      str r3, [r0, #0x28]
00890374  08 30 92 e5                                      ldr r3, [r2, #8]
00890378  2c 30 80 e5                                      str r3, [r0, #0x2c]
0089037c  1e ff 2f e1                                      bx lr
00890380  00 30 92 e5                                      ldr r3, [r2]
00890384  30 30 80 e5                                      str r3, [r0, #0x30]
00890388  04 30 92 e5                                      ldr r3, [r2, #4]
0089038c  34 30 80 e5                                      str r3, [r0, #0x34]
00890390  08 30 92 e5                                      ldr r3, [r2, #8]
00890394  38 30 80 e5                                      str r3, [r0, #0x38]
00890398  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089039c, declared_size=200, range_size=200, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterface19SetDefaultParameterEv
; demangled: vox::DriverCallbackInterface::SetDefaultParameter()
; decoder-mode: arm
0089039c  70 40 2d e9                                      push {r4, r5, r6, lr}
008903a0  38 d0 4d e2                                      sub sp, sp, #0x38
008903a4  38 40 8d e2                                      add r4, sp, #0x38
008903a8  fe 65 a0 e3                                      mov r6, #0x3f800000
008903ac  04 60 24 e5                                      str r6, [r4, #-4]!
008903b0  04 20 a0 e1                                      mov r2, r4
008903b4  00 10 a0 e3                                      mov r1, #0
008903b8  00 50 a0 e1                                      mov r5, r0
008903bc  c8 ff ff eb                                      bl #0x8902e4
008903c0  66 36 0a e3                                      movw r3, #0xa666
008903c4  ab 33 44 e3                                      movt r3, #0x43ab
008903c8  04 20 a0 e1                                      mov r2, r4
008903cc  05 00 a0 e1                                      mov r0, r5
008903d0  01 10 a0 e3                                      mov r1, #1
008903d4  34 30 8d e5                                      str r3, [sp, #0x34]
008903d8  c1 ff ff eb                                      bl #0x8902e4
008903dc  38 20 8d e2                                      add r2, sp, #0x38
008903e0  02 10 a0 e3                                      mov r1, #2
008903e4  08 10 22 e5                                      str r1, [r2, #-8]!
008903e8  05 00 a0 e1                                      mov r0, r5
008903ec  00 40 a0 e3                                      mov r4, #0
008903f0  bb ff ff eb                                      bl #0x8902e4
008903f4  05 00 a0 e1                                      mov r0, r5
008903f8  24 20 8d e2                                      add r2, sp, #0x24
008903fc  03 10 a0 e3                                      mov r1, #3
00890400  24 40 8d e5                                      str r4, [sp, #0x24]
00890404  28 40 8d e5                                      str r4, [sp, #0x28]
00890408  2c 40 8d e5                                      str r4, [sp, #0x2c]
0089040c  b4 ff ff eb                                      bl #0x8902e4
00890410  05 00 a0 e1                                      mov r0, r5
00890414  18 20 8d e2                                      add r2, sp, #0x18
00890418  04 10 a0 e3                                      mov r1, #4
0089041c  18 40 8d e5                                      str r4, [sp, #0x18]
00890420  1c 40 8d e5                                      str r4, [sp, #0x1c]
00890424  20 40 8d e5                                      str r4, [sp, #0x20]
00890428  ad ff ff eb                                      bl #0x8902e4
0089042c  bf 34 a0 e3                                      mov r3, #0xbf000000
00890430  02 35 83 e2                                      add r3, r3, #0x800000
00890434  05 00 a0 e1                                      mov r0, r5
00890438  05 10 a0 e3                                      mov r1, #5
0089043c  0d 20 a0 e1                                      mov r2, sp
00890440  14 40 8d e5                                      str r4, [sp, #0x14]
00890444  08 30 8d e5                                      str r3, [sp, #8]
00890448  10 60 8d e5                                      str r6, [sp, #0x10]
0089044c  00 40 8d e5                                      str r4, [sp]
00890450  04 40 8d e5                                      str r4, [sp, #4]
00890454  0c 40 8d e5                                      str r4, [sp, #0xc]
00890458  a1 ff ff eb                                      bl #0x8902e4
0089045c  38 d0 8d e2                                      add sp, sp, #0x38
00890460  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008904e8, declared_size=96, range_size=96, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterface13GetWorkBufferEi
; demangled: vox::DriverCallbackInterface::GetWorkBuffer(int)
; decoder-mode: arm
008904e8  70 40 2d e9                                      push {r4, r5, r6, lr}
008904ec  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
008904f0  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
008904f4  00 60 a0 e1                                      mov r6, r0
008904f8  04 40 8f e0                                      add r4, pc, r4
008904fc  05 30 94 e7                                      ldr r3, [r4, r5]
00890500  00 20 93 e5                                      ldr r2, [r3]
00890504  00 00 52 e1                                      cmp r2, r0
00890508  0a 00 00 aa                                      bge #0x890538
0089050c  04 00 93 e5                                      ldr r0, [r3, #4]
00890510  00 00 50 e3                                      cmp r0, #0
00890514  00 00 00 0a                                      beq #0x89051c
00890518  c9 ff e9 eb                                      bl #0x310444
0089051c  06 00 a0 e1                                      mov r0, r6
00890520  f4 ff e9 eb                                      bl #0x3104f8
00890524  05 30 94 e7                                      ldr r3, [r4, r5]
00890528  00 00 50 e3                                      cmp r0, #0
0089052c  00 60 a0 03                                      moveq r6, #0
00890530  00 60 83 e5                                      str r6, [r3]
00890534  04 00 83 e5                                      str r0, [r3, #4]
00890538  05 00 94 e7                                      ldr r0, [r4, r5]
0089053c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00890540  98 45 10 00 80 09 00 00                          .byte 0x98, 0x45, 0x10, 0x00, 0x80, 0x09, 0x00, 0x00

; FUNCTION 0x00890548, declared_size=344, range_size=344, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterface11_FillBufferEPsi
; demangled: vox::DriverCallbackInterface::_FillBuffer(short*, int)
; decoder-mode: arm
00890548  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089054c  18 e0 90 e5                                      ldr lr, [r0, #0x18]
00890550  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
00890554  30 d0 4d e2                                      sub sp, sp, #0x30
00890558  00 70 a0 e1                                      mov r7, r0
0089055c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00890560  24 30 8d e2                                      add r3, sp, #0x24
00890564  20 e0 8d e5                                      str lr, [sp, #0x20]
00890568  04 c0 83 e4                                      str ip, [r3], #4
0089056c  00 00 83 e5                                      str r0, [r3]
00890570  34 e0 87 e2                                      add lr, r7, #0x34
00890574  0d 80 a0 e1                                      mov r8, sp
00890578  02 50 a0 e1                                      mov r5, r2
0089057c  01 a0 a0 e1                                      mov sl, r1
00890580  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00890584  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
00890588  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0089058c  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
00890590  00 41 9f e5                                      ldr r4, [pc, #0x100]
00890594  00 61 9f e5                                      ldr r6, [pc, #0x100]
00890598  24 c0 87 e2                                      add ip, r7, #0x24
0089059c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
008905a0  04 40 8f e0                                      add r4, pc, r4
008905a4  fb fe ff eb                                      bl #0x890198
008905a8  06 20 94 e7                                      ldr r2, [r4, r6]
008905ac  85 90 a0 e1                                      lsl sb, r5, #1
008905b0  00 30 92 e5                                      ldr r3, [r2]
008905b4  03 00 55 e1                                      cmp r5, r3
008905b8  0c 00 00 da                                      ble #0x8905f0
008905bc  04 00 92 e5                                      ldr r0, [r2, #4]
008905c0  00 00 50 e3                                      cmp r0, #0
008905c4  00 00 00 0a                                      beq #0x8905cc
008905c8  9d ff e9 eb                                      bl #0x310444
008905cc  09 01 a0 e1                                      lsl r0, sb, #2
008905d0  c8 ff e9 eb                                      bl #0x3104f8
008905d4  06 30 94 e7                                      ldr r3, [r4, r6]
008905d8  00 00 50 e3                                      cmp r0, #0
008905dc  04 00 83 e5                                      str r0, [r3, #4]
008905e0  00 50 83 15                                      strne r5, [r3]
008905e4  00 00 83 05                                      streq r0, [r3]
008905e8  05 30 a0 11                                      movne r3, r5
008905ec  27 00 00 0a                                      beq #0x890690
008905f0  00 00 53 e3                                      cmp r3, #0
008905f4  25 00 00 da                                      ble #0x890690
008905f8  06 30 94 e7                                      ldr r3, [r4, r6]
008905fc  00 10 a0 e3                                      mov r1, #0
00890600  09 21 a0 e1                                      lsl r2, sb, #2
00890604  04 00 93 e5                                      ldr r0, [r3, #4]
00890608  94 f7 e9 eb                                      bl #0x30e460
0089060c  10 80 b7 e5                                      ldr r8, [r7, #0x10]!
00890610  08 00 00 ea                                      b #0x890638
00890614  08 30 98 e5                                      ldr r3, [r8, #8]
00890618  06 10 94 e7                                      ldr r1, [r4, r6]
0089061c  05 20 a0 e1                                      mov r2, r5
00890620  03 00 a0 e1                                      mov r0, r3
00890624  04 10 91 e5                                      ldr r1, [r1, #4]
00890628  00 30 93 e5                                      ldr r3, [r3]
0089062c  0f e0 a0 e1                                      mov lr, pc
00890630  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00890634  00 80 98 e5                                      ldr r8, [r8]
00890638  07 00 58 e1                                      cmp r8, r7
0089063c  f4 ff ff 1a                                      bne #0x890614
00890640  06 30 94 e7                                      ldr r3, [r4, r6]
00890644  00 00 59 e3                                      cmp sb, #0
00890648  04 00 93 e5                                      ldr r0, [r3, #4]
0089064c  0f 00 00 da                                      ble #0x890690
00890650  89 90 a0 e1                                      lsl sb, sb, #1
00890654  00 30 a0 e3                                      mov r3, #0
00890658  ff cf 0f e3                                      movw ip, #0xffff
0089065c  ff 4f 07 e3                                      movw r4, #0x7fff
00890660  83 20 90 e7                                      ldr r2, [r0, r3, lsl #1]
00890664  02 19 82 e2                                      add r1, r2, #0x8000
00890668  0c 00 51 e1                                      cmp r1, ip
0089066c  b3 20 8a 91                                      strhls r2, [sl, r3]
00890670  03 00 00 9a                                      bls #0x890684
00890674  00 00 52 e3                                      cmp r2, #0
00890678  04 20 a0 a1                                      movge r2, r4
0089067c  02 29 a0 b3                                      movlt r2, #0x8000
00890680  b3 20 8a e1                                      strh r2, [sl, r3]
00890684  02 30 83 e2                                      add r3, r3, #2
00890688  09 00 53 e1                                      cmp r3, sb
0089068c  f3 ff ff 1a                                      bne #0x890660
00890690  30 d0 8d e2                                      add sp, sp, #0x30
00890694  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00890698  f0 44 10 00 74 28 00 00                          .byte 0xf0, 0x44, 0x10, 0x00, 0x74, 0x28, 0x00, 0x00

; FUNCTION 0x008906a0, declared_size=68, range_size=68, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterface10FillBufferEPsi
; demangled: vox::DriverCallbackInterface::FillBuffer(short*, int)
; decoder-mode: arm
008906a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008906a4  04 50 80 e2                                      add r5, r0, #4
008906a8  00 40 a0 e1                                      mov r4, r0
008906ac  05 00 a0 e1                                      mov r0, r5
008906b0  01 70 a0 e1                                      mov r7, r1
008906b4  02 60 a0 e1                                      mov r6, r2
008906b8  6f 0b 00 eb                                      bl #0x89347c
008906bc  08 30 d4 e5                                      ldrb r3, [r4, #8]
008906c0  00 00 53 e3                                      cmp r3, #0
008906c4  03 00 00 0a                                      beq #0x8906d8
008906c8  04 00 a0 e1                                      mov r0, r4
008906cc  07 10 a0 e1                                      mov r1, r7
008906d0  06 20 a0 e1                                      mov r2, r6
008906d4  9b ff ff eb                                      bl #0x890548
008906d8  05 00 a0 e1                                      mov r0, r5
008906dc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008906e0  64 0b 00 ea                                      b #0x893478

; FUNCTION 0x008906e4, declared_size=56, range_size=56, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterface14Set3DParameterEiPv
; demangled: vox::DriverCallbackInterface::Set3DParameter(int, void*)
; decoder-mode: arm
008906e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008906e8  04 40 80 e2                                      add r4, r0, #4
008906ec  00 50 a0 e1                                      mov r5, r0
008906f0  01 70 a0 e1                                      mov r7, r1
008906f4  02 60 a0 e1                                      mov r6, r2
008906f8  04 00 a0 e1                                      mov r0, r4
008906fc  5e 0b 00 eb                                      bl #0x89347c
00890700  05 00 a0 e1                                      mov r0, r5
00890704  07 10 a0 e1                                      mov r1, r7
00890708  06 20 a0 e1                                      mov r2, r6
0089070c  f4 fe ff eb                                      bl #0x8902e4
00890710  04 00 a0 e1                                      mov r0, r4
00890714  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00890718  56 0b 00 ea                                      b #0x893478

; FUNCTION 0x00891028, declared_size=220, range_size=220, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterfaceD1Ev
; demangled: vox::DriverCallbackInterface::~DriverCallbackInterface()
; decoder-mode: arm
00891028  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089102c  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
00891030  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00891034  00 70 a0 e1                                      mov r7, r0
00891038  04 40 8f e0                                      add r4, pc, r4
0089103c  03 30 94 e7                                      ldr r3, [r4, r3]
00891040  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
00891044  00 60 a0 e1                                      mov r6, r0
00891048  08 30 83 e2                                      add r3, r3, #8
0089104c  04 30 87 e4                                      str r3, [r7], #4
00891050  07 00 a0 e1                                      mov r0, r7
00891054  08 09 00 eb                                      bl #0x89347c
00891058  08 30 94 e7                                      ldr r3, [r4, r8]
0089105c  00 20 a0 e3                                      mov r2, #0
00891060  04 00 93 e5                                      ldr r0, [r3, #4]
00891064  00 20 83 e5                                      str r2, [r3]
00891068  02 00 50 e1                                      cmp r0, r2
0089106c  00 00 00 0a                                      beq #0x891074
00891070  f3 fc e9 eb                                      bl #0x310444
00891074  84 50 9f e5                                      ldr r5, [pc, #0x84]
00891078  08 10 94 e7                                      ldr r1, [r4, r8]
0089107c  00 20 a0 e3                                      mov r2, #0
00891080  05 30 94 e7                                      ldr r3, [r4, r5]
00891084  04 20 81 e5                                      str r2, [r1, #4]
00891088  04 00 93 e5                                      ldr r0, [r3, #4]
0089108c  00 20 83 e5                                      str r2, [r3]
00891090  02 00 50 e1                                      cmp r0, r2
00891094  00 00 00 0a                                      beq #0x89109c
00891098  e9 fc e9 eb                                      bl #0x310444
0089109c  05 30 94 e7                                      ldr r3, [r4, r5]
008910a0  00 20 a0 e3                                      mov r2, #0
008910a4  07 00 a0 e1                                      mov r0, r7
008910a8  04 20 83 e5                                      str r2, [r3, #4]
008910ac  f1 08 00 eb                                      bl #0x893478
008910b0  10 00 96 e5                                      ldr r0, [r6, #0x10]
008910b4  10 50 86 e2                                      add r5, r6, #0x10
008910b8  05 00 50 e1                                      cmp r0, r5
008910bc  01 00 00 1a                                      bne #0x8910c8
008910c0  05 00 00 ea                                      b #0x8910dc
008910c4  04 00 a0 e1                                      mov r0, r4
008910c8  00 40 90 e5                                      ldr r4, [r0]
008910cc  dc fc e9 eb                                      bl #0x310444
008910d0  05 00 54 e1                                      cmp r4, r5
008910d4  fa ff ff 1a                                      bne #0x8910c4
008910d8  05 00 a0 e1                                      mov r0, r5
008910dc  10 00 86 e5                                      str r0, [r6, #0x10]
008910e0  04 00 85 e5                                      str r0, [r5, #4]
008910e4  07 00 a0 e1                                      mov r0, r7
008910e8  2e 09 00 eb                                      bl #0x8935a8
008910ec  06 00 a0 e1                                      mov r0, r6
008910f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008910f4  58 3a 10 00 a0 0c 00 00 80 09 00 00 74 28 00 00  .byte 0x58, 0x3a, 0x10, 0x00, 0xa0, 0x0c, 0x00, 0x00, 0x80, 0x09, 0x00, 0x00, 0x74, 0x28, 0x00, 0x00

; FUNCTION 0x00891104, declared_size=28, range_size=28, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterfaceD0Ev
; demangled: vox::DriverCallbackInterface::~DriverCallbackInterface()
; decoder-mode: arm
00891104  10 40 2d e9                                      push {r4, lr}
00891108  00 40 a0 e1                                      mov r4, r0
0089110c  c5 ff ff eb                                      bl #0x891028
00891110  04 00 a0 e1                                      mov r0, r4
00891114  65 f4 e9 eb                                      bl #0x30e2b0
00891118  04 00 a0 e1                                      mov r0, r4
0089111c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00891120, declared_size=220, range_size=220, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterfaceD2Ev
; demangled: vox::DriverCallbackInterface::~DriverCallbackInterface()
; decoder-mode: arm
00891120  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00891124  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
00891128  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0089112c  00 70 a0 e1                                      mov r7, r0
00891130  04 40 8f e0                                      add r4, pc, r4
00891134  03 30 94 e7                                      ldr r3, [r4, r3]
00891138  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
0089113c  00 60 a0 e1                                      mov r6, r0
00891140  08 30 83 e2                                      add r3, r3, #8
00891144  04 30 87 e4                                      str r3, [r7], #4
00891148  07 00 a0 e1                                      mov r0, r7
0089114c  ca 08 00 eb                                      bl #0x89347c
00891150  08 30 94 e7                                      ldr r3, [r4, r8]
00891154  00 20 a0 e3                                      mov r2, #0
00891158  04 00 93 e5                                      ldr r0, [r3, #4]
0089115c  00 20 83 e5                                      str r2, [r3]
00891160  02 00 50 e1                                      cmp r0, r2
00891164  00 00 00 0a                                      beq #0x89116c
00891168  b5 fc e9 eb                                      bl #0x310444
0089116c  84 50 9f e5                                      ldr r5, [pc, #0x84]
00891170  08 10 94 e7                                      ldr r1, [r4, r8]
00891174  00 20 a0 e3                                      mov r2, #0
00891178  05 30 94 e7                                      ldr r3, [r4, r5]
0089117c  04 20 81 e5                                      str r2, [r1, #4]
00891180  04 00 93 e5                                      ldr r0, [r3, #4]
00891184  00 20 83 e5                                      str r2, [r3]
00891188  02 00 50 e1                                      cmp r0, r2
0089118c  00 00 00 0a                                      beq #0x891194
00891190  ab fc e9 eb                                      bl #0x310444
00891194  05 30 94 e7                                      ldr r3, [r4, r5]
00891198  00 20 a0 e3                                      mov r2, #0
0089119c  07 00 a0 e1                                      mov r0, r7
008911a0  04 20 83 e5                                      str r2, [r3, #4]
008911a4  b3 08 00 eb                                      bl #0x893478
008911a8  10 00 96 e5                                      ldr r0, [r6, #0x10]
008911ac  10 50 86 e2                                      add r5, r6, #0x10
008911b0  05 00 50 e1                                      cmp r0, r5
008911b4  01 00 00 1a                                      bne #0x8911c0
008911b8  05 00 00 ea                                      b #0x8911d4
008911bc  04 00 a0 e1                                      mov r0, r4
008911c0  00 40 90 e5                                      ldr r4, [r0]
008911c4  9e fc e9 eb                                      bl #0x310444
008911c8  05 00 54 e1                                      cmp r4, r5
008911cc  fa ff ff 1a                                      bne #0x8911bc
008911d0  05 00 a0 e1                                      mov r0, r5
008911d4  10 00 86 e5                                      str r0, [r6, #0x10]
008911d8  04 00 85 e5                                      str r0, [r5, #4]
008911dc  07 00 a0 e1                                      mov r0, r7
008911e0  f0 08 00 eb                                      bl #0x8935a8
008911e4  06 00 a0 e1                                      mov r0, r6
008911e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008911ec  60 39 10 00 a0 0c 00 00 80 09 00 00 74 28 00 00  .byte 0x60, 0x39, 0x10, 0x00, 0xa0, 0x0c, 0x00, 0x00, 0x80, 0x09, 0x00, 0x00, 0x74, 0x28, 0x00, 0x00

; FUNCTION 0x008912b0, declared_size=132, range_size=132, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterfaceC1Ev
; demangled: vox::DriverCallbackInterface::DriverCallbackInterface()
; decoder-mode: arm
008912b0  74 30 9f e5                                      ldr r3, [pc, #0x74]
008912b4  74 20 9f e5                                      ldr r2, [pc, #0x74]
008912b8  10 40 2d e9                                      push {r4, lr}
008912bc  03 30 8f e0                                      add r3, pc, r3
008912c0  02 20 93 e7                                      ldr r2, [r3, r2]
008912c4  00 40 a0 e1                                      mov r4, r0
008912c8  08 20 82 e2                                      add r2, r2, #8
008912cc  04 20 80 e4                                      str r2, [r0], #4
008912d0  be 08 00 eb                                      bl #0x8935d0
008912d4  00 10 a0 e3                                      mov r1, #0
008912d8  00 30 a0 e3                                      mov r3, #0
008912dc  10 20 84 e2                                      add r2, r4, #0x10
008912e0  08 10 c4 e5                                      strb r1, [r4, #8]
008912e4  01 10 a0 e3                                      mov r1, #1
008912e8  0c 10 84 e5                                      str r1, [r4, #0xc]
008912ec  14 20 84 e5                                      str r2, [r4, #0x14]
008912f0  50 30 84 e5                                      str r3, [r4, #0x50]
008912f4  10 20 84 e5                                      str r2, [r4, #0x10]
008912f8  24 30 84 e5                                      str r3, [r4, #0x24]
008912fc  28 30 84 e5                                      str r3, [r4, #0x28]
00891300  2c 30 84 e5                                      str r3, [r4, #0x2c]
00891304  30 30 84 e5                                      str r3, [r4, #0x30]
00891308  34 30 84 e5                                      str r3, [r4, #0x34]
0089130c  38 30 84 e5                                      str r3, [r4, #0x38]
00891310  3c 30 84 e5                                      str r3, [r4, #0x3c]
00891314  40 30 84 e5                                      str r3, [r4, #0x40]
00891318  44 30 84 e5                                      str r3, [r4, #0x44]
0089131c  48 30 84 e5                                      str r3, [r4, #0x48]
00891320  4c 30 84 e5                                      str r3, [r4, #0x4c]
00891324  04 00 a0 e1                                      mov r0, r4
00891328  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089132c  d4 37 10 00 a0 0c 00 00                          .byte 0xd4, 0x37, 0x10, 0x00, 0xa0, 0x0c, 0x00, 0x00

; FUNCTION 0x00891334, declared_size=132, range_size=132, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterfaceC2Ev
; demangled: vox::DriverCallbackInterface::DriverCallbackInterface()
; decoder-mode: arm
00891334  74 30 9f e5                                      ldr r3, [pc, #0x74]
00891338  74 20 9f e5                                      ldr r2, [pc, #0x74]
0089133c  10 40 2d e9                                      push {r4, lr}
00891340  03 30 8f e0                                      add r3, pc, r3
00891344  02 20 93 e7                                      ldr r2, [r3, r2]
00891348  00 40 a0 e1                                      mov r4, r0
0089134c  08 20 82 e2                                      add r2, r2, #8
00891350  04 20 80 e4                                      str r2, [r0], #4
00891354  9d 08 00 eb                                      bl #0x8935d0
00891358  00 10 a0 e3                                      mov r1, #0
0089135c  00 30 a0 e3                                      mov r3, #0
00891360  10 20 84 e2                                      add r2, r4, #0x10
00891364  08 10 c4 e5                                      strb r1, [r4, #8]
00891368  01 10 a0 e3                                      mov r1, #1
0089136c  0c 10 84 e5                                      str r1, [r4, #0xc]
00891370  14 20 84 e5                                      str r2, [r4, #0x14]
00891374  50 30 84 e5                                      str r3, [r4, #0x50]
00891378  10 20 84 e5                                      str r2, [r4, #0x10]
0089137c  24 30 84 e5                                      str r3, [r4, #0x24]
00891380  28 30 84 e5                                      str r3, [r4, #0x28]
00891384  2c 30 84 e5                                      str r3, [r4, #0x2c]
00891388  30 30 84 e5                                      str r3, [r4, #0x30]
0089138c  34 30 84 e5                                      str r3, [r4, #0x34]
00891390  38 30 84 e5                                      str r3, [r4, #0x38]
00891394  3c 30 84 e5                                      str r3, [r4, #0x3c]
00891398  40 30 84 e5                                      str r3, [r4, #0x40]
0089139c  44 30 84 e5                                      str r3, [r4, #0x44]
008913a0  48 30 84 e5                                      str r3, [r4, #0x48]
008913a4  4c 30 84 e5                                      str r3, [r4, #0x4c]
008913a8  04 00 a0 e1                                      mov r0, r4
008913ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008913b0  50 37 10 00 a0 0c 00 00                          .byte 0x50, 0x37, 0x10, 0x00, 0xa0, 0x0c, 0x00, 0x00
