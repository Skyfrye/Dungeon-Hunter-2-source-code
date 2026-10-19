; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b7008, declared_size=2, range_size=2, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE5imbueERKSt6locale
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::imbue(std::locale const&)
; decoder-mode: thumb
008b7008  70 47                                            bx lr

; FUNCTION 0x008b702c, declared_size=26, range_size=26, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::uflow()
; decoder-mode: thumb
008b702c  10 b5                                            push {r4, lr}
008b702e  03 68                                            ldr r3, [r0]
008b7030  04 1c                                            adds r4, r0, #0
008b7032  1b 6a                                            ldr r3, [r3, #0x20]
008b7034  98 47                                            blx r3
008b7036  03 1c                                            adds r3, r0, #0
008b7038  01 33                                            adds r3, #1
008b703a  03 d0                                            beq #0x8b7044
008b703c  a3 68                                            ldr r3, [r4, #8]
008b703e  1a 1d                                            adds r2, r3, #4
008b7040  a2 60                                            str r2, [r4, #8]
008b7042  18 68                                            ldr r0, [r3]
008b7044  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b70c8, declared_size=2, range_size=2, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE6setbufEPwi
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::setbuf(wchar_t*, int)
; decoder-mode: thumb
008b70c8  70 47                                            bx lr

; FUNCTION 0x008b70cc, declared_size=12, range_size=12, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE7seekoffElii
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::seekoff(long, int, int)
; decoder-mode: thumb
008b70cc  01 23                                            movs r3, #1
008b70ce  5b 42                                            rsbs r3, r3, #0
008b70d0  03 60                                            str r3, [r0]
008b70d2  00 23                                            movs r3, #0
008b70d4  43 60                                            str r3, [r0, #4]
008b70d6  70 47                                            bx lr

; FUNCTION 0x008b70d8, declared_size=16, range_size=16, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE7seekposESt4fposI9mbstate_tEi
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::seekpos(std::fpos<mbstate_t>, int)
; decoder-mode: thumb
008b70d8  01 23                                            movs r3, #1
008b70da  5b 42                                            rsbs r3, r3, #0
008b70dc  82 b0                                            sub sp, #8
008b70de  03 60                                            str r3, [r0]
008b70e0  02 b0                                            add sp, #8
008b70e2  00 23                                            movs r3, #0
008b70e4  43 60                                            str r3, [r0, #4]
008b70e6  70 47                                            bx lr

; FUNCTION 0x008b70e8, declared_size=4, range_size=4, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE4syncEv
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::sync()
; decoder-mode: thumb
008b70e8  00 20                                            movs r0, #0
008b70ea  70 47                                            bx lr

; FUNCTION 0x008b70ec, declared_size=4, range_size=4, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE9showmanycEv
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::showmanyc()
; decoder-mode: thumb
008b70ec  00 20                                            movs r0, #0
008b70ee  70 47                                            bx lr

; FUNCTION 0x008b70f0, declared_size=6, range_size=6, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE9underflowEv
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::underflow()
; decoder-mode: thumb
008b70f0  01 20                                            movs r0, #1
008b70f2  40 42                                            rsbs r0, r0, #0
008b70f4  70 47                                            bx lr

; FUNCTION 0x008b70f8, declared_size=6, range_size=6, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE9pbackfailEi
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(int)
; decoder-mode: thumb
008b70f8  01 20                                            movs r0, #1
008b70fa  40 42                                            rsbs r0, r0, #0
008b70fc  70 47                                            bx lr

; FUNCTION 0x008b7100, declared_size=6, range_size=6, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE8overflowEi
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(int)
; decoder-mode: thumb
008b7100  01 20                                            movs r0, #1
008b7102  40 42                                            rsbs r0, r0, #0
008b7104  70 47                                            bx lr

; FUNCTION 0x008b71b0, declared_size=36, range_size=36, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEED1Ev
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::~basic_streambuf()
; decoder-mode: thumb
008b71b0  10 b5                                            push {r4, lr}
008b71b2  06 4b                                            ldr r3, [pc, #0x18]
008b71b4  06 4a                                            ldr r2, [pc, #0x18]
008b71b6  04 1c                                            adds r4, r0, #0
008b71b8  7b 44                                            add r3, pc
008b71ba  9a 58                                            ldr r2, [r3, r2]
008b71bc  08 32                                            adds r2, #8
008b71be  02 60                                            str r2, [r0]
008b71c0  1c 30                                            adds r0, #0x1c
008b71c2  ec f7 97 f9                                      bl #0x8a34f4
008b71c6  20 1c                                            adds r0, r4, #0
008b71c8  10 bd                                            pop {r4, pc}
008b71ca  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b71cc  dc d8 0d 00 48 2c 00 00                          .byte 0xdc, 0xd8, 0x0d, 0x00, 0x48, 0x2c, 0x00, 0x00

; FUNCTION 0x008b7dac, declared_size=18, range_size=18, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEED0Ev
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::~basic_streambuf()
; decoder-mode: thumb
008b7dac  10 b5                                            push {r4, lr}
008b7dae  04 1c                                            adds r4, r0, #0
008b7db0  ff f7 fe f9                                      bl #0x8b71b0
008b7db4  20 1c                                            adds r0, r4, #0
008b7db6  56 f6 7c e2                                      blx #0x30e2b0
008b7dba  20 1c                                            adds r0, r4, #0
008b7dbc  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b83d4, declared_size=40, range_size=40, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE8pubimbueERKSt6locale
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::pubimbue(std::locale const&)
; decoder-mode: thumb
008b83d4  70 b5                                            push {r4, r5, r6, lr}
008b83d6  0b 68                                            ldr r3, [r1]
008b83d8  0c 1c                                            adds r4, r1, #0
008b83da  05 1c                                            adds r5, r0, #0
008b83dc  9b 6b                                            ldr r3, [r3, #0x38]
008b83de  08 1c                                            adds r0, r1, #0
008b83e0  1c 34                                            adds r4, #0x1c
008b83e2  11 1c                                            adds r1, r2, #0
008b83e4  16 1c                                            adds r6, r2, #0
008b83e6  98 47                                            blx r3
008b83e8  28 1c                                            adds r0, r5, #0
008b83ea  21 1c                                            adds r1, r4, #0
008b83ec  eb f7 b8 f8                                      bl #0x8a3560
008b83f0  31 1c                                            adds r1, r6, #0
008b83f2  20 1c                                            adds r0, r4, #0
008b83f4  eb f7 92 f8                                      bl #0x8a351c
008b83f8  28 1c                                            adds r0, r5, #0
008b83fa  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b8518, declared_size=90, range_size=90, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE10_M_xsputncEwi
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::_M_xsputnc(wchar_t, int)
; decoder-mode: thumb
008b8518  f0 b5                                            push {r4, r5, r6, r7, lr}
008b851a  47 46                                            mov r7, r8
008b851c  80 b4                                            push {r7}
008b851e  04 1c                                            adds r4, r0, #0
008b8520  88 46                                            mov r8, r1
008b8522  17 1c                                            adds r7, r2, #0
008b8524  00 26                                            movs r6, #0
008b8526  00 2a                                            cmp r2, #0
008b8528  11 dc                                            bgt #0x8b854e
008b852a  1e e0                                            b #0x8b856a
008b852c  1b 1a                                            subs r3, r3, r0
008b852e  9b 10                                            asrs r3, r3, #2
008b8530  bd 1b                                            subs r5, r7, r6
008b8532  9d 42                                            cmp r5, r3
008b8534  00 d9                                            bls #0x8b8538
008b8536  1d 1c                                            adds r5, r3, #0
008b8538  2a 1c                                            adds r2, r5, #0
008b853a  41 46                                            mov r1, r8
008b853c  56 f6 1c e1                                      blx #0x30e778
008b8540  63 69                                            ldr r3, [r4, #0x14]
008b8542  ae 19                                            adds r6, r5, r6
008b8544  ad 00                                            lsls r5, r5, #2
008b8546  5d 19                                            adds r5, r3, r5
008b8548  65 61                                            str r5, [r4, #0x14]
008b854a  b7 42                                            cmp r7, r6
008b854c  0d dd                                            ble #0x8b856a
008b854e  60 69                                            ldr r0, [r4, #0x14]
008b8550  a3 69                                            ldr r3, [r4, #0x18]
008b8552  98 42                                            cmp r0, r3
008b8554  ea d3                                            blo #0x8b852c
008b8556  23 68                                            ldr r3, [r4]
008b8558  20 1c                                            adds r0, r4, #0
008b855a  41 46                                            mov r1, r8
008b855c  5b 6b                                            ldr r3, [r3, #0x34]
008b855e  98 47                                            blx r3
008b8560  01 30                                            adds r0, #1
008b8562  02 d0                                            beq #0x8b856a
008b8564  01 36                                            adds r6, #1
008b8566  b7 42                                            cmp r7, r6
008b8568  f1 dc                                            bgt #0x8b854e
008b856a  30 1c                                            adds r0, r6, #0
008b856c  04 bc                                            pop {r2}
008b856e  90 46                                            mov r8, r2
008b8570  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x008b8574, declared_size=96, range_size=96, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE6xsputnEPKwi
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::xsputn(wchar_t const*, int)
; decoder-mode: thumb
008b8574  f0 b5                                            push {r4, r5, r6, r7, lr}
008b8576  47 46                                            mov r7, r8
008b8578  80 b4                                            push {r7}
008b857a  04 1c                                            adds r4, r0, #0
008b857c  0e 1c                                            adds r6, r1, #0
008b857e  90 46                                            mov r8, r2
008b8580  00 27                                            movs r7, #0
008b8582  00 2a                                            cmp r2, #0
008b8584  13 dc                                            bgt #0x8b85ae
008b8586  21 e0                                            b #0x8b85cc
008b8588  1b 1a                                            subs r3, r3, r0
008b858a  42 46                                            mov r2, r8
008b858c  9b 10                                            asrs r3, r3, #2
008b858e  d5 1b                                            subs r5, r2, r7
008b8590  9d 42                                            cmp r5, r3
008b8592  00 d9                                            bls #0x8b8596
008b8594  1d 1c                                            adds r5, r3, #0
008b8596  31 1c                                            adds r1, r6, #0
008b8598  2a 1c                                            adds r2, r5, #0
008b859a  55 f6 2e e5                                      blx #0x30dff8
008b859e  63 69                                            ldr r3, [r4, #0x14]
008b85a0  ef 19                                            adds r7, r5, r7
008b85a2  ad 00                                            lsls r5, r5, #2
008b85a4  76 19                                            adds r6, r6, r5
008b85a6  5d 19                                            adds r5, r3, r5
008b85a8  65 61                                            str r5, [r4, #0x14]
008b85aa  b8 45                                            cmp r8, r7
008b85ac  0e dd                                            ble #0x8b85cc
008b85ae  60 69                                            ldr r0, [r4, #0x14]
008b85b0  a3 69                                            ldr r3, [r4, #0x18]
008b85b2  98 42                                            cmp r0, r3
008b85b4  e8 d3                                            blo #0x8b8588
008b85b6  23 68                                            ldr r3, [r4]
008b85b8  31 68                                            ldr r1, [r6]
008b85ba  20 1c                                            adds r0, r4, #0
008b85bc  5b 6b                                            ldr r3, [r3, #0x34]
008b85be  98 47                                            blx r3
008b85c0  01 30                                            adds r0, #1
008b85c2  03 d0                                            beq #0x8b85cc
008b85c4  01 37                                            adds r7, #1
008b85c6  04 36                                            adds r6, #4
008b85c8  b8 45                                            cmp r8, r7
008b85ca  f0 dc                                            bgt #0x8b85ae
008b85cc  38 1c                                            adds r0, r7, #0
008b85ce  04 bc                                            pop {r2}
008b85d0  90 46                                            mov r8, r2
008b85d2  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x008b85d4, declared_size=94, range_size=94, mode=thumb
; class-group: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt15basic_streambufIwSt11char_traitsIwEE6xsgetnEPwi
; demangled: std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::xsgetn(wchar_t*, int)
; decoder-mode: thumb
008b85d4  f0 b5                                            push {r4, r5, r6, r7, lr}
008b85d6  47 46                                            mov r7, r8
008b85d8  80 b4                                            push {r7}
008b85da  05 1c                                            adds r5, r0, #0
008b85dc  0f 1c                                            adds r7, r1, #0
008b85de  90 46                                            mov r8, r2
008b85e0  00 24                                            movs r4, #0
008b85e2  00 2a                                            cmp r2, #0
008b85e4  0a dc                                            bgt #0x8b85fc
008b85e6  20 e0                                            b #0x8b862a
008b85e8  2b 68                                            ldr r3, [r5]
008b85ea  28 1c                                            adds r0, r5, #0
008b85ec  5b 6a                                            ldr r3, [r3, #0x24]
008b85ee  98 47                                            blx r3
008b85f0  43 1c                                            adds r3, r0, #1
008b85f2  1a d0                                            beq #0x8b862a
008b85f4  01 34                                            adds r4, #1
008b85f6  01 c7                                            stm r7!, {r0}
008b85f8  a0 45                                            cmp r8, r4
008b85fa  16 dd                                            ble #0x8b862a
008b85fc  a9 68                                            ldr r1, [r5, #8]
008b85fe  eb 68                                            ldr r3, [r5, #0xc]
008b8600  99 42                                            cmp r1, r3
008b8602  f1 d2                                            bhs #0x8b85e8
008b8604  5b 1a                                            subs r3, r3, r1
008b8606  42 46                                            mov r2, r8
008b8608  9b 10                                            asrs r3, r3, #2
008b860a  16 1b                                            subs r6, r2, r4
008b860c  9e 42                                            cmp r6, r3
008b860e  00 d9                                            bls #0x8b8612
008b8610  1e 1c                                            adds r6, r3, #0
008b8612  38 1c                                            adds r0, r7, #0
008b8614  32 1c                                            adds r2, r6, #0
008b8616  55 f6 f0 e4                                      blx #0x30dff8
008b861a  ab 68                                            ldr r3, [r5, #8]
008b861c  34 19                                            adds r4, r6, r4
008b861e  b6 00                                            lsls r6, r6, #2
008b8620  bf 19                                            adds r7, r7, r6
008b8622  9e 19                                            adds r6, r3, r6
008b8624  ae 60                                            str r6, [r5, #8]
008b8626  a0 45                                            cmp r8, r4
008b8628  e8 dc                                            bgt #0x8b85fc
008b862a  20 1c                                            adds r0, r4, #0
008b862c  04 bc                                            pop {r2}
008b862e  90 46                                            mov r8, r2
008b8630  f0 bd                                            pop {r4, r5, r6, r7, pc}
