; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075dd04, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_object_interface
; alias: _ZN7gameswf19as_object_interfaceD1Ev
; demangled: gameswf::as_object_interface::~as_object_interface()
; decoder-mode: arm
0075dd04  24 30 9f e5                                      ldr r3, [pc, #0x24]
0075dd08  24 20 9f e5                                      ldr r2, [pc, #0x24]
0075dd0c  10 40 2d e9                                      push {r4, lr}
0075dd10  03 30 8f e0                                      add r3, pc, r3
0075dd14  02 20 93 e7                                      ldr r2, [r3, r2]
0075dd18  00 40 a0 e1                                      mov r4, r0
0075dd1c  08 20 82 e2                                      add r2, r2, #8
0075dd20  00 20 80 e5                                      str r2, [r0]
0075dd24  de ff ff eb                                      bl #0x75dca4
0075dd28  04 00 a0 e1                                      mov r0, r4
0075dd2c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075dd30  80 6d 23 00 28 20 00 00                          .byte 0x80, 0x6d, 0x23, 0x00, 0x28, 0x20, 0x00, 0x00

; FUNCTION 0x0075dd38, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_object_interface
; alias: _ZN7gameswf19as_object_interfaceD0Ev
; demangled: gameswf::as_object_interface::~as_object_interface()
; decoder-mode: arm
0075dd38  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0075dd3c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0075dd40  10 40 2d e9                                      push {r4, lr}
0075dd44  03 30 8f e0                                      add r3, pc, r3
0075dd48  02 20 93 e7                                      ldr r2, [r3, r2]
0075dd4c  00 40 a0 e1                                      mov r4, r0
0075dd50  08 20 82 e2                                      add r2, r2, #8
0075dd54  00 20 80 e5                                      str r2, [r0]
0075dd58  d1 ff ff eb                                      bl #0x75dca4
0075dd5c  04 00 a0 e1                                      mov r0, r4
0075dd60  52 c1 ee eb                                      bl #0x30e2b0
0075dd64  04 00 a0 e1                                      mov r0, r4
0075dd68  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075dd6c  4c 6d 23 00 28 20 00 00                          .byte 0x4c, 0x6d, 0x23, 0x00, 0x28, 0x20, 0x00, 0x00
