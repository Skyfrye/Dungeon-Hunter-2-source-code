; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000ad52c, declared_size=224, range_size=224, mode=thumb
; class-group: std
; alias: _ZSt25__stl_throw_runtime_errorPKc
; demangled: std::__stl_throw_runtime_error(char const*)
; decoder-mode: thumb
000ad52c  f0 b5                                            push {r4, r5, r6, r7, lr}
000ad52e  03 af                                            add r7, sp, #0xc
000ad530  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000ad534  88 b0                                            sub sp, #0x20
000ad536  04 46                                            mov r4, r0
000ad538  4f f4 84 70                                      mov.w r0, #0x108
000ad53c  fe f7 3a fe                                      bl #0xac1b4
000ad540  05 46                                            mov r5, r0
000ad542  0d f1 08 08                                      add.w r8, sp, #8
000ad546  01 aa                                            add r2, sp, #4
000ad548  21 46                                            mov r1, r4
000ad54a  40 46                                            mov r0, r8
000ad54c  00 f0 5e f8                                      bl #0xad60c
000ad550  28 46                                            mov r0, r5
000ad552  01 f0 dd fb                                      bl #0xaed10
000ad556  29 48                                            ldr r0, [pc, #0xa4]
000ad558  78 44                                            add r0, pc
000ad55a  00 68                                            ldr r0, [r0]
000ad55c  08 30                                            adds r0, #8
000ad55e  28 60                                            str r0, [r5]
000ad560  07 9e                                            ldr r6, [sp, #0x1c]
000ad562  30 46                                            mov r0, r6
000ad564  84 f7 fe ec                                      blx #0x31f64
000ad568  44 1c                                            adds r4, r0, #1
000ad56a  b4 f5 80 7f                                      cmp.w r4, #0x100
000ad56e  0d d9                                            bls #0xad58c
000ad570  20 46                                            mov r0, r4
000ad572  84 f7 b2 ed                                      blx #0x320d8
000ad576  01 46                                            mov r1, r0
000ad578  28 1d                                            adds r0, r5, #4
000ad57a  00 29                                            cmp r1, #0
000ad57c  c5 f8 04 11                                      str.w r1, [r5, #0x104]
000ad580  08 d1                                            bne #0xad594
000ad582  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad586  4f f4 80 74                                      mov.w r4, #0x100
000ad58a  05 e0                                            b #0xad598
000ad58c  28 1d                                            adds r0, r5, #4
000ad58e  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad592  01 e0                                            b #0xad598
000ad594  04 60                                            str r4, [r0]
000ad596  08 46                                            mov r0, r1
000ad598  01 3c                                            subs r4, #1
000ad59a  31 46                                            mov r1, r6
000ad59c  22 46                                            mov r2, r4
000ad59e  84 f7 c2 ee                                      blx #0x32324
000ad5a2  17 48                                            ldr r0, [pc, #0x5c]
000ad5a4  18 4b                                            ldr r3, [pc, #0x60]
000ad5a6  78 44                                            add r0, pc
000ad5a8  16 4a                                            ldr r2, [pc, #0x58]
000ad5aa  7b 44                                            add r3, pc
000ad5ac  d5 f8 04 61                                      ldr.w r6, [r5, #0x104]
000ad5b0  01 68                                            ldr r1, [r0]
000ad5b2  7a 44                                            add r2, pc
000ad5b4  18 68                                            ldr r0, [r3]
000ad5b6  00 23                                            movs r3, #0
000ad5b8  12 68                                            ldr r2, [r2]
000ad5ba  08 30                                            adds r0, #8
000ad5bc  33 55                                            strb r3, [r6, r4]
000ad5be  28 60                                            str r0, [r5]
000ad5c0  28 46                                            mov r0, r5
000ad5c2  fe f7 dd fe                                      bl #0xac380
000ad5c6  06 46                                            mov r6, r0
000ad5c8  07 98                                            ldr r0, [sp, #0x1c]
000ad5ca  40 45                                            cmp r0, r8
000ad5cc  18 bf                                            it ne
000ad5ce  00 28                                            cmpne r0, #0
000ad5d0  11 d0                                            beq #0xad5f6
000ad5d2  02 99                                            ldr r1, [sp, #8]
000ad5d4  09 1a                                            subs r1, r1, r0
000ad5d6  81 29                                            cmp r1, #0x81
000ad5d8  04 d3                                            blo #0xad5e4
000ad5da  84 f7 dc ec                                      blx #0x31f94
000ad5de  30 46                                            mov r0, r6
000ad5e0  88 f7 90 ea                                      blx #0x35b04
000ad5e4  84 f7 dc ec                                      blx #0x31fa0
000ad5e8  05 e0                                            b #0xad5f6
000ad5ea  fe f7 c3 fe                                      bl #0xac374
000ad5ee  06 46                                            mov r6, r0
000ad5f0  28 46                                            mov r0, r5
000ad5f2  fe f7 0d fe                                      bl #0xac210
000ad5f6  30 46                                            mov r0, r6
000ad5f8  88 f7 84 ea                                      blx #0x35b04
000ad5fc  1c f5 02 00                                      adds.w r0, ip, #0x820000
000ad600  d2 f4                                            .byte 0xd2, 0xf4
000ad602  02 00                                            movs r2, r0
000ad604  ca f4                                            .byte 0xca, 0xf4
000ad606  02 00                                            movs r2, r0
000ad608  d6 f4                                            .byte 0xd6, 0xf4
000ad60a  02 00                                            movs r2, r0

; FUNCTION 0x000ad6c0, declared_size=224, range_size=224, mode=thumb
; class-group: std
; alias: _ZSt23__stl_throw_range_errorPKc
; demangled: std::__stl_throw_range_error(char const*)
; decoder-mode: thumb
000ad6c0  f0 b5                                            push {r4, r5, r6, r7, lr}
000ad6c2  03 af                                            add r7, sp, #0xc
000ad6c4  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000ad6c8  88 b0                                            sub sp, #0x20
000ad6ca  04 46                                            mov r4, r0
000ad6cc  4f f4 84 70                                      mov.w r0, #0x108
000ad6d0  fe f7 70 fd                                      bl #0xac1b4
000ad6d4  05 46                                            mov r5, r0
000ad6d6  0d f1 08 08                                      add.w r8, sp, #8
000ad6da  01 aa                                            add r2, sp, #4
000ad6dc  21 46                                            mov r1, r4
000ad6de  40 46                                            mov r0, r8
000ad6e0  ff f7 94 ff                                      bl #0xad60c
000ad6e4  28 46                                            mov r0, r5
000ad6e6  01 f0 13 fb                                      bl #0xaed10
000ad6ea  29 48                                            ldr r0, [pc, #0xa4]
000ad6ec  78 44                                            add r0, pc
000ad6ee  00 68                                            ldr r0, [r0]
000ad6f0  08 30                                            adds r0, #8
000ad6f2  28 60                                            str r0, [r5]
000ad6f4  07 9e                                            ldr r6, [sp, #0x1c]
000ad6f6  30 46                                            mov r0, r6
000ad6f8  84 f7 34 ec                                      blx #0x31f64
000ad6fc  44 1c                                            adds r4, r0, #1
000ad6fe  b4 f5 80 7f                                      cmp.w r4, #0x100
000ad702  0d d9                                            bls #0xad720
000ad704  20 46                                            mov r0, r4
000ad706  84 f7 e8 ec                                      blx #0x320d8
000ad70a  01 46                                            mov r1, r0
000ad70c  28 1d                                            adds r0, r5, #4
000ad70e  00 29                                            cmp r1, #0
000ad710  c5 f8 04 11                                      str.w r1, [r5, #0x104]
000ad714  08 d1                                            bne #0xad728
000ad716  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad71a  4f f4 80 74                                      mov.w r4, #0x100
000ad71e  05 e0                                            b #0xad72c
000ad720  28 1d                                            adds r0, r5, #4
000ad722  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad726  01 e0                                            b #0xad72c
000ad728  04 60                                            str r4, [r0]
000ad72a  08 46                                            mov r0, r1
000ad72c  01 3c                                            subs r4, #1
000ad72e  31 46                                            mov r1, r6
000ad730  22 46                                            mov r2, r4
000ad732  84 f7 f8 ed                                      blx #0x32324
000ad736  17 48                                            ldr r0, [pc, #0x5c]
000ad738  18 4b                                            ldr r3, [pc, #0x60]
000ad73a  78 44                                            add r0, pc
000ad73c  16 4a                                            ldr r2, [pc, #0x58]
000ad73e  7b 44                                            add r3, pc
000ad740  d5 f8 04 61                                      ldr.w r6, [r5, #0x104]
000ad744  01 68                                            ldr r1, [r0]
000ad746  7a 44                                            add r2, pc
000ad748  18 68                                            ldr r0, [r3]
000ad74a  00 23                                            movs r3, #0
000ad74c  12 68                                            ldr r2, [r2]
000ad74e  08 30                                            adds r0, #8
000ad750  33 55                                            strb r3, [r6, r4]
000ad752  28 60                                            str r0, [r5]
000ad754  28 46                                            mov r0, r5
000ad756  fe f7 13 fe                                      bl #0xac380
000ad75a  06 46                                            mov r6, r0
000ad75c  07 98                                            ldr r0, [sp, #0x1c]
000ad75e  40 45                                            cmp r0, r8
000ad760  18 bf                                            it ne
000ad762  00 28                                            cmpne r0, #0
000ad764  11 d0                                            beq #0xad78a
000ad766  02 99                                            ldr r1, [sp, #8]
000ad768  09 1a                                            subs r1, r1, r0
000ad76a  81 29                                            cmp r1, #0x81
000ad76c  04 d3                                            blo #0xad778
000ad76e  84 f7 12 ec                                      blx #0x31f94
000ad772  30 46                                            mov r0, r6
000ad774  88 f7 c6 e9                                      blx #0x35b04
000ad778  84 f7 12 ec                                      blx #0x31fa0
000ad77c  05 e0                                            b #0xad78a
000ad77e  fe f7 f9 fd                                      bl #0xac374
000ad782  06 46                                            mov r6, r0
000ad784  28 46                                            mov r0, r5
000ad786  fe f7 43 fd                                      bl #0xac210
000ad78a  30 46                                            mov r0, r6
000ad78c  88 f7 ba e9                                      blx #0x35b04
000ad790  88 f3 02 00                                      usat r0, #2, r8
000ad794  4a f3 02 00                                      sbfx r0, sl, #0, #3
000ad798  36 f3                                            .byte 0x36, 0xf3
000ad79a  02 00                                            movs r2, r0
000ad79c  4a f3 02 00                                      sbfx r0, sl, #0, #3

; FUNCTION 0x000ad7a0, declared_size=224, range_size=224, mode=thumb
; class-group: std
; alias: _ZSt24__stl_throw_out_of_rangePKc
; demangled: std::__stl_throw_out_of_range(char const*)
; decoder-mode: thumb
000ad7a0  f0 b5                                            push {r4, r5, r6, r7, lr}
000ad7a2  03 af                                            add r7, sp, #0xc
000ad7a4  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000ad7a8  88 b0                                            sub sp, #0x20
000ad7aa  04 46                                            mov r4, r0
000ad7ac  4f f4 84 70                                      mov.w r0, #0x108
000ad7b0  fe f7 00 fd                                      bl #0xac1b4
000ad7b4  05 46                                            mov r5, r0
000ad7b6  0d f1 08 08                                      add.w r8, sp, #8
000ad7ba  01 aa                                            add r2, sp, #4
000ad7bc  21 46                                            mov r1, r4
000ad7be  40 46                                            mov r0, r8
000ad7c0  ff f7 24 ff                                      bl #0xad60c
000ad7c4  28 46                                            mov r0, r5
000ad7c6  01 f0 a3 fa                                      bl #0xaed10
000ad7ca  29 48                                            ldr r0, [pc, #0xa4]
000ad7cc  78 44                                            add r0, pc
000ad7ce  00 68                                            ldr r0, [r0]
000ad7d0  08 30                                            adds r0, #8
000ad7d2  28 60                                            str r0, [r5]
000ad7d4  07 9e                                            ldr r6, [sp, #0x1c]
000ad7d6  30 46                                            mov r0, r6
000ad7d8  84 f7 c4 eb                                      blx #0x31f64
000ad7dc  44 1c                                            adds r4, r0, #1
000ad7de  b4 f5 80 7f                                      cmp.w r4, #0x100
000ad7e2  0d d9                                            bls #0xad800
000ad7e4  20 46                                            mov r0, r4
000ad7e6  84 f7 78 ec                                      blx #0x320d8
000ad7ea  01 46                                            mov r1, r0
000ad7ec  28 1d                                            adds r0, r5, #4
000ad7ee  00 29                                            cmp r1, #0
000ad7f0  c5 f8 04 11                                      str.w r1, [r5, #0x104]
000ad7f4  08 d1                                            bne #0xad808
000ad7f6  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad7fa  4f f4 80 74                                      mov.w r4, #0x100
000ad7fe  05 e0                                            b #0xad80c
000ad800  28 1d                                            adds r0, r5, #4
000ad802  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad806  01 e0                                            b #0xad80c
000ad808  04 60                                            str r4, [r0]
000ad80a  08 46                                            mov r0, r1
000ad80c  01 3c                                            subs r4, #1
000ad80e  31 46                                            mov r1, r6
000ad810  22 46                                            mov r2, r4
000ad812  84 f7 88 ed                                      blx #0x32324
000ad816  17 48                                            ldr r0, [pc, #0x5c]
000ad818  18 4b                                            ldr r3, [pc, #0x60]
000ad81a  78 44                                            add r0, pc
000ad81c  16 4a                                            ldr r2, [pc, #0x58]
000ad81e  7b 44                                            add r3, pc
000ad820  d5 f8 04 61                                      ldr.w r6, [r5, #0x104]
000ad824  01 68                                            ldr r1, [r0]
000ad826  7a 44                                            add r2, pc
000ad828  18 68                                            ldr r0, [r3]
000ad82a  00 23                                            movs r3, #0
000ad82c  12 68                                            ldr r2, [r2]
000ad82e  08 30                                            adds r0, #8
000ad830  33 55                                            strb r3, [r6, r4]
000ad832  28 60                                            str r0, [r5]
000ad834  28 46                                            mov r0, r5
000ad836  fe f7 a3 fd                                      bl #0xac380
000ad83a  06 46                                            mov r6, r0
000ad83c  07 98                                            ldr r0, [sp, #0x1c]
000ad83e  40 45                                            cmp r0, r8
000ad840  18 bf                                            it ne
000ad842  00 28                                            cmpne r0, #0
000ad844  11 d0                                            beq #0xad86a
000ad846  02 99                                            ldr r1, [sp, #8]
000ad848  09 1a                                            subs r1, r1, r0
000ad84a  81 29                                            cmp r1, #0x81
000ad84c  04 d3                                            blo #0xad858
000ad84e  84 f7 a2 eb                                      blx #0x31f94
000ad852  30 46                                            mov r0, r6
000ad854  88 f7 56 e9                                      blx #0x35b04
000ad858  84 f7 a2 eb                                      blx #0x31fa0
000ad85c  05 e0                                            b #0xad86a
000ad85e  fe f7 89 fd                                      bl #0xac374
000ad862  06 46                                            mov r6, r0
000ad864  28 46                                            mov r0, r5
000ad866  fe f7 d3 fc                                      bl #0xac210
000ad86a  30 46                                            mov r0, r6
000ad86c  88 f7 4a e9                                      blx #0x35b04
000ad870  a8 f2 02 00                                      subw r0, r8, #2
000ad874  72 f2                                            .byte 0x72, 0xf2
000ad876  02 00                                            movs r2, r0
000ad878  56 f2                                            .byte 0x56, 0xf2
000ad87a  02 00                                            movs r2, r0
000ad87c  72 f2                                            .byte 0x72, 0xf2
000ad87e  02 00                                            movs r2, r0

; FUNCTION 0x000ad880, declared_size=224, range_size=224, mode=thumb
; class-group: std
; alias: _ZSt24__stl_throw_length_errorPKc
; demangled: std::__stl_throw_length_error(char const*)
; decoder-mode: thumb
000ad880  f0 b5                                            push {r4, r5, r6, r7, lr}
000ad882  03 af                                            add r7, sp, #0xc
000ad884  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000ad888  88 b0                                            sub sp, #0x20
000ad88a  04 46                                            mov r4, r0
000ad88c  4f f4 84 70                                      mov.w r0, #0x108
000ad890  fe f7 90 fc                                      bl #0xac1b4
000ad894  05 46                                            mov r5, r0
000ad896  0d f1 08 08                                      add.w r8, sp, #8
000ad89a  01 aa                                            add r2, sp, #4
000ad89c  21 46                                            mov r1, r4
000ad89e  40 46                                            mov r0, r8
000ad8a0  ff f7 b4 fe                                      bl #0xad60c
000ad8a4  28 46                                            mov r0, r5
000ad8a6  01 f0 33 fa                                      bl #0xaed10
000ad8aa  29 48                                            ldr r0, [pc, #0xa4]
000ad8ac  78 44                                            add r0, pc
000ad8ae  00 68                                            ldr r0, [r0]
000ad8b0  08 30                                            adds r0, #8
000ad8b2  28 60                                            str r0, [r5]
000ad8b4  07 9e                                            ldr r6, [sp, #0x1c]
000ad8b6  30 46                                            mov r0, r6
000ad8b8  84 f7 54 eb                                      blx #0x31f64
000ad8bc  44 1c                                            adds r4, r0, #1
000ad8be  b4 f5 80 7f                                      cmp.w r4, #0x100
000ad8c2  0d d9                                            bls #0xad8e0
000ad8c4  20 46                                            mov r0, r4
000ad8c6  84 f7 08 ec                                      blx #0x320d8
000ad8ca  01 46                                            mov r1, r0
000ad8cc  28 1d                                            adds r0, r5, #4
000ad8ce  00 29                                            cmp r1, #0
000ad8d0  c5 f8 04 11                                      str.w r1, [r5, #0x104]
000ad8d4  08 d1                                            bne #0xad8e8
000ad8d6  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad8da  4f f4 80 74                                      mov.w r4, #0x100
000ad8de  05 e0                                            b #0xad8ec
000ad8e0  28 1d                                            adds r0, r5, #4
000ad8e2  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad8e6  01 e0                                            b #0xad8ec
000ad8e8  04 60                                            str r4, [r0]
000ad8ea  08 46                                            mov r0, r1
000ad8ec  01 3c                                            subs r4, #1
000ad8ee  31 46                                            mov r1, r6
000ad8f0  22 46                                            mov r2, r4
000ad8f2  84 f7 18 ed                                      blx #0x32324
000ad8f6  17 48                                            ldr r0, [pc, #0x5c]
000ad8f8  18 4b                                            ldr r3, [pc, #0x60]
000ad8fa  78 44                                            add r0, pc
000ad8fc  16 4a                                            ldr r2, [pc, #0x58]
000ad8fe  7b 44                                            add r3, pc
000ad900  d5 f8 04 61                                      ldr.w r6, [r5, #0x104]
000ad904  01 68                                            ldr r1, [r0]
000ad906  7a 44                                            add r2, pc
000ad908  18 68                                            ldr r0, [r3]
000ad90a  00 23                                            movs r3, #0
000ad90c  12 68                                            ldr r2, [r2]
000ad90e  08 30                                            adds r0, #8
000ad910  33 55                                            strb r3, [r6, r4]
000ad912  28 60                                            str r0, [r5]
000ad914  28 46                                            mov r0, r5
000ad916  fe f7 33 fd                                      bl #0xac380
000ad91a  06 46                                            mov r6, r0
000ad91c  07 98                                            ldr r0, [sp, #0x1c]
000ad91e  40 45                                            cmp r0, r8
000ad920  18 bf                                            it ne
000ad922  00 28                                            cmpne r0, #0
000ad924  11 d0                                            beq #0xad94a
000ad926  02 99                                            ldr r1, [sp, #8]
000ad928  09 1a                                            subs r1, r1, r0
000ad92a  81 29                                            cmp r1, #0x81
000ad92c  04 d3                                            blo #0xad938
000ad92e  84 f7 32 eb                                      blx #0x31f94
000ad932  30 46                                            mov r0, r6
000ad934  88 f7 e6 e8                                      blx #0x35b04
000ad938  84 f7 32 eb                                      blx #0x31fa0
000ad93c  05 e0                                            b #0xad94a
000ad93e  fe f7 19 fd                                      bl #0xac374
000ad942  06 46                                            mov r6, r0
000ad944  28 46                                            mov r0, r5
000ad946  fe f7 63 fc                                      bl #0xac210
000ad94a  30 46                                            mov r0, r6
000ad94c  88 f7 da e8                                      blx #0x35b04
000ad950  c8 f1 02 00                                      rsb.w r0, r8, #2
000ad954  9a f1                                            .byte 0x9a, 0xf1
000ad956  02 00                                            movs r2, r0
000ad958  76 f1 02 00                                      sbcs r0, r6, #2
000ad95c  9a f1                                            .byte 0x9a, 0xf1
000ad95e  02 00                                            movs r2, r0

; FUNCTION 0x000ad960, declared_size=224, range_size=224, mode=thumb
; class-group: std
; alias: _ZSt28__stl_throw_invalid_argumentPKc
; demangled: std::__stl_throw_invalid_argument(char const*)
; decoder-mode: thumb
000ad960  f0 b5                                            push {r4, r5, r6, r7, lr}
000ad962  03 af                                            add r7, sp, #0xc
000ad964  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000ad968  88 b0                                            sub sp, #0x20
000ad96a  04 46                                            mov r4, r0
000ad96c  4f f4 84 70                                      mov.w r0, #0x108
000ad970  fe f7 20 fc                                      bl #0xac1b4
000ad974  05 46                                            mov r5, r0
000ad976  0d f1 08 08                                      add.w r8, sp, #8
000ad97a  01 aa                                            add r2, sp, #4
000ad97c  21 46                                            mov r1, r4
000ad97e  40 46                                            mov r0, r8
000ad980  ff f7 44 fe                                      bl #0xad60c
000ad984  28 46                                            mov r0, r5
000ad986  01 f0 c3 f9                                      bl #0xaed10
000ad98a  29 48                                            ldr r0, [pc, #0xa4]
000ad98c  78 44                                            add r0, pc
000ad98e  00 68                                            ldr r0, [r0]
000ad990  08 30                                            adds r0, #8
000ad992  28 60                                            str r0, [r5]
000ad994  07 9e                                            ldr r6, [sp, #0x1c]
000ad996  30 46                                            mov r0, r6
000ad998  84 f7 e4 ea                                      blx #0x31f64
000ad99c  44 1c                                            adds r4, r0, #1
000ad99e  b4 f5 80 7f                                      cmp.w r4, #0x100
000ad9a2  0d d9                                            bls #0xad9c0
000ad9a4  20 46                                            mov r0, r4
000ad9a6  84 f7 98 eb                                      blx #0x320d8
000ad9aa  01 46                                            mov r1, r0
000ad9ac  28 1d                                            adds r0, r5, #4
000ad9ae  00 29                                            cmp r1, #0
000ad9b0  c5 f8 04 11                                      str.w r1, [r5, #0x104]
000ad9b4  08 d1                                            bne #0xad9c8
000ad9b6  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad9ba  4f f4 80 74                                      mov.w r4, #0x100
000ad9be  05 e0                                            b #0xad9cc
000ad9c0  28 1d                                            adds r0, r5, #4
000ad9c2  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ad9c6  01 e0                                            b #0xad9cc
000ad9c8  04 60                                            str r4, [r0]
000ad9ca  08 46                                            mov r0, r1
000ad9cc  01 3c                                            subs r4, #1
000ad9ce  31 46                                            mov r1, r6
000ad9d0  22 46                                            mov r2, r4
000ad9d2  84 f7 a8 ec                                      blx #0x32324
000ad9d6  17 48                                            ldr r0, [pc, #0x5c]
000ad9d8  18 4b                                            ldr r3, [pc, #0x60]
000ad9da  78 44                                            add r0, pc
000ad9dc  16 4a                                            ldr r2, [pc, #0x58]
000ad9de  7b 44                                            add r3, pc
000ad9e0  d5 f8 04 61                                      ldr.w r6, [r5, #0x104]
000ad9e4  01 68                                            ldr r1, [r0]
000ad9e6  7a 44                                            add r2, pc
000ad9e8  18 68                                            ldr r0, [r3]
000ad9ea  00 23                                            movs r3, #0
000ad9ec  12 68                                            ldr r2, [r2]
000ad9ee  08 30                                            adds r0, #8
000ad9f0  33 55                                            strb r3, [r6, r4]
000ad9f2  28 60                                            str r0, [r5]
000ad9f4  28 46                                            mov r0, r5
000ad9f6  fe f7 c3 fc                                      bl #0xac380
000ad9fa  06 46                                            mov r6, r0
000ad9fc  07 98                                            ldr r0, [sp, #0x1c]
000ad9fe  40 45                                            cmp r0, r8
000ada00  18 bf                                            it ne
000ada02  00 28                                            cmpne r0, #0
000ada04  11 d0                                            beq #0xada2a
000ada06  02 99                                            ldr r1, [sp, #8]
000ada08  09 1a                                            subs r1, r1, r0
000ada0a  81 29                                            cmp r1, #0x81
000ada0c  04 d3                                            blo #0xada18
000ada0e  84 f7 c2 ea                                      blx #0x31f94
000ada12  30 46                                            mov r0, r6
000ada14  88 f7 76 e8                                      blx #0x35b04
000ada18  84 f7 c2 ea                                      blx #0x31fa0
000ada1c  05 e0                                            b #0xada2a
000ada1e  fe f7 a9 fc                                      bl #0xac374
000ada22  06 46                                            mov r6, r0
000ada24  28 46                                            mov r0, r5
000ada26  fe f7 f3 fb                                      bl #0xac210
000ada2a  30 46                                            mov r0, r6
000ada2c  88 f7 6a e8                                      blx #0x35b04
000ada30  e8 f0                                            .byte 0xe8, 0xf0
000ada32  02 00                                            movs r2, r0
000ada34  c2 f0                                            .byte 0xc2, 0xf0
000ada36  02 00                                            movs r2, r0
000ada38  96 f0 02 00                                      eors r0, r6, #2
000ada3c  c2 f0                                            .byte 0xc2, 0xf0
000ada3e  02 00                                            movs r2, r0

; FUNCTION 0x000ada40, declared_size=224, range_size=224, mode=thumb
; class-group: std
; alias: _ZSt26__stl_throw_overflow_errorPKc
; demangled: std::__stl_throw_overflow_error(char const*)
; decoder-mode: thumb
000ada40  f0 b5                                            push {r4, r5, r6, r7, lr}
000ada42  03 af                                            add r7, sp, #0xc
000ada44  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000ada48  88 b0                                            sub sp, #0x20
000ada4a  04 46                                            mov r4, r0
000ada4c  4f f4 84 70                                      mov.w r0, #0x108
000ada50  fe f7 b0 fb                                      bl #0xac1b4
000ada54  05 46                                            mov r5, r0
000ada56  0d f1 08 08                                      add.w r8, sp, #8
000ada5a  01 aa                                            add r2, sp, #4
000ada5c  21 46                                            mov r1, r4
000ada5e  40 46                                            mov r0, r8
000ada60  ff f7 d4 fd                                      bl #0xad60c
000ada64  28 46                                            mov r0, r5
000ada66  01 f0 53 f9                                      bl #0xaed10
000ada6a  29 48                                            ldr r0, [pc, #0xa4]
000ada6c  78 44                                            add r0, pc
000ada6e  00 68                                            ldr r0, [r0]
000ada70  08 30                                            adds r0, #8
000ada72  28 60                                            str r0, [r5]
000ada74  07 9e                                            ldr r6, [sp, #0x1c]
000ada76  30 46                                            mov r0, r6
000ada78  84 f7 74 ea                                      blx #0x31f64
000ada7c  44 1c                                            adds r4, r0, #1
000ada7e  b4 f5 80 7f                                      cmp.w r4, #0x100
000ada82  0d d9                                            bls #0xadaa0
000ada84  20 46                                            mov r0, r4
000ada86  84 f7 28 eb                                      blx #0x320d8
000ada8a  01 46                                            mov r1, r0
000ada8c  28 1d                                            adds r0, r5, #4
000ada8e  00 29                                            cmp r1, #0
000ada90  c5 f8 04 11                                      str.w r1, [r5, #0x104]
000ada94  08 d1                                            bne #0xadaa8
000ada96  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000ada9a  4f f4 80 74                                      mov.w r4, #0x100
000ada9e  05 e0                                            b #0xadaac
000adaa0  28 1d                                            adds r0, r5, #4
000adaa2  c5 f8 04 01                                      str.w r0, [r5, #0x104]
000adaa6  01 e0                                            b #0xadaac
000adaa8  04 60                                            str r4, [r0]
000adaaa  08 46                                            mov r0, r1
000adaac  01 3c                                            subs r4, #1
000adaae  31 46                                            mov r1, r6
000adab0  22 46                                            mov r2, r4
000adab2  84 f7 38 ec                                      blx #0x32324
000adab6  17 48                                            ldr r0, [pc, #0x5c]
000adab8  18 4b                                            ldr r3, [pc, #0x60]
000adaba  78 44                                            add r0, pc
000adabc  16 4a                                            ldr r2, [pc, #0x58]
000adabe  7b 44                                            add r3, pc
000adac0  d5 f8 04 61                                      ldr.w r6, [r5, #0x104]
000adac4  01 68                                            ldr r1, [r0]
000adac6  7a 44                                            add r2, pc
000adac8  18 68                                            ldr r0, [r3]
000adaca  00 23                                            movs r3, #0
000adacc  12 68                                            ldr r2, [r2]
000adace  08 30                                            adds r0, #8
000adad0  33 55                                            strb r3, [r6, r4]
000adad2  28 60                                            str r0, [r5]
000adad4  28 46                                            mov r0, r5
000adad6  fe f7 53 fc                                      bl #0xac380
000adada  06 46                                            mov r6, r0
000adadc  07 98                                            ldr r0, [sp, #0x1c]
000adade  40 45                                            cmp r0, r8
000adae0  18 bf                                            it ne
000adae2  00 28                                            cmpne r0, #0
000adae4  11 d0                                            beq #0xadb0a
000adae6  02 99                                            ldr r1, [sp, #8]
000adae8  09 1a                                            subs r1, r1, r0
000adaea  81 29                                            cmp r1, #0x81
000adaec  04 d3                                            blo #0xadaf8
000adaee  84 f7 52 ea                                      blx #0x31f94
000adaf2  30 46                                            mov r0, r6
000adaf4  88 f7 06 e8                                      blx #0x35b04
000adaf8  84 f7 52 ea                                      blx #0x31fa0
000adafc  05 e0                                            b #0xadb0a
000adafe  fe f7 39 fc                                      bl #0xac374
000adb02  06 46                                            mov r6, r0
000adb04  28 46                                            mov r0, r5
000adb06  fe f7 83 fb                                      bl #0xac210
000adb0a  30 46                                            mov r0, r6
000adb0c  87 f7 fa ef                                      blx #0x35b04
000adb10  08 f0 02 00                                      and r0, r8, #2
000adb14  ea ef 02 00                                      vaddl.s32 q8, d10, d2
000adb18  b6 ef 02 00                                      vext.32 d0, d6, d2, #0
000adb1c  ea ef 02 00                                      vaddl.s32 q8, d10, d2
