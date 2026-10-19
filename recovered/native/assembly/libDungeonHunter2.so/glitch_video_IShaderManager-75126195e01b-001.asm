; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e4798, declared_size=224, range_size=224, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZNK6glitch5video14IShaderManager13getBatchBakerEt
; demangled: glitch::video::IShaderManager::getBatchBaker(unsigned short) const
; decoder-mode: arm
005e4798  30 40 2d e9                                      push {r4, r5, lr}
005e479c  1c c0 91 e5                                      ldr ip, [r1, #0x1c]
005e47a0  20 40 91 e5                                      ldr r4, [r1, #0x20]
005e47a4  01 30 a0 e1                                      mov r3, r1
005e47a8  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
005e47ac  04 40 6c e0                                      rsb r4, ip, r4
005e47b0  c4 01 52 e1                                      cmp r2, r4, asr #3
005e47b4  01 10 8f e0                                      add r1, pc, r1
005e47b8  0c d0 4d e2                                      sub sp, sp, #0xc
005e47bc  00 40 a0 e1                                      mov r4, r0
005e47c0  82 11 8c 30                                      addlo r1, ip, r2, lsl #3
005e47c4  a8 00 9f 25                                      ldrhs r0, [pc, #0xa8]
005e47c8  00 10 91 27                                      ldrhs r1, [r1, r0]
005e47cc  00 00 91 e5                                      ldr r0, [r1]
005e47d0  00 00 50 e3                                      cmp r0, #0
005e47d4  00 00 84 05                                      streq r0, [r4]
005e47d8  08 00 00 0a                                      beq #0x5e4800
005e47dc  82 c1 8c e0                                      add ip, ip, r2, lsl #3
005e47e0  04 50 9c e5                                      ldr r5, [ip, #4]
005e47e4  18 20 95 e5                                      ldr r2, [r5, #0x18]
005e47e8  00 00 52 e3                                      cmp r2, #0
005e47ec  00 20 84 15                                      strne r2, [r4]
005e47f0  05 00 00 0a                                      beq #0x5e480c
005e47f4  04 30 92 e5                                      ldr r3, [r2, #4]
005e47f8  01 30 83 e2                                      add r3, r3, #1
005e47fc  04 30 82 e5                                      str r3, [r2, #4]
005e4800  04 00 a0 e1                                      mov r0, r4
005e4804  0c d0 8d e2                                      add sp, sp, #0xc
005e4808  30 80 bd e8                                      pop {r4, r5, pc}
005e480c  00 20 a0 e1                                      mov r2, r0
005e4810  03 10 a0 e1                                      mov r1, r3
005e4814  04 00 8d e2                                      add r0, sp, #4
005e4818  00 30 93 e5                                      ldr r3, [r3]
005e481c  0f e0 a0 e1                                      mov lr, pc
005e4820  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005e4824  04 30 9d e5                                      ldr r3, [sp, #4]
005e4828  00 00 53 e3                                      cmp r3, #0
005e482c  04 20 93 15                                      ldrne r2, [r3, #4]
005e4830  01 20 82 12                                      addne r2, r2, #1
005e4834  04 20 83 15                                      strne r2, [r3, #4]
005e4838  18 00 95 e5                                      ldr r0, [r5, #0x18]
005e483c  18 30 85 e5                                      str r3, [r5, #0x18]
005e4840  00 00 50 e3                                      cmp r0, #0
005e4844  00 00 00 0a                                      beq #0x5e484c
005e4848  4d e3 f4 eb                                      bl #0x31d584
005e484c  04 00 9d e5                                      ldr r0, [sp, #4]
005e4850  00 00 50 e3                                      cmp r0, #0
005e4854  00 00 00 0a                                      beq #0x5e485c
005e4858  49 e3 f4 eb                                      bl #0x31d584
005e485c  18 20 95 e5                                      ldr r2, [r5, #0x18]
005e4860  00 00 52 e3                                      cmp r2, #0
005e4864  00 20 84 e5                                      str r2, [r4]
005e4868  e4 ff ff 0a                                      beq #0x5e4800
005e486c  e0 ff ff ea                                      b #0x5e47f4
; mapping-symbol data/literal pool
005e4870  dc 02 3b 00 fc 49 00 00                          .byte 0xdc, 0x02, 0x3b, 0x00, 0xfc, 0x49, 0x00, 0x00

; FUNCTION 0x005e4878, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager16removeBatchBakerEt
; demangled: glitch::video::IShaderManager::removeBatchBaker(unsigned short)
; decoder-mode: arm
005e4878  10 40 2d e9                                      push {r4, lr}
005e487c  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
005e4880  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005e4884  50 30 9f e5                                      ldr r3, [pc, #0x50]
005e4888  0c c0 62 e0                                      rsb ip, r2, ip
005e488c  cc 01 51 e1                                      cmp r1, ip, asr #3
005e4890  03 30 8f e0                                      add r3, pc, r3
005e4894  81 31 82 30                                      addlo r3, r2, r1, lsl #3
005e4898  40 00 9f 25                                      ldrhs r0, [pc, #0x40]
005e489c  00 30 93 27                                      ldrhs r3, [r3, r0]
005e48a0  00 00 93 e5                                      ldr r0, [r3]
005e48a4  00 00 50 e3                                      cmp r0, #0
005e48a8  08 00 00 0a                                      beq #0x5e48d0
005e48ac  81 21 82 e0                                      add r2, r2, r1, lsl #3
005e48b0  04 30 92 e5                                      ldr r3, [r2, #4]
005e48b4  00 20 a0 e3                                      mov r2, #0
005e48b8  18 00 93 e5                                      ldr r0, [r3, #0x18]
005e48bc  18 20 83 e5                                      str r2, [r3, #0x18]
005e48c0  02 00 50 e1                                      cmp r0, r2
005e48c4  02 00 00 0a                                      beq #0x5e48d4
005e48c8  2d e3 f4 eb                                      bl #0x31d584
005e48cc  01 00 a0 e3                                      mov r0, #1
005e48d0  10 80 bd e8                                      pop {r4, pc}
005e48d4  01 00 a0 e3                                      mov r0, #1
005e48d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005e48dc  00 02 3b 00 fc 49 00 00                          .byte 0x00, 0x02, 0x3b, 0x00, 0xfc, 0x49, 0x00, 0x00

; FUNCTION 0x005e562c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZNK6glitch5video14IShaderManager16createBatchBakerEPKNS0_7IShaderE
; demangled: glitch::video::IShaderManager::createBatchBaker(glitch::video::IShader const*) const
; decoder-mode: arm
005e562c  70 40 2d e9                                      push {r4, r5, r6, lr}
005e5630  00 10 a0 e3                                      mov r1, #0
005e5634  00 40 a0 e1                                      mov r4, r0
005e5638  18 00 a0 e3                                      mov r0, #0x18
005e563c  02 60 a0 e1                                      mov r6, r2
005e5640  d9 3a fd eb                                      bl #0x5341ac
005e5644  06 10 a0 e1                                      mov r1, r6
005e5648  00 50 a0 e1                                      mov r5, r0
005e564c  b5 91 00 eb                                      bl #0x609d28
005e5650  00 00 55 e3                                      cmp r5, #0
005e5654  00 50 84 e5                                      str r5, [r4]
005e5658  04 30 95 15                                      ldrne r3, [r5, #4]
005e565c  04 00 a0 e1                                      mov r0, r4
005e5660  01 30 83 12                                      addne r3, r3, #1
005e5664  04 30 85 15                                      strne r3, [r5, #4]
005e5668  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e5704, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManagerC1Ev
; demangled: glitch::video::IShaderManager::IShaderManager()
; decoder-mode: arm
005e5704  30 40 2d e9                                      push {r4, r5, lr}
005e5708  00 40 a0 e1                                      mov r4, r0
005e570c  0c d0 4d e2                                      sub sp, sp, #0xc
005e5710  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
005e5714  04 00 80 e2                                      add r0, r0, #4
005e5718  39 ff ff eb                                      bl #0x5e5404
005e571c  44 20 9f e5                                      ldr r2, [pc, #0x44]
005e5720  05 50 8f e0                                      add r5, pc, r5
005e5724  40 10 9f e5                                      ldr r1, [pc, #0x40]
005e5728  02 20 95 e7                                      ldr r2, [r5, r2]
005e572c  00 30 a0 e3                                      mov r3, #0
005e5730  38 30 84 e5                                      str r3, [r4, #0x38]
005e5734  08 20 82 e2                                      add r2, r2, #8
005e5738  00 20 84 e5                                      str r2, [r4]
005e573c  2c 30 84 e5                                      str r3, [r4, #0x2c]
005e5740  30 30 84 e5                                      str r3, [r4, #0x30]
005e5744  34 30 84 e5                                      str r3, [r4, #0x34]
005e5748  01 10 8f e0                                      add r1, pc, r1
005e574c  3c 00 84 e2                                      add r0, r4, #0x3c
005e5750  04 20 8d e2                                      add r2, sp, #4
005e5754  38 02 f5 eb                                      bl #0x32603c
005e5758  04 00 a0 e1                                      mov r0, r4
005e575c  0c d0 8d e2                                      add sp, sp, #0xc
005e5760  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
005e5764  70 f3 3a 00 00 18 00 00 58 f3 2f 00              .byte 0x70, 0xf3, 0x3a, 0x00, 0x00, 0x18, 0x00, 0x00, 0x58, 0xf3, 0x2f, 0x00

; FUNCTION 0x005e5770, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManagerC2Ev
; demangled: glitch::video::IShaderManager::IShaderManager()
; decoder-mode: arm
005e5770  30 40 2d e9                                      push {r4, r5, lr}
005e5774  00 40 a0 e1                                      mov r4, r0
005e5778  0c d0 4d e2                                      sub sp, sp, #0xc
005e577c  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
005e5780  04 00 80 e2                                      add r0, r0, #4
005e5784  1e ff ff eb                                      bl #0x5e5404
005e5788  44 20 9f e5                                      ldr r2, [pc, #0x44]
005e578c  05 50 8f e0                                      add r5, pc, r5
005e5790  40 10 9f e5                                      ldr r1, [pc, #0x40]
005e5794  02 20 95 e7                                      ldr r2, [r5, r2]
005e5798  00 30 a0 e3                                      mov r3, #0
005e579c  38 30 84 e5                                      str r3, [r4, #0x38]
005e57a0  08 20 82 e2                                      add r2, r2, #8
005e57a4  00 20 84 e5                                      str r2, [r4]
005e57a8  2c 30 84 e5                                      str r3, [r4, #0x2c]
005e57ac  30 30 84 e5                                      str r3, [r4, #0x30]
005e57b0  34 30 84 e5                                      str r3, [r4, #0x34]
005e57b4  01 10 8f e0                                      add r1, pc, r1
005e57b8  3c 00 84 e2                                      add r0, r4, #0x3c
005e57bc  04 20 8d e2                                      add r2, sp, #4
005e57c0  1d 02 f5 eb                                      bl #0x32603c
005e57c4  04 00 a0 e1                                      mov r0, r4
005e57c8  0c d0 8d e2                                      add sp, sp, #0xc
005e57cc  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
005e57d0  04 f3 3a 00 00 18 00 00 ec f2 2f 00              .byte 0x04, 0xf3, 0x3a, 0x00, 0x00, 0x18, 0x00, 0x00, 0xec, 0xf2, 0x2f, 0x00

; FUNCTION 0x005e59ac, declared_size=384, range_size=384, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager15serializeShaderEN5boost13intrusive_ptrINS0_7IShaderEEEPKc
; demangled: glitch::video::IShaderManager::serializeShader(boost::intrusive_ptr<glitch::video::IShader>, char const*)
; decoder-mode: arm
005e59ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e59b0  00 70 a0 e1                                      mov r7, r0
005e59b4  10 d0 4d e2                                      sub sp, sp, #0x10
005e59b8  02 00 a0 e1                                      mov r0, r2
005e59bc  02 60 a0 e1                                      mov r6, r2
005e59c0  01 90 a0 e1                                      mov sb, r1
005e59c4  22 a1 f4 eb                                      bl #0x30de54
005e59c8  00 80 a0 e1                                      mov r8, r0
005e59cc  20 3a fd eb                                      bl #0x534254
005e59d0  00 a0 a0 e1                                      mov sl, r0
005e59d4  01 00 a0 e3                                      mov r0, #1
005e59d8  22 3a fd eb                                      bl #0x534268
005e59dc  fa 00 a0 e3                                      mov r0, #0xfa
005e59e0  03 3b fd eb                                      bl #0x5345f4
005e59e4  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
005e59e8  30 11 9f e5                                      ldr r1, [pc, #0x130]
005e59ec  00 50 a0 e1                                      mov r5, r0
005e59f0  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
005e59f4  04 00 48 e2                                      sub r0, r8, #4
005e59f8  00 00 86 e0                                      add r0, r6, r0
005e59fc  34 40 93 e5                                      ldr r4, [r3, #0x34]
005e5a00  01 10 8f e0                                      add r1, pc, r1
005e5a04  00 00 54 e3                                      cmp r4, #0
005e5a08  04 30 94 15                                      ldrne r3, [r4, #4]
005e5a0c  01 30 83 12                                      addne r3, r3, #1
005e5a10  04 30 84 15                                      strne r3, [r4, #4]
005e5a14  40 a2 f4 eb                                      bl #0x30e31c
005e5a18  00 00 50 e3                                      cmp r0, #0
005e5a1c  34 00 00 0a                                      beq #0x5e5af4
005e5a20  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
005e5a24  06 30 a0 e1                                      mov r3, r6
005e5a28  05 00 a0 e1                                      mov r0, r5
005e5a2c  01 10 8f e0                                      add r1, pc, r1
005e5a30  50 20 97 e5                                      ldr r2, [r7, #0x50]
005e5a34  2a a4 f4 eb                                      bl #0x30eae4
005e5a38  00 30 94 e5                                      ldr r3, [r4]
005e5a3c  04 00 a0 e1                                      mov r0, r4
005e5a40  05 10 a0 e1                                      mov r1, r5
005e5a44  0f e0 a0 e1                                      mov lr, pc
005e5a48  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005e5a4c  00 60 50 e2                                      subs r6, r0, #0
005e5a50  1c 00 00 0a                                      beq #0x5e5ac8
005e5a54  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
005e5a58  00 30 94 e5                                      ldr r3, [r4]
005e5a5c  04 00 a0 e1                                      mov r0, r4
005e5a60  0f e0 a0 e1                                      mov lr, pc
005e5a64  64 f0 93 e5                                      ldr pc, [r3, #0x64]
005e5a68  00 70 50 e2                                      subs r7, r0, #0
005e5a6c  27 00 00 0a                                      beq #0x5e5b10
005e5a70  01 20 a0 e3                                      mov r2, #1
005e5a74  06 10 a0 e1                                      mov r1, r6
005e5a78  00 30 a0 e3                                      mov r3, #0
005e5a7c  0d 00 a0 e1                                      mov r0, sp
005e5a80  30 30 fe eb                                      bl #0x571b48
005e5a84  06 00 a0 e1                                      mov r0, r6
005e5a88  bd de f4 eb                                      bl #0x31d584
005e5a8c  00 30 99 e5                                      ldr r3, [sb]
005e5a90  07 10 a0 e1                                      mov r1, r7
005e5a94  0d 80 a0 e1                                      mov r8, sp
005e5a98  03 00 a0 e1                                      mov r0, r3
005e5a9c  00 30 93 e5                                      ldr r3, [r3]
005e5aa0  0f e0 a0 e1                                      mov lr, pc
005e5aa4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e5aa8  07 10 a0 e1                                      mov r1, r7
005e5aac  0d 00 a0 e1                                      mov r0, sp
005e5ab0  50 32 fe eb                                      bl #0x5723f8
005e5ab4  07 00 a0 e1                                      mov r0, r7
005e5ab8  b1 de f4 eb                                      bl #0x31d584
005e5abc  0d 00 a0 e1                                      mov r0, sp
005e5ac0  01 60 a0 e3                                      mov r6, #1
005e5ac4  3f 30 fe eb                                      bl #0x571bc8
005e5ac8  04 00 a0 e1                                      mov r0, r4
005e5acc  ac de f4 eb                                      bl #0x31d584
005e5ad0  00 00 55 e3                                      cmp r5, #0
005e5ad4  01 00 00 0a                                      beq #0x5e5ae0
005e5ad8  05 00 a0 e1                                      mov r0, r5
005e5adc  e9 3a fd eb                                      bl #0x534688
005e5ae0  0a 00 a0 e1                                      mov r0, sl
005e5ae4  df 39 fd eb                                      bl #0x534268
005e5ae8  06 00 a0 e1                                      mov r0, r6
005e5aec  10 d0 8d e2                                      add sp, sp, #0x10
005e5af0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e5af4  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
005e5af8  06 30 a0 e1                                      mov r3, r6
005e5afc  05 00 a0 e1                                      mov r0, r5
005e5b00  01 10 8f e0                                      add r1, pc, r1
005e5b04  50 20 97 e5                                      ldr r2, [r7, #0x50]
005e5b08  f5 a3 f4 eb                                      bl #0x30eae4
005e5b0c  c9 ff ff ea                                      b #0x5e5a38
005e5b10  06 00 a0 e1                                      mov r0, r6
005e5b14  07 60 a0 e1                                      mov r6, r7
005e5b18  99 de f4 eb                                      bl #0x31d584
005e5b1c  e9 ff ff ea                                      b #0x5e5ac8
; mapping-symbol data/literal pool
005e5b20  d0 d1 2f 00 ac d1 2f 00 e8 d0 2f 00              .byte 0xd0, 0xd1, 0x2f, 0x00, 0xac, 0xd1, 0x2f, 0x00, 0xe8, 0xd0, 0x2f, 0x00

; FUNCTION 0x005e5b2c, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager28clearDriverSpecificResourcesEv
; demangled: glitch::video::IShaderManager::clearDriverSpecificResources()
; decoder-mode: arm
005e5b2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e5b30  0c 40 90 e5                                      ldr r4, [r0, #0xc]
005e5b34  a8 70 9f e5                                      ldr r7, [pc, #0xa8]
005e5b38  04 60 80 e2                                      add r6, r0, #4
005e5b3c  06 00 54 e1                                      cmp r4, r6
005e5b40  00 50 a0 e1                                      mov r5, r0
005e5b44  07 70 8f e0                                      add r7, pc, r7
005e5b48  17 00 00 0a                                      beq #0x5e5bac
005e5b4c  94 80 9f e5                                      ldr r8, [pc, #0x94]
005e5b50  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
005e5b54  20 10 95 e5                                      ldr r1, [r5, #0x20]
005e5b58  bc 21 d4 e1                                      ldrh r2, [r4, #0x1c]
005e5b5c  01 10 63 e0                                      rsb r1, r3, r1
005e5b60  c1 01 52 e1                                      cmp r2, r1, asr #3
005e5b64  08 30 97 27                                      ldrhs r3, [r7, r8]
005e5b68  82 31 83 30                                      addlo r3, r3, r2, lsl #3
005e5b6c  00 30 93 e5                                      ldr r3, [r3]
005e5b70  03 00 a0 e1                                      mov r0, r3
005e5b74  00 30 93 e5                                      ldr r3, [r3]
005e5b78  0f e0 a0 e1                                      mov lr, pc
005e5b7c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005e5b80  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005e5b84  00 00 52 e3                                      cmp r2, #0
005e5b88  01 00 00 1a                                      bne #0x5e5b94
005e5b8c  07 00 00 ea                                      b #0x5e5bb0
005e5b90  03 20 a0 e1                                      mov r2, r3
005e5b94  08 30 92 e5                                      ldr r3, [r2, #8]
005e5b98  00 00 53 e3                                      cmp r3, #0
005e5b9c  fb ff ff 1a                                      bne #0x5e5b90
005e5ba0  02 40 a0 e1                                      mov r4, r2
005e5ba4  04 00 56 e1                                      cmp r6, r4
005e5ba8  e8 ff ff 1a                                      bne #0x5e5b50
005e5bac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e5bb0  04 30 94 e5                                      ldr r3, [r4, #4]
005e5bb4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005e5bb8  01 00 54 e1                                      cmp r4, r1
005e5bbc  05 00 00 1a                                      bne #0x5e5bd8
005e5bc0  03 40 a0 e1                                      mov r4, r3
005e5bc4  04 30 93 e5                                      ldr r3, [r3, #4]
005e5bc8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005e5bcc  04 00 52 e1                                      cmp r2, r4
005e5bd0  fa ff ff 0a                                      beq #0x5e5bc0
005e5bd4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005e5bd8  02 00 53 e1                                      cmp r3, r2
005e5bdc  03 40 a0 11                                      movne r4, r3
005e5be0  ef ff ff ea                                      b #0x5e5ba4
; mapping-symbol data/literal pool
005e5be4  4c ef 3a 00 fc 49 00 00                          .byte 0x4c, 0xef, 0x3a, 0x00, 0xfc, 0x49, 0x00, 0x00

; FUNCTION 0x005e67b0, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager19removeUnusedShadersEv
; demangled: glitch::video::IShaderManager::removeUnusedShaders()
; decoder-mode: arm
005e67b0  04 00 80 e2                                      add r0, r0, #4
005e67b4  00 10 a0 e3                                      mov r1, #0
005e67b8  c6 ff ff ea                                      b #0x5e66d8

; FUNCTION 0x005e67c4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManagerD1Ev
; demangled: glitch::video::IShaderManager::~IShaderManager()
; decoder-mode: arm
005e67c4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005e67c8  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
005e67cc  10 40 2d e9                                      push {r4, lr}
005e67d0  03 30 8f e0                                      add r3, pc, r3
005e67d4  02 20 93 e7                                      ldr r2, [r3, r2]
005e67d8  00 10 a0 e1                                      mov r1, r0
005e67dc  00 40 a0 e1                                      mov r4, r0
005e67e0  08 20 82 e2                                      add r2, r2, #8
005e67e4  3c 20 81 e4                                      str r2, [r1], #0x3c
005e67e8  14 00 91 e5                                      ldr r0, [r1, #0x14]
005e67ec  01 00 50 e1                                      cmp r0, r1
005e67f0  02 00 00 0a                                      beq #0x5e6800
005e67f4  00 00 50 e3                                      cmp r0, #0
005e67f8  00 00 00 0a                                      beq #0x5e6800
005e67fc  13 a7 f4 eb                                      bl #0x310450
005e6800  30 00 84 e2                                      add r0, r4, #0x30
005e6804  77 f6 fd eb                                      bl #0x5641e8
005e6808  04 00 84 e2                                      add r0, r4, #4
005e680c  a6 fd ff eb                                      bl #0x5e5eac
005e6810  04 00 a0 e1                                      mov r0, r4
005e6814  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005e6818  c0 e2 3a 00 00 18 00 00                          .byte 0xc0, 0xe2, 0x3a, 0x00, 0x00, 0x18, 0x00, 0x00

; FUNCTION 0x005e6820, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManagerD0Ev
; demangled: glitch::video::IShaderManager::~IShaderManager()
; decoder-mode: arm
005e6820  10 40 2d e9                                      push {r4, lr}
005e6824  00 40 a0 e1                                      mov r4, r0
005e6828  e5 ff ff eb                                      bl #0x5e67c4
005e682c  04 00 a0 e1                                      mov r0, r4
005e6830  9e 9e f4 eb                                      bl #0x30e2b0
005e6834  04 00 a0 e1                                      mov r0, r4
005e6838  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e683c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManagerD2Ev
; demangled: glitch::video::IShaderManager::~IShaderManager()
; decoder-mode: arm
005e683c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005e6840  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
005e6844  10 40 2d e9                                      push {r4, lr}
005e6848  03 30 8f e0                                      add r3, pc, r3
005e684c  02 20 93 e7                                      ldr r2, [r3, r2]
005e6850  00 10 a0 e1                                      mov r1, r0
005e6854  00 40 a0 e1                                      mov r4, r0
005e6858  08 20 82 e2                                      add r2, r2, #8
005e685c  3c 20 81 e4                                      str r2, [r1], #0x3c
005e6860  14 00 91 e5                                      ldr r0, [r1, #0x14]
005e6864  01 00 50 e1                                      cmp r0, r1
005e6868  02 00 00 0a                                      beq #0x5e6878
005e686c  00 00 50 e3                                      cmp r0, #0
005e6870  00 00 00 0a                                      beq #0x5e6878
005e6874  f5 a6 f4 eb                                      bl #0x310450
005e6878  30 00 84 e2                                      add r0, r4, #0x30
005e687c  59 f6 fd eb                                      bl #0x5641e8
005e6880  04 00 84 e2                                      add r0, r4, #4
005e6884  88 fd ff eb                                      bl #0x5e5eac
005e6888  04 00 a0 e1                                      mov r0, r4
005e688c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005e6890  48 e2 3a 00 00 18 00 00                          .byte 0x48, 0xe2, 0x3a, 0x00, 0x00, 0x18, 0x00, 0x00

; FUNCTION 0x005e7298, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager9addShaderERKN5boost13intrusive_ptrINS0_7IShaderEEE
; demangled: glitch::video::IShaderManager::addShader(boost::intrusive_ptr<glitch::video::IShader> const&)
; decoder-mode: arm
005e7298  10 40 2d e9                                      push {r4, lr}
005e729c  00 30 91 e5                                      ldr r3, [r1]
005e72a0  01 20 a0 e1                                      mov r2, r1
005e72a4  04 00 80 e2                                      add r0, r0, #4
005e72a8  20 10 93 e5                                      ldr r1, [r3, #0x20]
005e72ac  00 30 a0 e3                                      mov r3, #0
005e72b0  96 ff ff eb                                      bl #0x5e7110
005e72b4  01 00 a0 e3                                      mov r0, #1
005e72b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e72bc, declared_size=596, range_size=596, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager10loadShaderEPKc
; demangled: glitch::video::IShaderManager::loadShader(char const*)
; decoder-mode: arm
005e72bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e72c0  00 80 a0 e1                                      mov r8, r0
005e72c4  2c d0 4d e2                                      sub sp, sp, #0x2c
005e72c8  01 00 a0 e1                                      mov r0, r1
005e72cc  01 a0 a0 e1                                      mov sl, r1
005e72d0  df 9a f4 eb                                      bl #0x30de54
005e72d4  0c 00 8d e5                                      str r0, [sp, #0xc]
005e72d8  dd 33 fd eb                                      bl #0x534254
005e72dc  08 00 8d e5                                      str r0, [sp, #8]
005e72e0  01 00 a0 e3                                      mov r0, #1
005e72e4  df 33 fd eb                                      bl #0x534268
005e72e8  fa 00 a0 e3                                      mov r0, #0xfa
005e72ec  c0 34 fd eb                                      bl #0x5345f4
005e72f0  2c 30 98 e5                                      ldr r3, [r8, #0x2c]
005e72f4  00 70 a0 e1                                      mov r7, r0
005e72f8  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
005e72fc  34 50 93 e5                                      ldr r5, [r3, #0x34]
005e7300  00 00 55 e3                                      cmp r5, #0
005e7304  04 30 95 15                                      ldrne r3, [r5, #4]
005e7308  01 30 83 12                                      addne r3, r3, #1
005e730c  04 30 85 15                                      strne r3, [r5, #4]
005e7310  30 30 98 e5                                      ldr r3, [r8, #0x30]
005e7314  34 20 98 e5                                      ldr r2, [r8, #0x34]
005e7318  02 20 63 e0                                      rsb r2, r3, r2
005e731c  c2 21 a0 e1                                      asr r2, r2, #3
005e7320  02 91 82 e0                                      add sb, r2, r2, lsl #2
005e7324  09 92 89 e0                                      add sb, sb, sb, lsl #4
005e7328  09 94 89 e0                                      add sb, sb, sb, lsl #8
005e732c  09 98 89 e0                                      add sb, sb, sb, lsl #16
005e7330  89 90 92 e0                                      adds sb, r2, sb, lsl #1
005e7334  2b 00 00 0a                                      beq #0x5e73e8
005e7338  c8 b1 9f e5                                      ldr fp, [pc, #0x1c8]
005e733c  00 40 a0 e3                                      mov r4, #0
005e7340  04 40 8d e5                                      str r4, [sp, #4]
005e7344  0b b0 8f e0                                      add fp, pc, fp
005e7348  04 60 a0 e1                                      mov r6, r4
005e734c  03 00 00 ea                                      b #0x5e7360
005e7350  09 00 56 e1                                      cmp r6, sb
005e7354  18 40 84 e2                                      add r4, r4, #0x18
005e7358  17 00 00 0a                                      beq #0x5e73bc
005e735c  30 30 98 e5                                      ldr r3, [r8, #0x30]
005e7360  04 30 83 e0                                      add r3, r3, r4
005e7364  14 20 93 e5                                      ldr r2, [r3, #0x14]
005e7368  0b 10 a0 e1                                      mov r1, fp
005e736c  0a 30 a0 e1                                      mov r3, sl
005e7370  07 00 a0 e1                                      mov r0, r7
005e7374  da 9d f4 eb                                      bl #0x30eae4
005e7378  07 10 a0 e1                                      mov r1, r7
005e737c  00 30 95 e5                                      ldr r3, [r5]
005e7380  05 00 a0 e1                                      mov r0, r5
005e7384  0f e0 a0 e1                                      mov lr, pc
005e7388  44 f0 93 e5                                      ldr pc, [r3, #0x44]
005e738c  00 00 50 e3                                      cmp r0, #0
005e7390  01 60 86 e2                                      add r6, r6, #1
005e7394  ed ff ff 0a                                      beq #0x5e7350
005e7398  00 30 95 e5                                      ldr r3, [r5]
005e739c  05 00 a0 e1                                      mov r0, r5
005e73a0  07 10 a0 e1                                      mov r1, r7
005e73a4  0f e0 a0 e1                                      mov lr, pc
005e73a8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e73ac  09 00 56 e1                                      cmp r6, sb
005e73b0  04 00 8d e5                                      str r0, [sp, #4]
005e73b4  18 40 84 e2                                      add r4, r4, #0x18
005e73b8  e7 ff ff 1a                                      bne #0x5e735c
005e73bc  04 30 9d e5                                      ldr r3, [sp, #4]
005e73c0  00 00 53 e3                                      cmp r3, #0
005e73c4  07 00 00 0a                                      beq #0x5e73e8
005e73c8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005e73cc  38 11 9f e5                                      ldr r1, [pc, #0x138]
005e73d0  04 00 43 e2                                      sub r0, r3, #4
005e73d4  00 00 8a e0                                      add r0, sl, r0
005e73d8  01 10 8f e0                                      add r1, pc, r1
005e73dc  ce 9b f4 eb                                      bl #0x30e31c
005e73e0  00 40 50 e2                                      subs r4, r0, #0
005e73e4  0d 00 00 0a                                      beq #0x5e7420
005e73e8  00 a0 a0 e3                                      mov sl, #0
005e73ec  00 00 55 e3                                      cmp r5, #0
005e73f0  01 00 00 0a                                      beq #0x5e73fc
005e73f4  05 00 a0 e1                                      mov r0, r5
005e73f8  61 d8 f4 eb                                      bl #0x31d584
005e73fc  00 00 57 e3                                      cmp r7, #0
005e7400  01 00 00 0a                                      beq #0x5e740c
005e7404  07 00 a0 e1                                      mov r0, r7
005e7408  9e 34 fd eb                                      bl #0x534688
005e740c  08 00 9d e5                                      ldr r0, [sp, #8]
005e7410  94 33 fd eb                                      bl #0x534268
005e7414  0a 00 a0 e1                                      mov r0, sl
005e7418  2c d0 8d e2                                      add sp, sp, #0x2c
005e741c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e7420  24 60 8d e2                                      add r6, sp, #0x24
005e7424  00 30 98 e5                                      ldr r3, [r8]
005e7428  0a 20 a0 e1                                      mov r2, sl
005e742c  06 00 a0 e1                                      mov r0, r6
005e7430  08 10 a0 e1                                      mov r1, r8
005e7434  0f e0 a0 e1                                      mov lr, pc
005e7438  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005e743c  24 30 9d e5                                      ldr r3, [sp, #0x24]
005e7440  00 00 53 e3                                      cmp r3, #0
005e7444  e7 ff ff 0a                                      beq #0x5e73e8
005e7448  04 10 9d e5                                      ldr r1, [sp, #4]
005e744c  00 30 95 e5                                      ldr r3, [r5]
005e7450  05 00 a0 e1                                      mov r0, r5
005e7454  0f e0 a0 e1                                      mov lr, pc
005e7458  50 f0 93 e5                                      ldr pc, [r3, #0x50]
005e745c  00 a0 50 e2                                      subs sl, r0, #0
005e7460  1f 00 00 0a                                      beq #0x5e74e4
005e7464  00 30 95 e5                                      ldr r3, [r5]
005e7468  05 00 a0 e1                                      mov r0, r5
005e746c  2c 10 98 e5                                      ldr r1, [r8, #0x2c]
005e7470  0f e0 a0 e1                                      mov lr, pc
005e7474  64 f0 93 e5                                      ldr pc, [r3, #0x64]
005e7478  00 90 50 e2                                      subs sb, r0, #0
005e747c  1d 00 00 0a                                      beq #0x5e74f8
005e7480  04 20 a0 e1                                      mov r2, r4
005e7484  14 40 8d e2                                      add r4, sp, #0x14
005e7488  02 30 a0 e1                                      mov r3, r2
005e748c  0a 10 a0 e1                                      mov r1, sl
005e7490  04 00 a0 e1                                      mov r0, r4
005e7494  1f 26 fe eb                                      bl #0x570d18
005e7498  0a 00 a0 e1                                      mov r0, sl
005e749c  38 d8 f4 eb                                      bl #0x31d584
005e74a0  09 10 a0 e1                                      mov r1, sb
005e74a4  04 00 a0 e1                                      mov r0, r4
005e74a8  1c 29 fe eb                                      bl #0x571920
005e74ac  24 30 9d e5                                      ldr r3, [sp, #0x24]
005e74b0  09 10 a0 e1                                      mov r1, sb
005e74b4  01 a0 a0 e3                                      mov sl, #1
005e74b8  03 00 a0 e1                                      mov r0, r3
005e74bc  00 30 93 e5                                      ldr r3, [r3]
005e74c0  0f e0 a0 e1                                      mov lr, pc
005e74c4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e74c8  06 10 a0 e1                                      mov r1, r6
005e74cc  08 00 a0 e1                                      mov r0, r8
005e74d0  70 ff ff eb                                      bl #0x5e7298
005e74d4  09 00 a0 e1                                      mov r0, sb
005e74d8  29 d8 f4 eb                                      bl #0x31d584
005e74dc  04 00 a0 e1                                      mov r0, r4
005e74e0  2c 26 fe eb                                      bl #0x570d98
005e74e4  24 00 9d e5                                      ldr r0, [sp, #0x24]
005e74e8  00 00 50 e3                                      cmp r0, #0
005e74ec  be ff ff 0a                                      beq #0x5e73ec
005e74f0  23 d8 f4 eb                                      bl #0x31d584
005e74f4  bc ff ff ea                                      b #0x5e73ec
005e74f8  0a 00 a0 e1                                      mov r0, sl
005e74fc  09 a0 a0 e1                                      mov sl, sb
005e7500  1f d8 f4 eb                                      bl #0x31d584
005e7504  f6 ff ff ea                                      b #0x5e74e4
; mapping-symbol data/literal pool
005e7508  a4 b8 2f 00 f8 b7 2f 00                          .byte 0xa4, 0xb8, 0x2f, 0x00, 0xf8, 0xb7, 0x2f, 0x00

; FUNCTION 0x005e7510, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager9addShaderEPKcRKN5boost13intrusive_ptrINS0_7IShaderEEE
; demangled: glitch::video::IShaderManager::addShader(char const*, boost::intrusive_ptr<glitch::video::IShader> const&)
; decoder-mode: arm
005e7510  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e7514  00 50 a0 e1                                      mov r5, r0
005e7518  01 00 a0 e1                                      mov r0, r1
005e751c  02 80 a0 e1                                      mov r8, r2
005e7520  01 40 a0 e1                                      mov r4, r1
005e7524  4a 9a f4 eb                                      bl #0x30de54
005e7528  00 10 a0 e3                                      mov r1, #0
005e752c  00 70 a0 e1                                      mov r7, r0
005e7530  01 00 80 e2                                      add r0, r0, #1
005e7534  1b 33 fd eb                                      bl #0x5341a8
005e7538  04 10 a0 e1                                      mov r1, r4
005e753c  00 60 a0 e1                                      mov r6, r0
005e7540  f6 9b f4 eb                                      bl #0x30e520
005e7544  00 30 a0 e3                                      mov r3, #0
005e7548  07 30 c6 e7                                      strb r3, [r6, r7]
005e754c  04 00 85 e2                                      add r0, r5, #4
005e7550  06 10 a0 e1                                      mov r1, r6
005e7554  08 20 a0 e1                                      mov r2, r8
005e7558  01 30 a0 e3                                      mov r3, #1
005e755c  eb fe ff eb                                      bl #0x5e7110
005e7560  01 00 a0 e3                                      mov r0, #1
005e7564  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005e771c, declared_size=448, range_size=448, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager19addShaderSearchPathEPKcb
; demangled: glitch::video::IShaderManager::addShaderSearchPath(char const*, bool)
; decoder-mode: arm
005e771c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e7720  ac 41 9f e5                                      ldr r4, [pc, #0x1ac]
005e7724  ac 61 9f e5                                      ldr r6, [pc, #0x1ac]
005e7728  90 d0 4d e2                                      sub sp, sp, #0x90
005e772c  04 40 8f e0                                      add r4, pc, r4
005e7730  06 30 94 e7                                      ldr r3, [r4, r6]
005e7734  00 00 52 e3                                      cmp r2, #0
005e7738  00 50 a0 e1                                      mov r5, r0
005e773c  00 30 93 e5                                      ldr r3, [r3]
005e7740  01 90 a0 e1                                      mov sb, r1
005e7744  8c 30 8d e5                                      str r3, [sp, #0x8c]
005e7748  1b 00 00 0a                                      beq #0x5e77bc
005e774c  30 a0 90 e5                                      ldr sl, [r0, #0x30]
005e7750  34 80 90 e5                                      ldr r8, [r0, #0x34]
005e7754  74 70 8d e2                                      add r7, sp, #0x74
005e7758  28 20 8d e2                                      add r2, sp, #0x28
005e775c  07 00 a0 e1                                      mov r0, r7
005e7760  35 fa f4 eb                                      bl #0x32603c
005e7764  0a 00 a0 e1                                      mov r0, sl
005e7768  08 10 a0 e1                                      mov r1, r8
005e776c  07 20 a0 e1                                      mov r2, r7
005e7770  18 30 8d e2                                      add r3, sp, #0x18
005e7774  7b ff ff eb                                      bl #0x5e7568
005e7778  00 a0 a0 e1                                      mov sl, r0
005e777c  88 00 9d e5                                      ldr r0, [sp, #0x88]
005e7780  34 80 95 e5                                      ldr r8, [r5, #0x34]
005e7784  07 00 50 e1                                      cmp r0, r7
005e7788  02 00 00 0a                                      beq #0x5e7798
005e778c  00 00 50 e3                                      cmp r0, #0
005e7790  00 00 00 0a                                      beq #0x5e7798
005e7794  2d a3 f4 eb                                      bl #0x310450
005e7798  08 00 5a e1                                      cmp sl, r8
005e779c  2f 00 00 0a                                      beq #0x5e7860
005e77a0  06 30 94 e7                                      ldr r3, [r4, r6]
005e77a4  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
005e77a8  00 30 93 e5                                      ldr r3, [r3]
005e77ac  03 00 52 e1                                      cmp r2, r3
005e77b0  46 00 00 1a                                      bne #0x5e78d0
005e77b4  90 d0 8d e2                                      add sp, sp, #0x90
005e77b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e77bc  34 80 90 e5                                      ldr r8, [r0, #0x34]
005e77c0  30 a0 90 e5                                      ldr sl, [r0, #0x30]
005e77c4  44 70 8d e2                                      add r7, sp, #0x44
005e77c8  20 20 8d e2                                      add r2, sp, #0x20
005e77cc  07 00 a0 e1                                      mov r0, r7
005e77d0  19 fa f4 eb                                      bl #0x32603c
005e77d4  10 00 8d e2                                      add r0, sp, #0x10
005e77d8  14 c0 8d e2                                      add ip, sp, #0x14
005e77dc  08 10 8d e2                                      add r1, sp, #8
005e77e0  0c 20 8d e2                                      add r2, sp, #0xc
005e77e4  07 30 a0 e1                                      mov r3, r7
005e77e8  08 80 8d e5                                      str r8, [sp, #8]
005e77ec  0c a0 8d e5                                      str sl, [sp, #0xc]
005e77f0  00 c0 8d e5                                      str ip, [sp]
005e77f4  5a fc ff eb                                      bl #0x5e6964
005e77f8  58 00 9d e5                                      ldr r0, [sp, #0x58]
005e77fc  30 a0 95 e5                                      ldr sl, [r5, #0x30]
005e7800  10 80 9d e5                                      ldr r8, [sp, #0x10]
005e7804  07 00 50 e1                                      cmp r0, r7
005e7808  02 00 00 0a                                      beq #0x5e7818
005e780c  00 00 50 e3                                      cmp r0, #0
005e7810  00 00 00 0a                                      beq #0x5e7818
005e7814  0d a3 f4 eb                                      bl #0x310450
005e7818  08 00 5a e1                                      cmp sl, r8
005e781c  df ff ff 1a                                      bne #0x5e77a0
005e7820  2c 70 8d e2                                      add r7, sp, #0x2c
005e7824  09 10 a0 e1                                      mov r1, sb
005e7828  1c 20 8d e2                                      add r2, sp, #0x1c
005e782c  30 50 85 e2                                      add r5, r5, #0x30
005e7830  07 00 a0 e1                                      mov r0, r7
005e7834  00 fa f4 eb                                      bl #0x32603c
005e7838  05 00 a0 e1                                      mov r0, r5
005e783c  07 10 a0 e1                                      mov r1, r7
005e7840  23 f7 fd eb                                      bl #0x5654d4
005e7844  40 00 9d e5                                      ldr r0, [sp, #0x40]
005e7848  07 00 50 e1                                      cmp r0, r7
005e784c  d3 ff ff 0a                                      beq #0x5e77a0
005e7850  00 00 50 e3                                      cmp r0, #0
005e7854  d1 ff ff 0a                                      beq #0x5e77a0
005e7858  fc a2 f4 eb                                      bl #0x310450
005e785c  cf ff ff ea                                      b #0x5e77a0
005e7860  5c 70 8d e2                                      add r7, sp, #0x5c
005e7864  24 20 8d e2                                      add r2, sp, #0x24
005e7868  09 10 a0 e1                                      mov r1, sb
005e786c  07 00 a0 e1                                      mov r0, r7
005e7870  30 80 95 e5                                      ldr r8, [r5, #0x30]
005e7874  f0 f9 f4 eb                                      bl #0x32603c
005e7878  34 30 95 e5                                      ldr r3, [r5, #0x34]
005e787c  38 20 95 e5                                      ldr r2, [r5, #0x38]
005e7880  30 00 85 e2                                      add r0, r5, #0x30
005e7884  02 20 63 e0                                      rsb r2, r3, r2
005e7888  c2 21 a0 e1                                      asr r2, r2, #3
005e788c  02 31 82 e0                                      add r3, r2, r2, lsl #2
005e7890  03 32 83 e0                                      add r3, r3, r3, lsl #4
005e7894  03 34 83 e0                                      add r3, r3, r3, lsl #8
005e7898  03 38 83 e0                                      add r3, r3, r3, lsl #16
005e789c  83 30 92 e0                                      adds r3, r2, r3, lsl #1
005e78a0  06 00 00 1a                                      bne #0x5e78c0
005e78a4  08 10 a0 e1                                      mov r1, r8
005e78a8  07 20 a0 e1                                      mov r2, r7
005e78ac  f9 fb ff eb                                      bl #0x5e6898
005e78b0  70 00 9d e5                                      ldr r0, [sp, #0x70]
005e78b4  07 00 50 e1                                      cmp r0, r7
005e78b8  e4 ff ff 1a                                      bne #0x5e7850
005e78bc  b7 ff ff ea                                      b #0x5e77a0
005e78c0  08 10 a0 e1                                      mov r1, r8
005e78c4  07 20 a0 e1                                      mov r2, r7
005e78c8  a5 fc ff eb                                      bl #0x5e6b64
005e78cc  f7 ff ff ea                                      b #0x5e78b0
005e78d0  8e 9a f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e78d4  64 d3 3a 00 ac 40 00 00                          .byte 0x64, 0xd3, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005e78dc, declared_size=120, range_size=120, mode=arm
; class-group: glitch::video::IShaderManager
; alias: _ZN6glitch5video14IShaderManager4initEPNS0_12IVideoDriverEb
; demangled: glitch::video::IShaderManager::init(glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
005e78dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e78e0  2c 10 80 e5                                      str r1, [r0, #0x2c]
005e78e4  d4 30 91 e5                                      ldr r3, [r1, #0xd4]
005e78e8  00 50 a0 e1                                      mov r5, r0
005e78ec  02 60 a0 e1                                      mov r6, r2
005e78f0  34 40 93 e5                                      ldr r4, [r3, #0x34]
005e78f4  00 00 54 e3                                      cmp r4, #0
005e78f8  04 30 94 15                                      ldrne r3, [r4, #4]
005e78fc  04 00 a0 e1                                      mov r0, r4
005e7900  01 30 83 12                                      addne r3, r3, #1
005e7904  04 30 84 15                                      strne r3, [r4, #4]
005e7908  00 30 94 e5                                      ldr r3, [r4]
005e790c  0f e0 a0 e1                                      mov lr, pc
005e7910  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
005e7914  00 70 a0 e1                                      mov r7, r0
005e7918  4d 99 f4 eb                                      bl #0x30de54
005e791c  07 10 a0 e1                                      mov r1, r7
005e7920  00 20 87 e0                                      add r2, r7, r0
005e7924  3c 00 85 e2                                      add r0, r5, #0x3c
005e7928  96 e4 f4 eb                                      bl #0x320b88
005e792c  00 00 56 e3                                      cmp r6, #0
005e7930  02 00 00 1a                                      bne #0x5e7940
005e7934  04 00 a0 e1                                      mov r0, r4
005e7938  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005e793c  10 d7 f4 ea                                      b #0x31d584
005e7940  05 00 a0 e1                                      mov r0, r5
005e7944  50 10 95 e5                                      ldr r1, [r5, #0x50]
005e7948  00 20 a0 e3                                      mov r2, #0
005e794c  72 ff ff eb                                      bl #0x5e771c
005e7950  f7 ff ff ea                                      b #0x5e7934
