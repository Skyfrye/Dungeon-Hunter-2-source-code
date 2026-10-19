; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00083880, declared_size=22, range_size=22, mode=thumb
; class-group: fixup_ir_call_visitor
; alias: _ZN21fixup_ir_call_visitor11visit_enterEP7ir_call
; demangled: fixup_ir_call_visitor::visit_enter(ir_call*)
; decoder-mode: thumb
00083880  d0 b5                                            push {r4, r6, r7, lr}
00083882  02 af                                            add r7, sp, #8
00083884  0c 46                                            mov r4, r1
00083886  c0 69                                            ldr r0, [r0, #0x1c]
00083888  61 69                                            ldr r1, [r4, #0x14]
0008388a  ae f7 32 ef                                      blx #0x326f0
0008388e  00 b1                                            cbz r0, #0x83892
00083890  60 61                                            str r0, [r4, #0x14]
00083892  00 20                                            movs r0, #0
00083894  d0 bd                                            pop {r4, r6, r7, pc}
