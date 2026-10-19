; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b57a8, declared_size=40, range_size=40, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNKSt12ctype_bynameIcE10do_tolowerEPcPKc
; demangled: std::ctype_byname<char>::do_tolower(char*, char const*) const
; decoder-mode: thumb
008b57a8  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b57aa  17 1c                                            adds r7, r2, #0
008b57ac  05 1c                                            adds r5, r0, #0
008b57ae  0c 1c                                            adds r4, r1, #0
008b57b0  08 1c                                            adds r0, r1, #0
008b57b2  b9 42                                            cmp r1, r7
008b57b4  09 d0                                            beq #0x8b57ca
008b57b6  05 4e                                            ldr r6, [pc, #0x14]
008b57b8  21 78                                            ldrb r1, [r4]
008b57ba  a8 59                                            ldr r0, [r5, r6]
008b57bc  01 f0 34 f9                                      bl #0x8b6a28
008b57c0  20 70                                            strb r0, [r4]
008b57c2  01 34                                            adds r4, #1
008b57c4  bc 42                                            cmp r4, r7
008b57c6  f7 d1                                            bne #0x8b57b8
008b57c8  20 1c                                            adds r0, r4, #0
008b57ca  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008b57cc  14 04 00 00                                      .byte 0x14, 0x04, 0x00, 0x00

; FUNCTION 0x008b57d0, declared_size=20, range_size=20, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNKSt12ctype_bynameIcE10do_tolowerEc
; demangled: std::ctype_byname<char>::do_tolower(char) const
; decoder-mode: thumb
008b57d0  10 b5                                            push {r4, lr}
008b57d2  03 4b                                            ldr r3, [pc, #0xc]
008b57d4  c0 58                                            ldr r0, [r0, r3]
008b57d6  01 f0 27 f9                                      bl #0x8b6a28
008b57da  00 06                                            lsls r0, r0, #0x18
008b57dc  00 0e                                            lsrs r0, r0, #0x18
008b57de  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b57e0  14 04 00 00                                      .byte 0x14, 0x04, 0x00, 0x00

; FUNCTION 0x008b57e4, declared_size=40, range_size=40, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNKSt12ctype_bynameIcE10do_toupperEPcPKc
; demangled: std::ctype_byname<char>::do_toupper(char*, char const*) const
; decoder-mode: thumb
008b57e4  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b57e6  17 1c                                            adds r7, r2, #0
008b57e8  05 1c                                            adds r5, r0, #0
008b57ea  0c 1c                                            adds r4, r1, #0
008b57ec  08 1c                                            adds r0, r1, #0
008b57ee  b9 42                                            cmp r1, r7
008b57f0  09 d0                                            beq #0x8b5806
008b57f2  05 4e                                            ldr r6, [pc, #0x14]
008b57f4  21 78                                            ldrb r1, [r4]
008b57f6  a8 59                                            ldr r0, [r5, r6]
008b57f8  01 f0 06 f9                                      bl #0x8b6a08
008b57fc  20 70                                            strb r0, [r4]
008b57fe  01 34                                            adds r4, #1
008b5800  bc 42                                            cmp r4, r7
008b5802  f7 d1                                            bne #0x8b57f4
008b5804  20 1c                                            adds r0, r4, #0
008b5806  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008b5808  14 04 00 00                                      .byte 0x14, 0x04, 0x00, 0x00

; FUNCTION 0x008b580c, declared_size=20, range_size=20, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNKSt12ctype_bynameIcE10do_toupperEc
; demangled: std::ctype_byname<char>::do_toupper(char) const
; decoder-mode: thumb
008b580c  10 b5                                            push {r4, lr}
008b580e  03 4b                                            ldr r3, [pc, #0xc]
008b5810  c0 58                                            ldr r0, [r0, r3]
008b5812  01 f0 f9 f8                                      bl #0x8b6a08
008b5816  00 06                                            lsls r0, r0, #0x18
008b5818  00 0e                                            lsrs r0, r0, #0x18
008b581a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b581c  14 04 00 00                                      .byte 0x14, 0x04, 0x00, 0x00

; FUNCTION 0x008b5820, declared_size=48, range_size=48, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNSt12ctype_bynameIcED1Ev
; demangled: std::ctype_byname<char>::~ctype_byname()
; decoder-mode: thumb
008b5820  10 b5                                            push {r4, lr}
008b5822  08 4b                                            ldr r3, [pc, #0x20]
008b5824  08 4a                                            ldr r2, [pc, #0x20]
008b5826  04 1c                                            adds r4, r0, #0
008b5828  7b 44                                            add r3, pc
008b582a  9a 58                                            ldr r2, [r3, r2]
008b582c  07 4b                                            ldr r3, [pc, #0x1c]
008b582e  08 32                                            adds r2, #8
008b5830  02 60                                            str r2, [r0]
008b5832  c0 58                                            ldr r0, [r0, r3]
008b5834  fe f7 aa fa                                      bl #0x8b3d8c
008b5838  20 1c                                            adds r0, r4, #0
008b583a  ed f7 df fd                                      bl #0x8a33fc
008b583e  20 1c                                            adds r0, r4, #0
008b5840  10 bd                                            pop {r4, pc}
008b5842  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5844  6c f2 0d 00 58 48 00 00 14 04 00 00              .byte 0x6c, 0xf2, 0x0d, 0x00, 0x58, 0x48, 0x00, 0x00, 0x14, 0x04, 0x00, 0x00

; FUNCTION 0x008b5850, declared_size=18, range_size=18, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNSt12ctype_bynameIcED0Ev
; demangled: std::ctype_byname<char>::~ctype_byname()
; decoder-mode: thumb
008b5850  10 b5                                            push {r4, lr}
008b5852  04 1c                                            adds r4, r0, #0
008b5854  ff f7 e4 ff                                      bl #0x8b5820
008b5858  20 1c                                            adds r0, r4, #0
008b585a  58 f6 2a e5                                      blx #0x30e2b0
008b585e  20 1c                                            adds r0, r4, #0
008b5860  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b5864, declared_size=48, range_size=48, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNSt12ctype_bynameIcED2Ev
; demangled: std::ctype_byname<char>::~ctype_byname()
; decoder-mode: thumb
008b5864  10 b5                                            push {r4, lr}
008b5866  08 4b                                            ldr r3, [pc, #0x20]
008b5868  08 4a                                            ldr r2, [pc, #0x20]
008b586a  04 1c                                            adds r4, r0, #0
008b586c  7b 44                                            add r3, pc
008b586e  9a 58                                            ldr r2, [r3, r2]
008b5870  07 4b                                            ldr r3, [pc, #0x1c]
008b5872  08 32                                            adds r2, #8
008b5874  02 60                                            str r2, [r0]
008b5876  c0 58                                            ldr r0, [r0, r3]
008b5878  fe f7 88 fa                                      bl #0x8b3d8c
008b587c  20 1c                                            adds r0, r4, #0
008b587e  ed f7 bd fd                                      bl #0x8a33fc
008b5882  20 1c                                            adds r0, r4, #0
008b5884  10 bd                                            pop {r4, pc}
008b5886  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5888  28 f2 0d 00 58 48 00 00 14 04 00 00              .byte 0x28, 0xf2, 0x0d, 0x00, 0x58, 0x48, 0x00, 0x00, 0x14, 0x04, 0x00, 0x00

; FUNCTION 0x008b5894, declared_size=44, range_size=44, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNSt12ctype_bynameIcE7_M_initEv
; demangled: std::ctype_byname<char>::_M_init()
; decoder-mode: thumb
008b5894  10 b5                                            push {r4, lr}
008b5896  03 1c                                            adds r3, r0, #0
008b5898  14 33                                            adds r3, #0x14
008b589a  c3 60                                            str r3, [r0, #0xc]
008b589c  07 4b                                            ldr r3, [pc, #0x1c]
008b589e  04 1c                                            adds r4, r0, #0
008b58a0  c0 58                                            ldr r0, [r0, r3]
008b58a2  01 f0 ab f8                                      bl #0x8b69fc
008b58a6  80 21                                            movs r1, #0x80
008b58a8  00 23                                            movs r3, #0
008b58aa  89 00                                            lsls r1, r1, #2
008b58ac  c2 5a                                            ldrh r2, [r0, r3]
008b58ae  02 33                                            adds r3, #2
008b58b0  62 61                                            str r2, [r4, #0x14]
008b58b2  04 34                                            adds r4, #4
008b58b4  8b 42                                            cmp r3, r1
008b58b6  f9 d1                                            bne #0x8b58ac
008b58b8  10 bd                                            pop {r4, pc}
008b58ba  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b58bc  14 04 00 00                                      .byte 0x14, 0x04, 0x00, 0x00

; FUNCTION 0x008b58c0, declared_size=132, range_size=132, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNSt12ctype_bynameIcEC1EPKcj
; demangled: std::ctype_byname<char>::ctype_byname(char const*, unsigned int)
; decoder-mode: thumb
008b58c0  70 b5                                            push {r4, r5, r6, lr}
008b58c2  1b 4c                                            ldr r4, [pc, #0x6c]
008b58c4  1b 4e                                            ldr r6, [pc, #0x6c]
008b58c6  13 1c                                            adds r3, r2, #0
008b58c8  7c 44                                            add r4, pc
008b58ca  a2 59                                            ldr r2, [r4, r6]
008b58cc  c4 b0                                            sub sp, #0x110
008b58ce  01 91                                            str r1, [sp, #4]
008b58d0  12 68                                            ldr r2, [r2]
008b58d2  00 21                                            movs r1, #0
008b58d4  05 1c                                            adds r5, r0, #0
008b58d6  43 92                                            str r2, [sp, #0x10c]
008b58d8  00 22                                            movs r2, #0
008b58da  ed f7 cd fd                                      bl #0x8a3478
008b58de  16 4b                                            ldr r3, [pc, #0x58]
008b58e0  e3 58                                            ldr r3, [r4, r3]
008b58e2  08 33                                            adds r3, #8
008b58e4  2b 60                                            str r3, [r5]
008b58e6  01 9b                                            ldr r3, [sp, #4]
008b58e8  00 2b                                            cmp r3, #0
008b58ea  14 d0                                            beq #0x8b5916
008b58ec  02 ab                                            add r3, sp, #8
008b58ee  01 a8                                            add r0, sp, #4
008b58f0  03 a9                                            add r1, sp, #0xc
008b58f2  00 22                                            movs r2, #0
008b58f4  fe f7 bc fc                                      bl #0x8b4270
008b58f8  10 4b                                            ldr r3, [pc, #0x40]
008b58fa  e8 50                                            str r0, [r5, r3]
008b58fc  00 28                                            cmp r0, #0
008b58fe  0d d0                                            beq #0x8b591c
008b5900  28 1c                                            adds r0, r5, #0
008b5902  ff f7 c7 ff                                      bl #0x8b5894
008b5906  a3 59                                            ldr r3, [r4, r6]
008b5908  43 9a                                            ldr r2, [sp, #0x10c]
008b590a  28 1c                                            adds r0, r5, #0
008b590c  1b 68                                            ldr r3, [r3]
008b590e  9a 42                                            cmp r2, r3
008b5910  0b d1                                            bne #0x8b592a
008b5912  44 b0                                            add sp, #0x110
008b5914  70 bd                                            pop {r4, r5, r6, pc}
008b5916  ed f7 d3 fd                                      bl #0x8a34c0
008b591a  e7 e7                                            b #0x8b58ec
008b591c  08 4a                                            ldr r2, [pc, #0x20]
008b591e  02 98                                            ldr r0, [sp, #8]
008b5920  01 99                                            ldr r1, [sp, #4]
008b5922  7a 44                                            add r2, pc
008b5924  ee f7 54 ff                                      bl #0x8a47d0
008b5928  ea e7                                            b #0x8b5900
008b592a  58 f6 f2 e4                                      blx #0x30e310
008b592e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5930  cc f1 0d 00 ac 40 00 00 58 48 00 00 14 04 00 00  .byte 0xcc, 0xf1, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x48, 0x00, 0x00, 0x14, 0x04, 0x00, 0x00
008b5940  fe 02 06 00                                      .byte 0xfe, 0x02, 0x06, 0x00

; FUNCTION 0x008b5944, declared_size=132, range_size=132, mode=thumb
; class-group: std::ctype_byname<char>
; alias: _ZNSt12ctype_bynameIcEC2EPKcj
; demangled: std::ctype_byname<char>::ctype_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5944  70 b5                                            push {r4, r5, r6, lr}
008b5946  1b 4c                                            ldr r4, [pc, #0x6c]
008b5948  1b 4e                                            ldr r6, [pc, #0x6c]
008b594a  13 1c                                            adds r3, r2, #0
008b594c  7c 44                                            add r4, pc
008b594e  a2 59                                            ldr r2, [r4, r6]
008b5950  c4 b0                                            sub sp, #0x110
008b5952  01 91                                            str r1, [sp, #4]
008b5954  12 68                                            ldr r2, [r2]
008b5956  00 21                                            movs r1, #0
008b5958  05 1c                                            adds r5, r0, #0
008b595a  43 92                                            str r2, [sp, #0x10c]
008b595c  00 22                                            movs r2, #0
008b595e  ed f7 8b fd                                      bl #0x8a3478
008b5962  16 4b                                            ldr r3, [pc, #0x58]
008b5964  e3 58                                            ldr r3, [r4, r3]
008b5966  08 33                                            adds r3, #8
008b5968  2b 60                                            str r3, [r5]
008b596a  01 9b                                            ldr r3, [sp, #4]
008b596c  00 2b                                            cmp r3, #0
008b596e  14 d0                                            beq #0x8b599a
008b5970  02 ab                                            add r3, sp, #8
008b5972  01 a8                                            add r0, sp, #4
008b5974  03 a9                                            add r1, sp, #0xc
008b5976  00 22                                            movs r2, #0
008b5978  fe f7 7a fc                                      bl #0x8b4270
008b597c  10 4b                                            ldr r3, [pc, #0x40]
008b597e  e8 50                                            str r0, [r5, r3]
008b5980  00 28                                            cmp r0, #0
008b5982  0d d0                                            beq #0x8b59a0
008b5984  28 1c                                            adds r0, r5, #0
008b5986  ff f7 85 ff                                      bl #0x8b5894
008b598a  a3 59                                            ldr r3, [r4, r6]
008b598c  43 9a                                            ldr r2, [sp, #0x10c]
008b598e  28 1c                                            adds r0, r5, #0
008b5990  1b 68                                            ldr r3, [r3]
008b5992  9a 42                                            cmp r2, r3
008b5994  0b d1                                            bne #0x8b59ae
008b5996  44 b0                                            add sp, #0x110
008b5998  70 bd                                            pop {r4, r5, r6, pc}
008b599a  ed f7 91 fd                                      bl #0x8a34c0
008b599e  e7 e7                                            b #0x8b5970
008b59a0  08 4a                                            ldr r2, [pc, #0x20]
008b59a2  02 98                                            ldr r0, [sp, #8]
008b59a4  01 99                                            ldr r1, [sp, #4]
008b59a6  7a 44                                            add r2, pc
008b59a8  ee f7 12 ff                                      bl #0x8a47d0
008b59ac  ea e7                                            b #0x8b5984
008b59ae  58 f6 b0 e4                                      blx #0x30e310
008b59b2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b59b4  48 f1 0d 00 ac 40 00 00 58 48 00 00 14 04 00 00  .byte 0x48, 0xf1, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x48, 0x00, 0x00, 0x14, 0x04, 0x00, 0x00
008b59c4  7a 02 06 00                                      .byte 0x7a, 0x02, 0x06, 0x00
