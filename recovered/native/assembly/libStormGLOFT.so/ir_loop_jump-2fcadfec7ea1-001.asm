; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00082cbc, declared_size=60, range_size=60, mode=thumb
; class-group: ir_loop_jump
; alias: _ZNK12ir_loop_jump5cloneEPvP10hash_table
; demangled: ir_loop_jump::clone(void*, hash_table*) const
; decoder-mode: thumb
00082cbc  b0 b5                                            push {r4, r5, r7, lr}
00082cbe  02 af                                            add r7, sp, #8
00082cc0  04 46                                            mov r4, r0
00082cc2  08 46                                            mov r0, r1
00082cc4  14 21                                            movs r1, #0x14
00082cc6  af f7 2c ed                                      blx #0x32720
00082cca  05 46                                            mov r5, r0
00082ccc  08 48                                            ldr r0, [pc, #0x20]
00082cce  78 44                                            add r0, pc
00082cd0  01 68                                            ldr r1, [r0]
00082cd2  28 46                                            mov r0, r5
00082cd4  af f7 14 ee                                      blx #0x32900
00082cd8  06 48                                            ldr r0, [pc, #0x18]
00082cda  21 69                                            ldr r1, [r4, #0x10]
00082cdc  78 44                                            add r0, pc
00082cde  00 68                                            ldr r0, [r0]
00082ce0  08 30                                            adds r0, #8
00082ce2  28 60                                            str r0, [r5]
00082ce4  0e 20                                            movs r0, #0xe
00082ce6  c5 e9 03 01                                      strd r0, r1, [r5, #0xc]
00082cea  28 46                                            mov r0, r5
00082cec  b0 bd                                            pop {r4, r5, r7, pc}
00082cee  00 bf                                            nop
00082cf0  6a 98                                            ldr r0, [sp, #0x1a8]
00082cf2  05 00                                            movs r5, r0
00082cf4  80 98                                            ldr r0, [sp, #0x200]
00082cf6  05 00                                            movs r5, r0

; FUNCTION 0x0008362a, declared_size=22, range_size=22, mode=thumb
; class-group: ir_loop_jump
; alias: _ZN12ir_loop_jumpD0Ev
; demangled: ir_loop_jump::~ir_loop_jump()
; decoder-mode: thumb
0008362a  d0 b5                                            push {r4, r6, r7, lr}
0008362c  02 af                                            add r7, sp, #8
0008362e  00 21                                            movs r1, #0
00083630  04 46                                            mov r4, r0
00083632  af f7 66 e9                                      blx #0x32900
00083636  20 46                                            mov r0, r4
00083638  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008363c  2d f0 14 ba                                      b.w #0xb0a68

; FUNCTION 0x00083640, declared_size=12, range_size=12, mode=thumb
; class-group: ir_loop_jump
; alias: _ZN12ir_loop_jump6acceptEP10ir_visitor
; demangled: ir_loop_jump::accept(ir_visitor*)
; decoder-mode: thumb
00083640  02 46                                            mov r2, r0
00083642  08 68                                            ldr r0, [r1]
00083644  c3 6c                                            ldr r3, [r0, #0x4c]
00083646  08 46                                            mov r0, r1
00083648  11 46                                            mov r1, r2
0008364a  18 47                                            bx r3

; FUNCTION 0x000873f2, declared_size=12, range_size=12, mode=thumb
; class-group: ir_loop_jump
; alias: _ZN12ir_loop_jump6acceptEP23ir_hierarchical_visitor
; demangled: ir_loop_jump::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000873f2  02 46                                            mov r2, r0
000873f4  08 68                                            ldr r0, [r1]
000873f6  c3 68                                            ldr r3, [r0, #0xc]
000873f8  08 46                                            mov r0, r1
000873fa  11 46                                            mov r1, r2
000873fc  18 47                                            bx r3
