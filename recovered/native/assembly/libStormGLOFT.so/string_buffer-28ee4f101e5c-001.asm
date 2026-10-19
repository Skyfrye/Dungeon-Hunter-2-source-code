; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000880ac, declared_size=76, range_size=76, mode=thumb
; class-group: string_buffer
; alias: _ZN13string_buffer15asprintf_appendEPKcz
; demangled: string_buffer::asprintf_append(char const*, ...)
; decoder-mode: thumb
000880ac  82 b0                                            sub sp, #8
000880ae  80 b5                                            push {r7, lr}
000880b0  6f 46                                            mov r7, sp
000880b2  82 b0                                            sub sp, #8
000880b4  8c 46                                            mov ip, r1
000880b6  0e 49                                            ldr r1, [pc, #0x38]
000880b8  fb 60                                            str r3, [r7, #0xc]
000880ba  07 f1 08 03                                      add.w r3, r7, #8
000880be  79 44                                            add r1, pc
000880c0  09 68                                            ldr r1, [r1]
000880c2  09 68                                            ldr r1, [r1]
000880c4  ba 60                                            str r2, [r7, #8]
000880c6  62 46                                            mov r2, ip
000880c8  01 91                                            str r1, [sp, #4]
000880ca  01 1d                                            adds r1, r0, #4
000880cc  00 93                                            str r3, [sp]
000880ce  ac f7 b6 e9                                      blx #0x3443c
000880d2  08 48                                            ldr r0, [pc, #0x20]
000880d4  01 99                                            ldr r1, [sp, #4]
000880d6  78 44                                            add r0, pc
000880d8  00 68                                            ldr r0, [r0]
000880da  00 68                                            ldr r0, [r0]
000880dc  40 1a                                            subs r0, r0, r1
000880de  01 bf                                            itttt eq
000880e0  02 b0                                            addeq sp, #8
000880e2  bd e8 80 40                                      popeq.w {r7, lr}
000880e6  02 b0                                            addeq sp, #8
000880e8  70 47                                            bxeq lr
000880ea  a9 f7 ba ef                                      blx #0x32060
000880ee  00 bf                                            nop
000880f0  f6 43                                            mvns r6, r6
000880f2  05 00                                            movs r5, r0
000880f4  de 43                                            mvns r6, r3
000880f6  05 00                                            movs r5, r0

; FUNCTION 0x00089f5e, declared_size=94, range_size=94, mode=thumb
; class-group: string_buffer
; alias: _ZN13string_buffer22vasprintf_rewrite_tailEPjPKcSt9__va_list
; demangled: string_buffer::vasprintf_rewrite_tail(unsigned int*, char const*, std::__va_list)
; decoder-mode: thumb
00089f5e  f0 b5                                            push {r4, r5, r6, r7, lr}
00089f60  03 af                                            add r7, sp, #0xc
00089f62  2d e9 00 0b                                      push.w {r8, sb, fp}
00089f66  98 46                                            mov r8, r3
00089f68  91 46                                            mov sb, r2
00089f6a  04 46                                            mov r4, r0
00089f6c  48 46                                            mov r0, sb
00089f6e  41 46                                            mov r1, r8
00089f70  aa f7 ac ea                                      blx #0x344cc
00089f74  d4 e9 01 13                                      ldrd r1, r3, [r4, #4]
00089f78  05 46                                            mov r5, r0
00089f7a  6e 1c                                            adds r6, r5, #1
00089f7c  72 18                                            adds r2, r6, r1
00089f7e  93 42                                            cmp r3, r2
00089f80  0f d2                                            bhs #0x89fa2
00089f82  20 68                                            ldr r0, [r4]
00089f84  03 eb 53 01                                      add.w r1, r3, r3, lsr #1
00089f88  91 42                                            cmp r1, r2
00089f8a  88 bf                                            it hi
00089f8c  0a 46                                            movhi r2, r1
00089f8e  a2 60                                            str r2, [r4, #8]
00089f90  a8 f7 ca ed                                      blx #0x32b28
00089f94  21 68                                            ldr r1, [r4]
00089f96  a2 68                                            ldr r2, [r4, #8]
00089f98  aa f7 9e ea                                      blx #0x344d8
00089f9c  61 68                                            ldr r1, [r4, #4]
00089f9e  20 60                                            str r0, [r4]
00089fa0  00 e0                                            b #0x89fa4
00089fa2  20 68                                            ldr r0, [r4]
00089fa4  08 44                                            add r0, r1
00089fa6  31 46                                            mov r1, r6
00089fa8  4a 46                                            mov r2, sb
00089faa  43 46                                            mov r3, r8
00089fac  a8 f7 42 ec                                      blx #0x32834
00089fb0  60 68                                            ldr r0, [r4, #4]
00089fb2  28 44                                            add r0, r5
00089fb4  60 60                                            str r0, [r4, #4]
00089fb6  bd e8 00 0b                                      pop.w {r8, sb, fp}
00089fba  f0 bd                                            pop {r4, r5, r6, r7, pc}
