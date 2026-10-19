; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a3578, declared_size=4, range_size=4, mode=arm
; class-group: NetStructInterpolation<float>
; alias: _ZN22NetStructInterpolationIfED1Ev
; demangled: NetStructInterpolation<float>::~NetStructInterpolation()
; decoder-mode: arm
003a3578  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a37cc, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInterpolation<float>
; alias: _ZN22NetStructInterpolationIfED0Ev
; demangled: NetStructInterpolation<float>::~NetStructInterpolation()
; decoder-mode: arm
003a37cc  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a37d0  24 20 9f e5                                      ldr r2, [pc, #0x24]
003a37d4  10 40 2d e9                                      push {r4, lr}
003a37d8  03 30 8f e0                                      add r3, pc, r3
003a37dc  02 20 93 e7                                      ldr r2, [r3, r2]
003a37e0  00 40 a0 e1                                      mov r4, r0
003a37e4  08 20 82 e2                                      add r2, r2, #8
003a37e8  00 20 80 e5                                      str r2, [r0]
003a37ec  13 b3 fd eb                                      bl #0x310440
003a37f0  04 00 a0 e1                                      mov r0, r4
003a37f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a37f8  b8 12 5f 00 8c 1c 00 00                          .byte 0xb8, 0x12, 0x5f, 0x00, 0x8c, 0x1c, 0x00, 0x00

; FUNCTION 0x003a3e64, declared_size=236, range_size=236, mode=arm
; class-group: NetStructInterpolation<float>
; alias: _ZN22NetStructInterpolationIfE8AddValueEfj
; demangled: NetStructInterpolation<float>::AddValue(float, unsigned int)
; decoder-mode: arm
003a3e64  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003a3e68  00 40 a0 e1                                      mov r4, r0
003a3e6c  01 50 a0 e1                                      mov r5, r1
003a3e70  02 a0 a0 e1                                      mov sl, r2
003a3e74  89 c4 11 eb                                      bl #0x8150a0
003a3e78  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
003a3e7c  bc 80 94 e5                                      ldr r8, [r4, #0xbc]
003a3e80  00 90 a0 e1                                      mov sb, r0
003a3e84  01 60 a0 e1                                      mov r6, r1
003a3e88  08 00 51 e1                                      cmp r1, r8
003a3e8c  c0 70 94 35                                      ldrlo r7, [r4, #0xc0]
003a3e90  0a 00 00 3a                                      blo #0x3a3ec0
003a3e94  c0 70 94 e5                                      ldr r7, [r4, #0xc0]
003a3e98  07 00 a0 e1                                      mov r0, r7
003a3e9c  06 10 a0 e1                                      mov r1, r6
003a3ea0  ff a8 fd eb                                      bl #0x30e2a4
003a3ea4  01 60 46 e2                                      sub r6, r6, #1
003a3ea8  06 00 58 e1                                      cmp r8, r6
003a3eac  07 70 60 e0                                      rsb r7, r0, r7
003a3eb0  f8 ff ff 9a                                      bls #0x3a3e98
003a3eb4  c0 70 84 e5                                      str r7, [r4, #0xc0]
003a3eb8  c4 60 84 e5                                      str r6, [r4, #0xc4]
003a3ebc  06 10 a0 e1                                      mov r1, r6
003a3ec0  09 90 6a e0                                      rsb sb, sl, sb
003a3ec4  01 10 81 e2                                      add r1, r1, #1
003a3ec8  07 00 89 e0                                      add r0, sb, r7
003a3ecc  c4 10 84 e5                                      str r1, [r4, #0xc4]
003a3ed0  c0 00 84 e5                                      str r0, [r4, #0xc0]
003a3ed4  f2 a8 fd eb                                      bl #0x30e2a4
003a3ed8  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
003a3edc  c8 00 84 e5                                      str r0, [r4, #0xc8]
003a3ee0  cd 2c 0c e3                                      movw r2, #0xcccd
003a3ee4  83 31 84 e0                                      add r3, r4, r3, lsl #3
003a3ee8  04 a0 83 e5                                      str sl, [r3, #4]
003a3eec  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
003a3ef0  cc 2c 4c e3                                      movt r2, #0xcccc
003a3ef4  14 00 a0 e3                                      mov r0, #0x14
003a3ef8  83 31 84 e0                                      add r3, r4, r3, lsl #3
003a3efc  08 50 83 e5                                      str r5, [r3, #8]
003a3f00  b8 10 94 e5                                      ldr r1, [r4, #0xb8]
003a3f04  ac c0 94 e5                                      ldr ip, [r4, #0xac]
003a3f08  01 10 81 e2                                      add r1, r1, #1
003a3f0c  92 51 83 e0                                      umull r5, r3, r2, r1
003a3f10  23 32 a0 e1                                      lsr r3, r3, #4
003a3f14  90 13 63 e0                                      mls r3, r0, r3, r1
003a3f18  03 00 5c e1                                      cmp ip, r3
003a3f1c  01 10 83 02                                      addeq r1, r3, #1
003a3f20  92 c1 82 00                                      umulleq ip, r2, r2, r1
003a3f24  b4 20 94 15                                      ldrne r2, [r4, #0xb4]
003a3f28  22 22 a0 01                                      lsreq r2, r2, #4
003a3f2c  90 12 62 00                                      mlseq r2, r0, r2, r1
003a3f30  b8 30 84 e5                                      str r3, [r4, #0xb8]
003a3f34  ac 20 84 05                                      streq r2, [r4, #0xac]
003a3f38  b4 20 84 05                                      streq r2, [r4, #0xb4]
003a3f3c  b0 20 84 05                                      streq r2, [r4, #0xb0]
003a3f40  02 00 53 e1                                      cmp r3, r2
003a3f44  ac 30 94 05                                      ldreq r3, [r4, #0xac]
003a3f48  b4 30 84 05                                      streq r3, [r4, #0xb4]
003a3f4c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
