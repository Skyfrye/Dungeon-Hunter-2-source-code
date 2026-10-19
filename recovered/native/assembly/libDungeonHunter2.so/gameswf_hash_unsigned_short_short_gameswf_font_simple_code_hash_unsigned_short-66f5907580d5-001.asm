; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ce4e4, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >
; alias: _ZN7gameswf4hashItsNS_4font16simple_code_hashItEEE5clearEv
; demangled: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >::clear()
; decoder-mode: arm
007ce4e4  70 40 2d e9                                      push {r4, r5, r6, lr}
007ce4e8  00 40 a0 e1                                      mov r4, r0
007ce4ec  00 00 90 e5                                      ldr r0, [r0]
007ce4f0  00 00 50 e3                                      cmp r0, #0
007ce4f4  1a 00 00 0a                                      beq #0x7ce564
007ce4f8  04 50 90 e5                                      ldr r5, [r0, #4]
007ce4fc  00 00 55 e3                                      cmp r5, #0
007ce500  11 00 00 ba                                      blt #0x7ce54c
007ce504  00 20 a0 e3                                      mov r2, #0
007ce508  08 30 a0 e3                                      mov r3, #8
007ce50c  01 60 e0 e3                                      mvn r6, #1
007ce510  02 10 a0 e1                                      mov r1, r2
007ce514  03 e0 90 e7                                      ldr lr, [r0, r3]
007ce518  01 20 82 e2                                      add r2, r2, #1
007ce51c  03 c0 80 e0                                      add ip, r0, r3
007ce520  02 00 7e e3                                      cmn lr, #2
007ce524  04 00 00 0a                                      beq #0x7ce53c
007ce528  04 e0 9c e5                                      ldr lr, [ip, #4]
007ce52c  01 00 7e e3                                      cmn lr, #1
007ce530  04 10 8c 15                                      strne r1, [ip, #4]
007ce534  00 60 8c 15                                      strne r6, [ip]
007ce538  00 00 94 15                                      ldrne r0, [r4]
007ce53c  02 00 55 e1                                      cmp r5, r2
007ce540  0c 30 83 e2                                      add r3, r3, #0xc
007ce544  f2 ff ff aa                                      bge #0x7ce514
007ce548  04 50 90 e5                                      ldr r5, [r0, #4]
007ce54c  0c 10 a0 e3                                      mov r1, #0xc
007ce550  95 11 21 e0                                      mla r1, r5, r1, r1
007ce554  08 10 81 e2                                      add r1, r1, #8
007ce558  76 11 fe eb                                      bl #0x752b38
007ce55c  00 30 a0 e3                                      mov r3, #0
007ce560  00 30 84 e5                                      str r3, [r4]
007ce564  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007ce694, declared_size=352, range_size=352, mode=arm
; class-group: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >
; alias: _ZN7gameswf4hashItsNS_4font16simple_code_hashItEEE16set_raw_capacityEi
; demangled: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >::set_raw_capacity(int)
; decoder-mode: arm
007ce694  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ce698  00 00 51 e3                                      cmp r1, #0
007ce69c  0c d0 4d e2                                      sub sp, sp, #0xc
007ce6a0  00 80 a0 e1                                      mov r8, r0
007ce6a4  4f 00 00 da                                      ble #0x7ce7e8
007ce6a8  01 00 41 e2                                      sub r0, r1, #1
007ce6ac  ac 00 ed eb                                      bl #0x30e964
007ce6b0  ff fd ec eb                                      bl #0x30deb4
007ce6b4  18 12 07 e3                                      movw r1, #0x7218
007ce6b8  31 1f 43 e3                                      movt r1, #0x3f31
007ce6bc  74 01 ed eb                                      bl #0x30ec94
007ce6c0  fe 15 a0 e3                                      mov r1, #0x3f800000
007ce6c4  36 01 ed eb                                      bl #0x30eba4
007ce6c8  7f ff ec eb                                      bl #0x30e4cc
007ce6cc  01 40 a0 e3                                      mov r4, #1
007ce6d0  14 40 a0 e1                                      lsl r4, r4, r0
007ce6d4  00 30 98 e5                                      ldr r3, [r8]
007ce6d8  04 00 54 e3                                      cmp r4, #4
007ce6dc  04 40 a0 b3                                      movlt r4, #4
007ce6e0  00 00 53 e3                                      cmp r3, #0
007ce6e4  03 00 00 0a                                      beq #0x7ce6f8
007ce6e8  04 30 93 e5                                      ldr r3, [r3, #4]
007ce6ec  01 30 83 e2                                      add r3, r3, #1
007ce6f0  04 00 53 e1                                      cmp r3, r4
007ce6f4  3c 00 00 0a                                      beq #0x7ce7ec
007ce6f8  0c 00 a0 e3                                      mov r0, #0xc
007ce6fc  90 04 00 e0                                      mul r0, r0, r4
007ce700  00 50 a0 e3                                      mov r5, #0
007ce704  08 00 80 e2                                      add r0, r0, #8
007ce708  05 10 a0 e1                                      mov r1, r5
007ce70c  04 50 8d e5                                      str r5, [sp, #4]
007ce710  21 11 fe eb                                      bl #0x752b9c
007ce714  04 00 8d e5                                      str r0, [sp, #4]
007ce718  00 50 80 e5                                      str r5, [r0]
007ce71c  04 30 9d e5                                      ldr r3, [sp, #4]
007ce720  01 20 44 e2                                      sub r2, r4, #1
007ce724  01 90 e0 e3                                      mvn sb, #1
007ce728  04 20 83 e5                                      str r2, [r3, #4]
007ce72c  08 30 a0 e3                                      mov r3, #8
007ce730  04 20 9d e5                                      ldr r2, [sp, #4]
007ce734  01 50 85 e2                                      add r5, r5, #1
007ce738  05 00 54 e1                                      cmp r4, r5
007ce73c  03 90 82 e7                                      str sb, [r2, r3]
007ce740  0c 30 83 e2                                      add r3, r3, #0xc
007ce744  f9 ff ff ca                                      bgt #0x7ce730
007ce748  00 30 98 e5                                      ldr r3, [r8]
007ce74c  00 00 53 e3                                      cmp r3, #0
007ce750  04 a0 8d 02                                      addeq sl, sp, #4
007ce754  1e 00 00 0a                                      beq #0x7ce7d4
007ce758  04 70 93 e5                                      ldr r7, [r3, #4]
007ce75c  00 00 57 e3                                      cmp r7, #0
007ce760  04 a0 8d b2                                      addlt sl, sp, #4
007ce764  15 00 00 ba                                      blt #0x7ce7c0
007ce768  00 60 a0 e3                                      mov r6, #0
007ce76c  08 40 a0 e3                                      mov r4, #8
007ce770  04 a0 8d e2                                      add sl, sp, #4
007ce774  06 b0 a0 e1                                      mov fp, r6
007ce778  04 20 93 e7                                      ldr r2, [r3, r4]
007ce77c  01 60 86 e2                                      add r6, r6, #1
007ce780  04 50 83 e0                                      add r5, r3, r4
007ce784  02 00 72 e3                                      cmn r2, #2
007ce788  08 00 00 0a                                      beq #0x7ce7b0
007ce78c  04 20 95 e5                                      ldr r2, [r5, #4]
007ce790  0a 00 a0 e1                                      mov r0, sl
007ce794  08 10 85 e2                                      add r1, r5, #8
007ce798  01 00 72 e3                                      cmn r2, #1
007ce79c  03 00 00 0a                                      beq #0x7ce7b0
007ce7a0  0a 20 85 e2                                      add r2, r5, #0xa
007ce7a4  1f 00 00 eb                                      bl #0x7ce828
007ce7a8  00 0a 85 e8                                      stm r5, {sb, fp}
007ce7ac  00 30 98 e5                                      ldr r3, [r8]
007ce7b0  06 00 57 e1                                      cmp r7, r6
007ce7b4  0c 40 84 e2                                      add r4, r4, #0xc
007ce7b8  ee ff ff aa                                      bge #0x7ce778
007ce7bc  04 70 93 e5                                      ldr r7, [r3, #4]
007ce7c0  0c 20 a0 e3                                      mov r2, #0xc
007ce7c4  97 22 27 e0                                      mla r7, r7, r2, r2
007ce7c8  03 00 a0 e1                                      mov r0, r3
007ce7cc  08 10 87 e2                                      add r1, r7, #8
007ce7d0  d8 10 fe eb                                      bl #0x752b38
007ce7d4  04 30 9d e5                                      ldr r3, [sp, #4]
007ce7d8  0a 00 a0 e1                                      mov r0, sl
007ce7dc  00 30 88 e5                                      str r3, [r8]
007ce7e0  00 30 a0 e3                                      mov r3, #0
007ce7e4  04 30 8d e5                                      str r3, [sp, #4]
007ce7e8  3d ff ff eb                                      bl #0x7ce4e4
007ce7ec  0c d0 8d e2                                      add sp, sp, #0xc
007ce7f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007ce7f4, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >
; alias: _ZN7gameswf4hashItsNS_4font16simple_code_hashItEEE12check_expandEv
; demangled: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >::check_expand()
; decoder-mode: arm
007ce7f4  00 30 90 e5                                      ldr r3, [r0]
007ce7f8  00 00 53 e3                                      cmp r3, #0
007ce7fc  07 00 00 0a                                      beq #0x7ce820
007ce800  04 10 93 e5                                      ldr r1, [r3, #4]
007ce804  00 30 93 e5                                      ldr r3, [r3]
007ce808  01 10 81 e2                                      add r1, r1, #1
007ce80c  81 10 a0 e1                                      lsl r1, r1, #1
007ce810  83 30 83 e0                                      add r3, r3, r3, lsl #1
007ce814  01 00 53 e1                                      cmp r3, r1
007ce818  1e ff 2f d1                                      bxle lr
007ce81c  9c ff ff ea                                      b #0x7ce694
007ce820  08 10 a0 e3                                      mov r1, #8
007ce824  9a ff ff ea                                      b #0x7ce694

; FUNCTION 0x007ce828, declared_size=368, range_size=368, mode=arm
; class-group: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >
; alias: _ZN7gameswf4hashItsNS_4font16simple_code_hashItEEE3addERKtRKs
; demangled: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >::add(unsigned short const&, short const&)
; decoder-mode: arm
007ce828  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ce82c  00 50 a0 e1                                      mov r5, r0
007ce830  0c d0 4d e2                                      sub sp, sp, #0xc
007ce834  01 40 a0 e1                                      mov r4, r1
007ce838  04 20 8d e5                                      str r2, [sp, #4]
007ce83c  ec ff ff eb                                      bl #0x7ce7f4
007ce840  00 30 95 e5                                      ldr r3, [r5]
007ce844  0c 70 a0 e3                                      mov r7, #0xc
007ce848  00 20 93 e5                                      ldr r2, [r3]
007ce84c  01 20 82 e2                                      add r2, r2, #1
007ce850  00 20 83 e5                                      str r2, [r3]
007ce854  00 30 95 e5                                      ldr r3, [r5]
007ce858  b0 a0 d4 e1                                      ldrh sl, [r4]
007ce85c  04 50 93 e5                                      ldr r5, [r3, #4]
007ce860  05 c0 0a e0                                      and ip, sl, r5
007ce864  97 0c 08 e0                                      mul r8, r7, ip
007ce868  08 80 88 e2                                      add r8, r8, #8
007ce86c  08 90 93 e7                                      ldr sb, [r3, r8]
007ce870  08 60 83 e0                                      add r6, r3, r8
007ce874  02 00 79 e3                                      cmn sb, #2
007ce878  36 00 00 0a                                      beq #0x7ce958
007ce87c  04 b0 96 e5                                      ldr fp, [r6, #4]
007ce880  01 00 7b e3                                      cmn fp, #1
007ce884  0c 20 a0 11                                      movne r2, ip
007ce888  3b 00 00 0a                                      beq #0x7ce97c
007ce88c  01 20 82 e2                                      add r2, r2, #1
007ce890  05 20 02 e0                                      and r2, r2, r5
007ce894  97 02 01 e0                                      mul r1, r7, r2
007ce898  08 10 81 e2                                      add r1, r1, #8
007ce89c  01 00 93 e7                                      ldr r0, [r3, r1]
007ce8a0  01 10 83 e0                                      add r1, r3, r1
007ce8a4  02 00 70 e3                                      cmn r0, #2
007ce8a8  f7 ff ff 1a                                      bne #0x7ce88c
007ce8ac  0b 50 05 e0                                      and r5, r5, fp
007ce8b0  0c 00 55 e1                                      cmp r5, ip
007ce8b4  0c 00 a0 13                                      movne r0, #0xc
007ce8b8  17 00 00 0a                                      beq #0x7ce91c
007ce8bc  90 05 05 e0                                      mul r5, r0, r5
007ce8c0  08 b0 85 e2                                      add fp, r5, #8
007ce8c4  0b 50 93 e7                                      ldr r5, [r3, fp]
007ce8c8  0b b0 83 e0                                      add fp, r3, fp
007ce8cc  0c 00 55 e1                                      cmp r5, ip
007ce8d0  f9 ff ff 1a                                      bne #0x7ce8bc
007ce8d4  00 90 81 e5                                      str sb, [r1]
007ce8d8  04 00 96 e5                                      ldr r0, [r6, #4]
007ce8dc  04 00 81 e5                                      str r0, [r1, #4]
007ce8e0  b8 00 d6 e1                                      ldrh r0, [r6, #8]
007ce8e4  b8 00 c1 e1                                      strh r0, [r1, #8]
007ce8e8  ba 00 d6 e1                                      ldrh r0, [r6, #0xa]
007ce8ec  ba 00 c1 e1                                      strh r0, [r1, #0xa]
007ce8f0  00 20 8b e5                                      str r2, [fp]
007ce8f4  b0 40 d4 e1                                      ldrh r4, [r4]
007ce8f8  00 20 e0 e3                                      mvn r2, #0
007ce8fc  b8 40 c6 e1                                      strh r4, [r6, #8]
007ce900  04 10 9d e5                                      ldr r1, [sp, #4]
007ce904  b0 10 d1 e1                                      ldrh r1, [r1]
007ce908  04 a0 86 e5                                      str sl, [r6, #4]
007ce90c  ba 10 c6 e1                                      strh r1, [r6, #0xa]
007ce910  08 20 83 e7                                      str r2, [r3, r8]
007ce914  0c d0 8d e2                                      add sp, sp, #0xc
007ce918  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ce91c  00 90 81 e5                                      str sb, [r1]
007ce920  04 00 96 e5                                      ldr r0, [r6, #4]
007ce924  04 00 81 e5                                      str r0, [r1, #4]
007ce928  b8 00 d6 e1                                      ldrh r0, [r6, #8]
007ce92c  b8 00 c1 e1                                      strh r0, [r1, #8]
007ce930  ba 00 d6 e1                                      ldrh r0, [r6, #0xa]
007ce934  ba 00 c1 e1                                      strh r0, [r1, #0xa]
007ce938  b0 40 d4 e1                                      ldrh r4, [r4]
007ce93c  b8 40 c6 e1                                      strh r4, [r6, #8]
007ce940  04 10 9d e5                                      ldr r1, [sp, #4]
007ce944  b0 10 d1 e1                                      ldrh r1, [r1]
007ce948  ba 10 c6 e1                                      strh r1, [r6, #0xa]
007ce94c  08 20 83 e7                                      str r2, [r3, r8]
007ce950  04 a0 86 e5                                      str sl, [r6, #4]
007ce954  ee ff ff ea                                      b #0x7ce914
007ce958  00 20 e0 e3                                      mvn r2, #0
007ce95c  08 20 83 e7                                      str r2, [r3, r8]
007ce960  04 a0 86 e5                                      str sl, [r6, #4]
007ce964  b0 40 d4 e1                                      ldrh r4, [r4]
007ce968  b8 40 c6 e1                                      strh r4, [r6, #8]
007ce96c  04 00 9d e5                                      ldr r0, [sp, #4]
007ce970  b0 00 d0 e1                                      ldrh r0, [r0]
007ce974  ba 00 c6 e1                                      strh r0, [r6, #0xa]
007ce978  e5 ff ff ea                                      b #0x7ce914
007ce97c  04 a0 86 e5                                      str sl, [r6, #4]
007ce980  b0 40 d4 e1                                      ldrh r4, [r4]
007ce984  b8 40 c6 e1                                      strh r4, [r6, #8]
007ce988  04 10 9d e5                                      ldr r1, [sp, #4]
007ce98c  b0 10 d1 e1                                      ldrh r1, [r1]
007ce990  ba 10 c6 e1                                      strh r1, [r6, #0xa]
007ce994  de ff ff ea                                      b #0x7ce914

; FUNCTION 0x007cf634, declared_size=376, range_size=376, mode=arm
; class-group: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >
; alias: _ZN7gameswf4hashItsNS_4font16simple_code_hashItEEEixERKt
; demangled: gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >::operator[](unsigned short const&)
; decoder-mode: arm
007cf634  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007cf638  00 30 90 e5                                      ldr r3, [r0]
007cf63c  0c d0 4d e2                                      sub sp, sp, #0xc
007cf640  00 40 a0 e1                                      mov r4, r0
007cf644  00 00 53 e3                                      cmp r3, #0
007cf648  01 50 a0 e1                                      mov r5, r1
007cf64c  0d 00 00 1a                                      bne #0x7cf688
007cf650  00 30 a0 e3                                      mov r3, #0
007cf654  08 20 8d e2                                      add r2, sp, #8
007cf658  b2 30 62 e1                                      strh r3, [r2, #-2]!
007cf65c  04 00 a0 e1                                      mov r0, r4
007cf660  05 10 a0 e1                                      mov r1, r5
007cf664  6f fc ff eb                                      bl #0x7ce828
007cf668  00 30 94 e5                                      ldr r3, [r4]
007cf66c  00 00 53 e3                                      cmp r3, #0
007cf670  28 00 00 1a                                      bne #0x7cf718
007cf674  03 00 e0 e3                                      mvn r0, #3
007cf678  00 00 83 e0                                      add r0, r3, r0
007cf67c  0a 00 80 e2                                      add r0, r0, #0xa
007cf680  0c d0 8d e2                                      add sp, sp, #0xc
007cf684  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007cf688  b0 10 d1 e1                                      ldrh r1, [r1]
007cf68c  04 c0 93 e5                                      ldr ip, [r3, #4]
007cf690  0c 20 a0 e3                                      mov r2, #0xc
007cf694  0c 00 01 e0                                      and r0, r1, ip
007cf698  92 00 02 e0                                      mul r2, r2, r0
007cf69c  08 20 82 e2                                      add r2, r2, #8
007cf6a0  02 60 93 e7                                      ldr r6, [r3, r2]
007cf6a4  02 20 83 e0                                      add r2, r3, r2
007cf6a8  02 00 76 e3                                      cmn r6, #2
007cf6ac  e7 ff ff 0a                                      beq #0x7cf650
007cf6b0  04 60 92 e5                                      ldr r6, [r2, #4]
007cf6b4  01 00 76 e3                                      cmn r6, #1
007cf6b8  02 00 00 0a                                      beq #0x7cf6c8
007cf6bc  06 c0 0c e0                                      and ip, ip, r6
007cf6c0  0c 00 50 e1                                      cmp r0, ip
007cf6c4  e1 ff ff 1a                                      bne #0x7cf650
007cf6c8  0c 70 a0 e3                                      mov r7, #0xc
007cf6cc  06 00 00 ea                                      b #0x7cf6ec
007cf6d0  00 00 92 e5                                      ldr r0, [r2]
007cf6d4  01 00 70 e3                                      cmn r0, #1
007cf6d8  dc ff ff 0a                                      beq #0x7cf650
007cf6dc  97 00 02 e0                                      mul r2, r7, r0
007cf6e0  08 20 82 e2                                      add r2, r2, #8
007cf6e4  02 20 83 e0                                      add r2, r3, r2
007cf6e8  04 60 92 e5                                      ldr r6, [r2, #4]
007cf6ec  06 00 51 e1                                      cmp r1, r6
007cf6f0  f6 ff ff 1a                                      bne #0x7cf6d0
007cf6f4  b8 c0 d2 e1                                      ldrh ip, [r2, #8]
007cf6f8  01 00 5c e1                                      cmp ip, r1
007cf6fc  f3 ff ff 1a                                      bne #0x7cf6d0
007cf700  00 00 50 e3                                      cmp r0, #0
007cf704  d1 ff ff ba                                      blt #0x7cf650
007cf708  0c 20 a0 e3                                      mov r2, #0xc
007cf70c  92 30 23 e0                                      mla r3, r2, r0, r3
007cf710  12 00 83 e2                                      add r0, r3, #0x12
007cf714  d9 ff ff ea                                      b #0x7cf680
007cf718  b0 10 d5 e1                                      ldrh r1, [r5]
007cf71c  04 40 93 e5                                      ldr r4, [r3, #4]
007cf720  0c 20 a0 e3                                      mov r2, #0xc
007cf724  04 00 01 e0                                      and r0, r1, r4
007cf728  92 00 02 e0                                      mul r2, r2, r0
007cf72c  08 20 82 e2                                      add r2, r2, #8
007cf730  02 c0 93 e7                                      ldr ip, [r3, r2]
007cf734  02 20 83 e0                                      add r2, r3, r2
007cf738  02 00 7c e3                                      cmn ip, #2
007cf73c  cc ff ff 0a                                      beq #0x7cf674
007cf740  04 c0 92 e5                                      ldr ip, [r2, #4]
007cf744  01 00 7c e3                                      cmn ip, #1
007cf748  02 00 00 0a                                      beq #0x7cf758
007cf74c  0c 40 04 e0                                      and r4, r4, ip
007cf750  04 00 50 e1                                      cmp r0, r4
007cf754  c6 ff ff 1a                                      bne #0x7cf674
007cf758  0c 50 a0 e3                                      mov r5, #0xc
007cf75c  03 00 00 ea                                      b #0x7cf770
007cf760  95 00 02 e0                                      mul r2, r5, r0
007cf764  08 20 82 e2                                      add r2, r2, #8
007cf768  02 20 83 e0                                      add r2, r3, r2
007cf76c  04 c0 92 e5                                      ldr ip, [r2, #4]
007cf770  01 00 5c e1                                      cmp ip, r1
007cf774  02 00 00 1a                                      bne #0x7cf784
007cf778  b8 40 d2 e1                                      ldrh r4, [r2, #8]
007cf77c  0c 00 54 e1                                      cmp r4, ip
007cf780  03 00 00 0a                                      beq #0x7cf794
007cf784  00 00 92 e5                                      ldr r0, [r2]
007cf788  01 00 70 e3                                      cmn r0, #1
007cf78c  f3 ff ff 1a                                      bne #0x7cf760
007cf790  b7 ff ff ea                                      b #0x7cf674
007cf794  00 00 50 e3                                      cmp r0, #0
007cf798  0c 20 a0 b3                                      movlt r2, #0xc
007cf79c  92 00 00 b0                                      mullt r0, r2, r0
007cf7a0  08 00 80 b2                                      addlt r0, r0, #8
007cf7a4  d7 ff ff aa                                      bge #0x7cf708
007cf7a8  b2 ff ff ea                                      b #0x7cf678
