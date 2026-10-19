; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00094ff8, declared_size=92, range_size=92, mode=thumb
; class-group: loop_state
; alias: _ZN10loop_stateC1Ev
; demangled: loop_state::loop_state()
; alias: _ZN10loop_stateC2Ev
; demangled: loop_state::loop_state()
; decoder-mode: thumb
00094ff8  f0 b5                                            push {r4, r5, r6, r7, lr}
00094ffa  03 af                                            add r7, sp, #0xc
00094ffc  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00095000  13 49                                            ldr r1, [pc, #0x4c]
00095002  04 46                                            mov r4, r0
00095004  11 48                                            ldr r0, [pc, #0x44]
00095006  4f f0 00 08                                      mov.w r8, #0
0009500a  79 44                                            add r1, pc
0009500c  78 44                                            add r0, pc
0009500e  0e 68                                            ldr r6, [r1]
00095010  05 68                                            ldr r5, [r0]
00095012  00 20                                            movs r0, #0
00095014  32 46                                            mov r2, r6
00095016  29 46                                            mov r1, r5
00095018  9d f7 ac eb                                      blx #0x32774
0009501c  60 60                                            str r0, [r4, #4]
0009501e  00 20                                            movs r0, #0
00095020  29 46                                            mov r1, r5
00095022  32 46                                            mov r2, r6
00095024  9d f7 a6 eb                                      blx #0x32774
00095028  a0 60                                            str r0, [r4, #8]
0009502a  00 20                                            movs r0, #0
0009502c  29 46                                            mov r1, r5
0009502e  32 46                                            mov r2, r6
00095030  9d f7 a0 eb                                      blx #0x32774
00095034  e0 60                                            str r0, [r4, #0xc]
00095036  00 20                                            movs r0, #0
00095038  9e f7 58 e8                                      blx #0x330ec
0009503c  20 61                                            str r0, [r4, #0x10]
0009503e  20 46                                            mov r0, r4
00095040  84 f8 00 80                                      strb.w r8, [r4]
00095044  5d f8 04 8b                                      ldr r8, [sp], #4
00095048  f0 bd                                            pop {r4, r5, r6, r7, pc}
0009504a  00 bf                                            nop
0009504c  60 75                                            strb r0, [r4, #0x15]
0009504e  04 00                                            movs r4, r0
00095050  66 75                                            strb r6, [r4, #0x15]
00095052  04 00                                            movs r4, r0

; FUNCTION 0x00095054, declared_size=34, range_size=34, mode=thumb
; class-group: loop_state
; alias: _ZN10loop_stateD1Ev
; demangled: loop_state::~loop_state()
; alias: _ZN10loop_stateD2Ev
; demangled: loop_state::~loop_state()
; decoder-mode: thumb
00095054  d0 b5                                            push {r4, r6, r7, lr}
00095056  02 af                                            add r7, sp, #8
00095058  04 46                                            mov r4, r0
0009505a  60 68                                            ldr r0, [r4, #4]
0009505c  9d f7 96 eb                                      blx #0x3278c
00095060  a0 68                                            ldr r0, [r4, #8]
00095062  9d f7 94 eb                                      blx #0x3278c
00095066  e0 68                                            ldr r0, [r4, #0xc]
00095068  9d f7 90 eb                                      blx #0x3278c
0009506c  20 69                                            ldr r0, [r4, #0x10]
0009506e  9d f7 3a eb                                      blx #0x326e4
00095072  20 46                                            mov r0, r4
00095074  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x00095078, declared_size=68, range_size=68, mode=thumb
; class-group: loop_state
; alias: _ZN10loop_state6insertEP7ir_loop
; demangled: loop_state::insert(ir_loop*)
; decoder-mode: thumb
00095078  f0 b5                                            push {r4, r5, r6, r7, lr}
0009507a  03 af                                            add r7, sp, #0xc
0009507c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00095080  05 46                                            mov r5, r0
00095082  0c 46                                            mov r4, r1
00095084  28 69                                            ldr r0, [r5, #0x10]
00095086  4c 21                                            movs r1, #0x4c
00095088  9d f7 4a eb                                      blx #0x32720
0009508c  06 46                                            mov r6, r0
0009508e  0a 48                                            ldr r0, [pc, #0x28]
00095090  78 44                                            add r0, pc
00095092  01 68                                            ldr r1, [r0]
00095094  30 46                                            mov r0, r6
00095096  9d f7 34 ec                                      blx #0x32900
0009509a  30 46                                            mov r0, r6
0009509c  9f f7 b4 ee                                      blx #0x34e08
000950a0  68 68                                            ldr r0, [r5, #4]
000950a2  31 46                                            mov r1, r6
000950a4  22 46                                            mov r2, r4
000950a6  9d f7 5a eb                                      blx #0x3275c
000950aa  01 20                                            movs r0, #1
000950ac  28 70                                            strb r0, [r5]
000950ae  30 46                                            mov r0, r6
000950b0  5d f8 04 bb                                      ldr fp, [sp], #4
000950b4  f0 bd                                            pop {r4, r5, r6, r7, pc}
000950b6  00 bf                                            nop
000950b8  5c 79                                            ldrb r4, [r3, #5]
000950ba  04 00                                            movs r4, r0

; FUNCTION 0x00095124, declared_size=6, range_size=6, mode=thumb
; class-group: loop_state
; alias: _ZN10loop_state3getEPK7ir_loop
; demangled: loop_state::get(ir_loop const*)
; decoder-mode: thumb
00095124  40 68                                            ldr r0, [r0, #4]
00095126  1b f0 9f be                                      b.w #0xb0e68

; FUNCTION 0x0009512a, declared_size=6, range_size=6, mode=thumb
; class-group: loop_state
; alias: _ZN10loop_state16get_for_inductorEPK11ir_variable
; demangled: loop_state::get_for_inductor(ir_variable const*)
; decoder-mode: thumb
0009512a  80 68                                            ldr r0, [r0, #8]
0009512c  1b f0 9c be                                      b.w #0xb0e68

; FUNCTION 0x00095130, declared_size=10, range_size=10, mode=thumb
; class-group: loop_state
; alias: _ZN10loop_state19insert_non_inductorEP11ir_variable
; demangled: loop_state::insert_non_inductor(ir_variable*)
; decoder-mode: thumb
00095130  0a 46                                            mov r2, r1
00095132  01 46                                            mov r1, r0
00095134  c8 68                                            ldr r0, [r1, #0xc]
00095136  1b f0 9f bc                                      b.w #0xb0a78

; FUNCTION 0x0009513c, declared_size=244, range_size=244, mode=thumb
; class-group: loop_state
; alias: _ZN10loop_state15insert_inductorEP13loop_variableP19loop_variable_stateP7ir_loop
; demangled: loop_state::insert_inductor(loop_variable*, loop_variable_state*, ir_loop*)
; decoder-mode: thumb
0009513c  f0 b5                                            push {r4, r5, r6, r7, lr}
0009513e  03 af                                            add r7, sp, #0xc
00095140  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00095144  8b b0                                            sub sp, #0x2c
00095146  81 46                                            mov sb, r0
00095148  37 48                                            ldr r0, [pc, #0xdc]
0009514a  8b 46                                            mov fp, r1
0009514c  9a 46                                            mov sl, r3
0009514e  78 44                                            add r0, pc
00095150  90 46                                            mov r8, r2
00095152  00 68                                            ldr r0, [r0]
00095154  00 68                                            ldr r0, [r0]
00095156  0a 90                                            str r0, [sp, #0x28]
00095158  db f8 08 50                                      ldr.w r5, [fp, #8]
0009515c  d9 f8 0c 00                                      ldr.w r0, [sb, #0xc]
00095160  29 46                                            mov r1, r5
00095162  9d f7 c6 ea                                      blx #0x326f0
00095166  08 b1                                            cbz r0, #0x9516c
00095168  00 24                                            movs r4, #0
0009516a  4e e0                                            b #0x9520a
0009516c  6e 46                                            mov r6, sp
0009516e  30 46                                            mov r0, r6
00095170  9f f7 50 ee                                      blx #0x34e14
00095174  0a f1 04 04                                      add.w r4, sl, #4
00095178  24 68                                            ldr r4, [r4]
0009517a  20 68                                            ldr r0, [r4]
0009517c  a8 b1                                            cbz r0, #0x951aa
0009517e  20 46                                            mov r0, r4
00095180  00 2c                                            cmp r4, #0
00095182  18 bf                                            it ne
00095184  04 38                                            subne r0, #4
00095186  01 68                                            ldr r1, [r0]
00095188  ca 68                                            ldr r2, [r1, #0xc]
0009518a  31 46                                            mov r1, r6
0009518c  90 47                                            blx r2
0009518e  30 46                                            mov r0, r6
00095190  29 46                                            mov r1, r5
00095192  9f f7 46 ee                                      blx #0x34e20
00095196  00 28                                            cmp r0, #0
00095198  ee d0                                            beq #0x95178
0009519a  d9 f8 0c 00                                      ldr.w r0, [sb, #0xc]
0009519e  41 46                                            mov r1, r8
000951a0  2a 46                                            mov r2, r5
000951a2  9d f7 dc ea                                      blx #0x3275c
000951a6  00 24                                            movs r4, #0
000951a8  2c e0                                            b #0x95204
000951aa  da f8 08 00                                      ldr.w r0, [sl, #8]
000951ae  06 46                                            mov r6, r0
000951b0  56 f8 04 1f                                      ldr r1, [r6, #4]!
000951b4  d1 b1                                            cbz r1, #0x951ec
000951b6  ea 46                                            mov sl, sp
000951b8  db f8 18 10                                      ldr.w r1, [fp, #0x18]
000951bc  00 28                                            cmp r0, #0
000951be  18 bf                                            it ne
000951c0  04 38                                            subne r0, #4
000951c2  88 42                                            cmp r0, r1
000951c4  1c bf                                            itt ne
000951c6  c1 68                                            ldrne r1, [r0, #0xc]
000951c8  07 29                                            cmpne r1, #7
000951ca  09 d0                                            beq #0x951e0
000951cc  01 68                                            ldr r1, [r0]
000951ce  ca 68                                            ldr r2, [r1, #0xc]
000951d0  51 46                                            mov r1, sl
000951d2  90 47                                            blx r2
000951d4  50 46                                            mov r0, sl
000951d6  29 46                                            mov r1, r5
000951d8  9f f7 22 ee                                      blx #0x34e20
000951dc  00 28                                            cmp r0, #0
000951de  dc d1                                            bne #0x9519a
000951e0  30 68                                            ldr r0, [r6]
000951e2  06 46                                            mov r6, r0
000951e4  56 f8 04 1f                                      ldr r1, [r6, #4]!
000951e8  00 29                                            cmp r1, #0
000951ea  e5 d1                                            bne #0x951b8
000951ec  d8 f8 2c 00                                      ldr.w r0, [r8, #0x2c]
000951f0  41 46                                            mov r1, r8
000951f2  2a 46                                            mov r2, r5
000951f4  01 30                                            adds r0, #1
000951f6  c8 f8 2c 00                                      str.w r0, [r8, #0x2c]
000951fa  d9 f8 08 00                                      ldr.w r0, [sb, #8]
000951fe  9d f7 ae ea                                      blx #0x3275c
00095202  01 24                                            movs r4, #1
00095204  68 46                                            mov r0, sp
00095206  9f f7 12 ee                                      blx #0x34e2c
0009520a  08 48                                            ldr r0, [pc, #0x20]
0009520c  0a 99                                            ldr r1, [sp, #0x28]
0009520e  78 44                                            add r0, pc
00095210  00 68                                            ldr r0, [r0]
00095212  00 68                                            ldr r0, [r0]
00095214  40 1a                                            subs r0, r0, r1
00095216  01 bf                                            itttt eq
00095218  20 46                                            moveq r0, r4
0009521a  0b b0                                            addeq sp, #0x2c
0009521c  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00095220  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00095222  9c f7 1e ef                                      blx #0x32060
00095226  00 bf                                            nop
00095228  66 73                                            strb r6, [r4, #0xd]
0009522a  04 00                                            movs r4, r0
0009522c  a6 72                                            strb r6, [r4, #0xa]
0009522e  04 00                                            movs r4, r0
