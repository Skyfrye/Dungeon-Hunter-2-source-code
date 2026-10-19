; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053e294, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::gui::SGUISpriteFrame, glitch::core::SAllocator<glitch::gui::SGUISpriteFrame, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15SGUISpriteFrameENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS8_
; demangled: std::vector<glitch::gui::SGUISpriteFrame, glitch::core::SAllocator<glitch::gui::SGUISpriteFrame, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<glitch::gui::SGUISpriteFrame, glitch::core::SAllocator<glitch::gui::SGUISpriteFrame, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0053e294  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053e298  88 00 91 e8                                      ldm r1, {r3, r7}
0053e29c  00 50 a0 e3                                      mov r5, #0
0053e2a0  00 40 a0 e1                                      mov r4, r0
0053e2a4  07 70 63 e0                                      rsb r7, r3, r7
0053e2a8  07 70 c7 e3                                      bic r7, r7, #7
0053e2ac  01 60 a0 e1                                      mov r6, r1
0053e2b0  00 50 80 e5                                      str r5, [r0]
0053e2b4  04 50 80 e5                                      str r5, [r0, #4]
0053e2b8  08 50 80 e5                                      str r5, [r0, #8]
0053e2bc  05 10 a0 e1                                      mov r1, r5
0053e2c0  07 00 a0 e1                                      mov r0, r7
0053e2c4  a7 48 f7 eb                                      bl #0x310568
0053e2c8  07 70 80 e0                                      add r7, r0, r7
0053e2cc  08 70 84 e5                                      str r7, [r4, #8]
0053e2d0  00 00 84 e5                                      str r0, [r4]
0053e2d4  04 00 84 e5                                      str r0, [r4, #4]
0053e2d8  c0 00 96 e8                                      ldm r6, {r6, r7}
0053e2dc  00 30 a0 e1                                      mov r3, r0
0053e2e0  07 70 66 e0                                      rsb r7, r6, r7
0053e2e4  c7 71 a0 e1                                      asr r7, r7, #3
0053e2e8  05 00 57 e1                                      cmp r7, r5
0053e2ec  0a 00 00 da                                      ble #0x53e31c
0053e2f0  07 10 a0 e1                                      mov r1, r7
0053e2f4  06 20 a0 e1                                      mov r2, r6
0053e2f8  05 c0 b2 e7                                      ldr ip, [r2, r5]!
0053e2fc  00 30 a0 e1                                      mov r3, r0
0053e300  01 10 51 e2                                      subs r1, r1, #1
0053e304  05 c0 a3 e7                                      str ip, [r3, r5]!
0053e308  04 20 92 e5                                      ldr r2, [r2, #4]
0053e30c  08 50 85 e2                                      add r5, r5, #8
0053e310  04 20 83 e5                                      str r2, [r3, #4]
0053e314  f6 ff ff 1a                                      bne #0x53e2f4
0053e318  87 31 80 e0                                      add r3, r0, r7, lsl #3
0053e31c  04 30 84 e5                                      str r3, [r4, #4]
0053e320  04 00 a0 e1                                      mov r0, r4
0053e324  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0053ec04, declared_size=228, range_size=228, mode=arm
; class-group: std::vector<glitch::gui::SGUISpriteFrame, glitch::core::SAllocator<glitch::gui::SGUISpriteFrame, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15SGUISpriteFrameENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS2_RKS2_RKSt12__false_typejb.clone.1
; demangled: std::vector<glitch::gui::SGUISpriteFrame, glitch::core::SAllocator<glitch::gui::SGUISpriteFrame, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::gui::SGUISpriteFrame*, glitch::gui::SGUISpriteFrame const&, std::__false_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
0053ec04  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0053ec08  00 40 a0 e1                                      mov r4, r0
0053ec0c  00 30 94 e5                                      ldr r3, [r4]
0053ec10  04 00 90 e5                                      ldr r0, [r0, #4]
0053ec14  01 50 a0 e1                                      mov r5, r1
0053ec18  02 70 a0 e1                                      mov r7, r2
0053ec1c  00 30 63 e0                                      rsb r3, r3, r0
0053ec20  c3 31 a0 e1                                      asr r3, r3, #3
0053ec24  01 00 53 e3                                      cmp r3, #1
0053ec28  03 60 83 20                                      addhs r6, r3, r3
0053ec2c  01 60 83 32                                      addlo r6, r3, #1
0053ec30  1e 02 76 e3                                      cmn r6, #0xe0000001
0053ec34  29 00 00 8a                                      bhi #0x53ece0
0053ec38  06 00 53 e1                                      cmp r3, r6
0053ec3c  86 61 a0 91                                      lslls r6, r6, #3
0053ec40  26 00 00 8a                                      bhi #0x53ece0
0053ec44  06 00 a0 e1                                      mov r0, r6
0053ec48  00 10 a0 e3                                      mov r1, #0
0053ec4c  45 46 f7 eb                                      bl #0x310568
0053ec50  00 e0 94 e5                                      ldr lr, [r4]
0053ec54  00 80 a0 e1                                      mov r8, r0
0053ec58  05 50 6e e0                                      rsb r5, lr, r5
0053ec5c  c5 51 a0 e1                                      asr r5, r5, #3
0053ec60  00 00 55 e3                                      cmp r5, #0
0053ec64  00 50 a0 d1                                      movle r5, r0
0053ec68  0b 00 00 da                                      ble #0x53ec9c
0053ec6c  05 10 a0 e1                                      mov r1, r5
0053ec70  00 00 a0 e3                                      mov r0, #0
0053ec74  0e 20 a0 e1                                      mov r2, lr
0053ec78  00 c0 b2 e7                                      ldr ip, [r2, r0]!
0053ec7c  08 30 a0 e1                                      mov r3, r8
0053ec80  01 10 51 e2                                      subs r1, r1, #1
0053ec84  00 c0 a3 e7                                      str ip, [r3, r0]!
0053ec88  04 20 92 e5                                      ldr r2, [r2, #4]
0053ec8c  08 00 80 e2                                      add r0, r0, #8
0053ec90  04 20 83 e5                                      str r2, [r3, #4]
0053ec94  f6 ff ff 1a                                      bne #0x53ec74
0053ec98  85 51 88 e0                                      add r5, r8, r5, lsl #3
0053ec9c  00 30 97 e5                                      ldr r3, [r7]
0053eca0  08 a0 85 e2                                      add sl, r5, #8
0053eca4  06 60 88 e0                                      add r6, r8, r6
0053eca8  00 30 85 e5                                      str r3, [r5]
0053ecac  04 30 97 e5                                      ldr r3, [r7, #4]
0053ecb0  04 30 85 e5                                      str r3, [r5, #4]
0053ecb4  04 00 94 e5                                      ldr r0, [r4, #4]
0053ecb8  00 20 94 e5                                      ldr r2, [r4]
0053ecbc  02 00 50 e1                                      cmp r0, r2
0053ecc0  08 30 40 12                                      subne r3, r0, #8
0053ecc4  03 30 62 10                                      rsbne r3, r2, r3
0053ecc8  a3 31 e0 11                                      mvnne r3, r3, lsr #3
0053eccc  83 01 80 10                                      addne r0, r0, r3, lsl #3
0053ecd0  de 45 f7 eb                                      bl #0x310450
0053ecd4  08 60 84 e5                                      str r6, [r4, #8]
0053ecd8  00 05 84 e8                                      stm r4, {r8, sl}
0053ecdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0053ece0  07 60 e0 e3                                      mvn r6, #7
0053ece4  d6 ff ff ea                                      b #0x53ec44
