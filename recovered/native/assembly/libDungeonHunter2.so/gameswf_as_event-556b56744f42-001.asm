; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007daadc, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_event
; alias: _ZNK7gameswf8as_event2isEi
; demangled: gameswf::as_event::is(int) const
; decoder-mode: arm
007daadc  27 00 51 e3                                      cmp r1, #0x27
007daae0  01 00 a0 03                                      moveq r0, #1
007daae4  1e ff 2f 01                                      bxeq lr
007daae8  01 00 71 e2                                      rsbs r0, r1, #1
007daaec  00 00 a0 33                                      movlo r0, #0
007daaf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007daaf4, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_event
; alias: _ZN7gameswf8as_eventD1Ev
; demangled: gameswf::as_event::~as_event()
; decoder-mode: arm
007daaf4  24 30 9f e5                                      ldr r3, [pc, #0x24]
007daaf8  24 20 9f e5                                      ldr r2, [pc, #0x24]
007daafc  10 40 2d e9                                      push {r4, lr}
007dab00  03 30 8f e0                                      add r3, pc, r3
007dab04  02 20 93 e7                                      ldr r2, [r3, r2]
007dab08  00 40 a0 e1                                      mov r4, r0
007dab0c  08 20 82 e2                                      add r2, r2, #8
007dab10  00 20 80 e5                                      str r2, [r0]
007dab14  e0 3b fe eb                                      bl #0x769a9c
007dab18  04 00 a0 e1                                      mov r0, r4
007dab1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007dab20  90 9f 1b 00 08 4b 00 00                          .byte 0x90, 0x9f, 0x1b, 0x00, 0x08, 0x4b, 0x00, 0x00

; FUNCTION 0x007dabbc, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_event
; alias: _ZN7gameswf8as_eventC2EPNS_6playerE
; demangled: gameswf::as_event::as_event(gameswf::player*)
; decoder-mode: arm
007dabbc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007dabc0  54 40 9f e5                                      ldr r4, [pc, #0x54]
007dabc4  14 d0 4d e2                                      sub sp, sp, #0x14
007dabc8  00 50 a0 e1                                      mov r5, r0
007dabcc  43 44 fe eb                                      bl #0x76bce0
007dabd0  48 30 9f e5                                      ldr r3, [pc, #0x48]
007dabd4  04 40 8f e0                                      add r4, pc, r4
007dabd8  00 60 a0 e3                                      mov r6, #0
007dabdc  03 30 94 e7                                      ldr r3, [r4, r3]
007dabe0  0d 00 a0 e1                                      mov r0, sp
007dabe4  0d 70 a0 e1                                      mov r7, sp
007dabe8  08 30 83 e2                                      add r3, r3, #8
007dabec  00 30 85 e5                                      str r3, [r5]
007dabf0  00 60 8d e5                                      str r6, [sp]
007dabf4  04 60 8d e5                                      str r6, [sp, #4]
007dabf8  08 60 8d e5                                      str r6, [sp, #8]
007dabfc  0c 60 cd e5                                      strb r6, [sp, #0xc]
007dac00  c8 ff ff eb                                      bl #0x7dab28
007dac04  0d 00 a0 e1                                      mov r0, sp
007dac08  06 10 a0 e1                                      mov r1, r6
007dac0c  53 16 fe eb                                      bl #0x760560
007dac10  05 00 a0 e1                                      mov r0, r5
007dac14  14 d0 8d e2                                      add sp, sp, #0x14
007dac18  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007dac1c  bc 9e 1b 00 08 4b 00 00                          .byte 0xbc, 0x9e, 0x1b, 0x00, 0x08, 0x4b, 0x00, 0x00

; FUNCTION 0x007dac24, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_event
; alias: _ZN7gameswf8as_eventD0Ev
; demangled: gameswf::as_event::~as_event()
; decoder-mode: arm
007dac24  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007dac28  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007dac2c  10 40 2d e9                                      push {r4, lr}
007dac30  03 30 8f e0                                      add r3, pc, r3
007dac34  02 20 93 e7                                      ldr r2, [r3, r2]
007dac38  00 40 a0 e1                                      mov r4, r0
007dac3c  08 20 82 e2                                      add r2, r2, #8
007dac40  00 20 80 e5                                      str r2, [r0]
007dac44  94 3b fe eb                                      bl #0x769a9c
007dac48  04 00 a0 e1                                      mov r0, r4
007dac4c  97 cd ec eb                                      bl #0x30e2b0
007dac50  04 00 a0 e1                                      mov r0, r4
007dac54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007dac58  60 9e 1b 00 08 4b 00 00                          .byte 0x60, 0x9e, 0x1b, 0x00, 0x08, 0x4b, 0x00, 0x00

; FUNCTION 0x007dac60, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_event
; alias: _ZN7gameswf8as_eventC1EPNS_6playerE
; demangled: gameswf::as_event::as_event(gameswf::player*)
; decoder-mode: arm
007dac60  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007dac64  54 40 9f e5                                      ldr r4, [pc, #0x54]
007dac68  14 d0 4d e2                                      sub sp, sp, #0x14
007dac6c  00 50 a0 e1                                      mov r5, r0
007dac70  1a 44 fe eb                                      bl #0x76bce0
007dac74  48 30 9f e5                                      ldr r3, [pc, #0x48]
007dac78  04 40 8f e0                                      add r4, pc, r4
007dac7c  00 60 a0 e3                                      mov r6, #0
007dac80  03 30 94 e7                                      ldr r3, [r4, r3]
007dac84  0d 00 a0 e1                                      mov r0, sp
007dac88  0d 70 a0 e1                                      mov r7, sp
007dac8c  08 30 83 e2                                      add r3, r3, #8
007dac90  00 30 85 e5                                      str r3, [r5]
007dac94  00 60 8d e5                                      str r6, [sp]
007dac98  04 60 8d e5                                      str r6, [sp, #4]
007dac9c  08 60 8d e5                                      str r6, [sp, #8]
007daca0  0c 60 cd e5                                      strb r6, [sp, #0xc]
007daca4  9f ff ff eb                                      bl #0x7dab28
007daca8  0d 00 a0 e1                                      mov r0, sp
007dacac  06 10 a0 e1                                      mov r1, r6
007dacb0  2a 16 fe eb                                      bl #0x760560
007dacb4  05 00 a0 e1                                      mov r0, r5
007dacb8  14 d0 8d e2                                      add sp, sp, #0x14
007dacbc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007dacc0  18 9e 1b 00 08 4b 00 00                          .byte 0x18, 0x9e, 0x1b, 0x00, 0x08, 0x4b, 0x00, 0x00
