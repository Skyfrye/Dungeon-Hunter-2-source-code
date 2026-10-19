; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759998, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::character_def
; alias: _ZNK7gameswf13character_def2isEi
; demangled: gameswf::character_def::is(int) const
; decoder-mode: arm
00759998  0a 00 51 e3                                      cmp r1, #0xa
0075999c  00 00 a0 13                                      movne r0, #0
007599a0  01 00 a0 03                                      moveq r0, #1
007599a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599a8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def7displayEPNS_9characterE
; demangled: gameswf::character_def::display(gameswf::character*)
; decoder-mode: arm
007599a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599ac, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def16point_test_localEff
; demangled: gameswf::character_def::point_test_local(float, float)
; decoder-mode: arm
007599ac  00 00 a0 e3                                      mov r0, #0
007599b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599b4, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def9get_boundEPNS_4rectE
; demangled: gameswf::character_def::get_bound(gameswf::rect*)
; decoder-mode: arm
007599b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599b8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def18output_cached_dataEPNS_7tu_fileERKNS_13cache_optionsE
; demangled: gameswf::character_def::output_cached_data(gameswf::tu_file*, gameswf::cache_options const&)
; decoder-mode: arm
007599b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599bc, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def17input_cached_dataEPNS_7tu_fileE
; demangled: gameswf::character_def::input_cached_data(gameswf::tu_file*)
; decoder-mode: arm
007599bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599c0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def15csm_textsettingEPNS_6streamEi
; demangled: gameswf::character_def::csm_textsetting(gameswf::stream*, int)
; decoder-mode: arm
007599c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599c4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character_def
; alias: _ZNK7gameswf13character_def17instanciate_classEPNS_9characterE
; demangled: gameswf::character_def::instanciate_class(gameswf::character*) const
; decoder-mode: arm
007599c4  00 00 a0 e3                                      mov r0, #0
007599c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0075de78, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_defD2Ev
; demangled: gameswf::character_def::~character_def()
; decoder-mode: arm
0075de78  70 40 2d e9                                      push {r4, r5, r6, lr}
0075de7c  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
0075de80  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0075de84  00 40 a0 e1                                      mov r4, r0
0075de88  05 50 8f e0                                      add r5, pc, r5
0075de8c  18 00 90 e5                                      ldr r0, [r0, #0x18]
0075de90  03 30 95 e7                                      ldr r3, [r5, r3]
0075de94  00 00 50 e3                                      cmp r0, #0
0075de98  08 30 83 e2                                      add r3, r3, #8
0075de9c  00 30 84 e5                                      str r3, [r4]
0075dea0  05 00 00 0a                                      beq #0x75debc
0075dea4  00 10 90 e5                                      ldr r1, [r0]
0075dea8  01 10 41 e2                                      sub r1, r1, #1
0075deac  00 00 51 e3                                      cmp r1, #0
0075deb0  00 10 80 e5                                      str r1, [r0]
0075deb4  00 00 00 1a                                      bne #0x75debc
0075deb8  1e d3 ff eb                                      bl #0x752b38
0075debc  10 00 94 e5                                      ldr r0, [r4, #0x10]
0075dec0  00 00 50 e3                                      cmp r0, #0
0075dec4  05 00 00 0a                                      beq #0x75dee0
0075dec8  00 10 90 e5                                      ldr r1, [r0]
0075decc  01 10 41 e2                                      sub r1, r1, #1
0075ded0  00 00 51 e3                                      cmp r1, #0
0075ded4  00 10 80 e5                                      str r1, [r0]
0075ded8  00 00 00 1a                                      bne #0x75dee0
0075dedc  15 d3 ff eb                                      bl #0x752b38
0075dee0  20 30 9f e5                                      ldr r3, [pc, #0x20]
0075dee4  04 00 a0 e1                                      mov r0, r4
0075dee8  03 30 95 e7                                      ldr r3, [r5, r3]
0075deec  08 30 83 e2                                      add r3, r3, #8
0075def0  00 30 84 e5                                      str r3, [r4]
0075def4  6a ff ff eb                                      bl #0x75dca4
0075def8  04 00 a0 e1                                      mov r0, r4
0075defc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0075df00  08 6c 23 00 2c 0b 00 00 28 20 00 00              .byte 0x08, 0x6c, 0x23, 0x00, 0x2c, 0x0b, 0x00, 0x00, 0x28, 0x20, 0x00, 0x00

; FUNCTION 0x0075e180, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_defD1Ev
; demangled: gameswf::character_def::~character_def()
; decoder-mode: arm
0075e180  70 40 2d e9                                      push {r4, r5, r6, lr}
0075e184  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
0075e188  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0075e18c  00 40 a0 e1                                      mov r4, r0
0075e190  05 50 8f e0                                      add r5, pc, r5
0075e194  18 00 90 e5                                      ldr r0, [r0, #0x18]
0075e198  03 30 95 e7                                      ldr r3, [r5, r3]
0075e19c  00 00 50 e3                                      cmp r0, #0
0075e1a0  08 30 83 e2                                      add r3, r3, #8
0075e1a4  00 30 84 e5                                      str r3, [r4]
0075e1a8  05 00 00 0a                                      beq #0x75e1c4
0075e1ac  00 10 90 e5                                      ldr r1, [r0]
0075e1b0  01 10 41 e2                                      sub r1, r1, #1
0075e1b4  00 00 51 e3                                      cmp r1, #0
0075e1b8  00 10 80 e5                                      str r1, [r0]
0075e1bc  00 00 00 1a                                      bne #0x75e1c4
0075e1c0  5c d2 ff eb                                      bl #0x752b38
0075e1c4  10 00 94 e5                                      ldr r0, [r4, #0x10]
0075e1c8  00 00 50 e3                                      cmp r0, #0
0075e1cc  05 00 00 0a                                      beq #0x75e1e8
0075e1d0  00 10 90 e5                                      ldr r1, [r0]
0075e1d4  01 10 41 e2                                      sub r1, r1, #1
0075e1d8  00 00 51 e3                                      cmp r1, #0
0075e1dc  00 10 80 e5                                      str r1, [r0]
0075e1e0  00 00 00 1a                                      bne #0x75e1e8
0075e1e4  53 d2 ff eb                                      bl #0x752b38
0075e1e8  20 30 9f e5                                      ldr r3, [pc, #0x20]
0075e1ec  04 00 a0 e1                                      mov r0, r4
0075e1f0  03 30 95 e7                                      ldr r3, [r5, r3]
0075e1f4  08 30 83 e2                                      add r3, r3, #8
0075e1f8  00 30 84 e5                                      str r3, [r4]
0075e1fc  a8 fe ff eb                                      bl #0x75dca4
0075e200  04 00 a0 e1                                      mov r0, r4
0075e204  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0075e208  00 69 23 00 2c 0b 00 00 28 20 00 00              .byte 0x00, 0x69, 0x23, 0x00, 0x2c, 0x0b, 0x00, 0x00, 0x28, 0x20, 0x00, 0x00

; FUNCTION 0x0075e214, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_defD0Ev
; demangled: gameswf::character_def::~character_def()
; decoder-mode: arm
0075e214  10 40 2d e9                                      push {r4, lr}
0075e218  00 40 a0 e1                                      mov r4, r0
0075e21c  d7 ff ff eb                                      bl #0x75e180
0075e220  04 00 a0 e1                                      mov r0, r4
0075e224  21 c0 ee eb                                      bl #0x30e2b0
0075e228  04 00 a0 e1                                      mov r0, r4
0075e22c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075e354, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::character_def
; alias: _ZNK7gameswf13character_def10get_playerEv
; demangled: gameswf::character_def::get_player() const
; decoder-mode: arm
0075e354  10 40 2d e9                                      push {r4, lr}
0075e358  00 40 a0 e1                                      mov r4, r0
0075e35c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0075e360  00 00 50 e3                                      cmp r0, #0
0075e364  03 00 00 0a                                      beq #0x75e378
0075e368  18 30 94 e5                                      ldr r3, [r4, #0x18]
0075e36c  04 20 d3 e5                                      ldrb r2, [r3, #4]
0075e370  00 00 52 e3                                      cmp r2, #0
0075e374  00 00 00 0a                                      beq #0x75e37c
0075e378  10 80 bd e8                                      pop {r4, pc}
0075e37c  00 10 93 e5                                      ldr r1, [r3]
0075e380  01 10 41 e2                                      sub r1, r1, #1
0075e384  00 00 51 e3                                      cmp r1, #0
0075e388  00 10 83 e5                                      str r1, [r3]
0075e38c  01 00 00 1a                                      bne #0x75e398
0075e390  03 00 a0 e1                                      mov r0, r3
0075e394  e7 d1 ff eb                                      bl #0x752b38
0075e398  00 00 a0 e3                                      mov r0, #0
0075e39c  1c 00 84 e5                                      str r0, [r4, #0x1c]
0075e3a0  18 00 84 e5                                      str r0, [r4, #0x18]
0075e3a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075ea44, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_defC2EPNS_6playerE
; demangled: gameswf::character_def::character_def(gameswf::player*)
; decoder-mode: arm
0075ea44  70 40 2d e9                                      push {r4, r5, r6, lr}
0075ea48  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
0075ea4c  00 40 a0 e1                                      mov r4, r0
0075ea50  01 60 a0 e1                                      mov r6, r1
0075ea54  6a ec ff eb                                      bl #0x759c04
0075ea58  40 20 9f e5                                      ldr r2, [pc, #0x40]
0075ea5c  05 50 8f e0                                      add r5, pc, r5
0075ea60  00 30 a0 e3                                      mov r3, #0
0075ea64  02 20 95 e7                                      ldr r2, [r5, r2]
0075ea68  00 10 e0 e3                                      mvn r1, #0
0075ea6c  0c 10 84 e5                                      str r1, [r4, #0xc]
0075ea70  08 20 82 e2                                      add r2, r2, #8
0075ea74  18 00 84 e2                                      add r0, r4, #0x18
0075ea78  00 20 84 e5                                      str r2, [r4]
0075ea7c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0075ea80  10 30 84 e5                                      str r3, [r4, #0x10]
0075ea84  14 30 84 e5                                      str r3, [r4, #0x14]
0075ea88  18 30 84 e5                                      str r3, [r4, #0x18]
0075ea8c  06 10 a0 e1                                      mov r1, r6
0075ea90  c5 ff ff eb                                      bl #0x75e9ac
0075ea94  04 00 a0 e1                                      mov r0, r4
0075ea98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0075ea9c  34 60 23 00 2c 0b 00 00                          .byte 0x34, 0x60, 0x23, 0x00, 0x2c, 0x0b, 0x00, 0x00

; FUNCTION 0x0075ec68, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def32set_registered_class_constructorERKNS_8as_valueE
; demangled: gameswf::character_def::set_registered_class_constructor(gameswf::as_value const&)
; decoder-mode: arm
0075ec68  10 40 2d e9                                      push {r4, lr}
0075ec6c  00 40 a0 e1                                      mov r4, r0
0075ec70  01 00 a0 e1                                      mov r0, r1
0075ec74  cc df 00 eb                                      bl #0x796bac
0075ec78  00 10 a0 e1                                      mov r1, r0
0075ec7c  10 00 84 e2                                      add r0, r4, #0x10
0075ec80  10 40 bd e8                                      pop {r4, lr}
0075ec84  d1 ff ff ea                                      b #0x75ebd0

; FUNCTION 0x0075f36c, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def25create_character_instanceEPNS_9characterEi
; demangled: gameswf::character_def::create_character_instance(gameswf::character*, int)
; decoder-mode: arm
0075f36c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0075f370  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
0075f374  08 d0 4d e2                                      sub sp, sp, #8
0075f378  00 60 a0 e1                                      mov r6, r0
0075f37c  00 00 57 e3                                      cmp r7, #0
0075f380  01 80 a0 e1                                      mov r8, r1
0075f384  02 50 a0 e1                                      mov r5, r2
0075f388  03 00 00 0a                                      beq #0x75f39c
0075f38c  18 00 90 e5                                      ldr r0, [r0, #0x18]
0075f390  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075f394  00 00 53 e3                                      cmp r3, #0
0075f398  0b 00 00 0a                                      beq #0x75f3cc
0075f39c  00 10 a0 e3                                      mov r1, #0
0075f3a0  a4 00 a0 e3                                      mov r0, #0xa4
0075f3a4  ff cd ff eb                                      bl #0x752ba8
0075f3a8  07 10 a0 e1                                      mov r1, r7
0075f3ac  00 40 a0 e1                                      mov r4, r0
0075f3b0  06 20 a0 e1                                      mov r2, r6
0075f3b4  08 30 a0 e1                                      mov r3, r8
0075f3b8  00 50 8d e5                                      str r5, [sp]
0075f3bc  e6 f0 ff eb                                      bl #0x75b75c
0075f3c0  04 00 a0 e1                                      mov r0, r4
0075f3c4  08 d0 8d e2                                      add sp, sp, #8
0075f3c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0075f3cc  00 10 90 e5                                      ldr r1, [r0]
0075f3d0  01 10 41 e2                                      sub r1, r1, #1
0075f3d4  00 00 51 e3                                      cmp r1, #0
0075f3d8  00 10 80 e5                                      str r1, [r0]
0075f3dc  00 00 00 1a                                      bne #0x75f3e4
0075f3e0  d4 cd ff eb                                      bl #0x752b38
0075f3e4  00 70 a0 e3                                      mov r7, #0
0075f3e8  18 70 86 e5                                      str r7, [r6, #0x18]
0075f3ec  1c 70 86 e5                                      str r7, [r6, #0x1c]
0075f3f0  e9 ff ff ea                                      b #0x75f39c

; FUNCTION 0x0075fd18, declared_size=664, range_size=664, mode=arm
; class-group: gameswf::character_def
; alias: _ZN7gameswf13character_def28instanciate_registered_classEPNS_9characterE
; demangled: gameswf::character_def::instanciate_registered_class(gameswf::character*)
; decoder-mode: arm
0075fd18  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0075fd1c  14 30 90 e5                                      ldr r3, [r0, #0x14]
0075fd20  b4 d0 4d e2                                      sub sp, sp, #0xb4
0075fd24  00 50 a0 e1                                      mov r5, r0
0075fd28  00 00 53 e3                                      cmp r3, #0
0075fd2c  01 60 a0 e1                                      mov r6, r1
0075fd30  84 00 00 0a                                      beq #0x75ff48
0075fd34  10 00 90 e5                                      ldr r0, [r0, #0x10]
0075fd38  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075fd3c  00 00 53 e3                                      cmp r3, #0
0075fd40  77 00 00 0a                                      beq #0x75ff24
0075fd44  20 00 86 e2                                      add r0, r6, #0x20
0075fd48  06 10 a0 e1                                      mov r1, r6
0075fd4c  cd fb ff eb                                      bl #0x75ec88
0075fd50  14 30 95 e5                                      ldr r3, [r5, #0x14]
0075fd54  00 00 53 e3                                      cmp r3, #0
0075fd58  52 00 00 0a                                      beq #0x75fea8
0075fd5c  10 00 95 e5                                      ldr r0, [r5, #0x10]
0075fd60  04 20 d0 e5                                      ldrb r2, [r0, #4]
0075fd64  00 00 52 e3                                      cmp r2, #0
0075fd68  45 00 00 0a                                      beq #0x75fe84
0075fd6c  00 20 a0 e3                                      mov r2, #0
0075fd70  a4 20 cd e5                                      strb r2, [sp, #0xa4]
0075fd74  03 00 a0 e1                                      mov r0, r3
0075fd78  05 20 a0 e3                                      mov r2, #5
0075fd7c  a5 20 cd e5                                      strb r2, [sp, #0xa5]
0075fd80  a8 30 8d e5                                      str r3, [sp, #0xa8]
0075fd84  b6 e7 ff eb                                      bl #0x759c64
0075fd88  a4 40 8d e2                                      add r4, sp, #0xa4
0075fd8c  04 10 a0 e1                                      mov r1, r4
0075fd90  06 00 a0 e1                                      mov r0, r6
0075fd94  c5 2e 00 eb                                      bl #0x76b8b0
0075fd98  04 00 a0 e1                                      mov r0, r4
0075fd9c  e0 dc 00 eb                                      bl #0x797124
0075fda0  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0075fda4  00 00 51 e3                                      cmp r1, #0
0075fda8  03 00 00 0a                                      beq #0x75fdbc
0075fdac  18 00 95 e5                                      ldr r0, [r5, #0x18]
0075fdb0  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075fdb4  00 00 53 e3                                      cmp r3, #0
0075fdb8  4f 00 00 0a                                      beq #0x75fefc
0075fdbc  14 40 8d e2                                      add r4, sp, #0x14
0075fdc0  04 00 a0 e1                                      mov r0, r4
0075fdc4  60 fb ff eb                                      bl #0x75eb4c
0075fdc8  14 30 95 e5                                      ldr r3, [r5, #0x14]
0075fdcc  00 00 53 e3                                      cmp r3, #0
0075fdd0  43 00 00 0a                                      beq #0x75fee4
0075fdd4  10 00 95 e5                                      ldr r0, [r5, #0x10]
0075fdd8  04 20 d0 e5                                      ldrb r2, [r0, #4]
0075fddc  00 00 52 e3                                      cmp r2, #0
0075fde0  36 00 00 0a                                      beq #0x75fec0
0075fde4  00 20 a0 e3                                      mov r2, #0
0075fde8  98 20 cd e5                                      strb r2, [sp, #0x98]
0075fdec  03 00 a0 e1                                      mov r0, r3
0075fdf0  05 20 a0 e3                                      mov r2, #5
0075fdf4  99 20 cd e5                                      strb r2, [sp, #0x99]
0075fdf8  9c 30 8d e5                                      str r3, [sp, #0x9c]
0075fdfc  98 e7 ff eb                                      bl #0x759c64
0075fe00  00 30 a0 e3                                      mov r3, #0
0075fe04  8c 30 cd e5                                      strb r3, [sp, #0x8c]
0075fe08  00 00 56 e3                                      cmp r6, #0
0075fe0c  05 30 a0 e3                                      mov r3, #5
0075fe10  8d 30 cd e5                                      strb r3, [sp, #0x8d]
0075fe14  90 60 8d e5                                      str r6, [sp, #0x90]
0075fe18  01 00 00 0a                                      beq #0x75fe24
0075fe1c  06 00 a0 e1                                      mov r0, r6
0075fe20  8f e7 ff eb                                      bl #0x759c64
0075fe24  80 c1 9f e5                                      ldr ip, [pc, #0x180]
0075fe28  80 70 8d e2                                      add r7, sp, #0x80
0075fe2c  98 50 8d e2                                      add r5, sp, #0x98
0075fe30  8c 60 8d e2                                      add r6, sp, #0x8c
0075fe34  00 e0 a0 e3                                      mov lr, #0
0075fe38  0c c0 8f e0                                      add ip, pc, ip
0075fe3c  05 10 a0 e1                                      mov r1, r5
0075fe40  04 20 a0 e1                                      mov r2, r4
0075fe44  06 30 a0 e1                                      mov r3, r6
0075fe48  07 00 a0 e1                                      mov r0, r7
0075fe4c  04 e0 8d e5                                      str lr, [sp, #4]
0075fe50  08 c0 8d e5                                      str ip, [sp, #8]
0075fe54  00 e0 8d e5                                      str lr, [sp]
0075fe58  a9 6a 01 eb                                      bl #0x7ba904
0075fe5c  07 00 a0 e1                                      mov r0, r7
0075fe60  af dc 00 eb                                      bl #0x797124
0075fe64  06 00 a0 e1                                      mov r0, r6
0075fe68  ad dc 00 eb                                      bl #0x797124
0075fe6c  05 00 a0 e1                                      mov r0, r5
0075fe70  ab dc 00 eb                                      bl #0x797124
0075fe74  04 00 a0 e1                                      mov r0, r4
0075fe78  6f f8 ff eb                                      bl #0x75e03c
0075fe7c  b4 d0 8d e2                                      add sp, sp, #0xb4
0075fe80  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0075fe84  00 10 90 e5                                      ldr r1, [r0]
0075fe88  01 10 41 e2                                      sub r1, r1, #1
0075fe8c  00 00 51 e3                                      cmp r1, #0
0075fe90  00 10 80 e5                                      str r1, [r0]
0075fe94  00 00 00 1a                                      bne #0x75fe9c
0075fe98  26 cb ff eb                                      bl #0x752b38
0075fe9c  00 30 a0 e3                                      mov r3, #0
0075fea0  14 30 85 e5                                      str r3, [r5, #0x14]
0075fea4  10 30 85 e5                                      str r3, [r5, #0x10]
0075fea8  00 30 a0 e3                                      mov r3, #0
0075feac  05 20 a0 e3                                      mov r2, #5
0075feb0  a5 20 cd e5                                      strb r2, [sp, #0xa5]
0075feb4  a8 30 8d e5                                      str r3, [sp, #0xa8]
0075feb8  a4 30 cd e5                                      strb r3, [sp, #0xa4]
0075febc  b1 ff ff ea                                      b #0x75fd88
0075fec0  00 10 90 e5                                      ldr r1, [r0]
0075fec4  01 10 41 e2                                      sub r1, r1, #1
0075fec8  00 00 51 e3                                      cmp r1, #0
0075fecc  00 10 80 e5                                      str r1, [r0]
0075fed0  00 00 00 1a                                      bne #0x75fed8
0075fed4  17 cb ff eb                                      bl #0x752b38
0075fed8  00 30 a0 e3                                      mov r3, #0
0075fedc  14 30 85 e5                                      str r3, [r5, #0x14]
0075fee0  10 30 85 e5                                      str r3, [r5, #0x10]
0075fee4  00 30 a0 e3                                      mov r3, #0
0075fee8  05 20 a0 e3                                      mov r2, #5
0075feec  99 20 cd e5                                      strb r2, [sp, #0x99]
0075fef0  9c 30 8d e5                                      str r3, [sp, #0x9c]
0075fef4  98 30 cd e5                                      strb r3, [sp, #0x98]
0075fef8  c0 ff ff ea                                      b #0x75fe00
0075fefc  00 10 90 e5                                      ldr r1, [r0]
0075ff00  01 10 41 e2                                      sub r1, r1, #1
0075ff04  00 00 51 e3                                      cmp r1, #0
0075ff08  00 10 80 e5                                      str r1, [r0]
0075ff0c  00 00 00 1a                                      bne #0x75ff14
0075ff10  08 cb ff eb                                      bl #0x752b38
0075ff14  00 10 a0 e3                                      mov r1, #0
0075ff18  18 10 85 e5                                      str r1, [r5, #0x18]
0075ff1c  1c 10 85 e5                                      str r1, [r5, #0x1c]
0075ff20  a5 ff ff ea                                      b #0x75fdbc
0075ff24  00 10 90 e5                                      ldr r1, [r0]
0075ff28  01 10 41 e2                                      sub r1, r1, #1
0075ff2c  00 00 51 e3                                      cmp r1, #0
0075ff30  00 10 80 e5                                      str r1, [r0]
0075ff34  00 00 00 1a                                      bne #0x75ff3c
0075ff38  fe ca ff eb                                      bl #0x752b38
0075ff3c  00 30 a0 e3                                      mov r3, #0
0075ff40  14 30 85 e5                                      str r3, [r5, #0x14]
0075ff44  10 30 85 e5                                      str r3, [r5, #0x10]
0075ff48  00 30 95 e5                                      ldr r3, [r5]
0075ff4c  06 10 a0 e1                                      mov r1, r6
0075ff50  05 00 a0 e1                                      mov r0, r5
0075ff54  0f e0 a0 e1                                      mov lr, pc
0075ff58  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0075ff5c  00 10 a0 e1                                      mov r1, r0
0075ff60  10 00 85 e2                                      add r0, r5, #0x10
0075ff64  19 fb ff eb                                      bl #0x75ebd0
0075ff68  14 30 95 e5                                      ldr r3, [r5, #0x14]
0075ff6c  00 00 53 e3                                      cmp r3, #0
0075ff70  c1 ff ff 0a                                      beq #0x75fe7c
0075ff74  10 00 95 e5                                      ldr r0, [r5, #0x10]
0075ff78  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075ff7c  00 00 53 e3                                      cmp r3, #0
0075ff80  6f ff ff 1a                                      bne #0x75fd44
0075ff84  00 10 90 e5                                      ldr r1, [r0]
0075ff88  01 10 41 e2                                      sub r1, r1, #1
0075ff8c  00 00 51 e3                                      cmp r1, #0
0075ff90  00 10 80 e5                                      str r1, [r0]
0075ff94  00 00 00 1a                                      bne #0x75ff9c
0075ff98  e6 ca ff eb                                      bl #0x752b38
0075ff9c  00 30 a0 e3                                      mov r3, #0
0075ffa0  14 30 85 e5                                      str r3, [r5, #0x14]
0075ffa4  10 30 85 e5                                      str r3, [r5, #0x10]
0075ffa8  b3 ff ff ea                                      b #0x75fe7c
; mapping-symbol data/literal pool
0075ffac  00 d8 16 00                                      .byte 0x00, 0xd8, 0x16, 0x00
