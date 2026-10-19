; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000adb20, declared_size=120, range_size=120, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionC1ERKSs
; demangled: std::__Named_exception::__Named_exception(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; alias: _ZNSt17__Named_exceptionC2ERKSs
; demangled: std::__Named_exception::__Named_exception(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
000adb20  f0 b5                                            push {r4, r5, r6, r7, lr}
000adb22  03 af                                            add r7, sp, #0xc
000adb24  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000adb28  0d 46                                            mov r5, r1
000adb2a  04 46                                            mov r4, r0
000adb2c  01 f0 f0 f8                                      bl #0xaed10
000adb30  18 48                                            ldr r0, [pc, #0x60]
000adb32  78 44                                            add r0, pc
000adb34  00 68                                            ldr r0, [r0]
000adb36  08 30                                            adds r0, #8
000adb38  20 60                                            str r0, [r4]
000adb3a  6d 69                                            ldr r5, [r5, #0x14]
000adb3c  28 46                                            mov r0, r5
000adb3e  84 f7 12 ea                                      blx #0x31f64
000adb42  46 1c                                            adds r6, r0, #1
000adb44  b6 f5 80 7f                                      cmp.w r6, #0x100
000adb48  0d d9                                            bls #0xadb66
000adb4a  30 46                                            mov r0, r6
000adb4c  84 f7 c4 ea                                      blx #0x320d8
000adb50  01 46                                            mov r1, r0
000adb52  20 1d                                            adds r0, r4, #4
000adb54  04 f5 82 78                                      add.w r8, r4, #0x104
000adb58  00 29                                            cmp r1, #0
000adb5a  c4 f8 04 11                                      str.w r1, [r4, #0x104]
000adb5e  08 d0                                            beq #0xadb72
000adb60  06 60                                            str r6, [r0]
000adb62  08 46                                            mov r0, r1
000adb64  09 e0                                            b #0xadb7a
000adb66  20 1d                                            adds r0, r4, #4
000adb68  04 f5 82 78                                      add.w r8, r4, #0x104
000adb6c  c4 f8 04 01                                      str.w r0, [r4, #0x104]
000adb70  03 e0                                            b #0xadb7a
000adb72  c8 f8 00 00                                      str.w r0, [r8]
000adb76  4f f4 80 76                                      mov.w r6, #0x100
000adb7a  01 3e                                            subs r6, #1
000adb7c  29 46                                            mov r1, r5
000adb7e  32 46                                            mov r2, r6
000adb80  84 f7 d0 eb                                      blx #0x32324
000adb84  d8 f8 00 00                                      ldr.w r0, [r8]
000adb88  00 21                                            movs r1, #0
000adb8a  81 55                                            strb r1, [r0, r6]
000adb8c  20 46                                            mov r0, r4
000adb8e  5d f8 04 8b                                      ldr r8, [sp], #4
000adb92  f0 bd                                            pop {r4, r5, r6, r7, pc}
000adb94  42 ef 02 00                                      vhadd.s8 d16, d2, d2

; FUNCTION 0x000adb98, declared_size=124, range_size=124, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionC1ERKS_
; demangled: std::__Named_exception::__Named_exception(std::__Named_exception const&)
; alias: _ZNSt17__Named_exceptionC2ERKS_
; demangled: std::__Named_exception::__Named_exception(std::__Named_exception const&)
; decoder-mode: thumb
000adb98  f0 b5                                            push {r4, r5, r6, r7, lr}
000adb9a  03 af                                            add r7, sp, #0xc
000adb9c  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000adba0  0d 46                                            mov r5, r1
000adba2  04 46                                            mov r4, r0
000adba4  01 f0 b4 f8                                      bl #0xaed10
000adba8  19 48                                            ldr r0, [pc, #0x64]
000adbaa  78 44                                            add r0, pc
000adbac  00 68                                            ldr r0, [r0]
000adbae  08 30                                            adds r0, #8
000adbb0  20 60                                            str r0, [r4]
000adbb2  d5 f8 04 01                                      ldr.w r0, [r5, #0x104]
000adbb6  84 f7 d6 e9                                      blx #0x31f64
000adbba  46 1c                                            adds r6, r0, #1
000adbbc  b6 f5 80 7f                                      cmp.w r6, #0x100
000adbc0  0d d9                                            bls #0xadbde
000adbc2  30 46                                            mov r0, r6
000adbc4  84 f7 88 ea                                      blx #0x320d8
000adbc8  01 46                                            mov r1, r0
000adbca  20 1d                                            adds r0, r4, #4
000adbcc  04 f5 82 78                                      add.w r8, r4, #0x104
000adbd0  00 29                                            cmp r1, #0
000adbd2  c4 f8 04 11                                      str.w r1, [r4, #0x104]
000adbd6  08 d0                                            beq #0xadbea
000adbd8  06 60                                            str r6, [r0]
000adbda  08 46                                            mov r0, r1
000adbdc  09 e0                                            b #0xadbf2
000adbde  20 1d                                            adds r0, r4, #4
000adbe0  04 f5 82 78                                      add.w r8, r4, #0x104
000adbe4  c4 f8 04 01                                      str.w r0, [r4, #0x104]
000adbe8  03 e0                                            b #0xadbf2
000adbea  c8 f8 00 00                                      str.w r0, [r8]
000adbee  4f f4 80 76                                      mov.w r6, #0x100
000adbf2  d5 f8 04 11                                      ldr.w r1, [r5, #0x104]
000adbf6  75 1e                                            subs r5, r6, #1
000adbf8  2a 46                                            mov r2, r5
000adbfa  84 f7 94 eb                                      blx #0x32324
000adbfe  d8 f8 00 00                                      ldr.w r0, [r8]
000adc02  00 21                                            movs r1, #0
000adc04  41 55                                            strb r1, [r0, r5]
000adc06  20 46                                            mov r0, r4
000adc08  5d f8 04 8b                                      ldr r8, [sp], #4
000adc0c  f0 bd                                            pop {r4, r5, r6, r7, pc}
000adc0e  00 bf                                            nop
000adc10  ca ee 02 00                                      cdp p0, #0xc, c0, c10, c2, #0

; FUNCTION 0x000adc14, declared_size=110, range_size=110, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionaSERKS_
; demangled: std::__Named_exception::operator=(std::__Named_exception const&)
; decoder-mode: thumb
000adc14  f0 b5                                            push {r4, r5, r6, r7, lr}
000adc16  03 af                                            add r7, sp, #0xc
000adc18  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000adc1c  88 46                                            mov r8, r1
000adc1e  04 46                                            mov r4, r0
000adc20  d8 f8 04 01                                      ldr.w r0, [r8, #0x104]
000adc24  84 f7 9e e9                                      blx #0x31f64
000adc28  01 46                                            mov r1, r0
000adc2a  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000adc2e  26 1d                                            adds r6, r4, #4
000adc30  4d 1c                                            adds r5, r1, #1
000adc32  b0 42                                            cmp r0, r6
000adc34  14 bf                                            ite ne
000adc36  31 68                                            ldrne r1, [r6]
000adc38  4f f4 80 71                                      moveq.w r1, #0x100
000adc3c  8d 42                                            cmp r5, r1
000adc3e  0b d9                                            bls #0xadc58
000adc40  b0 42                                            cmp r0, r6
000adc42  18 bf                                            it ne
000adc44  84 f7 fa e9                                      blxne #0x3203c
000adc48  28 46                                            mov r0, r5
000adc4a  84 f7 46 ea                                      blx #0x320d8
000adc4e  00 28                                            cmp r0, #0
000adc50  c4 f8 04 01                                      str.w r0, [r4, #0x104]
000adc54  02 d0                                            beq #0xadc5c
000adc56  35 60                                            str r5, [r6]
000adc58  06 46                                            mov r6, r0
000adc5a  03 e0                                            b #0xadc64
000adc5c  c4 f8 04 61                                      str.w r6, [r4, #0x104]
000adc60  4f f4 80 75                                      mov.w r5, #0x100
000adc64  01 3d                                            subs r5, #1
000adc66  d8 f8 04 11                                      ldr.w r1, [r8, #0x104]
000adc6a  30 46                                            mov r0, r6
000adc6c  2a 46                                            mov r2, r5
000adc6e  84 f7 5a eb                                      blx #0x32324
000adc72  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000adc76  00 21                                            movs r1, #0
000adc78  41 55                                            strb r1, [r0, r5]
000adc7a  20 46                                            mov r0, r4
000adc7c  5d f8 04 8b                                      ldr r8, [sp], #4
000adc80  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x000adcb0, declared_size=48, range_size=48, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionD0Ev
; demangled: std::__Named_exception::~__Named_exception()
; decoder-mode: thumb
000adcb0  d0 b5                                            push {r4, r6, r7, lr}
000adcb2  02 af                                            add r7, sp, #8
000adcb4  04 46                                            mov r4, r0
000adcb6  09 48                                            ldr r0, [pc, #0x24]
000adcb8  78 44                                            add r0, pc
000adcba  01 68                                            ldr r1, [r0]
000adcbc  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000adcc0  08 31                                            adds r1, #8
000adcc2  21 60                                            str r1, [r4]
000adcc4  21 1d                                            adds r1, r4, #4
000adcc6  88 42                                            cmp r0, r1
000adcc8  18 bf                                            it ne
000adcca  84 f7 b8 e9                                      blxne #0x3203c
000adcce  20 46                                            mov r0, r4
000adcd0  01 f0 26 f8                                      bl #0xaed20
000adcd4  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000adcd8  03 f0 3e b8                                      b.w #0xb0d58
000adcdc  bc ed 02 00                                      ldc p0, c0, [ip, #8]!

; FUNCTION 0x000adce0, declared_size=6, range_size=6, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNKSt17__Named_exception4whatEv
; demangled: std::__Named_exception::what() const
; decoder-mode: thumb
000adce0  d0 f8 04 01                                      ldr.w r0, [r0, #0x104]
000adce4  70 47                                            bx lr
