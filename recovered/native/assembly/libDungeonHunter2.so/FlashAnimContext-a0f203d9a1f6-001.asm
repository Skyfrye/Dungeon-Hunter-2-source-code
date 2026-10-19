; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00413aec, declared_size=48, range_size=48, mode=arm
; class-group: FlashAnimContext
; alias: _ZN16FlashAnimContext7SetTextEPKc
; demangled: FlashAnimContext::SetText(char const*)
; decoder-mode: arm
00413aec  70 40 2d e9                                      push {r4, r5, r6, lr}
00413af0  00 50 a0 e1                                      mov r5, r0
00413af4  01 00 a0 e1                                      mov r0, r1
00413af8  01 40 a0 e1                                      mov r4, r1
00413afc  d4 e8 fb eb                                      bl #0x30de54
00413b00  2e 00 50 e3                                      cmp r0, #0x2e
00413b04  00 00 00 da                                      ble #0x413b0c
00413b08  70 80 bd e8                                      pop {r4, r5, r6, pc}
00413b0c  20 00 85 e2                                      add r0, r5, #0x20
00413b10  04 10 a0 e1                                      mov r1, r4
00413b14  70 40 bd e8                                      pop {r4, r5, r6, lr}
00413b18  80 ea fb ea                                      b #0x30e520

; FUNCTION 0x00413f14, declared_size=140, range_size=140, mode=arm
; class-group: FlashAnimContext
; alias: _ZN16FlashAnimContext15SetTextToNumberEi
; demangled: FlashAnimContext::SetTextToNumber(int)
; decoder-mode: arm
00413f14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00413f18  74 40 9f e5                                      ldr r4, [pc, #0x74]
00413f1c  00 50 51 e2                                      subs r5, r1, #0
00413f20  00 30 a0 b3                                      movlt r3, #0
00413f24  20 30 c0 b5                                      strblt r3, [r0, #0x20]
00413f28  04 40 8f e0                                      add r4, pc, r4
00413f2c  ec 33 94 e5                                      ldr r3, [r4, #0x3ec]
00413f30  00 60 a0 e1                                      mov r6, r0
00413f34  01 00 13 e3                                      tst r3, #1
00413f38  0b 00 00 0a                                      beq #0x413f6c
00413f3c  54 30 9f e5                                      ldr r3, [pc, #0x54]
00413f40  03 30 8f e0                                      add r3, pc, r3
00413f44  f0 33 93 e5                                      ldr r3, [r3, #0x3f0]
00413f48  03 00 55 e1                                      cmp r5, r3
00413f4c  00 00 00 ba                                      blt #0x413f54
00413f50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00413f54  40 10 9f e5                                      ldr r1, [pc, #0x40]
00413f58  20 00 86 e2                                      add r0, r6, #0x20
00413f5c  05 20 a0 e1                                      mov r2, r5
00413f60  01 10 8f e0                                      add r1, pc, r1
00413f64  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00413f68  dd ea fb ea                                      b #0x30eae4
00413f6c  fb 7f 84 e2                                      add r7, r4, #0x3ec
00413f70  07 00 a0 e1                                      mov r0, r7
00413f74  fc e9 fb eb                                      bl #0x30e76c
00413f78  00 00 50 e3                                      cmp r0, #0
00413f7c  ee ff ff 0a                                      beq #0x413f3c
00413f80  06 31 e0 e3                                      mvn r3, #0x80000001
00413f84  f0 33 84 e5                                      str r3, [r4, #0x3f0]
00413f88  07 00 a0 e1                                      mov r0, r7
00413f8c  aa ea fb eb                                      bl #0x30ea3c
00413f90  e9 ff ff ea                                      b #0x413f3c
; mapping-symbol data/literal pool
00413f94  34 f3 58 00 1c f3 58 00 50 df 4a 00              .byte 0x34, 0xf3, 0x58, 0x00, 0x1c, 0xf3, 0x58, 0x00, 0x50, 0xdf, 0x4a, 0x00
