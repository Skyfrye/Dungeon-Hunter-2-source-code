; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043fb9c, declared_size=96, range_size=96, mode=arm
; class-group: tRoomInfo* std::vector<tRoomInfo, std::allocator<tRoomInfo> >
; alias: _ZNSt6vectorI9tRoomInfoSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_RjT_S8_
; demangled: tRoomInfo* std::vector<tRoomInfo, std::allocator<tRoomInfo> >::_M_allocate_and_copy<tRoomInfo const*>(unsigned int&, tRoomInfo const*, tRoomInfo const*)
; decoder-mode: arm
0043fb9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0043fba0  08 00 80 e2                                      add r0, r0, #8
0043fba4  02 40 a0 e1                                      mov r4, r2
0043fba8  01 20 a0 e1                                      mov r2, r1
0043fbac  00 10 91 e5                                      ldr r1, [r1]
0043fbb0  03 50 a0 e1                                      mov r5, r3
0043fbb4  1b fa ff eb                                      bl #0x43e428
0043fbb8  05 50 64 e0                                      rsb r5, r4, r5
0043fbbc  c9 39 06 e3                                      movw r3, #0x69c9
0043fbc0  c5 51 a0 e1                                      asr r5, r5, #3
0043fbc4  be 36 45 e3                                      movt r3, #0x56be
0043fbc8  93 05 05 e0                                      mul r5, r3, r5
0043fbcc  00 70 a0 e1                                      mov r7, r0
0043fbd0  00 00 55 e3                                      cmp r5, #0
0043fbd4  06 00 00 da                                      ble #0x43fbf4
0043fbd8  00 60 a0 e3                                      mov r6, #0
0043fbdc  06 00 87 e0                                      add r0, r7, r6
0043fbe0  06 10 84 e0                                      add r1, r4, r6
0043fbe4  dd ff ff eb                                      bl #0x43fb60
0043fbe8  01 50 55 e2                                      subs r5, r5, #1
0043fbec  f2 6f 86 e2                                      add r6, r6, #0x3c8
0043fbf0  f9 ff ff 1a                                      bne #0x43fbdc
0043fbf4  07 00 a0 e1                                      mov r0, r7
0043fbf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
