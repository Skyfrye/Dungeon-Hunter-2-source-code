; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00413748, declared_size=108, range_size=108, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManagerC2Ev
; demangled: FlashAnimManager::FlashAnimManager()
; decoder-mode: arm
00413748  00 30 a0 e1                                      mov r3, r0
0041374c  0f cd 80 e2                                      add ip, r0, #0x3c0
00413750  00 20 a0 e3                                      mov r2, #0
00413754  00 10 e0 e3                                      mvn r1, #0
00413758  00 20 83 e5                                      str r2, [r3]
0041375c  04 20 83 e5                                      str r2, [r3, #4]
00413760  08 20 83 e5                                      str r2, [r3, #8]
00413764  0c 20 83 e5                                      str r2, [r3, #0xc]
00413768  10 20 83 e5                                      str r2, [r3, #0x10]
0041376c  14 20 83 e5                                      str r2, [r3, #0x14]
00413770  18 10 83 e5                                      str r1, [r3, #0x18]
00413774  1c 20 83 e5                                      str r2, [r3, #0x1c]
00413778  20 20 c3 e5                                      strb r2, [r3, #0x20]
0041377c  50 30 83 e2                                      add r3, r3, #0x50
00413780  0c 00 53 e1                                      cmp r3, ip
00413784  f3 ff ff 1a                                      bne #0x413758
00413788  00 30 a0 e1                                      mov r3, r0
0041378c  c0 23 80 e5                                      str r2, [r0, #0x3c0]
00413790  c4 23 80 e5                                      str r2, [r0, #0x3c4]
00413794  c8 23 80 e5                                      str r2, [r0, #0x3c8]
00413798  cc 23 80 e5                                      str r2, [r0, #0x3cc]
0041379c  d4 23 80 e5                                      str r2, [r0, #0x3d4]
004137a0  d0 23 e3 e5                                      strb r2, [r3, #0x3d0]!
004137a4  dc 33 80 e5                                      str r3, [r0, #0x3dc]
004137a8  e0 23 80 e5                                      str r2, [r0, #0x3e0]
004137ac  d8 33 80 e5                                      str r3, [r0, #0x3d8]
004137b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004137b4, declared_size=108, range_size=108, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManagerC1Ev
; demangled: FlashAnimManager::FlashAnimManager()
; decoder-mode: arm
004137b4  00 30 a0 e1                                      mov r3, r0
004137b8  0f cd 80 e2                                      add ip, r0, #0x3c0
004137bc  00 20 a0 e3                                      mov r2, #0
004137c0  00 10 e0 e3                                      mvn r1, #0
004137c4  00 20 83 e5                                      str r2, [r3]
004137c8  04 20 83 e5                                      str r2, [r3, #4]
004137cc  08 20 83 e5                                      str r2, [r3, #8]
004137d0  0c 20 83 e5                                      str r2, [r3, #0xc]
004137d4  10 20 83 e5                                      str r2, [r3, #0x10]
004137d8  14 20 83 e5                                      str r2, [r3, #0x14]
004137dc  18 10 83 e5                                      str r1, [r3, #0x18]
004137e0  1c 20 83 e5                                      str r2, [r3, #0x1c]
004137e4  20 20 c3 e5                                      strb r2, [r3, #0x20]
004137e8  50 30 83 e2                                      add r3, r3, #0x50
004137ec  0c 00 53 e1                                      cmp r3, ip
004137f0  f3 ff ff 1a                                      bne #0x4137c4
004137f4  00 30 a0 e1                                      mov r3, r0
004137f8  c0 23 80 e5                                      str r2, [r0, #0x3c0]
004137fc  c4 23 80 e5                                      str r2, [r0, #0x3c4]
00413800  c8 23 80 e5                                      str r2, [r0, #0x3c8]
00413804  cc 23 80 e5                                      str r2, [r0, #0x3cc]
00413808  d4 23 80 e5                                      str r2, [r0, #0x3d4]
0041380c  d0 23 e3 e5                                      strb r2, [r3, #0x3d0]!
00413810  dc 33 80 e5                                      str r3, [r0, #0x3dc]
00413814  e0 23 80 e5                                      str r2, [r0, #0x3e0]
00413818  d8 33 80 e5                                      str r3, [r0, #0x3d8]
0041381c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00413820, declared_size=32, range_size=32, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager16StopAllFlashAnimEv
; demangled: FlashAnimManager::StopAllFlashAnim()
; decoder-mode: arm
00413820  00 30 a0 e3                                      mov r3, #0
00413824  03 20 a0 e1                                      mov r2, r3
00413828  01 30 83 e2                                      add r3, r3, #1
0041382c  0c 00 53 e3                                      cmp r3, #0xc
00413830  14 20 80 e5                                      str r2, [r0, #0x14]
00413834  50 00 80 e2                                      add r0, r0, #0x50
00413838  fa ff ff 1a                                      bne #0x413828
0041383c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00413840, declared_size=40, range_size=40, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager17ResetScanForAnimsEP6MenuFX
; demangled: FlashAnimManager::ResetScanForAnims(MenuFX*)
; decoder-mode: arm
00413840  c0 33 90 e5                                      ldr r3, [r0, #0x3c0]
00413844  01 00 53 e1                                      cmp r3, r1
00413848  1e ff 2f 11                                      bxne lr
0041384c  c4 33 90 e5                                      ldr r3, [r0, #0x3c4]
00413850  c8 23 90 e5                                      ldr r2, [r0, #0x3c8]
00413854  00 10 a0 e3                                      mov r1, #0
00413858  c0 13 80 e5                                      str r1, [r0, #0x3c0]
0041385c  02 00 53 e1                                      cmp r3, r2
00413860  c8 33 80 15                                      strne r3, [r0, #0x3c8]
00413864  ed ff ff ea                                      b #0x413820

; FUNCTION 0x00413868, declared_size=24, range_size=24, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager13StopFlashAnimEi
; demangled: FlashAnimManager::StopFlashAnim(int)
; decoder-mode: arm
00413868  01 11 81 e0                                      add r1, r1, r1, lsl #2
0041386c  01 10 81 e2                                      add r1, r1, #1
00413870  01 12 80 e0                                      add r1, r0, r1, lsl #4
00413874  00 30 a0 e3                                      mov r3, #0
00413878  04 30 81 e5                                      str r3, [r1, #4]
0041387c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00413880, declared_size=44, range_size=44, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager26FindAvailableAnimContextIDEv
; demangled: FlashAnimManager::FindAvailableAnimContextID()
; decoder-mode: arm
00413880  00 30 a0 e3                                      mov r3, #0
00413884  14 20 90 e5                                      ldr r2, [r0, #0x14]
00413888  50 00 80 e2                                      add r0, r0, #0x50
0041388c  01 00 12 e3                                      tst r2, #1
00413890  03 00 00 0a                                      beq #0x4138a4
00413894  01 30 83 e2                                      add r3, r3, #1
00413898  0c 00 53 e3                                      cmp r3, #0xc
0041389c  f8 ff ff 1a                                      bne #0x413884
004138a0  00 30 e0 e3                                      mvn r3, #0
004138a4  03 00 a0 e1                                      mov r0, r3
004138a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004138ac, declared_size=380, range_size=380, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager6UpdateEv
; demangled: FlashAnimManager::Update()
; decoder-mode: arm
004138ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004138b0  68 41 9f e5                                      ldr r4, [pc, #0x168]
004138b4  68 61 9f e5                                      ldr r6, [pc, #0x168]
004138b8  0c d0 4d e2                                      sub sp, sp, #0xc
004138bc  04 40 8f e0                                      add r4, pc, r4
004138c0  00 a0 a0 e1                                      mov sl, r0
004138c4  06 00 94 e7                                      ldr r0, [r4, r6]
004138c8  31 2f fc eb                                      bl #0x31f594
004138cc  00 00 50 e3                                      cmp r0, #0
004138d0  50 00 00 0a                                      beq #0x413a18
004138d4  30 31 90 e5                                      ldr r3, [r0, #0x130]
004138d8  01 00 53 e3                                      cmp r3, #1
004138dc  4d 00 00 da                                      ble #0x413a18
004138e0  30 31 90 e5                                      ldr r3, [r0, #0x130]
004138e4  1a 00 53 e3                                      cmp r3, #0x1a
004138e8  00 30 a0 c3                                      movgt r3, #0
004138ec  01 30 a0 d3                                      movle r3, #1
004138f0  c0 03 9a e5                                      ldr r0, [sl, #0x3c0]
004138f4  00 00 50 e3                                      cmp r0, #0
004138f8  01 00 00 0a                                      beq #0x413904
004138fc  00 00 53 e3                                      cmp r3, #0
00413900  3b 00 00 0a                                      beq #0x4139f4
00413904  21 50 a0 e3                                      mov r5, #0x21
00413908  06 00 94 e7                                      ldr r0, [r4, r6]
0041390c  56 2f fc eb                                      bl #0x31f66c
00413910  00 80 a0 e3                                      mov r8, #0
00413914  0a 40 a0 e1                                      mov r4, sl
00413918  60 b0 a0 e3                                      mov fp, #0x60
0041391c  0c 90 a0 e3                                      mov sb, #0xc
00413920  04 00 8d e5                                      str r0, [sp, #4]
00413924  14 70 94 e5                                      ldr r7, [r4, #0x14]
00413928  01 00 17 e3                                      tst r7, #1
0041392c  1b 00 00 0a                                      beq #0x4139a0
00413930  04 10 9d e5                                      ldr r1, [sp, #4]
00413934  10 30 94 e5                                      ldr r3, [r4, #0x10]
00413938  18 60 94 e5                                      ldr r6, [r4, #0x18]
0041393c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00413940  03 30 81 e0                                      add r3, r1, r3
00413944  10 30 84 e5                                      str r3, [r4, #0x10]
00413948  c4 13 9a e5                                      ldr r1, [sl, #0x3c4]
0041394c  05 00 53 e1                                      cmp r3, r5
00413950  02 70 07 e2                                      and r7, r7, #2
00413954  9b 16 26 e0                                      mla r6, fp, r6, r1
00413958  99 62 26 e0                                      mla r6, sb, r2, r6
0041395c  03 20 65 e0                                      rsb r2, r5, r3
00413960  0e 00 00 da                                      ble #0x4139a0
00413964  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00413968  10 20 84 e5                                      str r2, [r4, #0x10]
0041396c  01 30 83 e2                                      add r3, r3, #1
00413970  0c 30 84 e5                                      str r3, [r4, #0xc]
00413974  00 30 96 e5                                      ldr r3, [r6]
00413978  03 00 a0 e1                                      mov r0, r3
0041397c  00 30 93 e5                                      ldr r3, [r3]
00413980  0f e0 a0 e1                                      mov lr, pc
00413984  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
00413988  00 00 57 e3                                      cmp r7, #0
0041398c  09 00 00 1a                                      bne #0x4139b8
00413990  10 30 94 e5                                      ldr r3, [r4, #0x10]
00413994  05 00 53 e1                                      cmp r3, r5
00413998  03 20 65 e0                                      rsb r2, r5, r3
0041399c  f0 ff ff ca                                      bgt #0x413964
004139a0  01 80 88 e2                                      add r8, r8, #1
004139a4  0c 00 58 e3                                      cmp r8, #0xc
004139a8  50 40 84 e2                                      add r4, r4, #0x50
004139ac  dc ff ff 1a                                      bne #0x413924
004139b0  0c d0 8d e2                                      add sp, sp, #0xc
004139b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004139b8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004139bc  03 00 50 e1                                      cmp r0, r3
004139c0  f2 ff ff ca                                      bgt #0x413990
004139c4  08 10 a0 e1                                      mov r1, r8
004139c8  0a 00 a0 e1                                      mov r0, sl
004139cc  a5 ff ff eb                                      bl #0x413868
004139d0  18 10 94 e5                                      ldr r1, [r4, #0x18]
004139d4  c4 23 9a e5                                      ldr r2, [sl, #0x3c4]
004139d8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004139dc  9b 21 22 e0                                      mla r2, fp, r1, r2
004139e0  99 23 23 e0                                      mla r3, sb, r3, r2
004139e4  00 20 a0 e3                                      mov r2, #0
004139e8  08 20 c3 e5                                      strb r2, [r3, #8]
004139ec  10 30 94 e5                                      ldr r3, [r4, #0x10]
004139f0  e7 ff ff ea                                      b #0x413994
004139f4  ac 50 0e eb                                      bl #0x7a7cac
004139f8  e8 81 0d eb                                      bl #0x7741a0
004139fc  00 10 a0 e1                                      mov r1, r0
00413a00  11 03 a0 e3                                      mov r0, #0x44000000
00413a04  7a 08 80 e2                                      add r0, r0, #0x7a0000
00413a08  a1 ec fb eb                                      bl #0x30ec94
00413a0c  ae ea fb eb                                      bl #0x30e4cc
00413a10  00 50 a0 e1                                      mov r5, r0
00413a14  bb ff ff ea                                      b #0x413908
00413a18  00 30 a0 e3                                      mov r3, #0
00413a1c  b3 ff ff ea                                      b #0x4138f0
; mapping-symbol data/literal pool
00413a20  d4 11 58 00 f4 37 00 00                          .byte 0xd4, 0x11, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00413a28, declared_size=84, range_size=84, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager18UpdateAnimInstanceEP16FlashAnimContext
; demangled: FlashAnimManager::UpdateAnimInstance(FlashAnimContext*)
; decoder-mode: arm
00413a28  04 40 2d e5                                      str r4, [sp, #-4]!
00413a2c  18 20 91 e5                                      ldr r2, [r1, #0x18]
00413a30  c4 43 90 e5                                      ldr r4, [r0, #0x3c4]
00413a34  1c c0 91 e5                                      ldr ip, [r1, #0x1c]
00413a38  01 30 a0 e1                                      mov r3, r1
00413a3c  60 10 a0 e3                                      mov r1, #0x60
00413a40  91 42 21 e0                                      mla r1, r1, r2, r4
00413a44  0c 20 a0 e3                                      mov r2, #0xc
00413a48  92 1c 22 e0                                      mla r2, r2, ip, r1
00413a4c  04 10 92 e5                                      ldr r1, [r2, #4]
00413a50  00 00 51 e3                                      cmp r1, #0
00413a54  05 00 00 0a                                      beq #0x413a70
00413a58  18 20 9f e5                                      ldr r2, [pc, #0x18]
00413a5c  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
00413a60  20 30 83 e2                                      add r3, r3, #0x20
00413a64  02 20 8f e0                                      add r2, pc, r2
00413a68  10 00 bd e8                                      ldm sp!, {r4}
00413a6c  82 56 0e ea                                      b #0x7a947c
00413a70  10 00 bd e8                                      ldm sp!, {r4}
00413a74  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00413a78  8c b3 4d 00                                      .byte 0x8c, 0xb3, 0x4d, 0x00

; FUNCTION 0x00413b1c, declared_size=336, range_size=336, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager16FindAnimInstanceEi
; demangled: FlashAnimManager::FindAnimInstance(int)
; decoder-mode: arm
00413b1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00413b20  34 51 9f e5                                      ldr r5, [pc, #0x134]
00413b24  34 71 9f e5                                      ldr r7, [pc, #0x134]
00413b28  60 80 a0 e3                                      mov r8, #0x60
00413b2c  05 50 8f e0                                      add r5, pc, r5
00413b30  07 30 95 e7                                      ldr r3, [r5, r7]
00413b34  c4 a3 90 e5                                      ldr sl, [r0, #0x3c4]
00413b38  98 01 08 e0                                      mul r8, r8, r1
00413b3c  00 30 93 e5                                      ldr r3, [r3]
00413b40  64 d0 4d e2                                      sub sp, sp, #0x64
00413b44  08 20 8a e0                                      add r2, sl, r8
00413b48  00 90 a0 e1                                      mov sb, r0
00413b4c  00 40 a0 e3                                      mov r4, #0
00413b50  5c 30 8d e5                                      str r3, [sp, #0x5c]
00413b54  02 60 a0 e1                                      mov r6, r2
00413b58  08 30 d6 e5                                      ldrb r3, [r6, #8]
00413b5c  00 00 53 e3                                      cmp r3, #0
00413b60  05 00 00 0a                                      beq #0x413b7c
00413b64  01 40 84 e2                                      add r4, r4, #1
00413b68  08 00 54 e3                                      cmp r4, #8
00413b6c  0c 60 86 e2                                      add r6, r6, #0xc
00413b70  f8 ff ff 1a                                      bne #0x413b58
00413b74  54 60 82 e2                                      add r6, r2, #0x54
00413b78  07 40 a0 e3                                      mov r4, #7
00413b7c  00 30 96 e5                                      ldr r3, [r6]
00413b80  00 00 53 e3                                      cmp r3, #0
00413b84  09 00 00 0a                                      beq #0x413bb0
00413b88  07 30 95 e7                                      ldr r3, [r5, r7]
00413b8c  01 20 a0 e3                                      mov r2, #1
00413b90  08 20 c6 e5                                      strb r2, [r6, #8]
00413b94  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00413b98  00 30 93 e5                                      ldr r3, [r3]
00413b9c  04 00 a0 e1                                      mov r0, r4
00413ba0  03 00 52 e1                                      cmp r2, r3
00413ba4  2b 00 00 1a                                      bne #0x413c58
00413ba8  64 d0 8d e2                                      add sp, sp, #0x64
00413bac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00413bb0  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00413bb4  08 30 8d e2                                      add r3, sp, #8
00413bb8  04 20 a0 e1                                      mov r2, r4
00413bbc  01 10 8f e0                                      add r1, pc, r1
00413bc0  03 00 a0 e1                                      mov r0, r3
00413bc4  04 30 8d e5                                      str r3, [sp, #4]
00413bc8  c5 eb fb eb                                      bl #0x30eae4
00413bcc  08 20 9a e7                                      ldr r2, [sl, r8]
00413bd0  04 30 9d e5                                      ldr r3, [sp, #4]
00413bd4  48 b0 8d e2                                      add fp, sp, #0x48
00413bd8  0b 00 a0 e1                                      mov r0, fp
00413bdc  03 10 a0 e1                                      mov r1, r3
00413be0  00 30 92 e5                                      ldr r3, [r2]
00413be4  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
00413be8  04 30 8d e5                                      str r3, [sp, #4]
00413bec  a2 ff ff eb                                      bl #0x413a7c
00413bf0  08 80 9a e7                                      ldr r8, [sl, r8]
00413bf4  3c 00 88 e2                                      add r0, r8, #0x3c
00413bf8  51 c9 fd eb                                      bl #0x386144
00413bfc  40 00 98 e5                                      ldr r0, [r8, #0x40]
00413c00  49 ac 0d eb                                      bl #0x77ed2c
00413c04  04 30 9d e5                                      ldr r3, [sp, #4]
00413c08  00 20 a0 e1                                      mov r2, r0
00413c0c  0b 10 a0 e1                                      mov r1, fp
00413c10  08 00 a0 e1                                      mov r0, r8
00413c14  33 ff 2f e1                                      blx r3
00413c18  00 00 86 e5                                      str r0, [r6]
00413c1c  d8 34 dd e1                                      ldrsb r3, [sp, #0x48]
00413c20  00 20 a0 e1                                      mov r2, r0
00413c24  01 00 73 e3                                      cmn r3, #1
00413c28  05 00 00 0a                                      beq #0x413c44
00413c2c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00413c30  c0 03 99 e5                                      ldr r0, [sb, #0x3c0]
00413c34  01 10 8f e0                                      add r1, pc, r1
00413c38  91 53 0e eb                                      bl #0x7a8a84
00413c3c  04 00 86 e5                                      str r0, [r6, #4]
00413c40  d0 ff ff ea                                      b #0x413b88
00413c44  54 00 9d e5                                      ldr r0, [sp, #0x54]
00413c48  50 10 9d e5                                      ldr r1, [sp, #0x50]
00413c4c  b9 fb 0c eb                                      bl #0x752b38
00413c50  00 20 96 e5                                      ldr r2, [r6]
00413c54  f4 ff ff ea                                      b #0x413c2c
00413c58  ac e9 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00413c5c  64 0f 58 00 ac 40 00 00 ac 44 4b 00 44 44 4b 00  .byte 0x64, 0x0f, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0x44, 0x4b, 0x00, 0x44, 0x44, 0x4b, 0x00

; FUNCTION 0x00413c6c, declared_size=136, range_size=136, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager13PlayFlashAnimEiiiii
; demangled: FlashAnimManager::PlayFlashAnim(int, int, int, int, int)
; decoder-mode: arm
00413c6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00413c70  01 40 a0 e1                                      mov r4, r1
00413c74  02 50 a0 e1                                      mov r5, r2
00413c78  03 90 a0 e1                                      mov sb, r3
00413c7c  00 60 a0 e1                                      mov r6, r0
00413c80  fe fe ff eb                                      bl #0x413880
00413c84  00 80 50 e2                                      subs r8, r0, #0
00413c88  00 70 a0 b3                                      movlt r7, #0
00413c8c  16 00 00 ba                                      blt #0x413cec
00413c90  50 a0 a0 e3                                      mov sl, #0x50
00413c94  9a 08 0a e0                                      mul sl, sl, r8
00413c98  04 10 a0 e1                                      mov r1, r4
00413c9c  0a 70 86 e0                                      add r7, r6, sl
00413ca0  18 40 87 e5                                      str r4, [r7, #0x18]
00413ca4  06 00 a0 e1                                      mov r0, r6
00413ca8  9b ff ff eb                                      bl #0x413b1c
00413cac  0a 10 a0 e3                                      mov r1, #0xa
00413cb0  24 20 9d e5                                      ldr r2, [sp, #0x24]
00413cb4  91 08 01 e0                                      mul r1, r1, r8
00413cb8  1c 00 87 e5                                      str r0, [r7, #0x1c]
00413cbc  0a 50 86 e7                                      str r5, [r6, sl]
00413cc0  04 90 87 e5                                      str sb, [r7, #4]
00413cc4  20 00 9d e5                                      ldr r0, [sp, #0x20]
00413cc8  08 81 88 e0                                      add r8, r8, r8, lsl #2
00413ccc  01 80 88 e2                                      add r8, r8, #1
00413cd0  81 11 86 e0                                      add r1, r6, r1, lsl #3
00413cd4  0c 00 81 e5                                      str r0, [r1, #0xc]
00413cd8  08 32 86 e0                                      add r3, r6, r8, lsl #4
00413cdc  01 20 82 e3                                      orr r2, r2, #1
00413ce0  00 10 a0 e3                                      mov r1, #0
00413ce4  08 12 86 e7                                      str r1, [r6, r8, lsl #4]
00413ce8  04 20 83 e5                                      str r2, [r3, #4]
00413cec  07 00 a0 e1                                      mov r0, r7
00413cf0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00413cf4, declared_size=208, range_size=208, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager13PlayFlashAnimEiRKN6glitch4core8vector3dIfEEii
; demangled: FlashAnimManager::PlayFlashAnim(int, glitch::core::vector3d<float> const&, int, int)
; decoder-mode: arm
00413cf4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00413cf8  14 d0 4d e2                                      sub sp, sp, #0x14
00413cfc  00 40 a0 e1                                      mov r4, r0
00413d00  01 50 a0 e1                                      mov r5, r1
00413d04  02 00 a0 e1                                      mov r0, r2
00413d08  08 10 8d e2                                      add r1, sp, #8
00413d0c  00 20 a0 e3                                      mov r2, #0
00413d10  60 70 a0 e3                                      mov r7, #0x60
00413d14  0c 20 8d e5                                      str r2, [sp, #0xc]
00413d18  08 20 8d e5                                      str r2, [sp, #8]
00413d1c  03 60 a0 e1                                      mov r6, r3
00413d20  97 05 07 e0                                      mul r7, r7, r5
00413d24  c1 ea 03 eb                                      bl #0x50e830
00413d28  c4 83 94 e5                                      ldr r8, [r4, #0x3c4]
00413d2c  08 b0 9d e5                                      ldr fp, [sp, #8]
00413d30  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00413d34  07 30 98 e7                                      ldr r3, [r8, r7]
00413d38  03 00 a0 e1                                      mov r0, r3
00413d3c  00 30 93 e5                                      ldr r3, [r3]
00413d40  0f e0 a0 e1                                      mov lr, pc
00413d44  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00413d48  fa 09 00 eb                                      bl #0x416538
00413d4c  07 30 98 e7                                      ldr r3, [r8, r7]
00413d50  00 90 a0 e1                                      mov sb, r0
00413d54  03 00 a0 e1                                      mov r0, r3
00413d58  00 30 93 e5                                      ldr r3, [r3]
00413d5c  0f e0 a0 e1                                      mov lr, pc
00413d60  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00413d64  03 0a 00 eb                                      bl #0x416578
00413d68  00 80 a0 e1                                      mov r8, r0
00413d6c  0b 00 a0 e1                                      mov r0, fp
00413d70  fb ea fb eb                                      bl #0x30e964
00413d74  00 10 a0 e1                                      mov r1, r0
00413d78  09 00 a0 e1                                      mov r0, sb
00413d7c  fa eb fb eb                                      bl #0x30ed6c
00413d80  d1 e9 fb eb                                      bl #0x30e4cc
00413d84  00 70 a0 e1                                      mov r7, r0
00413d88  0a 00 a0 e1                                      mov r0, sl
00413d8c  f4 ea fb eb                                      bl #0x30e964
00413d90  00 10 a0 e1                                      mov r1, r0
00413d94  08 00 a0 e1                                      mov r0, r8
00413d98  f3 eb fb eb                                      bl #0x30ed6c
00413d9c  ca e9 fb eb                                      bl #0x30e4cc
00413da0  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00413da4  00 30 a0 e1                                      mov r3, r0
00413da8  05 10 a0 e1                                      mov r1, r5
00413dac  04 00 a0 e1                                      mov r0, r4
00413db0  07 20 a0 e1                                      mov r2, r7
00413db4  40 10 8d e8                                      stm sp, {r6, ip}
00413db8  ab ff ff eb                                      bl #0x413c6c
00413dbc  14 d0 8d e2                                      add sp, sp, #0x14
00413dc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00413dc4, declared_size=80, range_size=80, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager23PlayScrollingCombatTextEiRKN6glitch4core8vector3dIfEEPKci
; demangled: FlashAnimManager::PlayScrollingCombatText(int, glitch::core::vector3d<float> const&, char const*, int)
; decoder-mode: arm
00413dc4  70 40 2d e9                                      push {r4, r5, r6, lr}
00413dc8  02 c0 a0 e3                                      mov ip, #2
00413dcc  08 d0 4d e2                                      sub sp, sp, #8
00413dd0  03 50 a0 e1                                      mov r5, r3
00413dd4  00 30 a0 e3                                      mov r3, #0
00413dd8  00 c0 8d e5                                      str ip, [sp]
00413ddc  00 40 a0 e1                                      mov r4, r0
00413de0  c3 ff ff eb                                      bl #0x413cf4
00413de4  00 60 50 e2                                      subs r6, r0, #0
00413de8  06 00 00 0a                                      beq #0x413e08
00413dec  18 30 9d e5                                      ldr r3, [sp, #0x18]
00413df0  05 10 a0 e1                                      mov r1, r5
00413df4  08 30 86 e5                                      str r3, [r6, #8]
00413df8  3b ff ff eb                                      bl #0x413aec
00413dfc  04 00 a0 e1                                      mov r0, r4
00413e00  06 10 a0 e1                                      mov r1, r6
00413e04  07 ff ff eb                                      bl #0x413a28
00413e08  06 00 a0 e1                                      mov r0, r6
00413e0c  08 d0 8d e2                                      add sp, sp, #8
00413e10  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00413e90, declared_size=132, range_size=132, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager11GetInstanceEv
; demangled: FlashAnimManager::GetInstance()
; decoder-mode: arm
00413e90  70 40 2d e9                                      push {r4, r5, r6, lr}
00413e94  64 50 9f e5                                      ldr r5, [pc, #0x64]
00413e98  64 40 9f e5                                      ldr r4, [pc, #0x64]
00413e9c  05 50 8f e0                                      add r5, pc, r5
00413ea0  00 30 95 e5                                      ldr r3, [r5]
00413ea4  04 40 8f e0                                      add r4, pc, r4
00413ea8  01 00 13 e3                                      tst r3, #1
00413eac  03 00 00 0a                                      beq #0x413ec0
00413eb0  50 00 9f e5                                      ldr r0, [pc, #0x50]
00413eb4  00 00 8f e0                                      add r0, pc, r0
00413eb8  04 00 80 e2                                      add r0, r0, #4
00413ebc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00413ec0  05 00 a0 e1                                      mov r0, r5
00413ec4  28 ea fb eb                                      bl #0x30e76c
00413ec8  00 00 50 e3                                      cmp r0, #0
00413ecc  f7 ff ff 0a                                      beq #0x413eb0
00413ed0  04 60 85 e2                                      add r6, r5, #4
00413ed4  06 00 a0 e1                                      mov r0, r6
00413ed8  35 fe ff eb                                      bl #0x4137b4
00413edc  05 00 a0 e1                                      mov r0, r5
00413ee0  d5 ea fb eb                                      bl #0x30ea3c
00413ee4  20 30 9f e5                                      ldr r3, [pc, #0x20]
00413ee8  06 00 a0 e1                                      mov r0, r6
00413eec  03 10 94 e7                                      ldr r1, [r4, r3]
00413ef0  18 30 9f e5                                      ldr r3, [pc, #0x18]
00413ef4  03 20 94 e7                                      ldr r2, [r4, r3]
00413ef8  01 e9 fb eb                                      bl #0x30e304
00413efc  eb ff ff ea                                      b #0x413eb0
; mapping-symbol data/literal pool
00413f00  c0 f3 58 00 ec 0b 58 00 a8 f3 58 00 08 0e 00 00  .byte 0xc0, 0xf3, 0x58, 0x00, 0xec, 0x0b, 0x58, 0x00, 0xa8, 0xf3, 0x58, 0x00, 0x08, 0x0e, 0x00, 0x00
00413f10  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00413fa0, declared_size=80, range_size=80, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager24PlayScrollingCombatValueEiRKN6glitch4core8vector3dIfEEii
; demangled: FlashAnimManager::PlayScrollingCombatValue(int, glitch::core::vector3d<float> const&, int, int)
; decoder-mode: arm
00413fa0  70 40 2d e9                                      push {r4, r5, r6, lr}
00413fa4  02 c0 a0 e3                                      mov ip, #2
00413fa8  08 d0 4d e2                                      sub sp, sp, #8
00413fac  03 50 a0 e1                                      mov r5, r3
00413fb0  00 30 a0 e3                                      mov r3, #0
00413fb4  00 c0 8d e5                                      str ip, [sp]
00413fb8  00 40 a0 e1                                      mov r4, r0
00413fbc  4c ff ff eb                                      bl #0x413cf4
00413fc0  00 60 50 e2                                      subs r6, r0, #0
00413fc4  06 00 00 0a                                      beq #0x413fe4
00413fc8  18 30 9d e5                                      ldr r3, [sp, #0x18]
00413fcc  05 10 a0 e1                                      mov r1, r5
00413fd0  08 30 86 e5                                      str r3, [r6, #8]
00413fd4  ce ff ff eb                                      bl #0x413f14
00413fd8  04 00 a0 e1                                      mov r0, r4
00413fdc  06 10 a0 e1                                      mov r1, r6
00413fe0  90 fe ff eb                                      bl #0x413a28
00413fe4  06 00 a0 e1                                      mov r0, r6
00413fe8  08 d0 8d e2                                      add sp, sp, #8
00413fec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00414128, declared_size=88, range_size=88, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManagerD1Ev
; demangled: FlashAnimManager::~FlashAnimManager()
; decoder-mode: arm
00414128  70 40 2d e9                                      push {r4, r5, r6, lr}
0041412c  e0 33 90 e5                                      ldr r3, [r0, #0x3e0]
00414130  00 40 a0 e1                                      mov r4, r0
00414134  00 00 53 e3                                      cmp r3, #0
00414138  03 00 00 1a                                      bne #0x41414c
0041413c  f1 0f 84 e2                                      add r0, r4, #0x3c4
00414140  e1 ff ff eb                                      bl #0x4140cc
00414144  04 00 a0 e1                                      mov r0, r4
00414148  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041414c  3d 5e 80 e2                                      add r5, r0, #0x3d0
00414150  05 00 a0 e1                                      mov r0, r5
00414154  d4 13 94 e5                                      ldr r1, [r4, #0x3d4]
00414158  78 76 ff eb                                      bl #0x3f1b40
0041415c  00 30 a0 e3                                      mov r3, #0
00414160  dc 53 84 e5                                      str r5, [r4, #0x3dc]
00414164  e0 33 84 e5                                      str r3, [r4, #0x3e0]
00414168  d8 53 84 e5                                      str r5, [r4, #0x3d8]
0041416c  d4 33 84 e5                                      str r3, [r4, #0x3d4]
00414170  f1 0f 84 e2                                      add r0, r4, #0x3c4
00414174  d4 ff ff eb                                      bl #0x4140cc
00414178  04 00 a0 e1                                      mov r0, r4
0041417c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00414180, declared_size=88, range_size=88, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManagerD2Ev
; demangled: FlashAnimManager::~FlashAnimManager()
; decoder-mode: arm
00414180  70 40 2d e9                                      push {r4, r5, r6, lr}
00414184  e0 33 90 e5                                      ldr r3, [r0, #0x3e0]
00414188  00 40 a0 e1                                      mov r4, r0
0041418c  00 00 53 e3                                      cmp r3, #0
00414190  03 00 00 1a                                      bne #0x4141a4
00414194  f1 0f 84 e2                                      add r0, r4, #0x3c4
00414198  cb ff ff eb                                      bl #0x4140cc
0041419c  04 00 a0 e1                                      mov r0, r4
004141a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004141a4  3d 5e 80 e2                                      add r5, r0, #0x3d0
004141a8  05 00 a0 e1                                      mov r0, r5
004141ac  d4 13 94 e5                                      ldr r1, [r4, #0x3d4]
004141b0  62 76 ff eb                                      bl #0x3f1b40
004141b4  00 30 a0 e3                                      mov r3, #0
004141b8  dc 53 84 e5                                      str r5, [r4, #0x3dc]
004141bc  e0 33 84 e5                                      str r3, [r4, #0x3e0]
004141c0  d8 53 84 e5                                      str r5, [r4, #0x3d8]
004141c4  d4 33 84 e5                                      str r3, [r4, #0x3d4]
004141c8  f1 0f 84 e2                                      add r0, r4, #0x3c4
004141cc  be ff ff eb                                      bl #0x4140cc
004141d0  04 00 a0 e1                                      mov r0, r4
004141d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00414260, declared_size=548, range_size=548, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager4DrawEv
; demangled: FlashAnimManager::Draw()
; decoder-mode: arm
00414260  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00414264  08 12 9f e5                                      ldr r1, [pc, #0x208]
00414268  08 22 9f e5                                      ldr r2, [pc, #0x208]
0041426c  3c d0 4d e2                                      sub sp, sp, #0x3c
00414270  01 10 8f e0                                      add r1, pc, r1
00414274  02 30 91 e7                                      ldr r3, [r1, r2]
00414278  14 20 8d e5                                      str r2, [sp, #0x14]
0041427c  f8 21 9f e5                                      ldr r2, [pc, #0x1f8]
00414280  00 30 93 e5                                      ldr r3, [r3]
00414284  00 60 a0 e1                                      mov r6, r0
00414288  02 50 91 e7                                      ldr r5, [r1, r2]
0041428c  34 30 8d e5                                      str r3, [sp, #0x34]
00414290  0c 10 8d e5                                      str r1, [sp, #0xc]
00414294  05 00 a0 e1                                      mov r0, r5
00414298  7a 8d fc eb                                      bl #0x337888
0041429c  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
004142a0  1c 40 8d e2                                      add r4, sp, #0x1c
004142a4  18 20 8d e2                                      add r2, sp, #0x18
004142a8  01 10 8f e0                                      add r1, pc, r1
004142ac  04 00 a0 e1                                      mov r0, r4
004142b0  8d ff fb eb                                      bl #0x3140ec
004142b4  05 00 a0 e1                                      mov r0, r5
004142b8  04 10 a0 e1                                      mov r1, r4
004142bc  f1 8d fc eb                                      bl #0x337a88
004142c0  00 50 a0 e1                                      mov r5, r0
004142c4  30 00 9d e5                                      ldr r0, [sp, #0x30]
004142c8  04 00 50 e1                                      cmp r0, r4
004142cc  06 00 00 0a                                      beq #0x4142ec
004142d0  00 00 50 e3                                      cmp r0, #0
004142d4  04 00 00 0a                                      beq #0x4142ec
004142d8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
004142dc  01 10 60 e0                                      rsb r1, r0, r1
004142e0  80 00 51 e3                                      cmp r1, #0x80
004142e4  5f 00 00 8a                                      bhi #0x414468
004142e8  04 d3 0b eb                                      bl #0x708f00
004142ec  00 00 55 e3                                      cmp r5, #0
004142f0  53 00 00 1a                                      bne #0x414444
004142f4  c0 03 96 e5                                      ldr r0, [r6, #0x3c0]
004142f8  00 00 50 e3                                      cmp r0, #0
004142fc  50 00 00 0a                                      beq #0x414444
00414300  05 10 a0 e1                                      mov r1, r5
00414304  6a 4e 0e eb                                      bl #0x7a7cb4
00414308  c0 03 96 e5                                      ldr r0, [r6, #0x3c0]
0041430c  fa 55 0e eb                                      bl #0x7a9afc
00414310  06 40 a0 e1                                      mov r4, r6
00414314  0f ad 86 e2                                      add sl, r6, #0x3c0
00414318  14 30 94 e5                                      ldr r3, [r4, #0x14]
0041431c  01 00 13 e3                                      tst r3, #1
00414320  3f 00 00 0a                                      beq #0x414424
00414324  18 50 94 e5                                      ldr r5, [r4, #0x18]
00414328  c4 33 96 e5                                      ldr r3, [r6, #0x3c4]
0041432c  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
00414330  60 00 a0 e3                                      mov r0, #0x60
00414334  0c 10 a0 e3                                      mov r1, #0xc
00414338  90 35 25 e0                                      mla r5, r0, r5, r3
0041433c  91 08 07 e0                                      mul r7, r1, r8
00414340  07 b0 95 e7                                      ldr fp, [r5, r7]
00414344  07 c0 85 e0                                      add ip, r5, r7
00414348  00 00 5b e3                                      cmp fp, #0
0041434c  34 00 00 0a                                      beq #0x414424
00414350  4c 30 9b e5                                      ldr r3, [fp, #0x4c]
00414354  41 14 a0 e3                                      mov r1, #0x41000000
00414358  0a 16 81 e2                                      add r1, r1, #0xa00000
0041435c  08 00 93 e5                                      ldr r0, [r3, #8]
00414360  04 c0 8d e5                                      str ip, [sp, #4]
00414364  08 30 8d e5                                      str r3, [sp, #8]
00414368  49 ea fb eb                                      bl #0x30ec94
0041436c  56 e8 fb eb                                      bl #0x30e4cc
00414370  08 30 9d e5                                      ldr r3, [sp, #8]
00414374  41 14 a0 e3                                      mov r1, #0x41000000
00414378  0a 16 81 e2                                      add r1, r1, #0xa00000
0041437c  00 90 a0 e1                                      mov sb, r0
00414380  14 00 93 e5                                      ldr r0, [r3, #0x14]
00414384  42 ea fb eb                                      bl #0x30ec94
00414388  4f e8 fb eb                                      bl #0x30e4cc
0041438c  10 00 8d e5                                      str r0, [sp, #0x10]
00414390  0c 00 94 e8                                      ldm r4, {r2, r3}
00414394  0b 10 a0 e1                                      mov r1, fp
00414398  02 20 89 e0                                      add r2, sb, r2
0041439c  03 30 80 e0                                      add r3, r0, r3
004143a0  c0 03 96 e5                                      ldr r0, [r6, #0x3c0]
004143a4  11 58 0e eb                                      bl #0x7aa3f0
004143a8  07 10 95 e7                                      ldr r1, [r5, r7]
004143ac  c0 03 96 e5                                      ldr r0, [r6, #0x3c0]
004143b0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004143b4  00 30 a0 e3                                      mov r3, #0
004143b8  5d 4e 0e eb                                      bl #0x7a7d34
004143bc  04 c0 9d e5                                      ldr ip, [sp, #4]
004143c0  04 10 9c e5                                      ldr r1, [ip, #4]
004143c4  00 00 51 e3                                      cmp r1, #0
004143c8  03 00 00 0a                                      beq #0x4143dc
004143cc  c0 03 96 e5                                      ldr r0, [r6, #0x3c0]
004143d0  ff 24 a0 e3                                      mov r2, #0xff000000
004143d4  08 30 94 e5                                      ldr r3, [r4, #8]
004143d8  7c 56 0e eb                                      bl #0x7a9dd0
004143dc  0c 20 a0 e3                                      mov r2, #0xc
004143e0  92 08 08 e0                                      mul r8, r2, r8
004143e4  01 00 a0 e3                                      mov r0, #1
004143e8  08 30 95 e7                                      ldr r3, [r5, r8]
004143ec  9b 00 c3 e5                                      strb r0, [r3, #0x9b]
004143f0  08 30 95 e7                                      ldr r3, [r5, r8]
004143f4  03 00 a0 e1                                      mov r0, r3
004143f8  00 30 93 e5                                      ldr r3, [r3]
004143fc  0f e0 a0 e1                                      mov lr, pc
00414400  20 f1 93 e5                                      ldr pc, [r3, #0x120]
00414404  08 10 95 e7                                      ldr r1, [r5, r8]
00414408  00 00 a0 e3                                      mov r0, #0
0041440c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00414410  9b 00 c1 e5                                      strb r0, [r1, #0x9b]
00414414  09 20 a0 e1                                      mov r2, sb
00414418  08 10 95 e7                                      ldr r1, [r5, r8]
0041441c  c0 03 96 e5                                      ldr r0, [r6, #0x3c0]
00414420  f2 57 0e eb                                      bl #0x7aa3f0
00414424  50 40 84 e2                                      add r4, r4, #0x50
00414428  0a 00 54 e1                                      cmp r4, sl
0041442c  b9 ff ff 1a                                      bne #0x414318
00414430  c0 03 96 e5                                      ldr r0, [r6, #0x3c0]
00414434  01 10 a0 e3                                      mov r1, #1
00414438  1d 4e 0e eb                                      bl #0x7a7cb4
0041443c  c0 03 96 e5                                      ldr r0, [r6, #0x3c0]
00414440  a0 55 0e eb                                      bl #0x7a9ac8
00414444  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00414448  14 10 9d e5                                      ldr r1, [sp, #0x14]
0041444c  01 30 92 e7                                      ldr r3, [r2, r1]
00414450  34 20 9d e5                                      ldr r2, [sp, #0x34]
00414454  00 30 93 e5                                      ldr r3, [r3]
00414458  03 00 52 e1                                      cmp r2, r3
0041445c  03 00 00 1a                                      bne #0x414470
00414460  3c d0 8d e2                                      add sp, sp, #0x3c
00414464  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00414468  f4 ef fb eb                                      bl #0x310440
0041446c  9e ff ff ea                                      b #0x4142ec
00414470  a6 e7 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00414474  20 08 58 00 ac 40 00 00 84 08 00 00 d8 3d 4b 00  .byte 0x20, 0x08, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd8, 0x3d, 0x4b, 0x00

; FUNCTION 0x00414678, declared_size=52, range_size=52, mode=arm
; class-group: FlashAnimManager
; alias: _ZNK16FlashAnimManager18GetStyleIdFromNameEPKc
; demangled: FlashAnimManager::GetStyleIdFromName(char const*) const
; decoder-mode: arm
00414678  10 40 2d e9                                      push {r4, lr}
0041467c  08 d0 4d e2                                      sub sp, sp, #8
00414680  08 30 8d e2                                      add r3, sp, #8
00414684  04 10 23 e5                                      str r1, [r3, #-4]!
00414688  3d 4e 80 e2                                      add r4, r0, #0x3d0
0041468c  03 10 a0 e1                                      mov r1, r3
00414690  04 00 a0 e1                                      mov r0, r4
00414694  7a ff ff eb                                      bl #0x414484
00414698  04 00 50 e1                                      cmp r0, r4
0041469c  00 00 a0 03                                      moveq r0, #0
004146a0  28 00 90 15                                      ldrne r0, [r0, #0x28]
004146a4  08 d0 8d e2                                      add sp, sp, #8
004146a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004151d8, declared_size=1248, range_size=1248, mode=arm
; class-group: FlashAnimManager
; alias: _ZN16FlashAnimManager12ScanForAnimsEP6MenuFX
; demangled: FlashAnimManager::ScanForAnims(MenuFX*)
; decoder-mode: arm
004151d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004151dc  b4 34 9f e5                                      ldr r3, [pc, #0x4b4]
004151e0  00 90 51 e2                                      subs sb, r1, #0
004151e4  c4 d0 4d e2                                      sub sp, sp, #0xc4
004151e8  00 60 a0 e1                                      mov r6, r0
004151ec  03 30 8f e0                                      add r3, pc, r3
004151f0  7b 00 00 0a                                      beq #0x4153e4
004151f4  c0 23 90 e5                                      ldr r2, [r0, #0x3c0]
004151f8  00 00 52 e3                                      cmp r2, #0
004151fc  08 00 00 0a                                      beq #0x415224
00415200  94 24 9f e5                                      ldr r2, [pc, #0x494]
00415204  02 20 93 e7                                      ldr r2, [r3, r2]
00415208  00 20 92 e5                                      ldr r2, [r2]
0041520c  02 00 52 e3                                      cmp r2, #2
00415210  00 30 a0 03                                      moveq r3, #0
00415214  00 30 83 05                                      streq r3, [r3]
00415218  01 00 00 0a                                      beq #0x415224
0041521c  01 00 52 e3                                      cmp r2, #1
00415220  ec 00 00 0a                                      beq #0x4155d8
00415224  c0 93 86 e5                                      str sb, [r6, #0x3c0]
00415228  09 00 a0 e1                                      mov r0, sb
0041522c  9b 4a 0e eb                                      bl #0x7a7ca0
00415230  68 24 9f e5                                      ldr r2, [pc, #0x468]
00415234  00 40 a0 e3                                      mov r4, #0
00415238  00 10 a0 e1                                      mov r1, r0
0041523c  02 20 8f e0                                      add r2, pc, r2
00415240  09 00 a0 e1                                      mov r0, sb
00415244  04 30 a0 e1                                      mov r3, r4
00415248  6e 4e 0e eb                                      bl #0x7a8c08
0041524c  a8 40 8d e5                                      str r4, [sp, #0xa8]
00415250  ac 40 8d e5                                      str r4, [sp, #0xac]
00415254  b0 40 8d e5                                      str r4, [sp, #0xb0]
00415258  b4 40 cd e5                                      strb r4, [sp, #0xb4]
0041525c  04 50 90 e5                                      ldr r5, [r0, #4]
00415260  00 70 a0 e1                                      mov r7, r0
00415264  04 00 55 e1                                      cmp r5, r4
00415268  e9 00 00 aa                                      bge #0x415614
0041526c  a8 30 8d e2                                      add r3, sp, #0xa8
00415270  ac 50 8d e5                                      str r5, [sp, #0xac]
00415274  2c 30 8d e5                                      str r3, [sp, #0x2c]
00415278  38 b0 8d e2                                      add fp, sp, #0x38
0041527c  0c 30 8b e2                                      add r3, fp, #0xc
00415280  6c 20 8b e2                                      add r2, fp, #0x6c
00415284  00 50 a0 e3                                      mov r5, #0
00415288  0c 50 03 e5                                      str r5, [r3, #-0xc]
0041528c  08 50 03 e5                                      str r5, [r3, #-8]
00415290  04 50 43 e5                                      strb r5, [r3, #-4]
00415294  0c 30 83 e2                                      add r3, r3, #0xc
00415298  02 00 53 e1                                      cmp r3, r2
0041529c  f9 ff ff 1a                                      bne #0x415288
004152a0  ac 30 9d e5                                      ldr r3, [sp, #0xac]
004152a4  00 00 53 e3                                      cmp r3, #0
004152a8  f0 00 00 da                                      ble #0x415670
004152ac  f0 33 9f e5                                      ldr r3, [pc, #0x3f0]
004152b0  aa 2a 0a e3                                      movw r2, #0xaaaa
004152b4  02 25 82 e1                                      orr r2, r2, r2, lsl #10
004152b8  03 30 8f e0                                      add r3, pc, r3
004152bc  3d 1e 86 e2                                      add r1, r6, #0x3d0
004152c0  14 30 8d e5                                      str r3, [sp, #0x14]
004152c4  f3 3f 86 e2                                      add r3, r6, #0x3cc
004152c8  18 20 8d e5                                      str r2, [sp, #0x18]
004152cc  24 30 8d e5                                      str r3, [sp, #0x24]
004152d0  0c 10 8d e5                                      str r1, [sp, #0xc]
004152d4  98 20 8d e2                                      add r2, sp, #0x98
004152d8  bc 30 8d e2                                      add r3, sp, #0xbc
004152dc  b8 10 8d e2                                      add r1, sp, #0xb8
004152e0  08 20 8d e5                                      str r2, [sp, #8]
004152e4  10 30 8d e5                                      str r3, [sp, #0x10]
004152e8  05 40 a0 e1                                      mov r4, r5
004152ec  28 10 8d e5                                      str r1, [sp, #0x28]
004152f0  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
004152f4  09 00 a0 e1                                      mov r0, sb
004152f8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004152fc  05 c1 93 e7                                      ldr ip, [r3, r5, lsl #2]
00415300  00 30 a0 e3                                      mov r3, #0
00415304  0c 10 a0 e1                                      mov r1, ip
00415308  38 c0 8d e5                                      str ip, [sp, #0x38]
0041530c  3d 4e 0e eb                                      bl #0x7a8c08
00415310  98 40 8d e5                                      str r4, [sp, #0x98]
00415314  9c 40 8d e5                                      str r4, [sp, #0x9c]
00415318  a0 40 8d e5                                      str r4, [sp, #0xa0]
0041531c  a4 40 cd e5                                      strb r4, [sp, #0xa4]
00415320  04 70 90 e5                                      ldr r7, [r0, #4]
00415324  00 80 a0 e1                                      mov r8, r0
00415328  00 00 57 e3                                      cmp r7, #0
0041532c  36 00 00 aa                                      bge #0x41540c
00415330  9c 70 8d e5                                      str r7, [sp, #0x9c]
00415334  c8 73 96 e5                                      ldr r7, [r6, #0x3c8]
00415338  cc 23 96 e5                                      ldr r2, [r6, #0x3cc]
0041533c  00 30 a0 e3                                      mov r3, #0
00415340  3c 30 8d e5                                      str r3, [sp, #0x3c]
00415344  02 00 57 e1                                      cmp r7, r2
00415348  4d 00 00 0a                                      beq #0x415484
0041534c  07 00 a0 e1                                      mov r0, r7
00415350  0b 10 a0 e1                                      mov r1, fp
00415354  60 20 a0 e3                                      mov r2, #0x60
00415358  42 e5 fb eb                                      bl #0x30e868
0041535c  c8 33 96 e5                                      ldr r3, [r6, #0x3c8]
00415360  60 30 83 e2                                      add r3, r3, #0x60
00415364  c8 33 86 e5                                      str r3, [r6, #0x3c8]
00415368  38 30 9d e5                                      ldr r3, [sp, #0x38]
0041536c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00415370  10 10 9d e5                                      ldr r1, [sp, #0x10]
00415374  44 30 93 e5                                      ldr r3, [r3, #0x44]
00415378  d0 20 d3 e1                                      ldrsb r2, [r3]
0041537c  01 00 72 e3                                      cmn r2, #1
00415380  0c 30 93 05                                      ldreq r3, [r3, #0xc]
00415384  01 30 83 12                                      addne r3, r3, #1
00415388  bc 30 8d e5                                      str r3, [sp, #0xbc]
0041538c  2c ff ff eb                                      bl #0x415044
00415390  00 50 80 e5                                      str r5, [r0]
00415394  38 30 9d e5                                      ldr r3, [sp, #0x38]
00415398  9b 40 c3 e5                                      strb r4, [r3, #0x9b]
0041539c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
004153a0  00 00 53 e3                                      cmp r3, #0
004153a4  10 00 00 da                                      ble #0x4153ec
004153a8  08 00 9d e5                                      ldr r0, [sp, #8]
004153ac  04 10 a0 e1                                      mov r1, r4
004153b0  9c 40 8d e5                                      str r4, [sp, #0x9c]
004153b4  96 fa ff eb                                      bl #0x413e14
004153b8  ac 30 9d e5                                      ldr r3, [sp, #0xac]
004153bc  01 50 85 e2                                      add r5, r5, #1
004153c0  03 00 55 e1                                      cmp r5, r3
004153c4  c9 ff ff ba                                      blt #0x4152f0
004153c8  00 00 53 e3                                      cmp r3, #0
004153cc  a7 00 00 da                                      ble #0x415670
004153d0  00 30 a0 e3                                      mov r3, #0
004153d4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
004153d8  03 10 a0 e1                                      mov r1, r3
004153dc  ac 30 8d e5                                      str r3, [sp, #0xac]
004153e0  8b fa ff eb                                      bl #0x413e14
004153e4  c4 d0 8d e2                                      add sp, sp, #0xc4
004153e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004153ec  ed ff ff aa                                      bge #0x4153a8
004153f0  03 21 a0 e1                                      lsl r2, r3, #2
004153f4  98 10 9d e5                                      ldr r1, [sp, #0x98]
004153f8  01 30 93 e2                                      adds r3, r3, #1
004153fc  02 40 81 e7                                      str r4, [r1, r2]
00415400  04 20 82 e2                                      add r2, r2, #4
00415404  fa ff ff 1a                                      bne #0x4153f4
00415408  e6 ff ff ea                                      b #0x4153a8
0041540c  c7 ff ff 0a                                      beq #0x415330
00415410  c6 ff ff da                                      ble #0x415330
00415414  08 00 9d e5                                      ldr r0, [sp, #8]
00415418  c7 10 87 e0                                      add r1, r7, r7, asr #1
0041541c  7c fa ff eb                                      bl #0x413e14
00415420  04 30 a0 e1                                      mov r3, r4
00415424  98 20 9d e5                                      ldr r2, [sp, #0x98]
00415428  03 41 82 e7                                      str r4, [r2, r3, lsl #2]
0041542c  01 30 83 e2                                      add r3, r3, #1
00415430  07 00 53 e1                                      cmp r3, r7
00415434  fa ff ff 1a                                      bne #0x415424
00415438  9c 30 8d e5                                      str r3, [sp, #0x9c]
0041543c  04 30 a0 e1                                      mov r3, r4
00415440  00 20 98 e5                                      ldr r2, [r8]
00415444  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
00415448  98 20 9d e5                                      ldr r2, [sp, #0x98]
0041544c  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00415450  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
00415454  01 30 83 e2                                      add r3, r3, #1
00415458  02 00 53 e1                                      cmp r3, r2
0041545c  f7 ff ff ba                                      blt #0x415440
00415460  00 00 52 e3                                      cmp r2, #0
00415464  b2 ff ff da                                      ble #0x415334
00415468  98 30 9d e5                                      ldr r3, [sp, #0x98]
0041546c  c8 73 96 e5                                      ldr r7, [r6, #0x3c8]
00415470  cc 23 96 e5                                      ldr r2, [r6, #0x3cc]
00415474  00 30 93 e5                                      ldr r3, [r3]
00415478  02 00 57 e1                                      cmp r7, r2
0041547c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00415480  b1 ff ff 1a                                      bne #0x41534c
00415484  c4 33 96 e5                                      ldr r3, [r6, #0x3c4]
00415488  18 10 9d e5                                      ldr r1, [sp, #0x18]
0041548c  07 30 63 e0                                      rsb r3, r3, r7
00415490  c3 32 a0 e1                                      asr r3, r3, #5
00415494  03 21 83 e0                                      add r2, r3, r3, lsl #2
00415498  02 22 82 e0                                      add r2, r2, r2, lsl #4
0041549c  02 24 82 e0                                      add r2, r2, r2, lsl #8
004154a0  02 28 82 e0                                      add r2, r2, r2, lsl #16
004154a4  82 20 83 e0                                      add r2, r3, r2, lsl #1
004154a8  01 00 52 e3                                      cmp r2, #1
004154ac  02 30 82 20                                      addhs r3, r2, r2
004154b0  01 30 82 32                                      addlo r3, r2, #1
004154b4  01 00 53 e1                                      cmp r3, r1
004154b8  43 00 00 9a                                      bls #0x4155cc
004154bc  aa 3a 0a e3                                      movw r3, #0xaaaa
004154c0  03 35 83 e1                                      orr r3, r3, r3, lsl #10
004154c4  03 10 a0 e1                                      mov r1, r3
004154c8  28 20 9d e5                                      ldr r2, [sp, #0x28]
004154cc  24 00 9d e5                                      ldr r0, [sp, #0x24]
004154d0  b8 30 8d e5                                      str r3, [sp, #0xb8]
004154d4  3f fb ff eb                                      bl #0x4141d8
004154d8  1c 00 8d e5                                      str r0, [sp, #0x1c]
004154dc  c4 13 96 e5                                      ldr r1, [r6, #0x3c4]
004154e0  07 30 61 e0                                      rsb r3, r1, r7
004154e4  c3 32 a0 e1                                      asr r3, r3, #5
004154e8  03 21 83 e0                                      add r2, r3, r3, lsl #2
004154ec  02 22 82 e0                                      add r2, r2, r2, lsl #4
004154f0  02 24 82 e0                                      add r2, r2, r2, lsl #8
004154f4  02 28 82 e0                                      add r2, r2, r2, lsl #16
004154f8  82 20 83 e0                                      add r2, r3, r2, lsl #1
004154fc  00 00 52 e3                                      cmp r2, #0
00415500  20 20 8d e5                                      str r2, [sp, #0x20]
00415504  00 a0 a0 d1                                      movle sl, r0
00415508  12 00 00 da                                      ble #0x415558
0041550c  34 60 8d e5                                      str r6, [sp, #0x34]
00415510  20 80 9d e5                                      ldr r8, [sp, #0x20]
00415514  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
00415518  30 50 8d e5                                      str r5, [sp, #0x30]
0041551c  00 70 a0 e3                                      mov r7, #0
00415520  01 50 a0 e1                                      mov r5, r1
00415524  60 a0 a0 e3                                      mov sl, #0x60
00415528  07 00 86 e0                                      add r0, r6, r7
0041552c  07 10 85 e0                                      add r1, r5, r7
00415530  0a 20 a0 e1                                      mov r2, sl
00415534  cb e4 fb eb                                      bl #0x30e868
00415538  01 80 58 e2                                      subs r8, r8, #1
0041553c  0a 70 87 e0                                      add r7, r7, sl
00415540  f7 ff ff 1a                                      bne #0x415524
00415544  20 20 9d e5                                      ldr r2, [sp, #0x20]
00415548  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0041554c  30 50 9d e5                                      ldr r5, [sp, #0x30]
00415550  34 60 9d e5                                      ldr r6, [sp, #0x34]
00415554  9a 32 2a e0                                      mla sl, sl, r2, r3
00415558  0a 00 a0 e1                                      mov r0, sl
0041555c  0b 10 a0 e1                                      mov r1, fp
00415560  60 20 a0 e3                                      mov r2, #0x60
00415564  bf e4 fb eb                                      bl #0x30e868
00415568  c4 03 96 e5                                      ldr r0, [r6, #0x3c4]
0041556c  60 a0 8a e2                                      add sl, sl, #0x60
00415570  cc 33 96 e5                                      ldr r3, [r6, #0x3cc]
00415574  00 00 50 e3                                      cmp r0, #0
00415578  0b 00 00 0a                                      beq #0x4155ac
0041557c  03 30 60 e0                                      rsb r3, r0, r3
00415580  c3 32 a0 e1                                      asr r3, r3, #5
00415584  03 21 83 e0                                      add r2, r3, r3, lsl #2
00415588  02 22 82 e0                                      add r2, r2, r2, lsl #4
0041558c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00415590  02 28 82 e0                                      add r2, r2, r2, lsl #16
00415594  82 30 83 e0                                      add r3, r3, r2, lsl #1
00415598  60 20 a0 e3                                      mov r2, #0x60
0041559c  92 03 01 e0                                      mul r1, r2, r3
004155a0  80 00 51 e3                                      cmp r1, #0x80
004155a4  18 00 00 8a                                      bhi #0x41560c
004155a8  54 ce 0b eb                                      bl #0x708f00
004155ac  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
004155b0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
004155b4  60 20 a0 e3                                      mov r2, #0x60
004155b8  c8 a3 86 e5                                      str sl, [r6, #0x3c8]
004155bc  92 13 23 e0                                      mla r3, r2, r3, r1
004155c0  c4 13 86 e5                                      str r1, [r6, #0x3c4]
004155c4  cc 33 86 e5                                      str r3, [r6, #0x3cc]
004155c8  66 ff ff ea                                      b #0x415368
004155cc  03 00 52 e1                                      cmp r2, r3
004155d0  bb ff ff 9a                                      bls #0x4154c4
004155d4  b8 ff ff ea                                      b #0x4154bc
004155d8  c8 00 9f e5                                      ldr r0, [pc, #0xc8]
004155dc  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
004155e0  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
004155e4  00 00 93 e7                                      ldr r0, [r3, r0]
004155e8  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
004155ec  50 c0 a0 e3                                      mov ip, #0x50
004155f0  01 10 8f e0                                      add r1, pc, r1
004155f4  02 20 8f e0                                      add r2, pc, r2
004155f8  03 30 8f e0                                      add r3, pc, r3
004155fc  a8 00 80 e2                                      add r0, r0, #0xa8
00415600  00 c0 8d e5                                      str ip, [sp]
00415604  7e e2 fb eb                                      bl #0x30e004
00415608  05 ff ff ea                                      b #0x415224
0041560c  8b eb fb eb                                      bl #0x310440
00415610  e5 ff ff ea                                      b #0x4155ac
00415614  14 ff ff 0a                                      beq #0x41526c
00415618  13 ff ff da                                      ble #0x41526c
0041561c  a8 10 8d e2                                      add r1, sp, #0xa8
00415620  2c 10 8d e5                                      str r1, [sp, #0x2c]
00415624  01 00 a0 e1                                      mov r0, r1
00415628  c5 10 85 e0                                      add r1, r5, r5, asr #1
0041562c  f8 f9 ff eb                                      bl #0x413e14
00415630  04 30 a0 e1                                      mov r3, r4
00415634  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
00415638  04 31 82 e7                                      str r3, [r2, r4, lsl #2]
0041563c  01 40 84 e2                                      add r4, r4, #1
00415640  05 00 54 e1                                      cmp r4, r5
00415644  fa ff ff 1a                                      bne #0x415634
00415648  ac 40 8d e5                                      str r4, [sp, #0xac]
0041564c  00 20 97 e5                                      ldr r2, [r7]
00415650  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
00415654  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
00415658  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
0041565c  ac 20 9d e5                                      ldr r2, [sp, #0xac]
00415660  01 30 83 e2                                      add r3, r3, #1
00415664  02 00 53 e1                                      cmp r3, r2
00415668  f7 ff ff ba                                      blt #0x41564c
0041566c  01 ff ff ea                                      b #0x415278
00415670  00 00 53 e3                                      cmp r3, #0
00415674  55 ff ff aa                                      bge #0x4153d0
00415678  03 21 a0 e1                                      lsl r2, r3, #2
0041567c  00 00 a0 e3                                      mov r0, #0
00415680  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
00415684  01 30 93 e2                                      adds r3, r3, #1
00415688  02 00 81 e7                                      str r0, [r1, r2]
0041568c  04 20 82 e2                                      add r2, r2, #4
00415690  fa ff ff 1a                                      bne #0x415680
00415694  4d ff ff ea                                      b #0x4153d0
; mapping-symbol data/literal pool
00415698  a4 f8 57 00 c0 39 00 00 c4 2e 4b 00 c0 2d 4b 00  .byte 0xa4, 0xf8, 0x57, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc4, 0x2e, 0x4b, 0x00, 0xc0, 0x2d, 0x4b, 0x00
004156a8  c0 19 00 00 e8 8d 4a 00 ac 2a 4b 00 c0 2a 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xe8, 0x8d, 0x4a, 0x00, 0xac, 0x2a, 0x4b, 0x00, 0xc0, 0x2a, 0x4b, 0x00
