; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5790, declared_size=94, range_size=94, mode=thumb
; class-group: std::priv::_Time_Info
; alias: _ZNSt4priv10_Time_InfoD1Ev
; demangled: std::priv::_Time_Info::~_Time_Info()
; decoder-mode: thumb
008a5790  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a5792  81 23                                            movs r3, #0x81
008a5794  db 00                                            lsls r3, r3, #3
008a5796  c5 18                                            adds r5, r0, r3
008a5798  06 1c                                            adds r6, r0, #0
008a579a  00 2d                                            cmp r5, #0
008a579c  07 d0                                            beq #0x8a57ae
008a579e  30 33                                            adds r3, #0x30
008a57a0  c4 18                                            adds r4, r0, r3
008a57a2  18 3c                                            subs r4, #0x18
008a57a4  20 1c                                            adds r0, r4, #0
008a57a6  6e f6 02 e1                                      blx #0x3139ac
008a57aa  ac 42                                            cmp r4, r5
008a57ac  f9 d1                                            bne #0x8a57a2
008a57ae  e4 23                                            movs r3, #0xe4
008a57b0  5b 00                                            lsls r3, r3, #1
008a57b2  f7 18                                            adds r7, r6, r3
008a57b4  00 2f                                            cmp r7, #0
008a57b6  0b d0                                            beq #0x8a57d0
008a57b8  fc 23                                            movs r3, #0xfc
008a57ba  9b 00                                            lsls r3, r3, #2
008a57bc  f4 18                                            adds r4, r6, r3
008a57be  d8 23                                            movs r3, #0xd8
008a57c0  5b 00                                            lsls r3, r3, #1
008a57c2  f5 18                                            adds r5, r6, r3
008a57c4  20 1c                                            adds r0, r4, #0
008a57c6  18 3c                                            subs r4, #0x18
008a57c8  6e f6 f0 e0                                      blx #0x3139ac
008a57cc  ac 42                                            cmp r4, r5
008a57ce  f9 d1                                            bne #0x8a57c4
008a57d0  34 1c                                            adds r4, r6, #0
008a57d2  78 34                                            adds r4, #0x78
008a57d4  00 2c                                            cmp r4, #0
008a57d6  05 d0                                            beq #0x8a57e4
008a57d8  18 3f                                            subs r7, #0x18
008a57da  38 1c                                            adds r0, r7, #0
008a57dc  6e f6 e6 e0                                      blx #0x3139ac
008a57e0  a7 42                                            cmp r7, r4
008a57e2  f9 d1                                            bne #0x8a57d8
008a57e4  30 1c                                            adds r0, r6, #0
008a57e6  ff f7 dd fe                                      bl #0x8a55a4
008a57ea  30 1c                                            adds r0, r6, #0
008a57ec  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}

; FUNCTION 0x008bbb30, declared_size=158, range_size=158, mode=thumb
; class-group: std::priv::_Time_Info
; alias: _ZNSt4priv10_Time_InfoC1Ev
; demangled: std::priv::_Time_Info::_Time_Info()
; decoder-mode: thumb
008bbb30  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008bbb32  4f 46                                            mov r7, sb
008bbb34  46 46                                            mov r6, r8
008bbb36  c0 b4                                            push {r6, r7}
008bbb38  81 46                                            mov sb, r0
008bbb3a  ff f7 c9 ff                                      bl #0x8bbad0
008bbb3e  4c 46                                            mov r4, sb
008bbb40  a8 26                                            movs r6, #0xa8
008bbb42  78 34                                            adds r4, #0x78
008bbb44  00 25                                            movs r5, #0
008bbb46  00 27                                            movs r7, #0
008bbb48  76 00                                            lsls r6, r6, #1
008bbb4a  24 61                                            str r4, [r4, #0x10]
008bbb4c  64 61                                            str r4, [r4, #0x14]
008bbb4e  20 1c                                            adds r0, r4, #0
008bbb50  10 21                                            movs r1, #0x10
008bbb52  55 f6 94 e5                                      blx #0x31167c
008bbb56  23 69                                            ldr r3, [r4, #0x10]
008bbb58  18 35                                            adds r5, #0x18
008bbb5a  18 34                                            adds r4, #0x18
008bbb5c  1f 70                                            strb r7, [r3]
008bbb5e  b5 42                                            cmp r5, r6
008bbb60  f3 d1                                            bne #0x8bbb4a
008bbb62  4c 46                                            mov r4, sb
008bbb64  c9 34                                            adds r4, #0xc9
008bbb66  00 25                                            movs r5, #0
008bbb68  90 26                                            movs r6, #0x90
008bbb6a  ff 34                                            adds r4, #0xff
008bbb6c  a8 46                                            mov r8, r5
008bbb6e  b6 00                                            lsls r6, r6, #2
008bbb70  24 61                                            str r4, [r4, #0x10]
008bbb72  64 61                                            str r4, [r4, #0x14]
008bbb74  20 1c                                            adds r0, r4, #0
008bbb76  10 21                                            movs r1, #0x10
008bbb78  55 f6 80 e5                                      blx #0x31167c
008bbb7c  23 69                                            ldr r3, [r4, #0x10]
008bbb7e  42 46                                            mov r2, r8
008bbb80  18 35                                            adds r5, #0x18
008bbb82  00 27                                            movs r7, #0
008bbb84  1a 70                                            strb r2, [r3]
008bbb86  18 34                                            adds r4, #0x18
008bbb88  b5 42                                            cmp r5, r6
008bbb8a  f1 d1                                            bne #0x8bbb70
008bbb8c  81 23                                            movs r3, #0x81
008bbb8e  db 00                                            lsls r3, r3, #3
008bbb90  18 1c                                            adds r0, r3, #0
008bbb92  83 24                                            movs r4, #0x83
008bbb94  48 44                                            add r0, sb
008bbb96  4a 46                                            mov r2, sb
008bbb98  e4 00                                            lsls r4, r4, #3
008bbb9a  14 33                                            adds r3, #0x14
008bbb9c  10 51                                            str r0, [r2, r4]
008bbb9e  10 21                                            movs r1, #0x10
008bbba0  d0 50                                            str r0, [r2, r3]
008bbba2  55 f6 6c e5                                      blx #0x31167c
008bbba6  4a 46                                            mov r2, sb
008bbba8  13 59                                            ldr r3, [r2, r4]
008bbbaa  10 21                                            movs r1, #0x10
008bbbac  1f 70                                            strb r7, [r3]
008bbbae  84 23                                            movs r3, #0x84
008bbbb0  db 00                                            lsls r3, r3, #3
008bbbb2  1c 1c                                            adds r4, r3, #0
008bbbb4  4c 44                                            add r4, sb
008bbbb6  20 1c                                            adds r0, r4, #0
008bbbb8  24 61                                            str r4, [r4, #0x10]
008bbbba  64 61                                            str r4, [r4, #0x14]
008bbbbc  55 f6 5e e5                                      blx #0x31167c
008bbbc0  23 69                                            ldr r3, [r4, #0x10]
008bbbc2  48 46                                            mov r0, sb
008bbbc4  1f 70                                            strb r7, [r3]
008bbbc6  0c bc                                            pop {r2, r3}
008bbbc8  90 46                                            mov r8, r2
008bbbca  99 46                                            mov sb, r3
008bbbcc  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
