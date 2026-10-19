; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000598ec, declared_size=36, range_size=36, mode=thumb
; class-group: interface_block_usage_visitor
; alias: _ZN29interface_block_usage_visitor5visitEP23ir_dereference_variable
; demangled: interface_block_usage_visitor::visit(ir_dereference_variable*)
; decoder-mode: thumb
000598ec  89 69                                            ldr r1, [r1, #0x18]
000598ee  c3 69                                            ldr r3, [r0, #0x1c]
000598f0  8a 69                                            ldr r2, [r1, #0x18]
000598f2  c2 f3 43 22                                      ubfx r2, r2, #9, #4
000598f6  9a 42                                            cmp r2, r3
000598f8  03 d1                                            bne #0x59902
000598fa  02 6a                                            ldr r2, [r0, #0x20]
000598fc  09 6c                                            ldr r1, [r1, #0x40]
000598fe  91 42                                            cmp r1, r2
00059900  01 d0                                            beq #0x59906
00059902  00 20                                            movs r0, #0
00059904  70 47                                            bx lr
00059906  01 21                                            movs r1, #1
00059908  80 f8 24 10                                      strb.w r1, [r0, #0x24]
0005990c  02 20                                            movs r0, #2
0005990e  70 47                                            bx lr
