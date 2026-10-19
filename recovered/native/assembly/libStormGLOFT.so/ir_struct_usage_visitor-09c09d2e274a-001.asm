; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008e492, declared_size=28, range_size=28, mode=thumb
; class-group: ir_struct_usage_visitor
; alias: _ZNK23ir_struct_usage_visitor16has_struct_entryEPK9glsl_type
; demangled: ir_struct_usage_visitor::has_struct_entry(glsl_type const*) const
; decoder-mode: thumb
0008e492  d0 f8 19 00                                      ldr.w r0, [r0, #0x19]
0008e496  05 e0                                            b #0x8e4a4
0008e498  82 68                                            ldr r2, [r0, #8]
0008e49a  8a 42                                            cmp r2, r1
0008e49c  04 bf                                            itt eq
0008e49e  01 20                                            moveq r0, #1
0008e4a0  70 47                                            bxeq lr
0008e4a2  00 68                                            ldr r0, [r0]
0008e4a4  02 68                                            ldr r2, [r0]
0008e4a6  00 2a                                            cmp r2, #0
0008e4a8  f6 d1                                            bne #0x8e498
0008e4aa  00 20                                            movs r0, #0
0008e4ac  70 47                                            bx lr

; FUNCTION 0x0008e4b0, declared_size=92, range_size=92, mode=thumb
; class-group: ir_struct_usage_visitor
; alias: _ZN23ir_struct_usage_visitor5visitEP23ir_dereference_variable
; demangled: ir_struct_usage_visitor::visit(ir_dereference_variable*)
; decoder-mode: thumb
0008e4b0  f0 b5                                            push {r4, r5, r6, r7, lr}
0008e4b2  03 af                                            add r7, sp, #0xc
0008e4b4  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008e4b8  0e 69                                            ldr r6, [r1, #0x10]
0008e4ba  04 46                                            mov r4, r0
0008e4bc  70 68                                            ldr r0, [r6, #4]
0008e4be  07 28                                            cmp r0, #7
0008e4c0  1e d1                                            bne #0x8e500
0008e4c2  d4 f8 19 00                                      ldr.w r0, [r4, #0x19]
0008e4c6  03 e0                                            b #0x8e4d0
0008e4c8  81 68                                            ldr r1, [r0, #8]
0008e4ca  b1 42                                            cmp r1, r6
0008e4cc  18 d0                                            beq #0x8e500
0008e4ce  00 68                                            ldr r0, [r0]
0008e4d0  01 68                                            ldr r1, [r0]
0008e4d2  00 29                                            cmp r1, #0
0008e4d4  f8 d1                                            bne #0x8e4c8
0008e4d6  a0 6a                                            ldr r0, [r4, #0x28]
0008e4d8  0c 21                                            movs r1, #0xc
0008e4da  a4 f7 22 e9                                      blx #0x32720
0008e4de  05 46                                            mov r5, r0
0008e4e0  09 48                                            ldr r0, [pc, #0x24]
0008e4e2  78 44                                            add r0, pc
0008e4e4  01 68                                            ldr r1, [r0]
0008e4e6  28 46                                            mov r0, r5
0008e4e8  a4 f7 0a ea                                      blx #0x32900
0008e4ec  04 f1 1d 00                                      add.w r0, r4, #0x1d
0008e4f0  28 60                                            str r0, [r5]
0008e4f2  ae 60                                            str r6, [r5, #8]
0008e4f4  d4 f8 21 00                                      ldr.w r0, [r4, #0x21]
0008e4f8  68 60                                            str r0, [r5, #4]
0008e4fa  05 60                                            str r5, [r0]
0008e4fc  c4 f8 21 50                                      str.w r5, [r4, #0x21]
0008e500  00 20                                            movs r0, #0
0008e502  5d f8 04 bb                                      ldr fp, [sp], #4
0008e506  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008e508  56 e0                                            b #0x8e5b8
0008e50a  04 00                                            movs r4, r0

; FUNCTION 0x0008e50c, declared_size=92, range_size=92, mode=thumb
; class-group: ir_struct_usage_visitor
; alias: _ZN23ir_struct_usage_visitorC1Ev
; demangled: ir_struct_usage_visitor::ir_struct_usage_visitor()
; alias: _ZN23ir_struct_usage_visitorC2Ev
; demangled: ir_struct_usage_visitor::ir_struct_usage_visitor()
; decoder-mode: thumb
0008e50c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008e50e  03 af                                            add r7, sp, #0xc
0008e510  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008e514  04 46                                            mov r4, r0
0008e516  a4 f7 86 eb                                      blx #0x32c24
0008e51a  11 48                                            ldr r0, [pc, #0x44]
0008e51c  4f f0 00 08                                      mov.w r8, #0
0008e520  26 46                                            mov r6, r4
0008e522  04 f1 19 05                                      add.w r5, r4, #0x19
0008e526  78 44                                            add r0, pc
0008e528  46 f8 1d 8f                                      str r8, [r6, #0x1d]!
0008e52c  c4 f8 19 60                                      str.w r6, [r4, #0x19]
0008e530  00 68                                            ldr r0, [r0]
0008e532  c4 f8 21 50                                      str.w r5, [r4, #0x21]
0008e536  08 30                                            adds r0, #8
0008e538  20 60                                            str r0, [r4]
0008e53a  00 20                                            movs r0, #0
0008e53c  a4 f7 d6 ed                                      blx #0x330ec
0008e540  08 49                                            ldr r1, [pc, #0x20]
0008e542  a0 62                                            str r0, [r4, #0x28]
0008e544  20 46                                            mov r0, r4
0008e546  c4 f8 19 60                                      str.w r6, [r4, #0x19]
0008e54a  79 44                                            add r1, pc
0008e54c  c6 f8 00 80                                      str.w r8, [r6]
0008e550  c4 f8 21 50                                      str.w r5, [r4, #0x21]
0008e554  a1 60                                            str r1, [r4, #8]
0008e556  24 61                                            str r4, [r4, #0x10]
0008e558  5d f8 04 8b                                      ldr r8, [sp], #4
0008e55c  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008e55e  00 bf                                            nop
0008e560  9a e4                                            b #0x8de98
0008e562  04 00                                            movs r4, r0
0008e564  1b 00                                            movs r3, r3
0008e566  00 00                                            movs r0, r0

; FUNCTION 0x0008e5d4, declared_size=32, range_size=32, mode=thumb
; class-group: ir_struct_usage_visitor
; alias: _ZN23ir_struct_usage_visitorD1Ev
; demangled: ir_struct_usage_visitor::~ir_struct_usage_visitor()
; alias: _ZN23ir_struct_usage_visitorD2Ev
; demangled: ir_struct_usage_visitor::~ir_struct_usage_visitor()
; decoder-mode: thumb
0008e5d4  d0 b5                                            push {r4, r6, r7, lr}
0008e5d6  02 af                                            add r7, sp, #8
0008e5d8  04 46                                            mov r4, r0
0008e5da  05 48                                            ldr r0, [pc, #0x14]
0008e5dc  78 44                                            add r0, pc
0008e5de  01 68                                            ldr r1, [r0]
0008e5e0  a0 6a                                            ldr r0, [r4, #0x28]
0008e5e2  08 31                                            adds r1, #8
0008e5e4  21 60                                            str r1, [r4]
0008e5e6  a4 f7 7e e8                                      blx #0x326e4
0008e5ea  20 46                                            mov r0, r4
0008e5ec  d0 bd                                            pop {r4, r6, r7, pc}
0008e5ee  00 bf                                            nop
0008e5f0  e4 e3                                            b #0x8edbc
0008e5f2  04 00                                            movs r4, r0
