; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0049777c, declared_size=276, range_size=276, mode=arm
; class-group: VectorSet<SWFAnim*>
; alias: _ZN9VectorSetIP7SWFAnimE16push_back_uniqueERKS1_
; demangled: VectorSet<SWFAnim*>::push_back_unique(SWFAnim* const&)
; decoder-mode: arm
0049777c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00497780  00 40 a0 e1                                      mov r4, r0
00497784  0c d0 4d e2                                      sub sp, sp, #0xc
00497788  01 50 a0 e1                                      mov r5, r1
0049778c  04 30 8d e2                                      add r3, sp, #4
00497790  00 00 90 e5                                      ldr r0, [r0]
00497794  04 10 94 e5                                      ldr r1, [r4, #4]
00497798  05 20 a0 e1                                      mov r2, r5
0049779c  b5 fe ff eb                                      bl #0x497278
004977a0  04 30 94 e5                                      ldr r3, [r4, #4]
004977a4  00 60 a0 e1                                      mov r6, r0
004977a8  03 00 50 e1                                      cmp r0, r3
004977ac  01 00 00 0a                                      beq #0x4977b8
004977b0  0c d0 8d e2                                      add sp, sp, #0xc
004977b4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004977b8  08 30 94 e5                                      ldr r3, [r4, #8]
004977bc  03 00 50 e1                                      cmp r0, r3
004977c0  05 00 00 0a                                      beq #0x4977dc
004977c4  00 30 95 e5                                      ldr r3, [r5]
004977c8  00 30 80 e5                                      str r3, [r0]
004977cc  04 30 94 e5                                      ldr r3, [r4, #4]
004977d0  04 30 83 e2                                      add r3, r3, #4
004977d4  04 30 84 e5                                      str r3, [r4, #4]
004977d8  f4 ff ff ea                                      b #0x4977b0
004977dc  00 30 94 e5                                      ldr r3, [r4]
004977e0  00 30 63 e0                                      rsb r3, r3, r0
004977e4  43 31 a0 e1                                      asr r3, r3, #2
004977e8  01 00 53 e3                                      cmp r3, #1
004977ec  03 10 83 20                                      addhs r1, r3, r3
004977f0  01 10 83 32                                      addlo r1, r3, #1
004977f4  07 01 71 e3                                      cmn r1, #0xc0000001
004977f8  1c 00 00 8a                                      bhi #0x497870
004977fc  01 00 53 e1                                      cmp r3, r1
00497800  1a 00 00 8a                                      bhi #0x497870
00497804  08 20 8d e2                                      add r2, sp, #8
00497808  08 10 22 e5                                      str r1, [r2, #-8]!
0049780c  08 00 84 e2                                      add r0, r4, #8
00497810  0d 20 a0 e1                                      mov r2, sp
00497814  9c ff ff eb                                      bl #0x49768c
00497818  00 10 94 e5                                      ldr r1, [r4]
0049781c  00 70 a0 e1                                      mov r7, r0
00497820  01 60 56 e0                                      subs r6, r6, r1
00497824  00 60 a0 01                                      moveq r6, r0
00497828  14 00 00 1a                                      bne #0x497880
0049782c  00 30 95 e5                                      ldr r3, [r5]
00497830  04 30 86 e4                                      str r3, [r6], #4
00497834  00 00 94 e5                                      ldr r0, [r4]
00497838  08 10 94 e5                                      ldr r1, [r4, #8]
0049783c  00 00 50 e3                                      cmp r0, #0
00497840  04 00 00 0a                                      beq #0x497858
00497844  01 10 60 e0                                      rsb r1, r0, r1
00497848  03 10 c1 e3                                      bic r1, r1, #3
0049784c  80 00 51 e3                                      cmp r1, #0x80
00497850  08 00 00 8a                                      bhi #0x497878
00497854  a9 c5 09 eb                                      bl #0x708f00
00497858  00 30 9d e5                                      ldr r3, [sp]
0049785c  00 70 84 e5                                      str r7, [r4]
00497860  04 60 84 e5                                      str r6, [r4, #4]
00497864  03 71 87 e0                                      add r7, r7, r3, lsl #2
00497868  08 70 84 e5                                      str r7, [r4, #8]
0049786c  cf ff ff ea                                      b #0x4977b0
00497870  03 11 e0 e3                                      mvn r1, #0xc0000000
00497874  e2 ff ff ea                                      b #0x497804
00497878  f0 e2 f9 eb                                      bl #0x310440
0049787c  f5 ff ff ea                                      b #0x497858
00497880  06 20 a0 e1                                      mov r2, r6
00497884  ab d9 f9 eb                                      bl #0x30df38
00497888  06 60 80 e0                                      add r6, r0, r6
0049788c  e6 ff ff ea                                      b #0x49782c
