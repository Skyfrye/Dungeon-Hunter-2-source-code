; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00086a88, declared_size=10, range_size=10, mode=thumb
; class-group: ir_function_can_inline_visitor
; alias: _ZN30ir_function_can_inline_visitor11visit_enterEP9ir_return
; demangled: ir_function_can_inline_visitor::visit_enter(ir_return*)
; decoder-mode: thumb
00086a88  c1 69                                            ldr r1, [r0, #0x1c]
00086a8a  01 31                                            adds r1, #1
00086a8c  c1 61                                            str r1, [r0, #0x1c]
00086a8e  00 20                                            movs r0, #0
00086a90  70 47                                            bx lr
