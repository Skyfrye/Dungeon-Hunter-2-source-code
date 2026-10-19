; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00763dec, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEiNS_27string_pointer_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::clear()
; decoder-mode: arm
00763dec  70 40 2d e9                                      push {r4, r5, r6, lr}
00763df0  00 40 a0 e1                                      mov r4, r0
00763df4  00 00 90 e5                                      ldr r0, [r0]
00763df8  00 00 50 e3                                      cmp r0, #0
00763dfc  19 00 00 0a                                      beq #0x763e68
00763e00  04 10 90 e5                                      ldr r1, [r0, #4]
00763e04  00 00 51 e3                                      cmp r1, #0
00763e08  11 00 00 ba                                      blt #0x763e54
00763e0c  00 20 a0 e3                                      mov r2, #0
00763e10  08 30 a0 e3                                      mov r3, #8
00763e14  01 60 e0 e3                                      mvn r6, #1
00763e18  02 50 a0 e1                                      mov r5, r2
00763e1c  03 e0 90 e7                                      ldr lr, [r0, r3]
00763e20  01 20 82 e2                                      add r2, r2, #1
00763e24  03 c0 80 e0                                      add ip, r0, r3
00763e28  02 00 7e e3                                      cmn lr, #2
00763e2c  04 00 00 0a                                      beq #0x763e44
00763e30  04 e0 9c e5                                      ldr lr, [ip, #4]
00763e34  01 00 7e e3                                      cmn lr, #1
00763e38  04 50 8c 15                                      strne r5, [ip, #4]
00763e3c  00 60 8c 15                                      strne r6, [ip]
00763e40  00 00 94 15                                      ldrne r0, [r4]
00763e44  02 00 51 e1                                      cmp r1, r2
00763e48  10 30 83 e2                                      add r3, r3, #0x10
00763e4c  f2 ff ff aa                                      bge #0x763e1c
00763e50  04 10 90 e5                                      ldr r1, [r0, #4]
00763e54  01 12 a0 e1                                      lsl r1, r1, #4
00763e58  18 10 81 e2                                      add r1, r1, #0x18
00763e5c  35 bb ff eb                                      bl #0x752b38
00763e60  00 30 a0 e3                                      mov r3, #0
00763e64  00 30 84 e5                                      str r3, [r4]
00763e68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00764cc0, declared_size=224, range_size=224, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZNK7gameswf4hashINS_15stringi_pointerEiNS_27string_pointer_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::find_index(gameswf::stringi_pointer const&) const
; decoder-mode: arm
00764cc0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00764cc4  00 30 90 e5                                      ldr r3, [r0]
00764cc8  00 50 a0 e1                                      mov r5, r0
00764ccc  01 60 a0 e1                                      mov r6, r1
00764cd0  00 00 53 e3                                      cmp r3, #0
00764cd4  02 00 00 1a                                      bne #0x764ce4
00764cd8  00 40 e0 e3                                      mvn r4, #0
00764cdc  04 00 a0 e1                                      mov r0, r4
00764ce0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00764ce4  00 00 91 e5                                      ldr r0, [r1]
00764ce8  36 fa ff eb                                      bl #0x7635c8
00764cec  00 30 95 e5                                      ldr r3, [r5]
00764cf0  01 00 70 e3                                      cmn r0, #1
00764cf4  00 70 a0 e1                                      mov r7, r0
00764cf8  04 20 93 e5                                      ldr r2, [r3, #4]
00764cfc  02 79 e0 03                                      mvneq r7, #0x8000
00764d00  02 40 07 e0                                      and r4, r7, r2
00764d04  84 80 a0 e1                                      lsl r8, r4, #1
00764d08  01 80 88 e2                                      add r8, r8, #1
00764d0c  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
00764d10  88 81 83 e0                                      add r8, r3, r8, lsl #3
00764d14  02 00 71 e3                                      cmn r1, #2
00764d18  ee ff ff 0a                                      beq #0x764cd8
00764d1c  04 30 98 e5                                      ldr r3, [r8, #4]
00764d20  01 00 73 e3                                      cmn r3, #1
00764d24  0b 00 00 0a                                      beq #0x764d58
00764d28  03 20 02 e0                                      and r2, r2, r3
00764d2c  04 00 52 e1                                      cmp r2, r4
00764d30  e8 ff ff 1a                                      bne #0x764cd8
00764d34  07 00 00 ea                                      b #0x764d58
00764d38  00 40 98 e5                                      ldr r4, [r8]
00764d3c  01 00 74 e3                                      cmn r4, #1
00764d40  e5 ff ff 0a                                      beq #0x764cdc
00764d44  00 80 95 e5                                      ldr r8, [r5]
00764d48  04 32 a0 e1                                      lsl r3, r4, #4
00764d4c  08 30 83 e2                                      add r3, r3, #8
00764d50  03 80 88 e0                                      add r8, r8, r3
00764d54  04 30 98 e5                                      ldr r3, [r8, #4]
00764d58  07 00 53 e1                                      cmp r3, r7
00764d5c  f5 ff ff 1a                                      bne #0x764d38
00764d60  08 20 98 e5                                      ldr r2, [r8, #8]
00764d64  00 30 96 e5                                      ldr r3, [r6]
00764d68  03 00 52 e1                                      cmp r2, r3
00764d6c  da ff ff 0a                                      beq #0x764cdc
00764d70  d0 10 d2 e1                                      ldrsb r1, [r2]
00764d74  01 00 71 e3                                      cmn r1, #1
00764d78  01 00 82 12                                      addne r0, r2, #1
00764d7c  0c 00 92 05                                      ldreq r0, [r2, #0xc]
00764d80  d0 20 d3 e1                                      ldrsb r2, [r3]
00764d84  01 00 72 e3                                      cmn r2, #1
00764d88  01 10 83 12                                      addne r1, r3, #1
00764d8c  0c 10 93 05                                      ldreq r1, [r3, #0xc]
00764d90  de b3 ff eb                                      bl #0x751d10
00764d94  00 00 50 e3                                      cmp r0, #0
00764d98  e6 ff ff 1a                                      bne #0x764d38
00764d9c  ce ff ff ea                                      b #0x764cdc

; FUNCTION 0x0076765c, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEiNS_27string_pointer_hash_functorIS1_EEE3addERKS1_RKi
; demangled: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::add(gameswf::stringi_pointer const&, int const&)
; decoder-mode: arm
0076765c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767660  00 60 a0 e1                                      mov r6, r0
00767664  01 40 a0 e1                                      mov r4, r1
00767668  02 50 a0 e1                                      mov r5, r2
0076766c  c2 00 00 eb                                      bl #0x76797c
00767670  00 30 96 e5                                      ldr r3, [r6]
00767674  00 20 93 e5                                      ldr r2, [r3]
00767678  01 20 82 e2                                      add r2, r2, #1
0076767c  00 20 83 e5                                      str r2, [r3]
00767680  00 c0 94 e5                                      ldr ip, [r4]
00767684  ff 34 e0 e3                                      mvn r3, #0xff000000
00767688  10 70 9c e5                                      ldr r7, [ip, #0x10]
0076768c  ff 24 c7 e3                                      bic r2, r7, #0xff000000
00767690  03 00 52 e1                                      cmp r2, r3
00767694  57 80 b7 17                                      sbfxne r8, r7, #0, #0x18
00767698  31 00 00 0a                                      beq #0x767764
0076769c  00 30 96 e5                                      ldr r3, [r6]
007676a0  01 00 78 e3                                      cmn r8, #1
007676a4  02 89 e0 03                                      mvneq r8, #0x8000
007676a8  04 60 93 e5                                      ldr r6, [r3, #4]
007676ac  06 c0 08 e0                                      and ip, r8, r6
007676b0  8c a0 a0 e1                                      lsl sl, ip, #1
007676b4  01 a0 8a e2                                      add sl, sl, #1
007676b8  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
007676bc  8a 71 83 e0                                      add r7, r3, sl, lsl #3
007676c0  02 00 79 e3                                      cmn sb, #2
007676c4  00 20 e0 03                                      mvneq r2, #0
007676c8  8a 21 83 07                                      streq r2, [r3, sl, lsl #3]
007676cc  40 00 00 0a                                      beq #0x7677d4
007676d0  04 b0 97 e5                                      ldr fp, [r7, #4]
007676d4  01 00 7b e3                                      cmn fp, #1
007676d8  0c 20 a0 11                                      movne r2, ip
007676dc  3c 00 00 0a                                      beq #0x7677d4
007676e0  01 20 82 e2                                      add r2, r2, #1
007676e4  06 20 02 e0                                      and r2, r2, r6
007676e8  82 10 a0 e1                                      lsl r1, r2, #1
007676ec  01 10 81 e2                                      add r1, r1, #1
007676f0  81 01 93 e7                                      ldr r0, [r3, r1, lsl #3]
007676f4  81 11 83 e0                                      add r1, r3, r1, lsl #3
007676f8  02 00 70 e3                                      cmn r0, #2
007676fc  f7 ff ff 1a                                      bne #0x7676e0
00767700  0b 60 06 e0                                      and r6, r6, fp
00767704  0c 00 56 e1                                      cmp r6, ip
00767708  37 00 00 0a                                      beq #0x7677ec
0076770c  86 60 a0 e1                                      lsl r6, r6, #1
00767710  01 b0 86 e2                                      add fp, r6, #1
00767714  8b 61 93 e7                                      ldr r6, [r3, fp, lsl #3]
00767718  8b b1 83 e0                                      add fp, r3, fp, lsl #3
0076771c  0c 00 56 e1                                      cmp r6, ip
00767720  f9 ff ff 1a                                      bne #0x76770c
00767724  00 90 81 e5                                      str sb, [r1]
00767728  04 00 97 e5                                      ldr r0, [r7, #4]
0076772c  04 00 81 e5                                      str r0, [r1, #4]
00767730  08 00 97 e5                                      ldr r0, [r7, #8]
00767734  08 00 81 e5                                      str r0, [r1, #8]
00767738  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0076773c  0c 00 81 e5                                      str r0, [r1, #0xc]
00767740  00 20 8b e5                                      str r2, [fp]
00767744  00 20 94 e5                                      ldr r2, [r4]
00767748  08 20 87 e5                                      str r2, [r7, #8]
0076774c  00 20 95 e5                                      ldr r2, [r5]
00767750  04 80 87 e5                                      str r8, [r7, #4]
00767754  0c 20 87 e5                                      str r2, [r7, #0xc]
00767758  00 20 e0 e3                                      mvn r2, #0
0076775c  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
00767760  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00767764  d0 30 dc e1                                      ldrsb r3, [ip]
00767768  01 00 73 e3                                      cmn r3, #1
0076776c  04 30 9c 05                                      ldreq r3, [ip, #4]
00767770  0c 80 9c 05                                      ldreq r8, [ip, #0xc]
00767774  01 30 43 12                                      subne r3, r3, #1
00767778  01 30 43 02                                      subeq r3, r3, #1
0076777c  01 80 8c 12                                      addne r8, ip, #1
00767780  00 00 53 e3                                      cmp r3, #0
00767784  05 85 01 d3                                      movwle r8, #0x1505
00767788  08 20 a0 d1                                      movle r2, r8
0076778c  0d 00 00 da                                      ble #0x7677c8
00767790  03 30 88 e0                                      add r3, r8, r3
00767794  05 25 01 e3                                      movw r2, #0x1505
00767798  01 10 53 e5                                      ldrb r1, [r3, #-1]
0076779c  01 30 43 e2                                      sub r3, r3, #1
007677a0  82 22 82 e0                                      add r2, r2, r2, lsl #5
007677a4  41 00 41 e2                                      sub r0, r1, #0x41
007677a8  70 00 ef e6                                      uxtb r0, r0
007677ac  19 00 50 e3                                      cmp r0, #0x19
007677b0  20 10 81 92                                      addls r1, r1, #0x20
007677b4  08 00 53 e1                                      cmp r3, r8
007677b8  02 20 21 e0                                      eor r2, r1, r2
007677bc  f5 ff ff 1a                                      bne #0x767798
007677c0  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
007677c4  02 80 a0 e1                                      mov r8, r2
007677c8  12 70 d7 e7                                      bfi r7, r2, #0, #0x18
007677cc  10 70 8c e5                                      str r7, [ip, #0x10]
007677d0  b1 ff ff ea                                      b #0x76769c
007677d4  04 80 87 e5                                      str r8, [r7, #4]
007677d8  00 30 94 e5                                      ldr r3, [r4]
007677dc  08 30 87 e5                                      str r3, [r7, #8]
007677e0  00 30 95 e5                                      ldr r3, [r5]
007677e4  0c 30 87 e5                                      str r3, [r7, #0xc]
007677e8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007677ec  00 90 81 e5                                      str sb, [r1]
007677f0  04 00 97 e5                                      ldr r0, [r7, #4]
007677f4  04 00 81 e5                                      str r0, [r1, #4]
007677f8  08 00 97 e5                                      ldr r0, [r7, #8]
007677fc  08 00 81 e5                                      str r0, [r1, #8]
00767800  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00767804  0c 00 81 e5                                      str r0, [r1, #0xc]
00767808  00 10 94 e5                                      ldr r1, [r4]
0076780c  08 10 87 e5                                      str r1, [r7, #8]
00767810  00 10 95 e5                                      ldr r1, [r5]
00767814  0c 10 87 e5                                      str r1, [r7, #0xc]
00767818  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
0076781c  04 80 87 e5                                      str r8, [r7, #4]
00767820  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00767824, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEiNS_27string_pointer_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::set_raw_capacity(int)
; decoder-mode: arm
00767824  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767828  00 00 51 e3                                      cmp r1, #0
0076782c  0c d0 4d e2                                      sub sp, sp, #0xc
00767830  00 80 a0 e1                                      mov r8, r0
00767834  4d 00 00 da                                      ble #0x767970
00767838  01 00 41 e2                                      sub r0, r1, #1
0076783c  48 9c ee eb                                      bl #0x30e964
00767840  9b 99 ee eb                                      bl #0x30deb4
00767844  18 12 07 e3                                      movw r1, #0x7218
00767848  31 1f 43 e3                                      movt r1, #0x3f31
0076784c  10 9d ee eb                                      bl #0x30ec94
00767850  fe 15 a0 e3                                      mov r1, #0x3f800000
00767854  d2 9c ee eb                                      bl #0x30eba4
00767858  1b 9b ee eb                                      bl #0x30e4cc
0076785c  01 40 a0 e3                                      mov r4, #1
00767860  14 40 a0 e1                                      lsl r4, r4, r0
00767864  00 30 98 e5                                      ldr r3, [r8]
00767868  04 00 54 e3                                      cmp r4, #4
0076786c  04 40 a0 b3                                      movlt r4, #4
00767870  00 00 53 e3                                      cmp r3, #0
00767874  03 00 00 0a                                      beq #0x767888
00767878  04 30 93 e5                                      ldr r3, [r3, #4]
0076787c  01 30 83 e2                                      add r3, r3, #1
00767880  04 00 53 e1                                      cmp r3, r4
00767884  3a 00 00 0a                                      beq #0x767974
00767888  00 50 a0 e3                                      mov r5, #0
0076788c  04 02 a0 e1                                      lsl r0, r4, #4
00767890  08 00 80 e2                                      add r0, r0, #8
00767894  05 10 a0 e1                                      mov r1, r5
00767898  04 50 8d e5                                      str r5, [sp, #4]
0076789c  be ac ff eb                                      bl #0x752b9c
007678a0  04 00 8d e5                                      str r0, [sp, #4]
007678a4  00 50 80 e5                                      str r5, [r0]
007678a8  04 30 9d e5                                      ldr r3, [sp, #4]
007678ac  01 20 44 e2                                      sub r2, r4, #1
007678b0  01 90 e0 e3                                      mvn sb, #1
007678b4  04 20 83 e5                                      str r2, [r3, #4]
007678b8  08 30 a0 e3                                      mov r3, #8
007678bc  04 20 9d e5                                      ldr r2, [sp, #4]
007678c0  01 50 85 e2                                      add r5, r5, #1
007678c4  05 00 54 e1                                      cmp r4, r5
007678c8  03 90 82 e7                                      str sb, [r2, r3]
007678cc  10 30 83 e2                                      add r3, r3, #0x10
007678d0  f9 ff ff ca                                      bgt #0x7678bc
007678d4  00 30 98 e5                                      ldr r3, [r8]
007678d8  00 00 53 e3                                      cmp r3, #0
007678dc  04 a0 8d 02                                      addeq sl, sp, #4
007678e0  1d 00 00 0a                                      beq #0x76795c
007678e4  04 70 93 e5                                      ldr r7, [r3, #4]
007678e8  00 00 57 e3                                      cmp r7, #0
007678ec  04 a0 8d b2                                      addlt sl, sp, #4
007678f0  15 00 00 ba                                      blt #0x76794c
007678f4  00 60 a0 e3                                      mov r6, #0
007678f8  08 40 a0 e3                                      mov r4, #8
007678fc  04 a0 8d e2                                      add sl, sp, #4
00767900  06 b0 a0 e1                                      mov fp, r6
00767904  04 20 93 e7                                      ldr r2, [r3, r4]
00767908  01 60 86 e2                                      add r6, r6, #1
0076790c  04 50 83 e0                                      add r5, r3, r4
00767910  02 00 72 e3                                      cmn r2, #2
00767914  08 00 00 0a                                      beq #0x76793c
00767918  04 20 95 e5                                      ldr r2, [r5, #4]
0076791c  0a 00 a0 e1                                      mov r0, sl
00767920  08 10 85 e2                                      add r1, r5, #8
00767924  01 00 72 e3                                      cmn r2, #1
00767928  03 00 00 0a                                      beq #0x76793c
0076792c  0c 20 85 e2                                      add r2, r5, #0xc
00767930  49 ff ff eb                                      bl #0x76765c
00767934  00 0a 85 e8                                      stm r5, {sb, fp}
00767938  00 30 98 e5                                      ldr r3, [r8]
0076793c  06 00 57 e1                                      cmp r7, r6
00767940  10 40 84 e2                                      add r4, r4, #0x10
00767944  ee ff ff aa                                      bge #0x767904
00767948  04 70 93 e5                                      ldr r7, [r3, #4]
0076794c  07 12 a0 e1                                      lsl r1, r7, #4
00767950  03 00 a0 e1                                      mov r0, r3
00767954  18 10 81 e2                                      add r1, r1, #0x18
00767958  76 ac ff eb                                      bl #0x752b38
0076795c  04 30 9d e5                                      ldr r3, [sp, #4]
00767960  0a 00 a0 e1                                      mov r0, sl
00767964  00 30 88 e5                                      str r3, [r8]
00767968  00 30 a0 e3                                      mov r3, #0
0076796c  04 30 8d e5                                      str r3, [sp, #4]
00767970  1d f1 ff eb                                      bl #0x763dec
00767974  0c d0 8d e2                                      add sp, sp, #0xc
00767978  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0076797c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEiNS_27string_pointer_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::check_expand()
; decoder-mode: arm
0076797c  00 30 90 e5                                      ldr r3, [r0]
00767980  00 00 53 e3                                      cmp r3, #0
00767984  07 00 00 0a                                      beq #0x7679a8
00767988  04 10 93 e5                                      ldr r1, [r3, #4]
0076798c  00 30 93 e5                                      ldr r3, [r3]
00767990  01 10 81 e2                                      add r1, r1, #1
00767994  81 10 a0 e1                                      lsl r1, r1, #1
00767998  83 30 83 e0                                      add r3, r3, r3, lsl #1
0076799c  01 00 53 e1                                      cmp r3, r1
007679a0  1e ff 2f d1                                      bxle lr
007679a4  9e ff ff ea                                      b #0x767824
007679a8  08 10 a0 e3                                      mov r1, #8
007679ac  9c ff ff ea                                      b #0x767824

; FUNCTION 0x0078360c, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEiNS_27string_pointer_hash_functorIS1_EEE3setERKS1_RKi
; demangled: gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::set(gameswf::stringi_pointer const&, int const&)
; decoder-mode: arm
0078360c  70 40 2d e9                                      push {r4, r5, r6, lr}
00783610  02 40 a0 e1                                      mov r4, r2
00783614  00 50 a0 e1                                      mov r5, r0
00783618  01 60 a0 e1                                      mov r6, r1
0078361c  a7 85 ff eb                                      bl #0x764cc0
00783620  00 00 50 e3                                      cmp r0, #0
00783624  04 00 00 ba                                      blt #0x78363c
00783628  00 20 95 e5                                      ldr r2, [r5]
0078362c  00 30 94 e5                                      ldr r3, [r4]
00783630  00 02 82 e0                                      add r0, r2, r0, lsl #4
00783634  14 30 80 e5                                      str r3, [r0, #0x14]
00783638  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078363c  05 00 a0 e1                                      mov r0, r5
00783640  06 10 a0 e1                                      mov r1, r6
00783644  04 20 a0 e1                                      mov r2, r4
00783648  70 40 bd e8                                      pop {r4, r5, r6, lr}
0078364c  02 90 ff ea                                      b #0x76765c
