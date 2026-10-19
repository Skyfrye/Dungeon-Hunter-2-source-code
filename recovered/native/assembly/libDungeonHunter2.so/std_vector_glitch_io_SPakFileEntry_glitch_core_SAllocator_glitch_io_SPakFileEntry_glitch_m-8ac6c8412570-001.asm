; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056f6b0, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::io::SPakFileEntry, glitch::core::SAllocator<glitch::io::SPakFileEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io13SPakFileEntryENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::io::SPakFileEntry, glitch::core::SAllocator<glitch::io::SPakFileEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0056f6b0  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f6b4  04 40 90 e5                                      ldr r4, [r0, #4]
0056f6b8  00 50 90 e5                                      ldr r5, [r0]
0056f6bc  00 60 a0 e1                                      mov r6, r0
0056f6c0  05 00 54 e1                                      cmp r4, r5
0056f6c4  04 00 00 0a                                      beq #0x56f6dc
0056f6c8  50 40 44 e2                                      sub r4, r4, #0x50
0056f6cc  04 00 a0 e1                                      mov r0, r4
0056f6d0  de ff ff eb                                      bl #0x56f650
0056f6d4  04 00 55 e1                                      cmp r5, r4
0056f6d8  fa ff ff 1a                                      bne #0x56f6c8
0056f6dc  00 00 96 e5                                      ldr r0, [r6]
0056f6e0  00 00 50 e3                                      cmp r0, #0
0056f6e4  00 00 00 0a                                      beq #0x56f6ec
0056f6e8  58 83 f6 eb                                      bl #0x310450
0056f6ec  06 00 a0 e1                                      mov r0, r6
0056f6f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056f7f0, declared_size=312, range_size=312, mode=arm
; class-group: std::vector<glitch::io::SPakFileEntry, glitch::core::SAllocator<glitch::io::SPakFileEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io13SPakFileEntryENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS2_
; demangled: std::vector<glitch::io::SPakFileEntry, glitch::core::SAllocator<glitch::io::SPakFileEntry, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::io::SPakFileEntry const&)
; decoder-mode: arm
0056f7f0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056f7f4  00 60 a0 e1                                      mov r6, r0
0056f7f8  08 40 96 e5                                      ldr r4, [r6, #8]
0056f7fc  04 00 90 e5                                      ldr r0, [r0, #4]
0056f800  01 a0 a0 e1                                      mov sl, r1
0056f804  04 00 50 e1                                      cmp r0, r4
0056f808  04 00 00 0a                                      beq #0x56f820
0056f80c  3b ff ff eb                                      bl #0x56f500
0056f810  04 30 96 e5                                      ldr r3, [r6, #4]
0056f814  50 30 83 e2                                      add r3, r3, #0x50
0056f818  04 30 86 e5                                      str r3, [r6, #4]
0056f81c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056f820  00 20 96 e5                                      ldr r2, [r6]
0056f824  33 33 03 e3                                      movw r3, #0x3333
0056f828  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0056f82c  04 20 62 e0                                      rsb r2, r2, r4
0056f830  42 22 a0 e1                                      asr r2, r2, #4
0056f834  82 10 82 e0                                      add r1, r2, r2, lsl #1
0056f838  01 12 81 e0                                      add r1, r1, r1, lsl #4
0056f83c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0056f840  01 18 81 e0                                      add r1, r1, r1, lsl #16
0056f844  01 21 82 e0                                      add r2, r2, r1, lsl #2
0056f848  01 00 52 e3                                      cmp r2, #1
0056f84c  02 10 82 20                                      addhs r1, r2, r2
0056f850  01 10 82 32                                      addlo r1, r2, #1
0056f854  03 00 51 e1                                      cmp r1, r3
0056f858  2d 00 00 9a                                      bls #0x56f914
0056f85c  0f 90 e0 e3                                      mvn sb, #0xf
0056f860  09 00 a0 e1                                      mov r0, sb
0056f864  00 10 a0 e3                                      mov r1, #0
0056f868  3e 83 f6 eb                                      bl #0x310568
0056f86c  00 80 96 e5                                      ldr r8, [r6]
0056f870  00 70 a0 e1                                      mov r7, r0
0056f874  04 40 68 e0                                      rsb r4, r8, r4
0056f878  44 42 a0 e1                                      asr r4, r4, #4
0056f87c  84 b0 84 e0                                      add fp, r4, r4, lsl #1
0056f880  0b b2 8b e0                                      add fp, fp, fp, lsl #4
0056f884  0b b4 8b e0                                      add fp, fp, fp, lsl #8
0056f888  0b b8 8b e0                                      add fp, fp, fp, lsl #16
0056f88c  0b b1 84 e0                                      add fp, r4, fp, lsl #2
0056f890  00 00 5b e3                                      cmp fp, #0
0056f894  00 b0 a0 d1                                      movle fp, r0
0056f898  09 00 00 da                                      ble #0x56f8c4
0056f89c  0b 50 a0 e1                                      mov r5, fp
0056f8a0  00 40 a0 e3                                      mov r4, #0
0056f8a4  04 00 87 e0                                      add r0, r7, r4
0056f8a8  04 10 88 e0                                      add r1, r8, r4
0056f8ac  13 ff ff eb                                      bl #0x56f500
0056f8b0  01 50 55 e2                                      subs r5, r5, #1
0056f8b4  50 40 84 e2                                      add r4, r4, #0x50
0056f8b8  f9 ff ff 1a                                      bne #0x56f8a4
0056f8bc  50 30 a0 e3                                      mov r3, #0x50
0056f8c0  93 7b 2b e0                                      mla fp, r3, fp, r7
0056f8c4  0b 00 a0 e1                                      mov r0, fp
0056f8c8  0a 10 a0 e1                                      mov r1, sl
0056f8cc  0b ff ff eb                                      bl #0x56f500
0056f8d0  04 40 96 e5                                      ldr r4, [r6, #4]
0056f8d4  00 50 96 e5                                      ldr r5, [r6]
0056f8d8  50 b0 8b e2                                      add fp, fp, #0x50
0056f8dc  05 00 54 e1                                      cmp r4, r5
0056f8e0  05 00 00 0a                                      beq #0x56f8fc
0056f8e4  50 40 44 e2                                      sub r4, r4, #0x50
0056f8e8  04 00 a0 e1                                      mov r0, r4
0056f8ec  57 ff ff eb                                      bl #0x56f650
0056f8f0  04 00 55 e1                                      cmp r5, r4
0056f8f4  fa ff ff 1a                                      bne #0x56f8e4
0056f8f8  00 50 96 e5                                      ldr r5, [r6]
0056f8fc  05 00 a0 e1                                      mov r0, r5
0056f900  09 90 87 e0                                      add sb, r7, sb
0056f904  d1 82 f6 eb                                      bl #0x310450
0056f908  08 90 86 e5                                      str sb, [r6, #8]
0056f90c  80 08 86 e8                                      stm r6, {r7, fp}
0056f910  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056f914  01 00 52 e1                                      cmp r2, r1
0056f918  cf ff ff 8a                                      bhi #0x56f85c
0056f91c  50 90 a0 e3                                      mov sb, #0x50
0056f920  99 01 09 e0                                      mul sb, sb, r1
0056f924  cd ff ff ea                                      b #0x56f860
