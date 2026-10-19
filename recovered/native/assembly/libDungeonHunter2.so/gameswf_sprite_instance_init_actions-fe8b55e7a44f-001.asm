; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00780ea0, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::sprite_instance::init_actions
; alias: _ZN7gameswf15sprite_instance12init_actionsD1Ev
; demangled: gameswf::sprite_instance::init_actions::~init_actions()
; decoder-mode: arm
00780ea0  70 40 2d e9                                      push {r4, r5, r6, lr}
00780ea4  14 30 90 e5                                      ldr r3, [r0, #0x14]
00780ea8  00 40 a0 e1                                      mov r4, r0
00780eac  10 00 80 e2                                      add r0, r0, #0x10
00780eb0  00 00 53 e3                                      cmp r3, #0
00780eb4  0c 00 00 da                                      ble #0x780eec
00780eb8  00 50 a0 e3                                      mov r5, #0
00780ebc  14 50 84 e5                                      str r5, [r4, #0x14]
00780ec0  05 10 a0 e1                                      mov r1, r5
00780ec4  99 f6 ff eb                                      bl #0x77e930
00780ec8  04 30 94 e5                                      ldr r3, [r4, #4]
00780ecc  05 00 53 e1                                      cmp r3, r5
00780ed0  0c 00 00 da                                      ble #0x780f08
00780ed4  00 10 a0 e3                                      mov r1, #0
00780ed8  04 00 a0 e1                                      mov r0, r4
00780edc  04 10 84 e5                                      str r1, [r4, #4]
00780ee0  44 f6 ff eb                                      bl #0x77e7f8
00780ee4  04 00 a0 e1                                      mov r0, r4
00780ee8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00780eec  f1 ff ff aa                                      bge #0x780eb8
00780ef0  00 10 a0 e3                                      mov r1, #0
00780ef4  00 20 90 e5                                      ldr r2, [r0]
00780ef8  03 10 c2 e7                                      strb r1, [r2, r3]
00780efc  01 30 93 e2                                      adds r3, r3, #1
00780f00  fb ff ff 1a                                      bne #0x780ef4
00780f04  eb ff ff ea                                      b #0x780eb8
00780f08  f1 ff ff aa                                      bge #0x780ed4
00780f0c  03 21 a0 e1                                      lsl r2, r3, #2
00780f10  00 10 94 e5                                      ldr r1, [r4]
00780f14  01 30 93 e2                                      adds r3, r3, #1
00780f18  02 50 81 e7                                      str r5, [r1, r2]
00780f1c  04 20 82 e2                                      add r2, r2, #4
00780f20  fa ff ff 1a                                      bne #0x780f10
00780f24  00 10 a0 e3                                      mov r1, #0
00780f28  04 00 a0 e1                                      mov r0, r4
00780f2c  04 10 84 e5                                      str r1, [r4, #4]
00780f30  30 f6 ff eb                                      bl #0x77e7f8
00780f34  04 00 a0 e1                                      mov r0, r4
00780f38  70 80 bd e8                                      pop {r4, r5, r6, pc}
