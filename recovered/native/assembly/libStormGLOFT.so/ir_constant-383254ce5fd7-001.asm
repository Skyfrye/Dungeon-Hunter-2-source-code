; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000808d4, declared_size=56, range_size=56, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantC1Ev
; demangled: ir_constant::ir_constant()
; alias: _ZN11ir_constantC2Ev
; demangled: ir_constant::ir_constant()
; decoder-mode: thumb
000808d4  0b 49                                            ldr r1, [pc, #0x2c]
000808d6  03 23                                            movs r3, #3
000808d8  df f8 2c c0                                      ldr.w ip, [pc, #0x2c]
000808dc  02 46                                            mov r2, r0
000808de  79 44                                            add r1, pc
000808e0  43 61                                            str r3, [r0, #0x14]
000808e2  c3 60                                            str r3, [r0, #0xc]
000808e4  00 23                                            movs r3, #0
000808e6  09 68                                            ldr r1, [r1]
000808e8  fc 44                                            add ip, pc
000808ea  42 f8 60 3f                                      str r3, [r2, #0x60]!
000808ee  00 f1 5c 03                                      add.w r3, r0, #0x5c
000808f2  c2 65                                            str r2, [r0, #0x5c]
000808f4  dc f8 00 20                                      ldr.w r2, [ip]
000808f8  09 68                                            ldr r1, [r1]
000808fa  43 66                                            str r3, [r0, #0x64]
000808fc  08 32                                            adds r2, #8
000808fe  02 60                                            str r2, [r0]
00080900  01 61                                            str r1, [r0, #0x10]
00080902  70 47                                            bx lr
00080904  5e bc                                            pop {r1, r2, r3, r4, r6}
00080906  05 00                                            movs r5, r0
00080908  8c c0                                            stm r0!, {r2, r3, r7}
0008090a  05 00                                            movs r5, r0

; FUNCTION 0x0008090c, declared_size=88, range_size=88, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantC1EPK9glsl_typePK16ir_constant_data
; demangled: ir_constant::ir_constant(glsl_type const*, ir_constant_data const*)
; alias: _ZN11ir_constantC2EPK9glsl_typePK16ir_constant_data
; demangled: ir_constant::ir_constant(glsl_type const*, ir_constant_data const*)
; decoder-mode: thumb
0008090c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008090e  03 af                                            add r7, sp, #0xc
00080910  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00080914  df f8 48 c0                                      ldr.w ip, [pc, #0x48]
00080918  03 23                                            movs r3, #3
0008091a  43 61                                            str r3, [r0, #0x14]
0008091c  4f f0 00 0e                                      mov.w lr, #0
00080920  fc 44                                            add ip, pc
00080922  c3 60                                            str r3, [r0, #0xc]
00080924  03 46                                            mov r3, r0
00080926  dc f8 00 c0                                      ldr.w ip, [ip]
0008092a  43 f8 60 ef                                      str lr, [r3, #0x60]!
0008092e  c3 65                                            str r3, [r0, #0x5c]
00080930  00 f1 5c 03                                      add.w r3, r0, #0x5c
00080934  43 66                                            str r3, [r0, #0x64]
00080936  01 61                                            str r1, [r0, #0x10]
00080938  0c f1 08 01                                      add.w r1, ip, #8
0008093c  01 60                                            str r1, [r0]
0008093e  00 f1 18 01                                      add.w r1, r0, #0x18
00080942  b2 e8 38 50                                      ldm.w r2!, {r3, r4, r5, ip, lr}
00080946  a1 e8 38 50                                      stm.w r1!, {r3, r4, r5, ip, lr}
0008094a  b2 e8 38 50                                      ldm.w r2!, {r3, r4, r5, ip, lr}
0008094e  a1 e8 38 50                                      stm.w r1!, {r3, r4, r5, ip, lr}
00080952  92 e8 78 50                                      ldm.w r2, {r3, r4, r5, r6, ip, lr}
00080956  81 e8 78 50                                      stm.w r1, {r3, r4, r5, r6, ip, lr}
0008095a  5d f8 04 bb                                      ldr fp, [sp], #4
0008095e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00080960  54 c0                                            stm r0!, {r2, r4, r6}
00080962  05 00                                            movs r5, r0

; FUNCTION 0x00080964, declared_size=132, range_size=132, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantC1Efj
; demangled: ir_constant::ir_constant(float, unsigned int)
; alias: _ZN11ir_constantC2Efj
; demangled: ir_constant::ir_constant(float, unsigned int)
; decoder-mode: thumb
00080964  f0 b5                                            push {r4, r5, r6, r7, lr}
00080966  03 af                                            add r7, sp, #0xc
00080968  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008096c  04 46                                            mov r4, r0
0008096e  1c 48                                            ldr r0, [pc, #0x70]
00080970  0e 46                                            mov r6, r1
00080972  1c 49                                            ldr r1, [pc, #0x70]
00080974  78 44                                            add r0, pc
00080976  15 46                                            mov r5, r2
00080978  79 44                                            add r1, pc
0008097a  03 22                                            movs r2, #3
0008097c  00 68                                            ldr r0, [r0]
0008097e  23 46                                            mov r3, r4
00080980  09 68                                            ldr r1, [r1]
00080982  62 61                                            str r2, [r4, #0x14]
00080984  e2 60                                            str r2, [r4, #0xc]
00080986  00 22                                            movs r2, #0
00080988  43 f8 60 2f                                      str r2, [r3, #0x60]!
0008098c  04 f1 5c 02                                      add.w r2, r4, #0x5c
00080990  00 68                                            ldr r0, [r0]
00080992  08 31                                            adds r1, #8
00080994  e3 65                                            str r3, [r4, #0x5c]
00080996  62 66                                            str r2, [r4, #0x64]
00080998  01 22                                            movs r2, #1
0008099a  21 60                                            str r1, [r4]
0008099c  29 46                                            mov r1, r5
0008099e  20 61                                            str r0, [r4, #0x10]
000809a0  02 20                                            movs r0, #2
000809a2  b1 f7 c0 ef                                      blx #0x32924
000809a6  00 2d                                            cmp r5, #0
000809a8  20 61                                            str r0, [r4, #0x10]
000809aa  0c d0                                            beq #0x809c6
000809ac  00 ee 10 6a                                      vmov s0, r6
000809b0  04 f1 18 00                                      add.w r0, r4, #0x18
000809b4  29 46                                            mov r1, r5
000809b6  80 ed 00 0a                                      vstr s0, [r0]
000809ba  01 39                                            subs r1, #1
000809bc  00 f1 04 00                                      add.w r0, r0, #4
000809c0  f9 d1                                            bne #0x809b6
000809c2  0f 2d                                            cmp r5, #0xf
000809c4  07 d8                                            bhi #0x809d6
000809c6  40 20                                            movs r0, #0x40
000809c8  a0 eb 85 01                                      sub.w r1, r0, r5, lsl #2
000809cc  04 eb 85 00                                      add.w r0, r4, r5, lsl #2
000809d0  18 30                                            adds r0, #0x18
000809d2  b1 f7 46 ee                                      blx #0x32660
000809d6  20 46                                            mov r0, r4
000809d8  5d f8 04 bb                                      ldr fp, [sp], #4
000809dc  f0 bd                                            pop {r4, r5, r6, r7, pc}
000809de  00 bf                                            nop
000809e0  c8 bb                                            cbnz r0, #0x80a56
000809e2  05 00                                            movs r5, r0
000809e4  fc bf                                            ite al
000809e6  05 00                                            movs r5, r0

; FUNCTION 0x000809e8, declared_size=124, range_size=124, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantC1Ejj
; demangled: ir_constant::ir_constant(unsigned int, unsigned int)
; alias: _ZN11ir_constantC2Ejj
; demangled: ir_constant::ir_constant(unsigned int, unsigned int)
; decoder-mode: thumb
000809e8  f0 b5                                            push {r4, r5, r6, r7, lr}
000809ea  03 af                                            add r7, sp, #0xc
000809ec  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000809f0  04 46                                            mov r4, r0
000809f2  1a 48                                            ldr r0, [pc, #0x68]
000809f4  0e 46                                            mov r6, r1
000809f6  1a 49                                            ldr r1, [pc, #0x68]
000809f8  78 44                                            add r0, pc
000809fa  15 46                                            mov r5, r2
000809fc  79 44                                            add r1, pc
000809fe  03 22                                            movs r2, #3
00080a00  00 68                                            ldr r0, [r0]
00080a02  23 46                                            mov r3, r4
00080a04  09 68                                            ldr r1, [r1]
00080a06  62 61                                            str r2, [r4, #0x14]
00080a08  e2 60                                            str r2, [r4, #0xc]
00080a0a  00 22                                            movs r2, #0
00080a0c  43 f8 60 2f                                      str r2, [r3, #0x60]!
00080a10  04 f1 5c 02                                      add.w r2, r4, #0x5c
00080a14  00 68                                            ldr r0, [r0]
00080a16  08 31                                            adds r1, #8
00080a18  e3 65                                            str r3, [r4, #0x5c]
00080a1a  62 66                                            str r2, [r4, #0x64]
00080a1c  01 22                                            movs r2, #1
00080a1e  21 60                                            str r1, [r4]
00080a20  29 46                                            mov r1, r5
00080a22  20 61                                            str r0, [r4, #0x10]
00080a24  00 20                                            movs r0, #0
00080a26  b1 f7 7e ef                                      blx #0x32924
00080a2a  00 2d                                            cmp r5, #0
00080a2c  20 61                                            str r0, [r4, #0x10]
00080a2e  09 d0                                            beq #0x80a44
00080a30  04 f1 18 00                                      add.w r0, r4, #0x18
00080a34  00 21                                            movs r1, #0
00080a36  40 f8 21 60                                      str.w r6, [r0, r1, lsl #2]
00080a3a  01 31                                            adds r1, #1
00080a3c  8d 42                                            cmp r5, r1
00080a3e  fa d1                                            bne #0x80a36
00080a40  0f 2d                                            cmp r5, #0xf
00080a42  07 d8                                            bhi #0x80a54
00080a44  40 20                                            movs r0, #0x40
00080a46  a0 eb 85 01                                      sub.w r1, r0, r5, lsl #2
00080a4a  04 eb 85 00                                      add.w r0, r4, r5, lsl #2
00080a4e  18 30                                            adds r0, #0x18
00080a50  b1 f7 06 ee                                      blx #0x32660
00080a54  20 46                                            mov r0, r4
00080a56  5d f8 04 bb                                      ldr fp, [sp], #4
00080a5a  f0 bd                                            pop {r4, r5, r6, r7, pc}
00080a5c  44 bb                                            cbnz r4, #0x80ab0
00080a5e  05 00                                            movs r5, r0
00080a60  78 bf                                            it vc
00080a62  05 00                                            movs r5, r0

; FUNCTION 0x00080a64, declared_size=124, range_size=124, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantC1Eij
; demangled: ir_constant::ir_constant(int, unsigned int)
; alias: _ZN11ir_constantC2Eij
; demangled: ir_constant::ir_constant(int, unsigned int)
; decoder-mode: thumb
00080a64  f0 b5                                            push {r4, r5, r6, r7, lr}
00080a66  03 af                                            add r7, sp, #0xc
00080a68  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00080a6c  04 46                                            mov r4, r0
00080a6e  1a 48                                            ldr r0, [pc, #0x68]
00080a70  0e 46                                            mov r6, r1
00080a72  1a 49                                            ldr r1, [pc, #0x68]
00080a74  78 44                                            add r0, pc
00080a76  15 46                                            mov r5, r2
00080a78  79 44                                            add r1, pc
00080a7a  03 22                                            movs r2, #3
00080a7c  00 68                                            ldr r0, [r0]
00080a7e  23 46                                            mov r3, r4
00080a80  09 68                                            ldr r1, [r1]
00080a82  62 61                                            str r2, [r4, #0x14]
00080a84  e2 60                                            str r2, [r4, #0xc]
00080a86  00 22                                            movs r2, #0
00080a88  43 f8 60 2f                                      str r2, [r3, #0x60]!
00080a8c  04 f1 5c 02                                      add.w r2, r4, #0x5c
00080a90  00 68                                            ldr r0, [r0]
00080a92  08 31                                            adds r1, #8
00080a94  e3 65                                            str r3, [r4, #0x5c]
00080a96  62 66                                            str r2, [r4, #0x64]
00080a98  01 22                                            movs r2, #1
00080a9a  21 60                                            str r1, [r4]
00080a9c  29 46                                            mov r1, r5
00080a9e  20 61                                            str r0, [r4, #0x10]
00080aa0  01 20                                            movs r0, #1
00080aa2  b1 f7 40 ef                                      blx #0x32924
00080aa6  00 2d                                            cmp r5, #0
00080aa8  20 61                                            str r0, [r4, #0x10]
00080aaa  09 d0                                            beq #0x80ac0
00080aac  04 f1 18 00                                      add.w r0, r4, #0x18
00080ab0  00 21                                            movs r1, #0
00080ab2  40 f8 21 60                                      str.w r6, [r0, r1, lsl #2]
00080ab6  01 31                                            adds r1, #1
00080ab8  8d 42                                            cmp r5, r1
00080aba  fa d1                                            bne #0x80ab2
00080abc  0f 2d                                            cmp r5, #0xf
00080abe  07 d8                                            bhi #0x80ad0
00080ac0  40 20                                            movs r0, #0x40
00080ac2  a0 eb 85 01                                      sub.w r1, r0, r5, lsl #2
00080ac6  04 eb 85 00                                      add.w r0, r4, r5, lsl #2
00080aca  18 30                                            adds r0, #0x18
00080acc  b1 f7 c8 ed                                      blx #0x32660
00080ad0  20 46                                            mov r0, r4
00080ad2  5d f8 04 bb                                      ldr fp, [sp], #4
00080ad6  f0 bd                                            pop {r4, r5, r6, r7, pc}
00080ad8  c8 ba                                            revsh r0, r1
00080ada  05 00                                            movs r5, r0
00080adc  fc be                                            bkpt #0xfc
00080ade  05 00                                            movs r5, r0

; FUNCTION 0x00080ae0, declared_size=116, range_size=116, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantC1Ebj
; demangled: ir_constant::ir_constant(bool, unsigned int)
; alias: _ZN11ir_constantC2Ebj
; demangled: ir_constant::ir_constant(bool, unsigned int)
; decoder-mode: thumb
00080ae0  f0 b5                                            push {r4, r5, r6, r7, lr}
00080ae2  03 af                                            add r7, sp, #0xc
00080ae4  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00080ae8  04 46                                            mov r4, r0
00080aea  18 48                                            ldr r0, [pc, #0x60]
00080aec  0e 46                                            mov r6, r1
00080aee  18 49                                            ldr r1, [pc, #0x60]
00080af0  78 44                                            add r0, pc
00080af2  15 46                                            mov r5, r2
00080af4  79 44                                            add r1, pc
00080af6  03 22                                            movs r2, #3
00080af8  00 68                                            ldr r0, [r0]
00080afa  23 46                                            mov r3, r4
00080afc  09 68                                            ldr r1, [r1]
00080afe  62 61                                            str r2, [r4, #0x14]
00080b00  e2 60                                            str r2, [r4, #0xc]
00080b02  00 22                                            movs r2, #0
00080b04  43 f8 60 2f                                      str r2, [r3, #0x60]!
00080b08  04 f1 5c 02                                      add.w r2, r4, #0x5c
00080b0c  00 68                                            ldr r0, [r0]
00080b0e  08 31                                            adds r1, #8
00080b10  e3 65                                            str r3, [r4, #0x5c]
00080b12  62 66                                            str r2, [r4, #0x64]
00080b14  01 22                                            movs r2, #1
00080b16  21 60                                            str r1, [r4]
00080b18  29 46                                            mov r1, r5
00080b1a  20 61                                            str r0, [r4, #0x10]
00080b1c  03 20                                            movs r0, #3
00080b1e  b1 f7 02 ef                                      blx #0x32924
00080b22  00 2d                                            cmp r5, #0
00080b24  20 61                                            str r0, [r4, #0x10]
00080b26  07 d0                                            beq #0x80b38
00080b28  04 f1 18 00                                      add.w r0, r4, #0x18
00080b2c  29 46                                            mov r1, r5
00080b2e  32 46                                            mov r2, r6
00080b30  b3 f7 40 e8                                      blx #0x33bb4
00080b34  0f 2d                                            cmp r5, #0xf
00080b36  05 d8                                            bhi #0x80b44
00080b38  60 19                                            adds r0, r4, r5
00080b3a  c5 f1 10 01                                      rsb.w r1, r5, #0x10
00080b3e  18 30                                            adds r0, #0x18
00080b40  b1 f7 b2 ed                                      blx #0x326a8
00080b44  20 46                                            mov r0, r4
00080b46  5d f8 04 bb                                      ldr fp, [sp], #4
00080b4a  f0 bd                                            pop {r4, r5, r6, r7, pc}
00080b4c  4c ba                                            rev16 r4, r1
00080b4e  05 00                                            movs r5, r0
00080b50  80 be                                            bkpt #0x80
00080b52  05 00                                            movs r5, r0

; FUNCTION 0x00080b54, declared_size=112, range_size=112, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantC1EPKS_j
; demangled: ir_constant::ir_constant(ir_constant const*, unsigned int)
; alias: _ZN11ir_constantC2EPKS_j
; demangled: ir_constant::ir_constant(ir_constant const*, unsigned int)
; decoder-mode: thumb
00080b54  f0 b5                                            push {r4, r5, r6, r7, lr}
00080b56  03 af                                            add r7, sp, #0xc
00080b58  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00080b5c  04 46                                            mov r4, r0
00080b5e  17 48                                            ldr r0, [pc, #0x5c]
00080b60  0e 46                                            mov r6, r1
00080b62  17 49                                            ldr r1, [pc, #0x5c]
00080b64  78 44                                            add r0, pc
00080b66  15 46                                            mov r5, r2
00080b68  79 44                                            add r1, pc
00080b6a  72 69                                            ldr r2, [r6, #0x14]
00080b6c  00 68                                            ldr r0, [r0]
00080b6e  04 f1 5c 03                                      add.w r3, r4, #0x5c
00080b72  63 66                                            str r3, [r4, #0x64]
00080b74  23 46                                            mov r3, r4
00080b76  09 68                                            ldr r1, [r1]
00080b78  62 61                                            str r2, [r4, #0x14]
00080b7a  03 22                                            movs r2, #3
00080b7c  e2 60                                            str r2, [r4, #0xc]
00080b7e  00 22                                            movs r2, #0
00080b80  00 68                                            ldr r0, [r0]
00080b82  08 31                                            adds r1, #8
00080b84  43 f8 60 2f                                      str r2, [r3, #0x60]!
00080b88  e3 65                                            str r3, [r4, #0x5c]
00080b8a  21 60                                            str r1, [r4]
00080b8c  20 61                                            str r0, [r4, #0x10]
00080b8e  30 69                                            ldr r0, [r6, #0x10]
00080b90  b3 f7 16 e8                                      blx #0x33bc0
00080b94  20 61                                            str r0, [r4, #0x10]
00080b96  40 68                                            ldr r0, [r0, #4]
00080b98  03 28                                            cmp r0, #3
00080b9a  0b d8                                            bhi #0x80bb4
00080b9c  df e8 00 f0                                      tbb [pc, r0]
00080ba0  02 02                                            lsls r2, r0, #8
00080ba2  02 07                                            lsls r2, r0, #0x1c
00080ba4  06 eb 85 00                                      add.w r0, r6, r5, lsl #2
00080ba8  80 69                                            ldr r0, [r0, #0x18]
00080baa  a0 61                                            str r0, [r4, #0x18]
00080bac  02 e0                                            b #0x80bb4
00080bae  70 19                                            adds r0, r6, r5
00080bb0  00 7e                                            ldrb r0, [r0, #0x18]
00080bb2  20 76                                            strb r0, [r4, #0x18]
00080bb4  20 46                                            mov r0, r4
00080bb6  5d f8 04 bb                                      ldr fp, [sp], #4
00080bba  f0 bd                                            pop {r4, r5, r6, r7, pc}
00080bbc  d8 b9                                            cbnz r0, #0x80bf6
00080bbe  05 00                                            movs r5, r0
00080bc0  0c be                                            bkpt #0xc
00080bc2  05 00                                            movs r5, r0

; FUNCTION 0x00080bc4, declared_size=968, range_size=968, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantC1EPK9glsl_typeP9exec_list
; demangled: ir_constant::ir_constant(glsl_type const*, exec_list*)
; alias: _ZN11ir_constantC2EPK9glsl_typeP9exec_list
; demangled: ir_constant::ir_constant(glsl_type const*, exec_list*)
; decoder-mode: thumb
00080bc4  f0 b5                                            push {r4, r5, r6, r7, lr}
00080bc6  03 af                                            add r7, sp, #0xc
00080bc8  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00080bcc  85 b0                                            sub sp, #0x14
00080bce  14 46                                            mov r4, r2
00080bd0  df f8 b4 23                                      ldr.w r2, [pc, #0x3b4]
00080bd4  80 46                                            mov r8, r0
00080bd6  8b 46                                            mov fp, r1
00080bd8  7a 44                                            add r2, pc
00080bda  03 21                                            movs r1, #3
00080bdc  08 f1 5c 00                                      add.w r0, r8, #0x5c
00080be0  c8 f8 64 00                                      str.w r0, [r8, #0x64]
00080be4  12 68                                            ldr r2, [r2]
00080be6  00 23                                            movs r3, #0
00080be8  c8 f8 14 10                                      str.w r1, [r8, #0x14]
00080bec  c8 f8 0c 10                                      str.w r1, [r8, #0xc]
00080bf0  41 46                                            mov r1, r8
00080bf2  41 f8 60 3f                                      str r3, [r1, #0x60]!
00080bf6  08 32                                            adds r2, #8
00080bf8  c8 f8 5c 10                                      str.w r1, [r8, #0x5c]
00080bfc  c8 f8 10 b0                                      str.w fp, [r8, #0x10]
00080c00  c8 f8 00 20                                      str.w r2, [r8]
00080c04  db f8 04 20                                      ldr.w r2, [fp, #4]
00080c08  07 2a                                            cmp r2, #7
00080c0a  2b d0                                            beq #0x80c64
00080c0c  09 2a                                            cmp r2, #9
00080c0e  3c d1                                            bne #0x80c8a
00080c10  db f8 10 20                                      ldr.w r2, [fp, #0x10]
00080c14  40 46                                            mov r0, r8
00080c16  04 21                                            movs r1, #4
00080c18  b2 f7 1e e9                                      blx #0x32e58
00080c1c  c8 f8 58 00                                      str.w r0, [r8, #0x58]
00080c20  21 68                                            ldr r1, [r4]
00080c22  00 29                                            cmp r1, #0
00080c24  18 bf                                            it ne
00080c26  04 39                                            subne r1, #4
00080c28  4a 68                                            ldr r2, [r1, #4]
00080c2a  00 2a                                            cmp r2, #0
00080c2c  00 f0 39 81                                      beq.w #0x80ea2
00080c30  01 60                                            str r1, [r0]
00080c32  48 68                                            ldr r0, [r1, #4]
00080c34  00 28                                            cmp r0, #0
00080c36  18 bf                                            it ne
00080c38  04 38                                            subne r0, #4
00080c3a  01 46                                            mov r1, r0
00080c3c  51 f8 04 2f                                      ldr r2, [r1, #4]!
00080c40  00 2a                                            cmp r2, #0
00080c42  00 f0 2e 81                                      beq.w #0x80ea2
00080c46  04 22                                            movs r2, #4
00080c48  d8 f8 58 30                                      ldr.w r3, [r8, #0x58]
00080c4c  98 50                                            str r0, [r3, r2]
00080c4e  04 32                                            adds r2, #4
00080c50  08 68                                            ldr r0, [r1]
00080c52  00 28                                            cmp r0, #0
00080c54  18 bf                                            it ne
00080c56  04 38                                            subne r0, #4
00080c58  01 46                                            mov r1, r0
00080c5a  51 f8 04 3f                                      ldr r3, [r1, #4]!
00080c5e  00 2b                                            cmp r3, #0
00080c60  f2 d1                                            bne #0x80c48
00080c62  1e e1                                            b #0x80ea2
00080c64  23 46                                            mov r3, r4
00080c66  53 f8 04 2b                                      ldr r2, [r3], #4
00080c6a  9a 42                                            cmp r2, r3
00080c6c  00 f0 13 81                                      beq.w #0x80e96
00080c70  00 26                                            movs r6, #0
00080c72  02 60                                            str r2, [r0]
00080c74  0e 60                                            str r6, [r1]
00080c76  a6 68                                            ldr r6, [r4, #8]
00080c78  4e 60                                            str r6, [r1, #4]
00080c7a  50 60                                            str r0, [r2, #4]
00080c7c  1a 1d                                            adds r2, r3, #4
00080c7e  48 68                                            ldr r0, [r1, #4]
00080c80  01 60                                            str r1, [r0]
00080c82  19 46                                            mov r1, r3
00080c84  20 46                                            mov r0, r4
00080c86  23 60                                            str r3, [r4]
00080c88  08 e1                                            b #0x80e9c
00080c8a  08 f1 18 09                                      add.w sb, r8, #0x18
00080c8e  40 21                                            movs r1, #0x40
00080c90  48 46                                            mov r0, sb
00080c92  b1 f7 e6 ec                                      blx #0x32660
00080c96  d4 f8 00 a0                                      ldr.w sl, [r4]
00080c9a  ba f1 00 0f                                      cmp.w sl, #0
00080c9e  18 bf                                            it ne
00080ca0  aa f1 04 0a                                      subne.w sl, sl, #4
00080ca4  da f8 10 40                                      ldr.w r4, [sl, #0x10]
00080ca8  21 89                                            ldrh r1, [r4, #8]
00080caa  01 f4 60 60                                      and r0, r1, #0xe00
00080cae  b0 f5 00 7f                                      cmp.w r0, #0x200
00080cb2  08 d1                                            bne #0x80cc6
00080cb4  60 68                                            ldr r0, [r4, #4]
00080cb6  03 28                                            cmp r0, #3
00080cb8  05 d8                                            bhi #0x80cc6
00080cba  da f8 04 00                                      ldr.w r0, [sl, #4]
00080cbe  00 68                                            ldr r0, [r0]
00080cc0  00 28                                            cmp r0, #0
00080cc2  00 f0 f3 80                                      beq.w #0x80eac
00080cc6  bb f8 08 00                                      ldrh.w r0, [fp, #8]
00080cca  10 f4 c0 4f                                      tst.w r0, #0x6000
00080cce  56 d0                                            beq #0x80d7e
00080cd0  db f8 04 20                                      ldr.w r2, [fp, #4]
00080cd4  02 2a                                            cmp r2, #2
00080cd6  52 d1                                            bne #0x80d7e
00080cd8  11 f4 c0 42                                      ands r2, r1, #0x6000
00080cdc  4f d0                                            beq #0x80d7e
00080cde  62 68                                            ldr r2, [r4, #4]
00080ce0  02 2a                                            cmp r2, #2
00080ce2  4c d1                                            bne #0x80d7e
00080ce4  c1 f3 42 22                                      ubfx r2, r1, #9, #3
00080ce8  c0 f3 42 23                                      ubfx r3, r0, #9, #3
00080cec  93 42                                            cmp r3, r2
00080cee  22 46                                            mov r2, r4
00080cf0  38 bf                                            it lo
00080cf2  5a 46                                            movlo r2, fp
00080cf4  c1 f3 02 31                                      ubfx r1, r1, #0xc, #3
00080cf8  c0 f3 02 33                                      ubfx r3, r0, #0xc, #3
00080cfc  12 89                                            ldrh r2, [r2, #8]
00080cfe  8b 42                                            cmp r3, r1
00080d00  21 46                                            mov r1, r4
00080d02  38 bf                                            it lo
00080d04  59 46                                            movlo r1, fp
00080d06  09 89                                            ldrh r1, [r1, #8]
00080d08  c2 f3 42 22                                      ubfx r2, r2, #9, #3
00080d0c  c1 f3 02 3c                                      ubfx ip, r1, #0xc, #3
00080d10  bc f1 00 0f                                      cmp.w ip, #0
00080d14  1b d0                                            beq #0x80d4e
00080d16  0a f1 18 00                                      add.w r0, sl, #0x18
00080d1a  00 23                                            movs r3, #0
00080d1c  92 b1                                            cbz r2, #0x80d44
00080d1e  00 26                                            movs r6, #0
00080d20  21 89                                            ldrh r1, [r4, #8]
00080d22  bb f8 08 50                                      ldrh.w r5, [fp, #8]
00080d26  c1 f3 42 21                                      ubfx r1, r1, #9, #3
00080d2a  c5 f3 42 25                                      ubfx r5, r5, #9, #3
00080d2e  03 fb 01 61                                      mla r1, r3, r1, r6
00080d32  03 fb 05 65                                      mla r5, r3, r5, r6
00080d36  01 36                                            adds r6, #1
00080d38  96 42                                            cmp r6, r2
00080d3a  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
00080d3e  49 f8 25 10                                      str.w r1, [sb, r5, lsl #2]
00080d42  ed d3                                            blo #0x80d20
00080d44  01 33                                            adds r3, #1
00080d46  63 45                                            cmp r3, ip
00080d48  e8 d3                                            blo #0x80d1c
00080d4a  bb f8 08 00                                      ldrh.w r0, [fp, #8]
00080d4e  c0 f3 02 32                                      ubfx r2, r0, #0xc, #3
00080d52  1f fa 8c f3                                      uxth.w r3, ip
00080d56  93 42                                            cmp r3, r2
00080d58  80 f0 a3 80                                      bhs.w #0x80ea2
00080d5c  4f f0 7e 52                                      mov.w r2, #0x3f800000
00080d60  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00080d64  0c fb 00 c0                                      mla r0, ip, r0, ip
00080d68  0c f1 01 0c                                      add.w ip, ip, #1
00080d6c  49 f8 20 20                                      str.w r2, [sb, r0, lsl #2]
00080d70  bb f8 08 00                                      ldrh.w r0, [fp, #8]
00080d74  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00080d78  8c 45                                            cmp ip, r1
00080d7a  f1 d3                                            blo #0x80d60
00080d7c  91 e0                                            b #0x80ea2
00080d7e  c0 f3 02 32                                      ubfx r2, r0, #0xc, #3
00080d82  c0 f3 42 23                                      ubfx r3, r0, #9, #3
00080d86  13 fb 02 f2                                      smulbb r2, r3, r2
00080d8a  00 2a                                            cmp r2, #0
00080d8c  00 f0 89 80                                      beq.w #0x80ea2
00080d90  00 23                                            movs r3, #0
00080d92  cd e9 01 98                                      strd sb, r8, [sp, #4]
00080d96  02 e0                                            b #0x80d9e
00080d98  da f8 10 40                                      ldr.w r4, [sl, #0x10]
00080d9c  21 89                                            ldrh r1, [r4, #8]
00080d9e  89 b2                                            uxth r1, r1
00080da0  c1 f3 02 32                                      ubfx r2, r1, #0xc, #3
00080da4  c1 f3 42 21                                      ubfx r1, r1, #9, #3
00080da8  11 fb 02 f1                                      smulbb r1, r1, r2
00080dac  00 29                                            cmp r1, #0
00080dae  60 d0                                            beq #0x80e72
00080db0  09 eb 03 00                                      add.w r0, sb, r3
00080db4  09 eb 83 08                                      add.w r8, sb, r3, lsl #2
00080db8  03 f1 01 09                                      add.w sb, r3, #1
00080dbc  0a f1 18 05                                      add.w r5, sl, #0x18
00080dc0  cd e9 03 30                                      strd r3, r0, [sp, #0xc]
00080dc4  00 21                                            movs r1, #0
00080dc6  db f8 04 00                                      ldr.w r0, [fp, #4]
00080dca  0e 46                                            mov r6, r1
00080dcc  03 28                                            cmp r0, #3
00080dce  35 d8                                            bhi #0x80e3c
00080dd0  df e8 00 f0                                      tbb [pc, r0]
00080dd4  02 10                                            asrs r2, r0, #0x20
00080dd6  1a 1f                                            subs r2, r3, #4
00080dd8  60 68                                            ldr r0, [r4, #4]
00080dda  03 28                                            cmp r0, #3
00080ddc  20 d8                                            bhi #0x80e20
00080dde  df e8 00 f0                                      tbb [pc, r0]
00080de2  10 10                                            asrs r0, r2, #0x20
00080de4  02 21                                            movs r1, #2
00080de6  05 eb 86 00                                      add.w r0, r5, r6, lsl #2
00080dea  90 ed 00 0a                                      vldr s0, [r0]
00080dee  bc ee c0 0a                                      vcvt.u32.f32 s0, s0
00080df2  1f e0                                            b #0x80e34
00080df4  60 68                                            ldr r0, [r4, #4]
00080df6  03 28                                            cmp r0, #3
00080df8  12 d8                                            bhi #0x80e20
00080dfa  df e8 00 f0                                      tbb [pc, r0]
00080dfe  02 02                                            lsls r2, r0, #8
00080e00  15 13                                            asrs r5, r2, #0xc
00080e02  55 f8 26 00                                      ldr.w r0, [r5, r6, lsl #2]
00080e06  17 e0                                            b #0x80e38
00080e08  50 46                                            mov r0, sl
00080e0a  31 46                                            mov r1, r6
00080e0c  b1 f7 c6 ed                                      blx #0x3299c
00080e10  12 e0                                            b #0x80e38
00080e12  50 46                                            mov r0, sl
00080e14  31 46                                            mov r1, r6
00080e16  b1 f7 c8 ed                                      blx #0x329a8
00080e1a  04 99                                            ldr r1, [sp, #0x10]
00080e1c  88 55                                            strb r0, [r1, r6]
00080e1e  0d e0                                            b #0x80e3c
00080e20  00 20                                            movs r0, #0
00080e22  09 e0                                            b #0x80e38
00080e24  a8 5d                                            ldrb r0, [r5, r6]
00080e26  07 e0                                            b #0x80e38
00080e28  05 eb 86 00                                      add.w r0, r5, r6, lsl #2
00080e2c  90 ed 00 0a                                      vldr s0, [r0]
00080e30  bd ee c0 0a                                      vcvt.s32.f32 s0, s0
00080e34  10 ee 10 0a                                      vmov r0, s0
00080e38  48 f8 26 00                                      str.w r0, [r8, r6, lsl #2]
00080e3c  bb f8 08 00                                      ldrh.w r0, [fp, #8]
00080e40  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00080e44  c0 f3 42 22                                      ubfx r2, r0, #9, #3
00080e48  12 fb 01 f1                                      smulbb r1, r2, r1
00080e4c  09 eb 06 02                                      add.w r2, sb, r6
00080e50  8a 42                                            cmp r2, r1
00080e52  09 d2                                            bhs #0x80e68
00080e54  22 89                                            ldrh r2, [r4, #8]
00080e56  71 1c                                            adds r1, r6, #1
00080e58  c2 f3 02 33                                      ubfx r3, r2, #0xc, #3
00080e5c  c2 f3 42 22                                      ubfx r2, r2, #9, #3
00080e60  12 fb 03 f2                                      smulbb r2, r2, r3
00080e64  91 42                                            cmp r1, r2
00080e66  ae d3                                            blo #0x80dc6
00080e68  03 99                                            ldr r1, [sp, #0xc]
00080e6a  dd e9 01 98                                      ldrd sb, r8, [sp, #4]
00080e6e  31 44                                            add r1, r6
00080e70  4b 1c                                            adds r3, r1, #1
00080e72  81 b2                                            uxth r1, r0
00080e74  da f8 04 a0                                      ldr.w sl, [sl, #4]
00080e78  c1 f3 02 32                                      ubfx r2, r1, #0xc, #3
00080e7c  c1 f3 42 21                                      ubfx r1, r1, #9, #3
00080e80  ba f1 00 0f                                      cmp.w sl, #0
00080e84  18 bf                                            it ne
00080e86  aa f1 04 0a                                      subne.w sl, sl, #4
00080e8a  11 fb 02 f1                                      smulbb r1, r1, r2
00080e8e  8b 42                                            cmp r3, r1
00080e90  ff f4 82 af                                      blo.w #0x80d98
00080e94  05 e0                                            b #0x80ea2
00080e96  08 f1 64 02                                      add.w r2, r8, #0x64
00080e9a  01 60                                            str r1, [r0]
00080e9c  00 23                                            movs r3, #0
00080e9e  0b 60                                            str r3, [r1]
00080ea0  10 60                                            str r0, [r2]
00080ea2  40 46                                            mov r0, r8
00080ea4  05 b0                                            add sp, #0x14
00080ea6  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00080eaa  f0 bd                                            pop {r4, r5, r6, r7, pc}
00080eac  bb f8 08 00                                      ldrh.w r0, [fp, #8]
00080eb0  db f8 04 10                                      ldr.w r1, [fp, #4]
00080eb4  10 f4 c0 4f                                      tst.w r0, #0x6000
00080eb8  15 d0                                            beq #0x80ee6
00080eba  02 29                                            cmp r1, #2
00080ebc  13 d1                                            bne #0x80ee6
00080ebe  10 f4 e0 4f                                      tst.w r0, #0x7000
00080ec2  ee d0                                            beq #0x80ea2
00080ec4  00 21                                            movs r1, #0
00080ec6  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00080eca  da f8 18 20                                      ldr.w r2, [sl, #0x18]
00080ece  01 fb 00 10                                      mla r0, r1, r0, r1
00080ed2  01 31                                            adds r1, #1
00080ed4  49 f8 20 20                                      str.w r2, [sb, r0, lsl #2]
00080ed8  bb f8 08 00                                      ldrh.w r0, [fp, #8]
00080edc  c0 f3 02 32                                      ubfx r2, r0, #0xc, #3
00080ee0  91 42                                            cmp r1, r2
00080ee2  f0 d3                                            blo #0x80ec6
00080ee4  dd e7                                            b #0x80ea2
00080ee6  02 29                                            cmp r1, #2
00080ee8  1b d3                                            blo #0x80f22
00080eea  33 d0                                            beq #0x80f54
00080eec  03 29                                            cmp r1, #3
00080eee  d8 d1                                            bne #0x80ea2
00080ef0  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00080ef4  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00080ef8  10 fb 01 f0                                      smulbb r0, r0, r1
00080efc  00 28                                            cmp r0, #0
00080efe  d0 d0                                            beq #0x80ea2
00080f00  00 20                                            movs r0, #0
00080f02  9a f8 18 10                                      ldrb.w r1, [sl, #0x18]
00080f06  09 f8 00 10                                      strb.w r1, [sb, r0]
00080f0a  01 30                                            adds r0, #1
00080f0c  bb f8 08 10                                      ldrh.w r1, [fp, #8]
00080f10  c1 f3 02 32                                      ubfx r2, r1, #0xc, #3
00080f14  c1 f3 42 21                                      ubfx r1, r1, #9, #3
00080f18  11 fb 02 f1                                      smulbb r1, r1, r2
00080f1c  88 42                                            cmp r0, r1
00080f1e  f0 d3                                            blo #0x80f02
00080f20  bf e7                                            b #0x80ea2
00080f22  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00080f26  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00080f2a  10 fb 01 f0                                      smulbb r0, r0, r1
00080f2e  00 28                                            cmp r0, #0
00080f30  b7 d0                                            beq #0x80ea2
00080f32  00 20                                            movs r0, #0
00080f34  da f8 18 10                                      ldr.w r1, [sl, #0x18]
00080f38  49 f8 20 10                                      str.w r1, [sb, r0, lsl #2]
00080f3c  01 30                                            adds r0, #1
00080f3e  bb f8 08 10                                      ldrh.w r1, [fp, #8]
00080f42  c1 f3 02 32                                      ubfx r2, r1, #0xc, #3
00080f46  c1 f3 42 21                                      ubfx r1, r1, #9, #3
00080f4a  11 fb 02 f1                                      smulbb r1, r1, r2
00080f4e  88 42                                            cmp r0, r1
00080f50  f0 d3                                            blo #0x80f34
00080f52  a6 e7                                            b #0x80ea2
00080f54  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00080f58  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00080f5c  10 fb 01 f0                                      smulbb r0, r0, r1
00080f60  00 28                                            cmp r0, #0
00080f62  9e d0                                            beq #0x80ea2
00080f64  00 20                                            movs r0, #0
00080f66  da f8 18 10                                      ldr.w r1, [sl, #0x18]
00080f6a  49 f8 20 10                                      str.w r1, [sb, r0, lsl #2]
00080f6e  01 30                                            adds r0, #1
00080f70  bb f8 08 10                                      ldrh.w r1, [fp, #8]
00080f74  c1 f3 02 32                                      ubfx r2, r1, #0xc, #3
00080f78  c1 f3 42 21                                      ubfx r1, r1, #9, #3
00080f7c  11 fb 02 f1                                      smulbb r1, r1, r2
00080f80  88 42                                            cmp r0, r1
00080f82  f0 d3                                            blo #0x80f66
00080f84  8d e7                                            b #0x80ea2
00080f86  00 bf                                            nop
00080f88  9c bd                                            pop {r2, r3, r4, r7, pc}
00080f8a  05 00                                            movs r5, r0

; FUNCTION 0x00080f8c, declared_size=52, range_size=52, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant18get_uint_componentEj
; demangled: ir_constant::get_uint_component(unsigned int) const
; decoder-mode: thumb
00080f8c  02 69                                            ldr r2, [r0, #0x10]
00080f8e  52 68                                            ldr r2, [r2, #4]
00080f90  03 2a                                            cmp r2, #3
00080f92  84 bf                                            itt hi
00080f94  00 20                                            movhi r0, #0
00080f96  70 47                                            bxhi lr
00080f98  df e8 02 f0                                      tbb [pc, r2]
00080f9c  02 02                                            lsls r2, r0, #8
00080f9e  06 0f                                            lsrs r6, r0, #0x1c
00080fa0  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
00080fa4  80 69                                            ldr r0, [r0, #0x18]
00080fa6  70 47                                            bx lr
00080fa8  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
00080fac  90 ed 06 0a                                      vldr s0, [r0, #0x18]
00080fb0  bc ee c0 0a                                      vcvt.u32.f32 s0, s0
00080fb4  10 ee 10 0a                                      vmov r0, s0
00080fb8  70 47                                            bx lr
00080fba  08 44                                            add r0, r1
00080fbc  00 7e                                            ldrb r0, [r0, #0x18]
00080fbe  70 47                                            bx lr

; FUNCTION 0x00080fc0, declared_size=52, range_size=52, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant17get_int_componentEj
; demangled: ir_constant::get_int_component(unsigned int) const
; decoder-mode: thumb
00080fc0  02 69                                            ldr r2, [r0, #0x10]
00080fc2  52 68                                            ldr r2, [r2, #4]
00080fc4  03 2a                                            cmp r2, #3
00080fc6  84 bf                                            itt hi
00080fc8  00 20                                            movhi r0, #0
00080fca  70 47                                            bxhi lr
00080fcc  df e8 02 f0                                      tbb [pc, r2]
00080fd0  02 02                                            lsls r2, r0, #8
00080fd2  06 0f                                            lsrs r6, r0, #0x1c
00080fd4  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
00080fd8  80 69                                            ldr r0, [r0, #0x18]
00080fda  70 47                                            bx lr
00080fdc  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
00080fe0  90 ed 06 0a                                      vldr s0, [r0, #0x18]
00080fe4  bd ee c0 0a                                      vcvt.s32.f32 s0, s0
00080fe8  10 ee 10 0a                                      vmov r0, s0
00080fec  70 47                                            bx lr
00080fee  08 44                                            add r0, r1
00080ff0  00 7e                                            ldrb r0, [r0, #0x18]
00080ff2  70 47                                            bx lr

; FUNCTION 0x00080ff4, declared_size=92, range_size=92, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant19get_float_componentEj
; demangled: ir_constant::get_float_component(unsigned int) const
; decoder-mode: thumb
00080ff4  02 69                                            ldr r2, [r0, #0x10]
00080ff6  52 68                                            ldr r2, [r2, #4]
00080ff8  03 2a                                            cmp r2, #3
00080ffa  0a d8                                            bhi #0x81012
00080ffc  df e8 02 f0                                      tbb [pc, r2]
00081000  02 0c                                            lsrs r2, r0, #0x10
00081002  13 18                                            adds r3, r2, r0
00081004  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
00081008  90 ed 06 0a                                      vldr s0, [r0, #0x18]
0008100c  b8 ee 40 0a                                      vcvt.f32.u32 s0, s0
00081010  18 e0                                            b #0x81044
00081012  9f ed 0e 0a                                      vldr s0, [pc, #0x38]
00081016  15 e0                                            b #0x81044
00081018  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
0008101c  90 ed 06 0a                                      vldr s0, [r0, #0x18]
00081020  b8 ee c0 0a                                      vcvt.f32.s32 s0, s0
00081024  0e e0                                            b #0x81044
00081026  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
0008102a  90 ed 06 0a                                      vldr s0, [r0, #0x18]
0008102e  09 e0                                            b #0x81044
00081030  b7 ee 00 1a                                      vmov.f32 s2, #1.000000e+00
00081034  08 44                                            add r0, r1
00081036  9f ed 05 0a                                      vldr s0, [pc, #0x14]
0008103a  00 7e                                            ldrb r0, [r0, #0x18]
0008103c  00 28                                            cmp r0, #0
0008103e  18 bf                                            it ne
00081040  b0 ee 41 0a                                      vmovne.f32 s0, s2
00081044  10 ee 10 0a                                      vmov r0, s0
00081048  70 47                                            bx lr
0008104a  00 bf                                            nop
0008104c  00 00                                            movs r0, r0
0008104e  00 00                                            movs r0, r0

; FUNCTION 0x00081050, declared_size=58, range_size=58, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant18get_bool_componentEj
; demangled: ir_constant::get_bool_component(unsigned int) const
; decoder-mode: thumb
00081050  02 69                                            ldr r2, [r0, #0x10]
00081052  52 68                                            ldr r2, [r2, #4]
00081054  03 2a                                            cmp r2, #3
00081056  84 bf                                            itt hi
00081058  00 20                                            movhi r0, #0
0008105a  70 47                                            bxhi lr
0008105c  df e8 02 f0                                      tbb [pc, r2]
00081060  02 02                                            lsls r2, r0, #8
00081062  06 0f                                            lsrs r6, r0, #0x1c
00081064  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
00081068  80 69                                            ldr r0, [r0, #0x18]
0008106a  0a e0                                            b #0x81082
0008106c  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
00081070  90 ed 06 0a                                      vldr s0, [r0, #0x18]
00081074  bd ee c0 0a                                      vcvt.s32.f32 s0, s0
00081078  10 ee 10 0a                                      vmov r0, s0
0008107c  01 e0                                            b #0x81082
0008107e  08 44                                            add r0, r1
00081080  00 7e                                            ldrb r0, [r0, #0x18]
00081082  00 28                                            cmp r0, #0
00081084  18 bf                                            it ne
00081086  01 20                                            movne r0, #1
00081088  70 47                                            bx lr

; FUNCTION 0x0008108c, declared_size=220, range_size=220, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constant4zeroEPvPK9glsl_type
; demangled: ir_constant::zero(void*, glsl_type const*)
; decoder-mode: thumb
0008108c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008108e  03 af                                            add r7, sp, #0xc
00081090  2d e9 00 07                                      push.w {r8, sb, sl}
00081094  8a 46                                            mov sl, r1
00081096  68 21                                            movs r1, #0x68
00081098  80 46                                            mov r8, r0
0008109a  b1 f7 42 eb                                      blx #0x32720
0008109e  06 46                                            mov r6, r0
000810a0  2f 48                                            ldr r0, [pc, #0xbc]
000810a2  78 44                                            add r0, pc
000810a4  01 68                                            ldr r1, [r0]
000810a6  30 46                                            mov r0, r6
000810a8  b1 f7 2a ec                                      blx #0x32900
000810ac  2d 48                                            ldr r0, [pc, #0xb4]
000810ae  b1 46                                            mov sb, r6
000810b0  03 21                                            movs r1, #3
000810b2  78 44                                            add r0, pc
000810b4  00 68                                            ldr r0, [r0]
000810b6  08 30                                            adds r0, #8
000810b8  30 60                                            str r0, [r6]
000810ba  00 20                                            movs r0, #0
000810bc  49 f8 60 0f                                      str r0, [sb, #0x60]!
000810c0  06 f1 5c 00                                      add.w r0, r6, #0x5c
000810c4  c6 f8 5c 90                                      str.w sb, [r6, #0x5c]
000810c8  70 66                                            str r0, [r6, #0x64]
000810ca  06 f1 18 00                                      add.w r0, r6, #0x18
000810ce  c6 e9 03 1a                                      strd r1, sl, [r6, #0xc]
000810d2  71 61                                            str r1, [r6, #0x14]
000810d4  40 21                                            movs r1, #0x40
000810d6  b1 f7 c4 ea                                      blx #0x32660
000810da  da f8 04 00                                      ldr.w r0, [sl, #4]
000810de  09 28                                            cmp r0, #9
000810e0  1e d1                                            bne #0x81120
000810e2  da f8 10 20                                      ldr.w r2, [sl, #0x10]
000810e6  30 46                                            mov r0, r6
000810e8  04 21                                            movs r1, #4
000810ea  b1 f7 b6 ee                                      blx #0x32e58
000810ee  b0 65                                            str r0, [r6, #0x58]
000810f0  da f8 10 10                                      ldr.w r1, [sl, #0x10]
000810f4  da f8 04 00                                      ldr.w r0, [sl, #4]
000810f8  91 b1                                            cbz r1, #0x81120
000810fa  00 25                                            movs r5, #0
000810fc  09 28                                            cmp r0, #9
000810fe  0c bf                                            ite eq
00081100  da f8 14 10                                      ldreq.w r1, [sl, #0x14]
00081104  00 21                                            movne r1, #0
00081106  30 46                                            mov r0, r6
00081108  b1 f7 fe ed                                      blx #0x32d08
0008110c  b1 6d                                            ldr r1, [r6, #0x58]
0008110e  41 f8 25 00                                      str.w r0, [r1, r5, lsl #2]
00081112  01 35                                            adds r5, #1
00081114  da f8 10 10                                      ldr.w r1, [sl, #0x10]
00081118  da f8 04 00                                      ldr.w r0, [sl, #4]
0008111c  8d 42                                            cmp r5, r1
0008111e  ed d3                                            blo #0x810fc
00081120  07 28                                            cmp r0, #7
00081122  19 d1                                            bne #0x81158
00081124  da f8 10 00                                      ldr.w r0, [sl, #0x10]
00081128  b0 b1                                            cbz r0, #0x81158
0008112a  00 25                                            movs r5, #0
0008112c  00 24                                            movs r4, #0
0008112e  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00081132  41 59                                            ldr r1, [r0, r5]
00081134  40 46                                            mov r0, r8
00081136  b1 f7 e8 ed                                      blx #0x32d08
0008113a  00 28                                            cmp r0, #0
0008113c  18 bf                                            it ne
0008113e  04 30                                            addne r0, #4
00081140  c0 f8 00 90                                      str.w sb, [r0]
00081144  18 35                                            adds r5, #0x18
00081146  71 6e                                            ldr r1, [r6, #0x64]
00081148  01 34                                            adds r4, #1
0008114a  41 60                                            str r1, [r0, #4]
0008114c  08 60                                            str r0, [r1]
0008114e  70 66                                            str r0, [r6, #0x64]
00081150  da f8 10 00                                      ldr.w r0, [sl, #0x10]
00081154  84 42                                            cmp r4, r0
00081156  ea d3                                            blo #0x8112e
00081158  30 46                                            mov r0, r6
0008115a  bd e8 00 07                                      pop.w {r8, sb, sl}
0008115e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00081160  96 b4                                            push {r1, r2, r4, r7}
00081162  05 00                                            movs r5, r0
00081164  c2 b8                                            .byte 0xc2, 0xb8
00081166  05 00                                            movs r5, r0

; FUNCTION 0x00081168, declared_size=26, range_size=26, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant17get_array_elementEj
; demangled: ir_constant::get_array_element(unsigned int) const
; decoder-mode: thumb
00081168  00 29                                            cmp r1, #0
0008116a  05 db                                            blt #0x81178
0008116c  02 69                                            ldr r2, [r0, #0x10]
0008116e  12 69                                            ldr r2, [r2, #0x10]
00081170  8a 42                                            cmp r2, r1
00081172  98 bf                                            it ls
00081174  51 1e                                            subls r1, r2, #1
00081176  00 e0                                            b #0x8117a
00081178  00 21                                            movs r1, #0
0008117a  80 6d                                            ldr r0, [r0, #0x58]
0008117c  50 f8 21 00                                      ldr.w r0, [r0, r1, lsl #2]
00081180  70 47                                            bx lr

; FUNCTION 0x00081182, declared_size=62, range_size=62, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constant16get_record_fieldEPKc
; demangled: ir_constant::get_record_field(char const*)
; decoder-mode: thumb
00081182  d0 b5                                            push {r4, r6, r7, lr}
00081184  02 af                                            add r7, sp, #8
00081186  04 46                                            mov r4, r0
00081188  20 69                                            ldr r0, [r4, #0x10]
0008118a  b1 f7 ae eb                                      blx #0x328e8
0008118e  01 46                                            mov r1, r0
00081190  00 29                                            cmp r1, #0
00081192  13 db                                            blt #0x811bc
00081194  e2 6d                                            ldr r2, [r4, #0x5c]
00081196  04 f1 60 00                                      add.w r0, r4, #0x60
0008119a  82 42                                            cmp r2, r0
0008119c  0e d0                                            beq #0x811bc
0008119e  e0 6d                                            ldr r0, [r4, #0x5c]
000811a0  01 29                                            cmp r1, #1
000811a2  07 db                                            blt #0x811b4
000811a4  02 68                                            ldr r2, [r0]
000811a6  00 23                                            movs r3, #0
000811a8  10 46                                            mov r0, r2
000811aa  02 68                                            ldr r2, [r0]
000811ac  32 b1                                            cbz r2, #0x811bc
000811ae  01 33                                            adds r3, #1
000811b0  8b 42                                            cmp r3, r1
000811b2  f9 db                                            blt #0x811a8
000811b4  00 28                                            cmp r0, #0
000811b6  18 bf                                            it ne
000811b8  04 38                                            subne r0, #4
000811ba  d0 bd                                            pop {r4, r6, r7, pc}
000811bc  00 20                                            movs r0, #0
000811be  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x000811c0, declared_size=324, range_size=324, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constant11copy_offsetEPS_i
; demangled: ir_constant::copy_offset(ir_constant*, int)
; decoder-mode: thumb
000811c0  f0 b5                                            push {r4, r5, r6, r7, lr}
000811c2  03 af                                            add r7, sp, #0xc
000811c4  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000811c8  81 b0                                            sub sp, #4
000811ca  04 46                                            mov r4, r0
000811cc  89 46                                            mov sb, r1
000811ce  21 69                                            ldr r1, [r4, #0x10]
000811d0  48 68                                            ldr r0, [r1, #4]
000811d2  04 28                                            cmp r0, #4
000811d4  58 d2                                            bhs #0x81288
000811d6  d9 f8 10 80                                      ldr.w r8, [sb, #0x10]
000811da  b8 f8 08 10                                      ldrh.w r1, [r8, #8]
000811de  c1 f3 02 33                                      ubfx r3, r1, #0xc, #3
000811e2  c1 f3 42 21                                      ubfx r1, r1, #9, #3
000811e6  11 fb 03 f5                                      smulbb r5, r1, r3
000811ea  00 2d                                            cmp r5, #0
000811ec  00 f0 86 80                                      beq.w #0x812fc
000811f0  04 eb 82 01                                      add.w r1, r4, r2, lsl #2
000811f4  09 f1 18 0b                                      add.w fp, sb, #0x18
000811f8  01 f1 18 0a                                      add.w sl, r1, #0x18
000811fc  a1 18                                            adds r1, r4, r2
000811fe  00 26                                            movs r6, #0
00081200  18 31                                            adds r1, #0x18
00081202  00 91                                            str r1, [sp]
00081204  01 e0                                            b #0x8120a
00081206  20 69                                            ldr r0, [r4, #0x10]
00081208  40 68                                            ldr r0, [r0, #4]
0008120a  03 28                                            cmp r0, #3
0008120c  38 d8                                            bhi #0x81280
0008120e  df e8 00 f0                                      tbb [pc, r0]
00081212  02 11                                            asrs r2, r0, #4
00081214  1c 21                                            movs r1, #0x1c
00081216  d8 f8 04 00                                      ldr.w r0, [r8, #4]
0008121a  03 28                                            cmp r0, #3
0008121c  21 d8                                            bhi #0x81262
0008121e  df e8 00 f0                                      tbb [pc, r0]
00081222  11 11                                            asrs r1, r2, #4
00081224  02 22                                            movs r2, #2
00081226  0b eb 86 00                                      add.w r0, fp, r6, lsl #2
0008122a  90 ed 00 0a                                      vldr s0, [r0]
0008122e  bc ee c0 0a                                      vcvt.u32.f32 s0, s0
00081232  21 e0                                            b #0x81278
00081234  d8 f8 04 00                                      ldr.w r0, [r8, #4]
00081238  03 28                                            cmp r0, #3
0008123a  12 d8                                            bhi #0x81262
0008123c  df e8 00 f0                                      tbb [pc, r0]
00081240  02 02                                            lsls r2, r0, #8
00081242  16 13                                            asrs r6, r2, #0xc
00081244  5b f8 26 00                                      ldr.w r0, [fp, r6, lsl #2]
00081248  18 e0                                            b #0x8127c
0008124a  48 46                                            mov r0, sb
0008124c  31 46                                            mov r1, r6
0008124e  b1 f7 a6 eb                                      blx #0x3299c
00081252  13 e0                                            b #0x8127c
00081254  48 46                                            mov r0, sb
00081256  31 46                                            mov r1, r6
00081258  b1 f7 a6 eb                                      blx #0x329a8
0008125c  00 99                                            ldr r1, [sp]
0008125e  88 55                                            strb r0, [r1, r6]
00081260  0e e0                                            b #0x81280
00081262  00 20                                            movs r0, #0
00081264  0a e0                                            b #0x8127c
00081266  1b f8 06 00                                      ldrb.w r0, [fp, r6]
0008126a  07 e0                                            b #0x8127c
0008126c  0b eb 86 00                                      add.w r0, fp, r6, lsl #2
00081270  90 ed 00 0a                                      vldr s0, [r0]
00081274  bd ee c0 0a                                      vcvt.s32.f32 s0, s0
00081278  10 ee 10 0a                                      vmov r0, s0
0008127c  4a f8 26 00                                      str.w r0, [sl, r6, lsl #2]
00081280  01 36                                            adds r6, #1
00081282  ae 42                                            cmp r6, r5
00081284  bf d3                                            blo #0x81206
00081286  39 e0                                            b #0x812fc
00081288  07 28                                            cmp r0, #7
0008128a  16 d0                                            beq #0x812ba
0008128c  09 28                                            cmp r0, #9
0008128e  35 d1                                            bne #0x812fc
00081290  08 69                                            ldr r0, [r1, #0x10]
00081292  98 b3                                            cbz r0, #0x812fc
00081294  00 25                                            movs r5, #0
00081296  d9 f8 58 00                                      ldr.w r0, [sb, #0x58]
0008129a  00 22                                            movs r2, #0
0008129c  50 f8 25 00                                      ldr.w r0, [r0, r5, lsl #2]
000812a0  01 68                                            ldr r1, [r0]
000812a2  0b 69                                            ldr r3, [r1, #0x10]
000812a4  21 46                                            mov r1, r4
000812a6  98 47                                            blx r3
000812a8  a1 6d                                            ldr r1, [r4, #0x58]
000812aa  41 f8 25 00                                      str.w r0, [r1, r5, lsl #2]
000812ae  01 35                                            adds r5, #1
000812b0  20 69                                            ldr r0, [r4, #0x10]
000812b2  00 69                                            ldr r0, [r0, #0x10]
000812b4  85 42                                            cmp r5, r0
000812b6  ee d3                                            blo #0x81296
000812b8  20 e0                                            b #0x812fc
000812ba  00 20                                            movs r0, #0
000812bc  25 46                                            mov r5, r4
000812be  45 f8 60 0f                                      str r0, [r5, #0x60]!
000812c2  28 1f                                            subs r0, r5, #4
000812c4  68 60                                            str r0, [r5, #4]
000812c6  45 f8 04 5c                                      str r5, [r5, #-0x4]
000812ca  d9 f8 5c 00                                      ldr.w r0, [sb, #0x5c]
000812ce  0d e0                                            b #0x812ec
000812d0  01 68                                            ldr r1, [r0]
000812d2  00 22                                            movs r2, #0
000812d4  0b 69                                            ldr r3, [r1, #0x10]
000812d6  21 46                                            mov r1, r4
000812d8  98 47                                            blx r3
000812da  00 28                                            cmp r0, #0
000812dc  18 bf                                            it ne
000812de  04 30                                            addne r0, #4
000812e0  05 60                                            str r5, [r0]
000812e2  61 6e                                            ldr r1, [r4, #0x64]
000812e4  41 60                                            str r1, [r0, #4]
000812e6  08 60                                            str r0, [r1]
000812e8  60 66                                            str r0, [r4, #0x64]
000812ea  30 68                                            ldr r0, [r6]
000812ec  00 28                                            cmp r0, #0
000812ee  18 bf                                            it ne
000812f0  04 38                                            subne r0, #4
000812f2  06 46                                            mov r6, r0
000812f4  56 f8 04 1f                                      ldr r1, [r6, #4]!
000812f8  00 29                                            cmp r1, #0
000812fa  e9 d1                                            bne #0x812d0
000812fc  01 b0                                            add sp, #4
000812fe  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00081302  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00081304, declared_size=276, range_size=276, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constant18copy_masked_offsetEPS_ij
; demangled: ir_constant::copy_masked_offset(ir_constant*, int, unsigned int)
; decoder-mode: thumb
00081304  f0 b5                                            push {r4, r5, r6, r7, lr}
00081306  03 af                                            add r7, sp, #0xc
00081308  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008130c  83 b0                                            sub sp, #0xc
0008130e  06 46                                            mov r6, r0
00081310  1c 46                                            mov r4, r3
00081312  30 69                                            ldr r0, [r6, #0x10]
00081314  88 46                                            mov r8, r1
00081316  03 89                                            ldrh r3, [r0, #8]
00081318  03 f4 40 61                                      and r1, r3, #0xc00
0008131c  b1 f5 00 7f                                      cmp.w r1, #0x200
00081320  07 d9                                            bls #0x81332
00081322  03 f4 e0 41                                      and r1, r3, #0x7000
00081326  b1 f5 80 5f                                      cmp.w r1, #0x1000
0008132a  02 d1                                            bne #0x81332
0008132c  41 68                                            ldr r1, [r0, #4]
0008132e  04 29                                            cmp r1, #4
00081330  0b d3                                            blo #0x8134a
00081332  00 21                                            movs r1, #0
00081334  13 f4 c0 4f                                      tst.w r3, #0x6000
00081338  03 d0                                            beq #0x81342
0008133a  40 68                                            ldr r0, [r0, #4]
0008133c  02 28                                            cmp r0, #2
0008133e  08 bf                                            it eq
00081340  01 21                                            moveq r1, #1
00081342  00 29                                            cmp r1, #0
00081344  04 bf                                            itt eq
00081346  01 24                                            moveq r4, #1
00081348  0a 46                                            moveq r2, r1
0008134a  06 eb 82 00                                      add.w r0, r6, r2, lsl #2
0008134e  00 21                                            movs r1, #0
00081350  00 f1 18 09                                      add.w sb, r0, #0x18
00081354  b0 18                                            adds r0, r6, r2
00081356  18 30                                            adds r0, #0x18
00081358  02 90                                            str r0, [sp, #8]
0008135a  08 f1 18 00                                      add.w r0, r8, #0x18
0008135e  01 90                                            str r0, [sp, #4]
00081360  4f f0 01 0b                                      mov.w fp, #1
00081364  00 20                                            movs r0, #0
00081366  8a 46                                            mov sl, r1
00081368  05 46                                            mov r5, r0
0008136a  0b fa 0a f0                                      lsl.w r0, fp, sl
0008136e  20 42                                            tst r0, r4
00081370  19 d0                                            beq #0x813a6
00081372  30 69                                            ldr r0, [r6, #0x10]
00081374  40 68                                            ldr r0, [r0, #4]
00081376  03 28                                            cmp r0, #3
00081378  4a d8                                            bhi #0x81410
0008137a  df e8 00 f0                                      tbb [pc, r0]
0008137e  02 16                                            asrs r2, r0, #0x18
00081380  24 2b                                            cmp r3, #0x24
00081382  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
00081386  68 1c                                            adds r0, r5, #1
00081388  49 68                                            ldr r1, [r1, #4]
0008138a  03 29                                            cmp r1, #3
0008138c  2b d8                                            bhi #0x813e6
0008138e  df e8 01 f0                                      tbb [pc, r1]
00081392  16 16                                            asrs r6, r2, #0x18
00081394  02 2c                                            cmp r4, #2
00081396  01 99                                            ldr r1, [sp, #4]
00081398  01 eb 85 01                                      add.w r1, r1, r5, lsl #2
0008139c  91 ed 00 0a                                      vldr s0, [r1]
000813a0  bc ee c0 0a                                      vcvt.u32.f32 s0, s0
000813a4  2b e0                                            b #0x813fe
000813a6  28 46                                            mov r0, r5
000813a8  2d e0                                            b #0x81406
000813aa  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
000813ae  68 1c                                            adds r0, r5, #1
000813b0  49 68                                            ldr r1, [r1, #4]
000813b2  03 29                                            cmp r1, #3
000813b4  17 d8                                            bhi #0x813e6
000813b6  df e8 01 f0                                      tbb [pc, r1]
000813ba  02 02                                            lsls r2, r0, #8
000813bc  1b 18                                            adds r3, r3, r0
000813be  08 eb 85 01                                      add.w r1, r8, r5, lsl #2
000813c2  89 69                                            ldr r1, [r1, #0x18]
000813c4  1d e0                                            b #0x81402
000813c6  40 46                                            mov r0, r8
000813c8  29 46                                            mov r1, r5
000813ca  b1 f7 e8 ea                                      blx #0x3299c
000813ce  49 f8 2a 00                                      str.w r0, [sb, sl, lsl #2]
000813d2  06 e0                                            b #0x813e2
000813d4  40 46                                            mov r0, r8
000813d6  29 46                                            mov r1, r5
000813d8  b1 f7 e6 ea                                      blx #0x329a8
000813dc  02 99                                            ldr r1, [sp, #8]
000813de  01 f8 0a 00                                      strb.w r0, [r1, sl]
000813e2  68 1c                                            adds r0, r5, #1
000813e4  0f e0                                            b #0x81406
000813e6  00 21                                            movs r1, #0
000813e8  0b e0                                            b #0x81402
000813ea  01 99                                            ldr r1, [sp, #4]
000813ec  49 5d                                            ldrb r1, [r1, r5]
000813ee  08 e0                                            b #0x81402
000813f0  01 99                                            ldr r1, [sp, #4]
000813f2  01 eb 85 01                                      add.w r1, r1, r5, lsl #2
000813f6  91 ed 00 0a                                      vldr s0, [r1]
000813fa  bd ee c0 0a                                      vcvt.s32.f32 s0, s0
000813fe  10 ee 10 1a                                      vmov r1, s0
00081402  49 f8 2a 10                                      str.w r1, [sb, sl, lsl #2]
00081406  0a f1 01 01                                      add.w r1, sl, #1
0008140a  ba f1 03 0f                                      cmp.w sl, #3
0008140e  aa db                                            blt #0x81366
00081410  03 b0                                            add sp, #0xc
00081412  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00081416  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00081418, declared_size=226, range_size=226, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant9has_valueEPKS_
; demangled: ir_constant::has_value(ir_constant const*) const
; decoder-mode: thumb
00081418  f0 b5                                            push {r4, r5, r6, r7, lr}
0008141a  03 af                                            add r7, sp, #0xc
0008141c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00081420  0c 46                                            mov r4, r1
00081422  05 46                                            mov r5, r0
00081424  28 69                                            ldr r0, [r5, #0x10]
00081426  21 69                                            ldr r1, [r4, #0x10]
00081428  88 42                                            cmp r0, r1
0008142a  01 d0                                            beq #0x81430
0008142c  00 20                                            movs r0, #0
0008142e  61 e0                                            b #0x814f4
00081430  41 68                                            ldr r1, [r0, #4]
00081432  07 29                                            cmp r1, #7
00081434  15 d0                                            beq #0x81462
00081436  09 29                                            cmp r1, #9
00081438  2b d1                                            bne #0x81492
0008143a  00 69                                            ldr r0, [r0, #0x10]
0008143c  00 28                                            cmp r0, #0
0008143e  58 d0                                            beq #0x814f2
00081440  00 26                                            movs r6, #0
00081442  a0 6d                                            ldr r0, [r4, #0x58]
00081444  aa 6d                                            ldr r2, [r5, #0x58]
00081446  50 f8 26 10                                      ldr.w r1, [r0, r6, lsl #2]
0008144a  52 f8 26 00                                      ldr.w r0, [r2, r6, lsl #2]
0008144e  b2 f7 be eb                                      blx #0x33bcc
00081452  00 28                                            cmp r0, #0
00081454  ea d0                                            beq #0x8142c
00081456  28 69                                            ldr r0, [r5, #0x10]
00081458  01 36                                            adds r6, #1
0008145a  00 69                                            ldr r0, [r0, #0x10]
0008145c  86 42                                            cmp r6, r0
0008145e  f0 d3                                            blo #0x81442
00081460  47 e0                                            b #0x814f2
00081462  ed 6d                                            ldr r5, [r5, #0x5c]
00081464  e4 6d                                            ldr r4, [r4, #0x5c]
00081466  28 68                                            ldr r0, [r5]
00081468  00 28                                            cmp r0, #0
0008146a  42 d0                                            beq #0x814f2
0008146c  28 46                                            mov r0, r5
0008146e  00 28                                            cmp r0, #0
00081470  21 46                                            mov r1, r4
00081472  18 bf                                            it ne
00081474  04 38                                            subne r0, #4
00081476  00 2c                                            cmp r4, #0
00081478  18 bf                                            it ne
0008147a  04 39                                            subne r1, #4
0008147c  b2 f7 a6 eb                                      blx #0x33bcc
00081480  01 28                                            cmp r0, #1
00081482  d3 d1                                            bne #0x8142c
00081484  2d 68                                            ldr r5, [r5]
00081486  24 68                                            ldr r4, [r4]
00081488  28 68                                            ldr r0, [r5]
0008148a  00 28                                            cmp r0, #0
0008148c  28 46                                            mov r0, r5
0008148e  ee d1                                            bne #0x8146e
00081490  2f e0                                            b #0x814f2
00081492  00 89                                            ldrh r0, [r0, #8]
00081494  c0 f3 02 32                                      ubfx r2, r0, #0xc, #3
00081498  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008149c  10 fb 02 f0                                      smulbb r0, r0, r2
000814a0  38 b3                                            cbz r0, #0x814f2
000814a2  04 f1 18 02                                      add.w r2, r4, #0x18
000814a6  05 f1 18 03                                      add.w r3, r5, #0x18
000814aa  85 b2                                            uxth r5, r0
000814ac  00 24                                            movs r4, #0
000814ae  03 29                                            cmp r1, #3
000814b0  bc d8                                            bhi #0x8142c
000814b2  df e8 01 f0                                      tbb [pc, r1]
000814b6  02 02                                            lsls r2, r0, #8
000814b8  07 15                                            asrs r7, r0, #0x14
000814ba  52 f8 24 00                                      ldr.w r0, [r2, r4, lsl #2]
000814be  53 f8 24 60                                      ldr.w r6, [r3, r4, lsl #2]
000814c2  0f e0                                            b #0x814e4
000814c4  03 eb 84 00                                      add.w r0, r3, r4, lsl #2
000814c8  02 eb 84 06                                      add.w r6, r2, r4, lsl #2
000814cc  96 ed 00 0a                                      vldr s0, [r6]
000814d0  90 ed 00 1a                                      vldr s2, [r0]
000814d4  b4 ee 40 1a                                      vcmp.f32 s2, s0
000814d8  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000814dc  04 d0                                            beq #0x814e8
000814de  a5 e7                                            b #0x8142c
000814e0  10 5d                                            ldrb r0, [r2, r4]
000814e2  1e 5d                                            ldrb r6, [r3, r4]
000814e4  86 42                                            cmp r6, r0
000814e6  a1 d1                                            bne #0x8142c
000814e8  01 34                                            adds r4, #1
000814ea  01 20                                            movs r0, #1
000814ec  ac 42                                            cmp r4, r5
000814ee  de d3                                            blo #0x814ae
000814f0  00 e0                                            b #0x814f4
000814f2  01 20                                            movs r0, #1
000814f4  5d f8 04 bb                                      ldr fp, [sp], #4
000814f8  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x000814fc, declared_size=160, range_size=160, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant8is_valueEfi
; demangled: ir_constant::is_value(float, int) const
; decoder-mode: thumb
000814fc  f0 b5                                            push {r4, r5, r6, r7, lr}
000814fe  03 af                                            add r7, sp, #0xc
00081500  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00081504  86 46                                            mov lr, r0
00081506  de f8 10 40                                      ldr.w r4, [lr, #0x10]
0008150a  23 89                                            ldrh r3, [r4, #8]
0008150c  03 f4 60 66                                      and r6, r3, #0xe00
00081510  b6 f5 00 7f                                      cmp.w r6, #0x200
00081514  02 d1                                            bne #0x8151c
00081516  60 68                                            ldr r0, [r4, #4]
00081518  04 28                                            cmp r0, #4
0008151a  0d d3                                            blo #0x81538
0008151c  03 f4 40 65                                      and r5, r3, #0xc00
00081520  00 20                                            movs r0, #0
00081522  b5 f5 00 7f                                      cmp.w r5, #0x200
00081526  36 d9                                            bls #0x81596
00081528  03 f4 e0 45                                      and r5, r3, #0x7000
0008152c  b5 f5 80 5f                                      cmp.w r5, #0x1000
00081530  31 d1                                            bne #0x81596
00081532  60 68                                            ldr r0, [r4, #4]
00081534  03 28                                            cmp r0, #3
00081536  08 d8                                            bhi #0x8154a
00081538  94 46                                            mov ip, r2
0008153a  00 2a                                            cmp r2, #0
0008153c  18 bf                                            it ne
0008153e  4f f0 01 0c                                      movne.w ip, #1
00081542  94 45                                            cmp ip, r2
00081544  03 d0                                            beq #0x8154e
00081546  03 28                                            cmp r0, #3
00081548  01 d1                                            bne #0x8154e
0008154a  00 20                                            movs r0, #0
0008154c  23 e0                                            b #0x81596
0008154e  0e b3                                            cbz r6, #0x81594
00081550  00 ee 10 1a                                      vmov s0, r1
00081554  0e f1 18 01                                      add.w r1, lr, #0x18
00081558  c3 f3 42 23                                      ubfx r3, r3, #9, #3
0008155c  00 24                                            movs r4, #0
0008155e  03 28                                            cmp r0, #3
00081560  f3 d8                                            bhi #0x8154a
00081562  df e8 00 f0                                      tbb [pc, r0]
00081566  02 02                                            lsls r2, r0, #8
00081568  07 11                                            asrs r7, r0, #4
0008156a  51 f8 24 60                                      ldr.w r6, [r1, r4, lsl #2]
0008156e  96 42                                            cmp r6, r2
00081570  0d d0                                            beq #0x8158e
00081572  ea e7                                            b #0x8154a
00081574  01 eb 84 06                                      add.w r6, r1, r4, lsl #2
00081578  96 ed 00 1a                                      vldr s2, [r6]
0008157c  b4 ee 40 1a                                      vcmp.f32 s2, s0
00081580  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00081584  03 d0                                            beq #0x8158e
00081586  e0 e7                                            b #0x8154a
00081588  0e 5d                                            ldrb r6, [r1, r4]
0008158a  66 45                                            cmp r6, ip
0008158c  dd d1                                            bne #0x8154a
0008158e  01 34                                            adds r4, #1
00081590  9c 42                                            cmp r4, r3
00081592  e4 d3                                            blo #0x8155e
00081594  01 20                                            movs r0, #1
00081596  5d f8 04 bb                                      ldr fp, [sp], #4
0008159a  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0008159c, declared_size=10, range_size=10, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant7is_zeroEv
; demangled: ir_constant::is_zero() const
; decoder-mode: thumb
0008159c  01 68                                            ldr r1, [r0]
0008159e  00 22                                            movs r2, #0
000815a0  cb 6b                                            ldr r3, [r1, #0x3c]
000815a2  00 21                                            movs r1, #0
000815a4  18 47                                            bx r3

; FUNCTION 0x000815a6, declared_size=12, range_size=12, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant6is_oneEv
; demangled: ir_constant::is_one() const
; decoder-mode: thumb
000815a6  01 68                                            ldr r1, [r0]
000815a8  01 22                                            movs r2, #1
000815aa  cb 6b                                            ldr r3, [r1, #0x3c]
000815ac  4f f0 7e 51                                      mov.w r1, #0x3f800000
000815b0  18 47                                            bx r3

; FUNCTION 0x000815b2, declared_size=16, range_size=16, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant15is_negative_oneEv
; demangled: ir_constant::is_negative_one() const
; decoder-mode: thumb
000815b2  02 68                                            ldr r2, [r0]
000815b4  00 21                                            movs r1, #0
000815b6  cb f6 80 71                                      movt r1, #0xbf80
000815ba  d3 6b                                            ldr r3, [r2, #0x3c]
000815bc  4f f0 ff 32                                      mov.w r2, #-1
000815c0  18 47                                            bx r3

; FUNCTION 0x000815c2, declared_size=158, range_size=158, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant8is_basisEv
; demangled: ir_constant::is_basis() const
; decoder-mode: thumb
000815c2  80 b5                                            push {r7, lr}
000815c4  6f 46                                            mov r7, sp
000815c6  84 46                                            mov ip, r0
000815c8  dc f8 10 10                                      ldr.w r1, [ip, #0x10]
000815cc  0b 89                                            ldrh r3, [r1, #8]
000815ce  03 f4 60 6e                                      and lr, r3, #0xe00
000815d2  be f5 00 7f                                      cmp.w lr, #0x200
000815d6  02 d1                                            bne #0x815de
000815d8  4a 68                                            ldr r2, [r1, #4]
000815da  04 2a                                            cmp r2, #4
000815dc  0e d3                                            blo #0x815fc
000815de  03 f4 40 62                                      and r2, r3, #0xc00
000815e2  00 20                                            movs r0, #0
000815e4  b2 f5 00 7f                                      cmp.w r2, #0x200
000815e8  39 d9                                            bls #0x8165e
000815ea  03 f4 e0 42                                      and r2, r3, #0x7000
000815ee  b2 f5 80 5f                                      cmp.w r2, #0x1000
000815f2  18 bf                                            it ne
000815f4  80 bd                                            popne {r7, pc}
000815f6  4a 68                                            ldr r2, [r1, #4]
000815f8  03 2a                                            cmp r2, #3
000815fa  01 d8                                            bhi #0x81600
000815fc  03 2a                                            cmp r2, #3
000815fe  01 d1                                            bne #0x81604
00081600  00 20                                            movs r0, #0
00081602  80 bd                                            pop {r7, pc}
00081604  be f1 00 0f                                      cmp.w lr, #0
00081608  25 d0                                            beq #0x81656
0008160a  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
0008160e  0c f1 18 0e                                      add.w lr, ip, #0x18
00081612  c3 f3 42 2c                                      ubfx ip, r3, #9, #3
00081616  00 23                                            movs r3, #0
00081618  00 20                                            movs r0, #0
0008161a  92 b1                                            cbz r2, #0x81642
0008161c  01 2a                                            cmp r2, #1
0008161e  10 d0                                            beq #0x81642
00081620  02 2a                                            cmp r2, #2
00081622  ed d1                                            bne #0x81600
00081624  0e eb 83 01                                      add.w r1, lr, r3, lsl #2
00081628  91 ed 00 1a                                      vldr s2, [r1]
0008162c  b4 ee 40 1a                                      vcmp.f32 s2, s0
00081630  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00081634  0a d0                                            beq #0x8164c
00081636  b5 ee 40 1a                                      vcmp.f32 s2, #0
0008163a  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008163e  06 d0                                            beq #0x8164e
00081640  de e7                                            b #0x81600
00081642  5e f8 23 10                                      ldr.w r1, [lr, r3, lsl #2]
00081646  11 b1                                            cbz r1, #0x8164e
00081648  01 29                                            cmp r1, #1
0008164a  d9 d1                                            bne #0x81600
0008164c  01 30                                            adds r0, #1
0008164e  01 33                                            adds r3, #1
00081650  63 45                                            cmp r3, ip
00081652  e2 d3                                            blo #0x8161a
00081654  00 e0                                            b #0x81658
00081656  00 20                                            movs r0, #0
00081658  01 28                                            cmp r0, #1
0008165a  18 bf                                            it ne
0008165c  00 20                                            movne r0, #0
0008165e  80 bd                                            pop {r7, pc}

; FUNCTION 0x00081660, declared_size=26, range_size=26, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant18is_uint16_constantEv
; demangled: ir_constant::is_uint16_constant() const
; decoder-mode: thumb
00081660  01 46                                            mov r1, r0
00081662  08 69                                            ldr r0, [r1, #0x10]
00081664  42 68                                            ldr r2, [r0, #4]
00081666  00 20                                            movs r0, #0
00081668  01 2a                                            cmp r2, #1
0008166a  88 bf                                            it hi
0008166c  70 47                                            bxhi lr
0008166e  89 69                                            ldr r1, [r1, #0x18]
00081670  b1 f5 80 3f                                      cmp.w r1, #0x10000
00081674  38 bf                                            it lo
00081676  01 20                                            movlo r0, #1
00081678  70 47                                            bx lr

; FUNCTION 0x00083384, declared_size=268, range_size=268, mode=thumb
; class-group: ir_constant
; alias: _ZNK11ir_constant5cloneEPvP10hash_table
; demangled: ir_constant::clone(void*, hash_table*) const
; decoder-mode: thumb
00083384  f0 b5                                            push {r4, r5, r6, r7, lr}
00083386  03 af                                            add r7, sp, #0xc
00083388  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008338c  06 46                                            mov r6, r0
0008338e  88 46                                            mov r8, r1
00083390  30 69                                            ldr r0, [r6, #0x10]
00083392  40 68                                            ldr r0, [r0, #4]
00083394  04 28                                            cmp r0, #4
00083396  14 d2                                            bhs #0x833c2
00083398  40 46                                            mov r0, r8
0008339a  68 21                                            movs r1, #0x68
0008339c  af f7 c0 e9                                      blx #0x32720
000833a0  04 46                                            mov r4, r0
000833a2  3a 48                                            ldr r0, [pc, #0xe8]
000833a4  78 44                                            add r0, pc
000833a6  01 68                                            ldr r1, [r0]
000833a8  20 46                                            mov r0, r4
000833aa  af f7 aa ea                                      blx #0x32900
000833ae  31 69                                            ldr r1, [r6, #0x10]
000833b0  06 f1 18 02                                      add.w r2, r6, #0x18
000833b4  20 46                                            mov r0, r4
000833b6  af f7 04 eb                                      blx #0x329c0
000833ba  20 46                                            mov r0, r4
000833bc  5d f8 04 8b                                      ldr r8, [sp], #4
000833c0  f0 bd                                            pop {r4, r5, r6, r7, pc}
000833c2  07 28                                            cmp r0, #7
000833c4  2e d0                                            beq #0x83424
000833c6  09 28                                            cmp r0, #9
000833c8  59 d1                                            bne #0x8347e
000833ca  40 46                                            mov r0, r8
000833cc  68 21                                            movs r1, #0x68
000833ce  af f7 a8 e9                                      blx #0x32720
000833d2  04 46                                            mov r4, r0
000833d4  2b 48                                            ldr r0, [pc, #0xac]
000833d6  78 44                                            add r0, pc
000833d8  01 68                                            ldr r1, [r0]
000833da  20 46                                            mov r0, r4
000833dc  af f7 90 ea                                      blx #0x32900
000833e0  20 46                                            mov r0, r4
000833e2  b0 f7 78 ec                                      blx #0x33cd4
000833e6  30 69                                            ldr r0, [r6, #0x10]
000833e8  04 21                                            movs r1, #4
000833ea  20 61                                            str r0, [r4, #0x10]
000833ec  30 69                                            ldr r0, [r6, #0x10]
000833ee  02 69                                            ldr r2, [r0, #0x10]
000833f0  20 46                                            mov r0, r4
000833f2  af f7 32 ed                                      blx #0x32e58
000833f6  a0 65                                            str r0, [r4, #0x58]
000833f8  30 69                                            ldr r0, [r6, #0x10]
000833fa  00 69                                            ldr r0, [r0, #0x10]
000833fc  00 28                                            cmp r0, #0
000833fe  dc d0                                            beq #0x833ba
00083400  00 25                                            movs r5, #0
00083402  b0 6d                                            ldr r0, [r6, #0x58]
00083404  00 22                                            movs r2, #0
00083406  50 f8 25 00                                      ldr.w r0, [r0, r5, lsl #2]
0008340a  01 68                                            ldr r1, [r0]
0008340c  0b 69                                            ldr r3, [r1, #0x10]
0008340e  41 46                                            mov r1, r8
00083410  98 47                                            blx r3
00083412  a1 6d                                            ldr r1, [r4, #0x58]
00083414  41 f8 25 00                                      str.w r0, [r1, r5, lsl #2]
00083418  01 35                                            adds r5, #1
0008341a  30 69                                            ldr r0, [r6, #0x10]
0008341c  00 69                                            ldr r0, [r0, #0x10]
0008341e  85 42                                            cmp r5, r0
00083420  ef d3                                            blo #0x83402
00083422  ca e7                                            b #0x833ba
00083424  40 46                                            mov r0, r8
00083426  68 21                                            movs r1, #0x68
00083428  af f7 7a e9                                      blx #0x32720
0008342c  04 46                                            mov r4, r0
0008342e  16 48                                            ldr r0, [pc, #0x58]
00083430  78 44                                            add r0, pc
00083432  01 68                                            ldr r1, [r0]
00083434  20 46                                            mov r0, r4
00083436  af f7 64 ea                                      blx #0x32900
0008343a  20 46                                            mov r0, r4
0008343c  b0 f7 4a ec                                      blx #0x33cd4
00083440  30 69                                            ldr r0, [r6, #0x10]
00083442  20 61                                            str r0, [r4, #0x10]
00083444  f6 6d                                            ldr r6, [r6, #0x5c]
00083446  30 68                                            ldr r0, [r6]
00083448  00 28                                            cmp r0, #0
0008344a  b6 d0                                            beq #0x833ba
0008344c  04 f1 60 05                                      add.w r5, r4, #0x60
00083450  30 46                                            mov r0, r6
00083452  00 28                                            cmp r0, #0
00083454  18 bf                                            it ne
00083456  04 38                                            subne r0, #4
00083458  01 68                                            ldr r1, [r0]
0008345a  00 22                                            movs r2, #0
0008345c  0b 69                                            ldr r3, [r1, #0x10]
0008345e  41 46                                            mov r1, r8
00083460  98 47                                            blx r3
00083462  00 28                                            cmp r0, #0
00083464  18 bf                                            it ne
00083466  04 30                                            addne r0, #4
00083468  05 60                                            str r5, [r0]
0008346a  61 6e                                            ldr r1, [r4, #0x64]
0008346c  41 60                                            str r1, [r0, #4]
0008346e  08 60                                            str r0, [r1]
00083470  60 66                                            str r0, [r4, #0x64]
00083472  36 68                                            ldr r6, [r6]
00083474  30 68                                            ldr r0, [r6]
00083476  00 28                                            cmp r0, #0
00083478  30 46                                            mov r0, r6
0008347a  ea d1                                            bne #0x83452
0008347c  9d e7                                            b #0x833ba
0008347e  00 24                                            movs r4, #0
00083480  9b e7                                            b #0x833ba
00083482  00 bf                                            nop
00083484  62 91                                            str r1, [sp, #0x188]
00083486  05 00                                            movs r5, r0
00083488  08 91                                            str r1, [sp, #0x20]
0008348a  05 00                                            movs r5, r0
0008348c  94 91                                            str r1, [sp, #0x250]
0008348e  05 00                                            movs r5, r0

; FUNCTION 0x0008385e, declared_size=22, range_size=22, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constantD0Ev
; demangled: ir_constant::~ir_constant()
; decoder-mode: thumb
0008385e  d0 b5                                            push {r4, r6, r7, lr}
00083860  02 af                                            add r7, sp, #8
00083862  00 21                                            movs r1, #0
00083864  04 46                                            mov r4, r0
00083866  af f7 4c e8                                      blx #0x32900
0008386a  20 46                                            mov r0, r4
0008386c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00083870  2d f0 fa b8                                      b.w #0xb0a68

; FUNCTION 0x00083874, declared_size=12, range_size=12, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constant6acceptEP10ir_visitor
; demangled: ir_constant::accept(ir_visitor*)
; decoder-mode: thumb
00083874  02 46                                            mov r2, r0
00083876  08 68                                            ldr r0, [r1]
00083878  43 6b                                            ldr r3, [r0, #0x34]
0008387a  08 46                                            mov r0, r1
0008387c  11 46                                            mov r1, r2
0008387e  18 47                                            bx r3

; FUNCTION 0x00085f28, declared_size=2, range_size=2, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constant25constant_expression_valueEP10hash_table
; demangled: ir_constant::constant_expression_value(hash_table*)
; decoder-mode: thumb
00085f28  70 47                                            bx lr

; FUNCTION 0x00086300, declared_size=82, range_size=82, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constant6equalsEP14ir_instruction12ir_node_type
; demangled: ir_constant::equals(ir_instruction*, ir_node_type)
; decoder-mode: thumb
00086300  80 b5                                            push {r7, lr}
00086302  6f 46                                            mov r7, sp
00086304  02 46                                            mov r2, r0
00086306  00 20                                            movs r0, #0
00086308  41 b1                                            cbz r1, #0x8631c
0008630a  cb 68                                            ldr r3, [r1, #0xc]
0008630c  03 2b                                            cmp r3, #3
0008630e  18 bf                                            it ne
00086310  80 bd                                            popne {r7, pc}
00086312  10 69                                            ldr r0, [r2, #0x10]
00086314  0b 69                                            ldr r3, [r1, #0x10]
00086316  98 42                                            cmp r0, r3
00086318  01 d0                                            beq #0x8631e
0008631a  00 20                                            movs r0, #0
0008631c  80 bd                                            pop {r7, pc}
0008631e  00 89                                            ldrh r0, [r0, #8]
00086320  c0 f3 02 33                                      ubfx r3, r0, #0xc, #3
00086324  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00086328  10 fb 03 f3                                      smulbb r3, r0, r3
0008632c  7b b1                                            cbz r3, #0x8634e
0008632e  01 f1 18 0c                                      add.w ip, r1, #0x18
00086332  02 f1 18 01                                      add.w r1, r2, #0x18
00086336  1f fa 83 fe                                      uxth.w lr, r3
0008633a  00 23                                            movs r3, #0
0008633c  5c f8 23 00                                      ldr.w r0, [ip, r3, lsl #2]
00086340  51 f8 23 20                                      ldr.w r2, [r1, r3, lsl #2]
00086344  82 42                                            cmp r2, r0
00086346  e8 d1                                            bne #0x8631a
00086348  01 33                                            adds r3, #1
0008634a  73 45                                            cmp r3, lr
0008634c  f6 d3                                            blo #0x8633c
0008634e  01 20                                            movs r0, #1
00086350  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008773a, declared_size=12, range_size=12, mode=thumb
; class-group: ir_constant
; alias: _ZN11ir_constant6acceptEP23ir_hierarchical_visitor
; demangled: ir_constant::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
0008773a  02 46                                            mov r2, r0
0008773c  08 68                                            ldr r0, [r1]
0008773e  83 68                                            ldr r3, [r0, #8]
00087740  08 46                                            mov r0, r1
00087742  11 46                                            mov r1, r2
00087744  18 47                                            bx r3
