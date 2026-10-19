; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007607b8, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::listener
; alias: _ZN7gameswf8listener6notifyERKNS_8event_idE
; demangled: gameswf::listener::notify(gameswf::event_id const&)
; decoder-mode: arm
007607b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007607bc  1c d0 4d e2                                      sub sp, sp, #0x1c
007607c0  08 30 8d e2                                      add r3, sp, #8
007607c4  00 40 a0 e3                                      mov r4, #0
007607c8  01 b0 a0 e1                                      mov fp, r1
007607cc  00 10 a0 e1                                      mov r1, r0
007607d0  03 00 a0 e1                                      mov r0, r3
007607d4  18 00 8d e9                                      stmib sp, {r3, r4}
007607d8  0c 40 8d e5                                      str r4, [sp, #0xc]
007607dc  10 40 8d e5                                      str r4, [sp, #0x10]
007607e0  14 40 cd e5                                      strb r4, [sp, #0x14]
007607e4  cb ff ff eb                                      bl #0x760718
007607e8  0c a0 9d e5                                      ldr sl, [sp, #0xc]
007607ec  04 00 5a e1                                      cmp sl, r4
007607f0  23 00 00 da                                      ble #0x760884
007607f4  04 90 a0 e1                                      mov sb, r4
007607f8  0a 00 00 ea                                      b #0x760828
007607fc  18 e5 ff eb                                      bl #0x759c64
00760800  00 30 95 e5                                      ldr r3, [r5]
00760804  05 00 a0 e1                                      mov r0, r5
00760808  0b 10 a0 e1                                      mov r1, fp
0076080c  0f e0 a0 e1                                      mov lr, pc
00760810  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00760814  05 00 a0 e1                                      mov r0, r5
00760818  88 e6 ff eb                                      bl #0x75a240
0076081c  01 40 84 e2                                      add r4, r4, #1
00760820  0a 00 54 e1                                      cmp r4, sl
00760824  16 00 00 0a                                      beq #0x760884
00760828  08 60 9d e5                                      ldr r6, [sp, #8]
0076082c  84 81 a0 e1                                      lsl r8, r4, #3
00760830  08 70 86 e0                                      add r7, r6, r8
00760834  04 50 97 e5                                      ldr r5, [r7, #4]
00760838  00 00 55 e2                                      subs r0, r5, #0
0076083c  f6 ff ff 0a                                      beq #0x76081c
00760840  84 31 96 e7                                      ldr r3, [r6, r4, lsl #3]
00760844  04 20 d3 e5                                      ldrb r2, [r3, #4]
00760848  00 00 52 e3                                      cmp r2, #0
0076084c  ea ff ff 1a                                      bne #0x7607fc
00760850  00 20 93 e5                                      ldr r2, [r3]
00760854  03 00 a0 e1                                      mov r0, r3
00760858  01 20 42 e2                                      sub r2, r2, #1
0076085c  00 00 52 e3                                      cmp r2, #0
00760860  02 10 a0 e1                                      mov r1, r2
00760864  00 20 83 e5                                      str r2, [r3]
00760868  00 00 00 1a                                      bne #0x760870
0076086c  b1 c8 ff eb                                      bl #0x752b38
00760870  01 40 84 e2                                      add r4, r4, #1
00760874  0a 00 54 e1                                      cmp r4, sl
00760878  08 90 86 e7                                      str sb, [r6, r8]
0076087c  04 90 87 e5                                      str sb, [r7, #4]
00760880  e8 ff ff 1a                                      bne #0x760828
00760884  04 00 9d e5                                      ldr r0, [sp, #4]
00760888  00 10 a0 e3                                      mov r1, #0
0076088c  52 ff ff eb                                      bl #0x7605dc
00760890  04 00 9d e5                                      ldr r0, [sp, #4]
00760894  00 10 a0 e3                                      mov r1, #0
00760898  30 ff ff eb                                      bl #0x760560
0076089c  1c d0 8d e2                                      add sp, sp, #0x1c
007608a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007608a4, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::listener
; alias: _ZNK7gameswf8listener4sizeEv
; demangled: gameswf::listener::size() const
; decoder-mode: arm
007608a4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007608a8  04 90 90 e5                                      ldr sb, [r0, #4]
007608ac  00 a0 a0 e1                                      mov sl, r0
007608b0  00 00 59 e3                                      cmp sb, #0
007608b4  00 80 a0 d3                                      movle r8, #0
007608b8  1e 00 00 da                                      ble #0x760938
007608bc  00 40 a0 e3                                      mov r4, #0
007608c0  04 80 a0 e1                                      mov r8, r4
007608c4  04 b0 a0 e1                                      mov fp, r4
007608c8  02 00 00 ea                                      b #0x7608d8
007608cc  01 40 84 e2                                      add r4, r4, #1
007608d0  09 00 54 e1                                      cmp r4, sb
007608d4  17 00 00 0a                                      beq #0x760938
007608d8  00 50 9a e5                                      ldr r5, [sl]
007608dc  84 71 a0 e1                                      lsl r7, r4, #3
007608e0  07 60 85 e0                                      add r6, r5, r7
007608e4  04 30 96 e5                                      ldr r3, [r6, #4]
007608e8  00 00 53 e3                                      cmp r3, #0
007608ec  f6 ff ff 0a                                      beq #0x7608cc
007608f0  84 31 95 e7                                      ldr r3, [r5, r4, lsl #3]
007608f4  04 20 d3 e5                                      ldrb r2, [r3, #4]
007608f8  00 00 52 e3                                      cmp r2, #0
007608fc  01 80 88 12                                      addne r8, r8, #1
00760900  f1 ff ff 1a                                      bne #0x7608cc
00760904  00 20 93 e5                                      ldr r2, [r3]
00760908  03 00 a0 e1                                      mov r0, r3
0076090c  01 20 42 e2                                      sub r2, r2, #1
00760910  00 00 52 e3                                      cmp r2, #0
00760914  02 10 a0 e1                                      mov r1, r2
00760918  00 20 83 e5                                      str r2, [r3]
0076091c  00 00 00 1a                                      bne #0x760924
00760920  84 c8 ff eb                                      bl #0x752b38
00760924  01 40 84 e2                                      add r4, r4, #1
00760928  09 00 54 e1                                      cmp r4, sb
0076092c  07 b0 85 e7                                      str fp, [r5, r7]
00760930  04 b0 86 e5                                      str fp, [r6, #4]
00760934  e7 ff ff 1a                                      bne #0x7608d8
00760938  08 00 a0 e1                                      mov r0, r8
0076093c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00760940, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::listener
; alias: _ZN7gameswf8listener5aliveEv
; demangled: gameswf::listener::alive()
; decoder-mode: arm
00760940  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00760944  04 30 90 e5                                      ldr r3, [r0, #4]
00760948  00 80 a0 e1                                      mov r8, r0
0076094c  00 00 53 e3                                      cmp r3, #0
00760950  22 00 00 da                                      ble #0x7609e0
00760954  00 40 a0 e3                                      mov r4, #0
00760958  04 a0 a0 e1                                      mov sl, r4
0076095c  06 00 00 ea                                      b #0x76097c
00760960  00 30 92 e5                                      ldr r3, [r2]
00760964  0f e0 a0 e1                                      mov lr, pc
00760968  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0076096c  04 30 98 e5                                      ldr r3, [r8, #4]
00760970  01 40 84 e2                                      add r4, r4, #1
00760974  03 00 54 e1                                      cmp r4, r3
00760978  18 00 00 aa                                      bge #0x7609e0
0076097c  00 50 98 e5                                      ldr r5, [r8]
00760980  84 71 a0 e1                                      lsl r7, r4, #3
00760984  07 60 85 e0                                      add r6, r5, r7
00760988  04 20 96 e5                                      ldr r2, [r6, #4]
0076098c  00 00 52 e3                                      cmp r2, #0
00760990  f6 ff ff 0a                                      beq #0x760970
00760994  84 31 95 e7                                      ldr r3, [r5, r4, lsl #3]
00760998  02 00 a0 e1                                      mov r0, r2
0076099c  04 10 d3 e5                                      ldrb r1, [r3, #4]
007609a0  00 00 51 e3                                      cmp r1, #0
007609a4  ed ff ff 1a                                      bne #0x760960
007609a8  00 20 93 e5                                      ldr r2, [r3]
007609ac  03 00 a0 e1                                      mov r0, r3
007609b0  01 20 42 e2                                      sub r2, r2, #1
007609b4  00 00 52 e3                                      cmp r2, #0
007609b8  02 10 a0 e1                                      mov r1, r2
007609bc  00 20 83 e5                                      str r2, [r3]
007609c0  00 00 00 1a                                      bne #0x7609c8
007609c4  5b c8 ff eb                                      bl #0x752b38
007609c8  07 a0 85 e7                                      str sl, [r5, r7]
007609cc  04 a0 86 e5                                      str sl, [r6, #4]
007609d0  04 30 98 e5                                      ldr r3, [r8, #4]
007609d4  01 40 84 e2                                      add r4, r4, #1
007609d8  03 00 54 e1                                      cmp r4, r3
007609dc  e6 ff ff ba                                      blt #0x76097c
007609e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007609e4, declared_size=184, range_size=184, mode=arm
; class-group: gameswf::listener
; alias: _ZNK7gameswf8listener9enumerateEPNS_14as_environmentE
; demangled: gameswf::listener::enumerate(gameswf::as_environment*) const
; decoder-mode: arm
007609e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007609e8  04 90 90 e5                                      ldr sb, [r0, #4]
007609ec  14 d0 4d e2                                      sub sp, sp, #0x14
007609f0  00 a0 a0 e1                                      mov sl, r0
007609f4  00 00 59 e3                                      cmp sb, #0
007609f8  01 b0 a0 e1                                      mov fp, r1
007609fc  24 00 00 da                                      ble #0x760a94
00760a00  00 40 a0 e3                                      mov r4, #0
00760a04  0c 30 8d e2                                      add r3, sp, #0xc
00760a08  04 80 a0 e1                                      mov r8, r4
00760a0c  04 30 8d e5                                      str r3, [sp, #4]
00760a10  05 00 00 ea                                      b #0x760a2c
00760a14  0c 80 8d e5                                      str r8, [sp, #0xc]
00760a18  1f ff ff eb                                      bl #0x76069c
00760a1c  01 80 88 e2                                      add r8, r8, #1
00760a20  01 40 84 e2                                      add r4, r4, #1
00760a24  09 00 54 e1                                      cmp r4, sb
00760a28  19 00 00 0a                                      beq #0x760a94
00760a2c  00 50 9a e5                                      ldr r5, [sl]
00760a30  84 71 a0 e1                                      lsl r7, r4, #3
00760a34  0b 00 a0 e1                                      mov r0, fp
00760a38  07 60 85 e0                                      add r6, r5, r7
00760a3c  04 30 96 e5                                      ldr r3, [r6, #4]
00760a40  04 10 9d e5                                      ldr r1, [sp, #4]
00760a44  00 00 53 e3                                      cmp r3, #0
00760a48  f4 ff ff 0a                                      beq #0x760a20
00760a4c  84 31 95 e7                                      ldr r3, [r5, r4, lsl #3]
00760a50  04 20 d3 e5                                      ldrb r2, [r3, #4]
00760a54  00 00 52 e3                                      cmp r2, #0
00760a58  ed ff ff 1a                                      bne #0x760a14
00760a5c  00 20 93 e5                                      ldr r2, [r3]
00760a60  03 00 a0 e1                                      mov r0, r3
00760a64  01 20 42 e2                                      sub r2, r2, #1
00760a68  00 00 52 e3                                      cmp r2, #0
00760a6c  02 10 a0 e1                                      mov r1, r2
00760a70  00 20 83 e5                                      str r2, [r3]
00760a74  00 00 00 1a                                      bne #0x760a7c
00760a78  2e c8 ff eb                                      bl #0x752b38
00760a7c  01 40 84 e2                                      add r4, r4, #1
00760a80  00 30 a0 e3                                      mov r3, #0
00760a84  09 00 54 e1                                      cmp r4, sb
00760a88  07 30 85 e7                                      str r3, [r5, r7]
00760a8c  04 30 86 e5                                      str r3, [r6, #4]
00760a90  e5 ff ff 1a                                      bne #0x760a2c
00760a94  14 d0 8d e2                                      add sp, sp, #0x14
00760a98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00760aec, declared_size=620, range_size=620, mode=arm
; class-group: gameswf::listener
; alias: _ZN7gameswf8listener6notifyERKNS_9tu_stringERKNS_7fn_callE
; demangled: gameswf::listener::notify(gameswf::tu_string const&, gameswf::fn_call const&)
; decoder-mode: arm
00760aec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00760af0  54 32 9f e5                                      ldr r3, [pc, #0x254]
00760af4  54 c2 9f e5                                      ldr ip, [pc, #0x254]
00760af8  8c d0 4d e2                                      sub sp, sp, #0x8c
00760afc  03 30 8f e0                                      add r3, pc, r3
00760b00  24 30 8d e5                                      str r3, [sp, #0x24]
00760b04  0c 30 93 e7                                      ldr r3, [r3, ip]
00760b08  34 c0 8d e5                                      str ip, [sp, #0x34]
00760b0c  0c 40 92 e5                                      ldr r4, [r2, #0xc]
00760b10  00 30 93 e5                                      ldr r3, [r3]
00760b14  28 10 8d e5                                      str r1, [sp, #0x28]
00760b18  00 50 a0 e1                                      mov r5, r0
00760b1c  84 30 8d e5                                      str r3, [sp, #0x84]
00760b20  68 00 94 e5                                      ldr r0, [r4, #0x68]
00760b24  02 80 a0 e1                                      mov r8, r2
00760b28  00 00 50 e3                                      cmp r0, #0
00760b2c  03 00 00 0a                                      beq #0x760b40
00760b30  64 30 94 e5                                      ldr r3, [r4, #0x64]
00760b34  04 20 d3 e5                                      ldrb r2, [r3, #4]
00760b38  00 00 52 e3                                      cmp r2, #0
00760b3c  76 00 00 0a                                      beq #0x760d1c
00760b40  9b 32 00 eb                                      bl #0x76d5b4
00760b44  00 00 50 e3                                      cmp r0, #0
00760b48  66 00 00 0a                                      beq #0x760ce8
00760b4c  3c 10 8d e2                                      add r1, sp, #0x3c
00760b50  30 10 8d e5                                      str r1, [sp, #0x30]
00760b54  30 00 9d e5                                      ldr r0, [sp, #0x30]
00760b58  05 10 a0 e1                                      mov r1, r5
00760b5c  00 50 a0 e3                                      mov r5, #0
00760b60  3c 50 8d e5                                      str r5, [sp, #0x3c]
00760b64  40 50 8d e5                                      str r5, [sp, #0x40]
00760b68  44 50 8d e5                                      str r5, [sp, #0x44]
00760b6c  48 50 cd e5                                      strb r5, [sp, #0x48]
00760b70  e8 fe ff eb                                      bl #0x760718
00760b74  40 20 9d e5                                      ldr r2, [sp, #0x40]
00760b78  05 00 52 e1                                      cmp r2, r5
00760b7c  14 20 8d e5                                      str r2, [sp, #0x14]
00760b80  52 00 00 da                                      ble #0x760cd0
00760b84  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
00760b88  4c c0 8d e2                                      add ip, sp, #0x4c
00760b8c  58 10 8d e2                                      add r1, sp, #0x58
00760b90  03 30 8f e0                                      add r3, pc, r3
00760b94  2c 30 8d e5                                      str r3, [sp, #0x2c]
00760b98  70 30 8d e2                                      add r3, sp, #0x70
00760b9c  05 60 a0 e1                                      mov r6, r5
00760ba0  18 30 8d e5                                      str r3, [sp, #0x18]
00760ba4  64 70 8d e2                                      add r7, sp, #0x64
00760ba8  1c c0 8d e5                                      str ip, [sp, #0x1c]
00760bac  20 10 8d e5                                      str r1, [sp, #0x20]
00760bb0  30 00 00 ea                                      b #0x760c78
00760bb4  04 00 a0 e1                                      mov r0, r4
00760bb8  29 e4 ff eb                                      bl #0x759c64
00760bbc  64 60 cd e5                                      strb r6, [sp, #0x64]
00760bc0  65 60 cd e5                                      strb r6, [sp, #0x65]
00760bc4  00 30 94 e5                                      ldr r3, [r4]
00760bc8  28 10 9d e5                                      ldr r1, [sp, #0x28]
00760bcc  18 00 9d e5                                      ldr r0, [sp, #0x18]
00760bd0  20 a0 93 e5                                      ldr sl, [r3, #0x20]
00760bd4  14 c9 ff eb                                      bl #0x75302c
00760bd8  04 00 a0 e1                                      mov r0, r4
00760bdc  18 10 9d e5                                      ldr r1, [sp, #0x18]
00760be0  07 20 a0 e1                                      mov r2, r7
00760be4  3a ff 2f e1                                      blx sl
00760be8  d0 37 dd e1                                      ldrsb r3, [sp, #0x70]
00760bec  00 a0 a0 e1                                      mov sl, r0
00760bf0  01 00 73 e3                                      cmn r3, #1
00760bf4  44 00 00 0a                                      beq #0x760d0c
00760bf8  00 00 5a e3                                      cmp sl, #0
00760bfc  15 00 00 0a                                      beq #0x760c58
00760c00  05 20 a0 e3                                      mov r2, #5
00760c04  04 00 a0 e1                                      mov r0, r4
00760c08  59 20 cd e5                                      strb r2, [sp, #0x59]
00760c0c  58 60 cd e5                                      strb r6, [sp, #0x58]
00760c10  5c 40 8d e5                                      str r4, [sp, #0x5c]
00760c14  12 e4 ff eb                                      bl #0x759c64
00760c18  10 30 98 e5                                      ldr r3, [r8, #0x10]
00760c1c  0c 20 98 e5                                      ldr r2, [r8, #0xc]
00760c20  07 10 a0 e1                                      mov r1, r7
00760c24  00 30 8d e5                                      str r3, [sp]
00760c28  04 c0 92 e5                                      ldr ip, [r2, #4]
00760c2c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00760c30  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00760c34  01 c0 4c e2                                      sub ip, ip, #1
00760c38  04 c0 8d e5                                      str ip, [sp, #4]
00760c3c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00760c40  08 c0 8d e5                                      str ip, [sp, #8]
00760c44  2e 67 01 eb                                      bl #0x7ba904
00760c48  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00760c4c  34 d9 00 eb                                      bl #0x797124
00760c50  20 00 9d e5                                      ldr r0, [sp, #0x20]
00760c54  32 d9 00 eb                                      bl #0x797124
00760c58  07 00 a0 e1                                      mov r0, r7
00760c5c  30 d9 00 eb                                      bl #0x797124
00760c60  04 00 a0 e1                                      mov r0, r4
00760c64  75 e5 ff eb                                      bl #0x75a240
00760c68  14 10 9d e5                                      ldr r1, [sp, #0x14]
00760c6c  01 50 85 e2                                      add r5, r5, #1
00760c70  01 00 55 e1                                      cmp r5, r1
00760c74  15 00 00 0a                                      beq #0x760cd0
00760c78  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
00760c7c  85 b1 a0 e1                                      lsl fp, r5, #3
00760c80  0b 90 8a e0                                      add sb, sl, fp
00760c84  04 40 99 e5                                      ldr r4, [sb, #4]
00760c88  00 00 54 e3                                      cmp r4, #0
00760c8c  f5 ff ff 0a                                      beq #0x760c68
00760c90  85 01 9a e7                                      ldr r0, [sl, r5, lsl #3]
00760c94  04 30 d0 e5                                      ldrb r3, [r0, #4]
00760c98  00 00 53 e3                                      cmp r3, #0
00760c9c  c4 ff ff 1a                                      bne #0x760bb4
00760ca0  00 10 90 e5                                      ldr r1, [r0]
00760ca4  01 10 41 e2                                      sub r1, r1, #1
00760ca8  00 00 51 e3                                      cmp r1, #0
00760cac  00 10 80 e5                                      str r1, [r0]
00760cb0  00 00 00 1a                                      bne #0x760cb8
00760cb4  9f c7 ff eb                                      bl #0x752b38
00760cb8  0b 60 8a e7                                      str r6, [sl, fp]
00760cbc  04 60 89 e5                                      str r6, [sb, #4]
00760cc0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00760cc4  01 50 85 e2                                      add r5, r5, #1
00760cc8  01 00 55 e1                                      cmp r5, r1
00760ccc  e9 ff ff 1a                                      bne #0x760c78
00760cd0  00 10 a0 e3                                      mov r1, #0
00760cd4  30 00 9d e5                                      ldr r0, [sp, #0x30]
00760cd8  3f fe ff eb                                      bl #0x7605dc
00760cdc  30 00 9d e5                                      ldr r0, [sp, #0x30]
00760ce0  00 10 a0 e3                                      mov r1, #0
00760ce4  1d fe ff eb                                      bl #0x760560
00760ce8  34 20 9d e5                                      ldr r2, [sp, #0x34]
00760cec  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00760cf0  02 30 9c e7                                      ldr r3, [ip, r2]
00760cf4  84 20 9d e5                                      ldr r2, [sp, #0x84]
00760cf8  00 30 93 e5                                      ldr r3, [r3]
00760cfc  03 00 52 e1                                      cmp r2, r3
00760d00  10 00 00 1a                                      bne #0x760d48
00760d04  8c d0 8d e2                                      add sp, sp, #0x8c
00760d08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00760d0c  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
00760d10  78 10 9d e5                                      ldr r1, [sp, #0x78]
00760d14  87 c7 ff eb                                      bl #0x752b38
00760d18  b6 ff ff ea                                      b #0x760bf8
00760d1c  00 10 93 e5                                      ldr r1, [r3]
00760d20  01 10 41 e2                                      sub r1, r1, #1
00760d24  00 00 51 e3                                      cmp r1, #0
00760d28  00 10 83 e5                                      str r1, [r3]
00760d2c  01 00 00 1a                                      bne #0x760d38
00760d30  03 00 a0 e1                                      mov r0, r3
00760d34  7f c7 ff eb                                      bl #0x752b38
00760d38  00 00 a0 e3                                      mov r0, #0
00760d3c  68 00 84 e5                                      str r0, [r4, #0x68]
00760d40  64 00 84 e5                                      str r0, [r4, #0x64]
00760d44  7d ff ff ea                                      b #0x760b40
00760d48  70 b5 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00760d4c  94 3f 23 00 ac 40 00 00 a8 ca 16 00              .byte 0x94, 0x3f, 0x23, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0xca, 0x16, 0x00

; FUNCTION 0x00760d58, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::listener
; alias: _ZN7gameswf8listener7advanceEf
; demangled: gameswf::listener::advance(float)
; decoder-mode: arm
00760d58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00760d5c  1c d0 4d e2                                      sub sp, sp, #0x1c
00760d60  08 30 8d e2                                      add r3, sp, #8
00760d64  00 40 a0 e3                                      mov r4, #0
00760d68  01 b0 a0 e1                                      mov fp, r1
00760d6c  00 10 a0 e1                                      mov r1, r0
00760d70  03 00 a0 e1                                      mov r0, r3
00760d74  18 00 8d e9                                      stmib sp, {r3, r4}
00760d78  0c 40 8d e5                                      str r4, [sp, #0xc]
00760d7c  10 40 8d e5                                      str r4, [sp, #0x10]
00760d80  14 40 cd e5                                      strb r4, [sp, #0x14]
00760d84  63 fe ff eb                                      bl #0x760718
00760d88  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00760d8c  04 00 5a e1                                      cmp sl, r4
00760d90  23 00 00 da                                      ble #0x760e24
00760d94  04 90 a0 e1                                      mov sb, r4
00760d98  0a 00 00 ea                                      b #0x760dc8
00760d9c  b0 e3 ff eb                                      bl #0x759c64
00760da0  05 00 a0 e1                                      mov r0, r5
00760da4  00 30 95 e5                                      ldr r3, [r5]
00760da8  0b 10 a0 e1                                      mov r1, fp
00760dac  0f e0 a0 e1                                      mov lr, pc
00760db0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00760db4  05 00 a0 e1                                      mov r0, r5
00760db8  20 e5 ff eb                                      bl #0x75a240
00760dbc  01 40 84 e2                                      add r4, r4, #1
00760dc0  0a 00 54 e1                                      cmp r4, sl
00760dc4  16 00 00 0a                                      beq #0x760e24
00760dc8  08 60 9d e5                                      ldr r6, [sp, #8]
00760dcc  84 81 a0 e1                                      lsl r8, r4, #3
00760dd0  08 70 86 e0                                      add r7, r6, r8
00760dd4  04 50 97 e5                                      ldr r5, [r7, #4]
00760dd8  00 00 55 e2                                      subs r0, r5, #0
00760ddc  f6 ff ff 0a                                      beq #0x760dbc
00760de0  84 31 96 e7                                      ldr r3, [r6, r4, lsl #3]
00760de4  04 20 d3 e5                                      ldrb r2, [r3, #4]
00760de8  00 00 52 e3                                      cmp r2, #0
00760dec  ea ff ff 1a                                      bne #0x760d9c
00760df0  00 20 93 e5                                      ldr r2, [r3]
00760df4  03 00 a0 e1                                      mov r0, r3
00760df8  01 20 42 e2                                      sub r2, r2, #1
00760dfc  00 00 52 e3                                      cmp r2, #0
00760e00  02 10 a0 e1                                      mov r1, r2
00760e04  00 20 83 e5                                      str r2, [r3]
00760e08  00 00 00 1a                                      bne #0x760e10
00760e0c  49 c7 ff eb                                      bl #0x752b38
00760e10  01 40 84 e2                                      add r4, r4, #1
00760e14  0a 00 54 e1                                      cmp r4, sl
00760e18  08 90 86 e7                                      str sb, [r6, r8]
00760e1c  04 90 87 e5                                      str sb, [r7, #4]
00760e20  e8 ff ff 1a                                      bne #0x760dc8
00760e24  04 00 9d e5                                      ldr r0, [sp, #4]
00760e28  00 10 a0 e3                                      mov r1, #0
00760e2c  ea fd ff eb                                      bl #0x7605dc
00760e30  04 00 9d e5                                      ldr r0, [sp, #4]
00760e34  00 10 a0 e3                                      mov r1, #0
00760e38  c8 fd ff eb                                      bl #0x760560
00760e3c  1c d0 8d e2                                      add sp, sp, #0x1c
00760e40  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00760e44, declared_size=180, range_size=180, mode=arm
; class-group: gameswf::listener
; alias: _ZN7gameswf8listener6removeEPNS_9as_objectE
; demangled: gameswf::listener::remove(gameswf::as_object*)
; decoder-mode: arm
00760e44  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00760e48  04 a0 90 e5                                      ldr sl, [r0, #4]
00760e4c  00 80 a0 e1                                      mov r8, r0
00760e50  01 90 a0 e1                                      mov sb, r1
00760e54  00 00 5a e3                                      cmp sl, #0
00760e58  25 00 00 da                                      ble #0x760ef4
00760e5c  00 40 a0 e3                                      mov r4, #0
00760e60  04 b0 a0 e1                                      mov fp, r4
00760e64  04 00 00 ea                                      b #0x760e7c
00760e68  02 00 59 e1                                      cmp sb, r2
00760e6c  01 40 84 e2                                      add r4, r4, #1
00760e70  19 00 00 0a                                      beq #0x760edc
00760e74  0a 00 54 e1                                      cmp r4, sl
00760e78  1d 00 00 0a                                      beq #0x760ef4
00760e7c  00 50 98 e5                                      ldr r5, [r8]
00760e80  84 61 a0 e1                                      lsl r6, r4, #3
00760e84  06 70 85 e0                                      add r7, r5, r6
00760e88  04 20 97 e5                                      ldr r2, [r7, #4]
00760e8c  00 00 52 e3                                      cmp r2, #0
00760e90  f4 ff ff 0a                                      beq #0x760e68
00760e94  84 31 95 e7                                      ldr r3, [r5, r4, lsl #3]
00760e98  04 10 d3 e5                                      ldrb r1, [r3, #4]
00760e9c  00 00 51 e3                                      cmp r1, #0
00760ea0  f0 ff ff 1a                                      bne #0x760e68
00760ea4  00 20 93 e5                                      ldr r2, [r3]
00760ea8  03 00 a0 e1                                      mov r0, r3
00760eac  01 20 42 e2                                      sub r2, r2, #1
00760eb0  00 00 52 e3                                      cmp r2, #0
00760eb4  02 10 a0 e1                                      mov r1, r2
00760eb8  00 20 83 e5                                      str r2, [r3]
00760ebc  00 00 00 1a                                      bne #0x760ec4
00760ec0  1c c7 ff eb                                      bl #0x752b38
00760ec4  0b 20 a0 e1                                      mov r2, fp
00760ec8  02 00 59 e1                                      cmp sb, r2
00760ecc  06 b0 85 e7                                      str fp, [r5, r6]
00760ed0  01 40 84 e2                                      add r4, r4, #1
00760ed4  04 b0 87 e5                                      str fp, [r7, #4]
00760ed8  e5 ff ff 1a                                      bne #0x760e74
00760edc  00 00 98 e5                                      ldr r0, [r8]
00760ee0  00 10 a0 e3                                      mov r1, #0
00760ee4  06 00 80 e0                                      add r0, r0, r6
00760ee8  66 f7 ff eb                                      bl #0x75ec88
00760eec  0a 00 54 e1                                      cmp r4, sl
00760ef0  e1 ff ff 1a                                      bne #0x760e7c
00760ef4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00760f4c, declared_size=304, range_size=304, mode=arm
; class-group: gameswf::listener
; alias: _ZN7gameswf8listener3addEPNS_9as_objectE
; demangled: gameswf::listener::add(gameswf::as_object*)
; decoder-mode: arm
00760f4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00760f50  00 a0 51 e2                                      subs sl, r1, #0
00760f54  0c d0 4d e2                                      sub sp, sp, #0xc
00760f58  00 80 a0 e1                                      mov r8, r0
00760f5c  04 10 8d e5                                      str r1, [sp, #4]
00760f60  2c 00 00 0a                                      beq #0x761018
00760f64  04 b0 90 e5                                      ldr fp, [r0, #4]
00760f68  00 00 5b e3                                      cmp fp, #0
00760f6c  3e 00 00 da                                      ble #0x76106c
00760f70  00 40 a0 e3                                      mov r4, #0
00760f74  00 30 e0 e3                                      mvn r3, #0
00760f78  04 90 a0 e1                                      mov sb, r4
00760f7c  0e 00 00 ea                                      b #0x760fbc
00760f80  02 00 5a e1                                      cmp sl, r2
00760f84  23 00 00 0a                                      beq #0x761018
00760f88  00 60 98 e5                                      ldr r6, [r8]
00760f8c  05 70 86 e0                                      add r7, r6, r5
00760f90  04 20 97 e5                                      ldr r2, [r7, #4]
00760f94  00 00 52 e3                                      cmp r2, #0
00760f98  28 00 00 0a                                      beq #0x761040
00760f9c  05 00 96 e7                                      ldr r0, [r6, r5]
00760fa0  04 20 d0 e5                                      ldrb r2, [r0, #4]
00760fa4  00 00 52 e3                                      cmp r2, #0
00760fa8  1c 00 00 0a                                      beq #0x761020
00760fac  01 40 84 e2                                      add r4, r4, #1
00760fb0  0b 00 54 e1                                      cmp r4, fp
00760fb4  25 00 00 0a                                      beq #0x761050
00760fb8  04 a0 9d e5                                      ldr sl, [sp, #4]
00760fbc  00 60 98 e5                                      ldr r6, [r8]
00760fc0  84 51 a0 e1                                      lsl r5, r4, #3
00760fc4  05 70 86 e0                                      add r7, r6, r5
00760fc8  04 20 97 e5                                      ldr r2, [r7, #4]
00760fcc  00 00 52 e3                                      cmp r2, #0
00760fd0  ea ff ff 0a                                      beq #0x760f80
00760fd4  84 01 96 e7                                      ldr r0, [r6, r4, lsl #3]
00760fd8  04 10 d0 e5                                      ldrb r1, [r0, #4]
00760fdc  00 00 51 e3                                      cmp r1, #0
00760fe0  e6 ff ff 1a                                      bne #0x760f80
00760fe4  00 10 90 e5                                      ldr r1, [r0]
00760fe8  01 10 41 e2                                      sub r1, r1, #1
00760fec  00 00 51 e3                                      cmp r1, #0
00760ff0  00 10 80 e5                                      str r1, [r0]
00760ff4  02 00 00 1a                                      bne #0x761004
00760ff8  00 30 8d e5                                      str r3, [sp]
00760ffc  cd c6 ff eb                                      bl #0x752b38
00761000  00 30 9d e5                                      ldr r3, [sp]
00761004  09 20 a0 e1                                      mov r2, sb
00761008  02 00 5a e1                                      cmp sl, r2
0076100c  05 90 86 e7                                      str sb, [r6, r5]
00761010  04 90 87 e5                                      str sb, [r7, #4]
00761014  db ff ff 1a                                      bne #0x760f88
00761018  0c d0 8d e2                                      add sp, sp, #0xc
0076101c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00761020  00 10 90 e5                                      ldr r1, [r0]
00761024  01 10 41 e2                                      sub r1, r1, #1
00761028  00 00 51 e3                                      cmp r1, #0
0076102c  00 10 80 e5                                      str r1, [r0]
00761030  00 00 00 1a                                      bne #0x761038
00761034  bf c6 ff eb                                      bl #0x752b38
00761038  05 90 86 e7                                      str sb, [r6, r5]
0076103c  04 90 87 e5                                      str sb, [r7, #4]
00761040  04 30 a0 e1                                      mov r3, r4
00761044  01 40 84 e2                                      add r4, r4, #1
00761048  0b 00 54 e1                                      cmp r4, fp
0076104c  d9 ff ff 1a                                      bne #0x760fb8
00761050  01 00 73 e3                                      cmn r3, #1
00761054  04 00 00 0a                                      beq #0x76106c
00761058  00 00 98 e5                                      ldr r0, [r8]
0076105c  04 10 9d e5                                      ldr r1, [sp, #4]
00761060  83 01 80 e0                                      add r0, r0, r3, lsl #3
00761064  07 f7 ff eb                                      bl #0x75ec88
00761068  ea ff ff ea                                      b #0x761018
0076106c  08 00 a0 e1                                      mov r0, r8
00761070  04 10 8d e2                                      add r1, sp, #4
00761074  9f ff ff eb                                      bl #0x760ef8
00761078  e6 ff ff ea                                      b #0x761018

; FUNCTION 0x0076107c, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::listener
; alias: _ZNK7gameswf8listenerixEi
; demangled: gameswf::listener::operator[](int) const
; decoder-mode: arm
0076107c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00761080  00 b0 51 e2                                      subs fp, r1, #0
00761084  0c d0 4d e2                                      sub sp, sp, #0xc
00761088  00 80 a0 e1                                      mov r8, r0
0076108c  25 00 00 ba                                      blt #0x761128
00761090  04 70 90 e5                                      ldr r7, [r0, #4]
00761094  07 00 5b e1                                      cmp fp, r7
00761098  22 00 00 aa                                      bge #0x761128
0076109c  00 00 57 e3                                      cmp r7, #0
007610a0  20 00 00 da                                      ble #0x761128
007610a4  00 40 a0 e3                                      mov r4, #0
007610a8  04 60 a0 e1                                      mov r6, r4
007610ac  04 c0 a0 e1                                      mov ip, r4
007610b0  05 00 00 ea                                      b #0x7610cc
007610b4  0b 00 56 e1                                      cmp r6, fp
007610b8  1d 00 00 0a                                      beq #0x761134
007610bc  01 60 86 e2                                      add r6, r6, #1
007610c0  01 40 84 e2                                      add r4, r4, #1
007610c4  07 00 54 e1                                      cmp r4, r7
007610c8  16 00 00 0a                                      beq #0x761128
007610cc  00 50 98 e5                                      ldr r5, [r8]
007610d0  84 91 a0 e1                                      lsl sb, r4, #3
007610d4  09 a0 85 e0                                      add sl, r5, sb
007610d8  04 30 9a e5                                      ldr r3, [sl, #4]
007610dc  00 00 53 e3                                      cmp r3, #0
007610e0  f6 ff ff 0a                                      beq #0x7610c0
007610e4  84 31 95 e7                                      ldr r3, [r5, r4, lsl #3]
007610e8  04 20 d3 e5                                      ldrb r2, [r3, #4]
007610ec  00 00 52 e3                                      cmp r2, #0
007610f0  ef ff ff 1a                                      bne #0x7610b4
007610f4  00 20 93 e5                                      ldr r2, [r3]
007610f8  03 00 a0 e1                                      mov r0, r3
007610fc  01 20 42 e2                                      sub r2, r2, #1
00761100  00 00 52 e3                                      cmp r2, #0
00761104  02 10 a0 e1                                      mov r1, r2
00761108  00 20 83 e5                                      str r2, [r3]
0076110c  02 00 00 1a                                      bne #0x76111c
00761110  04 c0 8d e5                                      str ip, [sp, #4]
00761114  87 c6 ff eb                                      bl #0x752b38
00761118  04 c0 9d e5                                      ldr ip, [sp, #4]
0076111c  09 c0 85 e7                                      str ip, [r5, sb]
00761120  04 c0 8a e5                                      str ip, [sl, #4]
00761124  e5 ff ff ea                                      b #0x7610c0
00761128  00 00 a0 e3                                      mov r0, #0
0076112c  0c d0 8d e2                                      add sp, sp, #0xc
00761130  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00761134  0a 00 a0 e1                                      mov r0, sl
00761138  57 fe ff eb                                      bl #0x760a9c
0076113c  04 00 9a e5                                      ldr r0, [sl, #4]
00761140  f9 ff ff ea                                      b #0x76112c

; FUNCTION 0x00761144, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::listener
; alias: _ZNK7gameswf8listenerixERKNS_10tu_stringiE
; demangled: gameswf::listener::operator[](gameswf::tu_stringi const&) const
; decoder-mode: arm
00761144  10 40 2d e9                                      push {r4, lr}
00761148  d0 30 d1 e1                                      ldrsb r3, [r1]
0076114c  00 40 a0 e1                                      mov r4, r0
00761150  01 00 73 e3                                      cmn r3, #1
00761154  01 00 81 12                                      addne r0, r1, #1
00761158  0c 00 91 05                                      ldreq r0, [r1, #0xc]
0076115c  cc b3 ee eb                                      bl #0x30e094
00761160  00 10 a0 e1                                      mov r1, r0
00761164  04 00 a0 e1                                      mov r0, r4
00761168  10 40 bd e8                                      pop {r4, lr}
0076116c  c2 ff ff ea                                      b #0x76107c
