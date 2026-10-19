; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000822b4, declared_size=2, range_size=2, mode=thumb
; class-group: ir_instruction
; alias: _ZN14ir_instructionD2Ev
; demangled: ir_instruction::~ir_instruction()
; decoder-mode: thumb
000822b4  70 47                                            bx lr

; FUNCTION 0x000862fc, declared_size=4, range_size=4, mode=thumb
; class-group: ir_instruction
; alias: _ZN14ir_instruction6equalsEPS_12ir_node_type
; demangled: ir_instruction::equals(ir_instruction*, ir_node_type)
; decoder-mode: thumb
000862fc  00 20                                            movs r0, #0
000862fe  70 47                                            bx lr

; FUNCTION 0x00086518, declared_size=2, range_size=2, mode=thumb
; class-group: ir_instruction
; alias: _ZN14ir_instructionD0Ev
; demangled: ir_instruction::~ir_instruction()
; decoder-mode: thumb
00086518  fe de                                            trap

; FUNCTION 0x0008d00c, declared_size=16, range_size=16, mode=thumb
; class-group: ir_instruction
; alias: _ZNK14ir_instruction5printEv
; demangled: ir_instruction::print() const
; decoder-mode: thumb
0008d00c  02 49                                            ldr r1, [pc, #8]
0008d00e  79 44                                            add r1, pc
0008d010  09 68                                            ldr r1, [r1]
0008d012  54 31                                            adds r1, #0x54
0008d014  23 f0 e0 be                                      b.w #0xb0dd8
0008d018  16 f5 04 00                                      adds.w r0, r6, #0x840000

; FUNCTION 0x0008d01c, declared_size=144, range_size=144, mode=thumb
; class-group: ir_instruction
; alias: _ZNK14ir_instruction6fprintEP7__sFILE
; demangled: ir_instruction::fprint(__sFILE*) const
; decoder-mode: thumb
0008d01c  b0 b5                                            push {r4, r5, r7, lr}
0008d01e  02 af                                            add r7, sp, #8
0008d020  88 b0                                            sub sp, #0x20
0008d022  04 46                                            mov r4, r0
0008d024  1c 48                                            ldr r0, [pc, #0x70]
0008d026  1e 4b                                            ldr r3, [pc, #0x78]
0008d028  78 44                                            add r0, pc
0008d02a  1c 4d                                            ldr r5, [pc, #0x70]
0008d02c  1d 4a                                            ldr r2, [pc, #0x74]
0008d02e  7b 44                                            add r3, pc
0008d030  00 68                                            ldr r0, [r0]
0008d032  7d 44                                            add r5, pc
0008d034  7a 44                                            add r2, pc
0008d036  1b 68                                            ldr r3, [r3]
0008d038  2d 68                                            ldr r5, [r5]
0008d03a  00 68                                            ldr r0, [r0]
0008d03c  12 68                                            ldr r2, [r2]
0008d03e  08 35                                            adds r5, #8
0008d040  07 90                                            str r0, [sp, #0x1c]
0008d042  00 20                                            movs r0, #0
0008d044  05 91                                            str r1, [sp, #0x14]
0008d046  19 46                                            mov r1, r3
0008d048  01 95                                            str r5, [sp, #4]
0008d04a  06 90                                            str r0, [sp, #0x18]
0008d04c  20 20                                            movs r0, #0x20
0008d04e  a5 f7 92 eb                                      blx #0x32774
0008d052  02 90                                            str r0, [sp, #8]
0008d054  a6 f7 30 ed                                      blx #0x33ab8
0008d058  03 90                                            str r0, [sp, #0xc]
0008d05a  00 20                                            movs r0, #0
0008d05c  a6 f7 46 e8                                      blx #0x330ec
0008d060  04 90                                            str r0, [sp, #0x10]
0008d062  01 a9                                            add r1, sp, #4
0008d064  20 68                                            ldr r0, [r4]
0008d066  82 68                                            ldr r2, [r0, #8]
0008d068  20 46                                            mov r0, r4
0008d06a  90 47                                            blx r2
0008d06c  02 98                                            ldr r0, [sp, #8]
0008d06e  01 95                                            str r5, [sp, #4]
0008d070  a5 f7 8c eb                                      blx #0x3278c
0008d074  03 98                                            ldr r0, [sp, #0xc]
0008d076  a6 f7 26 ed                                      blx #0x33ac4
0008d07a  04 98                                            ldr r0, [sp, #0x10]
0008d07c  a5 f7 32 eb                                      blx #0x326e4
0008d080  09 48                                            ldr r0, [pc, #0x24]
0008d082  07 99                                            ldr r1, [sp, #0x1c]
0008d084  78 44                                            add r0, pc
0008d086  00 68                                            ldr r0, [r0]
0008d088  00 68                                            ldr r0, [r0]
0008d08a  40 1a                                            subs r0, r0, r1
0008d08c  04 bf                                            itt eq
0008d08e  08 b0                                            addeq sp, #0x20
0008d090  b0 bd                                            popeq {r4, r5, r7, pc}
0008d092  a4 f7 e6 ef                                      blx #0x32060
0008d096  00 bf                                            nop
0008d098  8c f4 04 00                                      eor r0, ip, #0x840000
0008d09c  86 f9 04 00                                      vst1.8 {d0[0]}, [r6], r4
0008d0a0  3e f5                                            .byte 0x3e, 0xf5
0008d0a2  04 00                                            movs r4, r0
0008d0a4  3c f5                                            .byte 0x3c, 0xf5
0008d0a6  04 00                                            movs r4, r0
0008d0a8  30 f4 04 00                                      bics r0, r0, #0x840000
