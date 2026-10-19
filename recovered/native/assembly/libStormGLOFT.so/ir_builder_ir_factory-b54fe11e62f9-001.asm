; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00082406, declared_size=22, range_size=22, mode=thumb
; class-group: ir_builder::ir_factory
; alias: _ZN10ir_builder10ir_factory4emitEP14ir_instruction
; demangled: ir_builder::ir_factory::emit(ir_instruction*)
; decoder-mode: thumb
00082406  00 68                                            ldr r0, [r0]
00082408  00 29                                            cmp r1, #0
0008240a  18 bf                                            it ne
0008240c  04 31                                            addne r1, #4
0008240e  02 1d                                            adds r2, r0, #4
00082410  0a 60                                            str r2, [r1]
00082412  82 68                                            ldr r2, [r0, #8]
00082414  4a 60                                            str r2, [r1, #4]
00082416  11 60                                            str r1, [r2]
00082418  81 60                                            str r1, [r0, #8]
0008241a  70 47                                            bx lr

; FUNCTION 0x0008241c, declared_size=92, range_size=92, mode=thumb
; class-group: ir_builder::ir_factory
; alias: _ZN10ir_builder10ir_factory9make_tempEPK9glsl_typePKc14glsl_precision
; demangled: ir_builder::ir_factory::make_temp(glsl_type const*, char const*, glsl_precision)
; decoder-mode: thumb
0008241c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008241e  03 af                                            add r7, sp, #0xc
00082420  2d e9 00 0b                                      push.w {r8, sb, fp}
00082424  82 b0                                            sub sp, #8
00082426  05 46                                            mov r5, r0
00082428  89 46                                            mov sb, r1
0008242a  68 68                                            ldr r0, [r5, #4]
0008242c  44 21                                            movs r1, #0x44
0008242e  1c 46                                            mov r4, r3
00082430  90 46                                            mov r8, r2
00082432  b0 f7 76 e9                                      blx #0x32720
00082436  06 46                                            mov r6, r0
00082438  0e 48                                            ldr r0, [pc, #0x38]
0008243a  78 44                                            add r0, pc
0008243c  01 68                                            ldr r1, [r0]
0008243e  30 46                                            mov r0, r6
00082440  b0 f7 5e ea                                      blx #0x32900
00082444  30 46                                            mov r0, r6
00082446  49 46                                            mov r1, sb
00082448  42 46                                            mov r2, r8
0008244a  0a 23                                            movs r3, #0xa
0008244c  00 94                                            str r4, [sp]
0008244e  b0 f7 94 ea                                      blx #0x32978
00082452  28 68                                            ldr r0, [r5]
00082454  31 46                                            mov r1, r6
00082456  00 2e                                            cmp r6, #0
00082458  18 bf                                            it ne
0008245a  04 31                                            addne r1, #4
0008245c  02 1d                                            adds r2, r0, #4
0008245e  0a 60                                            str r2, [r1]
00082460  82 68                                            ldr r2, [r0, #8]
00082462  4a 60                                            str r2, [r1, #4]
00082464  11 60                                            str r1, [r2]
00082466  81 60                                            str r1, [r0, #8]
00082468  30 46                                            mov r0, r6
0008246a  02 b0                                            add sp, #8
0008246c  bd e8 00 0b                                      pop.w {r8, sb, fp}
00082470  f0 bd                                            pop {r4, r5, r6, r7, pc}
00082472  00 bf                                            nop
00082474  fe a0                                            adr r0, #0x3f8
00082476  05 00                                            movs r5, r0

; FUNCTION 0x0009bc4c, declared_size=48, range_size=48, mode=thumb
; class-group: ir_builder::ir_factory
; alias: _ZN10ir_builder10ir_factory8constantEj
; demangled: ir_builder::ir_factory::constant(unsigned int)
; decoder-mode: thumb
0009bc4c  b0 b5                                            push {r4, r5, r7, lr}
0009bc4e  02 af                                            add r7, sp, #8
0009bc50  40 68                                            ldr r0, [r0, #4]
0009bc52  0c 46                                            mov r4, r1
0009bc54  68 21                                            movs r1, #0x68
0009bc56  96 f7 64 ed                                      blx #0x32720
0009bc5a  05 46                                            mov r5, r0
0009bc5c  06 48                                            ldr r0, [pc, #0x18]
0009bc5e  78 44                                            add r0, pc
0009bc60  01 68                                            ldr r1, [r0]
0009bc62  28 46                                            mov r0, r5
0009bc64  96 f7 4c ee                                      blx #0x32900
0009bc68  28 46                                            mov r0, r5
0009bc6a  21 46                                            mov r1, r4
0009bc6c  01 22                                            movs r2, #1
0009bc6e  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0009bc72  15 f0 29 b9                                      b.w #0xb0ec8
0009bc76  00 bf                                            nop
0009bc78  da 08                                            lsrs r2, r3, #3
0009bc7a  04 00                                            movs r4, r0

; FUNCTION 0x0009bc7c, declared_size=48, range_size=48, mode=thumb
; class-group: ir_builder::ir_factory
; alias: _ZN10ir_builder10ir_factory8constantEf
; demangled: ir_builder::ir_factory::constant(float)
; decoder-mode: thumb
0009bc7c  b0 b5                                            push {r4, r5, r7, lr}
0009bc7e  02 af                                            add r7, sp, #8
0009bc80  40 68                                            ldr r0, [r0, #4]
0009bc82  0c 46                                            mov r4, r1
0009bc84  68 21                                            movs r1, #0x68
0009bc86  96 f7 4c ed                                      blx #0x32720
0009bc8a  05 46                                            mov r5, r0
0009bc8c  06 48                                            ldr r0, [pc, #0x18]
0009bc8e  78 44                                            add r0, pc
0009bc90  01 68                                            ldr r1, [r0]
0009bc92  28 46                                            mov r0, r5
0009bc94  96 f7 34 ee                                      blx #0x32900
0009bc98  28 46                                            mov r0, r5
0009bc9a  21 46                                            mov r1, r4
0009bc9c  01 22                                            movs r2, #1
0009bc9e  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0009bca2  15 f0 19 b9                                      b.w #0xb0ed8
0009bca6  00 bf                                            nop
0009bca8  aa 08                                            lsrs r2, r5, #2
0009bcaa  04 00                                            movs r4, r0

; FUNCTION 0x0009c1c0, declared_size=48, range_size=48, mode=thumb
; class-group: ir_builder::ir_factory
; alias: _ZN10ir_builder10ir_factory8constantEi
; demangled: ir_builder::ir_factory::constant(int)
; decoder-mode: thumb
0009c1c0  b0 b5                                            push {r4, r5, r7, lr}
0009c1c2  02 af                                            add r7, sp, #8
0009c1c4  40 68                                            ldr r0, [r0, #4]
0009c1c6  0c 46                                            mov r4, r1
0009c1c8  68 21                                            movs r1, #0x68
0009c1ca  96 f7 aa ea                                      blx #0x32720
0009c1ce  05 46                                            mov r5, r0
0009c1d0  06 48                                            ldr r0, [pc, #0x18]
0009c1d2  78 44                                            add r0, pc
0009c1d4  01 68                                            ldr r1, [r0]
0009c1d6  28 46                                            mov r0, r5
0009c1d8  96 f7 92 eb                                      blx #0x32900
0009c1dc  28 46                                            mov r0, r5
0009c1de  21 46                                            mov r1, r4
0009c1e0  01 22                                            movs r2, #1
0009c1e2  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0009c1e6  14 f0 7f be                                      b.w #0xb0ee8
0009c1ea  00 bf                                            nop
0009c1ec  66 03                                            lsls r6, r4, #0xd
0009c1ee  04 00                                            movs r4, r0
