; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00062c84, declared_size=4, range_size=4, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table18_ralloc_destructorEPv
; demangled: glsl_symbol_table::_ralloc_destructor(void*)
; decoder-mode: thumb
00062c84  4d f0 60 bf                                      b.w #0xb0b48

; FUNCTION 0x0007e8b0, declared_size=28, range_size=28, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_tableC1Ev
; demangled: glsl_symbol_table::glsl_symbol_table()
; alias: _ZN17glsl_symbol_tableC2Ev
; demangled: glsl_symbol_table::glsl_symbol_table()
; decoder-mode: thumb
0007e8b0  d0 b5                                            push {r4, r6, r7, lr}
0007e8b2  02 af                                            add r7, sp, #8
0007e8b4  04 46                                            mov r4, r0
0007e8b6  00 20                                            movs r0, #0
0007e8b8  20 70                                            strb r0, [r4]
0007e8ba  b5 f7 fe e8                                      blx #0x33ab8
0007e8be  60 60                                            str r0, [r4, #4]
0007e8c0  00 20                                            movs r0, #0
0007e8c2  b4 f7 14 ec                                      blx #0x330ec
0007e8c6  a0 60                                            str r0, [r4, #8]
0007e8c8  20 46                                            mov r0, r4
0007e8ca  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x0007e8cc, declared_size=22, range_size=22, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_tableD1Ev
; demangled: glsl_symbol_table::~glsl_symbol_table()
; alias: _ZN17glsl_symbol_tableD2Ev
; demangled: glsl_symbol_table::~glsl_symbol_table()
; decoder-mode: thumb
0007e8cc  d0 b5                                            push {r4, r6, r7, lr}
0007e8ce  02 af                                            add r7, sp, #8
0007e8d0  04 46                                            mov r4, r0
0007e8d2  60 68                                            ldr r0, [r4, #4]
0007e8d4  b5 f7 f6 e8                                      blx #0x33ac4
0007e8d8  a0 68                                            ldr r0, [r4, #8]
0007e8da  b3 f7 04 ef                                      blx #0x326e4
0007e8de  20 46                                            mov r0, r4
0007e8e0  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x0007e8e2, declared_size=6, range_size=6, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table10push_scopeEv
; demangled: glsl_symbol_table::push_scope()
; decoder-mode: thumb
0007e8e2  40 68                                            ldr r0, [r0, #4]
0007e8e4  32 f0 88 b9                                      b.w #0xb0bf8

; FUNCTION 0x0007e8e8, declared_size=6, range_size=6, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table9pop_scopeEv
; demangled: glsl_symbol_table::pop_scope()
; decoder-mode: thumb
0007e8e8  40 68                                            ldr r0, [r0, #4]
0007e8ea  32 f0 8d b9                                      b.w #0xb0c08

; FUNCTION 0x0007e8ee, declared_size=28, range_size=28, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table24name_declared_this_scopeEPKc
; demangled: glsl_symbol_table::name_declared_this_scope(char const*)
; decoder-mode: thumb
0007e8ee  80 b5                                            push {r7, lr}
0007e8f0  6f 46                                            mov r7, sp
0007e8f2  40 68                                            ldr r0, [r0, #4]
0007e8f4  0a 46                                            mov r2, r1
0007e8f6  4f f0 ff 31                                      mov.w r1, #-1
0007e8fa  b5 f7 ea e8                                      blx #0x33ad0
0007e8fe  00 21                                            movs r1, #0
0007e900  00 28                                            cmp r0, #0
0007e902  08 bf                                            it eq
0007e904  01 21                                            moveq r1, #1
0007e906  08 46                                            mov r0, r1
0007e908  80 bd                                            pop {r7, pc}

; FUNCTION 0x0007e90c, declared_size=208, range_size=208, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table12add_variableEP11ir_variable
; demangled: glsl_symbol_table::add_variable(ir_variable*)
; decoder-mode: thumb
0007e90c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007e90e  03 af                                            add r7, sp, #0xc
0007e910  2d e9 00 0b                                      push.w {r8, sb, fp}
0007e914  05 46                                            mov r5, r0
0007e916  0c 46                                            mov r4, r1
0007e918  28 78                                            ldrb r0, [r5]
0007e91a  70 b3                                            cbz r0, #0x7e97a
0007e91c  68 68                                            ldr r0, [r5, #4]
0007e91e  4f f0 ff 31                                      mov.w r1, #-1
0007e922  62 69                                            ldr r2, [r4, #0x14]
0007e924  b5 f7 da e8                                      blx #0x33adc
0007e928  80 46                                            mov r8, r0
0007e92a  68 68                                            ldr r0, [r5, #4]
0007e92c  62 69                                            ldr r2, [r4, #0x14]
0007e92e  4f f0 ff 31                                      mov.w r1, #-1
0007e932  b5 f7 ce e8                                      blx #0x33ad0
0007e936  f0 b3                                            cbz r0, #0x7e9b6
0007e938  a8 68                                            ldr r0, [r5, #8]
0007e93a  1c 21                                            movs r1, #0x1c
0007e93c  b3 f7 f0 ee                                      blx #0x32720
0007e940  81 46                                            mov sb, r0
0007e942  24 48                                            ldr r0, [pc, #0x90]
0007e944  78 44                                            add r0, pc
0007e946  01 68                                            ldr r1, [r0]
0007e948  48 46                                            mov r0, sb
0007e94a  b3 f7 da ef                                      blx #0x32900
0007e94e  4e 46                                            mov r6, sb
0007e950  18 21                                            movs r1, #0x18
0007e952  46 f8 04 4b                                      str r4, [r6], #4
0007e956  30 46                                            mov r0, r6
0007e958  b3 f7 82 ee                                      blx #0x32660
0007e95c  b8 f1 00 0f                                      cmp.w r8, #0
0007e960  1c bf                                            itt ne
0007e962  d8 f8 04 00                                      ldrne.w r0, [r8, #4]
0007e966  30 60                                            strne r0, [r6]
0007e968  62 69                                            ldr r2, [r4, #0x14]
0007e96a  4f f0 ff 31                                      mov.w r1, #-1
0007e96e  68 68                                            ldr r0, [r5, #4]
0007e970  4b 46                                            mov r3, sb
0007e972  b5 f7 ba e8                                      blx #0x33ae8
0007e976  01 20                                            movs r0, #1
0007e978  24 e0                                            b #0x7e9c4
0007e97a  a8 68                                            ldr r0, [r5, #8]
0007e97c  1c 21                                            movs r1, #0x1c
0007e97e  b3 f7 d0 ee                                      blx #0x32720
0007e982  06 46                                            mov r6, r0
0007e984  14 48                                            ldr r0, [pc, #0x50]
0007e986  78 44                                            add r0, pc
0007e988  01 68                                            ldr r1, [r0]
0007e98a  30 46                                            mov r0, r6
0007e98c  b3 f7 b8 ef                                      blx #0x32900
0007e990  30 46                                            mov r0, r6
0007e992  18 21                                            movs r1, #0x18
0007e994  40 f8 04 4b                                      str r4, [r0], #4
0007e998  b3 f7 62 ee                                      blx #0x32660
0007e99c  62 69                                            ldr r2, [r4, #0x14]
0007e99e  4f f0 ff 31                                      mov.w r1, #-1
0007e9a2  68 68                                            ldr r0, [r5, #4]
0007e9a4  33 46                                            mov r3, r6
0007e9a6  b5 f7 a0 e8                                      blx #0x33ae8
0007e9aa  01 46                                            mov r1, r0
0007e9ac  00 20                                            movs r0, #0
0007e9ae  00 29                                            cmp r1, #0
0007e9b0  08 bf                                            it eq
0007e9b2  01 20                                            moveq r0, #1
0007e9b4  06 e0                                            b #0x7e9c4
0007e9b6  d8 f8 00 00                                      ldr.w r0, [r8]
0007e9ba  10 b9                                            cbnz r0, #0x7e9c2
0007e9bc  d8 f8 08 00                                      ldr.w r0, [r8, #8]
0007e9c0  18 b1                                            cbz r0, #0x7e9ca
0007e9c2  00 20                                            movs r0, #0
0007e9c4  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007e9c8  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007e9ca  c8 f8 00 40                                      str.w r4, [r8]
0007e9ce  01 20                                            movs r0, #1
0007e9d0  f8 e7                                            b #0x7e9c4
0007e9d2  00 bf                                            nop
0007e9d4  08 e0                                            b #0x7e9e8
0007e9d6  05 00                                            movs r5, r0
0007e9d8  c6 df                                            svc #0xc6
0007e9da  05 00                                            movs r5, r0

; FUNCTION 0x0007e9dc, declared_size=12, range_size=12, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table9get_entryEPKc
; demangled: glsl_symbol_table::get_entry(char const*)
; decoder-mode: thumb
0007e9dc  40 68                                            ldr r0, [r0, #4]
0007e9de  0a 46                                            mov r2, r1
0007e9e0  4f f0 ff 31                                      mov.w r1, #-1
0007e9e4  32 f0 18 b9                                      b.w #0xb0c18

; FUNCTION 0x0007e9e8, declared_size=84, range_size=84, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table8add_typeEPKcPK9glsl_type
; demangled: glsl_symbol_table::add_type(char const*, glsl_type const*)
; decoder-mode: thumb
0007e9e8  f0 b5                                            push {r4, r5, r6, r7, lr}
0007e9ea  03 af                                            add r7, sp, #0xc
0007e9ec  2d e9 00 0b                                      push.w {r8, sb, fp}
0007e9f0  06 46                                            mov r6, r0
0007e9f2  88 46                                            mov r8, r1
0007e9f4  b0 68                                            ldr r0, [r6, #8]
0007e9f6  1c 21                                            movs r1, #0x1c
0007e9f8  91 46                                            mov sb, r2
0007e9fa  b3 f7 92 ee                                      blx #0x32720
0007e9fe  05 46                                            mov r5, r0
0007ea00  0d 48                                            ldr r0, [pc, #0x34]
0007ea02  78 44                                            add r0, pc
0007ea04  01 68                                            ldr r1, [r0]
0007ea06  28 46                                            mov r0, r5
0007ea08  b3 f7 7a ef                                      blx #0x32900
0007ea0c  00 24                                            movs r4, #0
0007ea0e  4f f0 ff 31                                      mov.w r1, #-1
0007ea12  c5 e9 00 44                                      strd r4, r4, [r5]
0007ea16  42 46                                            mov r2, r8
0007ea18  c5 e9 02 94                                      strd sb, r4, [r5, #8]
0007ea1c  2b 46                                            mov r3, r5
0007ea1e  c5 e9 04 44                                      strd r4, r4, [r5, #0x10]
0007ea22  ac 61                                            str r4, [r5, #0x18]
0007ea24  70 68                                            ldr r0, [r6, #4]
0007ea26  b5 f7 60 e8                                      blx #0x33ae8
0007ea2a  00 28                                            cmp r0, #0
0007ea2c  08 bf                                            it eq
0007ea2e  01 24                                            moveq r4, #1
0007ea30  20 46                                            mov r0, r4
0007ea32  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007ea36  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007ea38  4a df                                            svc #0x4a
0007ea3a  05 00                                            movs r5, r0

; FUNCTION 0x0007ea3c, declared_size=156, range_size=156, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table13add_interfaceEPKcPK9glsl_type16ir_variable_mode
; demangled: glsl_symbol_table::add_interface(char const*, glsl_type const*, ir_variable_mode)
; decoder-mode: thumb
0007ea3c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ea3e  03 af                                            add r7, sp, #0xc
0007ea40  2d e9 00 0b                                      push.w {r8, sb, fp}
0007ea44  06 46                                            mov r6, r0
0007ea46  0d 46                                            mov r5, r1
0007ea48  70 68                                            ldr r0, [r6, #4]
0007ea4a  90 46                                            mov r8, r2
0007ea4c  4f f0 ff 31                                      mov.w r1, #-1
0007ea50  2a 46                                            mov r2, r5
0007ea52  1c 46                                            mov r4, r3
0007ea54  b5 f7 42 e8                                      blx #0x33adc
0007ea58  48 b1                                            cbz r0, #0x7ea6e
0007ea5a  61 1e                                            subs r1, r4, #1
0007ea5c  02 29                                            cmp r1, #2
0007ea5e  04 d8                                            bhi #0x7ea6a
0007ea60  0c 22                                            movs r2, #0xc
0007ea62  02 eb 81 01                                      add.w r1, r2, r1, lsl #2
0007ea66  42 58                                            ldr r2, [r0, r1]
0007ea68  ca b1                                            cbz r2, #0x7ea9e
0007ea6a  00 20                                            movs r0, #0
0007ea6c  2e e0                                            b #0x7eacc
0007ea6e  b0 68                                            ldr r0, [r6, #8]
0007ea70  1c 21                                            movs r1, #0x1c
0007ea72  b3 f7 56 ee                                      blx #0x32720
0007ea76  81 46                                            mov sb, r0
0007ea78  16 48                                            ldr r0, [pc, #0x58]
0007ea7a  78 44                                            add r0, pc
0007ea7c  01 68                                            ldr r1, [r0]
0007ea7e  48 46                                            mov r0, sb
0007ea80  b3 f7 3e ef                                      blx #0x32900
0007ea84  48 46                                            mov r0, sb
0007ea86  1c 21                                            movs r1, #0x1c
0007ea88  b3 f7 ea ed                                      blx #0x32660
0007ea8c  01 2c                                            cmp r4, #1
0007ea8e  0a d0                                            beq #0x7eaa6
0007ea90  03 2c                                            cmp r4, #3
0007ea92  0b d0                                            beq #0x7eaac
0007ea94  02 2c                                            cmp r4, #2
0007ea96  0d d1                                            bne #0x7eab4
0007ea98  09 f1 10 00                                      add.w r0, sb, #0x10
0007ea9c  08 e0                                            b #0x7eab0
0007ea9e  40 f8 01 80                                      str.w r8, [r0, r1]
0007eaa2  01 20                                            movs r0, #1
0007eaa4  12 e0                                            b #0x7eacc
0007eaa6  09 f1 0c 00                                      add.w r0, sb, #0xc
0007eaaa  01 e0                                            b #0x7eab0
0007eaac  09 f1 14 00                                      add.w r0, sb, #0x14
0007eab0  c0 f8 00 80                                      str.w r8, [r0]
0007eab4  70 68                                            ldr r0, [r6, #4]
0007eab6  4f f0 ff 31                                      mov.w r1, #-1
0007eaba  2a 46                                            mov r2, r5
0007eabc  4b 46                                            mov r3, sb
0007eabe  b5 f7 14 e8                                      blx #0x33ae8
0007eac2  01 46                                            mov r1, r0
0007eac4  00 20                                            movs r0, #0
0007eac6  00 29                                            cmp r1, #0
0007eac8  08 bf                                            it eq
0007eaca  01 20                                            moveq r0, #1
0007eacc  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007ead0  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007ead2  00 bf                                            nop
0007ead4  d2 de                                            udf #0xd2
0007ead6  05 00                                            movs r5, r0

; FUNCTION 0x0007ead8, declared_size=148, range_size=148, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table12add_functionEP11ir_function
; demangled: glsl_symbol_table::add_function(ir_function*)
; decoder-mode: thumb
0007ead8  f0 b5                                            push {r4, r5, r6, r7, lr}
0007eada  03 af                                            add r7, sp, #0xc
0007eadc  2d e9 00 0b                                      push.w {r8, sb, fp}
0007eae0  05 46                                            mov r5, r0
0007eae2  88 46                                            mov r8, r1
0007eae4  28 78                                            ldrb r0, [r5]
0007eae6  c8 b1                                            cbz r0, #0x7eb1c
0007eae8  a9 46                                            mov sb, r5
0007eaea  44 46                                            mov r4, r8
0007eaec  59 f8 04 0f                                      ldr r0, [sb, #4]!
0007eaf0  4f f0 ff 31                                      mov.w r1, #-1
0007eaf4  54 f8 10 2f                                      ldr r2, [r4, #0x10]!
0007eaf8  b4 f7 ea ef                                      blx #0x33ad0
0007eafc  90 b9                                            cbnz r0, #0x7eb24
0007eafe  d9 f8 00 00                                      ldr.w r0, [sb]
0007eb02  4f f0 ff 31                                      mov.w r1, #-1
0007eb06  22 68                                            ldr r2, [r4]
0007eb08  b4 f7 e8 ef                                      blx #0x33adc
0007eb0c  41 68                                            ldr r1, [r0, #4]
0007eb0e  49 b9                                            cbnz r1, #0x7eb24
0007eb10  81 68                                            ldr r1, [r0, #8]
0007eb12  39 b9                                            cbnz r1, #0x7eb24
0007eb14  01 25                                            movs r5, #1
0007eb16  c0 f8 04 80                                      str.w r8, [r0, #4]
0007eb1a  21 e0                                            b #0x7eb60
0007eb1c  08 f1 10 04                                      add.w r4, r8, #0x10
0007eb20  05 f1 04 09                                      add.w sb, r5, #4
0007eb24  a8 68                                            ldr r0, [r5, #8]
0007eb26  1c 21                                            movs r1, #0x1c
0007eb28  b3 f7 fa ed                                      blx #0x32720
0007eb2c  06 46                                            mov r6, r0
0007eb2e  0e 48                                            ldr r0, [pc, #0x38]
0007eb30  78 44                                            add r0, pc
0007eb32  01 68                                            ldr r1, [r0]
0007eb34  30 46                                            mov r0, r6
0007eb36  b3 f7 e4 ee                                      blx #0x32900
0007eb3a  06 f1 08 00                                      add.w r0, r6, #8
0007eb3e  00 25                                            movs r5, #0
0007eb40  14 21                                            movs r1, #0x14
0007eb42  c6 e9 00 58                                      strd r5, r8, [r6]
0007eb46  b3 f7 8c ed                                      blx #0x32660
0007eb4a  22 68                                            ldr r2, [r4]
0007eb4c  4f f0 ff 31                                      mov.w r1, #-1
0007eb50  d9 f8 00 00                                      ldr.w r0, [sb]
0007eb54  33 46                                            mov r3, r6
0007eb56  b4 f7 c8 ef                                      blx #0x33ae8
0007eb5a  00 28                                            cmp r0, #0
0007eb5c  08 bf                                            it eq
0007eb5e  01 25                                            moveq r5, #1
0007eb60  28 46                                            mov r0, r5
0007eb62  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007eb66  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007eb68  1c de                                            udf #0x1c
0007eb6a  05 00                                            movs r5, r0

; FUNCTION 0x0007eb6c, declared_size=76, range_size=76, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table19add_global_functionEP11ir_function
; demangled: glsl_symbol_table::add_global_function(ir_function*)
; decoder-mode: thumb
0007eb6c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007eb6e  03 af                                            add r7, sp, #0xc
0007eb70  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007eb74  05 46                                            mov r5, r0
0007eb76  0c 46                                            mov r4, r1
0007eb78  a8 68                                            ldr r0, [r5, #8]
0007eb7a  1c 21                                            movs r1, #0x1c
0007eb7c  b3 f7 d0 ed                                      blx #0x32720
0007eb80  06 46                                            mov r6, r0
0007eb82  0c 48                                            ldr r0, [pc, #0x30]
0007eb84  78 44                                            add r0, pc
0007eb86  01 68                                            ldr r1, [r0]
0007eb88  30 46                                            mov r0, r6
0007eb8a  b3 f7 ba ee                                      blx #0x32900
0007eb8e  00 20                                            movs r0, #0
0007eb90  14 21                                            movs r1, #0x14
0007eb92  c6 e9 00 04                                      strd r0, r4, [r6]
0007eb96  06 f1 08 00                                      add.w r0, r6, #8
0007eb9a  b3 f7 62 ed                                      blx #0x32660
0007eb9e  22 69                                            ldr r2, [r4, #0x10]
0007eba0  4f f0 ff 31                                      mov.w r1, #-1
0007eba4  68 68                                            ldr r0, [r5, #4]
0007eba6  33 46                                            mov r3, r6
0007eba8  5d f8 04 bb                                      ldr fp, [sp], #4
0007ebac  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0007ebb0  32 f0 3a b8                                      b.w #0xb0c28
0007ebb4  c8 dd                                            ble #0x7eb48
0007ebb6  05 00                                            movs r5, r0

; FUNCTION 0x0007ebb8, declared_size=26, range_size=26, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table12get_variableEPKc
; demangled: glsl_symbol_table::get_variable(char const*)
; decoder-mode: thumb
0007ebb8  80 b5                                            push {r7, lr}
0007ebba  6f 46                                            mov r7, sp
0007ebbc  40 68                                            ldr r0, [r0, #4]
0007ebbe  0a 46                                            mov r2, r1
0007ebc0  4f f0 ff 31                                      mov.w r1, #-1
0007ebc4  b4 f7 8a ef                                      blx #0x33adc
0007ebc8  00 28                                            cmp r0, #0
0007ebca  14 bf                                            ite ne
0007ebcc  00 68                                            ldrne r0, [r0]
0007ebce  00 20                                            moveq r0, #0
0007ebd0  80 bd                                            pop {r7, pc}

; FUNCTION 0x0007ebd2, declared_size=26, range_size=26, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table8get_typeEPKc
; demangled: glsl_symbol_table::get_type(char const*)
; decoder-mode: thumb
0007ebd2  80 b5                                            push {r7, lr}
0007ebd4  6f 46                                            mov r7, sp
0007ebd6  40 68                                            ldr r0, [r0, #4]
0007ebd8  0a 46                                            mov r2, r1
0007ebda  4f f0 ff 31                                      mov.w r1, #-1
0007ebde  b4 f7 7e ef                                      blx #0x33adc
0007ebe2  00 28                                            cmp r0, #0
0007ebe4  14 bf                                            ite ne
0007ebe6  80 68                                            ldrne r0, [r0, #8]
0007ebe8  00 20                                            moveq r0, #0
0007ebea  80 bd                                            pop {r7, pc}

; FUNCTION 0x0007ebec, declared_size=38, range_size=38, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table13get_interfaceEPKc16ir_variable_mode
; demangled: glsl_symbol_table::get_interface(char const*, ir_variable_mode)
; decoder-mode: thumb
0007ebec  d0 b5                                            push {r4, r6, r7, lr}
0007ebee  02 af                                            add r7, sp, #8
0007ebf0  40 68                                            ldr r0, [r0, #4]
0007ebf2  14 46                                            mov r4, r2
0007ebf4  0a 46                                            mov r2, r1
0007ebf6  4f f0 ff 31                                      mov.w r1, #-1
0007ebfa  b4 f7 70 ef                                      blx #0x33adc
0007ebfe  30 b1                                            cbz r0, #0x7ec0e
0007ec00  61 1e                                            subs r1, r4, #1
0007ec02  02 29                                            cmp r1, #2
0007ec04  03 d8                                            bhi #0x7ec0e
0007ec06  00 eb 81 00                                      add.w r0, r0, r1, lsl #2
0007ec0a  c0 68                                            ldr r0, [r0, #0xc]
0007ec0c  d0 bd                                            pop {r4, r6, r7, pc}
0007ec0e  00 20                                            movs r0, #0
0007ec10  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x0007ec12, declared_size=26, range_size=26, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table12get_functionEPKc
; demangled: glsl_symbol_table::get_function(char const*)
; decoder-mode: thumb
0007ec12  80 b5                                            push {r7, lr}
0007ec14  6f 46                                            mov r7, sp
0007ec16  40 68                                            ldr r0, [r0, #4]
0007ec18  0a 46                                            mov r2, r1
0007ec1a  4f f0 ff 31                                      mov.w r1, #-1
0007ec1e  b4 f7 5e ef                                      blx #0x33adc
0007ec22  00 28                                            cmp r0, #0
0007ec24  14 bf                                            ite ne
0007ec26  40 68                                            ldrne r0, [r0, #4]
0007ec28  00 20                                            moveq r0, #0
0007ec2a  80 bd                                            pop {r7, pc}

; FUNCTION 0x0007ec2c, declared_size=24, range_size=24, mode=thumb
; class-group: glsl_symbol_table
; alias: _ZN17glsl_symbol_table16disable_variableEPKc
; demangled: glsl_symbol_table::disable_variable(char const*)
; decoder-mode: thumb
0007ec2c  80 b5                                            push {r7, lr}
0007ec2e  6f 46                                            mov r7, sp
0007ec30  40 68                                            ldr r0, [r0, #4]
0007ec32  0a 46                                            mov r2, r1
0007ec34  4f f0 ff 31                                      mov.w r1, #-1
0007ec38  b4 f7 50 ef                                      blx #0x33adc
0007ec3c  08 b1                                            cbz r0, #0x7ec42
0007ec3e  00 21                                            movs r1, #0
0007ec40  01 60                                            str r1, [r0]
0007ec42  80 bd                                            pop {r7, pc}
