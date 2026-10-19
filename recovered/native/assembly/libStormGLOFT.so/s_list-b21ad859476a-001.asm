; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a65fc, declared_size=32, range_size=32, mode=thumb
; class-group: s_list
; alias: _ZN6s_listC1Ev
; demangled: s_list::s_list()
; alias: _ZN6s_listC2Ev
; demangled: s_list::s_list()
; decoder-mode: thumb
000a65fc  06 49                                            ldr r1, [pc, #0x18]
000a65fe  00 22                                            movs r2, #0
000a6600  03 46                                            mov r3, r0
000a6602  79 44                                            add r1, pc
000a6604  43 f8 10 2f                                      str r2, [r3, #0x10]!
000a6608  c3 60                                            str r3, [r0, #0xc]
000a660a  00 f1 0c 02                                      add.w r2, r0, #0xc
000a660e  09 68                                            ldr r1, [r1]
000a6610  42 61                                            str r2, [r0, #0x14]
000a6612  08 31                                            adds r1, #8
000a6614  01 60                                            str r1, [r0]
000a6616  70 47                                            bx lr
000a6618  26 64                                            str r6, [r4, #0x40]
000a661a  03 00                                            movs r3, r0

; FUNCTION 0x000a68c4, declared_size=62, range_size=62, mode=thumb
; class-group: s_list
; alias: _ZN6s_list5printEv
; demangled: s_list::print()
; decoder-mode: thumb
000a68c4  d0 b5                                            push {r4, r6, r7, lr}
000a68c6  02 af                                            add r7, sp, #8
000a68c8  04 46                                            mov r4, r0
000a68ca  28 20                                            movs r0, #0x28
000a68cc  8c f7 ec ef                                      blx #0x338a8
000a68d0  e0 68                                            ldr r0, [r4, #0xc]
000a68d2  09 e0                                            b #0xa68e8
000a68d4  01 68                                            ldr r1, [r0]
000a68d6  09 68                                            ldr r1, [r1]
000a68d8  88 47                                            blx r1
000a68da  20 68                                            ldr r0, [r4]
000a68dc  01 68                                            ldr r1, [r0]
000a68de  19 b1                                            cbz r1, #0xa68e8
000a68e0  20 20                                            movs r0, #0x20
000a68e2  8c f7 e2 ef                                      blx #0x338a8
000a68e6  20 68                                            ldr r0, [r4]
000a68e8  00 28                                            cmp r0, #0
000a68ea  18 bf                                            it ne
000a68ec  04 38                                            subne r0, #4
000a68ee  04 46                                            mov r4, r0
000a68f0  54 f8 04 1f                                      ldr r1, [r4, #4]!
000a68f4  00 29                                            cmp r1, #0
000a68f6  ed d1                                            bne #0xa68d4
000a68f8  29 20                                            movs r0, #0x29
000a68fa  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000a68fe  0a f0 63 b9                                      b.w #0xb0bc8

; FUNCTION 0x000a6a16, declared_size=4, range_size=4, mode=thumb
; class-group: s_list
; alias: _ZNK6s_list7is_listEv
; demangled: s_list::is_list() const
; decoder-mode: thumb
000a6a16  01 20                                            movs r0, #1
000a6a18  70 47                                            bx lr
