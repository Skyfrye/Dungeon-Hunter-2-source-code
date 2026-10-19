; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a8c10, declared_size=228, range_size=228, mode=arm
; class-group: std::vector<glitch::gui::CGUIColorSelectDialog::SBatteryItem, glitch::core::SAllocator<glitch::gui::CGUIColorSelectDialog::SBatteryItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui21CGUIColorSelectDialog12SBatteryItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.2
; demangled: std::vector<glitch::gui::CGUIColorSelectDialog::SBatteryItem, glitch::core::SAllocator<glitch::gui::CGUIColorSelectDialog::SBatteryItem, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::gui::CGUIColorSelectDialog::SBatteryItem*, glitch::gui::CGUIColorSelectDialog::SBatteryItem const&, std::__false_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
006a8c10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006a8c14  00 40 a0 e1                                      mov r4, r0
006a8c18  00 30 94 e5                                      ldr r3, [r4]
006a8c1c  04 00 90 e5                                      ldr r0, [r0, #4]
006a8c20  01 50 a0 e1                                      mov r5, r1
006a8c24  02 70 a0 e1                                      mov r7, r2
006a8c28  00 30 63 e0                                      rsb r3, r3, r0
006a8c2c  c3 31 a0 e1                                      asr r3, r3, #3
006a8c30  01 00 53 e3                                      cmp r3, #1
006a8c34  03 60 83 20                                      addhs r6, r3, r3
006a8c38  01 60 83 32                                      addlo r6, r3, #1
006a8c3c  1e 02 76 e3                                      cmn r6, #0xe0000001
006a8c40  29 00 00 8a                                      bhi #0x6a8cec
006a8c44  06 00 53 e1                                      cmp r3, r6
006a8c48  86 61 a0 91                                      lslls r6, r6, #3
006a8c4c  26 00 00 8a                                      bhi #0x6a8cec
006a8c50  06 00 a0 e1                                      mov r0, r6
006a8c54  00 10 a0 e3                                      mov r1, #0
006a8c58  42 9e f1 eb                                      bl #0x310568
006a8c5c  00 e0 94 e5                                      ldr lr, [r4]
006a8c60  00 80 a0 e1                                      mov r8, r0
006a8c64  05 50 6e e0                                      rsb r5, lr, r5
006a8c68  c5 51 a0 e1                                      asr r5, r5, #3
006a8c6c  00 00 55 e3                                      cmp r5, #0
006a8c70  00 50 a0 d1                                      movle r5, r0
006a8c74  0b 00 00 da                                      ble #0x6a8ca8
006a8c78  05 10 a0 e1                                      mov r1, r5
006a8c7c  00 00 a0 e3                                      mov r0, #0
006a8c80  0e 20 a0 e1                                      mov r2, lr
006a8c84  00 c0 b2 e7                                      ldr ip, [r2, r0]!
006a8c88  08 30 a0 e1                                      mov r3, r8
006a8c8c  01 10 51 e2                                      subs r1, r1, #1
006a8c90  00 c0 a3 e7                                      str ip, [r3, r0]!
006a8c94  04 20 92 e5                                      ldr r2, [r2, #4]
006a8c98  08 00 80 e2                                      add r0, r0, #8
006a8c9c  04 20 83 e5                                      str r2, [r3, #4]
006a8ca0  f6 ff ff 1a                                      bne #0x6a8c80
006a8ca4  85 51 88 e0                                      add r5, r8, r5, lsl #3
006a8ca8  00 30 97 e5                                      ldr r3, [r7]
006a8cac  08 a0 85 e2                                      add sl, r5, #8
006a8cb0  06 60 88 e0                                      add r6, r8, r6
006a8cb4  00 30 85 e5                                      str r3, [r5]
006a8cb8  04 30 97 e5                                      ldr r3, [r7, #4]
006a8cbc  04 30 85 e5                                      str r3, [r5, #4]
006a8cc0  04 00 94 e5                                      ldr r0, [r4, #4]
006a8cc4  00 20 94 e5                                      ldr r2, [r4]
006a8cc8  02 00 50 e1                                      cmp r0, r2
006a8ccc  08 30 40 12                                      subne r3, r0, #8
006a8cd0  03 30 62 10                                      rsbne r3, r2, r3
006a8cd4  a3 31 e0 11                                      mvnne r3, r3, lsr #3
006a8cd8  83 01 80 10                                      addne r0, r0, r3, lsl #3
006a8cdc  db 9d f1 eb                                      bl #0x310450
006a8ce0  08 60 84 e5                                      str r6, [r4, #8]
006a8ce4  00 05 84 e8                                      stm r4, {r8, sl}
006a8ce8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006a8cec  07 60 e0 e3                                      mvn r6, #7
006a8cf0  d6 ff ff ea                                      b #0x6a8c50
