; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075a03c, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >
; alias: _ZN7gameswf4hashINS_14string_pointerEPNS_16permanent_stringENS_27string_pointer_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::clear()
; decoder-mode: arm
0075a03c  70 40 2d e9                                      push {r4, r5, r6, lr}
0075a040  00 40 a0 e1                                      mov r4, r0
0075a044  00 00 90 e5                                      ldr r0, [r0]
0075a048  00 00 50 e3                                      cmp r0, #0
0075a04c  19 00 00 0a                                      beq #0x75a0b8
0075a050  04 10 90 e5                                      ldr r1, [r0, #4]
0075a054  00 00 51 e3                                      cmp r1, #0
0075a058  11 00 00 ba                                      blt #0x75a0a4
0075a05c  00 20 a0 e3                                      mov r2, #0
0075a060  08 30 a0 e3                                      mov r3, #8
0075a064  01 60 e0 e3                                      mvn r6, #1
0075a068  02 50 a0 e1                                      mov r5, r2
0075a06c  03 e0 90 e7                                      ldr lr, [r0, r3]
0075a070  01 20 82 e2                                      add r2, r2, #1
0075a074  03 c0 80 e0                                      add ip, r0, r3
0075a078  02 00 7e e3                                      cmn lr, #2
0075a07c  04 00 00 0a                                      beq #0x75a094
0075a080  04 e0 9c e5                                      ldr lr, [ip, #4]
0075a084  01 00 7e e3                                      cmn lr, #1
0075a088  04 50 8c 15                                      strne r5, [ip, #4]
0075a08c  00 60 8c 15                                      strne r6, [ip]
0075a090  00 00 94 15                                      ldrne r0, [r4]
0075a094  02 00 51 e1                                      cmp r1, r2
0075a098  10 30 83 e2                                      add r3, r3, #0x10
0075a09c  f2 ff ff aa                                      bge #0x75a06c
0075a0a0  04 10 90 e5                                      ldr r1, [r0, #4]
0075a0a4  01 12 a0 e1                                      lsl r1, r1, #4
0075a0a8  18 10 81 e2                                      add r1, r1, #0x18
0075a0ac  a1 e2 ff eb                                      bl #0x752b38
0075a0b0  00 30 a0 e3                                      mov r3, #0
0075a0b4  00 30 84 e5                                      str r3, [r4]
0075a0b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0075a918, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >
; alias: _ZNK7gameswf4hashINS_14string_pointerEPNS_16permanent_stringENS_27string_pointer_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::find_index(gameswf::string_pointer const&) const
; decoder-mode: arm
0075a918  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0075a91c  00 40 90 e5                                      ldr r4, [r0]
0075a920  01 60 a0 e1                                      mov r6, r1
0075a924  00 00 54 e3                                      cmp r4, #0
0075a928  02 00 00 1a                                      bne #0x75a938
0075a92c  00 50 e0 e3                                      mvn r5, #0
0075a930  05 00 a0 e1                                      mov r0, r5
0075a934  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0075a938  00 50 91 e5                                      ldr r5, [r1]
0075a93c  ff 34 e0 e3                                      mvn r3, #0xff000000
0075a940  10 80 95 e5                                      ldr r8, [r5, #0x10]
0075a944  ff 24 c8 e3                                      bic r2, r8, #0xff000000
0075a948  03 00 52 e1                                      cmp r2, r3
0075a94c  58 70 b7 17                                      sbfxne r7, r8, #0, #0x18
0075a950  29 00 00 0a                                      beq #0x75a9fc
0075a954  04 50 94 e5                                      ldr r5, [r4, #4]
0075a958  01 00 77 e3                                      cmn r7, #1
0075a95c  02 79 e0 03                                      mvneq r7, #0x8000
0075a960  05 30 07 e0                                      and r3, r7, r5
0075a964  83 80 a0 e1                                      lsl r8, r3, #1
0075a968  01 80 88 e2                                      add r8, r8, #1
0075a96c  88 21 94 e7                                      ldr r2, [r4, r8, lsl #3]
0075a970  88 81 84 e0                                      add r8, r4, r8, lsl #3
0075a974  02 00 72 e3                                      cmn r2, #2
0075a978  eb ff ff 0a                                      beq #0x75a92c
0075a97c  04 20 98 e5                                      ldr r2, [r8, #4]
0075a980  01 00 72 e3                                      cmn r2, #1
0075a984  03 50 a0 01                                      moveq r5, r3
0075a988  09 00 00 0a                                      beq #0x75a9b4
0075a98c  02 50 05 e0                                      and r5, r5, r2
0075a990  03 00 55 e1                                      cmp r5, r3
0075a994  e4 ff ff 1a                                      bne #0x75a92c
0075a998  05 00 00 ea                                      b #0x75a9b4
0075a99c  00 50 98 e5                                      ldr r5, [r8]
0075a9a0  01 00 75 e3                                      cmn r5, #1
0075a9a4  e1 ff ff 0a                                      beq #0x75a930
0075a9a8  05 82 84 e0                                      add r8, r4, r5, lsl #4
0075a9ac  08 80 88 e2                                      add r8, r8, #8
0075a9b0  04 20 98 e5                                      ldr r2, [r8, #4]
0075a9b4  02 00 57 e1                                      cmp r7, r2
0075a9b8  f7 ff ff 1a                                      bne #0x75a99c
0075a9bc  08 20 98 e5                                      ldr r2, [r8, #8]
0075a9c0  00 30 96 e5                                      ldr r3, [r6]
0075a9c4  03 00 52 e1                                      cmp r2, r3
0075a9c8  d8 ff ff 0a                                      beq #0x75a930
0075a9cc  d0 10 d2 e1                                      ldrsb r1, [r2]
0075a9d0  01 00 71 e3                                      cmn r1, #1
0075a9d4  01 00 82 12                                      addne r0, r2, #1
0075a9d8  0c 00 92 05                                      ldreq r0, [r2, #0xc]
0075a9dc  d0 20 d3 e1                                      ldrsb r2, [r3]
0075a9e0  01 00 72 e3                                      cmn r2, #1
0075a9e4  01 10 83 12                                      addne r1, r3, #1
0075a9e8  0c 10 93 05                                      ldreq r1, [r3, #0xc]
0075a9ec  4a ce ee eb                                      bl #0x30e31c
0075a9f0  00 00 50 e3                                      cmp r0, #0
0075a9f4  e8 ff ff 1a                                      bne #0x75a99c
0075a9f8  cc ff ff ea                                      b #0x75a930
0075a9fc  d0 30 d5 e1                                      ldrsb r3, [r5]
0075aa00  01 00 73 e3                                      cmn r3, #1
0075aa04  04 30 95 05                                      ldreq r3, [r5, #4]
0075aa08  01 30 43 12                                      subne r3, r3, #1
0075aa0c  01 40 85 12                                      addne r4, r5, #1
0075aa10  01 30 43 02                                      subeq r3, r3, #1
0075aa14  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0075aa18  00 00 53 e3                                      cmp r3, #0
0075aa1c  05 75 01 d3                                      movwle r7, #0x1505
0075aa20  07 20 a0 d1                                      movle r2, r7
0075aa24  0d 00 00 da                                      ble #0x75aa60
0075aa28  03 30 84 e0                                      add r3, r4, r3
0075aa2c  05 25 01 e3                                      movw r2, #0x1505
0075aa30  01 10 53 e5                                      ldrb r1, [r3, #-1]
0075aa34  01 30 43 e2                                      sub r3, r3, #1
0075aa38  82 22 82 e0                                      add r2, r2, r2, lsl #5
0075aa3c  41 c0 41 e2                                      sub ip, r1, #0x41
0075aa40  7c c0 ef e6                                      uxtb ip, ip
0075aa44  19 00 5c e3                                      cmp ip, #0x19
0075aa48  20 10 81 92                                      addls r1, r1, #0x20
0075aa4c  04 00 53 e1                                      cmp r3, r4
0075aa50  02 20 21 e0                                      eor r2, r1, r2
0075aa54  f5 ff ff 1a                                      bne #0x75aa30
0075aa58  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0075aa5c  02 70 a0 e1                                      mov r7, r2
0075aa60  12 80 d7 e7                                      bfi r8, r2, #0, #0x18
0075aa64  10 80 85 e5                                      str r8, [r5, #0x10]
0075aa68  00 40 90 e5                                      ldr r4, [r0]
0075aa6c  b8 ff ff ea                                      b #0x75a954

; FUNCTION 0x0075bf20, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >
; alias: _ZN7gameswf4hashINS_14string_pointerEPNS_16permanent_stringENS_27string_pointer_hash_functorIS1_EEE3addERKS1_RKS3_
; demangled: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::add(gameswf::string_pointer const&, gameswf::permanent_string* const&)
; decoder-mode: arm
0075bf20  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075bf24  00 60 a0 e1                                      mov r6, r0
0075bf28  01 40 a0 e1                                      mov r4, r1
0075bf2c  02 50 a0 e1                                      mov r5, r2
0075bf30  c2 00 00 eb                                      bl #0x75c240
0075bf34  00 30 96 e5                                      ldr r3, [r6]
0075bf38  00 20 93 e5                                      ldr r2, [r3]
0075bf3c  01 20 82 e2                                      add r2, r2, #1
0075bf40  00 20 83 e5                                      str r2, [r3]
0075bf44  00 c0 94 e5                                      ldr ip, [r4]
0075bf48  ff 34 e0 e3                                      mvn r3, #0xff000000
0075bf4c  10 70 9c e5                                      ldr r7, [ip, #0x10]
0075bf50  ff 24 c7 e3                                      bic r2, r7, #0xff000000
0075bf54  03 00 52 e1                                      cmp r2, r3
0075bf58  57 80 b7 17                                      sbfxne r8, r7, #0, #0x18
0075bf5c  31 00 00 0a                                      beq #0x75c028
0075bf60  00 30 96 e5                                      ldr r3, [r6]
0075bf64  01 00 78 e3                                      cmn r8, #1
0075bf68  02 89 e0 03                                      mvneq r8, #0x8000
0075bf6c  04 60 93 e5                                      ldr r6, [r3, #4]
0075bf70  06 c0 08 e0                                      and ip, r8, r6
0075bf74  8c a0 a0 e1                                      lsl sl, ip, #1
0075bf78  01 a0 8a e2                                      add sl, sl, #1
0075bf7c  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
0075bf80  8a 71 83 e0                                      add r7, r3, sl, lsl #3
0075bf84  02 00 79 e3                                      cmn sb, #2
0075bf88  00 20 e0 03                                      mvneq r2, #0
0075bf8c  8a 21 83 07                                      streq r2, [r3, sl, lsl #3]
0075bf90  40 00 00 0a                                      beq #0x75c098
0075bf94  04 b0 97 e5                                      ldr fp, [r7, #4]
0075bf98  01 00 7b e3                                      cmn fp, #1
0075bf9c  0c 20 a0 11                                      movne r2, ip
0075bfa0  3c 00 00 0a                                      beq #0x75c098
0075bfa4  01 20 82 e2                                      add r2, r2, #1
0075bfa8  06 20 02 e0                                      and r2, r2, r6
0075bfac  82 10 a0 e1                                      lsl r1, r2, #1
0075bfb0  01 10 81 e2                                      add r1, r1, #1
0075bfb4  81 01 93 e7                                      ldr r0, [r3, r1, lsl #3]
0075bfb8  81 11 83 e0                                      add r1, r3, r1, lsl #3
0075bfbc  02 00 70 e3                                      cmn r0, #2
0075bfc0  f7 ff ff 1a                                      bne #0x75bfa4
0075bfc4  0b 60 06 e0                                      and r6, r6, fp
0075bfc8  0c 00 56 e1                                      cmp r6, ip
0075bfcc  37 00 00 0a                                      beq #0x75c0b0
0075bfd0  86 60 a0 e1                                      lsl r6, r6, #1
0075bfd4  01 b0 86 e2                                      add fp, r6, #1
0075bfd8  8b 61 93 e7                                      ldr r6, [r3, fp, lsl #3]
0075bfdc  8b b1 83 e0                                      add fp, r3, fp, lsl #3
0075bfe0  0c 00 56 e1                                      cmp r6, ip
0075bfe4  f9 ff ff 1a                                      bne #0x75bfd0
0075bfe8  00 90 81 e5                                      str sb, [r1]
0075bfec  04 00 97 e5                                      ldr r0, [r7, #4]
0075bff0  04 00 81 e5                                      str r0, [r1, #4]
0075bff4  08 00 97 e5                                      ldr r0, [r7, #8]
0075bff8  08 00 81 e5                                      str r0, [r1, #8]
0075bffc  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0075c000  0c 00 81 e5                                      str r0, [r1, #0xc]
0075c004  00 20 8b e5                                      str r2, [fp]
0075c008  00 20 94 e5                                      ldr r2, [r4]
0075c00c  08 20 87 e5                                      str r2, [r7, #8]
0075c010  00 20 95 e5                                      ldr r2, [r5]
0075c014  04 80 87 e5                                      str r8, [r7, #4]
0075c018  0c 20 87 e5                                      str r2, [r7, #0xc]
0075c01c  00 20 e0 e3                                      mvn r2, #0
0075c020  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
0075c024  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075c028  d0 30 dc e1                                      ldrsb r3, [ip]
0075c02c  01 00 73 e3                                      cmn r3, #1
0075c030  04 30 9c 05                                      ldreq r3, [ip, #4]
0075c034  0c 80 9c 05                                      ldreq r8, [ip, #0xc]
0075c038  01 30 43 12                                      subne r3, r3, #1
0075c03c  01 30 43 02                                      subeq r3, r3, #1
0075c040  01 80 8c 12                                      addne r8, ip, #1
0075c044  00 00 53 e3                                      cmp r3, #0
0075c048  05 85 01 d3                                      movwle r8, #0x1505
0075c04c  08 20 a0 d1                                      movle r2, r8
0075c050  0d 00 00 da                                      ble #0x75c08c
0075c054  03 30 88 e0                                      add r3, r8, r3
0075c058  05 25 01 e3                                      movw r2, #0x1505
0075c05c  01 10 53 e5                                      ldrb r1, [r3, #-1]
0075c060  01 30 43 e2                                      sub r3, r3, #1
0075c064  82 22 82 e0                                      add r2, r2, r2, lsl #5
0075c068  41 00 41 e2                                      sub r0, r1, #0x41
0075c06c  70 00 ef e6                                      uxtb r0, r0
0075c070  19 00 50 e3                                      cmp r0, #0x19
0075c074  20 10 81 92                                      addls r1, r1, #0x20
0075c078  08 00 53 e1                                      cmp r3, r8
0075c07c  02 20 21 e0                                      eor r2, r1, r2
0075c080  f5 ff ff 1a                                      bne #0x75c05c
0075c084  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0075c088  02 80 a0 e1                                      mov r8, r2
0075c08c  12 70 d7 e7                                      bfi r7, r2, #0, #0x18
0075c090  10 70 8c e5                                      str r7, [ip, #0x10]
0075c094  b1 ff ff ea                                      b #0x75bf60
0075c098  04 80 87 e5                                      str r8, [r7, #4]
0075c09c  00 30 94 e5                                      ldr r3, [r4]
0075c0a0  08 30 87 e5                                      str r3, [r7, #8]
0075c0a4  00 30 95 e5                                      ldr r3, [r5]
0075c0a8  0c 30 87 e5                                      str r3, [r7, #0xc]
0075c0ac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075c0b0  00 90 81 e5                                      str sb, [r1]
0075c0b4  04 00 97 e5                                      ldr r0, [r7, #4]
0075c0b8  04 00 81 e5                                      str r0, [r1, #4]
0075c0bc  08 00 97 e5                                      ldr r0, [r7, #8]
0075c0c0  08 00 81 e5                                      str r0, [r1, #8]
0075c0c4  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0075c0c8  0c 00 81 e5                                      str r0, [r1, #0xc]
0075c0cc  00 10 94 e5                                      ldr r1, [r4]
0075c0d0  08 10 87 e5                                      str r1, [r7, #8]
0075c0d4  00 10 95 e5                                      ldr r1, [r5]
0075c0d8  0c 10 87 e5                                      str r1, [r7, #0xc]
0075c0dc  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
0075c0e0  04 80 87 e5                                      str r8, [r7, #4]
0075c0e4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0075c0e8, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >
; alias: _ZN7gameswf4hashINS_14string_pointerEPNS_16permanent_stringENS_27string_pointer_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::set_raw_capacity(int)
; decoder-mode: arm
0075c0e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075c0ec  00 00 51 e3                                      cmp r1, #0
0075c0f0  0c d0 4d e2                                      sub sp, sp, #0xc
0075c0f4  00 80 a0 e1                                      mov r8, r0
0075c0f8  4d 00 00 da                                      ble #0x75c234
0075c0fc  01 00 41 e2                                      sub r0, r1, #1
0075c100  17 ca ee eb                                      bl #0x30e964
0075c104  6a c7 ee eb                                      bl #0x30deb4
0075c108  18 12 07 e3                                      movw r1, #0x7218
0075c10c  31 1f 43 e3                                      movt r1, #0x3f31
0075c110  df ca ee eb                                      bl #0x30ec94
0075c114  fe 15 a0 e3                                      mov r1, #0x3f800000
0075c118  a1 ca ee eb                                      bl #0x30eba4
0075c11c  ea c8 ee eb                                      bl #0x30e4cc
0075c120  01 40 a0 e3                                      mov r4, #1
0075c124  14 40 a0 e1                                      lsl r4, r4, r0
0075c128  00 30 98 e5                                      ldr r3, [r8]
0075c12c  04 00 54 e3                                      cmp r4, #4
0075c130  04 40 a0 b3                                      movlt r4, #4
0075c134  00 00 53 e3                                      cmp r3, #0
0075c138  03 00 00 0a                                      beq #0x75c14c
0075c13c  04 30 93 e5                                      ldr r3, [r3, #4]
0075c140  01 30 83 e2                                      add r3, r3, #1
0075c144  04 00 53 e1                                      cmp r3, r4
0075c148  3a 00 00 0a                                      beq #0x75c238
0075c14c  00 50 a0 e3                                      mov r5, #0
0075c150  04 02 a0 e1                                      lsl r0, r4, #4
0075c154  08 00 80 e2                                      add r0, r0, #8
0075c158  05 10 a0 e1                                      mov r1, r5
0075c15c  04 50 8d e5                                      str r5, [sp, #4]
0075c160  8d da ff eb                                      bl #0x752b9c
0075c164  04 00 8d e5                                      str r0, [sp, #4]
0075c168  00 50 80 e5                                      str r5, [r0]
0075c16c  04 30 9d e5                                      ldr r3, [sp, #4]
0075c170  01 20 44 e2                                      sub r2, r4, #1
0075c174  01 90 e0 e3                                      mvn sb, #1
0075c178  04 20 83 e5                                      str r2, [r3, #4]
0075c17c  08 30 a0 e3                                      mov r3, #8
0075c180  04 20 9d e5                                      ldr r2, [sp, #4]
0075c184  01 50 85 e2                                      add r5, r5, #1
0075c188  05 00 54 e1                                      cmp r4, r5
0075c18c  03 90 82 e7                                      str sb, [r2, r3]
0075c190  10 30 83 e2                                      add r3, r3, #0x10
0075c194  f9 ff ff ca                                      bgt #0x75c180
0075c198  00 30 98 e5                                      ldr r3, [r8]
0075c19c  00 00 53 e3                                      cmp r3, #0
0075c1a0  04 a0 8d 02                                      addeq sl, sp, #4
0075c1a4  1d 00 00 0a                                      beq #0x75c220
0075c1a8  04 70 93 e5                                      ldr r7, [r3, #4]
0075c1ac  00 00 57 e3                                      cmp r7, #0
0075c1b0  04 a0 8d b2                                      addlt sl, sp, #4
0075c1b4  15 00 00 ba                                      blt #0x75c210
0075c1b8  00 60 a0 e3                                      mov r6, #0
0075c1bc  08 40 a0 e3                                      mov r4, #8
0075c1c0  04 a0 8d e2                                      add sl, sp, #4
0075c1c4  06 b0 a0 e1                                      mov fp, r6
0075c1c8  04 20 93 e7                                      ldr r2, [r3, r4]
0075c1cc  01 60 86 e2                                      add r6, r6, #1
0075c1d0  04 50 83 e0                                      add r5, r3, r4
0075c1d4  02 00 72 e3                                      cmn r2, #2
0075c1d8  08 00 00 0a                                      beq #0x75c200
0075c1dc  04 20 95 e5                                      ldr r2, [r5, #4]
0075c1e0  0a 00 a0 e1                                      mov r0, sl
0075c1e4  08 10 85 e2                                      add r1, r5, #8
0075c1e8  01 00 72 e3                                      cmn r2, #1
0075c1ec  03 00 00 0a                                      beq #0x75c200
0075c1f0  0c 20 85 e2                                      add r2, r5, #0xc
0075c1f4  49 ff ff eb                                      bl #0x75bf20
0075c1f8  00 0a 85 e8                                      stm r5, {sb, fp}
0075c1fc  00 30 98 e5                                      ldr r3, [r8]
0075c200  06 00 57 e1                                      cmp r7, r6
0075c204  10 40 84 e2                                      add r4, r4, #0x10
0075c208  ee ff ff aa                                      bge #0x75c1c8
0075c20c  04 70 93 e5                                      ldr r7, [r3, #4]
0075c210  07 12 a0 e1                                      lsl r1, r7, #4
0075c214  03 00 a0 e1                                      mov r0, r3
0075c218  18 10 81 e2                                      add r1, r1, #0x18
0075c21c  45 da ff eb                                      bl #0x752b38
0075c220  04 30 9d e5                                      ldr r3, [sp, #4]
0075c224  0a 00 a0 e1                                      mov r0, sl
0075c228  00 30 88 e5                                      str r3, [r8]
0075c22c  00 30 a0 e3                                      mov r3, #0
0075c230  04 30 8d e5                                      str r3, [sp, #4]
0075c234  80 f7 ff eb                                      bl #0x75a03c
0075c238  0c d0 8d e2                                      add sp, sp, #0xc
0075c23c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0075c240, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >
; alias: _ZN7gameswf4hashINS_14string_pointerEPNS_16permanent_stringENS_27string_pointer_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::check_expand()
; decoder-mode: arm
0075c240  00 30 90 e5                                      ldr r3, [r0]
0075c244  00 00 53 e3                                      cmp r3, #0
0075c248  07 00 00 0a                                      beq #0x75c26c
0075c24c  04 10 93 e5                                      ldr r1, [r3, #4]
0075c250  00 30 93 e5                                      ldr r3, [r3]
0075c254  01 10 81 e2                                      add r1, r1, #1
0075c258  81 10 a0 e1                                      lsl r1, r1, #1
0075c25c  83 30 83 e0                                      add r3, r3, r3, lsl #1
0075c260  01 00 53 e1                                      cmp r3, r1
0075c264  1e ff 2f d1                                      bxle lr
0075c268  9e ff ff ea                                      b #0x75c0e8
0075c26c  08 10 a0 e3                                      mov r1, #8
0075c270  9c ff ff ea                                      b #0x75c0e8

; FUNCTION 0x0075c274, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >
; alias: _ZN7gameswf4hashINS_14string_pointerEPNS_16permanent_stringENS_27string_pointer_hash_functorIS1_EEEixERKS1_
; demangled: gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::operator[](gameswf::string_pointer const&)
; decoder-mode: arm
0075c274  30 40 2d e9                                      push {r4, r5, lr}
0075c278  0c d0 4d e2                                      sub sp, sp, #0xc
0075c27c  00 40 a0 e1                                      mov r4, r0
0075c280  01 50 a0 e1                                      mov r5, r1
0075c284  a3 f9 ff eb                                      bl #0x75a918
0075c288  00 00 50 e3                                      cmp r0, #0
0075c28c  04 00 00 ba                                      blt #0x75c2a4
0075c290  00 30 94 e5                                      ldr r3, [r4]
0075c294  00 02 83 e0                                      add r0, r3, r0, lsl #4
0075c298  14 00 80 e2                                      add r0, r0, #0x14
0075c29c  0c d0 8d e2                                      add sp, sp, #0xc
0075c2a0  30 80 bd e8                                      pop {r4, r5, pc}
0075c2a4  08 20 8d e2                                      add r2, sp, #8
0075c2a8  00 30 a0 e3                                      mov r3, #0
0075c2ac  04 30 22 e5                                      str r3, [r2, #-4]!
0075c2b0  04 00 a0 e1                                      mov r0, r4
0075c2b4  05 10 a0 e1                                      mov r1, r5
0075c2b8  18 ff ff eb                                      bl #0x75bf20
0075c2bc  04 00 a0 e1                                      mov r0, r4
0075c2c0  05 10 a0 e1                                      mov r1, r5
0075c2c4  93 f9 ff eb                                      bl #0x75a918
0075c2c8  f0 ff ff ea                                      b #0x75c290
