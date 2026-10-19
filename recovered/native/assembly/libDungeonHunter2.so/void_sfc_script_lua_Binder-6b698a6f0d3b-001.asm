; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00386c20, declared_size=224, range_size=224, mode=arm
; class-group: void sfc::script::lua::Binder
; alias: _ZN3sfc6script3lua6Binder10bindMethodI6TestUDEEvPKcMT_FvRKNS1_9ArgumentsERNS1_12ReturnValuesEE.clone.1
; demangled: void sfc::script::lua::Binder::bindMethod<TestUD>(char const*, void (TestUD::*)(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&)) [clone .clone.1]
; decoder-mode: arm
00386c20  70 40 2d e9                                      push {r4, r5, r6, lr}
00386c24  00 60 a0 e1                                      mov r6, r0
00386c28  08 00 90 e5                                      ldr r0, [r0, #8]
00386c2c  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00386c30  18 d0 4d e2                                      sub sp, sp, #0x18
00386c34  00 00 50 e3                                      cmp r0, #0
00386c38  03 30 8f e0                                      add r3, pc, r3
00386c3c  08 10 8d e5                                      str r1, [sp, #8]
00386c40  0c 20 8d e5                                      str r2, [sp, #0xc]
00386c44  01 40 a0 e1                                      mov r4, r1
00386c48  02 50 a0 e1                                      mov r5, r2
00386c4c  22 00 00 0a                                      beq #0x386cdc
00386c50  00 00 51 e3                                      cmp r1, #0
00386c54  09 00 00 0a                                      beq #0x386c80
00386c58  88 10 9f e5                                      ldr r1, [pc, #0x88]
00386c5c  06 00 a0 e1                                      mov r0, r6
00386c60  04 20 a0 e1                                      mov r2, r4
00386c64  01 10 8f e0                                      add r1, pc, r1
00386c68  05 30 a0 e1                                      mov r3, r5
00386c6c  14 50 8d e5                                      str r5, [sp, #0x14]
00386c70  10 40 8d e5                                      str r4, [sp, #0x10]
00386c74  18 d0 8d e2                                      add sp, sp, #0x18
00386c78  70 40 bd e8                                      pop {r4, r5, r6, lr}
00386c7c  f0 4b fe ea                                      b #0x319c44
00386c80  01 00 12 e3                                      tst r2, #1
00386c84  f3 ff ff 1a                                      bne #0x386c58
00386c88  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00386c8c  02 20 93 e7                                      ldr r2, [r3, r2]
00386c90  00 20 92 e5                                      ldr r2, [r2]
00386c94  02 00 52 e3                                      cmp r2, #2
00386c98  00 10 81 05                                      streq r1, [r1]
00386c9c  ed ff ff 0a                                      beq #0x386c58
00386ca0  01 00 52 e3                                      cmp r2, #1
00386ca4  eb ff ff 1a                                      bne #0x386c58
00386ca8  40 00 9f e5                                      ldr r0, [pc, #0x40]
00386cac  40 10 9f e5                                      ldr r1, [pc, #0x40]
00386cb0  40 20 9f e5                                      ldr r2, [pc, #0x40]
00386cb4  00 00 93 e7                                      ldr r0, [r3, r0]
00386cb8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00386cbc  87 c0 a0 e3                                      mov ip, #0x87
00386cc0  01 10 8f e0                                      add r1, pc, r1
00386cc4  02 20 8f e0                                      add r2, pc, r2
00386cc8  03 30 8f e0                                      add r3, pc, r3
00386ccc  a8 00 80 e2                                      add r0, r0, #0xa8
00386cd0  00 c0 8d e5                                      str ip, [sp]
00386cd4  ca 1c fe eb                                      bl #0x30e004
00386cd8  de ff ff ea                                      b #0x386c58
00386cdc  18 d0 8d e2                                      add sp, sp, #0x18
00386ce0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00386ce4  58 de 60 00 fc b3 53 00 c0 39 00 00 c0 19 00 00  .byte 0x58, 0xde, 0x60, 0x00, 0xfc, 0xb3, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00386cf4  18 77 53 00 4c b3 53 00 50 b3 53 00              .byte 0x18, 0x77, 0x53, 0x00, 0x4c, 0xb3, 0x53, 0x00, 0x50, 0xb3, 0x53, 0x00
