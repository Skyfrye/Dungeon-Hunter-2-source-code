; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d4284, declared_size=176, range_size=176, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer20ensureBufferCapacityEi
; demangled: BufferedRenderer::ensureBufferCapacity(int)
; decoder-mode: arm
007d4284  70 40 2d e9                                      push {r4, r5, r6, lr}
007d4288  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007d428c  00 50 a0 e1                                      mov r5, r0
007d4290  01 40 a0 e1                                      mov r4, r1
007d4294  01 00 53 e1                                      cmp r3, r1
007d4298  00 00 00 ba                                      blt #0x7d42a0
007d429c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d42a0  18 60 a0 e3                                      mov r6, #0x18
007d42a4  96 01 06 e0                                      mul r6, r6, r1
007d42a8  00 10 a0 e3                                      mov r1, #0
007d42ac  06 00 a0 e1                                      mov r0, r6
007d42b0  bc 7f f5 eb                                      bl #0x5341a8
007d42b4  00 00 54 e3                                      cmp r4, #0
007d42b8  00 20 a0 e1                                      mov r2, r0
007d42bc  0b 00 00 0a                                      beq #0x7d42f0
007d42c0  00 10 a0 e3                                      mov r1, #0
007d42c4  00 30 a0 e1                                      mov r3, r0
007d42c8  00 c0 a0 e3                                      mov ip, #0
007d42cc  01 c0 8c e2                                      add ip, ip, #1
007d42d0  04 00 5c e1                                      cmp ip, r4
007d42d4  00 10 83 e5                                      str r1, [r3]
007d42d8  04 10 83 e5                                      str r1, [r3, #4]
007d42dc  0c 10 83 e5                                      str r1, [r3, #0xc]
007d42e0  10 10 83 e5                                      str r1, [r3, #0x10]
007d42e4  14 10 83 e5                                      str r1, [r3, #0x14]
007d42e8  18 30 83 e2                                      add r3, r3, #0x18
007d42ec  f6 ff ff 1a                                      bne #0x7d42cc
007d42f0  10 30 95 e5                                      ldr r3, [r5, #0x10]
007d42f4  2c 20 85 e5                                      str r2, [r5, #0x2c]
007d42f8  06 10 a0 e1                                      mov r1, r6
007d42fc  14 00 93 e5                                      ldr r0, [r3, #0x14]
007d4300  01 30 a0 e3                                      mov r3, #1
007d4304  6a 36 f7 eb                                      bl #0x5a1cb4
007d4308  00 10 a0 e3                                      mov r1, #0
007d430c  04 01 a0 e1                                      lsl r0, r4, #2
007d4310  a4 7f f5 eb                                      bl #0x5341a8
007d4314  84 10 a0 e1                                      lsl r1, r4, #1
007d4318  00 20 a0 e1                                      mov r2, r0
007d431c  30 00 85 e5                                      str r0, [r5, #0x30]
007d4320  01 30 a0 e3                                      mov r3, #1
007d4324  14 00 95 e5                                      ldr r0, [r5, #0x14]
007d4328  61 36 f7 eb                                      bl #0x5a1cb4
007d432c  0c 40 85 e5                                      str r4, [r5, #0xc]
007d4330  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d4768, declared_size=672, range_size=672, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRendererC1EPN6glitch5video12IVideoDriverE
; demangled: BufferedRenderer::BufferedRenderer(glitch::video::IVideoDriver*)
; decoder-mode: arm
007d4768  70 40 2d e9                                      push {r4, r5, r6, lr}
007d476c  00 40 a0 e3                                      mov r4, #0
007d4770  01 60 a0 e1                                      mov r6, r1
007d4774  48 d0 4d e2                                      sub sp, sp, #0x48
007d4778  00 50 a0 e1                                      mov r5, r0
007d477c  00 40 80 e5                                      str r4, [r0]
007d4780  04 40 c0 e5                                      strb r4, [r0, #4]
007d4784  08 40 80 e5                                      str r4, [r0, #8]
007d4788  0c 40 80 e5                                      str r4, [r0, #0xc]
007d478c  01 10 a0 e3                                      mov r1, #1
007d4790  10 00 80 e2                                      add r0, r0, #0x10
007d4794  01 27 a0 e3                                      mov r2, #0x40000
007d4798  19 33 f7 eb                                      bl #0x5a1404
007d479c  04 00 56 e1                                      cmp r6, r4
007d47a0  44 60 8d 05                                      streq r6, [sp, #0x44]
007d47a4  06 00 a0 01                                      moveq r0, r6
007d47a8  14 60 85 05                                      streq r6, [r5, #0x14]
007d47ac  10 00 00 0a                                      beq #0x7d47f4
007d47b0  01 20 a0 e3                                      mov r2, #1
007d47b4  04 40 8d e5                                      str r4, [sp, #4]
007d47b8  00 40 8d e5                                      str r4, [sp]
007d47bc  08 20 8d e5                                      str r2, [sp, #8]
007d47c0  04 30 a0 e3                                      mov r3, #4
007d47c4  44 00 8d e2                                      add r0, sp, #0x44
007d47c8  00 c0 96 e5                                      ldr ip, [r6]
007d47cc  06 10 a0 e1                                      mov r1, r6
007d47d0  0f e0 a0 e1                                      mov lr, pc
007d47d4  78 f0 9c e5                                      ldr pc, [ip, #0x78]
007d47d8  44 00 9d e5                                      ldr r0, [sp, #0x44]
007d47dc  00 00 50 e3                                      cmp r0, #0
007d47e0  14 00 85 e5                                      str r0, [r5, #0x14]
007d47e4  04 30 90 15                                      ldrne r3, [r0, #4]
007d47e8  01 30 83 12                                      addne r3, r3, #1
007d47ec  04 30 80 15                                      strne r3, [r0, #4]
007d47f0  44 00 9d 15                                      ldrne r0, [sp, #0x44]
007d47f4  00 30 a0 e3                                      mov r3, #0
007d47f8  24 30 85 e5                                      str r3, [r5, #0x24]
007d47fc  18 30 85 e5                                      str r3, [r5, #0x18]
007d4800  1c 30 85 e5                                      str r3, [r5, #0x1c]
007d4804  20 30 85 e5                                      str r3, [r5, #0x20]
007d4808  01 10 a0 e3                                      mov r1, #1
007d480c  04 30 a0 e3                                      mov r3, #4
007d4810  00 00 50 e3                                      cmp r0, #0
007d4814  b8 12 c5 e1                                      strh r1, [r5, #0x28]
007d4818  ba 32 c5 e1                                      strh r3, [r5, #0x2a]
007d481c  00 00 00 0a                                      beq #0x7d4824
007d4820  57 23 ed eb                                      bl #0x31d584
007d4824  00 40 a0 e3                                      mov r4, #0
007d4828  2c 40 85 e5                                      str r4, [r5, #0x2c]
007d482c  30 40 85 e5                                      str r4, [r5, #0x30]
007d4830  34 60 85 e5                                      str r6, [r5, #0x34]
007d4834  38 40 85 e5                                      str r4, [r5, #0x38]
007d4838  3c 30 85 e2                                      add r3, r5, #0x3c
007d483c  42 2f 85 e2                                      add r2, r5, #0x108
007d4840  00 c0 e0 e3                                      mvn ip, #0
007d4844  00 40 83 e5                                      str r4, [r3]
007d4848  04 40 83 e5                                      str r4, [r3, #4]
007d484c  b8 c0 c3 e1                                      strh ip, [r3, #8]
007d4850  ba c0 c3 e1                                      strh ip, [r3, #0xa]
007d4854  0c 30 83 e2                                      add r3, r3, #0xc
007d4858  02 00 53 e1                                      cmp r3, r2
007d485c  f7 ff ff 1a                                      bne #0x7d4840
007d4860  00 00 56 e3                                      cmp r6, #0
007d4864  08 41 85 e5                                      str r4, [r5, #0x108]
007d4868  0c 41 85 e5                                      str r4, [r5, #0x10c]
007d486c  5f 00 00 0a                                      beq #0x7d49f0
007d4870  01 30 a0 e3                                      mov r3, #1
007d4874  08 30 8d e5                                      str r3, [sp, #8]
007d4878  00 40 8d e5                                      str r4, [sp]
007d487c  04 40 8d e5                                      str r4, [sp, #4]
007d4880  06 10 a0 e1                                      mov r1, r6
007d4884  00 c0 96 e5                                      ldr ip, [r6]
007d4888  40 00 8d e2                                      add r0, sp, #0x40
007d488c  04 20 a0 e1                                      mov r2, r4
007d4890  04 30 a0 e3                                      mov r3, #4
007d4894  0f e0 a0 e1                                      mov lr, pc
007d4898  78 f0 9c e5                                      ldr pc, [ip, #0x78]
007d489c  40 60 9d e5                                      ldr r6, [sp, #0x40]
007d48a0  00 00 56 e3                                      cmp r6, #0
007d48a4  54 00 00 0a                                      beq #0x7d49fc
007d48a8  04 30 96 e5                                      ldr r3, [r6, #4]
007d48ac  01 30 83 e2                                      add r3, r3, #1
007d48b0  04 30 86 e5                                      str r3, [r6, #4]
007d48b4  40 00 9d e5                                      ldr r0, [sp, #0x40]
007d48b8  00 00 50 e3                                      cmp r0, #0
007d48bc  00 00 00 0a                                      beq #0x7d48c4
007d48c0  2f 23 ed eb                                      bl #0x31d584
007d48c4  30 60 8d e5                                      str r6, [sp, #0x30]
007d48c8  04 30 96 e5                                      ldr r3, [r6, #4]
007d48cc  10 00 95 e5                                      ldr r0, [r5, #0x10]
007d48d0  01 30 83 e2                                      add r3, r3, #1
007d48d4  04 30 86 e5                                      str r3, [r6, #4]
007d48d8  0c c0 a0 e3                                      mov ip, #0xc
007d48dc  34 c0 8d e5                                      str ip, [sp, #0x34]
007d48e0  06 c0 a0 e3                                      mov ip, #6
007d48e4  38 c0 8d e5                                      str ip, [sp, #0x38]
007d48e8  03 c0 a0 e3                                      mov ip, #3
007d48ec  14 10 80 e2                                      add r1, r0, #0x14
007d48f0  bc c3 cd e1                                      strh ip, [sp, #0x3c]
007d48f4  30 20 8d e2                                      add r2, sp, #0x30
007d48f8  18 c0 a0 e3                                      mov ip, #0x18
007d48fc  01 30 a0 e3                                      mov r3, #1
007d4900  be c3 cd e1                                      strh ip, [sp, #0x3e]
007d4904  7c ff ff eb                                      bl #0x7d46fc
007d4908  30 00 9d e5                                      ldr r0, [sp, #0x30]
007d490c  00 00 50 e3                                      cmp r0, #0
007d4910  00 00 00 0a                                      beq #0x7d4918
007d4914  1a 23 ed eb                                      bl #0x31d584
007d4918  00 00 56 e3                                      cmp r6, #0
007d491c  20 60 8d e5                                      str r6, [sp, #0x20]
007d4920  04 30 96 15                                      ldrne r3, [r6, #4]
007d4924  10 00 95 e5                                      ldr r0, [r5, #0x10]
007d4928  00 c0 a0 e3                                      mov ip, #0
007d492c  01 30 83 12                                      addne r3, r3, #1
007d4930  04 30 86 15                                      strne r3, [r6, #4]
007d4934  24 c0 8d e5                                      str ip, [sp, #0x24]
007d4938  06 c0 a0 e3                                      mov ip, #6
007d493c  28 c0 8d e5                                      str ip, [sp, #0x28]
007d4940  02 c0 a0 e3                                      mov ip, #2
007d4944  24 10 80 e2                                      add r1, r0, #0x24
007d4948  bc c2 cd e1                                      strh ip, [sp, #0x2c]
007d494c  20 20 8d e2                                      add r2, sp, #0x20
007d4950  18 c0 a0 e3                                      mov ip, #0x18
007d4954  01 30 a0 e3                                      mov r3, #1
007d4958  be c2 cd e1                                      strh ip, [sp, #0x2e]
007d495c  66 ff ff eb                                      bl #0x7d46fc
007d4960  20 00 9d e5                                      ldr r0, [sp, #0x20]
007d4964  00 00 50 e3                                      cmp r0, #0
007d4968  00 00 00 0a                                      beq #0x7d4970
007d496c  04 23 ed eb                                      bl #0x31d584
007d4970  00 00 56 e3                                      cmp r6, #0
007d4974  10 60 8d e5                                      str r6, [sp, #0x10]
007d4978  04 30 96 15                                      ldrne r3, [r6, #4]
007d497c  10 00 95 e5                                      ldr r0, [r5, #0x10]
007d4980  08 c0 a0 e3                                      mov ip, #8
007d4984  01 30 83 12                                      addne r3, r3, #1
007d4988  04 30 86 15                                      strne r3, [r6, #4]
007d498c  14 c0 8d e5                                      str ip, [sp, #0x14]
007d4990  01 c0 a0 e3                                      mov ip, #1
007d4994  18 c0 8d e5                                      str ip, [sp, #0x18]
007d4998  04 c0 a0 e3                                      mov ip, #4
007d499c  34 10 80 e2                                      add r1, r0, #0x34
007d49a0  bc c1 cd e1                                      strh ip, [sp, #0x1c]
007d49a4  10 20 8d e2                                      add r2, sp, #0x10
007d49a8  18 c0 a0 e3                                      mov ip, #0x18
007d49ac  00 30 a0 e3                                      mov r3, #0
007d49b0  be c1 cd e1                                      strh ip, [sp, #0x1e]
007d49b4  50 ff ff eb                                      bl #0x7d46fc
007d49b8  10 00 9d e5                                      ldr r0, [sp, #0x10]
007d49bc  00 00 50 e3                                      cmp r0, #0
007d49c0  00 00 00 0a                                      beq #0x7d49c8
007d49c4  ee 22 ed eb                                      bl #0x31d584
007d49c8  05 00 a0 e1                                      mov r0, r5
007d49cc  01 1b a0 e3                                      mov r1, #0x400
007d49d0  2b fe ff eb                                      bl #0x7d4284
007d49d4  00 00 56 e3                                      cmp r6, #0
007d49d8  01 00 00 0a                                      beq #0x7d49e4
007d49dc  06 00 a0 e1                                      mov r0, r6
007d49e0  e7 22 ed eb                                      bl #0x31d584
007d49e4  05 00 a0 e1                                      mov r0, r5
007d49e8  48 d0 8d e2                                      add sp, sp, #0x48
007d49ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d49f0  30 60 8d e5                                      str r6, [sp, #0x30]
007d49f4  10 00 95 e5                                      ldr r0, [r5, #0x10]
007d49f8  b6 ff ff ea                                      b #0x7d48d8
007d49fc  10 00 95 e5                                      ldr r0, [r5, #0x10]
007d4a00  30 40 8d e5                                      str r4, [sp, #0x30]
007d4a04  b3 ff ff ea                                      b #0x7d48d8

; FUNCTION 0x007d4ab0, declared_size=140, range_size=140, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer23createBlendModeMaterialEN5boost13intrusive_ptrIN6glitch5video17CMaterialRendererEEEiPKc
; demangled: BufferedRenderer::createBlendModeMaterial(boost::intrusive_ptr<glitch::video::CMaterialRenderer>, int, char const*)
; decoder-mode: arm
007d4ab0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4ab4  08 d0 4d e2                                      sub sp, sp, #8
007d4ab8  04 40 8d e2                                      add r4, sp, #4
007d4abc  02 70 a0 e1                                      mov r7, r2
007d4ac0  00 20 a0 e3                                      mov r2, #0
007d4ac4  00 50 a0 e1                                      mov r5, r0
007d4ac8  03 60 a0 e1                                      mov r6, r3
007d4acc  04 00 a0 e1                                      mov r0, r4
007d4ad0  02 30 a0 e1                                      mov r3, r2
007d4ad4  01 80 a0 e1                                      mov r8, r1
007d4ad8  70 dd f7 eb                                      bl #0x5cc0a0
007d4adc  0c 30 a0 e3                                      mov r3, #0xc
007d4ae0  93 07 07 e0                                      mul r7, r3, r7
007d4ae4  04 10 a0 e1                                      mov r1, r4
007d4ae8  07 00 85 e0                                      add r0, r5, r7
007d4aec  3c 00 80 e2                                      add r0, r0, #0x3c
007d4af0  c4 ff ff eb                                      bl #0x7d4a08
007d4af4  04 00 a0 e1                                      mov r0, r4
007d4af8  3a f0 ec eb                                      bl #0x310be8
007d4afc  00 00 98 e5                                      ldr r0, [r8]
007d4b00  06 10 a0 e1                                      mov r1, r6
007d4b04  02 ff f7 eb                                      bl #0x5d4714
007d4b08  ff 00 50 e3                                      cmp r0, #0xff
007d4b0c  04 00 00 0a                                      beq #0x7d4b24
007d4b10  07 70 85 e0                                      add r7, r5, r7
007d4b14  40 30 97 e5                                      ldr r3, [r7, #0x40]
007d4b18  08 00 c3 e5                                      strb r0, [r3, #8]
007d4b1c  08 d0 8d e2                                      add sp, sp, #8
007d4b20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007d4b24  0c 00 9f e5                                      ldr r0, [pc, #0xc]
007d4b28  06 10 a0 e1                                      mov r1, r6
007d4b2c  00 00 8f e0                                      add r0, pc, r0
007d4b30  ae 31 fe eb                                      bl #0x7611f0
007d4b34  f8 ff ff ea                                      b #0x7d4b1c
; mapping-symbol data/literal pool
007d4b38  34 75 13 00                                      .byte 0x34, 0x75, 0x13, 0x00

; FUNCTION 0x007d673c, declared_size=344, range_size=344, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer15getWireMaterialEv
; demangled: BufferedRenderer::getWireMaterial()
; decoder-mode: arm
007d673c  70 40 2d e9                                      push {r4, r5, r6, lr}
007d6740  00 40 a0 e1                                      mov r4, r0
007d6744  00 01 90 e5                                      ldr r0, [r0, #0x100]
007d6748  79 bd f7 eb                                      bl #0x5c5d34
007d674c  00 21 94 e5                                      ldr r2, [r4, #0x100]
007d6750  0c c0 a0 e3                                      mov ip, #0xc
007d6754  fe 35 a0 e3                                      mov r3, #0x3f800000
007d6758  04 20 92 e5                                      ldr r2, [r2, #4]
007d675c  03 10 a0 e1                                      mov r1, r3
007d6760  fc 50 84 e2                                      add r5, r4, #0xfc
007d6764  18 20 92 e5                                      ldr r2, [r2, #0x18]
007d6768  9c 20 22 e0                                      mla r2, ip, r0, r2
007d676c  08 60 92 e5                                      ldr r6, [r2, #8]
007d6770  0c 00 96 e5                                      ldr r0, [r6, #0xc]
007d6774  0c 30 86 e5                                      str r3, [r6, #0xc]
007d6778  03 de ec eb                                      bl #0x30df8c
007d677c  00 00 50 e3                                      cmp r0, #0
007d6780  01 10 a0 e3                                      mov r1, #1
007d6784  01 30 a0 03                                      moveq r3, #1
007d6788  01 20 a0 e1                                      mov r2, r1
007d678c  30 30 c6 05                                      strbeq r3, [r6, #0x30]
007d6790  01 0c 84 e2                                      add r0, r4, #0x100
007d6794  01 30 a0 e1                                      mov r3, r1
007d6798  e5 f9 ff eb                                      bl #0x7d4f34
007d679c  00 01 94 e5                                      ldr r0, [r4, #0x100]
007d67a0  63 bd f7 eb                                      bl #0x5c5d34
007d67a4  00 31 94 e5                                      ldr r3, [r4, #0x100]
007d67a8  0c 20 a0 e3                                      mov r2, #0xc
007d67ac  04 30 93 e5                                      ldr r3, [r3, #4]
007d67b0  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d67b4  92 30 23 e0                                      mla r3, r2, r0, r3
007d67b8  08 30 93 e5                                      ldr r3, [r3, #8]
007d67bc  04 20 93 e5                                      ldr r2, [r3, #4]
007d67c0  01 08 12 e3                                      tst r2, #0x10000
007d67c4  01 28 c2 e3                                      bic r2, r2, #0x10000
007d67c8  04 20 83 e5                                      str r2, [r3, #4]
007d67cc  01 20 a0 13                                      movne r2, #1
007d67d0  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d67d4  00 01 94 e5                                      ldr r0, [r4, #0x100]
007d67d8  55 bd f7 eb                                      bl #0x5c5d34
007d67dc  00 31 94 e5                                      ldr r3, [r4, #0x100]
007d67e0  0c 20 a0 e3                                      mov r2, #0xc
007d67e4  04 30 93 e5                                      ldr r3, [r3, #4]
007d67e8  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d67ec  92 30 23 e0                                      mla r3, r2, r0, r3
007d67f0  08 30 93 e5                                      ldr r3, [r3, #8]
007d67f4  04 20 93 e5                                      ldr r2, [r3, #4]
007d67f8  02 07 12 e3                                      tst r2, #0x80000
007d67fc  02 27 c2 e3                                      bic r2, r2, #0x80000
007d6800  04 20 83 e5                                      str r2, [r3, #4]
007d6804  01 20 a0 13                                      movne r2, #1
007d6808  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d680c  00 01 94 e5                                      ldr r0, [r4, #0x100]
007d6810  47 bd f7 eb                                      bl #0x5c5d34
007d6814  00 31 94 e5                                      ldr r3, [r4, #0x100]
007d6818  0c 20 a0 e3                                      mov r2, #0xc
007d681c  04 30 93 e5                                      ldr r3, [r3, #4]
007d6820  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d6824  92 30 23 e0                                      mla r3, r2, r0, r3
007d6828  08 30 93 e5                                      ldr r3, [r3, #8]
007d682c  04 20 93 e5                                      ldr r2, [r3, #4]
007d6830  52 16 e1 e7                                      ubfx r1, r2, #0xc, #2
007d6834  03 2a c2 e3                                      bic r2, r2, #0x3000
007d6838  01 00 51 e3                                      cmp r1, #1
007d683c  01 2a 82 e3                                      orr r2, r2, #0x1000
007d6840  04 20 83 e5                                      str r2, [r3, #4]
007d6844  01 20 a0 13                                      movne r2, #1
007d6848  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d684c  00 01 94 e5                                      ldr r0, [r4, #0x100]
007d6850  37 bd f7 eb                                      bl #0x5c5d34
007d6854  00 31 94 e5                                      ldr r3, [r4, #0x100]
007d6858  0c 20 a0 e3                                      mov r2, #0xc
007d685c  04 30 93 e5                                      ldr r3, [r3, #4]
007d6860  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d6864  92 30 23 e0                                      mla r3, r2, r0, r3
007d6868  05 00 a0 e1                                      mov r0, r5
007d686c  08 30 93 e5                                      ldr r3, [r3, #8]
007d6870  04 20 93 e5                                      ldr r2, [r3, #4]
007d6874  52 17 e1 e7                                      ubfx r1, r2, #0xe, #2
007d6878  03 29 c2 e3                                      bic r2, r2, #0xc000
007d687c  01 29 82 e3                                      orr r2, r2, #0x4000
007d6880  01 00 51 e3                                      cmp r1, #1
007d6884  04 20 83 e5                                      str r2, [r3, #4]
007d6888  01 20 a0 13                                      movne r2, #1
007d688c  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d6890  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d6894, declared_size=428, range_size=428, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer5flushEv
; demangled: BufferedRenderer::flush()
; decoder-mode: arm
007d6894  70 40 2d e9                                      push {r4, r5, r6, lr}
007d6898  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d689c  28 d0 4d e2                                      sub sp, sp, #0x28
007d68a0  00 40 a0 e1                                      mov r4, r0
007d68a4  08 30 93 e5                                      ldr r3, [r3, #8]
007d68a8  00 00 53 e3                                      cmp r3, #0
007d68ac  01 00 00 1a                                      bne #0x7d68b8
007d68b0  28 d0 8d e2                                      add sp, sp, #0x28
007d68b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d68b8  38 00 90 e5                                      ldr r0, [r0, #0x38]
007d68bc  4a f3 fe eb                                      bl #0x7935ec
007d68c0  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d68c4  08 20 94 e5                                      ldr r2, [r4, #8]
007d68c8  08 60 93 e5                                      ldr r6, [r3, #8]
007d68cc  06 20 62 e0                                      rsb r2, r2, r6
007d68d0  08 20 83 e5                                      str r2, [r3, #8]
007d68d4  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d68d8  08 10 94 e5                                      ldr r1, [r4, #8]
007d68dc  94 28 f7 eb                                      bl #0x5a0b34
007d68e0  04 30 d4 e5                                      ldrb r3, [r4, #4]
007d68e4  00 00 53 e3                                      cmp r3, #0
007d68e8  50 00 00 1a                                      bne #0x7d6a30
007d68ec  0c 31 94 e5                                      ldr r3, [r4, #0x10c]
007d68f0  0c 50 a0 e3                                      mov r5, #0xc
007d68f4  95 03 05 e0                                      mul r5, r5, r3
007d68f8  05 30 84 e0                                      add r3, r4, r5
007d68fc  40 30 93 e5                                      ldr r3, [r3, #0x40]
007d6900  00 00 53 e3                                      cmp r3, #0
007d6904  05 50 84 10                                      addne r5, r4, r5
007d6908  3c 50 84 02                                      addeq r5, r4, #0x3c
007d690c  3c 50 85 12                                      addne r5, r5, #0x3c
007d6910  00 20 a0 e3                                      mov r2, #0
007d6914  42 3f 84 e2                                      add r3, r4, #0x108
007d6918  04 00 95 e5                                      ldr r0, [r5, #4]
007d691c  b8 10 d5 e1                                      ldrh r1, [r5, #8]
007d6920  7f da f7 eb                                      bl #0x5cd324
007d6924  ba 20 d5 e1                                      ldrh r2, [r5, #0xa]
007d6928  ff 3f 0f e3                                      movw r3, #0xffff
007d692c  03 00 52 e1                                      cmp r2, r3
007d6930  15 00 00 0a                                      beq #0x7d698c
007d6934  08 11 94 e5                                      ldr r1, [r4, #0x108]
007d6938  00 00 51 e3                                      cmp r1, #0
007d693c  12 00 00 0a                                      beq #0x7d698c
007d6940  00 30 a0 e3                                      mov r3, #0
007d6944  fe 25 a0 e3                                      mov r2, #0x3f800000
007d6948  1c 20 8d e5                                      str r2, [sp, #0x1c]
007d694c  14 20 8d e5                                      str r2, [sp, #0x14]
007d6950  18 20 8d e5                                      str r2, [sp, #0x18]
007d6954  10 30 8d e5                                      str r3, [sp, #0x10]
007d6958  20 30 8d e5                                      str r3, [sp, #0x20]
007d695c  04 30 8d e5                                      str r3, [sp, #4]
007d6960  08 30 8d e5                                      str r3, [sp, #8]
007d6964  0c 30 8d e5                                      str r3, [sp, #0xc]
007d6968  38 30 91 e5                                      ldr r3, [r1, #0x38]
007d696c  04 00 95 e5                                      ldr r0, [r5, #4]
007d6970  ba 10 d5 e1                                      ldrh r1, [r5, #0xa]
007d6974  53 32 e5 e7                                      ubfx r3, r3, #4, #6
007d6978  02 00 53 e3                                      cmp r3, #2
007d697c  04 30 8d 12                                      addne r3, sp, #4
007d6980  14 30 8d 02                                      addeq r3, sp, #0x14
007d6984  00 20 a0 e3                                      mov r2, #0
007d6988  56 d3 f7 eb                                      bl #0x5cb6e8
007d698c  04 10 85 e2                                      add r1, r5, #4
007d6990  34 00 94 e5                                      ldr r0, [r4, #0x34]
007d6994  57 f9 ff eb                                      bl #0x7d4ef8
007d6998  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d699c  34 00 94 e5                                      ldr r0, [r4, #0x34]
007d69a0  24 10 8d e2                                      add r1, sp, #0x24
007d69a4  00 00 53 e3                                      cmp r3, #0
007d69a8  24 30 8d e5                                      str r3, [sp, #0x24]
007d69ac  00 20 93 15                                      ldrne r2, [r3]
007d69b0  01 20 82 12                                      addne r2, r2, #1
007d69b4  00 20 83 15                                      strne r2, [r3]
007d69b8  14 20 84 e2                                      add r2, r4, #0x14
007d69bc  3e f9 ff eb                                      bl #0x7d4ebc
007d69c0  24 50 9d e5                                      ldr r5, [sp, #0x24]
007d69c4  00 00 55 e3                                      cmp r5, #0
007d69c8  04 00 00 0a                                      beq #0x7d69e0
007d69cc  00 30 95 e5                                      ldr r3, [r5]
007d69d0  01 30 43 e2                                      sub r3, r3, #1
007d69d4  00 00 53 e3                                      cmp r3, #0
007d69d8  00 30 85 e5                                      str r3, [r5]
007d69dc  0e 00 00 0a                                      beq #0x7d6a1c
007d69e0  08 10 94 e5                                      ldr r1, [r4, #8]
007d69e4  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d69e8  00 10 61 e2                                      rsb r1, r1, #0
007d69ec  50 28 f7 eb                                      bl #0x5a0b34
007d69f0  00 30 94 e5                                      ldr r3, [r4]
007d69f4  10 20 94 e5                                      ldr r2, [r4, #0x10]
007d69f8  01 00 53 e3                                      cmp r3, #1
007d69fc  00 60 a0 13                                      movne r6, #0
007d6a00  00 30 a0 e3                                      mov r3, #0
007d6a04  08 60 84 05                                      streq r6, [r4, #8]
007d6a08  08 60 82 e5                                      str r6, [r2, #8]
007d6a0c  24 30 84 e5                                      str r3, [r4, #0x24]
007d6a10  1c 30 84 e5                                      str r3, [r4, #0x1c]
007d6a14  20 30 84 e5                                      str r3, [r4, #0x20]
007d6a18  a4 ff ff ea                                      b #0x7d68b0
007d6a1c  05 00 a0 e1                                      mov r0, r5
007d6a20  fd 27 f7 eb                                      bl #0x5a0a1c
007d6a24  05 00 a0 e1                                      mov r0, r5
007d6a28  20 de ec eb                                      bl #0x30e2b0
007d6a2c  eb ff ff ea                                      b #0x7d69e0
007d6a30  04 00 a0 e1                                      mov r0, r4
007d6a34  40 ff ff eb                                      bl #0x7d673c
007d6a38  00 50 a0 e1                                      mov r5, r0
007d6a3c  b3 ff ff ea                                      b #0x7d6910

; FUNCTION 0x007d6a48, declared_size=80, range_size=80, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer10setTextureERN5boost13intrusive_ptrIN6glitch5video8ITextureEEE
; demangled: BufferedRenderer::setTexture(boost::intrusive_ptr<glitch::video::ITexture>&)
; decoder-mode: arm
007d6a48  70 40 2d e9                                      push {r4, r5, r6, lr}
007d6a4c  00 20 91 e5                                      ldr r2, [r1]
007d6a50  08 31 90 e5                                      ldr r3, [r0, #0x108]
007d6a54  01 50 a0 e1                                      mov r5, r1
007d6a58  00 40 a0 e1                                      mov r4, r0
007d6a5c  02 00 53 e1                                      cmp r3, r2
007d6a60  01 00 00 0a                                      beq #0x7d6a6c
007d6a64  8a ff ff eb                                      bl #0x7d6894
007d6a68  00 30 95 e5                                      ldr r3, [r5]
007d6a6c  00 00 53 e3                                      cmp r3, #0
007d6a70  04 20 93 15                                      ldrne r2, [r3, #4]
007d6a74  01 20 82 12                                      addne r2, r2, #1
007d6a78  04 20 83 15                                      strne r2, [r3, #4]
007d6a7c  08 01 94 e5                                      ldr r0, [r4, #0x108]
007d6a80  08 31 84 e5                                      str r3, [r4, #0x108]
007d6a84  00 00 50 e3                                      cmp r0, #0
007d6a88  01 00 00 0a                                      beq #0x7d6a94
007d6a8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d6a90  bb 1a ed ea                                      b #0x31d584
007d6a94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d6a98, declared_size=100, range_size=100, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer13clearTexturesEv
; demangled: BufferedRenderer::clearTextures()
; decoder-mode: arm
007d6a98  70 40 2d e9                                      push {r4, r5, r6, lr}
007d6a9c  08 d0 4d e2                                      sub sp, sp, #8
007d6aa0  08 60 8d e2                                      add r6, sp, #8
007d6aa4  00 50 a0 e3                                      mov r5, #0
007d6aa8  04 50 26 e5                                      str r5, [r6, #-4]!
007d6aac  06 10 a0 e1                                      mov r1, r6
007d6ab0  00 40 a0 e1                                      mov r4, r0
007d6ab4  e3 ff ff eb                                      bl #0x7d6a48
007d6ab8  40 00 94 e5                                      ldr r0, [r4, #0x40]
007d6abc  00 20 a0 e3                                      mov r2, #0
007d6ac0  01 50 85 e2                                      add r5, r5, #1
007d6ac4  02 00 50 e1                                      cmp r0, r2
007d6ac8  06 30 a0 e1                                      mov r3, r6
007d6acc  01 00 00 0a                                      beq #0x7d6ad8
007d6ad0  b4 14 d4 e1                                      ldrh r1, [r4, #0x44]
007d6ad4  12 da f7 eb                                      bl #0x5cd324
007d6ad8  11 00 55 e3                                      cmp r5, #0x11
007d6adc  0c 40 84 e2                                      add r4, r4, #0xc
007d6ae0  f4 ff ff 1a                                      bne #0x7d6ab8
007d6ae4  04 00 9d e5                                      ldr r0, [sp, #4]
007d6ae8  00 00 50 e3                                      cmp r0, #0
007d6aec  00 00 00 0a                                      beq #0x7d6af4
007d6af0  a3 1a ed eb                                      bl #0x31d584
007d6af4  08 d0 8d e2                                      add sp, sp, #8
007d6af8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d6ea0, declared_size=500, range_size=500, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer11queueBufferERKN5boost13intrusive_ptrIN6glitch5video14CVertexStreamsEEENS3_16E_PRIMITIVE_TYPEE
; demangled: BufferedRenderer::queueBuffer(boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::E_PRIMITIVE_TYPE)
; decoder-mode: arm
007d6ea0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d6ea4  00 40 a0 e1                                      mov r4, r0
007d6ea8  01 70 a0 e1                                      mov r7, r1
007d6eac  10 00 90 e5                                      ldr r0, [r0, #0x10]
007d6eb0  00 10 91 e5                                      ldr r1, [r1]
007d6eb4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007d6eb8  08 50 90 e5                                      ldr r5, [r0, #8]
007d6ebc  08 10 91 e5                                      ldr r1, [r1, #8]
007d6ec0  02 60 a0 e1                                      mov r6, r2
007d6ec4  01 10 85 e0                                      add r1, r5, r1
007d6ec8  02 10 81 e2                                      add r1, r1, #2
007d6ecc  03 00 51 e1                                      cmp r1, r3
007d6ed0  52 00 00 3a                                      blo #0x7d7020
007d6ed4  04 00 a0 e1                                      mov r0, r4
007d6ed8  6d fe ff eb                                      bl #0x7d6894
007d6edc  ba 62 c4 e1                                      strh r6, [r4, #0x2a]
007d6ee0  10 20 94 e5                                      ldr r2, [r4, #0x10]
007d6ee4  00 30 97 e5                                      ldr r3, [r7]
007d6ee8  08 50 92 e5                                      ldr r5, [r2, #8]
007d6eec  08 10 93 e5                                      ldr r1, [r3, #8]
007d6ef0  01 10 85 e0                                      add r1, r5, r1
007d6ef4  02 10 81 e2                                      add r1, r1, #2
007d6ef8  04 00 a0 e1                                      mov r0, r4
007d6efc  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
007d6f00  df f4 ff eb                                      bl #0x7d4284
007d6f04  00 30 97 e5                                      ldr r3, [r7]
007d6f08  00 00 55 e3                                      cmp r5, #0
007d6f0c  14 20 93 e5                                      ldr r2, [r3, #0x14]
007d6f10  08 80 92 e5                                      ldr r8, [r2, #8]
007d6f14  02 00 00 da                                      ble #0x7d6f24
007d6f18  ba 22 d4 e1                                      ldrh r2, [r4, #0x2a]
007d6f1c  04 00 52 e3                                      cmp r2, #4
007d6f20  42 00 00 0a                                      beq #0x7d7030
007d6f24  08 20 93 e5                                      ldr r2, [r3, #8]
007d6f28  00 00 52 e3                                      cmp r2, #0
007d6f2c  0d 00 00 da                                      ble #0x7d6f68
007d6f30  86 10 a0 e1                                      lsl r1, r6, #1
007d6f34  02 e0 85 e0                                      add lr, r5, r2
007d6f38  05 30 a0 e1                                      mov r3, r5
007d6f3c  08 c0 94 e5                                      ldr ip, [r4, #8]
007d6f40  30 00 94 e5                                      ldr r0, [r4, #0x30]
007d6f44  03 c0 6c e0                                      rsb ip, ip, r3
007d6f48  01 30 83 e2                                      add r3, r3, #1
007d6f4c  0e 00 53 e1                                      cmp r3, lr
007d6f50  b1 c0 80 e1                                      strh ip, [r0, r1]
007d6f54  02 10 81 e2                                      add r1, r1, #2
007d6f58  f7 ff ff 1a                                      bne #0x7d6f3c
007d6f5c  00 30 97 e5                                      ldr r3, [r7]
007d6f60  02 60 86 e0                                      add r6, r6, r2
007d6f64  08 20 93 e5                                      ldr r2, [r3, #8]
007d6f68  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007d6f6c  18 a0 a0 e3                                      mov sl, #0x18
007d6f70  9a 02 02 e0                                      mul r2, sl, r2
007d6f74  9a 05 20 e0                                      mla r0, sl, r5, r0
007d6f78  08 10 a0 e1                                      mov r1, r8
007d6f7c  39 de ec eb                                      bl #0x30e868
007d6f80  00 30 97 e5                                      ldr r3, [r7]
007d6f84  ba 22 d4 e1                                      ldrh r2, [r4, #0x2a]
007d6f88  08 30 93 e5                                      ldr r3, [r3, #8]
007d6f8c  04 00 52 e3                                      cmp r2, #4
007d6f90  03 50 85 e0                                      add r5, r5, r3
007d6f94  18 00 00 1a                                      bne #0x7d6ffc
007d6f98  01 30 43 e2                                      sub r3, r3, #1
007d6f9c  9a 03 03 e0                                      mul r3, sl, r3
007d6fa0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
007d6fa4  03 10 98 e7                                      ldr r1, [r8, r3]
007d6fa8  9a 05 0a e0                                      mul sl, sl, r5
007d6fac  03 80 88 e0                                      add r8, r8, r3
007d6fb0  0a 10 82 e7                                      str r1, [r2, sl]
007d6fb4  04 10 98 e5                                      ldr r1, [r8, #4]
007d6fb8  0a a0 82 e0                                      add sl, r2, sl
007d6fbc  85 30 a0 e1                                      lsl r3, r5, #1
007d6fc0  04 10 8a e5                                      str r1, [sl, #4]
007d6fc4  08 20 98 e5                                      ldr r2, [r8, #8]
007d6fc8  01 60 86 e2                                      add r6, r6, #1
007d6fcc  08 20 8a e5                                      str r2, [sl, #8]
007d6fd0  0c 20 98 e5                                      ldr r2, [r8, #0xc]
007d6fd4  0c 20 8a e5                                      str r2, [sl, #0xc]
007d6fd8  10 20 98 e5                                      ldr r2, [r8, #0x10]
007d6fdc  10 20 8a e5                                      str r2, [sl, #0x10]
007d6fe0  14 20 98 e5                                      ldr r2, [r8, #0x14]
007d6fe4  14 20 8a e5                                      str r2, [sl, #0x14]
007d6fe8  08 10 94 e5                                      ldr r1, [r4, #8]
007d6fec  30 20 94 e5                                      ldr r2, [r4, #0x30]
007d6ff0  05 10 61 e0                                      rsb r1, r1, r5
007d6ff4  b3 10 82 e1                                      strh r1, [r2, r3]
007d6ff8  01 50 85 e2                                      add r5, r5, #1
007d6ffc  08 20 94 e5                                      ldr r2, [r4, #8]
007d7000  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7004  00 10 a0 e3                                      mov r1, #0
007d7008  05 20 62 e0                                      rsb r2, r2, r5
007d700c  1c 60 84 e5                                      str r6, [r4, #0x1c]
007d7010  20 10 84 e5                                      str r1, [r4, #0x20]
007d7014  24 20 84 e5                                      str r2, [r4, #0x24]
007d7018  08 50 83 e5                                      str r5, [r3, #8]
007d701c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007d7020  ba 32 d4 e1                                      ldrh r3, [r4, #0x2a]
007d7024  03 00 52 e1                                      cmp r2, r3
007d7028  a9 ff ff 1a                                      bne #0x7d6ed4
007d702c  b1 ff ff ea                                      b #0x7d6ef8
007d7030  18 20 a0 e3                                      mov r2, #0x18
007d7034  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007d7038  00 c0 98 e5                                      ldr ip, [r8]
007d703c  92 05 02 e0                                      mul r2, r2, r5
007d7040  86 00 a0 e1                                      lsl r0, r6, #1
007d7044  02 c0 81 e7                                      str ip, [r1, r2]
007d7048  02 30 81 e0                                      add r3, r1, r2
007d704c  04 20 98 e5                                      ldr r2, [r8, #4]
007d7050  01 60 86 e2                                      add r6, r6, #1
007d7054  04 20 83 e5                                      str r2, [r3, #4]
007d7058  08 20 98 e5                                      ldr r2, [r8, #8]
007d705c  08 20 83 e5                                      str r2, [r3, #8]
007d7060  0c 20 98 e5                                      ldr r2, [r8, #0xc]
007d7064  0c 20 83 e5                                      str r2, [r3, #0xc]
007d7068  10 20 98 e5                                      ldr r2, [r8, #0x10]
007d706c  10 20 83 e5                                      str r2, [r3, #0x10]
007d7070  14 20 98 e5                                      ldr r2, [r8, #0x14]
007d7074  14 20 83 e5                                      str r2, [r3, #0x14]
007d7078  08 20 94 e5                                      ldr r2, [r4, #8]
007d707c  30 30 94 e5                                      ldr r3, [r4, #0x30]
007d7080  05 20 62 e0                                      rsb r2, r2, r5
007d7084  b0 20 83 e1                                      strh r2, [r3, r0]
007d7088  00 30 97 e5                                      ldr r3, [r7]
007d708c  01 50 85 e2                                      add r5, r5, #1
007d7090  a3 ff ff ea                                      b #0x7d6f24

; FUNCTION 0x007d7094, declared_size=296, range_size=296, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer21queueIndexedTrianglesERKN5boost13intrusive_ptrIN6glitch5video14CVertexStreamsEEEPKti
; demangled: BufferedRenderer::queueIndexedTriangles(boost::intrusive_ptr<glitch::video::CVertexStreams> const&, unsigned short const*, int)
; decoder-mode: arm
007d7094  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d7098  01 60 a0 e1                                      mov r6, r1
007d709c  10 c0 90 e5                                      ldr ip, [r0, #0x10]
007d70a0  00 10 91 e5                                      ldr r1, [r1]
007d70a4  00 40 a0 e1                                      mov r4, r0
007d70a8  08 50 9c e5                                      ldr r5, [ip, #8]
007d70ac  08 10 91 e5                                      ldr r1, [r1, #8]
007d70b0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
007d70b4  02 70 a0 e1                                      mov r7, r2
007d70b8  01 10 85 e0                                      add r1, r5, r1
007d70bc  00 00 51 e1                                      cmp r1, r0
007d70c0  03 a0 a0 e1                                      mov sl, r3
007d70c4  34 00 00 3a                                      blo #0x7d719c
007d70c8  04 00 a0 e1                                      mov r0, r4
007d70cc  f0 fd ff eb                                      bl #0x7d6894
007d70d0  06 30 a0 e3                                      mov r3, #6
007d70d4  ba 32 c4 e1                                      strh r3, [r4, #0x2a]
007d70d8  10 20 94 e5                                      ldr r2, [r4, #0x10]
007d70dc  00 30 96 e5                                      ldr r3, [r6]
007d70e0  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
007d70e4  08 50 92 e5                                      ldr r5, [r2, #8]
007d70e8  08 10 93 e5                                      ldr r1, [r3, #8]
007d70ec  08 90 8a e0                                      add sb, sl, r8
007d70f0  01 10 85 e0                                      add r1, r5, r1
007d70f4  09 00 51 e1                                      cmp r1, sb
007d70f8  09 10 a0 b1                                      movlt r1, sb
007d70fc  04 00 a0 e1                                      mov r0, r4
007d7100  5f f4 ff eb                                      bl #0x7d4284
007d7104  00 00 5a e3                                      cmp sl, #0
007d7108  08 c0 94 e5                                      ldr ip, [r4, #8]
007d710c  0d 00 00 da                                      ble #0x7d7148
007d7110  05 c0 6c e0                                      rsb ip, ip, r5
007d7114  7c c0 ff e6                                      uxth ip, ip
007d7118  8a a0 a0 e1                                      lsl sl, sl, #1
007d711c  88 80 a0 e1                                      lsl r8, r8, #1
007d7120  00 30 a0 e3                                      mov r3, #0
007d7124  b3 00 97 e1                                      ldrh r0, [r7, r3]
007d7128  30 10 94 e5                                      ldr r1, [r4, #0x30]
007d712c  03 20 88 e0                                      add r2, r8, r3
007d7130  02 30 83 e2                                      add r3, r3, #2
007d7134  00 00 8c e0                                      add r0, ip, r0
007d7138  0a 00 53 e1                                      cmp r3, sl
007d713c  b2 00 81 e1                                      strh r0, [r1, r2]
007d7140  f7 ff ff 1a                                      bne #0x7d7124
007d7144  09 80 a0 e1                                      mov r8, sb
007d7148  00 10 96 e5                                      ldr r1, [r6]
007d714c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007d7150  18 20 a0 e3                                      mov r2, #0x18
007d7154  14 30 91 e5                                      ldr r3, [r1, #0x14]
007d7158  08 10 91 e5                                      ldr r1, [r1, #8]
007d715c  92 05 20 e0                                      mla r0, r2, r5, r0
007d7160  92 01 02 e0                                      mul r2, r2, r1
007d7164  08 10 93 e5                                      ldr r1, [r3, #8]
007d7168  be dd ec eb                                      bl #0x30e868
007d716c  00 20 96 e5                                      ldr r2, [r6]
007d7170  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7174  08 20 92 e5                                      ldr r2, [r2, #8]
007d7178  02 50 85 e0                                      add r5, r5, r2
007d717c  08 50 83 e5                                      str r5, [r3, #8]
007d7180  08 30 94 e5                                      ldr r3, [r4, #8]
007d7184  00 20 a0 e3                                      mov r2, #0
007d7188  1c 80 84 e5                                      str r8, [r4, #0x1c]
007d718c  05 50 63 e0                                      rsb r5, r3, r5
007d7190  20 20 84 e5                                      str r2, [r4, #0x20]
007d7194  24 50 84 e5                                      str r5, [r4, #0x24]
007d7198  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007d719c  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
007d71a0  08 90 83 e0                                      add sb, r3, r8
007d71a4  09 00 50 e1                                      cmp r0, sb
007d71a8  c6 ff ff ba                                      blt #0x7d70c8
007d71ac  ba 32 d4 e1                                      ldrh r3, [r4, #0x2a]
007d71b0  06 00 53 e3                                      cmp r3, #6
007d71b4  c3 ff ff 1a                                      bne #0x7d70c8
007d71b8  cd ff ff ea                                      b #0x7d70f4

; FUNCTION 0x007d72b4, declared_size=284, range_size=284, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer5resetEv
; demangled: BufferedRenderer::reset()
; decoder-mode: arm
007d72b4  10 40 2d e9                                      push {r4, lr}
007d72b8  10 20 90 e5                                      ldr r2, [r0, #0x10]
007d72bc  01 10 a0 e3                                      mov r1, #1
007d72c0  00 30 a0 e3                                      mov r3, #0
007d72c4  00 40 a0 e1                                      mov r4, r0
007d72c8  08 30 82 e5                                      str r3, [r2, #8]
007d72cc  01 20 a0 e1                                      mov r2, r1
007d72d0  08 30 80 e5                                      str r3, [r0, #8]
007d72d4  1c 30 80 e5                                      str r3, [r0, #0x1c]
007d72d8  20 30 80 e5                                      str r3, [r0, #0x20]
007d72dc  24 30 80 e5                                      str r3, [r0, #0x24]
007d72e0  01 30 a0 e1                                      mov r3, r1
007d72e4  40 00 80 e2                                      add r0, r0, #0x40
007d72e8  11 f7 ff eb                                      bl #0x7d4f34
007d72ec  40 00 94 e5                                      ldr r0, [r4, #0x40]
007d72f0  8f ba f7 eb                                      bl #0x5c5d34
007d72f4  40 30 94 e5                                      ldr r3, [r4, #0x40]
007d72f8  0c 20 a0 e3                                      mov r2, #0xc
007d72fc  04 30 93 e5                                      ldr r3, [r3, #4]
007d7300  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d7304  92 30 23 e0                                      mla r3, r2, r0, r3
007d7308  08 30 93 e5                                      ldr r3, [r3, #8]
007d730c  04 20 93 e5                                      ldr r2, [r3, #4]
007d7310  01 08 12 e3                                      tst r2, #0x10000
007d7314  01 28 82 e3                                      orr r2, r2, #0x10000
007d7318  04 20 83 e5                                      str r2, [r3, #4]
007d731c  01 20 a0 03                                      moveq r2, #1
007d7320  30 20 c3 05                                      strbeq r2, [r3, #0x30]
007d7324  40 00 94 e5                                      ldr r0, [r4, #0x40]
007d7328  81 ba f7 eb                                      bl #0x5c5d34
007d732c  40 30 94 e5                                      ldr r3, [r4, #0x40]
007d7330  0c 20 a0 e3                                      mov r2, #0xc
007d7334  04 30 93 e5                                      ldr r3, [r3, #4]
007d7338  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d733c  92 30 23 e0                                      mla r3, r2, r0, r3
007d7340  08 30 93 e5                                      ldr r3, [r3, #8]
007d7344  04 20 93 e5                                      ldr r2, [r3, #4]
007d7348  02 07 12 e3                                      tst r2, #0x80000
007d734c  02 27 c2 e3                                      bic r2, r2, #0x80000
007d7350  04 20 83 e5                                      str r2, [r3, #4]
007d7354  01 20 a0 13                                      movne r2, #1
007d7358  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d735c  40 00 94 e5                                      ldr r0, [r4, #0x40]
007d7360  73 ba f7 eb                                      bl #0x5c5d34
007d7364  40 30 94 e5                                      ldr r3, [r4, #0x40]
007d7368  0c 20 a0 e3                                      mov r2, #0xc
007d736c  04 30 93 e5                                      ldr r3, [r3, #4]
007d7370  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d7374  92 30 23 e0                                      mla r3, r2, r0, r3
007d7378  08 30 93 e5                                      ldr r3, [r3, #8]
007d737c  04 20 93 e5                                      ldr r2, [r3, #4]
007d7380  03 0a 12 e3                                      tst r2, #0x3000
007d7384  03 2a c2 e3                                      bic r2, r2, #0x3000
007d7388  04 20 83 e5                                      str r2, [r3, #4]
007d738c  01 20 a0 13                                      movne r2, #1
007d7390  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d7394  40 00 94 e5                                      ldr r0, [r4, #0x40]
007d7398  65 ba f7 eb                                      bl #0x5c5d34
007d739c  40 30 94 e5                                      ldr r3, [r4, #0x40]
007d73a0  0c 20 a0 e3                                      mov r2, #0xc
007d73a4  04 30 93 e5                                      ldr r3, [r3, #4]
007d73a8  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d73ac  92 30 23 e0                                      mla r3, r2, r0, r3
007d73b0  08 30 93 e5                                      ldr r3, [r3, #8]
007d73b4  04 20 93 e5                                      ldr r2, [r3, #4]
007d73b8  03 09 12 e3                                      tst r2, #0xc000
007d73bc  03 29 c2 e3                                      bic r2, r2, #0xc000
007d73c0  04 20 83 e5                                      str r2, [r3, #4]
007d73c4  01 20 a0 13                                      movne r2, #1
007d73c8  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d73cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d7b8c, declared_size=140, range_size=140, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRendererD1Ev
; demangled: BufferedRenderer::~BufferedRenderer()
; decoder-mode: arm
007d7b8c  70 40 2d e9                                      push {r4, r5, r6, lr}
007d7b90  00 60 a0 e1                                      mov r6, r0
007d7b94  08 01 90 e5                                      ldr r0, [r0, #0x108]
007d7b98  00 00 50 e3                                      cmp r0, #0
007d7b9c  00 00 00 0a                                      beq #0x7d7ba4
007d7ba0  77 16 ed eb                                      bl #0x31d584
007d7ba4  3c 50 86 e2                                      add r5, r6, #0x3c
007d7ba8  42 4f 86 e2                                      add r4, r6, #0x108
007d7bac  0c 40 44 e2                                      sub r4, r4, #0xc
007d7bb0  04 00 84 e2                                      add r0, r4, #4
007d7bb4  0b e4 ec eb                                      bl #0x310be8
007d7bb8  04 00 a0 e1                                      mov r0, r4
007d7bbc  bd e9 ed eb                                      bl #0x3522b8
007d7bc0  05 00 54 e1                                      cmp r4, r5
007d7bc4  f8 ff ff 1a                                      bne #0x7d7bac
007d7bc8  14 00 96 e5                                      ldr r0, [r6, #0x14]
007d7bcc  00 00 50 e3                                      cmp r0, #0
007d7bd0  00 00 00 0a                                      beq #0x7d7bd8
007d7bd4  6a 16 ed eb                                      bl #0x31d584
007d7bd8  10 40 96 e5                                      ldr r4, [r6, #0x10]
007d7bdc  00 00 54 e3                                      cmp r4, #0
007d7be0  04 00 00 0a                                      beq #0x7d7bf8
007d7be4  00 30 94 e5                                      ldr r3, [r4]
007d7be8  01 30 43 e2                                      sub r3, r3, #1
007d7bec  00 00 53 e3                                      cmp r3, #0
007d7bf0  00 30 84 e5                                      str r3, [r4]
007d7bf4  01 00 00 0a                                      beq #0x7d7c00
007d7bf8  06 00 a0 e1                                      mov r0, r6
007d7bfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d7c00  04 00 a0 e1                                      mov r0, r4
007d7c04  84 23 f7 eb                                      bl #0x5a0a1c
007d7c08  04 00 a0 e1                                      mov r0, r4
007d7c0c  a7 d9 ec eb                                      bl #0x30e2b0
007d7c10  06 00 a0 e1                                      mov r0, r6
007d7c14  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d7f28, declared_size=700, range_size=700, mode=arm
; class-group: BufferedRenderer
; alias: _ZN16BufferedRenderer14applyMaskStateEi
; demangled: BufferedRenderer::applyMaskState(int)
; decoder-mode: arm
007d7f28  30 40 2d e9                                      push {r4, r5, lr}
007d7f2c  0c 31 90 e5                                      ldr r3, [r0, #0x10c]
007d7f30  0c 50 a0 e3                                      mov r5, #0xc
007d7f34  0c d0 4d e2                                      sub sp, sp, #0xc
007d7f38  95 03 03 e0                                      mul r3, r5, r3
007d7f3c  03 20 80 e0                                      add r2, r0, r3
007d7f40  40 20 92 e5                                      ldr r2, [r2, #0x40]
007d7f44  00 00 52 e3                                      cmp r2, #0
007d7f48  03 50 80 10                                      addne r5, r0, r3
007d7f4c  3c 50 80 02                                      addeq r5, r0, #0x3c
007d7f50  3c 50 85 12                                      addne r5, r5, #0x3c
007d7f54  00 00 51 e3                                      cmp r1, #0
007d7f58  04 40 85 e2                                      add r4, r5, #4
007d7f5c  05 00 00 0a                                      beq #0x7d7f78
007d7f60  01 00 51 e3                                      cmp r1, #1
007d7f64  61 00 00 0a                                      beq #0x7d80f0
007d7f68  02 00 51 e3                                      cmp r1, #2
007d7f6c  25 00 00 0a                                      beq #0x7d8008
007d7f70  0c d0 8d e2                                      add sp, sp, #0xc
007d7f74  30 80 bd e8                                      pop {r4, r5, pc}
007d7f78  04 00 95 e5                                      ldr r0, [r5, #4]
007d7f7c  6c b7 f7 eb                                      bl #0x5c5d34
007d7f80  04 30 95 e5                                      ldr r3, [r5, #4]
007d7f84  0c 20 a0 e3                                      mov r2, #0xc
007d7f88  04 30 93 e5                                      ldr r3, [r3, #4]
007d7f8c  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d7f90  92 30 23 e0                                      mla r3, r2, r0, r3
007d7f94  08 30 93 e5                                      ldr r3, [r3, #8]
007d7f98  04 20 93 e5                                      ldr r2, [r3, #4]
007d7f9c  02 07 12 e3                                      tst r2, #0x80000
007d7fa0  02 27 c2 e3                                      bic r2, r2, #0x80000
007d7fa4  04 20 83 e5                                      str r2, [r3, #4]
007d7fa8  01 20 a0 13                                      movne r2, #1
007d7fac  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d7fb0  04 00 95 e5                                      ldr r0, [r5, #4]
007d7fb4  5e b7 f7 eb                                      bl #0x5c5d34
007d7fb8  04 30 95 e5                                      ldr r3, [r5, #4]
007d7fbc  0c 20 a0 e3                                      mov r2, #0xc
007d7fc0  04 30 93 e5                                      ldr r3, [r3, #4]
007d7fc4  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d7fc8  92 30 23 e0                                      mla r3, r2, r0, r3
007d7fcc  08 30 93 e5                                      ldr r3, [r3, #8]
007d7fd0  04 20 93 e5                                      ldr r2, [r3, #4]
007d7fd4  01 06 12 e3                                      tst r2, #0x100000
007d7fd8  01 26 c2 e3                                      bic r2, r2, #0x100000
007d7fdc  04 20 83 e5                                      str r2, [r3, #4]
007d7fe0  01 00 00 0a                                      beq #0x7d7fec
007d7fe4  01 20 a0 e3                                      mov r2, #1
007d7fe8  30 20 c3 e5                                      strb r2, [r3, #0x30]
007d7fec  01 10 a0 e3                                      mov r1, #1
007d7ff0  04 00 a0 e1                                      mov r0, r4
007d7ff4  01 20 a0 e1                                      mov r2, r1
007d7ff8  01 30 a0 e1                                      mov r3, r1
007d7ffc  0c d0 8d e2                                      add sp, sp, #0xc
007d8000  30 40 bd e8                                      pop {r4, r5, lr}
007d8004  ca f3 ff ea                                      b #0x7d4f34
007d8008  04 00 95 e5                                      ldr r0, [r5, #4]
007d800c  48 b7 f7 eb                                      bl #0x5c5d34
007d8010  04 30 95 e5                                      ldr r3, [r5, #4]
007d8014  0c 20 a0 e3                                      mov r2, #0xc
007d8018  04 30 93 e5                                      ldr r3, [r3, #4]
007d801c  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8020  92 30 23 e0                                      mla r3, r2, r0, r3
007d8024  08 30 93 e5                                      ldr r3, [r3, #8]
007d8028  04 20 93 e5                                      ldr r2, [r3, #4]
007d802c  02 07 12 e3                                      tst r2, #0x80000
007d8030  02 27 82 e3                                      orr r2, r2, #0x80000
007d8034  04 20 83 e5                                      str r2, [r3, #4]
007d8038  01 20 a0 03                                      moveq r2, #1
007d803c  30 20 c3 05                                      strbeq r2, [r3, #0x30]
007d8040  04 00 95 e5                                      ldr r0, [r5, #4]
007d8044  3a b7 f7 eb                                      bl #0x5c5d34
007d8048  04 30 95 e5                                      ldr r3, [r5, #4]
007d804c  0c 20 a0 e3                                      mov r2, #0xc
007d8050  04 30 93 e5                                      ldr r3, [r3, #4]
007d8054  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8058  92 30 23 e0                                      mla r3, r2, r0, r3
007d805c  08 30 93 e5                                      ldr r3, [r3, #8]
007d8060  00 20 93 e5                                      ldr r2, [r3]
007d8064  d2 1d e2 e7                                      ubfx r1, r2, #0x1b, #3
007d8068  0e 23 c2 e3                                      bic r2, r2, #0x38000000
007d806c  02 00 51 e3                                      cmp r1, #2
007d8070  01 22 82 e3                                      orr r2, r2, #0x10000000
007d8074  00 20 83 e5                                      str r2, [r3]
007d8078  01 20 a0 13                                      movne r2, #1
007d807c  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d8080  04 00 95 e5                                      ldr r0, [r5, #4]
007d8084  2a b7 f7 eb                                      bl #0x5c5d34
007d8088  04 30 95 e5                                      ldr r3, [r5, #4]
007d808c  0c 20 a0 e3                                      mov r2, #0xc
007d8090  04 30 93 e5                                      ldr r3, [r3, #4]
007d8094  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8098  92 30 23 e0                                      mla r3, r2, r0, r3
007d809c  08 30 93 e5                                      ldr r3, [r3, #8]
007d80a0  04 20 93 e5                                      ldr r2, [r3, #4]
007d80a4  01 06 12 e3                                      tst r2, #0x100000
007d80a8  01 26 c2 e3                                      bic r2, r2, #0x100000
007d80ac  04 20 83 e5                                      str r2, [r3, #4]
007d80b0  01 20 a0 13                                      movne r2, #1
007d80b4  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d80b8  04 00 95 e5                                      ldr r0, [r5, #4]
007d80bc  1c b7 f7 eb                                      bl #0x5c5d34
007d80c0  04 30 95 e5                                      ldr r3, [r5, #4]
007d80c4  0c 20 a0 e3                                      mov r2, #0xc
007d80c8  04 30 93 e5                                      ldr r3, [r3, #4]
007d80cc  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d80d0  92 30 23 e0                                      mla r3, r2, r0, r3
007d80d4  08 30 93 e5                                      ldr r3, [r3, #8]
007d80d8  04 20 93 e5                                      ldr r2, [r3, #4]
007d80dc  01 08 12 e3                                      tst r2, #0x10000
007d80e0  01 28 82 e3                                      orr r2, r2, #0x10000
007d80e4  04 20 83 e5                                      str r2, [r3, #4]
007d80e8  bd ff ff 0a                                      beq #0x7d7fe4
007d80ec  be ff ff ea                                      b #0x7d7fec
007d80f0  04 00 95 e5                                      ldr r0, [r5, #4]
007d80f4  04 10 8d e5                                      str r1, [sp, #4]
007d80f8  0d b7 f7 eb                                      bl #0x5c5d34
007d80fc  04 30 95 e5                                      ldr r3, [r5, #4]
007d8100  0c 20 a0 e3                                      mov r2, #0xc
007d8104  04 30 93 e5                                      ldr r3, [r3, #4]
007d8108  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d810c  92 30 23 e0                                      mla r3, r2, r0, r3
007d8110  08 30 93 e5                                      ldr r3, [r3, #8]
007d8114  04 20 93 e5                                      ldr r2, [r3, #4]
007d8118  02 07 12 e3                                      tst r2, #0x80000
007d811c  02 27 82 e3                                      orr r2, r2, #0x80000
007d8120  04 20 83 e5                                      str r2, [r3, #4]
007d8124  04 10 9d e5                                      ldr r1, [sp, #4]
007d8128  30 10 c3 05                                      strbeq r1, [r3, #0x30]
007d812c  04 00 95 e5                                      ldr r0, [r5, #4]
007d8130  ff b6 f7 eb                                      bl #0x5c5d34
007d8134  04 30 95 e5                                      ldr r3, [r5, #4]
007d8138  0c 20 a0 e3                                      mov r2, #0xc
007d813c  04 30 93 e5                                      ldr r3, [r3, #4]
007d8140  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8144  92 30 23 e0                                      mla r3, r2, r0, r3
007d8148  08 30 93 e5                                      ldr r3, [r3, #8]
007d814c  00 20 93 e5                                      ldr r2, [r3]
007d8150  d2 1d e2 e7                                      ubfx r1, r2, #0x1b, #3
007d8154  0e 23 c2 e3                                      bic r2, r2, #0x38000000
007d8158  03 00 51 e3                                      cmp r1, #3
007d815c  06 23 82 e3                                      orr r2, r2, #0x18000000
007d8160  00 20 83 e5                                      str r2, [r3]
007d8164  01 20 a0 13                                      movne r2, #1
007d8168  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d816c  04 00 95 e5                                      ldr r0, [r5, #4]
007d8170  ef b6 f7 eb                                      bl #0x5c5d34
007d8174  04 30 95 e5                                      ldr r3, [r5, #4]
007d8178  0c 20 a0 e3                                      mov r2, #0xc
007d817c  04 30 93 e5                                      ldr r3, [r3, #4]
007d8180  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8184  92 30 23 e0                                      mla r3, r2, r0, r3
007d8188  08 30 93 e5                                      ldr r3, [r3, #8]
007d818c  04 20 93 e5                                      ldr r2, [r3, #4]
007d8190  01 06 12 e3                                      tst r2, #0x100000
007d8194  01 26 82 e3                                      orr r2, r2, #0x100000
007d8198  04 20 83 e5                                      str r2, [r3, #4]
007d819c  01 20 a0 03                                      moveq r2, #1
007d81a0  30 20 c3 05                                      strbeq r2, [r3, #0x30]
007d81a4  04 00 95 e5                                      ldr r0, [r5, #4]
007d81a8  e1 b6 f7 eb                                      bl #0x5c5d34
007d81ac  04 30 95 e5                                      ldr r3, [r5, #4]
007d81b0  0c 20 a0 e3                                      mov r2, #0xc
007d81b4  00 10 a0 e3                                      mov r1, #0
007d81b8  04 30 93 e5                                      ldr r3, [r3, #4]
007d81bc  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d81c0  92 30 23 e0                                      mla r3, r2, r0, r3
007d81c4  08 30 93 e5                                      ldr r3, [r3, #8]
007d81c8  04 20 93 e5                                      ldr r2, [r3, #4]
007d81cc  01 08 12 e3                                      tst r2, #0x10000
007d81d0  01 28 c2 e3                                      bic r2, r2, #0x10000
007d81d4  04 20 83 e5                                      str r2, [r3, #4]
007d81d8  01 20 a0 13                                      movne r2, #1
007d81dc  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d81e0  82 ff ff ea                                      b #0x7d7ff0
