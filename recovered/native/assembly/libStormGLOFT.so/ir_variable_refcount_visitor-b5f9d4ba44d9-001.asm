; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008e6e0, declared_size=60, range_size=60, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitorC1Ev
; demangled: ir_variable_refcount_visitor::ir_variable_refcount_visitor()
; alias: _ZN28ir_variable_refcount_visitorC2Ev
; demangled: ir_variable_refcount_visitor::ir_variable_refcount_visitor()
; decoder-mode: thumb
0008e6e0  b0 b5                                            push {r4, r5, r7, lr}
0008e6e2  02 af                                            add r7, sp, #8
0008e6e4  04 46                                            mov r4, r0
0008e6e6  a4 f7 9e ea                                      blx #0x32c24
0008e6ea  0a 48                                            ldr r0, [pc, #0x28]
0008e6ec  00 25                                            movs r5, #0
0008e6ee  78 44                                            add r0, pc
0008e6f0  00 68                                            ldr r0, [r0]
0008e6f2  08 30                                            adds r0, #8
0008e6f4  20 60                                            str r0, [r4]
0008e6f6  00 20                                            movs r0, #0
0008e6f8  a4 f7 f8 ec                                      blx #0x330ec
0008e6fc  06 49                                            ldr r1, [pc, #0x18]
0008e6fe  60 62                                            str r0, [r4, #0x24]
0008e700  00 20                                            movs r0, #0
0008e702  79 44                                            add r1, pc
0008e704  09 68                                            ldr r1, [r1]
0008e706  a6 f7 7c e9                                      blx #0x34a00
0008e70a  c4 e9 07 05                                      strd r0, r5, [r4, #0x1c]
0008e70e  20 46                                            mov r0, r4
0008e710  b0 bd                                            pop {r4, r5, r7, pc}
0008e712  00 bf                                            nop
0008e714  da e2                                            b #0x8eccc
0008e716  04 00                                            movs r4, r0
0008e718  ca e2                                            b #0x8ecb0
0008e71a  04 00                                            movs r4, r0

; FUNCTION 0x0008e71c, declared_size=44, range_size=44, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitorD1Ev
; demangled: ir_variable_refcount_visitor::~ir_variable_refcount_visitor()
; alias: _ZN28ir_variable_refcount_visitorD2Ev
; demangled: ir_variable_refcount_visitor::~ir_variable_refcount_visitor()
; decoder-mode: thumb
0008e71c  d0 b5                                            push {r4, r6, r7, lr}
0008e71e  02 af                                            add r7, sp, #8
0008e720  04 46                                            mov r4, r0
0008e722  07 48                                            ldr r0, [pc, #0x1c]
0008e724  78 44                                            add r0, pc
0008e726  01 68                                            ldr r1, [r0]
0008e728  60 6a                                            ldr r0, [r4, #0x24]
0008e72a  08 31                                            adds r1, #8
0008e72c  21 60                                            str r1, [r4]
0008e72e  a3 f7 da ef                                      blx #0x326e4
0008e732  04 49                                            ldr r1, [pc, #0x10]
0008e734  e0 69                                            ldr r0, [r4, #0x1c]
0008e736  79 44                                            add r1, pc
0008e738  a6 f7 68 e9                                      blx #0x34a0c
0008e73c  20 46                                            mov r0, r4
0008e73e  d0 bd                                            pop {r4, r6, r7, pc}
0008e740  a4 e2                                            b #0x8ec8c
0008e742  04 00                                            movs r4, r0
0008e744  0f 00                                            movs r7, r1
0008e746  00 00                                            movs r0, r0

; FUNCTION 0x0008e768, declared_size=132, range_size=132, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitor18get_variable_entryEP11ir_variable
; demangled: ir_variable_refcount_visitor::get_variable_entry(ir_variable*)
; decoder-mode: thumb
0008e768  f0 b5                                            push {r4, r5, r6, r7, lr}
0008e76a  03 af                                            add r7, sp, #0xc
0008e76c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008e770  84 b0                                            sub sp, #0x10
0008e772  06 46                                            mov r6, r0
0008e774  1b 48                                            ldr r0, [pc, #0x6c]
0008e776  0c 46                                            mov r4, r1
0008e778  04 21                                            movs r1, #4
0008e77a  78 44                                            add r0, pc
0008e77c  00 68                                            ldr r0, [r0]
0008e77e  00 68                                            ldr r0, [r0]
0008e780  03 90                                            str r0, [sp, #0xc]
0008e782  01 a8                                            add r0, sp, #4
0008e784  f5 69                                            ldr r5, [r6, #0x1c]
0008e786  01 94                                            str r4, [sp, #4]
0008e788  a6 f7 46 e9                                      blx #0x34a18
0008e78c  01 46                                            mov r1, r0
0008e78e  28 46                                            mov r0, r5
0008e790  22 46                                            mov r2, r4
0008e792  a6 f7 48 e9                                      blx #0x34a24
0008e796  08 b1                                            cbz r0, #0x8e79c
0008e798  85 68                                            ldr r5, [r0, #8]
0008e79a  14 e0                                            b #0x8e7c6
0008e79c  18 20                                            movs r0, #0x18
0008e79e  a3 f7 0c ec                                      blx #0x31fb8
0008e7a2  05 46                                            mov r5, r0
0008e7a4  40 f8 04 4b                                      str r4, [r0], #4
0008e7a8  11 21                                            movs r1, #0x11
0008e7aa  a3 f7 5a ef                                      blx #0x32660
0008e7ae  02 a8                                            add r0, sp, #8
0008e7b0  04 21                                            movs r1, #4
0008e7b2  f6 69                                            ldr r6, [r6, #0x1c]
0008e7b4  02 94                                            str r4, [sp, #8]
0008e7b6  a6 f7 30 e9                                      blx #0x34a18
0008e7ba  01 46                                            mov r1, r0
0008e7bc  30 46                                            mov r0, r6
0008e7be  22 46                                            mov r2, r4
0008e7c0  2b 46                                            mov r3, r5
0008e7c2  a4 f7 62 e8                                      blx #0x32888
0008e7c6  08 48                                            ldr r0, [pc, #0x20]
0008e7c8  03 99                                            ldr r1, [sp, #0xc]
0008e7ca  78 44                                            add r0, pc
0008e7cc  00 68                                            ldr r0, [r0]
0008e7ce  00 68                                            ldr r0, [r0]
0008e7d0  40 1a                                            subs r0, r0, r1
0008e7d2  01 bf                                            itttt eq
0008e7d4  28 46                                            moveq r0, r5
0008e7d6  04 b0                                            addeq sp, #0x10
0008e7d8  5d f8 04 bb                                      ldreq fp, [sp], #4
0008e7dc  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0008e7de  a3 f7 40 ec                                      blx #0x32060
0008e7e2  00 bf                                            nop
0008e7e4  3a dd                                            ble #0x8e85c
0008e7e6  04 00                                            movs r4, r0
0008e7e8  ea dc                                            bgt #0x8e7c0
0008e7ea  04 00                                            movs r4, r0

; FUNCTION 0x0008e7ec, declared_size=80, range_size=80, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitor19find_variable_entryEP11ir_variable
; demangled: ir_variable_refcount_visitor::find_variable_entry(ir_variable*)
; decoder-mode: thumb
0008e7ec  b0 b5                                            push {r4, r5, r7, lr}
0008e7ee  02 af                                            add r7, sp, #8
0008e7f0  82 b0                                            sub sp, #8
0008e7f2  0c 46                                            mov r4, r1
0008e7f4  0f 49                                            ldr r1, [pc, #0x3c]
0008e7f6  79 44                                            add r1, pc
0008e7f8  09 68                                            ldr r1, [r1]
0008e7fa  09 68                                            ldr r1, [r1]
0008e7fc  01 91                                            str r1, [sp, #4]
0008e7fe  04 21                                            movs r1, #4
0008e800  c5 69                                            ldr r5, [r0, #0x1c]
0008e802  68 46                                            mov r0, sp
0008e804  00 94                                            str r4, [sp]
0008e806  a6 f7 08 e9                                      blx #0x34a18
0008e80a  01 46                                            mov r1, r0
0008e80c  28 46                                            mov r0, r5
0008e80e  22 46                                            mov r2, r4
0008e810  a6 f7 08 e9                                      blx #0x34a24
0008e814  08 49                                            ldr r1, [pc, #0x20]
0008e816  00 28                                            cmp r0, #0
0008e818  14 bf                                            ite ne
0008e81a  80 68                                            ldrne r0, [r0, #8]
0008e81c  00 20                                            moveq r0, #0
0008e81e  01 9a                                            ldr r2, [sp, #4]
0008e820  79 44                                            add r1, pc
0008e822  09 68                                            ldr r1, [r1]
0008e824  09 68                                            ldr r1, [r1]
0008e826  89 1a                                            subs r1, r1, r2
0008e828  04 bf                                            itt eq
0008e82a  02 b0                                            addeq sp, #8
0008e82c  b0 bd                                            popeq {r4, r5, r7, pc}
0008e82e  a3 f7 18 ec                                      blx #0x32060
0008e832  00 bf                                            nop
0008e834  be dc                                            bgt #0x8e7b4
0008e836  04 00                                            movs r4, r0
0008e838  94 dc                                            bgt #0x8e764
0008e83a  04 00                                            movs r4, r0

; FUNCTION 0x0008e83c, declared_size=18, range_size=18, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitor5visitEP11ir_variable
; demangled: ir_variable_refcount_visitor::visit(ir_variable*)
; decoder-mode: thumb
0008e83c  80 b5                                            push {r7, lr}
0008e83e  6f 46                                            mov r7, sp
0008e840  a6 f7 f6 e8                                      blx #0x34a30
0008e844  08 b1                                            cbz r0, #0x8e84a
0008e846  01 21                                            movs r1, #1
0008e848  01 75                                            strb r1, [r0, #0x14]
0008e84a  00 20                                            movs r0, #0
0008e84c  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e84e, declared_size=52, range_size=52, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitor5visitEP23ir_dereference_variable
; demangled: ir_variable_refcount_visitor::visit(ir_dereference_variable*)
; decoder-mode: thumb
0008e84e  b0 b5                                            push {r4, r5, r7, lr}
0008e850  02 af                                            add r7, sp, #8
0008e852  04 46                                            mov r4, r0
0008e854  08 68                                            ldr r0, [r1]
0008e856  02 6a                                            ldr r2, [r0, #0x20]
0008e858  08 46                                            mov r0, r1
0008e85a  90 47                                            blx r2
0008e85c  05 46                                            mov r5, r0
0008e85e  20 46                                            mov r0, r4
0008e860  29 46                                            mov r1, r5
0008e862  a6 f7 e6 e8                                      blx #0x34a30
0008e866  50 b1                                            cbz r0, #0x8e87e
0008e868  81 68                                            ldr r1, [r0, #8]
0008e86a  01 31                                            adds r1, #1
0008e86c  81 60                                            str r1, [r0, #8]
0008e86e  21 7e                                            ldrb r1, [r4, #0x18]
0008e870  11 b9                                            cbnz r1, #0x8e878
0008e872  21 6a                                            ldr r1, [r4, #0x20]
0008e874  8d 42                                            cmp r5, r1
0008e876  02 d0                                            beq #0x8e87e
0008e878  c1 68                                            ldr r1, [r0, #0xc]
0008e87a  01 31                                            adds r1, #1
0008e87c  c1 60                                            str r1, [r0, #0xc]
0008e87e  00 20                                            movs r0, #0
0008e880  b0 bd                                            pop {r4, r5, r7, pc}

; FUNCTION 0x0008e882, declared_size=16, range_size=16, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitor11visit_enterEP21ir_function_signature
; demangled: ir_variable_refcount_visitor::visit_enter(ir_function_signature*)
; decoder-mode: thumb
0008e882  80 b5                                            push {r7, lr}
0008e884  6f 46                                            mov r7, sp
0008e886  26 31                                            adds r1, #0x26
0008e888  01 22                                            movs r2, #1
0008e88a  a5 f7 96 ed                                      blx #0x343b8
0008e88e  01 20                                            movs r0, #1
0008e890  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e892, declared_size=20, range_size=20, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitor11visit_enterEP13ir_assignment
; demangled: ir_variable_refcount_visitor::visit_enter(ir_assignment*)
; decoder-mode: thumb
0008e892  d0 b5                                            push {r4, r6, r7, lr}
0008e894  02 af                                            add r7, sp, #8
0008e896  04 46                                            mov r4, r0
0008e898  08 69                                            ldr r0, [r1, #0x10]
0008e89a  01 68                                            ldr r1, [r0]
0008e89c  09 6a                                            ldr r1, [r1, #0x20]
0008e89e  88 47                                            blx r1
0008e8a0  20 62                                            str r0, [r4, #0x20]
0008e8a2  00 20                                            movs r0, #0
0008e8a4  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x0008e8a6, declared_size=50, range_size=50, mode=thumb
; class-group: ir_variable_refcount_visitor
; alias: _ZN28ir_variable_refcount_visitor11visit_leaveEP13ir_assignment
; demangled: ir_variable_refcount_visitor::visit_leave(ir_assignment*)
; decoder-mode: thumb
0008e8a6  b0 b5                                            push {r4, r5, r7, lr}
0008e8a8  02 af                                            add r7, sp, #8
0008e8aa  05 46                                            mov r5, r0
0008e8ac  00 20                                            movs r0, #0
0008e8ae  0c 46                                            mov r4, r1
0008e8b0  28 62                                            str r0, [r5, #0x20]
0008e8b2  20 69                                            ldr r0, [r4, #0x10]
0008e8b4  01 68                                            ldr r1, [r0]
0008e8b6  09 6a                                            ldr r1, [r1, #0x20]
0008e8b8  88 47                                            blx r1
0008e8ba  01 46                                            mov r1, r0
0008e8bc  28 46                                            mov r0, r5
0008e8be  a6 f7 b8 e8                                      blx #0x34a30
0008e8c2  38 b1                                            cbz r0, #0x8e8d4
0008e8c4  41 68                                            ldr r1, [r0, #4]
0008e8c6  02 69                                            ldr r2, [r0, #0x10]
0008e8c8  00 29                                            cmp r1, #0
0008e8ca  02 f1 01 02                                      add.w r2, r2, #1
0008e8ce  02 61                                            str r2, [r0, #0x10]
0008e8d0  00 d1                                            bne #0x8e8d4
0008e8d2  44 60                                            str r4, [r0, #4]
0008e8d4  00 20                                            movs r0, #0
0008e8d6  b0 bd                                            pop {r4, r5, r7, pc}
