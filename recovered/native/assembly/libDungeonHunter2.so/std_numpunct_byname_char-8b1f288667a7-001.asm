; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b4ee0, declared_size=48, range_size=48, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNKSt15numpunct_bynameIcE11do_groupingEv
; demangled: std::numpunct_byname<char>::do_grouping() const
; decoder-mode: thumb
008b4ee0  10 b5                                            push {r4, lr}
008b4ee2  04 1c                                            adds r4, r0, #0
008b4ee4  82 b0                                            sub sp, #8
008b4ee6  c8 68                                            ldr r0, [r1, #0xc]
008b4ee8  01 f0 c4 fd                                      bl #0x8b6a74
008b4eec  01 1e                                            subs r1, r0, #0
008b4eee  02 d0                                            beq #0x8b4ef6
008b4ef0  0b 78                                            ldrb r3, [r1]
008b4ef2  ff 2b                                            cmp r3, #0xff
008b4ef4  06 d0                                            beq #0x8b4f04
008b4ef6  01 aa                                            add r2, sp, #4
008b4ef8  20 1c                                            adds r0, r4, #0
008b4efa  5f f6 f8 e0                                      blx #0x3140ec
008b4efe  02 b0                                            add sp, #8
008b4f00  20 1c                                            adds r0, r4, #0
008b4f02  10 bd                                            pop {r4, pc}
008b4f04  01 49                                            ldr r1, [pc, #4]
008b4f06  79 44                                            add r1, pc
008b4f08  f5 e7                                            b #0x8b4ef6
008b4f0a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b4f0c  0e 09 06 00                                      .byte 0x0e, 0x09, 0x06, 0x00

; FUNCTION 0x008b4f8c, declared_size=28, range_size=28, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNKSt15numpunct_bynameIcE12do_falsenameEv
; demangled: std::numpunct_byname<char>::do_falsename() const
; decoder-mode: thumb
008b4f8c  10 b5                                            push {r4, lr}
008b4f8e  82 b0                                            sub sp, #8
008b4f90  04 1c                                            adds r4, r0, #0
008b4f92  c8 68                                            ldr r0, [r1, #0xc]
008b4f94  01 f0 7a fd                                      bl #0x8b6a8c
008b4f98  01 aa                                            add r2, sp, #4
008b4f9a  01 1c                                            adds r1, r0, #0
008b4f9c  20 1c                                            adds r0, r4, #0
008b4f9e  5f f6 a6 e0                                      blx #0x3140ec
008b4fa2  02 b0                                            add sp, #8
008b4fa4  20 1c                                            adds r0, r4, #0
008b4fa6  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4fa8, declared_size=28, range_size=28, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNKSt15numpunct_bynameIcE11do_truenameEv
; demangled: std::numpunct_byname<char>::do_truename() const
; decoder-mode: thumb
008b4fa8  10 b5                                            push {r4, lr}
008b4faa  82 b0                                            sub sp, #8
008b4fac  04 1c                                            adds r4, r0, #0
008b4fae  c8 68                                            ldr r0, [r1, #0xc]
008b4fb0  01 f0 66 fd                                      bl #0x8b6a80
008b4fb4  01 aa                                            add r2, sp, #4
008b4fb6  01 1c                                            adds r1, r0, #0
008b4fb8  20 1c                                            adds r0, r4, #0
008b4fba  5f f6 98 e0                                      blx #0x3140ec
008b4fbe  02 b0                                            add sp, #8
008b4fc0  20 1c                                            adds r0, r4, #0
008b4fc2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4fc4, declared_size=10, range_size=10, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNKSt15numpunct_bynameIcE16do_thousands_sepEv
; demangled: std::numpunct_byname<char>::do_thousands_sep() const
; decoder-mode: thumb
008b4fc4  10 b5                                            push {r4, lr}
008b4fc6  c0 68                                            ldr r0, [r0, #0xc]
008b4fc8  01 f0 52 fd                                      bl #0x8b6a70
008b4fcc  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4fd0, declared_size=10, range_size=10, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNKSt15numpunct_bynameIcE16do_decimal_pointEv
; demangled: std::numpunct_byname<char>::do_decimal_point() const
; decoder-mode: thumb
008b4fd0  10 b5                                            push {r4, lr}
008b4fd2  c0 68                                            ldr r0, [r0, #0xc]
008b4fd4  01 f0 4a fd                                      bl #0x8b6a6c
008b4fd8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4fdc, declared_size=40, range_size=40, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNSt15numpunct_bynameIcED1Ev
; demangled: std::numpunct_byname<char>::~numpunct_byname()
; decoder-mode: thumb
008b4fdc  10 b5                                            push {r4, lr}
008b4fde  07 4b                                            ldr r3, [pc, #0x1c]
008b4fe0  07 4a                                            ldr r2, [pc, #0x1c]
008b4fe2  04 1c                                            adds r4, r0, #0
008b4fe4  7b 44                                            add r3, pc
008b4fe6  9a 58                                            ldr r2, [r3, r2]
008b4fe8  08 32                                            adds r2, #8
008b4fea  02 60                                            str r2, [r0]
008b4fec  c0 68                                            ldr r0, [r0, #0xc]
008b4fee  fe f7 a9 fe                                      bl #0x8b3d44
008b4ff2  20 1c                                            adds r0, r4, #0
008b4ff4  06 f0 2a f9                                      bl #0x8bb24c
008b4ff8  20 1c                                            adds r0, r4, #0
008b4ffa  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b4ffc  b0 fa 0d 00 b0 4a 00 00                          .byte 0xb0, 0xfa, 0x0d, 0x00, 0xb0, 0x4a, 0x00, 0x00

; FUNCTION 0x008b5004, declared_size=18, range_size=18, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNSt15numpunct_bynameIcED0Ev
; demangled: std::numpunct_byname<char>::~numpunct_byname()
; decoder-mode: thumb
008b5004  10 b5                                            push {r4, lr}
008b5006  04 1c                                            adds r4, r0, #0
008b5008  ff f7 e8 ff                                      bl #0x8b4fdc
008b500c  20 1c                                            adds r0, r4, #0
008b500e  59 f6 50 e1                                      blx #0x30e2b0
008b5012  20 1c                                            adds r0, r4, #0
008b5014  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b5018, declared_size=40, range_size=40, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNSt15numpunct_bynameIcED2Ev
; demangled: std::numpunct_byname<char>::~numpunct_byname()
; decoder-mode: thumb
008b5018  10 b5                                            push {r4, lr}
008b501a  07 4b                                            ldr r3, [pc, #0x1c]
008b501c  07 4a                                            ldr r2, [pc, #0x1c]
008b501e  04 1c                                            adds r4, r0, #0
008b5020  7b 44                                            add r3, pc
008b5022  9a 58                                            ldr r2, [r3, r2]
008b5024  08 32                                            adds r2, #8
008b5026  02 60                                            str r2, [r0]
008b5028  c0 68                                            ldr r0, [r0, #0xc]
008b502a  fe f7 8b fe                                      bl #0x8b3d44
008b502e  20 1c                                            adds r0, r4, #0
008b5030  06 f0 0c f9                                      bl #0x8bb24c
008b5034  20 1c                                            adds r0, r4, #0
008b5036  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b5038  74 fa 0d 00 b0 4a 00 00                          .byte 0x74, 0xfa, 0x0d, 0x00, 0xb0, 0x4a, 0x00, 0x00

; FUNCTION 0x008b5b3c, declared_size=124, range_size=124, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNSt15numpunct_bynameIcEC1EPKcj
; demangled: std::numpunct_byname<char>::numpunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5b3c  70 b5                                            push {r4, r5, r6, lr}
008b5b3e  1a 4c                                            ldr r4, [pc, #0x68]
008b5b40  1a 4e                                            ldr r6, [pc, #0x68]
008b5b42  c4 b0                                            sub sp, #0x110
008b5b44  7c 44                                            add r4, pc
008b5b46  a3 59                                            ldr r3, [r4, r6]
008b5b48  01 91                                            str r1, [sp, #4]
008b5b4a  05 1c                                            adds r5, r0, #0
008b5b4c  1b 68                                            ldr r3, [r3]
008b5b4e  00 21                                            movs r1, #0
008b5b50  43 93                                            str r3, [sp, #0x10c]
008b5b52  53 1e                                            subs r3, r2, #1
008b5b54  9a 41                                            sbcs r2, r3
008b5b56  42 60                                            str r2, [r0, #4]
008b5b58  08 30                                            adds r0, #8
008b5b5a  58 f6 2a e2                                      blx #0x30dfb0
008b5b5e  14 4b                                            ldr r3, [pc, #0x50]
008b5b60  e3 58                                            ldr r3, [r4, r3]
008b5b62  08 33                                            adds r3, #8
008b5b64  2b 60                                            str r3, [r5]
008b5b66  01 9b                                            ldr r3, [sp, #4]
008b5b68  00 2b                                            cmp r3, #0
008b5b6a  17 d0                                            beq #0x8b5b9c
008b5b6c  01 a8                                            add r0, sp, #4
008b5b6e  03 a9                                            add r1, sp, #0xc
008b5b70  00 22                                            movs r2, #0
008b5b72  02 ab                                            add r3, sp, #8
008b5b74  fe f7 3c fb                                      bl #0x8b41f0
008b5b78  e8 60                                            str r0, [r5, #0xc]
008b5b7a  00 28                                            cmp r0, #0
008b5b7c  07 d0                                            beq #0x8b5b8e
008b5b7e  a3 59                                            ldr r3, [r4, r6]
008b5b80  43 9a                                            ldr r2, [sp, #0x10c]
008b5b82  28 1c                                            adds r0, r5, #0
008b5b84  1b 68                                            ldr r3, [r3]
008b5b86  9a 42                                            cmp r2, r3
008b5b88  0b d1                                            bne #0x8b5ba2
008b5b8a  44 b0                                            add sp, #0x110
008b5b8c  70 bd                                            pop {r4, r5, r6, pc}
008b5b8e  09 4a                                            ldr r2, [pc, #0x24]
008b5b90  02 98                                            ldr r0, [sp, #8]
008b5b92  01 99                                            ldr r1, [sp, #4]
008b5b94  7a 44                                            add r2, pc
008b5b96  ee f7 1b fe                                      bl #0x8a47d0
008b5b9a  f0 e7                                            b #0x8b5b7e
008b5b9c  ed f7 90 fc                                      bl #0x8a34c0
008b5ba0  e4 e7                                            b #0x8b5b6c
008b5ba2  58 f6 b6 e3                                      blx #0x30e310
008b5ba6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5ba8  50 ef 0d 00 ac 40 00 00 b0 4a 00 00 80 00 06 00  .byte 0x50, 0xef, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb0, 0x4a, 0x00, 0x00, 0x80, 0x00, 0x06, 0x00

; FUNCTION 0x008b5bb8, declared_size=124, range_size=124, mode=thumb
; class-group: std::numpunct_byname<char>
; alias: _ZNSt15numpunct_bynameIcEC2EPKcj
; demangled: std::numpunct_byname<char>::numpunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5bb8  70 b5                                            push {r4, r5, r6, lr}
008b5bba  1a 4c                                            ldr r4, [pc, #0x68]
008b5bbc  1a 4e                                            ldr r6, [pc, #0x68]
008b5bbe  c4 b0                                            sub sp, #0x110
008b5bc0  7c 44                                            add r4, pc
008b5bc2  a3 59                                            ldr r3, [r4, r6]
008b5bc4  01 91                                            str r1, [sp, #4]
008b5bc6  05 1c                                            adds r5, r0, #0
008b5bc8  1b 68                                            ldr r3, [r3]
008b5bca  00 21                                            movs r1, #0
008b5bcc  43 93                                            str r3, [sp, #0x10c]
008b5bce  53 1e                                            subs r3, r2, #1
008b5bd0  9a 41                                            sbcs r2, r3
008b5bd2  42 60                                            str r2, [r0, #4]
008b5bd4  08 30                                            adds r0, #8
008b5bd6  58 f6 ec e1                                      blx #0x30dfb0
008b5bda  14 4b                                            ldr r3, [pc, #0x50]
008b5bdc  e3 58                                            ldr r3, [r4, r3]
008b5bde  08 33                                            adds r3, #8
008b5be0  2b 60                                            str r3, [r5]
008b5be2  01 9b                                            ldr r3, [sp, #4]
008b5be4  00 2b                                            cmp r3, #0
008b5be6  17 d0                                            beq #0x8b5c18
008b5be8  01 a8                                            add r0, sp, #4
008b5bea  03 a9                                            add r1, sp, #0xc
008b5bec  00 22                                            movs r2, #0
008b5bee  02 ab                                            add r3, sp, #8
008b5bf0  fe f7 fe fa                                      bl #0x8b41f0
008b5bf4  e8 60                                            str r0, [r5, #0xc]
008b5bf6  00 28                                            cmp r0, #0
008b5bf8  07 d0                                            beq #0x8b5c0a
008b5bfa  a3 59                                            ldr r3, [r4, r6]
008b5bfc  43 9a                                            ldr r2, [sp, #0x10c]
008b5bfe  28 1c                                            adds r0, r5, #0
008b5c00  1b 68                                            ldr r3, [r3]
008b5c02  9a 42                                            cmp r2, r3
008b5c04  0b d1                                            bne #0x8b5c1e
008b5c06  44 b0                                            add sp, #0x110
008b5c08  70 bd                                            pop {r4, r5, r6, pc}
008b5c0a  09 4a                                            ldr r2, [pc, #0x24]
008b5c0c  02 98                                            ldr r0, [sp, #8]
008b5c0e  01 99                                            ldr r1, [sp, #4]
008b5c10  7a 44                                            add r2, pc
008b5c12  ee f7 dd fd                                      bl #0x8a47d0
008b5c16  f0 e7                                            b #0x8b5bfa
008b5c18  ed f7 52 fc                                      bl #0x8a34c0
008b5c1c  e4 e7                                            b #0x8b5be8
008b5c1e  58 f6 78 e3                                      blx #0x30e310
008b5c22  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5c24  d4 ee 0d 00 ac 40 00 00 b0 4a 00 00 04 00 06 00  .byte 0xd4, 0xee, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb0, 0x4a, 0x00, 0x00, 0x04, 0x00, 0x06, 0x00
