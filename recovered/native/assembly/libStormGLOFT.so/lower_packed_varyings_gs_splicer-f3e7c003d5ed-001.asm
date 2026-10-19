; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0009a940, declared_size=32, range_size=32, mode=thumb
; class-group: lower_packed_varyings_gs_splicer
; alias: _ZN32lower_packed_varyings_gs_splicerC1EPvPK9exec_list
; demangled: lower_packed_varyings_gs_splicer::lower_packed_varyings_gs_splicer(void*, exec_list const*)
; alias: _ZN32lower_packed_varyings_gs_splicerC2EPvPK9exec_list
; demangled: lower_packed_varyings_gs_splicer::lower_packed_varyings_gs_splicer(void*, exec_list const*)
; decoder-mode: thumb
0009a940  b0 b5                                            push {r4, r5, r7, lr}
0009a942  02 af                                            add r7, sp, #8
0009a944  14 46                                            mov r4, r2
0009a946  0d 46                                            mov r5, r1
0009a948  98 f7 6c e9                                      blx #0x32c24
0009a94c  03 49                                            ldr r1, [pc, #0xc]
0009a94e  c5 61                                            str r5, [r0, #0x1c]
0009a950  79 44                                            add r1, pc
0009a952  04 62                                            str r4, [r0, #0x20]
0009a954  09 68                                            ldr r1, [r1]
0009a956  08 31                                            adds r1, #8
0009a958  01 60                                            str r1, [r0]
0009a95a  b0 bd                                            pop {r4, r5, r7, pc}
0009a95c  b4 20                                            movs r0, #0xb4
0009a95e  04 00                                            movs r4, r0

; FUNCTION 0x0009a960, declared_size=90, range_size=90, mode=thumb
; class-group: lower_packed_varyings_gs_splicer
; alias: _ZN32lower_packed_varyings_gs_splicer11visit_leaveEP14ir_emit_vertex
; demangled: lower_packed_varyings_gs_splicer::visit_leave(ir_emit_vertex*)
; decoder-mode: thumb
0009a960  f0 b5                                            push {r4, r5, r6, r7, lr}
0009a962  03 af                                            add r7, sp, #0xc
0009a964  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0009a968  80 46                                            mov r8, r0
0009a96a  0c 46                                            mov r4, r1
0009a96c  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
0009a970  00 68                                            ldr r0, [r0]
0009a972  00 28                                            cmp r0, #0
0009a974  18 bf                                            it ne
0009a976  04 38                                            subne r0, #4
0009a978  06 46                                            mov r6, r0
0009a97a  56 f8 04 1f                                      ldr r1, [r6, #4]!
0009a97e  c1 b1                                            cbz r1, #0x9a9b2
0009a980  25 1d                                            adds r5, r4, #4
0009a982  02 68                                            ldr r2, [r0]
0009a984  d8 f8 1c 10                                      ldr.w r1, [r8, #0x1c]
0009a988  13 69                                            ldr r3, [r2, #0x10]
0009a98a  00 22                                            movs r2, #0
0009a98c  98 47                                            blx r3
0009a98e  00 28                                            cmp r0, #0
0009a990  18 bf                                            it ne
0009a992  04 30                                            addne r0, #4
0009a994  05 60                                            str r5, [r0]
0009a996  a1 68                                            ldr r1, [r4, #8]
0009a998  41 60                                            str r1, [r0, #4]
0009a99a  a1 68                                            ldr r1, [r4, #8]
0009a99c  08 60                                            str r0, [r1]
0009a99e  a0 60                                            str r0, [r4, #8]
0009a9a0  30 68                                            ldr r0, [r6]
0009a9a2  00 28                                            cmp r0, #0
0009a9a4  18 bf                                            it ne
0009a9a6  04 38                                            subne r0, #4
0009a9a8  06 46                                            mov r6, r0
0009a9aa  56 f8 04 1f                                      ldr r1, [r6, #4]!
0009a9ae  00 29                                            cmp r1, #0
0009a9b0  e7 d1                                            bne #0x9a982
0009a9b2  00 20                                            movs r0, #0
0009a9b4  5d f8 04 8b                                      ldr r8, [sp], #4
0009a9b8  f0 bd                                            pop {r4, r5, r6, r7, pc}
