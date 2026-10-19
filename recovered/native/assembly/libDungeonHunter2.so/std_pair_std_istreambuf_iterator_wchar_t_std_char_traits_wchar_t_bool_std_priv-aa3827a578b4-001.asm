; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a94c0, declared_size=294, range_size=294, mode=thumb
; class-group: std::pair<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, bool> std::priv
; alias: _ZNSt4priv12__get_stringISt19istreambuf_iteratorIwSt11char_traitsIwEEPwEESt4pairIT_bES7_S7_T0_S9_
; demangled: std::pair<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, bool> std::priv::__get_string<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t*>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t*, wchar_t*)
; decoder-mode: thumb
008a94c0  f0 b5                                            push {r4, r5, r6, r7, lr}
008a94c2  5f 46                                            mov r7, fp
008a94c4  56 46                                            mov r6, sl
008a94c6  4d 46                                            mov r5, sb
008a94c8  44 46                                            mov r4, r8
008a94ca  f0 b4                                            push {r4, r5, r6, r7}
008a94cc  8b b0                                            sub sp, #0x2c
008a94ce  05 1c                                            adds r5, r0, #0
008a94d0  03 a8                                            add r0, sp, #0xc
008a94d2  03 91                                            str r1, [sp, #0xc]
008a94d4  83 60                                            str r3, [r0, #8]
008a94d6  0c 1c                                            adds r4, r1, #0
008a94d8  11 1c                                            adds r1, r2, #0
008a94da  42 60                                            str r2, [r0, #4]
008a94dc  02 7a                                            ldrb r2, [r0, #8]
008a94de  01 91                                            str r1, [sp, #4]
008a94e0  43 7a                                            ldrb r3, [r0, #9]
008a94e2  83 46                                            mov fp, r0
008a94e4  17 9f                                            ldr r7, [sp, #0x5c]
008a94e6  98 46                                            mov r8, r3
008a94e8  14 ab                                            add r3, sp, #0x50
008a94ea  18 7a                                            ldrb r0, [r3, #8]
008a94ec  14 9e                                            ldr r6, [sp, #0x50]
008a94ee  92 46                                            mov sl, r2
008a94f0  00 90                                            str r0, [sp]
008a94f2  5b 7a                                            ldrb r3, [r3, #9]
008a94f4  02 93                                            str r3, [sp, #8]
008a94f6  00 2c                                            cmp r4, #0
008a94f8  54 d0                                            beq #0x8a95a4
008a94fa  43 46                                            mov r3, r8
008a94fc  00 2b                                            cmp r3, #0
008a94fe  51 d1                                            bne #0x8a95a4
008a9500  a3 68                                            ldr r3, [r4, #8]
008a9502  e2 68                                            ldr r2, [r4, #0xc]
008a9504  93 42                                            cmp r3, r2
008a9506  55 d2                                            bhs #0x8a95b4
008a9508  18 68                                            ldr r0, [r3]
008a950a  03 1c                                            adds r3, r0, #0
008a950c  01 33                                            adds r3, #1
008a950e  81 46                                            mov sb, r0
008a9510  01 22                                            movs r2, #1
008a9512  58 42                                            rsbs r0, r3, #0
008a9514  58 41                                            adcs r0, r3
008a9516  82 46                                            mov sl, r0
008a9518  90 46                                            mov r8, r2
008a951a  00 2e                                            cmp r6, #0
008a951c  0d d0                                            beq #0x8a953a
008a951e  02 98                                            ldr r0, [sp, #8]
008a9520  00 28                                            cmp r0, #0
008a9522  0a d1                                            bne #0x8a953a
008a9524  b3 68                                            ldr r3, [r6, #8]
008a9526  f2 68                                            ldr r2, [r6, #0xc]
008a9528  93 42                                            cmp r3, r2
008a952a  3e d2                                            bhs #0x8a95aa
008a952c  18 68                                            ldr r0, [r3]
008a952e  01 30                                            adds r0, #1
008a9530  42 42                                            rsbs r2, r0, #0
008a9532  42 41                                            adcs r2, r0
008a9534  01 23                                            movs r3, #1
008a9536  00 92                                            str r2, [sp]
008a9538  02 93                                            str r3, [sp, #8]
008a953a  00 98                                            ldr r0, [sp]
008a953c  82 45                                            cmp sl, r0
008a953e  16 d0                                            beq #0x8a956e
008a9540  18 9a                                            ldr r2, [sp, #0x60]
008a9542  97 42                                            cmp r7, r2
008a9544  13 d0                                            beq #0x8a956e
008a9546  43 46                                            mov r3, r8
008a9548  00 2b                                            cmp r3, #0
008a954a  0c d1                                            bne #0x8a9566
008a954c  a3 68                                            ldr r3, [r4, #8]
008a954e  e2 68                                            ldr r2, [r4, #0xc]
008a9550  93 42                                            cmp r3, r2
008a9552  43 d2                                            bhs #0x8a95dc
008a9554  18 68                                            ldr r0, [r3]
008a9556  03 1c                                            adds r3, r0, #0
008a9558  01 33                                            adds r3, #1
008a955a  81 46                                            mov sb, r0
008a955c  01 22                                            movs r2, #1
008a955e  58 42                                            rsbs r0, r3, #0
008a9560  58 41                                            adcs r0, r3
008a9562  82 46                                            mov sl, r0
008a9564  90 46                                            mov r8, r2
008a9566  3b 68                                            ldr r3, [r7]
008a9568  01 93                                            str r3, [sp, #4]
008a956a  4b 45                                            cmp r3, sb
008a956c  27 d0                                            beq #0x8a95be
008a956e  58 46                                            mov r0, fp
008a9570  52 46                                            mov r2, sl
008a9572  43 46                                            mov r3, r8
008a9574  43 72                                            strb r3, [r0, #9]
008a9576  02 72                                            strb r2, [r0, #8]
008a9578  05 ab                                            add r3, sp, #0x14
008a957a  1a 88                                            ldrh r2, [r3]
008a957c  09 ab                                            add r3, sp, #0x24
008a957e  48 46                                            mov r0, sb
008a9580  1a 80                                            strh r2, [r3]
008a9582  18 9a                                            ldr r2, [sp, #0x60]
008a9584  09 9b                                            ldr r3, [sp, #0x24]
008a9586  0b b0                                            add sp, #0x2c
008a9588  bf 1a                                            subs r7, r7, r2
008a958a  ab 60                                            str r3, [r5, #8]
008a958c  7b 42                                            rsbs r3, r7, #0
008a958e  7b 41                                            adcs r3, r7
008a9590  68 60                                            str r0, [r5, #4]
008a9592  2c 60                                            str r4, [r5]
008a9594  28 1c                                            adds r0, r5, #0
008a9596  2b 73                                            strb r3, [r5, #0xc]
008a9598  3c bc                                            pop {r2, r3, r4, r5}
008a959a  90 46                                            mov r8, r2
008a959c  99 46                                            mov sb, r3
008a959e  a2 46                                            mov sl, r4
008a95a0  ab 46                                            mov fp, r5
008a95a2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a95a4  01 9b                                            ldr r3, [sp, #4]
008a95a6  99 46                                            mov sb, r3
008a95a8  b7 e7                                            b #0x8a951a
008a95aa  33 68                                            ldr r3, [r6]
008a95ac  30 1c                                            adds r0, r6, #0
008a95ae  1b 6a                                            ldr r3, [r3, #0x20]
008a95b0  98 47                                            blx r3
008a95b2  bc e7                                            b #0x8a952e
008a95b4  23 68                                            ldr r3, [r4]
008a95b6  20 1c                                            adds r0, r4, #0
008a95b8  1b 6a                                            ldr r3, [r3, #0x20]
008a95ba  98 47                                            blx r3
008a95bc  a5 e7                                            b #0x8a950a
008a95be  a3 68                                            ldr r3, [r4, #8]
008a95c0  e2 68                                            ldr r2, [r4, #0xc]
008a95c2  93 42                                            cmp r3, r2
008a95c4  05 d2                                            bhs #0x8a95d2
008a95c6  04 33                                            adds r3, #4
008a95c8  a3 60                                            str r3, [r4, #8]
008a95ca  00 22                                            movs r2, #0
008a95cc  04 37                                            adds r7, #4
008a95ce  90 46                                            mov r8, r2
008a95d0  91 e7                                            b #0x8a94f6
008a95d2  23 68                                            ldr r3, [r4]
008a95d4  20 1c                                            adds r0, r4, #0
008a95d6  5b 6a                                            ldr r3, [r3, #0x24]
008a95d8  98 47                                            blx r3
008a95da  f6 e7                                            b #0x8a95ca
008a95dc  23 68                                            ldr r3, [r4]
008a95de  20 1c                                            adds r0, r4, #0
008a95e0  1b 6a                                            ldr r3, [r3, #0x20]
008a95e2  98 47                                            blx r3
008a95e4  b7 e7                                            b #0x8a9556
