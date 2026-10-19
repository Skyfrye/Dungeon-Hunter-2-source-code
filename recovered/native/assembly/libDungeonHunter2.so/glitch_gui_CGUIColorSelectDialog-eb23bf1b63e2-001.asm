; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a86b4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialog17sendSelectedEventEv
; demangled: glitch::gui::CGUIColorSelectDialog::sendSelectedEvent()
; decoder-mode: arm
006a86b4  04 e0 2d e5                                      str lr, [sp, #-4]!
006a86b8  24 30 90 e5                                      ldr r3, [r0, #0x24]
006a86bc  1c d0 4d e2                                      sub sp, sp, #0x1c
006a86c0  00 20 a0 e3                                      mov r2, #0
006a86c4  0a 10 a0 e3                                      mov r1, #0xa
006a86c8  10 10 8d e5                                      str r1, [sp, #0x10]
006a86cc  08 00 8d e5                                      str r0, [sp, #8]
006a86d0  0c 20 8d e5                                      str r2, [sp, #0xc]
006a86d4  00 20 8d e5                                      str r2, [sp]
006a86d8  03 00 a0 e1                                      mov r0, r3
006a86dc  0d 10 a0 e1                                      mov r1, sp
006a86e0  00 30 93 e5                                      ldr r3, [r3]
006a86e4  0f e0 a0 e1                                      mov lr, pc
006a86e8  08 f0 93 e5                                      ldr pc, [r3, #8]
006a86ec  1c d0 8d e2                                      add sp, sp, #0x1c
006a86f0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006a86f4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialog15sendCancelEventEv
; demangled: glitch::gui::CGUIColorSelectDialog::sendCancelEvent()
; decoder-mode: arm
006a86f4  04 e0 2d e5                                      str lr, [sp, #-4]!
006a86f8  24 30 90 e5                                      ldr r3, [r0, #0x24]
006a86fc  1c d0 4d e2                                      sub sp, sp, #0x1c
006a8700  00 20 a0 e3                                      mov r2, #0
006a8704  0b 10 a0 e3                                      mov r1, #0xb
006a8708  10 10 8d e5                                      str r1, [sp, #0x10]
006a870c  08 00 8d e5                                      str r0, [sp, #8]
006a8710  0c 20 8d e5                                      str r2, [sp, #0xc]
006a8714  00 20 8d e5                                      str r2, [sp]
006a8718  03 00 a0 e1                                      mov r0, r3
006a871c  0d 10 a0 e1                                      mov r1, sp
006a8720  00 30 93 e5                                      ldr r3, [r3]
006a8724  0f e0 a0 e1                                      mov lr, pc
006a8728  08 f0 93 e5                                      ldr pc, [r3, #8]
006a872c  1c d0 8d e2                                      add sp, sp, #0x1c
006a8730  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006a8754, declared_size=1212, range_size=1212, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialog14buildColorRingERKNS_4core11dimension2dIiEEiNS_5video6SColorE
; demangled: glitch::gui::CGUIColorSelectDialog::buildColorRing(glitch::core::dimension2d<int> const&, int, glitch::video::SColor)
; decoder-mode: arm
006a8754  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a8758  84 d0 4d e2                                      sub sp, sp, #0x84
006a875c  48 10 8d e5                                      str r1, [sp, #0x48]
006a8760  00 e0 91 e5                                      ldr lr, [r1]
006a8764  04 c0 91 e5                                      ldr ip, [r1, #4]
006a8768  44 20 8d e5                                      str r2, [sp, #0x44]
006a876c  9e 02 0e e0                                      mul lr, lr, r2
006a8770  9c 02 0c e0                                      mul ip, ip, r2
006a8774  00 20 a0 e3                                      mov r2, #0
006a8778  02 10 a0 e1                                      mov r1, r2
006a877c  40 00 8d e5                                      str r0, [sp, #0x40]
006a8780  2c 00 a0 e3                                      mov r0, #0x2c
006a8784  4c 30 8d e5                                      str r3, [sp, #0x4c]
006a8788  60 e0 8d e5                                      str lr, [sp, #0x60]
006a878c  64 c0 8d e5                                      str ip, [sp, #0x64]
006a8790  7c 20 8d e5                                      str r2, [sp, #0x7c]
006a8794  84 2e fa eb                                      bl #0x5341ac
006a8798  0c 10 a0 e3                                      mov r1, #0xc
006a879c  60 20 8d e2                                      add r2, sp, #0x60
006a87a0  00 50 a0 e1                                      mov r5, r0
006a87a4  59 66 fd eb                                      bl #0x602110
006a87a8  00 00 55 e3                                      cmp r5, #0
006a87ac  04 30 95 15                                      ldrne r3, [r5, #4]
006a87b0  4c 44 9f e5                                      ldr r4, [pc, #0x44c]
006a87b4  01 30 83 12                                      addne r3, r3, #1
006a87b8  04 30 85 15                                      strne r3, [r5, #4]
006a87bc  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006a87c0  04 40 8f e0                                      add r4, pc, r4
006a87c4  7c 50 8d e5                                      str r5, [sp, #0x7c]
006a87c8  00 00 50 e3                                      cmp r0, #0
006a87cc  01 00 00 0a                                      beq #0x6a87d8
006a87d0  6b d3 f1 eb                                      bl #0x31d584
006a87d4  7c 50 9d e5                                      ldr r5, [sp, #0x7c]
006a87d8  7f 30 e0 e3                                      mvn r3, #0x7f
006a87dc  05 00 a0 e1                                      mov r0, r5
006a87e0  78 10 8d e2                                      add r1, sp, #0x78
006a87e4  00 50 a0 e3                                      mov r5, #0
006a87e8  7a 30 cd e5                                      strb r3, [sp, #0x7a]
006a87ec  78 30 cd e5                                      strb r3, [sp, #0x78]
006a87f0  79 30 cd e5                                      strb r3, [sp, #0x79]
006a87f4  7b 50 cd e5                                      strb r5, [sp, #0x7b]
006a87f8  6d 5c fd eb                                      bl #0x5ff9b4
006a87fc  60 00 9d e5                                      ldr r0, [sp, #0x60]
006a8800  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006a8804  fc 33 9f e5                                      ldr r3, [pc, #0x3fc]
006a8808  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
006a880c  fe 25 a0 e3                                      mov r2, #0x3f800000
006a8810  c0 00 a0 e1                                      asr r0, r0, #1
006a8814  04 70 40 e2                                      sub r7, r0, #4
006a8818  00 e0 67 e2                                      rsb lr, r7, #0
006a881c  20 e0 8d e5                                      str lr, [sp, #0x20]
006a8820  03 c0 94 e7                                      ldr ip, [r4, r3]
006a8824  0e 00 57 e1                                      cmp r7, lr
006a8828  18 e0 91 e5                                      ldr lr, [r1, #0x18]
006a882c  3f 34 a0 e3                                      mov r3, #0x3f000000
006a8830  97 07 0a e0                                      mul sl, r7, r7
006a8834  24 e0 8d e5                                      str lr, [sp, #0x24]
006a8838  ff e1 dc e5                                      ldrb lr, [ip, #0x1ff]
006a883c  f0 c1 9c e5                                      ldr ip, [ip, #0x1f0]
006a8840  2c e0 8d e5                                      str lr, [sp, #0x2c]
006a8844  00 e0 a0 e3                                      mov lr, #0
006a8848  08 10 91 e5                                      ldr r1, [r1, #8]
006a884c  54 e0 8d e5                                      str lr, [sp, #0x54]
006a8850  00 e0 e0 e3                                      mvn lr, #0
006a8854  77 e0 cd e5                                      strb lr, [sp, #0x77]
006a8858  76 50 cd e5                                      strb r5, [sp, #0x76]
006a885c  74 50 cd e5                                      strb r5, [sp, #0x74]
006a8860  75 50 cd e5                                      strb r5, [sp, #0x75]
006a8864  5c 30 8d e5                                      str r3, [sp, #0x5c]
006a8868  58 20 8d e5                                      str r2, [sp, #0x58]
006a886c  28 c0 8d e5                                      str ip, [sp, #0x28]
006a8870  66 00 00 ba                                      blt #0x6a8a10
006a8874  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006a8878  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006a887c  20 90 9d e5                                      ldr sb, [sp, #0x20]
006a8880  00 00 8c e0                                      add r0, ip, r0
006a8884  9e 00 00 e0                                      mul r0, lr, r0
006a8888  68 c0 8d e2                                      add ip, sp, #0x68
006a888c  10 00 80 e2                                      add r0, r0, #0x10
006a8890  00 00 81 e0                                      add r0, r1, r0
006a8894  01 e0 8c e2                                      add lr, ip, #1
006a8898  14 00 8d e5                                      str r0, [sp, #0x14]
006a889c  01 10 8e e2                                      add r1, lr, #1
006a88a0  54 00 8d e2                                      add r0, sp, #0x54
006a88a4  34 c0 8d e5                                      str ip, [sp, #0x34]
006a88a8  38 e0 8d e5                                      str lr, [sp, #0x38]
006a88ac  3c 00 8d e5                                      str r0, [sp, #0x3c]
006a88b0  30 10 8d e5                                      str r1, [sp, #0x30]
006a88b4  28 20 9d e5                                      ldr r2, [sp, #0x28]
006a88b8  74 30 8d e2                                      add r3, sp, #0x74
006a88bc  99 09 08 e0                                      mul r8, sb, sb
006a88c0  02 20 e0 e1                                      mvn r2, r2
006a88c4  07 60 a0 e1                                      mov r6, r7
006a88c8  20 40 9d e5                                      ldr r4, [sp, #0x20]
006a88cc  00 50 a0 e3                                      mov r5, #0
006a88d0  18 20 8d e5                                      str r2, [sp, #0x18]
006a88d4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006a88d8  03 00 00 ea                                      b #0x6a88ec
006a88dc  04 00 57 e1                                      cmp r7, r4
006a88e0  04 50 85 e2                                      add r5, r5, #4
006a88e4  01 60 46 e2                                      sub r6, r6, #1
006a88e8  41 00 00 ba                                      blt #0x6a89f4
006a88ec  94 84 20 e0                                      mla r0, r4, r4, r8
006a88f0  01 40 84 e2                                      add r4, r4, #1
006a88f4  00 30 6a e0                                      rsb r3, sl, r0
006a88f8  00 00 53 e3                                      cmp r3, #0
006a88fc  f6 ff ff aa                                      bge #0x6a88dc
006a8900  17 98 f1 eb                                      bl #0x30e964
006a8904  06 96 f1 eb                                      bl #0x30e124
006a8908  00 b0 a0 e1                                      mov fp, r0
006a890c  06 00 a0 e1                                      mov r0, r6
006a8910  13 98 f1 eb                                      bl #0x30e964
006a8914  0b 10 a0 e1                                      mov r1, fp
006a8918  00 30 a0 e1                                      mov r3, r0
006a891c  fe 05 a0 e3                                      mov r0, #0x3f800000
006a8920  0c 30 8d e5                                      str r3, [sp, #0xc]
006a8924  da 98 f1 eb                                      bl #0x30ec94
006a8928  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006a892c  00 10 a0 e1                                      mov r1, r0
006a8930  03 00 a0 e1                                      mov r0, r3
006a8934  0c 99 f1 eb                                      bl #0x30ed6c
006a8938  a7 96 f1 eb                                      bl #0x30e3dc
006a893c  00 00 59 e3                                      cmp sb, #0
006a8940  03 00 00 da                                      ble #0x6a8954
006a8944  00 10 a0 e1                                      mov r1, r0
006a8948  db 0f 00 e3                                      movw r0, #0xfdb
006a894c  c9 00 44 e3                                      movt r0, #0x40c9
006a8950  95 96 f1 eb                                      bl #0x30e3ac
006a8954  db 1f 00 e3                                      movw r1, #0xfdb
006a8958  c9 1f 43 e3                                      movt r1, #0x3fc9
006a895c  92 96 f1 eb                                      bl #0x30e3ac
006a8960  54 00 8d e5                                      str r0, [sp, #0x54]
006a8964  07 00 a0 e1                                      mov r0, r7
006a8968  fd 97 f1 eb                                      bl #0x30e964
006a896c  00 10 a0 e1                                      mov r1, r0
006a8970  0b 00 a0 e1                                      mov r0, fp
006a8974  c6 98 f1 eb                                      bl #0x30ec94
006a8978  3f 14 a0 e3                                      mov r1, #0x3f000000
006a897c  10 00 8d e5                                      str r0, [sp, #0x10]
006a8980  cb 96 f1 eb                                      bl #0x30e4b4
006a8984  00 00 50 e3                                      cmp r0, #0
006a8988  74 00 00 1a                                      bne #0x6a8b60
006a898c  33 13 03 e3                                      movw r1, #0x3333
006a8990  73 1f 43 e3                                      movt r1, #0x3f73
006a8994  10 00 9d e5                                      ldr r0, [sp, #0x10]
006a8998  c5 96 f1 eb                                      bl #0x30e4b4
006a899c  33 13 03 e3                                      movw r1, #0x3333
006a89a0  00 00 50 e3                                      cmp r0, #0
006a89a4  73 1f 43 e3                                      movt r1, #0x3f73
006a89a8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006a89ac  ca ff ff 0a                                      beq #0x6a88dc
006a89b0  7d 96 f1 eb                                      bl #0x30e3ac
006a89b4  00 10 06 e3                                      movw r1, #0x6000
006a89b8  9f 15 44 e3                                      movt r1, #0x459f
006a89bc  ea 98 f1 eb                                      bl #0x30ed6c
006a89c0  c1 96 f1 eb                                      bl #0x30e4cc
006a89c4  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a89c8  18 20 9d e5                                      ldr r2, [sp, #0x18]
006a89cc  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006a89d0  05 30 91 e7                                      ldr r3, [r1, r5]
006a89d4  ff 00 60 e2                                      rsb r0, r0, #0xff
006a89d8  04 00 57 e1                                      cmp r7, r4
006a89dc  03 30 02 e0                                      and r3, r2, r3
006a89e0  10 3c 83 e1                                      orr r3, r3, r0, lsl ip
006a89e4  01 60 46 e2                                      sub r6, r6, #1
006a89e8  05 30 81 e7                                      str r3, [r1, r5]
006a89ec  04 50 85 e2                                      add r5, r5, #4
006a89f0  bd ff ff aa                                      bge #0x6a88ec
006a89f4  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006a89f8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006a89fc  01 90 89 e2                                      add sb, sb, #1
006a8a00  09 00 57 e1                                      cmp r7, sb
006a8a04  00 e0 8e e0                                      add lr, lr, r0
006a8a08  14 e0 8d e5                                      str lr, [sp, #0x14]
006a8a0c  a8 ff ff aa                                      bge #0x6a88b4
006a8a10  44 10 9d e5                                      ldr r1, [sp, #0x44]
006a8a14  01 00 51 e3                                      cmp r1, #1
006a8a18  1d 00 00 da                                      ble #0x6a8a94
006a8a1c  00 10 a0 e3                                      mov r1, #0
006a8a20  2c 00 a0 e3                                      mov r0, #0x2c
006a8a24  e0 2d fa eb                                      bl #0x5341ac
006a8a28  48 20 9d e5                                      ldr r2, [sp, #0x48]
006a8a2c  0c 10 a0 e3                                      mov r1, #0xc
006a8a30  00 40 a0 e1                                      mov r4, r0
006a8a34  b5 65 fd eb                                      bl #0x602110
006a8a38  00 00 54 e3                                      cmp r4, #0
006a8a3c  70 40 8d e5                                      str r4, [sp, #0x70]
006a8a40  04 30 94 15                                      ldrne r3, [r4, #4]
006a8a44  00 20 a0 e3                                      mov r2, #0
006a8a48  70 10 8d e2                                      add r1, sp, #0x70
006a8a4c  01 30 83 12                                      addne r3, r3, #1
006a8a50  04 30 84 15                                      strne r3, [r4, #4]
006a8a54  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006a8a58  68 63 fd eb                                      bl #0x601800
006a8a5c  70 30 9d e5                                      ldr r3, [sp, #0x70]
006a8a60  00 00 53 e3                                      cmp r3, #0
006a8a64  04 20 93 15                                      ldrne r2, [r3, #4]
006a8a68  01 20 82 12                                      addne r2, r2, #1
006a8a6c  04 20 83 15                                      strne r2, [r3, #4]
006a8a70  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006a8a74  7c 30 8d e5                                      str r3, [sp, #0x7c]
006a8a78  00 00 50 e3                                      cmp r0, #0
006a8a7c  00 00 00 0a                                      beq #0x6a8a84
006a8a80  bf d2 f1 eb                                      bl #0x31d584
006a8a84  70 00 9d e5                                      ldr r0, [sp, #0x70]
006a8a88  00 00 50 e3                                      cmp r0, #0
006a8a8c  00 00 00 0a                                      beq #0x6a8a94
006a8a90  bb d2 f1 eb                                      bl #0x31d584
006a8a94  40 20 9d e5                                      ldr r2, [sp, #0x40]
006a8a98  50 31 92 e5                                      ldr r3, [r2, #0x150]
006a8a9c  03 00 a0 e1                                      mov r0, r3
006a8aa0  00 30 93 e5                                      ldr r3, [r3]
006a8aa4  0f e0 a0 e1                                      mov lr, pc
006a8aa8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006a8aac  10 10 a0 e3                                      mov r1, #0x10
006a8ab0  00 30 90 e5                                      ldr r3, [r0]
006a8ab4  00 20 a0 e3                                      mov r2, #0
006a8ab8  00 40 a0 e1                                      mov r4, r0
006a8abc  88 50 90 e5                                      ldr r5, [r0, #0x88]
006a8ac0  0f e0 a0 e1                                      mov lr, pc
006a8ac4  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006a8ac8  3c 21 9f e5                                      ldr r2, [pc, #0x13c]
006a8acc  01 c0 a0 e3                                      mov ip, #1
006a8ad0  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
006a8ad4  02 20 8f e0                                      add r2, pc, r2
006a8ad8  6c 00 8d e2                                      add r0, sp, #0x6c
006a8adc  7c 30 8d e2                                      add r3, sp, #0x7c
006a8ae0  00 c0 8d e5                                      str ip, [sp]
006a8ae4  00 c0 a0 e3                                      mov ip, #0
006a8ae8  04 c0 8d e5                                      str ip, [sp, #4]
006a8aec  ec 0f fd eb                                      bl #0x5ecaa4
006a8af0  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006a8af4  55 52 e0 e7                                      ubfx r5, r5, #4, #1
006a8af8  00 00 53 e3                                      cmp r3, #0
006a8afc  04 20 93 15                                      ldrne r2, [r3, #4]
006a8b00  01 20 82 12                                      addne r2, r2, #1
006a8b04  04 20 83 15                                      strne r2, [r3, #4]
006a8b08  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006a8b0c  80 01 9c e5                                      ldr r0, [ip, #0x180]
006a8b10  80 31 8c e5                                      str r3, [ip, #0x180]
006a8b14  00 00 50 e3                                      cmp r0, #0
006a8b18  00 00 00 0a                                      beq #0x6a8b20
006a8b1c  98 d2 f1 eb                                      bl #0x31d584
006a8b20  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006a8b24  00 00 50 e3                                      cmp r0, #0
006a8b28  00 00 00 0a                                      beq #0x6a8b30
006a8b2c  94 d2 f1 eb                                      bl #0x31d584
006a8b30  04 00 a0 e1                                      mov r0, r4
006a8b34  05 20 a0 e1                                      mov r2, r5
006a8b38  00 30 94 e5                                      ldr r3, [r4]
006a8b3c  10 10 a0 e3                                      mov r1, #0x10
006a8b40  0f e0 a0 e1                                      mov lr, pc
006a8b44  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006a8b48  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006a8b4c  00 00 50 e3                                      cmp r0, #0
006a8b50  00 00 00 0a                                      beq #0x6a8b58
006a8b54  8a d2 f1 eb                                      bl #0x31d584
006a8b58  84 d0 8d e2                                      add sp, sp, #0x84
006a8b5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a8b60  3f c4 a0 e3                                      mov ip, #0x3f000000
006a8b64  fe e5 a0 e3                                      mov lr, #0x3f800000
006a8b68  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006a8b6c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006a8b70  5c c0 8d e5                                      str ip, [sp, #0x5c]
006a8b74  58 e0 8d e5                                      str lr, [sp, #0x58]
006a8b78  80 fe ff eb                                      bl #0x6a8580
006a8b7c  77 00 dd e5                                      ldrb r0, [sp, #0x77]
006a8b80  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006a8b84  74 10 dd e5                                      ldrb r1, [sp, #0x74]
006a8b88  75 20 dd e5                                      ldrb r2, [sp, #0x75]
006a8b8c  76 30 dd e5                                      ldrb r3, [sp, #0x76]
006a8b90  00 00 cc e5                                      strb r0, [ip]
006a8b94  38 e0 9d e5                                      ldr lr, [sp, #0x38]
006a8b98  00 10 ce e5                                      strb r1, [lr]
006a8b9c  30 00 9d e5                                      ldr r0, [sp, #0x30]
006a8ba0  cd 1c 0c e3                                      movw r1, #0xcccd
006a8ba4  0c 1f 43 e3                                      movt r1, #0x3f0c
006a8ba8  00 20 c0 e5                                      strb r2, [r0]
006a8bac  01 30 c0 e5                                      strb r3, [r0, #1]
006a8bb0  14 20 9d e5                                      ldr r2, [sp, #0x14]
006a8bb4  68 b0 9d e5                                      ldr fp, [sp, #0x68]
006a8bb8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006a8bbc  05 b0 82 e7                                      str fp, [r2, r5]
006a8bc0  79 97 f1 eb                                      bl #0x30e9ac
006a8bc4  00 00 50 e3                                      cmp r0, #0
006a8bc8  3f 14 a0 e3                                      mov r1, #0x3f000000
006a8bcc  10 00 9d e5                                      ldr r0, [sp, #0x10]
006a8bd0  6d ff ff 0a                                      beq #0x6a898c
006a8bd4  f4 95 f1 eb                                      bl #0x30e3ac
006a8bd8  00 10 06 e3                                      movw r1, #0x6000
006a8bdc  9f 15 44 e3                                      movt r1, #0x459f
006a8be0  61 98 f1 eb                                      bl #0x30ed6c
006a8be4  38 96 f1 eb                                      bl #0x30e4cc
006a8be8  18 30 9d e5                                      ldr r3, [sp, #0x18]
006a8bec  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006a8bf0  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006a8bf4  0b b0 03 e0                                      and fp, r3, fp
006a8bf8  10 bc 8b e1                                      orr fp, fp, r0, lsl ip
006a8bfc  05 b0 8e e7                                      str fp, [lr, r5]
006a8c00  61 ff ff ea                                      b #0x6a898c
; mapping-symbol data/literal pool
006a8c04  d0 c2 2e 00 34 1f 00 00 9c 26 24 00              .byte 0xd0, 0xc2, 0x2e, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x9c, 0x26, 0x24, 0x00

; FUNCTION 0x006a8fbc, declared_size=2344, range_size=2344, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialogC1EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIColorSelectDialog::CGUIColorSelectDialog(wchar_t const*, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
006a8fbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a8fc0  f0 68 9f e5                                      ldr r6, [pc, #0x8f0]
006a8fc4  f0 e8 9f e5                                      ldr lr, [pc, #0x8f0]
006a8fc8  f0 c8 9f e5                                      ldr ip, [pc, #0x8f0]
006a8fcc  06 60 8f e0                                      add r6, pc, r6
006a8fd0  0e e0 96 e7                                      ldr lr, [r6, lr]
006a8fd4  0c c0 96 e7                                      ldr ip, [r6, ip]
006a8fd8  01 a0 a0 e3                                      mov sl, #1
006a8fdc  24 50 9e e5                                      ldr r5, [lr, #0x24]
006a8fe0  08 c0 8c e2                                      add ip, ip, #8
006a8fe4  88 c1 80 e5                                      str ip, [r0, #0x188]
006a8fe8  8c a1 80 e5                                      str sl, [r0, #0x18c]
006a8fec  84 51 80 e5                                      str r5, [r0, #0x184]
006a8ff0  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
006a8ff4  28 80 9e e5                                      ldr r8, [lr, #0x28]
006a8ff8  61 7f 80 e2                                      add r7, r0, #0x184
006a8ffc  a4 d0 4d e2                                      sub sp, sp, #0xa4
006a9000  05 80 87 e7                                      str r8, [r7, r5]
006a9004  40 70 93 e5                                      ldr r7, [r3, #0x40]
006a9008  38 50 93 e5                                      ldr r5, [r3, #0x38]
006a900c  44 80 93 e5                                      ldr r8, [r3, #0x44]
006a9010  57 7f 47 e2                                      sub r7, r7, #0x15c
006a9014  02 70 47 e2                                      sub r7, r7, #2
006a9018  07 50 65 e0                                      rsb r5, r5, r7
006a901c  a5 5f 85 e0                                      add r5, r5, r5, lsr #31
006a9020  3c c0 93 e5                                      ldr ip, [r3, #0x3c]
006a9024  55 5a a0 e1                                      asr r5, r5, sl
006a9028  4b 8f 48 e2                                      sub r8, r8, #0x12c
006a902c  08 c0 6c e0                                      rsb ip, ip, r8
006a9030  ac cf 8c e0                                      add ip, ip, ip, lsr #31
006a9034  01 70 a0 e1                                      mov r7, r1
006a9038  5c 8a a0 e1                                      asr r8, ip, sl
006a903c  57 cf 85 e2                                      add ip, r5, #0x15c
006a9040  02 c0 8c e2                                      add ip, ip, #2
006a9044  70 c0 8d e5                                      str ip, [sp, #0x70]
006a9048  c8 c0 9d e5                                      ldr ip, [sp, #0xc8]
006a904c  04 10 8e e2                                      add r1, lr, #4
006a9050  4b ef 88 e2                                      add lr, r8, #0x12c
006a9054  00 c0 8d e5                                      str ip, [sp]
006a9058  68 c0 8d e2                                      add ip, sp, #0x68
006a905c  00 40 a0 e1                                      mov r4, r0
006a9060  74 e0 8d e5                                      str lr, [sp, #0x74]
006a9064  04 c0 8d e5                                      str ip, [sp, #4]
006a9068  68 50 8d e5                                      str r5, [sp, #0x68]
006a906c  6c 80 8d e5                                      str r8, [sp, #0x6c]
006a9070  02 80 a0 e1                                      mov r8, r2
006a9074  1e ff ff eb                                      bl #0x6a8cf4
006a9078  44 38 9f e5                                      ldr r3, [pc, #0x844]
006a907c  00 50 a0 e3                                      mov r5, #0
006a9080  07 00 a0 e1                                      mov r0, r7
006a9084  03 30 96 e7                                      ldr r3, [r6, r3]
006a9088  58 51 84 e5                                      str r5, [r4, #0x158]
006a908c  5c 51 84 e5                                      str r5, [r4, #0x15c]
006a9090  c4 20 83 e2                                      add r2, r3, #0xc4
006a9094  10 10 83 e2                                      add r1, r3, #0x10
006a9098  a4 30 83 e2                                      add r3, r3, #0xa4
006a909c  84 31 84 e5                                      str r3, [r4, #0x184]
006a90a0  00 10 84 e5                                      str r1, [r4]
006a90a4  88 21 84 e5                                      str r2, [r4, #0x188]
006a90a8  60 51 c4 e5                                      strb r5, [r4, #0x160]
006a90ac  70 51 84 e5                                      str r5, [r4, #0x170]
006a90b0  74 51 84 e5                                      str r5, [r4, #0x174]
006a90b4  78 51 84 e5                                      str r5, [r4, #0x178]
006a90b8  80 51 84 e5                                      str r5, [r4, #0x180]
006a90bc  f1 96 f1 eb                                      bl #0x30ec88
006a90c0  07 10 a0 e1                                      mov r1, r7
006a90c4  00 21 87 e0                                      add r2, r7, r0, lsl #2
006a90c8  a0 00 84 e2                                      add r0, r4, #0xa0
006a90cc  33 e8 f1 eb                                      bl #0x3231a0
006a90d0  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a90d4  03 00 a0 e1                                      mov r0, r3
006a90d8  00 30 93 e5                                      ldr r3, [r3]
006a90dc  0f e0 a0 e1                                      mov lr, pc
006a90e0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a90e4  00 30 98 e5                                      ldr r3, [r8]
006a90e8  00 60 a0 e1                                      mov r6, r0
006a90ec  08 00 a0 e1                                      mov r0, r8
006a90f0  0f e0 a0 e1                                      mov lr, pc
006a90f4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a90f8  02 10 a0 e3                                      mov r1, #2
006a90fc  00 30 90 e5                                      ldr r3, [r0]
006a9100  0f e0 a0 e1                                      mov lr, pc
006a9104  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a9108  30 30 94 e5                                      ldr r3, [r4, #0x30]
006a910c  50 81 94 e5                                      ldr r8, [r4, #0x150]
006a9110  28 20 94 e5                                      ldr r2, [r4, #0x28]
006a9114  04 30 43 e2                                      sub r3, r3, #4
006a9118  00 10 98 e5                                      ldr r1, [r8]
006a911c  03 30 62 e0                                      rsb r3, r2, r3
006a9120  03 30 60 e0                                      rsb r3, r0, r3
006a9124  78 70 91 e5                                      ldr r7, [r1, #0x78]
006a9128  03 20 80 e2                                      add r2, r0, #3
006a912c  58 30 8d e5                                      str r3, [sp, #0x58]
006a9130  00 00 83 e0                                      add r0, r3, r0
006a9134  05 00 56 e1                                      cmp r6, r5
006a9138  03 30 a0 e3                                      mov r3, #3
006a913c  5c 30 8d e5                                      str r3, [sp, #0x5c]
006a9140  60 00 8d e5                                      str r0, [sp, #0x60]
006a9144  64 20 8d e5                                      str r2, [sp, #0x64]
006a9148  b2 01 00 0a                                      beq #0x6a9818
006a914c  04 10 a0 e3                                      mov r1, #4
006a9150  00 30 96 e5                                      ldr r3, [r6]
006a9154  06 00 a0 e1                                      mov r0, r6
006a9158  0f e0 a0 e1                                      mov lr, pc
006a915c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006a9160  60 37 9f e5                                      ldr r3, [pc, #0x760]
006a9164  04 00 8d e5                                      str r0, [sp, #4]
006a9168  58 10 8d e2                                      add r1, sp, #0x58
006a916c  03 30 8f e0                                      add r3, pc, r3
006a9170  00 30 8d e5                                      str r3, [sp]
006a9174  04 20 a0 e1                                      mov r2, r4
006a9178  00 30 e0 e3                                      mvn r3, #0
006a917c  08 00 a0 e1                                      mov r0, r8
006a9180  37 ff 2f e1                                      blx r7
006a9184  64 01 84 e5                                      str r0, [r4, #0x164]
006a9188  00 30 96 e5                                      ldr r3, [r6]
006a918c  06 00 a0 e1                                      mov r0, r6
006a9190  0f e0 a0 e1                                      mov lr, pc
006a9194  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006a9198  05 00 50 e1                                      cmp r0, r5
006a919c  42 00 00 0a                                      beq #0x6a92ac
006a91a0  64 81 94 e5                                      ldr r8, [r4, #0x164]
006a91a4  00 30 96 e5                                      ldr r3, [r6]
006a91a8  06 00 a0 e1                                      mov r0, r6
006a91ac  00 20 98 e5                                      ldr r2, [r8]
006a91b0  90 70 92 e5                                      ldr r7, [r2, #0x90]
006a91b4  0f e0 a0 e1                                      mov lr, pc
006a91b8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006a91bc  00 10 a0 e1                                      mov r1, r0
006a91c0  08 00 a0 e1                                      mov r0, r8
006a91c4  37 ff 2f e1                                      blx r7
006a91c8  64 81 94 e5                                      ldr r8, [r4, #0x164]
006a91cc  02 10 a0 e3                                      mov r1, #2
006a91d0  00 30 96 e5                                      ldr r3, [r6]
006a91d4  00 20 98 e5                                      ldr r2, [r8]
006a91d8  06 00 a0 e1                                      mov r0, r6
006a91dc  94 70 92 e5                                      ldr r7, [r2, #0x94]
006a91e0  0f e0 a0 e1                                      mov lr, pc
006a91e4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a91e8  12 10 a0 e3                                      mov r1, #0x12
006a91ec  00 90 a0 e1                                      mov sb, r0
006a91f0  00 30 96 e5                                      ldr r3, [r6]
006a91f4  06 00 a0 e1                                      mov r0, r6
006a91f8  0f e0 a0 e1                                      mov lr, pc
006a91fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a9200  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006a9204  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006a9208  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006a920c  22 20 cd e5                                      strb r2, [sp, #0x22]
006a9210  23 30 cd e5                                      strb r3, [sp, #0x23]
006a9214  20 00 cd e5                                      strb r0, [sp, #0x20]
006a9218  21 10 cd e5                                      strb r1, [sp, #0x21]
006a921c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006a9220  09 20 a0 e1                                      mov r2, sb
006a9224  08 00 a0 e1                                      mov r0, r8
006a9228  01 30 a0 e1                                      mov r3, r1
006a922c  9c 10 8d e5                                      str r1, [sp, #0x9c]
006a9230  00 50 8d e5                                      str r5, [sp]
006a9234  05 10 a0 e1                                      mov r1, r5
006a9238  37 ff 2f e1                                      blx r7
006a923c  64 81 94 e5                                      ldr r8, [r4, #0x164]
006a9240  02 10 a0 e3                                      mov r1, #2
006a9244  00 30 96 e5                                      ldr r3, [r6]
006a9248  00 20 98 e5                                      ldr r2, [r8]
006a924c  06 00 a0 e1                                      mov r0, r6
006a9250  94 70 92 e5                                      ldr r7, [r2, #0x94]
006a9254  0f e0 a0 e1                                      mov lr, pc
006a9258  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a925c  12 10 a0 e3                                      mov r1, #0x12
006a9260  00 90 a0 e1                                      mov sb, r0
006a9264  00 30 96 e5                                      ldr r3, [r6]
006a9268  06 00 a0 e1                                      mov r0, r6
006a926c  0f e0 a0 e1                                      mov lr, pc
006a9270  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a9274  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006a9278  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006a927c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006a9280  21 10 cd e5                                      strb r1, [sp, #0x21]
006a9284  22 20 cd e5                                      strb r2, [sp, #0x22]
006a9288  20 00 cd e5                                      strb r0, [sp, #0x20]
006a928c  23 30 cd e5                                      strb r3, [sp, #0x23]
006a9290  20 30 9d e5                                      ldr r3, [sp, #0x20]
006a9294  00 50 8d e5                                      str r5, [sp]
006a9298  08 00 a0 e1                                      mov r0, r8
006a929c  98 30 8d e5                                      str r3, [sp, #0x98]
006a92a0  0a 10 a0 e1                                      mov r1, sl
006a92a4  09 20 a0 e1                                      mov r2, sb
006a92a8  37 ff 2f e1                                      blx r7
006a92ac  64 31 94 e5                                      ldr r3, [r4, #0x164]
006a92b0  03 00 a0 e1                                      mov r0, r3
006a92b4  01 10 a0 e3                                      mov r1, #1
006a92b8  00 30 93 e5                                      ldr r3, [r3]
006a92bc  0f e0 a0 e1                                      mov lr, pc
006a92c0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a92c4  64 31 94 e5                                      ldr r3, [r4, #0x164]
006a92c8  00 50 a0 e3                                      mov r5, #0
006a92cc  01 10 a0 e3                                      mov r1, #1
006a92d0  34 51 c3 e5                                      strb r5, [r3, #0x134]
006a92d4  01 20 a0 e1                                      mov r2, r1
006a92d8  64 01 94 e5                                      ldr r0, [r4, #0x164]
006a92dc  05 30 a0 e1                                      mov r3, r5
006a92e0  00 50 8d e5                                      str r5, [sp]
006a92e4  55 2d fa eb                                      bl #0x534840
006a92e8  64 31 94 e5                                      ldr r3, [r4, #0x164]
006a92ec  05 00 56 e1                                      cmp r6, r5
006a92f0  00 20 93 e5                                      ldr r2, [r3]
006a92f4  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006a92f8  02 30 83 e0                                      add r3, r3, r2
006a92fc  04 20 93 e5                                      ldr r2, [r3, #4]
006a9300  01 20 82 e2                                      add r2, r2, #1
006a9304  04 20 83 e5                                      str r2, [r3, #4]
006a9308  50 81 94 e5                                      ldr r8, [r4, #0x150]
006a930c  30 20 94 e5                                      ldr r2, [r4, #0x30]
006a9310  28 30 94 e5                                      ldr r3, [r4, #0x28]
006a9314  00 10 98 e5                                      ldr r1, [r8]
006a9318  02 30 63 e0                                      rsb r3, r3, r2
006a931c  50 20 43 e2                                      sub r2, r3, #0x50
006a9320  0a 30 43 e2                                      sub r3, r3, #0xa
006a9324  78 70 91 e5                                      ldr r7, [r1, #0x78]
006a9328  48 20 8d e5                                      str r2, [sp, #0x48]
006a932c  50 30 8d e5                                      str r3, [sp, #0x50]
006a9330  1e 20 a0 e3                                      mov r2, #0x1e
006a9334  32 30 a0 e3                                      mov r3, #0x32
006a9338  4c 20 8d e5                                      str r2, [sp, #0x4c]
006a933c  54 30 8d e5                                      str r3, [sp, #0x54]
006a9340  31 01 00 0a                                      beq #0x6a980c
006a9344  05 10 a0 e1                                      mov r1, r5
006a9348  00 30 96 e5                                      ldr r3, [r6]
006a934c  06 00 a0 e1                                      mov r0, r6
006a9350  0f e0 a0 e1                                      mov lr, pc
006a9354  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006a9358  00 50 a0 e3                                      mov r5, #0
006a935c  04 20 a0 e1                                      mov r2, r4
006a9360  00 00 8d e5                                      str r0, [sp]
006a9364  00 30 e0 e3                                      mvn r3, #0
006a9368  08 00 a0 e1                                      mov r0, r8
006a936c  48 10 8d e2                                      add r1, sp, #0x48
006a9370  04 50 8d e5                                      str r5, [sp, #4]
006a9374  37 ff 2f e1                                      blx r7
006a9378  68 01 84 e5                                      str r0, [r4, #0x168]
006a937c  00 30 90 e5                                      ldr r3, [r0]
006a9380  01 10 a0 e3                                      mov r1, #1
006a9384  0f e0 a0 e1                                      mov lr, pc
006a9388  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a938c  01 10 a0 e3                                      mov r1, #1
006a9390  01 20 a0 e1                                      mov r2, r1
006a9394  68 01 94 e5                                      ldr r0, [r4, #0x168]
006a9398  05 30 a0 e1                                      mov r3, r5
006a939c  00 50 8d e5                                      str r5, [sp]
006a93a0  26 2d fa eb                                      bl #0x534840
006a93a4  68 31 94 e5                                      ldr r3, [r4, #0x168]
006a93a8  05 00 56 e1                                      cmp r6, r5
006a93ac  00 20 93 e5                                      ldr r2, [r3]
006a93b0  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006a93b4  02 30 83 e0                                      add r3, r3, r2
006a93b8  04 20 93 e5                                      ldr r2, [r3, #4]
006a93bc  01 20 82 e2                                      add r2, r2, #1
006a93c0  04 20 83 e5                                      str r2, [r3, #4]
006a93c4  50 81 94 e5                                      ldr r8, [r4, #0x150]
006a93c8  30 20 94 e5                                      ldr r2, [r4, #0x30]
006a93cc  28 30 94 e5                                      ldr r3, [r4, #0x28]
006a93d0  00 10 98 e5                                      ldr r1, [r8]
006a93d4  02 30 63 e0                                      rsb r3, r3, r2
006a93d8  50 20 43 e2                                      sub r2, r3, #0x50
006a93dc  0a 30 43 e2                                      sub r3, r3, #0xa
006a93e0  78 70 91 e5                                      ldr r7, [r1, #0x78]
006a93e4  38 20 8d e5                                      str r2, [sp, #0x38]
006a93e8  40 30 8d e5                                      str r3, [sp, #0x40]
006a93ec  37 20 a0 e3                                      mov r2, #0x37
006a93f0  4b 30 a0 e3                                      mov r3, #0x4b
006a93f4  3c 20 8d e5                                      str r2, [sp, #0x3c]
006a93f8  44 30 8d e5                                      str r3, [sp, #0x44]
006a93fc  ff 00 00 0a                                      beq #0x6a9800
006a9400  06 00 a0 e1                                      mov r0, r6
006a9404  00 30 96 e5                                      ldr r3, [r6]
006a9408  01 10 a0 e3                                      mov r1, #1
006a940c  0f e0 a0 e1                                      mov lr, pc
006a9410  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006a9414  00 50 a0 e3                                      mov r5, #0
006a9418  04 20 a0 e1                                      mov r2, r4
006a941c  00 00 8d e5                                      str r0, [sp]
006a9420  00 30 e0 e3                                      mvn r3, #0
006a9424  38 10 8d e2                                      add r1, sp, #0x38
006a9428  04 50 8d e5                                      str r5, [sp, #4]
006a942c  08 00 a0 e1                                      mov r0, r8
006a9430  37 ff 2f e1                                      blx r7
006a9434  6c 01 84 e5                                      str r0, [r4, #0x16c]
006a9438  00 30 90 e5                                      ldr r3, [r0]
006a943c  01 10 a0 e3                                      mov r1, #1
006a9440  0f e0 a0 e1                                      mov lr, pc
006a9444  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a9448  01 10 a0 e3                                      mov r1, #1
006a944c  01 20 a0 e1                                      mov r2, r1
006a9450  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
006a9454  05 30 a0 e1                                      mov r3, r5
006a9458  00 50 8d e5                                      str r5, [sp]
006a945c  f7 2c fa eb                                      bl #0x534840
006a9460  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
006a9464  00 20 93 e5                                      ldr r2, [r3]
006a9468  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006a946c  02 30 83 e0                                      add r3, r3, r2
006a9470  04 20 93 e5                                      ldr r2, [r3, #4]
006a9474  01 20 82 e2                                      add r2, r2, #1
006a9478  04 20 83 e5                                      str r2, [r3, #4]
006a947c  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a9480  28 50 8d e5                                      str r5, [sp, #0x28]
006a9484  2c 50 8d e5                                      str r5, [sp, #0x2c]
006a9488  30 50 8d e5                                      str r5, [sp, #0x30]
006a948c  34 50 8d e5                                      str r5, [sp, #0x34]
006a9490  03 00 a0 e1                                      mov r0, r3
006a9494  00 30 93 e5                                      ldr r3, [r3]
006a9498  0f e0 a0 e1                                      mov lr, pc
006a949c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006a94a0  24 24 9f e5                                      ldr r2, [pc, #0x424]
006a94a4  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
006a94a8  05 30 a0 e1                                      mov r3, r5
006a94ac  02 20 8f e0                                      add r2, pc, r2
006a94b0  94 00 8d e2                                      add r0, sp, #0x94
006a94b4  55 0f fd eb                                      bl #0x5ed210
006a94b8  94 30 9d e5                                      ldr r3, [sp, #0x94]
006a94bc  05 00 53 e1                                      cmp r3, r5
006a94c0  04 20 93 15                                      ldrne r2, [r3, #4]
006a94c4  01 20 82 12                                      addne r2, r2, #1
006a94c8  04 20 83 15                                      strne r2, [r3, #4]
006a94cc  80 01 94 e5                                      ldr r0, [r4, #0x180]
006a94d0  80 31 84 e5                                      str r3, [r4, #0x180]
006a94d4  00 00 50 e3                                      cmp r0, #0
006a94d8  00 00 00 0a                                      beq #0x6a94e0
006a94dc  28 d0 f1 eb                                      bl #0x31d584
006a94e0  94 00 9d e5                                      ldr r0, [sp, #0x94]
006a94e4  00 00 50 e3                                      cmp r0, #0
006a94e8  00 00 00 0a                                      beq #0x6a94f0
006a94ec  24 d0 f1 eb                                      bl #0x31d584
006a94f0  80 31 94 e5                                      ldr r3, [r4, #0x180]
006a94f4  00 00 53 e3                                      cmp r3, #0
006a94f8  d3 00 00 0a                                      beq #0x6a984c
006a94fc  50 01 94 e5                                      ldr r0, [r4, #0x150]
006a9500  14 30 a0 e3                                      mov r3, #0x14
006a9504  28 30 8d e5                                      str r3, [sp, #0x28]
006a9508  2c 30 8d e5                                      str r3, [sp, #0x2c]
006a950c  00 20 90 e5                                      ldr r2, [r0]
006a9510  00 b0 e0 e3                                      mvn fp, #0
006a9514  00 80 a0 e3                                      mov r8, #0
006a9518  8c c0 92 e5                                      ldr ip, [r2, #0x8c]
006a951c  06 1d 84 e2                                      add r1, r4, #0x180
006a9520  80 20 8d e2                                      add r2, sp, #0x80
006a9524  84 30 8d e5                                      str r3, [sp, #0x84]
006a9528  80 30 8d e5                                      str r3, [sp, #0x80]
006a952c  00 40 8d e5                                      str r4, [sp]
006a9530  01 30 a0 e3                                      mov r3, #1
006a9534  04 b0 8d e5                                      str fp, [sp, #4]
006a9538  08 80 8d e5                                      str r8, [sp, #8]
006a953c  3c ff 2f e1                                      blx ip
006a9540  7c 01 84 e5                                      str r0, [r4, #0x17c]
006a9544  00 30 90 e5                                      ldr r3, [r0]
006a9548  01 10 a0 e3                                      mov r1, #1
006a954c  0f e0 a0 e1                                      mov lr, pc
006a9550  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a9554  74 53 9f e5                                      ldr r5, [pc, #0x374]
006a9558  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006a955c  05 50 8f e0                                      add r5, pc, r5
006a9560  00 20 93 e5                                      ldr r2, [r3]
006a9564  53 1f 85 e2                                      add r1, r5, #0x14c
006a9568  14 10 8d e5                                      str r1, [sp, #0x14]
006a956c  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006a9570  17 1e 84 e2                                      add r1, r4, #0x170
006a9574  18 10 8d e5                                      str r1, [sp, #0x18]
006a9578  02 30 83 e0                                      add r3, r3, r2
006a957c  04 20 93 e5                                      ldr r2, [r3, #4]
006a9580  28 10 8d e2                                      add r1, sp, #0x28
006a9584  10 10 8d e5                                      str r1, [sp, #0x10]
006a9588  01 20 82 e2                                      add r2, r2, #1
006a958c  04 20 83 e5                                      str r2, [r3, #4]
006a9590  78 30 8d e2                                      add r3, sp, #0x78
006a9594  88 50 85 e2                                      add r5, r5, #0x88
006a9598  1c 30 8d e5                                      str r3, [sp, #0x1c]
006a959c  82 00 00 ea                                      b #0x6a97ac
006a95a0  0c 70 15 e5                                      ldr r7, [r5, #-0xc]
006a95a4  08 60 15 e5                                      ldr r6, [r5, #-8]
006a95a8  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a95ac  0f a0 87 e2                                      add sl, r7, #0xf
006a95b0  14 90 86 e2                                      add sb, r6, #0x14
006a95b4  28 70 8d e5                                      str r7, [sp, #0x28]
006a95b8  2c 60 8d e5                                      str r6, [sp, #0x2c]
006a95bc  30 a0 8d e5                                      str sl, [sp, #0x30]
006a95c0  34 90 8d e5                                      str sb, [sp, #0x34]
006a95c4  00 c0 93 e5                                      ldr ip, [r3]
006a95c8  03 00 a0 e1                                      mov r0, r3
006a95cc  00 80 8d e5                                      str r8, [sp]
006a95d0  08 30 a0 e1                                      mov r3, r8
006a95d4  10 08 8d e9                                      stmib sp, {r4, fp}
006a95d8  0c 80 8d e5                                      str r8, [sp, #0xc]
006a95dc  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a95e0  0f e0 a0 e1                                      mov lr, pc
006a95e4  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
006a95e8  01 10 a0 e3                                      mov r1, #1
006a95ec  00 30 90 e5                                      ldr r3, [r0]
006a95f0  0f e0 a0 e1                                      mov lr, pc
006a95f4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a95f8  10 10 15 e5                                      ldr r1, [r5, #-0x10]
006a95fc  00 00 51 e3                                      cmp r1, #0
006a9600  13 00 00 0a                                      beq #0x6a9654
006a9604  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a9608  34 00 87 e2                                      add r0, r7, #0x34
006a960c  43 20 87 e2                                      add r2, r7, #0x43
006a9610  28 00 8d e5                                      str r0, [sp, #0x28]
006a9614  30 20 8d e5                                      str r2, [sp, #0x30]
006a9618  2c 60 8d e5                                      str r6, [sp, #0x2c]
006a961c  34 90 8d e5                                      str sb, [sp, #0x34]
006a9620  00 c0 93 e5                                      ldr ip, [r3]
006a9624  03 00 a0 e1                                      mov r0, r3
006a9628  00 80 8d e5                                      str r8, [sp]
006a962c  08 30 a0 e1                                      mov r3, r8
006a9630  10 08 8d e9                                      stmib sp, {r4, fp}
006a9634  0c 80 8d e5                                      str r8, [sp, #0xc]
006a9638  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a963c  0f e0 a0 e1                                      mov lr, pc
006a9640  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
006a9644  01 10 a0 e3                                      mov r1, #1
006a9648  00 30 90 e5                                      ldr r3, [r0]
006a964c  0f e0 a0 e1                                      mov lr, pc
006a9650  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a9654  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a9658  23 20 8a e2                                      add r2, sl, #0x23
006a965c  30 20 8d e5                                      str r2, [sp, #0x30]
006a9660  28 a0 8d e5                                      str sl, [sp, #0x28]
006a9664  2c 60 8d e5                                      str r6, [sp, #0x2c]
006a9668  34 90 8d e5                                      str sb, [sp, #0x34]
006a966c  00 c0 93 e5                                      ldr ip, [r3]
006a9670  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a9674  14 10 15 e5                                      ldr r1, [r5, #-0x14]
006a9678  03 00 a0 e1                                      mov r0, r3
006a967c  00 40 8d e5                                      str r4, [sp]
006a9680  01 30 a0 e3                                      mov r3, #1
006a9684  04 b0 8d e5                                      str fp, [sp, #4]
006a9688  0f e0 a0 e1                                      mov lr, pc
006a968c  ac f0 9c e5                                      ldr pc, [ip, #0xac]
006a9690  78 00 8d e5                                      str r0, [sp, #0x78]
006a9694  00 30 90 e5                                      ldr r3, [r0]
006a9698  01 10 a0 e3                                      mov r1, #1
006a969c  0f e0 a0 e1                                      mov lr, pc
006a96a0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a96a4  78 10 9d e5                                      ldr r1, [sp, #0x78]
006a96a8  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a96ac  82 e0 87 e2                                      add lr, r7, #0x82
006a96b0  00 30 91 e5                                      ldr r3, [r1]
006a96b4  10 a0 86 e2                                      add sl, r6, #0x10
006a96b8  46 70 87 e2                                      add r7, r7, #0x46
006a96bc  10 00 13 e5                                      ldr r0, [r3, #-0x10]
006a96c0  04 60 86 e2                                      add r6, r6, #4
006a96c4  04 30 a0 e1                                      mov r3, r4
006a96c8  00 00 81 e0                                      add r0, r1, r0
006a96cc  04 c0 90 e5                                      ldr ip, [r0, #4]
006a96d0  01 10 a0 e3                                      mov r1, #1
006a96d4  01 c0 8c e0                                      add ip, ip, r1
006a96d8  04 c0 80 e5                                      str ip, [r0, #4]
006a96dc  50 c1 94 e5                                      ldr ip, [r4, #0x150]
006a96e0  30 e0 8d e5                                      str lr, [sp, #0x30]
006a96e4  28 70 8d e5                                      str r7, [sp, #0x28]
006a96e8  2c 60 8d e5                                      str r6, [sp, #0x2c]
006a96ec  34 a0 8d e5                                      str sl, [sp, #0x34]
006a96f0  0c 00 a0 e1                                      mov r0, ip
006a96f4  00 c0 9c e5                                      ldr ip, [ip]
006a96f8  00 b0 8d e5                                      str fp, [sp]
006a96fc  0f e0 a0 e1                                      mov lr, pc
006a9700  88 f0 9c e5                                      ldr pc, [ip, #0x88]
006a9704  7c 00 8d e5                                      str r0, [sp, #0x7c]
006a9708  00 30 90 e5                                      ldr r3, [r0]
006a970c  01 10 a0 e3                                      mov r1, #1
006a9710  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a9714  03 00 80 e0                                      add r0, r0, r3
006a9718  04 30 90 e5                                      ldr r3, [r0, #4]
006a971c  01 30 83 e0                                      add r3, r3, r1
006a9720  04 30 80 e5                                      str r3, [r0, #4]
006a9724  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006a9728  03 00 a0 e1                                      mov r0, r3
006a972c  00 30 93 e5                                      ldr r3, [r3]
006a9730  0f e0 a0 e1                                      mov lr, pc
006a9734  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a9738  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006a973c  04 20 15 e5                                      ldr r2, [r5, #-4]
006a9740  00 10 95 e5                                      ldr r1, [r5]
006a9744  03 00 a0 e1                                      mov r0, r3
006a9748  00 30 93 e5                                      ldr r3, [r3]
006a974c  01 10 62 e0                                      rsb r1, r2, r1
006a9750  0f e0 a0 e1                                      mov lr, pc
006a9754  80 f0 93 e5                                      ldr pc, [r3, #0x80]
006a9758  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006a975c  01 10 a0 e3                                      mov r1, #1
006a9760  03 00 a0 e1                                      mov r0, r3
006a9764  00 30 93 e5                                      ldr r3, [r3]
006a9768  0f e0 a0 e1                                      mov lr, pc
006a976c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
006a9770  74 11 94 e5                                      ldr r1, [r4, #0x174]
006a9774  78 31 94 e5                                      ldr r3, [r4, #0x178]
006a9778  03 00 51 e1                                      cmp r1, r3
006a977c  1b 00 00 0a                                      beq #0x6a97f0
006a9780  78 30 9d e5                                      ldr r3, [sp, #0x78]
006a9784  00 30 81 e5                                      str r3, [r1]
006a9788  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006a978c  04 30 81 e5                                      str r3, [r1, #4]
006a9790  74 31 94 e5                                      ldr r3, [r4, #0x174]
006a9794  08 30 83 e2                                      add r3, r3, #8
006a9798  74 31 84 e5                                      str r3, [r4, #0x174]
006a979c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a97a0  1c 50 85 e2                                      add r5, r5, #0x1c
006a97a4  01 00 55 e1                                      cmp r5, r1
006a97a8  07 00 00 0a                                      beq #0x6a97cc
006a97ac  18 10 15 e5                                      ldr r1, [r5, #-0x18]
006a97b0  00 00 51 e3                                      cmp r1, #0
006a97b4  79 ff ff 1a                                      bne #0x6a95a0
006a97b8  0c 70 15 e5                                      ldr r7, [r5, #-0xc]
006a97bc  08 60 15 e5                                      ldr r6, [r5, #-8]
006a97c0  0f a0 87 e2                                      add sl, r7, #0xf
006a97c4  14 90 86 e2                                      add sb, r6, #0x14
006a97c8  8a ff ff ea                                      b #0x6a95f8
006a97cc  6c 11 94 e5                                      ldr r1, [r4, #0x16c]
006a97d0  04 00 a0 e1                                      mov r0, r4
006a97d4  65 31 fa eb                                      bl #0x535d70
006a97d8  04 00 a0 e1                                      mov r0, r4
006a97dc  68 11 94 e5                                      ldr r1, [r4, #0x168]
006a97e0  62 31 fa eb                                      bl #0x535d70
006a97e4  04 00 a0 e1                                      mov r0, r4
006a97e8  a4 d0 8d e2                                      add sp, sp, #0xa4
006a97ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a97f0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a97f4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006a97f8  04 fd ff eb                                      bl #0x6a8c10
006a97fc  e6 ff ff ea                                      b #0x6a979c
006a9800  cc 00 9f e5                                      ldr r0, [pc, #0xcc]
006a9804  00 00 8f e0                                      add r0, pc, r0
006a9808  01 ff ff ea                                      b #0x6a9414
006a980c  c4 00 9f e5                                      ldr r0, [pc, #0xc4]
006a9810  00 00 8f e0                                      add r0, pc, r0
006a9814  cf fe ff ea                                      b #0x6a9358
006a9818  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
006a981c  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
006a9820  08 00 a0 e1                                      mov r0, r8
006a9824  02 20 8f e0                                      add r2, pc, r2
006a9828  03 30 8f e0                                      add r3, pc, r3
006a982c  0c 00 8d e8                                      stm sp, {r2, r3}
006a9830  58 10 8d e2                                      add r1, sp, #0x58
006a9834  00 30 e0 e3                                      mvn r3, #0
006a9838  04 20 a0 e1                                      mov r2, r4
006a983c  37 ff 2f e1                                      blx r7
006a9840  00 30 a0 e1                                      mov r3, r0
006a9844  64 01 84 e5                                      str r0, [r4, #0x164]
006a9848  98 fe ff ea                                      b #0x6a92b0
006a984c  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a9850  80 20 a0 e3                                      mov r2, #0x80
006a9854  8c 20 8d e5                                      str r2, [sp, #0x8c]
006a9858  88 20 8d e5                                      str r2, [sp, #0x88]
006a985c  03 00 a0 e1                                      mov r0, r3
006a9860  00 30 93 e5                                      ldr r3, [r3]
006a9864  0f e0 a0 e1                                      mov lr, pc
006a9868  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a986c  01 10 a0 e3                                      mov r1, #1
006a9870  00 30 90 e5                                      ldr r3, [r0]
006a9874  0f e0 a0 e1                                      mov lr, pc
006a9878  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a987c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006a9880  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006a9884  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006a9888  21 10 cd e5                                      strb r1, [sp, #0x21]
006a988c  22 20 cd e5                                      strb r2, [sp, #0x22]
006a9890  23 30 cd e5                                      strb r3, [sp, #0x23]
006a9894  20 00 cd e5                                      strb r0, [sp, #0x20]
006a9898  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006a989c  04 00 a0 e1                                      mov r0, r4
006a98a0  88 10 8d e2                                      add r1, sp, #0x88
006a98a4  0c 30 a0 e1                                      mov r3, ip
006a98a8  01 20 a0 e3                                      mov r2, #1
006a98ac  90 c0 8d e5                                      str ip, [sp, #0x90]
006a98b0  a7 fb ff eb                                      bl #0x6a8754
006a98b4  10 ff ff ea                                      b #0x6a94fc
; mapping-symbol data/literal pool
006a98b8  c4 ba 2e 00 60 38 00 00 44 2b 00 00 38 2f 00 00  .byte 0xc4, 0xba, 0x2e, 0x00, 0x60, 0x38, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x38, 0x2f, 0x00, 0x00
006a98c8  a4 5a 21 00 c4 1c 24 00 bc e3 2a 00 94 49 23 00  .byte 0xa4, 0x5a, 0x21, 0x00, 0xc4, 0x1c, 0x24, 0x00, 0xbc, 0xe3, 0x2a, 0x00, 0x94, 0x49, 0x23, 0x00
006a98d8  78 49 23 00 ec 53 21 00 48 49 23 00              .byte 0x78, 0x49, 0x23, 0x00, 0xec, 0x53, 0x21, 0x00, 0x48, 0x49, 0x23, 0x00

; FUNCTION 0x006a98e4, declared_size=684, range_size=684, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialog7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIColorSelectDialog::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006a98e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a98e8  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
006a98ec  50 d0 4d e2                                      sub sp, sp, #0x50
006a98f0  00 40 a0 e1                                      mov r4, r0
006a98f4  00 00 53 e3                                      cmp r3, #0
006a98f8  01 50 a0 e1                                      mov r5, r1
006a98fc  09 00 00 0a                                      beq #0x6a9928
006a9900  00 60 91 e5                                      ldr r6, [r1]
006a9904  00 00 56 e3                                      cmp r6, #0
006a9908  11 00 00 1a                                      bne #0x6a9954
006a990c  10 30 91 e5                                      ldr r3, [r1, #0x10]
006a9910  05 00 53 e3                                      cmp r3, #5
006a9914  2e 00 00 0a                                      beq #0x6a99d4
006a9918  06 00 53 e3                                      cmp r3, #6
006a991c  3d 00 00 0a                                      beq #0x6a9a18
006a9920  00 00 53 e3                                      cmp r3, #0
006a9924  60 31 c0 05                                      strbeq r3, [r0, #0x160]
006a9928  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a992c  00 00 53 e3                                      cmp r3, #0
006a9930  03 00 a0 01                                      moveq r0, r3
006a9934  04 00 00 0a                                      beq #0x6a994c
006a9938  03 00 a0 e1                                      mov r0, r3
006a993c  05 10 a0 e1                                      mov r1, r5
006a9940  00 30 93 e5                                      ldr r3, [r3]
006a9944  0f e0 a0 e1                                      mov lr, pc
006a9948  08 f0 93 e5                                      ldr pc, [r3, #8]
006a994c  50 d0 8d e2                                      add sp, sp, #0x50
006a9950  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a9954  01 00 56 e3                                      cmp r6, #1
006a9958  f2 ff ff 1a                                      bne #0x6a9928
006a995c  14 30 91 e5                                      ldr r3, [r1, #0x14]
006a9960  03 00 53 e3                                      cmp r3, #3
006a9964  10 00 00 0a                                      beq #0x6a99ac
006a9968  06 00 53 e3                                      cmp r3, #6
006a996c  3e 00 00 0a                                      beq #0x6a9a6c
006a9970  00 00 53 e3                                      cmp r3, #0
006a9974  eb ff ff 1a                                      bne #0x6a9928
006a9978  08 20 91 e5                                      ldr r2, [r1, #8]
006a997c  50 31 90 e5                                      ldr r3, [r0, #0x150]
006a9980  00 10 a0 e1                                      mov r1, r0
006a9984  58 21 80 e5                                      str r2, [r0, #0x158]
006a9988  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006a998c  60 61 c0 e5                                      strb r6, [r0, #0x160]
006a9990  03 00 a0 e1                                      mov r0, r3
006a9994  5c 21 84 e5                                      str r2, [r4, #0x15c]
006a9998  00 30 93 e5                                      ldr r3, [r3]
006a999c  0f e0 a0 e1                                      mov lr, pc
006a99a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a99a4  06 00 a0 e1                                      mov r0, r6
006a99a8  e7 ff ff ea                                      b #0x6a994c
006a99ac  50 31 90 e5                                      ldr r3, [r0, #0x150]
006a99b0  00 20 a0 e3                                      mov r2, #0
006a99b4  60 21 c0 e5                                      strb r2, [r0, #0x160]
006a99b8  04 10 a0 e1                                      mov r1, r4
006a99bc  03 00 a0 e1                                      mov r0, r3
006a99c0  00 30 93 e5                                      ldr r3, [r3]
006a99c4  0f e0 a0 e1                                      mov lr, pc
006a99c8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a99cc  06 00 a0 e1                                      mov r0, r6
006a99d0  dd ff ff ea                                      b #0x6a994c
006a99d4  08 30 91 e5                                      ldr r3, [r1, #8]
006a99d8  64 21 90 e5                                      ldr r2, [r0, #0x164]
006a99dc  02 00 53 e1                                      cmp r3, r2
006a99e0  5e 00 00 0a                                      beq #0x6a9b60
006a99e4  6c 21 90 e5                                      ldr r2, [r0, #0x16c]
006a99e8  02 00 53 e1                                      cmp r3, r2
006a99ec  5b 00 00 0a                                      beq #0x6a9b60
006a99f0  68 21 90 e5                                      ldr r2, [r0, #0x168]
006a99f4  02 00 53 e1                                      cmp r3, r2
006a99f8  ca ff ff 1a                                      bne #0x6a9928
006a99fc  2c fb ff eb                                      bl #0x6a86b4
006a9a00  04 00 a0 e1                                      mov r0, r4
006a9a04  00 30 94 e5                                      ldr r3, [r4]
006a9a08  0f e0 a0 e1                                      mov lr, pc
006a9a0c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006a9a10  01 00 a0 e3                                      mov r0, #1
006a9a14  cc ff ff ea                                      b #0x6a994c
006a9a18  70 21 90 e5                                      ldr r2, [r0, #0x170]
006a9a1c  74 01 90 e5                                      ldr r0, [r0, #0x174]
006a9a20  00 30 62 e0                                      rsb r3, r2, r0
006a9a24  a3 31 b0 e1                                      lsrs r3, r3, #3
006a9a28  0d 00 00 0a                                      beq #0x6a9a64
006a9a2c  58 71 9f e5                                      ldr r7, [pc, #0x158]
006a9a30  0d 80 a0 e1                                      mov r8, sp
006a9a34  07 70 8f e0                                      add r7, pc, r7
006a9a38  70 70 87 e2                                      add r7, r7, #0x70
006a9a3c  86 31 82 e0                                      add r3, r2, r6, lsl #3
006a9a40  04 10 93 e5                                      ldr r1, [r3, #4]
006a9a44  08 30 95 e5                                      ldr r3, [r5, #8]
006a9a48  01 00 53 e1                                      cmp r3, r1
006a9a4c  2b 00 00 0a                                      beq #0x6a9b00
006a9a50  01 60 86 e2                                      add r6, r6, #1
006a9a54  00 30 62 e0                                      rsb r3, r2, r0
006a9a58  c3 01 56 e1                                      cmp r6, r3, asr #3
006a9a5c  1c 70 87 e2                                      add r7, r7, #0x1c
006a9a60  f5 ff ff 1a                                      bne #0x6a9a3c
006a9a64  01 00 a0 e3                                      mov r0, #1
006a9a68  b7 ff ff ea                                      b #0x6a994c
006a9a6c  60 31 d0 e5                                      ldrb r3, [r0, #0x160]
006a9a70  00 00 53 e3                                      cmp r3, #0
006a9a74  ab ff ff 0a                                      beq #0x6a9928
006a9a78  24 30 90 e5                                      ldr r3, [r0, #0x24]
006a9a7c  00 00 53 e3                                      cmp r3, #0
006a9a80  3e 00 00 0a                                      beq #0x6a9b80
006a9a84  38 10 93 e5                                      ldr r1, [r3, #0x38]
006a9a88  08 20 95 e5                                      ldr r2, [r5, #8]
006a9a8c  01 00 52 e1                                      cmp r2, r1
006a9a90  f3 ff ff da                                      ble #0x6a9a64
006a9a94  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
006a9a98  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006a9a9c  00 00 51 e1                                      cmp r1, r0
006a9aa0  ef ff ff da                                      ble #0x6a9a64
006a9aa4  40 00 93 e5                                      ldr r0, [r3, #0x40]
006a9aa8  00 00 52 e1                                      cmp r2, r0
006a9aac  ec ff ff aa                                      bge #0x6a9a64
006a9ab0  44 30 93 e5                                      ldr r3, [r3, #0x44]
006a9ab4  03 00 51 e1                                      cmp r1, r3
006a9ab8  e9 ff ff aa                                      bge #0x6a9a64
006a9abc  58 01 94 e5                                      ldr r0, [r4, #0x158]
006a9ac0  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
006a9ac4  00 30 94 e5                                      ldr r3, [r4]
006a9ac8  02 20 60 e0                                      rsb r2, r0, r2
006a9acc  01 10 6c e0                                      rsb r1, ip, r1
006a9ad0  28 30 93 e5                                      ldr r3, [r3, #0x28]
006a9ad4  04 00 a0 e1                                      mov r0, r4
006a9ad8  4c 10 8d e5                                      str r1, [sp, #0x4c]
006a9adc  48 20 8d e5                                      str r2, [sp, #0x48]
006a9ae0  48 10 8d e2                                      add r1, sp, #0x48
006a9ae4  33 ff 2f e1                                      blx r3
006a9ae8  08 30 95 e5                                      ldr r3, [r5, #8]
006a9aec  01 00 a0 e3                                      mov r0, #1
006a9af0  58 31 84 e5                                      str r3, [r4, #0x158]
006a9af4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006a9af8  5c 31 84 e5                                      str r3, [r4, #0x15c]
006a9afc  92 ff ff ea                                      b #0x6a994c
006a9b00  03 00 a0 e1                                      mov r0, r3
006a9b04  00 30 93 e5                                      ldr r3, [r3]
006a9b08  0f e0 a0 e1                                      mov lr, pc
006a9b0c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006a9b10  14 10 97 e5                                      ldr r1, [r7, #0x14]
006a9b14  01 10 80 e0                                      add r1, r0, r1
006a9b18  0d 00 a0 e1                                      mov r0, sp
006a9b1c  16 f1 f1 eb                                      bl #0x325f7c
006a9b20  70 31 94 e5                                      ldr r3, [r4, #0x170]
006a9b24  44 10 9d e5                                      ldr r1, [sp, #0x44]
006a9b28  86 31 93 e7                                      ldr r3, [r3, r6, lsl #3]
006a9b2c  03 00 a0 e1                                      mov r0, r3
006a9b30  00 30 93 e5                                      ldr r3, [r3]
006a9b34  0f e0 a0 e1                                      mov lr, pc
006a9b38  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006a9b3c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006a9b40  08 00 50 e1                                      cmp r0, r8
006a9b44  02 00 00 0a                                      beq #0x6a9b54
006a9b48  00 00 50 e3                                      cmp r0, #0
006a9b4c  00 00 00 0a                                      beq #0x6a9b54
006a9b50  3e 9a f1 eb                                      bl #0x310450
006a9b54  70 21 94 e5                                      ldr r2, [r4, #0x170]
006a9b58  74 01 94 e5                                      ldr r0, [r4, #0x174]
006a9b5c  bb ff ff ea                                      b #0x6a9a50
006a9b60  04 00 a0 e1                                      mov r0, r4
006a9b64  e2 fa ff eb                                      bl #0x6a86f4
006a9b68  04 00 a0 e1                                      mov r0, r4
006a9b6c  00 30 94 e5                                      ldr r3, [r4]
006a9b70  0f e0 a0 e1                                      mov lr, pc
006a9b74  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006a9b78  01 00 a0 e3                                      mov r0, #1
006a9b7c  72 ff ff ea                                      b #0x6a994c
006a9b80  08 20 91 e5                                      ldr r2, [r1, #8]
006a9b84  0c 10 91 e5                                      ldr r1, [r1, #0xc]
006a9b88  cb ff ff ea                                      b #0x6a9abc
; mapping-symbol data/literal pool
006a9b8c  e4 de 2a 00                                      .byte 0xe4, 0xde, 0x2a, 0x00

; FUNCTION 0x006a9c04, declared_size=368, range_size=368, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialogD1Ev
; demangled: glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog()
; decoder-mode: arm
006a9c04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a9c08  58 71 9f e5                                      ldr r7, [pc, #0x158]
006a9c0c  58 31 9f e5                                      ldr r3, [pc, #0x158]
006a9c10  64 21 90 e5                                      ldr r2, [r0, #0x164]
006a9c14  07 70 8f e0                                      add r7, pc, r7
006a9c18  03 30 97 e7                                      ldr r3, [r7, r3]
006a9c1c  00 40 a0 e1                                      mov r4, r0
006a9c20  00 00 52 e3                                      cmp r2, #0
006a9c24  c4 10 83 e2                                      add r1, r3, #0xc4
006a9c28  10 00 83 e2                                      add r0, r3, #0x10
006a9c2c  a4 30 83 e2                                      add r3, r3, #0xa4
006a9c30  00 00 84 e5                                      str r0, [r4]
006a9c34  84 31 84 e5                                      str r3, [r4, #0x184]
006a9c38  88 11 84 e5                                      str r1, [r4, #0x188]
006a9c3c  03 00 00 0a                                      beq #0x6a9c50
006a9c40  00 30 92 e5                                      ldr r3, [r2]
006a9c44  10 00 13 e5                                      ldr r0, [r3, #-0x10]
006a9c48  00 00 82 e0                                      add r0, r2, r0
006a9c4c  4c ce f1 eb                                      bl #0x31d584
006a9c50  68 31 94 e5                                      ldr r3, [r4, #0x168]
006a9c54  00 00 53 e3                                      cmp r3, #0
006a9c58  03 00 00 0a                                      beq #0x6a9c6c
006a9c5c  00 20 93 e5                                      ldr r2, [r3]
006a9c60  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9c64  00 00 83 e0                                      add r0, r3, r0
006a9c68  45 ce f1 eb                                      bl #0x31d584
006a9c6c  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
006a9c70  00 00 53 e3                                      cmp r3, #0
006a9c74  03 00 00 0a                                      beq #0x6a9c88
006a9c78  00 20 93 e5                                      ldr r2, [r3]
006a9c7c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9c80  00 00 83 e0                                      add r0, r3, r0
006a9c84  3e ce f1 eb                                      bl #0x31d584
006a9c88  70 31 94 e5                                      ldr r3, [r4, #0x170]
006a9c8c  74 21 94 e5                                      ldr r2, [r4, #0x174]
006a9c90  02 20 63 e0                                      rsb r2, r3, r2
006a9c94  a2 21 b0 e1                                      lsrs r2, r2, #3
006a9c98  13 00 00 0a                                      beq #0x6a9cec
006a9c9c  00 50 a0 e3                                      mov r5, #0
006a9ca0  85 31 93 e7                                      ldr r3, [r3, r5, lsl #3]
006a9ca4  85 61 a0 e1                                      lsl r6, r5, #3
006a9ca8  01 50 85 e2                                      add r5, r5, #1
006a9cac  00 20 93 e5                                      ldr r2, [r3]
006a9cb0  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9cb4  00 00 83 e0                                      add r0, r3, r0
006a9cb8  31 ce f1 eb                                      bl #0x31d584
006a9cbc  70 31 94 e5                                      ldr r3, [r4, #0x170]
006a9cc0  06 60 83 e0                                      add r6, r3, r6
006a9cc4  04 30 96 e5                                      ldr r3, [r6, #4]
006a9cc8  00 20 93 e5                                      ldr r2, [r3]
006a9ccc  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9cd0  00 00 83 e0                                      add r0, r3, r0
006a9cd4  2a ce f1 eb                                      bl #0x31d584
006a9cd8  70 31 94 e5                                      ldr r3, [r4, #0x170]
006a9cdc  74 21 94 e5                                      ldr r2, [r4, #0x174]
006a9ce0  02 20 63 e0                                      rsb r2, r3, r2
006a9ce4  c2 01 55 e1                                      cmp r5, r2, asr #3
006a9ce8  ec ff ff 1a                                      bne #0x6a9ca0
006a9cec  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006a9cf0  00 00 53 e3                                      cmp r3, #0
006a9cf4  03 00 00 0a                                      beq #0x6a9d08
006a9cf8  00 20 93 e5                                      ldr r2, [r3]
006a9cfc  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9d00  00 00 83 e0                                      add r0, r3, r0
006a9d04  1e ce f1 eb                                      bl #0x31d584
006a9d08  80 01 94 e5                                      ldr r0, [r4, #0x180]
006a9d0c  00 00 50 e3                                      cmp r0, #0
006a9d10  00 00 00 0a                                      beq #0x6a9d18
006a9d14  1a ce f1 eb                                      bl #0x31d584
006a9d18  70 01 94 e5                                      ldr r0, [r4, #0x170]
006a9d1c  00 00 50 e3                                      cmp r0, #0
006a9d20  00 00 00 0a                                      beq #0x6a9d28
006a9d24  c9 99 f1 eb                                      bl #0x310450
006a9d28  40 30 9f e5                                      ldr r3, [pc, #0x40]
006a9d2c  04 00 a0 e1                                      mov r0, r4
006a9d30  03 10 97 e7                                      ldr r1, [r7, r3]
006a9d34  04 30 91 e5                                      ldr r3, [r1, #4]
006a9d38  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006a9d3c  18 20 91 e5                                      ldr r2, [r1, #0x18]
006a9d40  00 30 84 e5                                      str r3, [r4]
006a9d44  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a9d48  08 10 81 e2                                      add r1, r1, #8
006a9d4c  03 c0 84 e7                                      str ip, [r4, r3]
006a9d50  00 30 94 e5                                      ldr r3, [r4]
006a9d54  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a9d58  03 20 84 e7                                      str r2, [r4, r3]
006a9d5c  af 3c fa eb                                      bl #0x539020
006a9d60  04 00 a0 e1                                      mov r0, r4
006a9d64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006a9d68  7c ae 2e 00 38 2f 00 00 60 38 00 00              .byte 0x7c, 0xae, 0x2e, 0x00, 0x38, 0x2f, 0x00, 0x00, 0x60, 0x38, 0x00, 0x00

; FUNCTION 0x006a9d74, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialogD0Ev
; demangled: glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog()
; decoder-mode: arm
006a9d74  10 40 2d e9                                      push {r4, lr}
006a9d78  00 40 a0 e1                                      mov r4, r0
006a9d7c  a0 ff ff eb                                      bl #0x6a9c04
006a9d80  04 00 a0 e1                                      mov r0, r4
006a9d84  49 91 f1 eb                                      bl #0x30e2b0
006a9d88  04 00 a0 e1                                      mov r0, r4
006a9d8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a9d90, declared_size=352, range_size=352, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialogD2Ev
; demangled: glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog()
; decoder-mode: arm
006a9d90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a9d94  00 30 91 e5                                      ldr r3, [r1]
006a9d98  01 70 a0 e1                                      mov r7, r1
006a9d9c  00 40 a0 e1                                      mov r4, r0
006a9da0  00 30 80 e5                                      str r3, [r0]
006a9da4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a9da8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006a9dac  03 20 80 e7                                      str r2, [r0, r3]
006a9db0  00 30 90 e5                                      ldr r3, [r0]
006a9db4  20 20 91 e5                                      ldr r2, [r1, #0x20]
006a9db8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a9dbc  03 20 80 e7                                      str r2, [r0, r3]
006a9dc0  64 31 90 e5                                      ldr r3, [r0, #0x164]
006a9dc4  00 00 53 e3                                      cmp r3, #0
006a9dc8  03 00 00 0a                                      beq #0x6a9ddc
006a9dcc  00 20 93 e5                                      ldr r2, [r3]
006a9dd0  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9dd4  00 00 83 e0                                      add r0, r3, r0
006a9dd8  e9 cd f1 eb                                      bl #0x31d584
006a9ddc  68 31 94 e5                                      ldr r3, [r4, #0x168]
006a9de0  00 00 53 e3                                      cmp r3, #0
006a9de4  03 00 00 0a                                      beq #0x6a9df8
006a9de8  00 20 93 e5                                      ldr r2, [r3]
006a9dec  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9df0  00 00 83 e0                                      add r0, r3, r0
006a9df4  e2 cd f1 eb                                      bl #0x31d584
006a9df8  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
006a9dfc  00 00 53 e3                                      cmp r3, #0
006a9e00  03 00 00 0a                                      beq #0x6a9e14
006a9e04  00 20 93 e5                                      ldr r2, [r3]
006a9e08  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9e0c  00 00 83 e0                                      add r0, r3, r0
006a9e10  db cd f1 eb                                      bl #0x31d584
006a9e14  70 31 94 e5                                      ldr r3, [r4, #0x170]
006a9e18  74 21 94 e5                                      ldr r2, [r4, #0x174]
006a9e1c  02 20 63 e0                                      rsb r2, r3, r2
006a9e20  a2 21 b0 e1                                      lsrs r2, r2, #3
006a9e24  13 00 00 0a                                      beq #0x6a9e78
006a9e28  00 50 a0 e3                                      mov r5, #0
006a9e2c  85 31 93 e7                                      ldr r3, [r3, r5, lsl #3]
006a9e30  85 61 a0 e1                                      lsl r6, r5, #3
006a9e34  01 50 85 e2                                      add r5, r5, #1
006a9e38  00 20 93 e5                                      ldr r2, [r3]
006a9e3c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9e40  00 00 83 e0                                      add r0, r3, r0
006a9e44  ce cd f1 eb                                      bl #0x31d584
006a9e48  70 31 94 e5                                      ldr r3, [r4, #0x170]
006a9e4c  06 60 83 e0                                      add r6, r3, r6
006a9e50  04 30 96 e5                                      ldr r3, [r6, #4]
006a9e54  00 20 93 e5                                      ldr r2, [r3]
006a9e58  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9e5c  00 00 83 e0                                      add r0, r3, r0
006a9e60  c7 cd f1 eb                                      bl #0x31d584
006a9e64  70 31 94 e5                                      ldr r3, [r4, #0x170]
006a9e68  74 21 94 e5                                      ldr r2, [r4, #0x174]
006a9e6c  02 20 63 e0                                      rsb r2, r3, r2
006a9e70  c2 01 55 e1                                      cmp r5, r2, asr #3
006a9e74  ec ff ff 1a                                      bne #0x6a9e2c
006a9e78  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006a9e7c  00 00 53 e3                                      cmp r3, #0
006a9e80  03 00 00 0a                                      beq #0x6a9e94
006a9e84  00 20 93 e5                                      ldr r2, [r3]
006a9e88  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006a9e8c  00 00 83 e0                                      add r0, r3, r0
006a9e90  bb cd f1 eb                                      bl #0x31d584
006a9e94  80 01 94 e5                                      ldr r0, [r4, #0x180]
006a9e98  00 00 50 e3                                      cmp r0, #0
006a9e9c  00 00 00 0a                                      beq #0x6a9ea4
006a9ea0  b7 cd f1 eb                                      bl #0x31d584
006a9ea4  70 01 94 e5                                      ldr r0, [r4, #0x170]
006a9ea8  00 00 50 e3                                      cmp r0, #0
006a9eac  00 00 00 0a                                      beq #0x6a9eb4
006a9eb0  66 99 f1 eb                                      bl #0x310450
006a9eb4  04 30 97 e5                                      ldr r3, [r7, #4]
006a9eb8  04 70 87 e2                                      add r7, r7, #4
006a9ebc  04 10 87 e2                                      add r1, r7, #4
006a9ec0  00 30 84 e5                                      str r3, [r4]
006a9ec4  10 20 97 e5                                      ldr r2, [r7, #0x10]
006a9ec8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a9ecc  04 00 a0 e1                                      mov r0, r4
006a9ed0  03 20 84 e7                                      str r2, [r4, r3]
006a9ed4  00 30 94 e5                                      ldr r3, [r4]
006a9ed8  14 20 97 e5                                      ldr r2, [r7, #0x14]
006a9edc  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a9ee0  03 20 84 e7                                      str r2, [r4, r3]
006a9ee4  4d 3c fa eb                                      bl #0x539020
006a9ee8  04 00 a0 e1                                      mov r0, r4
006a9eec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006a9f6c, declared_size=460, range_size=460, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialog4drawEv
; demangled: glitch::gui::CGUIColorSelectDialog::draw()
; decoder-mode: arm
006a9f6c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006a9f70  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
006a9f74  44 d0 4d e2                                      sub sp, sp, #0x44
006a9f78  00 40 a0 e1                                      mov r4, r0
006a9f7c  00 00 53 e3                                      cmp r3, #0
006a9f80  01 00 00 1a                                      bne #0x6a9f8c
006a9f84  44 d0 8d e2                                      add sp, sp, #0x44
006a9f88  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006a9f8c  50 31 90 e5                                      ldr r3, [r0, #0x150]
006a9f90  48 70 80 e2                                      add r7, r0, #0x48
006a9f94  28 60 8d e2                                      add r6, sp, #0x28
006a9f98  03 00 a0 e1                                      mov r0, r3
006a9f9c  00 30 93 e5                                      ldr r3, [r3]
006a9fa0  0f e0 a0 e1                                      mov lr, pc
006a9fa4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a9fa8  38 c0 94 e5                                      ldr ip, [r4, #0x38]
006a9fac  3c 10 84 e2                                      add r1, r4, #0x3c
006a9fb0  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
006a9fb4  28 c0 8d e5                                      str ip, [sp, #0x28]
006a9fb8  2c 10 8d e5                                      str r1, [sp, #0x2c]
006a9fbc  30 20 8d e5                                      str r2, [sp, #0x30]
006a9fc0  34 30 8d e5                                      str r3, [sp, #0x34]
006a9fc4  00 30 90 e5                                      ldr r3, [r0]
006a9fc8  05 10 a0 e3                                      mov r1, #5
006a9fcc  00 50 a0 e1                                      mov r5, r0
006a9fd0  4c 80 93 e5                                      ldr r8, [r3, #0x4c]
006a9fd4  0f e0 a0 e1                                      mov lr, pc
006a9fd8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a9fdc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006a9fe0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006a9fe4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006a9fe8  11 10 cd e5                                      strb r1, [sp, #0x11]
006a9fec  12 20 cd e5                                      strb r2, [sp, #0x12]
006a9ff0  10 00 cd e5                                      strb r0, [sp, #0x10]
006a9ff4  13 30 cd e5                                      strb r3, [sp, #0x13]
006a9ff8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006a9ffc  05 10 a0 e1                                      mov r1, r5
006aa000  04 20 a0 e1                                      mov r2, r4
006aa004  00 30 8d e5                                      str r3, [sp]
006aa008  3c 30 8d e5                                      str r3, [sp, #0x3c]
006aa00c  04 60 8d e5                                      str r6, [sp, #4]
006aa010  01 30 a0 e3                                      mov r3, #1
006aa014  08 70 8d e5                                      str r7, [sp, #8]
006aa018  18 00 8d e2                                      add r0, sp, #0x18
006aa01c  38 ff 2f e1                                      blx r8
006aa020  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
006aa024  e4 20 94 e5                                      ldr r2, [r4, #0xe4]
006aa028  18 30 9d e5                                      ldr r3, [sp, #0x18]
006aa02c  20 80 9d e5                                      ldr r8, [sp, #0x20]
006aa030  01 20 62 e0                                      rsb r2, r2, r1
006aa034  22 21 b0 e1                                      lsrs r2, r2, #2
006aa038  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006aa03c  28 30 8d e5                                      str r3, [sp, #0x28]
006aa040  30 80 8d e5                                      str r8, [sp, #0x30]
006aa044  2c 20 8d e5                                      str r2, [sp, #0x2c]
006aa048  24 20 9d e5                                      ldr r2, [sp, #0x24]
006aa04c  34 20 8d e5                                      str r2, [sp, #0x34]
006aa050  0d 00 00 1a                                      bne #0x6aa08c
006aa054  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
006aa058  00 00 53 e3                                      cmp r3, #0
006aa05c  04 50 b4 15                                      ldrne r5, [r4, #4]!
006aa060  06 00 00 1a                                      bne #0x6aa080
006aa064  c6 ff ff ea                                      b #0x6a9f84
006aa068  08 30 95 e5                                      ldr r3, [r5, #8]
006aa06c  03 00 a0 e1                                      mov r0, r3
006aa070  00 30 93 e5                                      ldr r3, [r3]
006aa074  0f e0 a0 e1                                      mov lr, pc
006aa078  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006aa07c  00 50 95 e5                                      ldr r5, [r5]
006aa080  04 00 55 e1                                      cmp r5, r4
006aa084  f7 ff ff 1a                                      bne #0x6aa068
006aa088  bd ff ff ea                                      b #0x6a9f84
006aa08c  02 30 83 e2                                      add r3, r3, #2
006aa090  28 30 8d e5                                      str r3, [sp, #0x28]
006aa094  02 10 a0 e3                                      mov r1, #2
006aa098  00 30 95 e5                                      ldr r3, [r5]
006aa09c  05 00 a0 e1                                      mov r0, r5
006aa0a0  0f e0 a0 e1                                      mov lr, pc
006aa0a4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006aa0a8  05 80 48 e2                                      sub r8, r8, #5
006aa0ac  08 80 60 e0                                      rsb r8, r0, r8
006aa0b0  30 80 8d e5                                      str r8, [sp, #0x30]
006aa0b4  00 30 95 e5                                      ldr r3, [r5]
006aa0b8  05 00 a0 e1                                      mov r0, r5
006aa0bc  02 10 a0 e3                                      mov r1, #2
006aa0c0  0f e0 a0 e1                                      mov lr, pc
006aa0c4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006aa0c8  00 80 50 e2                                      subs r8, r0, #0
006aa0cc  e0 ff ff 0a                                      beq #0x6aa054
006aa0d0  00 20 98 e5                                      ldr r2, [r8]
006aa0d4  00 30 95 e5                                      ldr r3, [r5]
006aa0d8  05 00 a0 e1                                      mov r0, r5
006aa0dc  06 10 a0 e3                                      mov r1, #6
006aa0e0  0c 50 92 e5                                      ldr r5, [r2, #0xc]
006aa0e4  e4 a0 94 e5                                      ldr sl, [r4, #0xe4]
006aa0e8  0f e0 a0 e1                                      mov lr, pc
006aa0ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aa0f0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006aa0f4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006aa0f8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006aa0fc  11 10 cd e5                                      strb r1, [sp, #0x11]
006aa100  12 20 cd e5                                      strb r2, [sp, #0x12]
006aa104  10 00 cd e5                                      strb r0, [sp, #0x10]
006aa108  13 30 cd e5                                      strb r3, [sp, #0x13]
006aa10c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006aa110  00 20 a0 e3                                      mov r2, #0
006aa114  00 20 8d e5                                      str r2, [sp]
006aa118  01 20 a0 e3                                      mov r2, #1
006aa11c  84 00 8d e9                                      stmib sp, {r2, r7}
006aa120  38 30 8d e5                                      str r3, [sp, #0x38]
006aa124  08 00 a0 e1                                      mov r0, r8
006aa128  0a 10 a0 e1                                      mov r1, sl
006aa12c  06 20 a0 e1                                      mov r2, r6
006aa130  35 ff 2f e1                                      blx r5
006aa134  c6 ff ff ea                                      b #0x6aa054

; FUNCTION 0x006aa138, declared_size=2284, range_size=2284, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZN6glitch3gui21CGUIColorSelectDialogC2EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIColorSelectDialog::CGUIColorSelectDialog(wchar_t const*, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
006aa138  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006aa13c  a4 d0 4d e2                                      sub sp, sp, #0xa4
006aa140  c8 40 9d e5                                      ldr r4, [sp, #0xc8]
006aa144  01 60 a0 e1                                      mov r6, r1
006aa148  03 80 a0 e1                                      mov r8, r3
006aa14c  40 e0 94 e5                                      ldr lr, [r4, #0x40]
006aa150  38 c0 94 e5                                      ldr ip, [r4, #0x38]
006aa154  44 50 94 e5                                      ldr r5, [r4, #0x44]
006aa158  57 ef 4e e2                                      sub lr, lr, #0x15c
006aa15c  02 e0 4e e2                                      sub lr, lr, #2
006aa160  0e e0 6c e0                                      rsb lr, ip, lr
006aa164  ae ef 8e e0                                      add lr, lr, lr, lsr #31
006aa168  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006aa16c  ce e0 a0 e1                                      asr lr, lr, #1
006aa170  57 cf 8e e2                                      add ip, lr, #0x15c
006aa174  4b 5f 45 e2                                      sub r5, r5, #0x12c
006aa178  05 50 61 e0                                      rsb r5, r1, r5
006aa17c  02 c0 8c e2                                      add ip, ip, #2
006aa180  70 c0 8d e5                                      str ip, [sp, #0x70]
006aa184  a5 5f 85 e0                                      add r5, r5, r5, lsr #31
006aa188  cc c0 9d e5                                      ldr ip, [sp, #0xcc]
006aa18c  c5 50 a0 e1                                      asr r5, r5, #1
006aa190  02 70 a0 e1                                      mov r7, r2
006aa194  04 10 86 e2                                      add r1, r6, #4
006aa198  04 30 a0 e1                                      mov r3, r4
006aa19c  08 20 a0 e1                                      mov r2, r8
006aa1a0  4b 4f 85 e2                                      add r4, r5, #0x12c
006aa1a4  00 c0 8d e5                                      str ip, [sp]
006aa1a8  68 c0 8d e2                                      add ip, sp, #0x68
006aa1ac  68 e0 8d e5                                      str lr, [sp, #0x68]
006aa1b0  04 c0 8d e5                                      str ip, [sp, #4]
006aa1b4  6c 50 8d e5                                      str r5, [sp, #0x6c]
006aa1b8  74 40 8d e5                                      str r4, [sp, #0x74]
006aa1bc  00 40 a0 e1                                      mov r4, r0
006aa1c0  cb fa ff eb                                      bl #0x6a8cf4
006aa1c4  00 30 96 e5                                      ldr r3, [r6]
006aa1c8  00 50 a0 e3                                      mov r5, #0
006aa1cc  07 00 a0 e1                                      mov r0, r7
006aa1d0  00 30 84 e5                                      str r3, [r4]
006aa1d4  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
006aa1d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006aa1dc  03 20 84 e7                                      str r2, [r4, r3]
006aa1e0  00 30 94 e5                                      ldr r3, [r4]
006aa1e4  20 20 96 e5                                      ldr r2, [r6, #0x20]
006aa1e8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006aa1ec  03 20 84 e7                                      str r2, [r4, r3]
006aa1f0  58 51 84 e5                                      str r5, [r4, #0x158]
006aa1f4  5c 51 84 e5                                      str r5, [r4, #0x15c]
006aa1f8  60 51 c4 e5                                      strb r5, [r4, #0x160]
006aa1fc  70 51 84 e5                                      str r5, [r4, #0x170]
006aa200  74 51 84 e5                                      str r5, [r4, #0x174]
006aa204  78 51 84 e5                                      str r5, [r4, #0x178]
006aa208  80 51 84 e5                                      str r5, [r4, #0x180]
006aa20c  9d 92 f1 eb                                      bl #0x30ec88
006aa210  07 10 a0 e1                                      mov r1, r7
006aa214  00 21 87 e0                                      add r2, r7, r0, lsl #2
006aa218  a0 00 84 e2                                      add r0, r4, #0xa0
006aa21c  df e3 f1 eb                                      bl #0x3231a0
006aa220  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aa224  03 00 a0 e1                                      mov r0, r3
006aa228  00 30 93 e5                                      ldr r3, [r3]
006aa22c  0f e0 a0 e1                                      mov lr, pc
006aa230  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa234  00 30 98 e5                                      ldr r3, [r8]
006aa238  00 60 a0 e1                                      mov r6, r0
006aa23c  08 00 a0 e1                                      mov r0, r8
006aa240  0f e0 a0 e1                                      mov lr, pc
006aa244  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa248  02 10 a0 e3                                      mov r1, #2
006aa24c  00 30 90 e5                                      ldr r3, [r0]
006aa250  0f e0 a0 e1                                      mov lr, pc
006aa254  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006aa258  30 30 94 e5                                      ldr r3, [r4, #0x30]
006aa25c  50 81 94 e5                                      ldr r8, [r4, #0x150]
006aa260  28 20 94 e5                                      ldr r2, [r4, #0x28]
006aa264  04 30 43 e2                                      sub r3, r3, #4
006aa268  00 10 98 e5                                      ldr r1, [r8]
006aa26c  03 30 62 e0                                      rsb r3, r2, r3
006aa270  03 30 60 e0                                      rsb r3, r0, r3
006aa274  78 70 91 e5                                      ldr r7, [r1, #0x78]
006aa278  03 20 80 e2                                      add r2, r0, #3
006aa27c  58 30 8d e5                                      str r3, [sp, #0x58]
006aa280  00 00 83 e0                                      add r0, r3, r0
006aa284  05 00 56 e1                                      cmp r6, r5
006aa288  03 30 a0 e3                                      mov r3, #3
006aa28c  5c 30 8d e5                                      str r3, [sp, #0x5c]
006aa290  60 00 8d e5                                      str r0, [sp, #0x60]
006aa294  64 20 8d e5                                      str r2, [sp, #0x64]
006aa298  b2 01 00 0a                                      beq #0x6aa968
006aa29c  04 10 a0 e3                                      mov r1, #4
006aa2a0  00 30 96 e5                                      ldr r3, [r6]
006aa2a4  06 00 a0 e1                                      mov r0, r6
006aa2a8  0f e0 a0 e1                                      mov lr, pc
006aa2ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006aa2b0  50 37 9f e5                                      ldr r3, [pc, #0x750]
006aa2b4  04 00 8d e5                                      str r0, [sp, #4]
006aa2b8  58 10 8d e2                                      add r1, sp, #0x58
006aa2bc  03 30 8f e0                                      add r3, pc, r3
006aa2c0  00 30 8d e5                                      str r3, [sp]
006aa2c4  04 20 a0 e1                                      mov r2, r4
006aa2c8  00 30 e0 e3                                      mvn r3, #0
006aa2cc  08 00 a0 e1                                      mov r0, r8
006aa2d0  37 ff 2f e1                                      blx r7
006aa2d4  64 01 84 e5                                      str r0, [r4, #0x164]
006aa2d8  00 30 96 e5                                      ldr r3, [r6]
006aa2dc  06 00 a0 e1                                      mov r0, r6
006aa2e0  0f e0 a0 e1                                      mov lr, pc
006aa2e4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006aa2e8  05 00 50 e1                                      cmp r0, r5
006aa2ec  42 00 00 0a                                      beq #0x6aa3fc
006aa2f0  64 81 94 e5                                      ldr r8, [r4, #0x164]
006aa2f4  00 30 96 e5                                      ldr r3, [r6]
006aa2f8  06 00 a0 e1                                      mov r0, r6
006aa2fc  00 20 98 e5                                      ldr r2, [r8]
006aa300  90 70 92 e5                                      ldr r7, [r2, #0x90]
006aa304  0f e0 a0 e1                                      mov lr, pc
006aa308  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006aa30c  00 10 a0 e1                                      mov r1, r0
006aa310  08 00 a0 e1                                      mov r0, r8
006aa314  37 ff 2f e1                                      blx r7
006aa318  64 81 94 e5                                      ldr r8, [r4, #0x164]
006aa31c  02 10 a0 e3                                      mov r1, #2
006aa320  00 30 96 e5                                      ldr r3, [r6]
006aa324  00 20 98 e5                                      ldr r2, [r8]
006aa328  06 00 a0 e1                                      mov r0, r6
006aa32c  94 70 92 e5                                      ldr r7, [r2, #0x94]
006aa330  0f e0 a0 e1                                      mov lr, pc
006aa334  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa338  12 10 a0 e3                                      mov r1, #0x12
006aa33c  00 a0 a0 e1                                      mov sl, r0
006aa340  00 30 96 e5                                      ldr r3, [r6]
006aa344  06 00 a0 e1                                      mov r0, r6
006aa348  0f e0 a0 e1                                      mov lr, pc
006aa34c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aa350  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006aa354  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006aa358  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006aa35c  22 20 cd e5                                      strb r2, [sp, #0x22]
006aa360  23 30 cd e5                                      strb r3, [sp, #0x23]
006aa364  20 00 cd e5                                      strb r0, [sp, #0x20]
006aa368  21 10 cd e5                                      strb r1, [sp, #0x21]
006aa36c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006aa370  0a 20 a0 e1                                      mov r2, sl
006aa374  08 00 a0 e1                                      mov r0, r8
006aa378  01 30 a0 e1                                      mov r3, r1
006aa37c  9c 10 8d e5                                      str r1, [sp, #0x9c]
006aa380  00 50 8d e5                                      str r5, [sp]
006aa384  05 10 a0 e1                                      mov r1, r5
006aa388  37 ff 2f e1                                      blx r7
006aa38c  64 81 94 e5                                      ldr r8, [r4, #0x164]
006aa390  02 10 a0 e3                                      mov r1, #2
006aa394  00 30 96 e5                                      ldr r3, [r6]
006aa398  00 20 98 e5                                      ldr r2, [r8]
006aa39c  06 00 a0 e1                                      mov r0, r6
006aa3a0  94 70 92 e5                                      ldr r7, [r2, #0x94]
006aa3a4  0f e0 a0 e1                                      mov lr, pc
006aa3a8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa3ac  12 10 a0 e3                                      mov r1, #0x12
006aa3b0  00 a0 a0 e1                                      mov sl, r0
006aa3b4  00 30 96 e5                                      ldr r3, [r6]
006aa3b8  06 00 a0 e1                                      mov r0, r6
006aa3bc  0f e0 a0 e1                                      mov lr, pc
006aa3c0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aa3c4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006aa3c8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006aa3cc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006aa3d0  21 10 cd e5                                      strb r1, [sp, #0x21]
006aa3d4  22 20 cd e5                                      strb r2, [sp, #0x22]
006aa3d8  20 00 cd e5                                      strb r0, [sp, #0x20]
006aa3dc  23 30 cd e5                                      strb r3, [sp, #0x23]
006aa3e0  20 30 9d e5                                      ldr r3, [sp, #0x20]
006aa3e4  00 50 8d e5                                      str r5, [sp]
006aa3e8  08 00 a0 e1                                      mov r0, r8
006aa3ec  98 30 8d e5                                      str r3, [sp, #0x98]
006aa3f0  0a 20 a0 e1                                      mov r2, sl
006aa3f4  01 10 a0 e3                                      mov r1, #1
006aa3f8  37 ff 2f e1                                      blx r7
006aa3fc  64 31 94 e5                                      ldr r3, [r4, #0x164]
006aa400  03 00 a0 e1                                      mov r0, r3
006aa404  01 10 a0 e3                                      mov r1, #1
006aa408  00 30 93 e5                                      ldr r3, [r3]
006aa40c  0f e0 a0 e1                                      mov lr, pc
006aa410  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa414  64 31 94 e5                                      ldr r3, [r4, #0x164]
006aa418  00 50 a0 e3                                      mov r5, #0
006aa41c  01 10 a0 e3                                      mov r1, #1
006aa420  34 51 c3 e5                                      strb r5, [r3, #0x134]
006aa424  01 20 a0 e1                                      mov r2, r1
006aa428  64 01 94 e5                                      ldr r0, [r4, #0x164]
006aa42c  05 30 a0 e1                                      mov r3, r5
006aa430  00 50 8d e5                                      str r5, [sp]
006aa434  01 29 fa eb                                      bl #0x534840
006aa438  64 31 94 e5                                      ldr r3, [r4, #0x164]
006aa43c  05 00 56 e1                                      cmp r6, r5
006aa440  00 20 93 e5                                      ldr r2, [r3]
006aa444  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006aa448  02 30 83 e0                                      add r3, r3, r2
006aa44c  04 20 93 e5                                      ldr r2, [r3, #4]
006aa450  01 20 82 e2                                      add r2, r2, #1
006aa454  04 20 83 e5                                      str r2, [r3, #4]
006aa458  50 81 94 e5                                      ldr r8, [r4, #0x150]
006aa45c  30 20 94 e5                                      ldr r2, [r4, #0x30]
006aa460  28 30 94 e5                                      ldr r3, [r4, #0x28]
006aa464  00 10 98 e5                                      ldr r1, [r8]
006aa468  02 30 63 e0                                      rsb r3, r3, r2
006aa46c  50 20 43 e2                                      sub r2, r3, #0x50
006aa470  0a 30 43 e2                                      sub r3, r3, #0xa
006aa474  78 70 91 e5                                      ldr r7, [r1, #0x78]
006aa478  48 20 8d e5                                      str r2, [sp, #0x48]
006aa47c  50 30 8d e5                                      str r3, [sp, #0x50]
006aa480  1e 20 a0 e3                                      mov r2, #0x1e
006aa484  32 30 a0 e3                                      mov r3, #0x32
006aa488  4c 20 8d e5                                      str r2, [sp, #0x4c]
006aa48c  54 30 8d e5                                      str r3, [sp, #0x54]
006aa490  31 01 00 0a                                      beq #0x6aa95c
006aa494  05 10 a0 e1                                      mov r1, r5
006aa498  00 30 96 e5                                      ldr r3, [r6]
006aa49c  06 00 a0 e1                                      mov r0, r6
006aa4a0  0f e0 a0 e1                                      mov lr, pc
006aa4a4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006aa4a8  00 50 a0 e3                                      mov r5, #0
006aa4ac  04 20 a0 e1                                      mov r2, r4
006aa4b0  00 00 8d e5                                      str r0, [sp]
006aa4b4  00 30 e0 e3                                      mvn r3, #0
006aa4b8  08 00 a0 e1                                      mov r0, r8
006aa4bc  48 10 8d e2                                      add r1, sp, #0x48
006aa4c0  04 50 8d e5                                      str r5, [sp, #4]
006aa4c4  37 ff 2f e1                                      blx r7
006aa4c8  68 01 84 e5                                      str r0, [r4, #0x168]
006aa4cc  00 30 90 e5                                      ldr r3, [r0]
006aa4d0  01 10 a0 e3                                      mov r1, #1
006aa4d4  0f e0 a0 e1                                      mov lr, pc
006aa4d8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa4dc  01 10 a0 e3                                      mov r1, #1
006aa4e0  01 20 a0 e1                                      mov r2, r1
006aa4e4  68 01 94 e5                                      ldr r0, [r4, #0x168]
006aa4e8  05 30 a0 e1                                      mov r3, r5
006aa4ec  00 50 8d e5                                      str r5, [sp]
006aa4f0  d2 28 fa eb                                      bl #0x534840
006aa4f4  68 31 94 e5                                      ldr r3, [r4, #0x168]
006aa4f8  05 00 56 e1                                      cmp r6, r5
006aa4fc  00 20 93 e5                                      ldr r2, [r3]
006aa500  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006aa504  02 30 83 e0                                      add r3, r3, r2
006aa508  04 20 93 e5                                      ldr r2, [r3, #4]
006aa50c  01 20 82 e2                                      add r2, r2, #1
006aa510  04 20 83 e5                                      str r2, [r3, #4]
006aa514  50 81 94 e5                                      ldr r8, [r4, #0x150]
006aa518  30 20 94 e5                                      ldr r2, [r4, #0x30]
006aa51c  28 30 94 e5                                      ldr r3, [r4, #0x28]
006aa520  00 10 98 e5                                      ldr r1, [r8]
006aa524  02 30 63 e0                                      rsb r3, r3, r2
006aa528  50 20 43 e2                                      sub r2, r3, #0x50
006aa52c  0a 30 43 e2                                      sub r3, r3, #0xa
006aa530  78 70 91 e5                                      ldr r7, [r1, #0x78]
006aa534  38 20 8d e5                                      str r2, [sp, #0x38]
006aa538  40 30 8d e5                                      str r3, [sp, #0x40]
006aa53c  37 20 a0 e3                                      mov r2, #0x37
006aa540  4b 30 a0 e3                                      mov r3, #0x4b
006aa544  3c 20 8d e5                                      str r2, [sp, #0x3c]
006aa548  44 30 8d e5                                      str r3, [sp, #0x44]
006aa54c  ff 00 00 0a                                      beq #0x6aa950
006aa550  06 00 a0 e1                                      mov r0, r6
006aa554  00 30 96 e5                                      ldr r3, [r6]
006aa558  01 10 a0 e3                                      mov r1, #1
006aa55c  0f e0 a0 e1                                      mov lr, pc
006aa560  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006aa564  00 50 a0 e3                                      mov r5, #0
006aa568  04 20 a0 e1                                      mov r2, r4
006aa56c  00 00 8d e5                                      str r0, [sp]
006aa570  00 30 e0 e3                                      mvn r3, #0
006aa574  38 10 8d e2                                      add r1, sp, #0x38
006aa578  04 50 8d e5                                      str r5, [sp, #4]
006aa57c  08 00 a0 e1                                      mov r0, r8
006aa580  37 ff 2f e1                                      blx r7
006aa584  6c 01 84 e5                                      str r0, [r4, #0x16c]
006aa588  00 30 90 e5                                      ldr r3, [r0]
006aa58c  01 10 a0 e3                                      mov r1, #1
006aa590  0f e0 a0 e1                                      mov lr, pc
006aa594  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa598  01 10 a0 e3                                      mov r1, #1
006aa59c  01 20 a0 e1                                      mov r2, r1
006aa5a0  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
006aa5a4  05 30 a0 e1                                      mov r3, r5
006aa5a8  00 50 8d e5                                      str r5, [sp]
006aa5ac  a3 28 fa eb                                      bl #0x534840
006aa5b0  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
006aa5b4  00 20 93 e5                                      ldr r2, [r3]
006aa5b8  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006aa5bc  02 30 83 e0                                      add r3, r3, r2
006aa5c0  04 20 93 e5                                      ldr r2, [r3, #4]
006aa5c4  01 20 82 e2                                      add r2, r2, #1
006aa5c8  04 20 83 e5                                      str r2, [r3, #4]
006aa5cc  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aa5d0  28 50 8d e5                                      str r5, [sp, #0x28]
006aa5d4  2c 50 8d e5                                      str r5, [sp, #0x2c]
006aa5d8  30 50 8d e5                                      str r5, [sp, #0x30]
006aa5dc  34 50 8d e5                                      str r5, [sp, #0x34]
006aa5e0  03 00 a0 e1                                      mov r0, r3
006aa5e4  00 30 93 e5                                      ldr r3, [r3]
006aa5e8  0f e0 a0 e1                                      mov lr, pc
006aa5ec  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006aa5f0  14 24 9f e5                                      ldr r2, [pc, #0x414]
006aa5f4  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
006aa5f8  05 30 a0 e1                                      mov r3, r5
006aa5fc  02 20 8f e0                                      add r2, pc, r2
006aa600  94 00 8d e2                                      add r0, sp, #0x94
006aa604  01 0b fd eb                                      bl #0x5ed210
006aa608  94 30 9d e5                                      ldr r3, [sp, #0x94]
006aa60c  05 00 53 e1                                      cmp r3, r5
006aa610  04 20 93 15                                      ldrne r2, [r3, #4]
006aa614  01 20 82 12                                      addne r2, r2, #1
006aa618  04 20 83 15                                      strne r2, [r3, #4]
006aa61c  80 01 94 e5                                      ldr r0, [r4, #0x180]
006aa620  80 31 84 e5                                      str r3, [r4, #0x180]
006aa624  00 00 50 e3                                      cmp r0, #0
006aa628  00 00 00 0a                                      beq #0x6aa630
006aa62c  d4 cb f1 eb                                      bl #0x31d584
006aa630  94 00 9d e5                                      ldr r0, [sp, #0x94]
006aa634  00 00 50 e3                                      cmp r0, #0
006aa638  00 00 00 0a                                      beq #0x6aa640
006aa63c  d0 cb f1 eb                                      bl #0x31d584
006aa640  80 31 94 e5                                      ldr r3, [r4, #0x180]
006aa644  00 00 53 e3                                      cmp r3, #0
006aa648  d3 00 00 0a                                      beq #0x6aa99c
006aa64c  50 01 94 e5                                      ldr r0, [r4, #0x150]
006aa650  14 30 a0 e3                                      mov r3, #0x14
006aa654  28 30 8d e5                                      str r3, [sp, #0x28]
006aa658  2c 30 8d e5                                      str r3, [sp, #0x2c]
006aa65c  00 20 90 e5                                      ldr r2, [r0]
006aa660  00 b0 e0 e3                                      mvn fp, #0
006aa664  00 80 a0 e3                                      mov r8, #0
006aa668  8c c0 92 e5                                      ldr ip, [r2, #0x8c]
006aa66c  06 1d 84 e2                                      add r1, r4, #0x180
006aa670  80 20 8d e2                                      add r2, sp, #0x80
006aa674  84 30 8d e5                                      str r3, [sp, #0x84]
006aa678  80 30 8d e5                                      str r3, [sp, #0x80]
006aa67c  00 40 8d e5                                      str r4, [sp]
006aa680  01 30 a0 e3                                      mov r3, #1
006aa684  04 b0 8d e5                                      str fp, [sp, #4]
006aa688  08 80 8d e5                                      str r8, [sp, #8]
006aa68c  3c ff 2f e1                                      blx ip
006aa690  7c 01 84 e5                                      str r0, [r4, #0x17c]
006aa694  00 30 90 e5                                      ldr r3, [r0]
006aa698  01 10 a0 e3                                      mov r1, #1
006aa69c  0f e0 a0 e1                                      mov lr, pc
006aa6a0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa6a4  64 53 9f e5                                      ldr r5, [pc, #0x364]
006aa6a8  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006aa6ac  05 50 8f e0                                      add r5, pc, r5
006aa6b0  00 20 93 e5                                      ldr r2, [r3]
006aa6b4  53 1f 85 e2                                      add r1, r5, #0x14c
006aa6b8  14 10 8d e5                                      str r1, [sp, #0x14]
006aa6bc  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006aa6c0  17 1e 84 e2                                      add r1, r4, #0x170
006aa6c4  18 10 8d e5                                      str r1, [sp, #0x18]
006aa6c8  02 30 83 e0                                      add r3, r3, r2
006aa6cc  04 20 93 e5                                      ldr r2, [r3, #4]
006aa6d0  28 10 8d e2                                      add r1, sp, #0x28
006aa6d4  10 10 8d e5                                      str r1, [sp, #0x10]
006aa6d8  01 20 82 e2                                      add r2, r2, #1
006aa6dc  04 20 83 e5                                      str r2, [r3, #4]
006aa6e0  78 30 8d e2                                      add r3, sp, #0x78
006aa6e4  88 50 85 e2                                      add r5, r5, #0x88
006aa6e8  1c 30 8d e5                                      str r3, [sp, #0x1c]
006aa6ec  82 00 00 ea                                      b #0x6aa8fc
006aa6f0  0c 70 15 e5                                      ldr r7, [r5, #-0xc]
006aa6f4  08 60 15 e5                                      ldr r6, [r5, #-8]
006aa6f8  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aa6fc  0f a0 87 e2                                      add sl, r7, #0xf
006aa700  14 90 86 e2                                      add sb, r6, #0x14
006aa704  28 70 8d e5                                      str r7, [sp, #0x28]
006aa708  2c 60 8d e5                                      str r6, [sp, #0x2c]
006aa70c  30 a0 8d e5                                      str sl, [sp, #0x30]
006aa710  34 90 8d e5                                      str sb, [sp, #0x34]
006aa714  00 c0 93 e5                                      ldr ip, [r3]
006aa718  03 00 a0 e1                                      mov r0, r3
006aa71c  00 80 8d e5                                      str r8, [sp]
006aa720  08 30 a0 e1                                      mov r3, r8
006aa724  10 08 8d e9                                      stmib sp, {r4, fp}
006aa728  0c 80 8d e5                                      str r8, [sp, #0xc]
006aa72c  10 20 9d e5                                      ldr r2, [sp, #0x10]
006aa730  0f e0 a0 e1                                      mov lr, pc
006aa734  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
006aa738  01 10 a0 e3                                      mov r1, #1
006aa73c  00 30 90 e5                                      ldr r3, [r0]
006aa740  0f e0 a0 e1                                      mov lr, pc
006aa744  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa748  10 10 15 e5                                      ldr r1, [r5, #-0x10]
006aa74c  00 00 51 e3                                      cmp r1, #0
006aa750  13 00 00 0a                                      beq #0x6aa7a4
006aa754  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aa758  34 00 87 e2                                      add r0, r7, #0x34
006aa75c  43 20 87 e2                                      add r2, r7, #0x43
006aa760  28 00 8d e5                                      str r0, [sp, #0x28]
006aa764  30 20 8d e5                                      str r2, [sp, #0x30]
006aa768  2c 60 8d e5                                      str r6, [sp, #0x2c]
006aa76c  34 90 8d e5                                      str sb, [sp, #0x34]
006aa770  00 c0 93 e5                                      ldr ip, [r3]
006aa774  03 00 a0 e1                                      mov r0, r3
006aa778  00 80 8d e5                                      str r8, [sp]
006aa77c  08 30 a0 e1                                      mov r3, r8
006aa780  10 08 8d e9                                      stmib sp, {r4, fp}
006aa784  0c 80 8d e5                                      str r8, [sp, #0xc]
006aa788  10 20 9d e5                                      ldr r2, [sp, #0x10]
006aa78c  0f e0 a0 e1                                      mov lr, pc
006aa790  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
006aa794  01 10 a0 e3                                      mov r1, #1
006aa798  00 30 90 e5                                      ldr r3, [r0]
006aa79c  0f e0 a0 e1                                      mov lr, pc
006aa7a0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa7a4  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aa7a8  23 20 8a e2                                      add r2, sl, #0x23
006aa7ac  30 20 8d e5                                      str r2, [sp, #0x30]
006aa7b0  28 a0 8d e5                                      str sl, [sp, #0x28]
006aa7b4  2c 60 8d e5                                      str r6, [sp, #0x2c]
006aa7b8  34 90 8d e5                                      str sb, [sp, #0x34]
006aa7bc  00 c0 93 e5                                      ldr ip, [r3]
006aa7c0  10 20 9d e5                                      ldr r2, [sp, #0x10]
006aa7c4  14 10 15 e5                                      ldr r1, [r5, #-0x14]
006aa7c8  03 00 a0 e1                                      mov r0, r3
006aa7cc  00 40 8d e5                                      str r4, [sp]
006aa7d0  01 30 a0 e3                                      mov r3, #1
006aa7d4  04 b0 8d e5                                      str fp, [sp, #4]
006aa7d8  0f e0 a0 e1                                      mov lr, pc
006aa7dc  ac f0 9c e5                                      ldr pc, [ip, #0xac]
006aa7e0  78 00 8d e5                                      str r0, [sp, #0x78]
006aa7e4  00 30 90 e5                                      ldr r3, [r0]
006aa7e8  01 10 a0 e3                                      mov r1, #1
006aa7ec  0f e0 a0 e1                                      mov lr, pc
006aa7f0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa7f4  78 10 9d e5                                      ldr r1, [sp, #0x78]
006aa7f8  10 20 9d e5                                      ldr r2, [sp, #0x10]
006aa7fc  82 e0 87 e2                                      add lr, r7, #0x82
006aa800  00 30 91 e5                                      ldr r3, [r1]
006aa804  10 a0 86 e2                                      add sl, r6, #0x10
006aa808  46 70 87 e2                                      add r7, r7, #0x46
006aa80c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
006aa810  04 60 86 e2                                      add r6, r6, #4
006aa814  04 30 a0 e1                                      mov r3, r4
006aa818  00 00 81 e0                                      add r0, r1, r0
006aa81c  04 c0 90 e5                                      ldr ip, [r0, #4]
006aa820  01 10 a0 e3                                      mov r1, #1
006aa824  01 c0 8c e0                                      add ip, ip, r1
006aa828  04 c0 80 e5                                      str ip, [r0, #4]
006aa82c  50 c1 94 e5                                      ldr ip, [r4, #0x150]
006aa830  30 e0 8d e5                                      str lr, [sp, #0x30]
006aa834  28 70 8d e5                                      str r7, [sp, #0x28]
006aa838  2c 60 8d e5                                      str r6, [sp, #0x2c]
006aa83c  34 a0 8d e5                                      str sl, [sp, #0x34]
006aa840  0c 00 a0 e1                                      mov r0, ip
006aa844  00 c0 9c e5                                      ldr ip, [ip]
006aa848  00 b0 8d e5                                      str fp, [sp]
006aa84c  0f e0 a0 e1                                      mov lr, pc
006aa850  88 f0 9c e5                                      ldr pc, [ip, #0x88]
006aa854  7c 00 8d e5                                      str r0, [sp, #0x7c]
006aa858  00 30 90 e5                                      ldr r3, [r0]
006aa85c  01 10 a0 e3                                      mov r1, #1
006aa860  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006aa864  03 00 80 e0                                      add r0, r0, r3
006aa868  04 30 90 e5                                      ldr r3, [r0, #4]
006aa86c  01 30 83 e0                                      add r3, r3, r1
006aa870  04 30 80 e5                                      str r3, [r0, #4]
006aa874  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006aa878  03 00 a0 e1                                      mov r0, r3
006aa87c  00 30 93 e5                                      ldr r3, [r3]
006aa880  0f e0 a0 e1                                      mov lr, pc
006aa884  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa888  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006aa88c  04 20 15 e5                                      ldr r2, [r5, #-4]
006aa890  00 10 95 e5                                      ldr r1, [r5]
006aa894  03 00 a0 e1                                      mov r0, r3
006aa898  00 30 93 e5                                      ldr r3, [r3]
006aa89c  01 10 62 e0                                      rsb r1, r2, r1
006aa8a0  0f e0 a0 e1                                      mov lr, pc
006aa8a4  80 f0 93 e5                                      ldr pc, [r3, #0x80]
006aa8a8  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006aa8ac  01 10 a0 e3                                      mov r1, #1
006aa8b0  03 00 a0 e1                                      mov r0, r3
006aa8b4  00 30 93 e5                                      ldr r3, [r3]
006aa8b8  0f e0 a0 e1                                      mov lr, pc
006aa8bc  88 f0 93 e5                                      ldr pc, [r3, #0x88]
006aa8c0  74 11 94 e5                                      ldr r1, [r4, #0x174]
006aa8c4  78 31 94 e5                                      ldr r3, [r4, #0x178]
006aa8c8  03 00 51 e1                                      cmp r1, r3
006aa8cc  1b 00 00 0a                                      beq #0x6aa940
006aa8d0  78 30 9d e5                                      ldr r3, [sp, #0x78]
006aa8d4  00 30 81 e5                                      str r3, [r1]
006aa8d8  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006aa8dc  04 30 81 e5                                      str r3, [r1, #4]
006aa8e0  74 31 94 e5                                      ldr r3, [r4, #0x174]
006aa8e4  08 30 83 e2                                      add r3, r3, #8
006aa8e8  74 31 84 e5                                      str r3, [r4, #0x174]
006aa8ec  14 10 9d e5                                      ldr r1, [sp, #0x14]
006aa8f0  1c 50 85 e2                                      add r5, r5, #0x1c
006aa8f4  01 00 55 e1                                      cmp r5, r1
006aa8f8  07 00 00 0a                                      beq #0x6aa91c
006aa8fc  18 10 15 e5                                      ldr r1, [r5, #-0x18]
006aa900  00 00 51 e3                                      cmp r1, #0
006aa904  79 ff ff 1a                                      bne #0x6aa6f0
006aa908  0c 70 15 e5                                      ldr r7, [r5, #-0xc]
006aa90c  08 60 15 e5                                      ldr r6, [r5, #-8]
006aa910  0f a0 87 e2                                      add sl, r7, #0xf
006aa914  14 90 86 e2                                      add sb, r6, #0x14
006aa918  8a ff ff ea                                      b #0x6aa748
006aa91c  6c 11 94 e5                                      ldr r1, [r4, #0x16c]
006aa920  04 00 a0 e1                                      mov r0, r4
006aa924  11 2d fa eb                                      bl #0x535d70
006aa928  04 00 a0 e1                                      mov r0, r4
006aa92c  68 11 94 e5                                      ldr r1, [r4, #0x168]
006aa930  0e 2d fa eb                                      bl #0x535d70
006aa934  04 00 a0 e1                                      mov r0, r4
006aa938  a4 d0 8d e2                                      add sp, sp, #0xa4
006aa93c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006aa940  18 00 9d e5                                      ldr r0, [sp, #0x18]
006aa944  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006aa948  b0 f8 ff eb                                      bl #0x6a8c10
006aa94c  e6 ff ff ea                                      b #0x6aa8ec
006aa950  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
006aa954  00 00 8f e0                                      add r0, pc, r0
006aa958  01 ff ff ea                                      b #0x6aa564
006aa95c  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
006aa960  00 00 8f e0                                      add r0, pc, r0
006aa964  cf fe ff ea                                      b #0x6aa4a8
006aa968  ac 20 9f e5                                      ldr r2, [pc, #0xac]
006aa96c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
006aa970  08 00 a0 e1                                      mov r0, r8
006aa974  02 20 8f e0                                      add r2, pc, r2
006aa978  03 30 8f e0                                      add r3, pc, r3
006aa97c  0c 00 8d e8                                      stm sp, {r2, r3}
006aa980  58 10 8d e2                                      add r1, sp, #0x58
006aa984  00 30 e0 e3                                      mvn r3, #0
006aa988  04 20 a0 e1                                      mov r2, r4
006aa98c  37 ff 2f e1                                      blx r7
006aa990  00 30 a0 e1                                      mov r3, r0
006aa994  64 01 84 e5                                      str r0, [r4, #0x164]
006aa998  98 fe ff ea                                      b #0x6aa400
006aa99c  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aa9a0  80 20 a0 e3                                      mov r2, #0x80
006aa9a4  8c 20 8d e5                                      str r2, [sp, #0x8c]
006aa9a8  88 20 8d e5                                      str r2, [sp, #0x88]
006aa9ac  03 00 a0 e1                                      mov r0, r3
006aa9b0  00 30 93 e5                                      ldr r3, [r3]
006aa9b4  0f e0 a0 e1                                      mov lr, pc
006aa9b8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aa9bc  01 10 a0 e3                                      mov r1, #1
006aa9c0  00 30 90 e5                                      ldr r3, [r0]
006aa9c4  0f e0 a0 e1                                      mov lr, pc
006aa9c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aa9cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006aa9d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006aa9d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006aa9d8  21 10 cd e5                                      strb r1, [sp, #0x21]
006aa9dc  22 20 cd e5                                      strb r2, [sp, #0x22]
006aa9e0  23 30 cd e5                                      strb r3, [sp, #0x23]
006aa9e4  20 00 cd e5                                      strb r0, [sp, #0x20]
006aa9e8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006aa9ec  04 00 a0 e1                                      mov r0, r4
006aa9f0  88 10 8d e2                                      add r1, sp, #0x88
006aa9f4  0c 30 a0 e1                                      mov r3, ip
006aa9f8  01 20 a0 e3                                      mov r2, #1
006aa9fc  90 c0 8d e5                                      str ip, [sp, #0x90]
006aaa00  53 f7 ff eb                                      bl #0x6a8754
006aaa04  10 ff ff ea                                      b #0x6aa64c
; mapping-symbol data/literal pool
006aaa08  54 49 21 00 74 0b 24 00 6c d2 2a 00 44 38 23 00  .byte 0x54, 0x49, 0x21, 0x00, 0x74, 0x0b, 0x24, 0x00, 0x6c, 0xd2, 0x2a, 0x00, 0x44, 0x38, 0x23, 0x00
006aaa18  28 38 23 00 9c 42 21 00 f8 37 23 00              .byte 0x28, 0x38, 0x23, 0x00, 0x9c, 0x42, 0x21, 0x00, 0xf8, 0x37, 0x23, 0x00

; FUNCTION 0x006aaa24, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZTv0_n24_N6glitch3gui21CGUIColorSelectDialogD0Ev
; demangled: virtual thunk to glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog()
; decoder-mode: arm
006aaa24  00 30 90 e5                                      ldr r3, [r0]
006aaa28  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006aaa2c  03 00 80 e0                                      add r0, r0, r3
006aaa30  cf fc ff ea                                      b #0x6a9d74

; FUNCTION 0x006aaa34, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZTv0_n12_N6glitch3gui21CGUIColorSelectDialogD0Ev
; demangled: virtual thunk to glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog()
; decoder-mode: arm
006aaa34  00 30 90 e5                                      ldr r3, [r0]
006aaa38  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006aaa3c  03 00 80 e0                                      add r0, r0, r3
006aaa40  cb fc ff ea                                      b #0x6a9d74

; FUNCTION 0x006aaa44, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZTv0_n24_N6glitch3gui21CGUIColorSelectDialogD1Ev
; demangled: virtual thunk to glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog()
; decoder-mode: arm
006aaa44  00 30 90 e5                                      ldr r3, [r0]
006aaa48  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006aaa4c  03 00 80 e0                                      add r0, r0, r3
006aaa50  6b fc ff ea                                      b #0x6a9c04

; FUNCTION 0x006aaa54, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIColorSelectDialog
; alias: _ZTv0_n12_N6glitch3gui21CGUIColorSelectDialogD1Ev
; demangled: virtual thunk to glitch::gui::CGUIColorSelectDialog::~CGUIColorSelectDialog()
; decoder-mode: arm
006aaa54  00 30 90 e5                                      ldr r3, [r0]
006aaa58  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006aaa5c  03 00 80 e0                                      add r0, r0, r3
006aaa60  67 fc ff ea                                      b #0x6a9c04
