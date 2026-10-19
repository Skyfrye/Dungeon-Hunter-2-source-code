; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00787eec, declared_size=220, range_size=220, mode=arm
; class-group: void gameswf::array<gameswf::final_shape::segment>
; alias: _ZN7gameswf5arrayINS_11final_shape7segmentEE9push_backIS2_EEvRKT_
; demangled: void gameswf::array<gameswf::final_shape::segment>::push_back<gameswf::final_shape::segment>(gameswf::final_shape::segment const&)
; decoder-mode: arm
00787eec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00787ef0  04 30 90 e5                                      ldr r3, [r0, #4]
00787ef4  08 20 90 e5                                      ldr r2, [r0, #8]
00787ef8  00 70 a0 e1                                      mov r7, r0
00787efc  01 a0 83 e2                                      add sl, r3, #1
00787f00  02 00 5a e1                                      cmp sl, r2
00787f04  01 60 a0 e1                                      mov r6, r1
00787f08  0c 00 00 ca                                      bgt #0x787f40
00787f0c  00 20 97 e5                                      ldr r2, [r7]
00787f10  00 80 a0 e3                                      mov r8, #0
00787f14  03 42 82 e0                                      add r4, r2, r3, lsl #4
00787f18  03 82 82 e7                                      str r8, [r2, r3, lsl #4]
00787f1c  04 80 84 e5                                      str r8, [r4, #4]
00787f20  08 80 84 e5                                      str r8, [r4, #8]
00787f24  0c 80 c4 e5                                      strb r8, [r4, #0xc]
00787f28  04 50 96 e5                                      ldr r5, [r6, #4]
00787f2c  08 00 55 e1                                      cmp r5, r8
00787f30  06 00 00 aa                                      bge #0x787f50
00787f34  04 50 84 e5                                      str r5, [r4, #4]
00787f38  04 a0 87 e5                                      str sl, [r7, #4]
00787f3c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00787f40  ca 10 8a e0                                      add r1, sl, sl, asr #1
00787f44  04 f6 ff eb                                      bl #0x78575c
00787f48  04 30 97 e5                                      ldr r3, [r7, #4]
00787f4c  ee ff ff ea                                      b #0x787f0c
00787f50  f7 ff ff 0a                                      beq #0x787f34
00787f54  f6 ff ff da                                      ble #0x787f34
00787f58  04 00 a0 e1                                      mov r0, r4
00787f5c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00787f60  a9 f5 ff eb                                      bl #0x78560c
00787f64  00 20 a0 e3                                      mov r2, #0
00787f68  00 30 94 e5                                      ldr r3, [r4]
00787f6c  88 21 83 e7                                      str r2, [r3, r8, lsl #3]
00787f70  88 31 83 e0                                      add r3, r3, r8, lsl #3
00787f74  01 80 88 e2                                      add r8, r8, #1
00787f78  05 00 58 e1                                      cmp r8, r5
00787f7c  04 20 83 e5                                      str r2, [r3, #4]
00787f80  f8 ff ff 1a                                      bne #0x787f68
00787f84  04 80 84 e5                                      str r8, [r4, #4]
00787f88  00 30 a0 e3                                      mov r3, #0
00787f8c  00 00 96 e5                                      ldr r0, [r6]
00787f90  00 20 94 e5                                      ldr r2, [r4]
00787f94  83 11 a0 e1                                      lsl r1, r3, #3
00787f98  83 c1 90 e7                                      ldr ip, [r0, r3, lsl #3]
00787f9c  01 00 80 e0                                      add r0, r0, r1
00787fa0  01 10 82 e0                                      add r1, r2, r1
00787fa4  83 c1 82 e7                                      str ip, [r2, r3, lsl #3]
00787fa8  04 20 90 e5                                      ldr r2, [r0, #4]
00787fac  01 30 83 e2                                      add r3, r3, #1
00787fb0  04 20 81 e5                                      str r2, [r1, #4]
00787fb4  04 20 94 e5                                      ldr r2, [r4, #4]
00787fb8  02 00 53 e1                                      cmp r3, r2
00787fbc  f2 ff ff ba                                      blt #0x787f8c
00787fc0  04 a0 87 e5                                      str sl, [r7, #4]
00787fc4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
