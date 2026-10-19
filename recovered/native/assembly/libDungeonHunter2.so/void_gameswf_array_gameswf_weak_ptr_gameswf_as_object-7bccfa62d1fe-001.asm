; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00760ef8, declared_size=84, range_size=84, mode=arm
; class-group: void gameswf::array<gameswf::weak_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_8weak_ptrINS_9as_objectEEEE9push_backIPS2_EEvRKT_
; demangled: void gameswf::array<gameswf::weak_ptr<gameswf::as_object> >::push_back<gameswf::as_object*>(gameswf::as_object* const&)
; decoder-mode: arm
00760ef8  70 40 2d e9                                      push {r4, r5, r6, lr}
00760efc  04 30 90 e5                                      ldr r3, [r0, #4]
00760f00  08 20 90 e5                                      ldr r2, [r0, #8]
00760f04  00 40 a0 e1                                      mov r4, r0
00760f08  01 50 83 e2                                      add r5, r3, #1
00760f0c  02 00 55 e1                                      cmp r5, r2
00760f10  01 60 a0 e1                                      mov r6, r1
00760f14  08 00 00 ca                                      bgt #0x760f3c
00760f18  00 c0 94 e5                                      ldr ip, [r4]
00760f1c  00 20 a0 e3                                      mov r2, #0
00760f20  00 10 96 e5                                      ldr r1, [r6]
00760f24  83 01 8c e0                                      add r0, ip, r3, lsl #3
00760f28  83 21 8c e7                                      str r2, [ip, r3, lsl #3]
00760f2c  04 20 80 e5                                      str r2, [r0, #4]
00760f30  54 f7 ff eb                                      bl #0x75ec88
00760f34  04 50 84 e5                                      str r5, [r4, #4]
00760f38  70 80 bd e8                                      pop {r4, r5, r6, pc}
00760f3c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00760f40  86 fd ff eb                                      bl #0x760560
00760f44  04 30 94 e5                                      ldr r3, [r4, #4]
00760f48  f2 ff ff ea                                      b #0x760f18
