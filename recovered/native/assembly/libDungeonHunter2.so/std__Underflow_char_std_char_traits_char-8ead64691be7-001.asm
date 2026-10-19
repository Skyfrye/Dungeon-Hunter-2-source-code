; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bde88, declared_size=240, range_size=240, mode=thumb
; class-group: std::_Underflow<char, std::char_traits<char> >
; alias: _ZNSt10_UnderflowIcSt11char_traitsIcEE7_M_doitEPSt13basic_filebufIcS1_E
; demangled: std::_Underflow<char, std::char_traits<char> >::_M_doit(std::basic_filebuf<char, std::char_traits<char> >*)
; decoder-mode: thumb
008bde88  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008bde8a  4f 46                                            mov r7, sb
008bde8c  46 46                                            mov r6, r8
008bde8e  c0 b4                                            push {r6, r7}
008bde90  2f 23                                            movs r3, #0x2f
008bde92  37 4d                                            ldr r5, [pc, #0xdc]
008bde94  c3 5c                                            ldrb r3, [r0, r3]
008bde96  04 1c                                            adds r4, r0, #0
008bde98  7d 44                                            add r5, pc
008bde9a  00 2b                                            cmp r3, #0
008bde9c  61 d0                                            beq #0x8bdf62
008bde9e  32 23                                            movs r3, #0x32
008bdea0  c2 5c                                            ldrb r2, [r0, r3]
008bdea2  00 2a                                            cmp r2, #0
008bdea4  0b d0                                            beq #0x8bdebe
008bdea6  02 6e                                            ldr r2, [r0, #0x60]
008bdea8  41 6e                                            ldr r1, [r0, #0x64]
008bdeaa  c0 6d                                            ldr r0, [r0, #0x5c]
008bdeac  a2 60                                            str r2, [r4, #8]
008bdeae  e1 60                                            str r1, [r4, #0xc]
008bdeb0  60 60                                            str r0, [r4, #4]
008bdeb2  00 20                                            movs r0, #0
008bdeb4  e0 54                                            strb r0, [r4, r3]
008bdeb6  8a 42                                            cmp r2, r1
008bdeb8  01 d0                                            beq #0x8bdebe
008bdeba  10 78                                            ldrb r0, [r2]
008bdebc  06 e0                                            b #0x8bdecc
008bdebe  2a 23                                            movs r3, #0x2a
008bdec0  e3 5c                                            ldrb r3, [r4, r3]
008bdec2  00 2b                                            cmp r3, #0
008bdec4  06 d1                                            bne #0x8bded4
008bdec6  20 1c                                            adds r0, r4, #0
008bdec8  ff f7 e6 fd                                      bl #0x8bda98
008bdecc  0c bc                                            pop {r2, r3}
008bdece  90 46                                            mov r8, r2
008bded0  99 46                                            mov sb, r3
008bded2  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008bded4  2d 23                                            movs r3, #0x2d
008bded6  e3 5c                                            ldrb r3, [r4, r3]
008bded8  00 2b                                            cmp r3, #0
008bdeda  f4 d0                                            beq #0x8bdec6
008bdedc  61 6d                                            ldr r1, [r4, #0x54]
008bdede  26 1c                                            adds r6, r4, #0
008bdee0  20 36                                            adds r6, #0x20
008bdee2  00 29                                            cmp r1, #0
008bdee4  03 d0                                            beq #0x8bdeee
008bdee6  a2 6d                                            ldr r2, [r4, #0x58]
008bdee8  30 1c                                            adds r0, r6, #0
008bdeea  ff f7 8b fd                                      bl #0x8bda04
008bdeee  00 21                                            movs r1, #0
008bdef0  02 22                                            movs r2, #2
008bdef2  30 1c                                            adds r0, r6, #0
008bdef4  ff f7 e2 fe                                      bl #0x8bdcbc
008bdef8  80 46                                            mov r8, r0
008bdefa  30 1c                                            adds r0, r6, #0
008bdefc  ff f7 c2 fe                                      bl #0x8bdc84
008bdf00  43 46                                            mov r3, r8
008bdf02  07 1c                                            adds r7, r0, #0
008bdf04  00 2b                                            cmp r3, #0
008bdf06  26 db                                            blt #0x8bdf56
008bdf08  00 28                                            cmp r0, #0
008bdf0a  24 dd                                            ble #0x8bdf56
008bdf0c  80 45                                            cmp r8, r0
008bdf0e  22 da                                            bge #0x8bdf56
008bdf10  18 4b                                            ldr r3, [pc, #0x60]
008bdf12  40 46                                            mov r0, r8
008bdf14  eb 58                                            ldr r3, [r5, r3]
008bdf16  1b 68                                            ldr r3, [r3]
008bdf18  19 1c                                            adds r1, r3, #0
008bdf1a  99 46                                            mov sb, r3
008bdf1c  50 f6 96 e6                                      blx #0x30ec4c
008bdf20  4d 46                                            mov r5, sb
008bdf22  45 43                                            muls r5, r0, r5
008bdf24  80 23                                            movs r3, #0x80
008bdf26  7a 1b                                            subs r2, r7, r5
008bdf28  5b 03                                            lsls r3, r3, #0xd
008bdf2a  a2 65                                            str r2, [r4, #0x58]
008bdf2c  9a 42                                            cmp r2, r3
008bdf2e  01 dd                                            ble #0x8bdf34
008bdf30  a3 65                                            str r3, [r4, #0x58]
008bdf32  1a 1c                                            adds r2, r3, #0
008bdf34  30 1c                                            adds r0, r6, #0
008bdf36  29 1c                                            adds r1, r5, #0
008bdf38  ff f7 6a fd                                      bl #0x8bda10
008bdf3c  60 65                                            str r0, [r4, #0x54]
008bdf3e  00 28                                            cmp r0, #0
008bdf40  0d d0                                            beq #0x8bdf5e
008bdf42  43 46                                            mov r3, r8
008bdf44  5d 1b                                            subs r5, r3, r5
008bdf46  a3 6d                                            ldr r3, [r4, #0x58]
008bdf48  45 19                                            adds r5, r0, r5
008bdf4a  60 60                                            str r0, [r4, #4]
008bdf4c  c3 18                                            adds r3, r0, r3
008bdf4e  a5 60                                            str r5, [r4, #8]
008bdf50  e3 60                                            str r3, [r4, #0xc]
008bdf52  28 78                                            ldrb r0, [r5]
008bdf54  ba e7                                            b #0x8bdecc
008bdf56  00 23                                            movs r3, #0
008bdf58  63 65                                            str r3, [r4, #0x54]
008bdf5a  a3 65                                            str r3, [r4, #0x58]
008bdf5c  b3 e7                                            b #0x8bdec6
008bdf5e  a0 65                                            str r0, [r4, #0x58]
008bdf60  b1 e7                                            b #0x8bdec6
008bdf62  ff f7 3b ff                                      bl #0x8bdddc
008bdf66  00 28                                            cmp r0, #0
008bdf68  a9 d1                                            bne #0x8bdebe
008bdf6a  01 20                                            movs r0, #1
008bdf6c  40 42                                            rsbs r0, r0, #0
008bdf6e  ad e7                                            b #0x8bdecc
; mapping-symbol data/literal pool
008bdf70  fc 6b 0d 00 00 1a 00 00                          .byte 0xfc, 0x6b, 0x0d, 0x00, 0x00, 0x1a, 0x00, 0x00
