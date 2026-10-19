; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007986e4, declared_size=444, range_size=444, mode=arm
; class-group: gameswf::standard_array_sorter
; alias: _ZN7gameswf21standard_array_sorterclERKNS_8as_valueES3_
; demangled: gameswf::standard_array_sorter::operator()(gameswf::as_value const&, gameswf::as_value const&)
; decoder-mode: arm
007986e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007986e8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007986ec  00 40 a0 e1                                      mov r4, r0
007986f0  01 50 a0 e1                                      mov r5, r1
007986f4  10 00 13 e3                                      tst r3, #0x10
007986f8  02 80 a0 e1                                      mov r8, r2
007986fc  41 00 00 1a                                      bne #0x798808
00798700  01 00 13 e3                                      tst r3, #1
00798704  25 00 00 0a                                      beq #0x7987a0
00798708  01 00 a0 e1                                      mov r0, r1
0079870c  dc 20 f2 eb                                      bl #0x420a84
00798710  00 60 a0 e1                                      mov r6, r0
00798714  08 00 a0 e1                                      mov r0, r8
00798718  d9 20 f2 eb                                      bl #0x420a84
0079871c  00 00 56 e1                                      cmp r6, r0
00798720  1e 00 00 0a                                      beq #0x7987a0
00798724  d0 30 d6 e1                                      ldrsb r3, [r6]
00798728  01 00 73 e3                                      cmn r3, #1
0079872c  d0 30 d0 e1                                      ldrsb r3, [r0]
00798730  0c 60 96 05                                      ldreq r6, [r6, #0xc]
00798734  01 60 86 12                                      addne r6, r6, #1
00798738  01 00 73 e3                                      cmn r3, #1
0079873c  01 10 80 12                                      addne r1, r0, #1
00798740  0c 10 90 05                                      ldreq r1, [r0, #0xc]
00798744  06 00 a0 e1                                      mov r0, r6
00798748  70 e5 fe eb                                      bl #0x751d10
0079874c  00 00 50 e3                                      cmp r0, #0
00798750  12 00 00 0a                                      beq #0x7987a0
00798754  05 00 a0 e1                                      mov r0, r5
00798758  c9 20 f2 eb                                      bl #0x420a84
0079875c  00 50 a0 e1                                      mov r5, r0
00798760  08 00 a0 e1                                      mov r0, r8
00798764  c6 20 f2 eb                                      bl #0x420a84
00798768  d0 30 d0 e1                                      ldrsb r3, [r0]
0079876c  01 00 73 e3                                      cmn r3, #1
00798770  d0 30 d5 e1                                      ldrsb r3, [r5]
00798774  01 10 80 12                                      addne r1, r0, #1
00798778  0c 10 90 05                                      ldreq r1, [r0, #0xc]
0079877c  01 00 73 e3                                      cmn r3, #1
00798780  01 00 85 12                                      addne r0, r5, #1
00798784  0c 00 95 05                                      ldreq r0, [r5, #0xc]
00798788  60 e5 fe eb                                      bl #0x751d10
0079878c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00798790  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00798794  02 00 13 e3                                      tst r3, #2
00798798  01 00 20 12                                      eorne r0, r0, #1
0079879c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007987a0  05 00 a0 e1                                      mov r0, r5
007987a4  b6 20 f2 eb                                      bl #0x420a84
007987a8  00 60 a0 e1                                      mov r6, r0
007987ac  08 00 a0 e1                                      mov r0, r8
007987b0  b3 20 f2 eb                                      bl #0x420a84
007987b4  00 00 56 e1                                      cmp r6, r0
007987b8  0b 00 00 0a                                      beq #0x7987ec
007987bc  d0 30 d6 e1                                      ldrsb r3, [r6]
007987c0  01 00 73 e3                                      cmn r3, #1
007987c4  d0 30 d0 e1                                      ldrsb r3, [r0]
007987c8  0c 60 96 05                                      ldreq r6, [r6, #0xc]
007987cc  01 60 86 12                                      addne r6, r6, #1
007987d0  01 00 73 e3                                      cmn r3, #1
007987d4  01 10 80 12                                      addne r1, r0, #1
007987d8  0c 10 90 05                                      ldreq r1, [r0, #0xc]
007987dc  06 00 a0 e1                                      mov r0, r6
007987e0  cd d6 ed eb                                      bl #0x30e31c
007987e4  00 00 50 e3                                      cmp r0, #0
007987e8  19 00 00 1a                                      bne #0x798854
007987ec  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007987f0  08 00 55 e1                                      cmp r5, r8
007987f4  00 00 a0 23                                      movhs r0, #0
007987f8  01 00 a0 33                                      movlo r0, #1
007987fc  02 00 13 e3                                      tst r3, #2
00798800  01 00 20 12                                      eorne r0, r0, #1
00798804  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00798808  01 00 a0 e1                                      mov r0, r1
0079880c  90 fc ff eb                                      bl #0x797a54
00798810  00 60 a0 e1                                      mov r6, r0
00798814  08 00 a0 e1                                      mov r0, r8
00798818  01 70 a0 e1                                      mov r7, r1
0079881c  8c fc ff eb                                      bl #0x797a54
00798820  00 20 a0 e1                                      mov r2, r0
00798824  01 30 a0 e1                                      mov r3, r1
00798828  06 00 a0 e1                                      mov r0, r6
0079882c  07 10 a0 e1                                      mov r1, r7
00798830  ca d7 ed eb                                      bl #0x30e760
00798834  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00798838  00 00 50 e3                                      cmp r0, #0
0079883c  00 00 a0 e3                                      mov r0, #0
00798840  01 00 a0 13                                      movne r0, #1
00798844  70 00 ef e6                                      uxtb r0, r0
00798848  02 00 13 e3                                      tst r3, #2
0079884c  01 00 20 12                                      eorne r0, r0, #1
00798850  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00798854  05 00 a0 e1                                      mov r0, r5
00798858  89 20 f2 eb                                      bl #0x420a84
0079885c  00 50 a0 e1                                      mov r5, r0
00798860  08 00 a0 e1                                      mov r0, r8
00798864  86 20 f2 eb                                      bl #0x420a84
00798868  d0 30 d0 e1                                      ldrsb r3, [r0]
0079886c  01 00 73 e3                                      cmn r3, #1
00798870  d0 30 d5 e1                                      ldrsb r3, [r5]
00798874  01 10 80 12                                      addne r1, r0, #1
00798878  0c 10 90 05                                      ldreq r1, [r0, #0xc]
0079887c  01 00 73 e3                                      cmn r3, #1
00798880  01 00 85 12                                      addne r0, r5, #1
00798884  0c 00 95 05                                      ldreq r0, [r5, #0xc]
00798888  a3 d6 ed eb                                      bl #0x30e31c
0079888c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00798890  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00798894  02 00 13 e3                                      tst r3, #2
00798898  01 00 20 12                                      eorne r0, r0, #1
0079889c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
