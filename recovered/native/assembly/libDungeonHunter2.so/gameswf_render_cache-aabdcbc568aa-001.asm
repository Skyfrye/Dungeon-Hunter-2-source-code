; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007738a4, declared_size=208, range_size=208, mode=arm
; class-group: gameswf::render_cache
; alias: _ZN7gameswf12render_cache8is_validEPNS_9characterE
; demangled: gameswf::render_cache::is_valid(gameswf::character*)
; decoder-mode: arm
007738a4  70 40 2d e9                                      push {r4, r5, r6, lr}
007738a8  01 50 a0 e1                                      mov r5, r1
007738ac  00 40 a0 e1                                      mov r4, r0
007738b0  2c 00 81 e2                                      add r0, r1, #0x2c
007738b4  69 86 ff eb                                      bl #0x755260
007738b8  30 30 95 e5                                      ldr r3, [r5, #0x30]
007738bc  05 00 a0 e1                                      mov r0, r5
007738c0  ac 60 93 e5                                      ldr r6, [r3, #0xac]
007738c4  7d 81 ff eb                                      bl #0x753ec0
007738c8  05 00 a0 e1                                      mov r0, r5
007738cc  a8 81 ff eb                                      bl #0x753f74
007738d0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
007738d4  28 30 93 e5                                      ldr r3, [r3, #0x28]
007738d8  00 00 53 e3                                      cmp r3, #0
007738dc  16 00 00 0a                                      beq #0x77393c
007738e0  08 20 93 e5                                      ldr r2, [r3, #8]
007738e4  00 10 94 e5                                      ldr r1, [r4]
007738e8  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007738ec  02 00 51 e1                                      cmp r1, r2
007738f0  0e 00 00 0a                                      beq #0x773930
007738f4  0c 00 84 e8                                      stm r4, {r2, r3}
007738f8  10 30 96 e5                                      ldr r3, [r6, #0x10]
007738fc  01 00 a0 e3                                      mov r0, #1
00773900  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00773904  00 00 53 e3                                      cmp r3, #0
00773908  10 00 00 0a                                      beq #0x773950
0077390c  08 20 93 e5                                      ldr r2, [r3, #8]
00773910  08 10 94 e5                                      ldr r1, [r4, #8]
00773914  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00773918  02 00 51 e1                                      cmp r1, r2
0077391c  0d 00 00 0a                                      beq #0x773958
00773920  0c 30 84 e5                                      str r3, [r4, #0xc]
00773924  08 20 84 e5                                      str r2, [r4, #8]
00773928  00 00 a0 e3                                      mov r0, #0
0077392c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00773930  04 10 94 e5                                      ldr r1, [r4, #4]
00773934  03 00 51 e1                                      cmp r1, r3
00773938  ed ff ff 1a                                      bne #0x7738f4
0077393c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00773940  00 00 a0 e3                                      mov r0, #0
00773944  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00773948  00 00 53 e3                                      cmp r3, #0
0077394c  ee ff ff 1a                                      bne #0x77390c
00773950  01 00 20 e2                                      eor r0, r0, #1
00773954  70 80 bd e8                                      pop {r4, r5, r6, pc}
00773958  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0077395c  03 00 51 e1                                      cmp r1, r3
00773960  fa ff ff 0a                                      beq #0x773950
00773964  0c 30 84 e5                                      str r3, [r4, #0xc]
00773968  08 20 84 e5                                      str r2, [r4, #8]
0077396c  00 00 a0 e3                                      mov r0, #0
00773970  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0078ba28, declared_size=304, range_size=304, mode=arm
; class-group: gameswf::render_cache
; alias: _ZN7gameswf12render_cacheD1Ev
; demangled: gameswf::render_cache::~render_cache()
; decoder-mode: arm
0078ba28  70 40 2d e9                                      push {r4, r5, r6, lr}
0078ba2c  44 30 90 e5                                      ldr r3, [r0, #0x44]
0078ba30  00 40 a0 e1                                      mov r4, r0
0078ba34  40 00 80 e2                                      add r0, r0, #0x40
0078ba38  00 00 53 e3                                      cmp r3, #0
0078ba3c  28 00 00 da                                      ble #0x78bae4
0078ba40  00 50 a0 e3                                      mov r5, #0
0078ba44  44 50 84 e5                                      str r5, [r4, #0x44]
0078ba48  05 10 a0 e1                                      mov r1, r5
0078ba4c  0a b9 ff eb                                      bl #0x779e7c
0078ba50  3c 30 d4 e5                                      ldrb r3, [r4, #0x3c]
0078ba54  34 50 84 e5                                      str r5, [r4, #0x34]
0078ba58  05 00 53 e1                                      cmp r3, r5
0078ba5c  08 00 00 1a                                      bne #0x78ba84
0078ba60  30 00 94 e5                                      ldr r0, [r4, #0x30]
0078ba64  38 10 94 e5                                      ldr r1, [r4, #0x38]
0078ba68  38 30 84 e5                                      str r3, [r4, #0x38]
0078ba6c  05 00 50 e1                                      cmp r0, r5
0078ba70  01 00 00 0a                                      beq #0x78ba7c
0078ba74  81 11 a0 e1                                      lsl r1, r1, #3
0078ba78  2e 1c ff eb                                      bl #0x752b38
0078ba7c  00 30 a0 e3                                      mov r3, #0
0078ba80  30 30 84 e5                                      str r3, [r4, #0x30]
0078ba84  2c 30 d4 e5                                      ldrb r3, [r4, #0x2c]
0078ba88  00 20 a0 e3                                      mov r2, #0
0078ba8c  24 20 84 e5                                      str r2, [r4, #0x24]
0078ba90  02 00 53 e1                                      cmp r3, r2
0078ba94  09 00 00 1a                                      bne #0x78bac0
0078ba98  20 00 94 e5                                      ldr r0, [r4, #0x20]
0078ba9c  28 20 94 e5                                      ldr r2, [r4, #0x28]
0078baa0  28 30 84 e5                                      str r3, [r4, #0x28]
0078baa4  00 00 50 e3                                      cmp r0, #0
0078baa8  02 00 00 0a                                      beq #0x78bab8
0078baac  0c 10 a0 e3                                      mov r1, #0xc
0078bab0  91 02 01 e0                                      mul r1, r1, r2
0078bab4  1f 1c ff eb                                      bl #0x752b38
0078bab8  00 30 a0 e3                                      mov r3, #0
0078babc  20 30 84 e5                                      str r3, [r4, #0x20]
0078bac0  14 c0 94 e5                                      ldr ip, [r4, #0x14]
0078bac4  10 00 84 e2                                      add r0, r4, #0x10
0078bac8  00 00 5c e3                                      cmp ip, #0
0078bacc  0d 00 00 da                                      ble #0x78bb08
0078bad0  00 10 a0 e3                                      mov r1, #0
0078bad4  14 10 84 e5                                      str r1, [r4, #0x14]
0078bad8  06 fb ff eb                                      bl #0x78a6f8
0078badc  04 00 a0 e1                                      mov r0, r4
0078bae0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078bae4  d5 ff ff aa                                      bge #0x78ba40
0078bae8  83 20 a0 e1                                      lsl r2, r3, #1
0078baec  40 10 94 e5                                      ldr r1, [r4, #0x40]
0078baf0  00 c0 a0 e3                                      mov ip, #0
0078baf4  01 30 93 e2                                      adds r3, r3, #1
0078baf8  b2 c0 81 e1                                      strh ip, [r1, r2]
0078bafc  02 20 82 e2                                      add r2, r2, #2
0078bb00  f9 ff ff 1a                                      bne #0x78baec
0078bb04  cd ff ff ea                                      b #0x78ba40
0078bb08  f0 ff ff aa                                      bge #0x78bad0
0078bb0c  18 10 a0 e3                                      mov r1, #0x18
0078bb10  91 0c 01 e0                                      mul r1, r1, ip
0078bb14  00 30 a0 e3                                      mov r3, #0
0078bb18  00 e0 90 e5                                      ldr lr, [r0]
0078bb1c  01 c0 9c e2                                      adds ip, ip, #1
0078bb20  01 20 8e e0                                      add r2, lr, r1
0078bb24  01 30 8e e7                                      str r3, [lr, r1]
0078bb28  14 30 82 e5                                      str r3, [r2, #0x14]
0078bb2c  04 30 82 e5                                      str r3, [r2, #4]
0078bb30  08 30 82 e5                                      str r3, [r2, #8]
0078bb34  0c 30 82 e5                                      str r3, [r2, #0xc]
0078bb38  10 30 82 e5                                      str r3, [r2, #0x10]
0078bb3c  18 10 81 e2                                      add r1, r1, #0x18
0078bb40  f4 ff ff 1a                                      bne #0x78bb18
0078bb44  00 10 a0 e3                                      mov r1, #0
0078bb48  14 10 84 e5                                      str r1, [r4, #0x14]
0078bb4c  e9 fa ff eb                                      bl #0x78a6f8
0078bb50  04 00 a0 e1                                      mov r0, r4
0078bb54  70 80 bd e8                                      pop {r4, r5, r6, pc}
