; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dfd4c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager17createEmptyShaderEPKc
; demangled: glitch::video::CGLSLShaderManager::createEmptyShader(char const*)
; decoder-mode: arm
006dfd4c  70 40 2d e9                                      push {r4, r5, r6, lr}
006dfd50  00 50 a0 e1                                      mov r5, r0
006dfd54  01 60 a0 e1                                      mov r6, r1
006dfd58  54 00 a0 e3                                      mov r0, #0x54
006dfd5c  00 10 a0 e3                                      mov r1, #0
006dfd60  11 51 f9 eb                                      bl #0x5341ac
006dfd64  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
006dfd68  00 40 a0 e1                                      mov r4, r0
006dfd6c  d8 fc ff eb                                      bl #0x6df0d4
006dfd70  00 00 54 e3                                      cmp r4, #0
006dfd74  00 40 85 e5                                      str r4, [r5]
006dfd78  04 30 94 15                                      ldrne r3, [r4, #4]
006dfd7c  05 00 a0 e1                                      mov r0, r5
006dfd80  01 30 83 12                                      addne r3, r3, #1
006dfd84  04 30 84 15                                      strne r3, [r4, #4]
006dfd88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006dfd8c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager20createShaderInternalEPKcN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES7_
; demangled: glitch::video::CGLSLShaderManager::createShaderInternal(char const*, boost::intrusive_ptr<glitch::video::CGLSLShaderCode>, boost::intrusive_ptr<glitch::video::CGLSLShaderCode>)
; decoder-mode: arm
006dfd8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006dfd90  01 50 a0 e1                                      mov r5, r1
006dfd94  1c d0 4d e2                                      sub sp, sp, #0x1c
006dfd98  b8 72 d1 e1                                      ldrh r7, [r1, #0x28]
006dfd9c  00 60 a0 e1                                      mov r6, r0
006dfda0  00 10 a0 e3                                      mov r1, #0
006dfda4  54 00 a0 e3                                      mov r0, #0x54
006dfda8  02 a0 a0 e1                                      mov sl, r2
006dfdac  03 80 a0 e1                                      mov r8, r3
006dfdb0  fd 50 f9 eb                                      bl #0x5341ac
006dfdb4  2c c0 95 e5                                      ldr ip, [r5, #0x2c]
006dfdb8  38 e0 9d e5                                      ldr lr, [sp, #0x38]
006dfdbc  08 30 a0 e1                                      mov r3, r8
006dfdc0  0a 20 a0 e1                                      mov r2, sl
006dfdc4  04 c0 8d e5                                      str ip, [sp, #4]
006dfdc8  07 10 a0 e1                                      mov r1, r7
006dfdcc  01 c0 a0 e3                                      mov ip, #1
006dfdd0  00 40 a0 e1                                      mov r4, r0
006dfdd4  00 e0 8d e5                                      str lr, [sp]
006dfdd8  08 c0 8d e5                                      str ip, [sp, #8]
006dfddc  03 fd ff eb                                      bl #0x6df1f0
006dfde0  00 00 54 e3                                      cmp r4, #0
006dfde4  14 40 8d e5                                      str r4, [sp, #0x14]
006dfde8  04 30 94 15                                      ldrne r3, [r4, #4]
006dfdec  01 30 83 12                                      addne r3, r3, #1
006dfdf0  04 30 84 15                                      strne r3, [r4, #4]
006dfdf4  14 40 9d 15                                      ldrne r4, [sp, #0x14]
006dfdf8  ff 3f 0f e3                                      movw r3, #0xffff
006dfdfc  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
006dfe00  03 00 52 e1                                      cmp r2, r3
006dfe04  13 00 00 0a                                      beq #0x6dfe58
006dfe08  3e 30 d4 e5                                      ldrb r3, [r4, #0x3e]
006dfe0c  00 00 53 e3                                      cmp r3, #0
006dfe10  10 00 00 0a                                      beq #0x6dfe58
006dfe14  05 00 a0 e1                                      mov r0, r5
006dfe18  14 10 8d e2                                      add r1, sp, #0x14
006dfe1c  1d 1d fc eb                                      bl #0x5e7298
006dfe20  14 00 9d e5                                      ldr r0, [sp, #0x14]
006dfe24  00 00 50 e3                                      cmp r0, #0
006dfe28  00 00 86 e5                                      str r0, [r6]
006dfe2c  03 00 00 0a                                      beq #0x6dfe40
006dfe30  04 30 90 e5                                      ldr r3, [r0, #4]
006dfe34  01 30 83 e2                                      add r3, r3, #1
006dfe38  04 30 80 e5                                      str r3, [r0, #4]
006dfe3c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006dfe40  00 00 50 e3                                      cmp r0, #0
006dfe44  00 00 00 0a                                      beq #0x6dfe4c
006dfe48  cd f5 f0 eb                                      bl #0x31d584
006dfe4c  06 00 a0 e1                                      mov r0, r6
006dfe50  1c d0 8d e2                                      add sp, sp, #0x1c
006dfe54  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006dfe58  00 30 a0 e3                                      mov r3, #0
006dfe5c  00 30 86 e5                                      str r3, [r6]
006dfe60  14 00 9d e5                                      ldr r0, [sp, #0x14]
006dfe64  f5 ff ff ea                                      b #0x6dfe40

; FUNCTION 0x006dfe68, declared_size=844, range_size=844, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager16createShaderCodeEPKcNS0_13E_SHADER_TYPEES3_PNS_2io9IReadFileE
; demangled: glitch::video::CGLSLShaderManager::createShaderCode(char const*, glitch::video::E_SHADER_TYPE, char const*, glitch::io::IReadFile*)
; decoder-mode: arm
006dfe68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006dfe6c  01 40 a0 e1                                      mov r4, r1
006dfe70  80 10 91 e5                                      ldr r1, [r1, #0x80]
006dfe74  3c d0 4d e2                                      sub sp, sp, #0x3c
006dfe78  00 60 a0 e1                                      mov r6, r0
006dfe7c  01 00 71 e3                                      cmn r1, #1
006dfe80  02 70 a0 e1                                      mov r7, r2
006dfe84  03 b0 a0 e1                                      mov fp, r3
006dfe88  60 90 9d e5                                      ldr sb, [sp, #0x60]
006dfe8c  9e 00 00 0a                                      beq #0x6e010c
006dfe90  00 c0 a0 e3                                      mov ip, #0
006dfe94  0c 20 a0 e1                                      mov r2, ip
006dfe98  09 30 a0 e1                                      mov r3, sb
006dfe9c  07 10 a0 e1                                      mov r1, r7
006dfea0  04 00 a0 e1                                      mov r0, r4
006dfea4  00 c0 8d e5                                      str ip, [sp]
006dfea8  58 03 00 eb                                      bl #0x6e0c10
006dfeac  00 50 a0 e1                                      mov r5, r0
006dfeb0  04 10 a0 e1                                      mov r1, r4
006dfeb4  34 00 8d e2                                      add r0, sp, #0x34
006dfeb8  05 20 a0 e1                                      mov r2, r5
006dfebc  11 07 00 eb                                      bl #0x6e1b08
006dfec0  34 30 9d e5                                      ldr r3, [sp, #0x34]
006dfec4  00 00 53 e3                                      cmp r3, #0
006dfec8  0e 00 00 0a                                      beq #0x6dff08
006dfecc  00 30 86 e5                                      str r3, [r6]
006dfed0  04 20 93 e5                                      ldr r2, [r3, #4]
006dfed4  01 20 82 e2                                      add r2, r2, #1
006dfed8  04 20 83 e5                                      str r2, [r3, #4]
006dfedc  34 00 9d e5                                      ldr r0, [sp, #0x34]
006dfee0  00 00 50 e3                                      cmp r0, #0
006dfee4  00 00 00 0a                                      beq #0x6dfeec
006dfee8  a5 f5 f0 eb                                      bl #0x31d584
006dfeec  00 00 55 e3                                      cmp r5, #0
006dfef0  01 00 00 0a                                      beq #0x6dfefc
006dfef4  05 00 a0 e1                                      mov r0, r5
006dfef8  e2 51 f9 eb                                      bl #0x534688
006dfefc  06 00 a0 e1                                      mov r0, r6
006dff00  3c d0 8d e2                                      add sp, sp, #0x3c
006dff04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006dff08  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
006dff0c  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
006dff10  34 a0 93 e5                                      ldr sl, [r3, #0x34]
006dff14  00 00 5a e3                                      cmp sl, #0
006dff18  04 30 9a 15                                      ldrne r3, [sl, #4]
006dff1c  01 30 83 12                                      addne r3, r3, #1
006dff20  04 30 8a 15                                      strne r3, [sl, #4]
006dff24  64 10 9d e5                                      ldr r1, [sp, #0x64]
006dff28  00 00 51 e3                                      cmp r1, #0
006dff2c  64 80 9d 15                                      ldrne r8, [sp, #0x64]
006dff30  83 00 00 0a                                      beq #0x6e0144
006dff34  00 30 98 e5                                      ldr r3, [r8]
006dff38  08 00 a0 e1                                      mov r0, r8
006dff3c  0f e0 a0 e1                                      mov lr, pc
006dff40  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006dff44  0c 00 8d e5                                      str r0, [sp, #0xc]
006dff48  00 30 98 e5                                      ldr r3, [r8]
006dff4c  08 00 a0 e1                                      mov r0, r8
006dff50  0f e0 a0 e1                                      mov lr, pc
006dff54  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006dff58  01 00 80 e2                                      add r0, r0, #1
006dff5c  a4 51 f9 eb                                      bl #0x5345f4
006dff60  08 00 8d e5                                      str r0, [sp, #8]
006dff64  00 30 98 e5                                      ldr r3, [r8]
006dff68  08 00 a0 e1                                      mov r0, r8
006dff6c  08 10 9d e5                                      ldr r1, [sp, #8]
006dff70  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006dff74  0f e0 a0 e1                                      mov lr, pc
006dff78  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006dff7c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006dff80  00 00 53 e1                                      cmp r3, r0
006dff84  0f 00 00 0a                                      beq #0x6dffc8
006dff88  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
006dff8c  07 20 a0 e1                                      mov r2, r7
006dff90  03 00 a0 e3                                      mov r0, #3
006dff94  01 10 8f e0                                      add r1, pc, r1
006dff98  25 ac fc eb                                      bl #0x60b034
006dff9c  00 30 a0 e3                                      mov r3, #0
006dffa0  00 30 86 e5                                      str r3, [r6]
006dffa4  08 30 9d e5                                      ldr r3, [sp, #8]
006dffa8  00 00 53 e3                                      cmp r3, #0
006dffac  01 00 00 0a                                      beq #0x6dffb8
006dffb0  03 00 a0 e1                                      mov r0, r3
006dffb4  b3 51 f9 eb                                      bl #0x534688
006dffb8  00 00 5a e3                                      cmp sl, #0
006dffbc  ca ff ff 0a                                      beq #0x6dfeec
006dffc0  0a 00 a0 e1                                      mov r0, sl
006dffc4  c7 ff ff ea                                      b #0x6dfee8
006dffc8  64 10 9d e5                                      ldr r1, [sp, #0x64]
006dffcc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006dffd0  00 30 a0 e3                                      mov r3, #0
006dffd4  01 00 58 e1                                      cmp r8, r1
006dffd8  08 10 9d e5                                      ldr r1, [sp, #8]
006dffdc  02 30 c1 e7                                      strb r3, [r1, r2]
006dffe0  01 00 00 0a                                      beq #0x6dffec
006dffe4  08 00 a0 e1                                      mov r0, r8
006dffe8  65 f5 f0 eb                                      bl #0x31d584
006dffec  10 80 8d e2                                      add r8, sp, #0x10
006dfff0  00 20 a0 e3                                      mov r2, #0
006dfff4  04 30 88 e2                                      add r3, r8, #4
006dfff8  04 20 83 e4                                      str r2, [r3], #4
006dfffc  04 20 83 e4                                      str r2, [r3], #4
006e0000  04 20 83 e4                                      str r2, [r3], #4
006e0004  04 20 83 e4                                      str r2, [r3], #4
006e0008  04 20 83 e4                                      str r2, [r3], #4
006e000c  74 c1 9f e5                                      ldr ip, [pc, #0x174]
006e0010  74 01 9f e5                                      ldr r0, [pc, #0x174]
006e0014  04 20 83 e4                                      str r2, [r3], #4
006e0018  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006e001c  0c c0 8f e0                                      add ip, pc, ip
006e0020  04 20 83 e4                                      str r2, [r3], #4
006e0024  00 00 8f e0                                      add r0, pc, r0
006e0028  00 20 83 e5                                      str r2, [r3]
006e002c  1c c0 8d e5                                      str ip, [sp, #0x1c]
006e0030  28 00 8d e5                                      str r0, [sp, #0x28]
006e0034  10 20 8d e5                                      str r2, [sp, #0x10]
006e0038  88 30 91 e5                                      ldr r3, [r1, #0x88]
006e003c  01 0b 13 e3                                      tst r3, #0x400
006e0040  36 00 00 1a                                      bne #0x6e0120
006e0044  44 31 9f e5                                      ldr r3, [pc, #0x144]
006e0048  03 30 8f e0                                      add r3, pc, r3
006e004c  10 30 8d e5                                      str r3, [sp, #0x10]
006e0050  88 30 91 e5                                      ldr r3, [r1, #0x88]
006e0054  02 0b 13 e3                                      tst r3, #0x800
006e0058  36 00 00 1a                                      bne #0x6e0138
006e005c  30 31 9f e5                                      ldr r3, [pc, #0x130]
006e0060  03 30 8f e0                                      add r3, pc, r3
006e0064  14 30 8d e5                                      str r3, [sp, #0x14]
006e0068  88 30 91 e5                                      ldr r3, [r1, #0x88]
006e006c  01 0a 13 e3                                      tst r3, #0x1000
006e0070  2d 00 00 1a                                      bne #0x6e012c
006e0074  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
006e0078  02 20 8f e0                                      add r2, pc, r2
006e007c  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
006e0080  18 20 8d e5                                      str r2, [sp, #0x18]
006e0084  00 00 53 e3                                      cmp r3, #0
006e0088  3a 00 00 0a                                      beq #0x6e0178
006e008c  00 00 59 e3                                      cmp sb, #0
006e0090  20 30 8d e5                                      str r3, [sp, #0x20]
006e0094  34 00 00 0a                                      beq #0x6e016c
006e0098  08 20 9d e5                                      ldr r2, [sp, #8]
006e009c  00 10 a0 e3                                      mov r1, #0
006e00a0  38 00 a0 e3                                      mov r0, #0x38
006e00a4  2c 20 8d e5                                      str r2, [sp, #0x2c]
006e00a8  24 90 8d e5                                      str sb, [sp, #0x24]
006e00ac  3e 50 f9 eb                                      bl #0x5341ac
006e00b0  2c c0 94 e5                                      ldr ip, [r4, #0x2c]
006e00b4  0b 30 a0 e1                                      mov r3, fp
006e00b8  08 20 a0 e1                                      mov r2, r8
006e00bc  00 c0 8d e5                                      str ip, [sp]
006e00c0  05 10 a0 e1                                      mov r1, r5
006e00c4  01 c0 a0 e3                                      mov ip, #1
006e00c8  00 70 a0 e1                                      mov r7, r0
006e00cc  04 c0 8d e5                                      str ip, [sp, #4]
006e00d0  98 fd ff eb                                      bl #0x6df738
006e00d4  00 00 57 e3                                      cmp r7, #0
006e00d8  04 30 97 15                                      ldrne r3, [r7, #4]
006e00dc  07 00 a0 e1                                      mov r0, r7
006e00e0  01 30 83 12                                      addne r3, r3, #1
006e00e4  04 30 87 15                                      strne r3, [r7, #4]
006e00e8  34 30 d7 e5                                      ldrb r3, [r7, #0x34]
006e00ec  00 00 53 e3                                      cmp r3, #0
006e00f0  00 70 86 15                                      strne r7, [r6]
006e00f4  04 30 97 15                                      ldrne r3, [r7, #4]
006e00f8  00 30 86 05                                      streq r3, [r6]
006e00fc  01 30 83 12                                      addne r3, r3, #1
006e0100  04 30 87 15                                      strne r3, [r7, #4]
006e0104  1e f5 f0 eb                                      bl #0x31d584
006e0108  a5 ff ff ea                                      b #0x6dffa4
006e010c  88 10 9f e5                                      ldr r1, [pc, #0x88]
006e0110  04 00 a0 e1                                      mov r0, r4
006e0114  01 10 8f e0                                      add r1, pc, r1
006e0118  47 02 00 eb                                      bl #0x6e0a3c
006e011c  5b ff ff ea                                      b #0x6dfe90
006e0120  78 30 9f e5                                      ldr r3, [pc, #0x78]
006e0124  03 30 8f e0                                      add r3, pc, r3
006e0128  c7 ff ff ea                                      b #0x6e004c
006e012c  70 20 9f e5                                      ldr r2, [pc, #0x70]
006e0130  02 20 8f e0                                      add r2, pc, r2
006e0134  d0 ff ff ea                                      b #0x6e007c
006e0138  68 30 9f e5                                      ldr r3, [pc, #0x68]
006e013c  03 30 8f e0                                      add r3, pc, r3
006e0140  c7 ff ff ea                                      b #0x6e0064
006e0144  00 30 9a e5                                      ldr r3, [sl]
006e0148  0a 00 a0 e1                                      mov r0, sl
006e014c  07 10 a0 e1                                      mov r1, r7
006e0150  0f e0 a0 e1                                      mov lr, pc
006e0154  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006e0158  00 80 50 e2                                      subs r8, r0, #0
006e015c  74 ff ff 1a                                      bne #0x6dff34
006e0160  64 20 9d e5                                      ldr r2, [sp, #0x64]
006e0164  00 20 86 e5                                      str r2, [r6]
006e0168  92 ff ff ea                                      b #0x6dffb8
006e016c  38 90 9f e5                                      ldr sb, [pc, #0x38]
006e0170  09 90 8f e0                                      add sb, pc, sb
006e0174  c7 ff ff ea                                      b #0x6e0098
006e0178  30 30 9f e5                                      ldr r3, [pc, #0x30]
006e017c  03 30 8f e0                                      add r3, pc, r3
006e0180  c1 ff ff ea                                      b #0x6e008c
; mapping-symbol data/literal pool
006e0184  dc ef 20 00 6c ef 20 00 cc b9 1e 00 c0 b7 1e 00  .byte 0xdc, 0xef, 0x20, 0x00, 0x6c, 0xef, 0x20, 0x00, 0xcc, 0xb9, 0x1e, 0x00, 0xc0, 0xb7, 0x1e, 0x00
006e0194  a8 b7 1e 00 90 b7 1e 00 4c ee 20 00 84 ee 20 00  .byte 0xa8, 0xb7, 0x1e, 0x00, 0x90, 0xb7, 0x1e, 0x00, 0x4c, 0xee, 0x20, 0x00, 0x84, 0xee, 0x20, 0x00
006e01a4  b8 ee 20 00 8c ee 20 00 98 b6 1e 00 8c b6 1e 00  .byte 0xb8, 0xee, 0x20, 0x00, 0x8c, 0xee, 0x20, 0x00, 0x98, 0xb6, 0x1e, 0x00, 0x8c, 0xb6, 0x1e, 0x00

; FUNCTION 0x006e01b4, declared_size=404, range_size=404, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager12createShaderEPKcS3_S3_S3_S3_PNS_2io9IReadFileES6_
; demangled: glitch::video::CGLSLShaderManager::createShader(char const*, char const*, char const*, char const*, char const*, glitch::io::IReadFile*, glitch::io::IReadFile*)
; decoder-mode: arm
006e01b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e01b8  01 40 a0 e1                                      mov r4, r1
006e01bc  18 d0 4d e2                                      sub sp, sp, #0x18
006e01c0  00 50 a0 e1                                      mov r5, r0
006e01c4  04 00 81 e2                                      add r0, r1, #4
006e01c8  02 10 a0 e1                                      mov r1, r2
006e01cc  03 80 a0 e1                                      mov r8, r3
006e01d0  02 60 a0 e1                                      mov r6, r2
006e01d4  fd e0 fb eb                                      bl #0x5d85d0
006e01d8  60 71 9f e5                                      ldr r7, [pc, #0x160]
006e01dc  ff 3f 0f e3                                      movw r3, #0xffff
006e01e0  03 00 50 e1                                      cmp r0, r3
006e01e4  07 70 8f e0                                      add r7, pc, r7
006e01e8  12 00 00 0a                                      beq #0x6e0238
006e01ec  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006e01f0  20 20 94 e5                                      ldr r2, [r4, #0x20]
006e01f4  02 20 63 e0                                      rsb r2, r3, r2
006e01f8  c2 01 50 e1                                      cmp r0, r2, asr #3
006e01fc  80 01 83 30                                      addlo r0, r3, r0, lsl #3
006e0200  09 00 00 2a                                      bhs #0x6e022c
006e0204  00 30 90 e5                                      ldr r3, [r0]
006e0208  00 00 53 e3                                      cmp r3, #0
006e020c  00 30 85 e5                                      str r3, [r5]
006e0210  02 00 00 0a                                      beq #0x6e0220
006e0214  04 20 93 e5                                      ldr r2, [r3, #4]
006e0218  01 20 82 e2                                      add r2, r2, #1
006e021c  04 20 83 e5                                      str r2, [r3, #4]
006e0220  05 00 a0 e1                                      mov r0, r5
006e0224  18 d0 8d e2                                      add sp, sp, #0x18
006e0228  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e022c  10 31 9f e5                                      ldr r3, [pc, #0x110]
006e0230  03 00 97 e7                                      ldr r0, [r7, r3]
006e0234  f2 ff ff ea                                      b #0x6e0204
006e0238  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006e023c  14 00 8d e2                                      add r0, sp, #0x14
006e0240  08 20 a0 e1                                      mov r2, r8
006e0244  00 c0 8d e5                                      str ip, [sp]
006e0248  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006e024c  04 10 a0 e1                                      mov r1, r4
006e0250  04 30 a0 e3                                      mov r3, #4
006e0254  04 c0 8d e5                                      str ip, [sp, #4]
006e0258  02 ff ff eb                                      bl #0x6dfe68
006e025c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e0260  00 00 50 e3                                      cmp r0, #0
006e0264  00 00 85 05                                      streq r0, [r5]
006e0268  ec ff ff 0a                                      beq #0x6e0220
006e026c  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006e0270  0e 30 a0 e3                                      mov r3, #0xe
006e0274  34 20 9d e5                                      ldr r2, [sp, #0x34]
006e0278  00 c0 8d e5                                      str ip, [sp]
006e027c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006e0280  10 00 8d e2                                      add r0, sp, #0x10
006e0284  04 10 a0 e1                                      mov r1, r4
006e0288  04 c0 8d e5                                      str ip, [sp, #4]
006e028c  f5 fe ff eb                                      bl #0x6dfe68
006e0290  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e0294  00 00 53 e3                                      cmp r3, #0
006e0298  00 30 85 05                                      streq r3, [r5]
006e029c  20 00 00 0a                                      beq #0x6e0324
006e02a0  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e02a4  00 00 52 e3                                      cmp r2, #0
006e02a8  0c 20 8d e5                                      str r2, [sp, #0xc]
006e02ac  21 00 00 0a                                      beq #0x6e0338
006e02b0  04 30 92 e5                                      ldr r3, [r2, #4]
006e02b4  01 30 83 e2                                      add r3, r3, #1
006e02b8  04 30 82 e5                                      str r3, [r2, #4]
006e02bc  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e02c0  00 00 53 e3                                      cmp r3, #0
006e02c4  08 30 8d e5                                      str r3, [sp, #8]
006e02c8  02 00 00 0a                                      beq #0x6e02d8
006e02cc  04 20 93 e5                                      ldr r2, [r3, #4]
006e02d0  01 20 82 e2                                      add r2, r2, #1
006e02d4  04 20 83 e5                                      str r2, [r3, #4]
006e02d8  05 00 a0 e1                                      mov r0, r5
006e02dc  08 c0 8d e2                                      add ip, sp, #8
006e02e0  04 10 a0 e1                                      mov r1, r4
006e02e4  06 20 a0 e1                                      mov r2, r6
006e02e8  0c 30 8d e2                                      add r3, sp, #0xc
006e02ec  00 c0 8d e5                                      str ip, [sp]
006e02f0  a5 fe ff eb                                      bl #0x6dfd8c
006e02f4  08 00 9d e5                                      ldr r0, [sp, #8]
006e02f8  00 00 50 e3                                      cmp r0, #0
006e02fc  00 00 00 0a                                      beq #0x6e0304
006e0300  9f f4 f0 eb                                      bl #0x31d584
006e0304  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006e0308  00 00 50 e3                                      cmp r0, #0
006e030c  00 00 00 0a                                      beq #0x6e0314
006e0310  9b f4 f0 eb                                      bl #0x31d584
006e0314  10 00 9d e5                                      ldr r0, [sp, #0x10]
006e0318  00 00 50 e3                                      cmp r0, #0
006e031c  00 00 00 0a                                      beq #0x6e0324
006e0320  97 f4 f0 eb                                      bl #0x31d584
006e0324  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e0328  00 00 50 e3                                      cmp r0, #0
006e032c  bb ff ff 0a                                      beq #0x6e0220
006e0330  93 f4 f0 eb                                      bl #0x31d584
006e0334  b9 ff ff ea                                      b #0x6e0220
006e0338  08 30 8d e5                                      str r3, [sp, #8]
006e033c  e2 ff ff ea                                      b #0x6e02cc
; mapping-symbol data/literal pool
006e0340  ac 48 2b 00 fc 49 00 00                          .byte 0xac, 0x48, 0x2b, 0x00, 0xfc, 0x49, 0x00, 0x00

; FUNCTION 0x006e0348, declared_size=288, range_size=288, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManager12createShaderEPKcN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES7_
; demangled: glitch::video::CGLSLShaderManager::createShader(char const*, boost::intrusive_ptr<glitch::video::CGLSLShaderCode>, boost::intrusive_ptr<glitch::video::CGLSLShaderCode>)
; decoder-mode: arm
006e0348  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e034c  01 40 a0 e1                                      mov r4, r1
006e0350  14 d0 4d e2                                      sub sp, sp, #0x14
006e0354  00 50 a0 e1                                      mov r5, r0
006e0358  04 00 81 e2                                      add r0, r1, #4
006e035c  02 10 a0 e1                                      mov r1, r2
006e0360  03 a0 a0 e1                                      mov sl, r3
006e0364  02 70 a0 e1                                      mov r7, r2
006e0368  30 80 9d e5                                      ldr r8, [sp, #0x30]
006e036c  97 e0 fb eb                                      bl #0x5d85d0
006e0370  e8 60 9f e5                                      ldr r6, [pc, #0xe8]
006e0374  ff 3f 0f e3                                      movw r3, #0xffff
006e0378  03 00 50 e1                                      cmp r0, r3
006e037c  06 60 8f e0                                      add r6, pc, r6
006e0380  12 00 00 0a                                      beq #0x6e03d0
006e0384  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006e0388  20 20 94 e5                                      ldr r2, [r4, #0x20]
006e038c  02 20 63 e0                                      rsb r2, r3, r2
006e0390  c2 01 50 e1                                      cmp r0, r2, asr #3
006e0394  80 01 83 30                                      addlo r0, r3, r0, lsl #3
006e0398  09 00 00 2a                                      bhs #0x6e03c4
006e039c  00 30 90 e5                                      ldr r3, [r0]
006e03a0  00 00 53 e3                                      cmp r3, #0
006e03a4  00 30 85 e5                                      str r3, [r5]
006e03a8  02 00 00 0a                                      beq #0x6e03b8
006e03ac  04 20 93 e5                                      ldr r2, [r3, #4]
006e03b0  01 20 82 e2                                      add r2, r2, #1
006e03b4  04 20 83 e5                                      str r2, [r3, #4]
006e03b8  05 00 a0 e1                                      mov r0, r5
006e03bc  14 d0 8d e2                                      add sp, sp, #0x14
006e03c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e03c4  98 30 9f e5                                      ldr r3, [pc, #0x98]
006e03c8  03 00 96 e7                                      ldr r0, [r6, r3]
006e03cc  f2 ff ff ea                                      b #0x6e039c
006e03d0  00 30 9a e5                                      ldr r3, [sl]
006e03d4  00 00 53 e3                                      cmp r3, #0
006e03d8  1d 00 00 0a                                      beq #0x6e0454
006e03dc  00 20 98 e5                                      ldr r2, [r8]
006e03e0  00 00 52 e3                                      cmp r2, #0
006e03e4  1a 00 00 0a                                      beq #0x6e0454
006e03e8  0c 30 8d e5                                      str r3, [sp, #0xc]
006e03ec  04 20 93 e5                                      ldr r2, [r3, #4]
006e03f0  01 20 82 e2                                      add r2, r2, #1
006e03f4  04 20 83 e5                                      str r2, [r3, #4]
006e03f8  00 30 98 e5                                      ldr r3, [r8]
006e03fc  00 00 53 e3                                      cmp r3, #0
006e0400  08 30 8d e5                                      str r3, [sp, #8]
006e0404  02 00 00 0a                                      beq #0x6e0414
006e0408  04 20 93 e5                                      ldr r2, [r3, #4]
006e040c  01 20 82 e2                                      add r2, r2, #1
006e0410  04 20 83 e5                                      str r2, [r3, #4]
006e0414  05 00 a0 e1                                      mov r0, r5
006e0418  08 c0 8d e2                                      add ip, sp, #8
006e041c  04 10 a0 e1                                      mov r1, r4
006e0420  07 20 a0 e1                                      mov r2, r7
006e0424  0c 30 8d e2                                      add r3, sp, #0xc
006e0428  00 c0 8d e5                                      str ip, [sp]
006e042c  56 fe ff eb                                      bl #0x6dfd8c
006e0430  08 00 9d e5                                      ldr r0, [sp, #8]
006e0434  00 00 50 e3                                      cmp r0, #0
006e0438  00 00 00 0a                                      beq #0x6e0440
006e043c  50 f4 f0 eb                                      bl #0x31d584
006e0440  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006e0444  00 00 50 e3                                      cmp r0, #0
006e0448  da ff ff 0a                                      beq #0x6e03b8
006e044c  4c f4 f0 eb                                      bl #0x31d584
006e0450  d8 ff ff ea                                      b #0x6e03b8
006e0454  00 30 a0 e3                                      mov r3, #0
006e0458  00 30 85 e5                                      str r3, [r5]
006e045c  d5 ff ff ea                                      b #0x6e03b8
; mapping-symbol data/literal pool
006e0460  14 47 2b 00 fc 49 00 00                          .byte 0x14, 0x47, 0x2b, 0x00, 0xfc, 0x49, 0x00, 0x00

; FUNCTION 0x006e0468, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManagerD1Ev
; demangled: glitch::video::CGLSLShaderManager::~CGLSLShaderManager()
; decoder-mode: arm
006e0468  24 30 9f e5                                      ldr r3, [pc, #0x24]
006e046c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006e0470  10 40 2d e9                                      push {r4, lr}
006e0474  03 30 8f e0                                      add r3, pc, r3
006e0478  02 20 93 e7                                      ldr r2, [r3, r2]
006e047c  00 40 a0 e1                                      mov r4, r0
006e0480  08 20 82 e2                                      add r2, r2, #8
006e0484  00 20 80 e5                                      str r2, [r0]
006e0488  d2 04 00 eb                                      bl #0x6e17d8
006e048c  04 00 a0 e1                                      mov r0, r4
006e0490  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e0494  1c 46 2b 00 18 0b 00 00                          .byte 0x1c, 0x46, 0x2b, 0x00, 0x18, 0x0b, 0x00, 0x00

; FUNCTION 0x006e049c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManagerD0Ev
; demangled: glitch::video::CGLSLShaderManager::~CGLSLShaderManager()
; decoder-mode: arm
006e049c  10 40 2d e9                                      push {r4, lr}
006e04a0  00 40 a0 e1                                      mov r4, r0
006e04a4  ef ff ff eb                                      bl #0x6e0468
006e04a8  04 00 a0 e1                                      mov r0, r4
006e04ac  7f b7 f0 eb                                      bl #0x30e2b0
006e04b0  04 00 a0 e1                                      mov r0, r4
006e04b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e04b8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManagerD2Ev
; demangled: glitch::video::CGLSLShaderManager::~CGLSLShaderManager()
; decoder-mode: arm
006e04b8  24 30 9f e5                                      ldr r3, [pc, #0x24]
006e04bc  24 20 9f e5                                      ldr r2, [pc, #0x24]
006e04c0  10 40 2d e9                                      push {r4, lr}
006e04c4  03 30 8f e0                                      add r3, pc, r3
006e04c8  02 20 93 e7                                      ldr r2, [r3, r2]
006e04cc  00 40 a0 e1                                      mov r4, r0
006e04d0  08 20 82 e2                                      add r2, r2, #8
006e04d4  00 20 80 e5                                      str r2, [r0]
006e04d8  be 04 00 eb                                      bl #0x6e17d8
006e04dc  04 00 a0 e1                                      mov r0, r4
006e04e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e04e4  cc 45 2b 00 18 0b 00 00                          .byte 0xcc, 0x45, 0x2b, 0x00, 0x18, 0x0b, 0x00, 0x00

; FUNCTION 0x006e04ec, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManagerC1Ev
; demangled: glitch::video::CGLSLShaderManager::CGLSLShaderManager()
; decoder-mode: arm
006e04ec  70 40 2d e9                                      push {r4, r5, r6, lr}
006e04f0  20 40 9f e5                                      ldr r4, [pc, #0x20]
006e04f4  00 50 a0 e1                                      mov r5, r0
006e04f8  fc 01 00 eb                                      bl #0x6e0cf0
006e04fc  18 30 9f e5                                      ldr r3, [pc, #0x18]
006e0500  04 40 8f e0                                      add r4, pc, r4
006e0504  05 00 a0 e1                                      mov r0, r5
006e0508  03 30 94 e7                                      ldr r3, [r4, r3]
006e050c  08 30 83 e2                                      add r3, r3, #8
006e0510  00 30 85 e5                                      str r3, [r5]
006e0514  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e0518  90 45 2b 00 18 0b 00 00                          .byte 0x90, 0x45, 0x2b, 0x00, 0x18, 0x0b, 0x00, 0x00

; FUNCTION 0x006e0520, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CGLSLShaderManager
; alias: _ZN6glitch5video18CGLSLShaderManagerC2Ev
; demangled: glitch::video::CGLSLShaderManager::CGLSLShaderManager()
; decoder-mode: arm
006e0520  70 40 2d e9                                      push {r4, r5, r6, lr}
006e0524  20 40 9f e5                                      ldr r4, [pc, #0x20]
006e0528  00 50 a0 e1                                      mov r5, r0
006e052c  ef 01 00 eb                                      bl #0x6e0cf0
006e0530  18 30 9f e5                                      ldr r3, [pc, #0x18]
006e0534  04 40 8f e0                                      add r4, pc, r4
006e0538  05 00 a0 e1                                      mov r0, r5
006e053c  03 30 94 e7                                      ldr r3, [r4, r3]
006e0540  08 30 83 e2                                      add r3, r3, #8
006e0544  00 30 85 e5                                      str r3, [r5]
006e0548  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e054c  5c 45 2b 00 18 0b 00 00                          .byte 0x5c, 0x45, 0x2b, 0x00, 0x18, 0x0b, 0x00, 0x00
