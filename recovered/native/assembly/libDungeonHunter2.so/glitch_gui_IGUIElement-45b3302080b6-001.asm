; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00534740, declared_size=256, range_size=256, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement19setRelativePositionERKNS_4core4rectIiEE
; demangled: glitch::gui::IGUIElement::setRelativePosition(glitch::core::rect<int> const&)
; decoder-mode: arm
00534740  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00534744  24 60 90 e5                                      ldr r6, [r0, #0x24]
00534748  00 40 a0 e1                                      mov r4, r0
0053474c  01 50 a0 e1                                      mov r5, r1
00534750  00 00 56 e3                                      cmp r6, #0
00534754  1a 00 00 0a                                      beq #0x5347c4
00534758  38 30 96 e5                                      ldr r3, [r6, #0x38]
0053475c  40 00 96 e5                                      ldr r0, [r6, #0x40]
00534760  3c 80 96 e5                                      ldr r8, [r6, #0x3c]
00534764  00 00 63 e0                                      rsb r0, r3, r0
00534768  7d 68 f7 eb                                      bl #0x30e964
0053476c  00 70 a0 e1                                      mov r7, r0
00534770  44 00 96 e5                                      ldr r0, [r6, #0x44]
00534774  00 00 68 e0                                      rsb r0, r8, r0
00534778  79 68 f7 eb                                      bl #0x30e964
0053477c  40 31 94 e5                                      ldr r3, [r4, #0x140]
00534780  00 60 a0 e1                                      mov r6, r0
00534784  03 00 53 e3                                      cmp r3, #3
00534788  26 00 00 0a                                      beq #0x534828
0053478c  44 31 94 e5                                      ldr r3, [r4, #0x144]
00534790  03 00 53 e3                                      cmp r3, #3
00534794  1d 00 00 0a                                      beq #0x534810
00534798  48 31 94 e5                                      ldr r3, [r4, #0x148]
0053479c  03 00 53 e3                                      cmp r3, #3
005347a0  14 00 00 0a                                      beq #0x5347f8
005347a4  4c 31 94 e5                                      ldr r3, [r4, #0x14c]
005347a8  03 00 53 e3                                      cmp r3, #3
005347ac  04 00 00 1a                                      bne #0x5347c4
005347b0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005347b4  6a 68 f7 eb                                      bl #0x30e964
005347b8  06 10 a0 e1                                      mov r1, r6
005347bc  34 69 f7 eb                                      bl #0x30ec94
005347c0  84 00 84 e5                                      str r0, [r4, #0x84]
005347c4  00 20 95 e5                                      ldr r2, [r5]
005347c8  04 00 a0 e1                                      mov r0, r4
005347cc  00 30 94 e5                                      ldr r3, [r4]
005347d0  58 20 84 e5                                      str r2, [r4, #0x58]
005347d4  04 20 95 e5                                      ldr r2, [r5, #4]
005347d8  5c 20 84 e5                                      str r2, [r4, #0x5c]
005347dc  08 20 95 e5                                      ldr r2, [r5, #8]
005347e0  60 20 84 e5                                      str r2, [r4, #0x60]
005347e4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005347e8  64 20 84 e5                                      str r2, [r4, #0x64]
005347ec  0f e0 a0 e1                                      mov lr, pc
005347f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005347f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005347f8  04 00 95 e5                                      ldr r0, [r5, #4]
005347fc  58 68 f7 eb                                      bl #0x30e964
00534800  06 10 a0 e1                                      mov r1, r6
00534804  22 69 f7 eb                                      bl #0x30ec94
00534808  7c 00 84 e5                                      str r0, [r4, #0x7c]
0053480c  e4 ff ff ea                                      b #0x5347a4
00534810  08 00 95 e5                                      ldr r0, [r5, #8]
00534814  52 68 f7 eb                                      bl #0x30e964
00534818  07 10 a0 e1                                      mov r1, r7
0053481c  1c 69 f7 eb                                      bl #0x30ec94
00534820  80 00 84 e5                                      str r0, [r4, #0x80]
00534824  db ff ff ea                                      b #0x534798
00534828  00 00 95 e5                                      ldr r0, [r5]
0053482c  4c 68 f7 eb                                      bl #0x30e964
00534830  07 10 a0 e1                                      mov r1, r7
00534834  16 69 f7 eb                                      bl #0x30ec94
00534838  78 00 84 e5                                      str r0, [r4, #0x78]
0053483c  d2 ff ff ea                                      b #0x53478c

; FUNCTION 0x00534840, declared_size=224, range_size=224, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement12setAlignmentENS0_14EGUI_ALIGNMENTES2_S2_S2_
; demangled: glitch::gui::IGUIElement::setAlignment(glitch::gui::EGUI_ALIGNMENT, glitch::gui::EGUI_ALIGNMENT, glitch::gui::EGUI_ALIGNMENT, glitch::gui::EGUI_ALIGNMENT)
; decoder-mode: arm
00534840  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00534844  48 31 80 e5                                      str r3, [r0, #0x148]
00534848  24 50 90 e5                                      ldr r5, [r0, #0x24]
0053484c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00534850  00 40 a0 e1                                      mov r4, r0
00534854  00 00 55 e3                                      cmp r5, #0
00534858  4c 31 80 e5                                      str r3, [r0, #0x14c]
0053485c  01 70 a0 e1                                      mov r7, r1
00534860  02 60 a0 e1                                      mov r6, r2
00534864  40 11 84 e5                                      str r1, [r4, #0x140]
00534868  44 21 84 e5                                      str r2, [r4, #0x144]
0053486c  18 00 00 0a                                      beq #0x5348d4
00534870  38 30 95 e5                                      ldr r3, [r5, #0x38]
00534874  40 00 95 e5                                      ldr r0, [r5, #0x40]
00534878  3c a0 95 e5                                      ldr sl, [r5, #0x3c]
0053487c  00 00 63 e0                                      rsb r0, r3, r0
00534880  37 68 f7 eb                                      bl #0x30e964
00534884  00 80 a0 e1                                      mov r8, r0
00534888  44 00 95 e5                                      ldr r0, [r5, #0x44]
0053488c  00 00 6a e0                                      rsb r0, sl, r0
00534890  33 68 f7 eb                                      bl #0x30e964
00534894  03 00 57 e3                                      cmp r7, #3
00534898  00 50 a0 e1                                      mov r5, r0
0053489c  19 00 00 0a                                      beq #0x534908
005348a0  03 00 56 e3                                      cmp r6, #3
005348a4  11 00 00 0a                                      beq #0x5348f0
005348a8  48 31 94 e5                                      ldr r3, [r4, #0x148]
005348ac  03 00 53 e3                                      cmp r3, #3
005348b0  08 00 00 0a                                      beq #0x5348d8
005348b4  4c 31 94 e5                                      ldr r3, [r4, #0x14c]
005348b8  03 00 53 e3                                      cmp r3, #3
005348bc  04 00 00 1a                                      bne #0x5348d4
005348c0  64 00 94 e5                                      ldr r0, [r4, #0x64]
005348c4  26 68 f7 eb                                      bl #0x30e964
005348c8  05 10 a0 e1                                      mov r1, r5
005348cc  f0 68 f7 eb                                      bl #0x30ec94
005348d0  84 00 84 e5                                      str r0, [r4, #0x84]
005348d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005348d8  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
005348dc  20 68 f7 eb                                      bl #0x30e964
005348e0  05 10 a0 e1                                      mov r1, r5
005348e4  ea 68 f7 eb                                      bl #0x30ec94
005348e8  7c 00 84 e5                                      str r0, [r4, #0x7c]
005348ec  f0 ff ff ea                                      b #0x5348b4
005348f0  60 00 94 e5                                      ldr r0, [r4, #0x60]
005348f4  1a 68 f7 eb                                      bl #0x30e964
005348f8  08 10 a0 e1                                      mov r1, r8
005348fc  e4 68 f7 eb                                      bl #0x30ec94
00534900  80 00 84 e5                                      str r0, [r4, #0x80]
00534904  e7 ff ff ea                                      b #0x5348a8
00534908  58 00 94 e5                                      ldr r0, [r4, #0x58]
0053490c  14 68 f7 eb                                      bl #0x30e964
00534910  08 10 a0 e1                                      mov r1, r8
00534914  de 68 f7 eb                                      bl #0x30ec94
00534918  78 00 84 e5                                      str r0, [r4, #0x78]
0053491c  df ff ff ea                                      b #0x5348a0

; FUNCTION 0x00534920, declared_size=1200, range_size=1200, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement22updateAbsolutePositionEv
; demangled: glitch::gui::IGUIElement::updateAbsolutePosition()
; decoder-mode: arm
00534920  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00534924  24 50 90 e5                                      ldr r5, [r0, #0x24]
00534928  2c d0 4d e2                                      sub sp, sp, #0x2c
0053492c  00 40 a0 e1                                      mov r4, r0
00534930  00 00 55 e3                                      cmp r5, #0
00534934  05 30 a0 e1                                      mov r3, r5
00534938  1a 01 00 0a                                      beq #0x534da8
0053493c  9b 20 d0 e5                                      ldrb r2, [r0, #0x9b]
00534940  40 00 95 e5                                      ldr r0, [r5, #0x40]
00534944  38 80 95 e5                                      ldr r8, [r5, #0x38]
00534948  3c 70 95 e5                                      ldr r7, [r5, #0x3c]
0053494c  14 00 8d e5                                      str r0, [sp, #0x14]
00534950  44 10 95 e5                                      ldr r1, [r5, #0x44]
00534954  00 00 52 e3                                      cmp r2, #0
00534958  18 10 8d e5                                      str r1, [sp, #0x18]
0053495c  b0 00 00 0a                                      beq #0x534c24
00534960  03 20 a0 e1                                      mov r2, r3
00534964  24 30 93 e5                                      ldr r3, [r3, #0x24]
00534968  00 00 53 e3                                      cmp r3, #0
0053496c  fb ff ff 1a                                      bne #0x534960
00534970  54 30 92 e5                                      ldr r3, [r2, #0x54]
00534974  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00534978  10 30 8d e5                                      str r3, [sp, #0x10]
0053497c  48 30 92 e5                                      ldr r3, [r2, #0x48]
00534980  4c a0 92 e5                                      ldr sl, [r2, #0x4c]
00534984  50 20 92 e5                                      ldr r2, [r2, #0x50]
00534988  0c 00 68 e0                                      rsb r0, r8, ip
0053498c  0c 20 8d e5                                      str r2, [sp, #0xc]
00534990  18 20 9d e5                                      ldr r2, [sp, #0x18]
00534994  02 10 67 e0                                      rsb r1, r7, r2
00534998  68 20 94 e5                                      ldr r2, [r4, #0x68]
0053499c  74 90 94 e5                                      ldr sb, [r4, #0x74]
005349a0  70 c0 94 e5                                      ldr ip, [r4, #0x70]
005349a4  6c b0 94 e5                                      ldr fp, [r4, #0x6c]
005349a8  40 61 94 e5                                      ldr r6, [r4, #0x140]
005349ac  0c c0 62 e0                                      rsb ip, r2, ip
005349b0  09 20 6b e0                                      rsb r2, fp, sb
005349b4  01 20 62 e0                                      rsb r2, r2, r1
005349b8  03 00 56 e3                                      cmp r6, #3
005349bc  1c 20 8d e5                                      str r2, [sp, #0x1c]
005349c0  00 c0 6c e0                                      rsb ip, ip, r0
005349c4  44 91 94 05                                      ldreq sb, [r4, #0x144]
005349c8  c5 00 00 0a                                      beq #0x534ce4
005349cc  44 91 94 e5                                      ldr sb, [r4, #0x144]
005349d0  03 00 59 e3                                      cmp sb, #3
005349d4  00 00 a0 13                                      movne r0, #0
005349d8  24 00 8d 15                                      strne r0, [sp, #0x24]
005349dc  c0 00 00 0a                                      beq #0x534ce4
005349e0  48 b1 94 e5                                      ldr fp, [r4, #0x148]
005349e4  03 00 5b e3                                      cmp fp, #3
005349e8  4c 21 94 05                                      ldreq r2, [r4, #0x14c]
005349ec  9a 00 00 0a                                      beq #0x534c5c
005349f0  4c 21 94 e5                                      ldr r2, [r4, #0x14c]
005349f4  03 00 52 e3                                      cmp r2, #3
005349f8  00 10 a0 13                                      movne r1, #0
005349fc  20 10 8d 15                                      strne r1, [sp, #0x20]
00534a00  95 00 00 0a                                      beq #0x534c5c
00534a04  02 00 56 e3                                      cmp r6, #2
00534a08  9c 00 00 0a                                      beq #0x534c80
00534a0c  03 00 56 e3                                      cmp r6, #3
00534a10  c3 00 00 0a                                      beq #0x534d24
00534a14  01 00 56 e3                                      cmp r6, #1
00534a18  58 60 94 e5                                      ldr r6, [r4, #0x58]
00534a1c  0c 60 86 00                                      addeq r6, r6, ip
00534a20  58 60 84 05                                      streq r6, [r4, #0x58]
00534a24  02 00 59 e3                                      cmp sb, #2
00534a28  9a 00 00 0a                                      beq #0x534c98
00534a2c  03 00 59 e3                                      cmp sb, #3
00534a30  d1 00 00 0a                                      beq #0x534d7c
00534a34  01 00 59 e3                                      cmp sb, #1
00534a38  60 90 94 e5                                      ldr sb, [r4, #0x60]
00534a3c  0c 90 89 00                                      addeq sb, sb, ip
00534a40  60 90 84 05                                      streq sb, [r4, #0x60]
00534a44  02 00 5b e3                                      cmp fp, #2
00534a48  98 00 00 0a                                      beq #0x534cb0
00534a4c  03 00 5b e3                                      cmp fp, #3
00534a50  be 00 00 0a                                      beq #0x534d50
00534a54  01 00 5b e3                                      cmp fp, #1
00534a58  1c c0 9d 05                                      ldreq ip, [sp, #0x1c]
00534a5c  5c b0 94 e5                                      ldr fp, [r4, #0x5c]
00534a60  0c b0 8b 00                                      addeq fp, fp, ip
00534a64  5c b0 84 05                                      streq fp, [r4, #0x5c]
00534a68  02 00 52 e3                                      cmp r2, #2
00534a6c  96 00 00 0a                                      beq #0x534ccc
00534a70  03 00 52 e3                                      cmp r2, #3
00534a74  a2 00 00 0a                                      beq #0x534d04
00534a78  01 00 52 e3                                      cmp r2, #1
00534a7c  64 00 94 e5                                      ldr r0, [r4, #0x64]
00534a80  1c 10 9d 05                                      ldreq r1, [sp, #0x1c]
00534a84  01 00 80 00                                      addeq r0, r0, r1
00534a88  64 00 84 05                                      streq r0, [r4, #0x64]
00534a8c  90 20 94 e5                                      ldr r2, [r4, #0x90]
00534a90  09 10 66 e0                                      rsb r1, r6, sb
00534a94  00 c0 6b e0                                      rsb ip, fp, r0
00534a98  01 00 52 e1                                      cmp r2, r1
00534a9c  02 20 86 c0                                      addgt r2, r6, r2
00534aa0  34 00 84 e5                                      str r0, [r4, #0x34]
00534aa4  2c b0 84 e5                                      str fp, [r4, #0x2c]
00534aa8  94 00 94 e5                                      ldr r0, [r4, #0x94]
00534aac  30 90 84 e5                                      str sb, [r4, #0x30]
00534ab0  30 20 84 c5                                      strgt r2, [r4, #0x30]
00534ab4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00534ab8  28 60 84 e5                                      str r6, [r4, #0x28]
00534abc  88 60 94 e5                                      ldr r6, [r4, #0x88]
00534ac0  0c 00 50 e1                                      cmp r0, ip
00534ac4  00 00 82 c0                                      addgt r0, r2, r0
00534ac8  34 00 84 c5                                      strgt r0, [r4, #0x34]
00534acc  00 00 56 e3                                      cmp r6, #0
00534ad0  01 00 00 0a                                      beq #0x534adc
00534ad4  01 00 56 e1                                      cmp r6, r1
00534ad8  5b 00 00 ba                                      blt #0x534c4c
00534adc  28 00 94 e5                                      ldr r0, [r4, #0x28]
00534ae0  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00534ae4  00 00 51 e3                                      cmp r1, #0
00534ae8  02 00 00 0a                                      beq #0x534af8
00534aec  0c 00 51 e1                                      cmp r1, ip
00534af0  01 10 82 b0                                      addlt r1, r2, r1
00534af4  34 10 84 b5                                      strlt r1, [r4, #0x34]
00534af8  30 10 94 e5                                      ldr r1, [r4, #0x30]
00534afc  00 00 51 e1                                      cmp r1, r0
00534b00  00 c0 a0 b1                                      movlt ip, r0
00534b04  28 10 84 b5                                      strlt r1, [r4, #0x28]
00534b08  30 c0 84 b5                                      strlt ip, [r4, #0x30]
00534b0c  01 00 a0 b1                                      movlt r0, r1
00534b10  0c 10 a0 b1                                      movlt r1, ip
00534b14  34 c0 94 e5                                      ldr ip, [r4, #0x34]
00534b18  00 00 88 e0                                      add r0, r8, r0
00534b1c  01 10 88 e0                                      add r1, r8, r1
00534b20  02 00 5c e1                                      cmp ip, r2
00534b24  34 20 84 b5                                      strlt r2, [r4, #0x34]
00534b28  2c c0 84 b5                                      strlt ip, [r4, #0x2c]
00534b2c  0c 60 a0 a1                                      movge r6, ip
00534b30  02 c0 a0 a1                                      movge ip, r2
00534b34  06 20 a0 a1                                      movge r2, r6
00534b38  00 00 55 e3                                      cmp r5, #0
00534b3c  10 50 9d e5                                      ldr r5, [sp, #0x10]
00534b40  07 20 82 e0                                      add r2, r2, r7
00534b44  9c 60 d4 e5                                      ldrb r6, [r4, #0x9c]
00534b48  02 50 a0 01                                      moveq r5, r2
00534b4c  10 50 8d e5                                      str r5, [sp, #0x10]
00534b50  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00534b54  07 c0 8c e0                                      add ip, ip, r7
00534b58  00 30 a0 01                                      moveq r3, r0
00534b5c  01 50 a0 01                                      moveq r5, r1
00534b60  0c a0 a0 01                                      moveq sl, ip
00534b64  00 00 56 e3                                      cmp r6, #0
00534b68  0c 50 8d e5                                      str r5, [sp, #0xc]
00534b6c  48 00 84 e5                                      str r0, [r4, #0x48]
00534b70  4c c0 84 e5                                      str ip, [r4, #0x4c]
00534b74  38 00 84 e5                                      str r0, [r4, #0x38]
00534b78  3c c0 84 e5                                      str ip, [r4, #0x3c]
00534b7c  40 10 84 e5                                      str r1, [r4, #0x40]
00534b80  44 20 84 e5                                      str r2, [r4, #0x44]
00534b84  50 10 84 e5                                      str r1, [r4, #0x50]
00534b88  54 20 84 e5                                      str r2, [r4, #0x54]
00534b8c  12 00 00 1a                                      bne #0x534bdc
00534b90  05 00 51 e1                                      cmp r1, r5
00534b94  50 50 84 c5                                      strgt r5, [r4, #0x50]
00534b98  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00534b9c  02 00 5c e1                                      cmp ip, r2
00534ba0  48 20 94 e5                                      ldr r2, [r4, #0x48]
00534ba4  54 c0 84 b5                                      strlt ip, [r4, #0x54]
00534ba8  02 00 53 e1                                      cmp r3, r2
00534bac  48 30 84 c5                                      strgt r3, [r4, #0x48]
00534bb0  03 20 a0 c1                                      movgt r2, r3
00534bb4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00534bb8  03 00 5a e1                                      cmp sl, r3
00534bbc  03 a0 a0 d1                                      movle sl, r3
00534bc0  54 30 94 e5                                      ldr r3, [r4, #0x54]
00534bc4  4c a0 84 c5                                      strgt sl, [r4, #0x4c]
00534bc8  03 00 5a e1                                      cmp sl, r3
00534bcc  4c 30 84 c5                                      strgt r3, [r4, #0x4c]
00534bd0  50 30 94 e5                                      ldr r3, [r4, #0x50]
00534bd4  03 00 52 e1                                      cmp r2, r3
00534bd8  48 30 84 c5                                      strgt r3, [r4, #0x48]
00534bdc  68 80 84 e5                                      str r8, [r4, #0x68]
00534be0  6c 70 84 e5                                      str r7, [r4, #0x6c]
00534be4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00534be8  70 00 84 e5                                      str r0, [r4, #0x70]
00534bec  18 10 9d e5                                      ldr r1, [sp, #0x18]
00534bf0  74 10 84 e5                                      str r1, [r4, #0x74]
00534bf4  04 50 b4 e5                                      ldr r5, [r4, #4]!
00534bf8  05 00 00 ea                                      b #0x534c14
00534bfc  08 30 95 e5                                      ldr r3, [r5, #8]
00534c00  03 00 a0 e1                                      mov r0, r3
00534c04  00 30 93 e5                                      ldr r3, [r3]
00534c08  0f e0 a0 e1                                      mov lr, pc
00534c0c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00534c10  00 50 95 e5                                      ldr r5, [r5]
00534c14  04 00 55 e1                                      cmp r5, r4
00534c18  f7 ff ff 1a                                      bne #0x534bfc
00534c1c  2c d0 8d e2                                      add sp, sp, #0x2c
00534c20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00534c24  48 30 85 e2                                      add r3, r5, #0x48
00534c28  08 14 93 e8                                      ldm r3, {r3, sl, ip}
00534c2c  0c c0 8d e5                                      str ip, [sp, #0xc]
00534c30  54 00 95 e5                                      ldr r0, [r5, #0x54]
00534c34  14 10 9d e5                                      ldr r1, [sp, #0x14]
00534c38  18 20 9d e5                                      ldr r2, [sp, #0x18]
00534c3c  10 00 8d e5                                      str r0, [sp, #0x10]
00534c40  01 00 68 e0                                      rsb r0, r8, r1
00534c44  02 10 67 e0                                      rsb r1, r7, r2
00534c48  52 ff ff ea                                      b #0x534998
00534c4c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00534c50  06 60 80 e0                                      add r6, r0, r6
00534c54  30 60 84 e5                                      str r6, [r4, #0x30]
00534c58  a0 ff ff ea                                      b #0x534ae0
00534c5c  01 00 a0 e1                                      mov r0, r1
00534c60  08 20 8d e5                                      str r2, [sp, #8]
00534c64  08 10 8d e8                                      stm sp, {r3, ip}
00534c68  3d 67 f7 eb                                      bl #0x30e964
00534c6c  02 00 56 e3                                      cmp r6, #2
00534c70  20 00 8d e5                                      str r0, [sp, #0x20]
00534c74  08 10 9d e8                                      ldm sp, {r3, ip}
00534c78  08 20 9d e5                                      ldr r2, [sp, #8]
00534c7c  62 ff ff 1a                                      bne #0x534a0c
00534c80  58 60 94 e5                                      ldr r6, [r4, #0x58]
00534c84  ac 1f 8c e0                                      add r1, ip, ip, lsr #31
00534c88  02 00 59 e3                                      cmp sb, #2
00534c8c  c1 60 86 e0                                      add r6, r6, r1, asr #1
00534c90  58 60 84 e5                                      str r6, [r4, #0x58]
00534c94  64 ff ff 1a                                      bne #0x534a2c
00534c98  60 90 94 e5                                      ldr sb, [r4, #0x60]
00534c9c  ac cf 8c e0                                      add ip, ip, ip, lsr #31
00534ca0  02 00 5b e3                                      cmp fp, #2
00534ca4  cc 90 89 e0                                      add sb, sb, ip, asr #1
00534ca8  60 90 84 e5                                      str sb, [r4, #0x60]
00534cac  66 ff ff 1a                                      bne #0x534a4c
00534cb0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00534cb4  5c b0 94 e5                                      ldr fp, [r4, #0x5c]
00534cb8  02 00 52 e3                                      cmp r2, #2
00534cbc  a0 1f 80 e0                                      add r1, r0, r0, lsr #31
00534cc0  c1 b0 8b e0                                      add fp, fp, r1, asr #1
00534cc4  5c b0 84 e5                                      str fp, [r4, #0x5c]
00534cc8  68 ff ff 1a                                      bne #0x534a70
00534ccc  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00534cd0  64 00 94 e5                                      ldr r0, [r4, #0x64]
00534cd4  ac 2f 8c e0                                      add r2, ip, ip, lsr #31
00534cd8  c2 00 80 e0                                      add r0, r0, r2, asr #1
00534cdc  64 00 84 e5                                      str r0, [r4, #0x64]
00534ce0  69 ff ff ea                                      b #0x534a8c
00534ce4  08 10 8d e5                                      str r1, [sp, #8]
00534ce8  08 10 8d e8                                      stm sp, {r3, ip}
00534cec  1c 67 f7 eb                                      bl #0x30e964
00534cf0  04 c0 9d e5                                      ldr ip, [sp, #4]
00534cf4  24 00 8d e5                                      str r0, [sp, #0x24]
00534cf8  00 30 9d e5                                      ldr r3, [sp]
00534cfc  08 10 9d e5                                      ldr r1, [sp, #8]
00534d00  36 ff ff ea                                      b #0x5349e0
00534d04  84 10 94 e5                                      ldr r1, [r4, #0x84]
00534d08  20 00 9d e5                                      ldr r0, [sp, #0x20]
00534d0c  00 30 8d e5                                      str r3, [sp]
00534d10  15 68 f7 eb                                      bl #0x30ed6c
00534d14  ec 65 f7 eb                                      bl #0x30e4cc
00534d18  64 00 84 e5                                      str r0, [r4, #0x64]
00534d1c  00 30 9d e5                                      ldr r3, [sp]
00534d20  59 ff ff ea                                      b #0x534a8c
00534d24  78 10 94 e5                                      ldr r1, [r4, #0x78]
00534d28  24 00 9d e5                                      ldr r0, [sp, #0x24]
00534d2c  08 20 8d e5                                      str r2, [sp, #8]
00534d30  08 10 8d e8                                      stm sp, {r3, ip}
00534d34  0c 68 f7 eb                                      bl #0x30ed6c
00534d38  e3 65 f7 eb                                      bl #0x30e4cc
00534d3c  58 00 84 e5                                      str r0, [r4, #0x58]
00534d40  00 60 a0 e1                                      mov r6, r0
00534d44  08 10 9d e8                                      ldm sp, {r3, ip}
00534d48  08 20 9d e5                                      ldr r2, [sp, #8]
00534d4c  34 ff ff ea                                      b #0x534a24
00534d50  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00534d54  20 00 9d e5                                      ldr r0, [sp, #0x20]
00534d58  08 20 8d e5                                      str r2, [sp, #8]
00534d5c  00 30 8d e5                                      str r3, [sp]
00534d60  01 68 f7 eb                                      bl #0x30ed6c
00534d64  d8 65 f7 eb                                      bl #0x30e4cc
00534d68  5c 00 84 e5                                      str r0, [r4, #0x5c]
00534d6c  00 b0 a0 e1                                      mov fp, r0
00534d70  00 30 9d e5                                      ldr r3, [sp]
00534d74  08 20 9d e5                                      ldr r2, [sp, #8]
00534d78  3a ff ff ea                                      b #0x534a68
00534d7c  80 10 94 e5                                      ldr r1, [r4, #0x80]
00534d80  24 00 9d e5                                      ldr r0, [sp, #0x24]
00534d84  08 20 8d e5                                      str r2, [sp, #8]
00534d88  00 30 8d e5                                      str r3, [sp]
00534d8c  f6 67 f7 eb                                      bl #0x30ed6c
00534d90  cd 65 f7 eb                                      bl #0x30e4cc
00534d94  60 00 84 e5                                      str r0, [r4, #0x60]
00534d98  00 90 a0 e1                                      mov sb, r0
00534d9c  00 30 9d e5                                      ldr r3, [sp]
00534da0  08 20 9d e5                                      ldr r2, [sp, #8]
00534da4  26 ff ff ea                                      b #0x534a44
00534da8  05 10 a0 e1                                      mov r1, r5
00534dac  05 00 a0 e1                                      mov r0, r5
00534db0  05 a0 a0 e1                                      mov sl, r5
00534db4  0c 50 8d e5                                      str r5, [sp, #0xc]
00534db8  10 50 8d e5                                      str r5, [sp, #0x10]
00534dbc  05 80 a0 e1                                      mov r8, r5
00534dc0  05 70 a0 e1                                      mov r7, r5
00534dc4  14 50 8d e5                                      str r5, [sp, #0x14]
00534dc8  18 50 8d e5                                      str r5, [sp, #0x18]
00534dcc  f1 fe ff ea                                      b #0x534998

; FUNCTION 0x00534dd0, declared_size=120, range_size=120, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement19getElementFromPointERKNS_4core10position2dIiEE
; demangled: glitch::gui::IGUIElement::getElementFromPoint(glitch::core::position2d<int> const&)
; decoder-mode: arm
00534dd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00534dd4  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00534dd8  00 50 a0 e1                                      mov r5, r0
00534ddc  01 60 a0 e1                                      mov r6, r1
00534de0  00 00 53 e3                                      cmp r3, #0
00534de4  04 40 80 12                                      addne r4, r0, #4
00534de8  07 00 00 1a                                      bne #0x534e0c
00534dec  00 00 a0 e3                                      mov r0, #0
00534df0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00534df4  04 30 94 e5                                      ldr r3, [r4, #4]
00534df8  08 00 93 e5                                      ldr r0, [r3, #8]
00534dfc  f3 ff ff eb                                      bl #0x534dd0
00534e00  00 00 50 e3                                      cmp r0, #0
00534e04  f9 ff ff 1a                                      bne #0x534df0
00534e08  04 40 94 e5                                      ldr r4, [r4, #4]
00534e0c  04 30 95 e5                                      ldr r3, [r5, #4]
00534e10  06 10 a0 e1                                      mov r1, r6
00534e14  04 00 53 e1                                      cmp r3, r4
00534e18  f5 ff ff 1a                                      bne #0x534df4
00534e1c  98 30 d5 e5                                      ldrb r3, [r5, #0x98]
00534e20  00 00 53 e3                                      cmp r3, #0
00534e24  f0 ff ff 0a                                      beq #0x534dec
00534e28  00 30 95 e5                                      ldr r3, [r5]
00534e2c  05 00 a0 e1                                      mov r0, r5
00534e30  0f e0 a0 e1                                      mov lr, pc
00534e34  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00534e38  00 00 50 e3                                      cmp r0, #0
00534e3c  ea ff ff 0a                                      beq #0x534dec
00534e40  05 00 a0 e1                                      mov r0, r5
00534e44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00534e48, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement13isPointInsideERKNS_4core10position2dIiEE
; demangled: glitch::gui::IGUIElement::isPointInside(glitch::core::position2d<int> const&) const
; decoder-mode: arm
00534e48  00 30 91 e5                                      ldr r3, [r1]
00534e4c  48 20 90 e5                                      ldr r2, [r0, #0x48]
00534e50  03 00 52 e1                                      cmp r2, r3
00534e54  0b 00 00 ca                                      bgt #0x534e88
00534e58  04 20 91 e5                                      ldr r2, [r1, #4]
00534e5c  4c 10 90 e5                                      ldr r1, [r0, #0x4c]
00534e60  02 00 51 e1                                      cmp r1, r2
00534e64  07 00 00 ca                                      bgt #0x534e88
00534e68  50 10 90 e5                                      ldr r1, [r0, #0x50]
00534e6c  01 00 53 e1                                      cmp r3, r1
00534e70  04 00 00 ca                                      bgt #0x534e88
00534e74  54 00 90 e5                                      ldr r0, [r0, #0x54]
00534e78  00 00 52 e1                                      cmp r2, r0
00534e7c  00 00 a0 c3                                      movgt r0, #0
00534e80  01 00 a0 d3                                      movle r0, #1
00534e84  1e ff 2f e1                                      bx lr
00534e88  00 00 a0 e3                                      mov r0, #0
00534e8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534e90, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement6removeEv
; demangled: glitch::gui::IGUIElement::remove()
; decoder-mode: arm
00534e90  10 40 2d e9                                      push {r4, lr}
00534e94  24 30 90 e5                                      ldr r3, [r0, #0x24]
00534e98  00 10 a0 e1                                      mov r1, r0
00534e9c  00 00 53 e3                                      cmp r3, #0
00534ea0  03 00 00 0a                                      beq #0x534eb4
00534ea4  03 00 a0 e1                                      mov r0, r3
00534ea8  00 30 93 e5                                      ldr r3, [r3]
00534eac  0f e0 a0 e1                                      mov lr, pc
00534eb0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00534eb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00534eb8, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement4drawEv
; demangled: glitch::gui::IGUIElement::draw()
; decoder-mode: arm
00534eb8  70 40 2d e9                                      push {r4, r5, r6, lr}
00534ebc  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00534ec0  00 00 53 e3                                      cmp r3, #0
00534ec4  0a 00 00 0a                                      beq #0x534ef4
00534ec8  00 50 a0 e1                                      mov r5, r0
00534ecc  04 40 b5 e5                                      ldr r4, [r5, #4]!
00534ed0  05 00 00 ea                                      b #0x534eec
00534ed4  08 30 94 e5                                      ldr r3, [r4, #8]
00534ed8  03 00 a0 e1                                      mov r0, r3
00534edc  00 30 93 e5                                      ldr r3, [r3]
00534ee0  0f e0 a0 e1                                      mov lr, pc
00534ee4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00534ee8  00 40 94 e5                                      ldr r4, [r4]
00534eec  04 00 55 e1                                      cmp r5, r4
00534ef0  f7 ff ff 1a                                      bne #0x534ed4
00534ef4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00534ef8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement12OnPostRenderEj
; demangled: glitch::gui::IGUIElement::OnPostRender(unsigned int)
; decoder-mode: arm
00534ef8  70 40 2d e9                                      push {r4, r5, r6, lr}
00534efc  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00534f00  01 60 a0 e1                                      mov r6, r1
00534f04  00 00 53 e3                                      cmp r3, #0
00534f08  0b 00 00 0a                                      beq #0x534f3c
00534f0c  00 50 a0 e1                                      mov r5, r0
00534f10  04 40 b5 e5                                      ldr r4, [r5, #4]!
00534f14  06 00 00 ea                                      b #0x534f34
00534f18  08 30 94 e5                                      ldr r3, [r4, #8]
00534f1c  06 10 a0 e1                                      mov r1, r6
00534f20  03 00 a0 e1                                      mov r0, r3
00534f24  00 30 93 e5                                      ldr r3, [r3]
00534f28  0f e0 a0 e1                                      mov lr, pc
00534f2c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00534f30  00 40 94 e5                                      ldr r4, [r4]
00534f34  04 00 55 e1                                      cmp r5, r4
00534f38  f6 ff ff 1a                                      bne #0x534f18
00534f3c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00534f40, declared_size=80, range_size=80, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement4moveENS_4core10position2dIiEE
; demangled: glitch::gui::IGUIElement::move(glitch::core::position2d<int>)
; decoder-mode: arm
00534f40  30 40 2d e9                                      push {r4, r5, lr}
00534f44  5c c0 90 e5                                      ldr ip, [r0, #0x5c]
00534f48  0c 00 91 e8                                      ldm r1, {r2, r3}
00534f4c  64 50 90 e5                                      ldr r5, [r0, #0x64]
00534f50  60 10 90 e5                                      ldr r1, [r0, #0x60]
00534f54  58 e0 90 e5                                      ldr lr, [r0, #0x58]
00534f58  14 d0 4d e2                                      sub sp, sp, #0x14
00534f5c  0c c0 83 e0                                      add ip, r3, ip
00534f60  0e e0 82 e0                                      add lr, r2, lr
00534f64  05 30 83 e0                                      add r3, r3, r5
00534f68  01 20 82 e0                                      add r2, r2, r1
00534f6c  0d 10 a0 e1                                      mov r1, sp
00534f70  00 40 a0 e1                                      mov r4, r0
00534f74  00 e0 8d e5                                      str lr, [sp]
00534f78  04 c0 8d e5                                      str ip, [sp, #4]
00534f7c  08 20 8d e5                                      str r2, [sp, #8]
00534f80  0c 30 8d e5                                      str r3, [sp, #0xc]
00534f84  ed fd ff eb                                      bl #0x534740
00534f88  14 d0 8d e2                                      add sp, sp, #0x14
00534f8c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00534f90, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement9isVisibleEv
; demangled: glitch::gui::IGUIElement::isVisible() const
; decoder-mode: arm
00534f90  98 00 d0 e5                                      ldrb r0, [r0, #0x98]
00534f94  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534f98, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement10setVisibleEb
; demangled: glitch::gui::IGUIElement::setVisible(bool)
; decoder-mode: arm
00534f98  98 10 c0 e5                                      strb r1, [r0, #0x98]
00534f9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fa0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement12isSubElementEv
; demangled: glitch::gui::IGUIElement::isSubElement() const
; decoder-mode: arm
00534fa0  9a 00 d0 e5                                      ldrb r0, [r0, #0x9a]
00534fa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fa8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement13setSubElementEb
; demangled: glitch::gui::IGUIElement::setSubElement(bool)
; decoder-mode: arm
00534fa8  9a 10 c0 e5                                      strb r1, [r0, #0x9a]
00534fac  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fb0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement9isEnabledEv
; demangled: glitch::gui::IGUIElement::isEnabled() const
; decoder-mode: arm
00534fb0  99 00 d0 e5                                      ldrb r0, [r0, #0x99]
00534fb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fb8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement10setEnabledEb
; demangled: glitch::gui::IGUIElement::setEnabled(bool)
; decoder-mode: arm
00534fb8  99 10 c0 e5                                      strb r1, [r0, #0x99]
00534fbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fc0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement7getTextEv
; demangled: glitch::gui::IGUIElement::getText() const
; decoder-mode: arm
00534fc0  e4 00 90 e5                                      ldr r0, [r0, #0xe4]
00534fc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fc8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getToolTipTextEv
; demangled: glitch::gui::IGUIElement::getToolTipText() const
; decoder-mode: arm
00534fc8  e8 00 80 e2                                      add r0, r0, #0xe8
00534fcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fd0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement5getIDEv
; demangled: glitch::gui::IGUIElement::getID() const
; decoder-mode: arm
00534fd0  30 01 90 e5                                      ldr r0, [r0, #0x130]
00534fd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fd8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement5setIDEi
; demangled: glitch::gui::IGUIElement::setID(int)
; decoder-mode: arm
00534fd8  30 11 80 e5                                      str r1, [r0, #0x130]
00534fdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fe0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement7getNameEv
; demangled: glitch::gui::IGUIElement::getName() const
; decoder-mode: arm
00534fe0  20 00 90 e5                                      ldr r0, [r0, #0x20]
00534fe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00534fe8, declared_size=44, range_size=44, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement7onEventERKNS_6SEventE
; demangled: glitch::gui::IGUIElement::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00534fe8  10 40 2d e9                                      push {r4, lr}
00534fec  24 30 90 e5                                      ldr r3, [r0, #0x24]
00534ff0  00 00 53 e3                                      cmp r3, #0
00534ff4  04 00 00 0a                                      beq #0x53500c
00534ff8  03 00 a0 e1                                      mov r0, r3
00534ffc  00 30 93 e5                                      ldr r3, [r3]
00535000  0f e0 a0 e1                                      mov lr, pc
00535004  08 f0 93 e5                                      ldr pc, [r3, #8]
00535008  10 80 bd e8                                      pop {r4, pc}
0053500c  03 00 a0 e1                                      mov r0, r3
00535010  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00535014, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement11getChildrenEv
; demangled: glitch::gui::IGUIElement::getChildren() const
; decoder-mode: arm
00535014  04 00 80 e2                                      add r0, r0, #4
00535018  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053501c, declared_size=136, range_size=136, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement16getElementFromIdEib
; demangled: glitch::gui::IGUIElement::getElementFromId(int, bool) const
; decoder-mode: arm
0053501c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00535020  00 60 a0 e1                                      mov r6, r0
00535024  04 40 b6 e5                                      ldr r4, [r6, #4]!
00535028  01 50 a0 e1                                      mov r5, r1
0053502c  02 70 a0 e1                                      mov r7, r2
00535030  04 00 56 e1                                      cmp r6, r4
00535034  0b 00 00 0a                                      beq #0x535068
00535038  08 30 94 e5                                      ldr r3, [r4, #8]
0053503c  03 00 a0 e1                                      mov r0, r3
00535040  00 30 93 e5                                      ldr r3, [r3]
00535044  0f e0 a0 e1                                      mov lr, pc
00535048  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0053504c  05 00 50 e1                                      cmp r0, r5
00535050  11 00 00 0a                                      beq #0x53509c
00535054  00 00 57 e3                                      cmp r7, #0
00535058  04 00 00 1a                                      bne #0x535070
0053505c  00 40 94 e5                                      ldr r4, [r4]
00535060  04 00 56 e1                                      cmp r6, r4
00535064  f3 ff ff 1a                                      bne #0x535038
00535068  00 00 a0 e3                                      mov r0, #0
0053506c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00535070  08 30 94 e5                                      ldr r3, [r4, #8]
00535074  05 10 a0 e1                                      mov r1, r5
00535078  01 20 a0 e3                                      mov r2, #1
0053507c  03 00 a0 e1                                      mov r0, r3
00535080  00 30 93 e5                                      ldr r3, [r3]
00535084  0f e0 a0 e1                                      mov lr, pc
00535088  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0053508c  00 00 50 e3                                      cmp r0, #0
00535090  f5 ff ff 1a                                      bne #0x53506c
00535094  00 40 94 e5                                      ldr r4, [r4]
00535098  f0 ff ff ea                                      b #0x535060
0053509c  08 00 94 e5                                      ldr r0, [r4, #8]
005350a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005350a4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement11getTypeNameEv
; demangled: glitch::gui::IGUIElement::getTypeName() const
; decoder-mode: arm
005350a4  0c 30 9f e5                                      ldr r3, [pc, #0xc]
005350a8  54 21 90 e5                                      ldr r2, [r0, #0x154]
005350ac  03 30 8f e0                                      add r3, pc, r3
005350b0  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005350b4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005350b8  8c 1a 42 00                                      .byte 0x8c, 0x1a, 0x42, 0x00

; FUNCTION 0x005350bc, declared_size=760, range_size=760, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::IGUIElement::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005350bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005350c0  01 40 a0 e1                                      mov r4, r1
005350c4  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
005350c8  2c d0 4d e2                                      sub sp, sp, #0x2c
005350cc  00 50 a0 e1                                      mov r5, r0
005350d0  00 c0 94 e5                                      ldr ip, [r4]
005350d4  01 10 8f e0                                      add r1, pc, r1
005350d8  30 21 90 e5                                      ldr r2, [r0, #0x130]
005350dc  00 30 a0 e3                                      mov r3, #0
005350e0  04 00 a0 e1                                      mov r0, r4
005350e4  0f e0 a0 e1                                      mov lr, pc
005350e8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005350ec  00 20 94 e5                                      ldr r2, [r4]
005350f0  00 30 95 e5                                      ldr r3, [r5]
005350f4  05 00 a0 e1                                      mov r0, r5
005350f8  7c 60 92 e5                                      ldr r6, [r2, #0x7c]
005350fc  0f e0 a0 e1                                      mov lr, pc
00535100  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00535104  64 12 9f e5                                      ldr r1, [pc, #0x264]
00535108  00 20 a0 e1                                      mov r2, r0
0053510c  00 30 a0 e3                                      mov r3, #0
00535110  01 10 8f e0                                      add r1, pc, r1
00535114  04 00 a0 e1                                      mov r0, r4
00535118  36 ff 2f e1                                      blx r6
0053511c  00 20 94 e5                                      ldr r2, [r4]
00535120  00 30 95 e5                                      ldr r3, [r5]
00535124  05 00 a0 e1                                      mov r0, r5
00535128  94 60 92 e5                                      ldr r6, [r2, #0x94]
0053512c  0f e0 a0 e1                                      mov lr, pc
00535130  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00535134  38 12 9f e5                                      ldr r1, [pc, #0x238]
00535138  00 20 a0 e1                                      mov r2, r0
0053513c  00 30 a0 e3                                      mov r3, #0
00535140  04 00 a0 e1                                      mov r0, r4
00535144  01 10 8f e0                                      add r1, pc, r1
00535148  36 ff 2f e1                                      blx r6
0053514c  00 c0 94 e5                                      ldr ip, [r4]
00535150  58 00 85 e2                                      add r0, r5, #0x58
00535154  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
00535158  f0 c1 9c e5                                      ldr ip, [ip, #0x1f0]
0053515c  0c 10 8d e5                                      str r1, [sp, #0xc]
00535160  10 12 9f e5                                      ldr r1, [pc, #0x210]
00535164  08 00 8d e5                                      str r0, [sp, #8]
00535168  10 20 8d e5                                      str r2, [sp, #0x10]
0053516c  14 30 8d e5                                      str r3, [sp, #0x14]
00535170  04 00 a0 e1                                      mov r0, r4
00535174  08 20 8d e2                                      add r2, sp, #8
00535178  01 10 8f e0                                      add r1, pc, r1
0053517c  00 30 a0 e3                                      mov r3, #0
00535180  3c ff 2f e1                                      blx ip
00535184  00 10 94 e5                                      ldr r1, [r4]
00535188  94 30 95 e5                                      ldr r3, [r5, #0x94]
0053518c  90 20 95 e5                                      ldr r2, [r5, #0x90]
00535190  d8 c1 91 e5                                      ldr ip, [r1, #0x1d8]
00535194  e0 11 9f e5                                      ldr r1, [pc, #0x1e0]
00535198  20 20 8d e5                                      str r2, [sp, #0x20]
0053519c  24 30 8d e5                                      str r3, [sp, #0x24]
005351a0  04 00 a0 e1                                      mov r0, r4
005351a4  20 20 8d e2                                      add r2, sp, #0x20
005351a8  01 10 8f e0                                      add r1, pc, r1
005351ac  00 30 a0 e3                                      mov r3, #0
005351b0  3c ff 2f e1                                      blx ip
005351b4  00 10 94 e5                                      ldr r1, [r4]
005351b8  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
005351bc  88 20 95 e5                                      ldr r2, [r5, #0x88]
005351c0  d8 c1 91 e5                                      ldr ip, [r1, #0x1d8]
005351c4  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
005351c8  18 20 8d e5                                      str r2, [sp, #0x18]
005351cc  1c 30 8d e5                                      str r3, [sp, #0x1c]
005351d0  04 00 a0 e1                                      mov r0, r4
005351d4  18 20 8d e2                                      add r2, sp, #0x18
005351d8  01 10 8f e0                                      add r1, pc, r1
005351dc  00 30 a0 e3                                      mov r3, #0
005351e0  3c ff 2f e1                                      blx ip
005351e4  98 11 9f e5                                      ldr r1, [pc, #0x198]
005351e8  04 00 a0 e1                                      mov r0, r4
005351ec  9b 20 d5 e5                                      ldrb r2, [r5, #0x9b]
005351f0  00 c0 94 e5                                      ldr ip, [r4]
005351f4  01 10 8f e0                                      add r1, pc, r1
005351f8  00 30 a0 e3                                      mov r3, #0
005351fc  0f e0 a0 e1                                      mov lr, pc
00535200  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00535204  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
00535208  7c 71 9f e5                                      ldr r7, [pc, #0x17c]
0053520c  04 00 a0 e1                                      mov r0, r4
00535210  9c 20 d5 e5                                      ldrb r2, [r5, #0x9c]
00535214  00 c0 94 e5                                      ldr ip, [r4]
00535218  01 10 8f e0                                      add r1, pc, r1
0053521c  00 30 a0 e3                                      mov r3, #0
00535220  0f e0 a0 e1                                      mov lr, pc
00535224  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00535228  60 11 9f e5                                      ldr r1, [pc, #0x160]
0053522c  00 60 a0 e3                                      mov r6, #0
00535230  07 70 8f e0                                      add r7, pc, r7
00535234  5c 70 87 e2                                      add r7, r7, #0x5c
00535238  40 21 95 e5                                      ldr r2, [r5, #0x140]
0053523c  00 60 8d e5                                      str r6, [sp]
00535240  04 00 a0 e1                                      mov r0, r4
00535244  07 30 a0 e1                                      mov r3, r7
00535248  00 c0 94 e5                                      ldr ip, [r4]
0053524c  01 10 8f e0                                      add r1, pc, r1
00535250  0f e0 a0 e1                                      mov lr, pc
00535254  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
00535258  34 11 9f e5                                      ldr r1, [pc, #0x134]
0053525c  44 21 95 e5                                      ldr r2, [r5, #0x144]
00535260  00 60 8d e5                                      str r6, [sp]
00535264  04 00 a0 e1                                      mov r0, r4
00535268  07 30 a0 e1                                      mov r3, r7
0053526c  00 c0 94 e5                                      ldr ip, [r4]
00535270  01 10 8f e0                                      add r1, pc, r1
00535274  0f e0 a0 e1                                      mov lr, pc
00535278  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
0053527c  14 11 9f e5                                      ldr r1, [pc, #0x114]
00535280  48 21 95 e5                                      ldr r2, [r5, #0x148]
00535284  00 60 8d e5                                      str r6, [sp]
00535288  04 00 a0 e1                                      mov r0, r4
0053528c  07 30 a0 e1                                      mov r3, r7
00535290  00 c0 94 e5                                      ldr ip, [r4]
00535294  01 10 8f e0                                      add r1, pc, r1
00535298  0f e0 a0 e1                                      mov lr, pc
0053529c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005352a0  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
005352a4  4c 21 95 e5                                      ldr r2, [r5, #0x14c]
005352a8  00 60 8d e5                                      str r6, [sp]
005352ac  07 30 a0 e1                                      mov r3, r7
005352b0  04 00 a0 e1                                      mov r0, r4
005352b4  00 c0 94 e5                                      ldr ip, [r4]
005352b8  01 10 8f e0                                      add r1, pc, r1
005352bc  0f e0 a0 e1                                      mov lr, pc
005352c0  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005352c4  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
005352c8  04 00 a0 e1                                      mov r0, r4
005352cc  98 20 d5 e5                                      ldrb r2, [r5, #0x98]
005352d0  06 30 a0 e1                                      mov r3, r6
005352d4  00 c0 94 e5                                      ldr ip, [r4]
005352d8  01 10 8f e0                                      add r1, pc, r1
005352dc  0f e0 a0 e1                                      mov lr, pc
005352e0  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005352e4  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
005352e8  04 00 a0 e1                                      mov r0, r4
005352ec  99 20 d5 e5                                      ldrb r2, [r5, #0x99]
005352f0  06 30 a0 e1                                      mov r3, r6
005352f4  00 c0 94 e5                                      ldr ip, [r4]
005352f8  01 10 8f e0                                      add r1, pc, r1
005352fc  0f e0 a0 e1                                      mov lr, pc
00535300  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00535304  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00535308  04 00 a0 e1                                      mov r0, r4
0053530c  34 21 d5 e5                                      ldrb r2, [r5, #0x134]
00535310  06 30 a0 e1                                      mov r3, r6
00535314  00 c0 94 e5                                      ldr ip, [r4]
00535318  01 10 8f e0                                      add r1, pc, r1
0053531c  0f e0 a0 e1                                      mov lr, pc
00535320  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00535324  80 10 9f e5                                      ldr r1, [pc, #0x80]
00535328  04 00 a0 e1                                      mov r0, r4
0053532c  3c 21 d5 e5                                      ldrb r2, [r5, #0x13c]
00535330  06 30 a0 e1                                      mov r3, r6
00535334  00 c0 94 e5                                      ldr ip, [r4]
00535338  01 10 8f e0                                      add r1, pc, r1
0053533c  0f e0 a0 e1                                      mov lr, pc
00535340  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00535344  64 10 9f e5                                      ldr r1, [pc, #0x64]
00535348  04 00 a0 e1                                      mov r0, r4
0053534c  38 21 95 e5                                      ldr r2, [r5, #0x138]
00535350  01 10 8f e0                                      add r1, pc, r1
00535354  06 30 a0 e1                                      mov r3, r6
00535358  00 c0 94 e5                                      ldr ip, [r4]
0053535c  0f e0 a0 e1                                      mov lr, pc
00535360  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00535364  2c d0 8d e2                                      add sp, sp, #0x2c
00535368  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0053536c  f4 76 39 00 70 6c 39 00 b4 95 3a 00 58 d5 38 00  .byte 0xf4, 0x76, 0x39, 0x00, 0x70, 0x6c, 0x39, 0x00, 0xb4, 0x95, 0x3a, 0x00, 0x58, 0xd5, 0x38, 0x00
0053537c  20 8c 3a 00 f8 8b 3a 00 e4 8b 3a 00 c8 8b 3a 00  .byte 0x20, 0x8c, 0x3a, 0x00, 0xf8, 0x8b, 0x3a, 0x00, 0xe4, 0x8b, 0x3a, 0x00, 0xc8, 0x8b, 0x3a, 0x00
0053538c  08 19 42 00 34 53 3a 00 88 8b 3a 00 1c 53 3a 00  .byte 0x08, 0x19, 0x42, 0x00, 0x34, 0x53, 0x3a, 0x00, 0x88, 0x8b, 0x3a, 0x00, 0x1c, 0x53, 0x3a, 0x00
0053539c  50 8b 3a 00 d0 6b 39 00 20 8b 3a 00 08 8b 3a 00  .byte 0x50, 0x8b, 0x3a, 0x00, 0xd0, 0x6b, 0x39, 0x00, 0x20, 0x8b, 0x3a, 0x00, 0x08, 0x8b, 0x3a, 0x00
005353ac  f0 8a 3a 00 e8 8a 3a 00                          .byte 0xf0, 0x8a, 0x3a, 0x00, 0xe8, 0x8a, 0x3a, 0x00

; FUNCTION 0x005353b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZTv0_n16_NK6glitch3gui11IGUIElement19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::IGUIElement::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005353b4  00 30 90 e5                                      ldr r3, [r0]
005353b8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005353bc  03 00 80 e0                                      add r0, r0, r3
005353c0  3d ff ff ea                                      b #0x5350bc

; FUNCTION 0x00535d10, declared_size=96, range_size=96, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement11removeChildEPS1_
; demangled: glitch::gui::IGUIElement::removeChild(glitch::gui::IGUIElement*)
; decoder-mode: arm
00535d10  10 40 2d e9                                      push {r4, lr}
00535d14  04 40 b0 e5                                      ldr r4, [r0, #4]!
00535d18  03 00 00 ea                                      b #0x535d2c
00535d1c  08 30 94 e5                                      ldr r3, [r4, #8]
00535d20  01 00 53 e1                                      cmp r3, r1
00535d24  03 00 00 0a                                      beq #0x535d38
00535d28  00 40 94 e5                                      ldr r4, [r4]
00535d2c  04 00 50 e1                                      cmp r0, r4
00535d30  f9 ff ff 1a                                      bne #0x535d1c
00535d34  10 80 bd e8                                      pop {r4, pc}
00535d38  00 30 a0 e3                                      mov r3, #0
00535d3c  24 30 81 e5                                      str r3, [r1, #0x24]
00535d40  08 30 94 e5                                      ldr r3, [r4, #8]
00535d44  00 20 93 e5                                      ldr r2, [r3]
00535d48  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00535d4c  00 00 83 e0                                      add r0, r3, r0
00535d50  0b 9e f7 eb                                      bl #0x31d584
00535d54  00 30 94 e5                                      ldr r3, [r4]
00535d58  04 20 94 e5                                      ldr r2, [r4, #4]
00535d5c  04 00 a0 e1                                      mov r0, r4
00535d60  00 30 82 e5                                      str r3, [r2]
00535d64  04 20 83 e5                                      str r2, [r3, #4]
00535d68  10 40 bd e8                                      pop {r4, lr}
00535d6c  b7 69 f7 ea                                      b #0x310450

; FUNCTION 0x00535d70, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement12bringToFrontEPS1_
; demangled: glitch::gui::IGUIElement::bringToFront(glitch::gui::IGUIElement*)
; decoder-mode: arm
00535d70  70 40 2d e9                                      push {r4, r5, r6, lr}
00535d74  00 40 a0 e1                                      mov r4, r0
00535d78  00 60 a0 e1                                      mov r6, r0
00535d7c  01 50 a0 e1                                      mov r5, r1
00535d80  04 00 b4 e5                                      ldr r0, [r4, #4]!
00535d84  03 00 00 ea                                      b #0x535d98
00535d88  08 30 90 e5                                      ldr r3, [r0, #8]
00535d8c  05 00 53 e1                                      cmp r3, r5
00535d90  04 00 00 0a                                      beq #0x535da8
00535d94  00 00 90 e5                                      ldr r0, [r0]
00535d98  00 00 54 e1                                      cmp r4, r0
00535d9c  f9 ff ff 1a                                      bne #0x535d88
00535da0  00 00 a0 e3                                      mov r0, #0
00535da4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00535da8  00 30 90 e5                                      ldr r3, [r0]
00535dac  04 20 90 e5                                      ldr r2, [r0, #4]
00535db0  00 30 82 e5                                      str r3, [r2]
00535db4  04 20 83 e5                                      str r2, [r3, #4]
00535db8  a4 69 f7 eb                                      bl #0x310450
00535dbc  0c 00 a0 e3                                      mov r0, #0xc
00535dc0  00 10 a0 e3                                      mov r1, #0
00535dc4  e7 69 f7 eb                                      bl #0x310568
00535dc8  08 50 80 e5                                      str r5, [r0, #8]
00535dcc  08 20 96 e5                                      ldr r2, [r6, #8]
00535dd0  00 30 a0 e1                                      mov r3, r0
00535dd4  00 40 80 e5                                      str r4, [r0]
00535dd8  04 20 83 e5                                      str r2, [r3, #4]
00535ddc  01 00 a0 e3                                      mov r0, #1
00535de0  00 30 82 e5                                      str r3, [r2]
00535de4  08 30 86 e5                                      str r3, [r6, #8]
00535de8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00535dec, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement8addChildEPS1_
; demangled: glitch::gui::IGUIElement::addChild(glitch::gui::IGUIElement*)
; decoder-mode: arm
00535dec  70 40 2d e9                                      push {r4, r5, r6, lr}
00535df0  00 40 51 e2                                      subs r4, r1, #0
00535df4  00 50 a0 e1                                      mov r5, r0
00535df8  19 00 00 0a                                      beq #0x535e64
00535dfc  00 30 94 e5                                      ldr r3, [r4]
00535e00  04 00 a0 e1                                      mov r0, r4
00535e04  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00535e08  03 30 84 e0                                      add r3, r4, r3
00535e0c  04 20 93 e5                                      ldr r2, [r3, #4]
00535e10  01 20 82 e2                                      add r2, r2, #1
00535e14  04 20 83 e5                                      str r2, [r3, #4]
00535e18  00 30 94 e5                                      ldr r3, [r4]
00535e1c  0f e0 a0 e1                                      mov lr, pc
00535e20  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00535e24  38 00 85 e2                                      add r0, r5, #0x38
00535e28  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
00535e2c  68 00 84 e5                                      str r0, [r4, #0x68]
00535e30  6c 10 84 e5                                      str r1, [r4, #0x6c]
00535e34  70 20 84 e5                                      str r2, [r4, #0x70]
00535e38  74 30 84 e5                                      str r3, [r4, #0x74]
00535e3c  24 50 84 e5                                      str r5, [r4, #0x24]
00535e40  0c 00 a0 e3                                      mov r0, #0xc
00535e44  00 10 a0 e3                                      mov r1, #0
00535e48  c6 69 f7 eb                                      bl #0x310568
00535e4c  08 40 80 e5                                      str r4, [r0, #8]
00535e50  08 30 95 e5                                      ldr r3, [r5, #8]
00535e54  04 20 85 e2                                      add r2, r5, #4
00535e58  0c 00 80 e8                                      stm r0, {r2, r3}
00535e5c  00 00 83 e5                                      str r0, [r3]
00535e60  08 00 85 e5                                      str r0, [r5, #8]
00535e64  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005362c8, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement7setTextEPKw
; demangled: glitch::gui::IGUIElement::setText(wchar_t const*)
; decoder-mode: arm
005362c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005362cc  00 40 a0 e1                                      mov r4, r0
005362d0  01 00 a0 e1                                      mov r0, r1
005362d4  01 50 a0 e1                                      mov r5, r1
005362d8  6a 62 f7 eb                                      bl #0x30ec88
005362dc  05 10 a0 e1                                      mov r1, r5
005362e0  00 21 85 e0                                      add r2, r5, r0, lsl #2
005362e4  a0 00 84 e2                                      add r0, r4, #0xa0
005362e8  70 40 bd e8                                      pop {r4, r5, r6, lr}
005362ec  ab b3 f7 ea                                      b #0x3231a0

; FUNCTION 0x00537724, declared_size=656, range_size=656, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementC2ENS0_17EGUI_ELEMENT_TYPEEPNS0_15IGUIEnvironmentEPS1_iNS_4core4rectIiEE.clone.1
; demangled: glitch::gui::IGUIElement::IGUIElement(glitch::gui::EGUI_ELEMENT_TYPE, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>) [clone .clone.1]
; decoder-mode: arm
00537724  80 32 9f e5                                      ldr r3, [pc, #0x280]
00537728  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053772c  7c 52 9f e5                                      ldr r5, [pc, #0x27c]
00537730  03 30 8f e0                                      add r3, pc, r3
00537734  01 e0 a0 e1                                      mov lr, r1
00537738  05 50 93 e7                                      ldr r5, [r3, r5]
0053773c  00 40 a0 e1                                      mov r4, r0
00537740  02 60 a0 e1                                      mov r6, r2
00537744  08 50 85 e2                                      add r5, r5, #8
00537748  00 50 80 e5                                      str r5, [r0]
0053774c  00 10 91 e5                                      ldr r1, [r1]
00537750  0c c0 80 e2                                      add ip, r0, #0xc
00537754  04 70 80 e2                                      add r7, r0, #4
00537758  00 10 84 e5                                      str r1, [r4]
0053775c  0c 50 11 e5                                      ldr r5, [r1, #-0xc]
00537760  04 80 9e e5                                      ldr r8, [lr, #4]
00537764  0c 00 a0 e1                                      mov r0, ip
00537768  10 10 a0 e3                                      mov r1, #0x10
0053776c  05 80 84 e7                                      str r8, [r4, r5]
00537770  00 80 94 e5                                      ldr r8, [r4]
00537774  08 20 9e e5                                      ldr r2, [lr, #8]
00537778  00 50 a0 e3                                      mov r5, #0
0053777c  10 30 18 e5                                      ldr r3, [r8, #-0x10]
00537780  03 20 84 e7                                      str r2, [r4, r3]
00537784  1c c0 84 e5                                      str ip, [r4, #0x1c]
00537788  20 c0 84 e5                                      str ip, [r4, #0x20]
0053778c  08 70 84 e5                                      str r7, [r4, #8]
00537790  04 70 84 e5                                      str r7, [r4, #4]
00537794  83 a4 f7 eb                                      bl #0x3209a8
00537798  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0053779c  00 20 a0 e3                                      mov r2, #0
005377a0  01 30 a0 e3                                      mov r3, #1
005377a4  00 50 c1 e5                                      strb r5, [r1]
005377a8  24 50 84 e5                                      str r5, [r4, #0x24]
005377ac  00 10 96 e5                                      ldr r1, [r6]
005377b0  a0 c0 84 e2                                      add ip, r4, #0xa0
005377b4  0c 00 a0 e1                                      mov r0, ip
005377b8  28 10 84 e5                                      str r1, [r4, #0x28]
005377bc  04 e0 96 e5                                      ldr lr, [r6, #4]
005377c0  10 10 a0 e3                                      mov r1, #0x10
005377c4  2c e0 84 e5                                      str lr, [r4, #0x2c]
005377c8  08 e0 96 e5                                      ldr lr, [r6, #8]
005377cc  30 e0 84 e5                                      str lr, [r4, #0x30]
005377d0  0c e0 96 e5                                      ldr lr, [r6, #0xc]
005377d4  34 e0 84 e5                                      str lr, [r4, #0x34]
005377d8  00 e0 96 e5                                      ldr lr, [r6]
005377dc  38 e0 84 e5                                      str lr, [r4, #0x38]
005377e0  04 e0 96 e5                                      ldr lr, [r6, #4]
005377e4  3c e0 84 e5                                      str lr, [r4, #0x3c]
005377e8  08 e0 96 e5                                      ldr lr, [r6, #8]
005377ec  40 e0 84 e5                                      str lr, [r4, #0x40]
005377f0  0c e0 96 e5                                      ldr lr, [r6, #0xc]
005377f4  44 e0 84 e5                                      str lr, [r4, #0x44]
005377f8  00 e0 96 e5                                      ldr lr, [r6]
005377fc  48 e0 84 e5                                      str lr, [r4, #0x48]
00537800  04 e0 96 e5                                      ldr lr, [r6, #4]
00537804  4c e0 84 e5                                      str lr, [r4, #0x4c]
00537808  08 e0 96 e5                                      ldr lr, [r6, #8]
0053780c  50 e0 84 e5                                      str lr, [r4, #0x50]
00537810  0c e0 96 e5                                      ldr lr, [r6, #0xc]
00537814  54 e0 84 e5                                      str lr, [r4, #0x54]
00537818  00 e0 96 e5                                      ldr lr, [r6]
0053781c  58 e0 84 e5                                      str lr, [r4, #0x58]
00537820  04 e0 96 e5                                      ldr lr, [r6, #4]
00537824  5c e0 84 e5                                      str lr, [r4, #0x5c]
00537828  08 e0 96 e5                                      ldr lr, [r6, #8]
0053782c  60 e0 84 e5                                      str lr, [r4, #0x60]
00537830  0c e0 96 e5                                      ldr lr, [r6, #0xc]
00537834  64 e0 84 e5                                      str lr, [r4, #0x64]
00537838  84 20 84 e5                                      str r2, [r4, #0x84]
0053783c  99 30 c4 e5                                      strb r3, [r4, #0x99]
00537840  78 20 84 e5                                      str r2, [r4, #0x78]
00537844  7c 20 84 e5                                      str r2, [r4, #0x7c]
00537848  80 20 84 e5                                      str r2, [r4, #0x80]
0053784c  90 30 84 e5                                      str r3, [r4, #0x90]
00537850  94 30 84 e5                                      str r3, [r4, #0x94]
00537854  98 30 c4 e5                                      strb r3, [r4, #0x98]
00537858  e0 c0 84 e5                                      str ip, [r4, #0xe0]
0053785c  e4 c0 84 e5                                      str ip, [r4, #0xe4]
00537860  68 50 84 e5                                      str r5, [r4, #0x68]
00537864  6c 50 84 e5                                      str r5, [r4, #0x6c]
00537868  70 50 84 e5                                      str r5, [r4, #0x70]
0053786c  74 50 84 e5                                      str r5, [r4, #0x74]
00537870  88 50 84 e5                                      str r5, [r4, #0x88]
00537874  8c 50 84 e5                                      str r5, [r4, #0x8c]
00537878  9a 50 c4 e5                                      strb r5, [r4, #0x9a]
0053787c  9b 50 c4 e5                                      strb r5, [r4, #0x9b]
00537880  9c 50 c4 e5                                      strb r5, [r4, #0x9c]
00537884  25 a4 f7 eb                                      bl #0x320920
00537888  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
0053788c  e8 30 84 e2                                      add r3, r4, #0xe8
00537890  03 00 a0 e1                                      mov r0, r3
00537894  00 50 82 e5                                      str r5, [r2]
00537898  10 10 a0 e3                                      mov r1, #0x10
0053789c  28 31 84 e5                                      str r3, [r4, #0x128]
005378a0  2c 31 84 e5                                      str r3, [r4, #0x12c]
005378a4  1d a4 f7 eb                                      bl #0x320920
005378a8  28 31 94 e5                                      ldr r3, [r4, #0x128]
005378ac  00 20 e0 e3                                      mvn r2, #0
005378b0  00 50 83 e5                                      str r5, [r3]
005378b4  24 30 94 e5                                      ldr r3, [r4, #0x24]
005378b8  38 21 84 e5                                      str r2, [r4, #0x138]
005378bc  17 20 a0 e3                                      mov r2, #0x17
005378c0  05 00 53 e1                                      cmp r3, r5
005378c4  50 51 84 e5                                      str r5, [r4, #0x150]
005378c8  54 21 84 e5                                      str r2, [r4, #0x154]
005378cc  30 51 84 e5                                      str r5, [r4, #0x130]
005378d0  34 51 c4 e5                                      strb r5, [r4, #0x134]
005378d4  3c 51 c4 e5                                      strb r5, [r4, #0x13c]
005378d8  40 51 84 e5                                      str r5, [r4, #0x140]
005378dc  44 51 84 e5                                      str r5, [r4, #0x144]
005378e0  48 51 84 e5                                      str r5, [r4, #0x148]
005378e4  4c 51 84 e5                                      str r5, [r4, #0x14c]
005378e8  2d 00 00 0a                                      beq #0x5379a4
005378ec  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
005378f0  38 c0 93 e5                                      ldr ip, [r3, #0x38]
005378f4  38 60 94 e5                                      ldr r6, [r4, #0x38]
005378f8  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
005378fc  40 10 94 e5                                      ldr r1, [r4, #0x40]
00537900  44 20 94 e5                                      ldr r2, [r4, #0x44]
00537904  40 80 93 e5                                      ldr r8, [r3, #0x40]
00537908  44 70 93 e5                                      ldr r7, [r3, #0x44]
0053790c  02 20 80 e0                                      add r2, r0, r2
00537910  01 10 8c e0                                      add r1, ip, r1
00537914  05 50 80 e0                                      add r5, r0, r5
00537918  06 60 8c e0                                      add r6, ip, r6
0053791c  4c 50 84 e5                                      str r5, [r4, #0x4c]
00537920  54 20 84 e5                                      str r2, [r4, #0x54]
00537924  48 60 84 e5                                      str r6, [r4, #0x48]
00537928  50 10 84 e5                                      str r1, [r4, #0x50]
0053792c  44 20 84 e5                                      str r2, [r4, #0x44]
00537930  70 80 84 e5                                      str r8, [r4, #0x70]
00537934  74 70 84 e5                                      str r7, [r4, #0x74]
00537938  68 c0 84 e5                                      str ip, [r4, #0x68]
0053793c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00537940  38 60 84 e5                                      str r6, [r4, #0x38]
00537944  3c 50 84 e5                                      str r5, [r4, #0x3c]
00537948  40 10 84 e5                                      str r1, [r4, #0x40]
0053794c  50 00 93 e5                                      ldr r0, [r3, #0x50]
00537950  00 00 51 e1                                      cmp r1, r0
00537954  50 00 84 c5                                      strgt r0, [r4, #0x50]
00537958  54 10 93 e5                                      ldr r1, [r3, #0x54]
0053795c  01 00 52 e1                                      cmp r2, r1
00537960  54 10 84 c5                                      strgt r1, [r4, #0x54]
00537964  48 10 93 e5                                      ldr r1, [r3, #0x48]
00537968  48 20 94 e5                                      ldr r2, [r4, #0x48]
0053796c  02 00 51 e1                                      cmp r1, r2
00537970  48 10 84 c5                                      strgt r1, [r4, #0x48]
00537974  01 20 a0 c1                                      movgt r2, r1
00537978  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0053797c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00537980  03 00 51 e1                                      cmp r1, r3
00537984  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
00537988  01 30 a0 c1                                      movgt r3, r1
0053798c  54 10 94 e5                                      ldr r1, [r4, #0x54]
00537990  03 00 51 e1                                      cmp r1, r3
00537994  50 30 94 e5                                      ldr r3, [r4, #0x50]
00537998  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
0053799c  03 00 52 e1                                      cmp r2, r3
005379a0  48 30 84 c5                                      strgt r3, [r4, #0x48]
005379a4  04 00 a0 e1                                      mov r0, r4
005379a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005379ac  60 d3 45 00 4c 27 00 00                          .byte 0x60, 0xd3, 0x45, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x005379b4, declared_size=400, range_size=400, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b.clone.2
; demangled: glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const [clone .clone.2]
; decoder-mode: arm
005379b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005379b8  00 70 52 e2                                      subs r7, r2, #0
005379bc  00 60 a0 e1                                      mov r6, r0
005379c0  00 b0 e0 13                                      mvnne fp, #0
005379c4  01 b0 a0 03                                      moveq fp, #1
005379c8  04 40 b6 e5                                      ldr r4, [r6, #4]!
005379cc  01 b0 8b e0                                      add fp, fp, r1
005379d0  02 00 7b e3                                      cmn fp, #2
005379d4  0c d0 4d e2                                      sub sp, sp, #0xc
005379d8  01 b1 a0 03                                      moveq fp, #0x40000000
005379dc  06 00 54 e1                                      cmp r4, r6
005379e0  01 90 a0 e1                                      mov sb, r1
005379e4  03 50 a0 e1                                      mov r5, r3
005379e8  30 80 9d e5                                      ldr r8, [sp, #0x30]
005379ec  34 a0 9d e5                                      ldr sl, [sp, #0x34]
005379f0  1d 00 00 0a                                      beq #0x537a6c
005379f4  08 30 94 e5                                      ldr r3, [r4, #8]
005379f8  03 00 a0 e1                                      mov r0, r3
005379fc  00 30 93 e5                                      ldr r3, [r3]
00537a00  0f e0 a0 e1                                      mov lr, pc
00537a04  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00537a08  00 00 50 e3                                      cmp r0, #0
00537a0c  13 00 00 0a                                      beq #0x537a60
00537a10  00 00 55 e3                                      cmp r5, #0
00537a14  08 00 94 15                                      ldrne r0, [r4, #8]
00537a18  03 00 00 1a                                      bne #0x537a2c
00537a1c  08 00 94 e5                                      ldr r0, [r4, #8]
00537a20  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
00537a24  00 00 53 e3                                      cmp r3, #0
00537a28  0c 00 00 1a                                      bne #0x537a60
00537a2c  34 31 d0 e5                                      ldrb r3, [r0, #0x134]
00537a30  00 00 53 e3                                      cmp r3, #0
00537a34  02 00 00 0a                                      beq #0x537a44
00537a38  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
00537a3c  05 00 53 e1                                      cmp r3, r5
00537a40  0c 00 00 0a                                      beq #0x537a78
00537a44  09 10 a0 e1                                      mov r1, sb
00537a48  07 20 a0 e1                                      mov r2, r7
00537a4c  05 30 a0 e1                                      mov r3, r5
00537a50  00 05 8d e8                                      stm sp, {r8, sl}
00537a54  d6 ff ff eb                                      bl #0x5379b4
00537a58  00 00 50 e3                                      cmp r0, #0
00537a5c  24 00 00 1a                                      bne #0x537af4
00537a60  00 40 94 e5                                      ldr r4, [r4]
00537a64  06 00 54 e1                                      cmp r4, r6
00537a68  e1 ff ff 1a                                      bne #0x5379f4
00537a6c  00 00 a0 e3                                      mov r0, #0
00537a70  0c d0 8d e2                                      add sp, sp, #0xc
00537a74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00537a78  38 31 90 e5                                      ldr r3, [r0, #0x138]
00537a7c  0b 00 53 e1                                      cmp r3, fp
00537a80  2c 00 00 0a                                      beq #0x537b38
00537a84  00 20 9a e5                                      ldr r2, [sl]
00537a88  00 00 52 e3                                      cmp r2, #0
00537a8c  21 00 00 0a                                      beq #0x537b18
00537a90  00 00 57 e3                                      cmp r7, #0
00537a94  38 21 92 e5                                      ldr r2, [r2, #0x138]
00537a98  17 00 00 1a                                      bne #0x537afc
00537a9c  03 00 59 e1                                      cmp sb, r3
00537aa0  02 00 53 b1                                      cmplt r3, r2
00537aa4  01 00 00 aa                                      bge #0x537ab0
00537aa8  00 00 8a e5                                      str r0, [sl]
00537aac  08 00 94 e5                                      ldr r0, [r4, #8]
00537ab0  00 20 98 e5                                      ldr r2, [r8]
00537ab4  00 00 52 e3                                      cmp r2, #0
00537ab8  04 00 00 0a                                      beq #0x537ad0
00537abc  00 00 57 e3                                      cmp r7, #0
00537ac0  38 21 92 e5                                      ldr r2, [r2, #0x138]
00537ac4  10 00 00 1a                                      bne #0x537b0c
00537ac8  02 00 53 e1                                      cmp r3, r2
00537acc  dc ff ff aa                                      bge #0x537a44
00537ad0  00 00 88 e5                                      str r0, [r8]
00537ad4  08 00 94 e5                                      ldr r0, [r4, #8]
00537ad8  09 10 a0 e1                                      mov r1, sb
00537adc  07 20 a0 e1                                      mov r2, r7
00537ae0  05 30 a0 e1                                      mov r3, r5
00537ae4  00 05 8d e8                                      stm sp, {r8, sl}
00537ae8  b1 ff ff eb                                      bl #0x5379b4
00537aec  00 00 50 e3                                      cmp r0, #0
00537af0  da ff ff 0a                                      beq #0x537a60
00537af4  01 00 a0 e3                                      mov r0, #1
00537af8  dc ff ff ea                                      b #0x537a70
00537afc  03 00 59 e1                                      cmp sb, r3
00537b00  02 00 53 c1                                      cmpgt r3, r2
00537b04  e7 ff ff ca                                      bgt #0x537aa8
00537b08  e8 ff ff ea                                      b #0x537ab0
00537b0c  02 00 53 e1                                      cmp r3, r2
00537b10  ee ff ff ca                                      bgt #0x537ad0
00537b14  ca ff ff ea                                      b #0x537a44
00537b18  00 00 57 e3                                      cmp r7, #0
00537b1c  02 00 00 0a                                      beq #0x537b2c
00537b20  03 00 59 e1                                      cmp sb, r3
00537b24  df ff ff ca                                      bgt #0x537aa8
00537b28  e0 ff ff ea                                      b #0x537ab0
00537b2c  03 00 59 e1                                      cmp sb, r3
00537b30  de ff ff aa                                      bge #0x537ab0
00537b34  db ff ff ea                                      b #0x537aa8
00537b38  00 00 8a e5                                      str r0, [sl]
00537b3c  01 00 a0 e3                                      mov r0, #1
00537b40  ca ff ff ea                                      b #0x537a70

; FUNCTION 0x00538234, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement14setToolTipTextEPKw
; demangled: glitch::gui::IGUIElement::setToolTipText(wchar_t const*)
; decoder-mode: arm
00538234  70 40 2d e9                                      push {r4, r5, r6, lr}
00538238  00 40 a0 e1                                      mov r4, r0
0053823c  01 00 a0 e1                                      mov r0, r1
00538240  01 50 a0 e1                                      mov r5, r1
00538244  8f 5a f7 eb                                      bl #0x30ec88
00538248  05 10 a0 e1                                      mov r1, r5
0053824c  00 21 85 e0                                      add r2, r5, r0, lsl #2
00538250  e8 00 84 e2                                      add r0, r4, #0xe8
00538254  70 40 bd e8                                      pop {r4, r5, r6, lr}
00538258  d0 ab f7 ea                                      b #0x3231a0

; FUNCTION 0x00539020, declared_size=240, range_size=240, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementD2Ev
; demangled: glitch::gui::IGUIElement::~IGUIElement()
; decoder-mode: arm
00539020  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00539024  00 30 91 e5                                      ldr r3, [r1]
00539028  00 50 a0 e1                                      mov r5, r0
0053902c  00 60 a0 e1                                      mov r6, r0
00539030  00 30 80 e5                                      str r3, [r0]
00539034  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00539038  04 20 91 e5                                      ldr r2, [r1, #4]
0053903c  00 70 a0 e3                                      mov r7, #0
00539040  03 20 80 e7                                      str r2, [r0, r3]
00539044  00 30 90 e5                                      ldr r3, [r0]
00539048  08 20 91 e5                                      ldr r2, [r1, #8]
0053904c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00539050  03 20 80 e7                                      str r2, [r0, r3]
00539054  04 40 b5 e5                                      ldr r4, [r5, #4]!
00539058  07 00 00 ea                                      b #0x53907c
0053905c  08 30 94 e5                                      ldr r3, [r4, #8]
00539060  24 70 83 e5                                      str r7, [r3, #0x24]
00539064  08 30 94 e5                                      ldr r3, [r4, #8]
00539068  00 20 93 e5                                      ldr r2, [r3]
0053906c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00539070  00 00 83 e0                                      add r0, r3, r0
00539074  42 91 f7 eb                                      bl #0x31d584
00539078  00 40 94 e5                                      ldr r4, [r4]
0053907c  05 00 54 e1                                      cmp r4, r5
00539080  f5 ff ff 1a                                      bne #0x53905c
00539084  e8 30 86 e2                                      add r3, r6, #0xe8
00539088  44 00 93 e5                                      ldr r0, [r3, #0x44]
0053908c  03 00 50 e1                                      cmp r0, r3
00539090  02 00 00 0a                                      beq #0x5390a0
00539094  00 00 50 e3                                      cmp r0, #0
00539098  00 00 00 0a                                      beq #0x5390a0
0053909c  eb 5c f7 eb                                      bl #0x310450
005390a0  a0 30 86 e2                                      add r3, r6, #0xa0
005390a4  44 00 93 e5                                      ldr r0, [r3, #0x44]
005390a8  03 00 50 e1                                      cmp r0, r3
005390ac  02 00 00 0a                                      beq #0x5390bc
005390b0  00 00 50 e3                                      cmp r0, #0
005390b4  00 00 00 0a                                      beq #0x5390bc
005390b8  e4 5c f7 eb                                      bl #0x310450
005390bc  0c 30 86 e2                                      add r3, r6, #0xc
005390c0  14 00 93 e5                                      ldr r0, [r3, #0x14]
005390c4  03 00 50 e1                                      cmp r0, r3
005390c8  02 00 00 0a                                      beq #0x5390d8
005390cc  00 00 50 e3                                      cmp r0, #0
005390d0  00 00 00 0a                                      beq #0x5390d8
005390d4  dd 5c f7 eb                                      bl #0x310450
005390d8  04 00 96 e5                                      ldr r0, [r6, #4]
005390dc  05 00 50 e1                                      cmp r0, r5
005390e0  01 00 00 1a                                      bne #0x5390ec
005390e4  05 00 00 ea                                      b #0x539100
005390e8  04 00 a0 e1                                      mov r0, r4
005390ec  00 40 90 e5                                      ldr r4, [r0]
005390f0  d6 5c f7 eb                                      bl #0x310450
005390f4  05 00 54 e1                                      cmp r4, r5
005390f8  fa ff ff 1a                                      bne #0x5390e8
005390fc  05 00 a0 e1                                      mov r0, r5
00539100  04 00 86 e5                                      str r0, [r6, #4]
00539104  04 00 85 e5                                      str r0, [r5, #4]
00539108  06 00 a0 e1                                      mov r0, r6
0053910c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00539838, declared_size=932, range_size=932, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::IGUIElement::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00539838  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053983c  48 63 9f e5                                      ldr r6, [pc, #0x348]
00539840  48 73 9f e5                                      ldr r7, [pc, #0x348]
00539844  01 40 a0 e1                                      mov r4, r1
00539848  06 60 8f e0                                      add r6, pc, r6
0053984c  07 30 96 e7                                      ldr r3, [r6, r7]
00539850  3c 13 9f e5                                      ldr r1, [pc, #0x33c]
00539854  94 d0 4d e2                                      sub sp, sp, #0x94
00539858  00 30 93 e5                                      ldr r3, [r3]
0053985c  00 20 90 e5                                      ldr r2, [r0]
00539860  00 50 a0 e1                                      mov r5, r0
00539864  8c 30 8d e5                                      str r3, [sp, #0x8c]
00539868  00 30 94 e5                                      ldr r3, [r4]
0053986c  01 10 8f e0                                      add r1, pc, r1
00539870  04 00 a0 e1                                      mov r0, r4
00539874  58 80 92 e5                                      ldr r8, [r2, #0x58]
00539878  0f e0 a0 e1                                      mov lr, pc
0053987c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00539880  00 10 a0 e1                                      mov r1, r0
00539884  05 00 a0 e1                                      mov r0, r5
00539888  38 ff 2f e1                                      blx r8
0053988c  04 23 9f e5                                      ldr r2, [pc, #0x304]
00539890  00 c0 95 e5                                      ldr ip, [r5]
00539894  74 80 8d e2                                      add r8, sp, #0x74
00539898  02 20 8f e0                                      add r2, pc, r2
0053989c  04 10 a0 e1                                      mov r1, r4
005398a0  00 30 94 e5                                      ldr r3, [r4]
005398a4  08 00 a0 e1                                      mov r0, r8
005398a8  60 a0 9c e5                                      ldr sl, [ip, #0x60]
005398ac  0f e0 a0 e1                                      mov lr, pc
005398b0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
005398b4  05 00 a0 e1                                      mov r0, r5
005398b8  88 10 9d e5                                      ldr r1, [sp, #0x88]
005398bc  3a ff 2f e1                                      blx sl
005398c0  88 00 9d e5                                      ldr r0, [sp, #0x88]
005398c4  08 00 50 e1                                      cmp r0, r8
005398c8  02 00 00 0a                                      beq #0x5398d8
005398cc  00 00 50 e3                                      cmp r0, #0
005398d0  00 00 00 0a                                      beq #0x5398d8
005398d4  dd 5a f7 eb                                      bl #0x310450
005398d8  bc 22 9f e5                                      ldr r2, [pc, #0x2bc]
005398dc  00 c0 95 e5                                      ldr ip, [r5]
005398e0  0c 80 8d e2                                      add r8, sp, #0xc
005398e4  02 20 8f e0                                      add r2, pc, r2
005398e8  04 10 a0 e1                                      mov r1, r4
005398ec  00 30 94 e5                                      ldr r3, [r4]
005398f0  08 00 a0 e1                                      mov r0, r8
005398f4  44 a0 9c e5                                      ldr sl, [ip, #0x44]
005398f8  0f e0 a0 e1                                      mov lr, pc
005398fc  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00539900  05 00 a0 e1                                      mov r0, r5
00539904  50 10 9d e5                                      ldr r1, [sp, #0x50]
00539908  3a ff 2f e1                                      blx sl
0053990c  50 00 9d e5                                      ldr r0, [sp, #0x50]
00539910  08 00 50 e1                                      cmp r0, r8
00539914  02 00 00 0a                                      beq #0x539924
00539918  00 00 50 e3                                      cmp r0, #0
0053991c  00 00 00 0a                                      beq #0x539924
00539920  ca 5a f7 eb                                      bl #0x310450
00539924  74 12 9f e5                                      ldr r1, [pc, #0x274]
00539928  00 20 95 e5                                      ldr r2, [r5]
0053992c  00 30 94 e5                                      ldr r3, [r4]
00539930  01 10 8f e0                                      add r1, pc, r1
00539934  04 00 a0 e1                                      mov r0, r4
00539938  30 80 92 e5                                      ldr r8, [r2, #0x30]
0053993c  0f e0 a0 e1                                      mov lr, pc
00539940  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00539944  00 10 a0 e1                                      mov r1, r0
00539948  05 00 a0 e1                                      mov r0, r5
0053994c  38 ff 2f e1                                      blx r8
00539950  4c 12 9f e5                                      ldr r1, [pc, #0x24c]
00539954  00 20 95 e5                                      ldr r2, [r5]
00539958  00 30 94 e5                                      ldr r3, [r4]
0053995c  01 10 8f e0                                      add r1, pc, r1
00539960  04 00 a0 e1                                      mov r0, r4
00539964  40 80 92 e5                                      ldr r8, [r2, #0x40]
00539968  0f e0 a0 e1                                      mov lr, pc
0053996c  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00539970  00 10 a0 e1                                      mov r1, r0
00539974  05 00 a0 e1                                      mov r0, r5
00539978  38 ff 2f e1                                      blx r8
0053997c  24 12 9f e5                                      ldr r1, [pc, #0x224]
00539980  00 30 94 e5                                      ldr r3, [r4]
00539984  04 00 a0 e1                                      mov r0, r4
00539988  01 10 8f e0                                      add r1, pc, r1
0053998c  0f e0 a0 e1                                      mov lr, pc
00539990  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00539994  10 12 9f e5                                      ldr r1, [pc, #0x210]
00539998  34 01 c5 e5                                      strb r0, [r5, #0x134]
0053999c  00 30 94 e5                                      ldr r3, [r4]
005399a0  01 10 8f e0                                      add r1, pc, r1
005399a4  04 00 a0 e1                                      mov r0, r4
005399a8  0f e0 a0 e1                                      mov lr, pc
005399ac  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005399b0  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
005399b4  3c 01 c5 e5                                      strb r0, [r5, #0x13c]
005399b8  00 30 94 e5                                      ldr r3, [r4]
005399bc  01 10 8f e0                                      add r1, pc, r1
005399c0  04 00 a0 e1                                      mov r0, r4
005399c4  0f e0 a0 e1                                      mov lr, pc
005399c8  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005399cc  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
005399d0  38 01 85 e5                                      str r0, [r5, #0x138]
005399d4  04 10 a0 e1                                      mov r1, r4
005399d8  02 20 8f e0                                      add r2, pc, r2
005399dc  6c 00 8d e2                                      add r0, sp, #0x6c
005399e0  00 30 94 e5                                      ldr r3, [r4]
005399e4  0f e0 a0 e1                                      mov lr, pc
005399e8  e4 f1 93 e5                                      ldr pc, [r3, #0x1e4]
005399ec  70 30 9d e5                                      ldr r3, [sp, #0x70]
005399f0  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005399f4  05 00 a0 e1                                      mov r0, r5
005399f8  8c 30 85 e5                                      str r3, [r5, #0x8c]
005399fc  88 20 85 e5                                      str r2, [r5, #0x88]
00539a00  00 30 95 e5                                      ldr r3, [r5]
00539a04  0f e0 a0 e1                                      mov lr, pc
00539a08  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00539a0c  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
00539a10  04 10 a0 e1                                      mov r1, r4
00539a14  00 30 94 e5                                      ldr r3, [r4]
00539a18  64 00 8d e2                                      add r0, sp, #0x64
00539a1c  02 20 8f e0                                      add r2, pc, r2
00539a20  0f e0 a0 e1                                      mov lr, pc
00539a24  e4 f1 93 e5                                      ldr pc, [r3, #0x1e4]
00539a28  64 20 9d e5                                      ldr r2, [sp, #0x64]
00539a2c  68 30 9d e5                                      ldr r3, [sp, #0x68]
00539a30  05 00 a0 e1                                      mov r0, r5
00539a34  00 00 52 e3                                      cmp r2, #0
00539a38  6c 20 8d e5                                      str r2, [sp, #0x6c]
00539a3c  70 30 8d e5                                      str r3, [sp, #0x70]
00539a40  90 20 85 e5                                      str r2, [r5, #0x90]
00539a44  01 20 a0 d3                                      movle r2, #1
00539a48  90 20 85 d5                                      strle r2, [r5, #0x90]
00539a4c  00 00 53 e3                                      cmp r3, #0
00539a50  94 30 85 e5                                      str r3, [r5, #0x94]
00539a54  01 30 a0 d3                                      movle r3, #1
00539a58  94 30 85 d5                                      strle r3, [r5, #0x94]
00539a5c  00 30 95 e5                                      ldr r3, [r5]
00539a60  0f e0 a0 e1                                      mov lr, pc
00539a64  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00539a68  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
00539a6c  00 30 94 e5                                      ldr r3, [r4]
00539a70  04 00 a0 e1                                      mov r0, r4
00539a74  01 10 8f e0                                      add r1, pc, r1
00539a78  0f e0 a0 e1                                      mov lr, pc
00539a7c  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00539a80  38 11 9f e5                                      ldr r1, [pc, #0x138]
00539a84  9b 00 c5 e5                                      strb r0, [r5, #0x9b]
00539a88  00 30 94 e5                                      ldr r3, [r4]
00539a8c  01 10 8f e0                                      add r1, pc, r1
00539a90  04 00 a0 e1                                      mov r0, r4
00539a94  0f e0 a0 e1                                      mov lr, pc
00539a98  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00539a9c  20 81 9f e5                                      ldr r8, [pc, #0x120]
00539aa0  20 11 9f e5                                      ldr r1, [pc, #0x120]
00539aa4  9c 00 c5 e5                                      strb r0, [r5, #0x9c]
00539aa8  08 80 8f e0                                      add r8, pc, r8
00539aac  5c 80 88 e2                                      add r8, r8, #0x5c
00539ab0  08 20 a0 e1                                      mov r2, r8
00539ab4  01 10 8f e0                                      add r1, pc, r1
00539ab8  00 30 94 e5                                      ldr r3, [r4]
00539abc  04 00 a0 e1                                      mov r0, r4
00539ac0  0f e0 a0 e1                                      mov lr, pc
00539ac4  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00539ac8  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
00539acc  08 20 a0 e1                                      mov r2, r8
00539ad0  00 90 a0 e1                                      mov sb, r0
00539ad4  00 30 94 e5                                      ldr r3, [r4]
00539ad8  01 10 8f e0                                      add r1, pc, r1
00539adc  04 00 a0 e1                                      mov r0, r4
00539ae0  0f e0 a0 e1                                      mov lr, pc
00539ae4  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00539ae8  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
00539aec  08 20 a0 e1                                      mov r2, r8
00539af0  00 b0 a0 e1                                      mov fp, r0
00539af4  00 30 94 e5                                      ldr r3, [r4]
00539af8  01 10 8f e0                                      add r1, pc, r1
00539afc  04 00 a0 e1                                      mov r0, r4
00539b00  0f e0 a0 e1                                      mov lr, pc
00539b04  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00539b08  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00539b0c  08 20 a0 e1                                      mov r2, r8
00539b10  00 a0 a0 e1                                      mov sl, r0
00539b14  00 30 94 e5                                      ldr r3, [r4]
00539b18  01 10 8f e0                                      add r1, pc, r1
00539b1c  04 00 a0 e1                                      mov r0, r4
00539b20  0f e0 a0 e1                                      mov lr, pc
00539b24  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00539b28  0a 30 a0 e1                                      mov r3, sl
00539b2c  00 00 8d e5                                      str r0, [sp]
00539b30  09 10 a0 e1                                      mov r1, sb
00539b34  0b 20 a0 e1                                      mov r2, fp
00539b38  05 00 a0 e1                                      mov r0, r5
00539b3c  3f eb ff eb                                      bl #0x534840
00539b40  90 20 9f e5                                      ldr r2, [pc, #0x90]
00539b44  54 80 8d e2                                      add r8, sp, #0x54
00539b48  00 30 94 e5                                      ldr r3, [r4]
00539b4c  02 20 8f e0                                      add r2, pc, r2
00539b50  04 10 a0 e1                                      mov r1, r4
00539b54  08 00 a0 e1                                      mov r0, r8
00539b58  0f e0 a0 e1                                      mov lr, pc
00539b5c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
00539b60  05 00 a0 e1                                      mov r0, r5
00539b64  08 10 a0 e1                                      mov r1, r8
00539b68  f4 ea ff eb                                      bl #0x534740
00539b6c  07 30 96 e7                                      ldr r3, [r6, r7]
00539b70  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
00539b74  00 30 93 e5                                      ldr r3, [r3]
00539b78  03 00 52 e1                                      cmp r2, r3
00539b7c  01 00 00 1a                                      bne #0x539b88
00539b80  94 d0 8d e2                                      add sp, sp, #0x94
00539b84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00539b88  e0 51 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00539b8c  48 b2 45 00 ac 40 00 00 5c 2f 39 00 e8 24 39 00  .byte 0x48, 0xb2, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5c, 0x2f, 0x39, 0x00, 0xe8, 0x24, 0x39, 0x00
00539b9c  14 4e 3a 00 78 25 39 00 bc 44 3a 00 98 44 3a 00  .byte 0x14, 0x4e, 0x3a, 0x00, 0x78, 0x25, 0x39, 0x00, 0xbc, 0x44, 0x3a, 0x00, 0x98, 0x44, 0x3a, 0x00
00539bac  88 44 3a 00 7c 44 3a 00 f8 43 3a 00 ac 43 3a 00  .byte 0x88, 0x44, 0x3a, 0x00, 0x7c, 0x44, 0x3a, 0x00, 0xf8, 0x43, 0x3a, 0x00, 0xac, 0x43, 0x3a, 0x00
00539bbc  64 43 3a 00 54 43 3a 00 90 d0 41 00 cc 0a 3a 00  .byte 0x64, 0x43, 0x3a, 0x00, 0x54, 0x43, 0x3a, 0x00, 0x90, 0xd0, 0x41, 0x00, 0xcc, 0x0a, 0x3a, 0x00
00539bcc  20 43 3a 00 b8 0a 3a 00 f0 42 3a 00 84 8b 38 00  .byte 0x20, 0x43, 0x3a, 0x00, 0xb8, 0x0a, 0x3a, 0x00, 0xf0, 0x42, 0x3a, 0x00, 0x84, 0x8b, 0x38, 0x00

; FUNCTION 0x00539bdc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZTv0_n20_N6glitch3gui11IGUIElement21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::IGUIElement::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00539bdc  00 30 90 e5                                      ldr r3, [r0]
00539be0  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00539be4  03 00 80 e0                                      add r0, r0, r3
00539be8  12 ff ff ea                                      b #0x539838

; FUNCTION 0x00539bec, declared_size=252, range_size=252, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementD1Ev
; demangled: glitch::gui::IGUIElement::~IGUIElement()
; decoder-mode: arm
00539bec  ec 20 9f e5                                      ldr r2, [pc, #0xec]
00539bf0  ec 30 9f e5                                      ldr r3, [pc, #0xec]
00539bf4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00539bf8  02 20 8f e0                                      add r2, pc, r2
00539bfc  03 30 92 e7                                      ldr r3, [r2, r3]
00539c00  00 50 a0 e1                                      mov r5, r0
00539c04  00 70 a0 e1                                      mov r7, r0
00539c08  c4 20 83 e2                                      add r2, r3, #0xc4
00539c0c  10 10 83 e2                                      add r1, r3, #0x10
00539c10  a4 30 83 e2                                      add r3, r3, #0xa4
00539c14  00 10 80 e5                                      str r1, [r0]
00539c18  58 31 80 e5                                      str r3, [r0, #0x158]
00539c1c  5c 21 80 e5                                      str r2, [r0, #0x15c]
00539c20  00 60 a0 e3                                      mov r6, #0
00539c24  04 40 b5 e5                                      ldr r4, [r5, #4]!
00539c28  07 00 00 ea                                      b #0x539c4c
00539c2c  08 30 94 e5                                      ldr r3, [r4, #8]
00539c30  24 60 83 e5                                      str r6, [r3, #0x24]
00539c34  08 30 94 e5                                      ldr r3, [r4, #8]
00539c38  00 20 93 e5                                      ldr r2, [r3]
00539c3c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00539c40  00 00 83 e0                                      add r0, r3, r0
00539c44  4e 8e f7 eb                                      bl #0x31d584
00539c48  00 40 94 e5                                      ldr r4, [r4]
00539c4c  05 00 54 e1                                      cmp r4, r5
00539c50  f5 ff ff 1a                                      bne #0x539c2c
00539c54  e8 30 87 e2                                      add r3, r7, #0xe8
00539c58  44 00 93 e5                                      ldr r0, [r3, #0x44]
00539c5c  03 00 50 e1                                      cmp r0, r3
00539c60  02 00 00 0a                                      beq #0x539c70
00539c64  00 00 50 e3                                      cmp r0, #0
00539c68  00 00 00 0a                                      beq #0x539c70
00539c6c  f7 59 f7 eb                                      bl #0x310450
00539c70  a0 30 87 e2                                      add r3, r7, #0xa0
00539c74  44 00 93 e5                                      ldr r0, [r3, #0x44]
00539c78  03 00 50 e1                                      cmp r0, r3
00539c7c  02 00 00 0a                                      beq #0x539c8c
00539c80  00 00 50 e3                                      cmp r0, #0
00539c84  00 00 00 0a                                      beq #0x539c8c
00539c88  f0 59 f7 eb                                      bl #0x310450
00539c8c  0c 30 87 e2                                      add r3, r7, #0xc
00539c90  14 00 93 e5                                      ldr r0, [r3, #0x14]
00539c94  03 00 50 e1                                      cmp r0, r3
00539c98  02 00 00 0a                                      beq #0x539ca8
00539c9c  00 00 50 e3                                      cmp r0, #0
00539ca0  00 00 00 0a                                      beq #0x539ca8
00539ca4  e9 59 f7 eb                                      bl #0x310450
00539ca8  04 00 97 e5                                      ldr r0, [r7, #4]
00539cac  05 00 50 e1                                      cmp r0, r5
00539cb0  01 00 00 1a                                      bne #0x539cbc
00539cb4  05 00 00 ea                                      b #0x539cd0
00539cb8  04 00 a0 e1                                      mov r0, r4
00539cbc  00 40 90 e5                                      ldr r4, [r0]
00539cc0  e2 59 f7 eb                                      bl #0x310450
00539cc4  05 00 54 e1                                      cmp r4, r5
00539cc8  fa ff ff 1a                                      bne #0x539cb8
00539ccc  05 00 a0 e1                                      mov r0, r5
00539cd0  04 00 87 e5                                      str r0, [r7, #4]
00539cd4  04 00 85 e5                                      str r0, [r5, #4]
00539cd8  07 00 a0 e1                                      mov r0, r7
00539cdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00539ce0  98 ae 45 00 90 42 00 00                          .byte 0x98, 0xae, 0x45, 0x00, 0x90, 0x42, 0x00, 0x00

; FUNCTION 0x00539ce8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZTv0_n24_N6glitch3gui11IGUIElementD1Ev
; demangled: virtual thunk to glitch::gui::IGUIElement::~IGUIElement()
; decoder-mode: arm
00539ce8  00 30 90 e5                                      ldr r3, [r0]
00539cec  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00539cf0  03 00 80 e0                                      add r0, r0, r3
00539cf4  bc ff ff ea                                      b #0x539bec

; FUNCTION 0x00539cf8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZTv0_n12_N6glitch3gui11IGUIElementD1Ev
; demangled: virtual thunk to glitch::gui::IGUIElement::~IGUIElement()
; decoder-mode: arm
00539cf8  00 30 90 e5                                      ldr r3, [r0]
00539cfc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00539d00  03 00 80 e0                                      add r0, r0, r3
00539d04  b8 ff ff ea                                      b #0x539bec

; FUNCTION 0x00539d08, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementD0Ev
; demangled: glitch::gui::IGUIElement::~IGUIElement()
; decoder-mode: arm
00539d08  10 40 2d e9                                      push {r4, lr}
00539d0c  00 40 a0 e1                                      mov r4, r0
00539d10  b5 ff ff eb                                      bl #0x539bec
00539d14  04 00 a0 e1                                      mov r0, r4
00539d18  64 51 f7 eb                                      bl #0x30e2b0
00539d1c  04 00 a0 e1                                      mov r0, r4
00539d20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00539d24, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZTv0_n24_N6glitch3gui11IGUIElementD0Ev
; demangled: virtual thunk to glitch::gui::IGUIElement::~IGUIElement()
; decoder-mode: arm
00539d24  00 30 90 e5                                      ldr r3, [r0]
00539d28  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00539d2c  03 00 80 e0                                      add r0, r0, r3
00539d30  f4 ff ff ea                                      b #0x539d08

; FUNCTION 0x00539d34, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZTv0_n12_N6glitch3gui11IGUIElementD0Ev
; demangled: virtual thunk to glitch::gui::IGUIElement::~IGUIElement()
; decoder-mode: arm
00539d34  00 30 90 e5                                      ldr r3, [r0]
00539d38  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00539d3c  03 00 80 e0                                      add r0, r0, r3
00539d40  f0 ff ff ea                                      b #0x539d08

; FUNCTION 0x00539ec8, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement7setNameEPKc
; demangled: glitch::gui::IGUIElement::setName(char const*)
; decoder-mode: arm
00539ec8  70 40 2d e9                                      push {r4, r5, r6, lr}
00539ecc  00 40 a0 e1                                      mov r4, r0
00539ed0  01 00 a0 e1                                      mov r0, r1
00539ed4  01 50 a0 e1                                      mov r5, r1
00539ed8  dd 4f f7 eb                                      bl #0x30de54
00539edc  05 10 a0 e1                                      mov r1, r5
00539ee0  00 20 85 e0                                      add r2, r5, r0
00539ee4  0c 00 84 e2                                      add r0, r4, #0xc
00539ee8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00539eec  25 9b f7 ea                                      b #0x320b88

; FUNCTION 0x00542840, declared_size=340, range_size=340, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b.clone.4
; demangled: glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const [clone .clone.4]
; decoder-mode: arm
00542840  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00542844  00 60 a0 e1                                      mov r6, r0
00542848  04 40 b6 e5                                      ldr r4, [r6, #4]!
0054284c  08 d0 4d e2                                      sub sp, sp, #8
00542850  01 50 a0 e1                                      mov r5, r1
00542854  06 00 54 e1                                      cmp r4, r6
00542858  02 70 a0 e1                                      mov r7, r2
0054285c  03 80 a0 e1                                      mov r8, r3
00542860  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
00542864  00 90 a0 e3                                      mov sb, #0
00542868  1f 00 00 0a                                      beq #0x5428ec
0054286c  08 30 94 e5                                      ldr r3, [r4, #8]
00542870  03 00 a0 e1                                      mov r0, r3
00542874  00 30 93 e5                                      ldr r3, [r3]
00542878  0f e0 a0 e1                                      mov lr, pc
0054287c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00542880  00 00 50 e3                                      cmp r0, #0
00542884  01 00 00 1a                                      bne #0x542890
00542888  00 00 5a e3                                      cmp sl, #0
0054288c  13 00 00 0a                                      beq #0x5428e0
00542890  00 00 55 e3                                      cmp r5, #0
00542894  08 00 94 15                                      ldrne r0, [r4, #8]
00542898  03 00 00 1a                                      bne #0x5428ac
0054289c  08 00 94 e5                                      ldr r0, [r4, #8]
005428a0  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
005428a4  00 00 53 e3                                      cmp r3, #0
005428a8  0c 00 00 1a                                      bne #0x5428e0
005428ac  34 31 d0 e5                                      ldrb r3, [r0, #0x134]
005428b0  00 00 53 e3                                      cmp r3, #0
005428b4  02 00 00 0a                                      beq #0x5428c4
005428b8  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
005428bc  05 00 53 e1                                      cmp r3, r5
005428c0  0c 00 00 0a                                      beq #0x5428f8
005428c4  05 10 a0 e1                                      mov r1, r5
005428c8  07 20 a0 e1                                      mov r2, r7
005428cc  08 30 a0 e1                                      mov r3, r8
005428d0  00 90 8d e5                                      str sb, [sp]
005428d4  d9 ff ff eb                                      bl #0x542840
005428d8  00 00 50 e3                                      cmp r0, #0
005428dc  24 00 00 1a                                      bne #0x542974
005428e0  00 40 94 e5                                      ldr r4, [r4]
005428e4  06 00 54 e1                                      cmp r4, r6
005428e8  df ff ff 1a                                      bne #0x54286c
005428ec  00 00 a0 e3                                      mov r0, #0
005428f0  08 d0 8d e2                                      add sp, sp, #8
005428f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005428f8  38 31 90 e5                                      ldr r3, [r0, #0x138]
005428fc  01 01 53 e3                                      cmp r3, #0x40000000
00542900  20 00 00 0a                                      beq #0x542988
00542904  00 20 98 e5                                      ldr r2, [r8]
00542908  00 00 52 e3                                      cmp r2, #0
0054290c  1a 00 00 0a                                      beq #0x54297c
00542910  38 11 92 e5                                      ldr r1, [r2, #0x138]
00542914  01 00 53 e1                                      cmp r3, r1
00542918  00 20 a0 d3                                      movle r2, #0
0054291c  01 20 a0 c3                                      movgt r2, #1
00542920  01 00 73 e3                                      cmn r3, #1
00542924  00 20 a0 a3                                      movge r2, #0
00542928  00 00 52 e3                                      cmp r2, #0
0054292c  01 00 00 0a                                      beq #0x542938
00542930  00 00 88 e5                                      str r0, [r8]
00542934  08 00 94 e5                                      ldr r0, [r4, #8]
00542938  00 20 97 e5                                      ldr r2, [r7]
0054293c  00 00 52 e3                                      cmp r2, #0
00542940  02 00 00 0a                                      beq #0x542950
00542944  38 21 92 e5                                      ldr r2, [r2, #0x138]
00542948  02 00 53 e1                                      cmp r3, r2
0054294c  dc ff ff da                                      ble #0x5428c4
00542950  00 00 87 e5                                      str r0, [r7]
00542954  08 00 94 e5                                      ldr r0, [r4, #8]
00542958  05 10 a0 e1                                      mov r1, r5
0054295c  07 20 a0 e1                                      mov r2, r7
00542960  08 30 a0 e1                                      mov r3, r8
00542964  00 90 8d e5                                      str sb, [sp]
00542968  b4 ff ff eb                                      bl #0x542840
0054296c  00 00 50 e3                                      cmp r0, #0
00542970  da ff ff 0a                                      beq #0x5428e0
00542974  01 00 a0 e3                                      mov r0, #1
00542978  dc ff ff ea                                      b #0x5428f0
0054297c  01 00 73 e3                                      cmn r3, #1
00542980  ec ff ff aa                                      bge #0x542938
00542984  e9 ff ff ea                                      b #0x542930
00542988  00 00 88 e5                                      str r0, [r8]
0054298c  01 00 a0 e3                                      mov r0, #1
00542990  d6 ff ff ea                                      b #0x5428f0

; FUNCTION 0x00542994, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement11setTabOrderEi.clone.2
; demangled: glitch::gui::IGUIElement::setTabOrder(int) [clone .clone.2]
; decoder-mode: arm
00542994  10 40 2d e9                                      push {r4, lr}
00542998  3c 11 d0 e5                                      ldrb r1, [r0, #0x13c]
0054299c  00 30 a0 e3                                      mov r3, #0
005429a0  00 40 a0 e1                                      mov r4, r0
005429a4  03 00 51 e1                                      cmp r1, r3
005429a8  38 31 80 e5                                      str r3, [r0, #0x138]
005429ac  10 d0 4d e2                                      sub sp, sp, #0x10
005429b0  00 00 a0 01                                      moveq r0, r0
005429b4  0b 00 00 0a                                      beq #0x5429e8
005429b8  24 00 94 e5                                      ldr r0, [r4, #0x24]
005429bc  00 00 50 e3                                      cmp r0, #0
005429c0  04 00 a0 01                                      moveq r0, r4
005429c4  0d 00 00 0a                                      beq #0x542a00
005429c8  24 30 90 e5                                      ldr r3, [r0, #0x24]
005429cc  00 00 53 e3                                      cmp r3, #0
005429d0  0a 00 00 0a                                      beq #0x542a00
005429d4  03 00 a0 e1                                      mov r0, r3
005429d8  24 30 90 e5                                      ldr r3, [r0, #0x24]
005429dc  00 00 53 e3                                      cmp r3, #0
005429e0  06 00 00 0a                                      beq #0x542a00
005429e4  fa ff ff ea                                      b #0x5429d4
005429e8  24 00 90 e5                                      ldr r0, [r0, #0x24]
005429ec  00 00 50 e3                                      cmp r0, #0
005429f0  10 00 00 0a                                      beq #0x542a38
005429f4  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
005429f8  00 00 53 e3                                      cmp r3, #0
005429fc  f9 ff ff 0a                                      beq #0x5429e8
00542a00  00 30 a0 e3                                      mov r3, #0
00542a04  08 30 8d e5                                      str r3, [sp, #8]
00542a08  0c 30 8d e5                                      str r3, [sp, #0xc]
00542a0c  01 c0 a0 e3                                      mov ip, #1
00542a10  08 30 8d e2                                      add r3, sp, #8
00542a14  0c 20 8d e2                                      add r2, sp, #0xc
00542a18  00 c0 8d e5                                      str ip, [sp]
00542a1c  87 ff ff eb                                      bl #0x542840
00542a20  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00542a24  00 00 53 e3                                      cmp r3, #0
00542a28  02 00 00 0a                                      beq #0x542a38
00542a2c  38 31 93 e5                                      ldr r3, [r3, #0x138]
00542a30  01 30 83 e2                                      add r3, r3, #1
00542a34  38 31 84 e5                                      str r3, [r4, #0x138]
00542a38  10 d0 8d e2                                      add sp, sp, #0x10
00542a3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00545aac, declared_size=264, range_size=264, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementD2Ev.clone.0
; demangled: glitch::gui::IGUIElement::~IGUIElement() [clone .clone.0]
; decoder-mode: arm
00545aac  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00545ab0  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00545ab4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00545ab8  03 30 8f e0                                      add r3, pc, r3
00545abc  02 20 93 e7                                      ldr r2, [r3, r2]
00545ac0  00 50 a0 e1                                      mov r5, r0
00545ac4  00 60 a0 e1                                      mov r6, r0
00545ac8  04 30 92 e5                                      ldr r3, [r2, #4]
00545acc  08 10 92 e5                                      ldr r1, [r2, #8]
00545ad0  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00545ad4  00 30 80 e5                                      str r3, [r0]
00545ad8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00545adc  00 70 a0 e3                                      mov r7, #0
00545ae0  03 10 80 e7                                      str r1, [r0, r3]
00545ae4  00 30 90 e5                                      ldr r3, [r0]
00545ae8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00545aec  03 20 80 e7                                      str r2, [r0, r3]
00545af0  04 40 b5 e5                                      ldr r4, [r5, #4]!
00545af4  07 00 00 ea                                      b #0x545b18
00545af8  08 30 94 e5                                      ldr r3, [r4, #8]
00545afc  24 70 83 e5                                      str r7, [r3, #0x24]
00545b00  08 30 94 e5                                      ldr r3, [r4, #8]
00545b04  00 20 93 e5                                      ldr r2, [r3]
00545b08  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00545b0c  00 00 83 e0                                      add r0, r3, r0
00545b10  9b 5e f7 eb                                      bl #0x31d584
00545b14  00 40 94 e5                                      ldr r4, [r4]
00545b18  05 00 54 e1                                      cmp r4, r5
00545b1c  f5 ff ff 1a                                      bne #0x545af8
00545b20  e8 30 86 e2                                      add r3, r6, #0xe8
00545b24  44 00 93 e5                                      ldr r0, [r3, #0x44]
00545b28  03 00 50 e1                                      cmp r0, r3
00545b2c  02 00 00 0a                                      beq #0x545b3c
00545b30  00 00 50 e3                                      cmp r0, #0
00545b34  00 00 00 0a                                      beq #0x545b3c
00545b38  44 2a f7 eb                                      bl #0x310450
00545b3c  a0 30 86 e2                                      add r3, r6, #0xa0
00545b40  44 00 93 e5                                      ldr r0, [r3, #0x44]
00545b44  03 00 50 e1                                      cmp r0, r3
00545b48  02 00 00 0a                                      beq #0x545b58
00545b4c  00 00 50 e3                                      cmp r0, #0
00545b50  00 00 00 0a                                      beq #0x545b58
00545b54  3d 2a f7 eb                                      bl #0x310450
00545b58  0c 30 86 e2                                      add r3, r6, #0xc
00545b5c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00545b60  03 00 50 e1                                      cmp r0, r3
00545b64  02 00 00 0a                                      beq #0x545b74
00545b68  00 00 50 e3                                      cmp r0, #0
00545b6c  00 00 00 0a                                      beq #0x545b74
00545b70  36 2a f7 eb                                      bl #0x310450
00545b74  04 00 96 e5                                      ldr r0, [r6, #4]
00545b78  05 00 50 e1                                      cmp r0, r5
00545b7c  06 00 00 0a                                      beq #0x545b9c
00545b80  00 00 00 ea                                      b #0x545b88
00545b84  04 00 a0 e1                                      mov r0, r4
00545b88  00 40 90 e5                                      ldr r4, [r0]
00545b8c  2f 2a f7 eb                                      bl #0x310450
00545b90  05 00 54 e1                                      cmp r4, r5
00545b94  fa ff ff 1a                                      bne #0x545b84
00545b98  05 00 a0 e1                                      mov r0, r5
00545b9c  04 00 86 e5                                      str r0, [r6, #4]
00545ba0  04 00 85 e5                                      str r0, [r5, #4]
00545ba4  06 00 a0 e1                                      mov r0, r6
00545ba8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00545bac  d8 ef 44 00 c4 33 00 00                          .byte 0xd8, 0xef, 0x44, 0x00, 0xc4, 0x33, 0x00, 0x00

; FUNCTION 0x00547b48, declared_size=264, range_size=264, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementD2Ev.clone.0
; demangled: glitch::gui::IGUIElement::~IGUIElement() [clone .clone.0]
; decoder-mode: arm
00547b48  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00547b4c  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00547b50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00547b54  03 30 8f e0                                      add r3, pc, r3
00547b58  02 20 93 e7                                      ldr r2, [r3, r2]
00547b5c  00 50 a0 e1                                      mov r5, r0
00547b60  00 60 a0 e1                                      mov r6, r0
00547b64  04 30 92 e5                                      ldr r3, [r2, #4]
00547b68  08 10 92 e5                                      ldr r1, [r2, #8]
00547b6c  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00547b70  00 30 80 e5                                      str r3, [r0]
00547b74  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00547b78  00 70 a0 e3                                      mov r7, #0
00547b7c  03 10 80 e7                                      str r1, [r0, r3]
00547b80  00 30 90 e5                                      ldr r3, [r0]
00547b84  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00547b88  03 20 80 e7                                      str r2, [r0, r3]
00547b8c  04 40 b5 e5                                      ldr r4, [r5, #4]!
00547b90  07 00 00 ea                                      b #0x547bb4
00547b94  08 30 94 e5                                      ldr r3, [r4, #8]
00547b98  24 70 83 e5                                      str r7, [r3, #0x24]
00547b9c  08 30 94 e5                                      ldr r3, [r4, #8]
00547ba0  00 20 93 e5                                      ldr r2, [r3]
00547ba4  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547ba8  00 00 83 e0                                      add r0, r3, r0
00547bac  74 56 f7 eb                                      bl #0x31d584
00547bb0  00 40 94 e5                                      ldr r4, [r4]
00547bb4  05 00 54 e1                                      cmp r4, r5
00547bb8  f5 ff ff 1a                                      bne #0x547b94
00547bbc  e8 30 86 e2                                      add r3, r6, #0xe8
00547bc0  44 00 93 e5                                      ldr r0, [r3, #0x44]
00547bc4  03 00 50 e1                                      cmp r0, r3
00547bc8  02 00 00 0a                                      beq #0x547bd8
00547bcc  00 00 50 e3                                      cmp r0, #0
00547bd0  00 00 00 0a                                      beq #0x547bd8
00547bd4  1d 22 f7 eb                                      bl #0x310450
00547bd8  a0 30 86 e2                                      add r3, r6, #0xa0
00547bdc  44 00 93 e5                                      ldr r0, [r3, #0x44]
00547be0  03 00 50 e1                                      cmp r0, r3
00547be4  02 00 00 0a                                      beq #0x547bf4
00547be8  00 00 50 e3                                      cmp r0, #0
00547bec  00 00 00 0a                                      beq #0x547bf4
00547bf0  16 22 f7 eb                                      bl #0x310450
00547bf4  0c 30 86 e2                                      add r3, r6, #0xc
00547bf8  14 00 93 e5                                      ldr r0, [r3, #0x14]
00547bfc  03 00 50 e1                                      cmp r0, r3
00547c00  02 00 00 0a                                      beq #0x547c10
00547c04  00 00 50 e3                                      cmp r0, #0
00547c08  00 00 00 0a                                      beq #0x547c10
00547c0c  0f 22 f7 eb                                      bl #0x310450
00547c10  04 00 96 e5                                      ldr r0, [r6, #4]
00547c14  05 00 50 e1                                      cmp r0, r5
00547c18  06 00 00 0a                                      beq #0x547c38
00547c1c  00 00 00 ea                                      b #0x547c24
00547c20  04 00 a0 e1                                      mov r0, r4
00547c24  00 40 90 e5                                      ldr r4, [r0]
00547c28  08 22 f7 eb                                      bl #0x310450
00547c2c  05 00 54 e1                                      cmp r4, r5
00547c30  fa ff ff 1a                                      bne #0x547c20
00547c34  05 00 a0 e1                                      mov r0, r5
00547c38  04 00 86 e5                                      str r0, [r6, #4]
00547c3c  04 00 85 e5                                      str r0, [r5, #4]
00547c40  06 00 a0 e1                                      mov r0, r6
00547c44  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00547c48  3c cf 44 00 94 13 00 00                          .byte 0x3c, 0xcf, 0x44, 0x00, 0x94, 0x13, 0x00, 0x00

; FUNCTION 0x0054832c, declared_size=668, range_size=668, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementC2ENS0_17EGUI_ELEMENT_TYPEEPNS0_15IGUIEnvironmentEPS1_iNS_4core4rectIiEE.clone.1
; demangled: glitch::gui::IGUIElement::IGUIElement(glitch::gui::EGUI_ELEMENT_TYPE, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>) [clone .clone.1]
; decoder-mode: arm
0054832c  8c c2 9f e5                                      ldr ip, [pc, #0x28c]
00548330  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00548334  88 52 9f e5                                      ldr r5, [pc, #0x288]
00548338  0c c0 8f e0                                      add ip, pc, ip
0054833c  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00548340  05 50 9c e7                                      ldr r5, [ip, r5]
00548344  00 40 a0 e1                                      mov r4, r0
00548348  04 80 84 e2                                      add r8, r4, #4
0054834c  08 50 85 e2                                      add r5, r5, #8
00548350  00 50 80 e5                                      str r5, [r0]
00548354  00 00 91 e5                                      ldr r0, [r1]
00548358  00 50 a0 e3                                      mov r5, #0
0054835c  00 00 84 e5                                      str r0, [r4]
00548360  0c 60 10 e5                                      ldr r6, [r0, #-0xc]
00548364  04 70 91 e5                                      ldr r7, [r1, #4]
00548368  0c 00 84 e2                                      add r0, r4, #0xc
0054836c  06 70 84 e7                                      str r7, [r4, r6]
00548370  00 70 94 e5                                      ldr r7, [r4]
00548374  08 a0 91 e5                                      ldr sl, [r1, #8]
00548378  00 60 a0 e3                                      mov r6, #0
0054837c  10 90 17 e5                                      ldr sb, [r7, #-0x10]
00548380  01 10 a0 e3                                      mov r1, #1
00548384  a0 70 84 e2                                      add r7, r4, #0xa0
00548388  09 a0 84 e7                                      str sl, [r4, sb]
0054838c  08 80 84 e5                                      str r8, [r4, #8]
00548390  20 00 84 e5                                      str r0, [r4, #0x20]
00548394  04 80 84 e5                                      str r8, [r4, #4]
00548398  1c 00 84 e5                                      str r0, [r4, #0x1c]
0054839c  0c 50 c4 e5                                      strb r5, [r4, #0xc]
005483a0  24 50 84 e5                                      str r5, [r4, #0x24]
005483a4  00 a0 9e e5                                      ldr sl, [lr]
005483a8  02 80 a0 e1                                      mov r8, r2
005483ac  07 00 a0 e1                                      mov r0, r7
005483b0  28 a0 84 e5                                      str sl, [r4, #0x28]
005483b4  04 20 9e e5                                      ldr r2, [lr, #4]
005483b8  03 a0 a0 e1                                      mov sl, r3
005483bc  2c 20 84 e5                                      str r2, [r4, #0x2c]
005483c0  08 30 9e e5                                      ldr r3, [lr, #8]
005483c4  30 30 84 e5                                      str r3, [r4, #0x30]
005483c8  0c 30 9e e5                                      ldr r3, [lr, #0xc]
005483cc  34 30 84 e5                                      str r3, [r4, #0x34]
005483d0  00 30 9e e5                                      ldr r3, [lr]
005483d4  38 30 84 e5                                      str r3, [r4, #0x38]
005483d8  04 30 9e e5                                      ldr r3, [lr, #4]
005483dc  3c 30 84 e5                                      str r3, [r4, #0x3c]
005483e0  08 30 9e e5                                      ldr r3, [lr, #8]
005483e4  40 30 84 e5                                      str r3, [r4, #0x40]
005483e8  0c 30 9e e5                                      ldr r3, [lr, #0xc]
005483ec  44 30 84 e5                                      str r3, [r4, #0x44]
005483f0  00 30 9e e5                                      ldr r3, [lr]
005483f4  48 30 84 e5                                      str r3, [r4, #0x48]
005483f8  04 30 9e e5                                      ldr r3, [lr, #4]
005483fc  4c 30 84 e5                                      str r3, [r4, #0x4c]
00548400  08 30 9e e5                                      ldr r3, [lr, #8]
00548404  50 30 84 e5                                      str r3, [r4, #0x50]
00548408  0c 30 9e e5                                      ldr r3, [lr, #0xc]
0054840c  54 30 84 e5                                      str r3, [r4, #0x54]
00548410  00 30 9e e5                                      ldr r3, [lr]
00548414  58 30 84 e5                                      str r3, [r4, #0x58]
00548418  04 30 9e e5                                      ldr r3, [lr, #4]
0054841c  5c 30 84 e5                                      str r3, [r4, #0x5c]
00548420  08 30 9e e5                                      ldr r3, [lr, #8]
00548424  60 30 84 e5                                      str r3, [r4, #0x60]
00548428  0c 30 9e e5                                      ldr r3, [lr, #0xc]
0054842c  99 10 c4 e5                                      strb r1, [r4, #0x99]
00548430  90 10 84 e5                                      str r1, [r4, #0x90]
00548434  64 30 84 e5                                      str r3, [r4, #0x64]
00548438  94 10 84 e5                                      str r1, [r4, #0x94]
0054843c  98 10 c4 e5                                      strb r1, [r4, #0x98]
00548440  84 60 84 e5                                      str r6, [r4, #0x84]
00548444  78 60 84 e5                                      str r6, [r4, #0x78]
00548448  7c 60 84 e5                                      str r6, [r4, #0x7c]
0054844c  80 60 84 e5                                      str r6, [r4, #0x80]
00548450  68 50 84 e5                                      str r5, [r4, #0x68]
00548454  6c 50 84 e5                                      str r5, [r4, #0x6c]
00548458  70 50 84 e5                                      str r5, [r4, #0x70]
0054845c  74 50 84 e5                                      str r5, [r4, #0x74]
00548460  88 50 84 e5                                      str r5, [r4, #0x88]
00548464  8c 50 84 e5                                      str r5, [r4, #0x8c]
00548468  9a 50 c4 e5                                      strb r5, [r4, #0x9a]
0054846c  9b 50 c4 e5                                      strb r5, [r4, #0x9b]
00548470  9c 50 c4 e5                                      strb r5, [r4, #0x9c]
00548474  e0 70 84 e5                                      str r7, [r4, #0xe0]
00548478  e4 70 84 e5                                      str r7, [r4, #0xe4]
0054847c  a9 ff ff eb                                      bl #0x548328
00548480  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00548484  e8 30 84 e2                                      add r3, r4, #0xe8
00548488  03 00 a0 e1                                      mov r0, r3
0054848c  00 50 82 e5                                      str r5, [r2]
00548490  28 31 84 e5                                      str r3, [r4, #0x128]
00548494  2c 31 84 e5                                      str r3, [r4, #0x12c]
00548498  a2 ff ff eb                                      bl #0x548328
0054849c  28 31 94 e5                                      ldr r3, [r4, #0x128]
005484a0  05 00 5a e1                                      cmp sl, r5
005484a4  00 50 83 e5                                      str r5, [r3]
005484a8  20 30 9d e5                                      ldr r3, [sp, #0x20]
005484ac  4c 51 84 e5                                      str r5, [r4, #0x14c]
005484b0  50 81 84 e5                                      str r8, [r4, #0x150]
005484b4  30 31 84 e5                                      str r3, [r4, #0x130]
005484b8  00 30 e0 e3                                      mvn r3, #0
005484bc  38 31 84 e5                                      str r3, [r4, #0x138]
005484c0  0d 30 a0 e3                                      mov r3, #0xd
005484c4  54 31 84 e5                                      str r3, [r4, #0x154]
005484c8  34 51 c4 e5                                      strb r5, [r4, #0x134]
005484cc  3c 51 c4 e5                                      strb r5, [r4, #0x13c]
005484d0  40 51 84 e5                                      str r5, [r4, #0x140]
005484d4  44 51 84 e5                                      str r5, [r4, #0x144]
005484d8  48 51 84 e5                                      str r5, [r4, #0x148]
005484dc  04 00 00 0a                                      beq #0x5484f4
005484e0  0a 00 a0 e1                                      mov r0, sl
005484e4  00 30 9a e5                                      ldr r3, [sl]
005484e8  04 10 a0 e1                                      mov r1, r4
005484ec  0f e0 a0 e1                                      mov lr, pc
005484f0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005484f4  24 30 94 e5                                      ldr r3, [r4, #0x24]
005484f8  00 00 53 e3                                      cmp r3, #0
005484fc  2d 00 00 0a                                      beq #0x5485b8
00548500  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00548504  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00548508  38 60 94 e5                                      ldr r6, [r4, #0x38]
0054850c  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
00548510  40 10 94 e5                                      ldr r1, [r4, #0x40]
00548514  44 20 94 e5                                      ldr r2, [r4, #0x44]
00548518  40 80 93 e5                                      ldr r8, [r3, #0x40]
0054851c  44 70 93 e5                                      ldr r7, [r3, #0x44]
00548520  02 20 80 e0                                      add r2, r0, r2
00548524  01 10 8c e0                                      add r1, ip, r1
00548528  05 50 80 e0                                      add r5, r0, r5
0054852c  06 60 8c e0                                      add r6, ip, r6
00548530  4c 50 84 e5                                      str r5, [r4, #0x4c]
00548534  54 20 84 e5                                      str r2, [r4, #0x54]
00548538  48 60 84 e5                                      str r6, [r4, #0x48]
0054853c  50 10 84 e5                                      str r1, [r4, #0x50]
00548540  44 20 84 e5                                      str r2, [r4, #0x44]
00548544  70 80 84 e5                                      str r8, [r4, #0x70]
00548548  74 70 84 e5                                      str r7, [r4, #0x74]
0054854c  68 c0 84 e5                                      str ip, [r4, #0x68]
00548550  6c 00 84 e5                                      str r0, [r4, #0x6c]
00548554  38 60 84 e5                                      str r6, [r4, #0x38]
00548558  3c 50 84 e5                                      str r5, [r4, #0x3c]
0054855c  40 10 84 e5                                      str r1, [r4, #0x40]
00548560  50 00 93 e5                                      ldr r0, [r3, #0x50]
00548564  00 00 51 e1                                      cmp r1, r0
00548568  50 00 84 c5                                      strgt r0, [r4, #0x50]
0054856c  54 10 93 e5                                      ldr r1, [r3, #0x54]
00548570  01 00 52 e1                                      cmp r2, r1
00548574  54 10 84 c5                                      strgt r1, [r4, #0x54]
00548578  48 10 93 e5                                      ldr r1, [r3, #0x48]
0054857c  48 20 94 e5                                      ldr r2, [r4, #0x48]
00548580  02 00 51 e1                                      cmp r1, r2
00548584  48 10 84 c5                                      strgt r1, [r4, #0x48]
00548588  01 20 a0 c1                                      movgt r2, r1
0054858c  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
00548590  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00548594  03 00 51 e1                                      cmp r1, r3
00548598  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
0054859c  01 30 a0 c1                                      movgt r3, r1
005485a0  54 10 94 e5                                      ldr r1, [r4, #0x54]
005485a4  03 00 51 e1                                      cmp r1, r3
005485a8  50 30 94 e5                                      ldr r3, [r4, #0x50]
005485ac  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
005485b0  03 00 52 e1                                      cmp r2, r3
005485b4  48 30 84 c5                                      strgt r3, [r4, #0x48]
005485b8  04 00 a0 e1                                      mov r0, r4
005485bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005485c0  58 c7 44 00 4c 27 00 00                          .byte 0x58, 0xc7, 0x44, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x00548750, declared_size=264, range_size=264, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementD2Ev.clone.2
; demangled: glitch::gui::IGUIElement::~IGUIElement() [clone .clone.2]
; decoder-mode: arm
00548750  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00548754  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00548758  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0054875c  03 30 8f e0                                      add r3, pc, r3
00548760  02 20 93 e7                                      ldr r2, [r3, r2]
00548764  00 50 a0 e1                                      mov r5, r0
00548768  00 60 a0 e1                                      mov r6, r0
0054876c  04 30 92 e5                                      ldr r3, [r2, #4]
00548770  08 10 92 e5                                      ldr r1, [r2, #8]
00548774  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00548778  00 30 80 e5                                      str r3, [r0]
0054877c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00548780  00 70 a0 e3                                      mov r7, #0
00548784  03 10 80 e7                                      str r1, [r0, r3]
00548788  00 30 90 e5                                      ldr r3, [r0]
0054878c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00548790  03 20 80 e7                                      str r2, [r0, r3]
00548794  04 40 b5 e5                                      ldr r4, [r5, #4]!
00548798  07 00 00 ea                                      b #0x5487bc
0054879c  08 30 94 e5                                      ldr r3, [r4, #8]
005487a0  24 70 83 e5                                      str r7, [r3, #0x24]
005487a4  08 30 94 e5                                      ldr r3, [r4, #8]
005487a8  00 20 93 e5                                      ldr r2, [r3]
005487ac  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005487b0  00 00 83 e0                                      add r0, r3, r0
005487b4  72 53 f7 eb                                      bl #0x31d584
005487b8  00 40 94 e5                                      ldr r4, [r4]
005487bc  05 00 54 e1                                      cmp r4, r5
005487c0  f5 ff ff 1a                                      bne #0x54879c
005487c4  e8 30 86 e2                                      add r3, r6, #0xe8
005487c8  44 00 93 e5                                      ldr r0, [r3, #0x44]
005487cc  03 00 50 e1                                      cmp r0, r3
005487d0  02 00 00 0a                                      beq #0x5487e0
005487d4  00 00 50 e3                                      cmp r0, #0
005487d8  00 00 00 0a                                      beq #0x5487e0
005487dc  1b 1f f7 eb                                      bl #0x310450
005487e0  a0 30 86 e2                                      add r3, r6, #0xa0
005487e4  44 00 93 e5                                      ldr r0, [r3, #0x44]
005487e8  03 00 50 e1                                      cmp r0, r3
005487ec  02 00 00 0a                                      beq #0x5487fc
005487f0  00 00 50 e3                                      cmp r0, #0
005487f4  00 00 00 0a                                      beq #0x5487fc
005487f8  14 1f f7 eb                                      bl #0x310450
005487fc  0c 30 86 e2                                      add r3, r6, #0xc
00548800  14 00 93 e5                                      ldr r0, [r3, #0x14]
00548804  03 00 50 e1                                      cmp r0, r3
00548808  02 00 00 0a                                      beq #0x548818
0054880c  00 00 50 e3                                      cmp r0, #0
00548810  00 00 00 0a                                      beq #0x548818
00548814  0d 1f f7 eb                                      bl #0x310450
00548818  04 00 96 e5                                      ldr r0, [r6, #4]
0054881c  05 00 50 e1                                      cmp r0, r5
00548820  06 00 00 0a                                      beq #0x548840
00548824  00 00 00 ea                                      b #0x54882c
00548828  04 00 a0 e1                                      mov r0, r4
0054882c  00 40 90 e5                                      ldr r4, [r0]
00548830  06 1f f7 eb                                      bl #0x310450
00548834  05 00 54 e1                                      cmp r4, r5
00548838  fa ff ff 1a                                      bne #0x548828
0054883c  05 00 a0 e1                                      mov r0, r5
00548840  04 00 86 e5                                      str r0, [r6, #4]
00548844  04 00 85 e5                                      str r0, [r5, #4]
00548848  06 00 a0 e1                                      mov r0, r6
0054884c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00548850  34 c3 44 00 5c 35 00 00                          .byte 0x34, 0xc3, 0x44, 0x00, 0x5c, 0x35, 0x00, 0x00

; FUNCTION 0x00549838, declared_size=340, range_size=340, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b.clone.2
; demangled: glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const [clone .clone.2]
; decoder-mode: arm
00549838  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0054983c  00 60 a0 e1                                      mov r6, r0
00549840  04 40 b6 e5                                      ldr r4, [r6, #4]!
00549844  08 d0 4d e2                                      sub sp, sp, #8
00549848  01 50 a0 e1                                      mov r5, r1
0054984c  06 00 54 e1                                      cmp r4, r6
00549850  02 70 a0 e1                                      mov r7, r2
00549854  03 80 a0 e1                                      mov r8, r3
00549858  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
0054985c  00 90 a0 e3                                      mov sb, #0
00549860  1f 00 00 0a                                      beq #0x5498e4
00549864  08 30 94 e5                                      ldr r3, [r4, #8]
00549868  03 00 a0 e1                                      mov r0, r3
0054986c  00 30 93 e5                                      ldr r3, [r3]
00549870  0f e0 a0 e1                                      mov lr, pc
00549874  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00549878  00 00 50 e3                                      cmp r0, #0
0054987c  01 00 00 1a                                      bne #0x549888
00549880  00 00 5a e3                                      cmp sl, #0
00549884  13 00 00 0a                                      beq #0x5498d8
00549888  00 00 55 e3                                      cmp r5, #0
0054988c  08 00 94 15                                      ldrne r0, [r4, #8]
00549890  03 00 00 1a                                      bne #0x5498a4
00549894  08 00 94 e5                                      ldr r0, [r4, #8]
00549898  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
0054989c  00 00 53 e3                                      cmp r3, #0
005498a0  0c 00 00 1a                                      bne #0x5498d8
005498a4  34 31 d0 e5                                      ldrb r3, [r0, #0x134]
005498a8  00 00 53 e3                                      cmp r3, #0
005498ac  02 00 00 0a                                      beq #0x5498bc
005498b0  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
005498b4  05 00 53 e1                                      cmp r3, r5
005498b8  0c 00 00 0a                                      beq #0x5498f0
005498bc  05 10 a0 e1                                      mov r1, r5
005498c0  07 20 a0 e1                                      mov r2, r7
005498c4  08 30 a0 e1                                      mov r3, r8
005498c8  00 90 8d e5                                      str sb, [sp]
005498cc  d9 ff ff eb                                      bl #0x549838
005498d0  00 00 50 e3                                      cmp r0, #0
005498d4  24 00 00 1a                                      bne #0x54996c
005498d8  00 40 94 e5                                      ldr r4, [r4]
005498dc  06 00 54 e1                                      cmp r4, r6
005498e0  df ff ff 1a                                      bne #0x549864
005498e4  00 00 a0 e3                                      mov r0, #0
005498e8  08 d0 8d e2                                      add sp, sp, #8
005498ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005498f0  38 31 90 e5                                      ldr r3, [r0, #0x138]
005498f4  01 01 53 e3                                      cmp r3, #0x40000000
005498f8  20 00 00 0a                                      beq #0x549980
005498fc  00 20 98 e5                                      ldr r2, [r8]
00549900  00 00 52 e3                                      cmp r2, #0
00549904  1a 00 00 0a                                      beq #0x549974
00549908  38 11 92 e5                                      ldr r1, [r2, #0x138]
0054990c  01 00 53 e1                                      cmp r3, r1
00549910  00 20 a0 d3                                      movle r2, #0
00549914  01 20 a0 c3                                      movgt r2, #1
00549918  01 00 73 e3                                      cmn r3, #1
0054991c  00 20 a0 a3                                      movge r2, #0
00549920  00 00 52 e3                                      cmp r2, #0
00549924  01 00 00 0a                                      beq #0x549930
00549928  00 00 88 e5                                      str r0, [r8]
0054992c  08 00 94 e5                                      ldr r0, [r4, #8]
00549930  00 20 97 e5                                      ldr r2, [r7]
00549934  00 00 52 e3                                      cmp r2, #0
00549938  02 00 00 0a                                      beq #0x549948
0054993c  38 21 92 e5                                      ldr r2, [r2, #0x138]
00549940  02 00 53 e1                                      cmp r3, r2
00549944  dc ff ff da                                      ble #0x5498bc
00549948  00 00 87 e5                                      str r0, [r7]
0054994c  08 00 94 e5                                      ldr r0, [r4, #8]
00549950  05 10 a0 e1                                      mov r1, r5
00549954  07 20 a0 e1                                      mov r2, r7
00549958  08 30 a0 e1                                      mov r3, r8
0054995c  00 90 8d e5                                      str sb, [sp]
00549960  b4 ff ff eb                                      bl #0x549838
00549964  00 00 50 e3                                      cmp r0, #0
00549968  da ff ff 0a                                      beq #0x5498d8
0054996c  01 00 a0 e3                                      mov r0, #1
00549970  dc ff ff ea                                      b #0x5498e8
00549974  01 00 73 e3                                      cmn r3, #1
00549978  ec ff ff aa                                      bge #0x549930
0054997c  e9 ff ff ea                                      b #0x549928
00549980  00 00 88 e5                                      str r0, [r8]
00549984  01 00 a0 e3                                      mov r0, #1
00549988  d6 ff ff ea                                      b #0x5498e8

; FUNCTION 0x0054998c, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement11setTabOrderEi.clone.3
; demangled: glitch::gui::IGUIElement::setTabOrder(int) [clone .clone.3]
; decoder-mode: arm
0054998c  10 40 2d e9                                      push {r4, lr}
00549990  3c 11 d0 e5                                      ldrb r1, [r0, #0x13c]
00549994  00 30 a0 e3                                      mov r3, #0
00549998  00 40 a0 e1                                      mov r4, r0
0054999c  03 00 51 e1                                      cmp r1, r3
005499a0  38 31 80 e5                                      str r3, [r0, #0x138]
005499a4  10 d0 4d e2                                      sub sp, sp, #0x10
005499a8  00 00 a0 01                                      moveq r0, r0
005499ac  0b 00 00 0a                                      beq #0x5499e0
005499b0  24 00 94 e5                                      ldr r0, [r4, #0x24]
005499b4  00 00 50 e3                                      cmp r0, #0
005499b8  04 00 a0 01                                      moveq r0, r4
005499bc  0d 00 00 0a                                      beq #0x5499f8
005499c0  24 30 90 e5                                      ldr r3, [r0, #0x24]
005499c4  00 00 53 e3                                      cmp r3, #0
005499c8  0a 00 00 0a                                      beq #0x5499f8
005499cc  03 00 a0 e1                                      mov r0, r3
005499d0  24 30 90 e5                                      ldr r3, [r0, #0x24]
005499d4  00 00 53 e3                                      cmp r3, #0
005499d8  06 00 00 0a                                      beq #0x5499f8
005499dc  fa ff ff ea                                      b #0x5499cc
005499e0  24 00 90 e5                                      ldr r0, [r0, #0x24]
005499e4  00 00 50 e3                                      cmp r0, #0
005499e8  10 00 00 0a                                      beq #0x549a30
005499ec  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
005499f0  00 00 53 e3                                      cmp r3, #0
005499f4  f9 ff ff 0a                                      beq #0x5499e0
005499f8  00 30 a0 e3                                      mov r3, #0
005499fc  08 30 8d e5                                      str r3, [sp, #8]
00549a00  0c 30 8d e5                                      str r3, [sp, #0xc]
00549a04  01 c0 a0 e3                                      mov ip, #1
00549a08  08 30 8d e2                                      add r3, sp, #8
00549a0c  0c 20 8d e2                                      add r2, sp, #0xc
00549a10  00 c0 8d e5                                      str ip, [sp]
00549a14  87 ff ff eb                                      bl #0x549838
00549a18  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00549a1c  00 00 53 e3                                      cmp r3, #0
00549a20  02 00 00 0a                                      beq #0x549a30
00549a24  38 31 93 e5                                      ldr r3, [r3, #0x138]
00549a28  01 30 83 e2                                      add r3, r3, #1
00549a2c  38 31 84 e5                                      str r3, [r4, #0x138]
00549a30  10 d0 8d e2                                      add sp, sp, #0x10
00549a34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00552c24, declared_size=668, range_size=668, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElementC2ENS0_17EGUI_ELEMENT_TYPEEPNS0_15IGUIEnvironmentEPS1_iNS_4core4rectIiEE
; demangled: glitch::gui::IGUIElement::IGUIElement(glitch::gui::EGUI_ELEMENT_TYPE, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00552c24  8c c2 9f e5                                      ldr ip, [pc, #0x28c]
00552c28  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00552c2c  88 52 9f e5                                      ldr r5, [pc, #0x288]
00552c30  0c c0 8f e0                                      add ip, pc, ip
00552c34  30 e0 9d e5                                      ldr lr, [sp, #0x30]
00552c38  05 50 9c e7                                      ldr r5, [ip, r5]
00552c3c  00 40 a0 e1                                      mov r4, r0
00552c40  04 70 84 e2                                      add r7, r4, #4
00552c44  08 50 85 e2                                      add r5, r5, #8
00552c48  00 50 80 e5                                      str r5, [r0]
00552c4c  00 00 91 e5                                      ldr r0, [r1]
00552c50  00 50 a0 e3                                      mov r5, #0
00552c54  00 00 84 e5                                      str r0, [r4]
00552c58  0c 60 10 e5                                      ldr r6, [r0, #-0xc]
00552c5c  04 80 91 e5                                      ldr r8, [r1, #4]
00552c60  28 90 9d e5                                      ldr sb, [sp, #0x28]
00552c64  0c 00 84 e2                                      add r0, r4, #0xc
00552c68  06 80 84 e7                                      str r8, [r4, r6]
00552c6c  00 60 94 e5                                      ldr r6, [r4]
00552c70  08 a0 91 e5                                      ldr sl, [r1, #8]
00552c74  01 10 a0 e3                                      mov r1, #1
00552c78  10 80 16 e5                                      ldr r8, [r6, #-0x10]
00552c7c  00 60 a0 e3                                      mov r6, #0
00552c80  08 a0 84 e7                                      str sl, [r4, r8]
00552c84  08 70 84 e5                                      str r7, [r4, #8]
00552c88  20 00 84 e5                                      str r0, [r4, #0x20]
00552c8c  04 70 84 e5                                      str r7, [r4, #4]
00552c90  1c 00 84 e5                                      str r0, [r4, #0x1c]
00552c94  0c 50 c4 e5                                      strb r5, [r4, #0xc]
00552c98  24 50 84 e5                                      str r5, [r4, #0x24]
00552c9c  00 80 9e e5                                      ldr r8, [lr]
00552ca0  03 a0 a0 e1                                      mov sl, r3
00552ca4  a0 70 84 e2                                      add r7, r4, #0xa0
00552ca8  28 80 84 e5                                      str r8, [r4, #0x28]
00552cac  04 b0 9e e5                                      ldr fp, [lr, #4]
00552cb0  07 00 a0 e1                                      mov r0, r7
00552cb4  02 80 a0 e1                                      mov r8, r2
00552cb8  2c b0 84 e5                                      str fp, [r4, #0x2c]
00552cbc  08 30 9e e5                                      ldr r3, [lr, #8]
00552cc0  30 30 84 e5                                      str r3, [r4, #0x30]
00552cc4  0c 30 9e e5                                      ldr r3, [lr, #0xc]
00552cc8  34 30 84 e5                                      str r3, [r4, #0x34]
00552ccc  00 30 9e e5                                      ldr r3, [lr]
00552cd0  38 30 84 e5                                      str r3, [r4, #0x38]
00552cd4  04 30 9e e5                                      ldr r3, [lr, #4]
00552cd8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00552cdc  08 30 9e e5                                      ldr r3, [lr, #8]
00552ce0  40 30 84 e5                                      str r3, [r4, #0x40]
00552ce4  0c 30 9e e5                                      ldr r3, [lr, #0xc]
00552ce8  44 30 84 e5                                      str r3, [r4, #0x44]
00552cec  00 30 9e e5                                      ldr r3, [lr]
00552cf0  48 30 84 e5                                      str r3, [r4, #0x48]
00552cf4  04 30 9e e5                                      ldr r3, [lr, #4]
00552cf8  4c 30 84 e5                                      str r3, [r4, #0x4c]
00552cfc  08 30 9e e5                                      ldr r3, [lr, #8]
00552d00  50 30 84 e5                                      str r3, [r4, #0x50]
00552d04  0c 30 9e e5                                      ldr r3, [lr, #0xc]
00552d08  54 30 84 e5                                      str r3, [r4, #0x54]
00552d0c  00 30 9e e5                                      ldr r3, [lr]
00552d10  58 30 84 e5                                      str r3, [r4, #0x58]
00552d14  04 30 9e e5                                      ldr r3, [lr, #4]
00552d18  5c 30 84 e5                                      str r3, [r4, #0x5c]
00552d1c  08 30 9e e5                                      ldr r3, [lr, #8]
00552d20  60 30 84 e5                                      str r3, [r4, #0x60]
00552d24  0c 30 9e e5                                      ldr r3, [lr, #0xc]
00552d28  99 10 c4 e5                                      strb r1, [r4, #0x99]
00552d2c  90 10 84 e5                                      str r1, [r4, #0x90]
00552d30  64 30 84 e5                                      str r3, [r4, #0x64]
00552d34  94 10 84 e5                                      str r1, [r4, #0x94]
00552d38  98 10 c4 e5                                      strb r1, [r4, #0x98]
00552d3c  84 60 84 e5                                      str r6, [r4, #0x84]
00552d40  78 60 84 e5                                      str r6, [r4, #0x78]
00552d44  7c 60 84 e5                                      str r6, [r4, #0x7c]
00552d48  80 60 84 e5                                      str r6, [r4, #0x80]
00552d4c  68 50 84 e5                                      str r5, [r4, #0x68]
00552d50  6c 50 84 e5                                      str r5, [r4, #0x6c]
00552d54  70 50 84 e5                                      str r5, [r4, #0x70]
00552d58  74 50 84 e5                                      str r5, [r4, #0x74]
00552d5c  88 50 84 e5                                      str r5, [r4, #0x88]
00552d60  8c 50 84 e5                                      str r5, [r4, #0x8c]
00552d64  9a 50 c4 e5                                      strb r5, [r4, #0x9a]
00552d68  9b 50 c4 e5                                      strb r5, [r4, #0x9b]
00552d6c  9c 50 c4 e5                                      strb r5, [r4, #0x9c]
00552d70  e0 70 84 e5                                      str r7, [r4, #0xe0]
00552d74  e4 70 84 e5                                      str r7, [r4, #0xe4]
00552d78  a8 ff ff eb                                      bl #0x552c20
00552d7c  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00552d80  e8 30 84 e2                                      add r3, r4, #0xe8
00552d84  03 00 a0 e1                                      mov r0, r3
00552d88  00 50 82 e5                                      str r5, [r2]
00552d8c  28 31 84 e5                                      str r3, [r4, #0x128]
00552d90  2c 31 84 e5                                      str r3, [r4, #0x12c]
00552d94  a1 ff ff eb                                      bl #0x552c20
00552d98  28 31 94 e5                                      ldr r3, [r4, #0x128]
00552d9c  05 00 59 e1                                      cmp sb, r5
00552da0  00 50 83 e5                                      str r5, [r3]
00552da4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00552da8  4c 51 84 e5                                      str r5, [r4, #0x14c]
00552dac  50 a1 84 e5                                      str sl, [r4, #0x150]
00552db0  30 31 84 e5                                      str r3, [r4, #0x130]
00552db4  00 30 e0 e3                                      mvn r3, #0
00552db8  38 31 84 e5                                      str r3, [r4, #0x138]
00552dbc  54 81 84 e5                                      str r8, [r4, #0x154]
00552dc0  34 51 c4 e5                                      strb r5, [r4, #0x134]
00552dc4  3c 51 c4 e5                                      strb r5, [r4, #0x13c]
00552dc8  40 51 84 e5                                      str r5, [r4, #0x140]
00552dcc  44 51 84 e5                                      str r5, [r4, #0x144]
00552dd0  48 51 84 e5                                      str r5, [r4, #0x148]
00552dd4  04 00 00 0a                                      beq #0x552dec
00552dd8  09 00 a0 e1                                      mov r0, sb
00552ddc  00 30 99 e5                                      ldr r3, [sb]
00552de0  04 10 a0 e1                                      mov r1, r4
00552de4  0f e0 a0 e1                                      mov lr, pc
00552de8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00552dec  24 30 94 e5                                      ldr r3, [r4, #0x24]
00552df0  00 00 53 e3                                      cmp r3, #0
00552df4  2d 00 00 0a                                      beq #0x552eb0
00552df8  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00552dfc  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00552e00  38 60 94 e5                                      ldr r6, [r4, #0x38]
00552e04  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
00552e08  40 10 94 e5                                      ldr r1, [r4, #0x40]
00552e0c  44 20 94 e5                                      ldr r2, [r4, #0x44]
00552e10  40 80 93 e5                                      ldr r8, [r3, #0x40]
00552e14  44 70 93 e5                                      ldr r7, [r3, #0x44]
00552e18  02 20 80 e0                                      add r2, r0, r2
00552e1c  01 10 8c e0                                      add r1, ip, r1
00552e20  05 50 80 e0                                      add r5, r0, r5
00552e24  06 60 8c e0                                      add r6, ip, r6
00552e28  4c 50 84 e5                                      str r5, [r4, #0x4c]
00552e2c  54 20 84 e5                                      str r2, [r4, #0x54]
00552e30  48 60 84 e5                                      str r6, [r4, #0x48]
00552e34  50 10 84 e5                                      str r1, [r4, #0x50]
00552e38  44 20 84 e5                                      str r2, [r4, #0x44]
00552e3c  70 80 84 e5                                      str r8, [r4, #0x70]
00552e40  74 70 84 e5                                      str r7, [r4, #0x74]
00552e44  68 c0 84 e5                                      str ip, [r4, #0x68]
00552e48  6c 00 84 e5                                      str r0, [r4, #0x6c]
00552e4c  38 60 84 e5                                      str r6, [r4, #0x38]
00552e50  3c 50 84 e5                                      str r5, [r4, #0x3c]
00552e54  40 10 84 e5                                      str r1, [r4, #0x40]
00552e58  50 00 93 e5                                      ldr r0, [r3, #0x50]
00552e5c  00 00 51 e1                                      cmp r1, r0
00552e60  50 00 84 c5                                      strgt r0, [r4, #0x50]
00552e64  54 10 93 e5                                      ldr r1, [r3, #0x54]
00552e68  01 00 52 e1                                      cmp r2, r1
00552e6c  54 10 84 c5                                      strgt r1, [r4, #0x54]
00552e70  48 10 93 e5                                      ldr r1, [r3, #0x48]
00552e74  48 20 94 e5                                      ldr r2, [r4, #0x48]
00552e78  02 00 51 e1                                      cmp r1, r2
00552e7c  48 10 84 c5                                      strgt r1, [r4, #0x48]
00552e80  01 20 a0 c1                                      movgt r2, r1
00552e84  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
00552e88  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00552e8c  03 00 51 e1                                      cmp r1, r3
00552e90  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
00552e94  01 30 a0 c1                                      movgt r3, r1
00552e98  54 10 94 e5                                      ldr r1, [r4, #0x54]
00552e9c  03 00 51 e1                                      cmp r1, r3
00552ea0  50 30 94 e5                                      ldr r3, [r4, #0x50]
00552ea4  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
00552ea8  03 00 52 e1                                      cmp r2, r3
00552eac  48 30 84 c5                                      strgt r3, [r4, #0x48]
00552eb0  04 00 a0 e1                                      mov r0, r4
00552eb4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00552eb8  60 1e 44 00 4c 27 00 00                          .byte 0x60, 0x1e, 0x44, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0055eb7c, declared_size=340, range_size=340, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b.clone.2
; demangled: glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const [clone .clone.2]
; decoder-mode: arm
0055eb7c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0055eb80  00 60 a0 e1                                      mov r6, r0
0055eb84  04 40 b6 e5                                      ldr r4, [r6, #4]!
0055eb88  08 d0 4d e2                                      sub sp, sp, #8
0055eb8c  01 50 a0 e1                                      mov r5, r1
0055eb90  06 00 54 e1                                      cmp r4, r6
0055eb94  02 70 a0 e1                                      mov r7, r2
0055eb98  03 80 a0 e1                                      mov r8, r3
0055eb9c  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
0055eba0  00 90 a0 e3                                      mov sb, #0
0055eba4  1f 00 00 0a                                      beq #0x55ec28
0055eba8  08 30 94 e5                                      ldr r3, [r4, #8]
0055ebac  03 00 a0 e1                                      mov r0, r3
0055ebb0  00 30 93 e5                                      ldr r3, [r3]
0055ebb4  0f e0 a0 e1                                      mov lr, pc
0055ebb8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0055ebbc  00 00 50 e3                                      cmp r0, #0
0055ebc0  01 00 00 1a                                      bne #0x55ebcc
0055ebc4  00 00 5a e3                                      cmp sl, #0
0055ebc8  13 00 00 0a                                      beq #0x55ec1c
0055ebcc  00 00 55 e3                                      cmp r5, #0
0055ebd0  08 00 94 15                                      ldrne r0, [r4, #8]
0055ebd4  03 00 00 1a                                      bne #0x55ebe8
0055ebd8  08 00 94 e5                                      ldr r0, [r4, #8]
0055ebdc  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
0055ebe0  00 00 53 e3                                      cmp r3, #0
0055ebe4  0c 00 00 1a                                      bne #0x55ec1c
0055ebe8  34 31 d0 e5                                      ldrb r3, [r0, #0x134]
0055ebec  00 00 53 e3                                      cmp r3, #0
0055ebf0  02 00 00 0a                                      beq #0x55ec00
0055ebf4  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
0055ebf8  05 00 53 e1                                      cmp r3, r5
0055ebfc  0c 00 00 0a                                      beq #0x55ec34
0055ec00  05 10 a0 e1                                      mov r1, r5
0055ec04  07 20 a0 e1                                      mov r2, r7
0055ec08  08 30 a0 e1                                      mov r3, r8
0055ec0c  00 90 8d e5                                      str sb, [sp]
0055ec10  d9 ff ff eb                                      bl #0x55eb7c
0055ec14  00 00 50 e3                                      cmp r0, #0
0055ec18  24 00 00 1a                                      bne #0x55ecb0
0055ec1c  00 40 94 e5                                      ldr r4, [r4]
0055ec20  06 00 54 e1                                      cmp r4, r6
0055ec24  df ff ff 1a                                      bne #0x55eba8
0055ec28  00 00 a0 e3                                      mov r0, #0
0055ec2c  08 d0 8d e2                                      add sp, sp, #8
0055ec30  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0055ec34  38 31 90 e5                                      ldr r3, [r0, #0x138]
0055ec38  01 01 53 e3                                      cmp r3, #0x40000000
0055ec3c  20 00 00 0a                                      beq #0x55ecc4
0055ec40  00 20 98 e5                                      ldr r2, [r8]
0055ec44  00 00 52 e3                                      cmp r2, #0
0055ec48  1a 00 00 0a                                      beq #0x55ecb8
0055ec4c  38 11 92 e5                                      ldr r1, [r2, #0x138]
0055ec50  01 00 53 e1                                      cmp r3, r1
0055ec54  00 20 a0 d3                                      movle r2, #0
0055ec58  01 20 a0 c3                                      movgt r2, #1
0055ec5c  01 00 73 e3                                      cmn r3, #1
0055ec60  00 20 a0 a3                                      movge r2, #0
0055ec64  00 00 52 e3                                      cmp r2, #0
0055ec68  01 00 00 0a                                      beq #0x55ec74
0055ec6c  00 00 88 e5                                      str r0, [r8]
0055ec70  08 00 94 e5                                      ldr r0, [r4, #8]
0055ec74  00 20 97 e5                                      ldr r2, [r7]
0055ec78  00 00 52 e3                                      cmp r2, #0
0055ec7c  02 00 00 0a                                      beq #0x55ec8c
0055ec80  38 21 92 e5                                      ldr r2, [r2, #0x138]
0055ec84  02 00 53 e1                                      cmp r3, r2
0055ec88  dc ff ff da                                      ble #0x55ec00
0055ec8c  00 00 87 e5                                      str r0, [r7]
0055ec90  08 00 94 e5                                      ldr r0, [r4, #8]
0055ec94  05 10 a0 e1                                      mov r1, r5
0055ec98  07 20 a0 e1                                      mov r2, r7
0055ec9c  08 30 a0 e1                                      mov r3, r8
0055eca0  00 90 8d e5                                      str sb, [sp]
0055eca4  b4 ff ff eb                                      bl #0x55eb7c
0055eca8  00 00 50 e3                                      cmp r0, #0
0055ecac  da ff ff 0a                                      beq #0x55ec1c
0055ecb0  01 00 a0 e3                                      mov r0, #1
0055ecb4  dc ff ff ea                                      b #0x55ec2c
0055ecb8  01 00 73 e3                                      cmn r3, #1
0055ecbc  ec ff ff aa                                      bge #0x55ec74
0055ecc0  e9 ff ff ea                                      b #0x55ec6c
0055ecc4  00 00 88 e5                                      str r0, [r8]
0055ecc8  01 00 a0 e3                                      mov r0, #1
0055eccc  d6 ff ff ea                                      b #0x55ec2c

; FUNCTION 0x0055ecd0, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement11setTabOrderEi.clone.3
; demangled: glitch::gui::IGUIElement::setTabOrder(int) [clone .clone.3]
; decoder-mode: arm
0055ecd0  10 40 2d e9                                      push {r4, lr}
0055ecd4  3c 11 d0 e5                                      ldrb r1, [r0, #0x13c]
0055ecd8  00 30 a0 e3                                      mov r3, #0
0055ecdc  00 40 a0 e1                                      mov r4, r0
0055ece0  03 00 51 e1                                      cmp r1, r3
0055ece4  38 31 80 e5                                      str r3, [r0, #0x138]
0055ece8  10 d0 4d e2                                      sub sp, sp, #0x10
0055ecec  00 00 a0 01                                      moveq r0, r0
0055ecf0  0b 00 00 0a                                      beq #0x55ed24
0055ecf4  24 00 94 e5                                      ldr r0, [r4, #0x24]
0055ecf8  00 00 50 e3                                      cmp r0, #0
0055ecfc  04 00 a0 01                                      moveq r0, r4
0055ed00  0d 00 00 0a                                      beq #0x55ed3c
0055ed04  24 30 90 e5                                      ldr r3, [r0, #0x24]
0055ed08  00 00 53 e3                                      cmp r3, #0
0055ed0c  0a 00 00 0a                                      beq #0x55ed3c
0055ed10  03 00 a0 e1                                      mov r0, r3
0055ed14  24 30 90 e5                                      ldr r3, [r0, #0x24]
0055ed18  00 00 53 e3                                      cmp r3, #0
0055ed1c  06 00 00 0a                                      beq #0x55ed3c
0055ed20  fa ff ff ea                                      b #0x55ed10
0055ed24  24 00 90 e5                                      ldr r0, [r0, #0x24]
0055ed28  00 00 50 e3                                      cmp r0, #0
0055ed2c  10 00 00 0a                                      beq #0x55ed74
0055ed30  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
0055ed34  00 00 53 e3                                      cmp r3, #0
0055ed38  f9 ff ff 0a                                      beq #0x55ed24
0055ed3c  00 30 a0 e3                                      mov r3, #0
0055ed40  08 30 8d e5                                      str r3, [sp, #8]
0055ed44  0c 30 8d e5                                      str r3, [sp, #0xc]
0055ed48  01 c0 a0 e3                                      mov ip, #1
0055ed4c  08 30 8d e2                                      add r3, sp, #8
0055ed50  0c 20 8d e2                                      add r2, sp, #0xc
0055ed54  00 c0 8d e5                                      str ip, [sp]
0055ed58  87 ff ff eb                                      bl #0x55eb7c
0055ed5c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055ed60  00 00 53 e3                                      cmp r3, #0
0055ed64  02 00 00 0a                                      beq #0x55ed74
0055ed68  38 31 93 e5                                      ldr r3, [r3, #0x138]
0055ed6c  01 30 83 e2                                      add r3, r3, #1
0055ed70  38 31 84 e5                                      str r3, [r4, #0x138]
0055ed74  10 d0 8d e2                                      add sp, sp, #0x10
0055ed78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a5f3c, declared_size=340, range_size=340, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b.clone.2
; demangled: glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const [clone .clone.2]
; decoder-mode: arm
006a5f3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006a5f40  00 60 a0 e1                                      mov r6, r0
006a5f44  04 40 b6 e5                                      ldr r4, [r6, #4]!
006a5f48  08 d0 4d e2                                      sub sp, sp, #8
006a5f4c  01 50 a0 e1                                      mov r5, r1
006a5f50  06 00 54 e1                                      cmp r4, r6
006a5f54  02 70 a0 e1                                      mov r7, r2
006a5f58  03 80 a0 e1                                      mov r8, r3
006a5f5c  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
006a5f60  00 90 a0 e3                                      mov sb, #0
006a5f64  1f 00 00 0a                                      beq #0x6a5fe8
006a5f68  08 30 94 e5                                      ldr r3, [r4, #8]
006a5f6c  03 00 a0 e1                                      mov r0, r3
006a5f70  00 30 93 e5                                      ldr r3, [r3]
006a5f74  0f e0 a0 e1                                      mov lr, pc
006a5f78  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006a5f7c  00 00 50 e3                                      cmp r0, #0
006a5f80  01 00 00 1a                                      bne #0x6a5f8c
006a5f84  00 00 5a e3                                      cmp sl, #0
006a5f88  13 00 00 0a                                      beq #0x6a5fdc
006a5f8c  00 00 55 e3                                      cmp r5, #0
006a5f90  08 00 94 15                                      ldrne r0, [r4, #8]
006a5f94  03 00 00 1a                                      bne #0x6a5fa8
006a5f98  08 00 94 e5                                      ldr r0, [r4, #8]
006a5f9c  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006a5fa0  00 00 53 e3                                      cmp r3, #0
006a5fa4  0c 00 00 1a                                      bne #0x6a5fdc
006a5fa8  34 31 d0 e5                                      ldrb r3, [r0, #0x134]
006a5fac  00 00 53 e3                                      cmp r3, #0
006a5fb0  02 00 00 0a                                      beq #0x6a5fc0
006a5fb4  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006a5fb8  05 00 53 e1                                      cmp r3, r5
006a5fbc  0c 00 00 0a                                      beq #0x6a5ff4
006a5fc0  05 10 a0 e1                                      mov r1, r5
006a5fc4  07 20 a0 e1                                      mov r2, r7
006a5fc8  08 30 a0 e1                                      mov r3, r8
006a5fcc  00 90 8d e5                                      str sb, [sp]
006a5fd0  d9 ff ff eb                                      bl #0x6a5f3c
006a5fd4  00 00 50 e3                                      cmp r0, #0
006a5fd8  24 00 00 1a                                      bne #0x6a6070
006a5fdc  00 40 94 e5                                      ldr r4, [r4]
006a5fe0  06 00 54 e1                                      cmp r4, r6
006a5fe4  df ff ff 1a                                      bne #0x6a5f68
006a5fe8  00 00 a0 e3                                      mov r0, #0
006a5fec  08 d0 8d e2                                      add sp, sp, #8
006a5ff0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006a5ff4  38 31 90 e5                                      ldr r3, [r0, #0x138]
006a5ff8  01 01 53 e3                                      cmp r3, #0x40000000
006a5ffc  20 00 00 0a                                      beq #0x6a6084
006a6000  00 20 98 e5                                      ldr r2, [r8]
006a6004  00 00 52 e3                                      cmp r2, #0
006a6008  1a 00 00 0a                                      beq #0x6a6078
006a600c  38 11 92 e5                                      ldr r1, [r2, #0x138]
006a6010  01 00 53 e1                                      cmp r3, r1
006a6014  00 20 a0 d3                                      movle r2, #0
006a6018  01 20 a0 c3                                      movgt r2, #1
006a601c  01 00 73 e3                                      cmn r3, #1
006a6020  00 20 a0 a3                                      movge r2, #0
006a6024  00 00 52 e3                                      cmp r2, #0
006a6028  01 00 00 0a                                      beq #0x6a6034
006a602c  00 00 88 e5                                      str r0, [r8]
006a6030  08 00 94 e5                                      ldr r0, [r4, #8]
006a6034  00 20 97 e5                                      ldr r2, [r7]
006a6038  00 00 52 e3                                      cmp r2, #0
006a603c  02 00 00 0a                                      beq #0x6a604c
006a6040  38 21 92 e5                                      ldr r2, [r2, #0x138]
006a6044  02 00 53 e1                                      cmp r3, r2
006a6048  dc ff ff da                                      ble #0x6a5fc0
006a604c  00 00 87 e5                                      str r0, [r7]
006a6050  08 00 94 e5                                      ldr r0, [r4, #8]
006a6054  05 10 a0 e1                                      mov r1, r5
006a6058  07 20 a0 e1                                      mov r2, r7
006a605c  08 30 a0 e1                                      mov r3, r8
006a6060  00 90 8d e5                                      str sb, [sp]
006a6064  b4 ff ff eb                                      bl #0x6a5f3c
006a6068  00 00 50 e3                                      cmp r0, #0
006a606c  da ff ff 0a                                      beq #0x6a5fdc
006a6070  01 00 a0 e3                                      mov r0, #1
006a6074  dc ff ff ea                                      b #0x6a5fec
006a6078  01 00 73 e3                                      cmn r3, #1
006a607c  ec ff ff aa                                      bge #0x6a6034
006a6080  e9 ff ff ea                                      b #0x6a602c
006a6084  00 00 88 e5                                      str r0, [r8]
006a6088  01 00 a0 e3                                      mov r0, #1
006a608c  d6 ff ff ea                                      b #0x6a5fec

; FUNCTION 0x006a6090, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement11setTabOrderEi.clone.3
; demangled: glitch::gui::IGUIElement::setTabOrder(int) [clone .clone.3]
; decoder-mode: arm
006a6090  10 40 2d e9                                      push {r4, lr}
006a6094  3c 11 d0 e5                                      ldrb r1, [r0, #0x13c]
006a6098  00 30 a0 e3                                      mov r3, #0
006a609c  00 40 a0 e1                                      mov r4, r0
006a60a0  03 00 51 e1                                      cmp r1, r3
006a60a4  38 31 80 e5                                      str r3, [r0, #0x138]
006a60a8  10 d0 4d e2                                      sub sp, sp, #0x10
006a60ac  00 00 a0 01                                      moveq r0, r0
006a60b0  0b 00 00 0a                                      beq #0x6a60e4
006a60b4  24 00 94 e5                                      ldr r0, [r4, #0x24]
006a60b8  00 00 50 e3                                      cmp r0, #0
006a60bc  04 00 a0 01                                      moveq r0, r4
006a60c0  0d 00 00 0a                                      beq #0x6a60fc
006a60c4  24 30 90 e5                                      ldr r3, [r0, #0x24]
006a60c8  00 00 53 e3                                      cmp r3, #0
006a60cc  0a 00 00 0a                                      beq #0x6a60fc
006a60d0  03 00 a0 e1                                      mov r0, r3
006a60d4  24 30 90 e5                                      ldr r3, [r0, #0x24]
006a60d8  00 00 53 e3                                      cmp r3, #0
006a60dc  06 00 00 0a                                      beq #0x6a60fc
006a60e0  fa ff ff ea                                      b #0x6a60d0
006a60e4  24 00 90 e5                                      ldr r0, [r0, #0x24]
006a60e8  00 00 50 e3                                      cmp r0, #0
006a60ec  10 00 00 0a                                      beq #0x6a6134
006a60f0  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006a60f4  00 00 53 e3                                      cmp r3, #0
006a60f8  f9 ff ff 0a                                      beq #0x6a60e4
006a60fc  00 30 a0 e3                                      mov r3, #0
006a6100  08 30 8d e5                                      str r3, [sp, #8]
006a6104  0c 30 8d e5                                      str r3, [sp, #0xc]
006a6108  01 c0 a0 e3                                      mov ip, #1
006a610c  08 30 8d e2                                      add r3, sp, #8
006a6110  0c 20 8d e2                                      add r2, sp, #0xc
006a6114  00 c0 8d e5                                      str ip, [sp]
006a6118  87 ff ff eb                                      bl #0x6a5f3c
006a611c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006a6120  00 00 53 e3                                      cmp r3, #0
006a6124  02 00 00 0a                                      beq #0x6a6134
006a6128  38 31 93 e5                                      ldr r3, [r3, #0x138]
006a612c  01 30 83 e2                                      add r3, r3, #1
006a6130  38 31 84 e5                                      str r3, [r4, #0x138]
006a6134  10 d0 8d e2                                      add sp, sp, #0x10
006a6138  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a7714, declared_size=340, range_size=340, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b.clone.2
; demangled: glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const [clone .clone.2]
; decoder-mode: arm
006a7714  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006a7718  00 60 a0 e1                                      mov r6, r0
006a771c  04 40 b6 e5                                      ldr r4, [r6, #4]!
006a7720  08 d0 4d e2                                      sub sp, sp, #8
006a7724  01 50 a0 e1                                      mov r5, r1
006a7728  06 00 54 e1                                      cmp r4, r6
006a772c  02 70 a0 e1                                      mov r7, r2
006a7730  03 80 a0 e1                                      mov r8, r3
006a7734  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
006a7738  00 90 a0 e3                                      mov sb, #0
006a773c  1f 00 00 0a                                      beq #0x6a77c0
006a7740  08 30 94 e5                                      ldr r3, [r4, #8]
006a7744  03 00 a0 e1                                      mov r0, r3
006a7748  00 30 93 e5                                      ldr r3, [r3]
006a774c  0f e0 a0 e1                                      mov lr, pc
006a7750  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006a7754  00 00 50 e3                                      cmp r0, #0
006a7758  01 00 00 1a                                      bne #0x6a7764
006a775c  00 00 5a e3                                      cmp sl, #0
006a7760  13 00 00 0a                                      beq #0x6a77b4
006a7764  00 00 55 e3                                      cmp r5, #0
006a7768  08 00 94 15                                      ldrne r0, [r4, #8]
006a776c  03 00 00 1a                                      bne #0x6a7780
006a7770  08 00 94 e5                                      ldr r0, [r4, #8]
006a7774  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006a7778  00 00 53 e3                                      cmp r3, #0
006a777c  0c 00 00 1a                                      bne #0x6a77b4
006a7780  34 31 d0 e5                                      ldrb r3, [r0, #0x134]
006a7784  00 00 53 e3                                      cmp r3, #0
006a7788  02 00 00 0a                                      beq #0x6a7798
006a778c  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006a7790  05 00 53 e1                                      cmp r3, r5
006a7794  0c 00 00 0a                                      beq #0x6a77cc
006a7798  05 10 a0 e1                                      mov r1, r5
006a779c  07 20 a0 e1                                      mov r2, r7
006a77a0  08 30 a0 e1                                      mov r3, r8
006a77a4  00 90 8d e5                                      str sb, [sp]
006a77a8  d9 ff ff eb                                      bl #0x6a7714
006a77ac  00 00 50 e3                                      cmp r0, #0
006a77b0  24 00 00 1a                                      bne #0x6a7848
006a77b4  00 40 94 e5                                      ldr r4, [r4]
006a77b8  06 00 54 e1                                      cmp r4, r6
006a77bc  df ff ff 1a                                      bne #0x6a7740
006a77c0  00 00 a0 e3                                      mov r0, #0
006a77c4  08 d0 8d e2                                      add sp, sp, #8
006a77c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006a77cc  38 31 90 e5                                      ldr r3, [r0, #0x138]
006a77d0  01 01 53 e3                                      cmp r3, #0x40000000
006a77d4  20 00 00 0a                                      beq #0x6a785c
006a77d8  00 20 98 e5                                      ldr r2, [r8]
006a77dc  00 00 52 e3                                      cmp r2, #0
006a77e0  1a 00 00 0a                                      beq #0x6a7850
006a77e4  38 11 92 e5                                      ldr r1, [r2, #0x138]
006a77e8  01 00 53 e1                                      cmp r3, r1
006a77ec  00 20 a0 d3                                      movle r2, #0
006a77f0  01 20 a0 c3                                      movgt r2, #1
006a77f4  01 00 73 e3                                      cmn r3, #1
006a77f8  00 20 a0 a3                                      movge r2, #0
006a77fc  00 00 52 e3                                      cmp r2, #0
006a7800  01 00 00 0a                                      beq #0x6a780c
006a7804  00 00 88 e5                                      str r0, [r8]
006a7808  08 00 94 e5                                      ldr r0, [r4, #8]
006a780c  00 20 97 e5                                      ldr r2, [r7]
006a7810  00 00 52 e3                                      cmp r2, #0
006a7814  02 00 00 0a                                      beq #0x6a7824
006a7818  38 21 92 e5                                      ldr r2, [r2, #0x138]
006a781c  02 00 53 e1                                      cmp r3, r2
006a7820  dc ff ff da                                      ble #0x6a7798
006a7824  00 00 87 e5                                      str r0, [r7]
006a7828  08 00 94 e5                                      ldr r0, [r4, #8]
006a782c  05 10 a0 e1                                      mov r1, r5
006a7830  07 20 a0 e1                                      mov r2, r7
006a7834  08 30 a0 e1                                      mov r3, r8
006a7838  00 90 8d e5                                      str sb, [sp]
006a783c  b4 ff ff eb                                      bl #0x6a7714
006a7840  00 00 50 e3                                      cmp r0, #0
006a7844  da ff ff 0a                                      beq #0x6a77b4
006a7848  01 00 a0 e3                                      mov r0, #1
006a784c  dc ff ff ea                                      b #0x6a77c4
006a7850  01 00 73 e3                                      cmn r3, #1
006a7854  ec ff ff aa                                      bge #0x6a780c
006a7858  e9 ff ff ea                                      b #0x6a7804
006a785c  00 00 88 e5                                      str r0, [r8]
006a7860  01 00 a0 e3                                      mov r0, #1
006a7864  d6 ff ff ea                                      b #0x6a77c4

; FUNCTION 0x006a7868, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement11setTabOrderEi.clone.3
; demangled: glitch::gui::IGUIElement::setTabOrder(int) [clone .clone.3]
; decoder-mode: arm
006a7868  10 40 2d e9                                      push {r4, lr}
006a786c  3c 11 d0 e5                                      ldrb r1, [r0, #0x13c]
006a7870  00 30 a0 e3                                      mov r3, #0
006a7874  00 40 a0 e1                                      mov r4, r0
006a7878  03 00 51 e1                                      cmp r1, r3
006a787c  38 31 80 e5                                      str r3, [r0, #0x138]
006a7880  10 d0 4d e2                                      sub sp, sp, #0x10
006a7884  00 00 a0 01                                      moveq r0, r0
006a7888  0b 00 00 0a                                      beq #0x6a78bc
006a788c  24 00 94 e5                                      ldr r0, [r4, #0x24]
006a7890  00 00 50 e3                                      cmp r0, #0
006a7894  04 00 a0 01                                      moveq r0, r4
006a7898  0d 00 00 0a                                      beq #0x6a78d4
006a789c  24 30 90 e5                                      ldr r3, [r0, #0x24]
006a78a0  00 00 53 e3                                      cmp r3, #0
006a78a4  0a 00 00 0a                                      beq #0x6a78d4
006a78a8  03 00 a0 e1                                      mov r0, r3
006a78ac  24 30 90 e5                                      ldr r3, [r0, #0x24]
006a78b0  00 00 53 e3                                      cmp r3, #0
006a78b4  06 00 00 0a                                      beq #0x6a78d4
006a78b8  fa ff ff ea                                      b #0x6a78a8
006a78bc  24 00 90 e5                                      ldr r0, [r0, #0x24]
006a78c0  00 00 50 e3                                      cmp r0, #0
006a78c4  10 00 00 0a                                      beq #0x6a790c
006a78c8  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006a78cc  00 00 53 e3                                      cmp r3, #0
006a78d0  f9 ff ff 0a                                      beq #0x6a78bc
006a78d4  00 30 a0 e3                                      mov r3, #0
006a78d8  08 30 8d e5                                      str r3, [sp, #8]
006a78dc  0c 30 8d e5                                      str r3, [sp, #0xc]
006a78e0  01 c0 a0 e3                                      mov ip, #1
006a78e4  08 30 8d e2                                      add r3, sp, #8
006a78e8  0c 20 8d e2                                      add r2, sp, #0xc
006a78ec  00 c0 8d e5                                      str ip, [sp]
006a78f0  87 ff ff eb                                      bl #0x6a7714
006a78f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006a78f8  00 00 53 e3                                      cmp r3, #0
006a78fc  02 00 00 0a                                      beq #0x6a790c
006a7900  38 31 93 e5                                      ldr r3, [r3, #0x138]
006a7904  01 30 83 e2                                      add r3, r3, #1
006a7908  38 31 84 e5                                      str r3, [r4, #0x138]
006a790c  10 d0 8d e2                                      add sp, sp, #0x10
006a7910  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ab18c, declared_size=340, range_size=340, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b.clone.7
; demangled: glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const [clone .clone.7]
; decoder-mode: arm
006ab18c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006ab190  00 60 a0 e1                                      mov r6, r0
006ab194  04 40 b6 e5                                      ldr r4, [r6, #4]!
006ab198  08 d0 4d e2                                      sub sp, sp, #8
006ab19c  01 50 a0 e1                                      mov r5, r1
006ab1a0  06 00 54 e1                                      cmp r4, r6
006ab1a4  02 70 a0 e1                                      mov r7, r2
006ab1a8  03 80 a0 e1                                      mov r8, r3
006ab1ac  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
006ab1b0  00 90 a0 e3                                      mov sb, #0
006ab1b4  1f 00 00 0a                                      beq #0x6ab238
006ab1b8  08 30 94 e5                                      ldr r3, [r4, #8]
006ab1bc  03 00 a0 e1                                      mov r0, r3
006ab1c0  00 30 93 e5                                      ldr r3, [r3]
006ab1c4  0f e0 a0 e1                                      mov lr, pc
006ab1c8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006ab1cc  00 00 50 e3                                      cmp r0, #0
006ab1d0  01 00 00 1a                                      bne #0x6ab1dc
006ab1d4  00 00 5a e3                                      cmp sl, #0
006ab1d8  13 00 00 0a                                      beq #0x6ab22c
006ab1dc  00 00 55 e3                                      cmp r5, #0
006ab1e0  08 00 94 15                                      ldrne r0, [r4, #8]
006ab1e4  03 00 00 1a                                      bne #0x6ab1f8
006ab1e8  08 00 94 e5                                      ldr r0, [r4, #8]
006ab1ec  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006ab1f0  00 00 53 e3                                      cmp r3, #0
006ab1f4  0c 00 00 1a                                      bne #0x6ab22c
006ab1f8  34 31 d0 e5                                      ldrb r3, [r0, #0x134]
006ab1fc  00 00 53 e3                                      cmp r3, #0
006ab200  02 00 00 0a                                      beq #0x6ab210
006ab204  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006ab208  05 00 53 e1                                      cmp r3, r5
006ab20c  0c 00 00 0a                                      beq #0x6ab244
006ab210  05 10 a0 e1                                      mov r1, r5
006ab214  07 20 a0 e1                                      mov r2, r7
006ab218  08 30 a0 e1                                      mov r3, r8
006ab21c  00 90 8d e5                                      str sb, [sp]
006ab220  d9 ff ff eb                                      bl #0x6ab18c
006ab224  00 00 50 e3                                      cmp r0, #0
006ab228  24 00 00 1a                                      bne #0x6ab2c0
006ab22c  00 40 94 e5                                      ldr r4, [r4]
006ab230  06 00 54 e1                                      cmp r4, r6
006ab234  df ff ff 1a                                      bne #0x6ab1b8
006ab238  00 00 a0 e3                                      mov r0, #0
006ab23c  08 d0 8d e2                                      add sp, sp, #8
006ab240  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006ab244  38 31 90 e5                                      ldr r3, [r0, #0x138]
006ab248  01 01 53 e3                                      cmp r3, #0x40000000
006ab24c  20 00 00 0a                                      beq #0x6ab2d4
006ab250  00 20 98 e5                                      ldr r2, [r8]
006ab254  00 00 52 e3                                      cmp r2, #0
006ab258  1a 00 00 0a                                      beq #0x6ab2c8
006ab25c  38 11 92 e5                                      ldr r1, [r2, #0x138]
006ab260  01 00 53 e1                                      cmp r3, r1
006ab264  00 20 a0 d3                                      movle r2, #0
006ab268  01 20 a0 c3                                      movgt r2, #1
006ab26c  01 00 73 e3                                      cmn r3, #1
006ab270  00 20 a0 a3                                      movge r2, #0
006ab274  00 00 52 e3                                      cmp r2, #0
006ab278  01 00 00 0a                                      beq #0x6ab284
006ab27c  00 00 88 e5                                      str r0, [r8]
006ab280  08 00 94 e5                                      ldr r0, [r4, #8]
006ab284  00 20 97 e5                                      ldr r2, [r7]
006ab288  00 00 52 e3                                      cmp r2, #0
006ab28c  02 00 00 0a                                      beq #0x6ab29c
006ab290  38 21 92 e5                                      ldr r2, [r2, #0x138]
006ab294  02 00 53 e1                                      cmp r3, r2
006ab298  dc ff ff da                                      ble #0x6ab210
006ab29c  00 00 87 e5                                      str r0, [r7]
006ab2a0  08 00 94 e5                                      ldr r0, [r4, #8]
006ab2a4  05 10 a0 e1                                      mov r1, r5
006ab2a8  07 20 a0 e1                                      mov r2, r7
006ab2ac  08 30 a0 e1                                      mov r3, r8
006ab2b0  00 90 8d e5                                      str sb, [sp]
006ab2b4  b4 ff ff eb                                      bl #0x6ab18c
006ab2b8  00 00 50 e3                                      cmp r0, #0
006ab2bc  da ff ff 0a                                      beq #0x6ab22c
006ab2c0  01 00 a0 e3                                      mov r0, #1
006ab2c4  dc ff ff ea                                      b #0x6ab23c
006ab2c8  01 00 73 e3                                      cmn r3, #1
006ab2cc  ec ff ff aa                                      bge #0x6ab284
006ab2d0  e9 ff ff ea                                      b #0x6ab27c
006ab2d4  00 00 88 e5                                      str r0, [r8]
006ab2d8  01 00 a0 e3                                      mov r0, #1
006ab2dc  d6 ff ff ea                                      b #0x6ab23c

; FUNCTION 0x006ab2e0, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement11setTabOrderEi.clone.2
; demangled: glitch::gui::IGUIElement::setTabOrder(int) [clone .clone.2]
; decoder-mode: arm
006ab2e0  10 40 2d e9                                      push {r4, lr}
006ab2e4  3c 11 d0 e5                                      ldrb r1, [r0, #0x13c]
006ab2e8  00 30 a0 e3                                      mov r3, #0
006ab2ec  00 40 a0 e1                                      mov r4, r0
006ab2f0  03 00 51 e1                                      cmp r1, r3
006ab2f4  38 31 80 e5                                      str r3, [r0, #0x138]
006ab2f8  10 d0 4d e2                                      sub sp, sp, #0x10
006ab2fc  00 00 a0 01                                      moveq r0, r0
006ab300  0b 00 00 0a                                      beq #0x6ab334
006ab304  24 00 94 e5                                      ldr r0, [r4, #0x24]
006ab308  00 00 50 e3                                      cmp r0, #0
006ab30c  04 00 a0 01                                      moveq r0, r4
006ab310  0d 00 00 0a                                      beq #0x6ab34c
006ab314  24 30 90 e5                                      ldr r3, [r0, #0x24]
006ab318  00 00 53 e3                                      cmp r3, #0
006ab31c  0a 00 00 0a                                      beq #0x6ab34c
006ab320  03 00 a0 e1                                      mov r0, r3
006ab324  24 30 90 e5                                      ldr r3, [r0, #0x24]
006ab328  00 00 53 e3                                      cmp r3, #0
006ab32c  06 00 00 0a                                      beq #0x6ab34c
006ab330  fa ff ff ea                                      b #0x6ab320
006ab334  24 00 90 e5                                      ldr r0, [r0, #0x24]
006ab338  00 00 50 e3                                      cmp r0, #0
006ab33c  10 00 00 0a                                      beq #0x6ab384
006ab340  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006ab344  00 00 53 e3                                      cmp r3, #0
006ab348  f9 ff ff 0a                                      beq #0x6ab334
006ab34c  00 30 a0 e3                                      mov r3, #0
006ab350  08 30 8d e5                                      str r3, [sp, #8]
006ab354  0c 30 8d e5                                      str r3, [sp, #0xc]
006ab358  01 c0 a0 e3                                      mov ip, #1
006ab35c  08 30 8d e2                                      add r3, sp, #8
006ab360  0c 20 8d e2                                      add r2, sp, #0xc
006ab364  00 c0 8d e5                                      str ip, [sp]
006ab368  87 ff ff eb                                      bl #0x6ab18c
006ab36c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006ab370  00 00 53 e3                                      cmp r3, #0
006ab374  02 00 00 0a                                      beq #0x6ab384
006ab378  38 31 93 e5                                      ldr r3, [r3, #0x138]
006ab37c  01 30 83 e2                                      add r3, r3, #1
006ab380  38 31 84 e5                                      str r3, [r4, #0x138]
006ab384  10 d0 8d e2                                      add sp, sp, #0x10
006ab388  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b0194, declared_size=340, range_size=340, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b.clone.4
; demangled: glitch::gui::IGUIElement::getNextElement(int, bool, bool, glitch::gui::IGUIElement*&, glitch::gui::IGUIElement*&, bool) const [clone .clone.4]
; decoder-mode: arm
006b0194  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006b0198  00 60 a0 e1                                      mov r6, r0
006b019c  04 40 b6 e5                                      ldr r4, [r6, #4]!
006b01a0  08 d0 4d e2                                      sub sp, sp, #8
006b01a4  01 50 a0 e1                                      mov r5, r1
006b01a8  06 00 54 e1                                      cmp r4, r6
006b01ac  02 70 a0 e1                                      mov r7, r2
006b01b0  03 80 a0 e1                                      mov r8, r3
006b01b4  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
006b01b8  00 90 a0 e3                                      mov sb, #0
006b01bc  1f 00 00 0a                                      beq #0x6b0240
006b01c0  08 30 94 e5                                      ldr r3, [r4, #8]
006b01c4  03 00 a0 e1                                      mov r0, r3
006b01c8  00 30 93 e5                                      ldr r3, [r3]
006b01cc  0f e0 a0 e1                                      mov lr, pc
006b01d0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006b01d4  00 00 50 e3                                      cmp r0, #0
006b01d8  01 00 00 1a                                      bne #0x6b01e4
006b01dc  00 00 5a e3                                      cmp sl, #0
006b01e0  13 00 00 0a                                      beq #0x6b0234
006b01e4  00 00 55 e3                                      cmp r5, #0
006b01e8  08 00 94 15                                      ldrne r0, [r4, #8]
006b01ec  03 00 00 1a                                      bne #0x6b0200
006b01f0  08 00 94 e5                                      ldr r0, [r4, #8]
006b01f4  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006b01f8  00 00 53 e3                                      cmp r3, #0
006b01fc  0c 00 00 1a                                      bne #0x6b0234
006b0200  34 31 d0 e5                                      ldrb r3, [r0, #0x134]
006b0204  00 00 53 e3                                      cmp r3, #0
006b0208  02 00 00 0a                                      beq #0x6b0218
006b020c  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006b0210  05 00 53 e1                                      cmp r3, r5
006b0214  0c 00 00 0a                                      beq #0x6b024c
006b0218  05 10 a0 e1                                      mov r1, r5
006b021c  07 20 a0 e1                                      mov r2, r7
006b0220  08 30 a0 e1                                      mov r3, r8
006b0224  00 90 8d e5                                      str sb, [sp]
006b0228  d9 ff ff eb                                      bl #0x6b0194
006b022c  00 00 50 e3                                      cmp r0, #0
006b0230  24 00 00 1a                                      bne #0x6b02c8
006b0234  00 40 94 e5                                      ldr r4, [r4]
006b0238  06 00 54 e1                                      cmp r4, r6
006b023c  df ff ff 1a                                      bne #0x6b01c0
006b0240  00 00 a0 e3                                      mov r0, #0
006b0244  08 d0 8d e2                                      add sp, sp, #8
006b0248  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006b024c  38 31 90 e5                                      ldr r3, [r0, #0x138]
006b0250  01 01 53 e3                                      cmp r3, #0x40000000
006b0254  20 00 00 0a                                      beq #0x6b02dc
006b0258  00 20 98 e5                                      ldr r2, [r8]
006b025c  00 00 52 e3                                      cmp r2, #0
006b0260  1a 00 00 0a                                      beq #0x6b02d0
006b0264  38 11 92 e5                                      ldr r1, [r2, #0x138]
006b0268  01 00 53 e1                                      cmp r3, r1
006b026c  00 20 a0 d3                                      movle r2, #0
006b0270  01 20 a0 c3                                      movgt r2, #1
006b0274  01 00 73 e3                                      cmn r3, #1
006b0278  00 20 a0 a3                                      movge r2, #0
006b027c  00 00 52 e3                                      cmp r2, #0
006b0280  01 00 00 0a                                      beq #0x6b028c
006b0284  00 00 88 e5                                      str r0, [r8]
006b0288  08 00 94 e5                                      ldr r0, [r4, #8]
006b028c  00 20 97 e5                                      ldr r2, [r7]
006b0290  00 00 52 e3                                      cmp r2, #0
006b0294  02 00 00 0a                                      beq #0x6b02a4
006b0298  38 21 92 e5                                      ldr r2, [r2, #0x138]
006b029c  02 00 53 e1                                      cmp r3, r2
006b02a0  dc ff ff da                                      ble #0x6b0218
006b02a4  00 00 87 e5                                      str r0, [r7]
006b02a8  08 00 94 e5                                      ldr r0, [r4, #8]
006b02ac  05 10 a0 e1                                      mov r1, r5
006b02b0  07 20 a0 e1                                      mov r2, r7
006b02b4  08 30 a0 e1                                      mov r3, r8
006b02b8  00 90 8d e5                                      str sb, [sp]
006b02bc  b4 ff ff eb                                      bl #0x6b0194
006b02c0  00 00 50 e3                                      cmp r0, #0
006b02c4  da ff ff 0a                                      beq #0x6b0234
006b02c8  01 00 a0 e3                                      mov r0, #1
006b02cc  dc ff ff ea                                      b #0x6b0244
006b02d0  01 00 73 e3                                      cmn r3, #1
006b02d4  ec ff ff aa                                      bge #0x6b028c
006b02d8  e9 ff ff ea                                      b #0x6b0284
006b02dc  00 00 88 e5                                      str r0, [r8]
006b02e0  01 00 a0 e3                                      mov r0, #1
006b02e4  d6 ff ff ea                                      b #0x6b0244

; FUNCTION 0x006b02e8, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::IGUIElement
; alias: _ZN6glitch3gui11IGUIElement11setTabOrderEi.clone.2
; demangled: glitch::gui::IGUIElement::setTabOrder(int) [clone .clone.2]
; decoder-mode: arm
006b02e8  10 40 2d e9                                      push {r4, lr}
006b02ec  3c 11 d0 e5                                      ldrb r1, [r0, #0x13c]
006b02f0  00 30 a0 e3                                      mov r3, #0
006b02f4  00 40 a0 e1                                      mov r4, r0
006b02f8  03 00 51 e1                                      cmp r1, r3
006b02fc  38 31 80 e5                                      str r3, [r0, #0x138]
006b0300  10 d0 4d e2                                      sub sp, sp, #0x10
006b0304  00 00 a0 01                                      moveq r0, r0
006b0308  0b 00 00 0a                                      beq #0x6b033c
006b030c  24 00 94 e5                                      ldr r0, [r4, #0x24]
006b0310  00 00 50 e3                                      cmp r0, #0
006b0314  04 00 a0 01                                      moveq r0, r4
006b0318  0d 00 00 0a                                      beq #0x6b0354
006b031c  24 30 90 e5                                      ldr r3, [r0, #0x24]
006b0320  00 00 53 e3                                      cmp r3, #0
006b0324  0a 00 00 0a                                      beq #0x6b0354
006b0328  03 00 a0 e1                                      mov r0, r3
006b032c  24 30 90 e5                                      ldr r3, [r0, #0x24]
006b0330  00 00 53 e3                                      cmp r3, #0
006b0334  06 00 00 0a                                      beq #0x6b0354
006b0338  fa ff ff ea                                      b #0x6b0328
006b033c  24 00 90 e5                                      ldr r0, [r0, #0x24]
006b0340  00 00 50 e3                                      cmp r0, #0
006b0344  10 00 00 0a                                      beq #0x6b038c
006b0348  3c 31 d0 e5                                      ldrb r3, [r0, #0x13c]
006b034c  00 00 53 e3                                      cmp r3, #0
006b0350  f9 ff ff 0a                                      beq #0x6b033c
006b0354  00 30 a0 e3                                      mov r3, #0
006b0358  08 30 8d e5                                      str r3, [sp, #8]
006b035c  0c 30 8d e5                                      str r3, [sp, #0xc]
006b0360  01 c0 a0 e3                                      mov ip, #1
006b0364  08 30 8d e2                                      add r3, sp, #8
006b0368  0c 20 8d e2                                      add r2, sp, #0xc
006b036c  00 c0 8d e5                                      str ip, [sp]
006b0370  87 ff ff eb                                      bl #0x6b0194
006b0374  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006b0378  00 00 53 e3                                      cmp r3, #0
006b037c  02 00 00 0a                                      beq #0x6b038c
006b0380  38 31 93 e5                                      ldr r3, [r3, #0x138]
006b0384  01 30 83 e2                                      add r3, r3, #1
006b0388  38 31 84 e5                                      str r3, [r4, #0x138]
006b038c  10 d0 8d e2                                      add sp, sp, #0x10
006b0390  10 80 bd e8                                      pop {r4, pc}
