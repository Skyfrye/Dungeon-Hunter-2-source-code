; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fab98, declared_size=1200, range_size=1200, mode=arm
; class-group: b2GearJoint
; alias: _ZN11b2GearJoint23InitVelocityConstraintsERK10b2TimeStep
; demangled: b2GearJoint::InitVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007fab98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fab9c  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
007faba0  00 50 a0 e3                                      mov r5, #0
007faba4  14 d0 4d e2                                      sub sp, sp, #0x14
007faba8  00 00 53 e3                                      cmp r3, #0
007fabac  00 40 a0 e1                                      mov r4, r0
007fabb0  01 80 a0 e1                                      mov r8, r1
007fabb4  7c 50 80 e5                                      str r5, [r0, #0x7c]
007fabb8  80 50 80 e5                                      str r5, [r0, #0x80]
007fabbc  84 50 80 e5                                      str r5, [r0, #0x84]
007fabc0  88 50 80 e5                                      str r5, [r0, #0x88]
007fabc4  8c 50 80 e5                                      str r5, [r0, #0x8c]
007fabc8  90 50 80 e5                                      str r5, [r0, #0x90]
007fabcc  44 90 90 e5                                      ldr sb, [r0, #0x44]
007fabd0  48 a0 90 e5                                      ldr sl, [r0, #0x48]
007fabd4  30 70 90 e5                                      ldr r7, [r0, #0x30]
007fabd8  34 60 90 e5                                      ldr r6, [r0, #0x34]
007fabdc  57 00 00 0a                                      beq #0x7fad40
007fabe0  bf 34 a0 e3                                      mov r3, #0xbf000000
007fabe4  02 35 83 e2                                      add r3, r3, #0x800000
007fabe8  84 30 80 e5                                      str r3, [r0, #0x84]
007fabec  05 10 a0 e1                                      mov r1, r5
007fabf0  80 00 97 e5                                      ldr r0, [r7, #0x80]
007fabf4  ea 4f ec eb                                      bl #0x30eba4
007fabf8  54 30 94 e5                                      ldr r3, [r4, #0x54]
007fabfc  00 50 a0 e1                                      mov r5, r0
007fac00  00 00 53 e3                                      cmp r3, #0
007fac04  a8 00 00 0a                                      beq #0x7faeac
007fac08  98 30 94 e5                                      ldr r3, [r4, #0x98]
007fac0c  98 00 94 e5                                      ldr r0, [r4, #0x98]
007fac10  02 31 83 e2                                      add r3, r3, #0x80000000
007fac14  90 30 84 e5                                      str r3, [r4, #0x90]
007fac18  00 10 a0 e1                                      mov r1, r0
007fac1c  52 50 ec eb                                      bl #0x30ed6c
007fac20  80 10 96 e5                                      ldr r1, [r6, #0x80]
007fac24  50 50 ec eb                                      bl #0x30ed6c
007fac28  05 10 a0 e1                                      mov r1, r5
007fac2c  dc 4f ec eb                                      bl #0x30eba4
007fac30  00 10 a0 e1                                      mov r1, r0
007fac34  fe 05 a0 e3                                      mov r0, #0x3f800000
007fac38  15 50 ec eb                                      bl #0x30ec94
007fac3c  9c 00 84 e5                                      str r0, [r4, #0x9c]
007fac40  10 30 d8 e5                                      ldrb r3, [r8, #0x10]
007fac44  00 00 53 e3                                      cmp r3, #0
007fac48  00 30 a0 03                                      moveq r3, #0
007fac4c  a0 30 84 05                                      streq r3, [r4, #0xa0]
007fac50  38 00 00 0a                                      beq #0x7fad38
007fac54  00 00 98 e5                                      ldr r0, [r8]
007fac58  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
007fac5c  42 50 ec eb                                      bl #0x30ed6c
007fac60  78 10 97 e5                                      ldr r1, [r7, #0x78]
007fac64  00 50 a0 e1                                      mov r5, r0
007fac68  3f 50 ec eb                                      bl #0x30ed6c
007fac6c  80 10 94 e5                                      ldr r1, [r4, #0x80]
007fac70  00 a0 a0 e1                                      mov sl, r0
007fac74  3c 50 ec eb                                      bl #0x30ed6c
007fac78  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007fac7c  00 80 a0 e1                                      mov r8, r0
007fac80  0a 00 a0 e1                                      mov r0, sl
007fac84  38 50 ec eb                                      bl #0x30ed6c
007fac88  00 10 a0 e1                                      mov r1, r0
007fac8c  40 00 97 e5                                      ldr r0, [r7, #0x40]
007fac90  c3 4f ec eb                                      bl #0x30eba4
007fac94  08 10 a0 e1                                      mov r1, r8
007fac98  40 00 87 e5                                      str r0, [r7, #0x40]
007fac9c  44 00 97 e5                                      ldr r0, [r7, #0x44]
007faca0  bf 4f ec eb                                      bl #0x30eba4
007faca4  80 10 97 e5                                      ldr r1, [r7, #0x80]
007faca8  44 00 87 e5                                      str r0, [r7, #0x44]
007facac  05 00 a0 e1                                      mov r0, r5
007facb0  2d 50 ec eb                                      bl #0x30ed6c
007facb4  84 10 94 e5                                      ldr r1, [r4, #0x84]
007facb8  2b 50 ec eb                                      bl #0x30ed6c
007facbc  00 10 a0 e1                                      mov r1, r0
007facc0  48 00 97 e5                                      ldr r0, [r7, #0x48]
007facc4  b6 4f ec eb                                      bl #0x30eba4
007facc8  48 00 87 e5                                      str r0, [r7, #0x48]
007faccc  78 10 96 e5                                      ldr r1, [r6, #0x78]
007facd0  05 00 a0 e1                                      mov r0, r5
007facd4  24 50 ec eb                                      bl #0x30ed6c
007facd8  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007facdc  00 80 a0 e1                                      mov r8, r0
007face0  21 50 ec eb                                      bl #0x30ed6c
007face4  88 10 94 e5                                      ldr r1, [r4, #0x88]
007face8  00 70 a0 e1                                      mov r7, r0
007facec  08 00 a0 e1                                      mov r0, r8
007facf0  1d 50 ec eb                                      bl #0x30ed6c
007facf4  00 10 a0 e1                                      mov r1, r0
007facf8  40 00 96 e5                                      ldr r0, [r6, #0x40]
007facfc  a8 4f ec eb                                      bl #0x30eba4
007fad00  07 10 a0 e1                                      mov r1, r7
007fad04  40 00 86 e5                                      str r0, [r6, #0x40]
007fad08  44 00 96 e5                                      ldr r0, [r6, #0x44]
007fad0c  a4 4f ec eb                                      bl #0x30eba4
007fad10  80 10 96 e5                                      ldr r1, [r6, #0x80]
007fad14  44 00 86 e5                                      str r0, [r6, #0x44]
007fad18  05 00 a0 e1                                      mov r0, r5
007fad1c  12 50 ec eb                                      bl #0x30ed6c
007fad20  90 10 94 e5                                      ldr r1, [r4, #0x90]
007fad24  10 50 ec eb                                      bl #0x30ed6c
007fad28  00 10 a0 e1                                      mov r1, r0
007fad2c  48 00 96 e5                                      ldr r0, [r6, #0x48]
007fad30  9b 4f ec eb                                      bl #0x30eba4
007fad34  48 00 86 e5                                      str r0, [r6, #0x48]
007fad38  14 d0 8d e2                                      add sp, sp, #0x14
007fad3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007fad40  50 30 90 e5                                      ldr r3, [r0, #0x50]
007fad44  0c 10 99 e5                                      ldr r1, [sb, #0xc]
007fad48  54 b0 93 e5                                      ldr fp, [r3, #0x54]
007fad4c  58 30 93 e5                                      ldr r3, [r3, #0x58]
007fad50  0b 00 a0 e1                                      mov r0, fp
007fad54  08 30 8d e5                                      str r3, [sp, #8]
007fad58  03 50 ec eb                                      bl #0x30ed6c
007fad5c  14 10 99 e5                                      ldr r1, [sb, #0x14]
007fad60  00 30 a0 e1                                      mov r3, r0
007fad64  08 00 9d e5                                      ldr r0, [sp, #8]
007fad68  04 30 8d e5                                      str r3, [sp, #4]
007fad6c  fe 4f ec eb                                      bl #0x30ed6c
007fad70  04 30 9d e5                                      ldr r3, [sp, #4]
007fad74  00 10 a0 e1                                      mov r1, r0
007fad78  03 00 a0 e1                                      mov r0, r3
007fad7c  88 4f ec eb                                      bl #0x30eba4
007fad80  0c 00 8d e5                                      str r0, [sp, #0xc]
007fad84  10 10 99 e5                                      ldr r1, [sb, #0x10]
007fad88  0b 00 a0 e1                                      mov r0, fp
007fad8c  f6 4f ec eb                                      bl #0x30ed6c
007fad90  18 10 99 e5                                      ldr r1, [sb, #0x18]
007fad94  00 b0 a0 e1                                      mov fp, r0
007fad98  08 00 9d e5                                      ldr r0, [sp, #8]
007fad9c  f2 4f ec eb                                      bl #0x30ed6c
007fada0  00 10 a0 e1                                      mov r1, r0
007fada4  0b 00 a0 e1                                      mov r0, fp
007fada8  7d 4f ec eb                                      bl #0x30eba4
007fadac  08 00 8d e5                                      str r0, [sp, #8]
007fadb0  1c 10 97 e5                                      ldr r1, [r7, #0x1c]
007fadb4  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
007fadb8  7b 4d ec eb                                      bl #0x30e3ac
007fadbc  20 10 97 e5                                      ldr r1, [r7, #0x20]
007fadc0  00 b0 a0 e1                                      mov fp, r0
007fadc4  70 00 94 e5                                      ldr r0, [r4, #0x70]
007fadc8  77 4d ec eb                                      bl #0x30e3ac
007fadcc  0c 10 97 e5                                      ldr r1, [r7, #0xc]
007fadd0  00 90 a0 e1                                      mov sb, r0
007fadd4  0b 00 a0 e1                                      mov r0, fp
007fadd8  e3 4f ec eb                                      bl #0x30ed6c
007faddc  14 10 97 e5                                      ldr r1, [r7, #0x14]
007fade0  00 30 a0 e1                                      mov r3, r0
007fade4  09 00 a0 e1                                      mov r0, sb
007fade8  04 30 8d e5                                      str r3, [sp, #4]
007fadec  de 4f ec eb                                      bl #0x30ed6c
007fadf0  04 30 9d e5                                      ldr r3, [sp, #4]
007fadf4  00 10 a0 e1                                      mov r1, r0
007fadf8  03 00 a0 e1                                      mov r0, r3
007fadfc  68 4f ec eb                                      bl #0x30eba4
007fae00  00 10 a0 e1                                      mov r1, r0
007fae04  08 00 9d e5                                      ldr r0, [sp, #8]
007fae08  d7 4f ec eb                                      bl #0x30ed6c
007fae0c  10 10 97 e5                                      ldr r1, [r7, #0x10]
007fae10  00 30 a0 e1                                      mov r3, r0
007fae14  0b 00 a0 e1                                      mov r0, fp
007fae18  04 30 8d e5                                      str r3, [sp, #4]
007fae1c  d2 4f ec eb                                      bl #0x30ed6c
007fae20  18 10 97 e5                                      ldr r1, [r7, #0x18]
007fae24  00 b0 a0 e1                                      mov fp, r0
007fae28  09 00 a0 e1                                      mov r0, sb
007fae2c  ce 4f ec eb                                      bl #0x30ed6c
007fae30  00 10 a0 e1                                      mov r1, r0
007fae34  0b 00 a0 e1                                      mov r0, fp
007fae38  59 4f ec eb                                      bl #0x30eba4
007fae3c  00 10 a0 e1                                      mov r1, r0
007fae40  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007fae44  c8 4f ec eb                                      bl #0x30ed6c
007fae48  04 30 9d e5                                      ldr r3, [sp, #4]
007fae4c  00 10 a0 e1                                      mov r1, r0
007fae50  03 00 a0 e1                                      mov r0, r3
007fae54  54 4d ec eb                                      bl #0x30e3ac
007fae58  08 30 9d e5                                      ldr r3, [sp, #8]
007fae5c  00 90 a0 e1                                      mov sb, r0
007fae60  02 11 83 e2                                      add r1, r3, #0x80000000
007fae64  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007fae68  80 10 84 e5                                      str r1, [r4, #0x80]
007fae6c  02 21 83 e2                                      add r2, r3, #0x80000000
007fae70  02 31 80 e2                                      add r3, r0, #0x80000000
007fae74  84 30 84 e5                                      str r3, [r4, #0x84]
007fae78  7c 20 84 e5                                      str r2, [r4, #0x7c]
007fae7c  80 10 97 e5                                      ldr r1, [r7, #0x80]
007fae80  b9 4f ec eb                                      bl #0x30ed6c
007fae84  09 10 a0 e1                                      mov r1, sb
007fae88  b7 4f ec eb                                      bl #0x30ed6c
007fae8c  78 10 97 e5                                      ldr r1, [r7, #0x78]
007fae90  43 4f ec eb                                      bl #0x30eba4
007fae94  05 10 a0 e1                                      mov r1, r5
007fae98  41 4f ec eb                                      bl #0x30eba4
007fae9c  54 30 94 e5                                      ldr r3, [r4, #0x54]
007faea0  00 50 a0 e1                                      mov r5, r0
007faea4  00 00 53 e3                                      cmp r3, #0
007faea8  56 ff ff 1a                                      bne #0x7fac08
007faeac  58 30 94 e5                                      ldr r3, [r4, #0x58]
007faeb0  0c 10 9a e5                                      ldr r1, [sl, #0xc]
007faeb4  54 b0 93 e5                                      ldr fp, [r3, #0x54]
007faeb8  58 90 93 e5                                      ldr sb, [r3, #0x58]
007faebc  0b 00 a0 e1                                      mov r0, fp
007faec0  a9 4f ec eb                                      bl #0x30ed6c
007faec4  14 10 9a e5                                      ldr r1, [sl, #0x14]
007faec8  00 30 a0 e1                                      mov r3, r0
007faecc  09 00 a0 e1                                      mov r0, sb
007faed0  04 30 8d e5                                      str r3, [sp, #4]
007faed4  a4 4f ec eb                                      bl #0x30ed6c
007faed8  04 30 9d e5                                      ldr r3, [sp, #4]
007faedc  00 10 a0 e1                                      mov r1, r0
007faee0  03 00 a0 e1                                      mov r0, r3
007faee4  2e 4f ec eb                                      bl #0x30eba4
007faee8  08 00 8d e5                                      str r0, [sp, #8]
007faeec  10 10 9a e5                                      ldr r1, [sl, #0x10]
007faef0  0b 00 a0 e1                                      mov r0, fp
007faef4  9c 4f ec eb                                      bl #0x30ed6c
007faef8  18 10 9a e5                                      ldr r1, [sl, #0x18]
007faefc  00 b0 a0 e1                                      mov fp, r0
007faf00  09 00 a0 e1                                      mov r0, sb
007faf04  98 4f ec eb                                      bl #0x30ed6c
007faf08  00 10 a0 e1                                      mov r1, r0
007faf0c  0b 00 a0 e1                                      mov r0, fp
007faf10  23 4f ec eb                                      bl #0x30eba4
007faf14  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007faf18  00 a0 a0 e1                                      mov sl, r0
007faf1c  74 00 94 e5                                      ldr r0, [r4, #0x74]
007faf20  21 4d ec eb                                      bl #0x30e3ac
007faf24  20 10 96 e5                                      ldr r1, [r6, #0x20]
007faf28  00 b0 a0 e1                                      mov fp, r0
007faf2c  78 00 94 e5                                      ldr r0, [r4, #0x78]
007faf30  1d 4d ec eb                                      bl #0x30e3ac
007faf34  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007faf38  00 90 a0 e1                                      mov sb, r0
007faf3c  0b 00 a0 e1                                      mov r0, fp
007faf40  89 4f ec eb                                      bl #0x30ed6c
007faf44  14 10 96 e5                                      ldr r1, [r6, #0x14]
007faf48  00 30 a0 e1                                      mov r3, r0
007faf4c  09 00 a0 e1                                      mov r0, sb
007faf50  04 30 8d e5                                      str r3, [sp, #4]
007faf54  84 4f ec eb                                      bl #0x30ed6c
007faf58  04 30 9d e5                                      ldr r3, [sp, #4]
007faf5c  00 10 a0 e1                                      mov r1, r0
007faf60  03 00 a0 e1                                      mov r0, r3
007faf64  0e 4f ec eb                                      bl #0x30eba4
007faf68  00 10 a0 e1                                      mov r1, r0
007faf6c  0a 00 a0 e1                                      mov r0, sl
007faf70  7d 4f ec eb                                      bl #0x30ed6c
007faf74  10 10 96 e5                                      ldr r1, [r6, #0x10]
007faf78  00 30 a0 e1                                      mov r3, r0
007faf7c  0b 00 a0 e1                                      mov r0, fp
007faf80  04 30 8d e5                                      str r3, [sp, #4]
007faf84  78 4f ec eb                                      bl #0x30ed6c
007faf88  18 10 96 e5                                      ldr r1, [r6, #0x18]
007faf8c  00 b0 a0 e1                                      mov fp, r0
007faf90  09 00 a0 e1                                      mov r0, sb
007faf94  74 4f ec eb                                      bl #0x30ed6c
007faf98  00 10 a0 e1                                      mov r1, r0
007faf9c  0b 00 a0 e1                                      mov r0, fp
007fafa0  ff 4e ec eb                                      bl #0x30eba4
007fafa4  00 10 a0 e1                                      mov r1, r0
007fafa8  08 00 9d e5                                      ldr r0, [sp, #8]
007fafac  6e 4f ec eb                                      bl #0x30ed6c
007fafb0  04 30 9d e5                                      ldr r3, [sp, #4]
007fafb4  00 10 a0 e1                                      mov r1, r0
007fafb8  03 00 a0 e1                                      mov r0, r3
007fafbc  fa 4c ec eb                                      bl #0x30e3ac
007fafc0  98 30 94 e5                                      ldr r3, [r4, #0x98]
007fafc4  0a 10 a0 e1                                      mov r1, sl
007fafc8  00 90 a0 e1                                      mov sb, r0
007fafcc  02 a1 83 e2                                      add sl, r3, #0x80000000
007fafd0  0a 00 a0 e1                                      mov r0, sl
007fafd4  64 4f ec eb                                      bl #0x30ed6c
007fafd8  8c 00 84 e5                                      str r0, [r4, #0x8c]
007fafdc  08 10 9d e5                                      ldr r1, [sp, #8]
007fafe0  0a 00 a0 e1                                      mov r0, sl
007fafe4  60 4f ec eb                                      bl #0x30ed6c
007fafe8  09 10 a0 e1                                      mov r1, sb
007fafec  88 00 84 e5                                      str r0, [r4, #0x88]
007faff0  0a 00 a0 e1                                      mov r0, sl
007faff4  5c 4f ec eb                                      bl #0x30ed6c
007faff8  98 30 94 e5                                      ldr r3, [r4, #0x98]
007faffc  90 00 84 e5                                      str r0, [r4, #0x90]
007fb000  03 10 a0 e1                                      mov r1, r3
007fb004  03 00 a0 e1                                      mov r0, r3
007fb008  57 4f ec eb                                      bl #0x30ed6c
007fb00c  80 10 96 e5                                      ldr r1, [r6, #0x80]
007fb010  00 a0 a0 e1                                      mov sl, r0
007fb014  09 00 a0 e1                                      mov r0, sb
007fb018  53 4f ec eb                                      bl #0x30ed6c
007fb01c  09 10 a0 e1                                      mov r1, sb
007fb020  51 4f ec eb                                      bl #0x30ed6c
007fb024  78 10 96 e5                                      ldr r1, [r6, #0x78]
007fb028  dd 4e ec eb                                      bl #0x30eba4
007fb02c  00 10 a0 e1                                      mov r1, r0
007fb030  0a 00 a0 e1                                      mov r0, sl
007fb034  4c 4f ec eb                                      bl #0x30ed6c
007fb038  05 10 a0 e1                                      mov r1, r5
007fb03c  d8 4e ec eb                                      bl #0x30eba4
007fb040  00 10 a0 e1                                      mov r1, r0
007fb044  fa fe ff ea                                      b #0x7fac34

; FUNCTION 0x007fb048, declared_size=456, range_size=456, mode=arm
; class-group: b2GearJoint
; alias: _ZN11b2GearJoint24SolveVelocityConstraintsERK10b2TimeStep
; demangled: b2GearJoint::SolveVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007fb048  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fb04c  04 30 91 e5                                      ldr r3, [r1, #4]
007fb050  00 40 a0 e1                                      mov r4, r0
007fb054  30 60 90 e5                                      ldr r6, [r0, #0x30]
007fb058  01 80 a0 e1                                      mov r8, r1
007fb05c  02 01 83 e2                                      add r0, r3, #0x80000000
007fb060  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
007fb064  40 4f ec eb                                      bl #0x30ed6c
007fb068  40 10 96 e5                                      ldr r1, [r6, #0x40]
007fb06c  00 70 a0 e1                                      mov r7, r0
007fb070  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
007fb074  3c 4f ec eb                                      bl #0x30ed6c
007fb078  44 10 96 e5                                      ldr r1, [r6, #0x44]
007fb07c  00 a0 a0 e1                                      mov sl, r0
007fb080  80 00 94 e5                                      ldr r0, [r4, #0x80]
007fb084  38 4f ec eb                                      bl #0x30ed6c
007fb088  00 10 a0 e1                                      mov r1, r0
007fb08c  0a 00 a0 e1                                      mov r0, sl
007fb090  c3 4e ec eb                                      bl #0x30eba4
007fb094  84 10 94 e5                                      ldr r1, [r4, #0x84]
007fb098  00 a0 a0 e1                                      mov sl, r0
007fb09c  48 00 96 e5                                      ldr r0, [r6, #0x48]
007fb0a0  31 4f ec eb                                      bl #0x30ed6c
007fb0a4  00 10 a0 e1                                      mov r1, r0
007fb0a8  0a 00 a0 e1                                      mov r0, sl
007fb0ac  bc 4e ec eb                                      bl #0x30eba4
007fb0b0  34 50 94 e5                                      ldr r5, [r4, #0x34]
007fb0b4  00 a0 a0 e1                                      mov sl, r0
007fb0b8  88 00 94 e5                                      ldr r0, [r4, #0x88]
007fb0bc  40 10 95 e5                                      ldr r1, [r5, #0x40]
007fb0c0  29 4f ec eb                                      bl #0x30ed6c
007fb0c4  44 10 95 e5                                      ldr r1, [r5, #0x44]
007fb0c8  00 90 a0 e1                                      mov sb, r0
007fb0cc  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
007fb0d0  25 4f ec eb                                      bl #0x30ed6c
007fb0d4  00 10 a0 e1                                      mov r1, r0
007fb0d8  09 00 a0 e1                                      mov r0, sb
007fb0dc  b0 4e ec eb                                      bl #0x30eba4
007fb0e0  00 10 a0 e1                                      mov r1, r0
007fb0e4  0a 00 a0 e1                                      mov r0, sl
007fb0e8  ad 4e ec eb                                      bl #0x30eba4
007fb0ec  90 10 94 e5                                      ldr r1, [r4, #0x90]
007fb0f0  00 a0 a0 e1                                      mov sl, r0
007fb0f4  48 00 95 e5                                      ldr r0, [r5, #0x48]
007fb0f8  1b 4f ec eb                                      bl #0x30ed6c
007fb0fc  00 10 a0 e1                                      mov r1, r0
007fb100  0a 00 a0 e1                                      mov r0, sl
007fb104  a6 4e ec eb                                      bl #0x30eba4
007fb108  00 10 a0 e1                                      mov r1, r0
007fb10c  07 00 a0 e1                                      mov r0, r7
007fb110  15 4f ec eb                                      bl #0x30ed6c
007fb114  00 70 a0 e1                                      mov r7, r0
007fb118  00 10 a0 e1                                      mov r1, r0
007fb11c  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
007fb120  9f 4e ec eb                                      bl #0x30eba4
007fb124  a0 00 84 e5                                      str r0, [r4, #0xa0]
007fb128  00 10 98 e5                                      ldr r1, [r8]
007fb12c  07 00 a0 e1                                      mov r0, r7
007fb130  0d 4f ec eb                                      bl #0x30ed6c
007fb134  78 10 96 e5                                      ldr r1, [r6, #0x78]
007fb138  00 70 a0 e1                                      mov r7, r0
007fb13c  0a 4f ec eb                                      bl #0x30ed6c
007fb140  80 10 94 e5                                      ldr r1, [r4, #0x80]
007fb144  00 a0 a0 e1                                      mov sl, r0
007fb148  07 4f ec eb                                      bl #0x30ed6c
007fb14c  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007fb150  00 80 a0 e1                                      mov r8, r0
007fb154  0a 00 a0 e1                                      mov r0, sl
007fb158  03 4f ec eb                                      bl #0x30ed6c
007fb15c  00 10 a0 e1                                      mov r1, r0
007fb160  40 00 96 e5                                      ldr r0, [r6, #0x40]
007fb164  8e 4e ec eb                                      bl #0x30eba4
007fb168  08 10 a0 e1                                      mov r1, r8
007fb16c  40 00 86 e5                                      str r0, [r6, #0x40]
007fb170  44 00 96 e5                                      ldr r0, [r6, #0x44]
007fb174  8a 4e ec eb                                      bl #0x30eba4
007fb178  80 10 96 e5                                      ldr r1, [r6, #0x80]
007fb17c  44 00 86 e5                                      str r0, [r6, #0x44]
007fb180  07 00 a0 e1                                      mov r0, r7
007fb184  f8 4e ec eb                                      bl #0x30ed6c
007fb188  84 10 94 e5                                      ldr r1, [r4, #0x84]
007fb18c  f6 4e ec eb                                      bl #0x30ed6c
007fb190  00 10 a0 e1                                      mov r1, r0
007fb194  48 00 96 e5                                      ldr r0, [r6, #0x48]
007fb198  81 4e ec eb                                      bl #0x30eba4
007fb19c  48 00 86 e5                                      str r0, [r6, #0x48]
007fb1a0  78 10 95 e5                                      ldr r1, [r5, #0x78]
007fb1a4  07 00 a0 e1                                      mov r0, r7
007fb1a8  ef 4e ec eb                                      bl #0x30ed6c
007fb1ac  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007fb1b0  00 80 a0 e1                                      mov r8, r0
007fb1b4  ec 4e ec eb                                      bl #0x30ed6c
007fb1b8  88 10 94 e5                                      ldr r1, [r4, #0x88]
007fb1bc  00 60 a0 e1                                      mov r6, r0
007fb1c0  08 00 a0 e1                                      mov r0, r8
007fb1c4  e8 4e ec eb                                      bl #0x30ed6c
007fb1c8  00 10 a0 e1                                      mov r1, r0
007fb1cc  40 00 95 e5                                      ldr r0, [r5, #0x40]
007fb1d0  73 4e ec eb                                      bl #0x30eba4
007fb1d4  06 10 a0 e1                                      mov r1, r6
007fb1d8  40 00 85 e5                                      str r0, [r5, #0x40]
007fb1dc  44 00 95 e5                                      ldr r0, [r5, #0x44]
007fb1e0  6f 4e ec eb                                      bl #0x30eba4
007fb1e4  80 10 95 e5                                      ldr r1, [r5, #0x80]
007fb1e8  44 00 85 e5                                      str r0, [r5, #0x44]
007fb1ec  07 00 a0 e1                                      mov r0, r7
007fb1f0  dd 4e ec eb                                      bl #0x30ed6c
007fb1f4  90 10 94 e5                                      ldr r1, [r4, #0x90]
007fb1f8  db 4e ec eb                                      bl #0x30ed6c
007fb1fc  00 10 a0 e1                                      mov r1, r0
007fb200  48 00 95 e5                                      ldr r0, [r5, #0x48]
007fb204  66 4e ec eb                                      bl #0x30eba4
007fb208  48 00 85 e5                                      str r0, [r5, #0x48]
007fb20c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007fb210, declared_size=144, range_size=144, mode=arm
; class-group: b2GearJoint
; alias: _ZNK11b2GearJoint10GetAnchor1Ev
; demangled: b2GearJoint::GetAnchor1() const
; decoder-mode: arm
007fb210  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fb214  30 40 91 e5                                      ldr r4, [r1, #0x30]
007fb218  6c 70 91 e5                                      ldr r7, [r1, #0x6c]
007fb21c  70 60 91 e5                                      ldr r6, [r1, #0x70]
007fb220  00 50 a0 e1                                      mov r5, r0
007fb224  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007fb228  07 00 a0 e1                                      mov r0, r7
007fb22c  ce 4e ec eb                                      bl #0x30ed6c
007fb230  14 10 94 e5                                      ldr r1, [r4, #0x14]
007fb234  00 80 a0 e1                                      mov r8, r0
007fb238  06 00 a0 e1                                      mov r0, r6
007fb23c  ca 4e ec eb                                      bl #0x30ed6c
007fb240  00 10 a0 e1                                      mov r1, r0
007fb244  08 00 a0 e1                                      mov r0, r8
007fb248  55 4e ec eb                                      bl #0x30eba4
007fb24c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007fb250  00 80 a0 e1                                      mov r8, r0
007fb254  07 00 a0 e1                                      mov r0, r7
007fb258  c3 4e ec eb                                      bl #0x30ed6c
007fb25c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007fb260  00 70 a0 e1                                      mov r7, r0
007fb264  06 00 a0 e1                                      mov r0, r6
007fb268  bf 4e ec eb                                      bl #0x30ed6c
007fb26c  00 10 a0 e1                                      mov r1, r0
007fb270  07 00 a0 e1                                      mov r0, r7
007fb274  4a 4e ec eb                                      bl #0x30eba4
007fb278  08 10 94 e5                                      ldr r1, [r4, #8]
007fb27c  48 4e ec eb                                      bl #0x30eba4
007fb280  04 10 94 e5                                      ldr r1, [r4, #4]
007fb284  00 60 a0 e1                                      mov r6, r0
007fb288  08 00 a0 e1                                      mov r0, r8
007fb28c  44 4e ec eb                                      bl #0x30eba4
007fb290  04 60 85 e5                                      str r6, [r5, #4]
007fb294  00 00 85 e5                                      str r0, [r5]
007fb298  05 00 a0 e1                                      mov r0, r5
007fb29c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fb2a0, declared_size=144, range_size=144, mode=arm
; class-group: b2GearJoint
; alias: _ZNK11b2GearJoint10GetAnchor2Ev
; demangled: b2GearJoint::GetAnchor2() const
; decoder-mode: arm
007fb2a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fb2a4  34 40 91 e5                                      ldr r4, [r1, #0x34]
007fb2a8  74 70 91 e5                                      ldr r7, [r1, #0x74]
007fb2ac  78 60 91 e5                                      ldr r6, [r1, #0x78]
007fb2b0  00 50 a0 e1                                      mov r5, r0
007fb2b4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007fb2b8  07 00 a0 e1                                      mov r0, r7
007fb2bc  aa 4e ec eb                                      bl #0x30ed6c
007fb2c0  14 10 94 e5                                      ldr r1, [r4, #0x14]
007fb2c4  00 80 a0 e1                                      mov r8, r0
007fb2c8  06 00 a0 e1                                      mov r0, r6
007fb2cc  a6 4e ec eb                                      bl #0x30ed6c
007fb2d0  00 10 a0 e1                                      mov r1, r0
007fb2d4  08 00 a0 e1                                      mov r0, r8
007fb2d8  31 4e ec eb                                      bl #0x30eba4
007fb2dc  10 10 94 e5                                      ldr r1, [r4, #0x10]
007fb2e0  00 80 a0 e1                                      mov r8, r0
007fb2e4  07 00 a0 e1                                      mov r0, r7
007fb2e8  9f 4e ec eb                                      bl #0x30ed6c
007fb2ec  18 10 94 e5                                      ldr r1, [r4, #0x18]
007fb2f0  00 70 a0 e1                                      mov r7, r0
007fb2f4  06 00 a0 e1                                      mov r0, r6
007fb2f8  9b 4e ec eb                                      bl #0x30ed6c
007fb2fc  00 10 a0 e1                                      mov r1, r0
007fb300  07 00 a0 e1                                      mov r0, r7
007fb304  26 4e ec eb                                      bl #0x30eba4
007fb308  08 10 94 e5                                      ldr r1, [r4, #8]
007fb30c  24 4e ec eb                                      bl #0x30eba4
007fb310  04 10 94 e5                                      ldr r1, [r4, #4]
007fb314  00 60 a0 e1                                      mov r6, r0
007fb318  08 00 a0 e1                                      mov r0, r8
007fb31c  20 4e ec eb                                      bl #0x30eba4
007fb320  04 60 85 e5                                      str r6, [r5, #4]
007fb324  00 00 85 e5                                      str r0, [r5]
007fb328  05 00 a0 e1                                      mov r0, r5
007fb32c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fb330, declared_size=60, range_size=60, mode=arm
; class-group: b2GearJoint
; alias: _ZNK11b2GearJoint16GetReactionForceEv
; demangled: b2GearJoint::GetReactionForce() const
; decoder-mode: arm
007fb330  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fb334  a0 60 91 e5                                      ldr r6, [r1, #0xa0]
007fb338  00 40 a0 e1                                      mov r4, r0
007fb33c  01 50 a0 e1                                      mov r5, r1
007fb340  06 00 a0 e1                                      mov r0, r6
007fb344  8c 10 91 e5                                      ldr r1, [r1, #0x8c]
007fb348  87 4e ec eb                                      bl #0x30ed6c
007fb34c  88 10 95 e5                                      ldr r1, [r5, #0x88]
007fb350  00 70 a0 e1                                      mov r7, r0
007fb354  06 00 a0 e1                                      mov r0, r6
007fb358  83 4e ec eb                                      bl #0x30ed6c
007fb35c  04 70 84 e5                                      str r7, [r4, #4]
007fb360  00 00 84 e5                                      str r0, [r4]
007fb364  04 00 a0 e1                                      mov r0, r4
007fb368  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fb36c, declared_size=232, range_size=232, mode=arm
; class-group: b2GearJoint
; alias: _ZNK11b2GearJoint17GetReactionTorqueEv
; demangled: b2GearJoint::GetReactionTorque() const
; decoder-mode: arm
007fb36c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fb370  34 50 90 e5                                      ldr r5, [r0, #0x34]
007fb374  00 40 a0 e1                                      mov r4, r0
007fb378  74 00 90 e5                                      ldr r0, [r0, #0x74]
007fb37c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007fb380  09 4c ec eb                                      bl #0x30e3ac
007fb384  20 10 95 e5                                      ldr r1, [r5, #0x20]
007fb388  00 70 a0 e1                                      mov r7, r0
007fb38c  78 00 94 e5                                      ldr r0, [r4, #0x78]
007fb390  05 4c ec eb                                      bl #0x30e3ac
007fb394  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007fb398  00 60 a0 e1                                      mov r6, r0
007fb39c  07 00 a0 e1                                      mov r0, r7
007fb3a0  71 4e ec eb                                      bl #0x30ed6c
007fb3a4  14 10 95 e5                                      ldr r1, [r5, #0x14]
007fb3a8  00 80 a0 e1                                      mov r8, r0
007fb3ac  06 00 a0 e1                                      mov r0, r6
007fb3b0  6d 4e ec eb                                      bl #0x30ed6c
007fb3b4  00 10 a0 e1                                      mov r1, r0
007fb3b8  08 00 a0 e1                                      mov r0, r8
007fb3bc  f8 4d ec eb                                      bl #0x30eba4
007fb3c0  10 10 95 e5                                      ldr r1, [r5, #0x10]
007fb3c4  00 a0 a0 e1                                      mov sl, r0
007fb3c8  07 00 a0 e1                                      mov r0, r7
007fb3cc  66 4e ec eb                                      bl #0x30ed6c
007fb3d0  18 10 95 e5                                      ldr r1, [r5, #0x18]
007fb3d4  00 70 a0 e1                                      mov r7, r0
007fb3d8  06 00 a0 e1                                      mov r0, r6
007fb3dc  62 4e ec eb                                      bl #0x30ed6c
007fb3e0  00 10 a0 e1                                      mov r1, r0
007fb3e4  07 00 a0 e1                                      mov r0, r7
007fb3e8  ed 4d ec eb                                      bl #0x30eba4
007fb3ec  a0 50 94 e5                                      ldr r5, [r4, #0xa0]
007fb3f0  00 80 a0 e1                                      mov r8, r0
007fb3f4  90 10 94 e5                                      ldr r1, [r4, #0x90]
007fb3f8  05 00 a0 e1                                      mov r0, r5
007fb3fc  5a 4e ec eb                                      bl #0x30ed6c
007fb400  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007fb404  00 60 a0 e1                                      mov r6, r0
007fb408  05 00 a0 e1                                      mov r0, r5
007fb40c  56 4e ec eb                                      bl #0x30ed6c
007fb410  00 10 a0 e1                                      mov r1, r0
007fb414  0a 00 a0 e1                                      mov r0, sl
007fb418  53 4e ec eb                                      bl #0x30ed6c
007fb41c  88 10 94 e5                                      ldr r1, [r4, #0x88]
007fb420  00 70 a0 e1                                      mov r7, r0
007fb424  05 00 a0 e1                                      mov r0, r5
007fb428  4f 4e ec eb                                      bl #0x30ed6c
007fb42c  00 10 a0 e1                                      mov r1, r0
007fb430  08 00 a0 e1                                      mov r0, r8
007fb434  4c 4e ec eb                                      bl #0x30ed6c
007fb438  00 10 a0 e1                                      mov r1, r0
007fb43c  07 00 a0 e1                                      mov r0, r7
007fb440  d9 4b ec eb                                      bl #0x30e3ac
007fb444  00 10 a0 e1                                      mov r1, r0
007fb448  06 00 a0 e1                                      mov r0, r6
007fb44c  d6 4b ec eb                                      bl #0x30e3ac
007fb450  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007fb454, declared_size=8, range_size=8, mode=arm
; class-group: b2GearJoint
; alias: _ZNK11b2GearJoint8GetRatioEv
; demangled: b2GearJoint::GetRatio() const
; decoder-mode: arm
007fb454  98 00 90 e5                                      ldr r0, [r0, #0x98]
007fb458  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fb45c, declared_size=4, range_size=4, mode=arm
; class-group: b2GearJoint
; alias: _ZN11b2GearJointD1Ev
; demangled: b2GearJoint::~b2GearJoint()
; decoder-mode: arm
007fb45c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fb460, declared_size=20, range_size=20, mode=arm
; class-group: b2GearJoint
; alias: _ZN11b2GearJointD0Ev
; demangled: b2GearJoint::~b2GearJoint()
; decoder-mode: arm
007fb460  10 40 2d e9                                      push {r4, lr}
007fb464  00 40 a0 e1                                      mov r4, r0
007fb468  90 4b ec eb                                      bl #0x30e2b0
007fb46c  04 00 a0 e1                                      mov r0, r4
007fb470  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fb474, declared_size=376, range_size=376, mode=arm
; class-group: b2GearJoint
; alias: _ZN11b2GearJoint24SolvePositionConstraintsEv
; demangled: b2GearJoint::SolvePositionConstraints()
; decoder-mode: arm
007fb474  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fb478  00 40 a0 e1                                      mov r4, r0
007fb47c  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
007fb480  30 60 94 e5                                      ldr r6, [r4, #0x30]
007fb484  34 50 94 e5                                      ldr r5, [r4, #0x34]
007fb488  00 00 50 e3                                      cmp r0, #0
007fb48c  4d 00 00 0a                                      beq #0x7fb5c8
007fb490  a9 dd ff eb                                      bl #0x7f2b3c
007fb494  00 80 a0 e1                                      mov r8, r0
007fb498  54 00 94 e5                                      ldr r0, [r4, #0x54]
007fb49c  00 00 50 e3                                      cmp r0, #0
007fb4a0  4e 00 00 0a                                      beq #0x7fb5e0
007fb4a4  a4 dd ff eb                                      bl #0x7f2b3c
007fb4a8  98 10 94 e5                                      ldr r1, [r4, #0x98]
007fb4ac  2e 4e ec eb                                      bl #0x30ed6c
007fb4b0  08 10 a0 e1                                      mov r1, r8
007fb4b4  ba 4d ec eb                                      bl #0x30eba4
007fb4b8  00 10 a0 e1                                      mov r1, r0
007fb4bc  94 00 94 e5                                      ldr r0, [r4, #0x94]
007fb4c0  b9 4b ec eb                                      bl #0x30e3ac
007fb4c4  9c 70 94 e5                                      ldr r7, [r4, #0x9c]
007fb4c8  00 10 a0 e1                                      mov r1, r0
007fb4cc  02 71 87 e2                                      add r7, r7, #0x80000000
007fb4d0  07 00 a0 e1                                      mov r0, r7
007fb4d4  24 4e ec eb                                      bl #0x30ed6c
007fb4d8  78 10 96 e5                                      ldr r1, [r6, #0x78]
007fb4dc  00 70 a0 e1                                      mov r7, r0
007fb4e0  21 4e ec eb                                      bl #0x30ed6c
007fb4e4  80 10 94 e5                                      ldr r1, [r4, #0x80]
007fb4e8  00 a0 a0 e1                                      mov sl, r0
007fb4ec  1e 4e ec eb                                      bl #0x30ed6c
007fb4f0  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007fb4f4  00 80 a0 e1                                      mov r8, r0
007fb4f8  0a 00 a0 e1                                      mov r0, sl
007fb4fc  1a 4e ec eb                                      bl #0x30ed6c
007fb500  00 10 a0 e1                                      mov r1, r0
007fb504  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
007fb508  a5 4d ec eb                                      bl #0x30eba4
007fb50c  08 10 a0 e1                                      mov r1, r8
007fb510  2c 00 86 e5                                      str r0, [r6, #0x2c]
007fb514  30 00 96 e5                                      ldr r0, [r6, #0x30]
007fb518  a1 4d ec eb                                      bl #0x30eba4
007fb51c  80 10 96 e5                                      ldr r1, [r6, #0x80]
007fb520  30 00 86 e5                                      str r0, [r6, #0x30]
007fb524  07 00 a0 e1                                      mov r0, r7
007fb528  0f 4e ec eb                                      bl #0x30ed6c
007fb52c  84 10 94 e5                                      ldr r1, [r4, #0x84]
007fb530  0d 4e ec eb                                      bl #0x30ed6c
007fb534  00 10 a0 e1                                      mov r1, r0
007fb538  38 00 96 e5                                      ldr r0, [r6, #0x38]
007fb53c  98 4d ec eb                                      bl #0x30eba4
007fb540  38 00 86 e5                                      str r0, [r6, #0x38]
007fb544  78 10 95 e5                                      ldr r1, [r5, #0x78]
007fb548  07 00 a0 e1                                      mov r0, r7
007fb54c  06 4e ec eb                                      bl #0x30ed6c
007fb550  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007fb554  00 a0 a0 e1                                      mov sl, r0
007fb558  03 4e ec eb                                      bl #0x30ed6c
007fb55c  88 10 94 e5                                      ldr r1, [r4, #0x88]
007fb560  00 80 a0 e1                                      mov r8, r0
007fb564  0a 00 a0 e1                                      mov r0, sl
007fb568  ff 4d ec eb                                      bl #0x30ed6c
007fb56c  00 10 a0 e1                                      mov r1, r0
007fb570  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
007fb574  8a 4d ec eb                                      bl #0x30eba4
007fb578  08 10 a0 e1                                      mov r1, r8
007fb57c  2c 00 85 e5                                      str r0, [r5, #0x2c]
007fb580  30 00 95 e5                                      ldr r0, [r5, #0x30]
007fb584  86 4d ec eb                                      bl #0x30eba4
007fb588  30 00 85 e5                                      str r0, [r5, #0x30]
007fb58c  80 10 95 e5                                      ldr r1, [r5, #0x80]
007fb590  07 00 a0 e1                                      mov r0, r7
007fb594  f4 4d ec eb                                      bl #0x30ed6c
007fb598  90 10 94 e5                                      ldr r1, [r4, #0x90]
007fb59c  f2 4d ec eb                                      bl #0x30ed6c
007fb5a0  00 10 a0 e1                                      mov r1, r0
007fb5a4  38 00 95 e5                                      ldr r0, [r5, #0x38]
007fb5a8  7d 4d ec eb                                      bl #0x30eba4
007fb5ac  38 00 85 e5                                      str r0, [r5, #0x38]
007fb5b0  06 00 a0 e1                                      mov r0, r6
007fb5b4  18 b0 ff eb                                      bl #0x7e761c
007fb5b8  05 00 a0 e1                                      mov r0, r5
007fb5bc  16 b0 ff eb                                      bl #0x7e761c
007fb5c0  01 00 a0 e3                                      mov r0, #1
007fb5c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007fb5c8  50 00 94 e5                                      ldr r0, [r4, #0x50]
007fb5cc  38 cd ff eb                                      bl #0x7eeab4
007fb5d0  00 80 a0 e1                                      mov r8, r0
007fb5d4  54 00 94 e5                                      ldr r0, [r4, #0x54]
007fb5d8  00 00 50 e3                                      cmp r0, #0
007fb5dc  b0 ff ff 1a                                      bne #0x7fb4a4
007fb5e0  58 00 94 e5                                      ldr r0, [r4, #0x58]
007fb5e4  32 cd ff eb                                      bl #0x7eeab4
007fb5e8  ae ff ff ea                                      b #0x7fb4a8

; FUNCTION 0x007fb5ec, declared_size=424, range_size=424, mode=arm
; class-group: b2GearJoint
; alias: _ZN11b2GearJointC1EPK14b2GearJointDef
; demangled: b2GearJoint::b2GearJoint(b2GearJointDef const*)
; decoder-mode: arm
007fb5ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fb5f0  94 61 9f e5                                      ldr r6, [pc, #0x194]
007fb5f4  00 40 a0 e1                                      mov r4, r0
007fb5f8  01 50 a0 e1                                      mov r5, r1
007fb5fc  f7 be ff eb                                      bl #0x7eb1e0
007fb600  88 21 9f e5                                      ldr r2, [pc, #0x188]
007fb604  06 60 8f e0                                      add r6, pc, r6
007fb608  00 30 a0 e3                                      mov r3, #0
007fb60c  02 20 96 e7                                      ldr r2, [r6, r2]
007fb610  08 20 82 e2                                      add r2, r2, #8
007fb614  00 20 84 e5                                      str r2, [r4]
007fb618  14 20 95 e5                                      ldr r2, [r5, #0x14]
007fb61c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007fb620  04 20 92 e5                                      ldr r2, [r2, #4]
007fb624  04 70 91 e5                                      ldr r7, [r1, #4]
007fb628  58 30 84 e5                                      str r3, [r4, #0x58]
007fb62c  4c 30 84 e5                                      str r3, [r4, #0x4c]
007fb630  50 30 84 e5                                      str r3, [r4, #0x50]
007fb634  54 30 84 e5                                      str r3, [r4, #0x54]
007fb638  14 30 95 e5                                      ldr r3, [r5, #0x14]
007fb63c  01 00 52 e3                                      cmp r2, #1
007fb640  30 30 93 e5                                      ldr r3, [r3, #0x30]
007fb644  44 30 84 e5                                      str r3, [r4, #0x44]
007fb648  14 30 95 e5                                      ldr r3, [r5, #0x14]
007fb64c  34 30 93 e5                                      ldr r3, [r3, #0x34]
007fb650  30 30 84 e5                                      str r3, [r4, #0x30]
007fb654  2a 00 00 0a                                      beq #0x7fb704
007fb658  14 30 95 e5                                      ldr r3, [r5, #0x14]
007fb65c  50 30 84 e5                                      str r3, [r4, #0x50]
007fb660  44 20 93 e5                                      ldr r2, [r3, #0x44]
007fb664  03 00 a0 e1                                      mov r0, r3
007fb668  5c 20 84 e5                                      str r2, [r4, #0x5c]
007fb66c  48 20 93 e5                                      ldr r2, [r3, #0x48]
007fb670  60 20 84 e5                                      str r2, [r4, #0x60]
007fb674  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
007fb678  6c 20 84 e5                                      str r2, [r4, #0x6c]
007fb67c  50 30 93 e5                                      ldr r3, [r3, #0x50]
007fb680  70 30 84 e5                                      str r3, [r4, #0x70]
007fb684  0a cd ff eb                                      bl #0x7eeab4
007fb688  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb68c  01 00 57 e3                                      cmp r7, #1
007fb690  00 60 a0 e1                                      mov r6, r0
007fb694  30 30 93 e5                                      ldr r3, [r3, #0x30]
007fb698  48 30 84 e5                                      str r3, [r4, #0x48]
007fb69c  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb6a0  34 30 93 e5                                      ldr r3, [r3, #0x34]
007fb6a4  34 30 84 e5                                      str r3, [r4, #0x34]
007fb6a8  2a 00 00 0a                                      beq #0x7fb758
007fb6ac  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb6b0  58 30 84 e5                                      str r3, [r4, #0x58]
007fb6b4  44 20 93 e5                                      ldr r2, [r3, #0x44]
007fb6b8  03 00 a0 e1                                      mov r0, r3
007fb6bc  64 20 84 e5                                      str r2, [r4, #0x64]
007fb6c0  48 20 93 e5                                      ldr r2, [r3, #0x48]
007fb6c4  68 20 84 e5                                      str r2, [r4, #0x68]
007fb6c8  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
007fb6cc  74 20 84 e5                                      str r2, [r4, #0x74]
007fb6d0  50 30 93 e5                                      ldr r3, [r3, #0x50]
007fb6d4  78 30 84 e5                                      str r3, [r4, #0x78]
007fb6d8  f5 cc ff eb                                      bl #0x7eeab4
007fb6dc  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007fb6e0  98 10 84 e5                                      str r1, [r4, #0x98]
007fb6e4  a0 4d ec eb                                      bl #0x30ed6c
007fb6e8  06 10 a0 e1                                      mov r1, r6
007fb6ec  2c 4d ec eb                                      bl #0x30eba4
007fb6f0  00 30 a0 e3                                      mov r3, #0
007fb6f4  94 00 84 e5                                      str r0, [r4, #0x94]
007fb6f8  a0 30 84 e5                                      str r3, [r4, #0xa0]
007fb6fc  04 00 a0 e1                                      mov r0, r4
007fb700  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fb704  14 30 95 e5                                      ldr r3, [r5, #0x14]
007fb708  4c 30 84 e5                                      str r3, [r4, #0x4c]
007fb70c  44 20 93 e5                                      ldr r2, [r3, #0x44]
007fb710  03 00 a0 e1                                      mov r0, r3
007fb714  5c 20 84 e5                                      str r2, [r4, #0x5c]
007fb718  48 20 93 e5                                      ldr r2, [r3, #0x48]
007fb71c  60 20 84 e5                                      str r2, [r4, #0x60]
007fb720  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
007fb724  6c 20 84 e5                                      str r2, [r4, #0x6c]
007fb728  50 30 93 e5                                      ldr r3, [r3, #0x50]
007fb72c  70 30 84 e5                                      str r3, [r4, #0x70]
007fb730  01 dd ff eb                                      bl #0x7f2b3c
007fb734  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb738  01 00 57 e3                                      cmp r7, #1
007fb73c  00 60 a0 e1                                      mov r6, r0
007fb740  30 30 93 e5                                      ldr r3, [r3, #0x30]
007fb744  48 30 84 e5                                      str r3, [r4, #0x48]
007fb748  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb74c  34 30 93 e5                                      ldr r3, [r3, #0x34]
007fb750  34 30 84 e5                                      str r3, [r4, #0x34]
007fb754  d4 ff ff 1a                                      bne #0x7fb6ac
007fb758  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb75c  54 30 84 e5                                      str r3, [r4, #0x54]
007fb760  44 20 93 e5                                      ldr r2, [r3, #0x44]
007fb764  03 00 a0 e1                                      mov r0, r3
007fb768  64 20 84 e5                                      str r2, [r4, #0x64]
007fb76c  48 20 93 e5                                      ldr r2, [r3, #0x48]
007fb770  68 20 84 e5                                      str r2, [r4, #0x68]
007fb774  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
007fb778  74 20 84 e5                                      str r2, [r4, #0x74]
007fb77c  50 30 93 e5                                      ldr r3, [r3, #0x50]
007fb780  78 30 84 e5                                      str r3, [r4, #0x78]
007fb784  ec dc ff eb                                      bl #0x7f2b3c
007fb788  d3 ff ff ea                                      b #0x7fb6dc
; mapping-symbol data/literal pool
007fb78c  8c 94 19 00 b8 35 00 00                          .byte 0x8c, 0x94, 0x19, 0x00, 0xb8, 0x35, 0x00, 0x00

; FUNCTION 0x007fb794, declared_size=424, range_size=424, mode=arm
; class-group: b2GearJoint
; alias: _ZN11b2GearJointC2EPK14b2GearJointDef
; demangled: b2GearJoint::b2GearJoint(b2GearJointDef const*)
; decoder-mode: arm
007fb794  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fb798  94 61 9f e5                                      ldr r6, [pc, #0x194]
007fb79c  00 40 a0 e1                                      mov r4, r0
007fb7a0  01 50 a0 e1                                      mov r5, r1
007fb7a4  8d be ff eb                                      bl #0x7eb1e0
007fb7a8  88 21 9f e5                                      ldr r2, [pc, #0x188]
007fb7ac  06 60 8f e0                                      add r6, pc, r6
007fb7b0  00 30 a0 e3                                      mov r3, #0
007fb7b4  02 20 96 e7                                      ldr r2, [r6, r2]
007fb7b8  08 20 82 e2                                      add r2, r2, #8
007fb7bc  00 20 84 e5                                      str r2, [r4]
007fb7c0  14 20 95 e5                                      ldr r2, [r5, #0x14]
007fb7c4  18 10 95 e5                                      ldr r1, [r5, #0x18]
007fb7c8  04 20 92 e5                                      ldr r2, [r2, #4]
007fb7cc  04 70 91 e5                                      ldr r7, [r1, #4]
007fb7d0  58 30 84 e5                                      str r3, [r4, #0x58]
007fb7d4  4c 30 84 e5                                      str r3, [r4, #0x4c]
007fb7d8  50 30 84 e5                                      str r3, [r4, #0x50]
007fb7dc  54 30 84 e5                                      str r3, [r4, #0x54]
007fb7e0  14 30 95 e5                                      ldr r3, [r5, #0x14]
007fb7e4  01 00 52 e3                                      cmp r2, #1
007fb7e8  30 30 93 e5                                      ldr r3, [r3, #0x30]
007fb7ec  44 30 84 e5                                      str r3, [r4, #0x44]
007fb7f0  14 30 95 e5                                      ldr r3, [r5, #0x14]
007fb7f4  34 30 93 e5                                      ldr r3, [r3, #0x34]
007fb7f8  30 30 84 e5                                      str r3, [r4, #0x30]
007fb7fc  2a 00 00 0a                                      beq #0x7fb8ac
007fb800  14 30 95 e5                                      ldr r3, [r5, #0x14]
007fb804  50 30 84 e5                                      str r3, [r4, #0x50]
007fb808  44 20 93 e5                                      ldr r2, [r3, #0x44]
007fb80c  03 00 a0 e1                                      mov r0, r3
007fb810  5c 20 84 e5                                      str r2, [r4, #0x5c]
007fb814  48 20 93 e5                                      ldr r2, [r3, #0x48]
007fb818  60 20 84 e5                                      str r2, [r4, #0x60]
007fb81c  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
007fb820  6c 20 84 e5                                      str r2, [r4, #0x6c]
007fb824  50 30 93 e5                                      ldr r3, [r3, #0x50]
007fb828  70 30 84 e5                                      str r3, [r4, #0x70]
007fb82c  a0 cc ff eb                                      bl #0x7eeab4
007fb830  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb834  01 00 57 e3                                      cmp r7, #1
007fb838  00 60 a0 e1                                      mov r6, r0
007fb83c  30 30 93 e5                                      ldr r3, [r3, #0x30]
007fb840  48 30 84 e5                                      str r3, [r4, #0x48]
007fb844  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb848  34 30 93 e5                                      ldr r3, [r3, #0x34]
007fb84c  34 30 84 e5                                      str r3, [r4, #0x34]
007fb850  2a 00 00 0a                                      beq #0x7fb900
007fb854  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb858  58 30 84 e5                                      str r3, [r4, #0x58]
007fb85c  44 20 93 e5                                      ldr r2, [r3, #0x44]
007fb860  03 00 a0 e1                                      mov r0, r3
007fb864  64 20 84 e5                                      str r2, [r4, #0x64]
007fb868  48 20 93 e5                                      ldr r2, [r3, #0x48]
007fb86c  68 20 84 e5                                      str r2, [r4, #0x68]
007fb870  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
007fb874  74 20 84 e5                                      str r2, [r4, #0x74]
007fb878  50 30 93 e5                                      ldr r3, [r3, #0x50]
007fb87c  78 30 84 e5                                      str r3, [r4, #0x78]
007fb880  8b cc ff eb                                      bl #0x7eeab4
007fb884  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007fb888  98 10 84 e5                                      str r1, [r4, #0x98]
007fb88c  36 4d ec eb                                      bl #0x30ed6c
007fb890  06 10 a0 e1                                      mov r1, r6
007fb894  c2 4c ec eb                                      bl #0x30eba4
007fb898  00 30 a0 e3                                      mov r3, #0
007fb89c  94 00 84 e5                                      str r0, [r4, #0x94]
007fb8a0  a0 30 84 e5                                      str r3, [r4, #0xa0]
007fb8a4  04 00 a0 e1                                      mov r0, r4
007fb8a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fb8ac  14 30 95 e5                                      ldr r3, [r5, #0x14]
007fb8b0  4c 30 84 e5                                      str r3, [r4, #0x4c]
007fb8b4  44 20 93 e5                                      ldr r2, [r3, #0x44]
007fb8b8  03 00 a0 e1                                      mov r0, r3
007fb8bc  5c 20 84 e5                                      str r2, [r4, #0x5c]
007fb8c0  48 20 93 e5                                      ldr r2, [r3, #0x48]
007fb8c4  60 20 84 e5                                      str r2, [r4, #0x60]
007fb8c8  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
007fb8cc  6c 20 84 e5                                      str r2, [r4, #0x6c]
007fb8d0  50 30 93 e5                                      ldr r3, [r3, #0x50]
007fb8d4  70 30 84 e5                                      str r3, [r4, #0x70]
007fb8d8  97 dc ff eb                                      bl #0x7f2b3c
007fb8dc  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb8e0  01 00 57 e3                                      cmp r7, #1
007fb8e4  00 60 a0 e1                                      mov r6, r0
007fb8e8  30 30 93 e5                                      ldr r3, [r3, #0x30]
007fb8ec  48 30 84 e5                                      str r3, [r4, #0x48]
007fb8f0  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb8f4  34 30 93 e5                                      ldr r3, [r3, #0x34]
007fb8f8  34 30 84 e5                                      str r3, [r4, #0x34]
007fb8fc  d4 ff ff 1a                                      bne #0x7fb854
007fb900  18 30 95 e5                                      ldr r3, [r5, #0x18]
007fb904  54 30 84 e5                                      str r3, [r4, #0x54]
007fb908  44 20 93 e5                                      ldr r2, [r3, #0x44]
007fb90c  03 00 a0 e1                                      mov r0, r3
007fb910  64 20 84 e5                                      str r2, [r4, #0x64]
007fb914  48 20 93 e5                                      ldr r2, [r3, #0x48]
007fb918  68 20 84 e5                                      str r2, [r4, #0x68]
007fb91c  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
007fb920  74 20 84 e5                                      str r2, [r4, #0x74]
007fb924  50 30 93 e5                                      ldr r3, [r3, #0x50]
007fb928  78 30 84 e5                                      str r3, [r4, #0x78]
007fb92c  82 dc ff eb                                      bl #0x7f2b3c
007fb930  d3 ff ff ea                                      b #0x7fb884
; mapping-symbol data/literal pool
007fb934  e4 92 19 00 b8 35 00 00                          .byte 0xe4, 0x92, 0x19, 0x00, 0xb8, 0x35, 0x00, 0x00
