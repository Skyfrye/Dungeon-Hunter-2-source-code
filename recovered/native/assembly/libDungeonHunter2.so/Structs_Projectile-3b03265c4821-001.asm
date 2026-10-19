; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c48, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Projectile
; alias: _ZN7Structs10ProjectileD2Ev
; demangled: Structs::Projectile::~Projectile()
; decoder-mode: arm
004c6c48  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c4c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Projectile
; alias: _ZN7Structs10ProjectileD1Ev
; demangled: Structs::Projectile::~Projectile()
; decoder-mode: arm
004c6c4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c50, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Projectile
; alias: _ZN7Structs10Projectile8finalizeEv
; demangled: Structs::Projectile::finalize()
; decoder-mode: arm
004c6c50  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce17c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Projectile
; alias: _ZN7Structs10ProjectileD0Ev
; demangled: Structs::Projectile::~Projectile()
; decoder-mode: arm
004ce17c  10 40 2d e9                                      push {r4, lr}
004ce180  00 40 a0 e1                                      mov r4, r0
004ce184  b0 e2 ff eb                                      bl #0x4c6c4c
004ce188  04 00 a0 e1                                      mov r0, r4
004ce18c  ab 08 f9 eb                                      bl #0x310440
004ce190  04 00 a0 e1                                      mov r0, r4
004ce194  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004edbb8, declared_size=1304, range_size=1304, mode=arm
; class-group: Structs::Projectile
; alias: _ZN7Structs10Projectile4readEP11IStreamBase
; demangled: Structs::Projectile::read(IStreamBase*)
; decoder-mode: arm
004edbb8  30 40 2d e9                                      push {r4, r5, lr}
004edbbc  00 40 a0 e1                                      mov r4, r0
004edbc0  0c d0 4d e2                                      sub sp, sp, #0xc
004edbc4  01 50 a0 e1                                      mov r5, r1
004edbc8  01 00 a0 e1                                      mov r0, r1
004edbcc  04 10 84 e2                                      add r1, r4, #4
004edbd0  31 b7 ff eb                                      bl #0x4db89c
004edbd4  05 00 a0 e1                                      mov r0, r5
004edbd8  05 10 84 e2                                      add r1, r4, #5
004edbdc  2e b7 ff eb                                      bl #0x4db89c
004edbe0  05 00 a0 e1                                      mov r0, r5
004edbe4  08 10 84 e2                                      add r1, r4, #8
004edbe8  28 ad fd eb                                      bl #0x459090
004edbec  01 30 a0 e3                                      mov r3, #1
004edbf0  00 00 53 e3                                      cmp r3, #0
004edbf4  04 30 8d e5                                      str r3, [sp, #4]
004edbf8  0f 00 00 1a                                      bne #0x4edc3c
004edbfc  09 30 84 e2                                      add r3, r4, #9
004edc00  0a 20 84 e2                                      add r2, r4, #0xa
004edc04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edc08  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edc0c  02 00 53 e1                                      cmp r3, r2
004edc10  01 10 20 e0                                      eor r1, r0, r1
004edc14  01 10 43 e5                                      strb r1, [r3, #-1]
004edc18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edc1c  00 10 21 e0                                      eor r1, r1, r0
004edc20  01 10 c2 e5                                      strb r1, [r2, #1]
004edc24  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edc28  01 20 42 e2                                      sub r2, r2, #1
004edc2c  00 10 21 e0                                      eor r1, r1, r0
004edc30  01 10 43 e5                                      strb r1, [r3, #-1]
004edc34  01 30 83 e2                                      add r3, r3, #1
004edc38  f1 ff ff 3a                                      blo #0x4edc04
004edc3c  05 00 a0 e1                                      mov r0, r5
004edc40  0c 10 84 e2                                      add r1, r4, #0xc
004edc44  11 ad fd eb                                      bl #0x459090
004edc48  01 30 a0 e3                                      mov r3, #1
004edc4c  00 00 53 e3                                      cmp r3, #0
004edc50  04 30 8d e5                                      str r3, [sp, #4]
004edc54  0f 00 00 1a                                      bne #0x4edc98
004edc58  0d 30 84 e2                                      add r3, r4, #0xd
004edc5c  0e 20 84 e2                                      add r2, r4, #0xe
004edc60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edc64  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edc68  02 00 53 e1                                      cmp r3, r2
004edc6c  01 10 20 e0                                      eor r1, r0, r1
004edc70  01 10 43 e5                                      strb r1, [r3, #-1]
004edc74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edc78  00 10 21 e0                                      eor r1, r1, r0
004edc7c  01 10 c2 e5                                      strb r1, [r2, #1]
004edc80  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edc84  01 20 42 e2                                      sub r2, r2, #1
004edc88  00 10 21 e0                                      eor r1, r1, r0
004edc8c  01 10 43 e5                                      strb r1, [r3, #-1]
004edc90  01 30 83 e2                                      add r3, r3, #1
004edc94  f1 ff ff 3a                                      blo #0x4edc60
004edc98  10 10 84 e2                                      add r1, r4, #0x10
004edc9c  05 00 a0 e1                                      mov r0, r5
004edca0  fd b6 ff eb                                      bl #0x4db89c
004edca4  05 00 a0 e1                                      mov r0, r5
004edca8  14 10 84 e2                                      add r1, r4, #0x14
004edcac  f7 ac fd eb                                      bl #0x459090
004edcb0  01 30 a0 e3                                      mov r3, #1
004edcb4  00 00 53 e3                                      cmp r3, #0
004edcb8  04 30 8d e5                                      str r3, [sp, #4]
004edcbc  0f 00 00 1a                                      bne #0x4edd00
004edcc0  15 30 84 e2                                      add r3, r4, #0x15
004edcc4  16 20 84 e2                                      add r2, r4, #0x16
004edcc8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edccc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edcd0  02 00 53 e1                                      cmp r3, r2
004edcd4  01 10 20 e0                                      eor r1, r0, r1
004edcd8  01 10 43 e5                                      strb r1, [r3, #-1]
004edcdc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edce0  00 10 21 e0                                      eor r1, r1, r0
004edce4  01 10 c2 e5                                      strb r1, [r2, #1]
004edce8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edcec  01 20 42 e2                                      sub r2, r2, #1
004edcf0  00 10 21 e0                                      eor r1, r1, r0
004edcf4  01 10 43 e5                                      strb r1, [r3, #-1]
004edcf8  01 30 83 e2                                      add r3, r3, #1
004edcfc  f1 ff ff 3a                                      blo #0x4edcc8
004edd00  05 00 a0 e1                                      mov r0, r5
004edd04  18 10 84 e2                                      add r1, r4, #0x18
004edd08  e0 ac fd eb                                      bl #0x459090
004edd0c  01 30 a0 e3                                      mov r3, #1
004edd10  00 00 53 e3                                      cmp r3, #0
004edd14  04 30 8d e5                                      str r3, [sp, #4]
004edd18  0f 00 00 1a                                      bne #0x4edd5c
004edd1c  19 30 84 e2                                      add r3, r4, #0x19
004edd20  1a 20 84 e2                                      add r2, r4, #0x1a
004edd24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edd28  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edd2c  02 00 53 e1                                      cmp r3, r2
004edd30  01 10 20 e0                                      eor r1, r0, r1
004edd34  01 10 43 e5                                      strb r1, [r3, #-1]
004edd38  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edd3c  00 10 21 e0                                      eor r1, r1, r0
004edd40  01 10 c2 e5                                      strb r1, [r2, #1]
004edd44  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edd48  01 20 42 e2                                      sub r2, r2, #1
004edd4c  00 10 21 e0                                      eor r1, r1, r0
004edd50  01 10 43 e5                                      strb r1, [r3, #-1]
004edd54  01 30 83 e2                                      add r3, r3, #1
004edd58  f1 ff ff 3a                                      blo #0x4edd24
004edd5c  1c 10 84 e2                                      add r1, r4, #0x1c
004edd60  05 00 a0 e1                                      mov r0, r5
004edd64  cc b6 ff eb                                      bl #0x4db89c
004edd68  05 00 a0 e1                                      mov r0, r5
004edd6c  1d 10 84 e2                                      add r1, r4, #0x1d
004edd70  c9 b6 ff eb                                      bl #0x4db89c
004edd74  05 00 a0 e1                                      mov r0, r5
004edd78  20 10 84 e2                                      add r1, r4, #0x20
004edd7c  f2 b6 ff eb                                      bl #0x4db94c
004edd80  01 30 a0 e3                                      mov r3, #1
004edd84  00 00 53 e3                                      cmp r3, #0
004edd88  04 30 8d e5                                      str r3, [sp, #4]
004edd8c  0f 00 00 1a                                      bne #0x4eddd0
004edd90  21 30 84 e2                                      add r3, r4, #0x21
004edd94  22 20 84 e2                                      add r2, r4, #0x22
004edd98  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edd9c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edda0  02 00 53 e1                                      cmp r3, r2
004edda4  01 10 20 e0                                      eor r1, r0, r1
004edda8  01 10 43 e5                                      strb r1, [r3, #-1]
004eddac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eddb0  00 10 21 e0                                      eor r1, r1, r0
004eddb4  01 10 c2 e5                                      strb r1, [r2, #1]
004eddb8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eddbc  01 20 42 e2                                      sub r2, r2, #1
004eddc0  00 10 21 e0                                      eor r1, r1, r0
004eddc4  01 10 43 e5                                      strb r1, [r3, #-1]
004eddc8  01 30 83 e2                                      add r3, r3, #1
004eddcc  f1 ff ff 3a                                      blo #0x4edd98
004eddd0  05 00 a0 e1                                      mov r0, r5
004eddd4  24 10 84 e2                                      add r1, r4, #0x24
004eddd8  db b6 ff eb                                      bl #0x4db94c
004edddc  01 30 a0 e3                                      mov r3, #1
004edde0  00 00 53 e3                                      cmp r3, #0
004edde4  04 30 8d e5                                      str r3, [sp, #4]
004edde8  0f 00 00 1a                                      bne #0x4ede2c
004eddec  25 30 84 e2                                      add r3, r4, #0x25
004eddf0  26 20 84 e2                                      add r2, r4, #0x26
004eddf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eddf8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eddfc  02 00 53 e1                                      cmp r3, r2
004ede00  01 10 20 e0                                      eor r1, r0, r1
004ede04  01 10 43 e5                                      strb r1, [r3, #-1]
004ede08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ede0c  00 10 21 e0                                      eor r1, r1, r0
004ede10  01 10 c2 e5                                      strb r1, [r2, #1]
004ede14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ede18  01 20 42 e2                                      sub r2, r2, #1
004ede1c  00 10 21 e0                                      eor r1, r1, r0
004ede20  01 10 43 e5                                      strb r1, [r3, #-1]
004ede24  01 30 83 e2                                      add r3, r3, #1
004ede28  f1 ff ff 3a                                      blo #0x4eddf4
004ede2c  05 00 a0 e1                                      mov r0, r5
004ede30  28 10 84 e2                                      add r1, r4, #0x28
004ede34  95 ac fd eb                                      bl #0x459090
004ede38  01 30 a0 e3                                      mov r3, #1
004ede3c  00 00 53 e3                                      cmp r3, #0
004ede40  04 30 8d e5                                      str r3, [sp, #4]
004ede44  0f 00 00 1a                                      bne #0x4ede88
004ede48  29 30 84 e2                                      add r3, r4, #0x29
004ede4c  2a 20 84 e2                                      add r2, r4, #0x2a
004ede50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ede54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ede58  02 00 53 e1                                      cmp r3, r2
004ede5c  01 10 20 e0                                      eor r1, r0, r1
004ede60  01 10 43 e5                                      strb r1, [r3, #-1]
004ede64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ede68  00 10 21 e0                                      eor r1, r1, r0
004ede6c  01 10 c2 e5                                      strb r1, [r2, #1]
004ede70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ede74  01 20 42 e2                                      sub r2, r2, #1
004ede78  00 10 21 e0                                      eor r1, r1, r0
004ede7c  01 10 43 e5                                      strb r1, [r3, #-1]
004ede80  01 30 83 e2                                      add r3, r3, #1
004ede84  f1 ff ff 3a                                      blo #0x4ede50
004ede88  05 00 a0 e1                                      mov r0, r5
004ede8c  2c 10 84 e2                                      add r1, r4, #0x2c
004ede90  7e ac fd eb                                      bl #0x459090
004ede94  01 30 a0 e3                                      mov r3, #1
004ede98  00 00 53 e3                                      cmp r3, #0
004ede9c  04 30 8d e5                                      str r3, [sp, #4]
004edea0  0f 00 00 1a                                      bne #0x4edee4
004edea4  2d 30 84 e2                                      add r3, r4, #0x2d
004edea8  2e 20 84 e2                                      add r2, r4, #0x2e
004edeac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edeb0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edeb4  02 00 53 e1                                      cmp r3, r2
004edeb8  01 10 20 e0                                      eor r1, r0, r1
004edebc  01 10 43 e5                                      strb r1, [r3, #-1]
004edec0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edec4  00 10 21 e0                                      eor r1, r1, r0
004edec8  01 10 c2 e5                                      strb r1, [r2, #1]
004edecc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eded0  01 20 42 e2                                      sub r2, r2, #1
004eded4  00 10 21 e0                                      eor r1, r1, r0
004eded8  01 10 43 e5                                      strb r1, [r3, #-1]
004ededc  01 30 83 e2                                      add r3, r3, #1
004edee0  f1 ff ff 3a                                      blo #0x4edeac
004edee4  05 00 a0 e1                                      mov r0, r5
004edee8  30 10 84 e2                                      add r1, r4, #0x30
004edeec  67 ac fd eb                                      bl #0x459090
004edef0  01 30 a0 e3                                      mov r3, #1
004edef4  00 00 53 e3                                      cmp r3, #0
004edef8  04 30 8d e5                                      str r3, [sp, #4]
004edefc  0f 00 00 1a                                      bne #0x4edf40
004edf00  31 30 84 e2                                      add r3, r4, #0x31
004edf04  32 20 84 e2                                      add r2, r4, #0x32
004edf08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edf0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edf10  02 00 53 e1                                      cmp r3, r2
004edf14  01 10 20 e0                                      eor r1, r0, r1
004edf18  01 10 43 e5                                      strb r1, [r3, #-1]
004edf1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edf20  00 10 21 e0                                      eor r1, r1, r0
004edf24  01 10 c2 e5                                      strb r1, [r2, #1]
004edf28  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edf2c  01 20 42 e2                                      sub r2, r2, #1
004edf30  00 10 21 e0                                      eor r1, r1, r0
004edf34  01 10 43 e5                                      strb r1, [r3, #-1]
004edf38  01 30 83 e2                                      add r3, r3, #1
004edf3c  f1 ff ff 3a                                      blo #0x4edf08
004edf40  34 10 84 e2                                      add r1, r4, #0x34
004edf44  05 00 a0 e1                                      mov r0, r5
004edf48  53 b6 ff eb                                      bl #0x4db89c
004edf4c  05 00 a0 e1                                      mov r0, r5
004edf50  35 10 84 e2                                      add r1, r4, #0x35
004edf54  50 b6 ff eb                                      bl #0x4db89c
004edf58  05 00 a0 e1                                      mov r0, r5
004edf5c  38 10 84 e2                                      add r1, r4, #0x38
004edf60  4a ac fd eb                                      bl #0x459090
004edf64  01 30 a0 e3                                      mov r3, #1
004edf68  00 00 53 e3                                      cmp r3, #0
004edf6c  04 30 8d e5                                      str r3, [sp, #4]
004edf70  0f 00 00 1a                                      bne #0x4edfb4
004edf74  39 30 84 e2                                      add r3, r4, #0x39
004edf78  3a 20 84 e2                                      add r2, r4, #0x3a
004edf7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edf80  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edf84  02 00 53 e1                                      cmp r3, r2
004edf88  01 10 20 e0                                      eor r1, r0, r1
004edf8c  01 10 43 e5                                      strb r1, [r3, #-1]
004edf90  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edf94  00 10 21 e0                                      eor r1, r1, r0
004edf98  01 10 c2 e5                                      strb r1, [r2, #1]
004edf9c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edfa0  01 20 42 e2                                      sub r2, r2, #1
004edfa4  00 10 21 e0                                      eor r1, r1, r0
004edfa8  01 10 43 e5                                      strb r1, [r3, #-1]
004edfac  01 30 83 e2                                      add r3, r3, #1
004edfb0  f1 ff ff 3a                                      blo #0x4edf7c
004edfb4  05 00 a0 e1                                      mov r0, r5
004edfb8  3c 10 84 e2                                      add r1, r4, #0x3c
004edfbc  33 ac fd eb                                      bl #0x459090
004edfc0  01 30 a0 e3                                      mov r3, #1
004edfc4  00 00 53 e3                                      cmp r3, #0
004edfc8  04 30 8d e5                                      str r3, [sp, #4]
004edfcc  0f 00 00 1a                                      bne #0x4ee010
004edfd0  3d 30 84 e2                                      add r3, r4, #0x3d
004edfd4  3e 20 84 e2                                      add r2, r4, #0x3e
004edfd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edfdc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edfe0  02 00 53 e1                                      cmp r3, r2
004edfe4  01 10 20 e0                                      eor r1, r0, r1
004edfe8  01 10 43 e5                                      strb r1, [r3, #-1]
004edfec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edff0  00 10 21 e0                                      eor r1, r1, r0
004edff4  01 10 c2 e5                                      strb r1, [r2, #1]
004edff8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edffc  01 20 42 e2                                      sub r2, r2, #1
004ee000  00 10 21 e0                                      eor r1, r1, r0
004ee004  01 10 43 e5                                      strb r1, [r3, #-1]
004ee008  01 30 83 e2                                      add r3, r3, #1
004ee00c  f1 ff ff 3a                                      blo #0x4edfd8
004ee010  05 00 a0 e1                                      mov r0, r5
004ee014  40 10 84 e2                                      add r1, r4, #0x40
004ee018  4b b6 ff eb                                      bl #0x4db94c
004ee01c  01 30 a0 e3                                      mov r3, #1
004ee020  00 00 53 e3                                      cmp r3, #0
004ee024  04 30 8d e5                                      str r3, [sp, #4]
004ee028  0f 00 00 1a                                      bne #0x4ee06c
004ee02c  41 30 84 e2                                      add r3, r4, #0x41
004ee030  42 20 84 e2                                      add r2, r4, #0x42
004ee034  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee038  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ee03c  02 00 53 e1                                      cmp r3, r2
004ee040  01 10 20 e0                                      eor r1, r0, r1
004ee044  01 10 43 e5                                      strb r1, [r3, #-1]
004ee048  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ee04c  00 10 21 e0                                      eor r1, r1, r0
004ee050  01 10 c2 e5                                      strb r1, [r2, #1]
004ee054  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ee058  01 20 42 e2                                      sub r2, r2, #1
004ee05c  00 10 21 e0                                      eor r1, r1, r0
004ee060  01 10 43 e5                                      strb r1, [r3, #-1]
004ee064  01 30 83 e2                                      add r3, r3, #1
004ee068  f1 ff ff 3a                                      blo #0x4ee034
004ee06c  05 00 a0 e1                                      mov r0, r5
004ee070  44 10 84 e2                                      add r1, r4, #0x44
004ee074  34 b6 ff eb                                      bl #0x4db94c
004ee078  01 30 a0 e3                                      mov r3, #1
004ee07c  00 00 53 e3                                      cmp r3, #0
004ee080  04 30 8d e5                                      str r3, [sp, #4]
004ee084  0f 00 00 1a                                      bne #0x4ee0c8
004ee088  46 30 84 e2                                      add r3, r4, #0x46
004ee08c  45 40 84 e2                                      add r4, r4, #0x45
004ee090  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ee094  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ee098  03 00 54 e1                                      cmp r4, r3
004ee09c  02 20 21 e0                                      eor r2, r1, r2
004ee0a0  01 20 44 e5                                      strb r2, [r4, #-1]
004ee0a4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ee0a8  01 20 22 e0                                      eor r2, r2, r1
004ee0ac  01 20 c3 e5                                      strb r2, [r3, #1]
004ee0b0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ee0b4  01 30 43 e2                                      sub r3, r3, #1
004ee0b8  01 20 22 e0                                      eor r2, r2, r1
004ee0bc  01 20 44 e5                                      strb r2, [r4, #-1]
004ee0c0  01 40 84 e2                                      add r4, r4, #1
004ee0c4  f1 ff ff 3a                                      blo #0x4ee090
004ee0c8  0c d0 8d e2                                      add sp, sp, #0xc
004ee0cc  30 80 bd e8                                      pop {r4, r5, pc}
