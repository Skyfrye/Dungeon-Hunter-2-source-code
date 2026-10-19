; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a9388, declared_size=312, range_size=312, mode=thumb
; class-group: std::pair<std::istreambuf_iterator<char, std::char_traits<char> >, bool> std::priv
; alias: _ZNSt4priv12__get_stringISt19istreambuf_iteratorIcSt11char_traitsIcEEPcEESt4pairIT_bES7_S7_T0_S9_
; demangled: std::pair<std::istreambuf_iterator<char, std::char_traits<char> >, bool> std::priv::__get_string<std::istreambuf_iterator<char, std::char_traits<char> >, char*>(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, char*, char*)
; decoder-mode: thumb
008a9388  82 b0                                            sub sp, #8
008a938a  f0 b5                                            push {r4, r5, r6, r7, lr}
008a938c  5f 46                                            mov r7, fp
008a938e  56 46                                            mov r6, sl
008a9390  4d 46                                            mov r5, sb
008a9392  44 46                                            mov r4, r8
008a9394  f0 b4                                            push {r4, r5, r6, r7}
008a9396  89 b0                                            sub sp, #0x24
008a9398  05 1c                                            adds r5, r0, #0
008a939a  04 a8                                            add r0, sp, #0x10
008a939c  42 60                                            str r2, [r0, #4]
008a939e  04 91                                            str r1, [sp, #0x10]
008a93a0  13 93                                            str r3, [sp, #0x4c]
008a93a2  81 46                                            mov sb, r0
008a93a4  1e 1c                                            adds r6, r3, #0
008a93a6  43 79                                            ldrb r3, [r0, #5]
008a93a8  00 79                                            ldrb r0, [r0, #4]
008a93aa  13 aa                                            add r2, sp, #0x4c
008a93ac  0c 1c                                            adds r4, r1, #0
008a93ae  02 90                                            str r0, [sp, #8]
008a93b0  15 99                                            ldr r1, [sp, #0x54]
008a93b2  9a 46                                            mov sl, r3
008a93b4  53 79                                            ldrb r3, [r2, #5]
008a93b6  88 46                                            mov r8, r1
008a93b8  49 46                                            mov r1, sb
008a93ba  8f 79                                            ldrb r7, [r1, #6]
008a93bc  01 93                                            str r3, [sp, #4]
008a93be  92 79                                            ldrb r2, [r2, #6]
008a93c0  03 92                                            str r2, [sp, #0xc]
008a93c2  00 2c                                            cmp r4, #0
008a93c4  5b d0                                            beq #0x8a947e
008a93c6  00 2f                                            cmp r7, #0
008a93c8  59 d1                                            bne #0x8a947e
008a93ca  a3 68                                            ldr r3, [r4, #8]
008a93cc  e2 68                                            ldr r2, [r4, #0xc]
008a93ce  93 42                                            cmp r3, r2
008a93d0  5d d2                                            bhs #0x8a948e
008a93d2  18 78                                            ldrb r0, [r3]
008a93d4  03 06                                            lsls r3, r0, #0x18
008a93d6  01 30                                            adds r0, #1
008a93d8  1b 0e                                            lsrs r3, r3, #0x18
008a93da  41 42                                            rsbs r1, r0, #0
008a93dc  41 41                                            adcs r1, r0
008a93de  9b 46                                            mov fp, r3
008a93e0  8a 46                                            mov sl, r1
008a93e2  01 27                                            movs r7, #1
008a93e4  00 2e                                            cmp r6, #0
008a93e6  0d d0                                            beq #0x8a9404
008a93e8  03 9b                                            ldr r3, [sp, #0xc]
008a93ea  00 2b                                            cmp r3, #0
008a93ec  0a d1                                            bne #0x8a9404
008a93ee  b3 68                                            ldr r3, [r6, #8]
008a93f0  f2 68                                            ldr r2, [r6, #0xc]
008a93f2  93 42                                            cmp r3, r2
008a93f4  46 d2                                            bhs #0x8a9484
008a93f6  18 78                                            ldrb r0, [r3]
008a93f8  01 30                                            adds r0, #1
008a93fa  41 42                                            rsbs r1, r0, #0
008a93fc  41 41                                            adcs r1, r0
008a93fe  01 22                                            movs r2, #1
008a9400  01 91                                            str r1, [sp, #4]
008a9402  03 92                                            str r2, [sp, #0xc]
008a9404  01 9b                                            ldr r3, [sp, #4]
008a9406  9a 45                                            cmp sl, r3
008a9408  16 d0                                            beq #0x8a9438
008a940a  16 98                                            ldr r0, [sp, #0x58]
008a940c  80 45                                            cmp r8, r0
008a940e  13 d0                                            beq #0x8a9438
008a9410  00 2f                                            cmp r7, #0
008a9412  0c d1                                            bne #0x8a942e
008a9414  a3 68                                            ldr r3, [r4, #8]
008a9416  e2 68                                            ldr r2, [r4, #0xc]
008a9418  93 42                                            cmp r3, r2
008a941a  4c d2                                            bhs #0x8a94b6
008a941c  18 78                                            ldrb r0, [r3]
008a941e  03 06                                            lsls r3, r0, #0x18
008a9420  01 30                                            adds r0, #1
008a9422  1b 0e                                            lsrs r3, r3, #0x18
008a9424  41 42                                            rsbs r1, r0, #0
008a9426  41 41                                            adcs r1, r0
008a9428  9b 46                                            mov fp, r3
008a942a  8a 46                                            mov sl, r1
008a942c  01 27                                            movs r7, #1
008a942e  42 46                                            mov r2, r8
008a9430  12 78                                            ldrb r2, [r2]
008a9432  02 92                                            str r2, [sp, #8]
008a9434  5a 45                                            cmp r2, fp
008a9436  2f d0                                            beq #0x8a9498
008a9438  4b 46                                            mov r3, sb
008a943a  50 46                                            mov r0, sl
008a943c  59 46                                            mov r1, fp
008a943e  58 71                                            strb r0, [r3, #5]
008a9440  19 71                                            strb r1, [r3, #4]
008a9442  05 aa                                            add r2, sp, #0x14
008a9444  12 88                                            ldrh r2, [r2]
008a9446  9f 71                                            strb r7, [r3, #6]
008a9448  07 ab                                            add r3, sp, #0x1c
008a944a  1a 80                                            strh r2, [r3]
008a944c  6a 46                                            mov r2, sp
008a944e  16 32                                            adds r2, #0x16
008a9450  12 78                                            ldrb r2, [r2]
008a9452  02 33                                            adds r3, #2
008a9454  1a 70                                            strb r2, [r3]
008a9456  07 9b                                            ldr r3, [sp, #0x1c]
008a9458  16 98                                            ldr r0, [sp, #0x58]
008a945a  09 b0                                            add sp, #0x24
008a945c  6b 60                                            str r3, [r5, #4]
008a945e  43 46                                            mov r3, r8
008a9460  1a 1a                                            subs r2, r3, r0
008a9462  53 42                                            rsbs r3, r2, #0
008a9464  53 41                                            adcs r3, r2
008a9466  28 1c                                            adds r0, r5, #0
008a9468  2c 60                                            str r4, [r5]
008a946a  2b 72                                            strb r3, [r5, #8]
008a946c  3c bc                                            pop {r2, r3, r4, r5}
008a946e  90 46                                            mov r8, r2
008a9470  99 46                                            mov sb, r3
008a9472  a2 46                                            mov sl, r4
008a9474  ab 46                                            mov fp, r5
008a9476  f0 bc                                            pop {r4, r5, r6, r7}
008a9478  08 bc                                            pop {r3}
008a947a  02 b0                                            add sp, #8
008a947c  18 47                                            bx r3
008a947e  02 9a                                            ldr r2, [sp, #8]
008a9480  93 46                                            mov fp, r2
008a9482  af e7                                            b #0x8a93e4
008a9484  33 68                                            ldr r3, [r6]
008a9486  30 1c                                            adds r0, r6, #0
008a9488  1b 6a                                            ldr r3, [r3, #0x20]
008a948a  98 47                                            blx r3
008a948c  b4 e7                                            b #0x8a93f8
008a948e  23 68                                            ldr r3, [r4]
008a9490  20 1c                                            adds r0, r4, #0
008a9492  1b 6a                                            ldr r3, [r3, #0x20]
008a9494  98 47                                            blx r3
008a9496  9d e7                                            b #0x8a93d4
008a9498  a3 68                                            ldr r3, [r4, #8]
008a949a  e2 68                                            ldr r2, [r4, #0xc]
008a949c  93 42                                            cmp r3, r2
008a949e  05 d2                                            bhs #0x8a94ac
008a94a0  01 33                                            adds r3, #1
008a94a2  a3 60                                            str r3, [r4, #8]
008a94a4  01 20                                            movs r0, #1
008a94a6  80 44                                            add r8, r0
008a94a8  00 27                                            movs r7, #0
008a94aa  8a e7                                            b #0x8a93c2
008a94ac  23 68                                            ldr r3, [r4]
008a94ae  20 1c                                            adds r0, r4, #0
008a94b0  5b 6a                                            ldr r3, [r3, #0x24]
008a94b2  98 47                                            blx r3
008a94b4  f6 e7                                            b #0x8a94a4
008a94b6  23 68                                            ldr r3, [r4]
008a94b8  20 1c                                            adds r0, r4, #0
008a94ba  1b 6a                                            ldr r3, [r3, #0x20]
008a94bc  98 47                                            blx r3
008a94be  ae e7                                            b #0x8a941e
