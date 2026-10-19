; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005caa98, declared_size=352, range_size=352, mode=arm
; class-group: glitch::video::SColorf
; alias: _ZNK6glitch5video7SColorf6equalsERKS1_f.clone.1
; demangled: glitch::video::SColorf::equals(glitch::video::SColorf const&, float) const [clone .clone.1]
; decoder-mode: arm
005caa98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005caa9c  00 50 90 e5                                      ldr r5, [r0]
005caaa0  00 40 91 e5                                      ldr r4, [r1]
005caaa4  01 60 a0 e1                                      mov r6, r1
005caaa8  bd 17 03 e3                                      movw r1, #0x37bd
005caaac  86 15 43 e3                                      movt r1, #0x3586
005caab0  00 70 a0 e1                                      mov r7, r0
005caab4  05 00 a0 e1                                      mov r0, r5
005caab8  39 10 f5 eb                                      bl #0x30eba4
005caabc  00 10 a0 e1                                      mov r1, r0
005caac0  04 00 a0 e1                                      mov r0, r4
005caac4  b8 0f f5 eb                                      bl #0x30e9ac
005caac8  00 00 50 e3                                      cmp r0, #0
005caacc  47 00 00 0a                                      beq #0x5cabf0
005caad0  bd 17 03 e3                                      movw r1, #0x37bd
005caad4  86 15 43 e3                                      movt r1, #0x3586
005caad8  05 00 a0 e1                                      mov r0, r5
005caadc  32 0e f5 eb                                      bl #0x30e3ac
005caae0  00 10 a0 e1                                      mov r1, r0
005caae4  04 00 a0 e1                                      mov r0, r4
005caae8  71 0e f5 eb                                      bl #0x30e4b4
005caaec  00 00 50 e3                                      cmp r0, #0
005caaf0  3e 00 00 0a                                      beq #0x5cabf0
005caaf4  04 50 97 e5                                      ldr r5, [r7, #4]
005caaf8  bd 17 03 e3                                      movw r1, #0x37bd
005caafc  86 15 43 e3                                      movt r1, #0x3586
005cab00  05 00 a0 e1                                      mov r0, r5
005cab04  26 10 f5 eb                                      bl #0x30eba4
005cab08  04 40 96 e5                                      ldr r4, [r6, #4]
005cab0c  00 10 a0 e1                                      mov r1, r0
005cab10  04 00 a0 e1                                      mov r0, r4
005cab14  a4 0f f5 eb                                      bl #0x30e9ac
005cab18  00 00 50 e3                                      cmp r0, #0
005cab1c  33 00 00 0a                                      beq #0x5cabf0
005cab20  bd 17 03 e3                                      movw r1, #0x37bd
005cab24  86 15 43 e3                                      movt r1, #0x3586
005cab28  05 00 a0 e1                                      mov r0, r5
005cab2c  1e 0e f5 eb                                      bl #0x30e3ac
005cab30  00 10 a0 e1                                      mov r1, r0
005cab34  04 00 a0 e1                                      mov r0, r4
005cab38  5d 0e f5 eb                                      bl #0x30e4b4
005cab3c  00 00 50 e3                                      cmp r0, #0
005cab40  2a 00 00 0a                                      beq #0x5cabf0
005cab44  08 50 97 e5                                      ldr r5, [r7, #8]
005cab48  bd 17 03 e3                                      movw r1, #0x37bd
005cab4c  86 15 43 e3                                      movt r1, #0x3586
005cab50  05 00 a0 e1                                      mov r0, r5
005cab54  12 10 f5 eb                                      bl #0x30eba4
005cab58  08 40 96 e5                                      ldr r4, [r6, #8]
005cab5c  00 10 a0 e1                                      mov r1, r0
005cab60  04 00 a0 e1                                      mov r0, r4
005cab64  90 0f f5 eb                                      bl #0x30e9ac
005cab68  00 00 50 e3                                      cmp r0, #0
005cab6c  1f 00 00 0a                                      beq #0x5cabf0
005cab70  bd 17 03 e3                                      movw r1, #0x37bd
005cab74  86 15 43 e3                                      movt r1, #0x3586
005cab78  05 00 a0 e1                                      mov r0, r5
005cab7c  0a 0e f5 eb                                      bl #0x30e3ac
005cab80  00 10 a0 e1                                      mov r1, r0
005cab84  04 00 a0 e1                                      mov r0, r4
005cab88  49 0e f5 eb                                      bl #0x30e4b4
005cab8c  00 00 50 e3                                      cmp r0, #0
005cab90  16 00 00 0a                                      beq #0x5cabf0
005cab94  0c 50 97 e5                                      ldr r5, [r7, #0xc]
005cab98  bd 17 03 e3                                      movw r1, #0x37bd
005cab9c  86 15 43 e3                                      movt r1, #0x3586
005caba0  05 00 a0 e1                                      mov r0, r5
005caba4  fe 0f f5 eb                                      bl #0x30eba4
005caba8  0c 40 96 e5                                      ldr r4, [r6, #0xc]
005cabac  00 10 a0 e1                                      mov r1, r0
005cabb0  04 00 a0 e1                                      mov r0, r4
005cabb4  7c 0f f5 eb                                      bl #0x30e9ac
005cabb8  00 00 50 e3                                      cmp r0, #0
005cabbc  0b 00 00 0a                                      beq #0x5cabf0
005cabc0  bd 17 03 e3                                      movw r1, #0x37bd
005cabc4  86 15 43 e3                                      movt r1, #0x3586
005cabc8  05 00 a0 e1                                      mov r0, r5
005cabcc  f6 0d f5 eb                                      bl #0x30e3ac
005cabd0  00 10 a0 e1                                      mov r1, r0
005cabd4  04 00 a0 e1                                      mov r0, r4
005cabd8  35 0e f5 eb                                      bl #0x30e4b4
005cabdc  00 00 50 e3                                      cmp r0, #0
005cabe0  00 00 a0 e3                                      mov r0, #0
005cabe4  01 00 a0 13                                      movne r0, #1
005cabe8  70 00 ef e6                                      uxtb r0, r0
005cabec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005cabf0  00 00 a0 e3                                      mov r0, #0
005cabf4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
