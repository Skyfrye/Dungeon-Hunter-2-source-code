; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fb93c, declared_size=1040, range_size=1040, mode=arm
; class-group: CNetworkId
; alias: _ZNK10CNetworkId7IsEqualERS_
; demangled: CNetworkId::IsEqual(CNetworkId&) const
; decoder-mode: arm
007fb93c  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
007fb940  18 30 90 e5                                      ldr r3, [r0, #0x18]
007fb944  18 20 91 e5                                      ldr r2, [r1, #0x18]
007fb948  30 d0 4d e2                                      sub sp, sp, #0x30
007fb94c  0c 30 8d e5                                      str r3, [sp, #0xc]
007fb950  02 30 13 e0                                      ands r3, r3, r2
007fb954  03 00 a0 01                                      moveq r0, r3
007fb958  d5 00 00 0a                                      beq #0x7fbcb4
007fb95c  00 30 a0 e3                                      mov r3, #0
007fb960  01 40 a0 e3                                      mov r4, #1
007fb964  00 50 a0 e3                                      mov r5, #0
007fb968  04 60 02 e0                                      and r6, r2, r4
007fb96c  05 70 03 e0                                      and r7, r3, r5
007fb970  07 40 96 e1                                      orrs r4, r6, r7
007fb974  00 80 a0 03                                      moveq r8, #0
007fb978  00 90 a0 03                                      moveq sb, #0
007fb97c  da 00 00 1a                                      bne #0x7fbcec
007fb980  02 40 a0 e3                                      mov r4, #2
007fb984  00 50 a0 e3                                      mov r5, #0
007fb988  04 a0 02 e0                                      and sl, r2, r4
007fb98c  05 b0 03 e0                                      and fp, r3, r5
007fb990  f0 a0 cd e1                                      strd sl, fp, [sp]
007fb994  0b a0 9a e1                                      orrs sl, sl, fp
007fb998  0e 00 00 0a                                      beq #0x7fb9d8
007fb99c  00 40 a0 e3                                      mov r4, #0
007fb9a0  00 50 a0 e3                                      mov r5, #0
007fb9a4  04 c0 91 e5                                      ldr ip, [r1, #4]
007fb9a8  f8 42 cd e1                                      strd r4, r5, [sp, #0x28]
007fb9ac  b0 50 d1 e1                                      ldrh r5, [r1]
007fb9b0  2c a8 a0 e1                                      lsr sl, ip, #0x10
007fb9b4  0c c8 a0 e1                                      lsl ip, ip, #0x10
007fb9b8  2c a0 8d e5                                      str sl, [sp, #0x2c]
007fb9bc  28 c0 8d e5                                      str ip, [sp, #0x28]
007fb9c0  d8 a2 cd e1                                      ldrd sl, fp, [sp, #0x28]
007fb9c4  05 40 9a e0                                      adds r4, sl, r5
007fb9c8  20 50 8d e5                                      str r5, [sp, #0x20]
007fb9cc  00 50 ab e2                                      adc r5, fp, #0
007fb9d0  04 80 98 e0                                      adds r8, r8, r4
007fb9d4  05 90 a9 e0                                      adc sb, sb, r5
007fb9d8  04 a0 a0 e3                                      mov sl, #4
007fb9dc  00 b0 a0 e3                                      mov fp, #0
007fb9e0  0a 40 02 e0                                      and r4, r2, sl
007fb9e4  0b 50 03 e0                                      and r5, r3, fp
007fb9e8  f0 42 cd e1                                      strd r4, r5, [sp, #0x20]
007fb9ec  05 40 94 e1                                      orrs r4, r4, r5
007fb9f0  02 00 00 0a                                      beq #0x7fba00
007fb9f4  10 40 91 e5                                      ldr r4, [r1, #0x10]
007fb9f8  04 80 98 e0                                      adds r8, r8, r4
007fb9fc  00 90 a9 e2                                      adc sb, sb, #0
007fba00  08 a0 a0 e3                                      mov sl, #8
007fba04  00 b0 a0 e3                                      mov fp, #0
007fba08  0a 40 02 e0                                      and r4, r2, sl
007fba0c  0b 50 03 e0                                      and r5, r3, fp
007fba10  f8 41 cd e1                                      strd r4, r5, [sp, #0x18]
007fba14  05 40 94 e1                                      orrs r4, r4, r5
007fba18  02 00 00 0a                                      beq #0x7fba28
007fba1c  14 40 91 e5                                      ldr r4, [r1, #0x14]
007fba20  04 80 98 e0                                      adds r8, r8, r4
007fba24  00 90 a9 e2                                      adc sb, sb, #0
007fba28  00 a0 e0 e3                                      mvn sl, #0
007fba2c  82 5b a0 e1                                      lsl r5, r2, #0x17
007fba30  ff b4 e0 e3                                      mvn fp, #0xff000000
007fba34  0a 20 08 e0                                      and r2, r8, sl
007fba38  00 40 a0 e3                                      mov r4, #0
007fba3c  04 20 92 e0                                      adds r2, r2, r4
007fba40  0b 30 09 e0                                      and r3, sb, fp
007fba44  05 30 a3 e0                                      adc r3, r3, r5
007fba48  07 b0 96 e1                                      orrs fp, r6, r7
007fba4c  f0 21 cd e1                                      strd r2, r3, [sp, #0x10]
007fba50  00 60 a0 03                                      moveq r6, #0
007fba54  00 70 a0 03                                      moveq r7, #0
007fba58  98 00 00 1a                                      bne #0x7fbcc0
007fba5c  00 c0 9d e5                                      ldr ip, [sp]
007fba60  04 20 9d e5                                      ldr r2, [sp, #4]
007fba64  02 c0 9c e1                                      orrs ip, ip, r2
007fba68  07 00 00 0a                                      beq #0x7fba8c
007fba6c  04 a0 90 e5                                      ldr sl, [r0, #4]
007fba70  b0 b0 d0 e1                                      ldrh fp, [r0]
007fba74  0a 88 a0 e1                                      lsl r8, sl, #0x10
007fba78  0b 20 98 e0                                      adds r2, r8, fp
007fba7c  2a 98 a0 e1                                      lsr sb, sl, #0x10
007fba80  00 30 a9 e2                                      adc r3, sb, #0
007fba84  02 60 96 e0                                      adds r6, r6, r2
007fba88  03 70 a7 e0                                      adc r7, r7, r3
007fba8c  20 30 9d e5                                      ldr r3, [sp, #0x20]
007fba90  24 a0 9d e5                                      ldr sl, [sp, #0x24]
007fba94  0a 30 93 e1                                      orrs r3, r3, sl
007fba98  02 00 00 0a                                      beq #0x7fbaa8
007fba9c  10 80 90 e5                                      ldr r8, [r0, #0x10]
007fbaa0  08 60 96 e0                                      adds r6, r6, r8
007fbaa4  00 70 a7 e2                                      adc r7, r7, #0
007fbaa8  18 b0 9d e5                                      ldr fp, [sp, #0x18]
007fbaac  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007fbab0  0c b0 9b e1                                      orrs fp, fp, ip
007fbab4  02 00 00 0a                                      beq #0x7fbac4
007fbab8  14 80 90 e5                                      ldr r8, [r0, #0x14]
007fbabc  08 60 96 e0                                      adds r6, r6, r8
007fbac0  00 70 a7 e2                                      adc r7, r7, #0
007fbac4  00 a0 e0 e3                                      mvn sl, #0
007fbac8  10 20 9d e5                                      ldr r2, [sp, #0x10]
007fbacc  ff b4 e0 e3                                      mvn fp, #0xff000000
007fbad0  0a 80 06 e0                                      and r8, r6, sl
007fbad4  04 80 98 e0                                      adds r8, r8, r4
007fbad8  0b 90 07 e0                                      and sb, r7, fp
007fbadc  05 90 a9 e0                                      adc sb, sb, r5
007fbae0  08 00 52 e1                                      cmp r2, r8
007fbae4  8e 00 00 0a                                      beq #0x7fbd24
007fbae8  0c 40 9d e5                                      ldr r4, [sp, #0xc]
007fbaec  00 50 a0 e3                                      mov r5, #0
007fbaf0  04 20 a0 e1                                      mov r2, r4
007fbaf4  00 30 a0 e3                                      mov r3, #0
007fbaf8  01 40 a0 e3                                      mov r4, #1
007fbafc  04 80 02 e0                                      and r8, r2, r4
007fbb00  05 90 03 e0                                      and sb, r3, r5
007fbb04  09 50 98 e1                                      orrs r5, r8, sb
007fbb08  00 a0 a0 03                                      moveq sl, #0
007fbb0c  00 b0 a0 03                                      moveq fp, #0
007fbb10  05 00 00 0a                                      beq #0x7fbb2c
007fbb14  0c c0 91 e5                                      ldr ip, [r1, #0xc]
007fbb18  b8 60 d1 e1                                      ldrh r6, [r1, #8]
007fbb1c  0c 48 a0 e1                                      lsl r4, ip, #0x10
007fbb20  2c 58 a0 e1                                      lsr r5, ip, #0x10
007fbb24  06 a0 94 e0                                      adds sl, r4, r6
007fbb28  00 b0 a5 e2                                      adc fp, r5, #0
007fbb2c  02 40 a0 e3                                      mov r4, #2
007fbb30  00 50 a0 e3                                      mov r5, #0
007fbb34  04 60 02 e0                                      and r6, r2, r4
007fbb38  05 70 03 e0                                      and r7, r3, r5
007fbb3c  f0 61 cd e1                                      strd r6, r7, [sp, #0x10]
007fbb40  07 60 96 e1                                      orrs r6, r6, r7
007fbb44  0e 00 00 0a                                      beq #0x7fbb84
007fbb48  00 40 a0 e3                                      mov r4, #0
007fbb4c  00 50 a0 e3                                      mov r5, #0
007fbb50  04 c0 91 e5                                      ldr ip, [r1, #4]
007fbb54  f8 42 cd e1                                      strd r4, r5, [sp, #0x28]
007fbb58  b0 50 d1 e1                                      ldrh r5, [r1]
007fbb5c  2c 68 a0 e1                                      lsr r6, ip, #0x10
007fbb60  0c c8 a0 e1                                      lsl ip, ip, #0x10
007fbb64  2c 60 8d e5                                      str r6, [sp, #0x2c]
007fbb68  28 c0 8d e5                                      str ip, [sp, #0x28]
007fbb6c  d8 62 cd e1                                      ldrd r6, r7, [sp, #0x28]
007fbb70  05 40 96 e0                                      adds r4, r6, r5
007fbb74  18 50 8d e5                                      str r5, [sp, #0x18]
007fbb78  00 50 a7 e2                                      adc r5, r7, #0
007fbb7c  04 a0 9a e0                                      adds sl, sl, r4
007fbb80  05 b0 ab e0                                      adc fp, fp, r5
007fbb84  04 60 a0 e3                                      mov r6, #4
007fbb88  00 70 a0 e3                                      mov r7, #0
007fbb8c  06 40 02 e0                                      and r4, r2, r6
007fbb90  07 50 03 e0                                      and r5, r3, r7
007fbb94  f8 41 cd e1                                      strd r4, r5, [sp, #0x18]
007fbb98  05 40 94 e1                                      orrs r4, r4, r5
007fbb9c  02 00 00 0a                                      beq #0x7fbbac
007fbba0  10 c0 91 e5                                      ldr ip, [r1, #0x10]
007fbba4  0c a0 9a e0                                      adds sl, sl, ip
007fbba8  00 b0 ab e2                                      adc fp, fp, #0
007fbbac  08 60 a0 e3                                      mov r6, #8
007fbbb0  00 70 a0 e3                                      mov r7, #0
007fbbb4  06 40 02 e0                                      and r4, r2, r6
007fbbb8  07 50 03 e0                                      and r5, r3, r7
007fbbbc  f0 42 cd e1                                      strd r4, r5, [sp, #0x20]
007fbbc0  05 40 94 e1                                      orrs r4, r4, r5
007fbbc4  02 00 00 0a                                      beq #0x7fbbd4
007fbbc8  14 10 91 e5                                      ldr r1, [r1, #0x14]
007fbbcc  01 a0 9a e0                                      adds sl, sl, r1
007fbbd0  00 b0 ab e2                                      adc fp, fp, #0
007fbbd4  00 60 e0 e3                                      mvn r6, #0
007fbbd8  82 5b a0 e1                                      lsl r5, r2, #0x17
007fbbdc  ff 74 e0 e3                                      mvn r7, #0xff000000
007fbbe0  06 20 0a e0                                      and r2, sl, r6
007fbbe4  00 40 a0 e3                                      mov r4, #0
007fbbe8  04 20 92 e0                                      adds r2, r2, r4
007fbbec  07 30 0b e0                                      and r3, fp, r7
007fbbf0  05 30 a3 e0                                      adc r3, r3, r5
007fbbf4  09 70 98 e1                                      orrs r7, r8, sb
007fbbf8  f8 22 cd e1                                      strd r2, r3, [sp, #0x28]
007fbbfc  00 80 a0 03                                      moveq r8, #0
007fbc00  00 90 a0 03                                      moveq sb, #0
007fbc04  05 00 00 0a                                      beq #0x7fbc20
007fbc08  0c 10 90 e5                                      ldr r1, [r0, #0xc]
007fbc0c  b8 c0 d0 e1                                      ldrh ip, [r0, #8]
007fbc10  01 a8 a0 e1                                      lsl sl, r1, #0x10
007fbc14  21 b8 a0 e1                                      lsr fp, r1, #0x10
007fbc18  0c 80 9a e0                                      adds r8, sl, ip
007fbc1c  00 90 ab e2                                      adc sb, fp, #0
007fbc20  10 a0 9d e5                                      ldr sl, [sp, #0x10]
007fbc24  14 b0 9d e5                                      ldr fp, [sp, #0x14]
007fbc28  0b a0 9a e1                                      orrs sl, sl, fp
007fbc2c  07 00 00 0a                                      beq #0x7fbc50
007fbc30  04 10 90 e5                                      ldr r1, [r0, #4]
007fbc34  b0 c0 d0 e1                                      ldrh ip, [r0]
007fbc38  01 68 a0 e1                                      lsl r6, r1, #0x10
007fbc3c  0c a0 96 e0                                      adds sl, r6, ip
007fbc40  21 78 a0 e1                                      lsr r7, r1, #0x10
007fbc44  00 b0 a7 e2                                      adc fp, r7, #0
007fbc48  0a 80 98 e0                                      adds r8, r8, sl
007fbc4c  0b 90 a9 e0                                      adc sb, sb, fp
007fbc50  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007fbc54  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007fbc58  02 c0 9c e1                                      orrs ip, ip, r2
007fbc5c  02 00 00 0a                                      beq #0x7fbc6c
007fbc60  10 10 90 e5                                      ldr r1, [r0, #0x10]
007fbc64  01 80 98 e0                                      adds r8, r8, r1
007fbc68  00 90 a9 e2                                      adc sb, sb, #0
007fbc6c  20 30 9d e5                                      ldr r3, [sp, #0x20]
007fbc70  24 60 9d e5                                      ldr r6, [sp, #0x24]
007fbc74  06 30 93 e1                                      orrs r3, r3, r6
007fbc78  02 00 00 0a                                      beq #0x7fbc88
007fbc7c  14 10 90 e5                                      ldr r1, [r0, #0x14]
007fbc80  01 80 98 e0                                      adds r8, r8, r1
007fbc84  00 90 a9 e2                                      adc sb, sb, #0
007fbc88  00 00 e0 e3                                      mvn r0, #0
007fbc8c  28 a0 9d e5                                      ldr sl, [sp, #0x28]
007fbc90  00 60 08 e0                                      and r6, r8, r0
007fbc94  ff 14 e0 e3                                      mvn r1, #0xff000000
007fbc98  04 60 96 e0                                      adds r6, r6, r4
007fbc9c  01 70 09 e0                                      and r7, sb, r1
007fbca0  05 70 a7 e0                                      adc r7, r7, r5
007fbca4  06 00 5a e1                                      cmp sl, r6
007fbca8  00 00 a0 e3                                      mov r0, #0
007fbcac  21 00 00 0a                                      beq #0x7fbd38
007fbcb0  70 00 ef e6                                      uxtb r0, r0
007fbcb4  30 d0 8d e2                                      add sp, sp, #0x30
007fbcb8  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
007fbcbc  1e ff 2f e1                                      bx lr
007fbcc0  0c 60 90 e5                                      ldr r6, [r0, #0xc]
007fbcc4  b8 20 d0 e1                                      ldrh r2, [r0, #8]
007fbcc8  00 c0 9d e5                                      ldr ip, [sp]
007fbccc  06 88 a0 e1                                      lsl r8, r6, #0x10
007fbcd0  26 98 a0 e1                                      lsr sb, r6, #0x10
007fbcd4  02 60 98 e0                                      adds r6, r8, r2
007fbcd8  04 20 9d e5                                      ldr r2, [sp, #4]
007fbcdc  00 70 a9 e2                                      adc r7, sb, #0
007fbce0  02 c0 9c e1                                      orrs ip, ip, r2
007fbce4  68 ff ff 0a                                      beq #0x7fba8c
007fbce8  5f ff ff ea                                      b #0x7fba6c
007fbcec  0c 80 91 e5                                      ldr r8, [r1, #0xc]
007fbcf0  b8 a0 d1 e1                                      ldrh sl, [r1, #8]
007fbcf4  08 48 a0 e1                                      lsl r4, r8, #0x10
007fbcf8  28 58 a0 e1                                      lsr r5, r8, #0x10
007fbcfc  0a 80 94 e0                                      adds r8, r4, sl
007fbd00  00 90 a5 e2                                      adc sb, r5, #0
007fbd04  02 40 a0 e3                                      mov r4, #2
007fbd08  00 50 a0 e3                                      mov r5, #0
007fbd0c  04 a0 02 e0                                      and sl, r2, r4
007fbd10  05 b0 03 e0                                      and fp, r3, r5
007fbd14  f0 a0 cd e1                                      strd sl, fp, [sp]
007fbd18  0b a0 9a e1                                      orrs sl, sl, fp
007fbd1c  2d ff ff 0a                                      beq #0x7fb9d8
007fbd20  1d ff ff ea                                      b #0x7fb99c
007fbd24  14 30 9d e5                                      ldr r3, [sp, #0x14]
007fbd28  09 00 53 e1                                      cmp r3, sb
007fbd2c  01 00 a0 03                                      moveq r0, #1
007fbd30  6c ff ff 1a                                      bne #0x7fbae8
007fbd34  de ff ff ea                                      b #0x7fbcb4
007fbd38  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
007fbd3c  07 00 5b e1                                      cmp fp, r7
007fbd40  01 00 a0 03                                      moveq r0, #1
007fbd44  70 00 ef e6                                      uxtb r0, r0
007fbd48  d9 ff ff ea                                      b #0x7fbcb4

; FUNCTION 0x007fc384, declared_size=40, range_size=40, mode=arm
; class-group: CNetworkId
; alias: _ZN10CNetworkId5ResetEv
; demangled: CNetworkId::Reset()
; decoder-mode: arm
007fc384  00 30 a0 e3                                      mov r3, #0
007fc388  08 20 80 e2                                      add r2, r0, #8
007fc38c  08 30 80 e5                                      str r3, [r0, #8]
007fc390  04 30 82 e5                                      str r3, [r2, #4]
007fc394  18 30 80 e5                                      str r3, [r0, #0x18]
007fc398  00 30 80 e5                                      str r3, [r0]
007fc39c  04 30 80 e5                                      str r3, [r0, #4]
007fc3a0  10 30 80 e5                                      str r3, [r0, #0x10]
007fc3a4  14 30 80 e5                                      str r3, [r0, #0x14]
007fc3a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801cf0, declared_size=240, range_size=240, mode=arm
; class-group: CNetworkId
; alias: _ZN10CNetworkId4LoadER12NetBitStream
; demangled: CNetworkId::Load(NetBitStream&)
; decoder-mode: arm
00801cf0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00801cf4  01 50 a0 e1                                      mov r5, r1
00801cf8  00 40 a0 e1                                      mov r4, r0
00801cfc  20 10 a0 e3                                      mov r1, #0x20
00801d00  05 00 a0 e1                                      mov r0, r5
00801d04  49 32 00 eb                                      bl #0x80e630
00801d08  01 80 a0 e3                                      mov r8, #1
00801d0c  00 20 a0 e1                                      mov r2, r0
00801d10  00 30 a0 e3                                      mov r3, #0
00801d14  00 90 a0 e3                                      mov sb, #0
00801d18  08 60 02 e0                                      and r6, r2, r8
00801d1c  09 70 03 e0                                      and r7, r3, sb
00801d20  07 10 96 e1                                      orrs r1, r6, r7
00801d24  18 00 84 e5                                      str r0, [r4, #0x18]
00801d28  25 00 00 1a                                      bne #0x801dc4
00801d2c  02 60 a0 e3                                      mov r6, #2
00801d30  00 70 a0 e3                                      mov r7, #0
00801d34  06 00 02 e0                                      and r0, r2, r6
00801d38  07 10 03 e0                                      and r1, r3, r7
00801d3c  01 c0 90 e1                                      orrs ip, r0, r1
00801d40  18 00 00 1a                                      bne #0x801da8
00801d44  04 60 a0 e3                                      mov r6, #4
00801d48  00 70 a0 e3                                      mov r7, #0
00801d4c  06 00 02 e0                                      and r0, r2, r6
00801d50  07 10 03 e0                                      and r1, r3, r7
00801d54  01 c0 90 e1                                      orrs ip, r0, r1
00801d58  0a 00 00 1a                                      bne #0x801d88
00801d5c  08 60 a0 e3                                      mov r6, #8
00801d60  00 70 a0 e3                                      mov r7, #0
00801d64  06 00 02 e0                                      and r0, r2, r6
00801d68  07 10 03 e0                                      and r1, r3, r7
00801d6c  01 30 90 e1                                      orrs r3, r0, r1
00801d70  03 00 00 0a                                      beq #0x801d84
00801d74  05 00 a0 e1                                      mov r0, r5
00801d78  20 10 a0 e3                                      mov r1, #0x20
00801d7c  2b 32 00 eb                                      bl #0x80e630
00801d80  14 00 84 e5                                      str r0, [r4, #0x14]
00801d84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00801d88  05 00 a0 e1                                      mov r0, r5
00801d8c  20 10 a0 e3                                      mov r1, #0x20
00801d90  26 32 00 eb                                      bl #0x80e630
00801d94  18 30 94 e5                                      ldr r3, [r4, #0x18]
00801d98  10 00 84 e5                                      str r0, [r4, #0x10]
00801d9c  03 20 a0 e1                                      mov r2, r3
00801da0  00 30 a0 e3                                      mov r3, #0
00801da4  ec ff ff ea                                      b #0x801d5c
00801da8  08 20 a0 e3                                      mov r2, #8
00801dac  05 00 a0 e1                                      mov r0, r5
00801db0  04 10 a0 e1                                      mov r1, r4
00801db4  9b 33 00 eb                                      bl #0x80ec28
00801db8  18 20 94 e5                                      ldr r2, [r4, #0x18]
00801dbc  00 30 a0 e3                                      mov r3, #0
00801dc0  df ff ff ea                                      b #0x801d44
00801dc4  08 20 a0 e3                                      mov r2, #8
00801dc8  05 00 a0 e1                                      mov r0, r5
00801dcc  08 10 84 e2                                      add r1, r4, #8
00801dd0  94 33 00 eb                                      bl #0x80ec28
00801dd4  18 20 94 e5                                      ldr r2, [r4, #0x18]
00801dd8  00 30 a0 e3                                      mov r3, #0
00801ddc  d2 ff ff ea                                      b #0x801d2c

; FUNCTION 0x00801e24, declared_size=240, range_size=240, mode=arm
; class-group: CNetworkId
; alias: _ZN10CNetworkId9SerializeER12NetBitStream
; demangled: CNetworkId::Serialize(NetBitStream&)
; decoder-mode: arm
00801e24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00801e28  00 40 a0 e1                                      mov r4, r0
00801e2c  20 20 a0 e3                                      mov r2, #0x20
00801e30  01 00 a0 e1                                      mov r0, r1
00801e34  01 50 a0 e1                                      mov r5, r1
00801e38  18 10 94 e5                                      ldr r1, [r4, #0x18]
00801e3c  e6 31 00 eb                                      bl #0x80e5dc
00801e40  18 20 94 e5                                      ldr r2, [r4, #0x18]
00801e44  01 60 a0 e3                                      mov r6, #1
00801e48  00 70 a0 e3                                      mov r7, #0
00801e4c  00 30 a0 e3                                      mov r3, #0
00801e50  06 00 02 e0                                      and r0, r2, r6
00801e54  07 10 03 e0                                      and r1, r3, r7
00801e58  01 c0 90 e1                                      orrs ip, r0, r1
00801e5c  25 00 00 1a                                      bne #0x801ef8
00801e60  02 60 a0 e3                                      mov r6, #2
00801e64  00 70 a0 e3                                      mov r7, #0
00801e68  06 00 02 e0                                      and r0, r2, r6
00801e6c  07 10 03 e0                                      and r1, r3, r7
00801e70  01 c0 90 e1                                      orrs ip, r0, r1
00801e74  18 00 00 1a                                      bne #0x801edc
00801e78  04 60 a0 e3                                      mov r6, #4
00801e7c  00 70 a0 e3                                      mov r7, #0
00801e80  06 00 02 e0                                      and r0, r2, r6
00801e84  07 10 03 e0                                      and r1, r3, r7
00801e88  01 c0 90 e1                                      orrs ip, r0, r1
00801e8c  0b 00 00 1a                                      bne #0x801ec0
00801e90  08 60 a0 e3                                      mov r6, #8
00801e94  00 70 a0 e3                                      mov r7, #0
00801e98  06 00 02 e0                                      and r0, r2, r6
00801e9c  07 10 03 e0                                      and r1, r3, r7
00801ea0  01 30 90 e1                                      orrs r3, r0, r1
00801ea4  00 00 00 1a                                      bne #0x801eac
00801ea8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00801eac  14 10 94 e5                                      ldr r1, [r4, #0x14]
00801eb0  05 00 a0 e1                                      mov r0, r5
00801eb4  20 20 a0 e3                                      mov r2, #0x20
00801eb8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00801ebc  c6 31 00 ea                                      b #0x80e5dc
00801ec0  20 20 a0 e3                                      mov r2, #0x20
00801ec4  05 00 a0 e1                                      mov r0, r5
00801ec8  10 10 94 e5                                      ldr r1, [r4, #0x10]
00801ecc  c2 31 00 eb                                      bl #0x80e5dc
00801ed0  18 20 94 e5                                      ldr r2, [r4, #0x18]
00801ed4  00 30 a0 e3                                      mov r3, #0
00801ed8  ec ff ff ea                                      b #0x801e90
00801edc  08 20 a0 e3                                      mov r2, #8
00801ee0  05 00 a0 e1                                      mov r0, r5
00801ee4  04 10 a0 e1                                      mov r1, r4
00801ee8  ae 33 00 eb                                      bl #0x80eda8
00801eec  18 20 94 e5                                      ldr r2, [r4, #0x18]
00801ef0  00 30 a0 e3                                      mov r3, #0
00801ef4  df ff ff ea                                      b #0x801e78
00801ef8  08 20 a0 e3                                      mov r2, #8
00801efc  05 00 a0 e1                                      mov r0, r5
00801f00  08 10 84 e2                                      add r1, r4, #8
00801f04  a7 33 00 eb                                      bl #0x80eda8
00801f08  18 20 94 e5                                      ldr r2, [r4, #0x18]
00801f0c  00 30 a0 e3                                      mov r3, #0
00801f10  d2 ff ff ea                                      b #0x801e60

; FUNCTION 0x0081af10, declared_size=120, range_size=120, mode=arm
; class-group: CNetworkId
; alias: _ZN10CNetworkId5ResetE15tTRANSPORT_TYPE
; demangled: CNetworkId::Reset(tTRANSPORT_TYPE)
; decoder-mode: arm
0081af10  01 30 41 e2                                      sub r3, r1, #1
0081af14  03 00 53 e3                                      cmp r3, #3
0081af18  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0081af1c  05 00 00 ea                                      b #0x81af38
0081af20  13 00 00 ea                                      b #0x81af74
0081af24  0e 00 00 ea                                      b #0x81af64
0081af28  0a 00 00 ea                                      b #0x81af58
0081af2c  ff ff ff ea                                      b #0x81af30
0081af30  00 20 a0 e3                                      mov r2, #0
0081af34  14 20 80 e5                                      str r2, [r0, #0x14]
0081af38  00 00 51 e3                                      cmp r1, #0
0081af3c  01 10 a0 13                                      movne r1, #1
0081af40  11 33 e0 11                                      mvnne r3, r1, lsl r3
0081af44  18 20 90 e5                                      ldr r2, [r0, #0x18]
0081af48  00 30 e0 03                                      mvneq r3, #0
0081af4c  02 30 03 e0                                      and r3, r3, r2
0081af50  18 30 80 e5                                      str r3, [r0, #0x18]
0081af54  1e ff 2f e1                                      bx lr
0081af58  00 20 a0 e3                                      mov r2, #0
0081af5c  10 20 80 e5                                      str r2, [r0, #0x10]
0081af60  f4 ff ff ea                                      b #0x81af38
0081af64  00 20 a0 e3                                      mov r2, #0
0081af68  04 20 80 e5                                      str r2, [r0, #4]
0081af6c  00 20 80 e5                                      str r2, [r0]
0081af70  f0 ff ff ea                                      b #0x81af38
0081af74  00 20 a0 e3                                      mov r2, #0
0081af78  08 c0 80 e2                                      add ip, r0, #8
0081af7c  08 20 80 e5                                      str r2, [r0, #8]
0081af80  04 20 8c e5                                      str r2, [ip, #4]
0081af84  eb ff ff ea                                      b #0x81af38

; FUNCTION 0x0081b970, declared_size=380, range_size=380, mode=arm
; class-group: CNetworkId
; alias: _ZN10CNetworkId20GetTransportTypeListEv
; demangled: CNetworkId::GetTransportTypeList()
; decoder-mode: arm
0081b970  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081b974  00 30 a0 e3                                      mov r3, #0
0081b978  00 30 80 e5                                      str r3, [r0]
0081b97c  04 30 80 e5                                      str r3, [r0, #4]
0081b980  08 30 80 e5                                      str r3, [r0, #8]
0081b984  18 60 91 e5                                      ldr r6, [r1, #0x18]
0081b988  01 a0 a0 e3                                      mov sl, #1
0081b98c  00 b0 a0 e3                                      mov fp, #0
0081b990  00 70 a0 e3                                      mov r7, #0
0081b994  0a 80 06 e0                                      and r8, r6, sl
0081b998  0b 90 07 e0                                      and sb, r7, fp
0081b99c  01 50 a0 e1                                      mov r5, r1
0081b9a0  09 10 98 e1                                      orrs r1, r8, sb
0081b9a4  14 d0 4d e2                                      sub sp, sp, #0x14
0081b9a8  00 40 a0 e1                                      mov r4, r0
0081b9ac  36 00 00 1a                                      bne #0x81ba8c
0081b9b0  00 10 a0 e3                                      mov r1, #0
0081b9b4  02 00 a0 e3                                      mov r0, #2
0081b9b8  00 20 06 e0                                      and r2, r6, r0
0081b9bc  01 30 07 e0                                      and r3, r7, r1
0081b9c0  03 10 92 e1                                      orrs r1, r2, r3
0081b9c4  24 00 00 1a                                      bne #0x81ba5c
0081b9c8  00 10 a0 e3                                      mov r1, #0
0081b9cc  04 00 a0 e3                                      mov r0, #4
0081b9d0  00 20 06 e0                                      and r2, r6, r0
0081b9d4  01 30 07 e0                                      and r3, r7, r1
0081b9d8  03 10 92 e1                                      orrs r1, r2, r3
0081b9dc  12 00 00 1a                                      bne #0x81ba2c
0081b9e0  00 10 a0 e3                                      mov r1, #0
0081b9e4  08 00 a0 e3                                      mov r0, #8
0081b9e8  00 20 06 e0                                      and r2, r6, r0
0081b9ec  01 30 07 e0                                      and r3, r7, r1
0081b9f0  03 10 92 e1                                      orrs r1, r2, r3
0081b9f4  02 00 00 1a                                      bne #0x81ba04
0081b9f8  04 00 a0 e1                                      mov r0, r4
0081b9fc  14 d0 8d e2                                      add sp, sp, #0x14
0081ba00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081ba04  06 00 94 e9                                      ldmib r4, {r1, r2}
0081ba08  04 30 a0 e3                                      mov r3, #4
0081ba0c  00 30 8d e5                                      str r3, [sp]
0081ba10  02 00 51 e1                                      cmp r1, r2
0081ba14  24 00 00 0a                                      beq #0x81baac
0081ba18  00 30 81 e5                                      str r3, [r1]
0081ba1c  04 30 94 e5                                      ldr r3, [r4, #4]
0081ba20  04 30 83 e2                                      add r3, r3, #4
0081ba24  04 30 84 e5                                      str r3, [r4, #4]
0081ba28  f2 ff ff ea                                      b #0x81b9f8
0081ba2c  06 00 94 e9                                      ldmib r4, {r1, r2}
0081ba30  03 30 a0 e3                                      mov r3, #3
0081ba34  04 30 8d e5                                      str r3, [sp, #4]
0081ba38  02 00 51 e1                                      cmp r1, r2
0081ba3c  1e 00 00 0a                                      beq #0x81babc
0081ba40  00 30 81 e5                                      str r3, [r1]
0081ba44  04 30 94 e5                                      ldr r3, [r4, #4]
0081ba48  04 30 83 e2                                      add r3, r3, #4
0081ba4c  04 30 84 e5                                      str r3, [r4, #4]
0081ba50  18 60 95 e5                                      ldr r6, [r5, #0x18]
0081ba54  00 70 a0 e3                                      mov r7, #0
0081ba58  e0 ff ff ea                                      b #0x81b9e0
0081ba5c  06 00 94 e9                                      ldmib r4, {r1, r2}
0081ba60  02 30 a0 e3                                      mov r3, #2
0081ba64  08 30 8d e5                                      str r3, [sp, #8]
0081ba68  02 00 51 e1                                      cmp r1, r2
0081ba6c  18 00 00 0a                                      beq #0x81bad4
0081ba70  00 30 81 e5                                      str r3, [r1]
0081ba74  04 30 94 e5                                      ldr r3, [r4, #4]
0081ba78  04 30 83 e2                                      add r3, r3, #4
0081ba7c  04 30 84 e5                                      str r3, [r4, #4]
0081ba80  18 60 95 e5                                      ldr r6, [r5, #0x18]
0081ba84  00 70 a0 e3                                      mov r7, #0
0081ba88  ce ff ff ea                                      b #0x81b9c8
0081ba8c  10 20 8d e2                                      add r2, sp, #0x10
0081ba90  01 10 a0 e3                                      mov r1, #1
0081ba94  04 10 22 e5                                      str r1, [r2, #-4]!
0081ba98  03 10 a0 e1                                      mov r1, r3
0081ba9c  79 ff ff eb                                      bl #0x81b888
0081baa0  18 60 95 e5                                      ldr r6, [r5, #0x18]
0081baa4  00 70 a0 e3                                      mov r7, #0
0081baa8  c0 ff ff ea                                      b #0x81b9b0
0081baac  04 00 a0 e1                                      mov r0, r4
0081bab0  0d 20 a0 e1                                      mov r2, sp
0081bab4  73 ff ff eb                                      bl #0x81b888
0081bab8  ce ff ff ea                                      b #0x81b9f8
0081babc  04 00 a0 e1                                      mov r0, r4
0081bac0  04 20 8d e2                                      add r2, sp, #4
0081bac4  6f ff ff eb                                      bl #0x81b888
0081bac8  18 60 95 e5                                      ldr r6, [r5, #0x18]
0081bacc  00 70 a0 e3                                      mov r7, #0
0081bad0  c2 ff ff ea                                      b #0x81b9e0
0081bad4  04 00 a0 e1                                      mov r0, r4
0081bad8  08 20 8d e2                                      add r2, sp, #8
0081badc  69 ff ff eb                                      bl #0x81b888
0081bae0  18 60 95 e5                                      ldr r6, [r5, #0x18]
0081bae4  00 70 a0 e3                                      mov r7, #0
0081bae8  b6 ff ff ea                                      b #0x81b9c8

; FUNCTION 0x008264d8, declared_size=360, range_size=360, mode=arm
; class-group: CNetworkId
; alias: _ZN10CNetworkId3SetES_
; demangled: CNetworkId::Set(CNetworkId)
; decoder-mode: arm
008264d8  f0 00 2d e9                                      push {r4, r5, r6, r7}
008264dc  18 30 91 e5                                      ldr r3, [r1, #0x18]
008264e0  01 60 a0 e3                                      mov r6, #1
008264e4  00 70 a0 e3                                      mov r7, #0
008264e8  03 20 a0 e1                                      mov r2, r3
008264ec  00 30 a0 e3                                      mov r3, #0
008264f0  01 c0 a0 e1                                      mov ip, r1
008264f4  00 40 a0 e1                                      mov r4, r0
008264f8  07 10 03 e0                                      and r1, r3, r7
008264fc  06 00 02 e0                                      and r0, r2, r6
00826500  01 50 90 e1                                      orrs r5, r0, r1
00826504  70 d0 4d e2                                      sub sp, sp, #0x70
00826508  3c 00 00 1a                                      bne #0x826600
0082650c  02 60 a0 e3                                      mov r6, #2
00826510  00 70 a0 e3                                      mov r7, #0
00826514  06 00 02 e0                                      and r0, r2, r6
00826518  07 10 03 e0                                      and r1, r3, r7
0082651c  01 50 90 e1                                      orrs r5, r0, r1
00826520  26 00 00 1a                                      bne #0x8265c0
00826524  04 60 a0 e3                                      mov r6, #4
00826528  00 70 a0 e3                                      mov r7, #0
0082652c  06 00 02 e0                                      and r0, r2, r6
00826530  07 10 03 e0                                      and r1, r3, r7
00826534  01 50 90 e1                                      orrs r5, r0, r1
00826538  12 00 00 1a                                      bne #0x826588
0082653c  00 70 a0 e3                                      mov r7, #0
00826540  08 60 a0 e3                                      mov r6, #8
00826544  06 00 02 e0                                      and r0, r2, r6
00826548  07 10 03 e0                                      and r1, r3, r7
0082654c  01 70 90 e1                                      orrs r7, r0, r1
00826550  09 00 00 0a                                      beq #0x82657c
00826554  0d 50 a0 e1                                      mov r5, sp
00826558  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0082655c  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
00826560  07 00 9c e8                                      ldm ip, {r0, r1, r2}
00826564  07 00 85 e8                                      stm r5, {r0, r1, r2}
00826568  18 20 94 e5                                      ldr r2, [r4, #0x18]
0082656c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00826570  08 20 82 e3                                      orr r2, r2, #8
00826574  18 20 84 e5                                      str r2, [r4, #0x18]
00826578  14 30 84 e5                                      str r3, [r4, #0x14]
0082657c  70 d0 8d e2                                      add sp, sp, #0x70
00826580  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00826584  1e ff 2f e1                                      bx lr
00826588  1c 50 8d e2                                      add r5, sp, #0x1c
0082658c  0c 60 a0 e1                                      mov r6, ip
00826590  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00826594  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
00826598  07 00 96 e8                                      ldm r6, {r0, r1, r2}
0082659c  07 00 85 e8                                      stm r5, {r0, r1, r2}
008265a0  18 30 94 e5                                      ldr r3, [r4, #0x18]
008265a4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
008265a8  04 30 83 e3                                      orr r3, r3, #4
008265ac  18 30 84 e5                                      str r3, [r4, #0x18]
008265b0  10 20 84 e5                                      str r2, [r4, #0x10]
008265b4  18 20 9c e5                                      ldr r2, [ip, #0x18]
008265b8  00 30 a0 e3                                      mov r3, #0
008265bc  de ff ff ea                                      b #0x82653c
008265c0  38 50 8d e2                                      add r5, sp, #0x38
008265c4  0c 60 a0 e1                                      mov r6, ip
008265c8  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
008265cc  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
008265d0  18 30 94 e5                                      ldr r3, [r4, #0x18]
008265d4  07 00 96 e8                                      ldm r6, {r0, r1, r2}
008265d8  b8 73 dd e1                                      ldrh r7, [sp, #0x38]
008265dc  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
008265e0  02 30 83 e3                                      orr r3, r3, #2
008265e4  18 30 84 e5                                      str r3, [r4, #0x18]
008265e8  b0 70 c4 e1                                      strh r7, [r4]
008265ec  04 60 84 e5                                      str r6, [r4, #4]
008265f0  07 00 85 e8                                      stm r5, {r0, r1, r2}
008265f4  18 20 9c e5                                      ldr r2, [ip, #0x18]
008265f8  00 30 a0 e3                                      mov r3, #0
008265fc  c8 ff ff ea                                      b #0x826524
00826600  54 50 8d e2                                      add r5, sp, #0x54
00826604  0c 60 a0 e1                                      mov r6, ip
00826608  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
0082660c  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
00826610  18 30 94 e5                                      ldr r3, [r4, #0x18]
00826614  07 00 96 e8                                      ldm r6, {r0, r1, r2}
00826618  bc 75 dd e1                                      ldrh r7, [sp, #0x5c]
0082661c  60 60 9d e5                                      ldr r6, [sp, #0x60]
00826620  01 30 83 e3                                      orr r3, r3, #1
00826624  18 30 84 e5                                      str r3, [r4, #0x18]
00826628  b8 70 c4 e1                                      strh r7, [r4, #8]
0082662c  0c 60 84 e5                                      str r6, [r4, #0xc]
00826630  07 00 85 e8                                      stm r5, {r0, r1, r2}
00826634  18 20 9c e5                                      ldr r2, [ip, #0x18]
00826638  00 30 a0 e3                                      mov r3, #0
0082663c  b2 ff ff ea                                      b #0x82650c
