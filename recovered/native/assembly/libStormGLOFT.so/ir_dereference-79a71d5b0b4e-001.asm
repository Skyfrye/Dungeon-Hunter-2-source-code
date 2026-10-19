; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000818f0, declared_size=38, range_size=38, mode=thumb
; class-group: ir_dereference
; alias: _ZNK14ir_dereference9is_lvalueEv
; demangled: ir_dereference::is_lvalue() const
; decoder-mode: thumb
000818f0  d0 b5                                            push {r4, r6, r7, lr}
000818f2  02 af                                            add r7, sp, #8
000818f4  04 46                                            mov r4, r0
000818f6  20 68                                            ldr r0, [r4]
000818f8  01 6a                                            ldr r1, [r0, #0x20]
000818fa  20 46                                            mov r0, r4
000818fc  88 47                                            blx r1
000818fe  40 b1                                            cbz r0, #0x81912
00081900  80 69                                            ldr r0, [r0, #0x18]
00081902  c0 07                                            lsls r0, r0, #0x1f
00081904  05 d1                                            bne #0x81912
00081906  20 69                                            ldr r0, [r4, #0x10]
00081908  b1 f7 d4 e9                                      blx #0x32cb4
0008190c  80 f0 01 00                                      eor r0, r0, #1
00081910  d0 bd                                            pop {r4, r6, r7, pc}
00081912  00 20                                            movs r0, #0
00081914  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x000822b6, declared_size=2, range_size=2, mode=thumb
; class-group: ir_dereference
; alias: _ZN14ir_dereferenceD0Ev
; demangled: ir_dereference::~ir_dereference()
; decoder-mode: thumb
000822b6  fe de                                            trap
