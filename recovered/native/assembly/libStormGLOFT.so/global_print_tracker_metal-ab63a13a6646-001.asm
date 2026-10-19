; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008a540, declared_size=116, range_size=116, mode=thumb
; class-group: global_print_tracker_metal
; alias: _ZN26global_print_tracker_metalC2Ev
; demangled: global_print_tracker_metal::global_print_tracker_metal()
; decoder-mode: thumb
0008a540  f0 b5                                            push {r4, r5, r6, r7, lr}
0008a542  03 af                                            add r7, sp, #0xc
0008a544  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008a548  04 46                                            mov r4, r0
0008a54a  04 f1 08 00                                      add.w r0, r4, #8
0008a54e  20 61                                            str r0, [r4, #0x10]
0008a550  4f f0 00 08                                      mov.w r8, #0
0008a554  20 46                                            mov r0, r4
0008a556  40 f8 0c 8f                                      str r8, [r0, #0xc]!
0008a55a  a0 60                                            str r0, [r4, #8]
0008a55c  20 46                                            mov r0, r4
0008a55e  40 f8 20 8f                                      str r8, [r0, #0x20]!
0008a562  e0 61                                            str r0, [r4, #0x1c]
0008a564  04 f1 1c 00                                      add.w r0, r4, #0x1c
0008a568  60 62                                            str r0, [r4, #0x24]
0008a56a  00 20                                            movs r0, #0
0008a56c  a8 f7 be ed                                      blx #0x330ec
0008a570  0e 49                                            ldr r1, [pc, #0x38]
0008a572  0f 4a                                            ldr r2, [pc, #0x3c]
0008a574  79 44                                            add r1, pc
0008a576  a0 62                                            str r0, [r4, #0x28]
0008a578  7a 44                                            add r2, pc
0008a57a  00 20                                            movs r0, #0
0008a57c  0d 68                                            ldr r5, [r1]
0008a57e  16 68                                            ldr r6, [r2]
0008a580  c4 f8 00 80                                      str.w r8, [r4]
0008a584  29 46                                            mov r1, r5
0008a586  32 46                                            mov r2, r6
0008a588  a8 f7 f4 e8                                      blx #0x32774
0008a58c  60 60                                            str r0, [r4, #4]
0008a58e  00 20                                            movs r0, #0
0008a590  29 46                                            mov r1, r5
0008a592  32 46                                            mov r2, r6
0008a594  c4 f8 14 80                                      str.w r8, [r4, #0x14]
0008a598  a8 f7 ec e8                                      blx #0x32774
0008a59c  a0 61                                            str r0, [r4, #0x18]
0008a59e  20 46                                            mov r0, r4
0008a5a0  84 f8 2c 80                                      strb.w r8, [r4, #0x2c]
0008a5a4  5d f8 04 8b                                      ldr r8, [sp], #4
0008a5a8  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008a5aa  00 bf                                            nop
0008a5ac  f8 1f                                            subs r0, r7, #7
0008a5ae  05 00                                            movs r5, r0
0008a5b0  f8 1f                                            subs r0, r7, #7
0008a5b2  05 00                                            movs r5, r0
