; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079eee4, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_key
; alias: _ZNK7gameswf6as_key2isEi
; demangled: gameswf::as_key::is(int) const
; decoder-mode: arm
0079eee4  0f 00 51 e3                                      cmp r1, #0xf
0079eee8  01 00 a0 03                                      moveq r0, #1
0079eeec  1e ff 2f 01                                      bxeq lr
0079eef0  01 00 71 e2                                      rsbs r0, r1, #1
0079eef4  00 00 a0 33                                      movlo r0, #0
0079eef8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079eefc, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::as_key
; alias: _ZN7gameswf6as_key11is_key_downEi
; demangled: gameswf::as_key::is_key_down(int)
; decoder-mode: arm
0079eefc  de 00 51 e3                                      cmp r1, #0xde
0079ef00  00 00 a0 83                                      movhi r0, #0
0079ef04  1e ff 2f 81                                      bxhi lr
0079ef08  c1 31 a0 e1                                      asr r3, r1, #3
0079ef0c  03 00 80 e0                                      add r0, r0, r3
0079ef10  38 20 d0 e5                                      ldrb r2, [r0, #0x38]
0079ef14  83 11 41 e0                                      sub r1, r1, r3, lsl #3
0079ef18  01 30 a0 e3                                      mov r3, #1
0079ef1c  13 21 12 e0                                      ands r2, r2, r3, lsl r1
0079ef20  00 00 a0 03                                      moveq r0, #0
0079ef24  01 00 a0 13                                      movne r0, #1
0079ef28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079ef2c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_key
; alias: _ZNK7gameswf6as_key20get_last_key_pressedEv
; demangled: gameswf::as_key::get_last_key_pressed() const
; decoder-mode: arm
0079ef2c  54 00 90 e5                                      ldr r0, [r0, #0x54]
0079ef30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079ef68, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::as_key
; alias: _ZN7gameswf6as_key10set_key_upEi
; demangled: gameswf::as_key::set_key_up(int)
; decoder-mode: arm
0079ef68  04 e0 2d e5                                      str lr, [sp, #-4]!
0079ef6c  de 00 51 e3                                      cmp r1, #0xde
0079ef70  0c d0 4d e2                                      sub sp, sp, #0xc
0079ef74  10 00 00 8a                                      bhi #0x79efbc
0079ef78  c1 21 a0 e1                                      asr r2, r1, #3
0079ef7c  54 10 80 e5                                      str r1, [r0, #0x54]
0079ef80  02 30 80 e0                                      add r3, r0, r2
0079ef84  38 c0 d3 e5                                      ldrb ip, [r3, #0x38]
0079ef88  82 11 41 e0                                      sub r1, r1, r2, lsl #3
0079ef8c  01 20 a0 e3                                      mov r2, #1
0079ef90  12 21 cc e1                                      bic r2, ip, r2, lsl r1
0079ef94  58 00 80 e2                                      add r0, r0, #0x58
0079ef98  38 20 c3 e5                                      strb r2, [r3, #0x38]
0079ef9c  0d 10 a0 e1                                      mov r1, sp
0079efa0  00 30 a0 e3                                      mov r3, #0
0079efa4  11 20 a0 e3                                      mov r2, #0x11
0079efa8  00 20 cd e5                                      strb r2, [sp]
0079efac  04 30 8d e5                                      str r3, [sp, #4]
0079efb0  01 30 cd e5                                      strb r3, [sp, #1]
0079efb4  b2 30 cd e1                                      strh r3, [sp, #2]
0079efb8  fe 05 ff eb                                      bl #0x7607b8
0079efbc  0c d0 8d e2                                      add sp, sp, #0xc
0079efc0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0079efc4, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::as_key
; alias: _ZN7gameswf6as_key12set_key_downEi
; demangled: gameswf::as_key::set_key_down(int)
; decoder-mode: arm
0079efc4  04 e0 2d e5                                      str lr, [sp, #-4]!
0079efc8  de 00 51 e3                                      cmp r1, #0xde
0079efcc  0c d0 4d e2                                      sub sp, sp, #0xc
0079efd0  10 00 00 8a                                      bhi #0x79f018
0079efd4  c1 21 a0 e1                                      asr r2, r1, #3
0079efd8  54 10 80 e5                                      str r1, [r0, #0x54]
0079efdc  02 30 80 e0                                      add r3, r0, r2
0079efe0  38 c0 d3 e5                                      ldrb ip, [r3, #0x38]
0079efe4  82 11 41 e0                                      sub r1, r1, r2, lsl #3
0079efe8  01 20 a0 e3                                      mov r2, #1
0079efec  12 21 8c e1                                      orr r2, ip, r2, lsl r1
0079eff0  58 00 80 e2                                      add r0, r0, #0x58
0079eff4  38 20 c3 e5                                      strb r2, [r3, #0x38]
0079eff8  0d 10 a0 e1                                      mov r1, sp
0079effc  00 30 a0 e3                                      mov r3, #0
0079f000  10 20 a0 e3                                      mov r2, #0x10
0079f004  00 20 cd e5                                      strb r2, [sp]
0079f008  04 30 8d e5                                      str r3, [sp, #4]
0079f00c  01 30 cd e5                                      strb r3, [sp, #1]
0079f010  b2 30 cd e1                                      strh r3, [sp, #2]
0079f014  e7 05 ff eb                                      bl #0x7607b8
0079f018  0c d0 8d e2                                      add sp, sp, #0xc
0079f01c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0079f020, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_key
; alias: _ZN7gameswf6as_keyC1EPNS_6playerE
; demangled: gameswf::as_key::as_key(gameswf::player*)
; decoder-mode: arm
0079f020  70 40 2d e9                                      push {r4, r5, r6, lr}
0079f024  54 50 9f e5                                      ldr r5, [pc, #0x54]
0079f028  00 40 a0 e1                                      mov r4, r0
0079f02c  2b 33 ff eb                                      bl #0x76bce0
0079f030  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0079f034  05 50 8f e0                                      add r5, pc, r5
0079f038  00 30 a0 e3                                      mov r3, #0
0079f03c  02 20 95 e7                                      ldr r2, [r5, r2]
0079f040  50 30 84 e5                                      str r3, [r4, #0x50]
0079f044  54 30 84 e5                                      str r3, [r4, #0x54]
0079f048  08 20 82 e2                                      add r2, r2, #8
0079f04c  00 20 84 e5                                      str r2, [r4]
0079f050  58 30 84 e5                                      str r3, [r4, #0x58]
0079f054  5c 30 84 e5                                      str r3, [r4, #0x5c]
0079f058  60 30 84 e5                                      str r3, [r4, #0x60]
0079f05c  64 30 c4 e5                                      strb r3, [r4, #0x64]
0079f060  38 30 84 e5                                      str r3, [r4, #0x38]
0079f064  3c 30 84 e5                                      str r3, [r4, #0x3c]
0079f068  40 30 84 e5                                      str r3, [r4, #0x40]
0079f06c  44 30 84 e5                                      str r3, [r4, #0x44]
0079f070  48 30 84 e5                                      str r3, [r4, #0x48]
0079f074  4c 30 84 e5                                      str r3, [r4, #0x4c]
0079f078  04 00 a0 e1                                      mov r0, r4
0079f07c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0079f080  5c 5a 1f 00 f8 0b 00 00                          .byte 0x5c, 0x5a, 0x1f, 0x00, 0xf8, 0x0b, 0x00, 0x00

; FUNCTION 0x0079f088, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_key
; alias: _ZN7gameswf6as_keyC2EPNS_6playerE
; demangled: gameswf::as_key::as_key(gameswf::player*)
; decoder-mode: arm
0079f088  70 40 2d e9                                      push {r4, r5, r6, lr}
0079f08c  54 50 9f e5                                      ldr r5, [pc, #0x54]
0079f090  00 40 a0 e1                                      mov r4, r0
0079f094  11 33 ff eb                                      bl #0x76bce0
0079f098  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0079f09c  05 50 8f e0                                      add r5, pc, r5
0079f0a0  00 30 a0 e3                                      mov r3, #0
0079f0a4  02 20 95 e7                                      ldr r2, [r5, r2]
0079f0a8  50 30 84 e5                                      str r3, [r4, #0x50]
0079f0ac  54 30 84 e5                                      str r3, [r4, #0x54]
0079f0b0  08 20 82 e2                                      add r2, r2, #8
0079f0b4  00 20 84 e5                                      str r2, [r4]
0079f0b8  58 30 84 e5                                      str r3, [r4, #0x58]
0079f0bc  5c 30 84 e5                                      str r3, [r4, #0x5c]
0079f0c0  60 30 84 e5                                      str r3, [r4, #0x60]
0079f0c4  64 30 c4 e5                                      strb r3, [r4, #0x64]
0079f0c8  38 30 84 e5                                      str r3, [r4, #0x38]
0079f0cc  3c 30 84 e5                                      str r3, [r4, #0x3c]
0079f0d0  40 30 84 e5                                      str r3, [r4, #0x40]
0079f0d4  44 30 84 e5                                      str r3, [r4, #0x44]
0079f0d8  48 30 84 e5                                      str r3, [r4, #0x48]
0079f0dc  4c 30 84 e5                                      str r3, [r4, #0x4c]
0079f0e0  04 00 a0 e1                                      mov r0, r4
0079f0e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0079f0e8  f4 59 1f 00 f8 0b 00 00                          .byte 0xf4, 0x59, 0x1f, 0x00, 0xf8, 0x0b, 0x00, 0x00

; FUNCTION 0x0079f2e0, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::as_key
; alias: _ZN7gameswf6as_keyD1Ev
; demangled: gameswf::as_key::~as_key()
; decoder-mode: arm
0079f2e0  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0079f2e4  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0079f2e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079f2ec  03 30 8f e0                                      add r3, pc, r3
0079f2f0  02 20 93 e7                                      ldr r2, [r3, r2]
0079f2f4  00 60 a0 e1                                      mov r6, r0
0079f2f8  00 70 a0 e1                                      mov r7, r0
0079f2fc  08 20 82 e2                                      add r2, r2, #8
0079f300  58 20 86 e4                                      str r2, [r6], #0x58
0079f304  5c 40 90 e5                                      ldr r4, [r0, #0x5c]
0079f308  00 00 54 e3                                      cmp r4, #0
0079f30c  18 00 00 da                                      ble #0x79f374
0079f310  00 50 a0 e3                                      mov r5, #0
0079f314  00 30 96 e5                                      ldr r3, [r6]
0079f318  85 31 93 e7                                      ldr r3, [r3, r5, lsl #3]
0079f31c  01 50 85 e2                                      add r5, r5, #1
0079f320  00 00 53 e3                                      cmp r3, #0
0079f324  03 00 a0 e1                                      mov r0, r3
0079f328  06 00 00 0a                                      beq #0x79f348
0079f32c  00 20 93 e5                                      ldr r2, [r3]
0079f330  01 20 42 e2                                      sub r2, r2, #1
0079f334  00 00 52 e3                                      cmp r2, #0
0079f338  02 10 a0 e1                                      mov r1, r2
0079f33c  00 20 83 e5                                      str r2, [r3]
0079f340  00 00 00 1a                                      bne #0x79f348
0079f344  fb cd fe eb                                      bl #0x752b38
0079f348  04 00 55 e1                                      cmp r5, r4
0079f34c  f0 ff ff 1a                                      bne #0x79f314
0079f350  00 30 a0 e3                                      mov r3, #0
0079f354  03 10 a0 e1                                      mov r1, r3
0079f358  5c 30 87 e5                                      str r3, [r7, #0x5c]
0079f35c  06 00 a0 e1                                      mov r0, r6
0079f360  7e 04 ff eb                                      bl #0x760560
0079f364  07 00 a0 e1                                      mov r0, r7
0079f368  cb 29 ff eb                                      bl #0x769a9c
0079f36c  07 00 a0 e1                                      mov r0, r7
0079f370  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0079f374  f5 ff ff aa                                      bge #0x79f350
0079f378  84 31 a0 e1                                      lsl r3, r4, #3
0079f37c  00 10 a0 e3                                      mov r1, #0
0079f380  00 20 96 e5                                      ldr r2, [r6]
0079f384  01 40 94 e2                                      adds r4, r4, #1
0079f388  03 00 82 e0                                      add r0, r2, r3
0079f38c  03 10 82 e7                                      str r1, [r2, r3]
0079f390  04 10 80 e5                                      str r1, [r0, #4]
0079f394  08 30 83 e2                                      add r3, r3, #8
0079f398  f8 ff ff 1a                                      bne #0x79f380
0079f39c  eb ff ff ea                                      b #0x79f350
; mapping-symbol data/literal pool
0079f3a0  a4 57 1f 00 f8 0b 00 00                          .byte 0xa4, 0x57, 0x1f, 0x00, 0xf8, 0x0b, 0x00, 0x00

; FUNCTION 0x0079f3a8, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_key
; alias: _ZN7gameswf6as_keyD0Ev
; demangled: gameswf::as_key::~as_key()
; decoder-mode: arm
0079f3a8  10 40 2d e9                                      push {r4, lr}
0079f3ac  00 40 a0 e1                                      mov r4, r0
0079f3b0  ca ff ff eb                                      bl #0x79f2e0
0079f3b4  04 00 a0 e1                                      mov r0, r4
0079f3b8  bc bb ed eb                                      bl #0x30e2b0
0079f3bc  04 00 a0 e1                                      mov r0, r4
0079f3c0  10 80 bd e8                                      pop {r4, pc}
