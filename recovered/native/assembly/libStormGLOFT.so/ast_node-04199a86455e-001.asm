; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0005215c, declared_size=4, range_size=4, mode=thumb
; class-group: ast_node
; alias: _ZN8ast_node3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_node::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
0005215c  00 20                                            movs r0, #0
0005215e  70 47                                            bx lr

; FUNCTION 0x0005a07c, declared_size=2, range_size=2, mode=thumb
; class-group: ast_node
; alias: _ZN8ast_node18_ralloc_destructorEPv
; demangled: ast_node::_ralloc_destructor(void*)
; decoder-mode: thumb
0005a07c  70 47                                            bx lr

; FUNCTION 0x0007d8c8, declared_size=24, range_size=24, mode=thumb
; class-group: ast_node
; alias: _ZNK8ast_node5printEv
; demangled: ast_node::print() const
; decoder-mode: thumb
0007d8c8  01 a0                                            adr r0, #4
0007d8ca  33 f0 6d b9                                      b.w #0xb0ba8
0007d8ce  00 bf                                            nop
0007d8d0  75 6e                                            ldr r5, [r6, #0x64]
0007d8d2  68 61                                            str r0, [r5, #0x14]
0007d8d4  6e 64                                            str r6, [r5, #0x44]
0007d8d6  6c 65                                            str r4, [r5, #0x54]
0007d8d8  64 20                                            movs r0, #0x64
0007d8da  6e 6f                                            ldr r6, [r5, #0x74]
0007d8dc  64 65                                            str r4, [r4, #0x54]
0007d8de  20 00                                            movs r0, r4

; FUNCTION 0x0007d8e0, declared_size=36, range_size=36, mode=thumb
; class-group: ast_node
; alias: _ZN8ast_nodeC1Ev
; demangled: ast_node::ast_node()
; alias: _ZN8ast_nodeC2Ev
; demangled: ast_node::ast_node()
; decoder-mode: thumb
0007d8e0  d0 b5                                            push {r4, r6, r7, lr}
0007d8e2  02 af                                            add r7, sp, #8
0007d8e4  04 46                                            mov r4, r0
0007d8e6  06 48                                            ldr r0, [pc, #0x18]
0007d8e8  78 44                                            add r0, pc
0007d8ea  00 68                                            ldr r0, [r0]
0007d8ec  00 f1 08 01                                      add.w r1, r0, #8
0007d8f0  20 46                                            mov r0, r4
0007d8f2  40 f8 04 1b                                      str r1, [r0], #4
0007d8f6  14 21                                            movs r1, #0x14
0007d8f8  b4 f7 b2 ee                                      blx #0x32660
0007d8fc  20 46                                            mov r0, r4
0007d8fe  d0 bd                                            pop {r4, r6, r7, pc}
0007d900  24 f0 05 00                                      bic r0, r4, #5
