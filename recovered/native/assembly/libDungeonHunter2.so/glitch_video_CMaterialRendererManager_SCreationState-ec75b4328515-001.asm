; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7c5c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::video::CMaterialRendererManager::SCreationState
; alias: _ZN6glitch5video24CMaterialRendererManager14SCreationStateC1EPc
; demangled: glitch::video::CMaterialRendererManager::SCreationState::SCreationState(char*)
; decoder-mode: arm
005d7c5c  00 20 a0 e3                                      mov r2, #0
005d7c60  f0 00 2d e9                                      push {r4, r5, r6, r7}
005d7c64  00 c0 a0 e1                                      mov ip, r0
005d7c68  28 40 80 e2                                      add r4, r0, #0x28
005d7c6c  08 70 80 e2                                      add r7, r0, #8
005d7c70  10 60 80 e2                                      add r6, r0, #0x10
005d7c74  1c 50 80 e2                                      add r5, r0, #0x1c
005d7c78  00 10 80 e5                                      str r1, [r0]
005d7c7c  0c 70 80 e5                                      str r7, [r0, #0xc]
005d7c80  14 60 80 e5                                      str r6, [r0, #0x14]
005d7c84  20 50 80 e5                                      str r5, [r0, #0x20]
005d7c88  84 00 80 e9                                      stmib r0, {r2, r7}
005d7c8c  10 60 80 e5                                      str r6, [r0, #0x10]
005d7c90  18 20 80 e5                                      str r2, [r0, #0x18]
005d7c94  1c 50 80 e5                                      str r5, [r0, #0x1c]
005d7c98  24 20 c0 e5                                      strb r2, [r0, #0x24]
005d7c9c  25 20 c0 e5                                      strb r2, [r0, #0x25]
005d7ca0  28 40 80 e5                                      str r4, [r0, #0x28]
005d7ca4  2c 40 80 e5                                      str r4, [r0, #0x2c]
005d7ca8  38 20 80 e5                                      str r2, [r0, #0x38]
005d7cac  34 20 ec e5                                      strb r2, [ip, #0x34]!
005d7cb0  40 c0 80 e5                                      str ip, [r0, #0x40]
005d7cb4  30 40 80 e5                                      str r4, [r0, #0x30]
005d7cb8  54 20 80 e5                                      str r2, [r0, #0x54]
005d7cbc  3c c0 80 e5                                      str ip, [r0, #0x3c]
005d7cc0  44 20 80 e5                                      str r2, [r0, #0x44]
005d7cc4  4c 20 80 e5                                      str r2, [r0, #0x4c]
005d7cc8  50 20 80 e5                                      str r2, [r0, #0x50]
005d7ccc  f0 00 bd e8                                      pop {r4, r5, r6, r7}
005d7cd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d93e8, declared_size=592, range_size=592, mode=arm
; class-group: glitch::video::CMaterialRendererManager::SCreationState
; alias: _ZN6glitch5video24CMaterialRendererManager14SCreationState13addRenderPassERKN5boost13intrusive_ptrIKNS0_7IShaderEEERKNS0_6detail10renderpass12SRenderStateERKNSA_8material12SRenderStateE
; demangled: glitch::video::CMaterialRendererManager::SCreationState::addRenderPass(boost::intrusive_ptr<glitch::video::IShader const> const&, glitch::video::detail::renderpass::SRenderState const&, glitch::video::detail::material::SRenderState const&)
; decoder-mode: arm
005d93e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005d93ec  00 30 91 e5                                      ldr r3, [r1]
005d93f0  01 60 a0 e1                                      mov r6, r1
005d93f4  02 a0 a0 e1                                      mov sl, r2
005d93f8  b6 73 d3 e1                                      ldrh r7, [r3, #0x36]
005d93fc  be 12 d3 e1                                      ldrh r1, [r3, #0x2e]
005d9400  b4 23 d3 e1                                      ldrh r2, [r3, #0x34]
005d9404  bc 32 d3 e1                                      ldrh r3, [r3, #0x2c]
005d9408  01 70 87 e0                                      add r7, r7, r1
005d940c  77 70 ff e6                                      uxth r7, r7
005d9410  07 70 62 e0                                      rsb r7, r2, r7
005d9414  07 70 63 e0                                      rsb r7, r3, r7
005d9418  77 70 ff e6                                      uxth r7, r7
005d941c  00 00 57 e3                                      cmp r7, #0
005d9420  8c d0 4d e2                                      sub sp, sp, #0x8c
005d9424  00 40 a0 e1                                      mov r4, r0
005d9428  07 50 a0 01                                      moveq r5, r7
005d942c  07 80 a0 01                                      moveq r8, r7
005d9430  55 00 00 1a                                      bne #0x5d958c
005d9434  05 20 a0 e1                                      mov r2, r5
005d9438  08 00 a0 e1                                      mov r0, r8
005d943c  00 10 a0 e3                                      mov r1, #0
005d9440  06 d4 f4 eb                                      bl #0x30e460
005d9444  54 30 94 e5                                      ldr r3, [r4, #0x54]
005d9448  04 50 a0 e1                                      mov r5, r4
005d944c  07 70 83 e0                                      add r7, r3, r7
005d9450  54 70 84 e5                                      str r7, [r4, #0x54]
005d9454  10 c0 b5 e5                                      ldr ip, [r5, #0x10]!
005d9458  05 00 5c e1                                      cmp ip, r5
005d945c  4f 00 00 0a                                      beq #0x5d95a0
005d9460  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
005d9464  00 00 53 e3                                      cmp r3, #0
005d9468  1d 00 00 1a                                      bne #0x5d94e4
005d946c  18 c0 84 e5                                      str ip, [r4, #0x18]
005d9470  28 00 9c e5                                      ldr r0, [ip, #0x28]
005d9474  00 00 50 e3                                      cmp r0, #0
005d9478  01 00 00 0a                                      beq #0x5d9484
005d947c  40 10 f5 eb                                      bl #0x31d584
005d9480  18 c0 94 e5                                      ldr ip, [r4, #0x18]
005d9484  08 70 8c e2                                      add r7, ip, #8
005d9488  0a 50 a0 e1                                      mov r5, sl
005d948c  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
005d9490  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
005d9494  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005d9498  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
005d949c  00 30 96 e5                                      ldr r3, [r6]
005d94a0  00 00 53 e3                                      cmp r3, #0
005d94a4  28 30 8c e5                                      str r3, [ip, #0x28]
005d94a8  04 20 93 15                                      ldrne r2, [r3, #4]
005d94ac  01 20 82 12                                      addne r2, r2, #1
005d94b0  04 20 83 15                                      strne r2, [r3, #4]
005d94b4  00 30 a0 e3                                      mov r3, #0
005d94b8  01 20 a0 e3                                      mov r2, #1
005d94bc  38 20 cc e5                                      strb r2, [ip, #0x38]
005d94c0  2c 80 8c e5                                      str r8, [ip, #0x2c]
005d94c4  b6 33 cc e1                                      strh r3, [ip, #0x36]
005d94c8  30 30 8c e5                                      str r3, [ip, #0x30]
005d94cc  b4 33 cc e1                                      strh r3, [ip, #0x34]
005d94d0  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
005d94d4  01 30 83 e2                                      add r3, r3, #1
005d94d8  24 30 c4 e5                                      strb r3, [r4, #0x24]
005d94dc  8c d0 8d e2                                      add sp, sp, #0x8c
005d94e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005d94e4  18 30 94 e5                                      ldr r3, [r4, #0x18]
005d94e8  14 20 94 e5                                      ldr r2, [r4, #0x14]
005d94ec  02 00 53 e1                                      cmp r3, r2
005d94f0  00 c0 93 15                                      ldrne ip, [r3]
005d94f4  dc ff ff 1a                                      bne #0x5d946c
005d94f8  84 00 8d e2                                      add r0, sp, #0x84
005d94fc  b1 ff ff eb                                      bl #0x5d93c8
005d9500  0f 00 ba e8                                      ldm sl!, {r0, r1, r2, r3}
005d9504  14 c0 8d e2                                      add ip, sp, #0x14
005d9508  0c e0 a0 e1                                      mov lr, ip
005d950c  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
005d9510  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
005d9514  00 60 96 e5                                      ldr r6, [r6]
005d9518  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
005d951c  00 00 56 e3                                      cmp r6, #0
005d9520  34 60 8d e5                                      str r6, [sp, #0x34]
005d9524  04 30 96 15                                      ldrne r3, [r6, #4]
005d9528  08 00 8d e2                                      add r0, sp, #8
005d952c  01 e0 a0 e3                                      mov lr, #1
005d9530  01 30 83 12                                      addne r3, r3, #1
005d9534  04 30 86 15                                      strne r3, [r6, #4]
005d9538  05 10 a0 e1                                      mov r1, r5
005d953c  0c 30 a0 e1                                      mov r3, ip
005d9540  7c 20 8d e2                                      add r2, sp, #0x7c
005d9544  00 c0 a0 e3                                      mov ip, #0
005d9548  38 80 8d e5                                      str r8, [sp, #0x38]
005d954c  b2 c4 cd e1                                      strh ip, [sp, #0x42]
005d9550  44 e0 cd e5                                      strb lr, [sp, #0x44]
005d9554  3c c0 8d e5                                      str ip, [sp, #0x3c]
005d9558  b0 c4 cd e1                                      strh ip, [sp, #0x40]
005d955c  7c 50 8d e5                                      str r5, [sp, #0x7c]
005d9560  31 fd ff eb                                      bl #0x5d8a2c
005d9564  34 00 9d e5                                      ldr r0, [sp, #0x34]
005d9568  00 00 50 e3                                      cmp r0, #0
005d956c  00 00 00 0a                                      beq #0x5d9574
005d9570  03 10 f5 eb                                      bl #0x31d584
005d9574  18 30 94 e5                                      ldr r3, [r4, #0x18]
005d9578  84 00 dd e5                                      ldrb r0, [sp, #0x84]
005d957c  00 30 93 e5                                      ldr r3, [r3]
005d9580  18 30 84 e5                                      str r3, [r4, #0x18]
005d9584  37 6b fd eb                                      bl #0x534268
005d9588  d0 ff ff ea                                      b #0x5d94d0
005d958c  87 51 a0 e1                                      lsl r5, r7, #3
005d9590  05 00 a0 e1                                      mov r0, r5
005d9594  16 6c fd eb                                      bl #0x5345f4
005d9598  00 80 a0 e1                                      mov r8, r0
005d959c  a4 ff ff ea                                      b #0x5d9434
005d95a0  84 00 8d e2                                      add r0, sp, #0x84
005d95a4  04 c0 8d e5                                      str ip, [sp, #4]
005d95a8  86 ff ff eb                                      bl #0x5d93c8
005d95ac  0f 00 ba e8                                      ldm sl!, {r0, r1, r2, r3}
005d95b0  48 e0 8d e2                                      add lr, sp, #0x48
005d95b4  0e 50 a0 e1                                      mov r5, lr
005d95b8  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
005d95bc  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
005d95c0  00 60 96 e5                                      ldr r6, [r6]
005d95c4  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
005d95c8  00 00 56 e3                                      cmp r6, #0
005d95cc  68 60 8d e5                                      str r6, [sp, #0x68]
005d95d0  04 30 96 15                                      ldrne r3, [r6, #4]
005d95d4  04 c0 9d e5                                      ldr ip, [sp, #4]
005d95d8  08 00 8d e2                                      add r0, sp, #8
005d95dc  01 30 83 12                                      addne r3, r3, #1
005d95e0  04 30 86 15                                      strne r3, [r6, #4]
005d95e4  0c 10 a0 e1                                      mov r1, ip
005d95e8  0e 30 a0 e1                                      mov r3, lr
005d95ec  80 20 8d e2                                      add r2, sp, #0x80
005d95f0  00 e0 a0 e3                                      mov lr, #0
005d95f4  01 50 a0 e3                                      mov r5, #1
005d95f8  6c 80 8d e5                                      str r8, [sp, #0x6c]
005d95fc  b6 e7 cd e1                                      strh lr, [sp, #0x76]
005d9600  78 50 cd e5                                      strb r5, [sp, #0x78]
005d9604  70 e0 8d e5                                      str lr, [sp, #0x70]
005d9608  b4 e7 cd e1                                      strh lr, [sp, #0x74]
005d960c  80 c0 8d e5                                      str ip, [sp, #0x80]
005d9610  05 fd ff eb                                      bl #0x5d8a2c
005d9614  68 00 9d e5                                      ldr r0, [sp, #0x68]
005d9618  00 00 50 e3                                      cmp r0, #0
005d961c  00 00 00 0a                                      beq #0x5d9624
005d9620  d7 0f f5 eb                                      bl #0x31d584
005d9624  10 30 94 e5                                      ldr r3, [r4, #0x10]
005d9628  84 00 dd e5                                      ldrb r0, [sp, #0x84]
005d962c  18 30 84 e5                                      str r3, [r4, #0x18]
005d9630  0c 6b fd eb                                      bl #0x534268
005d9634  a5 ff ff ea                                      b #0x5d94d0

; FUNCTION 0x005d9788, declared_size=212, range_size=212, mode=arm
; class-group: glitch::video::CMaterialRendererManager::SCreationState
; alias: _ZN6glitch5video24CMaterialRendererManager14SCreationState11addPinkBindENS1_12STemporaryIDEt
; demangled: glitch::video::CMaterialRendererManager::SCreationState::addPinkBind(glitch::video::CMaterialRendererManager::STemporaryID, unsigned short)
; decoder-mode: arm
005d9788  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005d978c  00 50 a0 e1                                      mov r5, r0
005d9790  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
005d9794  28 60 b5 e5                                      ldr r6, [r5, #0x28]!
005d9798  0c d0 4d e2                                      sub sp, sp, #0xc
005d979c  01 30 43 e2                                      sub r3, r3, #1
005d97a0  05 00 56 e1                                      cmp r6, r5
005d97a4  00 40 a0 e1                                      mov r4, r0
005d97a8  73 70 ef e6                                      uxtb r7, r3
005d97ac  0a 00 00 0a                                      beq #0x5d97dc
005d97b0  30 30 90 e5                                      ldr r3, [r0, #0x30]
005d97b4  03 00 55 e1                                      cmp r5, r3
005d97b8  17 00 00 0a                                      beq #0x5d981c
005d97bc  08 10 83 e5                                      str r1, [r3, #8]
005d97c0  be 20 c3 e1                                      strh r2, [r3, #0xe]
005d97c4  0c 70 c3 e5                                      strb r7, [r3, #0xc]
005d97c8  30 30 90 e5                                      ldr r3, [r0, #0x30]
005d97cc  00 30 93 e5                                      ldr r3, [r3]
005d97d0  30 30 80 e5                                      str r3, [r0, #0x30]
005d97d4  0c d0 8d e2                                      add sp, sp, #0xc
005d97d8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005d97dc  06 00 a0 e1                                      mov r0, r6
005d97e0  04 10 8d e5                                      str r1, [sp, #4]
005d97e4  00 20 8d e5                                      str r2, [sp]
005d97e8  de ff ff eb                                      bl #0x5d9768
005d97ec  00 20 9d e5                                      ldr r2, [sp]
005d97f0  0c 70 c0 e5                                      strb r7, [r0, #0xc]
005d97f4  be 20 c0 e1                                      strh r2, [r0, #0xe]
005d97f8  04 10 9d e5                                      ldr r1, [sp, #4]
005d97fc  08 10 80 e5                                      str r1, [r0, #8]
005d9800  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005d9804  00 60 80 e5                                      str r6, [r0]
005d9808  04 30 80 e5                                      str r3, [r0, #4]
005d980c  00 00 83 e5                                      str r0, [r3]
005d9810  30 60 84 e5                                      str r6, [r4, #0x30]
005d9814  2c 00 84 e5                                      str r0, [r4, #0x2c]
005d9818  ed ff ff ea                                      b #0x5d97d4
005d981c  05 00 a0 e1                                      mov r0, r5
005d9820  04 10 8d e5                                      str r1, [sp, #4]
005d9824  00 20 8d e5                                      str r2, [sp]
005d9828  ce ff ff eb                                      bl #0x5d9768
005d982c  00 20 9d e5                                      ldr r2, [sp]
005d9830  0c 70 c0 e5                                      strb r7, [r0, #0xc]
005d9834  be 20 c0 e1                                      strh r2, [r0, #0xe]
005d9838  04 10 9d e5                                      ldr r1, [sp, #4]
005d983c  08 10 80 e5                                      str r1, [r0, #8]
005d9840  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005d9844  00 50 80 e5                                      str r5, [r0]
005d9848  04 30 80 e5                                      str r3, [r0, #4]
005d984c  00 00 83 e5                                      str r0, [r3]
005d9850  30 50 84 e5                                      str r5, [r4, #0x30]
005d9854  2c 00 84 e5                                      str r0, [r4, #0x2c]
005d9858  dd ff ff ea                                      b #0x5d97d4

; FUNCTION 0x005dafe8, declared_size=372, range_size=372, mode=arm
; class-group: glitch::video::CMaterialRendererManager::SCreationState
; alias: _ZN6glitch5video24CMaterialRendererManager14SCreationStateD1Ev
; demangled: glitch::video::CMaterialRendererManager::SCreationState::~SCreationState()
; decoder-mode: arm
005dafe8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005dafec  00 60 a0 e1                                      mov r6, r0
005daff0  08 50 b6 e5                                      ldr r5, [r6, #8]!
005daff4  00 70 a0 e1                                      mov r7, r0
005daff8  34 a0 a0 e3                                      mov sl, #0x34
005daffc  05 00 56 e1                                      cmp r6, r5
005db000  12 00 00 0a                                      beq #0x5db050
005db004  0c 80 d5 e5                                      ldrb r8, [r5, #0xc]
005db008  00 00 58 e3                                      cmp r8, #0
005db00c  0c 00 00 0a                                      beq #0x5db044
005db010  01 80 48 e2                                      sub r8, r8, #1
005db014  78 80 ef e6                                      uxtb r8, r8
005db018  98 aa 28 e0                                      mla r8, r8, sl, sl
005db01c  00 40 a0 e3                                      mov r4, #0
005db020  10 30 95 e5                                      ldr r3, [r5, #0x10]
005db024  04 30 83 e0                                      add r3, r3, r4
005db028  20 00 93 e5                                      ldr r0, [r3, #0x20]
005db02c  34 40 84 e2                                      add r4, r4, #0x34
005db030  00 00 50 e3                                      cmp r0, #0
005db034  00 00 00 0a                                      beq #0x5db03c
005db038  51 09 f5 eb                                      bl #0x31d584
005db03c  08 00 54 e1                                      cmp r4, r8
005db040  f6 ff ff 1a                                      bne #0x5db020
005db044  00 50 95 e5                                      ldr r5, [r5]
005db048  05 00 56 e1                                      cmp r6, r5
005db04c  ec ff ff 1a                                      bne #0x5db004
005db050  00 00 97 e5                                      ldr r0, [r7]
005db054  00 80 a0 e3                                      mov r8, #0
005db058  8a 65 fd eb                                      bl #0x534688
005db05c  07 50 a0 e1                                      mov r5, r7
005db060  00 80 87 e5                                      str r8, [r7]
005db064  1c 40 b5 e5                                      ldr r4, [r5, #0x1c]!
005db068  03 00 00 ea                                      b #0x5db07c
005db06c  08 00 94 e5                                      ldr r0, [r4, #8]
005db070  84 65 fd eb                                      bl #0x534688
005db074  08 80 84 e5                                      str r8, [r4, #8]
005db078  00 40 94 e5                                      ldr r4, [r4]
005db07c  04 00 55 e1                                      cmp r5, r4
005db080  f9 ff ff 1a                                      bne #0x5db06c
005db084  44 30 97 e5                                      ldr r3, [r7, #0x44]
005db088  00 00 53 e3                                      cmp r3, #0
005db08c  28 00 00 1a                                      bne #0x5db134
005db090  28 00 97 e5                                      ldr r0, [r7, #0x28]
005db094  28 80 87 e2                                      add r8, r7, #0x28
005db098  08 00 50 e1                                      cmp r0, r8
005db09c  01 00 00 1a                                      bne #0x5db0a8
005db0a0  06 00 00 ea                                      b #0x5db0c0
005db0a4  04 00 a0 e1                                      mov r0, r4
005db0a8  00 40 90 e5                                      ldr r4, [r0]
005db0ac  10 10 a0 e3                                      mov r1, #0x10
005db0b0  92 b7 04 eb                                      bl #0x708f00
005db0b4  08 00 54 e1                                      cmp r4, r8
005db0b8  f9 ff ff 1a                                      bne #0x5db0a4
005db0bc  08 00 a0 e1                                      mov r0, r8
005db0c0  28 00 87 e5                                      str r0, [r7, #0x28]
005db0c4  04 00 88 e5                                      str r0, [r8, #4]
005db0c8  1c 00 97 e5                                      ldr r0, [r7, #0x1c]
005db0cc  05 00 50 e1                                      cmp r0, r5
005db0d0  01 00 00 1a                                      bne #0x5db0dc
005db0d4  05 00 00 ea                                      b #0x5db0f0
005db0d8  04 00 a0 e1                                      mov r0, r4
005db0dc  00 40 90 e5                                      ldr r4, [r0]
005db0e0  68 65 fd eb                                      bl #0x534688
005db0e4  05 00 54 e1                                      cmp r4, r5
005db0e8  fa ff ff 1a                                      bne #0x5db0d8
005db0ec  05 00 a0 e1                                      mov r0, r5
005db0f0  1c 00 87 e5                                      str r0, [r7, #0x1c]
005db0f4  04 00 85 e5                                      str r0, [r5, #4]
005db0f8  10 00 87 e2                                      add r0, r7, #0x10
005db0fc  d1 f3 ff eb                                      bl #0x5d8048
005db100  06 00 a0 e1                                      mov r0, r6
005db104  a4 fe ff eb                                      bl #0x5dab9c
005db108  04 00 97 e5                                      ldr r0, [r7, #4]
005db10c  00 00 50 e3                                      cmp r0, #0
005db110  05 00 00 0a                                      beq #0x5db12c
005db114  00 30 90 e5                                      ldr r3, [r0]
005db118  01 30 43 e2                                      sub r3, r3, #1
005db11c  00 00 53 e3                                      cmp r3, #0
005db120  00 30 80 e5                                      str r3, [r0]
005db124  00 00 00 1a                                      bne #0x5db12c
005db128  1b 27 03 eb                                      bl #0x6a4d9c
005db12c  07 00 a0 e1                                      mov r0, r7
005db130  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005db134  34 40 87 e2                                      add r4, r7, #0x34
005db138  04 00 a0 e1                                      mov r0, r4
005db13c  38 10 97 e5                                      ldr r1, [r7, #0x38]
005db140  ae fe ff eb                                      bl #0x5dac00
005db144  00 30 a0 e3                                      mov r3, #0
005db148  40 40 87 e5                                      str r4, [r7, #0x40]
005db14c  44 30 87 e5                                      str r3, [r7, #0x44]
005db150  3c 40 87 e5                                      str r4, [r7, #0x3c]
005db154  38 30 87 e5                                      str r3, [r7, #0x38]
005db158  cc ff ff ea                                      b #0x5db090

; FUNCTION 0x005dbac0, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CMaterialRendererManager::SCreationState
; alias: _ZN6glitch5video24CMaterialRendererManager14SCreationState13findTechniqueEPKc
; demangled: glitch::video::CMaterialRendererManager::SCreationState::findTechnique(char const*)
; decoder-mode: arm
005dbac0  10 40 2d e9                                      push {r4, lr}
005dbac4  00 40 a0 e1                                      mov r4, r0
005dbac8  01 00 a0 e1                                      mov r0, r1
005dbacc  00 10 a0 e3                                      mov r1, #0
005dbad0  67 25 03 eb                                      bl #0x6a5074
005dbad4  00 00 50 e3                                      cmp r0, #0
005dbad8  00 40 a0 01                                      moveq r4, r0
005dbadc  12 00 00 0a                                      beq #0x5dbb2c
005dbae0  00 c0 90 e5                                      ldr ip, [r0]
005dbae4  00 20 a0 e1                                      mov r2, r0
005dbae8  01 c0 8c e2                                      add ip, ip, #1
005dbaec  04 c0 82 e4                                      str ip, [r2], #4
005dbaf0  08 30 b4 e5                                      ldr r3, [r4, #8]!
005dbaf4  05 00 00 ea                                      b #0x5dbb10
005dbaf8  08 10 93 e5                                      ldr r1, [r3, #8]
005dbafc  00 00 51 e3                                      cmp r1, #0
005dbb00  04 10 81 12                                      addne r1, r1, #4
005dbb04  02 00 51 e1                                      cmp r1, r2
005dbb08  0c 00 00 0a                                      beq #0x5dbb40
005dbb0c  00 30 93 e5                                      ldr r3, [r3]
005dbb10  03 00 54 e1                                      cmp r4, r3
005dbb14  f7 ff ff 1a                                      bne #0x5dbaf8
005dbb18  00 40 a0 e3                                      mov r4, #0
005dbb1c  01 c0 4c e2                                      sub ip, ip, #1
005dbb20  00 00 5c e3                                      cmp ip, #0
005dbb24  00 c0 80 e5                                      str ip, [r0]
005dbb28  01 00 00 0a                                      beq #0x5dbb34
005dbb2c  04 00 a0 e1                                      mov r0, r4
005dbb30  10 80 bd e8                                      pop {r4, pc}
005dbb34  98 24 03 eb                                      bl #0x6a4d9c
005dbb38  04 00 a0 e1                                      mov r0, r4
005dbb3c  10 80 bd e8                                      pop {r4, pc}
005dbb40  08 40 83 e2                                      add r4, r3, #8
005dbb44  f4 ff ff ea                                      b #0x5dbb1c

; FUNCTION 0x005dc824, declared_size=540, range_size=540, mode=arm
; class-group: glitch::video::CMaterialRendererManager::SCreationState
; alias: _ZN6glitch5video24CMaterialRendererManager14SCreationState13makeTechniqueEv
; demangled: glitch::video::CMaterialRendererManager::SCreationState::makeTechnique()
; decoder-mode: arm
005dc824  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005dc828  04 50 90 e5                                      ldr r5, [r0, #4]
005dc82c  00 40 a0 e1                                      mov r4, r0
005dc830  00 00 55 e3                                      cmp r5, #0
005dc834  71 00 00 0a                                      beq #0x5dca00
005dc838  85 5e fd eb                                      bl #0x534254
005dc83c  00 90 a0 e1                                      mov sb, r0
005dc840  01 00 a0 e3                                      mov r0, #1
005dc844  87 5e fd eb                                      bl #0x534268
005dc848  24 50 d4 e5                                      ldrb r5, [r4, #0x24]
005dc84c  00 00 55 e3                                      cmp r5, #0
005dc850  65 00 00 0a                                      beq #0x5dc9ec
005dc854  04 10 a0 e1                                      mov r1, r4
005dc858  10 30 b1 e5                                      ldr r3, [r1, #0x10]!
005dc85c  01 00 53 e1                                      cmp r3, r1
005dc860  00 00 a0 03                                      moveq r0, #0
005dc864  06 00 00 0a                                      beq #0x5dc884
005dc868  00 20 a0 e3                                      mov r2, #0
005dc86c  00 30 93 e5                                      ldr r3, [r3]
005dc870  01 20 82 e2                                      add r2, r2, #1
005dc874  03 00 51 e1                                      cmp r1, r3
005dc878  fb ff ff 1a                                      bne #0x5dc86c
005dc87c  34 00 a0 e3                                      mov r0, #0x34
005dc880  90 02 00 e0                                      mul r0, r0, r2
005dc884  5a 5f fd eb                                      bl #0x5345f4
005dc888  00 50 a0 e1                                      mov r5, r0
005dc88c  0c 00 a0 e3                                      mov r0, #0xc
005dc890  57 5f fd eb                                      bl #0x5345f4
005dc894  08 50 80 e5                                      str r5, [r0, #8]
005dc898  20 30 94 e5                                      ldr r3, [r4, #0x20]
005dc89c  1c 20 84 e2                                      add r2, r4, #0x1c
005dc8a0  0c 00 80 e8                                      stm r0, {r2, r3}
005dc8a4  00 00 83 e5                                      str r0, [r3]
005dc8a8  24 60 d4 e5                                      ldrb r6, [r4, #0x24]
005dc8ac  20 00 84 e5                                      str r0, [r4, #0x20]
005dc8b0  08 80 90 e5                                      ldr r8, [r0, #8]
005dc8b4  00 00 56 e3                                      cmp r6, #0
005dc8b8  10 50 94 e5                                      ldr r5, [r4, #0x10]
005dc8bc  1e 00 00 0a                                      beq #0x5dc93c
005dc8c0  00 70 a0 e3                                      mov r7, #0
005dc8c4  34 a0 a0 e3                                      mov sl, #0x34
005dc8c8  9a 87 2c e0                                      mla ip, sl, r7, r8
005dc8cc  08 e0 85 e2                                      add lr, r5, #8
005dc8d0  0c 60 a0 e1                                      mov r6, ip
005dc8d4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005dc8d8  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
005dc8dc  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
005dc8e0  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005dc8e4  28 30 95 e5                                      ldr r3, [r5, #0x28]
005dc8e8  01 70 87 e2                                      add r7, r7, #1
005dc8ec  77 70 ef e6                                      uxtb r7, r7
005dc8f0  20 30 8c e5                                      str r3, [ip, #0x20]
005dc8f4  00 00 53 e3                                      cmp r3, #0
005dc8f8  04 20 93 15                                      ldrne r2, [r3, #4]
005dc8fc  01 20 82 12                                      addne r2, r2, #1
005dc900  04 20 83 15                                      strne r2, [r3, #4]
005dc904  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
005dc908  24 30 8c e5                                      str r3, [ip, #0x24]
005dc90c  30 30 95 e5                                      ldr r3, [r5, #0x30]
005dc910  28 30 8c e5                                      str r3, [ip, #0x28]
005dc914  b4 33 d5 e1                                      ldrh r3, [r5, #0x34]
005dc918  bc 32 cc e1                                      strh r3, [ip, #0x2c]
005dc91c  b6 33 d5 e1                                      ldrh r3, [r5, #0x36]
005dc920  be 32 cc e1                                      strh r3, [ip, #0x2e]
005dc924  38 30 d5 e5                                      ldrb r3, [r5, #0x38]
005dc928  30 30 cc e5                                      strb r3, [ip, #0x30]
005dc92c  24 60 d4 e5                                      ldrb r6, [r4, #0x24]
005dc930  00 50 95 e5                                      ldr r5, [r5]
005dc934  07 00 56 e1                                      cmp r6, r7
005dc938  e2 ff ff 8a                                      bhi #0x5dc8c8
005dc93c  04 50 94 e5                                      ldr r5, [r4, #4]
005dc940  14 00 a0 e3                                      mov r0, #0x14
005dc944  00 00 55 e3                                      cmp r5, #0
005dc948  00 30 95 15                                      ldrne r3, [r5]
005dc94c  01 30 83 12                                      addne r3, r3, #1
005dc950  00 30 85 15                                      strne r3, [r5]
005dc954  26 5f fd eb                                      bl #0x5345f4
005dc958  00 00 55 e3                                      cmp r5, #0
005dc95c  08 50 80 e5                                      str r5, [r0, #8]
005dc960  08 20 84 e2                                      add r2, r4, #8
005dc964  2b 00 00 0a                                      beq #0x5dca18
005dc968  00 10 95 e5                                      ldr r1, [r5]
005dc96c  00 30 a0 e3                                      mov r3, #0
005dc970  01 10 81 e2                                      add r1, r1, #1
005dc974  00 10 85 e5                                      str r1, [r5]
005dc978  0c 60 c0 e5                                      strb r6, [r0, #0xc]
005dc97c  0d 30 c0 e5                                      strb r3, [r0, #0xd]
005dc980  10 80 80 e5                                      str r8, [r0, #0x10]
005dc984  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005dc988  0c 00 80 e8                                      stm r0, {r2, r3}
005dc98c  00 00 83 e5                                      str r0, [r3]
005dc990  0c 00 84 e5                                      str r0, [r4, #0xc]
005dc994  00 30 95 e5                                      ldr r3, [r5]
005dc998  01 30 43 e2                                      sub r3, r3, #1
005dc99c  00 00 53 e3                                      cmp r3, #0
005dc9a0  00 30 85 e5                                      str r3, [r5]
005dc9a4  0d 00 00 0a                                      beq #0x5dc9e0
005dc9a8  25 30 d4 e5                                      ldrb r3, [r4, #0x25]
005dc9ac  00 10 a0 e3                                      mov r1, #0
005dc9b0  18 10 84 e5                                      str r1, [r4, #0x18]
005dc9b4  01 30 83 e2                                      add r3, r3, #1
005dc9b8  25 30 c4 e5                                      strb r3, [r4, #0x25]
005dc9bc  24 10 c4 e5                                      strb r1, [r4, #0x24]
005dc9c0  04 00 84 e2                                      add r0, r4, #4
005dc9c4  72 f9 ff eb                                      bl #0x5daf94
005dc9c8  0c 50 94 e5                                      ldr r5, [r4, #0xc]
005dc9cc  08 50 85 e2                                      add r5, r5, #8
005dc9d0  09 00 a0 e1                                      mov r0, sb
005dc9d4  23 5e fd eb                                      bl #0x534268
005dc9d8  05 00 a0 e1                                      mov r0, r5
005dc9dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005dc9e0  05 00 a0 e1                                      mov r0, r5
005dc9e4  ec 20 03 eb                                      bl #0x6a4d9c
005dc9e8  ee ff ff ea                                      b #0x5dc9a8
005dc9ec  24 50 c4 e5                                      strb r5, [r4, #0x24]
005dc9f0  04 00 84 e2                                      add r0, r4, #4
005dc9f4  05 10 a0 e1                                      mov r1, r5
005dc9f8  65 f9 ff eb                                      bl #0x5daf94
005dc9fc  f3 ff ff ea                                      b #0x5dc9d0
005dca00  34 00 9f e5                                      ldr r0, [pc, #0x34]
005dca04  03 10 a0 e3                                      mov r1, #3
005dca08  00 00 8f e0                                      add r0, pc, r0
005dca0c  a3 b8 00 eb                                      bl #0x60aca0
005dca10  05 00 a0 e1                                      mov r0, r5
005dca14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005dca18  00 30 a0 e3                                      mov r3, #0
005dca1c  0c 60 c0 e5                                      strb r6, [r0, #0xc]
005dca20  0d 30 c0 e5                                      strb r3, [r0, #0xd]
005dca24  10 80 80 e5                                      str r8, [r0, #0x10]
005dca28  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005dca2c  0c 00 80 e8                                      stm r0, {r2, r3}
005dca30  00 00 83 e5                                      str r0, [r3]
005dca34  0c 00 84 e5                                      str r0, [r4, #0xc]
005dca38  da ff ff ea                                      b #0x5dc9a8
; mapping-symbol data/literal pool
005dca3c  a0 43 30 00                                      .byte 0xa0, 0x43, 0x30, 0x00

; FUNCTION 0x005dca40, declared_size=804, range_size=804, mode=arm
; class-group: glitch::video::CMaterialRendererManager::SCreationState
; alias: _ZN6glitch5video24CMaterialRendererManager14SCreationState12addParameterERKNS_4core13SSharedStringENS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjb
; demangled: glitch::video::CMaterialRendererManager::SCreationState::addParameter(glitch::core::SSharedString const&, glitch::video::E_SHADER_PARAMETER_TYPE, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, unsigned int, bool)
; decoder-mode: arm
005dca40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dca44  00 43 9f e5                                      ldr r4, [pc, #0x300]
005dca48  00 53 9f e5                                      ldr r5, [pc, #0x300]
005dca4c  02 90 a0 e1                                      mov sb, r2
005dca50  04 40 8f e0                                      add r4, pc, r4
005dca54  05 20 94 e7                                      ldr r2, [r4, r5]
005dca58  7c d0 4d e2                                      sub sp, sp, #0x7c
005dca5c  12 00 59 e3                                      cmp sb, #0x12
005dca60  ff 00 59 13                                      cmpne sb, #0xff
005dca64  00 20 92 e5                                      ldr r2, [r2]
005dca68  00 60 a0 e1                                      mov r6, r0
005dca6c  01 70 a0 e1                                      mov r7, r1
005dca70  74 20 8d e5                                      str r2, [sp, #0x74]
005dca74  a4 20 dd e5                                      ldrb r2, [sp, #0xa4]
005dca78  03 a0 a0 e1                                      mov sl, r3
005dca7c  0c 20 8d e5                                      str r2, [sp, #0xc]
005dca80  01 00 00 0a                                      beq #0x5dca8c
005dca84  12 00 59 e3                                      cmp sb, #0x12
005dca88  98 00 00 ca                                      bgt #0x5dccf0
005dca8c  22 30 49 e2                                      sub r3, sb, #0x22
005dca90  1c 00 53 e3                                      cmp r3, #0x1c
005dca94  9d 00 00 9a                                      bls #0x5dcd10
005dca98  21 00 59 e3                                      cmp sb, #0x21
005dca9c  a1 00 00 0a                                      beq #0x5dcd28
005dcaa0  eb 5d fd eb                                      bl #0x534254
005dcaa4  00 00 8d e5                                      str r0, [sp]
005dcaa8  01 00 a0 e3                                      mov r0, #1
005dcaac  ed 5d fd eb                                      bl #0x534268
005dcab0  00 80 97 e5                                      ldr r8, [r7]
005dcab4  00 c0 e0 e3                                      mvn ip, #0
005dcab8  38 00 8d e2                                      add r0, sp, #0x38
005dcabc  00 00 58 e3                                      cmp r8, #0
005dcac0  00 30 98 15                                      ldrne r3, [r8]
005dcac4  08 30 a0 01                                      moveq r3, r8
005dcac8  34 10 86 e2                                      add r1, r6, #0x34
005dcacc  01 30 83 12                                      addne r3, r3, #1
005dcad0  00 30 88 15                                      strne r3, [r8]
005dcad4  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
005dcad8  00 30 97 15                                      ldrne r3, [r7]
005dcadc  ff 00 5a e3                                      cmp sl, #0xff
005dcae0  00 e0 a0 13                                      movne lr, #0
005dcae4  01 e0 a0 03                                      moveq lr, #1
005dcae8  01 00 72 e3                                      cmn r2, #1
005dcaec  00 20 a0 13                                      movne r2, #0
005dcaf0  01 20 a0 03                                      moveq r2, #1
005dcaf4  08 20 8d e5                                      str r2, [sp, #8]
005dcaf8  04 e0 8d e5                                      str lr, [sp, #4]
005dcafc  14 30 8d e5                                      str r3, [sp, #0x14]
005dcb00  ff 00 59 e3                                      cmp sb, #0xff
005dcb04  00 b0 a0 13                                      movne fp, #0
005dcb08  01 b0 a0 03                                      moveq fp, #1
005dcb0c  00 00 53 e3                                      cmp r3, #0
005dcb10  00 20 93 15                                      ldrne r2, [r3]
005dcb14  79 e0 ff e6                                      uxth lr, sb
005dcb18  7a a0 ef e6                                      uxtb sl, sl
005dcb1c  01 20 82 12                                      addne r2, r2, #1
005dcb20  00 20 83 15                                      strne r2, [r3]
005dcb24  00 00 58 e3                                      cmp r8, #0
005dcb28  18 80 8d e5                                      str r8, [sp, #0x18]
005dcb2c  00 30 98 15                                      ldrne r3, [r8]
005dcb30  14 20 8d e2                                      add r2, sp, #0x14
005dcb34  01 30 83 12                                      addne r3, r3, #1
005dcb38  00 30 88 15                                      strne r3, [r8]
005dcb3c  bc e1 cd e1                                      strh lr, [sp, #0x1c]
005dcb40  a0 e0 9d e5                                      ldr lr, [sp, #0xa0]
005dcb44  00 30 a0 e3                                      mov r3, #0
005dcb48  1e a0 cd e5                                      strb sl, [sp, #0x1e]
005dcb4c  20 e0 8d e5                                      str lr, [sp, #0x20]
005dcb50  ff ef 0f e3                                      movw lr, #0xffff
005dcb54  2c e0 8d e5                                      str lr, [sp, #0x2c]
005dcb58  04 e0 9d e5                                      ldr lr, [sp, #4]
005dcb5c  24 c0 8d e5                                      str ip, [sp, #0x24]
005dcb60  30 30 8d e5                                      str r3, [sp, #0x30]
005dcb64  35 e0 cd e5                                      strb lr, [sp, #0x35]
005dcb68  08 e0 9d e5                                      ldr lr, [sp, #8]
005dcb6c  34 b0 cd e5                                      strb fp, [sp, #0x34]
005dcb70  1f c0 cd e5                                      strb ip, [sp, #0x1f]
005dcb74  36 e0 cd e5                                      strb lr, [sp, #0x36]
005dcb78  28 30 8d e5                                      str r3, [sp, #0x28]
005dcb7c  4e f7 ff eb                                      bl #0x5da8bc
005dcb80  18 00 9d e5                                      ldr r0, [sp, #0x18]
005dcb84  00 00 50 e3                                      cmp r0, #0
005dcb88  04 00 00 0a                                      beq #0x5dcba0
005dcb8c  00 30 90 e5                                      ldr r3, [r0]
005dcb90  01 30 43 e2                                      sub r3, r3, #1
005dcb94  00 00 53 e3                                      cmp r3, #0
005dcb98  00 30 80 e5                                      str r3, [r0]
005dcb9c  51 00 00 0a                                      beq #0x5dcce8
005dcba0  14 00 9d e5                                      ldr r0, [sp, #0x14]
005dcba4  00 00 50 e3                                      cmp r0, #0
005dcba8  04 00 00 0a                                      beq #0x5dcbc0
005dcbac  00 30 90 e5                                      ldr r3, [r0]
005dcbb0  01 30 43 e2                                      sub r3, r3, #1
005dcbb4  00 00 53 e3                                      cmp r3, #0
005dcbb8  00 30 80 e5                                      str r3, [r0]
005dcbbc  47 00 00 0a                                      beq #0x5dcce0
005dcbc0  00 00 58 e3                                      cmp r8, #0
005dcbc4  04 00 00 0a                                      beq #0x5dcbdc
005dcbc8  00 30 98 e5                                      ldr r3, [r8]
005dcbcc  01 30 43 e2                                      sub r3, r3, #1
005dcbd0  00 00 53 e3                                      cmp r3, #0
005dcbd4  00 30 88 e5                                      str r3, [r8]
005dcbd8  3a 00 00 0a                                      beq #0x5dccc8
005dcbdc  3c 30 dd e5                                      ldrb r3, [sp, #0x3c]
005dcbe0  00 00 53 e3                                      cmp r3, #0
005dcbe4  15 00 00 0a                                      beq #0x5dcc40
005dcbe8  50 30 96 e5                                      ldr r3, [r6, #0x50]
005dcbec  00 00 53 e3                                      cmp r3, #0
005dcbf0  38 20 9d 15                                      ldrne r2, [sp, #0x38]
005dcbf4  38 30 9d 05                                      ldreq r3, [sp, #0x38]
005dcbf8  14 20 82 12                                      addne r2, r2, #0x14
005dcbfc  10 20 83 15                                      strne r2, [r3, #0x10]
005dcc00  38 30 9d 15                                      ldrne r3, [sp, #0x38]
005dcc04  14 20 83 02                                      addeq r2, r3, #0x14
005dcc08  4c 20 86 05                                      streq r2, [r6, #0x4c]
005dcc0c  14 20 83 12                                      addne r2, r3, #0x14
005dcc10  50 20 86 e5                                      str r2, [r6, #0x50]
005dcc14  14 60 83 e2                                      add r6, r3, #0x14
005dcc18  00 00 9d e5                                      ldr r0, [sp]
005dcc1c  91 5d fd eb                                      bl #0x534268
005dcc20  05 30 94 e7                                      ldr r3, [r4, r5]
005dcc24  74 20 9d e5                                      ldr r2, [sp, #0x74]
005dcc28  06 00 a0 e1                                      mov r0, r6
005dcc2c  00 30 93 e5                                      ldr r3, [r3]
005dcc30  03 00 52 e1                                      cmp r2, r3
005dcc34  43 00 00 1a                                      bne #0x5dcd48
005dcc38  7c d0 8d e2                                      add sp, sp, #0x7c
005dcc3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dcc40  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005dcc44  00 00 52 e3                                      cmp r2, #0
005dcc48  38 30 9d 05                                      ldreq r3, [sp, #0x38]
005dcc4c  f0 ff ff 0a                                      beq #0x5dcc14
005dcc50  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
005dcc54  5c 60 8d e2                                      add r6, sp, #0x5c
005dcc58  40 20 8d e2                                      add r2, sp, #0x40
005dcc5c  01 10 8f e0                                      add r1, pc, r1
005dcc60  06 00 a0 e1                                      mov r0, r6
005dcc64  f4 24 f5 eb                                      bl #0x32603c
005dcc68  00 20 97 e5                                      ldr r2, [r7]
005dcc6c  44 70 8d e2                                      add r7, sp, #0x44
005dcc70  07 00 a0 e1                                      mov r0, r7
005dcc74  00 00 52 e3                                      cmp r2, #0
005dcc78  04 20 82 12                                      addne r2, r2, #4
005dcc7c  06 10 a0 e1                                      mov r1, r6
005dcc80  0a 43 fe eb                                      bl #0x56d8b0
005dcc84  58 00 9d e5                                      ldr r0, [sp, #0x58]
005dcc88  03 10 a0 e3                                      mov r1, #3
005dcc8c  03 b8 00 eb                                      bl #0x60aca0
005dcc90  58 00 9d e5                                      ldr r0, [sp, #0x58]
005dcc94  07 00 50 e1                                      cmp r0, r7
005dcc98  02 00 00 0a                                      beq #0x5dcca8
005dcc9c  00 00 50 e3                                      cmp r0, #0
005dcca0  00 00 00 0a                                      beq #0x5dcca8
005dcca4  e9 cd f4 eb                                      bl #0x310450
005dcca8  70 00 9d e5                                      ldr r0, [sp, #0x70]
005dccac  06 00 50 e1                                      cmp r0, r6
005dccb0  22 00 00 0a                                      beq #0x5dcd40
005dccb4  00 00 50 e3                                      cmp r0, #0
005dccb8  20 00 00 0a                                      beq #0x5dcd40
005dccbc  e3 cd f4 eb                                      bl #0x310450
005dccc0  00 60 a0 e3                                      mov r6, #0
005dccc4  d3 ff ff ea                                      b #0x5dcc18
005dccc8  08 00 a0 e1                                      mov r0, r8
005dcccc  32 20 03 eb                                      bl #0x6a4d9c
005dccd0  3c 30 dd e5                                      ldrb r3, [sp, #0x3c]
005dccd4  00 00 53 e3                                      cmp r3, #0
005dccd8  d8 ff ff 0a                                      beq #0x5dcc40
005dccdc  c1 ff ff ea                                      b #0x5dcbe8
005dcce0  2d 20 03 eb                                      bl #0x6a4d9c
005dcce4  b5 ff ff ea                                      b #0x5dcbc0
005dcce8  2b 20 03 eb                                      bl #0x6a4d9c
005dccec  ab ff ff ea                                      b #0x5dcba0
005dccf0  1b 00 59 e3                                      cmp sb, #0x1b
005dccf4  64 ff ff ca                                      bgt #0x5dca8c
005dccf8  58 00 9f e5                                      ldr r0, [pc, #0x58]
005dccfc  03 10 a0 e3                                      mov r1, #3
005dcd00  00 60 a0 e3                                      mov r6, #0
005dcd04  00 00 8f e0                                      add r0, pc, r0
005dcd08  e4 b7 00 eb                                      bl #0x60aca0
005dcd0c  c3 ff ff ea                                      b #0x5dcc20
005dcd10  44 00 9f e5                                      ldr r0, [pc, #0x44]
005dcd14  03 10 a0 e3                                      mov r1, #3
005dcd18  00 60 a0 e3                                      mov r6, #0
005dcd1c  00 00 8f e0                                      add r0, pc, r0
005dcd20  de b7 00 eb                                      bl #0x60aca0
005dcd24  bd ff ff ea                                      b #0x5dcc20
005dcd28  30 00 9f e5                                      ldr r0, [pc, #0x30]
005dcd2c  03 10 a0 e3                                      mov r1, #3
005dcd30  00 60 a0 e3                                      mov r6, #0
005dcd34  00 00 8f e0                                      add r0, pc, r0
005dcd38  d8 b7 00 eb                                      bl #0x60aca0
005dcd3c  b7 ff ff ea                                      b #0x5dcc20
005dcd40  00 60 a0 e3                                      mov r6, #0
005dcd44  b3 ff ff ea                                      b #0x5dcc18
005dcd48  70 c5 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005dcd4c  40 80 3b 00 ac 40 00 00 34 42 30 00 d4 40 30 00  .byte 0x40, 0x80, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x42, 0x30, 0x00, 0xd4, 0x40, 0x30, 0x00
005dcd5c  04 41 30 00 1c 41 30 00                          .byte 0x04, 0x41, 0x30, 0x00, 0x1c, 0x41, 0x30, 0x00
