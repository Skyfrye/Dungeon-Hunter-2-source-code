; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a6904, declared_size=104, range_size=104, mode=thumb
; class-group: s_pattern
; alias: _ZN9s_pattern5matchEP12s_expression
; demangled: s_pattern::match(s_expression*)
; decoder-mode: thumb
000a6904  b0 b5                                            push {r4, r5, r7, lr}
000a6906  02 af                                            add r7, sp, #8
000a6908  05 46                                            mov r5, r0
000a690a  0c 46                                            mov r4, r1
000a690c  68 68                                            ldr r0, [r5, #4]
000a690e  05 28                                            cmp r0, #5
000a6910  15 d8                                            bhi #0xa693e
000a6912  df e8 00 f0                                      tbb [pc, r0]
000a6916  12 03                                            lsls r2, r2, #0xc
000a6918  06 09                                            lsrs r6, r0, #4
000a691a  0c 1b                                            subs r4, r1, r4
000a691c  20 68                                            ldr r0, [r4]
000a691e  41 68                                            ldr r1, [r0, #4]
000a6920  07 e0                                            b #0xa6932
000a6922  20 68                                            ldr r0, [r4]
000a6924  81 68                                            ldr r1, [r0, #8]
000a6926  04 e0                                            b #0xa6932
000a6928  20 68                                            ldr r0, [r4]
000a692a  c1 68                                            ldr r1, [r0, #0xc]
000a692c  01 e0                                            b #0xa6932
000a692e  20 68                                            ldr r0, [r4]
000a6930  01 69                                            ldr r1, [r0, #0x10]
000a6932  20 46                                            mov r0, r4
000a6934  88 47                                            blx r1
000a6936  01 28                                            cmp r0, #1
000a6938  01 d1                                            bne #0xa693e
000a693a  28 68                                            ldr r0, [r5]
000a693c  04 60                                            str r4, [r0]
000a693e  28 68                                            ldr r0, [r5]
000a6940  01 68                                            ldr r1, [r0]
000a6942  00 20                                            movs r0, #0
000a6944  a1 42                                            cmp r1, r4
000a6946  08 bf                                            it eq
000a6948  01 20                                            moveq r0, #1
000a694a  b0 bd                                            pop {r4, r5, r7, pc}
000a694c  54 b1                                            cbz r4, #0xa6964
000a694e  20 68                                            ldr r0, [r4]
000a6950  81 68                                            ldr r1, [r0, #8]
000a6952  20 46                                            mov r0, r4
000a6954  88 47                                            blx r1
000a6956  01 28                                            cmp r0, #1
000a6958  04 d1                                            bne #0xa6964
000a695a  29 68                                            ldr r1, [r5]
000a695c  e0 68                                            ldr r0, [r4, #0xc]
000a695e  8b f7 f0 ea                                      blx #0x31f40
000a6962  08 b1                                            cbz r0, #0xa6968
000a6964  00 20                                            movs r0, #0
000a6966  b0 bd                                            pop {r4, r5, r7, pc}
000a6968  01 20                                            movs r0, #1
000a696a  b0 bd                                            pop {r4, r5, r7, pc}
