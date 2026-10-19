; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008abcd4, declared_size=138, range_size=138, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv11__copy_signISt19istreambuf_iteratorIcSt11char_traitsIcEEcEET_S5_S5_RNS_16__basic_iostringIcEET0_S9_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__copy_sign<std::istreambuf_iterator<char, std::char_traits<char> >, char>(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::priv::__basic_iostring<char>&, char, char)
; decoder-mode: thumb
008abcd4  82 b0                                            sub sp, #8
008abcd6  f0 b5                                            push {r4, r5, r6, r7, lr}
008abcd8  83 b0                                            sub sp, #0xc
008abcda  09 93                                            str r3, [sp, #0x24]
008abcdc  0c ab                                            add r3, sp, #0x30
008abcde  04 1c                                            adds r4, r0, #0
008abce0  00 91                                            str r1, [sp]
008abce2  1e 78                                            ldrb r6, [r3]
008abce4  68 46                                            mov r0, sp
008abce6  0d ab                                            add r3, sp, #0x34
008abce8  09 a9                                            add r1, sp, #0x24
008abcea  6d 46                                            mov r5, sp
008abcec  01 92                                            str r2, [sp, #4]
008abcee  1f 78                                            ldrb r7, [r3]
008abcf0  fd f7 7a fc                                      bl #0x8a95e8
008abcf4  00 28                                            cmp r0, #0
008abcf6  0e d0                                            beq #0x8abd16
008abcf8  00 9b                                            ldr r3, [sp]
008abcfa  20 1c                                            adds r0, r4, #0
008abcfc  23 60                                            str r3, [r4]
008abcfe  01 ab                                            add r3, sp, #4
008abd00  1b 88                                            ldrh r3, [r3]
008abd02  a3 80                                            strh r3, [r4, #4]
008abd04  6b 46                                            mov r3, sp
008abd06  06 33                                            adds r3, #6
008abd08  1b 78                                            ldrb r3, [r3]
008abd0a  03 b0                                            add sp, #0xc
008abd0c  a3 71                                            strb r3, [r4, #6]
008abd0e  f0 bc                                            pop {r4, r5, r6, r7}
008abd10  08 bc                                            pop {r3}
008abd12  02 b0                                            add sp, #8
008abd14  18 47                                            bx r3
008abd16  ab 79                                            ldrb r3, [r5, #6]
008abd18  00 2b                                            cmp r3, #0
008abd1a  1e d1                                            bne #0x8abd5a
008abd1c  00 98                                            ldr r0, [sp]
008abd1e  83 68                                            ldr r3, [r0, #8]
008abd20  c2 68                                            ldr r2, [r0, #0xc]
008abd22  93 42                                            cmp r3, r2
008abd24  15 d2                                            bhs #0x8abd52
008abd26  18 78                                            ldrb r0, [r3]
008abd28  03 06                                            lsls r3, r0, #0x18
008abd2a  01 30                                            adds r0, #1
008abd2c  42 42                                            rsbs r2, r0, #0
008abd2e  42 41                                            adcs r2, r0
008abd30  1b 0e                                            lsrs r3, r3, #0x18
008abd32  6a 71                                            strb r2, [r5, #5]
008abd34  01 22                                            movs r2, #1
008abd36  2b 71                                            strb r3, [r5, #4]
008abd38  aa 71                                            strb r2, [r5, #6]
008abd3a  9e 42                                            cmp r6, r3
008abd3c  05 d0                                            beq #0x8abd4a
008abd3e  9f 42                                            cmp r7, r3
008abd40  da d1                                            bne #0x8abcf8
008abd42  0b 98                                            ldr r0, [sp, #0x2c]
008abd44  2d 21                                            movs r1, #0x2d
008abd46  fc f7 51 fc                                      bl #0x8a85ec
008abd4a  68 46                                            mov r0, sp
008abd4c  f8 f7 da fe                                      bl #0x8a4b04
008abd50  d2 e7                                            b #0x8abcf8
008abd52  03 68                                            ldr r3, [r0]
008abd54  1b 6a                                            ldr r3, [r3, #0x20]
008abd56  98 47                                            blx r3
008abd58  e6 e7                                            b #0x8abd28
008abd5a  2b 79                                            ldrb r3, [r5, #4]
008abd5c  ed e7                                            b #0x8abd3a

; FUNCTION 0x008af8d0, declared_size=680, range_size=680, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv18__do_get_alphaboolISt19istreambuf_iteratorIcSt11char_traitsIcEEcEET_RS5_S6_RSt8ios_baseRiRbPT0_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_alphabool<std::istreambuf_iterator<char, std::char_traits<char> >, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, bool&, char*)
; decoder-mode: thumb
008af8d0  f0 b5                                            push {r4, r5, r6, r7, lr}
008af8d2  5f 46                                            mov r7, fp
008af8d4  56 46                                            mov r6, sl
008af8d6  4d 46                                            mov r5, sb
008af8d8  44 46                                            mov r4, r8
008af8da  f0 b4                                            push {r4, r5, r6, r7}
008af8dc  a3 4c                                            ldr r4, [pc, #0x28c]
008af8de  95 b0                                            sub sp, #0x54
008af8e0  02 90                                            str r0, [sp, #8]
008af8e2  1e 98                                            ldr r0, [sp, #0x78]
008af8e4  7c 44                                            add r4, pc
008af8e6  01 94                                            str r4, [sp, #4]
008af8e8  03 90                                            str r0, [sp, #0xc]
008af8ea  15 1c                                            adds r5, r2, #0
008af8ec  01 98                                            ldr r0, [sp, #4]
008af8ee  a0 4a                                            ldr r2, [pc, #0x280]
008af8f0  0c 1c                                            adds r4, r1, #0
008af8f2  1f 99                                            ldr r1, [sp, #0x7c]
008af8f4  04 92                                            str r2, [sp, #0x10]
008af8f6  82 58                                            ldr r2, [r0, r2]
008af8f8  06 ae                                            add r6, sp, #0x18
008af8fa  05 91                                            str r1, [sp, #0x14]
008af8fc  12 68                                            ldr r2, [r2]
008af8fe  19 1c                                            adds r1, r3, #0
008af900  20 31                                            adds r1, #0x20
008af902  30 1c                                            adds r0, r6, #0
008af904  13 92                                            str r2, [sp, #0x4c]
008af906  f3 f7 2b fe                                      bl #0x8a3560
008af90a  01 9a                                            ldr r2, [sp, #4]
008af90c  99 4b                                            ldr r3, [pc, #0x264]
008af90e  30 1c                                            adds r0, r6, #0
008af910  07 af                                            add r7, sp, #0x1c
008af912  d1 58                                            ldr r1, [r2, r3]
008af914  f3 f7 4c fe                                      bl #0x8a35b0
008af918  80 46                                            mov r8, r0
008af91a  30 1c                                            adds r0, r6, #0
008af91c  f3 f7 ea fd                                      bl #0x8a34f4
008af920  40 46                                            mov r0, r8
008af922  03 68                                            ldr r3, [r0]
008af924  0d ae                                            add r6, sp, #0x34
008af926  41 46                                            mov r1, r8
008af928  5b 69                                            ldr r3, [r3, #0x14]
008af92a  30 1c                                            adds r0, r6, #0
008af92c  98 47                                            blx r3
008af92e  41 46                                            mov r1, r8
008af930  0b 68                                            ldr r3, [r1]
008af932  38 1c                                            adds r0, r7, #0
008af934  9b 69                                            ldr r3, [r3, #0x18]
008af936  98 47                                            blx r3
008af938  01 23                                            movs r3, #1
008af93a  00 22                                            movs r2, #0
008af93c  90 46                                            mov r8, r2
008af93e  9a 46                                            mov sl, r3
008af940  99 46                                            mov sb, r3
008af942  9b 46                                            mov fp, r3
008af944  20 68                                            ldr r0, [r4]
008af946  00 28                                            cmp r0, #0
008af948  0f d0                                            beq #0x8af96a
008af94a  a3 79                                            ldrb r3, [r4, #6]
008af94c  00 2b                                            cmp r3, #0
008af94e  0c d1                                            bne #0x8af96a
008af950  83 68                                            ldr r3, [r0, #8]
008af952  c2 68                                            ldr r2, [r0, #0xc]
008af954  93 42                                            cmp r3, r2
008af956  00 d3                                            blo #0x8af95a
008af958  d3 e0                                            b #0x8afb02
008af95a  18 78                                            ldrb r0, [r3]
008af95c  20 71                                            strb r0, [r4, #4]
008af95e  01 30                                            adds r0, #1
008af960  43 42                                            rsbs r3, r0, #0
008af962  43 41                                            adcs r3, r0
008af964  63 71                                            strb r3, [r4, #5]
008af966  5b 46                                            mov r3, fp
008af968  a3 71                                            strb r3, [r4, #6]
008af96a  28 68                                            ldr r0, [r5]
008af96c  00 28                                            cmp r0, #0
008af96e  00 d1                                            bne #0x8af972
008af970  96 e0                                            b #0x8afaa0
008af972  ab 79                                            ldrb r3, [r5, #6]
008af974  00 2b                                            cmp r3, #0
008af976  00 d0                                            beq #0x8af97a
008af978  92 e0                                            b #0x8afaa0
008af97a  83 68                                            ldr r3, [r0, #8]
008af97c  c2 68                                            ldr r2, [r0, #0xc]
008af97e  93 42                                            cmp r3, r2
008af980  00 d3                                            blo #0x8af984
008af982  ba e0                                            b #0x8afafa
008af984  18 78                                            ldrb r0, [r3]
008af986  28 71                                            strb r0, [r5, #4]
008af988  01 30                                            adds r0, #1
008af98a  43 42                                            rsbs r3, r0, #0
008af98c  43 41                                            adcs r3, r0
008af98e  58 46                                            mov r0, fp
008af990  6b 71                                            strb r3, [r5, #5]
008af992  a8 71                                            strb r0, [r5, #6]
008af994  62 79                                            ldrb r2, [r4, #5]
008af996  9a 42                                            cmp r2, r3
008af998  39 d0                                            beq #0x8afa0e
008af99a  a3 79                                            ldrb r3, [r4, #6]
008af99c  00 2b                                            cmp r3, #0
008af99e  00 d0                                            beq #0x8af9a2
008af9a0  9e e0                                            b #0x8afae0
008af9a2  20 68                                            ldr r0, [r4]
008af9a4  83 68                                            ldr r3, [r0, #8]
008af9a6  c2 68                                            ldr r2, [r0, #0xc]
008af9a8  93 42                                            cmp r3, r2
008af9aa  00 d3                                            blo #0x8af9ae
008af9ac  9f e0                                            b #0x8afaee
008af9ae  19 78                                            ldrb r1, [r3]
008af9b0  0b 06                                            lsls r3, r1, #0x18
008af9b2  01 31                                            adds r1, #1
008af9b4  4a 42                                            rsbs r2, r1, #0
008af9b6  4a 41                                            adcs r2, r1
008af9b8  1b 0e                                            lsrs r3, r3, #0x18
008af9ba  59 46                                            mov r1, fp
008af9bc  23 71                                            strb r3, [r4, #4]
008af9be  62 71                                            strb r2, [r4, #5]
008af9c0  a1 71                                            strb r1, [r4, #6]
008af9c2  4a 46                                            mov r2, sb
008af9c4  00 2a                                            cmp r2, #0
008af9c6  06 d0                                            beq #0x8af9d6
008af9c8  72 69                                            ldr r2, [r6, #0x14]
008af9ca  41 46                                            mov r1, r8
008af9cc  52 5c                                            ldrb r2, [r2, r1]
008af9ce  d2 1a                                            subs r2, r2, r3
008af9d0  51 42                                            rsbs r1, r2, #0
008af9d2  51 41                                            adcs r1, r2
008af9d4  89 46                                            mov sb, r1
008af9d6  52 46                                            mov r2, sl
008af9d8  00 2a                                            cmp r2, #0
008af9da  06 d0                                            beq #0x8af9ea
008af9dc  7a 69                                            ldr r2, [r7, #0x14]
008af9de  41 46                                            mov r1, r8
008af9e0  52 5c                                            ldrb r2, [r2, r1]
008af9e2  d3 1a                                            subs r3, r2, r3
008af9e4  5a 42                                            rsbs r2, r3, #0
008af9e6  5a 41                                            adcs r2, r3
008af9e8  92 46                                            mov sl, r2
008af9ea  01 23                                            movs r3, #1
008af9ec  49 46                                            mov r1, sb
008af9ee  98 44                                            add r8, r3
008af9f0  00 29                                            cmp r1, #0
008af9f2  57 d0                                            beq #0x8afaa4
008af9f4  32 69                                            ldr r2, [r6, #0x10]
008af9f6  73 69                                            ldr r3, [r6, #0x14]
008af9f8  d3 1a                                            subs r3, r2, r3
008af9fa  98 45                                            cmp r8, r3
008af9fc  64 d3                                            blo #0x8afac8
008af9fe  83 68                                            ldr r3, [r0, #8]
008afa00  c2 68                                            ldr r2, [r0, #0xc]
008afa02  93 42                                            cmp r3, r2
008afa04  5c d2                                            bhs #0x8afac0
008afa06  01 33                                            adds r3, #1
008afa08  83 60                                            str r3, [r0, #8]
008afa0a  00 23                                            movs r3, #0
008afa0c  a3 71                                            strb r3, [r4, #6]
008afa0e  49 46                                            mov r1, sb
008afa10  00 29                                            cmp r1, #0
008afa12  07 d0                                            beq #0x8afa24
008afa14  73 69                                            ldr r3, [r6, #0x14]
008afa16  32 69                                            ldr r2, [r6, #0x10]
008afa18  40 46                                            mov r0, r8
008afa1a  d2 1a                                            subs r2, r2, r3
008afa1c  00 23                                            movs r3, #0
008afa1e  90 42                                            cmp r0, r2
008afa20  5b 41                                            adcs r3, r3
008afa22  99 46                                            mov sb, r3
008afa24  51 46                                            mov r1, sl
008afa26  00 29                                            cmp r1, #0
008afa28  07 d0                                            beq #0x8afa3a
008afa2a  7b 69                                            ldr r3, [r7, #0x14]
008afa2c  3a 69                                            ldr r2, [r7, #0x10]
008afa2e  40 46                                            mov r0, r8
008afa30  d2 1a                                            subs r2, r2, r3
008afa32  00 23                                            movs r3, #0
008afa34  90 42                                            cmp r0, r2
008afa36  5b 41                                            adcs r3, r3
008afa38  9a 46                                            mov sl, r3
008afa3a  49 46                                            mov r1, sb
008afa3c  00 29                                            cmp r1, #0
008afa3e  03 d1                                            bne #0x8afa48
008afa40  52 46                                            mov r2, sl
008afa42  00 2a                                            cmp r2, #0
008afa44  00 d1                                            bne #0x8afa48
008afa46  83 e0                                            b #0x8afb50
008afa48  03 98                                            ldr r0, [sp, #0xc]
008afa4a  00 23                                            movs r3, #0
008afa4c  4a 46                                            mov r2, sb
008afa4e  03 60                                            str r3, [r0]
008afa50  05 99                                            ldr r1, [sp, #0x14]
008afa52  0a 70                                            strb r2, [r1]
008afa54  20 68                                            ldr r0, [r4]
008afa56  00 28                                            cmp r0, #0
008afa58  0f d0                                            beq #0x8afa7a
008afa5a  a3 79                                            ldrb r3, [r4, #6]
008afa5c  00 2b                                            cmp r3, #0
008afa5e  0c d1                                            bne #0x8afa7a
008afa60  83 68                                            ldr r3, [r0, #8]
008afa62  c2 68                                            ldr r2, [r0, #0xc]
008afa64  93 42                                            cmp r3, r2
008afa66  00 d3                                            blo #0x8afa6a
008afa68  7a e0                                            b #0x8afb60
008afa6a  18 78                                            ldrb r0, [r3]
008afa6c  20 71                                            strb r0, [r4, #4]
008afa6e  01 30                                            adds r0, #1
008afa70  43 42                                            rsbs r3, r0, #0
008afa72  43 41                                            adcs r3, r0
008afa74  63 71                                            strb r3, [r4, #5]
008afa76  01 23                                            movs r3, #1
008afa78  a3 71                                            strb r3, [r4, #6]
008afa7a  28 68                                            ldr r0, [r5]
008afa7c  00 28                                            cmp r0, #0
008afa7e  44 d0                                            beq #0x8afb0a
008afa80  ab 79                                            ldrb r3, [r5, #6]
008afa82  00 2b                                            cmp r3, #0
008afa84  41 d1                                            bne #0x8afb0a
008afa86  83 68                                            ldr r3, [r0, #8]
008afa88  c2 68                                            ldr r2, [r0, #0xc]
008afa8a  93 42                                            cmp r3, r2
008afa8c  64 d2                                            bhs #0x8afb58
008afa8e  18 78                                            ldrb r0, [r3]
008afa90  28 71                                            strb r0, [r5, #4]
008afa92  01 30                                            adds r0, #1
008afa94  43 42                                            rsbs r3, r0, #0
008afa96  43 41                                            adcs r3, r0
008afa98  01 22                                            movs r2, #1
008afa9a  6b 71                                            strb r3, [r5, #5]
008afa9c  aa 71                                            strb r2, [r5, #6]
008afa9e  35 e0                                            b #0x8afb0c
008afaa0  6b 79                                            ldrb r3, [r5, #5]
008afaa2  77 e7                                            b #0x8af994
008afaa4  52 46                                            mov r2, sl
008afaa6  00 2a                                            cmp r2, #0
008afaa8  a9 d0                                            beq #0x8af9fe
008afaaa  3a 69                                            ldr r2, [r7, #0x10]
008afaac  7b 69                                            ldr r3, [r7, #0x14]
008afaae  d3 1a                                            subs r3, r2, r3
008afab0  98 45                                            cmp r8, r3
008afab2  0c d3                                            blo #0x8aface
008afab4  83 68                                            ldr r3, [r0, #8]
008afab6  c2 68                                            ldr r2, [r0, #0xc]
008afab8  01 21                                            movs r1, #1
008afaba  8a 46                                            mov sl, r1
008afabc  93 42                                            cmp r3, r2
008afabe  a2 d3                                            blo #0x8afa06
008afac0  03 68                                            ldr r3, [r0]
008afac2  5b 6a                                            ldr r3, [r3, #0x24]
008afac4  98 47                                            blx r3
008afac6  a0 e7                                            b #0x8afa0a
008afac8  53 46                                            mov r3, sl
008afaca  00 2b                                            cmp r3, #0
008afacc  ed d1                                            bne #0x8afaaa
008aface  83 68                                            ldr r3, [r0, #8]
008afad0  c2 68                                            ldr r2, [r0, #0xc]
008afad2  93 42                                            cmp r3, r2
008afad4  07 d2                                            bhs #0x8afae6
008afad6  01 33                                            adds r3, #1
008afad8  83 60                                            str r3, [r0, #8]
008afada  00 22                                            movs r2, #0
008afadc  a2 71                                            strb r2, [r4, #6]
008afade  31 e7                                            b #0x8af944
008afae0  23 79                                            ldrb r3, [r4, #4]
008afae2  20 68                                            ldr r0, [r4]
008afae4  6d e7                                            b #0x8af9c2
008afae6  03 68                                            ldr r3, [r0]
008afae8  5b 6a                                            ldr r3, [r3, #0x24]
008afaea  98 47                                            blx r3
008afaec  f5 e7                                            b #0x8afada
008afaee  03 68                                            ldr r3, [r0]
008afaf0  1b 6a                                            ldr r3, [r3, #0x20]
008afaf2  98 47                                            blx r3
008afaf4  01 1c                                            adds r1, r0, #0
008afaf6  20 68                                            ldr r0, [r4]
008afaf8  5a e7                                            b #0x8af9b0
008afafa  03 68                                            ldr r3, [r0]
008afafc  1b 6a                                            ldr r3, [r3, #0x20]
008afafe  98 47                                            blx r3
008afb00  41 e7                                            b #0x8af986
008afb02  03 68                                            ldr r3, [r0]
008afb04  1b 6a                                            ldr r3, [r3, #0x20]
008afb06  98 47                                            blx r3
008afb08  28 e7                                            b #0x8af95c
008afb0a  6b 79                                            ldrb r3, [r5, #5]
008afb0c  62 79                                            ldrb r2, [r4, #5]
008afb0e  9a 42                                            cmp r2, r3
008afb10  04 d1                                            bne #0x8afb1c
008afb12  03 99                                            ldr r1, [sp, #0xc]
008afb14  02 23                                            movs r3, #2
008afb16  0a 68                                            ldr r2, [r1]
008afb18  13 43                                            orrs r3, r2
008afb1a  0b 60                                            str r3, [r1]
008afb1c  21 1c                                            adds r1, r4, #0
008afb1e  07 22                                            movs r2, #7
008afb20  02 98                                            ldr r0, [sp, #8]
008afb22  5e f6 0a e2                                      blx #0x30df38
008afb26  38 1c                                            adds r0, r7, #0
008afb28  63 f6 40 e7                                      blx #0x3139ac
008afb2c  30 1c                                            adds r0, r6, #0
008afb2e  63 f6 3e e7                                      blx #0x3139ac
008afb32  01 9a                                            ldr r2, [sp, #4]
008afb34  04 9c                                            ldr r4, [sp, #0x10]
008afb36  02 98                                            ldr r0, [sp, #8]
008afb38  13 59                                            ldr r3, [r2, r4]
008afb3a  13 9a                                            ldr r2, [sp, #0x4c]
008afb3c  1b 68                                            ldr r3, [r3]
008afb3e  9a 42                                            cmp r2, r3
008afb40  12 d1                                            bne #0x8afb68
008afb42  15 b0                                            add sp, #0x54
008afb44  3c bc                                            pop {r2, r3, r4, r5}
008afb46  90 46                                            mov r8, r2
008afb48  99 46                                            mov sb, r3
008afb4a  a2 46                                            mov sl, r4
008afb4c  ab 46                                            mov fp, r5
008afb4e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008afb50  03 98                                            ldr r0, [sp, #0xc]
008afb52  04 23                                            movs r3, #4
008afb54  03 60                                            str r3, [r0]
008afb56  7d e7                                            b #0x8afa54
008afb58  03 68                                            ldr r3, [r0]
008afb5a  1b 6a                                            ldr r3, [r3, #0x20]
008afb5c  98 47                                            blx r3
008afb5e  97 e7                                            b #0x8afa90
008afb60  03 68                                            ldr r3, [r0]
008afb62  1b 6a                                            ldr r3, [r3, #0x20]
008afb64  98 47                                            blx r3
008afb66  81 e7                                            b #0x8afa6c
008afb68  5e f6 d2 e3                                      blx #0x30e310
; mapping-symbol data/literal pool
008afb6c  b0 51 0e 00 ac 40 00 00 e0 1f 00 00              .byte 0xb0, 0x51, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00

; FUNCTION 0x008afe78, declared_size=348, range_size=348, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv14__do_get_floatISt19istreambuf_iteratorIcSt11char_traitsIcEEecEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_float<std::istreambuf_iterator<char, std::char_traits<char> >, long double, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, long double&, char*)
; decoder-mode: thumb
008afe78  f0 b5                                            push {r4, r5, r6, r7, lr}
008afe7a  5f 46                                            mov r7, fp
008afe7c  56 46                                            mov r6, sl
008afe7e  4d 46                                            mov r5, sb
008afe80  44 46                                            mov r4, r8
008afe82  f0 b4                                            push {r4, r5, r6, r7}
008afe84  4d 4c                                            ldr r4, [pc, #0x134]
008afe86  0e 1c                                            adds r6, r1, #0
008afe88  4d 4d                                            ldr r5, [pc, #0x134]
008afe8a  a5 44                                            add sp, r4
008afe8c  9a 99                                            ldr r1, [sp, #0x268]
008afe8e  17 1c                                            adds r7, r2, #0
008afe90  9b 9a                                            ldr r2, [sp, #0x26c]
008afe92  88 46                                            mov r8, r1
008afe94  4b 49                                            ldr r1, [pc, #0x12c]
008afe96  7d 44                                            add r5, pc
008afe98  05 92                                            str r2, [sp, #0x14]
008afe9a  6a 58                                            ldr r2, [r5, r1]
008afe9c  8b 46                                            mov fp, r1
008afe9e  19 1c                                            adds r1, r3, #0
008afea0  12 68                                            ldr r2, [r2]
008afea2  20 31                                            adds r1, #0x20
008afea4  82 46                                            mov sl, r0
008afea6  8f 92                                            str r2, [sp, #0x23c]
008afea8  06 aa                                            add r2, sp, #0x18
008afeaa  10 1c                                            adds r0, r2, #0
008afeac  91 46                                            mov sb, r2
008afeae  f3 f7 57 fb                                      bl #0x8a3560
008afeb2  45 4b                                            ldr r3, [pc, #0x114]
008afeb4  48 46                                            mov r0, sb
008afeb6  07 ac                                            add r4, sp, #0x1c
008afeb8  e9 58                                            ldr r1, [r5, r3]
008afeba  f3 f7 79 fb                                      bl #0x8a35b0
008afebe  43 4b                                            ldr r3, [pc, #0x10c]
008afec0  03 90                                            str r0, [sp, #0xc]
008afec2  48 46                                            mov r0, sb
008afec4  e9 58                                            ldr r1, [r5, r3]
008afec6  f3 f7 73 fb                                      bl #0x8a35b0
008afeca  4e a9                                            add r1, sp, #0x138
008afecc  40 4a                                            ldr r2, [pc, #0x100]
008afece  04 90                                            str r0, [sp, #0x10]
008afed0  0c a8                                            add r0, sp, #0x30
008afed2  24 61                                            str r4, [r4, #0x10]
008afed4  5e f6 c8 e4                                      blx #0x30e868
008afed8  8c 23                                            movs r3, #0x8c
008afeda  5b 00                                            lsls r3, r3, #1
008afedc  20 1c                                            adds r0, r4, #0
008afede  e4 50                                            str r4, [r4, r3]
008afee0  f5 f7 fa f9                                      bl #0x8a52d8
008afee4  23 69                                            ldr r3, [r4, #0x10]
008afee6  00 21                                            movs r1, #0
008afee8  20 1c                                            adds r0, r4, #0
008afeea  19 70                                            strb r1, [r3]
008afeec  04 9a                                            ldr r2, [sp, #0x10]
008afeee  31 1c                                            adds r1, r6, #0
008afef0  03 9b                                            ldr r3, [sp, #0xc]
008afef2  00 92                                            str r2, [sp]
008afef4  3a 1c                                            adds r2, r7, #0
008afef6  ff f7 bd fe                                      bl #0x8afc74
008afefa  00 28                                            cmp r0, #0
008afefc  4c d1                                            bne #0x8aff98
008afefe  04 23                                            movs r3, #4
008aff00  42 46                                            mov r2, r8
008aff02  13 60                                            str r3, [r2]
008aff04  30 68                                            ldr r0, [r6]
008aff06  00 28                                            cmp r0, #0
008aff08  0e d0                                            beq #0x8aff28
008aff0a  b3 79                                            ldrb r3, [r6, #6]
008aff0c  00 2b                                            cmp r3, #0
008aff0e  0b d1                                            bne #0x8aff28
008aff10  83 68                                            ldr r3, [r0, #8]
008aff12  c2 68                                            ldr r2, [r0, #0xc]
008aff14  93 42                                            cmp r3, r2
008aff16  4b d2                                            bhs #0x8affb0
008aff18  18 78                                            ldrb r0, [r3]
008aff1a  30 71                                            strb r0, [r6, #4]
008aff1c  01 30                                            adds r0, #1
008aff1e  43 42                                            rsbs r3, r0, #0
008aff20  43 41                                            adcs r3, r0
008aff22  73 71                                            strb r3, [r6, #5]
008aff24  01 23                                            movs r3, #1
008aff26  b3 71                                            strb r3, [r6, #6]
008aff28  38 68                                            ldr r0, [r7]
008aff2a  00 28                                            cmp r0, #0
008aff2c  0f d0                                            beq #0x8aff4e
008aff2e  bb 79                                            ldrb r3, [r7, #6]
008aff30  00 2b                                            cmp r3, #0
008aff32  0c d1                                            bne #0x8aff4e
008aff34  83 68                                            ldr r3, [r0, #8]
008aff36  c2 68                                            ldr r2, [r0, #0xc]
008aff38  93 42                                            cmp r3, r2
008aff3a  35 d2                                            bhs #0x8affa8
008aff3c  18 78                                            ldrb r0, [r3]
008aff3e  38 71                                            strb r0, [r7, #4]
008aff40  01 30                                            adds r0, #1
008aff42  43 42                                            rsbs r3, r0, #0
008aff44  43 41                                            adcs r3, r0
008aff46  01 22                                            movs r2, #1
008aff48  7b 71                                            strb r3, [r7, #5]
008aff4a  ba 71                                            strb r2, [r7, #6]
008aff4c  00 e0                                            b #0x8aff50
008aff4e  7b 79                                            ldrb r3, [r7, #5]
008aff50  72 79                                            ldrb r2, [r6, #5]
008aff52  9a 42                                            cmp r2, r3
008aff54  05 d1                                            bne #0x8aff62
008aff56  43 46                                            mov r3, r8
008aff58  1a 68                                            ldr r2, [r3]
008aff5a  02 23                                            movs r3, #2
008aff5c  41 46                                            mov r1, r8
008aff5e  13 43                                            orrs r3, r2
008aff60  0b 60                                            str r3, [r1]
008aff62  07 22                                            movs r2, #7
008aff64  31 1c                                            adds r1, r6, #0
008aff66  50 46                                            mov r0, sl
008aff68  5d f6 e6 e7                                      blx #0x30df38
008aff6c  20 1c                                            adds r0, r4, #0
008aff6e  f5 f7 89 fd                                      bl #0x8a5a84
008aff72  48 46                                            mov r0, sb
008aff74  f3 f7 be fa                                      bl #0x8a34f4
008aff78  5a 46                                            mov r2, fp
008aff7a  ab 58                                            ldr r3, [r5, r2]
008aff7c  8f 9a                                            ldr r2, [sp, #0x23c]
008aff7e  50 46                                            mov r0, sl
008aff80  1b 68                                            ldr r3, [r3]
008aff82  9a 42                                            cmp r2, r3
008aff84  18 d1                                            bne #0x8affb8
008aff86  91 23                                            movs r3, #0x91
008aff88  9b 00                                            lsls r3, r3, #2
008aff8a  9d 44                                            add sp, r3
008aff8c  3c bc                                            pop {r2, r3, r4, r5}
008aff8e  90 46                                            mov r8, r2
008aff90  99 46                                            mov sb, r3
008aff92  a2 46                                            mov sl, r4
008aff94  ab 46                                            mov fp, r5
008aff96  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aff98  05 99                                            ldr r1, [sp, #0x14]
008aff9a  20 1c                                            adds r0, r4, #0
008aff9c  0a f0 e4 fd                                      bl #0x8bab68
008affa0  00 23                                            movs r3, #0
008affa2  41 46                                            mov r1, r8
008affa4  0b 60                                            str r3, [r1]
008affa6  ad e7                                            b #0x8aff04
008affa8  03 68                                            ldr r3, [r0]
008affaa  1b 6a                                            ldr r3, [r3, #0x20]
008affac  98 47                                            blx r3
008affae  c6 e7                                            b #0x8aff3e
008affb0  03 68                                            ldr r3, [r0]
008affb2  1b 6a                                            ldr r3, [r3, #0x20]
008affb4  98 47                                            blx r3
008affb6  b0 e7                                            b #0x8aff1a
008affb8  5e f6 aa e1                                      blx #0x30e310
; mapping-symbol data/literal pool
008affbc  bc fd ff ff fe 4b 0e 00 ac 40 00 00 e4 1c 00 00  .byte 0xbc, 0xfd, 0xff, 0xff, 0xfe, 0x4b, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00
008affcc  e0 1f 00 00 01 01 00 00                          .byte 0xe0, 0x1f, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008afffc, declared_size=348, range_size=348, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv14__do_get_floatISt19istreambuf_iteratorIcSt11char_traitsIcEEdcEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_float<std::istreambuf_iterator<char, std::char_traits<char> >, double, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, double&, char*)
; decoder-mode: thumb
008afffc  f0 b5                                            push {r4, r5, r6, r7, lr}
008afffe  5f 46                                            mov r7, fp
008b0000  56 46                                            mov r6, sl
008b0002  4d 46                                            mov r5, sb
008b0004  44 46                                            mov r4, r8
008b0006  f0 b4                                            push {r4, r5, r6, r7}
008b0008  4d 4c                                            ldr r4, [pc, #0x134]
008b000a  0e 1c                                            adds r6, r1, #0
008b000c  4d 4d                                            ldr r5, [pc, #0x134]
008b000e  a5 44                                            add sp, r4
008b0010  9a 99                                            ldr r1, [sp, #0x268]
008b0012  17 1c                                            adds r7, r2, #0
008b0014  9b 9a                                            ldr r2, [sp, #0x26c]
008b0016  88 46                                            mov r8, r1
008b0018  4b 49                                            ldr r1, [pc, #0x12c]
008b001a  7d 44                                            add r5, pc
008b001c  05 92                                            str r2, [sp, #0x14]
008b001e  6a 58                                            ldr r2, [r5, r1]
008b0020  8b 46                                            mov fp, r1
008b0022  19 1c                                            adds r1, r3, #0
008b0024  12 68                                            ldr r2, [r2]
008b0026  20 31                                            adds r1, #0x20
008b0028  82 46                                            mov sl, r0
008b002a  8f 92                                            str r2, [sp, #0x23c]
008b002c  06 aa                                            add r2, sp, #0x18
008b002e  10 1c                                            adds r0, r2, #0
008b0030  91 46                                            mov sb, r2
008b0032  f3 f7 95 fa                                      bl #0x8a3560
008b0036  45 4b                                            ldr r3, [pc, #0x114]
008b0038  48 46                                            mov r0, sb
008b003a  07 ac                                            add r4, sp, #0x1c
008b003c  e9 58                                            ldr r1, [r5, r3]
008b003e  f3 f7 b7 fa                                      bl #0x8a35b0
008b0042  43 4b                                            ldr r3, [pc, #0x10c]
008b0044  03 90                                            str r0, [sp, #0xc]
008b0046  48 46                                            mov r0, sb
008b0048  e9 58                                            ldr r1, [r5, r3]
008b004a  f3 f7 b1 fa                                      bl #0x8a35b0
008b004e  4e a9                                            add r1, sp, #0x138
008b0050  40 4a                                            ldr r2, [pc, #0x100]
008b0052  04 90                                            str r0, [sp, #0x10]
008b0054  0c a8                                            add r0, sp, #0x30
008b0056  24 61                                            str r4, [r4, #0x10]
008b0058  5e f6 06 e4                                      blx #0x30e868
008b005c  8c 23                                            movs r3, #0x8c
008b005e  5b 00                                            lsls r3, r3, #1
008b0060  20 1c                                            adds r0, r4, #0
008b0062  e4 50                                            str r4, [r4, r3]
008b0064  f5 f7 38 f9                                      bl #0x8a52d8
008b0068  23 69                                            ldr r3, [r4, #0x10]
008b006a  00 21                                            movs r1, #0
008b006c  20 1c                                            adds r0, r4, #0
008b006e  19 70                                            strb r1, [r3]
008b0070  04 9a                                            ldr r2, [sp, #0x10]
008b0072  31 1c                                            adds r1, r6, #0
008b0074  03 9b                                            ldr r3, [sp, #0xc]
008b0076  00 92                                            str r2, [sp]
008b0078  3a 1c                                            adds r2, r7, #0
008b007a  ff f7 fb fd                                      bl #0x8afc74
008b007e  00 28                                            cmp r0, #0
008b0080  4c d1                                            bne #0x8b011c
008b0082  04 23                                            movs r3, #4
008b0084  42 46                                            mov r2, r8
008b0086  13 60                                            str r3, [r2]
008b0088  30 68                                            ldr r0, [r6]
008b008a  00 28                                            cmp r0, #0
008b008c  0e d0                                            beq #0x8b00ac
008b008e  b3 79                                            ldrb r3, [r6, #6]
008b0090  00 2b                                            cmp r3, #0
008b0092  0b d1                                            bne #0x8b00ac
008b0094  83 68                                            ldr r3, [r0, #8]
008b0096  c2 68                                            ldr r2, [r0, #0xc]
008b0098  93 42                                            cmp r3, r2
008b009a  4b d2                                            bhs #0x8b0134
008b009c  18 78                                            ldrb r0, [r3]
008b009e  30 71                                            strb r0, [r6, #4]
008b00a0  01 30                                            adds r0, #1
008b00a2  43 42                                            rsbs r3, r0, #0
008b00a4  43 41                                            adcs r3, r0
008b00a6  73 71                                            strb r3, [r6, #5]
008b00a8  01 23                                            movs r3, #1
008b00aa  b3 71                                            strb r3, [r6, #6]
008b00ac  38 68                                            ldr r0, [r7]
008b00ae  00 28                                            cmp r0, #0
008b00b0  0f d0                                            beq #0x8b00d2
008b00b2  bb 79                                            ldrb r3, [r7, #6]
008b00b4  00 2b                                            cmp r3, #0
008b00b6  0c d1                                            bne #0x8b00d2
008b00b8  83 68                                            ldr r3, [r0, #8]
008b00ba  c2 68                                            ldr r2, [r0, #0xc]
008b00bc  93 42                                            cmp r3, r2
008b00be  35 d2                                            bhs #0x8b012c
008b00c0  18 78                                            ldrb r0, [r3]
008b00c2  38 71                                            strb r0, [r7, #4]
008b00c4  01 30                                            adds r0, #1
008b00c6  43 42                                            rsbs r3, r0, #0
008b00c8  43 41                                            adcs r3, r0
008b00ca  01 22                                            movs r2, #1
008b00cc  7b 71                                            strb r3, [r7, #5]
008b00ce  ba 71                                            strb r2, [r7, #6]
008b00d0  00 e0                                            b #0x8b00d4
008b00d2  7b 79                                            ldrb r3, [r7, #5]
008b00d4  72 79                                            ldrb r2, [r6, #5]
008b00d6  9a 42                                            cmp r2, r3
008b00d8  05 d1                                            bne #0x8b00e6
008b00da  43 46                                            mov r3, r8
008b00dc  1a 68                                            ldr r2, [r3]
008b00de  02 23                                            movs r3, #2
008b00e0  41 46                                            mov r1, r8
008b00e2  13 43                                            orrs r3, r2
008b00e4  0b 60                                            str r3, [r1]
008b00e6  07 22                                            movs r2, #7
008b00e8  31 1c                                            adds r1, r6, #0
008b00ea  50 46                                            mov r0, sl
008b00ec  5d f6 24 e7                                      blx #0x30df38
008b00f0  20 1c                                            adds r0, r4, #0
008b00f2  f5 f7 c7 fc                                      bl #0x8a5a84
008b00f6  48 46                                            mov r0, sb
008b00f8  f3 f7 fc f9                                      bl #0x8a34f4
008b00fc  5a 46                                            mov r2, fp
008b00fe  ab 58                                            ldr r3, [r5, r2]
008b0100  8f 9a                                            ldr r2, [sp, #0x23c]
008b0102  50 46                                            mov r0, sl
008b0104  1b 68                                            ldr r3, [r3]
008b0106  9a 42                                            cmp r2, r3
008b0108  18 d1                                            bne #0x8b013c
008b010a  91 23                                            movs r3, #0x91
008b010c  9b 00                                            lsls r3, r3, #2
008b010e  9d 44                                            add sp, r3
008b0110  3c bc                                            pop {r2, r3, r4, r5}
008b0112  90 46                                            mov r8, r2
008b0114  99 46                                            mov sb, r3
008b0116  a2 46                                            mov sl, r4
008b0118  ab 46                                            mov fp, r5
008b011a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b011c  05 99                                            ldr r1, [sp, #0x14]
008b011e  20 1c                                            adds r0, r4, #0
008b0120  0a f0 da fa                                      bl #0x8ba6d8
008b0124  00 23                                            movs r3, #0
008b0126  41 46                                            mov r1, r8
008b0128  0b 60                                            str r3, [r1]
008b012a  ad e7                                            b #0x8b0088
008b012c  03 68                                            ldr r3, [r0]
008b012e  1b 6a                                            ldr r3, [r3, #0x20]
008b0130  98 47                                            blx r3
008b0132  c6 e7                                            b #0x8b00c2
008b0134  03 68                                            ldr r3, [r0]
008b0136  1b 6a                                            ldr r3, [r3, #0x20]
008b0138  98 47                                            blx r3
008b013a  b0 e7                                            b #0x8b009e
008b013c  5e f6 e8 e0                                      blx #0x30e310
; mapping-symbol data/literal pool
008b0140  bc fd ff ff 7a 4a 0e 00 ac 40 00 00 e4 1c 00 00  .byte 0xbc, 0xfd, 0xff, 0xff, 0x7a, 0x4a, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00
008b0150  e0 1f 00 00 01 01 00 00                          .byte 0xe0, 0x1f, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008b0578, declared_size=484, range_size=484, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEjcEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, unsigned int, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, unsigned int&, char*)
; decoder-mode: thumb
008b0578  f0 b5                                            push {r4, r5, r6, r7, lr}
008b057a  5f 46                                            mov r7, fp
008b057c  56 46                                            mov r6, sl
008b057e  4d 46                                            mov r5, sb
008b0580  44 46                                            mov r4, r8
008b0582  f0 b4                                            push {r4, r5, r6, r7}
008b0584  71 4e                                            ldr r6, [pc, #0x1c4]
008b0586  15 1c                                            adds r5, r2, #0
008b0588  71 4a                                            ldr r2, [pc, #0x1c4]
008b058a  7e 44                                            add r6, pc
008b058c  99 46                                            mov sb, r3
008b058e  b3 58                                            ldr r3, [r6, r2]
008b0590  97 b0                                            sub sp, #0x5c
008b0592  0c 1c                                            adds r4, r1, #0
008b0594  1b 68                                            ldr r3, [r3]
008b0596  21 99                                            ldr r1, [sp, #0x84]
008b0598  82 46                                            mov sl, r0
008b059a  15 93                                            str r3, [sp, #0x54]
008b059c  09 91                                            str r1, [sp, #0x24]
008b059e  0d ab                                            add r3, sp, #0x34
008b05a0  49 46                                            mov r1, sb
008b05a2  20 31                                            adds r1, #0x20
008b05a4  18 1c                                            adds r0, r3, #0
008b05a6  93 46                                            mov fp, r2
008b05a8  98 46                                            mov r8, r3
008b05aa  20 9f                                            ldr r7, [sp, #0x80]
008b05ac  f2 f7 d8 ff                                      bl #0x8a3560
008b05b0  68 4b                                            ldr r3, [pc, #0x1a0]
008b05b2  40 46                                            mov r0, r8
008b05b4  f1 58                                            ldr r1, [r6, r3]
008b05b6  f2 f7 fb ff                                      bl #0x8a35b0
008b05ba  49 46                                            mov r1, sb
008b05bc  03 1c                                            adds r3, r0, #0
008b05be  4a 68                                            ldr r2, [r1, #4]
008b05c0  20 1c                                            adds r0, r4, #0
008b05c2  29 1c                                            adds r1, r5, #0
008b05c4  fb f7 30 ff                                      bl #0x8ac428
008b05c8  02 1c                                            adds r2, r0, #0
008b05ca  07 90                                            str r0, [sp, #0x1c]
008b05cc  20 68                                            ldr r0, [r4]
008b05ce  01 23                                            movs r3, #1
008b05d0  1a 40                                            ands r2, r3
008b05d2  08 92                                            str r2, [sp, #0x20]
008b05d4  00 28                                            cmp r0, #0
008b05d6  0f d0                                            beq #0x8b05f8
008b05d8  a3 79                                            ldrb r3, [r4, #6]
008b05da  00 2b                                            cmp r3, #0
008b05dc  0c d1                                            bne #0x8b05f8
008b05de  83 68                                            ldr r3, [r0, #8]
008b05e0  c2 68                                            ldr r2, [r0, #0xc]
008b05e2  93 42                                            cmp r3, r2
008b05e4  00 d3                                            blo #0x8b05e8
008b05e6  ab e0                                            b #0x8b0740
008b05e8  18 78                                            ldrb r0, [r3]
008b05ea  20 71                                            strb r0, [r4, #4]
008b05ec  01 30                                            adds r0, #1
008b05ee  43 42                                            rsbs r3, r0, #0
008b05f0  43 41                                            adcs r3, r0
008b05f2  63 71                                            strb r3, [r4, #5]
008b05f4  01 23                                            movs r3, #1
008b05f6  a3 71                                            strb r3, [r4, #6]
008b05f8  28 68                                            ldr r0, [r5]
008b05fa  00 28                                            cmp r0, #0
008b05fc  56 d0                                            beq #0x8b06ac
008b05fe  ab 79                                            ldrb r3, [r5, #6]
008b0600  00 2b                                            cmp r3, #0
008b0602  53 d1                                            bne #0x8b06ac
008b0604  83 68                                            ldr r3, [r0, #8]
008b0606  c2 68                                            ldr r2, [r0, #0xc]
008b0608  93 42                                            cmp r3, r2
008b060a  00 d3                                            blo #0x8b060e
008b060c  90 e0                                            b #0x8b0730
008b060e  18 78                                            ldrb r0, [r3]
008b0610  28 71                                            strb r0, [r5, #4]
008b0612  01 30                                            adds r0, #1
008b0614  01 22                                            movs r2, #1
008b0616  43 42                                            rsbs r3, r0, #0
008b0618  43 41                                            adcs r3, r0
008b061a  6b 71                                            strb r3, [r5, #5]
008b061c  aa 71                                            strb r2, [r5, #6]
008b061e  62 79                                            ldrb r2, [r4, #5]
008b0620  9a 42                                            cmp r2, r3
008b0622  47 d0                                            beq #0x8b06b4
008b0624  4c 4b                                            ldr r3, [pc, #0x130]
008b0626  40 46                                            mov r0, r8
008b0628  f1 58                                            ldr r1, [r6, r3]
008b062a  f2 f7 c1 ff                                      bl #0x8a35b0
008b062e  03 68                                            ldr r3, [r0]
008b0630  81 46                                            mov sb, r0
008b0632  db 68                                            ldr r3, [r3, #0xc]
008b0634  98 47                                            blx r3
008b0636  6a 46                                            mov r2, sp
008b0638  3c 32                                            adds r2, #0x3c
008b063a  0b 90                                            str r0, [sp, #0x2c]
008b063c  0a 92                                            str r2, [sp, #0x28]
008b063e  49 46                                            mov r1, sb
008b0640  0b 68                                            ldr r3, [r1]
008b0642  10 1c                                            adds r0, r2, #0
008b0644  1b 69                                            ldr r3, [r3, #0x10]
008b0646  98 47                                            blx r3
008b0648  07 9b                                            ldr r3, [sp, #0x1c]
008b064a  08 99                                            ldr r1, [sp, #0x20]
008b064c  20 1c                                            adds r0, r4, #0
008b064e  9a 10                                            asrs r2, r3, #2
008b0650  9b 07                                            lsls r3, r3, #0x1e
008b0652  db 0f                                            lsrs r3, r3, #0x1f
008b0654  01 93                                            str r3, [sp, #4]
008b0656  0b 9b                                            ldr r3, [sp, #0x2c]
008b0658  00 91                                            str r1, [sp]
008b065a  0a 99                                            ldr r1, [sp, #0x28]
008b065c  02 93                                            str r3, [sp, #8]
008b065e  0e ab                                            add r3, sp, #0x38
008b0660  03 91                                            str r1, [sp, #0xc]
008b0662  04 93                                            str r3, [sp, #0x10]
008b0664  29 1c                                            adds r1, r5, #0
008b0666  09 9b                                            ldr r3, [sp, #0x24]
008b0668  f9 f7 2c fe                                      bl #0x8aa2c4
008b066c  81 46                                            mov sb, r0
008b066e  0a 98                                            ldr r0, [sp, #0x28]
008b0670  63 f6 9c e1                                      blx #0x3139ac
008b0674  4a 46                                            mov r2, sb
008b0676  00 23                                            movs r3, #0
008b0678  00 2a                                            cmp r2, #0
008b067a  21 d1                                            bne #0x8b06c0
008b067c  04 23                                            movs r3, #4
008b067e  3b 60                                            str r3, [r7]
008b0680  20 68                                            ldr r0, [r4]
008b0682  00 28                                            cmp r0, #0
008b0684  20 d1                                            bne #0x8b06c8
008b0686  28 68                                            ldr r0, [r5]
008b0688  00 28                                            cmp r0, #0
008b068a  2f d0                                            beq #0x8b06ec
008b068c  ab 79                                            ldrb r3, [r5, #6]
008b068e  00 2b                                            cmp r3, #0
008b0690  2c d1                                            bne #0x8b06ec
008b0692  83 68                                            ldr r3, [r0, #8]
008b0694  c2 68                                            ldr r2, [r0, #0xc]
008b0696  93 42                                            cmp r3, r2
008b0698  46 d2                                            bhs #0x8b0728
008b069a  18 78                                            ldrb r0, [r3]
008b069c  28 71                                            strb r0, [r5, #4]
008b069e  01 30                                            adds r0, #1
008b06a0  43 42                                            rsbs r3, r0, #0
008b06a2  43 41                                            adcs r3, r0
008b06a4  01 22                                            movs r2, #1
008b06a6  6b 71                                            strb r3, [r5, #5]
008b06a8  aa 71                                            strb r2, [r5, #6]
008b06aa  20 e0                                            b #0x8b06ee
008b06ac  6b 79                                            ldrb r3, [r5, #5]
008b06ae  62 79                                            ldrb r2, [r4, #5]
008b06b0  9a 42                                            cmp r2, r3
008b06b2  b7 d1                                            bne #0x8b0624
008b06b4  08 9b                                            ldr r3, [sp, #0x20]
008b06b6  01 2b                                            cmp r3, #1
008b06b8  e0 d1                                            bne #0x8b067c
008b06ba  09 99                                            ldr r1, [sp, #0x24]
008b06bc  00 23                                            movs r3, #0
008b06be  0b 60                                            str r3, [r1]
008b06c0  3b 60                                            str r3, [r7]
008b06c2  20 68                                            ldr r0, [r4]
008b06c4  00 28                                            cmp r0, #0
008b06c6  de d0                                            beq #0x8b0686
008b06c8  a3 79                                            ldrb r3, [r4, #6]
008b06ca  00 2b                                            cmp r3, #0
008b06cc  db d1                                            bne #0x8b0686
008b06ce  83 68                                            ldr r3, [r0, #8]
008b06d0  c2 68                                            ldr r2, [r0, #0xc]
008b06d2  93 42                                            cmp r3, r2
008b06d4  30 d2                                            bhs #0x8b0738
008b06d6  18 78                                            ldrb r0, [r3]
008b06d8  20 71                                            strb r0, [r4, #4]
008b06da  01 30                                            adds r0, #1
008b06dc  43 42                                            rsbs r3, r0, #0
008b06de  43 41                                            adcs r3, r0
008b06e0  63 71                                            strb r3, [r4, #5]
008b06e2  01 23                                            movs r3, #1
008b06e4  a3 71                                            strb r3, [r4, #6]
008b06e6  28 68                                            ldr r0, [r5]
008b06e8  00 28                                            cmp r0, #0
008b06ea  cf d1                                            bne #0x8b068c
008b06ec  6b 79                                            ldrb r3, [r5, #5]
008b06ee  62 79                                            ldrb r2, [r4, #5]
008b06f0  9a 42                                            cmp r2, r3
008b06f2  03 d1                                            bne #0x8b06fc
008b06f4  3a 68                                            ldr r2, [r7]
008b06f6  02 23                                            movs r3, #2
008b06f8  13 43                                            orrs r3, r2
008b06fa  3b 60                                            str r3, [r7]
008b06fc  21 1c                                            adds r1, r4, #0
008b06fe  07 22                                            movs r2, #7
008b0700  50 46                                            mov r0, sl
008b0702  5d f6 1a e4                                      blx #0x30df38
008b0706  40 46                                            mov r0, r8
008b0708  f2 f7 f4 fe                                      bl #0x8a34f4
008b070c  59 46                                            mov r1, fp
008b070e  73 58                                            ldr r3, [r6, r1]
008b0710  15 9a                                            ldr r2, [sp, #0x54]
008b0712  50 46                                            mov r0, sl
008b0714  1b 68                                            ldr r3, [r3]
008b0716  9a 42                                            cmp r2, r3
008b0718  16 d1                                            bne #0x8b0748
008b071a  17 b0                                            add sp, #0x5c
008b071c  3c bc                                            pop {r2, r3, r4, r5}
008b071e  90 46                                            mov r8, r2
008b0720  99 46                                            mov sb, r3
008b0722  a2 46                                            mov sl, r4
008b0724  ab 46                                            mov fp, r5
008b0726  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b0728  03 68                                            ldr r3, [r0]
008b072a  1b 6a                                            ldr r3, [r3, #0x20]
008b072c  98 47                                            blx r3
008b072e  b5 e7                                            b #0x8b069c
008b0730  03 68                                            ldr r3, [r0]
008b0732  1b 6a                                            ldr r3, [r3, #0x20]
008b0734  98 47                                            blx r3
008b0736  6b e7                                            b #0x8b0610
008b0738  03 68                                            ldr r3, [r0]
008b073a  1b 6a                                            ldr r3, [r3, #0x20]
008b073c  98 47                                            blx r3
008b073e  cb e7                                            b #0x8b06d8
008b0740  03 68                                            ldr r3, [r0]
008b0742  1b 6a                                            ldr r3, [r3, #0x20]
008b0744  98 47                                            blx r3
008b0746  50 e7                                            b #0x8b05ea
008b0748  5d f6 e2 e5                                      blx #0x30e310
; mapping-symbol data/literal pool
008b074c  0a 45 0e 00 ac 40 00 00 e4 1c 00 00 e0 1f 00 00  .byte 0x0a, 0x45, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00

; FUNCTION 0x008b13fc, declared_size=492, range_size=492, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEycEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, unsigned long long, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, unsigned long long&, char*)
; decoder-mode: thumb
008b13fc  f0 b5                                            push {r4, r5, r6, r7, lr}
008b13fe  5f 46                                            mov r7, fp
008b1400  56 46                                            mov r6, sl
008b1402  4d 46                                            mov r5, sb
008b1404  44 46                                            mov r4, r8
008b1406  f0 b4                                            push {r4, r5, r6, r7}
008b1408  73 4e                                            ldr r6, [pc, #0x1cc]
008b140a  15 1c                                            adds r5, r2, #0
008b140c  73 4a                                            ldr r2, [pc, #0x1cc]
008b140e  7e 44                                            add r6, pc
008b1410  99 46                                            mov sb, r3
008b1412  b3 58                                            ldr r3, [r6, r2]
008b1414  97 b0                                            sub sp, #0x5c
008b1416  0c 1c                                            adds r4, r1, #0
008b1418  1b 68                                            ldr r3, [r3]
008b141a  21 99                                            ldr r1, [sp, #0x84]
008b141c  82 46                                            mov sl, r0
008b141e  15 93                                            str r3, [sp, #0x54]
008b1420  09 91                                            str r1, [sp, #0x24]
008b1422  0d ab                                            add r3, sp, #0x34
008b1424  49 46                                            mov r1, sb
008b1426  20 31                                            adds r1, #0x20
008b1428  18 1c                                            adds r0, r3, #0
008b142a  93 46                                            mov fp, r2
008b142c  98 46                                            mov r8, r3
008b142e  20 9f                                            ldr r7, [sp, #0x80]
008b1430  f2 f7 96 f8                                      bl #0x8a3560
008b1434  6a 4b                                            ldr r3, [pc, #0x1a8]
008b1436  40 46                                            mov r0, r8
008b1438  f1 58                                            ldr r1, [r6, r3]
008b143a  f2 f7 b9 f8                                      bl #0x8a35b0
008b143e  49 46                                            mov r1, sb
008b1440  03 1c                                            adds r3, r0, #0
008b1442  4a 68                                            ldr r2, [r1, #4]
008b1444  20 1c                                            adds r0, r4, #0
008b1446  29 1c                                            adds r1, r5, #0
008b1448  fa f7 ee ff                                      bl #0x8ac428
008b144c  02 1c                                            adds r2, r0, #0
008b144e  07 90                                            str r0, [sp, #0x1c]
008b1450  20 68                                            ldr r0, [r4]
008b1452  01 23                                            movs r3, #1
008b1454  1a 40                                            ands r2, r3
008b1456  08 92                                            str r2, [sp, #0x20]
008b1458  00 28                                            cmp r0, #0
008b145a  0f d0                                            beq #0x8b147c
008b145c  a3 79                                            ldrb r3, [r4, #6]
008b145e  00 2b                                            cmp r3, #0
008b1460  0c d1                                            bne #0x8b147c
008b1462  83 68                                            ldr r3, [r0, #8]
008b1464  c2 68                                            ldr r2, [r0, #0xc]
008b1466  93 42                                            cmp r3, r2
008b1468  00 d3                                            blo #0x8b146c
008b146a  ae e0                                            b #0x8b15ca
008b146c  18 78                                            ldrb r0, [r3]
008b146e  20 71                                            strb r0, [r4, #4]
008b1470  01 30                                            adds r0, #1
008b1472  43 42                                            rsbs r3, r0, #0
008b1474  43 41                                            adcs r3, r0
008b1476  63 71                                            strb r3, [r4, #5]
008b1478  01 23                                            movs r3, #1
008b147a  a3 71                                            strb r3, [r4, #6]
008b147c  28 68                                            ldr r0, [r5]
008b147e  00 28                                            cmp r0, #0
008b1480  56 d0                                            beq #0x8b1530
008b1482  ab 79                                            ldrb r3, [r5, #6]
008b1484  00 2b                                            cmp r3, #0
008b1486  53 d1                                            bne #0x8b1530
008b1488  83 68                                            ldr r3, [r0, #8]
008b148a  c2 68                                            ldr r2, [r0, #0xc]
008b148c  93 42                                            cmp r3, r2
008b148e  00 d3                                            blo #0x8b1492
008b1490  93 e0                                            b #0x8b15ba
008b1492  18 78                                            ldrb r0, [r3]
008b1494  28 71                                            strb r0, [r5, #4]
008b1496  01 30                                            adds r0, #1
008b1498  01 22                                            movs r2, #1
008b149a  43 42                                            rsbs r3, r0, #0
008b149c  43 41                                            adcs r3, r0
008b149e  6b 71                                            strb r3, [r5, #5]
008b14a0  aa 71                                            strb r2, [r5, #6]
008b14a2  62 79                                            ldrb r2, [r4, #5]
008b14a4  9a 42                                            cmp r2, r3
008b14a6  47 d0                                            beq #0x8b1538
008b14a8  4e 4b                                            ldr r3, [pc, #0x138]
008b14aa  40 46                                            mov r0, r8
008b14ac  f1 58                                            ldr r1, [r6, r3]
008b14ae  f2 f7 7f f8                                      bl #0x8a35b0
008b14b2  03 68                                            ldr r3, [r0]
008b14b4  81 46                                            mov sb, r0
008b14b6  db 68                                            ldr r3, [r3, #0xc]
008b14b8  98 47                                            blx r3
008b14ba  6a 46                                            mov r2, sp
008b14bc  3c 32                                            adds r2, #0x3c
008b14be  0b 90                                            str r0, [sp, #0x2c]
008b14c0  0a 92                                            str r2, [sp, #0x28]
008b14c2  49 46                                            mov r1, sb
008b14c4  0b 68                                            ldr r3, [r1]
008b14c6  10 1c                                            adds r0, r2, #0
008b14c8  1b 69                                            ldr r3, [r3, #0x10]
008b14ca  98 47                                            blx r3
008b14cc  07 9b                                            ldr r3, [sp, #0x1c]
008b14ce  08 99                                            ldr r1, [sp, #0x20]
008b14d0  20 1c                                            adds r0, r4, #0
008b14d2  9a 10                                            asrs r2, r3, #2
008b14d4  9b 07                                            lsls r3, r3, #0x1e
008b14d6  db 0f                                            lsrs r3, r3, #0x1f
008b14d8  01 93                                            str r3, [sp, #4]
008b14da  0b 9b                                            ldr r3, [sp, #0x2c]
008b14dc  00 91                                            str r1, [sp]
008b14de  0a 99                                            ldr r1, [sp, #0x28]
008b14e0  02 93                                            str r3, [sp, #8]
008b14e2  0e ab                                            add r3, sp, #0x38
008b14e4  03 91                                            str r1, [sp, #0xc]
008b14e6  04 93                                            str r3, [sp, #0x10]
008b14e8  29 1c                                            adds r1, r5, #0
008b14ea  09 9b                                            ldr r3, [sp, #0x24]
008b14ec  f8 f7 b2 f8                                      bl #0x8a9654
008b14f0  81 46                                            mov sb, r0
008b14f2  0a 98                                            ldr r0, [sp, #0x28]
008b14f4  62 f6 5a e2                                      blx #0x3139ac
008b14f8  4a 46                                            mov r2, sb
008b14fa  00 23                                            movs r3, #0
008b14fc  00 2a                                            cmp r2, #0
008b14fe  24 d1                                            bne #0x8b154a
008b1500  04 23                                            movs r3, #4
008b1502  3b 60                                            str r3, [r7]
008b1504  20 68                                            ldr r0, [r4]
008b1506  00 28                                            cmp r0, #0
008b1508  23 d1                                            bne #0x8b1552
008b150a  28 68                                            ldr r0, [r5]
008b150c  00 28                                            cmp r0, #0
008b150e  32 d0                                            beq #0x8b1576
008b1510  ab 79                                            ldrb r3, [r5, #6]
008b1512  00 2b                                            cmp r3, #0
008b1514  2f d1                                            bne #0x8b1576
008b1516  83 68                                            ldr r3, [r0, #8]
008b1518  c2 68                                            ldr r2, [r0, #0xc]
008b151a  93 42                                            cmp r3, r2
008b151c  49 d2                                            bhs #0x8b15b2
008b151e  18 78                                            ldrb r0, [r3]
008b1520  28 71                                            strb r0, [r5, #4]
008b1522  01 30                                            adds r0, #1
008b1524  43 42                                            rsbs r3, r0, #0
008b1526  43 41                                            adcs r3, r0
008b1528  01 22                                            movs r2, #1
008b152a  6b 71                                            strb r3, [r5, #5]
008b152c  aa 71                                            strb r2, [r5, #6]
008b152e  23 e0                                            b #0x8b1578
008b1530  6b 79                                            ldrb r3, [r5, #5]
008b1532  62 79                                            ldrb r2, [r4, #5]
008b1534  9a 42                                            cmp r2, r3
008b1536  b7 d1                                            bne #0x8b14a8
008b1538  08 9b                                            ldr r3, [sp, #0x20]
008b153a  01 2b                                            cmp r3, #1
008b153c  e0 d1                                            bne #0x8b1500
008b153e  09 99                                            ldr r1, [sp, #0x24]
008b1540  00 22                                            movs r2, #0
008b1542  00 23                                            movs r3, #0
008b1544  0a 60                                            str r2, [r1]
008b1546  4b 60                                            str r3, [r1, #4]
008b1548  00 23                                            movs r3, #0
008b154a  3b 60                                            str r3, [r7]
008b154c  20 68                                            ldr r0, [r4]
008b154e  00 28                                            cmp r0, #0
008b1550  db d0                                            beq #0x8b150a
008b1552  a3 79                                            ldrb r3, [r4, #6]
008b1554  00 2b                                            cmp r3, #0
008b1556  d8 d1                                            bne #0x8b150a
008b1558  83 68                                            ldr r3, [r0, #8]
008b155a  c2 68                                            ldr r2, [r0, #0xc]
008b155c  93 42                                            cmp r3, r2
008b155e  30 d2                                            bhs #0x8b15c2
008b1560  18 78                                            ldrb r0, [r3]
008b1562  20 71                                            strb r0, [r4, #4]
008b1564  01 30                                            adds r0, #1
008b1566  43 42                                            rsbs r3, r0, #0
008b1568  43 41                                            adcs r3, r0
008b156a  63 71                                            strb r3, [r4, #5]
008b156c  01 23                                            movs r3, #1
008b156e  a3 71                                            strb r3, [r4, #6]
008b1570  28 68                                            ldr r0, [r5]
008b1572  00 28                                            cmp r0, #0
008b1574  cc d1                                            bne #0x8b1510
008b1576  6b 79                                            ldrb r3, [r5, #5]
008b1578  62 79                                            ldrb r2, [r4, #5]
008b157a  9a 42                                            cmp r2, r3
008b157c  03 d1                                            bne #0x8b1586
008b157e  3a 68                                            ldr r2, [r7]
008b1580  02 23                                            movs r3, #2
008b1582  13 43                                            orrs r3, r2
008b1584  3b 60                                            str r3, [r7]
008b1586  21 1c                                            adds r1, r4, #0
008b1588  07 22                                            movs r2, #7
008b158a  50 46                                            mov r0, sl
008b158c  5c f6 d4 e4                                      blx #0x30df38
008b1590  40 46                                            mov r0, r8
008b1592  f1 f7 af ff                                      bl #0x8a34f4
008b1596  59 46                                            mov r1, fp
008b1598  73 58                                            ldr r3, [r6, r1]
008b159a  15 9a                                            ldr r2, [sp, #0x54]
008b159c  50 46                                            mov r0, sl
008b159e  1b 68                                            ldr r3, [r3]
008b15a0  9a 42                                            cmp r2, r3
008b15a2  16 d1                                            bne #0x8b15d2
008b15a4  17 b0                                            add sp, #0x5c
008b15a6  3c bc                                            pop {r2, r3, r4, r5}
008b15a8  90 46                                            mov r8, r2
008b15aa  99 46                                            mov sb, r3
008b15ac  a2 46                                            mov sl, r4
008b15ae  ab 46                                            mov fp, r5
008b15b0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b15b2  03 68                                            ldr r3, [r0]
008b15b4  1b 6a                                            ldr r3, [r3, #0x20]
008b15b6  98 47                                            blx r3
008b15b8  b2 e7                                            b #0x8b1520
008b15ba  03 68                                            ldr r3, [r0]
008b15bc  1b 6a                                            ldr r3, [r3, #0x20]
008b15be  98 47                                            blx r3
008b15c0  68 e7                                            b #0x8b1494
008b15c2  03 68                                            ldr r3, [r0]
008b15c4  1b 6a                                            ldr r3, [r3, #0x20]
008b15c6  98 47                                            blx r3
008b15c8  cb e7                                            b #0x8b1562
008b15ca  03 68                                            ldr r3, [r0]
008b15cc  1b 6a                                            ldr r3, [r3, #0x20]
008b15ce  98 47                                            blx r3
008b15d0  4d e7                                            b #0x8b146e
008b15d2  5c f6 9e e6                                      blx #0x30e310
008b15d6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b15d8  86 36 0e 00 ac 40 00 00 e4 1c 00 00 e0 1f 00 00  .byte 0x86, 0x36, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00

; FUNCTION 0x008b1644, declared_size=492, range_size=492, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEExcEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, long long, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, long long&, char*)
; decoder-mode: thumb
008b1644  f0 b5                                            push {r4, r5, r6, r7, lr}
008b1646  5f 46                                            mov r7, fp
008b1648  56 46                                            mov r6, sl
008b164a  4d 46                                            mov r5, sb
008b164c  44 46                                            mov r4, r8
008b164e  f0 b4                                            push {r4, r5, r6, r7}
008b1650  73 4e                                            ldr r6, [pc, #0x1cc]
008b1652  15 1c                                            adds r5, r2, #0
008b1654  73 4a                                            ldr r2, [pc, #0x1cc]
008b1656  7e 44                                            add r6, pc
008b1658  99 46                                            mov sb, r3
008b165a  b3 58                                            ldr r3, [r6, r2]
008b165c  97 b0                                            sub sp, #0x5c
008b165e  0c 1c                                            adds r4, r1, #0
008b1660  1b 68                                            ldr r3, [r3]
008b1662  21 99                                            ldr r1, [sp, #0x84]
008b1664  82 46                                            mov sl, r0
008b1666  15 93                                            str r3, [sp, #0x54]
008b1668  09 91                                            str r1, [sp, #0x24]
008b166a  0d ab                                            add r3, sp, #0x34
008b166c  49 46                                            mov r1, sb
008b166e  20 31                                            adds r1, #0x20
008b1670  18 1c                                            adds r0, r3, #0
008b1672  93 46                                            mov fp, r2
008b1674  98 46                                            mov r8, r3
008b1676  20 9f                                            ldr r7, [sp, #0x80]
008b1678  f1 f7 72 ff                                      bl #0x8a3560
008b167c  6a 4b                                            ldr r3, [pc, #0x1a8]
008b167e  40 46                                            mov r0, r8
008b1680  f1 58                                            ldr r1, [r6, r3]
008b1682  f1 f7 95 ff                                      bl #0x8a35b0
008b1686  49 46                                            mov r1, sb
008b1688  03 1c                                            adds r3, r0, #0
008b168a  4a 68                                            ldr r2, [r1, #4]
008b168c  20 1c                                            adds r0, r4, #0
008b168e  29 1c                                            adds r1, r5, #0
008b1690  fa f7 ca fe                                      bl #0x8ac428
008b1694  02 1c                                            adds r2, r0, #0
008b1696  07 90                                            str r0, [sp, #0x1c]
008b1698  20 68                                            ldr r0, [r4]
008b169a  01 23                                            movs r3, #1
008b169c  1a 40                                            ands r2, r3
008b169e  08 92                                            str r2, [sp, #0x20]
008b16a0  00 28                                            cmp r0, #0
008b16a2  0f d0                                            beq #0x8b16c4
008b16a4  a3 79                                            ldrb r3, [r4, #6]
008b16a6  00 2b                                            cmp r3, #0
008b16a8  0c d1                                            bne #0x8b16c4
008b16aa  83 68                                            ldr r3, [r0, #8]
008b16ac  c2 68                                            ldr r2, [r0, #0xc]
008b16ae  93 42                                            cmp r3, r2
008b16b0  00 d3                                            blo #0x8b16b4
008b16b2  ae e0                                            b #0x8b1812
008b16b4  18 78                                            ldrb r0, [r3]
008b16b6  20 71                                            strb r0, [r4, #4]
008b16b8  01 30                                            adds r0, #1
008b16ba  43 42                                            rsbs r3, r0, #0
008b16bc  43 41                                            adcs r3, r0
008b16be  63 71                                            strb r3, [r4, #5]
008b16c0  01 23                                            movs r3, #1
008b16c2  a3 71                                            strb r3, [r4, #6]
008b16c4  28 68                                            ldr r0, [r5]
008b16c6  00 28                                            cmp r0, #0
008b16c8  56 d0                                            beq #0x8b1778
008b16ca  ab 79                                            ldrb r3, [r5, #6]
008b16cc  00 2b                                            cmp r3, #0
008b16ce  53 d1                                            bne #0x8b1778
008b16d0  83 68                                            ldr r3, [r0, #8]
008b16d2  c2 68                                            ldr r2, [r0, #0xc]
008b16d4  93 42                                            cmp r3, r2
008b16d6  00 d3                                            blo #0x8b16da
008b16d8  93 e0                                            b #0x8b1802
008b16da  18 78                                            ldrb r0, [r3]
008b16dc  28 71                                            strb r0, [r5, #4]
008b16de  01 30                                            adds r0, #1
008b16e0  01 22                                            movs r2, #1
008b16e2  43 42                                            rsbs r3, r0, #0
008b16e4  43 41                                            adcs r3, r0
008b16e6  6b 71                                            strb r3, [r5, #5]
008b16e8  aa 71                                            strb r2, [r5, #6]
008b16ea  62 79                                            ldrb r2, [r4, #5]
008b16ec  9a 42                                            cmp r2, r3
008b16ee  47 d0                                            beq #0x8b1780
008b16f0  4e 4b                                            ldr r3, [pc, #0x138]
008b16f2  40 46                                            mov r0, r8
008b16f4  f1 58                                            ldr r1, [r6, r3]
008b16f6  f1 f7 5b ff                                      bl #0x8a35b0
008b16fa  03 68                                            ldr r3, [r0]
008b16fc  81 46                                            mov sb, r0
008b16fe  db 68                                            ldr r3, [r3, #0xc]
008b1700  98 47                                            blx r3
008b1702  6a 46                                            mov r2, sp
008b1704  3c 32                                            adds r2, #0x3c
008b1706  0b 90                                            str r0, [sp, #0x2c]
008b1708  0a 92                                            str r2, [sp, #0x28]
008b170a  49 46                                            mov r1, sb
008b170c  0b 68                                            ldr r3, [r1]
008b170e  10 1c                                            adds r0, r2, #0
008b1710  1b 69                                            ldr r3, [r3, #0x10]
008b1712  98 47                                            blx r3
008b1714  07 9b                                            ldr r3, [sp, #0x1c]
008b1716  08 99                                            ldr r1, [sp, #0x20]
008b1718  20 1c                                            adds r0, r4, #0
008b171a  9a 10                                            asrs r2, r3, #2
008b171c  9b 07                                            lsls r3, r3, #0x1e
008b171e  db 0f                                            lsrs r3, r3, #0x1f
008b1720  01 93                                            str r3, [sp, #4]
008b1722  0b 9b                                            ldr r3, [sp, #0x2c]
008b1724  00 91                                            str r1, [sp]
008b1726  0a 99                                            ldr r1, [sp, #0x28]
008b1728  02 93                                            str r3, [sp, #8]
008b172a  0e ab                                            add r3, sp, #0x38
008b172c  03 91                                            str r1, [sp, #0xc]
008b172e  04 93                                            str r3, [sp, #0x10]
008b1730  29 1c                                            adds r1, r5, #0
008b1732  09 9b                                            ldr r3, [sp, #0x24]
008b1734  f8 f7 4c fb                                      bl #0x8a9dd0
008b1738  81 46                                            mov sb, r0
008b173a  0a 98                                            ldr r0, [sp, #0x28]
008b173c  62 f6 36 e1                                      blx #0x3139ac
008b1740  4a 46                                            mov r2, sb
008b1742  00 23                                            movs r3, #0
008b1744  00 2a                                            cmp r2, #0
008b1746  24 d1                                            bne #0x8b1792
008b1748  04 23                                            movs r3, #4
008b174a  3b 60                                            str r3, [r7]
008b174c  20 68                                            ldr r0, [r4]
008b174e  00 28                                            cmp r0, #0
008b1750  23 d1                                            bne #0x8b179a
008b1752  28 68                                            ldr r0, [r5]
008b1754  00 28                                            cmp r0, #0
008b1756  32 d0                                            beq #0x8b17be
008b1758  ab 79                                            ldrb r3, [r5, #6]
008b175a  00 2b                                            cmp r3, #0
008b175c  2f d1                                            bne #0x8b17be
008b175e  83 68                                            ldr r3, [r0, #8]
008b1760  c2 68                                            ldr r2, [r0, #0xc]
008b1762  93 42                                            cmp r3, r2
008b1764  49 d2                                            bhs #0x8b17fa
008b1766  18 78                                            ldrb r0, [r3]
008b1768  28 71                                            strb r0, [r5, #4]
008b176a  01 30                                            adds r0, #1
008b176c  43 42                                            rsbs r3, r0, #0
008b176e  43 41                                            adcs r3, r0
008b1770  01 22                                            movs r2, #1
008b1772  6b 71                                            strb r3, [r5, #5]
008b1774  aa 71                                            strb r2, [r5, #6]
008b1776  23 e0                                            b #0x8b17c0
008b1778  6b 79                                            ldrb r3, [r5, #5]
008b177a  62 79                                            ldrb r2, [r4, #5]
008b177c  9a 42                                            cmp r2, r3
008b177e  b7 d1                                            bne #0x8b16f0
008b1780  08 9b                                            ldr r3, [sp, #0x20]
008b1782  01 2b                                            cmp r3, #1
008b1784  e0 d1                                            bne #0x8b1748
008b1786  09 99                                            ldr r1, [sp, #0x24]
008b1788  00 22                                            movs r2, #0
008b178a  00 23                                            movs r3, #0
008b178c  0a 60                                            str r2, [r1]
008b178e  4b 60                                            str r3, [r1, #4]
008b1790  00 23                                            movs r3, #0
008b1792  3b 60                                            str r3, [r7]
008b1794  20 68                                            ldr r0, [r4]
008b1796  00 28                                            cmp r0, #0
008b1798  db d0                                            beq #0x8b1752
008b179a  a3 79                                            ldrb r3, [r4, #6]
008b179c  00 2b                                            cmp r3, #0
008b179e  d8 d1                                            bne #0x8b1752
008b17a0  83 68                                            ldr r3, [r0, #8]
008b17a2  c2 68                                            ldr r2, [r0, #0xc]
008b17a4  93 42                                            cmp r3, r2
008b17a6  30 d2                                            bhs #0x8b180a
008b17a8  18 78                                            ldrb r0, [r3]
008b17aa  20 71                                            strb r0, [r4, #4]
008b17ac  01 30                                            adds r0, #1
008b17ae  43 42                                            rsbs r3, r0, #0
008b17b0  43 41                                            adcs r3, r0
008b17b2  63 71                                            strb r3, [r4, #5]
008b17b4  01 23                                            movs r3, #1
008b17b6  a3 71                                            strb r3, [r4, #6]
008b17b8  28 68                                            ldr r0, [r5]
008b17ba  00 28                                            cmp r0, #0
008b17bc  cc d1                                            bne #0x8b1758
008b17be  6b 79                                            ldrb r3, [r5, #5]
008b17c0  62 79                                            ldrb r2, [r4, #5]
008b17c2  9a 42                                            cmp r2, r3
008b17c4  03 d1                                            bne #0x8b17ce
008b17c6  3a 68                                            ldr r2, [r7]
008b17c8  02 23                                            movs r3, #2
008b17ca  13 43                                            orrs r3, r2
008b17cc  3b 60                                            str r3, [r7]
008b17ce  21 1c                                            adds r1, r4, #0
008b17d0  07 22                                            movs r2, #7
008b17d2  50 46                                            mov r0, sl
008b17d4  5c f6 b0 e3                                      blx #0x30df38
008b17d8  40 46                                            mov r0, r8
008b17da  f1 f7 8b fe                                      bl #0x8a34f4
008b17de  59 46                                            mov r1, fp
008b17e0  73 58                                            ldr r3, [r6, r1]
008b17e2  15 9a                                            ldr r2, [sp, #0x54]
008b17e4  50 46                                            mov r0, sl
008b17e6  1b 68                                            ldr r3, [r3]
008b17e8  9a 42                                            cmp r2, r3
008b17ea  16 d1                                            bne #0x8b181a
008b17ec  17 b0                                            add sp, #0x5c
008b17ee  3c bc                                            pop {r2, r3, r4, r5}
008b17f0  90 46                                            mov r8, r2
008b17f2  99 46                                            mov sb, r3
008b17f4  a2 46                                            mov sl, r4
008b17f6  ab 46                                            mov fp, r5
008b17f8  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b17fa  03 68                                            ldr r3, [r0]
008b17fc  1b 6a                                            ldr r3, [r3, #0x20]
008b17fe  98 47                                            blx r3
008b1800  b2 e7                                            b #0x8b1768
008b1802  03 68                                            ldr r3, [r0]
008b1804  1b 6a                                            ldr r3, [r3, #0x20]
008b1806  98 47                                            blx r3
008b1808  68 e7                                            b #0x8b16dc
008b180a  03 68                                            ldr r3, [r0]
008b180c  1b 6a                                            ldr r3, [r3, #0x20]
008b180e  98 47                                            blx r3
008b1810  cb e7                                            b #0x8b17aa
008b1812  03 68                                            ldr r3, [r0]
008b1814  1b 6a                                            ldr r3, [r3, #0x20]
008b1816  98 47                                            blx r3
008b1818  4d e7                                            b #0x8b16b6
008b181a  5c f6 7a e5                                      blx #0x30e310
008b181e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b1820  3e 34 0e 00 ac 40 00 00 e4 1c 00 00 e0 1f 00 00  .byte 0x3e, 0x34, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00

; FUNCTION 0x008b19e4, declared_size=484, range_size=484, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEtcEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, unsigned short, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, unsigned short&, char*)
; decoder-mode: thumb
008b19e4  f0 b5                                            push {r4, r5, r6, r7, lr}
008b19e6  5f 46                                            mov r7, fp
008b19e8  56 46                                            mov r6, sl
008b19ea  4d 46                                            mov r5, sb
008b19ec  44 46                                            mov r4, r8
008b19ee  f0 b4                                            push {r4, r5, r6, r7}
008b19f0  71 4e                                            ldr r6, [pc, #0x1c4]
008b19f2  15 1c                                            adds r5, r2, #0
008b19f4  71 4a                                            ldr r2, [pc, #0x1c4]
008b19f6  7e 44                                            add r6, pc
008b19f8  99 46                                            mov sb, r3
008b19fa  b3 58                                            ldr r3, [r6, r2]
008b19fc  97 b0                                            sub sp, #0x5c
008b19fe  0c 1c                                            adds r4, r1, #0
008b1a00  1b 68                                            ldr r3, [r3]
008b1a02  21 99                                            ldr r1, [sp, #0x84]
008b1a04  82 46                                            mov sl, r0
008b1a06  15 93                                            str r3, [sp, #0x54]
008b1a08  09 91                                            str r1, [sp, #0x24]
008b1a0a  0d ab                                            add r3, sp, #0x34
008b1a0c  49 46                                            mov r1, sb
008b1a0e  20 31                                            adds r1, #0x20
008b1a10  18 1c                                            adds r0, r3, #0
008b1a12  93 46                                            mov fp, r2
008b1a14  98 46                                            mov r8, r3
008b1a16  20 9f                                            ldr r7, [sp, #0x80]
008b1a18  f1 f7 a2 fd                                      bl #0x8a3560
008b1a1c  68 4b                                            ldr r3, [pc, #0x1a0]
008b1a1e  40 46                                            mov r0, r8
008b1a20  f1 58                                            ldr r1, [r6, r3]
008b1a22  f1 f7 c5 fd                                      bl #0x8a35b0
008b1a26  49 46                                            mov r1, sb
008b1a28  03 1c                                            adds r3, r0, #0
008b1a2a  4a 68                                            ldr r2, [r1, #4]
008b1a2c  20 1c                                            adds r0, r4, #0
008b1a2e  29 1c                                            adds r1, r5, #0
008b1a30  fa f7 fa fc                                      bl #0x8ac428
008b1a34  02 1c                                            adds r2, r0, #0
008b1a36  07 90                                            str r0, [sp, #0x1c]
008b1a38  20 68                                            ldr r0, [r4]
008b1a3a  01 23                                            movs r3, #1
008b1a3c  1a 40                                            ands r2, r3
008b1a3e  08 92                                            str r2, [sp, #0x20]
008b1a40  00 28                                            cmp r0, #0
008b1a42  0f d0                                            beq #0x8b1a64
008b1a44  a3 79                                            ldrb r3, [r4, #6]
008b1a46  00 2b                                            cmp r3, #0
008b1a48  0c d1                                            bne #0x8b1a64
008b1a4a  83 68                                            ldr r3, [r0, #8]
008b1a4c  c2 68                                            ldr r2, [r0, #0xc]
008b1a4e  93 42                                            cmp r3, r2
008b1a50  00 d3                                            blo #0x8b1a54
008b1a52  ab e0                                            b #0x8b1bac
008b1a54  18 78                                            ldrb r0, [r3]
008b1a56  20 71                                            strb r0, [r4, #4]
008b1a58  01 30                                            adds r0, #1
008b1a5a  43 42                                            rsbs r3, r0, #0
008b1a5c  43 41                                            adcs r3, r0
008b1a5e  63 71                                            strb r3, [r4, #5]
008b1a60  01 23                                            movs r3, #1
008b1a62  a3 71                                            strb r3, [r4, #6]
008b1a64  28 68                                            ldr r0, [r5]
008b1a66  00 28                                            cmp r0, #0
008b1a68  56 d0                                            beq #0x8b1b18
008b1a6a  ab 79                                            ldrb r3, [r5, #6]
008b1a6c  00 2b                                            cmp r3, #0
008b1a6e  53 d1                                            bne #0x8b1b18
008b1a70  83 68                                            ldr r3, [r0, #8]
008b1a72  c2 68                                            ldr r2, [r0, #0xc]
008b1a74  93 42                                            cmp r3, r2
008b1a76  00 d3                                            blo #0x8b1a7a
008b1a78  90 e0                                            b #0x8b1b9c
008b1a7a  18 78                                            ldrb r0, [r3]
008b1a7c  28 71                                            strb r0, [r5, #4]
008b1a7e  01 30                                            adds r0, #1
008b1a80  01 22                                            movs r2, #1
008b1a82  43 42                                            rsbs r3, r0, #0
008b1a84  43 41                                            adcs r3, r0
008b1a86  6b 71                                            strb r3, [r5, #5]
008b1a88  aa 71                                            strb r2, [r5, #6]
008b1a8a  62 79                                            ldrb r2, [r4, #5]
008b1a8c  9a 42                                            cmp r2, r3
008b1a8e  47 d0                                            beq #0x8b1b20
008b1a90  4c 4b                                            ldr r3, [pc, #0x130]
008b1a92  40 46                                            mov r0, r8
008b1a94  f1 58                                            ldr r1, [r6, r3]
008b1a96  f1 f7 8b fd                                      bl #0x8a35b0
008b1a9a  03 68                                            ldr r3, [r0]
008b1a9c  81 46                                            mov sb, r0
008b1a9e  db 68                                            ldr r3, [r3, #0xc]
008b1aa0  98 47                                            blx r3
008b1aa2  6a 46                                            mov r2, sp
008b1aa4  3c 32                                            adds r2, #0x3c
008b1aa6  0b 90                                            str r0, [sp, #0x2c]
008b1aa8  0a 92                                            str r2, [sp, #0x28]
008b1aaa  49 46                                            mov r1, sb
008b1aac  0b 68                                            ldr r3, [r1]
008b1aae  10 1c                                            adds r0, r2, #0
008b1ab0  1b 69                                            ldr r3, [r3, #0x10]
008b1ab2  98 47                                            blx r3
008b1ab4  07 9b                                            ldr r3, [sp, #0x1c]
008b1ab6  08 99                                            ldr r1, [sp, #0x20]
008b1ab8  20 1c                                            adds r0, r4, #0
008b1aba  9a 10                                            asrs r2, r3, #2
008b1abc  9b 07                                            lsls r3, r3, #0x1e
008b1abe  db 0f                                            lsrs r3, r3, #0x1f
008b1ac0  01 93                                            str r3, [sp, #4]
008b1ac2  0b 9b                                            ldr r3, [sp, #0x2c]
008b1ac4  00 91                                            str r1, [sp]
008b1ac6  0a 99                                            ldr r1, [sp, #0x28]
008b1ac8  02 93                                            str r3, [sp, #8]
008b1aca  0e ab                                            add r3, sp, #0x38
008b1acc  03 91                                            str r1, [sp, #0xc]
008b1ace  04 93                                            str r3, [sp, #0x10]
008b1ad0  29 1c                                            adds r1, r5, #0
008b1ad2  09 9b                                            ldr r3, [sp, #0x24]
008b1ad4  f7 f7 b8 fe                                      bl #0x8a9848
008b1ad8  81 46                                            mov sb, r0
008b1ada  0a 98                                            ldr r0, [sp, #0x28]
008b1adc  61 f6 66 e7                                      blx #0x3139ac
008b1ae0  4a 46                                            mov r2, sb
008b1ae2  00 23                                            movs r3, #0
008b1ae4  00 2a                                            cmp r2, #0
008b1ae6  21 d1                                            bne #0x8b1b2c
008b1ae8  04 23                                            movs r3, #4
008b1aea  3b 60                                            str r3, [r7]
008b1aec  20 68                                            ldr r0, [r4]
008b1aee  00 28                                            cmp r0, #0
008b1af0  20 d1                                            bne #0x8b1b34
008b1af2  28 68                                            ldr r0, [r5]
008b1af4  00 28                                            cmp r0, #0
008b1af6  2f d0                                            beq #0x8b1b58
008b1af8  ab 79                                            ldrb r3, [r5, #6]
008b1afa  00 2b                                            cmp r3, #0
008b1afc  2c d1                                            bne #0x8b1b58
008b1afe  83 68                                            ldr r3, [r0, #8]
008b1b00  c2 68                                            ldr r2, [r0, #0xc]
008b1b02  93 42                                            cmp r3, r2
008b1b04  46 d2                                            bhs #0x8b1b94
008b1b06  18 78                                            ldrb r0, [r3]
008b1b08  28 71                                            strb r0, [r5, #4]
008b1b0a  01 30                                            adds r0, #1
008b1b0c  43 42                                            rsbs r3, r0, #0
008b1b0e  43 41                                            adcs r3, r0
008b1b10  01 22                                            movs r2, #1
008b1b12  6b 71                                            strb r3, [r5, #5]
008b1b14  aa 71                                            strb r2, [r5, #6]
008b1b16  20 e0                                            b #0x8b1b5a
008b1b18  6b 79                                            ldrb r3, [r5, #5]
008b1b1a  62 79                                            ldrb r2, [r4, #5]
008b1b1c  9a 42                                            cmp r2, r3
008b1b1e  b7 d1                                            bne #0x8b1a90
008b1b20  08 9b                                            ldr r3, [sp, #0x20]
008b1b22  01 2b                                            cmp r3, #1
008b1b24  e0 d1                                            bne #0x8b1ae8
008b1b26  09 99                                            ldr r1, [sp, #0x24]
008b1b28  00 23                                            movs r3, #0
008b1b2a  0b 80                                            strh r3, [r1]
008b1b2c  3b 60                                            str r3, [r7]
008b1b2e  20 68                                            ldr r0, [r4]
008b1b30  00 28                                            cmp r0, #0
008b1b32  de d0                                            beq #0x8b1af2
008b1b34  a3 79                                            ldrb r3, [r4, #6]
008b1b36  00 2b                                            cmp r3, #0
008b1b38  db d1                                            bne #0x8b1af2
008b1b3a  83 68                                            ldr r3, [r0, #8]
008b1b3c  c2 68                                            ldr r2, [r0, #0xc]
008b1b3e  93 42                                            cmp r3, r2
008b1b40  30 d2                                            bhs #0x8b1ba4
008b1b42  18 78                                            ldrb r0, [r3]
008b1b44  20 71                                            strb r0, [r4, #4]
008b1b46  01 30                                            adds r0, #1
008b1b48  43 42                                            rsbs r3, r0, #0
008b1b4a  43 41                                            adcs r3, r0
008b1b4c  63 71                                            strb r3, [r4, #5]
008b1b4e  01 23                                            movs r3, #1
008b1b50  a3 71                                            strb r3, [r4, #6]
008b1b52  28 68                                            ldr r0, [r5]
008b1b54  00 28                                            cmp r0, #0
008b1b56  cf d1                                            bne #0x8b1af8
008b1b58  6b 79                                            ldrb r3, [r5, #5]
008b1b5a  62 79                                            ldrb r2, [r4, #5]
008b1b5c  9a 42                                            cmp r2, r3
008b1b5e  03 d1                                            bne #0x8b1b68
008b1b60  3a 68                                            ldr r2, [r7]
008b1b62  02 23                                            movs r3, #2
008b1b64  13 43                                            orrs r3, r2
008b1b66  3b 60                                            str r3, [r7]
008b1b68  21 1c                                            adds r1, r4, #0
008b1b6a  07 22                                            movs r2, #7
008b1b6c  50 46                                            mov r0, sl
008b1b6e  5c f6 e4 e1                                      blx #0x30df38
008b1b72  40 46                                            mov r0, r8
008b1b74  f1 f7 be fc                                      bl #0x8a34f4
008b1b78  59 46                                            mov r1, fp
008b1b7a  73 58                                            ldr r3, [r6, r1]
008b1b7c  15 9a                                            ldr r2, [sp, #0x54]
008b1b7e  50 46                                            mov r0, sl
008b1b80  1b 68                                            ldr r3, [r3]
008b1b82  9a 42                                            cmp r2, r3
008b1b84  16 d1                                            bne #0x8b1bb4
008b1b86  17 b0                                            add sp, #0x5c
008b1b88  3c bc                                            pop {r2, r3, r4, r5}
008b1b8a  90 46                                            mov r8, r2
008b1b8c  99 46                                            mov sb, r3
008b1b8e  a2 46                                            mov sl, r4
008b1b90  ab 46                                            mov fp, r5
008b1b92  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b1b94  03 68                                            ldr r3, [r0]
008b1b96  1b 6a                                            ldr r3, [r3, #0x20]
008b1b98  98 47                                            blx r3
008b1b9a  b5 e7                                            b #0x8b1b08
008b1b9c  03 68                                            ldr r3, [r0]
008b1b9e  1b 6a                                            ldr r3, [r3, #0x20]
008b1ba0  98 47                                            blx r3
008b1ba2  6b e7                                            b #0x8b1a7c
008b1ba4  03 68                                            ldr r3, [r0]
008b1ba6  1b 6a                                            ldr r3, [r3, #0x20]
008b1ba8  98 47                                            blx r3
008b1baa  cb e7                                            b #0x8b1b44
008b1bac  03 68                                            ldr r3, [r0]
008b1bae  1b 6a                                            ldr r3, [r3, #0x20]
008b1bb0  98 47                                            blx r3
008b1bb2  50 e7                                            b #0x8b1a56
008b1bb4  5c f6 ac e3                                      blx #0x30e310
; mapping-symbol data/literal pool
008b1bb8  9e 30 0e 00 ac 40 00 00 e4 1c 00 00 e0 1f 00 00  .byte 0x9e, 0x30, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00

; FUNCTION 0x008b1bf0, declared_size=484, range_size=484, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEElcEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, long, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, long&, char*)
; decoder-mode: thumb
008b1bf0  f0 b5                                            push {r4, r5, r6, r7, lr}
008b1bf2  5f 46                                            mov r7, fp
008b1bf4  56 46                                            mov r6, sl
008b1bf6  4d 46                                            mov r5, sb
008b1bf8  44 46                                            mov r4, r8
008b1bfa  f0 b4                                            push {r4, r5, r6, r7}
008b1bfc  71 4e                                            ldr r6, [pc, #0x1c4]
008b1bfe  15 1c                                            adds r5, r2, #0
008b1c00  71 4a                                            ldr r2, [pc, #0x1c4]
008b1c02  7e 44                                            add r6, pc
008b1c04  99 46                                            mov sb, r3
008b1c06  b3 58                                            ldr r3, [r6, r2]
008b1c08  97 b0                                            sub sp, #0x5c
008b1c0a  0c 1c                                            adds r4, r1, #0
008b1c0c  1b 68                                            ldr r3, [r3]
008b1c0e  21 99                                            ldr r1, [sp, #0x84]
008b1c10  82 46                                            mov sl, r0
008b1c12  15 93                                            str r3, [sp, #0x54]
008b1c14  09 91                                            str r1, [sp, #0x24]
008b1c16  0d ab                                            add r3, sp, #0x34
008b1c18  49 46                                            mov r1, sb
008b1c1a  20 31                                            adds r1, #0x20
008b1c1c  18 1c                                            adds r0, r3, #0
008b1c1e  93 46                                            mov fp, r2
008b1c20  98 46                                            mov r8, r3
008b1c22  20 9f                                            ldr r7, [sp, #0x80]
008b1c24  f1 f7 9c fc                                      bl #0x8a3560
008b1c28  68 4b                                            ldr r3, [pc, #0x1a0]
008b1c2a  40 46                                            mov r0, r8
008b1c2c  f1 58                                            ldr r1, [r6, r3]
008b1c2e  f1 f7 bf fc                                      bl #0x8a35b0
008b1c32  49 46                                            mov r1, sb
008b1c34  03 1c                                            adds r3, r0, #0
008b1c36  4a 68                                            ldr r2, [r1, #4]
008b1c38  20 1c                                            adds r0, r4, #0
008b1c3a  29 1c                                            adds r1, r5, #0
008b1c3c  fa f7 f4 fb                                      bl #0x8ac428
008b1c40  02 1c                                            adds r2, r0, #0
008b1c42  07 90                                            str r0, [sp, #0x1c]
008b1c44  20 68                                            ldr r0, [r4]
008b1c46  01 23                                            movs r3, #1
008b1c48  1a 40                                            ands r2, r3
008b1c4a  08 92                                            str r2, [sp, #0x20]
008b1c4c  00 28                                            cmp r0, #0
008b1c4e  0f d0                                            beq #0x8b1c70
008b1c50  a3 79                                            ldrb r3, [r4, #6]
008b1c52  00 2b                                            cmp r3, #0
008b1c54  0c d1                                            bne #0x8b1c70
008b1c56  83 68                                            ldr r3, [r0, #8]
008b1c58  c2 68                                            ldr r2, [r0, #0xc]
008b1c5a  93 42                                            cmp r3, r2
008b1c5c  00 d3                                            blo #0x8b1c60
008b1c5e  ab e0                                            b #0x8b1db8
008b1c60  18 78                                            ldrb r0, [r3]
008b1c62  20 71                                            strb r0, [r4, #4]
008b1c64  01 30                                            adds r0, #1
008b1c66  43 42                                            rsbs r3, r0, #0
008b1c68  43 41                                            adcs r3, r0
008b1c6a  63 71                                            strb r3, [r4, #5]
008b1c6c  01 23                                            movs r3, #1
008b1c6e  a3 71                                            strb r3, [r4, #6]
008b1c70  28 68                                            ldr r0, [r5]
008b1c72  00 28                                            cmp r0, #0
008b1c74  56 d0                                            beq #0x8b1d24
008b1c76  ab 79                                            ldrb r3, [r5, #6]
008b1c78  00 2b                                            cmp r3, #0
008b1c7a  53 d1                                            bne #0x8b1d24
008b1c7c  83 68                                            ldr r3, [r0, #8]
008b1c7e  c2 68                                            ldr r2, [r0, #0xc]
008b1c80  93 42                                            cmp r3, r2
008b1c82  00 d3                                            blo #0x8b1c86
008b1c84  90 e0                                            b #0x8b1da8
008b1c86  18 78                                            ldrb r0, [r3]
008b1c88  28 71                                            strb r0, [r5, #4]
008b1c8a  01 30                                            adds r0, #1
008b1c8c  01 22                                            movs r2, #1
008b1c8e  43 42                                            rsbs r3, r0, #0
008b1c90  43 41                                            adcs r3, r0
008b1c92  6b 71                                            strb r3, [r5, #5]
008b1c94  aa 71                                            strb r2, [r5, #6]
008b1c96  62 79                                            ldrb r2, [r4, #5]
008b1c98  9a 42                                            cmp r2, r3
008b1c9a  47 d0                                            beq #0x8b1d2c
008b1c9c  4c 4b                                            ldr r3, [pc, #0x130]
008b1c9e  40 46                                            mov r0, r8
008b1ca0  f1 58                                            ldr r1, [r6, r3]
008b1ca2  f1 f7 85 fc                                      bl #0x8a35b0
008b1ca6  03 68                                            ldr r3, [r0]
008b1ca8  81 46                                            mov sb, r0
008b1caa  db 68                                            ldr r3, [r3, #0xc]
008b1cac  98 47                                            blx r3
008b1cae  6a 46                                            mov r2, sp
008b1cb0  3c 32                                            adds r2, #0x3c
008b1cb2  0b 90                                            str r0, [sp, #0x2c]
008b1cb4  0a 92                                            str r2, [sp, #0x28]
008b1cb6  49 46                                            mov r1, sb
008b1cb8  0b 68                                            ldr r3, [r1]
008b1cba  10 1c                                            adds r0, r2, #0
008b1cbc  1b 69                                            ldr r3, [r3, #0x10]
008b1cbe  98 47                                            blx r3
008b1cc0  07 9b                                            ldr r3, [sp, #0x1c]
008b1cc2  08 99                                            ldr r1, [sp, #0x20]
008b1cc4  20 1c                                            adds r0, r4, #0
008b1cc6  9a 10                                            asrs r2, r3, #2
008b1cc8  9b 07                                            lsls r3, r3, #0x1e
008b1cca  db 0f                                            lsrs r3, r3, #0x1f
008b1ccc  01 93                                            str r3, [sp, #4]
008b1cce  0b 9b                                            ldr r3, [sp, #0x2c]
008b1cd0  00 91                                            str r1, [sp]
008b1cd2  0a 99                                            ldr r1, [sp, #0x28]
008b1cd4  02 93                                            str r3, [sp, #8]
008b1cd6  0e ab                                            add r3, sp, #0x38
008b1cd8  03 91                                            str r1, [sp, #0xc]
008b1cda  04 93                                            str r3, [sp, #0x10]
008b1cdc  29 1c                                            adds r1, r5, #0
008b1cde  09 9b                                            ldr r3, [sp, #0x24]
008b1ce0  f8 f7 16 fa                                      bl #0x8aa110
008b1ce4  81 46                                            mov sb, r0
008b1ce6  0a 98                                            ldr r0, [sp, #0x28]
008b1ce8  61 f6 60 e6                                      blx #0x3139ac
008b1cec  4a 46                                            mov r2, sb
008b1cee  00 23                                            movs r3, #0
008b1cf0  00 2a                                            cmp r2, #0
008b1cf2  21 d1                                            bne #0x8b1d38
008b1cf4  04 23                                            movs r3, #4
008b1cf6  3b 60                                            str r3, [r7]
008b1cf8  20 68                                            ldr r0, [r4]
008b1cfa  00 28                                            cmp r0, #0
008b1cfc  20 d1                                            bne #0x8b1d40
008b1cfe  28 68                                            ldr r0, [r5]
008b1d00  00 28                                            cmp r0, #0
008b1d02  2f d0                                            beq #0x8b1d64
008b1d04  ab 79                                            ldrb r3, [r5, #6]
008b1d06  00 2b                                            cmp r3, #0
008b1d08  2c d1                                            bne #0x8b1d64
008b1d0a  83 68                                            ldr r3, [r0, #8]
008b1d0c  c2 68                                            ldr r2, [r0, #0xc]
008b1d0e  93 42                                            cmp r3, r2
008b1d10  46 d2                                            bhs #0x8b1da0
008b1d12  18 78                                            ldrb r0, [r3]
008b1d14  28 71                                            strb r0, [r5, #4]
008b1d16  01 30                                            adds r0, #1
008b1d18  43 42                                            rsbs r3, r0, #0
008b1d1a  43 41                                            adcs r3, r0
008b1d1c  01 22                                            movs r2, #1
008b1d1e  6b 71                                            strb r3, [r5, #5]
008b1d20  aa 71                                            strb r2, [r5, #6]
008b1d22  20 e0                                            b #0x8b1d66
008b1d24  6b 79                                            ldrb r3, [r5, #5]
008b1d26  62 79                                            ldrb r2, [r4, #5]
008b1d28  9a 42                                            cmp r2, r3
008b1d2a  b7 d1                                            bne #0x8b1c9c
008b1d2c  08 9b                                            ldr r3, [sp, #0x20]
008b1d2e  01 2b                                            cmp r3, #1
008b1d30  e0 d1                                            bne #0x8b1cf4
008b1d32  09 99                                            ldr r1, [sp, #0x24]
008b1d34  00 23                                            movs r3, #0
008b1d36  0b 60                                            str r3, [r1]
008b1d38  3b 60                                            str r3, [r7]
008b1d3a  20 68                                            ldr r0, [r4]
008b1d3c  00 28                                            cmp r0, #0
008b1d3e  de d0                                            beq #0x8b1cfe
008b1d40  a3 79                                            ldrb r3, [r4, #6]
008b1d42  00 2b                                            cmp r3, #0
008b1d44  db d1                                            bne #0x8b1cfe
008b1d46  83 68                                            ldr r3, [r0, #8]
008b1d48  c2 68                                            ldr r2, [r0, #0xc]
008b1d4a  93 42                                            cmp r3, r2
008b1d4c  30 d2                                            bhs #0x8b1db0
008b1d4e  18 78                                            ldrb r0, [r3]
008b1d50  20 71                                            strb r0, [r4, #4]
008b1d52  01 30                                            adds r0, #1
008b1d54  43 42                                            rsbs r3, r0, #0
008b1d56  43 41                                            adcs r3, r0
008b1d58  63 71                                            strb r3, [r4, #5]
008b1d5a  01 23                                            movs r3, #1
008b1d5c  a3 71                                            strb r3, [r4, #6]
008b1d5e  28 68                                            ldr r0, [r5]
008b1d60  00 28                                            cmp r0, #0
008b1d62  cf d1                                            bne #0x8b1d04
008b1d64  6b 79                                            ldrb r3, [r5, #5]
008b1d66  62 79                                            ldrb r2, [r4, #5]
008b1d68  9a 42                                            cmp r2, r3
008b1d6a  03 d1                                            bne #0x8b1d74
008b1d6c  3a 68                                            ldr r2, [r7]
008b1d6e  02 23                                            movs r3, #2
008b1d70  13 43                                            orrs r3, r2
008b1d72  3b 60                                            str r3, [r7]
008b1d74  21 1c                                            adds r1, r4, #0
008b1d76  07 22                                            movs r2, #7
008b1d78  50 46                                            mov r0, sl
008b1d7a  5c f6 de e0                                      blx #0x30df38
008b1d7e  40 46                                            mov r0, r8
008b1d80  f1 f7 b8 fb                                      bl #0x8a34f4
008b1d84  59 46                                            mov r1, fp
008b1d86  73 58                                            ldr r3, [r6, r1]
008b1d88  15 9a                                            ldr r2, [sp, #0x54]
008b1d8a  50 46                                            mov r0, sl
008b1d8c  1b 68                                            ldr r3, [r3]
008b1d8e  9a 42                                            cmp r2, r3
008b1d90  16 d1                                            bne #0x8b1dc0
008b1d92  17 b0                                            add sp, #0x5c
008b1d94  3c bc                                            pop {r2, r3, r4, r5}
008b1d96  90 46                                            mov r8, r2
008b1d98  99 46                                            mov sb, r3
008b1d9a  a2 46                                            mov sl, r4
008b1d9c  ab 46                                            mov fp, r5
008b1d9e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b1da0  03 68                                            ldr r3, [r0]
008b1da2  1b 6a                                            ldr r3, [r3, #0x20]
008b1da4  98 47                                            blx r3
008b1da6  b5 e7                                            b #0x8b1d14
008b1da8  03 68                                            ldr r3, [r0]
008b1daa  1b 6a                                            ldr r3, [r3, #0x20]
008b1dac  98 47                                            blx r3
008b1dae  6b e7                                            b #0x8b1c88
008b1db0  03 68                                            ldr r3, [r0]
008b1db2  1b 6a                                            ldr r3, [r3, #0x20]
008b1db4  98 47                                            blx r3
008b1db6  cb e7                                            b #0x8b1d50
008b1db8  03 68                                            ldr r3, [r0]
008b1dba  1b 6a                                            ldr r3, [r3, #0x20]
008b1dbc  98 47                                            blx r3
008b1dbe  50 e7                                            b #0x8b1c62
008b1dc0  5c f6 a6 e2                                      blx #0x30e310
; mapping-symbol data/literal pool
008b1dc4  92 2e 0e 00 ac 40 00 00 e4 1c 00 00 e0 1f 00 00  .byte 0x92, 0x2e, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00

; FUNCTION 0x008b1e70, declared_size=348, range_size=348, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv14__do_get_floatISt19istreambuf_iteratorIcSt11char_traitsIcEEfcEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_float<std::istreambuf_iterator<char, std::char_traits<char> >, float, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, float&, char*)
; decoder-mode: thumb
008b1e70  f0 b5                                            push {r4, r5, r6, r7, lr}
008b1e72  5f 46                                            mov r7, fp
008b1e74  56 46                                            mov r6, sl
008b1e76  4d 46                                            mov r5, sb
008b1e78  44 46                                            mov r4, r8
008b1e7a  f0 b4                                            push {r4, r5, r6, r7}
008b1e7c  4d 4c                                            ldr r4, [pc, #0x134]
008b1e7e  0e 1c                                            adds r6, r1, #0
008b1e80  4d 4d                                            ldr r5, [pc, #0x134]
008b1e82  a5 44                                            add sp, r4
008b1e84  9a 99                                            ldr r1, [sp, #0x268]
008b1e86  17 1c                                            adds r7, r2, #0
008b1e88  9b 9a                                            ldr r2, [sp, #0x26c]
008b1e8a  88 46                                            mov r8, r1
008b1e8c  4b 49                                            ldr r1, [pc, #0x12c]
008b1e8e  7d 44                                            add r5, pc
008b1e90  05 92                                            str r2, [sp, #0x14]
008b1e92  6a 58                                            ldr r2, [r5, r1]
008b1e94  8b 46                                            mov fp, r1
008b1e96  19 1c                                            adds r1, r3, #0
008b1e98  12 68                                            ldr r2, [r2]
008b1e9a  20 31                                            adds r1, #0x20
008b1e9c  82 46                                            mov sl, r0
008b1e9e  8f 92                                            str r2, [sp, #0x23c]
008b1ea0  06 aa                                            add r2, sp, #0x18
008b1ea2  10 1c                                            adds r0, r2, #0
008b1ea4  91 46                                            mov sb, r2
008b1ea6  f1 f7 5b fb                                      bl #0x8a3560
008b1eaa  45 4b                                            ldr r3, [pc, #0x114]
008b1eac  48 46                                            mov r0, sb
008b1eae  07 ac                                            add r4, sp, #0x1c
008b1eb0  e9 58                                            ldr r1, [r5, r3]
008b1eb2  f1 f7 7d fb                                      bl #0x8a35b0
008b1eb6  43 4b                                            ldr r3, [pc, #0x10c]
008b1eb8  03 90                                            str r0, [sp, #0xc]
008b1eba  48 46                                            mov r0, sb
008b1ebc  e9 58                                            ldr r1, [r5, r3]
008b1ebe  f1 f7 77 fb                                      bl #0x8a35b0
008b1ec2  4e a9                                            add r1, sp, #0x138
008b1ec4  40 4a                                            ldr r2, [pc, #0x100]
008b1ec6  04 90                                            str r0, [sp, #0x10]
008b1ec8  0c a8                                            add r0, sp, #0x30
008b1eca  24 61                                            str r4, [r4, #0x10]
008b1ecc  5c f6 cc e4                                      blx #0x30e868
008b1ed0  8c 23                                            movs r3, #0x8c
008b1ed2  5b 00                                            lsls r3, r3, #1
008b1ed4  20 1c                                            adds r0, r4, #0
008b1ed6  e4 50                                            str r4, [r4, r3]
008b1ed8  f3 f7 fe f9                                      bl #0x8a52d8
008b1edc  23 69                                            ldr r3, [r4, #0x10]
008b1ede  00 21                                            movs r1, #0
008b1ee0  20 1c                                            adds r0, r4, #0
008b1ee2  19 70                                            strb r1, [r3]
008b1ee4  04 9a                                            ldr r2, [sp, #0x10]
008b1ee6  31 1c                                            adds r1, r6, #0
008b1ee8  03 9b                                            ldr r3, [sp, #0xc]
008b1eea  00 92                                            str r2, [sp]
008b1eec  3a 1c                                            adds r2, r7, #0
008b1eee  fd f7 c1 fe                                      bl #0x8afc74
008b1ef2  00 28                                            cmp r0, #0
008b1ef4  4c d1                                            bne #0x8b1f90
008b1ef6  04 23                                            movs r3, #4
008b1ef8  42 46                                            mov r2, r8
008b1efa  13 60                                            str r3, [r2]
008b1efc  30 68                                            ldr r0, [r6]
008b1efe  00 28                                            cmp r0, #0
008b1f00  0e d0                                            beq #0x8b1f20
008b1f02  b3 79                                            ldrb r3, [r6, #6]
008b1f04  00 2b                                            cmp r3, #0
008b1f06  0b d1                                            bne #0x8b1f20
008b1f08  83 68                                            ldr r3, [r0, #8]
008b1f0a  c2 68                                            ldr r2, [r0, #0xc]
008b1f0c  93 42                                            cmp r3, r2
008b1f0e  4b d2                                            bhs #0x8b1fa8
008b1f10  18 78                                            ldrb r0, [r3]
008b1f12  30 71                                            strb r0, [r6, #4]
008b1f14  01 30                                            adds r0, #1
008b1f16  43 42                                            rsbs r3, r0, #0
008b1f18  43 41                                            adcs r3, r0
008b1f1a  73 71                                            strb r3, [r6, #5]
008b1f1c  01 23                                            movs r3, #1
008b1f1e  b3 71                                            strb r3, [r6, #6]
008b1f20  38 68                                            ldr r0, [r7]
008b1f22  00 28                                            cmp r0, #0
008b1f24  0f d0                                            beq #0x8b1f46
008b1f26  bb 79                                            ldrb r3, [r7, #6]
008b1f28  00 2b                                            cmp r3, #0
008b1f2a  0c d1                                            bne #0x8b1f46
008b1f2c  83 68                                            ldr r3, [r0, #8]
008b1f2e  c2 68                                            ldr r2, [r0, #0xc]
008b1f30  93 42                                            cmp r3, r2
008b1f32  35 d2                                            bhs #0x8b1fa0
008b1f34  18 78                                            ldrb r0, [r3]
008b1f36  38 71                                            strb r0, [r7, #4]
008b1f38  01 30                                            adds r0, #1
008b1f3a  43 42                                            rsbs r3, r0, #0
008b1f3c  43 41                                            adcs r3, r0
008b1f3e  01 22                                            movs r2, #1
008b1f40  7b 71                                            strb r3, [r7, #5]
008b1f42  ba 71                                            strb r2, [r7, #6]
008b1f44  00 e0                                            b #0x8b1f48
008b1f46  7b 79                                            ldrb r3, [r7, #5]
008b1f48  72 79                                            ldrb r2, [r6, #5]
008b1f4a  9a 42                                            cmp r2, r3
008b1f4c  05 d1                                            bne #0x8b1f5a
008b1f4e  43 46                                            mov r3, r8
008b1f50  1a 68                                            ldr r2, [r3]
008b1f52  02 23                                            movs r3, #2
008b1f54  41 46                                            mov r1, r8
008b1f56  13 43                                            orrs r3, r2
008b1f58  0b 60                                            str r3, [r1]
008b1f5a  07 22                                            movs r2, #7
008b1f5c  31 1c                                            adds r1, r6, #0
008b1f5e  50 46                                            mov r0, sl
008b1f60  5b f6 ea e7                                      blx #0x30df38
008b1f64  20 1c                                            adds r0, r4, #0
008b1f66  f3 f7 8d fd                                      bl #0x8a5a84
008b1f6a  48 46                                            mov r0, sb
008b1f6c  f1 f7 c2 fa                                      bl #0x8a34f4
008b1f70  5a 46                                            mov r2, fp
008b1f72  ab 58                                            ldr r3, [r5, r2]
008b1f74  8f 9a                                            ldr r2, [sp, #0x23c]
008b1f76  50 46                                            mov r0, sl
008b1f78  1b 68                                            ldr r3, [r3]
008b1f7a  9a 42                                            cmp r2, r3
008b1f7c  18 d1                                            bne #0x8b1fb0
008b1f7e  91 23                                            movs r3, #0x91
008b1f80  9b 00                                            lsls r3, r3, #2
008b1f82  9d 44                                            add sp, r3
008b1f84  3c bc                                            pop {r2, r3, r4, r5}
008b1f86  90 46                                            mov r8, r2
008b1f88  99 46                                            mov sb, r3
008b1f8a  a2 46                                            mov sl, r4
008b1f8c  ab 46                                            mov fp, r5
008b1f8e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b1f90  05 99                                            ldr r1, [sp, #0x14]
008b1f92  20 1c                                            adds r0, r4, #0
008b1f94  08 f0 94 fb                                      bl #0x8ba6c0
008b1f98  00 23                                            movs r3, #0
008b1f9a  41 46                                            mov r1, r8
008b1f9c  0b 60                                            str r3, [r1]
008b1f9e  ad e7                                            b #0x8b1efc
008b1fa0  03 68                                            ldr r3, [r0]
008b1fa2  1b 6a                                            ldr r3, [r3, #0x20]
008b1fa4  98 47                                            blx r3
008b1fa6  c6 e7                                            b #0x8b1f36
008b1fa8  03 68                                            ldr r3, [r0]
008b1faa  1b 6a                                            ldr r3, [r3, #0x20]
008b1fac  98 47                                            blx r3
008b1fae  b0 e7                                            b #0x8b1f12
008b1fb0  5c f6 ae e1                                      blx #0x30e310
; mapping-symbol data/literal pool
008b1fb4  bc fd ff ff 06 2c 0e 00 ac 40 00 00 e4 1c 00 00  .byte 0xbc, 0xfd, 0xff, 0xff, 0x06, 0x2c, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00
008b1fc4  e0 1f 00 00 01 01 00 00                          .byte 0xe0, 0x1f, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008b239c, declared_size=1876, range_size=1876, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv14__money_do_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEESsEET0_S5_S5_bRSt8ios_baseRiRT1_RbPT_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__money_do_get<char, std::istreambuf_iterator<char, std::char_traits<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, bool, std::ios_base&, int&, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, bool&, char*)
; decoder-mode: thumb
008b239c  82 b0                                            sub sp, #8
008b239e  f0 b5                                            push {r4, r5, r6, r7, lr}
008b23a0  5f 46                                            mov r7, fp
008b23a2  56 46                                            mov r6, sl
008b23a4  4d 46                                            mov r5, sb
008b23a6  44 46                                            mov r4, r8
008b23a8  f0 b4                                            push {r4, r5, r6, r7}
008b23aa  cb b0                                            sub sp, #0x12c
008b23ac  1a ac                                            add r4, sp, #0x68
008b23ae  62 60                                            str r2, [r4, #4]
008b23b0  5a 9a                                            ldr r2, [sp, #0x168]
008b23b2  55 93                                            str r3, [sp, #0x154]
008b23b4  5b 9b                                            ldr r3, [sp, #0x16c]
008b23b6  07 90                                            str r0, [sp, #0x1c]
008b23b8  58 98                                            ldr r0, [sp, #0x160]
008b23ba  1a 91                                            str r1, [sp, #0x68]
008b23bc  10 93                                            str r3, [sp, #0x40]
008b23be  a3 4f                                            ldr r7, [pc, #0x28c]
008b23c0  11 92                                            str r2, [sp, #0x44]
008b23c2  57 ab                                            add r3, sp, #0x15c
008b23c4  1b 78                                            ldrb r3, [r3]
008b23c6  83 46                                            mov fp, r0
008b23c8  a1 48                                            ldr r0, [pc, #0x284]
008b23ca  7f 44                                            add r7, pc
008b23cc  0e 93                                            str r3, [sp, #0x38]
008b23ce  3b 58                                            ldr r3, [r7, r0]
008b23d0  59 99                                            ldr r1, [sp, #0x164]
008b23d2  09 90                                            str r0, [sp, #0x24]
008b23d4  1b 68                                            ldr r3, [r3]
008b23d6  1a 98                                            ldr r0, [sp, #0x68]
008b23d8  88 46                                            mov r8, r1
008b23da  49 93                                            str r3, [sp, #0x124]
008b23dc  00 28                                            cmp r0, #0
008b23de  0f d0                                            beq #0x8b2400
008b23e0  a3 79                                            ldrb r3, [r4, #6]
008b23e2  00 2b                                            cmp r3, #0
008b23e4  0c d1                                            bne #0x8b2400
008b23e6  83 68                                            ldr r3, [r0, #8]
008b23e8  c2 68                                            ldr r2, [r0, #0xc]
008b23ea  93 42                                            cmp r3, r2
008b23ec  00 d3                                            blo #0x8b23f0
008b23ee  fc e2                                            b #0x8b29ea
008b23f0  18 78                                            ldrb r0, [r3]
008b23f2  20 71                                            strb r0, [r4, #4]
008b23f4  01 30                                            adds r0, #1
008b23f6  43 42                                            rsbs r3, r0, #0
008b23f8  43 41                                            adcs r3, r0
008b23fa  63 71                                            strb r3, [r4, #5]
008b23fc  01 23                                            movs r3, #1
008b23fe  a3 71                                            strb r3, [r4, #6]
008b2400  55 98                                            ldr r0, [sp, #0x154]
008b2402  55 ad                                            add r5, sp, #0x154
008b2404  00 28                                            cmp r0, #0
008b2406  00 d1                                            bne #0x8b240a
008b2408  92 e0                                            b #0x8b2530
008b240a  ab 79                                            ldrb r3, [r5, #6]
008b240c  00 2b                                            cmp r3, #0
008b240e  00 d0                                            beq #0x8b2412
008b2410  8e e0                                            b #0x8b2530
008b2412  83 68                                            ldr r3, [r0, #8]
008b2414  c2 68                                            ldr r2, [r0, #0xc]
008b2416  93 42                                            cmp r3, r2
008b2418  00 d3                                            blo #0x8b241c
008b241a  a3 e2                                            b #0x8b2964
008b241c  18 78                                            ldrb r0, [r3]
008b241e  28 71                                            strb r0, [r5, #4]
008b2420  01 30                                            adds r0, #1
008b2422  01 22                                            movs r2, #1
008b2424  43 42                                            rsbs r3, r0, #0
008b2426  43 41                                            adcs r3, r0
008b2428  6b 71                                            strb r3, [r5, #5]
008b242a  aa 71                                            strb r2, [r5, #6]
008b242c  62 79                                            ldrb r2, [r4, #5]
008b242e  9a 42                                            cmp r2, r3
008b2430  00 d1                                            bne #0x8b2434
008b2432  82 e0                                            b #0x8b253a
008b2434  69 46                                            mov r1, sp
008b2436  8c 31                                            adds r1, #0x8c
008b2438  08 91                                            str r1, [sp, #0x20]
008b243a  59 46                                            mov r1, fp
008b243c  20 31                                            adds r1, #0x20
008b243e  08 98                                            ldr r0, [sp, #0x20]
008b2440  f1 f7 8e f8                                      bl #0x8a3560
008b2444  83 4b                                            ldr r3, [pc, #0x20c]
008b2446  08 98                                            ldr r0, [sp, #0x20]
008b2448  f9 58                                            ldr r1, [r7, r3]
008b244a  f1 f7 b1 f8                                      bl #0x8a35b0
008b244e  82 4b                                            ldr r3, [pc, #0x208]
008b2450  81 46                                            mov sb, r0
008b2452  08 98                                            ldr r0, [sp, #0x20]
008b2454  f9 58                                            ldr r1, [r7, r3]
008b2456  f1 f7 ab f8                                      bl #0x8a35b0
008b245a  80 4b                                            ldr r3, [pc, #0x200]
008b245c  82 46                                            mov sl, r0
008b245e  08 98                                            ldr r0, [sp, #0x20]
008b2460  f9 58                                            ldr r1, [r7, r3]
008b2462  f1 f7 a5 f8                                      bl #0x8a35b0
008b2466  0e 9a                                            ldr r2, [sp, #0x38]
008b2468  06 1c                                            adds r6, r0, #0
008b246a  00 2a                                            cmp r2, #0
008b246c  00 d0                                            beq #0x8b2470
008b246e  bb e0                                            b #0x8b25e8
008b2470  49 46                                            mov r1, sb
008b2472  0b 68                                            ldr r3, [r1]
008b2474  48 46                                            mov r0, sb
008b2476  9b 6a                                            ldr r3, [r3, #0x28]
008b2478  98 47                                            blx r3
008b247a  18 ab                                            add r3, sp, #0x60
008b247c  18 70                                            strb r0, [r3]
008b247e  02 0a                                            lsrs r2, r0, #8
008b2480  01 33                                            adds r3, #1
008b2482  1a 70                                            strb r2, [r3]
008b2484  02 0c                                            lsrs r2, r0, #0x10
008b2486  01 33                                            adds r3, #1
008b2488  1a 70                                            strb r2, [r3]
008b248a  00 0e                                            lsrs r0, r0, #0x18
008b248c  01 33                                            adds r3, #1
008b248e  18 70                                            strb r0, [r3]
008b2490  18 9b                                            ldr r3, [sp, #0x60]
008b2492  20 aa                                            add r2, sp, #0x80
008b2494  20 93                                            str r3, [sp, #0x80]
008b2496  13 78                                            ldrb r3, [r2]
008b2498  50 78                                            ldrb r0, [r2, #1]
008b249a  91 78                                            ldrb r1, [r2, #2]
008b249c  0c 93                                            str r3, [sp, #0x30]
008b249e  22 ab                                            add r3, sp, #0x88
008b24a0  d2 78                                            ldrb r2, [r2, #3]
008b24a2  58 70                                            strb r0, [r3, #1]
008b24a4  0c a8                                            add r0, sp, #0x30
008b24a6  99 70                                            strb r1, [r3, #2]
008b24a8  00 78                                            ldrb r0, [r0]
008b24aa  69 46                                            mov r1, sp
008b24ac  0d 31                                            adds r1, #0xd
008b24ae  ff 31                                            adds r1, #0xff
008b24b0  0f 91                                            str r1, [sp, #0x3c]
008b24b2  da 70                                            strb r2, [r3, #3]
008b24b4  18 70                                            strb r0, [r3]
008b24b6  4a 46                                            mov r2, sb
008b24b8  13 68                                            ldr r3, [r2]
008b24ba  08 1c                                            adds r0, r1, #0
008b24bc  49 46                                            mov r1, sb
008b24be  db 69                                            ldr r3, [r3, #0x1c]
008b24c0  98 47                                            blx r3
008b24c2  6b 46                                            mov r3, sp
008b24c4  f4 33                                            adds r3, #0xf4
008b24c6  0d 93                                            str r3, [sp, #0x34]
008b24c8  48 46                                            mov r0, sb
008b24ca  03 68                                            ldr r3, [r0]
008b24cc  49 46                                            mov r1, sb
008b24ce  0d 98                                            ldr r0, [sp, #0x34]
008b24d0  9b 69                                            ldr r3, [r3, #0x18]
008b24d2  98 47                                            blx r3
008b24d4  59 46                                            mov r1, fp
008b24d6  4a 68                                            ldr r2, [r1, #4]
008b24d8  80 23                                            movs r3, #0x80
008b24da  9b 00                                            lsls r3, r3, #2
008b24dc  1a 40                                            ands r2, r3
008b24de  16 92                                            str r2, [sp, #0x58]
008b24e0  37 aa                                            add r2, sp, #0xdc
008b24e2  93 46                                            mov fp, r2
008b24e4  10 1c                                            adds r0, r2, #0
008b24e6  12 61                                            str r2, [r2, #0x10]
008b24e8  52 61                                            str r2, [r2, #0x14]
008b24ea  10 21                                            movs r1, #0x10
008b24ec  5f f6 c6 e0                                      blx #0x31167c
008b24f0  5b 46                                            mov r3, fp
008b24f2  1a 69                                            ldr r2, [r3, #0x10]
008b24f4  68 46                                            mov r0, sp
008b24f6  00 23                                            movs r3, #0
008b24f8  89 30                                            adds r0, #0x89
008b24fa  69 46                                            mov r1, sp
008b24fc  13 70                                            strb r3, [r2]
008b24fe  6c 31                                            adds r1, #0x6c
008b2500  0b 90                                            str r0, [sp, #0x2c]
008b2502  57 4b                                            ldr r3, [pc, #0x15c]
008b2504  12 91                                            str r1, [sp, #0x48]
008b2506  6a 46                                            mov r2, sp
008b2508  0b 99                                            ldr r1, [sp, #0x2c]
008b250a  6e 32                                            adds r2, #0x6e
008b250c  7b 44                                            add r3, pc
008b250e  13 92                                            str r2, [sp, #0x4c]
008b2510  0a 30                                            adds r0, #0xa
008b2512  5a 46                                            mov r2, fp
008b2514  0a 93                                            str r3, [sp, #0x28]
008b2516  15 97                                            str r7, [sp, #0x54]
008b2518  0c 9b                                            ldr r3, [sp, #0x30]
008b251a  4f 46                                            mov r7, sb
008b251c  14 90                                            str r0, [sp, #0x50]
008b251e  89 46                                            mov sb, r1
008b2520  0c 92                                            str r2, [sp, #0x30]
008b2522  04 2b                                            cmp r3, #4
008b2524  57 d8                                            bhi #0x8b25d6
008b2526  0a 98                                            ldr r0, [sp, #0x28]
008b2528  9b 00                                            lsls r3, r3, #2
008b252a  1b 58                                            ldr r3, [r3, r0]
008b252c  1b 18                                            adds r3, r3, r0
008b252e  9f 46                                            mov pc, r3
008b2530  6b 79                                            ldrb r3, [r5, #5]
008b2532  62 79                                            ldrb r2, [r4, #5]
008b2534  9a 42                                            cmp r2, r3
008b2536  00 d0                                            beq #0x8b253a
008b2538  7c e7                                            b #0x8b2434
008b253a  41 46                                            mov r1, r8
008b253c  0a 68                                            ldr r2, [r1]
008b253e  02 23                                            movs r3, #2
008b2540  13 43                                            orrs r3, r2
008b2542  0b 60                                            str r3, [r1]
008b2544  1a 9b                                            ldr r3, [sp, #0x68]
008b2546  07 9a                                            ldr r2, [sp, #0x1c]
008b2548  13 60                                            str r3, [r2]
008b254a  1b ab                                            add r3, sp, #0x6c
008b254c  1b 88                                            ldrh r3, [r3]
008b254e  07 98                                            ldr r0, [sp, #0x1c]
008b2550  83 80                                            strh r3, [r0, #4]
008b2552  6b 46                                            mov r3, sp
008b2554  6e 33                                            adds r3, #0x6e
008b2556  1b 78                                            ldrb r3, [r3]
008b2558  83 71                                            strb r3, [r0, #6]
008b255a  09 9a                                            ldr r2, [sp, #0x24]
008b255c  07 98                                            ldr r0, [sp, #0x1c]
008b255e  bb 58                                            ldr r3, [r7, r2]
008b2560  49 9a                                            ldr r2, [sp, #0x124]
008b2562  1b 68                                            ldr r3, [r3]
008b2564  9a 42                                            cmp r2, r3
008b2566  00 d0                                            beq #0x8b256a
008b2568  c0 e2                                            b #0x8b2aec
008b256a  4b b0                                            add sp, #0x12c
008b256c  3c bc                                            pop {r2, r3, r4, r5}
008b256e  90 46                                            mov r8, r2
008b2570  99 46                                            mov sb, r3
008b2572  a2 46                                            mov sl, r4
008b2574  ab 46                                            mov fp, r5
008b2576  f0 bc                                            pop {r4, r5, r6, r7}
008b2578  08 bc                                            pop {r3}
008b257a  02 b0                                            add sp, #8
008b257c  18 47                                            bx r3
008b257e  a3 79                                            ldrb r3, [r4, #6]
008b2580  00 2b                                            cmp r3, #0
008b2582  00 d0                                            beq #0x8b2586
008b2584  3a e2                                            b #0x8b29fc
008b2586  20 68                                            ldr r0, [r4]
008b2588  83 68                                            ldr r3, [r0, #8]
008b258a  c2 68                                            ldr r2, [r0, #0xc]
008b258c  93 42                                            cmp r3, r2
008b258e  00 d3                                            blo #0x8b2592
008b2590  51 e2                                            b #0x8b2a36
008b2592  18 78                                            ldrb r0, [r3]
008b2594  41 1c                                            adds r1, r0, #1
008b2596  03 06                                            lsls r3, r0, #0x18
008b2598  4a 42                                            rsbs r2, r1, #0
008b259a  4a 41                                            adcs r2, r1
008b259c  1b 0e                                            lsrs r3, r3, #0x18
008b259e  01 21                                            movs r1, #1
008b25a0  23 71                                            strb r3, [r4, #4]
008b25a2  62 71                                            strb r2, [r4, #5]
008b25a4  a1 71                                            strb r1, [r4, #6]
008b25a6  f2 68                                            ldr r2, [r6, #0xc]
008b25a8  9b 00                                            lsls r3, r3, #2
008b25aa  9b 58                                            ldr r3, [r3, r2]
008b25ac  01 22                                            movs r2, #1
008b25ae  1a 42                                            tst r2, r3
008b25b0  00 d1                                            bne #0x8b25b4
008b25b2  66 e2                                            b #0x8b2a82
008b25b4  20 68                                            ldr r0, [r4]
008b25b6  83 68                                            ldr r3, [r0, #8]
008b25b8  c2 68                                            ldr r2, [r0, #0xc]
008b25ba  93 42                                            cmp r3, r2
008b25bc  00 d3                                            blo #0x8b25c0
008b25be  1f e2                                            b #0x8b2a00
008b25c0  01 33                                            adds r3, #1
008b25c2  83 60                                            str r3, [r0, #8]
008b25c4  00 22                                            movs r2, #0
008b25c6  a2 71                                            strb r2, [r4, #6]
008b25c8  20 1c                                            adds r0, r4, #0
008b25ca  29 1c                                            adds r1, r5, #0
008b25cc  f7 f7 0c f8                                      bl #0x8a95e8
008b25d0  00 28                                            cmp r0, #0
008b25d2  00 d1                                            bne #0x8b25d6
008b25d4  35 e1                                            b #0x8b2842
008b25d6  08 9a                                            ldr r2, [sp, #0x20]
008b25d8  4a 45                                            cmp r2, sb
008b25da  00 d1                                            bne #0x8b25de
008b25dc  8d e0                                            b #0x8b26fa
008b25de  48 46                                            mov r0, sb
008b25e0  01 21                                            movs r1, #1
008b25e2  03 78                                            ldrb r3, [r0]
008b25e4  89 44                                            add sb, r1
008b25e6  9c e7                                            b #0x8b2522
008b25e8  50 46                                            mov r0, sl
008b25ea  03 68                                            ldr r3, [r0]
008b25ec  9b 6a                                            ldr r3, [r3, #0x28]
008b25ee  98 47                                            blx r3
008b25f0  18 ab                                            add r3, sp, #0x60
008b25f2  18 70                                            strb r0, [r3]
008b25f4  02 0a                                            lsrs r2, r0, #8
008b25f6  01 33                                            adds r3, #1
008b25f8  1a 70                                            strb r2, [r3]
008b25fa  02 0c                                            lsrs r2, r0, #0x10
008b25fc  01 33                                            adds r3, #1
008b25fe  1a 70                                            strb r2, [r3]
008b2600  00 0e                                            lsrs r0, r0, #0x18
008b2602  01 33                                            adds r3, #1
008b2604  18 70                                            strb r0, [r3]
008b2606  18 9b                                            ldr r3, [sp, #0x60]
008b2608  21 aa                                            add r2, sp, #0x84
008b260a  21 93                                            str r3, [sp, #0x84]
008b260c  13 78                                            ldrb r3, [r2]
008b260e  50 78                                            ldrb r0, [r2, #1]
008b2610  91 78                                            ldrb r1, [r2, #2]
008b2612  0c 93                                            str r3, [sp, #0x30]
008b2614  22 ab                                            add r3, sp, #0x88
008b2616  d2 78                                            ldrb r2, [r2, #3]
008b2618  58 70                                            strb r0, [r3, #1]
008b261a  0c a8                                            add r0, sp, #0x30
008b261c  99 70                                            strb r1, [r3, #2]
008b261e  00 78                                            ldrb r0, [r0]
008b2620  69 46                                            mov r1, sp
008b2622  0d 31                                            adds r1, #0xd
008b2624  ff 31                                            adds r1, #0xff
008b2626  0f 91                                            str r1, [sp, #0x3c]
008b2628  da 70                                            strb r2, [r3, #3]
008b262a  18 70                                            strb r0, [r3]
008b262c  52 46                                            mov r2, sl
008b262e  13 68                                            ldr r3, [r2]
008b2630  08 1c                                            adds r0, r1, #0
008b2632  51 46                                            mov r1, sl
008b2634  db 69                                            ldr r3, [r3, #0x1c]
008b2636  98 47                                            blx r3
008b2638  6b 46                                            mov r3, sp
008b263a  f4 33                                            adds r3, #0xf4
008b263c  0d 93                                            str r3, [sp, #0x34]
008b263e  50 46                                            mov r0, sl
008b2640  03 68                                            ldr r3, [r0]
008b2642  51 46                                            mov r1, sl
008b2644  0d 98                                            ldr r0, [sp, #0x34]
008b2646  9b 69                                            ldr r3, [r3, #0x18]
008b2648  98 47                                            blx r3
008b264a  43 e7                                            b #0x8b24d4
; mapping-symbol data/literal pool
008b264c  ca 26 0e 00 ac 40 00 00 30 0f 00 00 80 2c 00 00  .byte 0xca, 0x26, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x0f, 0x00, 0x00, 0x80, 0x2c, 0x00, 0x00
008b265c  e4 1c 00 00 64 36 06 00                          .byte 0xe4, 0x1c, 0x00, 0x00, 0x64, 0x36, 0x06, 0x00
; decoder-mode: thumb
008b2664  0e 99                                            ldr r1, [sp, #0x38]
008b2666  00 29                                            cmp r1, #0
008b2668  00 d1                                            bne #0x8b266c
008b266a  ac e1                                            b #0x8b29c6
008b266c  52 46                                            mov r2, sl
008b266e  13 68                                            ldr r3, [r2]
008b2670  50 46                                            mov r0, sl
008b2672  9b 68                                            ldr r3, [r3, #8]
008b2674  98 47                                            blx r3
008b2676  17 90                                            str r0, [sp, #0x5c]
008b2678  50 46                                            mov r0, sl
008b267a  03 68                                            ldr r3, [r0]
008b267c  1b 6a                                            ldr r3, [r3, #0x20]
008b267e  98 47                                            blx r3
008b2680  52 46                                            mov r2, sl
008b2682  0b 90                                            str r0, [sp, #0x2c]
008b2684  13 68                                            ldr r3, [r2]
008b2686  2b a9                                            add r1, sp, #0xac
008b2688  8b 46                                            mov fp, r1
008b268a  08 1c                                            adds r0, r1, #0
008b268c  1b 69                                            ldr r3, [r3, #0x10]
008b268e  51 46                                            mov r1, sl
008b2690  98 47                                            blx r3
008b2692  5a 46                                            mov r2, fp
008b2694  14 98                                            ldr r0, [sp, #0x50]
008b2696  53 69                                            ldr r3, [r2, #0x14]
008b2698  12 69                                            ldr r2, [r2, #0x10]
008b269a  01 21                                            movs r1, #1
008b269c  01 70                                            strb r1, [r0]
008b269e  00 20                                            movs r0, #0
008b26a0  93 42                                            cmp r3, r2
008b26a2  07 d0                                            beq #0x8b26b4
008b26a4  0e 9b                                            ldr r3, [sp, #0x38]
008b26a6  00 2b                                            cmp r3, #0
008b26a8  00 d1                                            bne #0x8b26ac
008b26aa  a2 e1                                            b #0x8b29f2
008b26ac  50 46                                            mov r0, sl
008b26ae  03 68                                            ldr r3, [r0]
008b26b0  db 68                                            ldr r3, [r3, #0xc]
008b26b2  98 47                                            blx r3
008b26b4  03 90                                            str r0, [sp, #0xc]
008b26b6  17 99                                            ldr r1, [sp, #0x5c]
008b26b8  0b 9a                                            ldr r2, [sp, #0x2c]
008b26ba  14 98                                            ldr r0, [sp, #0x50]
008b26bc  5b 46                                            mov r3, fp
008b26be  04 93                                            str r3, [sp, #0x10]
008b26c0  05 90                                            str r0, [sp, #0x14]
008b26c2  00 96                                            str r6, [sp]
008b26c4  01 91                                            str r1, [sp, #4]
008b26c6  02 92                                            str r2, [sp, #8]
008b26c8  29 68                                            ldr r1, [r5]
008b26ca  0c 9b                                            ldr r3, [sp, #0x30]
008b26cc  20 1c                                            adds r0, r4, #0
008b26ce  6a 68                                            ldr r2, [r5, #4]
008b26d0  ff f7 90 fc                                      bl #0x8b1ff4
008b26d4  14 99                                            ldr r1, [sp, #0x50]
008b26d6  0b 78                                            ldrb r3, [r1]
008b26d8  00 2b                                            cmp r3, #0
008b26da  04 d1                                            bne #0x8b26e6
008b26dc  42 46                                            mov r2, r8
008b26de  13 68                                            ldr r3, [r2]
008b26e0  04 21                                            movs r1, #4
008b26e2  0b 43                                            orrs r3, r1
008b26e4  13 60                                            str r3, [r2]
008b26e6  00 28                                            cmp r0, #0
008b26e8  00 d1                                            bne #0x8b26ec
008b26ea  d1 e1                                            b #0x8b2a90
008b26ec  58 46                                            mov r0, fp
008b26ee  61 f6 5e e1                                      blx #0x3139ac
008b26f2  08 9a                                            ldr r2, [sp, #0x20]
008b26f4  4a 45                                            cmp r2, sb
008b26f6  00 d0                                            beq #0x8b26fa
008b26f8  71 e7                                            b #0x8b25de
008b26fa  10 98                                            ldr r0, [sp, #0x40]
008b26fc  0c 9a                                            ldr r2, [sp, #0x30]
008b26fe  15 9f                                            ldr r7, [sp, #0x54]
008b2700  03 78                                            ldrb r3, [r0]
008b2702  93 46                                            mov fp, r2
008b2704  00 2b                                            cmp r3, #0
008b2706  00 d1                                            bne #0x8b270a
008b2708  c8 e0                                            b #0x8b289c
008b270a  0d 99                                            ldr r1, [sp, #0x34]
008b270c  0b 69                                            ldr r3, [r1, #0x10]
008b270e  4a 69                                            ldr r2, [r1, #0x14]
008b2710  99 1a                                            subs r1, r3, r2
008b2712  01 29                                            cmp r1, #1
008b2714  00 d8                                            bhi #0x8b2718
008b2716  22 e1                                            b #0x8b295e
008b2718  01 32                                            adds r2, #1
008b271a  01 92                                            str r2, [sp, #4]
008b271c  02 93                                            str r3, [sp, #8]
008b271e  6b 68                                            ldr r3, [r5, #4]
008b2720  1d ae                                            add r6, sp, #0x74
008b2722  30 1c                                            adds r0, r6, #0
008b2724  00 93                                            str r3, [sp]
008b2726  1a 99                                            ldr r1, [sp, #0x68]
008b2728  55 9b                                            ldr r3, [sp, #0x154]
008b272a  62 68                                            ldr r2, [r4, #4]
008b272c  f6 f7 2c fe                                      bl #0x8a9388
008b2730  1d 9b                                            ldr r3, [sp, #0x74]
008b2732  12 98                                            ldr r0, [sp, #0x48]
008b2734  13 99                                            ldr r1, [sp, #0x4c]
008b2736  1a 93                                            str r3, [sp, #0x68]
008b2738  1e ab                                            add r3, sp, #0x78
008b273a  1b 88                                            ldrh r3, [r3]
008b273c  03 80                                            strh r3, [r0]
008b273e  6b 46                                            mov r3, sp
008b2740  7a 33                                            adds r3, #0x7a
008b2742  1b 78                                            ldrb r3, [r3]
008b2744  0b 70                                            strb r3, [r1]
008b2746  33 7a                                            ldrb r3, [r6, #8]
008b2748  00 2b                                            cmp r3, #0
008b274a  00 d0                                            beq #0x8b274e
008b274c  07 e1                                            b #0x8b295e
008b274e  43 46                                            mov r3, r8
008b2750  1a 68                                            ldr r2, [r3]
008b2752  04 23                                            movs r3, #4
008b2754  40 46                                            mov r0, r8
008b2756  13 43                                            orrs r3, r2
008b2758  03 60                                            str r3, [r0]
008b275a  59 07                                            lsls r1, r3, #0x1d
008b275c  00 d4                                            bmi #0x8b2760
008b275e  53 e1                                            b #0x8b2a08
008b2760  20 1c                                            adds r0, r4, #0
008b2762  29 1c                                            adds r1, r5, #0
008b2764  f6 f7 40 ff                                      bl #0x8a95e8
008b2768  00 28                                            cmp r0, #0
008b276a  05 d0                                            beq #0x8b2778
008b276c  43 46                                            mov r3, r8
008b276e  1a 68                                            ldr r2, [r3]
008b2770  02 23                                            movs r3, #2
008b2772  40 46                                            mov r0, r8
008b2774  13 43                                            orrs r3, r2
008b2776  03 60                                            str r3, [r0]
008b2778  1a 9b                                            ldr r3, [sp, #0x68]
008b277a  07 99                                            ldr r1, [sp, #0x1c]
008b277c  0b 60                                            str r3, [r1]
008b277e  12 9a                                            ldr r2, [sp, #0x48]
008b2780  07 98                                            ldr r0, [sp, #0x1c]
008b2782  13 88                                            ldrh r3, [r2]
008b2784  83 80                                            strh r3, [r0, #4]
008b2786  13 99                                            ldr r1, [sp, #0x4c]
008b2788  0b 78                                            ldrb r3, [r1]
008b278a  83 71                                            strb r3, [r0, #6]
008b278c  58 46                                            mov r0, fp
008b278e  61 f6 0e e1                                      blx #0x3139ac
008b2792  0d 98                                            ldr r0, [sp, #0x34]
008b2794  61 f6 0a e1                                      blx #0x3139ac
008b2798  0f 98                                            ldr r0, [sp, #0x3c]
008b279a  61 f6 08 e1                                      blx #0x3139ac
008b279e  08 98                                            ldr r0, [sp, #0x20]
008b27a0  f0 f7 a8 fe                                      bl #0x8a34f4
008b27a4  d9 e6                                            b #0x8b255a
008b27a6  20 1c                                            adds r0, r4, #0
008b27a8  29 1c                                            adds r1, r5, #0
008b27aa  f6 f7 1d ff                                      bl #0x8a95e8
008b27ae  83 46                                            mov fp, r0
008b27b0  00 28                                            cmp r0, #0
008b27b2  00 d1                                            bne #0x8b27b6
008b27b4  da e0                                            b #0x8b296c
008b27b6  0d 99                                            ldr r1, [sp, #0x34]
008b27b8  4a 69                                            ldr r2, [r1, #0x14]
008b27ba  0b 69                                            ldr r3, [r1, #0x10]
008b27bc  9a 42                                            cmp r2, r3
008b27be  00 d1                                            bne #0x8b27c2
008b27c0  09 e7                                            b #0x8b25d6
008b27c2  0f 9b                                            ldr r3, [sp, #0x3c]
008b27c4  5a 69                                            ldr r2, [r3, #0x14]
008b27c6  1b 69                                            ldr r3, [r3, #0x10]
008b27c8  9a 42                                            cmp r2, r3
008b27ca  00 d0                                            beq #0x8b27ce
008b27cc  75 e1                                            b #0x8b2aba
008b27ce  10 98                                            ldr r0, [sp, #0x40]
008b27d0  00 21                                            movs r1, #0
008b27d2  01 70                                            strb r1, [r0]
008b27d4  ff e6                                            b #0x8b25d6
008b27d6  0e 9a                                            ldr r2, [sp, #0x38]
008b27d8  00 2a                                            cmp r2, #0
008b27da  00 d1                                            bne #0x8b27de
008b27dc  eb e0                                            b #0x8b29b6
008b27de  31 ab                                            add r3, sp, #0xc4
008b27e0  50 46                                            mov r0, sl
008b27e2  9b 46                                            mov fp, r3
008b27e4  03 68                                            ldr r3, [r0]
008b27e6  51 46                                            mov r1, sl
008b27e8  58 46                                            mov r0, fp
008b27ea  5b 69                                            ldr r3, [r3, #0x14]
008b27ec  98 47                                            blx r3
008b27ee  58 46                                            mov r0, fp
008b27f0  43 69                                            ldr r3, [r0, #0x14]
008b27f2  6a 46                                            mov r2, sp
008b27f4  74 32                                            adds r2, #0x74
008b27f6  01 93                                            str r3, [sp, #4]
008b27f8  03 69                                            ldr r3, [r0, #0x10]
008b27fa  0b 92                                            str r2, [sp, #0x2c]
008b27fc  10 1c                                            adds r0, r2, #0
008b27fe  02 93                                            str r3, [sp, #8]
008b2800  6b 68                                            ldr r3, [r5, #4]
008b2802  00 93                                            str r3, [sp]
008b2804  2b 68                                            ldr r3, [r5]
008b2806  21 68                                            ldr r1, [r4]
008b2808  62 68                                            ldr r2, [r4, #4]
008b280a  f6 f7 bd fd                                      bl #0x8a9388
008b280e  0b 99                                            ldr r1, [sp, #0x2c]
008b2810  0b 7a                                            ldrb r3, [r1, #8]
008b2812  00 2b                                            cmp r3, #0
008b2814  05 d1                                            bne #0x8b2822
008b2816  16 9a                                            ldr r2, [sp, #0x58]
008b2818  00 2a                                            cmp r2, #0
008b281a  02 d0                                            beq #0x8b2822
008b281c  04 23                                            movs r3, #4
008b281e  40 46                                            mov r0, r8
008b2820  03 60                                            str r3, [r0]
008b2822  0b 99                                            ldr r1, [sp, #0x2c]
008b2824  12 9a                                            ldr r2, [sp, #0x48]
008b2826  13 98                                            ldr r0, [sp, #0x4c]
008b2828  0b 68                                            ldr r3, [r1]
008b282a  23 60                                            str r3, [r4]
008b282c  1e ab                                            add r3, sp, #0x78
008b282e  1b 88                                            ldrh r3, [r3]
008b2830  13 80                                            strh r3, [r2]
008b2832  6b 46                                            mov r3, sp
008b2834  7a 33                                            adds r3, #0x7a
008b2836  1b 78                                            ldrb r3, [r3]
008b2838  03 70                                            strb r3, [r0]
008b283a  58 46                                            mov r0, fp
008b283c  61 f6 b6 e0                                      blx #0x3139ac
008b2840  c9 e6                                            b #0x8b25d6
008b2842  a3 79                                            ldrb r3, [r4, #6]
008b2844  00 2b                                            cmp r3, #0
008b2846  23 d1                                            bne #0x8b2890
008b2848  20 68                                            ldr r0, [r4]
008b284a  83 68                                            ldr r3, [r0, #8]
008b284c  c2 68                                            ldr r2, [r0, #0xc]
008b284e  93 42                                            cmp r3, r2
008b2850  20 d2                                            bhs #0x8b2894
008b2852  18 78                                            ldrb r0, [r3]
008b2854  03 06                                            lsls r3, r0, #0x18
008b2856  01 30                                            adds r0, #1
008b2858  42 42                                            rsbs r2, r0, #0
008b285a  42 41                                            adcs r2, r0
008b285c  1b 0e                                            lsrs r3, r3, #0x18
008b285e  01 20                                            movs r0, #1
008b2860  23 71                                            strb r3, [r4, #4]
008b2862  62 71                                            strb r2, [r4, #5]
008b2864  a0 71                                            strb r0, [r4, #6]
008b2866  f2 68                                            ldr r2, [r6, #0xc]
008b2868  9b 00                                            lsls r3, r3, #2
008b286a  01 21                                            movs r1, #1
008b286c  9b 58                                            ldr r3, [r3, r2]
008b286e  19 42                                            tst r1, r3
008b2870  00 d1                                            bne #0x8b2874
008b2872  b0 e6                                            b #0x8b25d6
008b2874  20 68                                            ldr r0, [r4]
008b2876  83 68                                            ldr r3, [r0, #8]
008b2878  c2 68                                            ldr r2, [r0, #0xc]
008b287a  93 42                                            cmp r3, r2
008b287c  04 d2                                            bhs #0x8b2888
008b287e  01 33                                            adds r3, #1
008b2880  83 60                                            str r3, [r0, #8]
008b2882  00 23                                            movs r3, #0
008b2884  a3 71                                            strb r3, [r4, #6]
008b2886  9f e6                                            b #0x8b25c8
008b2888  03 68                                            ldr r3, [r0]
008b288a  5b 6a                                            ldr r3, [r3, #0x24]
008b288c  98 47                                            blx r3
008b288e  f8 e7                                            b #0x8b2882
008b2890  23 79                                            ldrb r3, [r4, #4]
008b2892  e8 e7                                            b #0x8b2866
008b2894  03 68                                            ldr r3, [r0]
008b2896  1b 6a                                            ldr r3, [r3, #0x20]
008b2898  98 47                                            blx r3
008b289a  db e7                                            b #0x8b2854
008b289c  0f 98                                            ldr r0, [sp, #0x3c]
008b289e  03 69                                            ldr r3, [r0, #0x10]
008b28a0  42 69                                            ldr r2, [r0, #0x14]
008b28a2  99 1a                                            subs r1, r3, r2
008b28a4  01 29                                            cmp r1, #1
008b28a6  57 d9                                            bls #0x8b2958
008b28a8  01 32                                            adds r2, #1
008b28aa  01 92                                            str r2, [sp, #4]
008b28ac  02 93                                            str r3, [sp, #8]
008b28ae  6b 68                                            ldr r3, [r5, #4]
008b28b0  1d a8                                            add r0, sp, #0x74
008b28b2  1a 99                                            ldr r1, [sp, #0x68]
008b28b4  00 93                                            str r3, [sp]
008b28b6  62 68                                            ldr r2, [r4, #4]
008b28b8  55 9b                                            ldr r3, [sp, #0x154]
008b28ba  81 46                                            mov sb, r0
008b28bc  f6 f7 64 fd                                      bl #0x8a9388
008b28c0  1d 9b                                            ldr r3, [sp, #0x74]
008b28c2  12 99                                            ldr r1, [sp, #0x48]
008b28c4  13 9a                                            ldr r2, [sp, #0x4c]
008b28c6  1a 93                                            str r3, [sp, #0x68]
008b28c8  1e ab                                            add r3, sp, #0x78
008b28ca  1b 88                                            ldrh r3, [r3]
008b28cc  48 46                                            mov r0, sb
008b28ce  0b 80                                            strh r3, [r1]
008b28d0  6b 46                                            mov r3, sp
008b28d2  7a 33                                            adds r3, #0x7a
008b28d4  1b 78                                            ldrb r3, [r3]
008b28d6  13 70                                            strb r3, [r2]
008b28d8  03 7a                                            ldrb r3, [r0, #8]
008b28da  00 2b                                            cmp r3, #0
008b28dc  3c d1                                            bne #0x8b2958
008b28de  43 46                                            mov r3, r8
008b28e0  1a 68                                            ldr r2, [r3]
008b28e2  04 23                                            movs r3, #4
008b28e4  40 46                                            mov r0, r8
008b28e6  13 43                                            orrs r3, r2
008b28e8  03 60                                            str r3, [r0]
008b28ea  04 22                                            movs r2, #4
008b28ec  13 40                                            ands r3, r2
008b28ee  99 46                                            mov sb, r3
008b28f0  00 d0                                            beq #0x8b28f4
008b28f2  35 e7                                            b #0x8b2760
008b28f4  33 68                                            ldr r3, [r6]
008b28f6  2d 21                                            movs r1, #0x2d
008b28f8  30 1c                                            adds r0, r6, #0
008b28fa  9b 69                                            ldr r3, [r3, #0x18]
008b28fc  98 47                                            blx r3
008b28fe  11 9a                                            ldr r2, [sp, #0x44]
008b2900  82 46                                            mov sl, r0
008b2902  11 69                                            ldr r1, [r2, #0x10]
008b2904  52 69                                            ldr r2, [r2, #0x14]
008b2906  91 42                                            cmp r1, r2
008b2908  00 d0                                            beq #0x8b290c
008b290a  84 e0                                            b #0x8b2a16
008b290c  11 9b                                            ldr r3, [sp, #0x44]
008b290e  99 42                                            cmp r1, r3
008b2910  00 d1                                            bne #0x8b2914
008b2912  af e0                                            b #0x8b2a74
008b2914  1b 68                                            ldr r3, [r3]
008b2916  5b 1a                                            subs r3, r3, r1
008b2918  01 3b                                            subs r3, #1
008b291a  01 2b                                            cmp r3, #1
008b291c  00 d9                                            bls #0x8b2920
008b291e  a9 e0                                            b #0x8b2a74
008b2920  25 ae                                            add r6, sp, #0x94
008b2922  30 1c                                            adds r0, r6, #0
008b2924  02 21                                            movs r1, #2
008b2926  36 61                                            str r6, [r6, #0x10]
008b2928  76 61                                            str r6, [r6, #0x14]
008b292a  5e f6 a8 e6                                      blx #0x31167c
008b292e  72 69                                            ldr r2, [r6, #0x14]
008b2930  50 46                                            mov r0, sl
008b2932  49 46                                            mov r1, sb
008b2934  53 1c                                            adds r3, r2, #1
008b2936  10 70                                            strb r0, [r2]
008b2938  33 61                                            str r3, [r6, #0x10]
008b293a  51 70                                            strb r1, [r2, #1]
008b293c  11 98                                            ldr r0, [sp, #0x44]
008b293e  31 1c                                            adds r1, r6, #0
008b2940  80 f7 9e e7                                      blx #0x433880
008b2944  30 1c                                            adds r0, r6, #0
008b2946  61 f6 32 e0                                      blx #0x3139ac
008b294a  5a 46                                            mov r2, fp
008b294c  51 69                                            ldr r1, [r2, #0x14]
008b294e  11 98                                            ldr r0, [sp, #0x44]
008b2950  12 69                                            ldr r2, [r2, #0x10]
008b2952  5d f6 58 e7                                      blx #0x310804
008b2956  03 e7                                            b #0x8b2760
008b2958  41 46                                            mov r1, r8
008b295a  0b 68                                            ldr r3, [r1]
008b295c  c5 e7                                            b #0x8b28ea
008b295e  42 46                                            mov r2, r8
008b2960  13 68                                            ldr r3, [r2]
008b2962  fa e6                                            b #0x8b275a
008b2964  03 68                                            ldr r3, [r0]
008b2966  1b 6a                                            ldr r3, [r3, #0x20]
008b2968  98 47                                            blx r3
008b296a  58 e5                                            b #0x8b241e
008b296c  0d 9b                                            ldr r3, [sp, #0x34]
008b296e  5a 69                                            ldr r2, [r3, #0x14]
008b2970  1b 69                                            ldr r3, [r3, #0x10]
008b2972  9a 42                                            cmp r2, r3
008b2974  63 d0                                            beq #0x8b2a3e
008b2976  20 1c                                            adds r0, r4, #0
008b2978  f2 f7 ee f8                                      bl #0x8a4b58
008b297c  0d 98                                            ldr r0, [sp, #0x34]
008b297e  43 69                                            ldr r3, [r0, #0x14]
008b2980  1a 78                                            ldrb r2, [r3]
008b2982  23 79                                            ldrb r3, [r4, #4]
008b2984  9a 42                                            cmp r2, r3
008b2986  71 d0                                            beq #0x8b2a6c
008b2988  0f 99                                            ldr r1, [sp, #0x3c]
008b298a  4a 69                                            ldr r2, [r1, #0x14]
008b298c  0b 69                                            ldr r3, [r1, #0x10]
008b298e  9a 42                                            cmp r2, r3
008b2990  00 d1                                            bne #0x8b2994
008b2992  20 e6                                            b #0x8b25d6
008b2994  20 1c                                            adds r0, r4, #0
008b2996  f2 f7 df f8                                      bl #0x8a4b58
008b299a  0f 9a                                            ldr r2, [sp, #0x3c]
008b299c  53 69                                            ldr r3, [r2, #0x14]
008b299e  1a 78                                            ldrb r2, [r3]
008b29a0  23 79                                            ldrb r3, [r4, #4]
008b29a2  9a 42                                            cmp r2, r3
008b29a4  00 d0                                            beq #0x8b29a8
008b29a6  90 e0                                            b #0x8b2aca
008b29a8  20 1c                                            adds r0, r4, #0
008b29aa  f2 f7 ab f8                                      bl #0x8a4b04
008b29ae  10 9b                                            ldr r3, [sp, #0x40]
008b29b0  58 46                                            mov r0, fp
008b29b2  18 70                                            strb r0, [r3]
008b29b4  0f e6                                            b #0x8b25d6
008b29b6  3b 68                                            ldr r3, [r7]
008b29b8  31 a9                                            add r1, sp, #0xc4
008b29ba  8b 46                                            mov fp, r1
008b29bc  08 1c                                            adds r0, r1, #0
008b29be  5b 69                                            ldr r3, [r3, #0x14]
008b29c0  39 1c                                            adds r1, r7, #0
008b29c2  98 47                                            blx r3
008b29c4  13 e7                                            b #0x8b27ee
008b29c6  3b 68                                            ldr r3, [r7]
008b29c8  38 1c                                            adds r0, r7, #0
008b29ca  9b 68                                            ldr r3, [r3, #8]
008b29cc  98 47                                            blx r3
008b29ce  17 90                                            str r0, [sp, #0x5c]
008b29d0  3b 68                                            ldr r3, [r7]
008b29d2  38 1c                                            adds r0, r7, #0
008b29d4  1b 6a                                            ldr r3, [r3, #0x20]
008b29d6  98 47                                            blx r3
008b29d8  2b ab                                            add r3, sp, #0xac
008b29da  0b 90                                            str r0, [sp, #0x2c]
008b29dc  9b 46                                            mov fp, r3
008b29de  3b 68                                            ldr r3, [r7]
008b29e0  58 46                                            mov r0, fp
008b29e2  39 1c                                            adds r1, r7, #0
008b29e4  1b 69                                            ldr r3, [r3, #0x10]
008b29e6  98 47                                            blx r3
008b29e8  53 e6                                            b #0x8b2692
008b29ea  03 68                                            ldr r3, [r0]
008b29ec  1b 6a                                            ldr r3, [r3, #0x20]
008b29ee  98 47                                            blx r3
008b29f0  ff e4                                            b #0x8b23f2
008b29f2  3b 68                                            ldr r3, [r7]
008b29f4  38 1c                                            adds r0, r7, #0
008b29f6  db 68                                            ldr r3, [r3, #0xc]
008b29f8  98 47                                            blx r3
008b29fa  5b e6                                            b #0x8b26b4
008b29fc  23 79                                            ldrb r3, [r4, #4]
008b29fe  d2 e5                                            b #0x8b25a6
008b2a00  03 68                                            ldr r3, [r0]
008b2a02  5b 6a                                            ldr r3, [r3, #0x24]
008b2a04  98 47                                            blx r3
008b2a06  dd e5                                            b #0x8b25c4
008b2a08  5a 46                                            mov r2, fp
008b2a0a  51 69                                            ldr r1, [r2, #0x14]
008b2a0c  11 98                                            ldr r0, [sp, #0x44]
008b2a0e  12 69                                            ldr r2, [r2, #0x10]
008b2a10  5d f6 e6 e7                                      blx #0x3109e0
008b2a14  a4 e6                                            b #0x8b2760
008b2a16  10 70                                            strb r0, [r2]
008b2a18  11 98                                            ldr r0, [sp, #0x44]
008b2a1a  11 9b                                            ldr r3, [sp, #0x44]
008b2a1c  41 69                                            ldr r1, [r0, #0x14]
008b2a1e  1a 69                                            ldr r2, [r3, #0x10]
008b2a20  48 1c                                            adds r0, r1, #1
008b2a22  90 42                                            cmp r0, r2
008b2a24  91 d0                                            beq #0x8b294a
008b2a26  13 78                                            ldrb r3, [r2]
008b2a28  82 1a                                            subs r2, r0, r2
008b2a2a  4b 70                                            strb r3, [r1, #1]
008b2a2c  11 98                                            ldr r0, [sp, #0x44]
008b2a2e  03 69                                            ldr r3, [r0, #0x10]
008b2a30  9b 18                                            adds r3, r3, r2
008b2a32  03 61                                            str r3, [r0, #0x10]
008b2a34  89 e7                                            b #0x8b294a
008b2a36  03 68                                            ldr r3, [r0]
008b2a38  1b 6a                                            ldr r3, [r3, #0x20]
008b2a3a  98 47                                            blx r3
008b2a3c  aa e5                                            b #0x8b2594
008b2a3e  0f 98                                            ldr r0, [sp, #0x3c]
008b2a40  42 69                                            ldr r2, [r0, #0x14]
008b2a42  03 69                                            ldr r3, [r0, #0x10]
008b2a44  9a 42                                            cmp r2, r3
008b2a46  00 d1                                            bne #0x8b2a4a
008b2a48  c5 e5                                            b #0x8b25d6
008b2a4a  20 1c                                            adds r0, r4, #0
008b2a4c  f2 f7 84 f8                                      bl #0x8a4b58
008b2a50  0f 99                                            ldr r1, [sp, #0x3c]
008b2a52  4b 69                                            ldr r3, [r1, #0x14]
008b2a54  1a 78                                            ldrb r2, [r3]
008b2a56  23 79                                            ldrb r3, [r4, #4]
008b2a58  9a 42                                            cmp r2, r3
008b2a5a  00 d0                                            beq #0x8b2a5e
008b2a5c  bb e5                                            b #0x8b25d6
008b2a5e  20 1c                                            adds r0, r4, #0
008b2a60  f2 f7 50 f8                                      bl #0x8a4b04
008b2a64  10 9a                                            ldr r2, [sp, #0x40]
008b2a66  5b 46                                            mov r3, fp
008b2a68  13 70                                            strb r3, [r2]
008b2a6a  b4 e5                                            b #0x8b25d6
008b2a6c  20 1c                                            adds r0, r4, #0
008b2a6e  f2 f7 49 f8                                      bl #0x8a4b04
008b2a72  b0 e5                                            b #0x8b25d6
008b2a74  51 1a                                            subs r1, r2, r1
008b2a76  01 31                                            adds r1, #1
008b2a78  11 98                                            ldr r0, [sp, #0x44]
008b2a7a  52 46                                            mov r2, sl
008b2a7c  77 f6 84 e4                                      blx #0x32a388
008b2a80  63 e7                                            b #0x8b294a
008b2a82  0c 9b                                            ldr r3, [sp, #0x30]
008b2a84  40 46                                            mov r0, r8
008b2a86  15 9f                                            ldr r7, [sp, #0x54]
008b2a88  9b 46                                            mov fp, r3
008b2a8a  04 23                                            movs r3, #4
008b2a8c  03 60                                            str r3, [r0]
008b2a8e  73 e6                                            b #0x8b2778
008b2a90  40 46                                            mov r0, r8
008b2a92  04 23                                            movs r3, #4
008b2a94  0c 9a                                            ldr r2, [sp, #0x30]
008b2a96  15 9f                                            ldr r7, [sp, #0x54]
008b2a98  03 60                                            str r3, [r0]
008b2a9a  1a 9b                                            ldr r3, [sp, #0x68]
008b2a9c  07 99                                            ldr r1, [sp, #0x1c]
008b2a9e  5c 46                                            mov r4, fp
008b2aa0  93 46                                            mov fp, r2
008b2aa2  0b 60                                            str r3, [r1]
008b2aa4  12 9a                                            ldr r2, [sp, #0x48]
008b2aa6  07 98                                            ldr r0, [sp, #0x1c]
008b2aa8  13 88                                            ldrh r3, [r2]
008b2aaa  83 80                                            strh r3, [r0, #4]
008b2aac  13 99                                            ldr r1, [sp, #0x4c]
008b2aae  0b 78                                            ldrb r3, [r1]
008b2ab0  83 71                                            strb r3, [r0, #6]
008b2ab2  20 1c                                            adds r0, r4, #0
008b2ab4  60 f6 7a e7                                      blx #0x3139ac
008b2ab8  68 e6                                            b #0x8b278c
008b2aba  0c 9a                                            ldr r2, [sp, #0x30]
008b2abc  04 23                                            movs r3, #4
008b2abe  40 46                                            mov r0, r8
008b2ac0  15 9f                                            ldr r7, [sp, #0x54]
008b2ac2  03 60                                            str r3, [r0]
008b2ac4  93 46                                            mov fp, r2
008b2ac6  23 68                                            ldr r3, [r4]
008b2ac8  57 e6                                            b #0x8b277a
008b2aca  04 23                                            movs r3, #4
008b2acc  42 46                                            mov r2, r8
008b2ace  0c 99                                            ldr r1, [sp, #0x30]
008b2ad0  15 9f                                            ldr r7, [sp, #0x54]
008b2ad2  13 60                                            str r3, [r2]
008b2ad4  23 68                                            ldr r3, [r4]
008b2ad6  07 98                                            ldr r0, [sp, #0x1c]
008b2ad8  8b 46                                            mov fp, r1
008b2ada  03 60                                            str r3, [r0]
008b2adc  12 99                                            ldr r1, [sp, #0x48]
008b2ade  07 9a                                            ldr r2, [sp, #0x1c]
008b2ae0  0b 88                                            ldrh r3, [r1]
008b2ae2  93 80                                            strh r3, [r2, #4]
008b2ae4  13 98                                            ldr r0, [sp, #0x4c]
008b2ae6  03 78                                            ldrb r3, [r0]
008b2ae8  93 71                                            strb r3, [r2, #6]
008b2aea  4f e6                                            b #0x8b278c
008b2aec  5b f6 10 e4                                      blx #0x30e310

; FUNCTION 0x008b2dd0, declared_size=484, range_size=484, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEmcEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> > std::priv::__do_get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, unsigned long, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ios_base&, int&, unsigned long&, char*)
; decoder-mode: thumb
008b2dd0  f0 b5                                            push {r4, r5, r6, r7, lr}
008b2dd2  5f 46                                            mov r7, fp
008b2dd4  56 46                                            mov r6, sl
008b2dd6  4d 46                                            mov r5, sb
008b2dd8  44 46                                            mov r4, r8
008b2dda  f0 b4                                            push {r4, r5, r6, r7}
008b2ddc  71 4e                                            ldr r6, [pc, #0x1c4]
008b2dde  15 1c                                            adds r5, r2, #0
008b2de0  71 4a                                            ldr r2, [pc, #0x1c4]
008b2de2  7e 44                                            add r6, pc
008b2de4  99 46                                            mov sb, r3
008b2de6  b3 58                                            ldr r3, [r6, r2]
008b2de8  97 b0                                            sub sp, #0x5c
008b2dea  0c 1c                                            adds r4, r1, #0
008b2dec  1b 68                                            ldr r3, [r3]
008b2dee  21 99                                            ldr r1, [sp, #0x84]
008b2df0  82 46                                            mov sl, r0
008b2df2  15 93                                            str r3, [sp, #0x54]
008b2df4  09 91                                            str r1, [sp, #0x24]
008b2df6  0d ab                                            add r3, sp, #0x34
008b2df8  49 46                                            mov r1, sb
008b2dfa  20 31                                            adds r1, #0x20
008b2dfc  18 1c                                            adds r0, r3, #0
008b2dfe  93 46                                            mov fp, r2
008b2e00  98 46                                            mov r8, r3
008b2e02  20 9f                                            ldr r7, [sp, #0x80]
008b2e04  f0 f7 ac fb                                      bl #0x8a3560
008b2e08  68 4b                                            ldr r3, [pc, #0x1a0]
008b2e0a  40 46                                            mov r0, r8
008b2e0c  f1 58                                            ldr r1, [r6, r3]
008b2e0e  f0 f7 cf fb                                      bl #0x8a35b0
008b2e12  49 46                                            mov r1, sb
008b2e14  03 1c                                            adds r3, r0, #0
008b2e16  4a 68                                            ldr r2, [r1, #4]
008b2e18  20 1c                                            adds r0, r4, #0
008b2e1a  29 1c                                            adds r1, r5, #0
008b2e1c  f9 f7 04 fb                                      bl #0x8ac428
008b2e20  02 1c                                            adds r2, r0, #0
008b2e22  07 90                                            str r0, [sp, #0x1c]
008b2e24  20 68                                            ldr r0, [r4]
008b2e26  01 23                                            movs r3, #1
008b2e28  1a 40                                            ands r2, r3
008b2e2a  08 92                                            str r2, [sp, #0x20]
008b2e2c  00 28                                            cmp r0, #0
008b2e2e  0f d0                                            beq #0x8b2e50
008b2e30  a3 79                                            ldrb r3, [r4, #6]
008b2e32  00 2b                                            cmp r3, #0
008b2e34  0c d1                                            bne #0x8b2e50
008b2e36  83 68                                            ldr r3, [r0, #8]
008b2e38  c2 68                                            ldr r2, [r0, #0xc]
008b2e3a  93 42                                            cmp r3, r2
008b2e3c  00 d3                                            blo #0x8b2e40
008b2e3e  ab e0                                            b #0x8b2f98
008b2e40  18 78                                            ldrb r0, [r3]
008b2e42  20 71                                            strb r0, [r4, #4]
008b2e44  01 30                                            adds r0, #1
008b2e46  43 42                                            rsbs r3, r0, #0
008b2e48  43 41                                            adcs r3, r0
008b2e4a  63 71                                            strb r3, [r4, #5]
008b2e4c  01 23                                            movs r3, #1
008b2e4e  a3 71                                            strb r3, [r4, #6]
008b2e50  28 68                                            ldr r0, [r5]
008b2e52  00 28                                            cmp r0, #0
008b2e54  56 d0                                            beq #0x8b2f04
008b2e56  ab 79                                            ldrb r3, [r5, #6]
008b2e58  00 2b                                            cmp r3, #0
008b2e5a  53 d1                                            bne #0x8b2f04
008b2e5c  83 68                                            ldr r3, [r0, #8]
008b2e5e  c2 68                                            ldr r2, [r0, #0xc]
008b2e60  93 42                                            cmp r3, r2
008b2e62  00 d3                                            blo #0x8b2e66
008b2e64  90 e0                                            b #0x8b2f88
008b2e66  18 78                                            ldrb r0, [r3]
008b2e68  28 71                                            strb r0, [r5, #4]
008b2e6a  01 30                                            adds r0, #1
008b2e6c  01 22                                            movs r2, #1
008b2e6e  43 42                                            rsbs r3, r0, #0
008b2e70  43 41                                            adcs r3, r0
008b2e72  6b 71                                            strb r3, [r5, #5]
008b2e74  aa 71                                            strb r2, [r5, #6]
008b2e76  62 79                                            ldrb r2, [r4, #5]
008b2e78  9a 42                                            cmp r2, r3
008b2e7a  47 d0                                            beq #0x8b2f0c
008b2e7c  4c 4b                                            ldr r3, [pc, #0x130]
008b2e7e  40 46                                            mov r0, r8
008b2e80  f1 58                                            ldr r1, [r6, r3]
008b2e82  f0 f7 95 fb                                      bl #0x8a35b0
008b2e86  03 68                                            ldr r3, [r0]
008b2e88  81 46                                            mov sb, r0
008b2e8a  db 68                                            ldr r3, [r3, #0xc]
008b2e8c  98 47                                            blx r3
008b2e8e  6a 46                                            mov r2, sp
008b2e90  3c 32                                            adds r2, #0x3c
008b2e92  0b 90                                            str r0, [sp, #0x2c]
008b2e94  0a 92                                            str r2, [sp, #0x28]
008b2e96  49 46                                            mov r1, sb
008b2e98  0b 68                                            ldr r3, [r1]
008b2e9a  10 1c                                            adds r0, r2, #0
008b2e9c  1b 69                                            ldr r3, [r3, #0x10]
008b2e9e  98 47                                            blx r3
008b2ea0  07 9b                                            ldr r3, [sp, #0x1c]
008b2ea2  08 99                                            ldr r1, [sp, #0x20]
008b2ea4  20 1c                                            adds r0, r4, #0
008b2ea6  9a 10                                            asrs r2, r3, #2
008b2ea8  9b 07                                            lsls r3, r3, #0x1e
008b2eaa  db 0f                                            lsrs r3, r3, #0x1f
008b2eac  01 93                                            str r3, [sp, #4]
008b2eae  0b 9b                                            ldr r3, [sp, #0x2c]
008b2eb0  00 91                                            str r1, [sp]
008b2eb2  0a 99                                            ldr r1, [sp, #0x28]
008b2eb4  02 93                                            str r3, [sp, #8]
008b2eb6  0e ab                                            add r3, sp, #0x38
008b2eb8  03 91                                            str r1, [sp, #0xc]
008b2eba  04 93                                            str r3, [sp, #0x10]
008b2ebc  29 1c                                            adds r1, r5, #0
008b2ebe  09 9b                                            ldr r3, [sp, #0x24]
008b2ec0  f6 f7 94 fd                                      bl #0x8a99ec
008b2ec4  81 46                                            mov sb, r0
008b2ec6  0a 98                                            ldr r0, [sp, #0x28]
008b2ec8  60 f6 70 e5                                      blx #0x3139ac
008b2ecc  4a 46                                            mov r2, sb
008b2ece  00 23                                            movs r3, #0
008b2ed0  00 2a                                            cmp r2, #0
008b2ed2  21 d1                                            bne #0x8b2f18
008b2ed4  04 23                                            movs r3, #4
008b2ed6  3b 60                                            str r3, [r7]
008b2ed8  20 68                                            ldr r0, [r4]
008b2eda  00 28                                            cmp r0, #0
008b2edc  20 d1                                            bne #0x8b2f20
008b2ede  28 68                                            ldr r0, [r5]
008b2ee0  00 28                                            cmp r0, #0
008b2ee2  2f d0                                            beq #0x8b2f44
008b2ee4  ab 79                                            ldrb r3, [r5, #6]
008b2ee6  00 2b                                            cmp r3, #0
008b2ee8  2c d1                                            bne #0x8b2f44
008b2eea  83 68                                            ldr r3, [r0, #8]
008b2eec  c2 68                                            ldr r2, [r0, #0xc]
008b2eee  93 42                                            cmp r3, r2
008b2ef0  46 d2                                            bhs #0x8b2f80
008b2ef2  18 78                                            ldrb r0, [r3]
008b2ef4  28 71                                            strb r0, [r5, #4]
008b2ef6  01 30                                            adds r0, #1
008b2ef8  43 42                                            rsbs r3, r0, #0
008b2efa  43 41                                            adcs r3, r0
008b2efc  01 22                                            movs r2, #1
008b2efe  6b 71                                            strb r3, [r5, #5]
008b2f00  aa 71                                            strb r2, [r5, #6]
008b2f02  20 e0                                            b #0x8b2f46
008b2f04  6b 79                                            ldrb r3, [r5, #5]
008b2f06  62 79                                            ldrb r2, [r4, #5]
008b2f08  9a 42                                            cmp r2, r3
008b2f0a  b7 d1                                            bne #0x8b2e7c
008b2f0c  08 9b                                            ldr r3, [sp, #0x20]
008b2f0e  01 2b                                            cmp r3, #1
008b2f10  e0 d1                                            bne #0x8b2ed4
008b2f12  09 99                                            ldr r1, [sp, #0x24]
008b2f14  00 23                                            movs r3, #0
008b2f16  0b 60                                            str r3, [r1]
008b2f18  3b 60                                            str r3, [r7]
008b2f1a  20 68                                            ldr r0, [r4]
008b2f1c  00 28                                            cmp r0, #0
008b2f1e  de d0                                            beq #0x8b2ede
008b2f20  a3 79                                            ldrb r3, [r4, #6]
008b2f22  00 2b                                            cmp r3, #0
008b2f24  db d1                                            bne #0x8b2ede
008b2f26  83 68                                            ldr r3, [r0, #8]
008b2f28  c2 68                                            ldr r2, [r0, #0xc]
008b2f2a  93 42                                            cmp r3, r2
008b2f2c  30 d2                                            bhs #0x8b2f90
008b2f2e  18 78                                            ldrb r0, [r3]
008b2f30  20 71                                            strb r0, [r4, #4]
008b2f32  01 30                                            adds r0, #1
008b2f34  43 42                                            rsbs r3, r0, #0
008b2f36  43 41                                            adcs r3, r0
008b2f38  63 71                                            strb r3, [r4, #5]
008b2f3a  01 23                                            movs r3, #1
008b2f3c  a3 71                                            strb r3, [r4, #6]
008b2f3e  28 68                                            ldr r0, [r5]
008b2f40  00 28                                            cmp r0, #0
008b2f42  cf d1                                            bne #0x8b2ee4
008b2f44  6b 79                                            ldrb r3, [r5, #5]
008b2f46  62 79                                            ldrb r2, [r4, #5]
008b2f48  9a 42                                            cmp r2, r3
008b2f4a  03 d1                                            bne #0x8b2f54
008b2f4c  3a 68                                            ldr r2, [r7]
008b2f4e  02 23                                            movs r3, #2
008b2f50  13 43                                            orrs r3, r2
008b2f52  3b 60                                            str r3, [r7]
008b2f54  21 1c                                            adds r1, r4, #0
008b2f56  07 22                                            movs r2, #7
008b2f58  50 46                                            mov r0, sl
008b2f5a  5a f6 ee e7                                      blx #0x30df38
008b2f5e  40 46                                            mov r0, r8
008b2f60  f0 f7 c8 fa                                      bl #0x8a34f4
008b2f64  59 46                                            mov r1, fp
008b2f66  73 58                                            ldr r3, [r6, r1]
008b2f68  15 9a                                            ldr r2, [sp, #0x54]
008b2f6a  50 46                                            mov r0, sl
008b2f6c  1b 68                                            ldr r3, [r3]
008b2f6e  9a 42                                            cmp r2, r3
008b2f70  16 d1                                            bne #0x8b2fa0
008b2f72  17 b0                                            add sp, #0x5c
008b2f74  3c bc                                            pop {r2, r3, r4, r5}
008b2f76  90 46                                            mov r8, r2
008b2f78  99 46                                            mov sb, r3
008b2f7a  a2 46                                            mov sl, r4
008b2f7c  ab 46                                            mov fp, r5
008b2f7e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b2f80  03 68                                            ldr r3, [r0]
008b2f82  1b 6a                                            ldr r3, [r3, #0x20]
008b2f84  98 47                                            blx r3
008b2f86  b5 e7                                            b #0x8b2ef4
008b2f88  03 68                                            ldr r3, [r0]
008b2f8a  1b 6a                                            ldr r3, [r3, #0x20]
008b2f8c  98 47                                            blx r3
008b2f8e  6b e7                                            b #0x8b2e68
008b2f90  03 68                                            ldr r3, [r0]
008b2f92  1b 6a                                            ldr r3, [r3, #0x20]
008b2f94  98 47                                            blx r3
008b2f96  cb e7                                            b #0x8b2f30
008b2f98  03 68                                            ldr r3, [r0]
008b2f9a  1b 6a                                            ldr r3, [r3, #0x20]
008b2f9c  98 47                                            blx r3
008b2f9e  50 e7                                            b #0x8b2e42
008b2fa0  5b f6 b6 e1                                      blx #0x30e310
; mapping-symbol data/literal pool
008b2fa4  b2 1c 0e 00 ac 40 00 00 e4 1c 00 00 e0 1f 00 00  .byte 0xb2, 0x1c, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00
