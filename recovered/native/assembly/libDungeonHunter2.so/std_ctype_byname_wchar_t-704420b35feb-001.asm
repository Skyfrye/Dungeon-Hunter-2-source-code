; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b54a0, declared_size=30, range_size=30, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNKSt12ctype_bynameIwE10do_tolowerEPwPKw
; demangled: std::ctype_byname<wchar_t>::do_tolower(wchar_t*, wchar_t const*) const
; decoder-mode: thumb
008b54a0  70 b5                                            push {r4, r5, r6, lr}
008b54a2  15 1c                                            adds r5, r2, #0
008b54a4  06 1c                                            adds r6, r0, #0
008b54a6  0c 1c                                            adds r4, r1, #0
008b54a8  a9 42                                            cmp r1, r5
008b54aa  06 d2                                            bhs #0x8b54ba
008b54ac  21 68                                            ldr r1, [r4]
008b54ae  f0 68                                            ldr r0, [r6, #0xc]
008b54b0  01 f0 b4 fc                                      bl #0x8b6e1c
008b54b4  01 c4                                            stm r4!, {r0}
008b54b6  a5 42                                            cmp r5, r4
008b54b8  f8 d8                                            bhi #0x8b54ac
008b54ba  28 1c                                            adds r0, r5, #0
008b54bc  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b54c0, declared_size=10, range_size=10, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNKSt12ctype_bynameIwE10do_tolowerEw
; demangled: std::ctype_byname<wchar_t>::do_tolower(wchar_t) const
; decoder-mode: thumb
008b54c0  10 b5                                            push {r4, lr}
008b54c2  c0 68                                            ldr r0, [r0, #0xc]
008b54c4  01 f0 aa fc                                      bl #0x8b6e1c
008b54c8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b54cc, declared_size=30, range_size=30, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNKSt12ctype_bynameIwE10do_toupperEPwPKw
; demangled: std::ctype_byname<wchar_t>::do_toupper(wchar_t*, wchar_t const*) const
; decoder-mode: thumb
008b54cc  70 b5                                            push {r4, r5, r6, lr}
008b54ce  15 1c                                            adds r5, r2, #0
008b54d0  06 1c                                            adds r6, r0, #0
008b54d2  0c 1c                                            adds r4, r1, #0
008b54d4  a9 42                                            cmp r1, r5
008b54d6  06 d2                                            bhs #0x8b54e6
008b54d8  21 68                                            ldr r1, [r4]
008b54da  f0 68                                            ldr r0, [r6, #0xc]
008b54dc  01 f0 98 fc                                      bl #0x8b6e10
008b54e0  01 c4                                            stm r4!, {r0}
008b54e2  a5 42                                            cmp r5, r4
008b54e4  f8 d8                                            bhi #0x8b54d8
008b54e6  28 1c                                            adds r0, r5, #0
008b54e8  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b54ec, declared_size=10, range_size=10, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNKSt12ctype_bynameIwE10do_toupperEw
; demangled: std::ctype_byname<wchar_t>::do_toupper(wchar_t) const
; decoder-mode: thumb
008b54ec  10 b5                                            push {r4, lr}
008b54ee  c0 68                                            ldr r0, [r0, #0xc]
008b54f0  01 f0 8e fc                                      bl #0x8b6e10
008b54f4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b55a4, declared_size=28, range_size=28, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNKSt12ctype_bynameIwE11do_scan_notENSt10ctype_base4maskEPKwS4_
; demangled: std::ctype_byname<wchar_t>::do_scan_not(std::ctype_base::mask, wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008b55a4  10 b5                                            push {r4, lr}
008b55a6  c0 68                                            ldr r0, [r0, #0xc]
008b55a8  84 b0                                            sub sp, #0x10
008b55aa  14 1c                                            adds r4, r2, #0
008b55ac  6a 46                                            mov r2, sp
008b55ae  02 90                                            str r0, [sp, #8]
008b55b0  91 80                                            strh r1, [r2, #4]
008b55b2  20 1c                                            adds r0, r4, #0
008b55b4  19 1c                                            adds r1, r3, #0
008b55b6  03 ab                                            add r3, sp, #0xc
008b55b8  ff f7 9e ff                                      bl #0x8b54f8
008b55bc  04 b0                                            add sp, #0x10
008b55be  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b566c, declared_size=28, range_size=28, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNKSt12ctype_bynameIwE10do_scan_isENSt10ctype_base4maskEPKwS4_
; demangled: std::ctype_byname<wchar_t>::do_scan_is(std::ctype_base::mask, wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008b566c  10 b5                                            push {r4, lr}
008b566e  c0 68                                            ldr r0, [r0, #0xc]
008b5670  84 b0                                            sub sp, #0x10
008b5672  14 1c                                            adds r4, r2, #0
008b5674  01 aa                                            add r2, sp, #4
008b5676  50 60                                            str r0, [r2, #4]
008b5678  11 80                                            strh r1, [r2]
008b567a  20 1c                                            adds r0, r4, #0
008b567c  19 1c                                            adds r1, r3, #0
008b567e  03 ab                                            add r3, sp, #0xc
008b5680  ff f7 9e ff                                      bl #0x8b55c0
008b5684  04 b0                                            add sp, #0x10
008b5686  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b5688, declared_size=40, range_size=40, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNKSt12ctype_bynameIwE5do_isEPKwS2_PNSt10ctype_base4maskE
; demangled: std::ctype_byname<wchar_t>::do_is(wchar_t const*, wchar_t const*, std::ctype_base::mask*) const
; decoder-mode: thumb
008b5688  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b568a  17 1c                                            adds r7, r2, #0
008b568c  06 1c                                            adds r6, r0, #0
008b568e  0c 1c                                            adds r4, r1, #0
008b5690  1d 1c                                            adds r5, r3, #0
008b5692  b9 42                                            cmp r1, r7
008b5694  07 d2                                            bhs #0x8b56a6
008b5696  f0 68                                            ldr r0, [r6, #0xc]
008b5698  02 cc                                            ldm r4!, {r1}
008b569a  04 4a                                            ldr r2, [pc, #0x10]
008b569c  01 f0 c4 fb                                      bl #0x8b6e28
008b56a0  01 c5                                            stm r5!, {r0}
008b56a2  a7 42                                            cmp r7, r4
008b56a4  f7 d8                                            bhi #0x8b5696
008b56a6  38 1c                                            adds r0, r7, #0
008b56a8  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b56aa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b56ac  ff 01 00 00                                      .byte 0xff, 0x01, 0x00, 0x00

; FUNCTION 0x008b56b0, declared_size=22, range_size=22, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNKSt12ctype_bynameIwE5do_isENSt10ctype_base4maskEw
; demangled: std::ctype_byname<wchar_t>::do_is(std::ctype_base::mask, wchar_t) const
; decoder-mode: thumb
008b56b0  10 b5                                            push {r4, lr}
008b56b2  13 1c                                            adds r3, r2, #0
008b56b4  0a 04                                            lsls r2, r1, #0x10
008b56b6  c0 68                                            ldr r0, [r0, #0xc]
008b56b8  19 1c                                            adds r1, r3, #0
008b56ba  12 0c                                            lsrs r2, r2, #0x10
008b56bc  01 f0 b4 fb                                      bl #0x8b6e28
008b56c0  43 1e                                            subs r3, r0, #1
008b56c2  98 41                                            sbcs r0, r3
008b56c4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b56c8, declared_size=40, range_size=40, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNSt12ctype_bynameIwED1Ev
; demangled: std::ctype_byname<wchar_t>::~ctype_byname()
; decoder-mode: thumb
008b56c8  10 b5                                            push {r4, lr}
008b56ca  07 4b                                            ldr r3, [pc, #0x1c]
008b56cc  07 4a                                            ldr r2, [pc, #0x1c]
008b56ce  04 1c                                            adds r4, r0, #0
008b56d0  7b 44                                            add r3, pc
008b56d2  9a 58                                            ldr r2, [r3, r2]
008b56d4  08 32                                            adds r2, #8
008b56d6  02 60                                            str r2, [r0]
008b56d8  c0 68                                            ldr r0, [r0, #0xc]
008b56da  fe f7 57 fb                                      bl #0x8b3d8c
008b56de  20 1c                                            adds r0, r4, #0
008b56e0  ed f7 44 fe                                      bl #0x8a336c
008b56e4  20 1c                                            adds r0, r4, #0
008b56e6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b56e8  c4 f3 0d 00 54 0b 00 00                          .byte 0xc4, 0xf3, 0x0d, 0x00, 0x54, 0x0b, 0x00, 0x00

; FUNCTION 0x008b56f0, declared_size=18, range_size=18, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNSt12ctype_bynameIwED0Ev
; demangled: std::ctype_byname<wchar_t>::~ctype_byname()
; decoder-mode: thumb
008b56f0  10 b5                                            push {r4, lr}
008b56f2  04 1c                                            adds r4, r0, #0
008b56f4  ff f7 e8 ff                                      bl #0x8b56c8
008b56f8  20 1c                                            adds r0, r4, #0
008b56fa  58 f6 da e5                                      blx #0x30e2b0
008b56fe  20 1c                                            adds r0, r4, #0
008b5700  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b5704, declared_size=40, range_size=40, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNSt12ctype_bynameIwED2Ev
; demangled: std::ctype_byname<wchar_t>::~ctype_byname()
; decoder-mode: thumb
008b5704  10 b5                                            push {r4, lr}
008b5706  07 4b                                            ldr r3, [pc, #0x1c]
008b5708  07 4a                                            ldr r2, [pc, #0x1c]
008b570a  04 1c                                            adds r4, r0, #0
008b570c  7b 44                                            add r3, pc
008b570e  9a 58                                            ldr r2, [r3, r2]
008b5710  08 32                                            adds r2, #8
008b5712  02 60                                            str r2, [r0]
008b5714  c0 68                                            ldr r0, [r0, #0xc]
008b5716  fe f7 39 fb                                      bl #0x8b3d8c
008b571a  20 1c                                            adds r0, r4, #0
008b571c  ed f7 26 fe                                      bl #0x8a336c
008b5720  20 1c                                            adds r0, r4, #0
008b5722  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b5724  88 f3 0d 00 54 0b 00 00                          .byte 0x88, 0xf3, 0x0d, 0x00, 0x54, 0x0b, 0x00, 0x00

; FUNCTION 0x008b572c, declared_size=124, range_size=124, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNSt12ctype_bynameIwEC1EPKcj
; demangled: std::ctype_byname<wchar_t>::ctype_byname(char const*, unsigned int)
; decoder-mode: thumb
008b572c  70 b5                                            push {r4, r5, r6, lr}
008b572e  1a 4c                                            ldr r4, [pc, #0x68]
008b5730  1a 4e                                            ldr r6, [pc, #0x68]
008b5732  c4 b0                                            sub sp, #0x110
008b5734  7c 44                                            add r4, pc
008b5736  a3 59                                            ldr r3, [r4, r6]
008b5738  01 91                                            str r1, [sp, #4]
008b573a  05 1c                                            adds r5, r0, #0
008b573c  1b 68                                            ldr r3, [r3]
008b573e  00 21                                            movs r1, #0
008b5740  43 93                                            str r3, [sp, #0x10c]
008b5742  53 1e                                            subs r3, r2, #1
008b5744  9a 41                                            sbcs r2, r3
008b5746  42 60                                            str r2, [r0, #4]
008b5748  08 30                                            adds r0, #8
008b574a  58 f6 32 e4                                      blx #0x30dfb0
008b574e  14 4b                                            ldr r3, [pc, #0x50]
008b5750  e3 58                                            ldr r3, [r4, r3]
008b5752  08 33                                            adds r3, #8
008b5754  2b 60                                            str r3, [r5]
008b5756  01 9b                                            ldr r3, [sp, #4]
008b5758  00 2b                                            cmp r3, #0
008b575a  17 d0                                            beq #0x8b578c
008b575c  01 a8                                            add r0, sp, #4
008b575e  03 a9                                            add r1, sp, #0xc
008b5760  00 22                                            movs r2, #0
008b5762  02 ab                                            add r3, sp, #8
008b5764  fe f7 84 fd                                      bl #0x8b4270
008b5768  e8 60                                            str r0, [r5, #0xc]
008b576a  00 28                                            cmp r0, #0
008b576c  07 d0                                            beq #0x8b577e
008b576e  a3 59                                            ldr r3, [r4, r6]
008b5770  43 9a                                            ldr r2, [sp, #0x10c]
008b5772  28 1c                                            adds r0, r5, #0
008b5774  1b 68                                            ldr r3, [r3]
008b5776  9a 42                                            cmp r2, r3
008b5778  0b d1                                            bne #0x8b5792
008b577a  44 b0                                            add sp, #0x110
008b577c  70 bd                                            pop {r4, r5, r6, pc}
008b577e  09 4a                                            ldr r2, [pc, #0x24]
008b5780  02 98                                            ldr r0, [sp, #8]
008b5782  01 99                                            ldr r1, [sp, #4]
008b5784  7a 44                                            add r2, pc
008b5786  ef f7 23 f8                                      bl #0x8a47d0
008b578a  f0 e7                                            b #0x8b576e
008b578c  ed f7 98 fe                                      bl #0x8a34c0
008b5790  e4 e7                                            b #0x8b575c
008b5792  58 f6 be e5                                      blx #0x30e310
008b5796  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5798  60 f3 0d 00 ac 40 00 00 54 0b 00 00 9c 04 06 00  .byte 0x60, 0xf3, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x0b, 0x00, 0x00, 0x9c, 0x04, 0x06, 0x00

; FUNCTION 0x008b59c8, declared_size=124, range_size=124, mode=thumb
; class-group: std::ctype_byname<wchar_t>
; alias: _ZNSt12ctype_bynameIwEC2EPKcj
; demangled: std::ctype_byname<wchar_t>::ctype_byname(char const*, unsigned int)
; decoder-mode: thumb
008b59c8  70 b5                                            push {r4, r5, r6, lr}
008b59ca  1a 4c                                            ldr r4, [pc, #0x68]
008b59cc  1a 4e                                            ldr r6, [pc, #0x68]
008b59ce  c4 b0                                            sub sp, #0x110
008b59d0  7c 44                                            add r4, pc
008b59d2  a3 59                                            ldr r3, [r4, r6]
008b59d4  01 91                                            str r1, [sp, #4]
008b59d6  05 1c                                            adds r5, r0, #0
008b59d8  1b 68                                            ldr r3, [r3]
008b59da  00 21                                            movs r1, #0
008b59dc  43 93                                            str r3, [sp, #0x10c]
008b59de  53 1e                                            subs r3, r2, #1
008b59e0  9a 41                                            sbcs r2, r3
008b59e2  42 60                                            str r2, [r0, #4]
008b59e4  08 30                                            adds r0, #8
008b59e6  58 f6 e4 e2                                      blx #0x30dfb0
008b59ea  14 4b                                            ldr r3, [pc, #0x50]
008b59ec  e3 58                                            ldr r3, [r4, r3]
008b59ee  08 33                                            adds r3, #8
008b59f0  2b 60                                            str r3, [r5]
008b59f2  01 9b                                            ldr r3, [sp, #4]
008b59f4  00 2b                                            cmp r3, #0
008b59f6  17 d0                                            beq #0x8b5a28
008b59f8  01 a8                                            add r0, sp, #4
008b59fa  03 a9                                            add r1, sp, #0xc
008b59fc  00 22                                            movs r2, #0
008b59fe  02 ab                                            add r3, sp, #8
008b5a00  fe f7 36 fc                                      bl #0x8b4270
008b5a04  e8 60                                            str r0, [r5, #0xc]
008b5a06  00 28                                            cmp r0, #0
008b5a08  07 d0                                            beq #0x8b5a1a
008b5a0a  a3 59                                            ldr r3, [r4, r6]
008b5a0c  43 9a                                            ldr r2, [sp, #0x10c]
008b5a0e  28 1c                                            adds r0, r5, #0
008b5a10  1b 68                                            ldr r3, [r3]
008b5a12  9a 42                                            cmp r2, r3
008b5a14  0b d1                                            bne #0x8b5a2e
008b5a16  44 b0                                            add sp, #0x110
008b5a18  70 bd                                            pop {r4, r5, r6, pc}
008b5a1a  09 4a                                            ldr r2, [pc, #0x24]
008b5a1c  02 98                                            ldr r0, [sp, #8]
008b5a1e  01 99                                            ldr r1, [sp, #4]
008b5a20  7a 44                                            add r2, pc
008b5a22  ee f7 d5 fe                                      bl #0x8a47d0
008b5a26  f0 e7                                            b #0x8b5a0a
008b5a28  ed f7 4a fd                                      bl #0x8a34c0
008b5a2c  e4 e7                                            b #0x8b59f8
008b5a2e  58 f6 70 e4                                      blx #0x30e310
008b5a32  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5a34  c4 f0 0d 00 ac 40 00 00 54 0b 00 00 00 02 06 00  .byte 0xc4, 0xf0, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x0b, 0x00, 0x00, 0x00, 0x02, 0x06, 0x00
