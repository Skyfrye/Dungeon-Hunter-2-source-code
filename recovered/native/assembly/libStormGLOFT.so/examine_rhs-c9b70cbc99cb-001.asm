; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000959cc, declared_size=64, range_size=64, mode=thumb
; class-group: examine_rhs
; alias: _ZN11examine_rhs5visitEP23ir_dereference_variable
; demangled: examine_rhs::visit(ir_dereference_variable*)
; decoder-mode: thumb
000959cc  d0 b5                                            push {r4, r6, r7, lr}
000959ce  02 af                                            add r7, sp, #8
000959d0  04 46                                            mov r4, r0
000959d2  89 69                                            ldr r1, [r1, #0x18]
000959d4  e0 69                                            ldr r0, [r4, #0x1c]
000959d6  9c f7 8c ee                                      blx #0x326f0
000959da  c1 69                                            ldr r1, [r0, #0x1c]
000959dc  a1 b1                                            cbz r1, #0x95a08
000959de  01 29                                            cmp r1, #1
000959e0  04 bf                                            itt eq
000959e2  81 7b                                            ldrbeq r1, [r0, #0xe]
000959e4  00 29                                            cmpeq r1, #0
000959e6  09 d0                                            beq #0x959fc
000959e8  80 68                                            ldr r0, [r0, #8]
000959ea  80 69                                            ldr r0, [r0, #0x18]
000959ec  c0 07                                            lsls r0, r0, #0x1f
000959ee  4f f0 00 00                                      mov.w r0, #0
000959f2  04 bf                                            itt eq
000959f4  84 f8 20 00                                      strbeq.w r0, [r4, #0x20]
000959f8  02 20                                            moveq r0, #2
000959fa  d0 bd                                            pop {r4, r6, r7, pc}
000959fc  01 7b                                            ldrb r1, [r0, #0xc]
000959fe  00 29                                            cmp r1, #0
00095a00  f2 d1                                            bne #0x959e8
00095a02  41 7b                                            ldrb r1, [r0, #0xd]
00095a04  00 29                                            cmp r1, #0
00095a06  ef d0                                            beq #0x959e8
00095a08  00 20                                            movs r0, #0
00095a0a  d0 bd                                            pop {r4, r6, r7, pc}
