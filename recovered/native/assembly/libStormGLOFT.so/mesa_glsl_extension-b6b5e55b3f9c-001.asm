; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0007d6a4, declared_size=34, range_size=34, mode=thumb
; class-group: _mesa_glsl_extension
; alias: _ZNK20_mesa_glsl_extension21compatible_with_stateEPK22_mesa_glsl_parse_state
; demangled: _mesa_glsl_extension::compatible_with_state(_mesa_glsl_parse_state const*) const
; decoder-mode: thumb
0007d6a4  91 f8 7c 20                                      ldrb.w r2, [r1, #0x7c]
0007d6a8  00 2a                                            cmp r2, #0
0007d6aa  14 bf                                            ite ne
0007d6ac  42 79                                            ldrbne r2, [r0, #5]
0007d6ae  02 79                                            ldrbeq r2, [r0, #4]
0007d6b0  3a b1                                            cbz r2, #0x7d6c2
0007d6b2  80 68                                            ldr r0, [r0, #8]
0007d6b4  d1 f8 ec 11                                      ldr.w r1, [r1, #0x1ec]
0007d6b8  08 5c                                            ldrb r0, [r1, r0]
0007d6ba  00 28                                            cmp r0, #0
0007d6bc  18 bf                                            it ne
0007d6be  01 20                                            movne r0, #1
0007d6c0  70 47                                            bx lr
0007d6c2  00 20                                            movs r0, #0
0007d6c4  70 47                                            bx lr

; FUNCTION 0x0007d6c6, declared_size=32, range_size=32, mode=thumb
; class-group: _mesa_glsl_extension
; alias: _ZNK20_mesa_glsl_extension9set_flagsEP22_mesa_glsl_parse_state12ext_behavior
; demangled: _mesa_glsl_extension::set_flags(_mesa_glsl_parse_state*, ext_behavior) const
; decoder-mode: thumb
0007d6c6  d0 f8 0c c0                                      ldr.w ip, [r0, #0xc]
0007d6ca  13 46                                            mov r3, r2
0007d6cc  00 2a                                            cmp r2, #0
0007d6ce  18 bf                                            it ne
0007d6d0  01 23                                            movne r3, #1
0007d6d2  03 2a                                            cmp r2, #3
0007d6d4  01 f8 0c 30                                      strb.w r3, [r1, ip]
0007d6d8  4f f0 00 03                                      mov.w r3, #0
0007d6dc  00 69                                            ldr r0, [r0, #0x10]
0007d6de  08 bf                                            it eq
0007d6e0  01 23                                            moveq r3, #1
0007d6e2  0b 54                                            strb r3, [r1, r0]
0007d6e4  70 47                                            bx lr
