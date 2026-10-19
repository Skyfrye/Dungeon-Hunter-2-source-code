; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b7108, declared_size=32, range_size=32, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE4syncEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::sync()
; decoder-mode: thumb
008b7108  10 b5                                            push {r4, lr}
008b710a  30 23                                            movs r3, #0x30
008b710c  c3 5c                                            ldrb r3, [r0, r3]
008b710e  00 2b                                            cmp r3, #0
008b7110  01 d1                                            bne #0x8b7116
008b7112  00 20                                            movs r0, #0
008b7114  10 bd                                            pop {r4, pc}
008b7116  03 68                                            ldr r3, [r0]
008b7118  01 21                                            movs r1, #1
008b711a  49 42                                            rsbs r1, r1, #0
008b711c  5b 6b                                            ldr r3, [r3, #0x34]
008b711e  98 47                                            blx r3
008b7120  03 1c                                            adds r3, r0, #0
008b7122  01 33                                            adds r3, #1
008b7124  f5 d1                                            bne #0x8b7112
008b7126  f5 e7                                            b #0x8b7114

; FUNCTION 0x008b7128, declared_size=136, range_size=136, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE9pbackfailEi
; demangled: std::basic_filebuf<char, std::char_traits<char> >::pbackfail(int)
; decoder-mode: thumb
008b7128  f0 b5                                            push {r4, r5, r6, r7, lr}
008b712a  2f 23                                            movs r3, #0x2f
008b712c  c3 5c                                            ldrb r3, [r0, r3]
008b712e  00 2b                                            cmp r3, #0
008b7130  22 d0                                            beq #0x8b7178
008b7132  82 68                                            ldr r2, [r0, #8]
008b7134  45 68                                            ldr r5, [r0, #4]
008b7136  aa 42                                            cmp r2, r5
008b7138  1c d0                                            beq #0x8b7174
008b713a  4b 1c                                            adds r3, r1, #1
008b713c  1f d0                                            beq #0x8b717e
008b713e  53 1e                                            subs r3, r2, #1
008b7140  1e 78                                            ldrb r6, [r3]
008b7142  0c 06                                            lsls r4, r1, #0x18
008b7144  24 0e                                            lsrs r4, r4, #0x18
008b7146  a6 42                                            cmp r6, r4
008b7148  2d d0                                            beq #0x8b71a6
008b714a  46 6d                                            ldr r6, [r0, #0x54]
008b714c  00 2e                                            cmp r6, #0
008b714e  2a d0                                            beq #0x8b71a6
008b7150  32 24                                            movs r4, #0x32
008b7152  03 5d                                            ldrb r3, [r0, r4]
008b7154  07 1c                                            adds r7, r0, #0
008b7156  06 1c                                            adds r6, r0, #0
008b7158  74 37                                            adds r7, #0x74
008b715a  7c 36                                            adds r6, #0x7c
008b715c  00 2b                                            cmp r3, #0
008b715e  12 d0                                            beq #0x8b7186
008b7160  af 42                                            cmp r7, r5
008b7162  09 d0                                            beq #0x8b7178
008b7164  c3 68                                            ldr r3, [r0, #0xc]
008b7166  0c 06                                            lsls r4, r1, #0x18
008b7168  c6 60                                            str r6, [r0, #0xc]
008b716a  01 3b                                            subs r3, #1
008b716c  43 60                                            str r3, [r0, #4]
008b716e  83 60                                            str r3, [r0, #8]
008b7170  24 0e                                            lsrs r4, r4, #0x18
008b7172  15 e0                                            b #0x8b71a0
008b7174  4b 1c                                            adds r3, r1, #1
008b7176  eb d1                                            bne #0x8b7150
008b7178  01 20                                            movs r0, #1
008b717a  40 42                                            rsbs r0, r0, #0
008b717c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b717e  53 1e                                            subs r3, r2, #1
008b7180  83 60                                            str r3, [r0, #8]
008b7182  18 78                                            ldrb r0, [r3]
008b7184  fa e7                                            b #0x8b717c
008b7186  c3 68                                            ldr r3, [r0, #0xc]
008b7188  02 66                                            str r2, [r0, #0x60]
008b718a  01 22                                            movs r2, #1
008b718c  43 66                                            str r3, [r0, #0x64]
008b718e  03 1c                                            adds r3, r0, #0
008b7190  7b 33                                            adds r3, #0x7b
008b7192  c5 65                                            str r5, [r0, #0x5c]
008b7194  43 60                                            str r3, [r0, #4]
008b7196  83 60                                            str r3, [r0, #8]
008b7198  c6 60                                            str r6, [r0, #0xc]
008b719a  02 55                                            strb r2, [r0, r4]
008b719c  0c 06                                            lsls r4, r1, #0x18
008b719e  24 0e                                            lsrs r4, r4, #0x18
008b71a0  1c 70                                            strb r4, [r3]
008b71a2  08 1c                                            adds r0, r1, #0
008b71a4  ea e7                                            b #0x8b717c
008b71a6  83 60                                            str r3, [r0, #8]
008b71a8  18 78                                            ldrb r0, [r3]
008b71aa  a0 42                                            cmp r0, r4
008b71ac  f8 d1                                            bne #0x8b71a0
008b71ae  e5 e7                                            b #0x8b717c

; FUNCTION 0x008b71d4, declared_size=36, range_size=36, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE21_M_deallocate_buffersEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_deallocate_buffers()
; decoder-mode: thumb
008b71d4  10 b5                                            push {r4, lr}
008b71d6  2e 23                                            movs r3, #0x2e
008b71d8  c3 5c                                            ldrb r3, [r0, r3]
008b71da  04 1c                                            adds r4, r0, #0
008b71dc  00 2b                                            cmp r3, #0
008b71de  02 d0                                            beq #0x8b71e6
008b71e0  40 6b                                            ldr r0, [r0, #0x34]
008b71e2  56 f6 86 e6                                      blx #0x30def0
008b71e6  e0 6b                                            ldr r0, [r4, #0x3c]
008b71e8  56 f6 82 e6                                      blx #0x30def0
008b71ec  00 23                                            movs r3, #0
008b71ee  63 63                                            str r3, [r4, #0x34]
008b71f0  a3 63                                            str r3, [r4, #0x38]
008b71f2  e3 63                                            str r3, [r4, #0x3c]
008b71f4  23 64                                            str r3, [r4, #0x40]
008b71f6  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b71f8, declared_size=106, range_size=106, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE19_M_allocate_buffersEPci
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_allocate_buffers(char*, int)
; decoder-mode: thumb
008b71f8  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b71fa  04 1c                                            adds r4, r0, #0
008b71fc  16 1c                                            adds r6, r2, #0
008b71fe  00 29                                            cmp r1, #0
008b7200  1e d0                                            beq #0x8b7240
008b7202  00 22                                            movs r2, #0
008b7204  2e 23                                            movs r3, #0x2e
008b7206  41 63                                            str r1, [r0, #0x34]
008b7208  c2 54                                            strb r2, [r0, r3]
008b720a  e3 6e                                            ldr r3, [r4, #0x6c]
008b720c  a0 6e                                            ldr r0, [r4, #0x68]
008b720e  1f 1c                                            adds r7, r3, #0
008b7210  77 43                                            muls r7, r6, r7
008b7212  03 68                                            ldr r3, [r0]
008b7214  1b 6a                                            ldr r3, [r3, #0x20]
008b7216  98 47                                            blx r3
008b7218  00 23                                            movs r3, #0
008b721a  e3 63                                            str r3, [r4, #0x3c]
008b721c  05 1c                                            adds r5, r0, #0
008b721e  b8 42                                            cmp r0, r7
008b7220  0c db                                            blt #0x8b723c
008b7222  28 1c                                            adds r0, r5, #0
008b7224  57 f6 66 e2                                      blx #0x30e6f4
008b7228  e0 63                                            str r0, [r4, #0x3c]
008b722a  00 28                                            cmp r0, #0
008b722c  14 d0                                            beq #0x8b7258
008b722e  63 6b                                            ldr r3, [r4, #0x34]
008b7230  45 19                                            adds r5, r0, r5
008b7232  25 64                                            str r5, [r4, #0x40]
008b7234  9e 19                                            adds r6, r3, r6
008b7236  a6 63                                            str r6, [r4, #0x38]
008b7238  01 20                                            movs r0, #1
008b723a  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b723c  3d 1c                                            adds r5, r7, #0
008b723e  f0 e7                                            b #0x8b7222
008b7240  10 1c                                            adds r0, r2, #0
008b7242  57 f6 58 e2                                      blx #0x30e6f4
008b7246  03 1c                                            adds r3, r0, #0
008b7248  60 63                                            str r0, [r4, #0x34]
008b724a  00 20                                            movs r0, #0
008b724c  00 2b                                            cmp r3, #0
008b724e  f4 d0                                            beq #0x8b723a
008b7250  01 22                                            movs r2, #1
008b7252  2e 23                                            movs r3, #0x2e
008b7254  e2 54                                            strb r2, [r4, r3]
008b7256  d8 e7                                            b #0x8b720a
008b7258  20 1c                                            adds r0, r4, #0
008b725a  ff f7 bb ff                                      bl #0x8b71d4
008b725e  00 20                                            movs r0, #0
008b7260  eb e7                                            b #0x8b723a

; FUNCTION 0x008b7264, declared_size=128, range_size=128, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE24_M_switch_to_output_modeEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_switch_to_output_mode()
; decoder-mode: thumb
008b7264  70 b5                                            push {r4, r5, r6, lr}
008b7266  28 22                                            movs r2, #0x28
008b7268  1b 4b                                            ldr r3, [pc, #0x6c]
008b726a  82 5c                                            ldrb r2, [r0, r2]
008b726c  04 1c                                            adds r4, r0, #0
008b726e  7b 44                                            add r3, pc
008b7270  00 2a                                            cmp r2, #0
008b7272  02 d0                                            beq #0x8b727a
008b7274  42 6a                                            ldr r2, [r0, #0x24]
008b7276  d1 06                                            lsls r1, r2, #0x1b
008b7278  01 d4                                            bmi #0x8b727e
008b727a  00 20                                            movs r0, #0
008b727c  70 bd                                            pop {r4, r5, r6, pc}
008b727e  2f 21                                            movs r1, #0x2f
008b7280  41 5c                                            ldrb r1, [r0, r1]
008b7282  00 29                                            cmp r1, #0
008b7284  f9 d1                                            bne #0x8b727a
008b7286  31 21                                            movs r1, #0x31
008b7288  41 5c                                            ldrb r1, [r0, r1]
008b728a  00 29                                            cmp r1, #0
008b728c  f5 d1                                            bne #0x8b727a
008b728e  41 6b                                            ldr r1, [r0, #0x34]
008b7290  00 29                                            cmp r1, #0
008b7292  0d d0                                            beq #0x8b72b0
008b7294  d3 07                                            lsls r3, r2, #0x1f
008b7296  01 d5                                            bpl #0x8b729c
008b7298  00 23                                            movs r3, #0
008b729a  e3 64                                            str r3, [r4, #0x4c]
008b729c  a3 6b                                            ldr r3, [r4, #0x38]
008b729e  01 22                                            movs r2, #1
008b72a0  21 61                                            str r1, [r4, #0x10]
008b72a2  01 3b                                            subs r3, #1
008b72a4  a3 61                                            str r3, [r4, #0x18]
008b72a6  30 23                                            movs r3, #0x30
008b72a8  61 61                                            str r1, [r4, #0x14]
008b72aa  01 20                                            movs r0, #1
008b72ac  e2 54                                            strb r2, [r4, r3]
008b72ae  e5 e7                                            b #0x8b727c
008b72b0  0a 4a                                            ldr r2, [pc, #0x28]
008b72b2  9b 58                                            ldr r3, [r3, r2]
008b72b4  1d 68                                            ldr r5, [r3]
008b72b6  0a 4b                                            ldr r3, [pc, #0x28]
008b72b8  29 1c                                            adds r1, r5, #0
008b72ba  e8 18                                            adds r0, r5, r3
008b72bc  57 f6 c6 e4                                      blx #0x30ec4c
008b72c0  00 21                                            movs r1, #0
008b72c2  2a 1c                                            adds r2, r5, #0
008b72c4  42 43                                            muls r2, r0, r2
008b72c6  20 1c                                            adds r0, r4, #0
008b72c8  ff f7 96 ff                                      bl #0x8b71f8
008b72cc  00 28                                            cmp r0, #0
008b72ce  d4 d0                                            beq #0x8b727a
008b72d0  62 6a                                            ldr r2, [r4, #0x24]
008b72d2  61 6b                                            ldr r1, [r4, #0x34]
008b72d4  de e7                                            b #0x8b7294
008b72d6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b72d8  26 d8 0d 00 00 1a 00 00 ff 0f 00 00              .byte 0x26, 0xd8, 0x0d, 0x00, 0x00, 0x1a, 0x00, 0x00, 0xff, 0x0f, 0x00, 0x00

; FUNCTION 0x008b72e4, declared_size=58, range_size=58, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE6setbufEPci
; demangled: std::basic_filebuf<char, std::char_traits<char> >::setbuf(char*, int)
; decoder-mode: thumb
008b72e4  10 b5                                            push {r4, lr}
008b72e6  2f 23                                            movs r3, #0x2f
008b72e8  c3 5c                                            ldrb r3, [r0, r3]
008b72ea  04 1c                                            adds r4, r0, #0
008b72ec  00 2b                                            cmp r3, #0
008b72ee  05 d1                                            bne #0x8b72fc
008b72f0  03 8e                                            ldrh r3, [r0, #0x30]
008b72f2  00 2b                                            cmp r3, #0
008b72f4  02 d1                                            bne #0x8b72fc
008b72f6  43 6b                                            ldr r3, [r0, #0x34]
008b72f8  00 2b                                            cmp r3, #0
008b72fa  01 d0                                            beq #0x8b7300
008b72fc  20 1c                                            adds r0, r4, #0
008b72fe  10 bd                                            pop {r4, pc}
008b7300  00 2a                                            cmp r2, #0
008b7302  06 d0                                            beq #0x8b7312
008b7304  00 2a                                            cmp r2, #0
008b7306  f9 dd                                            ble #0x8b72fc
008b7308  00 29                                            cmp r1, #0
008b730a  f7 d0                                            beq #0x8b72fc
008b730c  ff f7 74 ff                                      bl #0x8b71f8
008b7310  f4 e7                                            b #0x8b72fc
008b7312  00 29                                            cmp r1, #0
008b7314  f2 d1                                            bne #0x8b72fc
008b7316  01 22                                            movs r2, #1
008b7318  ff f7 6e ff                                      bl #0x8b71f8
008b731c  ee e7                                            b #0x8b72fc

; FUNCTION 0x008b74b8, declared_size=316, range_size=316, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE8overflowEi
; demangled: std::basic_filebuf<char, std::char_traits<char> >::overflow(int)
; decoder-mode: thumb
008b74b8  f0 b5                                            push {r4, r5, r6, r7, lr}
008b74ba  5f 46                                            mov r7, fp
008b74bc  56 46                                            mov r6, sl
008b74be  4d 46                                            mov r5, sb
008b74c0  44 46                                            mov r4, r8
008b74c2  f0 b4                                            push {r4, r5, r6, r7}
008b74c4  89 b0                                            sub sp, #0x24
008b74c6  05 91                                            str r1, [sp, #0x14]
008b74c8  30 23                                            movs r3, #0x30
008b74ca  c3 5c                                            ldrb r3, [r0, r3]
008b74cc  04 1c                                            adds r4, r0, #0
008b74ce  00 2b                                            cmp r3, #0
008b74d0  00 d1                                            bne #0x8b74d4
008b74d2  86 e0                                            b #0x8b75e2
008b74d4  a3 6b                                            ldr r3, [r4, #0x38]
008b74d6  65 6b                                            ldr r5, [r4, #0x34]
008b74d8  05 9a                                            ldr r2, [sp, #0x14]
008b74da  01 3b                                            subs r3, #1
008b74dc  66 69                                            ldr r6, [r4, #0x14]
008b74de  25 61                                            str r5, [r4, #0x10]
008b74e0  65 61                                            str r5, [r4, #0x14]
008b74e2  a3 61                                            str r3, [r4, #0x18]
008b74e4  01 32                                            adds r2, #1
008b74e6  04 d0                                            beq #0x8b74f2
008b74e8  6b 46                                            mov r3, sp
008b74ea  14 21                                            movs r1, #0x14
008b74ec  cb 5c                                            ldrb r3, [r1, r3]
008b74ee  33 70                                            strb r3, [r6]
008b74f0  01 36                                            adds r6, #1
008b74f2  b5 42                                            cmp r5, r6
008b74f4  62 d0                                            beq #0x8b75bc
008b74f6  20 21                                            movs r1, #0x20
008b74f8  09 19                                            adds r1, r1, r4
008b74fa  8a 46                                            mov sl, r1
008b74fc  07 aa                                            add r2, sp, #0x1c
008b74fe  27 1c                                            adds r7, r4, #0
008b7500  90 46                                            mov r8, r2
008b7502  4c 37                                            adds r7, #0x4c
008b7504  52 46                                            mov r2, sl
008b7506  06 ab                                            add r3, sp, #0x18
008b7508  2c 21                                            movs r1, #0x2c
008b750a  c1 46                                            mov sb, r8
008b750c  8b 46                                            mov fp, r1
008b750e  04 92                                            str r2, [sp, #0x10]
008b7510  9a 46                                            mov sl, r3
008b7512  b8 46                                            mov r8, r7
008b7514  10 e0                                            b #0x8b7538
008b7516  59 46                                            mov r1, fp
008b7518  62 5c                                            ldrb r2, [r4, r1]
008b751a  00 2a                                            cmp r2, #0
008b751c  31 d1                                            bne #0x8b7582
008b751e  9d 42                                            cmp r5, r3
008b7520  2f d0                                            beq #0x8b7582
008b7522  e1 6b                                            ldr r1, [r4, #0x3c]
008b7524  06 9a                                            ldr r2, [sp, #0x18]
008b7526  52 1a                                            subs r2, r2, r1
008b7528  04 98                                            ldr r0, [sp, #0x10]
008b752a  06 f0 93 fa                                      bl #0x8bda54
008b752e  00 28                                            cmp r0, #0
008b7530  4a d0                                            beq #0x8b75c8
008b7532  07 9d                                            ldr r5, [sp, #0x1c]
008b7534  b5 42                                            cmp r5, r6
008b7536  41 d0                                            beq #0x8b75bc
008b7538  e3 6b                                            ldr r3, [r4, #0x3c]
008b753a  a0 6e                                            ldr r0, [r4, #0x68]
008b753c  07 95                                            str r5, [sp, #0x1c]
008b753e  06 93                                            str r3, [sp, #0x18]
008b7540  02 68                                            ldr r2, [r0]
008b7542  01 93                                            str r3, [sp, #4]
008b7544  23 6c                                            ldr r3, [r4, #0x40]
008b7546  49 46                                            mov r1, sb
008b7548  00 91                                            str r1, [sp]
008b754a  02 93                                            str r3, [sp, #8]
008b754c  53 46                                            mov r3, sl
008b754e  03 93                                            str r3, [sp, #0xc]
008b7550  97 68                                            ldr r7, [r2, #8]
008b7552  41 46                                            mov r1, r8
008b7554  2a 1c                                            adds r2, r5, #0
008b7556  33 1c                                            adds r3, r6, #0
008b7558  b8 47                                            blx r7
008b755a  03 28                                            cmp r0, #3
008b755c  26 d0                                            beq #0x8b75ac
008b755e  02 28                                            cmp r0, #2
008b7560  0f d0                                            beq #0x8b7582
008b7562  07 9b                                            ldr r3, [sp, #0x1c]
008b7564  b3 42                                            cmp r3, r6
008b7566  d6 d1                                            bne #0x8b7516
008b7568  e7 6e                                            ldr r7, [r4, #0x6c]
008b756a  70 1b                                            subs r0, r6, r5
008b756c  e1 6b                                            ldr r1, [r4, #0x3c]
008b756e  3a 1c                                            adds r2, r7, #0
008b7570  42 43                                            muls r2, r0, r2
008b7572  06 98                                            ldr r0, [sp, #0x18]
008b7574  40 1a                                            subs r0, r0, r1
008b7576  90 42                                            cmp r0, r2
008b7578  d6 d0                                            beq #0x8b7528
008b757a  59 46                                            mov r1, fp
008b757c  62 5c                                            ldrb r2, [r4, r1]
008b757e  00 2a                                            cmp r2, #0
008b7580  cd d0                                            beq #0x8b751e
008b7582  00 23                                            movs r3, #0
008b7584  30 22                                            movs r2, #0x30
008b7586  a3 54                                            strb r3, [r4, r2]
008b7588  2f 22                                            movs r2, #0x2f
008b758a  a3 54                                            strb r3, [r4, r2]
008b758c  01 21                                            movs r1, #1
008b758e  31 22                                            movs r2, #0x31
008b7590  a1 54                                            strb r1, [r4, r2]
008b7592  49 42                                            rsbs r1, r1, #0
008b7594  23 61                                            str r3, [r4, #0x10]
008b7596  63 61                                            str r3, [r4, #0x14]
008b7598  a3 61                                            str r3, [r4, #0x18]
008b759a  05 91                                            str r1, [sp, #0x14]
008b759c  05 98                                            ldr r0, [sp, #0x14]
008b759e  09 b0                                            add sp, #0x24
008b75a0  3c bc                                            pop {r2, r3, r4, r5}
008b75a2  90 46                                            mov r8, r2
008b75a4  99 46                                            mov sb, r3
008b75a6  a2 46                                            mov sl, r4
008b75a8  ab 46                                            mov fp, r5
008b75aa  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b75ac  04 99                                            ldr r1, [sp, #0x10]
008b75ae  72 1b                                            subs r2, r6, r5
008b75b0  08 1c                                            adds r0, r1, #0
008b75b2  29 1c                                            adds r1, r5, #0
008b75b4  06 f0 4e fa                                      bl #0x8bda54
008b75b8  00 28                                            cmp r0, #0
008b75ba  05 d0                                            beq #0x8b75c8
008b75bc  05 9a                                            ldr r2, [sp, #0x14]
008b75be  01 32                                            adds r2, #1
008b75c0  ec d1                                            bne #0x8b759c
008b75c2  00 23                                            movs r3, #0
008b75c4  05 93                                            str r3, [sp, #0x14]
008b75c6  e9 e7                                            b #0x8b759c
008b75c8  30 23                                            movs r3, #0x30
008b75ca  e0 54                                            strb r0, [r4, r3]
008b75cc  2f 23                                            movs r3, #0x2f
008b75ce  e0 54                                            strb r0, [r4, r3]
008b75d0  01 22                                            movs r2, #1
008b75d2  31 23                                            movs r3, #0x31
008b75d4  e2 54                                            strb r2, [r4, r3]
008b75d6  52 42                                            rsbs r2, r2, #0
008b75d8  20 61                                            str r0, [r4, #0x10]
008b75da  60 61                                            str r0, [r4, #0x14]
008b75dc  a0 61                                            str r0, [r4, #0x18]
008b75de  05 92                                            str r2, [sp, #0x14]
008b75e0  dc e7                                            b #0x8b759c
008b75e2  ff f7 3f fe                                      bl #0x8b7264
008b75e6  00 28                                            cmp r0, #0
008b75e8  00 d0                                            beq #0x8b75ec
008b75ea  73 e7                                            b #0x8b74d4
008b75ec  01 21                                            movs r1, #1
008b75ee  49 42                                            rsbs r1, r1, #0
008b75f0  05 91                                            str r1, [sp, #0x14]
008b75f2  d3 e7                                            b #0x8b759c

; FUNCTION 0x008b75f4, declared_size=108, range_size=108, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE10_M_unshiftEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_unshift()
; decoder-mode: thumb
008b75f4  f0 b5                                            push {r4, r5, r6, r7, lr}
008b75f6  47 46                                            mov r7, r8
008b75f8  80 b4                                            push {r7}
008b75fa  30 23                                            movs r3, #0x30
008b75fc  c3 5c                                            ldrb r3, [r0, r3]
008b75fe  84 b0                                            sub sp, #0x10
008b7600  04 1c                                            adds r4, r0, #0
008b7602  00 2b                                            cmp r3, #0
008b7604  23 d0                                            beq #0x8b764e
008b7606  2c 23                                            movs r3, #0x2c
008b7608  c3 5c                                            ldrb r3, [r0, r3]
008b760a  00 2b                                            cmp r3, #0
008b760c  1f d1                                            bne #0x8b764e
008b760e  20 23                                            movs r3, #0x20
008b7610  06 1c                                            adds r6, r0, #0
008b7612  1b 18                                            adds r3, r3, r0
008b7614  4c 36                                            adds r6, #0x4c
008b7616  98 46                                            mov r8, r3
008b7618  03 af                                            add r7, sp, #0xc
008b761a  e2 6b                                            ldr r2, [r4, #0x3c]
008b761c  a0 6e                                            ldr r0, [r4, #0x68]
008b761e  23 6c                                            ldr r3, [r4, #0x40]
008b7620  03 92                                            str r2, [sp, #0xc]
008b7622  01 68                                            ldr r1, [r0]
008b7624  00 97                                            str r7, [sp]
008b7626  0d 69                                            ldr r5, [r1, #0x10]
008b7628  31 1c                                            adds r1, r6, #0
008b762a  a8 47                                            blx r5
008b762c  05 1c                                            adds r5, r0, #0
008b762e  03 28                                            cmp r0, #3
008b7630  0d d0                                            beq #0x8b764e
008b7632  e1 6b                                            ldr r1, [r4, #0x3c]
008b7634  03 9a                                            ldr r2, [sp, #0xc]
008b7636  00 28                                            cmp r0, #0
008b7638  0e d1                                            bne #0x8b7658
008b763a  91 42                                            cmp r1, r2
008b763c  07 d0                                            beq #0x8b764e
008b763e  52 1a                                            subs r2, r2, r1
008b7640  40 46                                            mov r0, r8
008b7642  06 f0 07 fa                                      bl #0x8bda54
008b7646  00 28                                            cmp r0, #0
008b7648  08 d0                                            beq #0x8b765c
008b764a  01 2d                                            cmp r5, #1
008b764c  e5 d0                                            beq #0x8b761a
008b764e  01 20                                            movs r0, #1
008b7650  04 b0                                            add sp, #0x10
008b7652  04 bc                                            pop {r2}
008b7654  90 46                                            mov r8, r2
008b7656  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b7658  02 28                                            cmp r0, #2
008b765a  f0 d1                                            bne #0x8b763e
008b765c  00 20                                            movs r0, #0
008b765e  f7 e7                                            b #0x8b7650

; FUNCTION 0x008b7660, declared_size=124, range_size=124, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE12_M_seek_initEb
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_seek_init(bool)
; decoder-mode: thumb
008b7660  70 b5                                            push {r4, r5, r6, lr}
008b7662  31 23                                            movs r3, #0x31
008b7664  00 22                                            movs r2, #0
008b7666  c2 54                                            strb r2, [r0, r3]
008b7668  30 23                                            movs r3, #0x30
008b766a  c3 5c                                            ldrb r3, [r0, r3]
008b766c  04 1c                                            adds r4, r0, #0
008b766e  0d 1c                                            adds r5, r1, #0
008b7670  00 2b                                            cmp r3, #0
008b7672  13 d1                                            bne #0x8b769c
008b7674  2f 23                                            movs r3, #0x2f
008b7676  e3 5c                                            ldrb r3, [r4, r3]
008b7678  00 2b                                            cmp r3, #0
008b767a  0d d0                                            beq #0x8b7698
008b767c  32 23                                            movs r3, #0x32
008b767e  e2 5c                                            ldrb r2, [r4, r3]
008b7680  00 2a                                            cmp r2, #0
008b7682  09 d0                                            beq #0x8b7698
008b7684  62 6e                                            ldr r2, [r4, #0x64]
008b7686  e0 6d                                            ldr r0, [r4, #0x5c]
008b7688  21 6e                                            ldr r1, [r4, #0x60]
008b768a  e2 60                                            str r2, [r4, #0xc]
008b768c  00 22                                            movs r2, #0
008b768e  60 60                                            str r0, [r4, #4]
008b7690  a1 60                                            str r1, [r4, #8]
008b7692  01 20                                            movs r0, #1
008b7694  e2 54                                            strb r2, [r4, r3]
008b7696  00 e0                                            b #0x8b769a
008b7698  01 20                                            movs r0, #1
008b769a  70 bd                                            pop {r4, r5, r6, pc}
008b769c  03 68                                            ldr r3, [r0]
008b769e  01 21                                            movs r1, #1
008b76a0  49 42                                            rsbs r1, r1, #0
008b76a2  5b 6b                                            ldr r3, [r3, #0x34]
008b76a4  98 47                                            blx r3
008b76a6  01 30                                            adds r0, #1
008b76a8  43 1e                                            subs r3, r0, #1
008b76aa  98 41                                            sbcs r0, r3
008b76ac  00 2d                                            cmp r5, #0
008b76ae  0c d0                                            beq #0x8b76ca
008b76b0  00 28                                            cmp r0, #0
008b76b2  0d d1                                            bne #0x8b76d0
008b76b4  00 23                                            movs r3, #0
008b76b6  30 22                                            movs r2, #0x30
008b76b8  a3 54                                            strb r3, [r4, r2]
008b76ba  01 21                                            movs r1, #1
008b76bc  31 22                                            movs r2, #0x31
008b76be  a1 54                                            strb r1, [r4, r2]
008b76c0  00 20                                            movs r0, #0
008b76c2  23 61                                            str r3, [r4, #0x10]
008b76c4  63 61                                            str r3, [r4, #0x14]
008b76c6  a3 61                                            str r3, [r4, #0x18]
008b76c8  e7 e7                                            b #0x8b769a
008b76ca  00 28                                            cmp r0, #0
008b76cc  d2 d1                                            bne #0x8b7674
008b76ce  f1 e7                                            b #0x8b76b4
008b76d0  20 1c                                            adds r0, r4, #0
008b76d2  ff f7 8f ff                                      bl #0x8b75f4
008b76d6  00 28                                            cmp r0, #0
008b76d8  cc d1                                            bne #0x8b7674
008b76da  eb e7                                            b #0x8b76b4

; FUNCTION 0x008b78fc, declared_size=8, range_size=8, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE9underflowEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::underflow()
; decoder-mode: thumb
008b78fc  10 b5                                            push {r4, lr}
008b78fe  06 f0 c3 fa                                      bl #0x8bde88
008b7902  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b7904, declared_size=84, range_size=84, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE9showmanycEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::showmanyc()
; decoder-mode: thumb
008b7904  70 b5                                            push {r4, r5, r6, lr}
008b7906  28 23                                            movs r3, #0x28
008b7908  c3 5c                                            ldrb r3, [r0, r3]
008b790a  04 1c                                            adds r4, r0, #0
008b790c  00 2b                                            cmp r3, #0
008b790e  02 d1                                            bne #0x8b7916
008b7910  01 20                                            movs r0, #1
008b7912  40 42                                            rsbs r0, r0, #0
008b7914  70 bd                                            pop {r4, r5, r6, pc}
008b7916  03 8e                                            ldrh r3, [r0, #0x30]
008b7918  00 2b                                            cmp r3, #0
008b791a  f9 d1                                            bne #0x8b7910
008b791c  32 23                                            movs r3, #0x32
008b791e  c3 5c                                            ldrb r3, [r0, r3]
008b7920  00 2b                                            cmp r3, #0
008b7922  15 d1                                            bne #0x8b7950
008b7924  2c 23                                            movs r3, #0x2c
008b7926  e3 5c                                            ldrb r3, [r4, r3]
008b7928  00 20                                            movs r0, #0
008b792a  00 2b                                            cmp r3, #0
008b792c  f2 d0                                            beq #0x8b7914
008b792e  20 34                                            adds r4, #0x20
008b7930  20 1c                                            adds r0, r4, #0
008b7932  00 21                                            movs r1, #0
008b7934  02 22                                            movs r2, #2
008b7936  06 f0 c1 f9                                      bl #0x8bdcbc
008b793a  05 1c                                            adds r5, r0, #0
008b793c  20 1c                                            adds r0, r4, #0
008b793e  06 f0 a1 f9                                      bl #0x8bdc84
008b7942  85 42                                            cmp r5, r0
008b7944  02 da                                            bge #0x8b794c
008b7946  40 1b                                            subs r0, r0, r5
008b7948  00 2d                                            cmp r5, #0
008b794a  e3 da                                            bge #0x8b7914
008b794c  00 20                                            movs r0, #0
008b794e  e1 e7                                            b #0x8b7914
008b7950  e0 68                                            ldr r0, [r4, #0xc]
008b7952  a3 68                                            ldr r3, [r4, #8]
008b7954  c0 1a                                            subs r0, r0, r3
008b7956  dd e7                                            b #0x8b7914

; FUNCTION 0x008b79b0, declared_size=88, range_size=88, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE14_M_seek_returnEl9mbstate_t
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_seek_return(long, mbstate_t)
; decoder-mode: thumb
008b79b0  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b79b2  05 1c                                            adds r5, r0, #0
008b79b4  0c 1c                                            adds r4, r1, #0
008b79b6  16 1c                                            adds r6, r2, #0
008b79b8  1f 1c                                            adds r7, r3, #0
008b79ba  53 1c                                            adds r3, r2, #1
008b79bc  20 d0                                            beq #0x8b7a00
008b79be  2f 23                                            movs r3, #0x2f
008b79c0  cb 5c                                            ldrb r3, [r1, r3]
008b79c2  00 2b                                            cmp r3, #0
008b79c4  0d d0                                            beq #0x8b79e2
008b79c6  49 6d                                            ldr r1, [r1, #0x54]
008b79c8  00 29                                            cmp r1, #0
008b79ca  07 d0                                            beq #0x8b79dc
008b79cc  20 1c                                            adds r0, r4, #0
008b79ce  20 30                                            adds r0, #0x20
008b79d0  a2 6d                                            ldr r2, [r4, #0x58]
008b79d2  06 f0 17 f8                                      bl #0x8bda04
008b79d6  00 23                                            movs r3, #0
008b79d8  63 65                                            str r3, [r4, #0x54]
008b79da  a3 65                                            str r3, [r4, #0x58]
008b79dc  00 22                                            movs r2, #0
008b79de  2f 23                                            movs r3, #0x2f
008b79e0  e2 54                                            strb r2, [r4, r3]
008b79e2  00 23                                            movs r3, #0
008b79e4  2f 22                                            movs r2, #0x2f
008b79e6  a3 54                                            strb r3, [r4, r2]
008b79e8  30 22                                            movs r2, #0x30
008b79ea  a3 54                                            strb r3, [r4, r2]
008b79ec  32 22                                            movs r2, #0x32
008b79ee  a3 54                                            strb r3, [r4, r2]
008b79f0  31 22                                            movs r2, #0x31
008b79f2  a3 54                                            strb r3, [r4, r2]
008b79f4  63 60                                            str r3, [r4, #4]
008b79f6  a3 60                                            str r3, [r4, #8]
008b79f8  e3 60                                            str r3, [r4, #0xc]
008b79fa  23 61                                            str r3, [r4, #0x10]
008b79fc  63 61                                            str r3, [r4, #0x14]
008b79fe  a3 61                                            str r3, [r4, #0x18]
008b7a00  2e 60                                            str r6, [r5]
008b7a02  6f 60                                            str r7, [r5, #4]
008b7a04  28 1c                                            adds r0, r5, #0
008b7a06  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}

; FUNCTION 0x008b7a08, declared_size=98, range_size=98, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE7seekposESt4fposI9mbstate_tEi
; demangled: std::basic_filebuf<char, std::char_traits<char> >::seekpos(std::fpos<mbstate_t>, int)
; decoder-mode: thumb
008b7a08  f0 b5                                            push {r4, r5, r6, r7, lr}
008b7a0a  83 b0                                            sub sp, #0xc
008b7a0c  01 93                                            str r3, [sp, #4]
008b7a0e  00 92                                            str r2, [sp]
008b7a10  1f 1c                                            adds r7, r3, #0
008b7a12  28 23                                            movs r3, #0x28
008b7a14  cb 5c                                            ldrb r3, [r1, r3]
008b7a16  04 1c                                            adds r4, r0, #0
008b7a18  0d 1c                                            adds r5, r1, #0
008b7a1a  16 1c                                            adds r6, r2, #0
008b7a1c  00 2b                                            cmp r3, #0
008b7a1e  07 d1                                            bne #0x8b7a30
008b7a20  01 23                                            movs r3, #1
008b7a22  5b 42                                            rsbs r3, r3, #0
008b7a24  23 60                                            str r3, [r4]
008b7a26  00 23                                            movs r3, #0
008b7a28  63 60                                            str r3, [r4, #4]
008b7a2a  03 b0                                            add sp, #0xc
008b7a2c  20 1c                                            adds r0, r4, #0
008b7a2e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b7a30  08 1c                                            adds r0, r1, #0
008b7a32  01 21                                            movs r1, #1
008b7a34  ff f7 14 fe                                      bl #0x8b7660
008b7a38  00 28                                            cmp r0, #0
008b7a3a  11 d0                                            beq #0x8b7a60
008b7a3c  73 1c                                            adds r3, r6, #1
008b7a3e  ef d0                                            beq #0x8b7a20
008b7a40  28 1c                                            adds r0, r5, #0
008b7a42  20 30                                            adds r0, #0x20
008b7a44  31 1c                                            adds r1, r6, #0
008b7a46  01 22                                            movs r2, #1
008b7a48  06 f0 38 f9                                      bl #0x8bdcbc
008b7a4c  01 30                                            adds r0, #1
008b7a4e  e7 d0                                            beq #0x8b7a20
008b7a50  ef 64                                            str r7, [r5, #0x4c]
008b7a52  20 1c                                            adds r0, r4, #0
008b7a54  29 1c                                            adds r1, r5, #0
008b7a56  32 1c                                            adds r2, r6, #0
008b7a58  3b 1c                                            adds r3, r7, #0
008b7a5a  ff f7 a9 ff                                      bl #0x8b79b0
008b7a5e  e4 e7                                            b #0x8b7a2a
008b7a60  01 23                                            movs r3, #1
008b7a62  5b 42                                            rsbs r3, r3, #0
008b7a64  23 60                                            str r3, [r4]
008b7a66  60 60                                            str r0, [r4, #4]
008b7a68  df e7                                            b #0x8b7a2a

; FUNCTION 0x008b7a6c, declared_size=312, range_size=312, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE7seekoffElii
; demangled: std::basic_filebuf<char, std::char_traits<char> >::seekoff(long, int, int)
; decoder-mode: thumb
008b7a6c  f0 b5                                            push {r4, r5, r6, r7, lr}
008b7a6e  1f 1c                                            adds r7, r3, #0
008b7a70  28 23                                            movs r3, #0x28
008b7a72  cb 5c                                            ldrb r3, [r1, r3]
008b7a74  85 b0                                            sub sp, #0x14
008b7a76  04 1c                                            adds r4, r0, #0
008b7a78  0d 1c                                            adds r5, r1, #0
008b7a7a  16 1c                                            adds r6, r2, #0
008b7a7c  00 2b                                            cmp r3, #0
008b7a7e  33 d0                                            beq #0x8b7ae8
008b7a80  13 1c                                            adds r3, r2, #0
008b7a82  5a 1e                                            subs r2, r3, #1
008b7a84  93 41                                            sbcs r3, r2
008b7a86  00 2b                                            cmp r3, #0
008b7a88  23 d1                                            bne #0x8b7ad2
008b7a8a  b9 1e                                            subs r1, r7, #2
008b7a8c  4a 1e                                            subs r2, r1, #1
008b7a8e  91 41                                            sbcs r1, r2
008b7a90  19 43                                            orrs r1, r3
008b7a92  28 1c                                            adds r0, r5, #0
008b7a94  ff f7 e4 fd                                      bl #0x8b7660
008b7a98  00 28                                            cmp r0, #0
008b7a9a  2a d0                                            beq #0x8b7af2
008b7a9c  04 2f                                            cmp r7, #4
008b7a9e  2d d0                                            beq #0x8b7afc
008b7aa0  01 2f                                            cmp r7, #1
008b7aa2  2b d0                                            beq #0x8b7afc
008b7aa4  2f 23                                            movs r3, #0x2f
008b7aa6  eb 5c                                            ldrb r3, [r5, r3]
008b7aa8  00 2b                                            cmp r3, #0
008b7aaa  27 d0                                            beq #0x8b7afc
008b7aac  6b 6d                                            ldr r3, [r5, #0x54]
008b7aae  00 2b                                            cmp r3, #0
008b7ab0  33 d0                                            beq #0x8b7b1a
008b7ab2  af 6d                                            ldr r7, [r5, #0x58]
008b7ab4  aa 68                                            ldr r2, [r5, #8]
008b7ab6  df 19                                            adds r7, r3, r7
008b7ab8  bf 1a                                            subs r7, r7, r2
008b7aba  00 2e                                            cmp r6, #0
008b7abc  40 d1                                            bne #0x8b7b40
008b7abe  28 1c                                            adds r0, r5, #0
008b7ac0  20 30                                            adds r0, #0x20
008b7ac2  00 21                                            movs r1, #0
008b7ac4  02 22                                            movs r2, #2
008b7ac6  06 f0 f9 f8                                      bl #0x8bdcbc
008b7aca  c7 1b                                            subs r7, r0, r7
008b7acc  27 60                                            str r7, [r4]
008b7ace  66 60                                            str r6, [r4, #4]
008b7ad0  07 e0                                            b #0x8b7ae2
008b7ad2  2c 22                                            movs r2, #0x2c
008b7ad4  8a 5c                                            ldrb r2, [r1, r2]
008b7ad6  00 2a                                            cmp r2, #0
008b7ad8  d7 d1                                            bne #0x8b7a8a
008b7ada  01 23                                            movs r3, #1
008b7adc  5b 42                                            rsbs r3, r3, #0
008b7ade  03 60                                            str r3, [r0]
008b7ae0  42 60                                            str r2, [r0, #4]
008b7ae2  05 b0                                            add sp, #0x14
008b7ae4  20 1c                                            adds r0, r4, #0
008b7ae6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b7ae8  01 22                                            movs r2, #1
008b7aea  52 42                                            rsbs r2, r2, #0
008b7aec  02 60                                            str r2, [r0]
008b7aee  43 60                                            str r3, [r0, #4]
008b7af0  f7 e7                                            b #0x8b7ae2
008b7af2  01 23                                            movs r3, #1
008b7af4  5b 42                                            rsbs r3, r3, #0
008b7af6  23 60                                            str r3, [r4]
008b7af8  60 60                                            str r0, [r4, #4]
008b7afa  f2 e7                                            b #0x8b7ae2
008b7afc  eb 6e                                            ldr r3, [r5, #0x6c]
008b7afe  28 1c                                            adds r0, r5, #0
008b7b00  20 30                                            adds r0, #0x20
008b7b02  19 1c                                            adds r1, r3, #0
008b7b04  71 43                                            muls r1, r6, r1
008b7b06  3a 1c                                            adds r2, r7, #0
008b7b08  06 f0 d8 f8                                      bl #0x8bdcbc
008b7b0c  29 1c                                            adds r1, r5, #0
008b7b0e  02 1c                                            adds r2, r0, #0
008b7b10  00 23                                            movs r3, #0
008b7b12  20 1c                                            adds r0, r4, #0
008b7b14  ff f7 4c ff                                      bl #0x8b79b0
008b7b18  e3 e7                                            b #0x8b7ae2
008b7b1a  2c 23                                            movs r3, #0x2c
008b7b1c  eb 5c                                            ldrb r3, [r5, r3]
008b7b1e  00 2b                                            cmp r3, #0
008b7b20  19 d0                                            beq #0x8b7b56
008b7b22  aa 68                                            ldr r2, [r5, #8]
008b7b24  6b 68                                            ldr r3, [r5, #4]
008b7b26  e9 6e                                            ldr r1, [r5, #0x6c]
008b7b28  ef 6b                                            ldr r7, [r5, #0x3c]
008b7b2a  d3 1a                                            subs r3, r2, r3
008b7b2c  0a 1c                                            adds r2, r1, #0
008b7b2e  5a 43                                            muls r2, r3, r2
008b7b30  ab 6c                                            ldr r3, [r5, #0x48]
008b7b32  d9 1b                                            subs r1, r3, r7
008b7b34  8a 42                                            cmp r2, r1
008b7b36  08 dc                                            bgt #0x8b7b4a
008b7b38  bf 18                                            adds r7, r7, r2
008b7b3a  df 1b                                            subs r7, r3, r7
008b7b3c  00 2e                                            cmp r6, #0
008b7b3e  be d0                                            beq #0x8b7abe
008b7b40  28 1c                                            adds r0, r5, #0
008b7b42  20 30                                            adds r0, #0x20
008b7b44  f1 1b                                            subs r1, r6, r7
008b7b46  02 22                                            movs r2, #2
008b7b48  de e7                                            b #0x8b7b08
008b7b4a  01 23                                            movs r3, #1
008b7b4c  5b 42                                            rsbs r3, r3, #0
008b7b4e  23 60                                            str r3, [r4]
008b7b50  00 23                                            movs r3, #0
008b7b52  63 60                                            str r3, [r4, #4]
008b7b54  c5 e7                                            b #0x8b7ae2
008b7b56  6b 68                                            ldr r3, [r5, #4]
008b7b58  af 68                                            ldr r7, [r5, #8]
008b7b5a  a8 6e                                            ldr r0, [r5, #0x68]
008b7b5c  ea 6b                                            ldr r2, [r5, #0x3c]
008b7b5e  ff 1a                                            subs r7, r7, r3
008b7b60  eb 6c                                            ldr r3, [r5, #0x4c]
008b7b62  03 93                                            str r3, [sp, #0xc]
008b7b64  01 68                                            ldr r1, [r0]
008b7b66  00 97                                            str r7, [sp]
008b7b68  6b 6c                                            ldr r3, [r5, #0x44]
008b7b6a  cf 69                                            ldr r7, [r1, #0x1c]
008b7b6c  03 a9                                            add r1, sp, #0xc
008b7b6e  b8 47                                            blx r7
008b7b70  07 1c                                            adds r7, r0, #0
008b7b72  28 1c                                            adds r0, r5, #0
008b7b74  02 22                                            movs r2, #2
008b7b76  20 30                                            adds r0, #0x20
008b7b78  00 21                                            movs r1, #0
008b7b7a  06 f0 9f f8                                      bl #0x8bdcbc
008b7b7e  eb 6b                                            ldr r3, [r5, #0x3c]
008b7b80  aa 6c                                            ldr r2, [r5, #0x48]
008b7b82  41 1c                                            adds r1, r0, #1
008b7b84  e1 d0                                            beq #0x8b7b4a
008b7b86  80 1a                                            subs r0, r0, r2
008b7b88  df 19                                            adds r7, r3, r7
008b7b8a  c2 19                                            adds r2, r0, r7
008b7b8c  dd d4                                            bmi #0x8b7b4a
008b7b8e  00 2e                                            cmp r6, #0
008b7b90  02 d1                                            bne #0x8b7b98
008b7b92  22 60                                            str r2, [r4]
008b7b94  66 60                                            str r6, [r4, #4]
008b7b96  a4 e7                                            b #0x8b7ae2
008b7b98  20 1c                                            adds r0, r4, #0
008b7b9a  29 1c                                            adds r1, r5, #0
008b7b9c  03 9b                                            ldr r3, [sp, #0xc]
008b7b9e  ff f7 07 ff                                      bl #0x8b79b0
008b7ba2  9e e7                                            b #0x8b7ae2

; FUNCTION 0x008b7dc0, declared_size=168, range_size=168, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::close()
; decoder-mode: thumb
008b7dc0  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b7dc2  28 23                                            movs r3, #0x28
008b7dc4  c5 5c                                            ldrb r5, [r0, r3]
008b7dc6  04 1c                                            adds r4, r0, #0
008b7dc8  6b 1e                                            subs r3, r5, #1
008b7dca  9d 41                                            sbcs r5, r3
008b7dcc  30 23                                            movs r3, #0x30
008b7dce  c7 5c                                            ldrb r7, [r0, r3]
008b7dd0  00 2f                                            cmp r7, #0
008b7dd2  2b d0                                            beq #0x8b7e2c
008b7dd4  00 2d                                            cmp r5, #0
008b7dd6  3c d1                                            bne #0x8b7e52
008b7dd8  20 1c                                            adds r0, r4, #0
008b7dda  ff f7 0b fc                                      bl #0x8b75f4
008b7dde  26 1c                                            adds r6, r4, #0
008b7de0  20 36                                            adds r6, #0x20
008b7de2  30 1c                                            adds r0, r6, #0
008b7de4  05 f0 f8 fe                                      bl #0x8bdbd8
008b7de8  32 22                                            movs r2, #0x32
008b7dea  43 1e                                            subs r3, r0, #1
008b7dec  98 41                                            sbcs r0, r3
008b7dee  00 23                                            movs r3, #0
008b7df0  23 65                                            str r3, [r4, #0x50]
008b7df2  e3 64                                            str r3, [r4, #0x4c]
008b7df4  a3 64                                            str r3, [r4, #0x48]
008b7df6  63 64                                            str r3, [r4, #0x44]
008b7df8  63 65                                            str r3, [r4, #0x54]
008b7dfa  a3 65                                            str r3, [r4, #0x58]
008b7dfc  63 60                                            str r3, [r4, #4]
008b7dfe  a3 60                                            str r3, [r4, #8]
008b7e00  e3 60                                            str r3, [r4, #0xc]
008b7e02  23 61                                            str r3, [r4, #0x10]
008b7e04  63 61                                            str r3, [r4, #0x14]
008b7e06  a3 61                                            str r3, [r4, #0x18]
008b7e08  63 66                                            str r3, [r4, #0x64]
008b7e0a  23 66                                            str r3, [r4, #0x60]
008b7e0c  e3 65                                            str r3, [r4, #0x5c]
008b7e0e  a3 54                                            strb r3, [r4, r2]
008b7e10  31 22                                            movs r2, #0x31
008b7e12  a3 54                                            strb r3, [r4, r2]
008b7e14  40 42                                            rsbs r0, r0, #0
008b7e16  30 22                                            movs r2, #0x30
008b7e18  a3 54                                            strb r3, [r4, r2]
008b7e1a  05 40                                            ands r5, r0
008b7e1c  2f 22                                            movs r2, #0x2f
008b7e1e  a3 54                                            strb r3, [r4, r2]
008b7e20  6b 1e                                            subs r3, r5, #1
008b7e22  9d 41                                            sbcs r5, r3
008b7e24  6d 42                                            rsbs r5, r5, #0
008b7e26  2c 40                                            ands r4, r5
008b7e28  20 1c                                            adds r0, r4, #0
008b7e2a  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b7e2c  2f 23                                            movs r3, #0x2f
008b7e2e  c3 5c                                            ldrb r3, [r0, r3]
008b7e30  06 1c                                            adds r6, r0, #0
008b7e32  20 36                                            adds r6, #0x20
008b7e34  00 2b                                            cmp r3, #0
008b7e36  d4 d0                                            beq #0x8b7de2
008b7e38  41 6d                                            ldr r1, [r0, #0x54]
008b7e3a  00 29                                            cmp r1, #0
008b7e3c  05 d0                                            beq #0x8b7e4a
008b7e3e  82 6d                                            ldr r2, [r0, #0x58]
008b7e40  30 1c                                            adds r0, r6, #0
008b7e42  05 f0 df fd                                      bl #0x8bda04
008b7e46  67 65                                            str r7, [r4, #0x54]
008b7e48  a7 65                                            str r7, [r4, #0x58]
008b7e4a  00 22                                            movs r2, #0
008b7e4c  2f 23                                            movs r3, #0x2f
008b7e4e  e2 54                                            strb r2, [r4, r3]
008b7e50  c7 e7                                            b #0x8b7de2
008b7e52  03 68                                            ldr r3, [r0]
008b7e54  01 21                                            movs r1, #1
008b7e56  49 42                                            rsbs r1, r1, #0
008b7e58  5b 6b                                            ldr r3, [r3, #0x34]
008b7e5a  98 47                                            blx r3
008b7e5c  01 30                                            adds r0, #1
008b7e5e  43 1e                                            subs r3, r0, #1
008b7e60  98 41                                            sbcs r0, r3
008b7e62  40 42                                            rsbs r0, r0, #0
008b7e64  05 40                                            ands r5, r0
008b7e66  b7 e7                                            b #0x8b7dd8

; FUNCTION 0x008b7e68, declared_size=60, range_size=60, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
; demangled: std::basic_filebuf<char, std::char_traits<char> >::~basic_filebuf()
; decoder-mode: thumb
008b7e68  70 b5                                            push {r4, r5, r6, lr}
008b7e6a  0b 4d                                            ldr r5, [pc, #0x2c]
008b7e6c  0b 4b                                            ldr r3, [pc, #0x2c]
008b7e6e  04 1c                                            adds r4, r0, #0
008b7e70  7d 44                                            add r5, pc
008b7e72  eb 58                                            ldr r3, [r5, r3]
008b7e74  08 33                                            adds r3, #8
008b7e76  03 60                                            str r3, [r0]
008b7e78  ff f7 a2 ff                                      bl #0x8b7dc0
008b7e7c  20 1c                                            adds r0, r4, #0
008b7e7e  ff f7 a9 f9                                      bl #0x8b71d4
008b7e82  07 4b                                            ldr r3, [pc, #0x1c]
008b7e84  20 1c                                            adds r0, r4, #0
008b7e86  1c 30                                            adds r0, #0x1c
008b7e88  eb 58                                            ldr r3, [r5, r3]
008b7e8a  08 33                                            adds r3, #8
008b7e8c  23 60                                            str r3, [r4]
008b7e8e  eb f7 31 fb                                      bl #0x8a34f4
008b7e92  20 1c                                            adds r0, r4, #0
008b7e94  70 bd                                            pop {r4, r5, r6, pc}
008b7e96  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b7e98  24 cc 0d 00 0c 14 00 00 b4 07 00 00              .byte 0x24, 0xcc, 0x0d, 0x00, 0x0c, 0x14, 0x00, 0x00, 0xb4, 0x07, 0x00, 0x00

; FUNCTION 0x008b7ea4, declared_size=18, range_size=18, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEED0Ev
; demangled: std::basic_filebuf<char, std::char_traits<char> >::~basic_filebuf()
; decoder-mode: thumb
008b7ea4  10 b5                                            push {r4, lr}
008b7ea6  04 1c                                            adds r4, r0, #0
008b7ea8  ff f7 de ff                                      bl #0x8b7e68
008b7eac  20 1c                                            adds r0, r4, #0
008b7eae  56 f6 00 e2                                      blx #0x30e2b0
008b7eb2  20 1c                                            adds r0, r4, #0
008b7eb4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b7f98, declared_size=128, range_size=128, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_setup_codecvtERKSt6localeb
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_setup_codecvt(std::locale const&, bool)
; decoder-mode: thumb
008b7f98  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b7f9a  1d 4b                                            ldr r3, [pc, #0x74]
008b7f9c  17 1c                                            adds r7, r2, #0
008b7f9e  1d 4a                                            ldr r2, [pc, #0x74]
008b7fa0  7b 44                                            add r3, pc
008b7fa2  04 1c                                            adds r4, r0, #0
008b7fa4  9d 58                                            ldr r5, [r3, r2]
008b7fa6  0e 1c                                            adds r6, r1, #0
008b7fa8  08 1c                                            adds r0, r1, #0
008b7faa  29 1c                                            adds r1, r5, #0
008b7fac  eb f7 8a fa                                      bl #0x8a34c4
008b7fb0  00 28                                            cmp r0, #0
008b7fb2  1e d0                                            beq #0x8b7ff2
008b7fb4  29 1c                                            adds r1, r5, #0
008b7fb6  30 1c                                            adds r0, r6, #0
008b7fb8  eb f7 fa fa                                      bl #0x8a35b0
008b7fbc  a0 66                                            str r0, [r4, #0x68]
008b7fbe  03 68                                            ldr r3, [r0]
008b7fc0  5b 69                                            ldr r3, [r3, #0x14]
008b7fc2  98 47                                            blx r3
008b7fc4  01 23                                            movs r3, #1
008b7fc6  05 1c                                            adds r5, r0, #0
008b7fc8  00 28                                            cmp r0, #0
008b7fca  00 dd                                            ble #0x8b7fce
008b7fcc  03 1c                                            adds r3, r0, #0
008b7fce  a0 6e                                            ldr r0, [r4, #0x68]
008b7fd0  e3 66                                            str r3, [r4, #0x6c]
008b7fd2  03 68                                            ldr r3, [r0]
008b7fd4  1b 6a                                            ldr r3, [r3, #0x20]
008b7fd6  98 47                                            blx r3
008b7fd8  eb 17                                            asrs r3, r5, #0x1f
008b7fda  5d 1b                                            subs r5, r3, r5
008b7fdc  ed 0f                                            lsrs r5, r5, #0x1f
008b7fde  2c 23                                            movs r3, #0x2c
008b7fe0  20 67                                            str r0, [r4, #0x70]
008b7fe2  e5 54                                            strb r5, [r4, r3]
008b7fe4  a0 6e                                            ldr r0, [r4, #0x68]
008b7fe6  03 68                                            ldr r3, [r0]
008b7fe8  9b 69                                            ldr r3, [r3, #0x18]
008b7fea  98 47                                            blx r3
008b7fec  2d 23                                            movs r3, #0x2d
008b7fee  e0 54                                            strb r0, [r4, r3]
008b7ff0  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b7ff2  01 23                                            movs r3, #1
008b7ff4  23 67                                            str r3, [r4, #0x70]
008b7ff6  e3 66                                            str r3, [r4, #0x6c]
008b7ff8  2d 23                                            movs r3, #0x2d
008b7ffa  a0 66                                            str r0, [r4, #0x68]
008b7ffc  e0 54                                            strb r0, [r4, r3]
008b7ffe  2c 23                                            movs r3, #0x2c
008b8000  e0 54                                            strb r0, [r4, r3]
008b8002  00 2f                                            cmp r7, #0
008b8004  f4 d0                                            beq #0x8b7ff0
008b8006  30 1c                                            adds r0, r6, #0
008b8008  29 1c                                            adds r1, r5, #0
008b800a  eb f7 d1 fa                                      bl #0x8a35b0
008b800e  ef e7                                            b #0x8b7ff0
; mapping-symbol data/literal pool
008b8010  f4 ca 0d 00 98 41 00 00                          .byte 0xf4, 0xca, 0x0d, 0x00, 0x98, 0x41, 0x00, 0x00

; FUNCTION 0x008b8018, declared_size=160, range_size=160, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
; demangled: std::basic_filebuf<char, std::char_traits<char> >::basic_filebuf()
; decoder-mode: thumb
008b8018  70 b5                                            push {r4, r5, r6, lr}
008b801a  24 4e                                            ldr r6, [pc, #0x90]
008b801c  24 4b                                            ldr r3, [pc, #0x90]
008b801e  00 25                                            movs r5, #0
008b8020  7e 44                                            add r6, pc
008b8022  f3 58                                            ldr r3, [r6, r3]
008b8024  04 1c                                            adds r4, r0, #0
008b8026  82 b0                                            sub sp, #8
008b8028  08 33                                            adds r3, #8
008b802a  03 60                                            str r3, [r0]
008b802c  45 60                                            str r5, [r0, #4]
008b802e  85 60                                            str r5, [r0, #8]
008b8030  c5 60                                            str r5, [r0, #0xc]
008b8032  05 61                                            str r5, [r0, #0x10]
008b8034  45 61                                            str r5, [r0, #0x14]
008b8036  85 61                                            str r5, [r0, #0x18]
008b8038  1c 30                                            adds r0, #0x1c
008b803a  eb f7 a1 fa                                      bl #0x8a3580
008b803e  1d 4b                                            ldr r3, [pc, #0x74]
008b8040  20 1c                                            adds r0, r4, #0
008b8042  20 30                                            adds r0, #0x20
008b8044  f3 58                                            ldr r3, [r6, r3]
008b8046  08 33                                            adds r3, #8
008b8048  23 60                                            str r3, [r4]
008b804a  05 f0 d3 fc                                      bl #0x8bd9f4
008b804e  2c 23                                            movs r3, #0x2c
008b8050  e5 54                                            strb r5, [r4, r3]
008b8052  2d 23                                            movs r3, #0x2d
008b8054  e5 54                                            strb r5, [r4, r3]
008b8056  2e 23                                            movs r3, #0x2e
008b8058  e5 54                                            strb r5, [r4, r3]
008b805a  2f 23                                            movs r3, #0x2f
008b805c  e5 54                                            strb r5, [r4, r3]
008b805e  30 23                                            movs r3, #0x30
008b8060  e5 54                                            strb r5, [r4, r3]
008b8062  31 23                                            movs r3, #0x31
008b8064  e5 54                                            strb r5, [r4, r3]
008b8066  32 23                                            movs r3, #0x32
008b8068  e5 54                                            strb r5, [r4, r3]
008b806a  01 23                                            movs r3, #1
008b806c  65 63                                            str r5, [r4, #0x34]
008b806e  a5 63                                            str r5, [r4, #0x38]
008b8070  e5 63                                            str r5, [r4, #0x3c]
008b8072  25 64                                            str r5, [r4, #0x40]
008b8074  65 64                                            str r5, [r4, #0x44]
008b8076  a5 64                                            str r5, [r4, #0x48]
008b8078  e5 64                                            str r5, [r4, #0x4c]
008b807a  25 65                                            str r5, [r4, #0x50]
008b807c  65 65                                            str r5, [r4, #0x54]
008b807e  a5 65                                            str r5, [r4, #0x58]
008b8080  e5 65                                            str r5, [r4, #0x5c]
008b8082  25 66                                            str r5, [r4, #0x60]
008b8084  65 66                                            str r5, [r4, #0x64]
008b8086  a5 66                                            str r5, [r4, #0x68]
008b8088  01 ad                                            add r5, sp, #4
008b808a  e3 66                                            str r3, [r4, #0x6c]
008b808c  23 67                                            str r3, [r4, #0x70]
008b808e  28 1c                                            adds r0, r5, #0
008b8090  eb f7 76 fa                                      bl #0x8a3580
008b8094  29 1c                                            adds r1, r5, #0
008b8096  20 1c                                            adds r0, r4, #0
008b8098  00 22                                            movs r2, #0
008b809a  ff f7 7d ff                                      bl #0x8b7f98
008b809e  28 1c                                            adds r0, r5, #0
008b80a0  eb f7 28 fa                                      bl #0x8a34f4
008b80a4  02 b0                                            add sp, #8
008b80a6  20 1c                                            adds r0, r4, #0
008b80a8  70 bd                                            pop {r4, r5, r6, pc}
008b80aa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b80ac  74 ca 0d 00 b4 07 00 00 0c 14 00 00              .byte 0x74, 0xca, 0x0d, 0x00, 0xb4, 0x07, 0x00, 0x00, 0x0c, 0x14, 0x00, 0x00

; FUNCTION 0x008b80b8, declared_size=26, range_size=26, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE5imbueERKSt6locale
; demangled: std::basic_filebuf<char, std::char_traits<char> >::imbue(std::locale const&)
; decoder-mode: thumb
008b80b8  10 b5                                            push {r4, lr}
008b80ba  2f 23                                            movs r3, #0x2f
008b80bc  c3 5c                                            ldrb r3, [r0, r3]
008b80be  00 2b                                            cmp r3, #0
008b80c0  02 d1                                            bne #0x8b80c8
008b80c2  03 8e                                            ldrh r3, [r0, #0x30]
008b80c4  00 2b                                            cmp r3, #0
008b80c6  00 d0                                            beq #0x8b80ca
008b80c8  10 bd                                            pop {r4, pc}
008b80ca  01 22                                            movs r2, #1
008b80cc  ff f7 64 ff                                      bl #0x8b7f98
008b80d0  fa e7                                            b #0x8b80c8

; FUNCTION 0x008bda98, declared_size=318, range_size=318, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_underflow_auxEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_underflow_aux()
; decoder-mode: thumb
008bda98  f0 b5                                            push {r4, r5, r6, r7, lr}
008bda9a  5f 46                                            mov r7, fp
008bda9c  56 46                                            mov r6, sl
008bda9e  4d 46                                            mov r5, sb
008bdaa0  44 46                                            mov r4, r8
008bdaa2  f0 b4                                            push {r4, r5, r6, r7}
008bdaa4  03 6d                                            ldr r3, [r0, #0x50]
008bdaa6  85 6c                                            ldr r5, [r0, #0x48]
008bdaa8  89 b0                                            sub sp, #0x24
008bdaaa  c3 64                                            str r3, [r0, #0x4c]
008bdaac  43 6c                                            ldr r3, [r0, #0x44]
008bdaae  04 1c                                            adds r4, r0, #0
008bdab0  9d 42                                            cmp r5, r3
008bdab2  60 d9                                            bls #0x8bdb76
008bdab4  c0 6b                                            ldr r0, [r0, #0x3c]
008bdab6  ed 1a                                            subs r5, r5, r3
008bdab8  01 1c                                            adds r1, r0, #0
008bdaba  00 2d                                            cmp r5, #0
008bdabc  63 d1                                            bne #0x8bdb86
008bdabe  23 1c                                            adds r3, r4, #0
008bdac0  26 1c                                            adds r6, r4, #0
008bdac2  20 33                                            adds r3, #0x20
008bdac4  50 36                                            adds r6, #0x50
008bdac6  05 93                                            str r3, [sp, #0x14]
008bdac8  04 96                                            str r6, [sp, #0x10]
008bdaca  07 af                                            add r7, sp, #0x1c
008bdacc  06 ab                                            add r3, sp, #0x18
008bdace  2c 26                                            movs r6, #0x2c
008bdad0  a1 64                                            str r1, [r4, #0x48]
008bdad2  b8 46                                            mov r8, r7
008bdad4  99 46                                            mov sb, r3
008bdad6  b2 46                                            mov sl, r6
008bdad8  22 6c                                            ldr r2, [r4, #0x40]
008bdada  05 98                                            ldr r0, [sp, #0x14]
008bdadc  52 1a                                            subs r2, r2, r1
008bdade  ff f7 d5 ff                                      bl #0x8bda8c
008bdae2  05 1e                                            subs r5, r0, #0
008bdae4  6d db                                            blt #0x8bdbc2
008bdae6  a3 6c                                            ldr r3, [r4, #0x48]
008bdae8  e2 6b                                            ldr r2, [r4, #0x3c]
008bdaea  5b 19                                            adds r3, r3, r5
008bdaec  a3 64                                            str r3, [r4, #0x48]
008bdaee  93 42                                            cmp r3, r2
008bdaf0  67 d0                                            beq #0x8bdbc2
008bdaf2  a0 6e                                            ldr r0, [r4, #0x68]
008bdaf4  47 46                                            mov r7, r8
008bdaf6  66 6b                                            ldr r6, [r4, #0x34]
008bdaf8  01 68                                            ldr r1, [r0]
008bdafa  00 97                                            str r7, [sp]
008bdafc  a7 6b                                            ldr r7, [r4, #0x38]
008bdafe  01 96                                            str r6, [sp, #4]
008bdb00  4e 46                                            mov r6, sb
008bdb02  02 97                                            str r7, [sp, #8]
008bdb04  03 96                                            str r6, [sp, #0xc]
008bdb06  c9 68                                            ldr r1, [r1, #0xc]
008bdb08  8c 46                                            mov ip, r1
008bdb0a  04 99                                            ldr r1, [sp, #0x10]
008bdb0c  e0 47                                            blx ip
008bdb0e  03 28                                            cmp r0, #3
008bdb10  59 d0                                            beq #0x8bdbc6
008bdb12  02 28                                            cmp r0, #2
008bdb14  3d d0                                            beq #0x8bdb92
008bdb16  63 6b                                            ldr r3, [r4, #0x34]
008bdb18  06 9a                                            ldr r2, [sp, #0x18]
008bdb1a  93 42                                            cmp r3, r2
008bdb1c  21 d0                                            beq #0x8bdb62
008bdb1e  e1 6b                                            ldr r1, [r4, #0x3c]
008bdb20  07 98                                            ldr r0, [sp, #0x1c]
008bdb22  81 42                                            cmp r1, r0
008bdb24  35 d0                                            beq #0x8bdb92
008bdb26  57 46                                            mov r7, sl
008bdb28  e7 5d                                            ldrb r7, [r4, r7]
008bdb2a  46 1a                                            subs r6, r0, r1
008bdb2c  b4 46                                            mov ip, r6
008bdb2e  00 2f                                            cmp r7, #0
008bdb30  08 d0                                            beq #0x8bdb44
008bdb32  d7 1a                                            subs r7, r2, r3
008bdb34  bb 46                                            mov fp, r7
008bdb36  e7 6e                                            ldr r7, [r4, #0x6c]
008bdb38  40 1a                                            subs r0, r0, r1
008bdb3a  5e 46                                            mov r6, fp
008bdb3c  7e 43                                            muls r6, r7, r6
008bdb3e  b4 46                                            mov ip, r6
008bdb40  84 45                                            cmp ip, r0
008bdb42  26 d1                                            bne #0x8bdb92
008bdb44  93 42                                            cmp r3, r2
008bdb46  0f d0                                            beq #0x8bdb68
008bdb48  61 44                                            add r1, ip
008bdb4a  61 64                                            str r1, [r4, #0x44]
008bdb4c  63 60                                            str r3, [r4, #4]
008bdb4e  a3 60                                            str r3, [r4, #8]
008bdb50  e2 60                                            str r2, [r4, #0xc]
008bdb52  18 78                                            ldrb r0, [r3]
008bdb54  09 b0                                            add sp, #0x24
008bdb56  3c bc                                            pop {r2, r3, r4, r5}
008bdb58  90 46                                            mov r8, r2
008bdb5a  99 46                                            mov sb, r3
008bdb5c  a2 46                                            mov sl, r4
008bdb5e  ab 46                                            mov fp, r5
008bdb60  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bdb62  07 98                                            ldr r0, [sp, #0x1c]
008bdb64  e1 6b                                            ldr r1, [r4, #0x3c]
008bdb66  de e7                                            b #0x8bdb26
008bdb68  23 6f                                            ldr r3, [r4, #0x70]
008bdb6a  63 45                                            cmp r3, ip
008bdb6c  11 dd                                            ble #0x8bdb92
008bdb6e  00 2d                                            cmp r5, #0
008bdb70  03 d0                                            beq #0x8bdb7a
008bdb72  a1 6c                                            ldr r1, [r4, #0x48]
008bdb74  b0 e7                                            b #0x8bdad8
008bdb76  c1 6b                                            ldr r1, [r0, #0x3c]
008bdb78  a1 e7                                            b #0x8bdabe
008bdb7a  01 20                                            movs r0, #1
008bdb7c  65 60                                            str r5, [r4, #4]
008bdb7e  a5 60                                            str r5, [r4, #8]
008bdb80  e5 60                                            str r5, [r4, #0xc]
008bdb82  40 42                                            rsbs r0, r0, #0
008bdb84  e6 e7                                            b #0x8bdb54
008bdb86  19 1c                                            adds r1, r3, #0
008bdb88  2a 1c                                            adds r2, r5, #0
008bdb8a  50 f6 d6 e1                                      blx #0x30df38
008bdb8e  41 19                                            adds r1, r0, r5
008bdb90  95 e7                                            b #0x8bdabe
008bdb92  61 6d                                            ldr r1, [r4, #0x54]
008bdb94  00 29                                            cmp r1, #0
008bdb96  06 d0                                            beq #0x8bdba6
008bdb98  a2 6d                                            ldr r2, [r4, #0x58]
008bdb9a  05 98                                            ldr r0, [sp, #0x14]
008bdb9c  ff f7 32 ff                                      bl #0x8bda04
008bdba0  00 23                                            movs r3, #0
008bdba2  63 65                                            str r3, [r4, #0x54]
008bdba4  a3 65                                            str r3, [r4, #0x58]
008bdba6  00 23                                            movs r3, #0
008bdba8  2f 22                                            movs r2, #0x2f
008bdbaa  a3 54                                            strb r3, [r4, r2]
008bdbac  30 22                                            movs r2, #0x30
008bdbae  a3 54                                            strb r3, [r4, r2]
008bdbb0  01 21                                            movs r1, #1
008bdbb2  31 22                                            movs r2, #0x31
008bdbb4  a1 54                                            strb r1, [r4, r2]
008bdbb6  01 20                                            movs r0, #1
008bdbb8  63 60                                            str r3, [r4, #4]
008bdbba  a3 60                                            str r3, [r4, #8]
008bdbbc  e3 60                                            str r3, [r4, #0xc]
008bdbbe  40 42                                            rsbs r0, r0, #0
008bdbc0  c8 e7                                            b #0x8bdb54
008bdbc2  00 23                                            movs r3, #0
008bdbc4  f7 e7                                            b #0x8bdbb6
008bdbc6  e3 6b                                            ldr r3, [r4, #0x3c]
008bdbc8  a2 6c                                            ldr r2, [r4, #0x48]
008bdbca  63 60                                            str r3, [r4, #4]
008bdbcc  62 64                                            str r2, [r4, #0x44]
008bdbce  a3 60                                            str r3, [r4, #8]
008bdbd0  e2 60                                            str r2, [r4, #0xc]
008bdbd2  18 78                                            ldrb r0, [r3]
008bdbd4  be e7                                            b #0x8bdb54

; FUNCTION 0x008bdddc, declared_size=172, range_size=172, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >
; alias: _ZNSt13basic_filebufIcSt11char_traitsIcEE23_M_switch_to_input_modeEv
; demangled: std::basic_filebuf<char, std::char_traits<char> >::_M_switch_to_input_mode()
; decoder-mode: thumb
008bdddc  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008bddde  28 22                                            movs r2, #0x28
008bdde0  26 4b                                            ldr r3, [pc, #0x98]
008bdde2  82 5c                                            ldrb r2, [r0, r2]
008bdde4  04 1c                                            adds r4, r0, #0
008bdde6  7b 44                                            add r3, pc
008bdde8  00 2a                                            cmp r2, #0
008bddea  01 d1                                            bne #0x8bddf0
008bddec  00 20                                            movs r0, #0
008bddee  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008bddf0  42 6a                                            ldr r2, [r0, #0x24]
008bddf2  11 07                                            lsls r1, r2, #0x1c
008bddf4  fa d5                                            bpl #0x8bddec
008bddf6  02 8e                                            ldrh r2, [r0, #0x30]
008bddf8  00 2a                                            cmp r2, #0
008bddfa  f7 d1                                            bne #0x8bddec
008bddfc  45 6b                                            ldr r5, [r0, #0x34]
008bddfe  00 2d                                            cmp r5, #0
008bde00  0a d0                                            beq #0x8bde18
008bde02  c3 6b                                            ldr r3, [r0, #0x3c]
008bde04  18 1c                                            adds r0, r3, #0
008bde06  a3 64                                            str r3, [r4, #0x48]
008bde08  e3 6c                                            ldr r3, [r4, #0x4c]
008bde0a  01 22                                            movs r2, #1
008bde0c  60 64                                            str r0, [r4, #0x44]
008bde0e  23 65                                            str r3, [r4, #0x50]
008bde10  2f 23                                            movs r3, #0x2f
008bde12  e2 54                                            strb r2, [r4, r3]
008bde14  01 20                                            movs r0, #1
008bde16  ea e7                                            b #0x8bddee
008bde18  19 4a                                            ldr r2, [pc, #0x64]
008bde1a  9b 58                                            ldr r3, [r3, r2]
008bde1c  1e 68                                            ldr r6, [r3]
008bde1e  19 4b                                            ldr r3, [pc, #0x64]
008bde20  31 1c                                            adds r1, r6, #0
008bde22  f0 18                                            adds r0, r6, r3
008bde24  50 f6 12 e7                                      blx #0x30ec4c
008bde28  37 1c                                            adds r7, r6, #0
008bde2a  47 43                                            muls r7, r0, r7
008bde2c  38 1c                                            adds r0, r7, #0
008bde2e  50 f6 62 e4                                      blx #0x30e6f4
008bde32  60 63                                            str r0, [r4, #0x34]
008bde34  00 28                                            cmp r0, #0
008bde36  d9 d0                                            beq #0x8bddec
008bde38  01 22                                            movs r2, #1
008bde3a  2e 23                                            movs r3, #0x2e
008bde3c  e2 54                                            strb r2, [r4, r3]
008bde3e  e3 6e                                            ldr r3, [r4, #0x6c]
008bde40  a0 6e                                            ldr r0, [r4, #0x68]
008bde42  1e 1c                                            adds r6, r3, #0
008bde44  7e 43                                            muls r6, r7, r6
008bde46  03 68                                            ldr r3, [r0]
008bde48  1b 6a                                            ldr r3, [r3, #0x20]
008bde4a  98 47                                            blx r3
008bde4c  e5 63                                            str r5, [r4, #0x3c]
008bde4e  05 1c                                            adds r5, r0, #0
008bde50  b0 42                                            cmp r0, r6
008bde52  00 da                                            bge #0x8bde56
008bde54  35 1c                                            adds r5, r6, #0
008bde56  28 1c                                            adds r0, r5, #0
008bde58  50 f6 4c e4                                      blx #0x30e6f4
008bde5c  e0 63                                            str r0, [r4, #0x3c]
008bde5e  00 28                                            cmp r0, #0
008bde60  06 d0                                            beq #0x8bde70
008bde62  63 6b                                            ldr r3, [r4, #0x34]
008bde64  45 19                                            adds r5, r0, r5
008bde66  25 64                                            str r5, [r4, #0x40]
008bde68  df 19                                            adds r7, r3, r7
008bde6a  a7 63                                            str r7, [r4, #0x38]
008bde6c  03 1c                                            adds r3, r0, #0
008bde6e  ca e7                                            b #0x8bde06
008bde70  20 1c                                            adds r0, r4, #0
008bde72  f9 f7 af f9                                      bl #0x8b71d4
008bde76  00 20                                            movs r0, #0
008bde78  b9 e7                                            b #0x8bddee
008bde7a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bde7c  ae 6c 0d 00 00 1a 00 00 ff 0f 00 00              .byte 0xae, 0x6c, 0x0d, 0x00, 0x00, 0x1a, 0x00, 0x00, 0xff, 0x0f, 0x00, 0x00
