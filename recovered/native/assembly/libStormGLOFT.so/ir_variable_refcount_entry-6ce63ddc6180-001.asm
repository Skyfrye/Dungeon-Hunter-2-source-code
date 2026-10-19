; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008e754, declared_size=20, range_size=20, mode=thumb
; class-group: ir_variable_refcount_entry
; alias: _ZN26ir_variable_refcount_entryC1EP11ir_variable
; demangled: ir_variable_refcount_entry::ir_variable_refcount_entry(ir_variable*)
; alias: _ZN26ir_variable_refcount_entryC2EP11ir_variable
; demangled: ir_variable_refcount_entry::ir_variable_refcount_entry(ir_variable*)
; decoder-mode: thumb
0008e754  d0 b5                                            push {r4, r6, r7, lr}
0008e756  02 af                                            add r7, sp, #8
0008e758  04 46                                            mov r4, r0
0008e75a  40 f8 04 1b                                      str r1, [r0], #4
0008e75e  11 21                                            movs r1, #0x11
0008e760  a3 f7 7e ef                                      blx #0x32660
0008e764  20 46                                            mov r0, r4
0008e766  d0 bd                                            pop {r4, r6, r7, pc}
