; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000950bc, declared_size=104, range_size=104, mode=thumb
; class-group: loop_variable_state
; alias: _ZN19loop_variable_stateC2Ev
; demangled: loop_variable_state::loop_variable_state()
; decoder-mode: thumb
000950bc  b0 b5                                            push {r4, r5, r7, lr}
000950be  02 af                                            add r7, sp, #8
000950c0  04 46                                            mov r4, r0
000950c2  04 f1 08 02                                      add.w r2, r4, #8
000950c6  22 61                                            str r2, [r4, #0x10]
000950c8  00 25                                            movs r5, #0
000950ca  22 46                                            mov r2, r4
000950cc  13 48                                            ldr r0, [pc, #0x4c]
000950ce  42 f8 0c 5f                                      str r5, [r2, #0xc]!
000950d2  a2 60                                            str r2, [r4, #8]
000950d4  22 46                                            mov r2, r4
000950d6  42 f8 18 5f                                      str r5, [r2, #0x18]!
000950da  78 44                                            add r0, pc
000950dc  62 61                                            str r2, [r4, #0x14]
000950de  04 f1 14 02                                      add.w r2, r4, #0x14
000950e2  e2 61                                            str r2, [r4, #0x1c]
000950e4  22 46                                            mov r2, r4
000950e6  42 f8 24 5f                                      str r5, [r2, #0x24]!
000950ea  0d 49                                            ldr r1, [pc, #0x34]
000950ec  22 62                                            str r2, [r4, #0x20]
000950ee  04 f1 20 02                                      add.w r2, r4, #0x20
000950f2  a2 62                                            str r2, [r4, #0x28]
000950f4  22 46                                            mov r2, r4
000950f6  79 44                                            add r1, pc
000950f8  42 f8 34 5f                                      str r5, [r2, #0x34]!
000950fc  22 63                                            str r2, [r4, #0x30]
000950fe  04 f1 30 02                                      add.w r2, r4, #0x30
00095102  a2 63                                            str r2, [r4, #0x38]
00095104  02 68                                            ldr r2, [r0]
00095106  00 20                                            movs r0, #0
00095108  09 68                                            ldr r1, [r1]
0009510a  65 64                                            str r5, [r4, #0x44]
0009510c  84 f8 48 50                                      strb.w r5, [r4, #0x48]
00095110  9d f7 30 eb                                      blx #0x32774
00095114  c4 e9 0f 50                                      strd r5, r0, [r4, #0x3c]
00095118  20 46                                            mov r0, r4
0009511a  b0 bd                                            pop {r4, r5, r7, pc}
0009511c  96 74                                            strb r6, [r2, #0x12]
0009511e  04 00                                            movs r4, r0
00095120  76 74                                            strb r6, [r6, #0x11]
00095122  04 00                                            movs r4, r0

; FUNCTION 0x00095230, declared_size=6, range_size=6, mode=thumb
; class-group: loop_variable_state
; alias: _ZN19loop_variable_state3getEPK11ir_variable
; demangled: loop_variable_state::get(ir_variable const*)
; decoder-mode: thumb
00095230  00 6c                                            ldr r0, [r0, #0x40]
00095232  1b f0 19 be                                      b.w #0xb0e68

; FUNCTION 0x00095236, declared_size=58, range_size=58, mode=thumb
; class-group: loop_variable_state
; alias: _ZN19loop_variable_state6insertEP11ir_variable
; demangled: loop_variable_state::insert(ir_variable*)
; decoder-mode: thumb
00095236  f0 b5                                            push {r4, r5, r6, r7, lr}
00095238  03 af                                            add r7, sp, #0xc
0009523a  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0009523e  0c 46                                            mov r4, r1
00095240  05 46                                            mov r5, r0
00095242  9d f7 72 ec                                      blx #0x32b28
00095246  24 21                                            movs r1, #0x24
00095248  9e f7 62 ea                                      blx #0x33710
0009524c  06 46                                            mov r6, r0
0009524e  22 46                                            mov r2, r4
00095250  b4 60                                            str r4, [r6, #8]
00095252  31 46                                            mov r1, r6
00095254  28 6c                                            ldr r0, [r5, #0x40]
00095256  9d f7 82 ea                                      blx #0x3275c
0009525a  05 f1 0c 00                                      add.w r0, r5, #0xc
0009525e  30 60                                            str r0, [r6]
00095260  28 69                                            ldr r0, [r5, #0x10]
00095262  70 60                                            str r0, [r6, #4]
00095264  06 60                                            str r6, [r0]
00095266  30 46                                            mov r0, r6
00095268  2e 61                                            str r6, [r5, #0x10]
0009526a  5d f8 04 bb                                      ldr fp, [sp], #4
0009526e  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00095270, declared_size=72, range_size=72, mode=thumb
; class-group: loop_variable_state
; alias: _ZN19loop_variable_state6insertEP5ir_if
; demangled: loop_variable_state::insert(ir_if*)
; decoder-mode: thumb
00095270  f0 b5                                            push {r4, r5, r6, r7, lr}
00095272  03 af                                            add r7, sp, #0xc
00095274  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00095278  0c 46                                            mov r4, r1
0009527a  05 46                                            mov r5, r0
0009527c  9d f7 54 ec                                      blx #0x32b28
00095280  10 21                                            movs r1, #0x10
00095282  9d f7 4e ea                                      blx #0x32720
00095286  06 46                                            mov r6, r0
00095288  0a 48                                            ldr r0, [pc, #0x28]
0009528a  78 44                                            add r0, pc
0009528c  01 68                                            ldr r1, [r0]
0009528e  30 46                                            mov r0, r6
00095290  9d f7 36 eb                                      blx #0x32900
00095294  4f f0 ff 30                                      mov.w r0, #-1
00095298  c6 e9 02 40                                      strd r4, r0, [r6, #8]
0009529c  05 f1 34 00                                      add.w r0, r5, #0x34
000952a0  30 60                                            str r0, [r6]
000952a2  a8 6b                                            ldr r0, [r5, #0x38]
000952a4  70 60                                            str r0, [r6, #4]
000952a6  06 60                                            str r6, [r0]
000952a8  30 46                                            mov r0, r6
000952aa  ae 63                                            str r6, [r5, #0x38]
000952ac  5d f8 04 bb                                      ldr fp, [sp], #4
000952b0  f0 bd                                            pop {r4, r5, r6, r7, pc}
000952b2  00 bf                                            nop
000952b4  ae 72                                            strb r6, [r5, #0xa]
000952b6  04 00                                            movs r4, r0

; FUNCTION 0x000952b8, declared_size=42, range_size=42, mode=thumb
; class-group: loop_variable_state
; alias: _ZN19loop_variable_state13get_or_insertEP11ir_variableb
; demangled: loop_variable_state::get_or_insert(ir_variable*, bool)
; decoder-mode: thumb
000952b8  f0 b5                                            push {r4, r5, r6, r7, lr}
000952ba  03 af                                            add r7, sp, #0xc
000952bc  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000952c0  06 46                                            mov r6, r0
000952c2  14 46                                            mov r4, r2
000952c4  30 6c                                            ldr r0, [r6, #0x40]
000952c6  0d 46                                            mov r5, r1
000952c8  9d f7 12 ea                                      blx #0x326f0
000952cc  30 b9                                            cbnz r0, #0x952dc
000952ce  30 46                                            mov r0, r6
000952d0  29 46                                            mov r1, r5
000952d2  9f f7 b2 ed                                      blx #0x34e38
000952d6  84 f0 01 01                                      eor r1, r4, #1
000952da  01 73                                            strb r1, [r0, #0xc]
000952dc  5d f8 04 bb                                      ldr fp, [sp], #4
000952e0  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00095350, declared_size=6, range_size=6, mode=thumb
; class-group: loop_variable_state
; alias: _ZN19loop_variable_state18_ralloc_destructorEPv
; demangled: loop_variable_state::_ralloc_destructor(void*)
; decoder-mode: thumb
00095350  00 6c                                            ldr r0, [r0, #0x40]
00095352  1b f0 91 bd                                      b.w #0xb0e78
