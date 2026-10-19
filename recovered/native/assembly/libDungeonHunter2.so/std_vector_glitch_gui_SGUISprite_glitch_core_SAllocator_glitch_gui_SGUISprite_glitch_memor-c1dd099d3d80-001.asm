; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053ede8, declared_size=288, range_size=288, mode=arm
; class-group: std::vector<glitch::gui::SGUISprite, glitch::core::SAllocator<glitch::gui::SGUISprite, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui10SGUISpriteENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS2_
; demangled: std::vector<glitch::gui::SGUISprite, glitch::core::SAllocator<glitch::gui::SGUISprite, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::SGUISprite const&)
; decoder-mode: arm
0053ede8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053edec  30 00 90 e9                                      ldmib r0, {r4, r5}
0053edf0  00 70 a0 e1                                      mov r7, r0
0053edf4  01 80 a0 e1                                      mov r8, r1
0053edf8  05 00 54 e1                                      cmp r4, r5
0053edfc  07 00 00 0a                                      beq #0x53ee20
0053ee00  04 00 a0 e1                                      mov r0, r4
0053ee04  22 fd ff eb                                      bl #0x53e294
0053ee08  0c 30 98 e5                                      ldr r3, [r8, #0xc]
0053ee0c  0c 30 84 e5                                      str r3, [r4, #0xc]
0053ee10  04 30 97 e5                                      ldr r3, [r7, #4]
0053ee14  10 30 83 e2                                      add r3, r3, #0x10
0053ee18  04 30 87 e5                                      str r3, [r7, #4]
0053ee1c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053ee20  00 30 90 e5                                      ldr r3, [r0]
0053ee24  05 30 63 e0                                      rsb r3, r3, r5
0053ee28  43 32 a0 e1                                      asr r3, r3, #4
0053ee2c  01 00 53 e3                                      cmp r3, #1
0053ee30  03 90 83 20                                      addhs sb, r3, r3
0053ee34  01 90 83 32                                      addlo sb, r3, #1
0053ee38  1f 02 79 e3                                      cmn sb, #0xf0000001
0053ee3c  2d 00 00 9a                                      bls #0x53eef8
0053ee40  0f 90 e0 e3                                      mvn sb, #0xf
0053ee44  09 00 a0 e1                                      mov r0, sb
0053ee48  00 10 a0 e3                                      mov r1, #0
0053ee4c  c5 45 f7 eb                                      bl #0x310568
0053ee50  00 40 97 e5                                      ldr r4, [r7]
0053ee54  00 a0 a0 e1                                      mov sl, r0
0053ee58  05 50 64 e0                                      rsb r5, r4, r5
0053ee5c  45 b2 a0 e1                                      asr fp, r5, #4
0053ee60  00 00 5b e3                                      cmp fp, #0
0053ee64  00 40 a0 d1                                      movle r4, r0
0053ee68  0b 00 00 da                                      ble #0x53ee9c
0053ee6c  0b 60 a0 e1                                      mov r6, fp
0053ee70  00 50 a0 e1                                      mov r5, r0
0053ee74  05 00 a0 e1                                      mov r0, r5
0053ee78  04 10 a0 e1                                      mov r1, r4
0053ee7c  04 fd ff eb                                      bl #0x53e294
0053ee80  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0053ee84  01 60 56 e2                                      subs r6, r6, #1
0053ee88  10 40 84 e2                                      add r4, r4, #0x10
0053ee8c  0c 30 85 e5                                      str r3, [r5, #0xc]
0053ee90  10 50 85 e2                                      add r5, r5, #0x10
0053ee94  f6 ff ff 1a                                      bne #0x53ee74
0053ee98  0b 42 8a e0                                      add r4, sl, fp, lsl #4
0053ee9c  04 00 a0 e1                                      mov r0, r4
0053eea0  08 10 a0 e1                                      mov r1, r8
0053eea4  fa fc ff eb                                      bl #0x53e294
0053eea8  0c 30 98 e5                                      ldr r3, [r8, #0xc]
0053eeac  10 60 84 e2                                      add r6, r4, #0x10
0053eeb0  0c 30 84 e5                                      str r3, [r4, #0xc]
0053eeb4  04 40 97 e5                                      ldr r4, [r7, #4]
0053eeb8  00 50 97 e5                                      ldr r5, [r7]
0053eebc  05 00 54 e1                                      cmp r4, r5
0053eec0  06 00 00 0a                                      beq #0x53eee0
0053eec4  10 00 34 e5                                      ldr r0, [r4, #-0x10]!
0053eec8  00 00 50 e3                                      cmp r0, #0
0053eecc  00 00 00 0a                                      beq #0x53eed4
0053eed0  5e 45 f7 eb                                      bl #0x310450
0053eed4  04 00 55 e1                                      cmp r5, r4
0053eed8  f9 ff ff 1a                                      bne #0x53eec4
0053eedc  00 50 97 e5                                      ldr r5, [r7]
0053eee0  05 00 a0 e1                                      mov r0, r5
0053eee4  09 90 8a e0                                      add sb, sl, sb
0053eee8  58 45 f7 eb                                      bl #0x310450
0053eeec  40 02 87 e9                                      stmib r7, {r6, sb}
0053eef0  00 a0 87 e5                                      str sl, [r7]
0053eef4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053eef8  09 00 53 e1                                      cmp r3, sb
0053eefc  09 92 a0 91                                      lslls sb, sb, #4
0053ef00  cf ff ff 9a                                      bls #0x53ee44
0053ef04  cd ff ff ea                                      b #0x53ee40

; FUNCTION 0x0054fb78, declared_size=72, range_size=72, mode=arm
; class-group: std::vector<glitch::gui::SGUISprite, glitch::core::SAllocator<glitch::gui::SGUISprite, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui10SGUISpriteENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::SGUISprite, glitch::core::SAllocator<glitch::gui::SGUISprite, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0054fb78  70 40 2d e9                                      push {r4, r5, r6, lr}
0054fb7c  04 40 90 e5                                      ldr r4, [r0, #4]
0054fb80  00 50 90 e5                                      ldr r5, [r0]
0054fb84  00 60 a0 e1                                      mov r6, r0
0054fb88  05 00 54 e1                                      cmp r4, r5
0054fb8c  05 00 00 0a                                      beq #0x54fba8
0054fb90  10 00 34 e5                                      ldr r0, [r4, #-0x10]!
0054fb94  00 00 50 e3                                      cmp r0, #0
0054fb98  00 00 00 0a                                      beq #0x54fba0
0054fb9c  2b 02 f7 eb                                      bl #0x310450
0054fba0  04 00 55 e1                                      cmp r5, r4
0054fba4  f9 ff ff 1a                                      bne #0x54fb90
0054fba8  00 00 96 e5                                      ldr r0, [r6]
0054fbac  00 00 50 e3                                      cmp r0, #0
0054fbb0  00 00 00 0a                                      beq #0x54fbb8
0054fbb4  25 02 f7 eb                                      bl #0x310450
0054fbb8  06 00 a0 e1                                      mov r0, r6
0054fbbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
