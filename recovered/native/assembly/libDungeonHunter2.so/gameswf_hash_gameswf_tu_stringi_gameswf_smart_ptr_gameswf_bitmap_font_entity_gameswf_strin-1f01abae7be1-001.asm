; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007aa840, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::clear()
; decoder-mode: arm
007aa840  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007aa844  00 80 a0 e1                                      mov r8, r0
007aa848  00 00 90 e5                                      ldr r0, [r0]
007aa84c  00 00 50 e3                                      cmp r0, #0
007aa850  25 00 00 0a                                      beq #0x7aa8ec
007aa854  04 70 90 e5                                      ldr r7, [r0, #4]
007aa858  00 00 57 e3                                      cmp r7, #0
007aa85c  1d 00 00 ba                                      blt #0x7aa8d8
007aa860  00 60 a0 e3                                      mov r6, #0
007aa864  08 40 a0 e3                                      mov r4, #8
007aa868  01 90 e0 e3                                      mvn sb, #1
007aa86c  06 a0 a0 e1                                      mov sl, r6
007aa870  08 00 00 ea                                      b #0x7aa898
007aa874  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007aa878  00 00 50 e3                                      cmp r0, #0
007aa87c  00 00 00 0a                                      beq #0x7aa884
007aa880  6e be fe eb                                      bl #0x75a240
007aa884  00 06 85 e8                                      stm r5, {sb, sl}
007aa888  00 00 98 e5                                      ldr r0, [r8]
007aa88c  06 00 57 e1                                      cmp r7, r6
007aa890  20 40 84 e2                                      add r4, r4, #0x20
007aa894  0e 00 00 ba                                      blt #0x7aa8d4
007aa898  04 30 90 e7                                      ldr r3, [r0, r4]
007aa89c  01 60 86 e2                                      add r6, r6, #1
007aa8a0  04 50 80 e0                                      add r5, r0, r4
007aa8a4  02 00 73 e3                                      cmn r3, #2
007aa8a8  f7 ff ff 0a                                      beq #0x7aa88c
007aa8ac  04 30 95 e5                                      ldr r3, [r5, #4]
007aa8b0  01 00 73 e3                                      cmn r3, #1
007aa8b4  f4 ff ff 0a                                      beq #0x7aa88c
007aa8b8  d8 30 d5 e1                                      ldrsb r3, [r5, #8]
007aa8bc  01 00 73 e3                                      cmn r3, #1
007aa8c0  eb ff ff 1a                                      bne #0x7aa874
007aa8c4  14 00 95 e5                                      ldr r0, [r5, #0x14]
007aa8c8  10 10 95 e5                                      ldr r1, [r5, #0x10]
007aa8cc  99 a0 fe eb                                      bl #0x752b38
007aa8d0  e7 ff ff ea                                      b #0x7aa874
007aa8d4  04 70 90 e5                                      ldr r7, [r0, #4]
007aa8d8  87 12 a0 e1                                      lsl r1, r7, #5
007aa8dc  28 10 81 e2                                      add r1, r1, #0x28
007aa8e0  94 a0 fe eb                                      bl #0x752b38
007aa8e4  00 30 a0 e3                                      mov r3, #0
007aa8e8  00 30 88 e5                                      str r3, [r8]
007aa8ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007c4aa8, declared_size=348, range_size=348, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::find_index(gameswf::tu_stringi const&) const
; decoder-mode: arm
007c4aa8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c4aac  00 30 90 e5                                      ldr r3, [r0]
007c4ab0  00 50 a0 e1                                      mov r5, r0
007c4ab4  01 60 a0 e1                                      mov r6, r1
007c4ab8  00 00 53 e3                                      cmp r3, #0
007c4abc  02 00 00 1a                                      bne #0x7c4acc
007c4ac0  00 40 e0 e3                                      mvn r4, #0
007c4ac4  04 00 a0 e1                                      mov r0, r4
007c4ac8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007c4acc  10 c0 91 e5                                      ldr ip, [r1, #0x10]
007c4ad0  ff 24 e0 e3                                      mvn r2, #0xff000000
007c4ad4  ff 14 cc e3                                      bic r1, ip, #0xff000000
007c4ad8  02 00 51 e1                                      cmp r1, r2
007c4adc  5c 70 b7 17                                      sbfxne r7, ip, #0, #0x18
007c4ae0  2a 00 00 0a                                      beq #0x7c4b90
007c4ae4  04 20 93 e5                                      ldr r2, [r3, #4]
007c4ae8  01 00 77 e3                                      cmn r7, #1
007c4aec  02 79 e0 03                                      mvneq r7, #0x8000
007c4af0  02 40 07 e0                                      and r4, r7, r2
007c4af4  04 81 a0 e1                                      lsl r8, r4, #2
007c4af8  01 80 88 e2                                      add r8, r8, #1
007c4afc  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
007c4b00  88 81 83 e0                                      add r8, r3, r8, lsl #3
007c4b04  02 00 71 e3                                      cmn r1, #2
007c4b08  ec ff ff 0a                                      beq #0x7c4ac0
007c4b0c  04 30 98 e5                                      ldr r3, [r8, #4]
007c4b10  01 00 73 e3                                      cmn r3, #1
007c4b14  02 00 00 0a                                      beq #0x7c4b24
007c4b18  03 20 02 e0                                      and r2, r2, r3
007c4b1c  04 00 52 e1                                      cmp r2, r4
007c4b20  e6 ff ff 1a                                      bne #0x7c4ac0
007c4b24  01 a0 86 e2                                      add sl, r6, #1
007c4b28  07 00 00 ea                                      b #0x7c4b4c
007c4b2c  00 40 98 e5                                      ldr r4, [r8]
007c4b30  01 00 74 e3                                      cmn r4, #1
007c4b34  e2 ff ff 0a                                      beq #0x7c4ac4
007c4b38  00 80 95 e5                                      ldr r8, [r5]
007c4b3c  84 32 a0 e1                                      lsl r3, r4, #5
007c4b40  08 30 83 e2                                      add r3, r3, #8
007c4b44  03 80 88 e0                                      add r8, r8, r3
007c4b48  04 30 98 e5                                      ldr r3, [r8, #4]
007c4b4c  03 00 57 e1                                      cmp r7, r3
007c4b50  f5 ff ff 1a                                      bne #0x7c4b2c
007c4b54  08 30 88 e2                                      add r3, r8, #8
007c4b58  03 00 56 e1                                      cmp r6, r3
007c4b5c  d8 ff ff 0a                                      beq #0x7c4ac4
007c4b60  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
007c4b64  01 00 73 e3                                      cmn r3, #1
007c4b68  d0 30 d6 e1                                      ldrsb r3, [r6]
007c4b6c  09 00 88 12                                      addne r0, r8, #9
007c4b70  14 00 98 05                                      ldreq r0, [r8, #0x14]
007c4b74  01 00 73 e3                                      cmn r3, #1
007c4b78  0a 10 a0 11                                      movne r1, sl
007c4b7c  0c 10 96 05                                      ldreq r1, [r6, #0xc]
007c4b80  62 34 fe eb                                      bl #0x751d10
007c4b84  00 00 50 e3                                      cmp r0, #0
007c4b88  e7 ff ff 1a                                      bne #0x7c4b2c
007c4b8c  cc ff ff ea                                      b #0x7c4ac4
007c4b90  d0 30 d6 e1                                      ldrsb r3, [r6]
007c4b94  01 00 73 e3                                      cmn r3, #1
007c4b98  04 30 96 05                                      ldreq r3, [r6, #4]
007c4b9c  01 30 43 12                                      subne r3, r3, #1
007c4ba0  01 40 86 12                                      addne r4, r6, #1
007c4ba4  01 30 43 02                                      subeq r3, r3, #1
007c4ba8  0c 40 96 05                                      ldreq r4, [r6, #0xc]
007c4bac  00 00 53 e3                                      cmp r3, #0
007c4bb0  05 75 01 d3                                      movwle r7, #0x1505
007c4bb4  07 20 a0 d1                                      movle r2, r7
007c4bb8  0d 00 00 da                                      ble #0x7c4bf4
007c4bbc  03 30 84 e0                                      add r3, r4, r3
007c4bc0  05 25 01 e3                                      movw r2, #0x1505
007c4bc4  01 10 53 e5                                      ldrb r1, [r3, #-1]
007c4bc8  01 30 43 e2                                      sub r3, r3, #1
007c4bcc  82 22 82 e0                                      add r2, r2, r2, lsl #5
007c4bd0  41 00 41 e2                                      sub r0, r1, #0x41
007c4bd4  70 00 ef e6                                      uxtb r0, r0
007c4bd8  19 00 50 e3                                      cmp r0, #0x19
007c4bdc  20 10 81 92                                      addls r1, r1, #0x20
007c4be0  04 00 53 e1                                      cmp r3, r4
007c4be4  02 20 21 e0                                      eor r2, r1, r2
007c4be8  f5 ff ff 1a                                      bne #0x7c4bc4
007c4bec  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
007c4bf0  02 70 a0 e1                                      mov r7, r2
007c4bf4  12 c0 d7 e7                                      bfi ip, r2, #0, #0x18
007c4bf8  10 c0 86 e5                                      str ip, [r6, #0x10]
007c4bfc  00 30 95 e5                                      ldr r3, [r5]
007c4c00  b7 ff ff ea                                      b #0x7c4ae4

; FUNCTION 0x007c4c44, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE3getERKS1_PS4_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::get(gameswf::tu_stringi const&, gameswf::smart_ptr<gameswf::bitmap_font_entity>*) const
; decoder-mode: arm
007c4c44  70 40 2d e9                                      push {r4, r5, r6, lr}
007c4c48  02 40 a0 e1                                      mov r4, r2
007c4c4c  00 50 a0 e1                                      mov r5, r0
007c4c50  94 ff ff eb                                      bl #0x7c4aa8
007c4c54  00 30 50 e2                                      subs r3, r0, #0
007c4c58  08 00 00 ba                                      blt #0x7c4c80
007c4c5c  00 00 54 e3                                      cmp r4, #0
007c4c60  08 00 00 0a                                      beq #0x7c4c88
007c4c64  00 20 95 e5                                      ldr r2, [r5]
007c4c68  04 00 a0 e1                                      mov r0, r4
007c4c6c  83 32 82 e0                                      add r3, r2, r3, lsl #5
007c4c70  24 10 93 e5                                      ldr r1, [r3, #0x24]
007c4c74  e2 ff ff eb                                      bl #0x7c4c04
007c4c78  01 00 a0 e3                                      mov r0, #1
007c4c7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c4c80  00 00 a0 e3                                      mov r0, #0
007c4c84  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c4c88  01 00 a0 e3                                      mov r0, #1
007c4c8c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007c5c90, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE3addERKS1_RKS4_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::add(gameswf::tu_stringi const&, gameswf::smart_ptr<gameswf::bitmap_font_entity> const&)
; decoder-mode: arm
007c5c90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c5c94  00 60 a0 e1                                      mov r6, r0
007c5c98  0c d0 4d e2                                      sub sp, sp, #0xc
007c5c9c  01 50 a0 e1                                      mov r5, r1
007c5ca0  02 90 a0 e1                                      mov sb, r2
007c5ca4  c0 00 00 eb                                      bl #0x7c5fac
007c5ca8  00 30 96 e5                                      ldr r3, [r6]
007c5cac  00 20 93 e5                                      ldr r2, [r3]
007c5cb0  01 20 82 e2                                      add r2, r2, #1
007c5cb4  00 20 83 e5                                      str r2, [r3]
007c5cb8  10 e0 95 e5                                      ldr lr, [r5, #0x10]
007c5cbc  ff 34 e0 e3                                      mvn r3, #0xff000000
007c5cc0  ff 24 ce e3                                      bic r2, lr, #0xff000000
007c5cc4  03 00 52 e1                                      cmp r2, r3
007c5cc8  5e 40 b7 17                                      sbfxne r4, lr, #0, #0x18
007c5ccc  2d 00 00 0a                                      beq #0x7c5d88
007c5cd0  00 60 96 e5                                      ldr r6, [r6]
007c5cd4  01 00 74 e3                                      cmn r4, #1
007c5cd8  02 49 e0 03                                      mvneq r4, #0x8000
007c5cdc  04 c0 96 e5                                      ldr ip, [r6, #4]
007c5ce0  0c 20 04 e0                                      and r2, r4, ip
007c5ce4  02 b1 a0 e1                                      lsl fp, r2, #2
007c5ce8  01 b0 8b e2                                      add fp, fp, #1
007c5cec  8b 31 96 e7                                      ldr r3, [r6, fp, lsl #3]
007c5cf0  8b a1 86 e0                                      add sl, r6, fp, lsl #3
007c5cf4  02 00 73 e3                                      cmn r3, #2
007c5cf8  3e 00 00 0a                                      beq #0x7c5df8
007c5cfc  04 e0 9a e5                                      ldr lr, [sl, #4]
007c5d00  01 00 7e e3                                      cmn lr, #1
007c5d04  02 70 a0 11                                      movne r7, r2
007c5d08  41 00 00 0a                                      beq #0x7c5e14
007c5d0c  01 70 87 e2                                      add r7, r7, #1
007c5d10  0c 70 07 e0                                      and r7, r7, ip
007c5d14  07 01 a0 e1                                      lsl r0, r7, #2
007c5d18  01 00 80 e2                                      add r0, r0, #1
007c5d1c  80 11 96 e7                                      ldr r1, [r6, r0, lsl #3]
007c5d20  80 01 86 e0                                      add r0, r6, r0, lsl #3
007c5d24  02 00 71 e3                                      cmn r1, #2
007c5d28  f7 ff ff 1a                                      bne #0x7c5d0c
007c5d2c  0e 30 0c e0                                      and r3, ip, lr
007c5d30  02 00 53 e1                                      cmp r3, r2
007c5d34  3c 00 00 0a                                      beq #0x7c5e2c
007c5d38  03 81 a0 e1                                      lsl r8, r3, #2
007c5d3c  01 80 88 e2                                      add r8, r8, #1
007c5d40  88 31 96 e7                                      ldr r3, [r6, r8, lsl #3]
007c5d44  88 81 86 e0                                      add r8, r6, r8, lsl #3
007c5d48  02 00 53 e1                                      cmp r3, r2
007c5d4c  f9 ff ff 1a                                      bne #0x7c5d38
007c5d50  0a 10 a0 e1                                      mov r1, sl
007c5d54  bc ff ff eb                                      bl #0x7c5c4c
007c5d58  05 10 a0 e1                                      mov r1, r5
007c5d5c  08 00 8a e2                                      add r0, sl, #8
007c5d60  00 70 88 e5                                      str r7, [r8]
007c5d64  79 34 fe eb                                      bl #0x752f50
007c5d68  00 10 99 e5                                      ldr r1, [sb]
007c5d6c  1c 00 8a e2                                      add r0, sl, #0x1c
007c5d70  a3 fb ff eb                                      bl #0x7c4c04
007c5d74  00 30 e0 e3                                      mvn r3, #0
007c5d78  04 40 8a e5                                      str r4, [sl, #4]
007c5d7c  8b 31 86 e7                                      str r3, [r6, fp, lsl #3]
007c5d80  0c d0 8d e2                                      add sp, sp, #0xc
007c5d84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c5d88  d0 30 d5 e1                                      ldrsb r3, [r5]
007c5d8c  01 00 73 e3                                      cmn r3, #1
007c5d90  04 30 95 05                                      ldreq r3, [r5, #4]
007c5d94  01 30 43 12                                      subne r3, r3, #1
007c5d98  01 c0 85 12                                      addne ip, r5, #1
007c5d9c  01 30 43 02                                      subeq r3, r3, #1
007c5da0  0c c0 95 05                                      ldreq ip, [r5, #0xc]
007c5da4  00 00 53 e3                                      cmp r3, #0
007c5da8  05 45 01 d3                                      movwle r4, #0x1505
007c5dac  04 20 a0 d1                                      movle r2, r4
007c5db0  0d 00 00 da                                      ble #0x7c5dec
007c5db4  03 30 8c e0                                      add r3, ip, r3
007c5db8  05 25 01 e3                                      movw r2, #0x1505
007c5dbc  01 10 53 e5                                      ldrb r1, [r3, #-1]
007c5dc0  01 30 43 e2                                      sub r3, r3, #1
007c5dc4  82 22 82 e0                                      add r2, r2, r2, lsl #5
007c5dc8  41 00 41 e2                                      sub r0, r1, #0x41
007c5dcc  70 00 ef e6                                      uxtb r0, r0
007c5dd0  19 00 50 e3                                      cmp r0, #0x19
007c5dd4  20 10 81 92                                      addls r1, r1, #0x20
007c5dd8  0c 00 53 e1                                      cmp r3, ip
007c5ddc  02 20 21 e0                                      eor r2, r1, r2
007c5de0  f5 ff ff 1a                                      bne #0x7c5dbc
007c5de4  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
007c5de8  02 40 a0 e1                                      mov r4, r2
007c5dec  12 e0 d7 e7                                      bfi lr, r2, #0, #0x18
007c5df0  10 e0 85 e5                                      str lr, [r5, #0x10]
007c5df4  b5 ff ff ea                                      b #0x7c5cd0
007c5df8  0a 00 a0 e1                                      mov r0, sl
007c5dfc  05 10 a0 e1                                      mov r1, r5
007c5e00  09 20 a0 e1                                      mov r2, sb
007c5e04  00 30 e0 e3                                      mvn r3, #0
007c5e08  00 40 8d e5                                      str r4, [sp]
007c5e0c  7f ff ff eb                                      bl #0x7c5c10
007c5e10  da ff ff ea                                      b #0x7c5d80
007c5e14  0a 00 a0 e1                                      mov r0, sl
007c5e18  05 10 a0 e1                                      mov r1, r5
007c5e1c  09 20 a0 e1                                      mov r2, sb
007c5e20  00 40 8d e5                                      str r4, [sp]
007c5e24  79 ff ff eb                                      bl #0x7c5c10
007c5e28  d4 ff ff ea                                      b #0x7c5d80
007c5e2c  0a 10 a0 e1                                      mov r1, sl
007c5e30  85 ff ff eb                                      bl #0x7c5c4c
007c5e34  05 10 a0 e1                                      mov r1, r5
007c5e38  08 00 8a e2                                      add r0, sl, #8
007c5e3c  43 34 fe eb                                      bl #0x752f50
007c5e40  00 10 99 e5                                      ldr r1, [sb]
007c5e44  1c 00 8a e2                                      add r0, sl, #0x1c
007c5e48  6d fb ff eb                                      bl #0x7c4c04
007c5e4c  8b 71 86 e7                                      str r7, [r6, fp, lsl #3]
007c5e50  04 40 8a e5                                      str r4, [sl, #4]
007c5e54  c9 ff ff ea                                      b #0x7c5d80

; FUNCTION 0x007c5e58, declared_size=340, range_size=340, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
; decoder-mode: arm
007c5e58  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007c5e5c  00 00 51 e3                                      cmp r1, #0
007c5e60  0c d0 4d e2                                      sub sp, sp, #0xc
007c5e64  00 80 a0 e1                                      mov r8, r0
007c5e68  4c 00 00 da                                      ble #0x7c5fa0
007c5e6c  01 00 41 e2                                      sub r0, r1, #1
007c5e70  bb 22 ed eb                                      bl #0x30e964
007c5e74  0e 20 ed eb                                      bl #0x30deb4
007c5e78  18 12 07 e3                                      movw r1, #0x7218
007c5e7c  31 1f 43 e3                                      movt r1, #0x3f31
007c5e80  83 23 ed eb                                      bl #0x30ec94
007c5e84  fe 15 a0 e3                                      mov r1, #0x3f800000
007c5e88  45 23 ed eb                                      bl #0x30eba4
007c5e8c  8e 21 ed eb                                      bl #0x30e4cc
007c5e90  01 40 a0 e3                                      mov r4, #1
007c5e94  14 40 a0 e1                                      lsl r4, r4, r0
007c5e98  00 30 98 e5                                      ldr r3, [r8]
007c5e9c  04 00 54 e3                                      cmp r4, #4
007c5ea0  04 40 a0 b3                                      movlt r4, #4
007c5ea4  00 00 53 e3                                      cmp r3, #0
007c5ea8  03 00 00 0a                                      beq #0x7c5ebc
007c5eac  04 30 93 e5                                      ldr r3, [r3, #4]
007c5eb0  01 30 83 e2                                      add r3, r3, #1
007c5eb4  04 00 53 e1                                      cmp r3, r4
007c5eb8  39 00 00 0a                                      beq #0x7c5fa4
007c5ebc  00 50 a0 e3                                      mov r5, #0
007c5ec0  84 02 a0 e1                                      lsl r0, r4, #5
007c5ec4  05 10 a0 e1                                      mov r1, r5
007c5ec8  08 00 80 e2                                      add r0, r0, #8
007c5ecc  04 50 8d e5                                      str r5, [sp, #4]
007c5ed0  31 33 fe eb                                      bl #0x752b9c
007c5ed4  04 00 8d e5                                      str r0, [sp, #4]
007c5ed8  00 50 80 e5                                      str r5, [r0]
007c5edc  04 30 9d e5                                      ldr r3, [sp, #4]
007c5ee0  01 20 44 e2                                      sub r2, r4, #1
007c5ee4  01 10 e0 e3                                      mvn r1, #1
007c5ee8  04 20 83 e5                                      str r2, [r3, #4]
007c5eec  08 30 a0 e3                                      mov r3, #8
007c5ef0  04 20 9d e5                                      ldr r2, [sp, #4]
007c5ef4  01 50 85 e2                                      add r5, r5, #1
007c5ef8  05 00 54 e1                                      cmp r4, r5
007c5efc  03 10 82 e7                                      str r1, [r2, r3]
007c5f00  20 30 83 e2                                      add r3, r3, #0x20
007c5f04  f9 ff ff ca                                      bgt #0x7c5ef0
007c5f08  00 00 98 e5                                      ldr r0, [r8]
007c5f0c  00 00 50 e3                                      cmp r0, #0
007c5f10  04 a0 8d 02                                      addeq sl, sp, #4
007c5f14  1c 00 00 0a                                      beq #0x7c5f8c
007c5f18  04 70 90 e5                                      ldr r7, [r0, #4]
007c5f1c  00 00 57 e3                                      cmp r7, #0
007c5f20  04 a0 8d b2                                      addlt sl, sp, #4
007c5f24  15 00 00 ba                                      blt #0x7c5f80
007c5f28  08 40 a0 e3                                      mov r4, #8
007c5f2c  00 60 a0 e3                                      mov r6, #0
007c5f30  04 a0 8d e2                                      add sl, sp, #4
007c5f34  04 30 90 e7                                      ldr r3, [r0, r4]
007c5f38  01 60 86 e2                                      add r6, r6, #1
007c5f3c  04 50 80 e0                                      add r5, r0, r4
007c5f40  02 00 73 e3                                      cmn r3, #2
007c5f44  09 00 00 0a                                      beq #0x7c5f70
007c5f48  04 30 95 e5                                      ldr r3, [r5, #4]
007c5f4c  08 10 85 e2                                      add r1, r5, #8
007c5f50  1c 20 85 e2                                      add r2, r5, #0x1c
007c5f54  01 00 73 e3                                      cmn r3, #1
007c5f58  04 00 00 0a                                      beq #0x7c5f70
007c5f5c  0a 00 a0 e1                                      mov r0, sl
007c5f60  4a ff ff eb                                      bl #0x7c5c90
007c5f64  05 00 a0 e1                                      mov r0, r5
007c5f68  48 fb ff eb                                      bl #0x7c4c90
007c5f6c  00 00 98 e5                                      ldr r0, [r8]
007c5f70  06 00 57 e1                                      cmp r7, r6
007c5f74  20 40 84 e2                                      add r4, r4, #0x20
007c5f78  ed ff ff aa                                      bge #0x7c5f34
007c5f7c  04 70 90 e5                                      ldr r7, [r0, #4]
007c5f80  87 12 a0 e1                                      lsl r1, r7, #5
007c5f84  28 10 81 e2                                      add r1, r1, #0x28
007c5f88  ea 32 fe eb                                      bl #0x752b38
007c5f8c  04 30 9d e5                                      ldr r3, [sp, #4]
007c5f90  0a 00 a0 e1                                      mov r0, sl
007c5f94  00 30 88 e5                                      str r3, [r8]
007c5f98  00 30 a0 e3                                      mov r3, #0
007c5f9c  04 30 8d e5                                      str r3, [sp, #4]
007c5fa0  26 92 ff eb                                      bl #0x7aa840
007c5fa4  0c d0 8d e2                                      add sp, sp, #0xc
007c5fa8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007c5fac, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::check_expand()
; decoder-mode: arm
007c5fac  00 30 90 e5                                      ldr r3, [r0]
007c5fb0  00 00 53 e3                                      cmp r3, #0
007c5fb4  07 00 00 0a                                      beq #0x7c5fd8
007c5fb8  04 10 93 e5                                      ldr r1, [r3, #4]
007c5fbc  00 30 93 e5                                      ldr r3, [r3]
007c5fc0  01 10 81 e2                                      add r1, r1, #1
007c5fc4  81 10 a0 e1                                      lsl r1, r1, #1
007c5fc8  83 30 83 e0                                      add r3, r3, r3, lsl #1
007c5fcc  01 00 53 e1                                      cmp r3, r1
007c5fd0  1e ff 2f d1                                      bxle lr
007c5fd4  9f ff ff ea                                      b #0x7c5e58
007c5fd8  08 10 a0 e3                                      mov r1, #8
007c5fdc  9d ff ff ea                                      b #0x7c5e58

; FUNCTION 0x007c5fe0, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEEixERKS1_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::operator[](gameswf::tu_stringi const&)
; decoder-mode: arm
007c5fe0  30 40 2d e9                                      push {r4, r5, lr}
007c5fe4  0c d0 4d e2                                      sub sp, sp, #0xc
007c5fe8  00 40 a0 e1                                      mov r4, r0
007c5fec  01 50 a0 e1                                      mov r5, r1
007c5ff0  ac fa ff eb                                      bl #0x7c4aa8
007c5ff4  00 00 50 e3                                      cmp r0, #0
007c5ff8  04 00 00 ba                                      blt #0x7c6010
007c5ffc  00 30 94 e5                                      ldr r3, [r4]
007c6000  80 02 83 e0                                      add r0, r3, r0, lsl #5
007c6004  24 00 80 e2                                      add r0, r0, #0x24
007c6008  0c d0 8d e2                                      add sp, sp, #0xc
007c600c  30 80 bd e8                                      pop {r4, r5, pc}
007c6010  08 20 8d e2                                      add r2, sp, #8
007c6014  00 30 a0 e3                                      mov r3, #0
007c6018  04 00 a0 e1                                      mov r0, r4
007c601c  04 30 22 e5                                      str r3, [r2, #-4]!
007c6020  05 10 a0 e1                                      mov r1, r5
007c6024  19 ff ff eb                                      bl #0x7c5c90
007c6028  04 00 9d e5                                      ldr r0, [sp, #4]
007c602c  00 00 50 e3                                      cmp r0, #0
007c6030  00 00 00 0a                                      beq #0x7c6038
007c6034  81 50 fe eb                                      bl #0x75a240
007c6038  05 10 a0 e1                                      mov r1, r5
007c603c  04 00 a0 e1                                      mov r0, r4
007c6040  98 fa ff eb                                      bl #0x7c4aa8
007c6044  ec ff ff ea                                      b #0x7c5ffc
