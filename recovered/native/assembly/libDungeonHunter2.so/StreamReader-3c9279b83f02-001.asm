; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00317454, declared_size=60, range_size=60, mode=arm
; class-group: StreamReader
; alias: _ZN12StreamReader12readStringExEP11IStreamBasePcy
; demangled: StreamReader::readStringEx(IStreamBase*, char*, unsigned long long)
; decoder-mode: arm
00317454  70 40 2d e9                                      push {r4, r5, r6, lr}
00317458  00 c0 90 e5                                      ldr ip, [r0]
0031745c  02 40 a0 e1                                      mov r4, r2
00317460  03 50 a0 e1                                      mov r5, r3
00317464  0f e0 a0 e1                                      mov lr, pc
00317468  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0031746c  04 00 50 e1                                      cmp r0, r4
00317470  00 00 a0 e3                                      mov r0, #0
00317474  01 00 00 0a                                      beq #0x317480
00317478  01 00 00 e2                                      and r0, r0, #1
0031747c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00317480  05 00 51 e1                                      cmp r1, r5
00317484  01 00 a0 03                                      moveq r0, #1
00317488  01 00 00 e2                                      and r0, r0, #1
0031748c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00317490, declared_size=184, range_size=184, mode=arm
; class-group: StreamReader
; alias: _ZN12StreamReader11writeStringEP11IStreamBasePKcy
; demangled: StreamReader::writeString(IStreamBase*, char const*, unsigned long long)
; decoder-mode: arm
00317490  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00317494  01 c0 a0 e3                                      mov ip, #1
00317498  08 d0 4d e2                                      sub sp, sp, #8
0031749c  00 00 5c e3                                      cmp ip, #0
003174a0  01 60 a0 e1                                      mov r6, r1
003174a4  02 50 a0 e1                                      mov r5, r2
003174a8  00 40 a0 e1                                      mov r4, r0
003174ac  03 70 a0 e1                                      mov r7, r3
003174b0  04 20 8d e5                                      str r2, [sp, #4]
003174b4  00 c0 8d e5                                      str ip, [sp]
003174b8  04 10 8d 12                                      addne r1, sp, #4
003174bc  11 00 00 1a                                      bne #0x317508
003174c0  04 10 8d e2                                      add r1, sp, #4
003174c4  01 30 81 e2                                      add r3, r1, #1
003174c8  02 20 81 e2                                      add r2, r1, #2
003174cc  01 c0 d2 e5                                      ldrb ip, [r2, #1]
003174d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
003174d4  02 00 53 e1                                      cmp r3, r2
003174d8  03 80 a0 e1                                      mov r8, r3
003174dc  00 00 2c e0                                      eor r0, ip, r0
003174e0  01 00 43 e5                                      strb r0, [r3, #-1]
003174e4  01 c0 d2 e5                                      ldrb ip, [r2, #1]
003174e8  0c 00 20 e0                                      eor r0, r0, ip
003174ec  01 00 c2 e5                                      strb r0, [r2, #1]
003174f0  01 c0 53 e5                                      ldrb ip, [r3, #-1]
003174f4  01 20 42 e2                                      sub r2, r2, #1
003174f8  0c 00 20 e0                                      eor r0, r0, ip
003174fc  01 00 43 e5                                      strb r0, [r3, #-1]
00317500  01 30 83 e2                                      add r3, r3, #1
00317504  f0 ff ff 3a                                      blo #0x3174cc
00317508  00 c0 94 e5                                      ldr ip, [r4]
0031750c  04 20 a0 e3                                      mov r2, #4
00317510  00 30 a0 e3                                      mov r3, #0
00317514  04 00 a0 e1                                      mov r0, r4
00317518  0f e0 a0 e1                                      mov lr, pc
0031751c  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00317520  04 00 a0 e1                                      mov r0, r4
00317524  06 10 a0 e1                                      mov r1, r6
00317528  05 20 a0 e1                                      mov r2, r5
0031752c  07 30 a0 e1                                      mov r3, r7
00317530  00 c0 94 e5                                      ldr ip, [r4]
00317534  0f e0 a0 e1                                      mov lr, pc
00317538  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0031753c  01 00 a0 e3                                      mov r0, #1
00317540  08 d0 8d e2                                      add sp, sp, #8
00317544  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00317548, declared_size=188, range_size=188, mode=arm
; class-group: StreamReader
; alias: _ZN12StreamReader11writeStringEP11IStreamBasePKwy
; demangled: StreamReader::writeString(IStreamBase*, wchar_t const*, unsigned long long)
; decoder-mode: arm
00317548  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031754c  01 c0 a0 e3                                      mov ip, #1
00317550  08 d0 4d e2                                      sub sp, sp, #8
00317554  00 00 5c e3                                      cmp ip, #0
00317558  01 70 a0 e1                                      mov r7, r1
0031755c  02 50 a0 e1                                      mov r5, r2
00317560  00 40 a0 e1                                      mov r4, r0
00317564  03 60 a0 e1                                      mov r6, r3
00317568  04 20 8d e5                                      str r2, [sp, #4]
0031756c  00 c0 8d e5                                      str ip, [sp]
00317570  04 10 8d 12                                      addne r1, sp, #4
00317574  11 00 00 1a                                      bne #0x3175c0
00317578  04 10 8d e2                                      add r1, sp, #4
0031757c  01 30 81 e2                                      add r3, r1, #1
00317580  02 20 81 e2                                      add r2, r1, #2
00317584  01 c0 d2 e5                                      ldrb ip, [r2, #1]
00317588  01 00 53 e5                                      ldrb r0, [r3, #-1]
0031758c  02 00 53 e1                                      cmp r3, r2
00317590  03 80 a0 e1                                      mov r8, r3
00317594  00 00 2c e0                                      eor r0, ip, r0
00317598  01 00 43 e5                                      strb r0, [r3, #-1]
0031759c  01 c0 d2 e5                                      ldrb ip, [r2, #1]
003175a0  0c 00 20 e0                                      eor r0, r0, ip
003175a4  01 00 c2 e5                                      strb r0, [r2, #1]
003175a8  01 c0 53 e5                                      ldrb ip, [r3, #-1]
003175ac  01 20 42 e2                                      sub r2, r2, #1
003175b0  0c 00 20 e0                                      eor r0, r0, ip
003175b4  01 00 43 e5                                      strb r0, [r3, #-1]
003175b8  01 30 83 e2                                      add r3, r3, #1
003175bc  f0 ff ff 3a                                      blo #0x317584
003175c0  00 c0 94 e5                                      ldr ip, [r4]
003175c4  04 20 a0 e3                                      mov r2, #4
003175c8  00 30 a0 e3                                      mov r3, #0
003175cc  04 00 a0 e1                                      mov r0, r4
003175d0  0f e0 a0 e1                                      mov lr, pc
003175d4  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003175d8  06 31 a0 e1                                      lsl r3, r6, #2
003175dc  25 3f 83 e1                                      orr r3, r3, r5, lsr #30
003175e0  04 00 a0 e1                                      mov r0, r4
003175e4  07 10 a0 e1                                      mov r1, r7
003175e8  00 c0 94 e5                                      ldr ip, [r4]
003175ec  05 21 a0 e1                                      lsl r2, r5, #2
003175f0  0f e0 a0 e1                                      mov lr, pc
003175f4  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003175f8  01 00 a0 e3                                      mov r0, #1
003175fc  08 d0 8d e2                                      add sp, sp, #8
00317600  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00317604, declared_size=24, range_size=24, mode=arm
; class-group: StreamReader
; alias: _ZN12StreamReader13writeStringExEP11IStreamBasePKcy
; demangled: StreamReader::writeStringEx(IStreamBase*, char const*, unsigned long long)
; decoder-mode: arm
00317604  10 40 2d e9                                      push {r4, lr}
00317608  00 c0 90 e5                                      ldr ip, [r0]
0031760c  0f e0 a0 e1                                      mov lr, pc
00317610  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00317614  01 00 a0 e3                                      mov r0, #1
00317618  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031763c, declared_size=248, range_size=248, mode=arm
; class-group: StreamReader
; alias: _ZN12StreamReader10readStringEP11IStreamBasePwy
; demangled: StreamReader::readString(IStreamBase*, wchar_t*, unsigned long long)
; decoder-mode: arm
0031763c  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
00317640  0c d0 4d e2                                      sub sp, sp, #0xc
00317644  03 90 a0 e1                                      mov sb, r3
00317648  01 60 a0 e1                                      mov r6, r1
0031764c  00 70 a0 e1                                      mov r7, r0
00317650  02 80 a0 e1                                      mov r8, r2
00317654  0d f1 ff eb                                      bl #0x313a90
00317658  01 30 a0 e3                                      mov r3, #1
0031765c  00 00 53 e3                                      cmp r3, #0
00317660  00 50 a0 e1                                      mov r5, r0
00317664  04 00 8d e5                                      str r0, [sp, #4]
00317668  00 30 8d e5                                      str r3, [sp]
0031766c  11 00 00 1a                                      bne #0x3176b8
00317670  04 30 8d e2                                      add r3, sp, #4
00317674  02 20 83 e2                                      add r2, r3, #2
00317678  01 30 83 e2                                      add r3, r3, #1
0031767c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00317680  01 10 53 e5                                      ldrb r1, [r3, #-1]
00317684  02 00 53 e1                                      cmp r3, r2
00317688  01 10 20 e0                                      eor r1, r0, r1
0031768c  01 10 43 e5                                      strb r1, [r3, #-1]
00317690  01 00 d2 e5                                      ldrb r0, [r2, #1]
00317694  00 10 21 e0                                      eor r1, r1, r0
00317698  01 10 c2 e5                                      strb r1, [r2, #1]
0031769c  01 00 53 e5                                      ldrb r0, [r3, #-1]
003176a0  01 20 42 e2                                      sub r2, r2, #1
003176a4  00 10 21 e0                                      eor r1, r1, r0
003176a8  01 10 43 e5                                      strb r1, [r3, #-1]
003176ac  01 30 83 e2                                      add r3, r3, #1
003176b0  f1 ff ff 3a                                      blo #0x31767c
003176b4  04 50 9d e5                                      ldr r5, [sp, #4]
003176b8  00 20 e0 e3                                      mvn r2, #0
003176bc  08 20 92 e0                                      adds r2, r2, r8
003176c0  00 30 e0 e3                                      mvn r3, #0
003176c4  09 30 a3 e0                                      adc r3, r3, sb
003176c8  00 10 a0 e3                                      mov r1, #0
003176cc  03 00 51 e1                                      cmp r1, r3
003176d0  05 40 a0 e1                                      mov r4, r5
003176d4  12 00 00 0a                                      beq #0x317724
003176d8  07 00 a0 e1                                      mov r0, r7
003176dc  00 c0 97 e5                                      ldr ip, [r7]
003176e0  06 10 a0 e1                                      mov r1, r6
003176e4  04 21 a0 e1                                      lsl r2, r4, #2
003176e8  24 3f a0 e1                                      lsr r3, r4, #0x1e
003176ec  0f e0 a0 e1                                      mov lr, pc
003176f0  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003176f4  00 00 a0 e3                                      mov r0, #0
003176f8  00 00 59 e3                                      cmp sb, #0
003176fc  04 01 86 e7                                      str r0, [r6, r4, lsl #2]
00317700  05 00 00 8a                                      bhi #0x31771c
00317704  02 00 00 0a                                      beq #0x317714
00317708  01 00 00 e2                                      and r0, r0, #1
0031770c  0c d0 8d e2                                      add sp, sp, #0xc
00317710  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
00317714  05 00 58 e1                                      cmp r8, r5
00317718  fa ff ff 9a                                      bls #0x317708
0031771c  01 00 a0 e3                                      mov r0, #1
00317720  f8 ff ff ea                                      b #0x317708
00317724  02 00 55 e1                                      cmp r5, r2
00317728  02 40 a0 81                                      movhi r4, r2
0031772c  05 40 a0 91                                      movls r4, r5
00317730  e8 ff ff ea                                      b #0x3176d8

; FUNCTION 0x00317734, declared_size=244, range_size=244, mode=arm
; class-group: StreamReader
; alias: _ZN12StreamReader10readStringEP11IStreamBasePcy
; demangled: StreamReader::readString(IStreamBase*, char*, unsigned long long)
; decoder-mode: arm
00317734  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
00317738  0c d0 4d e2                                      sub sp, sp, #0xc
0031773c  03 90 a0 e1                                      mov sb, r3
00317740  01 60 a0 e1                                      mov r6, r1
00317744  00 70 a0 e1                                      mov r7, r0
00317748  02 80 a0 e1                                      mov r8, r2
0031774c  cf f0 ff eb                                      bl #0x313a90
00317750  01 30 a0 e3                                      mov r3, #1
00317754  00 00 53 e3                                      cmp r3, #0
00317758  00 40 a0 e1                                      mov r4, r0
0031775c  04 00 8d e5                                      str r0, [sp, #4]
00317760  00 30 8d e5                                      str r3, [sp]
00317764  11 00 00 1a                                      bne #0x3177b0
00317768  04 30 8d e2                                      add r3, sp, #4
0031776c  02 20 83 e2                                      add r2, r3, #2
00317770  01 30 83 e2                                      add r3, r3, #1
00317774  01 00 d2 e5                                      ldrb r0, [r2, #1]
00317778  01 10 53 e5                                      ldrb r1, [r3, #-1]
0031777c  02 00 53 e1                                      cmp r3, r2
00317780  01 10 20 e0                                      eor r1, r0, r1
00317784  01 10 43 e5                                      strb r1, [r3, #-1]
00317788  01 00 d2 e5                                      ldrb r0, [r2, #1]
0031778c  00 10 21 e0                                      eor r1, r1, r0
00317790  01 10 c2 e5                                      strb r1, [r2, #1]
00317794  01 00 53 e5                                      ldrb r0, [r3, #-1]
00317798  01 20 42 e2                                      sub r2, r2, #1
0031779c  00 10 21 e0                                      eor r1, r1, r0
003177a0  01 10 43 e5                                      strb r1, [r3, #-1]
003177a4  01 30 83 e2                                      add r3, r3, #1
003177a8  f1 ff ff 3a                                      blo #0x317774
003177ac  04 40 9d e5                                      ldr r4, [sp, #4]
003177b0  00 00 e0 e3                                      mvn r0, #0
003177b4  08 00 90 e0                                      adds r0, r0, r8
003177b8  00 10 e0 e3                                      mvn r1, #0
003177bc  09 10 a1 e0                                      adc r1, r1, sb
003177c0  00 30 a0 e3                                      mov r3, #0
003177c4  01 00 53 e1                                      cmp r3, r1
003177c8  04 50 a0 e1                                      mov r5, r4
003177cc  11 00 00 0a                                      beq #0x317818
003177d0  07 00 a0 e1                                      mov r0, r7
003177d4  00 c0 97 e5                                      ldr ip, [r7]
003177d8  06 10 a0 e1                                      mov r1, r6
003177dc  05 20 a0 e1                                      mov r2, r5
003177e0  0f e0 a0 e1                                      mov lr, pc
003177e4  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003177e8  00 00 a0 e3                                      mov r0, #0
003177ec  00 00 59 e3                                      cmp sb, #0
003177f0  05 00 c6 e7                                      strb r0, [r6, r5]
003177f4  05 00 00 8a                                      bhi #0x317810
003177f8  02 00 00 0a                                      beq #0x317808
003177fc  01 00 00 e2                                      and r0, r0, #1
00317800  0c d0 8d e2                                      add sp, sp, #0xc
00317804  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
00317808  04 00 58 e1                                      cmp r8, r4
0031780c  fa ff ff 9a                                      bls #0x3177fc
00317810  01 00 a0 e3                                      mov r0, #1
00317814  f8 ff ff ea                                      b #0x3177fc
00317818  00 00 54 e1                                      cmp r4, r0
0031781c  00 50 a0 81                                      movhi r5, r0
00317820  04 50 a0 91                                      movls r5, r4
00317824  e9 ff ff ea                                      b #0x3177d0
