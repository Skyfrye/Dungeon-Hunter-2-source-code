; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a661c, declared_size=72, range_size=72, mode=thumb
; class-group: s_expression
; alias: _ZN12s_expression15read_expressionEPvRPKc
; demangled: s_expression::read_expression(void*, char const*&)
; decoder-mode: thumb
000a661c  b0 b5                                            push {r4, r5, r7, lr}
000a661e  02 af                                            add r7, sp, #8
000a6620  82 b0                                            sub sp, #8
000a6622  05 46                                            mov r5, r0
000a6624  0d 48                                            ldr r0, [pc, #0x34]
000a6626  0c 46                                            mov r4, r1
000a6628  78 44                                            add r0, pc
000a662a  00 68                                            ldr r0, [r0]
000a662c  00 68                                            ldr r0, [r0]
000a662e  01 90                                            str r0, [sp, #4]
000a6630  28 46                                            mov r0, r5
000a6632  21 68                                            ldr r1, [r4]
000a6634  8c f7 0e e8                                      blx #0x32654
000a6638  00 90                                            str r0, [sp]
000a663a  6a 46                                            mov r2, sp
000a663c  28 46                                            mov r0, r5
000a663e  21 46                                            mov r1, r4
000a6640  00 f0 10 f8                                      bl #0xa6664
000a6644  06 49                                            ldr r1, [pc, #0x18]
000a6646  01 9a                                            ldr r2, [sp, #4]
000a6648  79 44                                            add r1, pc
000a664a  09 68                                            ldr r1, [r1]
000a664c  09 68                                            ldr r1, [r1]
000a664e  89 1a                                            subs r1, r1, r2
000a6650  04 bf                                            itt eq
000a6652  02 b0                                            addeq sp, #8
000a6654  b0 bd                                            popeq {r4, r5, r7, pc}
000a6656  8b f7 04 ed                                      blx #0x32060
000a665a  00 bf                                            nop
000a665c  8c 5e                                            ldrsh r4, [r1, r2]
000a665e  03 00                                            movs r3, r0
000a6660  6c 5e                                            ldrsh r4, [r5, r1]
000a6662  03 00                                            movs r3, r0

; FUNCTION 0x000a69e8, declared_size=4, range_size=4, mode=thumb
; class-group: s_expression
; alias: _ZNK12s_expression7is_listEv
; demangled: s_expression::is_list() const
; decoder-mode: thumb
000a69e8  00 20                                            movs r0, #0
000a69ea  70 47                                            bx lr

; FUNCTION 0x000a69ec, declared_size=4, range_size=4, mode=thumb
; class-group: s_expression
; alias: _ZNK12s_expression9is_symbolEv
; demangled: s_expression::is_symbol() const
; decoder-mode: thumb
000a69ec  00 20                                            movs r0, #0
000a69ee  70 47                                            bx lr

; FUNCTION 0x000a6a06, declared_size=4, range_size=4, mode=thumb
; class-group: s_expression
; alias: _ZNK12s_expression6is_intEv
; demangled: s_expression::is_int() const
; decoder-mode: thumb
000a6a06  00 20                                            movs r0, #0
000a6a08  70 47                                            bx lr

; FUNCTION 0x000a6a12, declared_size=4, range_size=4, mode=thumb
; class-group: s_expression
; alias: _ZNK12s_expression9is_numberEv
; demangled: s_expression::is_number() const
; decoder-mode: thumb
000a6a12  00 20                                            movs r0, #0
000a6a14  70 47                                            bx lr
