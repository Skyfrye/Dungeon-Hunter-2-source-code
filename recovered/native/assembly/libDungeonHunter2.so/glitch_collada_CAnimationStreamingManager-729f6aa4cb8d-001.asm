; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b3cc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManagerC2Ev
; demangled: glitch::collada::CAnimationStreamingManager::CAnimationStreamingManager()
; decoder-mode: arm
0060b3cc  34 10 9f e5                                      ldr r1, [pc, #0x34]
0060b3d0  34 20 9f e5                                      ldr r2, [pc, #0x34]
0060b3d4  01 10 8f e0                                      add r1, pc, r1
0060b3d8  02 c0 91 e7                                      ldr ip, [r1, r2]
0060b3dc  00 20 a0 e3                                      mov r2, #0
0060b3e0  1c 20 80 e5                                      str r2, [r0, #0x1c]
0060b3e4  00 20 80 e5                                      str r2, [r0]
0060b3e8  04 20 80 e5                                      str r2, [r0, #4]
0060b3ec  08 20 80 e5                                      str r2, [r0, #8]
0060b3f0  0c 20 80 e5                                      str r2, [r0, #0xc]
0060b3f4  10 20 80 e5                                      str r2, [r0, #0x10]
0060b3f8  14 20 80 e5                                      str r2, [r0, #0x14]
0060b3fc  18 20 80 e5                                      str r2, [r0, #0x18]
0060b400  00 00 8c e5                                      str r0, [ip]
0060b404  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060b408  bc 96 38 00 74 09 00 00                          .byte 0xbc, 0x96, 0x38, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0060b410, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManagerC1Ev
; demangled: glitch::collada::CAnimationStreamingManager::CAnimationStreamingManager()
; decoder-mode: arm
0060b410  34 10 9f e5                                      ldr r1, [pc, #0x34]
0060b414  34 20 9f e5                                      ldr r2, [pc, #0x34]
0060b418  01 10 8f e0                                      add r1, pc, r1
0060b41c  02 c0 91 e7                                      ldr ip, [r1, r2]
0060b420  00 20 a0 e3                                      mov r2, #0
0060b424  1c 20 80 e5                                      str r2, [r0, #0x1c]
0060b428  00 20 80 e5                                      str r2, [r0]
0060b42c  04 20 80 e5                                      str r2, [r0, #4]
0060b430  08 20 80 e5                                      str r2, [r0, #8]
0060b434  0c 20 80 e5                                      str r2, [r0, #0xc]
0060b438  10 20 80 e5                                      str r2, [r0, #0x10]
0060b43c  14 20 80 e5                                      str r2, [r0, #0x14]
0060b440  18 20 80 e5                                      str r2, [r0, #0x18]
0060b444  00 00 8c e5                                      str r0, [ip]
0060b448  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060b44c  78 96 38 00 74 09 00 00                          .byte 0x78, 0x96, 0x38, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0060b918, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManager7releaseEPNS0_16CColladaDatabaseE
; demangled: glitch::collada::CAnimationStreamingManager::release(glitch::collada::CColladaDatabase*)
; decoder-mode: arm
0060b918  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0060b91c  00 50 a0 e1                                      mov r5, r0
0060b920  0c d0 4d e2                                      sub sp, sp, #0xc
0060b924  01 40 a0 e1                                      mov r4, r1
0060b928  0c 70 85 e2                                      add r7, r5, #0xc
0060b92c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0060b930  04 60 8d e2                                      add r6, sp, #4
0060b934  10 00 90 e5                                      ldr r0, [r0, #0x10]
0060b938  06 00 00 ea                                      b #0x60b958
0060b93c  00 30 94 e5                                      ldr r3, [r4]
0060b940  08 20 91 e5                                      ldr r2, [r1, #8]
0060b944  00 00 53 e3                                      cmp r3, #0
0060b948  20 30 93 15                                      ldrne r3, [r3, #0x20]
0060b94c  03 00 52 e1                                      cmp r2, r3
0060b950  0c 10 81 12                                      addne r1, r1, #0xc
0060b954  03 00 00 0a                                      beq #0x60b968
0060b958  00 00 51 e1                                      cmp r1, r0
0060b95c  f6 ff ff 1a                                      bne #0x60b93c
0060b960  0c d0 8d e2                                      add sp, sp, #0xc
0060b964  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0060b968  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0060b96c  00 30 91 e5                                      ldr r3, [r1]
0060b970  07 00 a0 e1                                      mov r0, r7
0060b974  02 30 63 e0                                      rsb r3, r3, r2
0060b978  1c 30 85 e5                                      str r3, [r5, #0x1c]
0060b97c  06 20 a0 e1                                      mov r2, r6
0060b980  c0 ff ff eb                                      bl #0x60b888
0060b984  00 10 a0 e1                                      mov r1, r0
0060b988  10 00 95 e5                                      ldr r0, [r5, #0x10]
0060b98c  f1 ff ff ea                                      b #0x60b958

; FUNCTION 0x0060b990, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManager16checkMemoryUsageEv
; demangled: glitch::collada::CAnimationStreamingManager::checkMemoryUsage()
; decoder-mode: arm
0060b990  70 40 2d e9                                      push {r4, r5, r6, lr}
0060b994  00 40 a0 e1                                      mov r4, r0
0060b998  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0060b99c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0060b9a0  18 00 90 e5                                      ldr r0, [r0, #0x18]
0060b9a4  08 d0 4d e2                                      sub sp, sp, #8
0060b9a8  0c 60 84 e2                                      add r6, r4, #0xc
0060b9ac  04 50 8d e2                                      add r5, sp, #4
0060b9b0  03 00 50 e1                                      cmp r0, r3
0060b9b4  01 00 00 ba                                      blt #0x60b9c0
0060b9b8  08 d0 8d e2                                      add sp, sp, #8
0060b9bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060b9c0  10 20 94 e5                                      ldr r2, [r4, #0x10]
0060b9c4  02 00 51 e1                                      cmp r1, r2
0060b9c8  11 00 00 0a                                      beq #0x60ba14
0060b9cc  04 20 91 e5                                      ldr r2, [r1, #4]
0060b9d0  00 00 52 e3                                      cmp r2, #0
0060b9d4  02 00 00 0a                                      beq #0x60b9e4
0060b9d8  00 20 92 e5                                      ldr r2, [r2]
0060b9dc  01 00 52 e3                                      cmp r2, #1
0060b9e0  01 00 00 0a                                      beq #0x60b9ec
0060b9e4  0c 10 81 e2                                      add r1, r1, #0xc
0060b9e8  f0 ff ff ea                                      b #0x60b9b0
0060b9ec  00 20 91 e5                                      ldr r2, [r1]
0060b9f0  06 00 a0 e1                                      mov r0, r6
0060b9f4  03 30 62 e0                                      rsb r3, r2, r3
0060b9f8  1c 30 84 e5                                      str r3, [r4, #0x1c]
0060b9fc  05 20 a0 e1                                      mov r2, r5
0060ba00  a0 ff ff eb                                      bl #0x60b888
0060ba04  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0060ba08  00 10 a0 e1                                      mov r1, r0
0060ba0c  18 00 94 e5                                      ldr r0, [r4, #0x18]
0060ba10  e6 ff ff ea                                      b #0x60b9b0
0060ba14  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0060ba18  02 10 a0 e3                                      mov r1, #2
0060ba1c  00 00 8f e0                                      add r0, pc, r0
0060ba20  9e fc ff eb                                      bl #0x60aca0
0060ba24  e3 ff ff ea                                      b #0x60b9b8
; mapping-symbol data/literal pool
0060ba28  04 93 2d 00                                      .byte 0x04, 0x93, 0x2d, 0x00

; FUNCTION 0x0060bb64, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManager24unregisterAnimationBlockEPNS0_15CAnimationBlockE
; demangled: glitch::collada::CAnimationStreamingManager::unregisterAnimationBlock(glitch::collada::CAnimationBlock*)
; decoder-mode: arm
0060bb64  10 40 2d e9                                      push {r4, lr}
0060bb68  00 40 a0 e1                                      mov r4, r0
0060bb6c  04 30 94 e5                                      ldr r3, [r4, #4]
0060bb70  10 d0 4d e2                                      sub sp, sp, #0x10
0060bb74  10 20 8d e2                                      add r2, sp, #0x10
0060bb78  00 00 90 e5                                      ldr r0, [r0]
0060bb7c  00 c0 a0 e3                                      mov ip, #0
0060bb80  04 10 22 e5                                      str r1, [r2, #-4]!
0060bb84  03 10 a0 e1                                      mov r1, r3
0060bb88  00 30 a0 e3                                      mov r3, #0
0060bb8c  00 30 cd e5                                      strb r3, [sp]
0060bb90  04 c0 8d e5                                      str ip, [sp, #4]
0060bb94  65 fe ff eb                                      bl #0x60b530
0060bb98  04 30 94 e5                                      ldr r3, [r4, #4]
0060bb9c  04 10 80 e2                                      add r1, r0, #4
0060bba0  03 00 51 e1                                      cmp r1, r3
0060bba4  04 00 00 0a                                      beq #0x60bbbc
0060bba8  01 20 53 e0                                      subs r2, r3, r1
0060bbac  03 10 a0 01                                      moveq r1, r3
0060bbb0  01 00 00 0a                                      beq #0x60bbbc
0060bbb4  df 08 f4 eb                                      bl #0x30df38
0060bbb8  04 10 94 e5                                      ldr r1, [r4, #4]
0060bbbc  04 10 41 e2                                      sub r1, r1, #4
0060bbc0  04 10 84 e5                                      str r1, [r4, #4]
0060bbc4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060bbc8  d3 ff ff eb                                      bl #0x60bb1c
0060bbcc  10 d0 8d e2                                      add sp, sp, #0x10
0060bbd0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060bc7c, declared_size=616, range_size=616, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManager5cacheEPNS0_15CAnimationBlockE
; demangled: glitch::collada::CAnimationStreamingManager::cache(glitch::collada::CAnimationBlock*)
; decoder-mode: arm
0060bc7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060bc80  18 30 90 e5                                      ldr r3, [r0, #0x18]
0060bc84  0c d0 4d e2                                      sub sp, sp, #0xc
0060bc88  00 50 a0 e1                                      mov r5, r0
0060bc8c  00 00 53 e3                                      cmp r3, #0
0060bc90  01 70 a0 e1                                      mov r7, r1
0060bc94  10 40 91 e5                                      ldr r4, [r1, #0x10]
0060bc98  33 00 00 da                                      ble #0x60bd6c
0060bc9c  3b ff ff eb                                      bl #0x60b990
0060bca0  10 60 94 e5                                      ldr r6, [r4, #0x10]
0060bca4  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0060bca8  05 00 a0 e1                                      mov r0, r5
0060bcac  08 a0 84 e2                                      add sl, r4, #8
0060bcb0  06 30 83 e0                                      add r3, r3, r6
0060bcb4  1c 30 85 e5                                      str r3, [r5, #0x1c]
0060bcb8  34 ff ff eb                                      bl #0x60b990
0060bcbc  08 30 94 e5                                      ldr r3, [r4, #8]
0060bcc0  01 30 83 e2                                      add r3, r3, #1
0060bcc4  08 30 84 e5                                      str r3, [r4, #8]
0060bcc8  04 80 97 e5                                      ldr r8, [r7, #4]
0060bccc  01 30 83 e2                                      add r3, r3, #1
0060bcd0  00 00 58 e3                                      cmp r8, #0
0060bcd4  20 80 98 15                                      ldrne r8, [r8, #0x20]
0060bcd8  08 30 84 e5                                      str r3, [r4, #8]
0060bcdc  10 30 95 e5                                      ldr r3, [r5, #0x10]
0060bce0  14 70 95 e5                                      ldr r7, [r5, #0x14]
0060bce4  07 00 53 e1                                      cmp r3, r7
0060bce8  21 00 00 0a                                      beq #0x60bd74
0060bcec  40 04 83 e8                                      stm r3, {r6, sl}
0060bcf0  08 20 94 e5                                      ldr r2, [r4, #8]
0060bcf4  01 20 82 e2                                      add r2, r2, #1
0060bcf8  08 20 84 e5                                      str r2, [r4, #8]
0060bcfc  08 80 83 e5                                      str r8, [r3, #8]
0060bd00  10 30 95 e5                                      ldr r3, [r5, #0x10]
0060bd04  0c 30 83 e2                                      add r3, r3, #0xc
0060bd08  10 30 85 e5                                      str r3, [r5, #0x10]
0060bd0c  08 30 94 e5                                      ldr r3, [r4, #8]
0060bd10  01 30 43 e2                                      sub r3, r3, #1
0060bd14  00 00 53 e3                                      cmp r3, #0
0060bd18  08 30 84 e5                                      str r3, [r4, #8]
0060bd1c  03 20 a0 e1                                      mov r2, r3
0060bd20  07 00 00 1a                                      bne #0x60bd44
0060bd24  14 00 94 e5                                      ldr r0, [r4, #0x14]
0060bd28  00 00 50 e3                                      cmp r0, #0
0060bd2c  01 00 00 0a                                      beq #0x60bd38
0060bd30  e0 08 f4 eb                                      bl #0x30e0b8
0060bd34  08 30 94 e5                                      ldr r3, [r4, #8]
0060bd38  00 20 a0 e3                                      mov r2, #0
0060bd3c  14 20 84 e5                                      str r2, [r4, #0x14]
0060bd40  03 20 a0 e1                                      mov r2, r3
0060bd44  01 30 42 e2                                      sub r3, r2, #1
0060bd48  00 00 53 e3                                      cmp r3, #0
0060bd4c  08 30 84 e5                                      str r3, [r4, #8]
0060bd50  05 00 00 1a                                      bne #0x60bd6c
0060bd54  14 00 94 e5                                      ldr r0, [r4, #0x14]
0060bd58  00 00 50 e3                                      cmp r0, #0
0060bd5c  00 00 00 0a                                      beq #0x60bd64
0060bd60  d4 08 f4 eb                                      bl #0x30e0b8
0060bd64  00 30 a0 e3                                      mov r3, #0
0060bd68  14 30 84 e5                                      str r3, [r4, #0x14]
0060bd6c  0c d0 8d e2                                      add sp, sp, #0xc
0060bd70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0060bd74  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0060bd78  55 35 05 e3                                      movw r3, #0x5555
0060bd7c  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0060bd80  07 20 62 e0                                      rsb r2, r2, r7
0060bd84  42 21 a0 e1                                      asr r2, r2, #2
0060bd88  02 11 82 e0                                      add r1, r2, r2, lsl #2
0060bd8c  01 12 81 e0                                      add r1, r1, r1, lsl #4
0060bd90  01 14 81 e0                                      add r1, r1, r1, lsl #8
0060bd94  01 18 81 e0                                      add r1, r1, r1, lsl #16
0060bd98  81 20 82 e0                                      add r2, r2, r1, lsl #1
0060bd9c  01 00 52 e3                                      cmp r2, #1
0060bda0  02 10 82 20                                      addhs r1, r2, r2
0060bda4  01 10 82 32                                      addlo r1, r2, #1
0060bda8  03 00 51 e1                                      cmp r1, r3
0060bdac  4a 00 00 8a                                      bhi #0x60bedc
0060bdb0  01 00 52 e1                                      cmp r2, r1
0060bdb4  48 00 00 8a                                      bhi #0x60bedc
0060bdb8  0c 90 a0 e3                                      mov sb, #0xc
0060bdbc  99 01 09 e0                                      mul sb, sb, r1
0060bdc0  09 00 a0 e1                                      mov r0, sb
0060bdc4  00 10 a0 e3                                      mov r1, #0
0060bdc8  e6 11 f4 eb                                      bl #0x310568
0060bdcc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0060bdd0  00 b0 a0 e1                                      mov fp, r0
0060bdd4  07 70 63 e0                                      rsb r7, r3, r7
0060bdd8  47 71 a0 e1                                      asr r7, r7, #2
0060bddc  07 c1 87 e0                                      add ip, r7, r7, lsl #2
0060bde0  0c c2 8c e0                                      add ip, ip, ip, lsl #4
0060bde4  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0060bde8  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0060bdec  8c c0 87 e0                                      add ip, r7, ip, lsl #1
0060bdf0  00 00 5c e3                                      cmp ip, #0
0060bdf4  00 c0 a0 d1                                      movle ip, r0
0060bdf8  11 00 00 da                                      ble #0x60be44
0060bdfc  0c 00 a0 e1                                      mov r0, ip
0060be00  0b 20 a0 e1                                      mov r2, fp
0060be04  00 10 93 e5                                      ldr r1, [r3]
0060be08  00 10 82 e5                                      str r1, [r2]
0060be0c  04 10 93 e5                                      ldr r1, [r3, #4]
0060be10  00 00 51 e3                                      cmp r1, #0
0060be14  04 10 82 e5                                      str r1, [r2, #4]
0060be18  00 e0 91 15                                      ldrne lr, [r1]
0060be1c  01 e0 8e 12                                      addne lr, lr, #1
0060be20  00 e0 81 15                                      strne lr, [r1]
0060be24  08 10 93 e5                                      ldr r1, [r3, #8]
0060be28  01 00 50 e2                                      subs r0, r0, #1
0060be2c  0c 30 83 e2                                      add r3, r3, #0xc
0060be30  08 10 82 e5                                      str r1, [r2, #8]
0060be34  0c 20 82 e2                                      add r2, r2, #0xc
0060be38  f1 ff ff 1a                                      bne #0x60be04
0060be3c  0c 30 a0 e3                                      mov r3, #0xc
0060be40  93 bc 2c e0                                      mla ip, r3, ip, fp
0060be44  40 04 8c e8                                      stm ip, {r6, sl}
0060be48  08 30 94 e5                                      ldr r3, [r4, #8]
0060be4c  0c 20 8c e2                                      add r2, ip, #0xc
0060be50  04 20 8d e5                                      str r2, [sp, #4]
0060be54  01 30 83 e2                                      add r3, r3, #1
0060be58  08 30 84 e5                                      str r3, [r4, #8]
0060be5c  08 80 8c e5                                      str r8, [ip, #8]
0060be60  10 00 95 e5                                      ldr r0, [r5, #0x10]
0060be64  0c a0 95 e5                                      ldr sl, [r5, #0xc]
0060be68  0a 00 50 e1                                      cmp r0, sl
0060be6c  13 00 00 0a                                      beq #0x60bec0
0060be70  00 60 a0 e1                                      mov r6, r0
0060be74  00 80 a0 e3                                      mov r8, #0
0060be78  08 70 16 e5                                      ldr r7, [r6, #-8]
0060be7c  00 00 57 e3                                      cmp r7, #0
0060be80  0a 00 00 0a                                      beq #0x60beb0
0060be84  00 30 97 e5                                      ldr r3, [r7]
0060be88  01 30 43 e2                                      sub r3, r3, #1
0060be8c  00 00 53 e3                                      cmp r3, #0
0060be90  00 30 87 e5                                      str r3, [r7]
0060be94  04 00 00 1a                                      bne #0x60beac
0060be98  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0060be9c  00 00 50 e3                                      cmp r0, #0
0060bea0  00 00 00 0a                                      beq #0x60bea8
0060bea4  83 08 f4 eb                                      bl #0x30e0b8
0060bea8  0c 80 87 e5                                      str r8, [r7, #0xc]
0060beac  08 80 06 e5                                      str r8, [r6, #-8]
0060beb0  0c 60 46 e2                                      sub r6, r6, #0xc
0060beb4  06 00 5a e1                                      cmp sl, r6
0060beb8  ee ff ff 1a                                      bne #0x60be78
0060bebc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060bec0  09 90 8b e0                                      add sb, fp, sb
0060bec4  61 11 f4 eb                                      bl #0x310450
0060bec8  14 90 85 e5                                      str sb, [r5, #0x14]
0060becc  04 30 9d e5                                      ldr r3, [sp, #4]
0060bed0  0c b0 85 e5                                      str fp, [r5, #0xc]
0060bed4  10 30 85 e5                                      str r3, [r5, #0x10]
0060bed8  8b ff ff ea                                      b #0x60bd0c
0060bedc  03 90 e0 e3                                      mvn sb, #3
0060bee0  b6 ff ff ea                                      b #0x60bdc0

; FUNCTION 0x0060c220, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManager17getAnimationBlockERNS0_24SAnimationBlockSearchKeyE
; demangled: glitch::collada::CAnimationStreamingManager::getAnimationBlock(glitch::collada::SAnimationBlockSearchKey&)
; decoder-mode: arm
0060c220  70 40 2d e9                                      push {r4, r5, r6, lr}
0060c224  00 30 91 e5                                      ldr r3, [r1]
0060c228  08 d0 4d e2                                      sub sp, sp, #8
0060c22c  01 40 a0 e1                                      mov r4, r1
0060c230  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060c234  00 60 a0 e1                                      mov r6, r0
0060c238  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060c23c  24 50 93 e5                                      ldr r5, [r3, #0x24]
0060c240  00 00 55 e3                                      cmp r5, #0
0060c244  02 00 00 1a                                      bne #0x60c254
0060c248  05 00 a0 e1                                      mov r0, r5
0060c24c  08 d0 8d e2                                      add sp, sp, #8
0060c250  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060c254  00 00 90 e5                                      ldr r0, [r0]
0060c258  04 10 96 e5                                      ldr r1, [r6, #4]
0060c25c  00 30 a0 e3                                      mov r3, #0
0060c260  00 c0 a0 e3                                      mov ip, #0
0060c264  04 20 a0 e1                                      mov r2, r4
0060c268  00 30 cd e5                                      strb r3, [sp]
0060c26c  04 c0 8d e5                                      str ip, [sp, #4]
0060c270  77 fc ff eb                                      bl #0x60b454
0060c274  04 30 96 e5                                      ldr r3, [r6, #4]
0060c278  03 00 50 e1                                      cmp r0, r3
0060c27c  08 00 00 0a                                      beq #0x60c2a4
0060c280  00 50 90 e5                                      ldr r5, [r0]
0060c284  00 20 94 e5                                      ldr r2, [r4]
0060c288  04 30 95 e5                                      ldr r3, [r5, #4]
0060c28c  00 20 52 e2                                      subs r2, r2, #0
0060c290  01 20 a0 13                                      movne r2, #1
0060c294  00 30 53 e2                                      subs r3, r3, #0
0060c298  01 30 a0 13                                      movne r3, #1
0060c29c  03 00 52 e1                                      cmp r2, r3
0060c2a0  08 00 00 0a                                      beq #0x60c2c8
0060c2a4  00 10 a0 e3                                      mov r1, #0
0060c2a8  20 00 a0 e3                                      mov r0, #0x20
0060c2ac  be 9f fc eb                                      bl #0x5341ac
0060c2b0  04 10 a0 e1                                      mov r1, r4
0060c2b4  08 20 94 e5                                      ldr r2, [r4, #8]
0060c2b8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0060c2bc  00 50 a0 e1                                      mov r5, r0
0060c2c0  65 ff ff eb                                      bl #0x60c05c
0060c2c4  df ff ff ea                                      b #0x60c248
0060c2c8  08 30 94 e5                                      ldr r3, [r4, #8]
0060c2cc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0060c2d0  02 00 53 e1                                      cmp r3, r2
0060c2d4  f2 ff ff 1a                                      bne #0x60c2a4
0060c2d8  10 10 95 e5                                      ldr r1, [r5, #0x10]
0060c2dc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0060c2e0  00 00 91 e5                                      ldr r0, [r1]
0060c2e4  02 00 50 e1                                      cmp r0, r2
0060c2e8  02 00 00 ca                                      bgt #0x60c2f8
0060c2ec  04 10 91 e5                                      ldr r1, [r1, #4]
0060c2f0  01 00 52 e1                                      cmp r2, r1
0060c2f4  d3 ff ff da                                      ble #0x60c248
0060c2f8  00 00 53 e3                                      cmp r3, #0
0060c2fc  e8 ff ff 0a                                      beq #0x60c2a4
0060c300  04 10 93 e5                                      ldr r1, [r3, #4]
0060c304  01 00 52 e1                                      cmp r2, r1
0060c308  ce ff ff ba                                      blt #0x60c248
0060c30c  08 30 93 e5                                      ldr r3, [r3, #8]
0060c310  03 00 52 e1                                      cmp r2, r3
0060c314  e2 ff ff da                                      ble #0x60c2a4
0060c318  ca ff ff ea                                      b #0x60c248

; FUNCTION 0x0060c414, declared_size=388, range_size=388, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManager22registerAnimationBlockEPNS0_15CAnimationBlockE
; demangled: glitch::collada::CAnimationStreamingManager::registerAnimationBlock(glitch::collada::CAnimationBlock*)
; decoder-mode: arm
0060c414  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060c418  00 40 a0 e1                                      mov r4, r0
0060c41c  04 30 94 e5                                      ldr r3, [r4, #4]
0060c420  10 d0 4d e2                                      sub sp, sp, #0x10
0060c424  10 50 8d e2                                      add r5, sp, #0x10
0060c428  00 00 90 e5                                      ldr r0, [r0]
0060c42c  04 10 25 e5                                      str r1, [r5, #-4]!
0060c430  05 20 a0 e1                                      mov r2, r5
0060c434  03 10 a0 e1                                      mov r1, r3
0060c438  00 c0 a0 e3                                      mov ip, #0
0060c43c  00 30 a0 e3                                      mov r3, #0
0060c440  00 30 cd e5                                      strb r3, [sp]
0060c444  04 c0 8d e5                                      str ip, [sp, #4]
0060c448  38 fc ff eb                                      bl #0x60b530
0060c44c  04 30 94 e5                                      ldr r3, [r4, #4]
0060c450  08 20 94 e5                                      ldr r2, [r4, #8]
0060c454  00 60 a0 e1                                      mov r6, r0
0060c458  02 20 63 e0                                      rsb r2, r3, r2
0060c45c  22 21 b0 e1                                      lsrs r2, r2, #2
0060c460  3e 00 00 1a                                      bne #0x60c560
0060c464  00 20 94 e5                                      ldr r2, [r4]
0060c468  03 30 62 e0                                      rsb r3, r2, r3
0060c46c  43 31 a0 e1                                      asr r3, r3, #2
0060c470  01 00 53 e3                                      cmp r3, #1
0060c474  03 70 83 20                                      addhs r7, r3, r3
0060c478  01 70 83 32                                      addlo r7, r3, #1
0060c47c  07 01 77 e3                                      cmn r7, #0xc0000001
0060c480  1d 00 00 9a                                      bls #0x60c4fc
0060c484  03 70 e0 e3                                      mvn r7, #3
0060c488  00 10 a0 e3                                      mov r1, #0
0060c48c  07 00 a0 e1                                      mov r0, r7
0060c490  34 10 f4 eb                                      bl #0x310568
0060c494  00 10 94 e5                                      ldr r1, [r4]
0060c498  00 50 a0 e1                                      mov r5, r0
0060c49c  01 80 56 e0                                      subs r8, r6, r1
0060c4a0  00 00 a0 01                                      moveq r0, r0
0060c4a4  1f 00 00 1a                                      bne #0x60c528
0060c4a8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0060c4ac  04 30 80 e4                                      str r3, [r0], #4
0060c4b0  04 80 94 e5                                      ldr r8, [r4, #4]
0060c4b4  06 80 58 e0                                      subs r8, r8, r6
0060c4b8  00 80 a0 01                                      moveq r8, r0
0060c4bc  22 00 00 1a                                      bne #0x60c54c
0060c4c0  00 00 94 e5                                      ldr r0, [r4]
0060c4c4  07 70 85 e0                                      add r7, r5, r7
0060c4c8  e0 0f f4 eb                                      bl #0x310450
0060c4cc  04 80 84 e5                                      str r8, [r4, #4]
0060c4d0  08 70 84 e5                                      str r7, [r4, #8]
0060c4d4  00 50 84 e5                                      str r5, [r4]
0060c4d8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060c4dc  c3 ff ff eb                                      bl #0x60c3f0
0060c4e0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0060c4e4  10 30 91 e5                                      ldr r3, [r1, #0x10]
0060c4e8  08 30 93 e5                                      ldr r3, [r3, #8]
0060c4ec  01 00 53 e3                                      cmp r3, #1
0060c4f0  25 00 00 0a                                      beq #0x60c58c
0060c4f4  10 d0 8d e2                                      add sp, sp, #0x10
0060c4f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060c4fc  07 00 53 e1                                      cmp r3, r7
0060c500  07 71 a0 91                                      lslls r7, r7, #2
0060c504  de ff ff 8a                                      bhi #0x60c484
0060c508  00 10 a0 e3                                      mov r1, #0
0060c50c  07 00 a0 e1                                      mov r0, r7
0060c510  14 10 f4 eb                                      bl #0x310568
0060c514  00 10 94 e5                                      ldr r1, [r4]
0060c518  00 50 a0 e1                                      mov r5, r0
0060c51c  01 80 56 e0                                      subs r8, r6, r1
0060c520  00 00 a0 01                                      moveq r0, r0
0060c524  df ff ff 0a                                      beq #0x60c4a8
0060c528  08 20 a0 e1                                      mov r2, r8
0060c52c  81 06 f4 eb                                      bl #0x30df38
0060c530  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0060c534  08 00 80 e0                                      add r0, r0, r8
0060c538  04 30 80 e4                                      str r3, [r0], #4
0060c53c  04 80 94 e5                                      ldr r8, [r4, #4]
0060c540  06 80 58 e0                                      subs r8, r8, r6
0060c544  00 80 a0 01                                      moveq r8, r0
0060c548  dc ff ff 0a                                      beq #0x60c4c0
0060c54c  08 20 a0 e1                                      mov r2, r8
0060c550  06 10 a0 e1                                      mov r1, r6
0060c554  77 06 f4 eb                                      bl #0x30df38
0060c558  08 80 80 e0                                      add r8, r0, r8
0060c55c  d7 ff ff ea                                      b #0x60c4c0
0060c560  00 10 a0 e1                                      mov r1, r0
0060c564  05 20 a0 e1                                      mov r2, r5
0060c568  04 00 a0 e1                                      mov r0, r4
0060c56c  59 fc ff eb                                      bl #0x60b6d8
0060c570  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060c574  9d ff ff eb                                      bl #0x60c3f0
0060c578  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0060c57c  10 30 91 e5                                      ldr r3, [r1, #0x10]
0060c580  08 30 93 e5                                      ldr r3, [r3, #8]
0060c584  01 00 53 e3                                      cmp r3, #1
0060c588  d9 ff ff 1a                                      bne #0x60c4f4
0060c58c  04 00 a0 e1                                      mov r0, r4
0060c590  b9 fd ff eb                                      bl #0x60bc7c
0060c594  d6 ff ff ea                                      b #0x60c4f4

; FUNCTION 0x0060c59c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager
; alias: _ZN6glitch7collada26CAnimationStreamingManager17getAnimationBlockERNS0_24SAnimationBlockSearchKeyERN5boost13intrusive_ptrINS0_15CAnimationBlockEEE
; demangled: glitch::collada::CAnimationStreamingManager::getAnimationBlock(glitch::collada::SAnimationBlockSearchKey&, boost::intrusive_ptr<glitch::collada::CAnimationBlock>&)
; decoder-mode: arm
0060c59c  00 30 92 e5                                      ldr r3, [r2]
0060c5a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060c5a4  00 00 53 e3                                      cmp r3, #0
0060c5a8  02 40 a0 e1                                      mov r4, r2
0060c5ac  00 60 a0 e1                                      mov r6, r0
0060c5b0  01 50 a0 e1                                      mov r5, r1
0060c5b4  0a 00 00 0a                                      beq #0x60c5e4
0060c5b8  03 00 a0 e1                                      mov r0, r3
0060c5bc  63 fb ff eb                                      bl #0x60b350
0060c5c0  00 70 50 e2                                      subs r7, r0, #0
0060c5c4  06 00 00 0a                                      beq #0x60c5e4
0060c5c8  f2 ff ff eb                                      bl #0x60c598
0060c5cc  00 00 94 e5                                      ldr r0, [r4]
0060c5d0  00 70 84 e5                                      str r7, [r4]
0060c5d4  00 00 50 e3                                      cmp r0, #0
0060c5d8  0b 00 00 0a                                      beq #0x60c60c
0060c5dc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0060c5e0  7b fd ff ea                                      b #0x60bbd4
0060c5e4  05 10 a0 e1                                      mov r1, r5
0060c5e8  06 00 a0 e1                                      mov r0, r6
0060c5ec  0b ff ff eb                                      bl #0x60c220
0060c5f0  00 50 50 e2                                      subs r5, r0, #0
0060c5f4  04 00 00 0a                                      beq #0x60c60c
0060c5f8  e6 ff ff eb                                      bl #0x60c598
0060c5fc  00 00 94 e5                                      ldr r0, [r4]
0060c600  00 50 84 e5                                      str r5, [r4]
0060c604  00 00 50 e3                                      cmp r0, #0
0060c608  f3 ff ff 1a                                      bne #0x60c5dc
0060c60c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
