; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076c7d8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player12action_clearEv
; demangled: gameswf::player::action_clear()
; decoder-mode: arm
0076c7d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076c7dc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::player
; alias: _ZNK7gameswf6player10get_globalEv
; demangled: gameswf::player::get_global() const
; decoder-mode: arm
0076c7dc  34 00 90 e5                                      ldr r0, [r0, #0x34]
0076c7e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076c7e4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::player
; alias: _ZNK7gameswf6player9get_stageEv
; demangled: gameswf::player::get_stage() const
; decoder-mode: arm
0076c7e4  38 00 90 e5                                      ldr r0, [r0, #0x38]
0076c7e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076c7ec, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::player
; alias: _ZNK7gameswf6player11get_workdirEv
; demangled: gameswf::player::get_workdir() const
; decoder-mode: arm
0076c7ec  d0 35 d0 e1                                      ldrsb r3, [r0, #0x50]
0076c7f0  01 00 73 e3                                      cmn r3, #1
0076c7f4  51 00 80 12                                      addne r0, r0, #0x51
0076c7f8  5c 00 90 05                                      ldreq r0, [r0, #0x5c]
0076c7fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076c800, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player19get_chardef_libraryEv
; demangled: gameswf::player::get_chardef_library()
; decoder-mode: arm
0076c800  64 00 80 e2                                      add r0, r0, #0x64
0076c804  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076c808, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player14set_as_garbageEv
; demangled: gameswf::player::set_as_garbage()
; decoder-mode: arm
0076c808  30 30 90 e5                                      ldr r3, [r0, #0x30]
0076c80c  01 30 83 e2                                      add r3, r3, #1
0076c810  30 30 80 e5                                      str r3, [r0, #0x30]
0076c814  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076c868, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player11set_workdirEPKc
; demangled: gameswf::player::set_workdir(char const*)
; decoder-mode: arm
0076c868  50 00 80 e2                                      add r0, r0, #0x50
0076c86c  e9 ff ff ea                                      b #0x76c818

; FUNCTION 0x0076c9d8, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player22clear_unused_instancesEv
; demangled: gameswf::player::clear_unused_instances()
; decoder-mode: arm
0076c9d8  10 40 2d e9                                      push {r4, lr}
0076c9dc  00 10 a0 e3                                      mov r1, #0
0076c9e0  00 40 a0 e1                                      mov r4, r0
0076c9e4  b0 00 80 e2                                      add r0, r0, #0xb0
0076c9e8  9f a3 ff eb                                      bl #0x75586c
0076c9ec  c0 00 84 e2                                      add r0, r4, #0xc0
0076c9f0  00 10 a0 e3                                      mov r1, #0
0076c9f4  9c a3 ff eb                                      bl #0x75586c
0076c9f8  d0 00 84 e2                                      add r0, r4, #0xd0
0076c9fc  00 10 a0 e3                                      mov r1, #0
0076ca00  10 40 bd e8                                      pop {r4, lr}
0076ca04  98 a3 ff ea                                      b #0x75586c

; FUNCTION 0x0076cb44, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player26create_edit_text_characterEPNS_23edit_text_character_defEPNS_9characterEi
; demangled: gameswf::player::create_edit_text_character(gameswf::edit_text_character_def*, gameswf::character*, int)
; decoder-mode: arm
0076cb44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076cb48  00 50 a0 e1                                      mov r5, r0
0076cb4c  d4 00 90 e5                                      ldr r0, [r0, #0xd4]
0076cb50  10 d0 4d e2                                      sub sp, sp, #0x10
0076cb54  02 70 a0 e1                                      mov r7, r2
0076cb58  00 00 50 e3                                      cmp r0, #0
0076cb5c  03 60 a0 e1                                      mov r6, r3
0076cb60  01 80 a0 e1                                      mov r8, r1
0076cb64  16 00 00 da                                      ble #0x76cbc4
0076cb68  d0 30 95 e5                                      ldr r3, [r5, #0xd0]
0076cb6c  01 00 40 e2                                      sub r0, r0, #1
0076cb70  00 41 93 e7                                      ldr r4, [r3, r0, lsl #2]
0076cb74  a0 00 84 e2                                      add r0, r4, #0xa0
0076cb78  c1 ff ff eb                                      bl #0x76ca84
0076cb7c  00 30 94 e5                                      ldr r3, [r4]
0076cb80  07 10 a0 e1                                      mov r1, r7
0076cb84  06 20 a0 e1                                      mov r2, r6
0076cb88  04 00 a0 e1                                      mov r0, r4
0076cb8c  0f e0 a0 e1                                      mov lr, pc
0076cb90  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0076cb94  04 30 94 e5                                      ldr r3, [r4, #4]
0076cb98  01 00 53 e3                                      cmp r3, #1
0076cb9c  12 00 00 0a                                      beq #0x76cbec
0076cba0  30 30 95 e5                                      ldr r3, [r5, #0x30]
0076cba4  d0 00 85 e2                                      add r0, r5, #0xd0
0076cba8  34 30 84 e5                                      str r3, [r4, #0x34]
0076cbac  d4 10 95 e5                                      ldr r1, [r5, #0xd4]
0076cbb0  01 10 41 e2                                      sub r1, r1, #1
0076cbb4  2c a3 ff eb                                      bl #0x75586c
0076cbb8  04 00 a0 e1                                      mov r0, r4
0076cbbc  10 d0 8d e2                                      add sp, sp, #0x10
0076cbc0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076cbc4  00 10 a0 e3                                      mov r1, #0
0076cbc8  66 0f a0 e3                                      mov r0, #0x198
0076cbcc  f5 97 ff eb                                      bl #0x752ba8
0076cbd0  05 10 a0 e1                                      mov r1, r5
0076cbd4  07 20 a0 e1                                      mov r2, r7
0076cbd8  08 30 a0 e1                                      mov r3, r8
0076cbdc  00 40 a0 e1                                      mov r4, r0
0076cbe0  00 60 8d e5                                      str r6, [sp]
0076cbe4  b4 92 00 eb                                      bl #0x7916bc
0076cbe8  f2 ff ff ea                                      b #0x76cbb8
0076cbec  10 10 8d e2                                      add r1, sp, #0x10
0076cbf0  04 40 21 e5                                      str r4, [r1, #-4]!
0076cbf4  0c 00 85 e2                                      add r0, r5, #0xc
0076cbf8  72 37 f3 eb                                      bl #0x43a9c8
0076cbfc  e7 ff ff ea                                      b #0x76cba0

; FUNCTION 0x0076cc00, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player24create_generic_characterEPNS_13character_defEPNS_9characterEi
; demangled: gameswf::player::create_generic_character(gameswf::character_def*, gameswf::character*, int)
; decoder-mode: arm
0076cc00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076cc04  00 50 a0 e1                                      mov r5, r0
0076cc08  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0076cc0c  10 d0 4d e2                                      sub sp, sp, #0x10
0076cc10  02 70 a0 e1                                      mov r7, r2
0076cc14  00 00 50 e3                                      cmp r0, #0
0076cc18  03 60 a0 e1                                      mov r6, r3
0076cc1c  01 80 a0 e1                                      mov r8, r1
0076cc20  16 00 00 da                                      ble #0x76cc80
0076cc24  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
0076cc28  01 00 40 e2                                      sub r0, r0, #1
0076cc2c  00 41 93 e7                                      ldr r4, [r3, r0, lsl #2]
0076cc30  a0 00 84 e2                                      add r0, r4, #0xa0
0076cc34  03 dd ff eb                                      bl #0x764048
0076cc38  00 30 94 e5                                      ldr r3, [r4]
0076cc3c  07 10 a0 e1                                      mov r1, r7
0076cc40  06 20 a0 e1                                      mov r2, r6
0076cc44  04 00 a0 e1                                      mov r0, r4
0076cc48  0f e0 a0 e1                                      mov lr, pc
0076cc4c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0076cc50  04 30 94 e5                                      ldr r3, [r4, #4]
0076cc54  01 00 53 e3                                      cmp r3, #1
0076cc58  12 00 00 0a                                      beq #0x76cca8
0076cc5c  30 30 95 e5                                      ldr r3, [r5, #0x30]
0076cc60  c0 00 85 e2                                      add r0, r5, #0xc0
0076cc64  34 30 84 e5                                      str r3, [r4, #0x34]
0076cc68  c4 10 95 e5                                      ldr r1, [r5, #0xc4]
0076cc6c  01 10 41 e2                                      sub r1, r1, #1
0076cc70  fd a2 ff eb                                      bl #0x75586c
0076cc74  04 00 a0 e1                                      mov r0, r4
0076cc78  10 d0 8d e2                                      add sp, sp, #0x10
0076cc7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076cc80  00 10 a0 e3                                      mov r1, #0
0076cc84  a4 00 a0 e3                                      mov r0, #0xa4
0076cc88  c6 97 ff eb                                      bl #0x752ba8
0076cc8c  05 10 a0 e1                                      mov r1, r5
0076cc90  08 20 a0 e1                                      mov r2, r8
0076cc94  07 30 a0 e1                                      mov r3, r7
0076cc98  00 40 a0 e1                                      mov r4, r0
0076cc9c  00 60 8d e5                                      str r6, [sp]
0076cca0  ad ba ff eb                                      bl #0x75b75c
0076cca4  f2 ff ff ea                                      b #0x76cc74
0076cca8  10 10 8d e2                                      add r1, sp, #0x10
0076ccac  04 40 21 e5                                      str r4, [r1, #-4]!
0076ccb0  0c 00 85 e2                                      add r0, r5, #0xc
0076ccb4  43 37 f3 eb                                      bl #0x43a9c8
0076ccb8  e7 ff ff ea                                      b #0x76cc5c

; FUNCTION 0x0076ccf0, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player22create_sprite_instanceEPNS_20movie_definition_subEPNS_4rootEPNS_9characterEi
; demangled: gameswf::player::create_sprite_instance(gameswf::movie_definition_sub*, gameswf::root*, gameswf::character*, int)
; decoder-mode: arm
0076ccf0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0076ccf4  00 50 a0 e1                                      mov r5, r0
0076ccf8  b4 00 90 e5                                      ldr r0, [r0, #0xb4]
0076ccfc  14 d0 4d e2                                      sub sp, sp, #0x14
0076cd00  02 70 a0 e1                                      mov r7, r2
0076cd04  00 00 50 e3                                      cmp r0, #0
0076cd08  03 60 a0 e1                                      mov r6, r3
0076cd0c  01 a0 a0 e1                                      mov sl, r1
0076cd10  30 80 9d e5                                      ldr r8, [sp, #0x30]
0076cd14  17 00 00 da                                      ble #0x76cd78
0076cd18  b0 30 95 e5                                      ldr r3, [r5, #0xb0]
0076cd1c  01 00 40 e2                                      sub r0, r0, #1
0076cd20  00 41 93 e7                                      ldr r4, [r3, r0, lsl #2]
0076cd24  a4 20 84 e5                                      str r2, [r4, #0xa4]
0076cd28  a0 00 84 e2                                      add r0, r4, #0xa0
0076cd2c  64 ff ff eb                                      bl #0x76cac4
0076cd30  00 30 94 e5                                      ldr r3, [r4]
0076cd34  06 10 a0 e1                                      mov r1, r6
0076cd38  08 20 a0 e1                                      mov r2, r8
0076cd3c  04 00 a0 e1                                      mov r0, r4
0076cd40  0f e0 a0 e1                                      mov lr, pc
0076cd44  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0076cd48  04 30 94 e5                                      ldr r3, [r4, #4]
0076cd4c  01 00 53 e3                                      cmp r3, #1
0076cd50  12 00 00 0a                                      beq #0x76cda0
0076cd54  30 30 95 e5                                      ldr r3, [r5, #0x30]
0076cd58  b0 00 85 e2                                      add r0, r5, #0xb0
0076cd5c  34 30 84 e5                                      str r3, [r4, #0x34]
0076cd60  b4 10 95 e5                                      ldr r1, [r5, #0xb4]
0076cd64  01 10 41 e2                                      sub r1, r1, #1
0076cd68  bf a2 ff eb                                      bl #0x75586c
0076cd6c  04 00 a0 e1                                      mov r0, r4
0076cd70  14 d0 8d e2                                      add sp, sp, #0x14
0076cd74  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0076cd78  00 10 a0 e3                                      mov r1, #0
0076cd7c  01 0c a0 e3                                      mov r0, #0x100
0076cd80  88 97 ff eb                                      bl #0x752ba8
0076cd84  05 10 a0 e1                                      mov r1, r5
0076cd88  0a 20 a0 e1                                      mov r2, sl
0076cd8c  07 30 a0 e1                                      mov r3, r7
0076cd90  00 40 a0 e1                                      mov r4, r0
0076cd94  40 01 8d e8                                      stm sp, {r6, r8}
0076cd98  5e 4e 00 eb                                      bl #0x780718
0076cd9c  f2 ff ff ea                                      b #0x76cd6c
0076cda0  10 10 8d e2                                      add r1, sp, #0x10
0076cda4  04 40 21 e5                                      str r4, [r1, #-4]!
0076cda8  0c 00 85 e2                                      add r0, r5, #0xc
0076cdac  05 37 f3 eb                                      bl #0x43a9c8
0076cdb0  e7 ff ff ea                                      b #0x76cd54

; FUNCTION 0x0076ce28, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player13verbose_parseEb
; demangled: gameswf::player::verbose_parse(bool)
; decoder-mode: arm
0076ce28  01 00 a0 e1                                      mov r0, r1
0076ce2c  64 b3 ff ea                                      b #0x759bc4

; FUNCTION 0x0076ce30, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player14verbose_actionEb
; demangled: gameswf::player::verbose_action(bool)
; decoder-mode: arm
0076ce30  01 00 a0 e1                                      mov r0, r1
0076ce34  5a b3 ff ea                                      b #0x759ba4

; FUNCTION 0x0076d2f8, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player13clear_garbageEv
; demangled: gameswf::player::clear_garbage()
; decoder-mode: arm
0076d2f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076d2fc  14 d0 4d e2                                      sub sp, sp, #0x14
0076d300  00 50 a0 e1                                      mov r5, r0
0076d304  34 fd ff eb                                      bl #0x76c7dc
0076d308  00 30 90 e5                                      ldr r3, [r0]
0076d30c  0f e0 a0 e1                                      mov lr, pc
0076d310  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0076d314  10 90 95 e5                                      ldr sb, [r5, #0x10]
0076d318  01 40 59 e2                                      subs r4, sb, #1
0076d31c  29 00 00 4a                                      bmi #0x76d3c8
0076d320  0c 30 85 e2                                      add r3, r5, #0xc
0076d324  00 60 a0 e3                                      mov r6, #0
0076d328  04 41 a0 e1                                      lsl r4, r4, #2
0076d32c  04 30 8d e5                                      str r3, [sp, #4]
0076d330  0c a0 8d e2                                      add sl, sp, #0xc
0076d334  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0076d338  01 60 86 e2                                      add r6, r6, #1
0076d33c  0a 10 a0 e1                                      mov r1, sl
0076d340  04 30 9c e7                                      ldr r3, [ip, r4]
0076d344  04 80 8c e0                                      add r8, ip, r4
0076d348  00 00 53 e3                                      cmp r3, #0
0076d34c  1a 00 00 0a                                      beq #0x76d3bc
0076d350  34 b0 93 e5                                      ldr fp, [r3, #0x34]
0076d354  30 70 95 e5                                      ldr r7, [r5, #0x30]
0076d358  03 00 a0 e1                                      mov r0, r3
0076d35c  03 20 a0 e1                                      mov r2, r3
0076d360  07 00 5b e1                                      cmp fp, r7
0076d364  14 00 00 0a                                      beq #0x76d3bc
0076d368  04 e0 93 e5                                      ldr lr, [r3, #4]
0076d36c  01 00 5e e3                                      cmp lr, #1
0076d370  08 00 00 da                                      ble #0x76d398
0076d374  00 c0 a0 e3                                      mov ip, #0
0076d378  0c c0 8d e5                                      str ip, [sp, #0xc]
0076d37c  00 30 93 e5                                      ldr r3, [r3]
0076d380  0f e0 a0 e1                                      mov lr, pc
0076d384  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0076d388  0a 00 a0 e1                                      mov r0, sl
0076d38c  2d ee ff eb                                      bl #0x768c48
0076d390  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0076d394  04 80 8c e0                                      add r8, ip, r4
0076d398  10 30 95 e5                                      ldr r3, [r5, #0x10]
0076d39c  08 00 a0 e1                                      mov r0, r8
0076d3a0  01 30 43 e2                                      sub r3, r3, #1
0076d3a4  03 11 9c e7                                      ldr r1, [ip, r3, lsl #2]
0076d3a8  46 ee ff eb                                      bl #0x768cc8
0076d3ac  10 10 95 e5                                      ldr r1, [r5, #0x10]
0076d3b0  04 00 9d e5                                      ldr r0, [sp, #4]
0076d3b4  01 10 41 e2                                      sub r1, r1, #1
0076d3b8  b2 ff ff eb                                      bl #0x76d288
0076d3bc  09 00 56 e1                                      cmp r6, sb
0076d3c0  04 40 44 e2                                      sub r4, r4, #4
0076d3c4  da ff ff 1a                                      bne #0x76d334
0076d3c8  14 d0 8d e2                                      add sp, sp, #0x14
0076d3cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0076d3d0, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player10clear_heapEv
; demangled: gameswf::player::clear_heap()
; decoder-mode: arm
0076d3d0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0076d3d4  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0076d3d8  0c d0 4d e2                                      sub sp, sp, #0xc
0076d3dc  00 50 a0 e1                                      mov r5, r0
0076d3e0  00 00 5c e3                                      cmp ip, #0
0076d3e4  16 00 00 da                                      ble #0x76d444
0076d3e8  00 40 a0 e3                                      mov r4, #0
0076d3ec  04 70 a0 e1                                      mov r7, r4
0076d3f0  04 60 8d e2                                      add r6, sp, #4
0076d3f4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0076d3f8  06 10 a0 e1                                      mov r1, r6
0076d3fc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0076d400  01 40 84 e2                                      add r4, r4, #1
0076d404  00 00 53 e3                                      cmp r3, #0
0076d408  0b 00 00 0a                                      beq #0x76d43c
0076d40c  04 e0 93 e5                                      ldr lr, [r3, #4]
0076d410  03 00 a0 e1                                      mov r0, r3
0076d414  03 20 a0 e1                                      mov r2, r3
0076d418  01 00 5e e3                                      cmp lr, #1
0076d41c  06 00 00 da                                      ble #0x76d43c
0076d420  04 70 8d e5                                      str r7, [sp, #4]
0076d424  00 30 93 e5                                      ldr r3, [r3]
0076d428  0f e0 a0 e1                                      mov lr, pc
0076d42c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0076d430  06 00 a0 e1                                      mov r0, r6
0076d434  03 ee ff eb                                      bl #0x768c48
0076d438  10 c0 95 e5                                      ldr ip, [r5, #0x10]
0076d43c  0c 00 54 e1                                      cmp r4, ip
0076d440  eb ff ff ba                                      blt #0x76d3f4
0076d444  0c 00 85 e2                                      add r0, r5, #0xc
0076d448  72 ff ff eb                                      bl #0x76d218
0076d44c  0c d0 8d e2                                      add sp, sp, #0xc
0076d450  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0076d5ac, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player14set_flash_varsERKNS_9tu_stringE
; demangled: gameswf::player::set_flash_vars(gameswf::tu_string const&)
; decoder-mode: arm
0076d5ac  68 00 80 e2                                      add r0, r0, #0x68
0076d5b0  66 96 ff ea                                      b #0x752f50

; FUNCTION 0x0076d5b4, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player8get_rootEv
; demangled: gameswf::player::get_root()
; decoder-mode: arm
0076d5b4  10 40 2d e9                                      push {r4, lr}
0076d5b8  00 40 a0 e1                                      mov r4, r0
0076d5bc  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0076d5c0  00 00 50 e3                                      cmp r0, #0
0076d5c4  03 00 00 0a                                      beq #0x76d5d8
0076d5c8  48 30 94 e5                                      ldr r3, [r4, #0x48]
0076d5cc  04 20 d3 e5                                      ldrb r2, [r3, #4]
0076d5d0  00 00 52 e3                                      cmp r2, #0
0076d5d4  00 00 00 0a                                      beq #0x76d5dc
0076d5d8  10 80 bd e8                                      pop {r4, pc}
0076d5dc  00 10 93 e5                                      ldr r1, [r3]
0076d5e0  01 10 41 e2                                      sub r1, r1, #1
0076d5e4  00 00 51 e3                                      cmp r1, #0
0076d5e8  00 10 83 e5                                      str r1, [r3]
0076d5ec  01 00 00 1a                                      bne #0x76d5f8
0076d5f0  03 00 a0 e1                                      mov r0, r3
0076d5f4  4f 95 ff eb                                      bl #0x752b38
0076d5f8  00 00 a0 e3                                      mov r0, #0
0076d5fc  4c 00 84 e5                                      str r0, [r4, #0x4c]
0076d600  48 00 84 e5                                      str r0, [r4, #0x48]
0076d604  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0076d608, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player16notify_key_eventENS_3key4codeEb
; demangled: gameswf::player::notify_key_event(gameswf::key::code, bool)
; decoder-mode: arm
0076d608  30 40 2d e9                                      push {r4, r5, lr}
0076d60c  00 40 a0 e1                                      mov r4, r0
0076d610  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0076d614  0c d0 4d e2                                      sub sp, sp, #0xc
0076d618  01 50 a0 e1                                      mov r5, r1
0076d61c  00 00 50 e3                                      cmp r0, #0
0076d620  02 30 a0 e1                                      mov r3, r2
0076d624  03 00 00 0a                                      beq #0x76d638
0076d628  48 20 94 e5                                      ldr r2, [r4, #0x48]
0076d62c  04 10 d2 e5                                      ldrb r1, [r2, #4]
0076d630  00 00 51 e3                                      cmp r1, #0
0076d634  04 00 00 0a                                      beq #0x76d64c
0076d638  04 10 a0 e1                                      mov r1, r4
0076d63c  05 20 a0 e1                                      mov r2, r5
0076d640  0c d0 8d e2                                      add sp, sp, #0xc
0076d644  30 40 bd e8                                      pop {r4, r5, lr}
0076d648  bd 1b 00 ea                                      b #0x774544
0076d64c  00 10 92 e5                                      ldr r1, [r2]
0076d650  01 10 41 e2                                      sub r1, r1, #1
0076d654  00 00 51 e3                                      cmp r1, #0
0076d658  00 10 82 e5                                      str r1, [r2]
0076d65c  03 00 00 1a                                      bne #0x76d670
0076d660  02 00 a0 e1                                      mov r0, r2
0076d664  04 30 8d e5                                      str r3, [sp, #4]
0076d668  32 95 ff eb                                      bl #0x752b38
0076d66c  04 30 9d e5                                      ldr r3, [sp, #4]
0076d670  00 00 a0 e3                                      mov r0, #0
0076d674  48 00 84 e5                                      str r0, [r4, #0x48]
0076d678  4c 00 84 e5                                      str r0, [r4, #0x4c]
0076d67c  ed ff ff ea                                      b #0x76d638

; FUNCTION 0x0076d71c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player8set_rootEPNS_4rootE
; demangled: gameswf::player::set_root(gameswf::root*)
; decoder-mode: arm
0076d71c  48 00 80 e2                                      add r0, r0, #0x48
0076d720  d6 ff ff ea                                      b #0x76d680

; FUNCTION 0x0076dfdc, declared_size=296, range_size=296, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player17notify_key_objectENS_3key4codeEb
; demangled: gameswf::player::notify_key_object(gameswf::key::code, bool)
; decoder-mode: arm
0076dfdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076dfe0  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0076dfe4  0c 61 9f e5                                      ldr r6, [pc, #0x10c]
0076dfe8  02 a0 a0 e1                                      mov sl, r2
0076dfec  04 40 8f e0                                      add r4, pc, r4
0076dff0  06 c0 94 e7                                      ldr ip, [r4, r6]
0076dff4  2c d0 4d e2                                      sub sp, sp, #0x2c
0076dff8  00 30 a0 e3                                      mov r3, #0
0076dffc  00 20 9c e5                                      ldr r2, [ip]
0076e000  05 30 cd e5                                      strb r3, [sp, #5]
0076e004  01 80 a0 e1                                      mov r8, r1
0076e008  24 20 8d e5                                      str r2, [sp, #0x24]
0076e00c  04 30 cd e5                                      strb r3, [sp, #4]
0076e010  f1 f9 ff eb                                      bl #0x76c7dc
0076e014  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
0076e018  00 30 90 e5                                      ldr r3, [r0]
0076e01c  10 90 8d e2                                      add sb, sp, #0x10
0076e020  00 b0 a0 e1                                      mov fp, r0
0076e024  01 10 8f e0                                      add r1, pc, r1
0076e028  09 00 a0 e1                                      mov r0, sb
0076e02c  04 50 8d e2                                      add r5, sp, #4
0076e030  20 70 93 e5                                      ldr r7, [r3, #0x20]
0076e034  90 96 f2 eb                                      bl #0x413a7c
0076e038  0b 00 a0 e1                                      mov r0, fp
0076e03c  09 10 a0 e1                                      mov r1, sb
0076e040  05 20 a0 e1                                      mov r2, r5
0076e044  37 ff 2f e1                                      blx r7
0076e048  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
0076e04c  01 00 73 e3                                      cmn r3, #1
0076e050  22 00 00 0a                                      beq #0x76e0e0
0076e054  d5 30 dd e1                                      ldrsb r3, [sp, #5]
0076e058  05 00 53 e3                                      cmp r3, #5
0076e05c  0b 00 00 0a                                      beq #0x76e090
0076e060  98 00 9f e5                                      ldr r0, [pc, #0x98]
0076e064  00 00 8f e0                                      add r0, pc, r0
0076e068  45 cc ff eb                                      bl #0x761184
0076e06c  05 00 a0 e1                                      mov r0, r5
0076e070  2b a4 00 eb                                      bl #0x797124
0076e074  06 30 94 e7                                      ldr r3, [r4, r6]
0076e078  24 20 9d e5                                      ldr r2, [sp, #0x24]
0076e07c  00 30 93 e5                                      ldr r3, [r3]
0076e080  03 00 52 e1                                      cmp r2, r3
0076e084  19 00 00 1a                                      bne #0x76e0f0
0076e088  2c d0 8d e2                                      add sp, sp, #0x2c
0076e08c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076e090  08 70 9d e5                                      ldr r7, [sp, #8]
0076e094  00 00 57 e3                                      cmp r7, #0
0076e098  f0 ff ff 0a                                      beq #0x76e060
0076e09c  00 30 97 e5                                      ldr r3, [r7]
0076e0a0  07 00 a0 e1                                      mov r0, r7
0076e0a4  0f 10 a0 e3                                      mov r1, #0xf
0076e0a8  0f e0 a0 e1                                      mov lr, pc
0076e0ac  08 f0 93 e5                                      ldr pc, [r3, #8]
0076e0b0  00 00 50 e3                                      cmp r0, #0
0076e0b4  e9 ff ff 0a                                      beq #0x76e060
0076e0b8  00 00 5a e3                                      cmp sl, #0
0076e0bc  03 00 00 0a                                      beq #0x76e0d0
0076e0c0  07 00 a0 e1                                      mov r0, r7
0076e0c4  08 10 a0 e1                                      mov r1, r8
0076e0c8  bd c3 00 eb                                      bl #0x79efc4
0076e0cc  e6 ff ff ea                                      b #0x76e06c
0076e0d0  07 00 a0 e1                                      mov r0, r7
0076e0d4  08 10 a0 e1                                      mov r1, r8
0076e0d8  a2 c3 00 eb                                      bl #0x79ef68
0076e0dc  e2 ff ff ea                                      b #0x76e06c
0076e0e0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0076e0e4  18 10 9d e5                                      ldr r1, [sp, #0x18]
0076e0e8  92 92 ff eb                                      bl #0x752b38
0076e0ec  d8 ff ff ea                                      b #0x76e054
0076e0f0  86 80 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0076e0f4  a4 6a 22 00 ac 40 00 00 14 b1 19 00 dc b0 19 00  .byte 0xa4, 0x6a, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00, 0x14, 0xb1, 0x19, 0x00, 0xdc, 0xb0, 0x19, 0x00

; FUNCTION 0x0076e104, declared_size=3672, range_size=3672, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player11action_initEv
; demangled: gameswf::player::action_init()
; decoder-mode: arm
0076e104  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0076e108  74 5d 9f e5                                      ldr r5, [pc, #0xd74]
0076e10c  74 7d 9f e5                                      ldr r7, [pc, #0xd74]
0076e110  ef df 4d e2                                      sub sp, sp, #0x3bc
0076e114  05 50 8f e0                                      add r5, pc, r5
0076e118  07 30 95 e7                                      ldr r3, [r5, r7]
0076e11c  00 40 a0 e1                                      mov r4, r0
0076e120  00 30 93 e5                                      ldr r3, [r3]
0076e124  b4 33 8d e5                                      str r3, [sp, #0x3b4]
0076e128  07 26 01 eb                                      bl #0x7b794c
0076e12c  34 30 94 e5                                      ldr r3, [r4, #0x34]
0076e130  30 20 94 e5                                      ldr r2, [r4, #0x30]
0076e134  f0 04 c4 e1                                      strd r0, r1, [r4, #0x40]
0076e138  34 20 83 e5                                      str r2, [r3, #0x34]
0076e13c  34 00 94 e5                                      ldr r0, [r4, #0x34]
0076e140  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0076e144  0c 00 80 e2                                      add r0, r0, #0xc
0076e148  00 00 53 e3                                      cmp r3, #0
0076e14c  30 10 a0 03                                      moveq r1, #0x30
0076e150  04 00 00 0a                                      beq #0x76e168
0076e154  00 10 93 e5                                      ldr r1, [r3]
0076e158  20 00 51 e3                                      cmp r1, #0x20
0076e15c  20 10 a0 b3                                      movlt r1, #0x20
0076e160  81 10 81 e0                                      add r1, r1, r1, lsl #1
0076e164  c1 10 a0 e1                                      asr r1, r1, #1
0076e168  62 f0 ff eb                                      bl #0x76a2f8
0076e16c  18 1d 9f e5                                      ldr r1, [pc, #0xd18]
0076e170  3a 8e 8d e2                                      add r8, sp, #0x3a0
0076e174  08 00 a0 e1                                      mov r0, r8
0076e178  01 10 8f e0                                      add r1, pc, r1
0076e17c  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e180  3d 96 f2 eb                                      bl #0x413a7c
0076e184  04 2d 9f e5                                      ldr r2, [pc, #0xd04]
0076e188  15 6e 8d e2                                      add r6, sp, #0x150
0076e18c  00 30 a0 e3                                      mov r3, #0
0076e190  02 10 95 e7                                      ldr r1, [r5, r2]
0076e194  06 00 a0 e1                                      mov r0, r6
0076e198  51 31 cd e5                                      strb r3, [sp, #0x151]
0076e19c  50 31 cd e5                                      strb r3, [sp, #0x150]
0076e1a0  3e a4 00 eb                                      bl #0x7972a0
0076e1a4  06 20 a0 e1                                      mov r2, r6
0076e1a8  0a 00 a0 e1                                      mov r0, sl
0076e1ac  08 10 a0 e1                                      mov r1, r8
0076e1b0  67 ea ff eb                                      bl #0x768b54
0076e1b4  06 00 a0 e1                                      mov r0, r6
0076e1b8  d9 a3 00 eb                                      bl #0x797124
0076e1bc  a0 23 dd e5                                      ldrb r2, [sp, #0x3a0]
0076e1c0  72 30 af e6                                      sxtb r3, r2
0076e1c4  01 00 73 e3                                      cmn r3, #1
0076e1c8  b2 02 00 0a                                      beq #0x76ec98
0076e1cc  c0 1c 9f e5                                      ldr r1, [pc, #0xcc0]
0076e1d0  e3 8f 8d e2                                      add r8, sp, #0x38c
0076e1d4  08 00 a0 e1                                      mov r0, r8
0076e1d8  01 10 8f e0                                      add r1, pc, r1
0076e1dc  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e1e0  25 96 f2 eb                                      bl #0x413a7c
0076e1e4  ac 2c 9f e5                                      ldr r2, [pc, #0xcac]
0076e1e8  51 6f 8d e2                                      add r6, sp, #0x144
0076e1ec  00 30 a0 e3                                      mov r3, #0
0076e1f0  02 10 95 e7                                      ldr r1, [r5, r2]
0076e1f4  06 00 a0 e1                                      mov r0, r6
0076e1f8  45 31 cd e5                                      strb r3, [sp, #0x145]
0076e1fc  44 31 cd e5                                      strb r3, [sp, #0x144]
0076e200  26 a4 00 eb                                      bl #0x7972a0
0076e204  06 20 a0 e1                                      mov r2, r6
0076e208  0a 00 a0 e1                                      mov r0, sl
0076e20c  08 10 a0 e1                                      mov r1, r8
0076e210  4f ea ff eb                                      bl #0x768b54
0076e214  06 00 a0 e1                                      mov r0, r6
0076e218  c1 a3 00 eb                                      bl #0x797124
0076e21c  8c 23 dd e5                                      ldrb r2, [sp, #0x38c]
0076e220  72 30 af e6                                      sxtb r3, r2
0076e224  01 00 73 e3                                      cmn r3, #1
0076e228  9e 02 00 0a                                      beq #0x76eca8
0076e22c  68 1c 9f e5                                      ldr r1, [pc, #0xc68]
0076e230  de 8f 8d e2                                      add r8, sp, #0x378
0076e234  08 00 a0 e1                                      mov r0, r8
0076e238  01 10 8f e0                                      add r1, pc, r1
0076e23c  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e240  0d 96 f2 eb                                      bl #0x413a7c
0076e244  54 2c 9f e5                                      ldr r2, [pc, #0xc54]
0076e248  4e 6f 8d e2                                      add r6, sp, #0x138
0076e24c  00 30 a0 e3                                      mov r3, #0
0076e250  02 10 95 e7                                      ldr r1, [r5, r2]
0076e254  06 00 a0 e1                                      mov r0, r6
0076e258  39 31 cd e5                                      strb r3, [sp, #0x139]
0076e25c  38 31 cd e5                                      strb r3, [sp, #0x138]
0076e260  0e a4 00 eb                                      bl #0x7972a0
0076e264  06 20 a0 e1                                      mov r2, r6
0076e268  0a 00 a0 e1                                      mov r0, sl
0076e26c  08 10 a0 e1                                      mov r1, r8
0076e270  37 ea ff eb                                      bl #0x768b54
0076e274  06 00 a0 e1                                      mov r0, r6
0076e278  a9 a3 00 eb                                      bl #0x797124
0076e27c  78 23 dd e5                                      ldrb r2, [sp, #0x378]
0076e280  72 30 af e6                                      sxtb r3, r2
0076e284  01 00 73 e3                                      cmn r3, #1
0076e288  8a 02 00 0a                                      beq #0x76ecb8
0076e28c  10 1c 9f e5                                      ldr r1, [pc, #0xc10]
0076e290  d9 8f 8d e2                                      add r8, sp, #0x364
0076e294  08 00 a0 e1                                      mov r0, r8
0076e298  01 10 8f e0                                      add r1, pc, r1
0076e29c  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e2a0  f5 95 f2 eb                                      bl #0x413a7c
0076e2a4  04 00 a0 e1                                      mov r0, r4
0076e2a8  e5 aa 00 eb                                      bl #0x798e44
0076e2ac  00 20 a0 e3                                      mov r2, #0
0076e2b0  2c 21 cd e5                                      strb r2, [sp, #0x12c]
0076e2b4  00 00 50 e3                                      cmp r0, #0
0076e2b8  05 20 a0 e3                                      mov r2, #5
0076e2bc  2d 21 cd e5                                      strb r2, [sp, #0x12d]
0076e2c0  30 01 8d e5                                      str r0, [sp, #0x130]
0076e2c4  00 00 00 0a                                      beq #0x76e2cc
0076e2c8  65 ae ff eb                                      bl #0x759c64
0076e2cc  4b 6f 8d e2                                      add r6, sp, #0x12c
0076e2d0  06 20 a0 e1                                      mov r2, r6
0076e2d4  08 10 a0 e1                                      mov r1, r8
0076e2d8  0a 00 a0 e1                                      mov r0, sl
0076e2dc  1c ea ff eb                                      bl #0x768b54
0076e2e0  06 00 a0 e1                                      mov r0, r6
0076e2e4  8e a3 00 eb                                      bl #0x797124
0076e2e8  64 23 dd e5                                      ldrb r2, [sp, #0x364]
0076e2ec  72 30 af e6                                      sxtb r3, r2
0076e2f0  01 00 73 e3                                      cmn r3, #1
0076e2f4  73 02 00 0a                                      beq #0x76ecc8
0076e2f8  a8 1b 9f e5                                      ldr r1, [pc, #0xba8]
0076e2fc  35 8e 8d e2                                      add r8, sp, #0x350
0076e300  08 00 a0 e1                                      mov r0, r8
0076e304  01 10 8f e0                                      add r1, pc, r1
0076e308  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e30c  da 95 f2 eb                                      bl #0x413a7c
0076e310  94 2b 9f e5                                      ldr r2, [pc, #0xb94]
0076e314  12 6e 8d e2                                      add r6, sp, #0x120
0076e318  00 30 a0 e3                                      mov r3, #0
0076e31c  02 10 95 e7                                      ldr r1, [r5, r2]
0076e320  06 00 a0 e1                                      mov r0, r6
0076e324  21 31 cd e5                                      strb r3, [sp, #0x121]
0076e328  20 31 cd e5                                      strb r3, [sp, #0x120]
0076e32c  db a3 00 eb                                      bl #0x7972a0
0076e330  06 20 a0 e1                                      mov r2, r6
0076e334  0a 00 a0 e1                                      mov r0, sl
0076e338  08 10 a0 e1                                      mov r1, r8
0076e33c  04 ea ff eb                                      bl #0x768b54
0076e340  06 00 a0 e1                                      mov r0, r6
0076e344  76 a3 00 eb                                      bl #0x797124
0076e348  50 23 dd e5                                      ldrb r2, [sp, #0x350]
0076e34c  72 30 af e6                                      sxtb r3, r2
0076e350  01 00 73 e3                                      cmn r3, #1
0076e354  5f 02 00 0a                                      beq #0x76ecd8
0076e358  50 1b 9f e5                                      ldr r1, [pc, #0xb50]
0076e35c  cf 8f 8d e2                                      add r8, sp, #0x33c
0076e360  08 00 a0 e1                                      mov r0, r8
0076e364  01 10 8f e0                                      add r1, pc, r1
0076e368  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e36c  c2 95 f2 eb                                      bl #0x413a7c
0076e370  3c 2b 9f e5                                      ldr r2, [pc, #0xb3c]
0076e374  45 6f 8d e2                                      add r6, sp, #0x114
0076e378  00 30 a0 e3                                      mov r3, #0
0076e37c  02 10 95 e7                                      ldr r1, [r5, r2]
0076e380  06 00 a0 e1                                      mov r0, r6
0076e384  15 31 cd e5                                      strb r3, [sp, #0x115]
0076e388  14 31 cd e5                                      strb r3, [sp, #0x114]
0076e38c  c3 a3 00 eb                                      bl #0x7972a0
0076e390  06 20 a0 e1                                      mov r2, r6
0076e394  0a 00 a0 e1                                      mov r0, sl
0076e398  08 10 a0 e1                                      mov r1, r8
0076e39c  ec e9 ff eb                                      bl #0x768b54
0076e3a0  06 00 a0 e1                                      mov r0, r6
0076e3a4  5e a3 00 eb                                      bl #0x797124
0076e3a8  3c 23 dd e5                                      ldrb r2, [sp, #0x33c]
0076e3ac  72 30 af e6                                      sxtb r3, r2
0076e3b0  01 00 73 e3                                      cmn r3, #1
0076e3b4  4b 02 00 0a                                      beq #0x76ece8
0076e3b8  f8 1a 9f e5                                      ldr r1, [pc, #0xaf8]
0076e3bc  ca 8f 8d e2                                      add r8, sp, #0x328
0076e3c0  08 00 a0 e1                                      mov r0, r8
0076e3c4  01 10 8f e0                                      add r1, pc, r1
0076e3c8  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e3cc  aa 95 f2 eb                                      bl #0x413a7c
0076e3d0  e4 2a 9f e5                                      ldr r2, [pc, #0xae4]
0076e3d4  42 6f 8d e2                                      add r6, sp, #0x108
0076e3d8  00 30 a0 e3                                      mov r3, #0
0076e3dc  02 10 95 e7                                      ldr r1, [r5, r2]
0076e3e0  06 00 a0 e1                                      mov r0, r6
0076e3e4  09 31 cd e5                                      strb r3, [sp, #0x109]
0076e3e8  08 31 cd e5                                      strb r3, [sp, #0x108]
0076e3ec  ab a3 00 eb                                      bl #0x7972a0
0076e3f0  06 20 a0 e1                                      mov r2, r6
0076e3f4  0a 00 a0 e1                                      mov r0, sl
0076e3f8  08 10 a0 e1                                      mov r1, r8
0076e3fc  d4 e9 ff eb                                      bl #0x768b54
0076e400  06 00 a0 e1                                      mov r0, r6
0076e404  46 a3 00 eb                                      bl #0x797124
0076e408  28 23 dd e5                                      ldrb r2, [sp, #0x328]
0076e40c  72 30 af e6                                      sxtb r3, r2
0076e410  01 00 73 e3                                      cmn r3, #1
0076e414  37 02 00 0a                                      beq #0x76ecf8
0076e418  a0 1a 9f e5                                      ldr r1, [pc, #0xaa0]
0076e41c  c5 8f 8d e2                                      add r8, sp, #0x314
0076e420  08 00 a0 e1                                      mov r0, r8
0076e424  01 10 8f e0                                      add r1, pc, r1
0076e428  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e42c  92 95 f2 eb                                      bl #0x413a7c
0076e430  8c 2a 9f e5                                      ldr r2, [pc, #0xa8c]
0076e434  fc 60 8d e2                                      add r6, sp, #0xfc
0076e438  00 30 a0 e3                                      mov r3, #0
0076e43c  02 10 95 e7                                      ldr r1, [r5, r2]
0076e440  06 00 a0 e1                                      mov r0, r6
0076e444  fd 30 cd e5                                      strb r3, [sp, #0xfd]
0076e448  fc 30 cd e5                                      strb r3, [sp, #0xfc]
0076e44c  93 a3 00 eb                                      bl #0x7972a0
0076e450  06 20 a0 e1                                      mov r2, r6
0076e454  0a 00 a0 e1                                      mov r0, sl
0076e458  08 10 a0 e1                                      mov r1, r8
0076e45c  bc e9 ff eb                                      bl #0x768b54
0076e460  06 00 a0 e1                                      mov r0, r6
0076e464  2e a3 00 eb                                      bl #0x797124
0076e468  14 23 dd e5                                      ldrb r2, [sp, #0x314]
0076e46c  72 30 af e6                                      sxtb r3, r2
0076e470  01 00 73 e3                                      cmn r3, #1
0076e474  23 02 00 0a                                      beq #0x76ed08
0076e478  48 1a 9f e5                                      ldr r1, [pc, #0xa48]
0076e47c  03 8c 8d e2                                      add r8, sp, #0x300
0076e480  08 00 a0 e1                                      mov r0, r8
0076e484  01 10 8f e0                                      add r1, pc, r1
0076e488  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e48c  7a 95 f2 eb                                      bl #0x413a7c
0076e490  34 2a 9f e5                                      ldr r2, [pc, #0xa34]
0076e494  f0 60 8d e2                                      add r6, sp, #0xf0
0076e498  00 30 a0 e3                                      mov r3, #0
0076e49c  02 10 95 e7                                      ldr r1, [r5, r2]
0076e4a0  06 00 a0 e1                                      mov r0, r6
0076e4a4  f1 30 cd e5                                      strb r3, [sp, #0xf1]
0076e4a8  f0 30 cd e5                                      strb r3, [sp, #0xf0]
0076e4ac  7b a3 00 eb                                      bl #0x7972a0
0076e4b0  06 20 a0 e1                                      mov r2, r6
0076e4b4  0a 00 a0 e1                                      mov r0, sl
0076e4b8  08 10 a0 e1                                      mov r1, r8
0076e4bc  a4 e9 ff eb                                      bl #0x768b54
0076e4c0  06 00 a0 e1                                      mov r0, r6
0076e4c4  16 a3 00 eb                                      bl #0x797124
0076e4c8  00 23 dd e5                                      ldrb r2, [sp, #0x300]
0076e4cc  72 30 af e6                                      sxtb r3, r2
0076e4d0  01 00 73 e3                                      cmn r3, #1
0076e4d4  0f 02 00 0a                                      beq #0x76ed18
0076e4d8  f0 19 9f e5                                      ldr r1, [pc, #0x9f0]
0076e4dc  bb 8f 8d e2                                      add r8, sp, #0x2ec
0076e4e0  08 00 a0 e1                                      mov r0, r8
0076e4e4  01 10 8f e0                                      add r1, pc, r1
0076e4e8  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e4ec  62 95 f2 eb                                      bl #0x413a7c
0076e4f0  dc 29 9f e5                                      ldr r2, [pc, #0x9dc]
0076e4f4  e4 60 8d e2                                      add r6, sp, #0xe4
0076e4f8  00 30 a0 e3                                      mov r3, #0
0076e4fc  02 10 95 e7                                      ldr r1, [r5, r2]
0076e500  06 00 a0 e1                                      mov r0, r6
0076e504  e5 30 cd e5                                      strb r3, [sp, #0xe5]
0076e508  e4 30 cd e5                                      strb r3, [sp, #0xe4]
0076e50c  63 a3 00 eb                                      bl #0x7972a0
0076e510  06 20 a0 e1                                      mov r2, r6
0076e514  0a 00 a0 e1                                      mov r0, sl
0076e518  08 10 a0 e1                                      mov r1, r8
0076e51c  8c e9 ff eb                                      bl #0x768b54
0076e520  06 00 a0 e1                                      mov r0, r6
0076e524  fe a2 00 eb                                      bl #0x797124
0076e528  ec 22 dd e5                                      ldrb r2, [sp, #0x2ec]
0076e52c  72 30 af e6                                      sxtb r3, r2
0076e530  01 00 73 e3                                      cmn r3, #1
0076e534  fb 01 00 0a                                      beq #0x76ed28
0076e538  98 19 9f e5                                      ldr r1, [pc, #0x998]
0076e53c  b6 8f 8d e2                                      add r8, sp, #0x2d8
0076e540  08 00 a0 e1                                      mov r0, r8
0076e544  01 10 8f e0                                      add r1, pc, r1
0076e548  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e54c  4a 95 f2 eb                                      bl #0x413a7c
0076e550  84 29 9f e5                                      ldr r2, [pc, #0x984]
0076e554  d8 60 8d e2                                      add r6, sp, #0xd8
0076e558  00 30 a0 e3                                      mov r3, #0
0076e55c  02 10 95 e7                                      ldr r1, [r5, r2]
0076e560  06 00 a0 e1                                      mov r0, r6
0076e564  d9 30 cd e5                                      strb r3, [sp, #0xd9]
0076e568  d8 30 cd e5                                      strb r3, [sp, #0xd8]
0076e56c  4b a3 00 eb                                      bl #0x7972a0
0076e570  06 20 a0 e1                                      mov r2, r6
0076e574  0a 00 a0 e1                                      mov r0, sl
0076e578  08 10 a0 e1                                      mov r1, r8
0076e57c  74 e9 ff eb                                      bl #0x768b54
0076e580  06 00 a0 e1                                      mov r0, r6
0076e584  e6 a2 00 eb                                      bl #0x797124
0076e588  d8 22 dd e5                                      ldrb r2, [sp, #0x2d8]
0076e58c  72 30 af e6                                      sxtb r3, r2
0076e590  01 00 73 e3                                      cmn r3, #1
0076e594  e7 01 00 0a                                      beq #0x76ed38
0076e598  40 19 9f e5                                      ldr r1, [pc, #0x940]
0076e59c  b1 8f 8d e2                                      add r8, sp, #0x2c4
0076e5a0  08 00 a0 e1                                      mov r0, r8
0076e5a4  01 10 8f e0                                      add r1, pc, r1
0076e5a8  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e5ac  32 95 f2 eb                                      bl #0x413a7c
0076e5b0  2c 29 9f e5                                      ldr r2, [pc, #0x92c]
0076e5b4  cc 60 8d e2                                      add r6, sp, #0xcc
0076e5b8  00 30 a0 e3                                      mov r3, #0
0076e5bc  02 10 95 e7                                      ldr r1, [r5, r2]
0076e5c0  06 00 a0 e1                                      mov r0, r6
0076e5c4  cd 30 cd e5                                      strb r3, [sp, #0xcd]
0076e5c8  cc 30 cd e5                                      strb r3, [sp, #0xcc]
0076e5cc  33 a3 00 eb                                      bl #0x7972a0
0076e5d0  06 20 a0 e1                                      mov r2, r6
0076e5d4  0a 00 a0 e1                                      mov r0, sl
0076e5d8  08 10 a0 e1                                      mov r1, r8
0076e5dc  5c e9 ff eb                                      bl #0x768b54
0076e5e0  06 00 a0 e1                                      mov r0, r6
0076e5e4  ce a2 00 eb                                      bl #0x797124
0076e5e8  c4 22 dd e5                                      ldrb r2, [sp, #0x2c4]
0076e5ec  72 30 af e6                                      sxtb r3, r2
0076e5f0  01 00 73 e3                                      cmn r3, #1
0076e5f4  d3 01 00 0a                                      beq #0x76ed48
0076e5f8  e8 18 9f e5                                      ldr r1, [pc, #0x8e8]
0076e5fc  2b 8e 8d e2                                      add r8, sp, #0x2b0
0076e600  08 00 a0 e1                                      mov r0, r8
0076e604  01 10 8f e0                                      add r1, pc, r1
0076e608  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e60c  1a 95 f2 eb                                      bl #0x413a7c
0076e610  d4 28 9f e5                                      ldr r2, [pc, #0x8d4]
0076e614  c0 60 8d e2                                      add r6, sp, #0xc0
0076e618  00 30 a0 e3                                      mov r3, #0
0076e61c  02 10 95 e7                                      ldr r1, [r5, r2]
0076e620  06 00 a0 e1                                      mov r0, r6
0076e624  c1 30 cd e5                                      strb r3, [sp, #0xc1]
0076e628  c0 30 cd e5                                      strb r3, [sp, #0xc0]
0076e62c  1b a3 00 eb                                      bl #0x7972a0
0076e630  0a 00 a0 e1                                      mov r0, sl
0076e634  08 10 a0 e1                                      mov r1, r8
0076e638  06 20 a0 e1                                      mov r2, r6
0076e63c  44 e9 ff eb                                      bl #0x768b54
0076e640  06 00 a0 e1                                      mov r0, r6
0076e644  b6 a2 00 eb                                      bl #0x797124
0076e648  b0 32 dd e5                                      ldrb r3, [sp, #0x2b0]
0076e64c  ff 00 53 e3                                      cmp r3, #0xff
0076e650  c0 01 00 0a                                      beq #0x76ed58
0076e654  94 18 9f e5                                      ldr r1, [pc, #0x894]
0076e658  a7 8f 8d e2                                      add r8, sp, #0x29c
0076e65c  08 00 a0 e1                                      mov r0, r8
0076e660  01 10 8f e0                                      add r1, pc, r1
0076e664  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e668  03 95 f2 eb                                      bl #0x413a7c
0076e66c  04 00 a0 e1                                      mov r0, r4
0076e670  62 d9 00 eb                                      bl #0x7a4c00
0076e674  00 20 a0 e3                                      mov r2, #0
0076e678  b4 20 cd e5                                      strb r2, [sp, #0xb4]
0076e67c  00 00 50 e3                                      cmp r0, #0
0076e680  05 20 a0 e3                                      mov r2, #5
0076e684  b5 20 cd e5                                      strb r2, [sp, #0xb5]
0076e688  b8 00 8d e5                                      str r0, [sp, #0xb8]
0076e68c  00 00 00 0a                                      beq #0x76e694
0076e690  73 ad ff eb                                      bl #0x759c64
0076e694  b4 60 8d e2                                      add r6, sp, #0xb4
0076e698  08 10 a0 e1                                      mov r1, r8
0076e69c  0a 00 a0 e1                                      mov r0, sl
0076e6a0  06 20 a0 e1                                      mov r2, r6
0076e6a4  2a e9 ff eb                                      bl #0x768b54
0076e6a8  06 00 a0 e1                                      mov r0, r6
0076e6ac  9c a2 00 eb                                      bl #0x797124
0076e6b0  9c 32 dd e5                                      ldrb r3, [sp, #0x29c]
0076e6b4  ff 00 53 e3                                      cmp r3, #0xff
0076e6b8  aa 01 00 0a                                      beq #0x76ed68
0076e6bc  30 18 9f e5                                      ldr r1, [pc, #0x830]
0076e6c0  a2 8f 8d e2                                      add r8, sp, #0x288
0076e6c4  08 00 a0 e1                                      mov r0, r8
0076e6c8  01 10 8f e0                                      add r1, pc, r1
0076e6cc  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e6d0  e9 94 f2 eb                                      bl #0x413a7c
0076e6d4  1c 28 9f e5                                      ldr r2, [pc, #0x81c]
0076e6d8  a8 60 8d e2                                      add r6, sp, #0xa8
0076e6dc  00 30 a0 e3                                      mov r3, #0
0076e6e0  02 10 95 e7                                      ldr r1, [r5, r2]
0076e6e4  06 00 a0 e1                                      mov r0, r6
0076e6e8  a9 30 cd e5                                      strb r3, [sp, #0xa9]
0076e6ec  a8 30 cd e5                                      strb r3, [sp, #0xa8]
0076e6f0  ea a2 00 eb                                      bl #0x7972a0
0076e6f4  0a 00 a0 e1                                      mov r0, sl
0076e6f8  08 10 a0 e1                                      mov r1, r8
0076e6fc  06 20 a0 e1                                      mov r2, r6
0076e700  13 e9 ff eb                                      bl #0x768b54
0076e704  06 00 a0 e1                                      mov r0, r6
0076e708  85 a2 00 eb                                      bl #0x797124
0076e70c  88 32 dd e5                                      ldrb r3, [sp, #0x288]
0076e710  ff 00 53 e3                                      cmp r3, #0xff
0076e714  97 01 00 0a                                      beq #0x76ed78
0076e718  dc 17 9f e5                                      ldr r1, [pc, #0x7dc]
0076e71c  9d 8f 8d e2                                      add r8, sp, #0x274
0076e720  08 00 a0 e1                                      mov r0, r8
0076e724  01 10 8f e0                                      add r1, pc, r1
0076e728  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e72c  d2 94 f2 eb                                      bl #0x413a7c
0076e730  c8 27 9f e5                                      ldr r2, [pc, #0x7c8]
0076e734  9c 60 8d e2                                      add r6, sp, #0x9c
0076e738  00 30 a0 e3                                      mov r3, #0
0076e73c  02 10 95 e7                                      ldr r1, [r5, r2]
0076e740  06 00 a0 e1                                      mov r0, r6
0076e744  9d 30 cd e5                                      strb r3, [sp, #0x9d]
0076e748  9c 30 cd e5                                      strb r3, [sp, #0x9c]
0076e74c  d3 a2 00 eb                                      bl #0x7972a0
0076e750  0a 00 a0 e1                                      mov r0, sl
0076e754  08 10 a0 e1                                      mov r1, r8
0076e758  06 20 a0 e1                                      mov r2, r6
0076e75c  fc e8 ff eb                                      bl #0x768b54
0076e760  06 00 a0 e1                                      mov r0, r6
0076e764  6e a2 00 eb                                      bl #0x797124
0076e768  74 32 dd e5                                      ldrb r3, [sp, #0x274]
0076e76c  ff 00 53 e3                                      cmp r3, #0xff
0076e770  84 01 00 0a                                      beq #0x76ed88
0076e774  88 17 9f e5                                      ldr r1, [pc, #0x788]
0076e778  26 8e 8d e2                                      add r8, sp, #0x260
0076e77c  08 00 a0 e1                                      mov r0, r8
0076e780  01 10 8f e0                                      add r1, pc, r1
0076e784  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e788  bb 94 f2 eb                                      bl #0x413a7c
0076e78c  74 27 9f e5                                      ldr r2, [pc, #0x774]
0076e790  90 60 8d e2                                      add r6, sp, #0x90
0076e794  00 30 a0 e3                                      mov r3, #0
0076e798  02 10 95 e7                                      ldr r1, [r5, r2]
0076e79c  06 00 a0 e1                                      mov r0, r6
0076e7a0  91 30 cd e5                                      strb r3, [sp, #0x91]
0076e7a4  90 30 cd e5                                      strb r3, [sp, #0x90]
0076e7a8  bc a2 00 eb                                      bl #0x7972a0
0076e7ac  0a 00 a0 e1                                      mov r0, sl
0076e7b0  08 10 a0 e1                                      mov r1, r8
0076e7b4  06 20 a0 e1                                      mov r2, r6
0076e7b8  e5 e8 ff eb                                      bl #0x768b54
0076e7bc  06 00 a0 e1                                      mov r0, r6
0076e7c0  57 a2 00 eb                                      bl #0x797124
0076e7c4  60 32 dd e5                                      ldrb r3, [sp, #0x260]
0076e7c8  ff 00 53 e3                                      cmp r3, #0xff
0076e7cc  71 01 00 0a                                      beq #0x76ed98
0076e7d0  34 17 9f e5                                      ldr r1, [pc, #0x734]
0076e7d4  93 8f 8d e2                                      add r8, sp, #0x24c
0076e7d8  08 00 a0 e1                                      mov r0, r8
0076e7dc  01 10 8f e0                                      add r1, pc, r1
0076e7e0  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e7e4  a4 94 f2 eb                                      bl #0x413a7c
0076e7e8  04 00 a0 e1                                      mov r0, r4
0076e7ec  a7 c7 00 eb                                      bl #0x7a0690
0076e7f0  00 20 a0 e3                                      mov r2, #0
0076e7f4  84 20 cd e5                                      strb r2, [sp, #0x84]
0076e7f8  00 00 50 e3                                      cmp r0, #0
0076e7fc  05 20 a0 e3                                      mov r2, #5
0076e800  85 20 cd e5                                      strb r2, [sp, #0x85]
0076e804  88 00 8d e5                                      str r0, [sp, #0x88]
0076e808  00 00 00 0a                                      beq #0x76e810
0076e80c  14 ad ff eb                                      bl #0x759c64
0076e810  84 60 8d e2                                      add r6, sp, #0x84
0076e814  08 10 a0 e1                                      mov r1, r8
0076e818  0a 00 a0 e1                                      mov r0, sl
0076e81c  06 20 a0 e1                                      mov r2, r6
0076e820  cb e8 ff eb                                      bl #0x768b54
0076e824  06 00 a0 e1                                      mov r0, r6
0076e828  3d a2 00 eb                                      bl #0x797124
0076e82c  4c 32 dd e5                                      ldrb r3, [sp, #0x24c]
0076e830  ff 00 53 e3                                      cmp r3, #0xff
0076e834  5b 01 00 0a                                      beq #0x76eda8
0076e838  d0 16 9f e5                                      ldr r1, [pc, #0x6d0]
0076e83c  8e 8f 8d e2                                      add r8, sp, #0x238
0076e840  08 00 a0 e1                                      mov r0, r8
0076e844  01 10 8f e0                                      add r1, pc, r1
0076e848  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e84c  8a 94 f2 eb                                      bl #0x413a7c
0076e850  04 00 a0 e1                                      mov r0, r4
0076e854  da c2 00 eb                                      bl #0x79f3c4
0076e858  00 20 a0 e3                                      mov r2, #0
0076e85c  78 20 cd e5                                      strb r2, [sp, #0x78]
0076e860  00 00 50 e3                                      cmp r0, #0
0076e864  05 20 a0 e3                                      mov r2, #5
0076e868  79 20 cd e5                                      strb r2, [sp, #0x79]
0076e86c  7c 00 8d e5                                      str r0, [sp, #0x7c]
0076e870  00 00 00 0a                                      beq #0x76e878
0076e874  fa ac ff eb                                      bl #0x759c64
0076e878  78 60 8d e2                                      add r6, sp, #0x78
0076e87c  08 10 a0 e1                                      mov r1, r8
0076e880  0a 00 a0 e1                                      mov r0, sl
0076e884  06 20 a0 e1                                      mov r2, r6
0076e888  b1 e8 ff eb                                      bl #0x768b54
0076e88c  06 00 a0 e1                                      mov r0, r6
0076e890  23 a2 00 eb                                      bl #0x797124
0076e894  38 32 dd e5                                      ldrb r3, [sp, #0x238]
0076e898  ff 00 53 e3                                      cmp r3, #0xff
0076e89c  45 01 00 0a                                      beq #0x76edb8
0076e8a0  6c 16 9f e5                                      ldr r1, [pc, #0x66c]
0076e8a4  89 8f 8d e2                                      add r8, sp, #0x224
0076e8a8  08 00 a0 e1                                      mov r0, r8
0076e8ac  01 10 8f e0                                      add r1, pc, r1
0076e8b0  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e8b4  70 94 f2 eb                                      bl #0x413a7c
0076e8b8  04 00 a0 e1                                      mov r0, r4
0076e8bc  08 b4 00 eb                                      bl #0x79b8e4
0076e8c0  00 20 a0 e3                                      mov r2, #0
0076e8c4  6c 20 cd e5                                      strb r2, [sp, #0x6c]
0076e8c8  00 00 50 e3                                      cmp r0, #0
0076e8cc  05 20 a0 e3                                      mov r2, #5
0076e8d0  6d 20 cd e5                                      strb r2, [sp, #0x6d]
0076e8d4  70 00 8d e5                                      str r0, [sp, #0x70]
0076e8d8  00 00 00 0a                                      beq #0x76e8e0
0076e8dc  e0 ac ff eb                                      bl #0x759c64
0076e8e0  6c 60 8d e2                                      add r6, sp, #0x6c
0076e8e4  08 10 a0 e1                                      mov r1, r8
0076e8e8  0a 00 a0 e1                                      mov r0, sl
0076e8ec  06 20 a0 e1                                      mov r2, r6
0076e8f0  97 e8 ff eb                                      bl #0x768b54
0076e8f4  06 00 a0 e1                                      mov r0, r6
0076e8f8  09 a2 00 eb                                      bl #0x797124
0076e8fc  24 32 dd e5                                      ldrb r3, [sp, #0x224]
0076e900  ff 00 53 e3                                      cmp r3, #0xff
0076e904  2f 01 00 0a                                      beq #0x76edc8
0076e908  08 16 9f e5                                      ldr r1, [pc, #0x608]
0076e90c  21 8e 8d e2                                      add r8, sp, #0x210
0076e910  08 00 a0 e1                                      mov r0, r8
0076e914  01 10 8f e0                                      add r1, pc, r1
0076e918  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e91c  56 94 f2 eb                                      bl #0x413a7c
0076e920  04 00 a0 e1                                      mov r0, r4
0076e924  95 be 00 eb                                      bl #0x79e380
0076e928  00 20 a0 e3                                      mov r2, #0
0076e92c  60 20 cd e5                                      strb r2, [sp, #0x60]
0076e930  00 00 50 e3                                      cmp r0, #0
0076e934  05 20 a0 e3                                      mov r2, #5
0076e938  61 20 cd e5                                      strb r2, [sp, #0x61]
0076e93c  64 00 8d e5                                      str r0, [sp, #0x64]
0076e940  00 00 00 0a                                      beq #0x76e948
0076e944  c6 ac ff eb                                      bl #0x759c64
0076e948  60 60 8d e2                                      add r6, sp, #0x60
0076e94c  08 10 a0 e1                                      mov r1, r8
0076e950  0a 00 a0 e1                                      mov r0, sl
0076e954  06 20 a0 e1                                      mov r2, r6
0076e958  7d e8 ff eb                                      bl #0x768b54
0076e95c  06 00 a0 e1                                      mov r0, r6
0076e960  ef a1 00 eb                                      bl #0x797124
0076e964  10 32 dd e5                                      ldrb r3, [sp, #0x210]
0076e968  ff 00 53 e3                                      cmp r3, #0xff
0076e96c  19 01 00 0a                                      beq #0x76edd8
0076e970  a4 15 9f e5                                      ldr r1, [pc, #0x5a4]
0076e974  7f 8f 8d e2                                      add r8, sp, #0x1fc
0076e978  08 00 a0 e1                                      mov r0, r8
0076e97c  01 10 8f e0                                      add r1, pc, r1
0076e980  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e984  3c 94 f2 eb                                      bl #0x413a7c
0076e988  90 25 9f e5                                      ldr r2, [pc, #0x590]
0076e98c  54 60 8d e2                                      add r6, sp, #0x54
0076e990  00 30 a0 e3                                      mov r3, #0
0076e994  02 10 95 e7                                      ldr r1, [r5, r2]
0076e998  06 00 a0 e1                                      mov r0, r6
0076e99c  55 30 cd e5                                      strb r3, [sp, #0x55]
0076e9a0  54 30 cd e5                                      strb r3, [sp, #0x54]
0076e9a4  3d a2 00 eb                                      bl #0x7972a0
0076e9a8  0a 00 a0 e1                                      mov r0, sl
0076e9ac  08 10 a0 e1                                      mov r1, r8
0076e9b0  06 20 a0 e1                                      mov r2, r6
0076e9b4  66 e8 ff eb                                      bl #0x768b54
0076e9b8  06 00 a0 e1                                      mov r0, r6
0076e9bc  d8 a1 00 eb                                      bl #0x797124
0076e9c0  fc 31 dd e5                                      ldrb r3, [sp, #0x1fc]
0076e9c4  ff 00 53 e3                                      cmp r3, #0xff
0076e9c8  06 01 00 0a                                      beq #0x76ede8
0076e9cc  50 15 9f e5                                      ldr r1, [pc, #0x550]
0076e9d0  7a 8f 8d e2                                      add r8, sp, #0x1e8
0076e9d4  08 00 a0 e1                                      mov r0, r8
0076e9d8  01 10 8f e0                                      add r1, pc, r1
0076e9dc  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076e9e0  25 94 f2 eb                                      bl #0x413a7c
0076e9e4  3c 25 9f e5                                      ldr r2, [pc, #0x53c]
0076e9e8  48 60 8d e2                                      add r6, sp, #0x48
0076e9ec  00 30 a0 e3                                      mov r3, #0
0076e9f0  02 10 95 e7                                      ldr r1, [r5, r2]
0076e9f4  06 00 a0 e1                                      mov r0, r6
0076e9f8  49 30 cd e5                                      strb r3, [sp, #0x49]
0076e9fc  48 30 cd e5                                      strb r3, [sp, #0x48]
0076ea00  26 a2 00 eb                                      bl #0x7972a0
0076ea04  0a 00 a0 e1                                      mov r0, sl
0076ea08  08 10 a0 e1                                      mov r1, r8
0076ea0c  06 20 a0 e1                                      mov r2, r6
0076ea10  4f e8 ff eb                                      bl #0x768b54
0076ea14  06 00 a0 e1                                      mov r0, r6
0076ea18  c1 a1 00 eb                                      bl #0x797124
0076ea1c  e8 31 dd e5                                      ldrb r3, [sp, #0x1e8]
0076ea20  ff 00 53 e3                                      cmp r3, #0xff
0076ea24  f3 00 00 0a                                      beq #0x76edf8
0076ea28  fc 14 9f e5                                      ldr r1, [pc, #0x4fc]
0076ea2c  75 8f 8d e2                                      add r8, sp, #0x1d4
0076ea30  08 00 a0 e1                                      mov r0, r8
0076ea34  01 10 8f e0                                      add r1, pc, r1
0076ea38  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076ea3c  0e 94 f2 eb                                      bl #0x413a7c
0076ea40  e8 24 9f e5                                      ldr r2, [pc, #0x4e8]
0076ea44  3c 60 8d e2                                      add r6, sp, #0x3c
0076ea48  00 30 a0 e3                                      mov r3, #0
0076ea4c  02 10 95 e7                                      ldr r1, [r5, r2]
0076ea50  06 00 a0 e1                                      mov r0, r6
0076ea54  3d 30 cd e5                                      strb r3, [sp, #0x3d]
0076ea58  3c 30 cd e5                                      strb r3, [sp, #0x3c]
0076ea5c  0f a2 00 eb                                      bl #0x7972a0
0076ea60  0a 00 a0 e1                                      mov r0, sl
0076ea64  08 10 a0 e1                                      mov r1, r8
0076ea68  06 20 a0 e1                                      mov r2, r6
0076ea6c  38 e8 ff eb                                      bl #0x768b54
0076ea70  06 00 a0 e1                                      mov r0, r6
0076ea74  aa a1 00 eb                                      bl #0x797124
0076ea78  d4 31 dd e5                                      ldrb r3, [sp, #0x1d4]
0076ea7c  ff 00 53 e3                                      cmp r3, #0xff
0076ea80  e0 00 00 0a                                      beq #0x76ee08
0076ea84  a8 14 9f e5                                      ldr r1, [pc, #0x4a8]
0076ea88  07 8d 8d e2                                      add r8, sp, #0x1c0
0076ea8c  08 00 a0 e1                                      mov r0, r8
0076ea90  01 10 8f e0                                      add r1, pc, r1
0076ea94  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076ea98  f7 93 f2 eb                                      bl #0x413a7c
0076ea9c  94 24 9f e5                                      ldr r2, [pc, #0x494]
0076eaa0  30 60 8d e2                                      add r6, sp, #0x30
0076eaa4  00 30 a0 e3                                      mov r3, #0
0076eaa8  02 10 95 e7                                      ldr r1, [r5, r2]
0076eaac  06 00 a0 e1                                      mov r0, r6
0076eab0  31 30 cd e5                                      strb r3, [sp, #0x31]
0076eab4  30 30 cd e5                                      strb r3, [sp, #0x30]
0076eab8  f8 a1 00 eb                                      bl #0x7972a0
0076eabc  0a 00 a0 e1                                      mov r0, sl
0076eac0  08 10 a0 e1                                      mov r1, r8
0076eac4  06 20 a0 e1                                      mov r2, r6
0076eac8  21 e8 ff eb                                      bl #0x768b54
0076eacc  06 00 a0 e1                                      mov r0, r6
0076ead0  93 a1 00 eb                                      bl #0x797124
0076ead4  c0 31 dd e5                                      ldrb r3, [sp, #0x1c0]
0076ead8  ff 00 53 e3                                      cmp r3, #0xff
0076eadc  cd 00 00 0a                                      beq #0x76ee18
0076eae0  54 14 9f e5                                      ldr r1, [pc, #0x454]
0076eae4  6b 8f 8d e2                                      add r8, sp, #0x1ac
0076eae8  08 00 a0 e1                                      mov r0, r8
0076eaec  01 10 8f e0                                      add r1, pc, r1
0076eaf0  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076eaf4  e0 93 f2 eb                                      bl #0x413a7c
0076eaf8  40 24 9f e5                                      ldr r2, [pc, #0x440]
0076eafc  24 60 8d e2                                      add r6, sp, #0x24
0076eb00  00 30 a0 e3                                      mov r3, #0
0076eb04  02 10 95 e7                                      ldr r1, [r5, r2]
0076eb08  06 00 a0 e1                                      mov r0, r6
0076eb0c  25 30 cd e5                                      strb r3, [sp, #0x25]
0076eb10  24 30 cd e5                                      strb r3, [sp, #0x24]
0076eb14  e1 a1 00 eb                                      bl #0x7972a0
0076eb18  0a 00 a0 e1                                      mov r0, sl
0076eb1c  08 10 a0 e1                                      mov r1, r8
0076eb20  06 20 a0 e1                                      mov r2, r6
0076eb24  0a e8 ff eb                                      bl #0x768b54
0076eb28  06 00 a0 e1                                      mov r0, r6
0076eb2c  7c a1 00 eb                                      bl #0x797124
0076eb30  ac 31 dd e5                                      ldrb r3, [sp, #0x1ac]
0076eb34  ff 00 53 e3                                      cmp r3, #0xff
0076eb38  ba 00 00 0a                                      beq #0x76ee28
0076eb3c  00 14 9f e5                                      ldr r1, [pc, #0x400]
0076eb40  66 8f 8d e2                                      add r8, sp, #0x198
0076eb44  08 00 a0 e1                                      mov r0, r8
0076eb48  01 10 8f e0                                      add r1, pc, r1
0076eb4c  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076eb50  c9 93 f2 eb                                      bl #0x413a7c
0076eb54  ec 23 9f e5                                      ldr r2, [pc, #0x3ec]
0076eb58  18 60 8d e2                                      add r6, sp, #0x18
0076eb5c  00 30 a0 e3                                      mov r3, #0
0076eb60  02 10 95 e7                                      ldr r1, [r5, r2]
0076eb64  06 00 a0 e1                                      mov r0, r6
0076eb68  19 30 cd e5                                      strb r3, [sp, #0x19]
0076eb6c  18 30 cd e5                                      strb r3, [sp, #0x18]
0076eb70  ca a1 00 eb                                      bl #0x7972a0
0076eb74  0a 00 a0 e1                                      mov r0, sl
0076eb78  08 10 a0 e1                                      mov r1, r8
0076eb7c  06 20 a0 e1                                      mov r2, r6
0076eb80  f3 e7 ff eb                                      bl #0x768b54
0076eb84  06 00 a0 e1                                      mov r0, r6
0076eb88  65 a1 00 eb                                      bl #0x797124
0076eb8c  98 31 dd e5                                      ldrb r3, [sp, #0x198]
0076eb90  ff 00 53 e3                                      cmp r3, #0xff
0076eb94  a7 00 00 0a                                      beq #0x76ee38
0076eb98  ac 13 9f e5                                      ldr r1, [pc, #0x3ac]
0076eb9c  17 8e 8d e2                                      add r8, sp, #0x170
0076eba0  08 00 a0 e1                                      mov r0, r8
0076eba4  01 10 8f e0                                      add r1, pc, r1
0076eba8  34 a0 94 e5                                      ldr sl, [r4, #0x34]
0076ebac  b2 93 f2 eb                                      bl #0x413a7c
0076ebb0  98 13 9f e5                                      ldr r1, [pc, #0x398]
0076ebb4  61 6f 8d e2                                      add r6, sp, #0x184
0076ebb8  06 00 a0 e1                                      mov r0, r6
0076ebbc  01 10 8f e0                                      add r1, pc, r1
0076ebc0  ad 93 f2 eb                                      bl #0x413a7c
0076ebc4  06 10 a0 e1                                      mov r1, r6
0076ebc8  2c 00 84 e2                                      add r0, r4, #0x2c
0076ebcc  be b5 ff eb                                      bl #0x75c2cc
0076ebd0  0c 60 8d e2                                      add r6, sp, #0xc
0076ebd4  00 30 a0 e3                                      mov r3, #0
0076ebd8  00 10 a0 e1                                      mov r1, r0
0076ebdc  06 00 a0 e1                                      mov r0, r6
0076ebe0  10 30 8d e5                                      str r3, [sp, #0x10]
0076ebe4  0c 30 cd e5                                      strb r3, [sp, #0xc]
0076ebe8  0d 30 cd e5                                      strb r3, [sp, #0xd]
0076ebec  b9 a1 00 eb                                      bl #0x7972d8
0076ebf0  0a 00 a0 e1                                      mov r0, sl
0076ebf4  08 10 a0 e1                                      mov r1, r8
0076ebf8  06 20 a0 e1                                      mov r2, r6
0076ebfc  d4 e7 ff eb                                      bl #0x768b54
0076ec00  06 00 a0 e1                                      mov r0, r6
0076ec04  46 a1 00 eb                                      bl #0x797124
0076ec08  84 31 dd e5                                      ldrb r3, [sp, #0x184]
0076ec0c  ff 00 53 e3                                      cmp r3, #0xff
0076ec10  8c 00 00 0a                                      beq #0x76ee48
0076ec14  70 31 dd e5                                      ldrb r3, [sp, #0x170]
0076ec18  ff 00 53 e3                                      cmp r3, #0xff
0076ec1c  8f 00 00 0a                                      beq #0x76ee60
0076ec20  2c 13 9f e5                                      ldr r1, [pc, #0x32c]
0076ec24  57 6f 8d e2                                      add r6, sp, #0x15c
0076ec28  06 00 a0 e1                                      mov r0, r6
0076ec2c  01 10 8f e0                                      add r1, pc, r1
0076ec30  34 80 94 e5                                      ldr r8, [r4, #0x34]
0076ec34  90 93 f2 eb                                      bl #0x413a7c
0076ec38  18 23 9f e5                                      ldr r2, [pc, #0x318]
0076ec3c  00 30 a0 e3                                      mov r3, #0
0076ec40  0d 00 a0 e1                                      mov r0, sp
0076ec44  02 10 95 e7                                      ldr r1, [r5, r2]
0076ec48  01 30 cd e5                                      strb r3, [sp, #1]
0076ec4c  00 30 cd e5                                      strb r3, [sp]
0076ec50  92 a1 00 eb                                      bl #0x7972a0
0076ec54  08 00 a0 e1                                      mov r0, r8
0076ec58  06 10 a0 e1                                      mov r1, r6
0076ec5c  0d 20 a0 e1                                      mov r2, sp
0076ec60  bb e7 ff eb                                      bl #0x768b54
0076ec64  0d 00 a0 e1                                      mov r0, sp
0076ec68  2d a1 00 eb                                      bl #0x797124
0076ec6c  5c 31 dd e5                                      ldrb r3, [sp, #0x15c]
0076ec70  0d 40 a0 e1                                      mov r4, sp
0076ec74  ff 00 53 e3                                      cmp r3, #0xff
0076ec78  7c 00 00 0a                                      beq #0x76ee70
0076ec7c  07 30 95 e7                                      ldr r3, [r5, r7]
0076ec80  b4 23 9d e5                                      ldr r2, [sp, #0x3b4]
0076ec84  00 30 93 e5                                      ldr r3, [r3]
0076ec88  03 00 52 e1                                      cmp r2, r3
0076ec8c  7b 00 00 1a                                      bne #0x76ee80
0076ec90  ef df 8d e2                                      add sp, sp, #0x3bc
0076ec94  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0076ec98  ac 03 9d e5                                      ldr r0, [sp, #0x3ac]
0076ec9c  a8 13 9d e5                                      ldr r1, [sp, #0x3a8]
0076eca0  a4 8f ff eb                                      bl #0x752b38
0076eca4  48 fd ff ea                                      b #0x76e1cc
0076eca8  98 03 9d e5                                      ldr r0, [sp, #0x398]
0076ecac  94 13 9d e5                                      ldr r1, [sp, #0x394]
0076ecb0  a0 8f ff eb                                      bl #0x752b38
0076ecb4  5c fd ff ea                                      b #0x76e22c
0076ecb8  84 03 9d e5                                      ldr r0, [sp, #0x384]
0076ecbc  80 13 9d e5                                      ldr r1, [sp, #0x380]
0076ecc0  9c 8f ff eb                                      bl #0x752b38
0076ecc4  70 fd ff ea                                      b #0x76e28c
0076ecc8  70 03 9d e5                                      ldr r0, [sp, #0x370]
0076eccc  6c 13 9d e5                                      ldr r1, [sp, #0x36c]
0076ecd0  98 8f ff eb                                      bl #0x752b38
0076ecd4  87 fd ff ea                                      b #0x76e2f8
0076ecd8  5c 03 9d e5                                      ldr r0, [sp, #0x35c]
0076ecdc  58 13 9d e5                                      ldr r1, [sp, #0x358]
0076ece0  94 8f ff eb                                      bl #0x752b38
0076ece4  9b fd ff ea                                      b #0x76e358
0076ece8  48 03 9d e5                                      ldr r0, [sp, #0x348]
0076ecec  44 13 9d e5                                      ldr r1, [sp, #0x344]
0076ecf0  90 8f ff eb                                      bl #0x752b38
0076ecf4  af fd ff ea                                      b #0x76e3b8
0076ecf8  34 03 9d e5                                      ldr r0, [sp, #0x334]
0076ecfc  30 13 9d e5                                      ldr r1, [sp, #0x330]
0076ed00  8c 8f ff eb                                      bl #0x752b38
0076ed04  c3 fd ff ea                                      b #0x76e418
0076ed08  20 03 9d e5                                      ldr r0, [sp, #0x320]
0076ed0c  1c 13 9d e5                                      ldr r1, [sp, #0x31c]
0076ed10  88 8f ff eb                                      bl #0x752b38
0076ed14  d7 fd ff ea                                      b #0x76e478
0076ed18  0c 03 9d e5                                      ldr r0, [sp, #0x30c]
0076ed1c  08 13 9d e5                                      ldr r1, [sp, #0x308]
0076ed20  84 8f ff eb                                      bl #0x752b38
0076ed24  eb fd ff ea                                      b #0x76e4d8
0076ed28  f8 02 9d e5                                      ldr r0, [sp, #0x2f8]
0076ed2c  f4 12 9d e5                                      ldr r1, [sp, #0x2f4]
0076ed30  80 8f ff eb                                      bl #0x752b38
0076ed34  ff fd ff ea                                      b #0x76e538
0076ed38  e4 02 9d e5                                      ldr r0, [sp, #0x2e4]
0076ed3c  e0 12 9d e5                                      ldr r1, [sp, #0x2e0]
0076ed40  7c 8f ff eb                                      bl #0x752b38
0076ed44  13 fe ff ea                                      b #0x76e598
0076ed48  d0 02 9d e5                                      ldr r0, [sp, #0x2d0]
0076ed4c  cc 12 9d e5                                      ldr r1, [sp, #0x2cc]
0076ed50  78 8f ff eb                                      bl #0x752b38
0076ed54  27 fe ff ea                                      b #0x76e5f8
0076ed58  bc 02 9d e5                                      ldr r0, [sp, #0x2bc]
0076ed5c  b8 12 9d e5                                      ldr r1, [sp, #0x2b8]
0076ed60  74 8f ff eb                                      bl #0x752b38
0076ed64  3a fe ff ea                                      b #0x76e654
0076ed68  a8 02 9d e5                                      ldr r0, [sp, #0x2a8]
0076ed6c  a4 12 9d e5                                      ldr r1, [sp, #0x2a4]
0076ed70  70 8f ff eb                                      bl #0x752b38
0076ed74  50 fe ff ea                                      b #0x76e6bc
0076ed78  94 02 9d e5                                      ldr r0, [sp, #0x294]
0076ed7c  90 12 9d e5                                      ldr r1, [sp, #0x290]
0076ed80  6c 8f ff eb                                      bl #0x752b38
0076ed84  63 fe ff ea                                      b #0x76e718
0076ed88  80 02 9d e5                                      ldr r0, [sp, #0x280]
0076ed8c  7c 12 9d e5                                      ldr r1, [sp, #0x27c]
0076ed90  68 8f ff eb                                      bl #0x752b38
0076ed94  76 fe ff ea                                      b #0x76e774
0076ed98  6c 02 9d e5                                      ldr r0, [sp, #0x26c]
0076ed9c  68 12 9d e5                                      ldr r1, [sp, #0x268]
0076eda0  64 8f ff eb                                      bl #0x752b38
0076eda4  89 fe ff ea                                      b #0x76e7d0
0076eda8  58 02 9d e5                                      ldr r0, [sp, #0x258]
0076edac  54 12 9d e5                                      ldr r1, [sp, #0x254]
0076edb0  60 8f ff eb                                      bl #0x752b38
0076edb4  9f fe ff ea                                      b #0x76e838
0076edb8  44 02 9d e5                                      ldr r0, [sp, #0x244]
0076edbc  40 12 9d e5                                      ldr r1, [sp, #0x240]
0076edc0  5c 8f ff eb                                      bl #0x752b38
0076edc4  b5 fe ff ea                                      b #0x76e8a0
0076edc8  30 02 9d e5                                      ldr r0, [sp, #0x230]
0076edcc  2c 12 9d e5                                      ldr r1, [sp, #0x22c]
0076edd0  58 8f ff eb                                      bl #0x752b38
0076edd4  cb fe ff ea                                      b #0x76e908
0076edd8  1c 02 9d e5                                      ldr r0, [sp, #0x21c]
0076eddc  18 12 9d e5                                      ldr r1, [sp, #0x218]
0076ede0  54 8f ff eb                                      bl #0x752b38
0076ede4  e1 fe ff ea                                      b #0x76e970
0076ede8  08 02 9d e5                                      ldr r0, [sp, #0x208]
0076edec  04 12 9d e5                                      ldr r1, [sp, #0x204]
0076edf0  50 8f ff eb                                      bl #0x752b38
0076edf4  f4 fe ff ea                                      b #0x76e9cc
0076edf8  f4 01 9d e5                                      ldr r0, [sp, #0x1f4]
0076edfc  f0 11 9d e5                                      ldr r1, [sp, #0x1f0]
0076ee00  4c 8f ff eb                                      bl #0x752b38
0076ee04  07 ff ff ea                                      b #0x76ea28
0076ee08  e0 01 9d e5                                      ldr r0, [sp, #0x1e0]
0076ee0c  dc 11 9d e5                                      ldr r1, [sp, #0x1dc]
0076ee10  48 8f ff eb                                      bl #0x752b38
0076ee14  1a ff ff ea                                      b #0x76ea84
0076ee18  cc 01 9d e5                                      ldr r0, [sp, #0x1cc]
0076ee1c  c8 11 9d e5                                      ldr r1, [sp, #0x1c8]
0076ee20  44 8f ff eb                                      bl #0x752b38
0076ee24  2d ff ff ea                                      b #0x76eae0
0076ee28  b8 01 9d e5                                      ldr r0, [sp, #0x1b8]
0076ee2c  b4 11 9d e5                                      ldr r1, [sp, #0x1b4]
0076ee30  40 8f ff eb                                      bl #0x752b38
0076ee34  40 ff ff ea                                      b #0x76eb3c
0076ee38  a4 01 9d e5                                      ldr r0, [sp, #0x1a4]
0076ee3c  a0 11 9d e5                                      ldr r1, [sp, #0x1a0]
0076ee40  3c 8f ff eb                                      bl #0x752b38
0076ee44  53 ff ff ea                                      b #0x76eb98
0076ee48  90 01 9d e5                                      ldr r0, [sp, #0x190]
0076ee4c  8c 11 9d e5                                      ldr r1, [sp, #0x18c]
0076ee50  38 8f ff eb                                      bl #0x752b38
0076ee54  70 31 dd e5                                      ldrb r3, [sp, #0x170]
0076ee58  ff 00 53 e3                                      cmp r3, #0xff
0076ee5c  6f ff ff 1a                                      bne #0x76ec20
0076ee60  7c 01 9d e5                                      ldr r0, [sp, #0x17c]
0076ee64  78 11 9d e5                                      ldr r1, [sp, #0x178]
0076ee68  32 8f ff eb                                      bl #0x752b38
0076ee6c  6b ff ff ea                                      b #0x76ec20
0076ee70  68 01 9d e5                                      ldr r0, [sp, #0x168]
0076ee74  64 11 9d e5                                      ldr r1, [sp, #0x164]
0076ee78  2e 8f ff eb                                      bl #0x752b38
0076ee7c  7e ff ff ea                                      b #0x76ec7c
0076ee80  22 7d ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0076ee84  7c 69 22 00 ac 40 00 00 f8 af 19 00 5c 2d 00 00  .byte 0x7c, 0x69, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0xaf, 0x19, 0x00, 0x5c, 0x2d, 0x00, 0x00
0076ee94  08 cc 16 00 94 30 00 00 80 ca 16 00 04 49 00 00  .byte 0x08, 0xcc, 0x16, 0x00, 0x94, 0x30, 0x00, 0x00, 0x80, 0xca, 0x16, 0x00, 0x04, 0x49, 0x00, 0x00
0076eea4  e0 ae 19 00 7c ae 19 00 e0 45 00 00 2c ae 19 00  .byte 0xe0, 0xae, 0x19, 0x00, 0x7c, 0xae, 0x19, 0x00, 0xe0, 0x45, 0x00, 0x00, 0x2c, 0xae, 0x19, 0x00
0076eeb4  98 3a 00 00 dc ad 19 00 f8 47 00 00 8c ad 19 00  .byte 0x98, 0x3a, 0x00, 0x00, 0xdc, 0xad, 0x19, 0x00, 0xf8, 0x47, 0x00, 0x00, 0x8c, 0xad, 0x19, 0x00
0076eec4  08 0a 00 00 3c ad 19 00 dc 20 00 00 e4 ac 19 00  .byte 0x08, 0x0a, 0x00, 0x00, 0x3c, 0xad, 0x19, 0x00, 0xdc, 0x20, 0x00, 0x00, 0xe4, 0xac, 0x19, 0x00
0076eed4  e0 0d 00 00 8c ac 19 00 a0 3b 00 00 14 48 17 00  .byte 0xe0, 0x0d, 0x00, 0x00, 0x8c, 0xac, 0x19, 0x00, 0xa0, 0x3b, 0x00, 0x00, 0x14, 0x48, 0x17, 0x00
0076eee4  54 36 00 00 d4 ab 19 00 64 1c 00 00 80 ab 19 00  .byte 0x54, 0x36, 0x00, 0x00, 0xd4, 0xab, 0x19, 0x00, 0x64, 0x1c, 0x00, 0x00, 0x80, 0xab, 0x19, 0x00
0076eef4  28 ab 19 00 20 17 00 00 dc aa 19 00 b4 0c 00 00  .byte 0x28, 0xab, 0x19, 0x00, 0x20, 0x17, 0x00, 0x00, 0xdc, 0xaa, 0x19, 0x00, 0xb4, 0x0c, 0x00, 0x00
0076ef04  90 aa 19 00 00 09 00 00 44 aa 19 00 f4 a8 19 00  .byte 0x90, 0xaa, 0x19, 0x00, 0x00, 0x09, 0x00, 0x00, 0x44, 0xaa, 0x19, 0x00, 0xf4, 0xa8, 0x19, 0x00
0076ef14  7c a9 19 00 04 a7 19 00 bc a8 19 00 d0 20 00 00  .byte 0x7c, 0xa9, 0x19, 0x00, 0x04, 0xa7, 0x19, 0x00, 0xbc, 0xa8, 0x19, 0x00, 0xd0, 0x20, 0x00, 0x00
0076ef24  70 a8 19 00 34 24 00 00 24 a8 19 00 98 12 00 00  .byte 0x70, 0xa8, 0x19, 0x00, 0x34, 0x24, 0x00, 0x00, 0x24, 0xa8, 0x19, 0x00, 0x98, 0x12, 0x00, 0x00
0076ef34  d8 a7 19 00 40 4a 00 00 8c a7 19 00 90 36 00 00  .byte 0xd8, 0xa7, 0x19, 0x00, 0x40, 0x4a, 0x00, 0x00, 0x8c, 0xa7, 0x19, 0x00, 0x90, 0x36, 0x00, 0x00
0076ef44  40 a7 19 00 5c 38 00 00 74 a1 19 00 d4 a6 19 00  .byte 0x40, 0xa7, 0x19, 0x00, 0x5c, 0x38, 0x00, 0x00, 0x74, 0xa1, 0x19, 0x00, 0xd4, 0xa6, 0x19, 0x00
0076ef54  6c a6 19 00 dc 3e 00 00                          .byte 0x6c, 0xa6, 0x19, 0x00, 0xdc, 0x3e, 0x00, 0x00

; FUNCTION 0x0076f180, declared_size=544, range_size=544, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6playerC1EPNS_14player_contextE
; demangled: gameswf::player::player(gameswf::player_context*)
; decoder-mode: arm
0076f180  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076f184  08 62 9f e5                                      ldr r6, [pc, #0x208]
0076f188  00 40 a0 e1                                      mov r4, r0
0076f18c  01 70 a0 e1                                      mov r7, r1
0076f190  9b aa ff eb                                      bl #0x759c04
0076f194  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0076f198  60 10 94 e5                                      ldr r1, [r4, #0x60]
0076f19c  78 20 94 e5                                      ldr r2, [r4, #0x78]
0076f1a0  06 60 8f e0                                      add r6, pc, r6
0076f1a4  03 30 96 e7                                      ldr r3, [r6, r3]
0076f1a8  00 00 e0 e3                                      mvn r0, #0
0076f1ac  10 20 d7 e7                                      bfi r2, r0, #0, #0x18
0076f1b0  10 10 d7 e7                                      bfi r1, r0, #0, #0x18
0076f1b4  00 50 a0 e3                                      mov r5, #0
0076f1b8  22 0c a0 e1                                      lsr r0, r2, #0x18
0076f1bc  21 cc a0 e1                                      lsr ip, r1, #0x18
0076f1c0  08 e0 83 e2                                      add lr, r3, #8
0076f1c4  15 c0 c0 e7                                      bfi ip, r5, #0, #1
0076f1c8  01 30 a0 e3                                      mov r3, #1
0076f1cc  15 00 c0 e7                                      bfi r0, r5, #0, #1
0076f1d0  78 20 84 e5                                      str r2, [r4, #0x78]
0076f1d4  00 e0 84 e5                                      str lr, [r4]
0076f1d8  50 30 c4 e5                                      strb r3, [r4, #0x50]
0076f1dc  68 30 c4 e5                                      strb r3, [r4, #0x68]
0076f1e0  60 10 84 e5                                      str r1, [r4, #0x60]
0076f1e4  7b 00 c4 e5                                      strb r0, [r4, #0x7b]
0076f1e8  63 c0 c4 e5                                      strb ip, [r4, #0x63]
0076f1ec  05 10 a0 e1                                      mov r1, r5
0076f1f0  0c 50 84 e5                                      str r5, [r4, #0xc]
0076f1f4  10 50 84 e5                                      str r5, [r4, #0x10]
0076f1f8  14 50 84 e5                                      str r5, [r4, #0x14]
0076f1fc  18 50 c4 e5                                      strb r5, [r4, #0x18]
0076f200  1c 50 84 e5                                      str r5, [r4, #0x1c]
0076f204  20 50 84 e5                                      str r5, [r4, #0x20]
0076f208  24 50 84 e5                                      str r5, [r4, #0x24]
0076f20c  28 50 c4 e5                                      strb r5, [r4, #0x28]
0076f210  2c 50 84 e5                                      str r5, [r4, #0x2c]
0076f214  34 50 84 e5                                      str r5, [r4, #0x34]
0076f218  38 50 84 e5                                      str r5, [r4, #0x38]
0076f21c  48 50 84 e5                                      str r5, [r4, #0x48]
0076f220  4c 50 84 e5                                      str r5, [r4, #0x4c]
0076f224  51 50 c4 e5                                      strb r5, [r4, #0x51]
0076f228  64 50 84 e5                                      str r5, [r4, #0x64]
0076f22c  69 50 c4 e5                                      strb r5, [r4, #0x69]
0076f230  7c 50 c4 e5                                      strb r5, [r4, #0x7c]
0076f234  7d 50 c4 e5                                      strb r5, [r4, #0x7d]
0076f238  88 50 c4 e5                                      strb r5, [r4, #0x88]
0076f23c  89 50 c4 e5                                      strb r5, [r4, #0x89]
0076f240  9c 50 84 e5                                      str r5, [r4, #0x9c]
0076f244  a0 50 84 e5                                      str r5, [r4, #0xa0]
0076f248  a4 50 84 e5                                      str r5, [r4, #0xa4]
0076f24c  38 00 a0 e3                                      mov r0, #0x38
0076f250  a8 50 c4 e5                                      strb r5, [r4, #0xa8]
0076f254  30 30 84 e5                                      str r3, [r4, #0x30]
0076f258  ac 70 84 e5                                      str r7, [r4, #0xac]
0076f25c  b0 50 84 e5                                      str r5, [r4, #0xb0]
0076f260  b4 50 84 e5                                      str r5, [r4, #0xb4]
0076f264  b8 50 84 e5                                      str r5, [r4, #0xb8]
0076f268  bc 50 c4 e5                                      strb r5, [r4, #0xbc]
0076f26c  c0 50 84 e5                                      str r5, [r4, #0xc0]
0076f270  c4 50 84 e5                                      str r5, [r4, #0xc4]
0076f274  c8 50 84 e5                                      str r5, [r4, #0xc8]
0076f278  cc 50 c4 e5                                      strb r5, [r4, #0xcc]
0076f27c  d0 50 84 e5                                      str r5, [r4, #0xd0]
0076f280  d4 50 84 e5                                      str r5, [r4, #0xd4]
0076f284  d8 50 84 e5                                      str r5, [r4, #0xd8]
0076f288  dc 50 c4 e5                                      strb r5, [r4, #0xdc]
0076f28c  45 8e ff eb                                      bl #0x752ba8
0076f290  00 70 a0 e1                                      mov r7, r0
0076f294  04 10 a0 e1                                      mov r1, r4
0076f298  60 f1 ff eb                                      bl #0x76b820
0076f29c  07 10 a0 e1                                      mov r1, r7
0076f2a0  34 00 84 e2                                      add r0, r4, #0x34
0076f2a4  87 e6 ff eb                                      bl #0x768cc8
0076f2a8  05 10 a0 e1                                      mov r1, r5
0076f2ac  38 00 a0 e3                                      mov r0, #0x38
0076f2b0  3c 8e ff eb                                      bl #0x752ba8
0076f2b4  04 10 a0 e1                                      mov r1, r4
0076f2b8  00 70 a0 e1                                      mov r7, r0
0076f2bc  55 ff ff eb                                      bl #0x76f018
0076f2c0  07 10 a0 e1                                      mov r1, r7
0076f2c4  38 00 84 e2                                      add r0, r4, #0x38
0076f2c8  7e e6 ff eb                                      bl #0x768cc8
0076f2cc  05 10 a0 e1                                      mov r1, r5
0076f2d0  38 00 a0 e3                                      mov r0, #0x38
0076f2d4  33 8e ff eb                                      bl #0x752ba8
0076f2d8  04 10 a0 e1                                      mov r1, r4
0076f2dc  00 50 a0 e1                                      mov r5, r0
0076f2e0  4e f1 ff eb                                      bl #0x76b820
0076f2e4  05 10 a0 e1                                      mov r1, r5
0076f2e8  7c 00 84 e2                                      add r0, r4, #0x7c
0076f2ec  d7 9f 00 eb                                      bl #0x797250
0076f2f0  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0076f2f4  88 00 84 e2                                      add r0, r4, #0x88
0076f2f8  03 10 96 e7                                      ldr r1, [r6, r3]
0076f2fc  e7 9f 00 eb                                      bl #0x7972a0
0076f300  04 00 a0 e1                                      mov r0, r4
0076f304  7e fb ff eb                                      bl #0x76e104
0076f308  ac 50 94 e5                                      ldr r5, [r4, #0xac]
0076f30c  18 30 95 e5                                      ldr r3, [r5, #0x18]
0076f310  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0076f314  01 60 83 e2                                      add r6, r3, #1
0076f318  02 00 56 e1                                      cmp r6, r2
0076f31c  17 00 00 ca                                      bgt #0x76f380
0076f320  14 20 95 e5                                      ldr r2, [r5, #0x14]
0076f324  03 41 82 e7                                      str r4, [r2, r3, lsl #2]
0076f328  18 60 85 e5                                      str r6, [r5, #0x18]
0076f32c  f1 21 01 eb                                      bl #0x7b7af8
0076f330  ff 80 00 e2                                      and r8, r0, #0xff
0076f334  00 90 a0 e3                                      mov sb, #0
0076f338  09 30 98 e1                                      orrs r3, r8, sb
0076f33c  0a 00 00 0a                                      beq #0x76f36c
0076f340  00 60 a0 e3                                      mov r6, #0
0076f344  00 70 a0 e3                                      mov r7, #0
0076f348  01 a0 a0 e3                                      mov sl, #1
0076f34c  00 b0 a0 e3                                      mov fp, #0
0076f350  0a 60 96 e0                                      adds r6, r6, sl
0076f354  0b 70 a7 e0                                      adc r7, r7, fp
0076f358  4e 21 01 eb                                      bl #0x7b7898
0076f35c  08 00 56 e1                                      cmp r6, r8
0076f360  fa ff ff 1a                                      bne #0x76f350
0076f364  09 00 57 e1                                      cmp r7, sb
0076f368  f8 ff ff 1a                                      bne #0x76f350
0076f36c  00 30 a0 e3                                      mov r3, #0
0076f370  98 30 c4 e5                                      strb r3, [r4, #0x98]
0076f374  94 30 84 e5                                      str r3, [r4, #0x94]
0076f378  04 00 a0 e1                                      mov r0, r4
0076f37c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076f380  14 00 85 e2                                      add r0, r5, #0x14
0076f384  c6 10 86 e0                                      add r1, r6, r6, asr #1
0076f388  9e f5 ff eb                                      bl #0x76ca08
0076f38c  18 30 95 e5                                      ldr r3, [r5, #0x18]
0076f390  e2 ff ff ea                                      b #0x76f320
; mapping-symbol data/literal pool
0076f394  f0 58 22 00 dc 06 00 00 e0 45 00 00              .byte 0xf0, 0x58, 0x22, 0x00, 0xdc, 0x06, 0x00, 0x00, 0xe0, 0x45, 0x00, 0x00

; FUNCTION 0x0076f3a0, declared_size=544, range_size=544, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6playerC2EPNS_14player_contextE
; demangled: gameswf::player::player(gameswf::player_context*)
; decoder-mode: arm
0076f3a0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076f3a4  08 62 9f e5                                      ldr r6, [pc, #0x208]
0076f3a8  00 40 a0 e1                                      mov r4, r0
0076f3ac  01 70 a0 e1                                      mov r7, r1
0076f3b0  13 aa ff eb                                      bl #0x759c04
0076f3b4  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0076f3b8  60 10 94 e5                                      ldr r1, [r4, #0x60]
0076f3bc  78 20 94 e5                                      ldr r2, [r4, #0x78]
0076f3c0  06 60 8f e0                                      add r6, pc, r6
0076f3c4  03 30 96 e7                                      ldr r3, [r6, r3]
0076f3c8  00 00 e0 e3                                      mvn r0, #0
0076f3cc  10 20 d7 e7                                      bfi r2, r0, #0, #0x18
0076f3d0  10 10 d7 e7                                      bfi r1, r0, #0, #0x18
0076f3d4  00 50 a0 e3                                      mov r5, #0
0076f3d8  22 0c a0 e1                                      lsr r0, r2, #0x18
0076f3dc  21 cc a0 e1                                      lsr ip, r1, #0x18
0076f3e0  08 e0 83 e2                                      add lr, r3, #8
0076f3e4  15 c0 c0 e7                                      bfi ip, r5, #0, #1
0076f3e8  01 30 a0 e3                                      mov r3, #1
0076f3ec  15 00 c0 e7                                      bfi r0, r5, #0, #1
0076f3f0  78 20 84 e5                                      str r2, [r4, #0x78]
0076f3f4  00 e0 84 e5                                      str lr, [r4]
0076f3f8  50 30 c4 e5                                      strb r3, [r4, #0x50]
0076f3fc  68 30 c4 e5                                      strb r3, [r4, #0x68]
0076f400  60 10 84 e5                                      str r1, [r4, #0x60]
0076f404  7b 00 c4 e5                                      strb r0, [r4, #0x7b]
0076f408  63 c0 c4 e5                                      strb ip, [r4, #0x63]
0076f40c  05 10 a0 e1                                      mov r1, r5
0076f410  0c 50 84 e5                                      str r5, [r4, #0xc]
0076f414  10 50 84 e5                                      str r5, [r4, #0x10]
0076f418  14 50 84 e5                                      str r5, [r4, #0x14]
0076f41c  18 50 c4 e5                                      strb r5, [r4, #0x18]
0076f420  1c 50 84 e5                                      str r5, [r4, #0x1c]
0076f424  20 50 84 e5                                      str r5, [r4, #0x20]
0076f428  24 50 84 e5                                      str r5, [r4, #0x24]
0076f42c  28 50 c4 e5                                      strb r5, [r4, #0x28]
0076f430  2c 50 84 e5                                      str r5, [r4, #0x2c]
0076f434  34 50 84 e5                                      str r5, [r4, #0x34]
0076f438  38 50 84 e5                                      str r5, [r4, #0x38]
0076f43c  48 50 84 e5                                      str r5, [r4, #0x48]
0076f440  4c 50 84 e5                                      str r5, [r4, #0x4c]
0076f444  51 50 c4 e5                                      strb r5, [r4, #0x51]
0076f448  64 50 84 e5                                      str r5, [r4, #0x64]
0076f44c  69 50 c4 e5                                      strb r5, [r4, #0x69]
0076f450  7c 50 c4 e5                                      strb r5, [r4, #0x7c]
0076f454  7d 50 c4 e5                                      strb r5, [r4, #0x7d]
0076f458  88 50 c4 e5                                      strb r5, [r4, #0x88]
0076f45c  89 50 c4 e5                                      strb r5, [r4, #0x89]
0076f460  9c 50 84 e5                                      str r5, [r4, #0x9c]
0076f464  a0 50 84 e5                                      str r5, [r4, #0xa0]
0076f468  a4 50 84 e5                                      str r5, [r4, #0xa4]
0076f46c  38 00 a0 e3                                      mov r0, #0x38
0076f470  a8 50 c4 e5                                      strb r5, [r4, #0xa8]
0076f474  30 30 84 e5                                      str r3, [r4, #0x30]
0076f478  ac 70 84 e5                                      str r7, [r4, #0xac]
0076f47c  b0 50 84 e5                                      str r5, [r4, #0xb0]
0076f480  b4 50 84 e5                                      str r5, [r4, #0xb4]
0076f484  b8 50 84 e5                                      str r5, [r4, #0xb8]
0076f488  bc 50 c4 e5                                      strb r5, [r4, #0xbc]
0076f48c  c0 50 84 e5                                      str r5, [r4, #0xc0]
0076f490  c4 50 84 e5                                      str r5, [r4, #0xc4]
0076f494  c8 50 84 e5                                      str r5, [r4, #0xc8]
0076f498  cc 50 c4 e5                                      strb r5, [r4, #0xcc]
0076f49c  d0 50 84 e5                                      str r5, [r4, #0xd0]
0076f4a0  d4 50 84 e5                                      str r5, [r4, #0xd4]
0076f4a4  d8 50 84 e5                                      str r5, [r4, #0xd8]
0076f4a8  dc 50 c4 e5                                      strb r5, [r4, #0xdc]
0076f4ac  bd 8d ff eb                                      bl #0x752ba8
0076f4b0  00 70 a0 e1                                      mov r7, r0
0076f4b4  04 10 a0 e1                                      mov r1, r4
0076f4b8  d8 f0 ff eb                                      bl #0x76b820
0076f4bc  07 10 a0 e1                                      mov r1, r7
0076f4c0  34 00 84 e2                                      add r0, r4, #0x34
0076f4c4  ff e5 ff eb                                      bl #0x768cc8
0076f4c8  05 10 a0 e1                                      mov r1, r5
0076f4cc  38 00 a0 e3                                      mov r0, #0x38
0076f4d0  b4 8d ff eb                                      bl #0x752ba8
0076f4d4  04 10 a0 e1                                      mov r1, r4
0076f4d8  00 70 a0 e1                                      mov r7, r0
0076f4dc  cd fe ff eb                                      bl #0x76f018
0076f4e0  07 10 a0 e1                                      mov r1, r7
0076f4e4  38 00 84 e2                                      add r0, r4, #0x38
0076f4e8  f6 e5 ff eb                                      bl #0x768cc8
0076f4ec  05 10 a0 e1                                      mov r1, r5
0076f4f0  38 00 a0 e3                                      mov r0, #0x38
0076f4f4  ab 8d ff eb                                      bl #0x752ba8
0076f4f8  04 10 a0 e1                                      mov r1, r4
0076f4fc  00 50 a0 e1                                      mov r5, r0
0076f500  c6 f0 ff eb                                      bl #0x76b820
0076f504  05 10 a0 e1                                      mov r1, r5
0076f508  7c 00 84 e2                                      add r0, r4, #0x7c
0076f50c  4f 9f 00 eb                                      bl #0x797250
0076f510  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0076f514  88 00 84 e2                                      add r0, r4, #0x88
0076f518  03 10 96 e7                                      ldr r1, [r6, r3]
0076f51c  5f 9f 00 eb                                      bl #0x7972a0
0076f520  04 00 a0 e1                                      mov r0, r4
0076f524  f6 fa ff eb                                      bl #0x76e104
0076f528  ac 50 94 e5                                      ldr r5, [r4, #0xac]
0076f52c  18 30 95 e5                                      ldr r3, [r5, #0x18]
0076f530  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0076f534  01 60 83 e2                                      add r6, r3, #1
0076f538  02 00 56 e1                                      cmp r6, r2
0076f53c  17 00 00 ca                                      bgt #0x76f5a0
0076f540  14 20 95 e5                                      ldr r2, [r5, #0x14]
0076f544  03 41 82 e7                                      str r4, [r2, r3, lsl #2]
0076f548  18 60 85 e5                                      str r6, [r5, #0x18]
0076f54c  69 21 01 eb                                      bl #0x7b7af8
0076f550  ff 80 00 e2                                      and r8, r0, #0xff
0076f554  00 90 a0 e3                                      mov sb, #0
0076f558  09 30 98 e1                                      orrs r3, r8, sb
0076f55c  0a 00 00 0a                                      beq #0x76f58c
0076f560  00 60 a0 e3                                      mov r6, #0
0076f564  00 70 a0 e3                                      mov r7, #0
0076f568  01 a0 a0 e3                                      mov sl, #1
0076f56c  00 b0 a0 e3                                      mov fp, #0
0076f570  0a 60 96 e0                                      adds r6, r6, sl
0076f574  0b 70 a7 e0                                      adc r7, r7, fp
0076f578  c6 20 01 eb                                      bl #0x7b7898
0076f57c  08 00 56 e1                                      cmp r6, r8
0076f580  fa ff ff 1a                                      bne #0x76f570
0076f584  09 00 57 e1                                      cmp r7, sb
0076f588  f8 ff ff 1a                                      bne #0x76f570
0076f58c  00 30 a0 e3                                      mov r3, #0
0076f590  98 30 c4 e5                                      strb r3, [r4, #0x98]
0076f594  94 30 84 e5                                      str r3, [r4, #0x94]
0076f598  04 00 a0 e1                                      mov r0, r4
0076f59c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076f5a0  14 00 85 e2                                      add r0, r5, #0x14
0076f5a4  c6 10 86 e0                                      add r1, r6, r6, asr #1
0076f5a8  16 f5 ff eb                                      bl #0x76ca08
0076f5ac  18 30 95 e5                                      ldr r3, [r5, #0x18]
0076f5b0  e2 ff ff ea                                      b #0x76f540
; mapping-symbol data/literal pool
0076f5b4  d0 56 22 00 dc 06 00 00 e0 45 00 00              .byte 0xd0, 0x56, 0x22, 0x00, 0xdc, 0x06, 0x00, 0x00, 0xe0, 0x45, 0x00, 0x00

; FUNCTION 0x007718b0, declared_size=332, range_size=332, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player13clear_libraryEv
; demangled: gameswf::player::clear_library()
; decoder-mode: arm
007718b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007718b4  64 30 90 e5                                      ldr r3, [r0, #0x64]
007718b8  64 50 80 e2                                      add r5, r0, #0x64
007718bc  00 00 53 e3                                      cmp r3, #0
007718c0  0e 00 00 0a                                      beq #0x771900
007718c4  04 10 93 e5                                      ldr r1, [r3, #4]
007718c8  00 00 51 e3                                      cmp r1, #0
007718cc  00 60 a0 b3                                      movlt r6, #0
007718d0  0d 00 00 aa                                      bge #0x77190c
007718d4  00 00 55 e3                                      cmp r5, #0
007718d8  08 00 00 0a                                      beq #0x771900
007718dc  10 81 9f e5                                      ldr r8, [pc, #0x110]
007718e0  10 71 9f e5                                      ldr r7, [pc, #0x110]
007718e4  08 80 8f e0                                      add r8, pc, r8
007718e8  07 70 8f e0                                      add r7, pc, r7
007718ec  00 00 53 e3                                      cmp r3, #0
007718f0  02 00 00 0a                                      beq #0x771900
007718f4  04 20 93 e5                                      ldr r2, [r3, #4]
007718f8  02 00 56 e1                                      cmp r6, r2
007718fc  10 00 00 da                                      ble #0x771944
00771900  05 00 a0 e1                                      mov r0, r5
00771904  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00771908  42 d1 ff ea                                      b #0x765e18
0077190c  08 20 a0 e3                                      mov r2, #8
00771910  00 60 a0 e3                                      mov r6, #0
00771914  02 00 93 e7                                      ldr r0, [r3, r2]
00771918  02 c0 83 e0                                      add ip, r3, r2
0077191c  20 20 82 e2                                      add r2, r2, #0x20
00771920  02 00 70 e3                                      cmn r0, #2
00771924  02 00 00 0a                                      beq #0x771934
00771928  04 00 9c e5                                      ldr r0, [ip, #4]
0077192c  01 00 70 e3                                      cmn r0, #1
00771930  e7 ff ff 1a                                      bne #0x7718d4
00771934  01 60 86 e2                                      add r6, r6, #1
00771938  01 00 56 e1                                      cmp r6, r1
0077193c  f4 ff ff da                                      ble #0x771914
00771940  e3 ff ff ea                                      b #0x7718d4
00771944  86 42 a0 e1                                      lsl r4, r6, #5
00771948  08 40 84 e2                                      add r4, r4, #8
0077194c  04 10 83 e0                                      add r1, r3, r4
00771950  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
00771954  04 10 91 e5                                      ldr r1, [r1, #4]
00771958  01 00 51 e3                                      cmp r1, #1
0077195c  10 00 00 ca                                      bgt #0x7719a4
00771960  01 60 86 e2                                      add r6, r6, #1
00771964  06 00 52 e1                                      cmp r2, r6
00771968  df ff ff ba                                      blt #0x7718ec
0077196c  86 12 a0 e1                                      lsl r1, r6, #5
00771970  08 10 81 e2                                      add r1, r1, #8
00771974  01 00 93 e7                                      ldr r0, [r3, r1]
00771978  01 c0 83 e0                                      add ip, r3, r1
0077197c  20 10 81 e2                                      add r1, r1, #0x20
00771980  02 00 70 e3                                      cmn r0, #2
00771984  02 00 00 0a                                      beq #0x771994
00771988  04 00 9c e5                                      ldr r0, [ip, #4]
0077198c  01 00 70 e3                                      cmn r0, #1
00771990  d5 ff ff 1a                                      bne #0x7718ec
00771994  01 60 86 e2                                      add r6, r6, #1
00771998  06 00 52 e1                                      cmp r2, r6
0077199c  f4 ff ff aa                                      bge #0x771974
007719a0  d1 ff ff ea                                      b #0x7718ec
007719a4  08 00 a0 e1                                      mov r0, r8
007719a8  c5 71 ee eb                                      bl #0x30e0c4
007719ac  00 30 95 e5                                      ldr r3, [r5]
007719b0  07 00 a0 e1                                      mov r0, r7
007719b4  04 30 83 e0                                      add r3, r3, r4
007719b8  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
007719bc  04 20 91 e5                                      ldr r2, [r1, #4]
007719c0  2f 71 ee eb                                      bl #0x30de84
007719c4  00 00 00 ea                                      b #0x7719cc
007719c8  1c a2 ff eb                                      bl #0x75a240
007719cc  00 30 95 e5                                      ldr r3, [r5]
007719d0  04 20 83 e0                                      add r2, r3, r4
007719d4  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
007719d8  04 20 90 e5                                      ldr r2, [r0, #4]
007719dc  01 00 52 e3                                      cmp r2, #1
007719e0  f8 ff ff ca                                      bgt #0x7719c8
007719e4  04 20 93 e5                                      ldr r2, [r3, #4]
007719e8  02 00 56 e1                                      cmp r6, r2
007719ec  c3 ff ff ca                                      bgt #0x771900
007719f0  da ff ff ea                                      b #0x771960
; mapping-symbol data/literal pool
007719f4  1c 7d 19 00 60 7d 19 00                          .byte 0x1c, 0x7d, 0x19, 0x00, 0x60, 0x7d, 0x19, 0x00

; FUNCTION 0x007719fc, declared_size=572, range_size=572, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6playerD1Ev
; demangled: gameswf::player::~player()
; decoder-mode: arm
007719fc  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
00771a00  2c 22 9f e5                                      ldr r2, [pc, #0x22c]
00771a04  70 40 2d e9                                      push {r4, r5, r6, lr}
00771a08  03 30 8f e0                                      add r3, pc, r3
00771a0c  02 20 93 e7                                      ldr r2, [r3, r2]
00771a10  00 50 a0 e1                                      mov r5, r0
00771a14  00 40 a0 e1                                      mov r4, r0
00771a18  08 20 82 e2                                      add r2, r2, #8
00771a1c  48 20 85 e4                                      str r2, [r5], #0x48
00771a20  ec eb ff eb                                      bl #0x76c9d8
00771a24  05 00 a0 e1                                      mov r0, r5
00771a28  00 10 a0 e3                                      mov r1, #0
00771a2c  13 ef ff eb                                      bl #0x76d680
00771a30  34 00 84 e2                                      add r0, r4, #0x34
00771a34  00 10 a0 e3                                      mov r1, #0
00771a38  a2 dc ff eb                                      bl #0x768cc8
00771a3c  ac 00 94 e5                                      ldr r0, [r4, #0xac]
00771a40  18 20 90 e5                                      ldr r2, [r0, #0x18]
00771a44  00 00 52 e3                                      cmp r2, #0
00771a48  0c 00 00 da                                      ble #0x771a80
00771a4c  14 c0 90 e5                                      ldr ip, [r0, #0x14]
00771a50  00 30 9c e5                                      ldr r3, [ip]
00771a54  03 00 54 e1                                      cmp r4, r3
00771a58  00 10 a0 03                                      moveq r1, #0
00771a5c  5f 00 00 0a                                      beq #0x771be0
00771a60  00 10 a0 e3                                      mov r1, #0
00771a64  02 00 00 ea                                      b #0x771a74
00771a68  01 31 9c e7                                      ldr r3, [ip, r1, lsl #2]
00771a6c  03 00 54 e1                                      cmp r4, r3
00771a70  5a 00 00 0a                                      beq #0x771be0
00771a74  01 10 81 e2                                      add r1, r1, #1
00771a78  02 00 51 e1                                      cmp r1, r2
00771a7c  f9 ff ff 1a                                      bne #0x771a68
00771a80  04 00 a0 e1                                      mov r0, r4
00771a84  51 ee ff eb                                      bl #0x76d3d0
00771a88  aa 08 00 eb                                      bl #0x773d38
00771a8c  04 00 a0 e1                                      mov r0, r4
00771a90  86 ff ff eb                                      bl #0x7718b0
00771a94  d0 50 84 e2                                      add r5, r4, #0xd0
00771a98  a6 08 00 eb                                      bl #0x773d38
00771a9c  04 00 a0 e1                                      mov r0, r4
00771aa0  4c eb ff eb                                      bl #0x76c7d8
00771aa4  05 00 a0 e1                                      mov r0, r5
00771aa8  00 10 a0 e3                                      mov r1, #0
00771aac  6e 8f ff eb                                      bl #0x75586c
00771ab0  05 00 a0 e1                                      mov r0, r5
00771ab4  00 10 a0 e3                                      mov r1, #0
00771ab8  c0 50 84 e2                                      add r5, r4, #0xc0
00771abc  37 8f ff eb                                      bl #0x7557a0
00771ac0  05 00 a0 e1                                      mov r0, r5
00771ac4  00 10 a0 e3                                      mov r1, #0
00771ac8  67 8f ff eb                                      bl #0x75586c
00771acc  05 00 a0 e1                                      mov r0, r5
00771ad0  00 10 a0 e3                                      mov r1, #0
00771ad4  b0 50 84 e2                                      add r5, r4, #0xb0
00771ad8  30 8f ff eb                                      bl #0x7557a0
00771adc  00 10 a0 e3                                      mov r1, #0
00771ae0  05 00 a0 e1                                      mov r0, r5
00771ae4  60 8f ff eb                                      bl #0x75586c
00771ae8  05 00 a0 e1                                      mov r0, r5
00771aec  00 10 a0 e3                                      mov r1, #0
00771af0  2a 8f ff eb                                      bl #0x7557a0
00771af4  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00771af8  9c 00 84 e2                                      add r0, r4, #0x9c
00771afc  00 00 53 e3                                      cmp r3, #0
00771b00  41 00 00 da                                      ble #0x771c0c
00771b04  00 30 a0 e3                                      mov r3, #0
00771b08  a0 30 84 e5                                      str r3, [r4, #0xa0]
00771b0c  50 ee ff eb                                      bl #0x76d454
00771b10  88 00 84 e2                                      add r0, r4, #0x88
00771b14  82 95 00 eb                                      bl #0x797124
00771b18  7c 00 84 e2                                      add r0, r4, #0x7c
00771b1c  80 95 00 eb                                      bl #0x797124
00771b20  d8 36 d4 e1                                      ldrsb r3, [r4, #0x68]
00771b24  01 00 73 e3                                      cmn r3, #1
00771b28  33 00 00 0a                                      beq #0x771bfc
00771b2c  64 00 84 e2                                      add r0, r4, #0x64
00771b30  b8 d0 ff eb                                      bl #0x765e18
00771b34  d0 35 d4 e1                                      ldrsb r3, [r4, #0x50]
00771b38  01 00 73 e3                                      cmn r3, #1
00771b3c  2a 00 00 0a                                      beq #0x771bec
00771b40  48 00 94 e5                                      ldr r0, [r4, #0x48]
00771b44  00 00 50 e3                                      cmp r0, #0
00771b48  04 00 00 0a                                      beq #0x771b60
00771b4c  00 10 90 e5                                      ldr r1, [r0]
00771b50  01 10 41 e2                                      sub r1, r1, #1
00771b54  00 00 51 e3                                      cmp r1, #0
00771b58  00 10 80 e5                                      str r1, [r0]
00771b5c  1d 00 00 0a                                      beq #0x771bd8
00771b60  38 00 94 e5                                      ldr r0, [r4, #0x38]
00771b64  00 00 50 e3                                      cmp r0, #0
00771b68  00 00 00 0a                                      beq #0x771b70
00771b6c  b3 a1 ff eb                                      bl #0x75a240
00771b70  34 00 94 e5                                      ldr r0, [r4, #0x34]
00771b74  00 00 50 e3                                      cmp r0, #0
00771b78  00 00 00 0a                                      beq #0x771b80
00771b7c  af a1 ff eb                                      bl #0x75a240
00771b80  2c 50 84 e2                                      add r5, r4, #0x2c
00771b84  05 00 a0 e1                                      mov r0, r5
00771b88  47 eb ff eb                                      bl #0x76c8ac
00771b8c  05 00 a0 e1                                      mov r0, r5
00771b90  1c 50 84 e2                                      add r5, r4, #0x1c
00771b94  28 a1 ff eb                                      bl #0x75a03c
00771b98  05 00 a0 e1                                      mov r0, r5
00771b9c  00 10 a0 e3                                      mov r1, #0
00771ba0  31 8f ff eb                                      bl #0x75586c
00771ba4  05 00 a0 e1                                      mov r0, r5
00771ba8  00 10 a0 e3                                      mov r1, #0
00771bac  0c 50 84 e2                                      add r5, r4, #0xc
00771bb0  fa 8e ff eb                                      bl #0x7557a0
00771bb4  05 00 a0 e1                                      mov r0, r5
00771bb8  96 ed ff eb                                      bl #0x76d218
00771bbc  05 00 a0 e1                                      mov r0, r5
00771bc0  00 10 a0 e3                                      mov r1, #0
00771bc4  48 18 f3 eb                                      bl #0x437cec
00771bc8  04 00 a0 e1                                      mov r0, r4
00771bcc  34 b0 ff eb                                      bl #0x75dca4
00771bd0  04 00 a0 e1                                      mov r0, r4
00771bd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00771bd8  d6 83 ff eb                                      bl #0x752b38
00771bdc  df ff ff ea                                      b #0x771b60
00771be0  14 00 80 e2                                      add r0, r0, #0x14
00771be4  72 ec ff eb                                      bl #0x76cdb4
00771be8  a4 ff ff ea                                      b #0x771a80
00771bec  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
00771bf0  58 10 94 e5                                      ldr r1, [r4, #0x58]
00771bf4  cf 83 ff eb                                      bl #0x752b38
00771bf8  d0 ff ff ea                                      b #0x771b40
00771bfc  74 00 94 e5                                      ldr r0, [r4, #0x74]
00771c00  70 10 94 e5                                      ldr r1, [r4, #0x70]
00771c04  cb 83 ff eb                                      bl #0x752b38
00771c08  c7 ff ff ea                                      b #0x771b2c
00771c0c  bc ff ff aa                                      bge #0x771b04
00771c10  03 21 a0 e1                                      lsl r2, r3, #2
00771c14  00 c0 a0 e3                                      mov ip, #0
00771c18  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
00771c1c  01 30 93 e2                                      adds r3, r3, #1
00771c20  02 c0 81 e7                                      str ip, [r1, r2]
00771c24  04 20 82 e2                                      add r2, r2, #4
00771c28  fa ff ff 1a                                      bne #0x771c18
00771c2c  b4 ff ff ea                                      b #0x771b04
; mapping-symbol data/literal pool
00771c30  88 30 22 00 dc 06 00 00                          .byte 0x88, 0x30, 0x22, 0x00, 0xdc, 0x06, 0x00, 0x00

; FUNCTION 0x00771c38, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6playerD0Ev
; demangled: gameswf::player::~player()
; decoder-mode: arm
00771c38  10 40 2d e9                                      push {r4, lr}
00771c3c  00 40 a0 e1                                      mov r4, r0
00771c40  6d ff ff eb                                      bl #0x7719fc
00771c44  04 00 a0 e1                                      mov r0, r4
00771c48  98 71 ee eb                                      bl #0x30e2b0
00771c4c  04 00 a0 e1                                      mov r0, r4
00771c50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00771c54, declared_size=572, range_size=572, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6playerD2Ev
; demangled: gameswf::player::~player()
; decoder-mode: arm
00771c54  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
00771c58  2c 22 9f e5                                      ldr r2, [pc, #0x22c]
00771c5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00771c60  03 30 8f e0                                      add r3, pc, r3
00771c64  02 20 93 e7                                      ldr r2, [r3, r2]
00771c68  00 50 a0 e1                                      mov r5, r0
00771c6c  00 40 a0 e1                                      mov r4, r0
00771c70  08 20 82 e2                                      add r2, r2, #8
00771c74  48 20 85 e4                                      str r2, [r5], #0x48
00771c78  56 eb ff eb                                      bl #0x76c9d8
00771c7c  05 00 a0 e1                                      mov r0, r5
00771c80  00 10 a0 e3                                      mov r1, #0
00771c84  7d ee ff eb                                      bl #0x76d680
00771c88  34 00 84 e2                                      add r0, r4, #0x34
00771c8c  00 10 a0 e3                                      mov r1, #0
00771c90  0c dc ff eb                                      bl #0x768cc8
00771c94  ac 00 94 e5                                      ldr r0, [r4, #0xac]
00771c98  18 20 90 e5                                      ldr r2, [r0, #0x18]
00771c9c  00 00 52 e3                                      cmp r2, #0
00771ca0  0c 00 00 da                                      ble #0x771cd8
00771ca4  14 c0 90 e5                                      ldr ip, [r0, #0x14]
00771ca8  00 30 9c e5                                      ldr r3, [ip]
00771cac  03 00 54 e1                                      cmp r4, r3
00771cb0  00 10 a0 03                                      moveq r1, #0
00771cb4  5f 00 00 0a                                      beq #0x771e38
00771cb8  00 10 a0 e3                                      mov r1, #0
00771cbc  02 00 00 ea                                      b #0x771ccc
00771cc0  01 31 9c e7                                      ldr r3, [ip, r1, lsl #2]
00771cc4  03 00 54 e1                                      cmp r4, r3
00771cc8  5a 00 00 0a                                      beq #0x771e38
00771ccc  01 10 81 e2                                      add r1, r1, #1
00771cd0  02 00 51 e1                                      cmp r1, r2
00771cd4  f9 ff ff 1a                                      bne #0x771cc0
00771cd8  04 00 a0 e1                                      mov r0, r4
00771cdc  bb ed ff eb                                      bl #0x76d3d0
00771ce0  14 08 00 eb                                      bl #0x773d38
00771ce4  04 00 a0 e1                                      mov r0, r4
00771ce8  f0 fe ff eb                                      bl #0x7718b0
00771cec  d0 50 84 e2                                      add r5, r4, #0xd0
00771cf0  10 08 00 eb                                      bl #0x773d38
00771cf4  04 00 a0 e1                                      mov r0, r4
00771cf8  b6 ea ff eb                                      bl #0x76c7d8
00771cfc  05 00 a0 e1                                      mov r0, r5
00771d00  00 10 a0 e3                                      mov r1, #0
00771d04  d8 8e ff eb                                      bl #0x75586c
00771d08  05 00 a0 e1                                      mov r0, r5
00771d0c  00 10 a0 e3                                      mov r1, #0
00771d10  c0 50 84 e2                                      add r5, r4, #0xc0
00771d14  a1 8e ff eb                                      bl #0x7557a0
00771d18  05 00 a0 e1                                      mov r0, r5
00771d1c  00 10 a0 e3                                      mov r1, #0
00771d20  d1 8e ff eb                                      bl #0x75586c
00771d24  05 00 a0 e1                                      mov r0, r5
00771d28  00 10 a0 e3                                      mov r1, #0
00771d2c  b0 50 84 e2                                      add r5, r4, #0xb0
00771d30  9a 8e ff eb                                      bl #0x7557a0
00771d34  00 10 a0 e3                                      mov r1, #0
00771d38  05 00 a0 e1                                      mov r0, r5
00771d3c  ca 8e ff eb                                      bl #0x75586c
00771d40  05 00 a0 e1                                      mov r0, r5
00771d44  00 10 a0 e3                                      mov r1, #0
00771d48  94 8e ff eb                                      bl #0x7557a0
00771d4c  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00771d50  9c 00 84 e2                                      add r0, r4, #0x9c
00771d54  00 00 53 e3                                      cmp r3, #0
00771d58  41 00 00 da                                      ble #0x771e64
00771d5c  00 30 a0 e3                                      mov r3, #0
00771d60  a0 30 84 e5                                      str r3, [r4, #0xa0]
00771d64  ba ed ff eb                                      bl #0x76d454
00771d68  88 00 84 e2                                      add r0, r4, #0x88
00771d6c  ec 94 00 eb                                      bl #0x797124
00771d70  7c 00 84 e2                                      add r0, r4, #0x7c
00771d74  ea 94 00 eb                                      bl #0x797124
00771d78  d8 36 d4 e1                                      ldrsb r3, [r4, #0x68]
00771d7c  01 00 73 e3                                      cmn r3, #1
00771d80  33 00 00 0a                                      beq #0x771e54
00771d84  64 00 84 e2                                      add r0, r4, #0x64
00771d88  22 d0 ff eb                                      bl #0x765e18
00771d8c  d0 35 d4 e1                                      ldrsb r3, [r4, #0x50]
00771d90  01 00 73 e3                                      cmn r3, #1
00771d94  2a 00 00 0a                                      beq #0x771e44
00771d98  48 00 94 e5                                      ldr r0, [r4, #0x48]
00771d9c  00 00 50 e3                                      cmp r0, #0
00771da0  04 00 00 0a                                      beq #0x771db8
00771da4  00 10 90 e5                                      ldr r1, [r0]
00771da8  01 10 41 e2                                      sub r1, r1, #1
00771dac  00 00 51 e3                                      cmp r1, #0
00771db0  00 10 80 e5                                      str r1, [r0]
00771db4  1d 00 00 0a                                      beq #0x771e30
00771db8  38 00 94 e5                                      ldr r0, [r4, #0x38]
00771dbc  00 00 50 e3                                      cmp r0, #0
00771dc0  00 00 00 0a                                      beq #0x771dc8
00771dc4  1d a1 ff eb                                      bl #0x75a240
00771dc8  34 00 94 e5                                      ldr r0, [r4, #0x34]
00771dcc  00 00 50 e3                                      cmp r0, #0
00771dd0  00 00 00 0a                                      beq #0x771dd8
00771dd4  19 a1 ff eb                                      bl #0x75a240
00771dd8  2c 50 84 e2                                      add r5, r4, #0x2c
00771ddc  05 00 a0 e1                                      mov r0, r5
00771de0  b1 ea ff eb                                      bl #0x76c8ac
00771de4  05 00 a0 e1                                      mov r0, r5
00771de8  1c 50 84 e2                                      add r5, r4, #0x1c
00771dec  92 a0 ff eb                                      bl #0x75a03c
00771df0  05 00 a0 e1                                      mov r0, r5
00771df4  00 10 a0 e3                                      mov r1, #0
00771df8  9b 8e ff eb                                      bl #0x75586c
00771dfc  05 00 a0 e1                                      mov r0, r5
00771e00  00 10 a0 e3                                      mov r1, #0
00771e04  0c 50 84 e2                                      add r5, r4, #0xc
00771e08  64 8e ff eb                                      bl #0x7557a0
00771e0c  05 00 a0 e1                                      mov r0, r5
00771e10  00 ed ff eb                                      bl #0x76d218
00771e14  05 00 a0 e1                                      mov r0, r5
00771e18  00 10 a0 e3                                      mov r1, #0
00771e1c  b2 17 f3 eb                                      bl #0x437cec
00771e20  04 00 a0 e1                                      mov r0, r4
00771e24  9e af ff eb                                      bl #0x75dca4
00771e28  04 00 a0 e1                                      mov r0, r4
00771e2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00771e30  40 83 ff eb                                      bl #0x752b38
00771e34  df ff ff ea                                      b #0x771db8
00771e38  14 00 80 e2                                      add r0, r0, #0x14
00771e3c  dc eb ff eb                                      bl #0x76cdb4
00771e40  a4 ff ff ea                                      b #0x771cd8
00771e44  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
00771e48  58 10 94 e5                                      ldr r1, [r4, #0x58]
00771e4c  39 83 ff eb                                      bl #0x752b38
00771e50  d0 ff ff ea                                      b #0x771d98
00771e54  74 00 94 e5                                      ldr r0, [r4, #0x74]
00771e58  70 10 94 e5                                      ldr r1, [r4, #0x70]
00771e5c  35 83 ff eb                                      bl #0x752b38
00771e60  c7 ff ff ea                                      b #0x771d84
00771e64  bc ff ff aa                                      bge #0x771d5c
00771e68  03 21 a0 e1                                      lsl r2, r3, #2
00771e6c  00 c0 a0 e3                                      mov ip, #0
00771e70  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
00771e74  01 30 93 e2                                      adds r3, r3, #1
00771e78  02 c0 81 e7                                      str ip, [r1, r2]
00771e7c  04 20 82 e2                                      add r2, r2, #4
00771e80  fa ff ff 1a                                      bne #0x771e70
00771e84  b4 ff ff ea                                      b #0x771d5c
; mapping-symbol data/literal pool
00771e88  30 2e 22 00 dc 06 00 00                          .byte 0x30, 0x2e, 0x22, 0x00, 0xdc, 0x06, 0x00, 0x00

; FUNCTION 0x00773268, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player22notify_unused_instanceEPNS_9characterE
; demangled: gameswf::player::notify_unused_instance(gameswf::character*)
; decoder-mode: arm
00773268  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077326c  50 41 9f e5                                      ldr r4, [pc, #0x150]
00773270  50 51 9f e5                                      ldr r5, [pc, #0x150]
00773274  28 d0 4d e2                                      sub sp, sp, #0x28
00773278  04 40 8f e0                                      add r4, pc, r4
0077327c  05 30 94 e7                                      ldr r3, [r4, r5]
00773280  00 60 a0 e1                                      mov r6, r0
00773284  01 00 a0 e1                                      mov r0, r1
00773288  00 30 93 e5                                      ldr r3, [r3]
0077328c  04 10 8d e5                                      str r1, [sp, #4]
00773290  24 30 8d e5                                      str r3, [sp, #0x24]
00773294  52 aa ff eb                                      bl #0x75dbe4
00773298  04 70 9d e5                                      ldr r7, [sp, #4]
0077329c  d8 19 d7 e1                                      ldrsb r1, [r7, #0x98]
007732a0  03 00 51 e3                                      cmp r1, #3
007732a4  33 00 00 0a                                      beq #0x773378
007732a8  20 00 51 e3                                      cmp r1, #0x20
007732ac  1b 00 00 0a                                      beq #0x773320
007732b0  02 00 51 e3                                      cmp r1, #2
007732b4  06 00 00 0a                                      beq #0x7732d4
007732b8  05 30 94 e7                                      ldr r3, [r4, r5]
007732bc  24 20 9d e5                                      ldr r2, [sp, #0x24]
007732c0  00 30 93 e5                                      ldr r3, [r3]
007732c4  03 00 52 e1                                      cmp r2, r3
007732c8  3c 00 00 1a                                      bne #0x7733c0
007732cc  28 d0 8d e2                                      add sp, sp, #0x28
007732d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007732d4  b0 00 86 e2                                      add r0, r6, #0xb0
007732d8  04 10 8d e2                                      add r1, sp, #4
007732dc  4e 89 ff eb                                      bl #0x75581c
007732e0  04 00 9d e5                                      ldr r0, [sp, #4]
007732e4  0c 60 8d e2                                      add r6, sp, #0xc
007732e8  0c 00 80 e2                                      add r0, r0, #0xc
007732ec  94 d9 ff eb                                      bl #0x769944
007732f0  04 30 9d e5                                      ldr r3, [sp, #4]
007732f4  00 20 a0 e3                                      mov r2, #0
007732f8  0c 20 8d e5                                      str r2, [sp, #0xc]
007732fc  03 00 a0 e1                                      mov r0, r3
00773300  00 20 a0 e1                                      mov r2, r0
00773304  00 30 93 e5                                      ldr r3, [r3]
00773308  06 10 a0 e1                                      mov r1, r6
0077330c  0f e0 a0 e1                                      mov lr, pc
00773310  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00773314  06 00 a0 e1                                      mov r0, r6
00773318  4a d6 ff eb                                      bl #0x768c48
0077331c  e5 ff ff ea                                      b #0x7732b8
00773320  00 30 97 e5                                      ldr r3, [r7]
00773324  07 00 a0 e1                                      mov r0, r7
00773328  0f e0 a0 e1                                      mov lr, pc
0077332c  08 f0 93 e5                                      ldr pc, [r3, #8]
00773330  94 10 9f e5                                      ldr r1, [pc, #0x94]
00773334  00 00 50 e3                                      cmp r0, #0
00773338  10 80 8d e2                                      add r8, sp, #0x10
0077333c  00 70 a0 03                                      moveq r7, #0
00773340  01 10 8f e0                                      add r1, pc, r1
00773344  08 00 a0 e1                                      mov r0, r8
00773348  cb 81 f2 eb                                      bl #0x413a7c
0077334c  07 00 a0 e1                                      mov r0, r7
00773350  08 10 a0 e1                                      mov r1, r8
00773354  00 20 a0 e3                                      mov r2, #0
00773358  d4 75 00 eb                                      bl #0x790ab0
0077335c  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
00773360  01 00 73 e3                                      cmn r3, #1
00773364  11 00 00 0a                                      beq #0x7733b0
00773368  d0 00 86 e2                                      add r0, r6, #0xd0
0077336c  04 10 8d e2                                      add r1, sp, #4
00773370  29 89 ff eb                                      bl #0x75581c
00773374  d9 ff ff ea                                      b #0x7732e0
00773378  00 30 97 e5                                      ldr r3, [r7]
0077337c  07 00 a0 e1                                      mov r0, r7
00773380  0f e0 a0 e1                                      mov lr, pc
00773384  08 f0 93 e5                                      ldr pc, [r3, #8]
00773388  00 00 50 e3                                      cmp r0, #0
0077338c  07 00 a0 11                                      movne r0, r7
00773390  00 00 a0 03                                      moveq r0, #0
00773394  a0 00 80 e2                                      add r0, r0, #0xa0
00773398  00 10 a0 e3                                      mov r1, #0
0077339c  29 c3 ff eb                                      bl #0x764048
007733a0  c0 00 86 e2                                      add r0, r6, #0xc0
007733a4  04 10 8d e2                                      add r1, sp, #4
007733a8  1b 89 ff eb                                      bl #0x75581c
007733ac  cb ff ff ea                                      b #0x7732e0
007733b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007733b4  18 10 9d e5                                      ldr r1, [sp, #0x18]
007733b8  de 7d ff eb                                      bl #0x752b38
007733bc  e9 ff ff ea                                      b #0x773368
007733c0  d2 6b ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007733c4  18 18 22 00 ac 40 00 00 c8 84 15 00              .byte 0x18, 0x18, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x84, 0x15, 0x00

; FUNCTION 0x007733d0, declared_size=804, range_size=804, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player12create_movieEPKc
; demangled: gameswf::player::create_movie(char const*)
; decoder-mode: arm
007733d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007733d4  f4 42 9f e5                                      ldr r4, [pc, #0x2f4]
007733d8  f4 82 9f e5                                      ldr r8, [pc, #0x2f4]
007733dc  f4 52 9f e5                                      ldr r5, [pc, #0x2f4]
007733e0  04 40 8f e0                                      add r4, pc, r4
007733e4  08 20 94 e7                                      ldr r2, [r4, r8]
007733e8  05 30 94 e7                                      ldr r3, [r4, r5]
007733ec  54 d0 4d e2                                      sub sp, sp, #0x54
007733f0  00 20 d2 e5                                      ldrb r2, [r2]
007733f4  00 30 93 e5                                      ldr r3, [r3]
007733f8  01 a0 a0 e1                                      mov sl, r1
007733fc  00 00 52 e3                                      cmp r2, #0
00773400  04 00 8d e5                                      str r0, [sp, #4]
00773404  4c 30 8d e5                                      str r3, [sp, #0x4c]
00773408  25 00 00 0a                                      beq #0x7734a4
0077340c  00 30 a0 e3                                      mov r3, #0
00773410  0c 30 8d e5                                      str r3, [sp, #0xc]
00773414  f9 e4 ff eb                                      bl #0x76c800
00773418  38 60 8d e2                                      add r6, sp, #0x38
0077341c  00 70 a0 e1                                      mov r7, r0
00773420  0a 10 a0 e1                                      mov r1, sl
00773424  06 00 a0 e1                                      mov r0, r6
00773428  93 81 f2 eb                                      bl #0x413a7c
0077342c  07 00 a0 e1                                      mov r0, r7
00773430  06 10 a0 e1                                      mov r1, r6
00773434  0c 20 8d e2                                      add r2, sp, #0xc
00773438  dd c6 ff eb                                      bl #0x764fb4
0077343c  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
00773440  01 00 73 e3                                      cmn r3, #1
00773444  87 00 00 0a                                      beq #0x773668
00773448  0c 70 9d e5                                      ldr r7, [sp, #0xc]
0077344c  00 00 57 e3                                      cmp r7, #0
00773450  13 00 00 0a                                      beq #0x7734a4
00773454  00 30 97 e5                                      ldr r3, [r7]
00773458  07 00 a0 e1                                      mov r0, r7
0077345c  0a 10 a0 e3                                      mov r1, #0xa
00773460  0f e0 a0 e1                                      mov lr, pc
00773464  08 f0 93 e5                                      ldr pc, [r3, #8]
00773468  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0077346c  00 00 50 e3                                      cmp r0, #0
00773470  00 70 a0 03                                      moveq r7, #0
00773474  00 00 53 e3                                      cmp r3, #0
00773478  01 00 00 0a                                      beq #0x773484
0077347c  03 00 a0 e1                                      mov r0, r3
00773480  6e 9b ff eb                                      bl #0x75a240
00773484  05 30 94 e7                                      ldr r3, [r4, r5]
00773488  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0077348c  07 00 a0 e1                                      mov r0, r7
00773490  00 30 93 e5                                      ldr r3, [r3]
00773494  03 00 52 e1                                      cmp r2, r3
00773498  8b 00 00 1a                                      bne #0x7736cc
0077349c  54 d0 8d e2                                      add sp, sp, #0x54
007734a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007734a4  30 62 9f e5                                      ldr r6, [pc, #0x230]
007734a8  06 60 8f e0                                      add r6, pc, r6
007734ac  00 70 96 e5                                      ldr r7, [r6]
007734b0  00 00 57 e3                                      cmp r7, #0
007734b4  7a 00 00 0a                                      beq #0x7736a4
007734b8  0a 00 a0 e1                                      mov r0, sl
007734bc  37 ff 2f e1                                      blx r7
007734c0  00 90 50 e2                                      subs sb, r0, #0
007734c4  7a 00 00 0a                                      beq #0x7736b4
007734c8  24 b0 99 e5                                      ldr fp, [sb, #0x24]
007734cc  00 00 5b e3                                      cmp fp, #0
007734d0  68 00 00 1a                                      bne #0x773678
007734d4  6f 9f ff eb                                      bl #0x75b298
007734d8  0b 10 a0 e1                                      mov r1, fp
007734dc  4a 0f a0 e3                                      mov r0, #0x128
007734e0  b0 7d ff eb                                      bl #0x752ba8
007734e4  04 10 9d e5                                      ldr r1, [sp, #4]
007734e8  00 70 a0 e1                                      mov r7, r0
007734ec  0b 20 a0 e1                                      mov r2, fp
007734f0  01 30 a0 e3                                      mov r3, #1
007734f4  73 ca ff eb                                      bl #0x765ec8
007734f8  07 00 a0 e1                                      mov r0, r7
007734fc  09 10 a0 e1                                      mov r1, sb
00773500  e0 c9 ff eb                                      bl #0x765c88
00773504  00 00 57 e3                                      cmp r7, #0
00773508  02 00 00 0a                                      beq #0x773518
0077350c  04 30 d6 e5                                      ldrb r3, [r6, #4]
00773510  00 00 53 e3                                      cmp r3, #0
00773514  1e 00 00 1a                                      bne #0x773594
00773518  08 30 94 e7                                      ldr r3, [r4, r8]
0077351c  00 30 d3 e5                                      ldrb r3, [r3]
00773520  00 00 53 e3                                      cmp r3, #0
00773524  d6 ff ff 0a                                      beq #0x773484
00773528  04 00 9d e5                                      ldr r0, [sp, #4]
0077352c  b3 e4 ff eb                                      bl #0x76c800
00773530  10 60 8d e2                                      add r6, sp, #0x10
00773534  00 80 a0 e1                                      mov r8, r0
00773538  0a 10 a0 e1                                      mov r1, sl
0077353c  06 00 a0 e1                                      mov r0, r6
00773540  4d 81 f2 eb                                      bl #0x413a7c
00773544  00 00 57 e3                                      cmp r7, #0
00773548  08 70 8d e5                                      str r7, [sp, #8]
0077354c  01 00 00 0a                                      beq #0x773558
00773550  07 00 a0 e1                                      mov r0, r7
00773554  c2 99 ff eb                                      bl #0x759c64
00773558  08 00 a0 e1                                      mov r0, r8
0077355c  06 10 a0 e1                                      mov r1, r6
00773560  08 20 8d e2                                      add r2, sp, #8
00773564  1e d4 ff eb                                      bl #0x7685e4
00773568  08 00 9d e5                                      ldr r0, [sp, #8]
0077356c  00 00 50 e3                                      cmp r0, #0
00773570  00 00 00 0a                                      beq #0x773578
00773574  31 9b ff eb                                      bl #0x75a240
00773578  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
0077357c  01 00 73 e3                                      cmn r3, #1
00773580  bf ff ff 1a                                      bne #0x773484
00773584  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00773588  18 10 9d e5                                      ldr r1, [sp, #0x18]
0077358c  69 7d ff eb                                      bl #0x752b38
00773590  bb ff ff ea                                      b #0x773484
00773594  24 60 8d e2                                      add r6, sp, #0x24
00773598  06 00 a0 e1                                      mov r0, r6
0077359c  0a 10 a0 e1                                      mov r1, sl
007735a0  35 81 f2 eb                                      bl #0x413a7c
007735a4  d4 92 dd e1                                      ldrsb sb, [sp, #0x24]
007735a8  06 00 a0 e1                                      mov r0, r6
007735ac  01 00 79 e3                                      cmn sb, #1
007735b0  28 90 9d 05                                      ldreq sb, [sp, #0x28]
007735b4  01 90 49 e2                                      sub sb, sb, #1
007735b8  04 10 89 e2                                      add r1, sb, #4
007735bc  d4 79 ff eb                                      bl #0x751d14
007735c0  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
007735c4  14 11 9f e5                                      ldr r1, [pc, #0x114]
007735c8  05 20 a0 e3                                      mov r2, #5
007735cc  01 00 73 e3                                      cmn r3, #1
007735d0  30 00 9d 05                                      ldreq r0, [sp, #0x30]
007735d4  01 00 86 12                                      addne r0, r6, #1
007735d8  01 10 8f e0                                      add r1, pc, r1
007735dc  09 00 80 e0                                      add r0, r0, sb
007735e0  a0 6c ee eb                                      bl #0x30e868
007735e4  34 30 9d e5                                      ldr r3, [sp, #0x34]
007735e8  00 10 e0 e3                                      mvn r1, #0
007735ec  d4 22 dd e1                                      ldrsb r2, [sp, #0x24]
007735f0  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
007735f4  34 30 8d e5                                      str r3, [sp, #0x34]
007735f8  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
007735fc  01 00 52 e1                                      cmp r2, r1
00773600  01 00 86 12                                      addne r0, r6, #1
00773604  30 00 9d 05                                      ldreq r0, [sp, #0x30]
00773608  03 30 9f e7                                      ldr r3, [pc, r3]
0077360c  33 ff 2f e1                                      blx r3
00773610  00 60 50 e2                                      subs r6, r0, #0
00773614  0c 00 00 0a                                      beq #0x77364c
00773618  24 30 96 e5                                      ldr r3, [r6, #0x24]
0077361c  00 00 53 e3                                      cmp r3, #0
00773620  04 00 00 1a                                      bne #0x773638
00773624  00 30 97 e5                                      ldr r3, [r7]
00773628  07 00 a0 e1                                      mov r0, r7
0077362c  06 10 a0 e1                                      mov r1, r6
00773630  0f e0 a0 e1                                      mov lr, pc
00773634  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00773638  06 00 a0 e1                                      mov r0, r6
0077363c  e9 0c 01 eb                                      bl #0x7b69e8
00773640  06 00 a0 e1                                      mov r0, r6
00773644  00 10 a0 e3                                      mov r1, #0
00773648  3a 7d ff eb                                      bl #0x752b38
0077364c  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
00773650  01 00 73 e3                                      cmn r3, #1
00773654  af ff ff 1a                                      bne #0x773518
00773658  30 00 9d e5                                      ldr r0, [sp, #0x30]
0077365c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00773660  34 7d ff eb                                      bl #0x752b38
00773664  ab ff ff ea                                      b #0x773518
00773668  44 00 9d e5                                      ldr r0, [sp, #0x44]
0077366c  40 10 9d e5                                      ldr r1, [sp, #0x40]
00773670  30 7d ff eb                                      bl #0x752b38
00773674  73 ff ff ea                                      b #0x773448
00773678  68 00 9f e5                                      ldr r0, [pc, #0x68]
0077367c  0a 10 a0 e1                                      mov r1, sl
00773680  00 70 a0 e3                                      mov r7, #0
00773684  00 00 8f e0                                      add r0, pc, r0
00773688  bd b6 ff eb                                      bl #0x761184
0077368c  09 00 a0 e1                                      mov r0, sb
00773690  d4 0c 01 eb                                      bl #0x7b69e8
00773694  09 00 a0 e1                                      mov r0, sb
00773698  07 10 a0 e1                                      mov r1, r7
0077369c  25 7d ff eb                                      bl #0x752b38
007736a0  77 ff ff ea                                      b #0x773484
007736a4  40 00 9f e5                                      ldr r0, [pc, #0x40]
007736a8  00 00 8f e0                                      add r0, pc, r0
007736ac  b4 b6 ff eb                                      bl #0x761184
007736b0  73 ff ff ea                                      b #0x773484
007736b4  34 00 9f e5                                      ldr r0, [pc, #0x34]
007736b8  0a 10 a0 e1                                      mov r1, sl
007736bc  09 70 a0 e1                                      mov r7, sb
007736c0  00 00 8f e0                                      add r0, pc, r0
007736c4  ae b6 ff eb                                      bl #0x761184
007736c8  6d ff ff ea                                      b #0x773484
007736cc  0f 6b ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007736d0  b0 16 22 00 ac 16 00 00 ac 40 00 00 d0 92 28 00  .byte 0xb0, 0x16, 0x22, 0x00, 0xac, 0x16, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd0, 0x92, 0x28, 0x00
007736e0  b8 62 19 00 70 91 28 00 e4 61 19 00 30 61 19 00  .byte 0xb8, 0x62, 0x19, 0x00, 0x70, 0x91, 0x28, 0x00, 0xe4, 0x61, 0x19, 0x00, 0x30, 0x61, 0x19, 0x00
007736f0  78 61 19 00                                      .byte 0x78, 0x61, 0x19, 0x00

; FUNCTION 0x007736f4, declared_size=220, range_size=220, mode=arm
; class-group: gameswf::player
; alias: _ZN7gameswf6player9load_fileEPKc
; demangled: gameswf::player::load_file(char const*)
; decoder-mode: arm
007736f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007736f8  00 60 a0 e1                                      mov r6, r0
007736fc  01 00 a0 e1                                      mov r0, r1
00773700  02 10 a0 e1                                      mov r1, r2
00773704  02 40 a0 e1                                      mov r4, r2
00773708  30 ff ff eb                                      bl #0x7733d0
0077370c  ac 70 9f e5                                      ldr r7, [pc, #0xac]
00773710  00 50 50 e2                                      subs r5, r0, #0
00773714  07 70 8f e0                                      add r7, pc, r7
00773718  1e 00 00 0a                                      beq #0x773798
0077371c  50 99 ff eb                                      bl #0x759c64
00773720  00 30 95 e5                                      ldr r3, [r5]
00773724  05 00 a0 e1                                      mov r0, r5
00773728  0f e0 a0 e1                                      mov lr, pc
0077372c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00773730  00 40 50 e2                                      subs r4, r0, #0
00773734  0d 00 00 0a                                      beq #0x773770
00773738  49 99 ff eb                                      bl #0x759c64
0077373c  00 30 94 e5                                      ldr r3, [r4]
00773740  04 00 a0 e1                                      mov r0, r4
00773744  0f e0 a0 e1                                      mov lr, pc
00773748  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0077374c  04 00 a0 e1                                      mov r0, r4
00773750  00 40 86 e5                                      str r4, [r6]
00773754  42 99 ff eb                                      bl #0x759c64
00773758  04 00 a0 e1                                      mov r0, r4
0077375c  b7 9a ff eb                                      bl #0x75a240
00773760  05 00 a0 e1                                      mov r0, r5
00773764  b5 9a ff eb                                      bl #0x75a240
00773768  06 00 a0 e1                                      mov r0, r6
0077376c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00773770  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00773774  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00773778  01 10 a0 e3                                      mov r1, #1
0077377c  03 30 97 e7                                      ldr r3, [r7, r3]
00773780  00 00 8f e0                                      add r0, pc, r0
00773784  23 20 a0 e3                                      mov r2, #0x23
00773788  a8 30 83 e2                                      add r3, r3, #0xa8
0077378c  81 6b ee eb                                      bl #0x30e598
00773790  00 40 86 e5                                      str r4, [r6]
00773794  f1 ff ff ea                                      b #0x773760
00773798  24 00 9f e5                                      ldr r0, [pc, #0x24]
0077379c  28 10 9f e5                                      ldr r1, [pc, #0x28]
007737a0  04 20 a0 e1                                      mov r2, r4
007737a4  00 00 97 e7                                      ldr r0, [r7, r0]
007737a8  01 10 8f e0                                      add r1, pc, r1
007737ac  a8 00 80 e2                                      add r0, r0, #0xa8
007737b0  13 6a ee eb                                      bl #0x30e004
007737b4  00 50 86 e5                                      str r5, [r6]
007737b8  06 00 a0 e1                                      mov r0, r6
007737bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007737c0  7c 13 22 00 c0 19 00 00 40 61 19 00 f0 60 19 00  .byte 0x7c, 0x13, 0x22, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x40, 0x61, 0x19, 0x00, 0xf0, 0x60, 0x19, 0x00
