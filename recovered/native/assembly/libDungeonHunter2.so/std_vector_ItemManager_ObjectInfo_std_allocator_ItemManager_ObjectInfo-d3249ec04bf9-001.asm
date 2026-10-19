; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003eb0c0, declared_size=160, range_size=160, mode=arm
; class-group: std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >
; alias: _ZNSt6vectorIN11ItemManager10ObjectInfoESaIS1_EEC1ERKS3_
; demangled: std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >::vector(std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> > const&)
; decoder-mode: arm
003eb0c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003eb0c4  01 50 a0 e1                                      mov r5, r1
003eb0c8  00 30 95 e5                                      ldr r3, [r5]
003eb0cc  04 10 91 e5                                      ldr r1, [r1, #4]
003eb0d0  0c d0 4d e2                                      sub sp, sp, #0xc
003eb0d4  00 40 a0 e1                                      mov r4, r0
003eb0d8  01 10 63 e0                                      rsb r1, r3, r1
003eb0dc  00 60 a0 e3                                      mov r6, #0
003eb0e0  c1 11 a0 e1                                      asr r1, r1, #3
003eb0e4  08 20 8d e2                                      add r2, sp, #8
003eb0e8  04 10 22 e5                                      str r1, [r2, #-4]!
003eb0ec  00 60 84 e5                                      str r6, [r4]
003eb0f0  04 60 84 e5                                      str r6, [r4, #4]
003eb0f4  08 60 a0 e5                                      str r6, [r0, #8]!
003eb0f8  be ff ff eb                                      bl #0x3eaff8
003eb0fc  04 30 9d e5                                      ldr r3, [sp, #4]
003eb100  00 00 84 e5                                      str r0, [r4]
003eb104  04 00 84 e5                                      str r0, [r4, #4]
003eb108  83 31 80 e0                                      add r3, r0, r3, lsl #3
003eb10c  08 30 84 e5                                      str r3, [r4, #8]
003eb110  a0 00 95 e8                                      ldm r5, {r5, r7}
003eb114  07 70 65 e0                                      rsb r7, r5, r7
003eb118  c7 71 a0 e1                                      asr r7, r7, #3
003eb11c  06 00 57 e1                                      cmp r7, r6
003eb120  0a 00 00 da                                      ble #0x3eb150
003eb124  07 10 a0 e1                                      mov r1, r7
003eb128  05 20 a0 e1                                      mov r2, r5
003eb12c  06 c0 b2 e7                                      ldr ip, [r2, r6]!
003eb130  00 30 a0 e1                                      mov r3, r0
003eb134  01 10 51 e2                                      subs r1, r1, #1
003eb138  06 c0 a3 e7                                      str ip, [r3, r6]!
003eb13c  04 20 d2 e5                                      ldrb r2, [r2, #4]
003eb140  08 60 86 e2                                      add r6, r6, #8
003eb144  04 20 c3 e5                                      strb r2, [r3, #4]
003eb148  f6 ff ff 1a                                      bne #0x3eb128
003eb14c  87 01 80 e0                                      add r0, r0, r7, lsl #3
003eb150  04 00 84 e5                                      str r0, [r4, #4]
003eb154  04 00 a0 e1                                      mov r0, r4
003eb158  0c d0 8d e2                                      add sp, sp, #0xc
003eb15c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003eb218, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >
; alias: _ZNSt6vectorIN11ItemManager10ObjectInfoESaIS1_EE8_M_clearEv
; demangled: std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >::_M_clear()
; decoder-mode: arm
003eb218  0c 00 90 e8                                      ldm r0, {r2, r3}
003eb21c  02 00 53 e1                                      cmp r3, r2
003eb220  08 10 43 12                                      subne r1, r3, #8
003eb224  01 10 62 10                                      rsbne r1, r2, r1
003eb228  a1 11 e0 11                                      mvnne r1, r1, lsr #3
003eb22c  81 31 83 10                                      addne r3, r3, r1, lsl #3
003eb230  00 00 53 e3                                      cmp r3, #0
003eb234  08 10 90 e5                                      ldr r1, [r0, #8]
003eb238  1e ff 2f 01                                      bxeq lr
003eb23c  01 10 63 e0                                      rsb r1, r3, r1
003eb240  07 10 c1 e3                                      bic r1, r1, #7
003eb244  80 00 51 e3                                      cmp r1, #0x80
003eb248  01 00 00 8a                                      bhi #0x3eb254
003eb24c  02 00 a0 e1                                      mov r0, r2
003eb250  2a 77 0c ea                                      b #0x708f00
003eb254  02 00 a0 e1                                      mov r0, r2
003eb258  78 94 fc ea                                      b #0x310440

; FUNCTION 0x003eb25c, declared_size=284, range_size=284, mode=arm
; class-group: std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >
; alias: _ZNSt6vectorIN11ItemManager10ObjectInfoESaIS1_EEaSERKS3_
; demangled: std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >::operator=(std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> > const&)
; decoder-mode: arm
003eb25c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003eb260  00 00 51 e1                                      cmp r1, r0
003eb264  18 d0 4d e2                                      sub sp, sp, #0x18
003eb268  01 50 a0 e1                                      mov r5, r1
003eb26c  00 40 a0 e1                                      mov r4, r0
003eb270  16 00 00 0a                                      beq #0x3eb2d0
003eb274  04 30 91 e5                                      ldr r3, [r1, #4]
003eb278  00 c0 91 e5                                      ldr ip, [r1]
003eb27c  00 20 90 e5                                      ldr r2, [r0]
003eb280  08 10 90 e5                                      ldr r1, [r0, #8]
003eb284  03 60 6c e0                                      rsb r6, ip, r3
003eb288  c6 61 a0 e1                                      asr r6, r6, #3
003eb28c  01 10 62 e0                                      rsb r1, r2, r1
003eb290  c1 01 56 e1                                      cmp r6, r1, asr #3
003eb294  2b 00 00 8a                                      bhi #0x3eb348
003eb298  04 10 90 e5                                      ldr r1, [r0, #4]
003eb29c  01 10 62 e0                                      rsb r1, r2, r1
003eb2a0  c1 11 a0 e1                                      asr r1, r1, #3
003eb2a4  01 00 56 e1                                      cmp r6, r1
003eb2a8  0b 00 00 8a                                      bhi #0x3eb2dc
003eb2ac  0c 00 a0 e1                                      mov r0, ip
003eb2b0  03 10 a0 e1                                      mov r1, r3
003eb2b4  00 c0 a0 e3                                      mov ip, #0
003eb2b8  14 30 8d e2                                      add r3, sp, #0x14
003eb2bc  00 c0 8d e5                                      str ip, [sp]
003eb2c0  00 ff ff eb                                      bl #0x3eaec8
003eb2c4  00 80 94 e5                                      ldr r8, [r4]
003eb2c8  86 61 88 e0                                      add r6, r8, r6, lsl #3
003eb2cc  04 60 84 e5                                      str r6, [r4, #4]
003eb2d0  04 00 a0 e1                                      mov r0, r4
003eb2d4  18 d0 8d e2                                      add sp, sp, #0x18
003eb2d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003eb2dc  81 11 8c e0                                      add r1, ip, r1, lsl #3
003eb2e0  0c 00 a0 e1                                      mov r0, ip
003eb2e4  00 70 a0 e3                                      mov r7, #0
003eb2e8  10 30 8d e2                                      add r3, sp, #0x10
003eb2ec  00 70 8d e5                                      str r7, [sp]
003eb2f0  f4 fe ff eb                                      bl #0x3eaec8
003eb2f4  00 11 94 e8                                      ldm r4, {r8, ip}
003eb2f8  00 30 95 e5                                      ldr r3, [r5]
003eb2fc  04 10 95 e5                                      ldr r1, [r5, #4]
003eb300  0c 50 68 e0                                      rsb r5, r8, ip
003eb304  07 50 c5 e3                                      bic r5, r5, #7
003eb308  05 50 83 e0                                      add r5, r3, r5
003eb30c  01 10 65 e0                                      rsb r1, r5, r1
003eb310  c1 11 a0 e1                                      asr r1, r1, #3
003eb314  07 00 51 e1                                      cmp r1, r7
003eb318  ea ff ff da                                      ble #0x3eb2c8
003eb31c  05 20 a0 e1                                      mov r2, r5
003eb320  07 00 b2 e7                                      ldr r0, [r2, r7]!
003eb324  0c 30 a0 e1                                      mov r3, ip
003eb328  01 10 51 e2                                      subs r1, r1, #1
003eb32c  07 00 a3 e7                                      str r0, [r3, r7]!
003eb330  04 20 d2 e5                                      ldrb r2, [r2, #4]
003eb334  08 70 87 e2                                      add r7, r7, #8
003eb338  04 20 c3 e5                                      strb r2, [r3, #4]
003eb33c  f6 ff ff 1a                                      bne #0x3eb31c
003eb340  00 80 94 e5                                      ldr r8, [r4]
003eb344  df ff ff ea                                      b #0x3eb2c8
003eb348  18 10 8d e2                                      add r1, sp, #0x18
003eb34c  0c 60 21 e5                                      str r6, [r1, #-0xc]!
003eb350  0c 20 a0 e1                                      mov r2, ip
003eb354  43 ff ff eb                                      bl #0x3eb068
003eb358  00 80 a0 e1                                      mov r8, r0
003eb35c  04 00 a0 e1                                      mov r0, r4
003eb360  ac ff ff eb                                      bl #0x3eb218
003eb364  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003eb368  00 80 84 e5                                      str r8, [r4]
003eb36c  83 31 88 e0                                      add r3, r8, r3, lsl #3
003eb370  08 30 84 e5                                      str r3, [r4, #8]
003eb374  d3 ff ff ea                                      b #0x3eb2c8

; FUNCTION 0x003eb378, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >
; alias: _ZNSt6vectorIN11ItemManager10ObjectInfoESaIS1_EED1Ev
; demangled: std::vector<ItemManager::ObjectInfo, std::allocator<ItemManager::ObjectInfo> >::~vector()
; decoder-mode: arm
003eb378  10 40 2d e9                                      push {r4, lr}
003eb37c  00 40 a0 e1                                      mov r4, r0
003eb380  00 00 90 e5                                      ldr r0, [r0]
003eb384  00 00 50 e3                                      cmp r0, #0
003eb388  05 00 00 0a                                      beq #0x3eb3a4
003eb38c  08 10 94 e5                                      ldr r1, [r4, #8]
003eb390  01 10 60 e0                                      rsb r1, r0, r1
003eb394  07 10 c1 e3                                      bic r1, r1, #7
003eb398  80 00 51 e3                                      cmp r1, #0x80
003eb39c  02 00 00 8a                                      bhi #0x3eb3ac
003eb3a0  d6 76 0c eb                                      bl #0x708f00
003eb3a4  04 00 a0 e1                                      mov r0, r4
003eb3a8  10 80 bd e8                                      pop {r4, pc}
003eb3ac  23 94 fc eb                                      bl #0x310440
003eb3b0  04 00 a0 e1                                      mov r0, r4
003eb3b4  10 80 bd e8                                      pop {r4, pc}
