; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3c40, declared_size=104, range_size=104, mode=arm
; class-group: Structs::Merchant
; alias: _ZN7Structs8Merchant8finalizeEv
; demangled: Structs::Merchant::finalize()
; decoder-mode: arm
004d3c40  70 40 2d e9                                      push {r4, r5, r6, lr}
004d3c44  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d3c48  00 50 a0 e1                                      mov r5, r0
004d3c4c  00 00 53 e3                                      cmp r3, #0
004d3c50  13 00 00 0a                                      beq #0x4d3ca4
004d3c54  04 20 13 e5                                      ldr r2, [r3, #-4]
004d3c58  0c 00 a0 e3                                      mov r0, #0xc
004d3c5c  90 32 20 e0                                      mla r0, r0, r2, r3
004d3c60  00 00 53 e1                                      cmp r3, r0
004d3c64  01 00 00 1a                                      bne #0x4d3c70
004d3c68  08 00 00 ea                                      b #0x4d3c90
004d3c6c  04 00 a0 e1                                      mov r0, r4
004d3c70  0c 40 40 e2                                      sub r4, r0, #0xc
004d3c74  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d3c78  04 00 a0 e1                                      mov r0, r4
004d3c7c  0f e0 a0 e1                                      mov lr, pc
004d3c80  00 f0 93 e5                                      ldr pc, [r3]
004d3c84  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d3c88  04 00 50 e1                                      cmp r0, r4
004d3c8c  f6 ff ff 1a                                      bne #0x4d3c6c
004d3c90  08 00 40 e2                                      sub r0, r0, #8
004d3c94  e9 f1 f8 eb                                      bl #0x310440
004d3c98  00 30 a0 e3                                      mov r3, #0
004d3c9c  0c 30 85 e5                                      str r3, [r5, #0xc]
004d3ca0  10 30 85 e5                                      str r3, [r5, #0x10]
004d3ca4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d3ca8, declared_size=128, range_size=128, mode=arm
; class-group: Structs::Merchant
; alias: _ZN7Structs8MerchantD1Ev
; demangled: Structs::Merchant::~Merchant()
; decoder-mode: arm
004d3ca8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d3cac  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004d3cb0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004d3cb4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d3cb8  03 30 8f e0                                      add r3, pc, r3
004d3cbc  02 20 93 e7                                      ldr r2, [r3, r2]
004d3cc0  00 00 51 e3                                      cmp r1, #0
004d3cc4  00 50 a0 e1                                      mov r5, r0
004d3cc8  08 20 82 e2                                      add r2, r2, #8
004d3ccc  00 20 80 e5                                      str r2, [r0]
004d3cd0  10 00 00 0a                                      beq #0x4d3d18
004d3cd4  04 30 11 e5                                      ldr r3, [r1, #-4]
004d3cd8  0c 00 a0 e3                                      mov r0, #0xc
004d3cdc  90 13 20 e0                                      mla r0, r0, r3, r1
004d3ce0  00 00 51 e1                                      cmp r1, r0
004d3ce4  01 00 00 1a                                      bne #0x4d3cf0
004d3ce8  08 00 00 ea                                      b #0x4d3d10
004d3cec  04 00 a0 e1                                      mov r0, r4
004d3cf0  0c 40 40 e2                                      sub r4, r0, #0xc
004d3cf4  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d3cf8  04 00 a0 e1                                      mov r0, r4
004d3cfc  0f e0 a0 e1                                      mov lr, pc
004d3d00  00 f0 93 e5                                      ldr pc, [r3]
004d3d04  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d3d08  04 00 50 e1                                      cmp r0, r4
004d3d0c  f6 ff ff 1a                                      bne #0x4d3cec
004d3d10  08 00 40 e2                                      sub r0, r0, #8
004d3d14  c9 f1 f8 eb                                      bl #0x310440
004d3d18  05 00 a0 e1                                      mov r0, r5
004d3d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d3d20  d8 0d 4c 00 a0 47 00 00                          .byte 0xd8, 0x0d, 0x4c, 0x00, 0xa0, 0x47, 0x00, 0x00

; FUNCTION 0x004d3d28, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Merchant
; alias: _ZN7Structs8MerchantD0Ev
; demangled: Structs::Merchant::~Merchant()
; decoder-mode: arm
004d3d28  10 40 2d e9                                      push {r4, lr}
004d3d2c  00 40 a0 e1                                      mov r4, r0
004d3d30  dc ff ff eb                                      bl #0x4d3ca8
004d3d34  04 00 a0 e1                                      mov r0, r4
004d3d38  c0 f1 f8 eb                                      bl #0x310440
004d3d3c  04 00 a0 e1                                      mov r0, r4
004d3d40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3d44, declared_size=128, range_size=128, mode=arm
; class-group: Structs::Merchant
; alias: _ZN7Structs8MerchantD2Ev
; demangled: Structs::Merchant::~Merchant()
; decoder-mode: arm
004d3d44  70 40 2d e9                                      push {r4, r5, r6, lr}
004d3d48  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004d3d4c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004d3d50  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d3d54  03 30 8f e0                                      add r3, pc, r3
004d3d58  02 20 93 e7                                      ldr r2, [r3, r2]
004d3d5c  00 00 51 e3                                      cmp r1, #0
004d3d60  00 50 a0 e1                                      mov r5, r0
004d3d64  08 20 82 e2                                      add r2, r2, #8
004d3d68  00 20 80 e5                                      str r2, [r0]
004d3d6c  10 00 00 0a                                      beq #0x4d3db4
004d3d70  04 30 11 e5                                      ldr r3, [r1, #-4]
004d3d74  0c 00 a0 e3                                      mov r0, #0xc
004d3d78  90 13 20 e0                                      mla r0, r0, r3, r1
004d3d7c  00 00 51 e1                                      cmp r1, r0
004d3d80  01 00 00 1a                                      bne #0x4d3d8c
004d3d84  08 00 00 ea                                      b #0x4d3dac
004d3d88  04 00 a0 e1                                      mov r0, r4
004d3d8c  0c 40 40 e2                                      sub r4, r0, #0xc
004d3d90  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004d3d94  04 00 a0 e1                                      mov r0, r4
004d3d98  0f e0 a0 e1                                      mov lr, pc
004d3d9c  00 f0 93 e5                                      ldr pc, [r3]
004d3da0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d3da4  04 00 50 e1                                      cmp r0, r4
004d3da8  f6 ff ff 1a                                      bne #0x4d3d88
004d3dac  08 00 40 e2                                      sub r0, r0, #8
004d3db0  a2 f1 f8 eb                                      bl #0x310440
004d3db4  05 00 a0 e1                                      mov r0, r5
004d3db8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d3dbc  3c 0d 4c 00 a0 47 00 00                          .byte 0x3c, 0x0d, 0x4c, 0x00, 0xa0, 0x47, 0x00, 0x00

; FUNCTION 0x004ff604, declared_size=548, range_size=548, mode=arm
; class-group: Structs::Merchant
; alias: _ZN7Structs8Merchant4readEP11IStreamBase
; demangled: Structs::Merchant::read(IStreamBase*)
; decoder-mode: arm
004ff604  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ff608  00 50 a0 e1                                      mov r5, r0
004ff60c  08 d0 4d e2                                      sub sp, sp, #8
004ff610  01 00 a0 e1                                      mov r0, r1
004ff614  01 70 a0 e1                                      mov r7, r1
004ff618  00 62 9f e5                                      ldr r6, [pc, #0x200]
004ff61c  04 10 85 e2                                      add r1, r5, #4
004ff620  9a 66 fd eb                                      bl #0x459090
004ff624  01 30 a0 e3                                      mov r3, #1
004ff628  00 00 53 e3                                      cmp r3, #0
004ff62c  04 30 8d e5                                      str r3, [sp, #4]
004ff630  06 60 8f e0                                      add r6, pc, r6
004ff634  0f 00 00 1a                                      bne #0x4ff678
004ff638  05 30 85 e2                                      add r3, r5, #5
004ff63c  06 20 85 e2                                      add r2, r5, #6
004ff640  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff644  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff648  03 00 52 e1                                      cmp r2, r3
004ff64c  01 10 20 e0                                      eor r1, r0, r1
004ff650  01 10 43 e5                                      strb r1, [r3, #-1]
004ff654  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff658  00 10 21 e0                                      eor r1, r1, r0
004ff65c  01 10 c2 e5                                      strb r1, [r2, #1]
004ff660  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff664  01 20 42 e2                                      sub r2, r2, #1
004ff668  00 10 21 e0                                      eor r1, r1, r0
004ff66c  01 10 43 e5                                      strb r1, [r3, #-1]
004ff670  01 30 83 e2                                      add r3, r3, #1
004ff674  f1 ff ff 8a                                      bhi #0x4ff640
004ff678  07 00 a0 e1                                      mov r0, r7
004ff67c  08 10 85 e2                                      add r1, r5, #8
004ff680  82 66 fd eb                                      bl #0x459090
004ff684  01 30 a0 e3                                      mov r3, #1
004ff688  00 00 53 e3                                      cmp r3, #0
004ff68c  04 30 8d e5                                      str r3, [sp, #4]
004ff690  0f 00 00 1a                                      bne #0x4ff6d4
004ff694  09 30 85 e2                                      add r3, r5, #9
004ff698  0a 20 85 e2                                      add r2, r5, #0xa
004ff69c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff6a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff6a4  03 00 52 e1                                      cmp r2, r3
004ff6a8  01 10 20 e0                                      eor r1, r0, r1
004ff6ac  01 10 43 e5                                      strb r1, [r3, #-1]
004ff6b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff6b4  00 10 21 e0                                      eor r1, r1, r0
004ff6b8  01 10 c2 e5                                      strb r1, [r2, #1]
004ff6bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff6c0  01 20 42 e2                                      sub r2, r2, #1
004ff6c4  00 10 21 e0                                      eor r1, r1, r0
004ff6c8  01 10 43 e5                                      strb r1, [r3, #-1]
004ff6cc  01 30 83 e2                                      add r3, r3, #1
004ff6d0  f1 ff ff 8a                                      bhi #0x4ff69c
004ff6d4  07 00 a0 e1                                      mov r0, r7
004ff6d8  0c 10 85 e2                                      add r1, r5, #0xc
004ff6dc  af 7e fb eb                                      bl #0x3df1a0
004ff6e0  01 30 a0 e3                                      mov r3, #1
004ff6e4  00 00 53 e3                                      cmp r3, #0
004ff6e8  04 30 8d e5                                      str r3, [sp, #4]
004ff6ec  0f 00 00 1a                                      bne #0x4ff730
004ff6f0  0d 30 85 e2                                      add r3, r5, #0xd
004ff6f4  0e 20 85 e2                                      add r2, r5, #0xe
004ff6f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff6fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff700  03 00 52 e1                                      cmp r2, r3
004ff704  01 10 20 e0                                      eor r1, r0, r1
004ff708  01 10 43 e5                                      strb r1, [r3, #-1]
004ff70c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff710  00 10 21 e0                                      eor r1, r1, r0
004ff714  01 10 c2 e5                                      strb r1, [r2, #1]
004ff718  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff71c  01 20 42 e2                                      sub r2, r2, #1
004ff720  00 10 21 e0                                      eor r1, r1, r0
004ff724  01 10 43 e5                                      strb r1, [r3, #-1]
004ff728  01 30 83 e2                                      add r3, r3, #1
004ff72c  f1 ff ff 8a                                      bhi #0x4ff6f8
004ff730  10 30 95 e5                                      ldr r3, [r5, #0x10]
004ff734  00 00 53 e3                                      cmp r3, #0
004ff738  10 00 00 0a                                      beq #0x4ff780
004ff73c  04 20 13 e5                                      ldr r2, [r3, #-4]
004ff740  0c 00 a0 e3                                      mov r0, #0xc
004ff744  90 32 20 e0                                      mla r0, r0, r2, r3
004ff748  00 00 53 e1                                      cmp r3, r0
004ff74c  01 00 00 1a                                      bne #0x4ff758
004ff750  08 00 00 ea                                      b #0x4ff778
004ff754  04 00 a0 e1                                      mov r0, r4
004ff758  0c 40 40 e2                                      sub r4, r0, #0xc
004ff75c  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004ff760  04 00 a0 e1                                      mov r0, r4
004ff764  0f e0 a0 e1                                      mov lr, pc
004ff768  00 f0 93 e5                                      ldr pc, [r3]
004ff76c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004ff770  04 00 50 e1                                      cmp r0, r4
004ff774  f6 ff ff 1a                                      bne #0x4ff754
004ff778  08 00 40 e2                                      sub r0, r0, #8
004ff77c  2f 43 f8 eb                                      bl #0x310440
004ff780  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004ff784  0c 80 a0 e3                                      mov r8, #0xc
004ff788  01 10 a0 e3                                      mov r1, #1
004ff78c  98 04 00 e0                                      mul r0, r8, r4
004ff790  08 00 80 e2                                      add r0, r0, #8
004ff794  74 43 f8 eb                                      bl #0x31056c
004ff798  00 00 54 e3                                      cmp r4, #0
004ff79c  00 80 80 e5                                      str r8, [r0]
004ff7a0  04 40 80 e5                                      str r4, [r0, #4]
004ff7a4  08 30 80 e2                                      add r3, r0, #8
004ff7a8  08 00 00 0a                                      beq #0x4ff7d0
004ff7ac  70 10 9f e5                                      ldr r1, [pc, #0x70]
004ff7b0  00 20 a0 e3                                      mov r2, #0
004ff7b4  01 10 96 e7                                      ldr r1, [r6, r1]
004ff7b8  08 10 81 e2                                      add r1, r1, #8
004ff7bc  01 20 82 e2                                      add r2, r2, #1
004ff7c0  04 00 52 e1                                      cmp r2, r4
004ff7c4  08 10 80 e5                                      str r1, [r0, #8]
004ff7c8  0c 00 80 e2                                      add r0, r0, #0xc
004ff7cc  fa ff ff 1a                                      bne #0x4ff7bc
004ff7d0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004ff7d4  10 30 85 e5                                      str r3, [r5, #0x10]
004ff7d8  00 00 52 e3                                      cmp r2, #0
004ff7dc  0d 00 00 0a                                      beq #0x4ff818
004ff7e0  00 40 a0 e3                                      mov r4, #0
004ff7e4  04 60 a0 e1                                      mov r6, r4
004ff7e8  00 00 00 ea                                      b #0x4ff7f0
004ff7ec  10 30 95 e5                                      ldr r3, [r5, #0x10]
004ff7f0  04 00 83 e0                                      add r0, r3, r4
004ff7f4  07 10 a0 e1                                      mov r1, r7
004ff7f8  04 30 93 e7                                      ldr r3, [r3, r4]
004ff7fc  0f e0 a0 e1                                      mov lr, pc
004ff800  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ff804  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004ff808  01 60 86 e2                                      add r6, r6, #1
004ff80c  0c 40 84 e2                                      add r4, r4, #0xc
004ff810  06 00 53 e1                                      cmp r3, r6
004ff814  f4 ff ff 8a                                      bhi #0x4ff7ec
004ff818  08 d0 8d e2                                      add sp, sp, #8
004ff81c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ff820  60 54 49 00 f0 35 00 00                          .byte 0x60, 0x54, 0x49, 0x00, 0xf0, 0x35, 0x00, 0x00
