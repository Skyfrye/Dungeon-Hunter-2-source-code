; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00524c74, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<PFWorld::ObstacleForce, std::allocator<PFWorld::ObstacleForce> >
; alias: _ZNSt6vectorIN7PFWorld13ObstacleForceESaIS1_EED1Ev
; demangled: std::vector<PFWorld::ObstacleForce, std::allocator<PFWorld::ObstacleForce> >::~vector()
; decoder-mode: arm
00524c74  10 40 2d e9                                      push {r4, lr}
00524c78  00 40 a0 e1                                      mov r4, r0
00524c7c  00 00 90 e5                                      ldr r0, [r0]
00524c80  00 00 50 e3                                      cmp r0, #0
00524c84  0c 00 00 0a                                      beq #0x524cbc
00524c88  08 30 94 e5                                      ldr r3, [r4, #8]
00524c8c  03 30 60 e0                                      rsb r3, r0, r3
00524c90  43 31 a0 e1                                      asr r3, r3, #2
00524c94  83 10 83 e0                                      add r1, r3, r3, lsl #1
00524c98  01 12 81 e0                                      add r1, r1, r1, lsl #4
00524c9c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00524ca0  01 18 81 e0                                      add r1, r1, r1, lsl #16
00524ca4  01 31 83 e0                                      add r3, r3, r1, lsl #2
00524ca8  14 10 a0 e3                                      mov r1, #0x14
00524cac  91 03 01 e0                                      mul r1, r1, r3
00524cb0  80 00 51 e3                                      cmp r1, #0x80
00524cb4  02 00 00 8a                                      bhi #0x524cc4
00524cb8  90 90 07 eb                                      bl #0x708f00
00524cbc  04 00 a0 e1                                      mov r0, r4
00524cc0  10 80 bd e8                                      pop {r4, pc}
00524cc4  dd ad f7 eb                                      bl #0x310440
00524cc8  04 00 a0 e1                                      mov r0, r4
00524ccc  10 80 bd e8                                      pop {r4, pc}
