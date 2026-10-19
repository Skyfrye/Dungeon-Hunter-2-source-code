; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b700c, declared_size=32, range_size=32, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE4syncEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::sync()
; decoder-mode: thumb
008b700c  10 b5                                            push {r4, lr}
008b700e  30 23                                            movs r3, #0x30
008b7010  c3 5c                                            ldrb r3, [r0, r3]
008b7012  00 2b                                            cmp r3, #0
008b7014  01 d1                                            bne #0x8b701a
008b7016  00 20                                            movs r0, #0
008b7018  10 bd                                            pop {r4, pc}
008b701a  03 68                                            ldr r3, [r0]
008b701c  01 21                                            movs r1, #1
008b701e  49 42                                            rsbs r1, r1, #0
008b7020  5b 6b                                            ldr r3, [r3, #0x34]
008b7022  98 47                                            blx r3
008b7024  03 1c                                            adds r3, r0, #0
008b7026  01 33                                            adds r3, #1
008b7028  f5 d1                                            bne #0x8b7016
008b702a  f5 e7                                            b #0x8b7018

; FUNCTION 0x008b7048, declared_size=126, range_size=126, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE9pbackfailEi
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(int)
; decoder-mode: thumb
008b7048  f0 b5                                            push {r4, r5, r6, r7, lr}
008b704a  2f 23                                            movs r3, #0x2f
008b704c  c3 5c                                            ldrb r3, [r0, r3]
008b704e  00 2b                                            cmp r3, #0
008b7050  1e d0                                            beq #0x8b7090
008b7052  83 68                                            ldr r3, [r0, #8]
008b7054  42 68                                            ldr r2, [r0, #4]
008b7056  93 42                                            cmp r3, r2
008b7058  18 d0                                            beq #0x8b708c
008b705a  4c 1c                                            adds r4, r1, #1
008b705c  1b d0                                            beq #0x8b7096
008b705e  1c 1f                                            subs r4, r3, #4
008b7060  25 68                                            ldr r5, [r4]
008b7062  a9 42                                            cmp r1, r5
008b7064  29 d0                                            beq #0x8b70ba
008b7066  45 6d                                            ldr r5, [r0, #0x54]
008b7068  00 2d                                            cmp r5, #0
008b706a  26 d0                                            beq #0x8b70ba
008b706c  32 24                                            movs r4, #0x32
008b706e  05 5d                                            ldrb r5, [r0, r4]
008b7070  07 1c                                            adds r7, r0, #0
008b7072  06 1c                                            adds r6, r0, #0
008b7074  74 37                                            adds r7, #0x74
008b7076  94 36                                            adds r6, #0x94
008b7078  00 2d                                            cmp r5, #0
008b707a  10 d0                                            beq #0x8b709e
008b707c  97 42                                            cmp r7, r2
008b707e  07 d0                                            beq #0x8b7090
008b7080  c3 68                                            ldr r3, [r0, #0xc]
008b7082  c6 60                                            str r6, [r0, #0xc]
008b7084  04 3b                                            subs r3, #4
008b7086  43 60                                            str r3, [r0, #4]
008b7088  83 60                                            str r3, [r0, #8]
008b708a  13 e0                                            b #0x8b70b4
008b708c  4c 1c                                            adds r4, r1, #1
008b708e  ed d1                                            bne #0x8b706c
008b7090  01 20                                            movs r0, #1
008b7092  40 42                                            rsbs r0, r0, #0
008b7094  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b7096  04 3b                                            subs r3, #4
008b7098  83 60                                            str r3, [r0, #8]
008b709a  18 68                                            ldr r0, [r3]
008b709c  fa e7                                            b #0x8b7094
008b709e  03 66                                            str r3, [r0, #0x60]
008b70a0  c3 68                                            ldr r3, [r0, #0xc]
008b70a2  c2 65                                            str r2, [r0, #0x5c]
008b70a4  01 22                                            movs r2, #1
008b70a6  43 66                                            str r3, [r0, #0x64]
008b70a8  03 1c                                            adds r3, r0, #0
008b70aa  90 33                                            adds r3, #0x90
008b70ac  43 60                                            str r3, [r0, #4]
008b70ae  83 60                                            str r3, [r0, #8]
008b70b0  c6 60                                            str r6, [r0, #0xc]
008b70b2  02 55                                            strb r2, [r0, r4]
008b70b4  19 60                                            str r1, [r3]
008b70b6  08 1c                                            adds r0, r1, #0
008b70b8  ec e7                                            b #0x8b7094
008b70ba  84 60                                            str r4, [r0, #8]
008b70bc  20 68                                            ldr r0, [r4]
008b70be  23 1c                                            adds r3, r4, #0
008b70c0  81 42                                            cmp r1, r0
008b70c2  f7 d1                                            bne #0x8b70b4
008b70c4  e6 e7                                            b #0x8b7094

; FUNCTION 0x008b7320, declared_size=36, range_size=36, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE21_M_deallocate_buffersEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_deallocate_buffers()
; decoder-mode: thumb
008b7320  10 b5                                            push {r4, lr}
008b7322  2e 23                                            movs r3, #0x2e
008b7324  c3 5c                                            ldrb r3, [r0, r3]
008b7326  04 1c                                            adds r4, r0, #0
008b7328  00 2b                                            cmp r3, #0
008b732a  02 d0                                            beq #0x8b7332
008b732c  40 6b                                            ldr r0, [r0, #0x34]
008b732e  56 f6 e0 e5                                      blx #0x30def0
008b7332  e0 6b                                            ldr r0, [r4, #0x3c]
008b7334  56 f6 dc e5                                      blx #0x30def0
008b7338  00 23                                            movs r3, #0
008b733a  63 63                                            str r3, [r4, #0x34]
008b733c  a3 63                                            str r3, [r4, #0x38]
008b733e  e3 63                                            str r3, [r4, #0x3c]
008b7340  23 64                                            str r3, [r4, #0x40]
008b7342  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b7344, declared_size=108, range_size=108, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE19_M_allocate_buffersEPwi
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_allocate_buffers(wchar_t*, int)
; decoder-mode: thumb
008b7344  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b7346  04 1c                                            adds r4, r0, #0
008b7348  16 1c                                            adds r6, r2, #0
008b734a  00 29                                            cmp r1, #0
008b734c  1f d0                                            beq #0x8b738e
008b734e  00 22                                            movs r2, #0
008b7350  2e 23                                            movs r3, #0x2e
008b7352  41 63                                            str r1, [r0, #0x34]
008b7354  c2 54                                            strb r2, [r0, r3]
008b7356  e3 6e                                            ldr r3, [r4, #0x6c]
008b7358  a0 6e                                            ldr r0, [r4, #0x68]
008b735a  1f 1c                                            adds r7, r3, #0
008b735c  77 43                                            muls r7, r6, r7
008b735e  03 68                                            ldr r3, [r0]
008b7360  1b 6a                                            ldr r3, [r3, #0x20]
008b7362  98 47                                            blx r3
008b7364  00 23                                            movs r3, #0
008b7366  e3 63                                            str r3, [r4, #0x3c]
008b7368  05 1c                                            adds r5, r0, #0
008b736a  b8 42                                            cmp r0, r7
008b736c  0d db                                            blt #0x8b738a
008b736e  28 1c                                            adds r0, r5, #0
008b7370  57 f6 c0 e1                                      blx #0x30e6f4
008b7374  e0 63                                            str r0, [r4, #0x3c]
008b7376  00 28                                            cmp r0, #0
008b7378  15 d0                                            beq #0x8b73a6
008b737a  63 6b                                            ldr r3, [r4, #0x34]
008b737c  b6 00                                            lsls r6, r6, #2
008b737e  45 19                                            adds r5, r0, r5
008b7380  9e 19                                            adds r6, r3, r6
008b7382  a6 63                                            str r6, [r4, #0x38]
008b7384  25 64                                            str r5, [r4, #0x40]
008b7386  01 20                                            movs r0, #1
008b7388  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b738a  3d 1c                                            adds r5, r7, #0
008b738c  ef e7                                            b #0x8b736e
008b738e  90 00                                            lsls r0, r2, #2
008b7390  57 f6 b0 e1                                      blx #0x30e6f4
008b7394  03 1c                                            adds r3, r0, #0
008b7396  60 63                                            str r0, [r4, #0x34]
008b7398  00 20                                            movs r0, #0
008b739a  00 2b                                            cmp r3, #0
008b739c  f4 d0                                            beq #0x8b7388
008b739e  01 22                                            movs r2, #1
008b73a0  2e 23                                            movs r3, #0x2e
008b73a2  e2 54                                            strb r2, [r4, r3]
008b73a4  d7 e7                                            b #0x8b7356
008b73a6  20 1c                                            adds r0, r4, #0
008b73a8  ff f7 ba ff                                      bl #0x8b7320
008b73ac  00 20                                            movs r0, #0
008b73ae  eb e7                                            b #0x8b7388

; FUNCTION 0x008b73b0, declared_size=52, range_size=52, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE19_M_allocate_buffersEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_allocate_buffers()
; decoder-mode: thumb
008b73b0  70 b5                                            push {r4, r5, r6, lr}
008b73b2  09 4b                                            ldr r3, [pc, #0x24]
008b73b4  09 4a                                            ldr r2, [pc, #0x24]
008b73b6  05 1c                                            adds r5, r0, #0
008b73b8  7b 44                                            add r3, pc
008b73ba  9b 58                                            ldr r3, [r3, r2]
008b73bc  1c 68                                            ldr r4, [r3]
008b73be  08 4b                                            ldr r3, [pc, #0x20]
008b73c0  21 1c                                            adds r1, r4, #0
008b73c2  e0 18                                            adds r0, r4, r3
008b73c4  57 f6 42 e4                                      blx #0x30ec4c
008b73c8  00 21                                            movs r1, #0
008b73ca  22 1c                                            adds r2, r4, #0
008b73cc  42 43                                            muls r2, r0, r2
008b73ce  28 1c                                            adds r0, r5, #0
008b73d0  ff f7 b8 ff                                      bl #0x8b7344
008b73d4  70 bd                                            pop {r4, r5, r6, pc}
008b73d6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b73d8  dc d6 0d 00 00 1a 00 00 ff 0f 00 00              .byte 0xdc, 0xd6, 0x0d, 0x00, 0x00, 0x1a, 0x00, 0x00, 0xff, 0x0f, 0x00, 0x00

; FUNCTION 0x008b73e4, declared_size=86, range_size=86, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE24_M_switch_to_output_modeEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_switch_to_output_mode()
; decoder-mode: thumb
008b73e4  10 b5                                            push {r4, lr}
008b73e6  28 23                                            movs r3, #0x28
008b73e8  c3 5c                                            ldrb r3, [r0, r3]
008b73ea  04 1c                                            adds r4, r0, #0
008b73ec  00 2b                                            cmp r3, #0
008b73ee  02 d0                                            beq #0x8b73f6
008b73f0  43 6a                                            ldr r3, [r0, #0x24]
008b73f2  d9 06                                            lsls r1, r3, #0x1b
008b73f4  01 d4                                            bmi #0x8b73fa
008b73f6  00 20                                            movs r0, #0
008b73f8  10 bd                                            pop {r4, pc}
008b73fa  2f 22                                            movs r2, #0x2f
008b73fc  82 5c                                            ldrb r2, [r0, r2]
008b73fe  00 2a                                            cmp r2, #0
008b7400  f9 d1                                            bne #0x8b73f6
008b7402  31 22                                            movs r2, #0x31
008b7404  82 5c                                            ldrb r2, [r0, r2]
008b7406  00 2a                                            cmp r2, #0
008b7408  f5 d1                                            bne #0x8b73f6
008b740a  42 6b                                            ldr r2, [r0, #0x34]
008b740c  00 2a                                            cmp r2, #0
008b740e  0d d0                                            beq #0x8b742c
008b7410  d9 07                                            lsls r1, r3, #0x1f
008b7412  01 d5                                            bpl #0x8b7418
008b7414  00 23                                            movs r3, #0
008b7416  e3 64                                            str r3, [r4, #0x4c]
008b7418  a3 6b                                            ldr r3, [r4, #0x38]
008b741a  22 61                                            str r2, [r4, #0x10]
008b741c  62 61                                            str r2, [r4, #0x14]
008b741e  04 3b                                            subs r3, #4
008b7420  a3 61                                            str r3, [r4, #0x18]
008b7422  01 22                                            movs r2, #1
008b7424  30 23                                            movs r3, #0x30
008b7426  e2 54                                            strb r2, [r4, r3]
008b7428  01 20                                            movs r0, #1
008b742a  e5 e7                                            b #0x8b73f8
008b742c  ff f7 c0 ff                                      bl #0x8b73b0
008b7430  00 28                                            cmp r0, #0
008b7432  e0 d0                                            beq #0x8b73f6
008b7434  63 6a                                            ldr r3, [r4, #0x24]
008b7436  62 6b                                            ldr r2, [r4, #0x34]
008b7438  ea e7                                            b #0x8b7410

; FUNCTION 0x008b743c, declared_size=64, range_size=64, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE23_M_switch_to_input_modeEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_switch_to_input_mode()
; decoder-mode: thumb
008b743c  10 b5                                            push {r4, lr}
008b743e  28 23                                            movs r3, #0x28
008b7440  c3 5c                                            ldrb r3, [r0, r3]
008b7442  04 1c                                            adds r4, r0, #0
008b7444  00 2b                                            cmp r3, #0
008b7446  01 d1                                            bne #0x8b744c
008b7448  00 20                                            movs r0, #0
008b744a  10 bd                                            pop {r4, pc}
008b744c  43 6a                                            ldr r3, [r0, #0x24]
008b744e  1a 07                                            lsls r2, r3, #0x1c
008b7450  fa d5                                            bpl #0x8b7448
008b7452  03 8e                                            ldrh r3, [r0, #0x30]
008b7454  00 2b                                            cmp r3, #0
008b7456  f7 d1                                            bne #0x8b7448
008b7458  43 6b                                            ldr r3, [r0, #0x34]
008b745a  00 2b                                            cmp r3, #0
008b745c  09 d0                                            beq #0x8b7472
008b745e  e3 6b                                            ldr r3, [r4, #0x3c]
008b7460  01 22                                            movs r2, #1
008b7462  01 20                                            movs r0, #1
008b7464  63 64                                            str r3, [r4, #0x44]
008b7466  a3 64                                            str r3, [r4, #0x48]
008b7468  e3 6c                                            ldr r3, [r4, #0x4c]
008b746a  23 65                                            str r3, [r4, #0x50]
008b746c  2f 23                                            movs r3, #0x2f
008b746e  e2 54                                            strb r2, [r4, r3]
008b7470  eb e7                                            b #0x8b744a
008b7472  ff f7 9d ff                                      bl #0x8b73b0
008b7476  00 28                                            cmp r0, #0
008b7478  f1 d1                                            bne #0x8b745e
008b747a  e5 e7                                            b #0x8b7448

; FUNCTION 0x008b747c, declared_size=58, range_size=58, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE6setbufEPwi
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::setbuf(wchar_t*, int)
; decoder-mode: thumb
008b747c  10 b5                                            push {r4, lr}
008b747e  2f 23                                            movs r3, #0x2f
008b7480  c3 5c                                            ldrb r3, [r0, r3]
008b7482  04 1c                                            adds r4, r0, #0
008b7484  00 2b                                            cmp r3, #0
008b7486  05 d1                                            bne #0x8b7494
008b7488  03 8e                                            ldrh r3, [r0, #0x30]
008b748a  00 2b                                            cmp r3, #0
008b748c  02 d1                                            bne #0x8b7494
008b748e  43 6b                                            ldr r3, [r0, #0x34]
008b7490  00 2b                                            cmp r3, #0
008b7492  01 d0                                            beq #0x8b7498
008b7494  20 1c                                            adds r0, r4, #0
008b7496  10 bd                                            pop {r4, pc}
008b7498  00 2a                                            cmp r2, #0
008b749a  06 d0                                            beq #0x8b74aa
008b749c  00 2a                                            cmp r2, #0
008b749e  f9 dd                                            ble #0x8b7494
008b74a0  00 29                                            cmp r1, #0
008b74a2  f7 d0                                            beq #0x8b7494
008b74a4  ff f7 4e ff                                      bl #0x8b7344
008b74a8  f4 e7                                            b #0x8b7494
008b74aa  00 29                                            cmp r1, #0
008b74ac  f2 d1                                            bne #0x8b7494
008b74ae  01 22                                            movs r2, #1
008b74b0  ff f7 48 ff                                      bl #0x8b7344
008b74b4  ee e7                                            b #0x8b7494

; FUNCTION 0x008b76dc, declared_size=310, range_size=310, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE8overflowEi
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::overflow(int)
; decoder-mode: thumb
008b76dc  f0 b5                                            push {r4, r5, r6, r7, lr}
008b76de  5f 46                                            mov r7, fp
008b76e0  56 46                                            mov r6, sl
008b76e2  4d 46                                            mov r5, sb
008b76e4  44 46                                            mov r4, r8
008b76e6  f0 b4                                            push {r4, r5, r6, r7}
008b76e8  89 b0                                            sub sp, #0x24
008b76ea  05 91                                            str r1, [sp, #0x14]
008b76ec  30 23                                            movs r3, #0x30
008b76ee  c3 5c                                            ldrb r3, [r0, r3]
008b76f0  05 1c                                            adds r5, r0, #0
008b76f2  00 2b                                            cmp r3, #0
008b76f4  00 d1                                            bne #0x8b76f8
008b76f6  83 e0                                            b #0x8b7800
008b76f8  ab 6b                                            ldr r3, [r5, #0x38]
008b76fa  6c 6b                                            ldr r4, [r5, #0x34]
008b76fc  05 9a                                            ldr r2, [sp, #0x14]
008b76fe  04 3b                                            subs r3, #4
008b7700  6e 69                                            ldr r6, [r5, #0x14]
008b7702  2c 61                                            str r4, [r5, #0x10]
008b7704  6c 61                                            str r4, [r5, #0x14]
008b7706  ab 61                                            str r3, [r5, #0x18]
008b7708  01 32                                            adds r2, #1
008b770a  01 d0                                            beq #0x8b7710
008b770c  05 9b                                            ldr r3, [sp, #0x14]
008b770e  08 c6                                            stm r6!, {r3}
008b7710  b4 42                                            cmp r4, r6
008b7712  5f d0                                            beq #0x8b77d4
008b7714  20 21                                            movs r1, #0x20
008b7716  49 19                                            adds r1, r1, r5
008b7718  8a 46                                            mov sl, r1
008b771a  07 aa                                            add r2, sp, #0x1c
008b771c  2f 1c                                            adds r7, r5, #0
008b771e  90 46                                            mov r8, r2
008b7720  4c 37                                            adds r7, #0x4c
008b7722  52 46                                            mov r2, sl
008b7724  06 ab                                            add r3, sp, #0x18
008b7726  2c 21                                            movs r1, #0x2c
008b7728  c1 46                                            mov sb, r8
008b772a  8b 46                                            mov fp, r1
008b772c  04 92                                            str r2, [sp, #0x10]
008b772e  9a 46                                            mov sl, r3
008b7730  b8 46                                            mov r8, r7
008b7732  14 e0                                            b #0x8b775e
008b7734  59 46                                            mov r1, fp
008b7736  6a 5c                                            ldrb r2, [r5, r1]
008b7738  00 2a                                            cmp r2, #0
008b773a  36 d1                                            bne #0x8b77aa
008b773c  9c 42                                            cmp r4, r3
008b773e  34 d0                                            beq #0x8b77aa
008b7740  e9 6b                                            ldr r1, [r5, #0x3c]
008b7742  06 9a                                            ldr r2, [sp, #0x18]
008b7744  52 1a                                            subs r2, r2, r1
008b7746  04 98                                            ldr r0, [sp, #0x10]
008b7748  06 f0 84 f9                                      bl #0x8bda54
008b774c  00 28                                            cmp r0, #0
008b774e  4a d0                                            beq #0x8b77e6
008b7750  07 9b                                            ldr r3, [sp, #0x1c]
008b7752  1b 1b                                            subs r3, r3, r4
008b7754  9b 10                                            asrs r3, r3, #2
008b7756  9b 00                                            lsls r3, r3, #2
008b7758  e4 18                                            adds r4, r4, r3
008b775a  b4 42                                            cmp r4, r6
008b775c  3a d0                                            beq #0x8b77d4
008b775e  eb 6b                                            ldr r3, [r5, #0x3c]
008b7760  a8 6e                                            ldr r0, [r5, #0x68]
008b7762  07 94                                            str r4, [sp, #0x1c]
008b7764  06 93                                            str r3, [sp, #0x18]
008b7766  02 68                                            ldr r2, [r0]
008b7768  01 93                                            str r3, [sp, #4]
008b776a  2b 6c                                            ldr r3, [r5, #0x40]
008b776c  49 46                                            mov r1, sb
008b776e  00 91                                            str r1, [sp]
008b7770  02 93                                            str r3, [sp, #8]
008b7772  53 46                                            mov r3, sl
008b7774  03 93                                            str r3, [sp, #0xc]
008b7776  97 68                                            ldr r7, [r2, #8]
008b7778  41 46                                            mov r1, r8
008b777a  22 1c                                            adds r2, r4, #0
008b777c  33 1c                                            adds r3, r6, #0
008b777e  b8 47                                            blx r7
008b7780  03 28                                            cmp r0, #3
008b7782  12 d0                                            beq #0x8b77aa
008b7784  02 28                                            cmp r0, #2
008b7786  10 d0                                            beq #0x8b77aa
008b7788  07 9b                                            ldr r3, [sp, #0x1c]
008b778a  b3 42                                            cmp r3, r6
008b778c  d2 d1                                            bne #0x8b7734
008b778e  ef 6e                                            ldr r7, [r5, #0x6c]
008b7790  30 1b                                            subs r0, r6, r4
008b7792  80 10                                            asrs r0, r0, #2
008b7794  e9 6b                                            ldr r1, [r5, #0x3c]
008b7796  3a 1c                                            adds r2, r7, #0
008b7798  42 43                                            muls r2, r0, r2
008b779a  06 98                                            ldr r0, [sp, #0x18]
008b779c  40 1a                                            subs r0, r0, r1
008b779e  90 42                                            cmp r0, r2
008b77a0  d1 d0                                            beq #0x8b7746
008b77a2  59 46                                            mov r1, fp
008b77a4  6a 5c                                            ldrb r2, [r5, r1]
008b77a6  00 2a                                            cmp r2, #0
008b77a8  c8 d0                                            beq #0x8b773c
008b77aa  00 23                                            movs r3, #0
008b77ac  30 22                                            movs r2, #0x30
008b77ae  ab 54                                            strb r3, [r5, r2]
008b77b0  2f 22                                            movs r2, #0x2f
008b77b2  ab 54                                            strb r3, [r5, r2]
008b77b4  01 21                                            movs r1, #1
008b77b6  31 22                                            movs r2, #0x31
008b77b8  a9 54                                            strb r1, [r5, r2]
008b77ba  49 42                                            rsbs r1, r1, #0
008b77bc  2b 61                                            str r3, [r5, #0x10]
008b77be  6b 61                                            str r3, [r5, #0x14]
008b77c0  ab 61                                            str r3, [r5, #0x18]
008b77c2  05 91                                            str r1, [sp, #0x14]
008b77c4  05 98                                            ldr r0, [sp, #0x14]
008b77c6  09 b0                                            add sp, #0x24
008b77c8  3c bc                                            pop {r2, r3, r4, r5}
008b77ca  90 46                                            mov r8, r2
008b77cc  99 46                                            mov sb, r3
008b77ce  a2 46                                            mov sl, r4
008b77d0  ab 46                                            mov fp, r5
008b77d2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b77d4  05 9b                                            ldr r3, [sp, #0x14]
008b77d6  01 33                                            adds r3, #1
008b77d8  5a 1e                                            subs r2, r3, #1
008b77da  93 41                                            sbcs r3, r2
008b77dc  05 9a                                            ldr r2, [sp, #0x14]
008b77de  5b 42                                            rsbs r3, r3, #0
008b77e0  1a 40                                            ands r2, r3
008b77e2  05 92                                            str r2, [sp, #0x14]
008b77e4  ee e7                                            b #0x8b77c4
008b77e6  30 23                                            movs r3, #0x30
008b77e8  e8 54                                            strb r0, [r5, r3]
008b77ea  2f 23                                            movs r3, #0x2f
008b77ec  e8 54                                            strb r0, [r5, r3]
008b77ee  01 22                                            movs r2, #1
008b77f0  31 23                                            movs r3, #0x31
008b77f2  ea 54                                            strb r2, [r5, r3]
008b77f4  52 42                                            rsbs r2, r2, #0
008b77f6  28 61                                            str r0, [r5, #0x10]
008b77f8  68 61                                            str r0, [r5, #0x14]
008b77fa  a8 61                                            str r0, [r5, #0x18]
008b77fc  05 92                                            str r2, [sp, #0x14]
008b77fe  e1 e7                                            b #0x8b77c4
008b7800  ff f7 f0 fd                                      bl #0x8b73e4
008b7804  00 28                                            cmp r0, #0
008b7806  00 d0                                            beq #0x8b780a
008b7808  76 e7                                            b #0x8b76f8
008b780a  01 21                                            movs r1, #1
008b780c  49 42                                            rsbs r1, r1, #0
008b780e  05 91                                            str r1, [sp, #0x14]
008b7810  d8 e7                                            b #0x8b77c4

; FUNCTION 0x008b7814, declared_size=108, range_size=108, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE10_M_unshiftEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_unshift()
; decoder-mode: thumb
008b7814  f0 b5                                            push {r4, r5, r6, r7, lr}
008b7816  47 46                                            mov r7, r8
008b7818  80 b4                                            push {r7}
008b781a  30 23                                            movs r3, #0x30
008b781c  c3 5c                                            ldrb r3, [r0, r3]
008b781e  84 b0                                            sub sp, #0x10
008b7820  04 1c                                            adds r4, r0, #0
008b7822  00 2b                                            cmp r3, #0
008b7824  23 d0                                            beq #0x8b786e
008b7826  2c 23                                            movs r3, #0x2c
008b7828  c3 5c                                            ldrb r3, [r0, r3]
008b782a  00 2b                                            cmp r3, #0
008b782c  1f d1                                            bne #0x8b786e
008b782e  20 23                                            movs r3, #0x20
008b7830  06 1c                                            adds r6, r0, #0
008b7832  1b 18                                            adds r3, r3, r0
008b7834  4c 36                                            adds r6, #0x4c
008b7836  98 46                                            mov r8, r3
008b7838  03 af                                            add r7, sp, #0xc
008b783a  e2 6b                                            ldr r2, [r4, #0x3c]
008b783c  a0 6e                                            ldr r0, [r4, #0x68]
008b783e  23 6c                                            ldr r3, [r4, #0x40]
008b7840  03 92                                            str r2, [sp, #0xc]
008b7842  01 68                                            ldr r1, [r0]
008b7844  00 97                                            str r7, [sp]
008b7846  0d 69                                            ldr r5, [r1, #0x10]
008b7848  31 1c                                            adds r1, r6, #0
008b784a  a8 47                                            blx r5
008b784c  05 1c                                            adds r5, r0, #0
008b784e  03 28                                            cmp r0, #3
008b7850  0d d0                                            beq #0x8b786e
008b7852  e1 6b                                            ldr r1, [r4, #0x3c]
008b7854  03 9a                                            ldr r2, [sp, #0xc]
008b7856  00 28                                            cmp r0, #0
008b7858  0e d1                                            bne #0x8b7878
008b785a  91 42                                            cmp r1, r2
008b785c  07 d0                                            beq #0x8b786e
008b785e  52 1a                                            subs r2, r2, r1
008b7860  40 46                                            mov r0, r8
008b7862  06 f0 f7 f8                                      bl #0x8bda54
008b7866  00 28                                            cmp r0, #0
008b7868  08 d0                                            beq #0x8b787c
008b786a  01 2d                                            cmp r5, #1
008b786c  e5 d0                                            beq #0x8b783a
008b786e  01 20                                            movs r0, #1
008b7870  04 b0                                            add sp, #0x10
008b7872  04 bc                                            pop {r2}
008b7874  90 46                                            mov r8, r2
008b7876  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b7878  02 28                                            cmp r0, #2
008b787a  f0 d1                                            bne #0x8b785e
008b787c  00 20                                            movs r0, #0
008b787e  f7 e7                                            b #0x8b7870

; FUNCTION 0x008b7880, declared_size=124, range_size=124, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE12_M_seek_initEb
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_seek_init(bool)
; decoder-mode: thumb
008b7880  70 b5                                            push {r4, r5, r6, lr}
008b7882  31 23                                            movs r3, #0x31
008b7884  00 22                                            movs r2, #0
008b7886  c2 54                                            strb r2, [r0, r3]
008b7888  30 23                                            movs r3, #0x30
008b788a  c3 5c                                            ldrb r3, [r0, r3]
008b788c  04 1c                                            adds r4, r0, #0
008b788e  0d 1c                                            adds r5, r1, #0
008b7890  00 2b                                            cmp r3, #0
008b7892  13 d1                                            bne #0x8b78bc
008b7894  2f 23                                            movs r3, #0x2f
008b7896  e3 5c                                            ldrb r3, [r4, r3]
008b7898  00 2b                                            cmp r3, #0
008b789a  0d d0                                            beq #0x8b78b8
008b789c  32 23                                            movs r3, #0x32
008b789e  e2 5c                                            ldrb r2, [r4, r3]
008b78a0  00 2a                                            cmp r2, #0
008b78a2  09 d0                                            beq #0x8b78b8
008b78a4  62 6e                                            ldr r2, [r4, #0x64]
008b78a6  e0 6d                                            ldr r0, [r4, #0x5c]
008b78a8  21 6e                                            ldr r1, [r4, #0x60]
008b78aa  e2 60                                            str r2, [r4, #0xc]
008b78ac  00 22                                            movs r2, #0
008b78ae  60 60                                            str r0, [r4, #4]
008b78b0  a1 60                                            str r1, [r4, #8]
008b78b2  01 20                                            movs r0, #1
008b78b4  e2 54                                            strb r2, [r4, r3]
008b78b6  00 e0                                            b #0x8b78ba
008b78b8  01 20                                            movs r0, #1
008b78ba  70 bd                                            pop {r4, r5, r6, pc}
008b78bc  03 68                                            ldr r3, [r0]
008b78be  01 21                                            movs r1, #1
008b78c0  49 42                                            rsbs r1, r1, #0
008b78c2  5b 6b                                            ldr r3, [r3, #0x34]
008b78c4  98 47                                            blx r3
008b78c6  01 30                                            adds r0, #1
008b78c8  43 1e                                            subs r3, r0, #1
008b78ca  98 41                                            sbcs r0, r3
008b78cc  00 2d                                            cmp r5, #0
008b78ce  0c d0                                            beq #0x8b78ea
008b78d0  00 28                                            cmp r0, #0
008b78d2  0d d1                                            bne #0x8b78f0
008b78d4  00 23                                            movs r3, #0
008b78d6  30 22                                            movs r2, #0x30
008b78d8  a3 54                                            strb r3, [r4, r2]
008b78da  01 21                                            movs r1, #1
008b78dc  31 22                                            movs r2, #0x31
008b78de  a1 54                                            strb r1, [r4, r2]
008b78e0  00 20                                            movs r0, #0
008b78e2  23 61                                            str r3, [r4, #0x10]
008b78e4  63 61                                            str r3, [r4, #0x14]
008b78e6  a3 61                                            str r3, [r4, #0x18]
008b78e8  e7 e7                                            b #0x8b78ba
008b78ea  00 28                                            cmp r0, #0
008b78ec  d2 d1                                            bne #0x8b7894
008b78ee  f1 e7                                            b #0x8b78d4
008b78f0  20 1c                                            adds r0, r4, #0
008b78f2  ff f7 8f ff                                      bl #0x8b7814
008b78f6  00 28                                            cmp r0, #0
008b78f8  cc d1                                            bne #0x8b7894
008b78fa  eb e7                                            b #0x8b78d4

; FUNCTION 0x008b7958, declared_size=86, range_size=86, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE9showmanycEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::showmanyc()
; decoder-mode: thumb
008b7958  70 b5                                            push {r4, r5, r6, lr}
008b795a  28 23                                            movs r3, #0x28
008b795c  c3 5c                                            ldrb r3, [r0, r3]
008b795e  04 1c                                            adds r4, r0, #0
008b7960  00 2b                                            cmp r3, #0
008b7962  02 d1                                            bne #0x8b796a
008b7964  01 20                                            movs r0, #1
008b7966  40 42                                            rsbs r0, r0, #0
008b7968  70 bd                                            pop {r4, r5, r6, pc}
008b796a  03 8e                                            ldrh r3, [r0, #0x30]
008b796c  00 2b                                            cmp r3, #0
008b796e  f9 d1                                            bne #0x8b7964
008b7970  32 23                                            movs r3, #0x32
008b7972  c3 5c                                            ldrb r3, [r0, r3]
008b7974  00 2b                                            cmp r3, #0
008b7976  15 d1                                            bne #0x8b79a4
008b7978  2c 23                                            movs r3, #0x2c
008b797a  e3 5c                                            ldrb r3, [r4, r3]
008b797c  00 20                                            movs r0, #0
008b797e  00 2b                                            cmp r3, #0
008b7980  f2 d0                                            beq #0x8b7968
008b7982  20 34                                            adds r4, #0x20
008b7984  20 1c                                            adds r0, r4, #0
008b7986  00 21                                            movs r1, #0
008b7988  02 22                                            movs r2, #2
008b798a  06 f0 97 f9                                      bl #0x8bdcbc
008b798e  05 1c                                            adds r5, r0, #0
008b7990  20 1c                                            adds r0, r4, #0
008b7992  06 f0 77 f9                                      bl #0x8bdc84
008b7996  85 42                                            cmp r5, r0
008b7998  02 da                                            bge #0x8b79a0
008b799a  40 1b                                            subs r0, r0, r5
008b799c  00 2d                                            cmp r5, #0
008b799e  e3 da                                            bge #0x8b7968
008b79a0  00 20                                            movs r0, #0
008b79a2  e1 e7                                            b #0x8b7968
008b79a4  e0 68                                            ldr r0, [r4, #0xc]
008b79a6  a3 68                                            ldr r3, [r4, #8]
008b79a8  c0 1a                                            subs r0, r0, r3
008b79aa  80 10                                            asrs r0, r0, #2
008b79ac  dc e7                                            b #0x8b7968

; FUNCTION 0x008b7ba4, declared_size=32, range_size=32, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE18_M_exit_input_modeEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_exit_input_mode()
; decoder-mode: thumb
008b7ba4  10 b5                                            push {r4, lr}
008b7ba6  41 6d                                            ldr r1, [r0, #0x54]
008b7ba8  04 1c                                            adds r4, r0, #0
008b7baa  00 29                                            cmp r1, #0
008b7bac  06 d0                                            beq #0x8b7bbc
008b7bae  20 30                                            adds r0, #0x20
008b7bb0  a2 6d                                            ldr r2, [r4, #0x58]
008b7bb2  05 f0 27 ff                                      bl #0x8bda04
008b7bb6  00 23                                            movs r3, #0
008b7bb8  63 65                                            str r3, [r4, #0x54]
008b7bba  a3 65                                            str r3, [r4, #0x58]
008b7bbc  00 22                                            movs r2, #0
008b7bbe  2f 23                                            movs r3, #0x2f
008b7bc0  e2 54                                            strb r2, [r4, r3]
008b7bc2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b7bc4, declared_size=68, range_size=68, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE14_M_seek_returnEl9mbstate_t
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_seek_return(long, mbstate_t)
; decoder-mode: thumb
008b7bc4  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b7bc6  05 1c                                            adds r5, r0, #0
008b7bc8  0c 1c                                            adds r4, r1, #0
008b7bca  16 1c                                            adds r6, r2, #0
008b7bcc  1f 1c                                            adds r7, r3, #0
008b7bce  53 1c                                            adds r3, r2, #1
008b7bd0  12 d0                                            beq #0x8b7bf8
008b7bd2  2f 23                                            movs r3, #0x2f
008b7bd4  cb 5c                                            ldrb r3, [r1, r3]
008b7bd6  00 2b                                            cmp r3, #0
008b7bd8  12 d1                                            bne #0x8b7c00
008b7bda  00 23                                            movs r3, #0
008b7bdc  2f 22                                            movs r2, #0x2f
008b7bde  a3 54                                            strb r3, [r4, r2]
008b7be0  30 22                                            movs r2, #0x30
008b7be2  a3 54                                            strb r3, [r4, r2]
008b7be4  32 22                                            movs r2, #0x32
008b7be6  a3 54                                            strb r3, [r4, r2]
008b7be8  31 22                                            movs r2, #0x31
008b7bea  a3 54                                            strb r3, [r4, r2]
008b7bec  63 60                                            str r3, [r4, #4]
008b7bee  a3 60                                            str r3, [r4, #8]
008b7bf0  e3 60                                            str r3, [r4, #0xc]
008b7bf2  23 61                                            str r3, [r4, #0x10]
008b7bf4  63 61                                            str r3, [r4, #0x14]
008b7bf6  a3 61                                            str r3, [r4, #0x18]
008b7bf8  2e 60                                            str r6, [r5]
008b7bfa  6f 60                                            str r7, [r5, #4]
008b7bfc  28 1c                                            adds r0, r5, #0
008b7bfe  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b7c00  08 1c                                            adds r0, r1, #0
008b7c02  ff f7 cf ff                                      bl #0x8b7ba4
008b7c06  e8 e7                                            b #0x8b7bda

; FUNCTION 0x008b7c08, declared_size=98, range_size=98, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE7seekposESt4fposI9mbstate_tEi
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::seekpos(std::fpos<mbstate_t>, int)
; decoder-mode: thumb
008b7c08  f0 b5                                            push {r4, r5, r6, r7, lr}
008b7c0a  83 b0                                            sub sp, #0xc
008b7c0c  01 93                                            str r3, [sp, #4]
008b7c0e  00 92                                            str r2, [sp]
008b7c10  1f 1c                                            adds r7, r3, #0
008b7c12  28 23                                            movs r3, #0x28
008b7c14  cb 5c                                            ldrb r3, [r1, r3]
008b7c16  04 1c                                            adds r4, r0, #0
008b7c18  0d 1c                                            adds r5, r1, #0
008b7c1a  16 1c                                            adds r6, r2, #0
008b7c1c  00 2b                                            cmp r3, #0
008b7c1e  07 d1                                            bne #0x8b7c30
008b7c20  01 23                                            movs r3, #1
008b7c22  5b 42                                            rsbs r3, r3, #0
008b7c24  23 60                                            str r3, [r4]
008b7c26  00 23                                            movs r3, #0
008b7c28  63 60                                            str r3, [r4, #4]
008b7c2a  03 b0                                            add sp, #0xc
008b7c2c  20 1c                                            adds r0, r4, #0
008b7c2e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b7c30  08 1c                                            adds r0, r1, #0
008b7c32  01 21                                            movs r1, #1
008b7c34  ff f7 24 fe                                      bl #0x8b7880
008b7c38  00 28                                            cmp r0, #0
008b7c3a  11 d0                                            beq #0x8b7c60
008b7c3c  73 1c                                            adds r3, r6, #1
008b7c3e  ef d0                                            beq #0x8b7c20
008b7c40  28 1c                                            adds r0, r5, #0
008b7c42  20 30                                            adds r0, #0x20
008b7c44  31 1c                                            adds r1, r6, #0
008b7c46  01 22                                            movs r2, #1
008b7c48  06 f0 38 f8                                      bl #0x8bdcbc
008b7c4c  01 30                                            adds r0, #1
008b7c4e  e7 d0                                            beq #0x8b7c20
008b7c50  ef 64                                            str r7, [r5, #0x4c]
008b7c52  20 1c                                            adds r0, r4, #0
008b7c54  29 1c                                            adds r1, r5, #0
008b7c56  32 1c                                            adds r2, r6, #0
008b7c58  3b 1c                                            adds r3, r7, #0
008b7c5a  ff f7 b3 ff                                      bl #0x8b7bc4
008b7c5e  e4 e7                                            b #0x8b7c2a
008b7c60  01 23                                            movs r3, #1
008b7c62  5b 42                                            rsbs r3, r3, #0
008b7c64  23 60                                            str r3, [r4]
008b7c66  60 60                                            str r0, [r4, #4]
008b7c68  df e7                                            b #0x8b7c2a

; FUNCTION 0x008b7c6c, declared_size=318, range_size=318, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE7seekoffElii
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::seekoff(long, int, int)
; decoder-mode: thumb
008b7c6c  f0 b5                                            push {r4, r5, r6, r7, lr}
008b7c6e  1f 1c                                            adds r7, r3, #0
008b7c70  28 23                                            movs r3, #0x28
008b7c72  cb 5c                                            ldrb r3, [r1, r3]
008b7c74  85 b0                                            sub sp, #0x14
008b7c76  04 1c                                            adds r4, r0, #0
008b7c78  0d 1c                                            adds r5, r1, #0
008b7c7a  16 1c                                            adds r6, r2, #0
008b7c7c  00 2b                                            cmp r3, #0
008b7c7e  34 d0                                            beq #0x8b7cea
008b7c80  13 1c                                            adds r3, r2, #0
008b7c82  5a 1e                                            subs r2, r3, #1
008b7c84  93 41                                            sbcs r3, r2
008b7c86  00 2b                                            cmp r3, #0
008b7c88  24 d1                                            bne #0x8b7cd4
008b7c8a  b9 1e                                            subs r1, r7, #2
008b7c8c  4a 1e                                            subs r2, r1, #1
008b7c8e  91 41                                            sbcs r1, r2
008b7c90  19 43                                            orrs r1, r3
008b7c92  28 1c                                            adds r0, r5, #0
008b7c94  ff f7 f4 fd                                      bl #0x8b7880
008b7c98  00 28                                            cmp r0, #0
008b7c9a  2b d0                                            beq #0x8b7cf4
008b7c9c  04 2f                                            cmp r7, #4
008b7c9e  2e d0                                            beq #0x8b7cfe
008b7ca0  01 2f                                            cmp r7, #1
008b7ca2  2c d0                                            beq #0x8b7cfe
008b7ca4  2f 23                                            movs r3, #0x2f
008b7ca6  eb 5c                                            ldrb r3, [r5, r3]
008b7ca8  00 2b                                            cmp r3, #0
008b7caa  28 d0                                            beq #0x8b7cfe
008b7cac  6b 6d                                            ldr r3, [r5, #0x54]
008b7cae  00 2b                                            cmp r3, #0
008b7cb0  34 d0                                            beq #0x8b7d1c
008b7cb2  af 68                                            ldr r7, [r5, #8]
008b7cb4  fb 1a                                            subs r3, r7, r3
008b7cb6  af 6d                                            ldr r7, [r5, #0x58]
008b7cb8  9b 10                                            asrs r3, r3, #2
008b7cba  ff 1a                                            subs r7, r7, r3
008b7cbc  00 2e                                            cmp r6, #0
008b7cbe  41 d1                                            bne #0x8b7d44
008b7cc0  28 1c                                            adds r0, r5, #0
008b7cc2  20 30                                            adds r0, #0x20
008b7cc4  00 21                                            movs r1, #0
008b7cc6  02 22                                            movs r2, #2
008b7cc8  05 f0 f8 ff                                      bl #0x8bdcbc
008b7ccc  c7 1b                                            subs r7, r0, r7
008b7cce  27 60                                            str r7, [r4]
008b7cd0  66 60                                            str r6, [r4, #4]
008b7cd2  07 e0                                            b #0x8b7ce4
008b7cd4  2c 22                                            movs r2, #0x2c
008b7cd6  8a 5c                                            ldrb r2, [r1, r2]
008b7cd8  00 2a                                            cmp r2, #0
008b7cda  d6 d1                                            bne #0x8b7c8a
008b7cdc  01 23                                            movs r3, #1
008b7cde  5b 42                                            rsbs r3, r3, #0
008b7ce0  03 60                                            str r3, [r0]
008b7ce2  42 60                                            str r2, [r0, #4]
008b7ce4  05 b0                                            add sp, #0x14
008b7ce6  20 1c                                            adds r0, r4, #0
008b7ce8  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b7cea  01 22                                            movs r2, #1
008b7cec  52 42                                            rsbs r2, r2, #0
008b7cee  02 60                                            str r2, [r0]
008b7cf0  43 60                                            str r3, [r0, #4]
008b7cf2  f7 e7                                            b #0x8b7ce4
008b7cf4  01 23                                            movs r3, #1
008b7cf6  5b 42                                            rsbs r3, r3, #0
008b7cf8  23 60                                            str r3, [r4]
008b7cfa  60 60                                            str r0, [r4, #4]
008b7cfc  f2 e7                                            b #0x8b7ce4
008b7cfe  eb 6e                                            ldr r3, [r5, #0x6c]
008b7d00  28 1c                                            adds r0, r5, #0
008b7d02  20 30                                            adds r0, #0x20
008b7d04  19 1c                                            adds r1, r3, #0
008b7d06  71 43                                            muls r1, r6, r1
008b7d08  3a 1c                                            adds r2, r7, #0
008b7d0a  05 f0 d7 ff                                      bl #0x8bdcbc
008b7d0e  29 1c                                            adds r1, r5, #0
008b7d10  02 1c                                            adds r2, r0, #0
008b7d12  00 23                                            movs r3, #0
008b7d14  20 1c                                            adds r0, r4, #0
008b7d16  ff f7 55 ff                                      bl #0x8b7bc4
008b7d1a  e3 e7                                            b #0x8b7ce4
008b7d1c  2c 23                                            movs r3, #0x2c
008b7d1e  eb 5c                                            ldrb r3, [r5, r3]
008b7d20  00 2b                                            cmp r3, #0
008b7d22  1a d0                                            beq #0x8b7d5a
008b7d24  aa 68                                            ldr r2, [r5, #8]
008b7d26  6b 68                                            ldr r3, [r5, #4]
008b7d28  e9 6e                                            ldr r1, [r5, #0x6c]
008b7d2a  ef 6b                                            ldr r7, [r5, #0x3c]
008b7d2c  d3 1a                                            subs r3, r2, r3
008b7d2e  9b 10                                            asrs r3, r3, #2
008b7d30  0a 1c                                            adds r2, r1, #0
008b7d32  5a 43                                            muls r2, r3, r2
008b7d34  ab 6c                                            ldr r3, [r5, #0x48]
008b7d36  d9 1b                                            subs r1, r3, r7
008b7d38  8a 42                                            cmp r2, r1
008b7d3a  08 dc                                            bgt #0x8b7d4e
008b7d3c  bf 18                                            adds r7, r7, r2
008b7d3e  df 1b                                            subs r7, r3, r7
008b7d40  00 2e                                            cmp r6, #0
008b7d42  bd d0                                            beq #0x8b7cc0
008b7d44  28 1c                                            adds r0, r5, #0
008b7d46  20 30                                            adds r0, #0x20
008b7d48  f1 1b                                            subs r1, r6, r7
008b7d4a  02 22                                            movs r2, #2
008b7d4c  dd e7                                            b #0x8b7d0a
008b7d4e  01 23                                            movs r3, #1
008b7d50  5b 42                                            rsbs r3, r3, #0
008b7d52  23 60                                            str r3, [r4]
008b7d54  00 23                                            movs r3, #0
008b7d56  63 60                                            str r3, [r4, #4]
008b7d58  c4 e7                                            b #0x8b7ce4
008b7d5a  6b 68                                            ldr r3, [r5, #4]
008b7d5c  af 68                                            ldr r7, [r5, #8]
008b7d5e  a8 6e                                            ldr r0, [r5, #0x68]
008b7d60  ea 6b                                            ldr r2, [r5, #0x3c]
008b7d62  ff 1a                                            subs r7, r7, r3
008b7d64  eb 6c                                            ldr r3, [r5, #0x4c]
008b7d66  bf 10                                            asrs r7, r7, #2
008b7d68  03 93                                            str r3, [sp, #0xc]
008b7d6a  01 68                                            ldr r1, [r0]
008b7d6c  00 97                                            str r7, [sp]
008b7d6e  6b 6c                                            ldr r3, [r5, #0x44]
008b7d70  cf 69                                            ldr r7, [r1, #0x1c]
008b7d72  03 a9                                            add r1, sp, #0xc
008b7d74  b8 47                                            blx r7
008b7d76  07 1c                                            adds r7, r0, #0
008b7d78  28 1c                                            adds r0, r5, #0
008b7d7a  02 22                                            movs r2, #2
008b7d7c  20 30                                            adds r0, #0x20
008b7d7e  00 21                                            movs r1, #0
008b7d80  05 f0 9c ff                                      bl #0x8bdcbc
008b7d84  eb 6b                                            ldr r3, [r5, #0x3c]
008b7d86  aa 6c                                            ldr r2, [r5, #0x48]
008b7d88  41 1c                                            adds r1, r0, #1
008b7d8a  e0 d0                                            beq #0x8b7d4e
008b7d8c  80 1a                                            subs r0, r0, r2
008b7d8e  df 19                                            adds r7, r3, r7
008b7d90  c2 19                                            adds r2, r0, r7
008b7d92  dc d4                                            bmi #0x8b7d4e
008b7d94  00 2e                                            cmp r6, #0
008b7d96  02 d1                                            bne #0x8b7d9e
008b7d98  22 60                                            str r2, [r4]
008b7d9a  66 60                                            str r6, [r4, #4]
008b7d9c  a2 e7                                            b #0x8b7ce4
008b7d9e  20 1c                                            adds r0, r4, #0
008b7da0  29 1c                                            adds r1, r5, #0
008b7da2  03 9b                                            ldr r3, [sp, #0xc]
008b7da4  ff f7 0e ff                                      bl #0x8b7bc4
008b7da8  9c e7                                            b #0x8b7ce4

; FUNCTION 0x008b7eb8, declared_size=142, range_size=142, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::close()
; decoder-mode: thumb
008b7eb8  70 b5                                            push {r4, r5, r6, lr}
008b7eba  28 23                                            movs r3, #0x28
008b7ebc  c5 5c                                            ldrb r5, [r0, r3]
008b7ebe  04 1c                                            adds r4, r0, #0
008b7ec0  6b 1e                                            subs r3, r5, #1
008b7ec2  9d 41                                            sbcs r5, r3
008b7ec4  30 23                                            movs r3, #0x30
008b7ec6  c3 5c                                            ldrb r3, [r0, r3]
008b7ec8  00 2b                                            cmp r3, #0
008b7eca  2a d0                                            beq #0x8b7f22
008b7ecc  00 2d                                            cmp r5, #0
008b7ece  2f d1                                            bne #0x8b7f30
008b7ed0  20 1c                                            adds r0, r4, #0
008b7ed2  ff f7 9f fc                                      bl #0x8b7814
008b7ed6  20 1c                                            adds r0, r4, #0
008b7ed8  20 30                                            adds r0, #0x20
008b7eda  05 f0 7d fe                                      bl #0x8bdbd8
008b7ede  32 22                                            movs r2, #0x32
008b7ee0  43 1e                                            subs r3, r0, #1
008b7ee2  98 41                                            sbcs r0, r3
008b7ee4  00 23                                            movs r3, #0
008b7ee6  23 65                                            str r3, [r4, #0x50]
008b7ee8  e3 64                                            str r3, [r4, #0x4c]
008b7eea  a3 64                                            str r3, [r4, #0x48]
008b7eec  63 64                                            str r3, [r4, #0x44]
008b7eee  63 65                                            str r3, [r4, #0x54]
008b7ef0  a3 65                                            str r3, [r4, #0x58]
008b7ef2  63 60                                            str r3, [r4, #4]
008b7ef4  a3 60                                            str r3, [r4, #8]
008b7ef6  e3 60                                            str r3, [r4, #0xc]
008b7ef8  23 61                                            str r3, [r4, #0x10]
008b7efa  63 61                                            str r3, [r4, #0x14]
008b7efc  a3 61                                            str r3, [r4, #0x18]
008b7efe  63 66                                            str r3, [r4, #0x64]
008b7f00  23 66                                            str r3, [r4, #0x60]
008b7f02  e3 65                                            str r3, [r4, #0x5c]
008b7f04  a3 54                                            strb r3, [r4, r2]
008b7f06  31 22                                            movs r2, #0x31
008b7f08  a3 54                                            strb r3, [r4, r2]
008b7f0a  40 42                                            rsbs r0, r0, #0
008b7f0c  30 22                                            movs r2, #0x30
008b7f0e  a3 54                                            strb r3, [r4, r2]
008b7f10  05 40                                            ands r5, r0
008b7f12  2f 22                                            movs r2, #0x2f
008b7f14  a3 54                                            strb r3, [r4, r2]
008b7f16  6b 1e                                            subs r3, r5, #1
008b7f18  9d 41                                            sbcs r5, r3
008b7f1a  6d 42                                            rsbs r5, r5, #0
008b7f1c  2c 40                                            ands r4, r5
008b7f1e  20 1c                                            adds r0, r4, #0
008b7f20  70 bd                                            pop {r4, r5, r6, pc}
008b7f22  2f 23                                            movs r3, #0x2f
008b7f24  c3 5c                                            ldrb r3, [r0, r3]
008b7f26  00 2b                                            cmp r3, #0
008b7f28  d5 d0                                            beq #0x8b7ed6
008b7f2a  ff f7 3b fe                                      bl #0x8b7ba4
008b7f2e  d2 e7                                            b #0x8b7ed6
008b7f30  03 68                                            ldr r3, [r0]
008b7f32  01 21                                            movs r1, #1
008b7f34  49 42                                            rsbs r1, r1, #0
008b7f36  5b 6b                                            ldr r3, [r3, #0x34]
008b7f38  98 47                                            blx r3
008b7f3a  01 30                                            adds r0, #1
008b7f3c  43 1e                                            subs r3, r0, #1
008b7f3e  98 41                                            sbcs r0, r3
008b7f40  40 42                                            rsbs r0, r0, #0
008b7f42  05 40                                            ands r5, r0
008b7f44  c4 e7                                            b #0x8b7ed0

; FUNCTION 0x008b7f48, declared_size=60, range_size=60, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEED1Ev
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::~basic_filebuf()
; decoder-mode: thumb
008b7f48  70 b5                                            push {r4, r5, r6, lr}
008b7f4a  0b 4d                                            ldr r5, [pc, #0x2c]
008b7f4c  0b 4b                                            ldr r3, [pc, #0x2c]
008b7f4e  04 1c                                            adds r4, r0, #0
008b7f50  7d 44                                            add r5, pc
008b7f52  eb 58                                            ldr r3, [r5, r3]
008b7f54  08 33                                            adds r3, #8
008b7f56  03 60                                            str r3, [r0]
008b7f58  ff f7 ae ff                                      bl #0x8b7eb8
008b7f5c  20 1c                                            adds r0, r4, #0
008b7f5e  ff f7 df f9                                      bl #0x8b7320
008b7f62  07 4b                                            ldr r3, [pc, #0x1c]
008b7f64  20 1c                                            adds r0, r4, #0
008b7f66  1c 30                                            adds r0, #0x1c
008b7f68  eb 58                                            ldr r3, [r5, r3]
008b7f6a  08 33                                            adds r3, #8
008b7f6c  23 60                                            str r3, [r4]
008b7f6e  eb f7 c1 fa                                      bl #0x8a34f4
008b7f72  20 1c                                            adds r0, r4, #0
008b7f74  70 bd                                            pop {r4, r5, r6, pc}
008b7f76  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b7f78  44 cb 0d 00 c8 4b 00 00 48 2c 00 00              .byte 0x44, 0xcb, 0x0d, 0x00, 0xc8, 0x4b, 0x00, 0x00, 0x48, 0x2c, 0x00, 0x00

; FUNCTION 0x008b7f84, declared_size=18, range_size=18, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEED0Ev
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::~basic_filebuf()
; decoder-mode: thumb
008b7f84  10 b5                                            push {r4, lr}
008b7f86  04 1c                                            adds r4, r0, #0
008b7f88  ff f7 de ff                                      bl #0x8b7f48
008b7f8c  20 1c                                            adds r0, r4, #0
008b7f8e  56 f6 90 e1                                      blx #0x30e2b0
008b7f92  20 1c                                            adds r0, r4, #0
008b7f94  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b80d4, declared_size=128, range_size=128, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_setup_codecvtERKSt6localeb
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_setup_codecvt(std::locale const&, bool)
; decoder-mode: thumb
008b80d4  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b80d6  1d 4b                                            ldr r3, [pc, #0x74]
008b80d8  17 1c                                            adds r7, r2, #0
008b80da  1d 4a                                            ldr r2, [pc, #0x74]
008b80dc  7b 44                                            add r3, pc
008b80de  04 1c                                            adds r4, r0, #0
008b80e0  9d 58                                            ldr r5, [r3, r2]
008b80e2  0e 1c                                            adds r6, r1, #0
008b80e4  08 1c                                            adds r0, r1, #0
008b80e6  29 1c                                            adds r1, r5, #0
008b80e8  eb f7 ec f9                                      bl #0x8a34c4
008b80ec  00 28                                            cmp r0, #0
008b80ee  1e d0                                            beq #0x8b812e
008b80f0  29 1c                                            adds r1, r5, #0
008b80f2  30 1c                                            adds r0, r6, #0
008b80f4  eb f7 5c fa                                      bl #0x8a35b0
008b80f8  a0 66                                            str r0, [r4, #0x68]
008b80fa  03 68                                            ldr r3, [r0]
008b80fc  5b 69                                            ldr r3, [r3, #0x14]
008b80fe  98 47                                            blx r3
008b8100  01 23                                            movs r3, #1
008b8102  05 1c                                            adds r5, r0, #0
008b8104  00 28                                            cmp r0, #0
008b8106  00 dd                                            ble #0x8b810a
008b8108  03 1c                                            adds r3, r0, #0
008b810a  a0 6e                                            ldr r0, [r4, #0x68]
008b810c  e3 66                                            str r3, [r4, #0x6c]
008b810e  03 68                                            ldr r3, [r0]
008b8110  1b 6a                                            ldr r3, [r3, #0x20]
008b8112  98 47                                            blx r3
008b8114  eb 17                                            asrs r3, r5, #0x1f
008b8116  5d 1b                                            subs r5, r3, r5
008b8118  ed 0f                                            lsrs r5, r5, #0x1f
008b811a  2c 23                                            movs r3, #0x2c
008b811c  20 67                                            str r0, [r4, #0x70]
008b811e  e5 54                                            strb r5, [r4, r3]
008b8120  a0 6e                                            ldr r0, [r4, #0x68]
008b8122  03 68                                            ldr r3, [r0]
008b8124  9b 69                                            ldr r3, [r3, #0x18]
008b8126  98 47                                            blx r3
008b8128  2d 23                                            movs r3, #0x2d
008b812a  e0 54                                            strb r0, [r4, r3]
008b812c  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b812e  01 23                                            movs r3, #1
008b8130  23 67                                            str r3, [r4, #0x70]
008b8132  e3 66                                            str r3, [r4, #0x6c]
008b8134  2d 23                                            movs r3, #0x2d
008b8136  a0 66                                            str r0, [r4, #0x68]
008b8138  e0 54                                            strb r0, [r4, r3]
008b813a  2c 23                                            movs r3, #0x2c
008b813c  e0 54                                            strb r0, [r4, r3]
008b813e  00 2f                                            cmp r7, #0
008b8140  f4 d0                                            beq #0x8b812c
008b8142  30 1c                                            adds r0, r6, #0
008b8144  29 1c                                            adds r1, r5, #0
008b8146  eb f7 33 fa                                      bl #0x8a35b0
008b814a  ef e7                                            b #0x8b812c
; mapping-symbol data/literal pool
008b814c  b8 c9 0d 00 2c 15 00 00                          .byte 0xb8, 0xc9, 0x0d, 0x00, 0x2c, 0x15, 0x00, 0x00

; FUNCTION 0x008b8154, declared_size=160, range_size=160, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEEC1Ev
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::basic_filebuf()
; decoder-mode: thumb
008b8154  70 b5                                            push {r4, r5, r6, lr}
008b8156  24 4e                                            ldr r6, [pc, #0x90]
008b8158  24 4b                                            ldr r3, [pc, #0x90]
008b815a  00 25                                            movs r5, #0
008b815c  7e 44                                            add r6, pc
008b815e  f3 58                                            ldr r3, [r6, r3]
008b8160  04 1c                                            adds r4, r0, #0
008b8162  82 b0                                            sub sp, #8
008b8164  08 33                                            adds r3, #8
008b8166  03 60                                            str r3, [r0]
008b8168  45 60                                            str r5, [r0, #4]
008b816a  85 60                                            str r5, [r0, #8]
008b816c  c5 60                                            str r5, [r0, #0xc]
008b816e  05 61                                            str r5, [r0, #0x10]
008b8170  45 61                                            str r5, [r0, #0x14]
008b8172  85 61                                            str r5, [r0, #0x18]
008b8174  1c 30                                            adds r0, #0x1c
008b8176  eb f7 03 fa                                      bl #0x8a3580
008b817a  1d 4b                                            ldr r3, [pc, #0x74]
008b817c  20 1c                                            adds r0, r4, #0
008b817e  20 30                                            adds r0, #0x20
008b8180  f3 58                                            ldr r3, [r6, r3]
008b8182  08 33                                            adds r3, #8
008b8184  23 60                                            str r3, [r4]
008b8186  05 f0 35 fc                                      bl #0x8bd9f4
008b818a  2c 23                                            movs r3, #0x2c
008b818c  e5 54                                            strb r5, [r4, r3]
008b818e  2d 23                                            movs r3, #0x2d
008b8190  e5 54                                            strb r5, [r4, r3]
008b8192  2e 23                                            movs r3, #0x2e
008b8194  e5 54                                            strb r5, [r4, r3]
008b8196  2f 23                                            movs r3, #0x2f
008b8198  e5 54                                            strb r5, [r4, r3]
008b819a  30 23                                            movs r3, #0x30
008b819c  e5 54                                            strb r5, [r4, r3]
008b819e  31 23                                            movs r3, #0x31
008b81a0  e5 54                                            strb r5, [r4, r3]
008b81a2  32 23                                            movs r3, #0x32
008b81a4  e5 54                                            strb r5, [r4, r3]
008b81a6  01 23                                            movs r3, #1
008b81a8  65 63                                            str r5, [r4, #0x34]
008b81aa  a5 63                                            str r5, [r4, #0x38]
008b81ac  e5 63                                            str r5, [r4, #0x3c]
008b81ae  25 64                                            str r5, [r4, #0x40]
008b81b0  65 64                                            str r5, [r4, #0x44]
008b81b2  a5 64                                            str r5, [r4, #0x48]
008b81b4  e5 64                                            str r5, [r4, #0x4c]
008b81b6  25 65                                            str r5, [r4, #0x50]
008b81b8  65 65                                            str r5, [r4, #0x54]
008b81ba  a5 65                                            str r5, [r4, #0x58]
008b81bc  e5 65                                            str r5, [r4, #0x5c]
008b81be  25 66                                            str r5, [r4, #0x60]
008b81c0  65 66                                            str r5, [r4, #0x64]
008b81c2  a5 66                                            str r5, [r4, #0x68]
008b81c4  01 ad                                            add r5, sp, #4
008b81c6  e3 66                                            str r3, [r4, #0x6c]
008b81c8  23 67                                            str r3, [r4, #0x70]
008b81ca  28 1c                                            adds r0, r5, #0
008b81cc  eb f7 d8 f9                                      bl #0x8a3580
008b81d0  29 1c                                            adds r1, r5, #0
008b81d2  20 1c                                            adds r0, r4, #0
008b81d4  00 22                                            movs r2, #0
008b81d6  ff f7 7d ff                                      bl #0x8b80d4
008b81da  28 1c                                            adds r0, r5, #0
008b81dc  eb f7 8a f9                                      bl #0x8a34f4
008b81e0  02 b0                                            add sp, #8
008b81e2  20 1c                                            adds r0, r4, #0
008b81e4  70 bd                                            pop {r4, r5, r6, pc}
008b81e6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b81e8  38 c9 0d 00 48 2c 00 00 c8 4b 00 00              .byte 0x38, 0xc9, 0x0d, 0x00, 0x48, 0x2c, 0x00, 0x00, 0xc8, 0x4b, 0x00, 0x00

; FUNCTION 0x008b81f4, declared_size=26, range_size=26, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE5imbueERKSt6locale
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::imbue(std::locale const&)
; decoder-mode: thumb
008b81f4  10 b5                                            push {r4, lr}
008b81f6  2f 23                                            movs r3, #0x2f
008b81f8  c3 5c                                            ldrb r3, [r0, r3]
008b81fa  00 2b                                            cmp r3, #0
008b81fc  02 d1                                            bne #0x8b8204
008b81fe  03 8e                                            ldrh r3, [r0, #0x30]
008b8200  00 2b                                            cmp r3, #0
008b8202  00 d0                                            beq #0x8b8206
008b8204  10 bd                                            pop {r4, pc}
008b8206  01 22                                            movs r2, #1
008b8208  ff f7 64 ff                                      bl #0x8b80d4
008b820c  fa e7                                            b #0x8b8204

; FUNCTION 0x008b8634, declared_size=286, range_size=286, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_underflow_auxEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::_M_underflow_aux()
; decoder-mode: thumb
008b8634  f0 b5                                            push {r4, r5, r6, r7, lr}
008b8636  5f 46                                            mov r7, fp
008b8638  56 46                                            mov r6, sl
008b863a  4d 46                                            mov r5, sb
008b863c  44 46                                            mov r4, r8
008b863e  f0 b4                                            push {r4, r5, r6, r7}
008b8640  03 6d                                            ldr r3, [r0, #0x50]
008b8642  85 6c                                            ldr r5, [r0, #0x48]
008b8644  89 b0                                            sub sp, #0x24
008b8646  c3 64                                            str r3, [r0, #0x4c]
008b8648  43 6c                                            ldr r3, [r0, #0x44]
008b864a  04 1c                                            adds r4, r0, #0
008b864c  9d 42                                            cmp r5, r3
008b864e  67 d9                                            bls #0x8b8720
008b8650  c0 6b                                            ldr r0, [r0, #0x3c]
008b8652  ed 1a                                            subs r5, r5, r3
008b8654  01 1c                                            adds r1, r0, #0
008b8656  00 2d                                            cmp r5, #0
008b8658  64 d1                                            bne #0x8b8724
008b865a  23 1c                                            adds r3, r4, #0
008b865c  26 1c                                            adds r6, r4, #0
008b865e  20 33                                            adds r3, #0x20
008b8660  50 36                                            adds r6, #0x50
008b8662  04 93                                            str r3, [sp, #0x10]
008b8664  05 96                                            str r6, [sp, #0x14]
008b8666  07 af                                            add r7, sp, #0x1c
008b8668  06 ab                                            add r3, sp, #0x18
008b866a  2c 26                                            movs r6, #0x2c
008b866c  a1 64                                            str r1, [r4, #0x48]
008b866e  b8 46                                            mov r8, r7
008b8670  99 46                                            mov sb, r3
008b8672  b2 46                                            mov sl, r6
008b8674  22 6c                                            ldr r2, [r4, #0x40]
008b8676  04 98                                            ldr r0, [sp, #0x10]
008b8678  52 1a                                            subs r2, r2, r1
008b867a  05 f0 07 fa                                      bl #0x8bda8c
008b867e  05 1e                                            subs r5, r0, #0
008b8680  65 db                                            blt #0x8b874e
008b8682  a3 6c                                            ldr r3, [r4, #0x48]
008b8684  e2 6b                                            ldr r2, [r4, #0x3c]
008b8686  5b 19                                            adds r3, r3, r5
008b8688  a3 64                                            str r3, [r4, #0x48]
008b868a  93 42                                            cmp r3, r2
008b868c  5f d0                                            beq #0x8b874e
008b868e  a0 6e                                            ldr r0, [r4, #0x68]
008b8690  47 46                                            mov r7, r8
008b8692  66 6b                                            ldr r6, [r4, #0x34]
008b8694  01 68                                            ldr r1, [r0]
008b8696  00 97                                            str r7, [sp]
008b8698  a7 6b                                            ldr r7, [r4, #0x38]
008b869a  01 96                                            str r6, [sp, #4]
008b869c  4e 46                                            mov r6, sb
008b869e  02 97                                            str r7, [sp, #8]
008b86a0  03 96                                            str r6, [sp, #0xc]
008b86a2  c9 68                                            ldr r1, [r1, #0xc]
008b86a4  8c 46                                            mov ip, r1
008b86a6  05 99                                            ldr r1, [sp, #0x14]
008b86a8  e0 47                                            blx ip
008b86aa  03 28                                            cmp r0, #3
008b86ac  2b d0                                            beq #0x8b8706
008b86ae  02 28                                            cmp r0, #2
008b86b0  3e d0                                            beq #0x8b8730
008b86b2  63 6b                                            ldr r3, [r4, #0x34]
008b86b4  06 9a                                            ldr r2, [sp, #0x18]
008b86b6  93 42                                            cmp r3, r2
008b86b8  28 d0                                            beq #0x8b870c
008b86ba  e1 6b                                            ldr r1, [r4, #0x3c]
008b86bc  07 98                                            ldr r0, [sp, #0x1c]
008b86be  81 42                                            cmp r1, r0
008b86c0  36 d0                                            beq #0x8b8730
008b86c2  57 46                                            mov r7, sl
008b86c4  e7 5d                                            ldrb r7, [r4, r7]
008b86c6  46 1a                                            subs r6, r0, r1
008b86c8  b4 46                                            mov ip, r6
008b86ca  00 2f                                            cmp r7, #0
008b86cc  09 d0                                            beq #0x8b86e2
008b86ce  d7 1a                                            subs r7, r2, r3
008b86d0  bf 10                                            asrs r7, r7, #2
008b86d2  bb 46                                            mov fp, r7
008b86d4  e7 6e                                            ldr r7, [r4, #0x6c]
008b86d6  40 1a                                            subs r0, r0, r1
008b86d8  5e 46                                            mov r6, fp
008b86da  7e 43                                            muls r6, r7, r6
008b86dc  b4 46                                            mov ip, r6
008b86de  84 45                                            cmp ip, r0
008b86e0  26 d1                                            bne #0x8b8730
008b86e2  93 42                                            cmp r3, r2
008b86e4  15 d0                                            beq #0x8b8712
008b86e6  61 44                                            add r1, ip
008b86e8  61 64                                            str r1, [r4, #0x44]
008b86ea  63 60                                            str r3, [r4, #4]
008b86ec  a3 60                                            str r3, [r4, #8]
008b86ee  e2 60                                            str r2, [r4, #0xc]
008b86f0  18 68                                            ldr r0, [r3]
008b86f2  09 b0                                            add sp, #0x24
008b86f4  3c bc                                            pop {r2, r3, r4, r5}
008b86f6  90 46                                            mov r8, r2
008b86f8  99 46                                            mov sb, r3
008b86fa  a2 46                                            mov sl, r4
008b86fc  ab 46                                            mov fp, r5
008b86fe  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b8700  65 60                                            str r5, [r4, #4]
008b8702  a5 60                                            str r5, [r4, #8]
008b8704  e5 60                                            str r5, [r4, #0xc]
008b8706  01 20                                            movs r0, #1
008b8708  40 42                                            rsbs r0, r0, #0
008b870a  f2 e7                                            b #0x8b86f2
008b870c  07 98                                            ldr r0, [sp, #0x1c]
008b870e  e1 6b                                            ldr r1, [r4, #0x3c]
008b8710  d7 e7                                            b #0x8b86c2
008b8712  23 6f                                            ldr r3, [r4, #0x70]
008b8714  63 45                                            cmp r3, ip
008b8716  0b dd                                            ble #0x8b8730
008b8718  00 2d                                            cmp r5, #0
008b871a  f1 d0                                            beq #0x8b8700
008b871c  a1 6c                                            ldr r1, [r4, #0x48]
008b871e  a9 e7                                            b #0x8b8674
008b8720  c1 6b                                            ldr r1, [r0, #0x3c]
008b8722  9a e7                                            b #0x8b865a
008b8724  19 1c                                            adds r1, r3, #0
008b8726  2a 1c                                            adds r2, r5, #0
008b8728  55 f6 06 e4                                      blx #0x30df38
008b872c  41 19                                            adds r1, r0, r5
008b872e  94 e7                                            b #0x8b865a
008b8730  20 1c                                            adds r0, r4, #0
008b8732  ff f7 37 fa                                      bl #0x8b7ba4
008b8736  30 22                                            movs r2, #0x30
008b8738  00 23                                            movs r3, #0
008b873a  a3 54                                            strb r3, [r4, r2]
008b873c  01 21                                            movs r1, #1
008b873e  31 22                                            movs r2, #0x31
008b8740  a1 54                                            strb r1, [r4, r2]
008b8742  01 20                                            movs r0, #1
008b8744  63 60                                            str r3, [r4, #4]
008b8746  a3 60                                            str r3, [r4, #8]
008b8748  e3 60                                            str r3, [r4, #0xc]
008b874a  40 42                                            rsbs r0, r0, #0
008b874c  d1 e7                                            b #0x8b86f2
008b874e  00 23                                            movs r3, #0
008b8750  f7 e7                                            b #0x8b8742

; FUNCTION 0x008b8798, declared_size=8, range_size=8, mode=thumb
; class-group: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_filebufIwSt11char_traitsIwEE9underflowEv
; demangled: std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::underflow()
; decoder-mode: thumb
008b8798  10 b5                                            push {r4, lr}
008b879a  ff f7 db ff                                      bl #0x8b8754
008b879e  10 bd                                            pop {r4, pc}
