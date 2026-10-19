; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a55d0, declared_size=96, range_size=96, mode=thumb
; class-group: std::priv::_WTime_Info
; alias: _ZNSt4priv11_WTime_InfoD1Ev
; demangled: std::priv::_WTime_Info::~_WTime_Info()
; decoder-mode: thumb
008a55d0  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a55d2  16 4b                                            ldr r3, [pc, #0x58]
008a55d4  06 1c                                            adds r6, r0, #0
008a55d6  c5 18                                            adds r5, r0, r3
008a55d8  00 2d                                            cmp r5, #0
008a55da  07 d0                                            beq #0x8a55ec
008a55dc  90 33                                            adds r3, #0x90
008a55de  c4 18                                            adds r4, r0, r3
008a55e0  48 3c                                            subs r4, #0x48
008a55e2  20 1c                                            adds r0, r4, #0
008a55e4  73 f6 e4 e6                                      blx #0x3193b0
008a55e8  ac 42                                            cmp r4, r5
008a55ea  f9 d1                                            bne #0x8a55e0
008a55ec  8d 23                                            movs r3, #0x8d
008a55ee  db 00                                            lsls r3, r3, #3
008a55f0  f7 18                                            adds r7, r6, r3
008a55f2  00 2f                                            cmp r7, #0
008a55f4  0b d0                                            beq #0x8a560e
008a55f6  ae 23                                            movs r3, #0xae
008a55f8  1b 01                                            lsls r3, r3, #4
008a55fa  f4 18                                            adds r4, r6, r3
008a55fc  84 23                                            movs r3, #0x84
008a55fe  db 00                                            lsls r3, r3, #3
008a5600  f5 18                                            adds r5, r6, r3
008a5602  20 1c                                            adds r0, r4, #0
008a5604  48 3c                                            subs r4, #0x48
008a5606  73 f6 d4 e6                                      blx #0x3193b0
008a560a  ac 42                                            cmp r4, r5
008a560c  f9 d1                                            bne #0x8a5602
008a560e  34 1c                                            adds r4, r6, #0
008a5610  78 34                                            adds r4, #0x78
008a5612  00 2c                                            cmp r4, #0
008a5614  05 d0                                            beq #0x8a5622
008a5616  48 3f                                            subs r7, #0x48
008a5618  38 1c                                            adds r0, r7, #0
008a561a  73 f6 ca e6                                      blx #0x3193b0
008a561e  a7 42                                            cmp r7, r4
008a5620  f9 d1                                            bne #0x8a5616
008a5622  30 1c                                            adds r0, r6, #0
008a5624  ff f7 be ff                                      bl #0x8a55a4
008a5628  30 1c                                            adds r0, r6, #0
008a562a  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008a562c  28 0b 00 00                                      .byte 0x28, 0x0b, 0x00, 0x00

; FUNCTION 0x008bbbd0, declared_size=148, range_size=148, mode=thumb
; class-group: std::priv::_WTime_Info
; alias: _ZNSt4priv11_WTime_InfoC1Ev
; demangled: std::priv::_WTime_Info::_WTime_Info()
; decoder-mode: thumb
008bbbd0  f0 b5                                            push {r4, r5, r6, r7, lr}
008bbbd2  47 46                                            mov r7, r8
008bbbd4  80 b4                                            push {r7}
008bbbd6  80 46                                            mov r8, r0
008bbbd8  ff f7 7a ff                                      bl #0x8bbad0
008bbbdc  44 46                                            mov r4, r8
008bbbde  fc 26                                            movs r6, #0xfc
008bbbe0  78 34                                            adds r4, #0x78
008bbbe2  00 25                                            movs r5, #0
008bbbe4  00 27                                            movs r7, #0
008bbbe6  b6 00                                            lsls r6, r6, #2
008bbbe8  24 64                                            str r4, [r4, #0x40]
008bbbea  64 64                                            str r4, [r4, #0x44]
008bbbec  20 1c                                            adds r0, r4, #0
008bbbee  ff f7 e9 fb                                      bl #0x8bb3c4
008bbbf2  23 6c                                            ldr r3, [r4, #0x40]
008bbbf4  48 35                                            adds r5, #0x48
008bbbf6  48 34                                            adds r4, #0x48
008bbbf8  1f 60                                            str r7, [r3]
008bbbfa  b5 42                                            cmp r5, r6
008bbbfc  f4 d1                                            bne #0x8bbbe8
008bbbfe  8d 22                                            movs r2, #0x8d
008bbc00  d2 00                                            lsls r2, r2, #3
008bbc02  14 1c                                            adds r4, r2, #0
008bbc04  d8 26                                            movs r6, #0xd8
008bbc06  44 44                                            add r4, r8
008bbc08  00 25                                            movs r5, #0
008bbc0a  00 27                                            movs r7, #0
008bbc0c  f6 00                                            lsls r6, r6, #3
008bbc0e  24 64                                            str r4, [r4, #0x40]
008bbc10  64 64                                            str r4, [r4, #0x44]
008bbc12  20 1c                                            adds r0, r4, #0
008bbc14  ff f7 d6 fb                                      bl #0x8bb3c4
008bbc18  23 6c                                            ldr r3, [r4, #0x40]
008bbc1a  48 35                                            adds r5, #0x48
008bbc1c  48 34                                            adds r4, #0x48
008bbc1e  1f 60                                            str r7, [r3]
008bbc20  b5 42                                            cmp r5, r6
008bbc22  f4 d1                                            bne #0x8bbc0e
008bbc24  0d 4b                                            ldr r3, [pc, #0x34]
008bbc26  0e 4c                                            ldr r4, [pc, #0x38]
008bbc28  42 46                                            mov r2, r8
008bbc2a  18 1c                                            adds r0, r3, #0
008bbc2c  40 44                                            add r0, r8
008bbc2e  44 33                                            adds r3, #0x44
008bbc30  10 51                                            str r0, [r2, r4]
008bbc32  d0 50                                            str r0, [r2, r3]
008bbc34  ff f7 c6 fb                                      bl #0x8bb3c4
008bbc38  42 46                                            mov r2, r8
008bbc3a  13 59                                            ldr r3, [r2, r4]
008bbc3c  1f 60                                            str r7, [r3]
008bbc3e  b7 23                                            movs r3, #0xb7
008bbc40  1b 01                                            lsls r3, r3, #4
008bbc42  1c 1c                                            adds r4, r3, #0
008bbc44  44 44                                            add r4, r8
008bbc46  20 1c                                            adds r0, r4, #0
008bbc48  24 64                                            str r4, [r4, #0x40]
008bbc4a  64 64                                            str r4, [r4, #0x44]
008bbc4c  ff f7 ba fb                                      bl #0x8bb3c4
008bbc50  23 6c                                            ldr r3, [r4, #0x40]
008bbc52  40 46                                            mov r0, r8
008bbc54  1f 60                                            str r7, [r3]
008bbc56  04 bc                                            pop {r2}
008bbc58  90 46                                            mov r8, r2
008bbc5a  f0 bd                                            pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008bbc5c  28 0b 00 00 68 0b 00 00                          .byte 0x28, 0x0b, 0x00, 0x00, 0x68, 0x0b, 0x00, 0x00
