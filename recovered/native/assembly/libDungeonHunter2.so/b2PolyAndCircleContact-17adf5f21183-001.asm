; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ebeb0, declared_size=4, range_size=4, mode=arm
; class-group: b2PolyAndCircleContact
; alias: _ZN22b2PolyAndCircleContactD1Ev
; demangled: b2PolyAndCircleContact::~b2PolyAndCircleContact()
; decoder-mode: arm
007ebeb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007ebeb4, declared_size=8, range_size=8, mode=arm
; class-group: b2PolyAndCircleContact
; alias: _ZN22b2PolyAndCircleContact12GetManifoldsEv
; demangled: b2PolyAndCircleContact::GetManifolds()
; decoder-mode: arm
007ebeb4  48 00 80 e2                                      add r0, r0, #0x48
007ebeb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007ebebc, declared_size=20, range_size=20, mode=arm
; class-group: b2PolyAndCircleContact
; alias: _ZN22b2PolyAndCircleContactD0Ev
; demangled: b2PolyAndCircleContact::~b2PolyAndCircleContact()
; decoder-mode: arm
007ebebc  10 40 2d e9                                      push {r4, lr}
007ebec0  00 40 a0 e1                                      mov r4, r0
007ebec4  f9 88 ec eb                                      bl #0x30e2b0
007ebec8  04 00 a0 e1                                      mov r0, r4
007ebecc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ebed0, declared_size=72, range_size=72, mode=arm
; class-group: b2PolyAndCircleContact
; alias: _ZN22b2PolyAndCircleContactC1EP7b2ShapeS1_
; demangled: b2PolyAndCircleContact::b2PolyAndCircleContact(b2Shape*, b2Shape*)
; decoder-mode: arm
007ebed0  70 40 2d e9                                      push {r4, r5, r6, lr}
007ebed4  34 50 9f e5                                      ldr r5, [pc, #0x34]
007ebed8  00 40 a0 e1                                      mov r4, r0
007ebedc  f5 f7 ff eb                                      bl #0x7e9eb8
007ebee0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007ebee4  05 50 8f e0                                      add r5, pc, r5
007ebee8  00 20 a0 e3                                      mov r2, #0
007ebeec  03 30 95 e7                                      ldr r3, [r5, r3]
007ebef0  00 10 a0 e3                                      mov r1, #0
007ebef4  90 10 84 e5                                      str r1, [r4, #0x90]
007ebef8  08 30 83 e2                                      add r3, r3, #8
007ebefc  00 30 84 e5                                      str r3, [r4]
007ebf00  60 20 84 e5                                      str r2, [r4, #0x60]
007ebf04  5c 20 84 e5                                      str r2, [r4, #0x5c]
007ebf08  04 00 a0 e1                                      mov r0, r4
007ebf0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007ebf10  ac 8b 1a 00 b8 3a 00 00                          .byte 0xac, 0x8b, 0x1a, 0x00, 0xb8, 0x3a, 0x00, 0x00

; FUNCTION 0x007ebf18, declared_size=72, range_size=72, mode=arm
; class-group: b2PolyAndCircleContact
; alias: _ZN22b2PolyAndCircleContactC2EP7b2ShapeS1_
; demangled: b2PolyAndCircleContact::b2PolyAndCircleContact(b2Shape*, b2Shape*)
; decoder-mode: arm
007ebf18  70 40 2d e9                                      push {r4, r5, r6, lr}
007ebf1c  34 50 9f e5                                      ldr r5, [pc, #0x34]
007ebf20  00 40 a0 e1                                      mov r4, r0
007ebf24  e3 f7 ff eb                                      bl #0x7e9eb8
007ebf28  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007ebf2c  05 50 8f e0                                      add r5, pc, r5
007ebf30  00 20 a0 e3                                      mov r2, #0
007ebf34  03 30 95 e7                                      ldr r3, [r5, r3]
007ebf38  00 10 a0 e3                                      mov r1, #0
007ebf3c  90 10 84 e5                                      str r1, [r4, #0x90]
007ebf40  08 30 83 e2                                      add r3, r3, #8
007ebf44  00 30 84 e5                                      str r3, [r4]
007ebf48  60 20 84 e5                                      str r2, [r4, #0x60]
007ebf4c  5c 20 84 e5                                      str r2, [r4, #0x5c]
007ebf50  04 00 a0 e1                                      mov r0, r4
007ebf54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007ebf58  64 8b 1a 00 b8 3a 00 00                          .byte 0x64, 0x8b, 0x1a, 0x00, 0xb8, 0x3a, 0x00, 0x00

; FUNCTION 0x007ebf60, declared_size=44, range_size=44, mode=arm
; class-group: b2PolyAndCircleContact
; alias: _ZN22b2PolyAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator
; demangled: b2PolyAndCircleContact::Destroy(b2Contact*, b2BlockAllocator*)
; decoder-mode: arm
007ebf60  70 40 2d e9                                      push {r4, r5, r6, lr}
007ebf64  00 30 90 e5                                      ldr r3, [r0]
007ebf68  01 50 a0 e1                                      mov r5, r1
007ebf6c  00 40 a0 e1                                      mov r4, r0
007ebf70  0f e0 a0 e1                                      mov lr, pc
007ebf74  04 f0 93 e5                                      ldr pc, [r3, #4]
007ebf78  05 00 a0 e1                                      mov r0, r5
007ebf7c  04 10 a0 e1                                      mov r1, r4
007ebf80  94 20 a0 e3                                      mov r2, #0x94
007ebf84  70 40 bd e8                                      pop {r4, r5, r6, lr}
007ebf88  84 f3 ff ea                                      b #0x7e8da0

; FUNCTION 0x007ebf8c, declared_size=48, range_size=48, mode=arm
; class-group: b2PolyAndCircleContact
; alias: _ZN22b2PolyAndCircleContact6CreateEP7b2ShapeS1_P16b2BlockAllocator
; demangled: b2PolyAndCircleContact::Create(b2Shape*, b2Shape*, b2BlockAllocator*)
; decoder-mode: arm
007ebf8c  70 40 2d e9                                      push {r4, r5, r6, lr}
007ebf90  00 60 a0 e1                                      mov r6, r0
007ebf94  01 50 a0 e1                                      mov r5, r1
007ebf98  02 00 a0 e1                                      mov r0, r2
007ebf9c  94 10 a0 e3                                      mov r1, #0x94
007ebfa0  45 f4 ff eb                                      bl #0x7e90bc
007ebfa4  06 10 a0 e1                                      mov r1, r6
007ebfa8  00 40 a0 e1                                      mov r4, r0
007ebfac  05 20 a0 e1                                      mov r2, r5
007ebfb0  c6 ff ff eb                                      bl #0x7ebed0
007ebfb4  04 00 a0 e1                                      mov r0, r4
007ebfb8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007ebfbc, declared_size=2772, range_size=2772, mode=arm
; class-group: b2PolyAndCircleContact
; alias: _ZN22b2PolyAndCircleContact8EvaluateEP17b2ContactListener
; demangled: b2PolyAndCircleContact::Evaluate(b2ContactListener*)
; decoder-mode: arm
007ebfbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ebfc0  ac d0 4d e2                                      sub sp, sp, #0xac
007ebfc4  34 c0 90 e5                                      ldr ip, [r0, #0x34]
007ebfc8  38 30 90 e5                                      ldr r3, [r0, #0x38]
007ebfcc  28 20 8d e2                                      add r2, sp, #0x28
007ebfd0  18 20 8d e5                                      str r2, [sp, #0x18]
007ebfd4  0c 40 9c e5                                      ldr r4, [ip, #0xc]
007ebfd8  0c 50 93 e5                                      ldr r5, [r3, #0xc]
007ebfdc  48 80 80 e2                                      add r8, r0, #0x48
007ebfe0  00 60 a0 e1                                      mov r6, r0
007ebfe4  4c 20 a0 e3                                      mov r2, #0x4c
007ebfe8  01 70 a0 e1                                      mov r7, r1
007ebfec  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ebff0  08 10 a0 e1                                      mov r1, r8
007ebff4  1b 8a ec eb                                      bl #0x30e868
007ebff8  34 10 96 e5                                      ldr r1, [r6, #0x34]
007ebffc  38 30 96 e5                                      ldr r3, [r6, #0x38]
007ec000  04 c0 85 e2                                      add ip, r5, #4
007ec004  08 00 a0 e1                                      mov r0, r8
007ec008  04 20 84 e2                                      add r2, r4, #4
007ec00c  00 c0 8d e5                                      str ip, [sp]
007ec010  03 21 00 eb                                      bl #0x7f4424
007ec014  90 c0 96 e5                                      ldr ip, [r6, #0x90]
007ec018  34 00 96 e5                                      ldr r0, [r6, #0x34]
007ec01c  38 10 96 e5                                      ldr r1, [r6, #0x38]
007ec020  3c 20 96 e5                                      ldr r2, [r6, #0x3c]
007ec024  40 30 96 e5                                      ldr r3, [r6, #0x40]
007ec028  00 b0 a0 e3                                      mov fp, #0
007ec02c  00 00 5c e3                                      cmp ip, #0
007ec030  74 00 8d e5                                      str r0, [sp, #0x74]
007ec034  78 10 8d e5                                      str r1, [sp, #0x78]
007ec038  98 20 8d e5                                      str r2, [sp, #0x98]
007ec03c  9c 30 8d e5                                      str r3, [sp, #0x9c]
007ec040  a4 b0 cd e5                                      strb fp, [sp, #0xa4]
007ec044  a5 b0 cd e5                                      strb fp, [sp, #0xa5]
007ec048  08 b0 86 d5                                      strle fp, [r6, #8]
007ec04c  f3 00 00 da                                      ble #0x7ec420
007ec050  74 10 8d e2                                      add r1, sp, #0x74
007ec054  06 a0 a0 e1                                      mov sl, r6
007ec058  24 10 8d e5                                      str r1, [sp, #0x24]
007ec05c  a4 80 8d e2                                      add r8, sp, #0xa4
007ec060  00 20 a0 e3                                      mov r2, #0
007ec064  5c 20 8a e5                                      str r2, [sl, #0x5c]
007ec068  60 20 8a e5                                      str r2, [sl, #0x60]
007ec06c  70 00 9d e5                                      ldr r0, [sp, #0x70]
007ec070  64 90 9a e5                                      ldr sb, [sl, #0x64]
007ec074  00 00 50 e3                                      cmp r0, #0
007ec078  0b 00 00 da                                      ble #0x7ec0ac
007ec07c  18 20 9d e5                                      ldr r2, [sp, #0x18]
007ec080  00 30 a0 e3                                      mov r3, #0
007ec084  03 10 d8 e7                                      ldrb r1, [r8, r3]
007ec088  00 00 51 e3                                      cmp r1, #0
007ec08c  02 00 00 1a                                      bne #0x7ec09c
007ec090  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
007ec094  09 00 51 e1                                      cmp r1, sb
007ec098  9d 01 00 0a                                      beq #0x7ec714
007ec09c  01 30 83 e2                                      add r3, r3, #1
007ec0a0  00 00 53 e1                                      cmp r3, r0
007ec0a4  20 20 82 e2                                      add r2, r2, #0x20
007ec0a8  f5 ff ff 1a                                      bne #0x7ec084
007ec0ac  00 00 57 e3                                      cmp r7, #0
007ec0b0  d3 00 00 0a                                      beq #0x7ec404
007ec0b4  48 20 9a e5                                      ldr r2, [sl, #0x48]
007ec0b8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ec0bc  02 00 a0 e1                                      mov r0, r2
007ec0c0  10 20 8d e5                                      str r2, [sp, #0x10]
007ec0c4  28 8b ec eb                                      bl #0x30ed6c
007ec0c8  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ec0cc  00 30 a0 e1                                      mov r3, r0
007ec0d0  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ec0d4  14 30 8d e5                                      str r3, [sp, #0x14]
007ec0d8  23 8b ec eb                                      bl #0x30ed6c
007ec0dc  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec0e0  00 10 a0 e1                                      mov r1, r0
007ec0e4  03 00 a0 e1                                      mov r0, r3
007ec0e8  ad 8a ec eb                                      bl #0x30eba4
007ec0ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec0f0  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ec0f4  00 c0 a0 e1                                      mov ip, r0
007ec0f8  02 00 a0 e1                                      mov r0, r2
007ec0fc  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec100  19 8b ec eb                                      bl #0x30ed6c
007ec104  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ec108  00 30 a0 e1                                      mov r3, r0
007ec10c  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ec110  14 30 8d e5                                      str r3, [sp, #0x14]
007ec114  14 8b ec eb                                      bl #0x30ed6c
007ec118  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec11c  00 10 a0 e1                                      mov r1, r0
007ec120  03 00 a0 e1                                      mov r0, r3
007ec124  9e 8a ec eb                                      bl #0x30eba4
007ec128  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec12c  04 10 94 e5                                      ldr r1, [r4, #4]
007ec130  00 30 a0 e1                                      mov r3, r0
007ec134  0c 00 a0 e1                                      mov r0, ip
007ec138  14 30 8d e5                                      str r3, [sp, #0x14]
007ec13c  98 8a ec eb                                      bl #0x30eba4
007ec140  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec144  08 10 94 e5                                      ldr r1, [r4, #8]
007ec148  00 20 a0 e1                                      mov r2, r0
007ec14c  03 00 a0 e1                                      mov r0, r3
007ec150  10 20 8d e5                                      str r2, [sp, #0x10]
007ec154  92 8a ec eb                                      bl #0x30eba4
007ec158  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec15c  80 00 8d e5                                      str r0, [sp, #0x80]
007ec160  7c 20 8d e5                                      str r2, [sp, #0x7c]
007ec164  48 20 9a e5                                      ldr r2, [sl, #0x48]
007ec168  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ec16c  02 00 a0 e1                                      mov r0, r2
007ec170  10 20 8d e5                                      str r2, [sp, #0x10]
007ec174  fc 8a ec eb                                      bl #0x30ed6c
007ec178  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ec17c  00 30 a0 e1                                      mov r3, r0
007ec180  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ec184  14 30 8d e5                                      str r3, [sp, #0x14]
007ec188  f7 8a ec eb                                      bl #0x30ed6c
007ec18c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec190  00 10 a0 e1                                      mov r1, r0
007ec194  03 00 a0 e1                                      mov r0, r3
007ec198  81 8a ec eb                                      bl #0x30eba4
007ec19c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec1a0  00 c0 a0 e1                                      mov ip, r0
007ec1a4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ec1a8  02 00 a0 e1                                      mov r0, r2
007ec1ac  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec1b0  ed 8a ec eb                                      bl #0x30ed6c
007ec1b4  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ec1b8  00 30 a0 e1                                      mov r3, r0
007ec1bc  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ec1c0  14 30 8d e5                                      str r3, [sp, #0x14]
007ec1c4  e8 8a ec eb                                      bl #0x30ed6c
007ec1c8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec1cc  00 10 a0 e1                                      mov r1, r0
007ec1d0  03 00 a0 e1                                      mov r0, r3
007ec1d4  72 8a ec eb                                      bl #0x30eba4
007ec1d8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec1dc  04 10 94 e5                                      ldr r1, [r4, #4]
007ec1e0  00 30 a0 e1                                      mov r3, r0
007ec1e4  0c 00 a0 e1                                      mov r0, ip
007ec1e8  14 30 8d e5                                      str r3, [sp, #0x14]
007ec1ec  6c 8a ec eb                                      bl #0x30eba4
007ec1f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec1f4  08 10 94 e5                                      ldr r1, [r4, #8]
007ec1f8  00 20 a0 e1                                      mov r2, r0
007ec1fc  03 00 a0 e1                                      mov r0, r3
007ec200  10 20 8d e5                                      str r2, [sp, #0x10]
007ec204  66 8a ec eb                                      bl #0x30eba4
007ec208  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec20c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ec210  00 c0 a0 e1                                      mov ip, r0
007ec214  02 00 a0 e1                                      mov r0, r2
007ec218  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec21c  62 88 ec eb                                      bl #0x30e3ac
007ec220  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec224  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ec228  00 30 a0 e1                                      mov r3, r0
007ec22c  0c 00 a0 e1                                      mov r0, ip
007ec230  14 30 8d e5                                      str r3, [sp, #0x14]
007ec234  5c 88 ec eb                                      bl #0x30e3ac
007ec238  48 20 94 e5                                      ldr r2, [r4, #0x48]
007ec23c  02 11 82 e2                                      add r1, r2, #0x80000000
007ec240  c9 8a ec eb                                      bl #0x30ed6c
007ec244  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec248  00 20 a0 e1                                      mov r2, r0
007ec24c  48 00 94 e5                                      ldr r0, [r4, #0x48]
007ec250  03 10 a0 e1                                      mov r1, r3
007ec254  10 20 8d e5                                      str r2, [sp, #0x10]
007ec258  c3 8a ec eb                                      bl #0x30ed6c
007ec25c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec260  40 10 94 e5                                      ldr r1, [r4, #0x40]
007ec264  00 30 a0 e1                                      mov r3, r0
007ec268  02 00 a0 e1                                      mov r0, r2
007ec26c  14 30 8d e5                                      str r3, [sp, #0x14]
007ec270  4b 8a ec eb                                      bl #0x30eba4
007ec274  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec278  1c 00 8d e5                                      str r0, [sp, #0x1c]
007ec27c  44 10 94 e5                                      ldr r1, [r4, #0x44]
007ec280  03 00 a0 e1                                      mov r0, r3
007ec284  46 8a ec eb                                      bl #0x30eba4
007ec288  20 00 8d e5                                      str r0, [sp, #0x20]
007ec28c  50 20 9a e5                                      ldr r2, [sl, #0x50]
007ec290  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ec294  02 00 a0 e1                                      mov r0, r2
007ec298  10 20 8d e5                                      str r2, [sp, #0x10]
007ec29c  b2 8a ec eb                                      bl #0x30ed6c
007ec2a0  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ec2a4  00 30 a0 e1                                      mov r3, r0
007ec2a8  54 00 9a e5                                      ldr r0, [sl, #0x54]
007ec2ac  14 30 8d e5                                      str r3, [sp, #0x14]
007ec2b0  ad 8a ec eb                                      bl #0x30ed6c
007ec2b4  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec2b8  00 10 a0 e1                                      mov r1, r0
007ec2bc  03 00 a0 e1                                      mov r0, r3
007ec2c0  37 8a ec eb                                      bl #0x30eba4
007ec2c4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec2c8  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ec2cc  00 c0 a0 e1                                      mov ip, r0
007ec2d0  02 00 a0 e1                                      mov r0, r2
007ec2d4  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec2d8  a3 8a ec eb                                      bl #0x30ed6c
007ec2dc  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ec2e0  00 30 a0 e1                                      mov r3, r0
007ec2e4  54 00 9a e5                                      ldr r0, [sl, #0x54]
007ec2e8  14 30 8d e5                                      str r3, [sp, #0x14]
007ec2ec  9e 8a ec eb                                      bl #0x30ed6c
007ec2f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec2f4  00 10 a0 e1                                      mov r1, r0
007ec2f8  03 00 a0 e1                                      mov r0, r3
007ec2fc  28 8a ec eb                                      bl #0x30eba4
007ec300  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec304  04 10 95 e5                                      ldr r1, [r5, #4]
007ec308  00 30 a0 e1                                      mov r3, r0
007ec30c  0c 00 a0 e1                                      mov r0, ip
007ec310  14 30 8d e5                                      str r3, [sp, #0x14]
007ec314  22 8a ec eb                                      bl #0x30eba4
007ec318  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec31c  08 10 95 e5                                      ldr r1, [r5, #8]
007ec320  00 20 a0 e1                                      mov r2, r0
007ec324  03 00 a0 e1                                      mov r0, r3
007ec328  10 20 8d e5                                      str r2, [sp, #0x10]
007ec32c  1c 8a ec eb                                      bl #0x30eba4
007ec330  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec334  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ec338  00 30 a0 e1                                      mov r3, r0
007ec33c  02 00 a0 e1                                      mov r0, r2
007ec340  14 30 8d e5                                      str r3, [sp, #0x14]
007ec344  18 88 ec eb                                      bl #0x30e3ac
007ec348  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec34c  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ec350  00 20 a0 e1                                      mov r2, r0
007ec354  03 00 a0 e1                                      mov r0, r3
007ec358  10 20 8d e5                                      str r2, [sp, #0x10]
007ec35c  12 88 ec eb                                      bl #0x30e3ac
007ec360  48 30 95 e5                                      ldr r3, [r5, #0x48]
007ec364  02 11 83 e2                                      add r1, r3, #0x80000000
007ec368  7f 8a ec eb                                      bl #0x30ed6c
007ec36c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec370  00 30 a0 e1                                      mov r3, r0
007ec374  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ec378  02 10 a0 e1                                      mov r1, r2
007ec37c  14 30 8d e5                                      str r3, [sp, #0x14]
007ec380  79 8a ec eb                                      bl #0x30ed6c
007ec384  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec388  00 20 a0 e1                                      mov r2, r0
007ec38c  40 10 95 e5                                      ldr r1, [r5, #0x40]
007ec390  03 00 a0 e1                                      mov r0, r3
007ec394  10 20 8d e5                                      str r2, [sp, #0x10]
007ec398  01 8a ec eb                                      bl #0x30eba4
007ec39c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec3a0  00 30 a0 e1                                      mov r3, r0
007ec3a4  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ec3a8  02 00 a0 e1                                      mov r0, r2
007ec3ac  14 30 8d e5                                      str r3, [sp, #0x14]
007ec3b0  fb 89 ec eb                                      bl #0x30eba4
007ec3b4  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ec3b8  fb 87 ec eb                                      bl #0x30e3ac
007ec3bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec3c0  88 00 8d e5                                      str r0, [sp, #0x88]
007ec3c4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ec3c8  03 00 a0 e1                                      mov r0, r3
007ec3cc  f6 87 ec eb                                      bl #0x30e3ac
007ec3d0  88 20 96 e5                                      ldr r2, [r6, #0x88]
007ec3d4  8c 30 96 e5                                      ldr r3, [r6, #0x8c]
007ec3d8  84 00 8d e5                                      str r0, [sp, #0x84]
007ec3dc  8c 20 8d e5                                      str r2, [sp, #0x8c]
007ec3e0  90 30 8d e5                                      str r3, [sp, #0x90]
007ec3e4  58 20 9a e5                                      ldr r2, [sl, #0x58]
007ec3e8  a0 90 8d e5                                      str sb, [sp, #0xa0]
007ec3ec  00 30 97 e5                                      ldr r3, [r7]
007ec3f0  07 00 a0 e1                                      mov r0, r7
007ec3f4  94 20 8d e5                                      str r2, [sp, #0x94]
007ec3f8  24 10 9d e5                                      ldr r1, [sp, #0x24]
007ec3fc  0f e0 a0 e1                                      mov lr, pc
007ec400  08 f0 93 e5                                      ldr pc, [r3, #8]
007ec404  90 30 96 e5                                      ldr r3, [r6, #0x90]
007ec408  01 b0 8b e2                                      add fp, fp, #1
007ec40c  20 a0 8a e2                                      add sl, sl, #0x20
007ec410  0b 00 53 e1                                      cmp r3, fp
007ec414  11 ff ff ca                                      bgt #0x7ec060
007ec418  01 30 a0 e3                                      mov r3, #1
007ec41c  08 30 86 e5                                      str r3, [r6, #8]
007ec420  00 00 57 e3                                      cmp r7, #0
007ec424  b8 00 00 0a                                      beq #0x7ec70c
007ec428  70 30 9d e5                                      ldr r3, [sp, #0x70]
007ec42c  00 00 53 e3                                      cmp r3, #0
007ec430  b5 00 00 da                                      ble #0x7ec70c
007ec434  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ec438  74 20 8d e2                                      add r2, sp, #0x74
007ec43c  00 80 a0 e3                                      mov r8, #0
007ec440  10 60 81 e2                                      add r6, r1, #0x10
007ec444  a4 c0 8d e2                                      add ip, sp, #0xa4
007ec448  18 20 8d e5                                      str r2, [sp, #0x18]
007ec44c  08 20 dc e7                                      ldrb r2, [ip, r8]
007ec450  00 00 52 e3                                      cmp r2, #0
007ec454  a8 00 00 1a                                      bne #0x7ec6fc
007ec458  10 90 16 e5                                      ldr sb, [r6, #-0x10]
007ec45c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ec460  0c a0 16 e5                                      ldr sl, [r6, #-0xc]
007ec464  09 00 a0 e1                                      mov r0, sb
007ec468  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec46c  3e 8a ec eb                                      bl #0x30ed6c
007ec470  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ec474  00 b0 a0 e1                                      mov fp, r0
007ec478  0a 00 a0 e1                                      mov r0, sl
007ec47c  3a 8a ec eb                                      bl #0x30ed6c
007ec480  00 10 a0 e1                                      mov r1, r0
007ec484  0b 00 a0 e1                                      mov r0, fp
007ec488  c5 89 ec eb                                      bl #0x30eba4
007ec48c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ec490  00 b0 a0 e1                                      mov fp, r0
007ec494  09 00 a0 e1                                      mov r0, sb
007ec498  33 8a ec eb                                      bl #0x30ed6c
007ec49c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ec4a0  00 90 a0 e1                                      mov sb, r0
007ec4a4  0a 00 a0 e1                                      mov r0, sl
007ec4a8  2f 8a ec eb                                      bl #0x30ed6c
007ec4ac  00 10 a0 e1                                      mov r1, r0
007ec4b0  09 00 a0 e1                                      mov r0, sb
007ec4b4  ba 89 ec eb                                      bl #0x30eba4
007ec4b8  04 10 94 e5                                      ldr r1, [r4, #4]
007ec4bc  00 a0 a0 e1                                      mov sl, r0
007ec4c0  0b 00 a0 e1                                      mov r0, fp
007ec4c4  b6 89 ec eb                                      bl #0x30eba4
007ec4c8  08 10 94 e5                                      ldr r1, [r4, #8]
007ec4cc  00 90 a0 e1                                      mov sb, r0
007ec4d0  0a 00 a0 e1                                      mov r0, sl
007ec4d4  b2 89 ec eb                                      bl #0x30eba4
007ec4d8  7c 90 8d e5                                      str sb, [sp, #0x7c]
007ec4dc  80 00 8d e5                                      str r0, [sp, #0x80]
007ec4e0  10 90 16 e5                                      ldr sb, [r6, #-0x10]
007ec4e4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ec4e8  0c a0 16 e5                                      ldr sl, [r6, #-0xc]
007ec4ec  09 00 a0 e1                                      mov r0, sb
007ec4f0  1d 8a ec eb                                      bl #0x30ed6c
007ec4f4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ec4f8  00 b0 a0 e1                                      mov fp, r0
007ec4fc  0a 00 a0 e1                                      mov r0, sl
007ec500  19 8a ec eb                                      bl #0x30ed6c
007ec504  00 10 a0 e1                                      mov r1, r0
007ec508  0b 00 a0 e1                                      mov r0, fp
007ec50c  a4 89 ec eb                                      bl #0x30eba4
007ec510  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ec514  00 b0 a0 e1                                      mov fp, r0
007ec518  09 00 a0 e1                                      mov r0, sb
007ec51c  12 8a ec eb                                      bl #0x30ed6c
007ec520  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ec524  00 90 a0 e1                                      mov sb, r0
007ec528  0a 00 a0 e1                                      mov r0, sl
007ec52c  0e 8a ec eb                                      bl #0x30ed6c
007ec530  00 10 a0 e1                                      mov r1, r0
007ec534  09 00 a0 e1                                      mov r0, sb
007ec538  99 89 ec eb                                      bl #0x30eba4
007ec53c  04 10 94 e5                                      ldr r1, [r4, #4]
007ec540  00 a0 a0 e1                                      mov sl, r0
007ec544  0b 00 a0 e1                                      mov r0, fp
007ec548  95 89 ec eb                                      bl #0x30eba4
007ec54c  08 10 94 e5                                      ldr r1, [r4, #8]
007ec550  00 b0 a0 e1                                      mov fp, r0
007ec554  0a 00 a0 e1                                      mov r0, sl
007ec558  91 89 ec eb                                      bl #0x30eba4
007ec55c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ec560  00 90 a0 e1                                      mov sb, r0
007ec564  0b 00 a0 e1                                      mov r0, fp
007ec568  8f 87 ec eb                                      bl #0x30e3ac
007ec56c  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007ec570  00 b0 a0 e1                                      mov fp, r0
007ec574  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ec578  09 00 a0 e1                                      mov r0, sb
007ec57c  8a 87 ec eb                                      bl #0x30e3ac
007ec580  02 11 8a e2                                      add r1, sl, #0x80000000
007ec584  f8 89 ec eb                                      bl #0x30ed6c
007ec588  0b 10 a0 e1                                      mov r1, fp
007ec58c  00 90 a0 e1                                      mov sb, r0
007ec590  0a 00 a0 e1                                      mov r0, sl
007ec594  f4 89 ec eb                                      bl #0x30ed6c
007ec598  40 10 94 e5                                      ldr r1, [r4, #0x40]
007ec59c  00 a0 a0 e1                                      mov sl, r0
007ec5a0  09 00 a0 e1                                      mov r0, sb
007ec5a4  7e 89 ec eb                                      bl #0x30eba4
007ec5a8  44 10 94 e5                                      ldr r1, [r4, #0x44]
007ec5ac  00 20 a0 e1                                      mov r2, r0
007ec5b0  0a 00 a0 e1                                      mov r0, sl
007ec5b4  10 20 8d e5                                      str r2, [sp, #0x10]
007ec5b8  79 89 ec eb                                      bl #0x30eba4
007ec5bc  08 90 16 e5                                      ldr sb, [r6, #-8]
007ec5c0  00 30 a0 e1                                      mov r3, r0
007ec5c4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ec5c8  09 00 a0 e1                                      mov r0, sb
007ec5cc  04 a0 16 e5                                      ldr sl, [r6, #-4]
007ec5d0  14 30 8d e5                                      str r3, [sp, #0x14]
007ec5d4  e4 89 ec eb                                      bl #0x30ed6c
007ec5d8  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ec5dc  00 b0 a0 e1                                      mov fp, r0
007ec5e0  0a 00 a0 e1                                      mov r0, sl
007ec5e4  e0 89 ec eb                                      bl #0x30ed6c
007ec5e8  00 10 a0 e1                                      mov r1, r0
007ec5ec  0b 00 a0 e1                                      mov r0, fp
007ec5f0  6b 89 ec eb                                      bl #0x30eba4
007ec5f4  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ec5f8  00 b0 a0 e1                                      mov fp, r0
007ec5fc  09 00 a0 e1                                      mov r0, sb
007ec600  d9 89 ec eb                                      bl #0x30ed6c
007ec604  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ec608  00 90 a0 e1                                      mov sb, r0
007ec60c  0a 00 a0 e1                                      mov r0, sl
007ec610  d5 89 ec eb                                      bl #0x30ed6c
007ec614  00 10 a0 e1                                      mov r1, r0
007ec618  09 00 a0 e1                                      mov r0, sb
007ec61c  60 89 ec eb                                      bl #0x30eba4
007ec620  04 10 95 e5                                      ldr r1, [r5, #4]
007ec624  00 a0 a0 e1                                      mov sl, r0
007ec628  0b 00 a0 e1                                      mov r0, fp
007ec62c  5c 89 ec eb                                      bl #0x30eba4
007ec630  08 10 95 e5                                      ldr r1, [r5, #8]
007ec634  00 b0 a0 e1                                      mov fp, r0
007ec638  0a 00 a0 e1                                      mov r0, sl
007ec63c  58 89 ec eb                                      bl #0x30eba4
007ec640  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ec644  00 90 a0 e1                                      mov sb, r0
007ec648  0b 00 a0 e1                                      mov r0, fp
007ec64c  56 87 ec eb                                      bl #0x30e3ac
007ec650  48 a0 95 e5                                      ldr sl, [r5, #0x48]
007ec654  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ec658  00 b0 a0 e1                                      mov fp, r0
007ec65c  09 00 a0 e1                                      mov r0, sb
007ec660  51 87 ec eb                                      bl #0x30e3ac
007ec664  02 11 8a e2                                      add r1, sl, #0x80000000
007ec668  bf 89 ec eb                                      bl #0x30ed6c
007ec66c  0b 10 a0 e1                                      mov r1, fp
007ec670  00 90 a0 e1                                      mov sb, r0
007ec674  0a 00 a0 e1                                      mov r0, sl
007ec678  bb 89 ec eb                                      bl #0x30ed6c
007ec67c  40 10 95 e5                                      ldr r1, [r5, #0x40]
007ec680  00 a0 a0 e1                                      mov sl, r0
007ec684  09 00 a0 e1                                      mov r0, sb
007ec688  45 89 ec eb                                      bl #0x30eba4
007ec68c  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ec690  00 90 a0 e1                                      mov sb, r0
007ec694  0a 00 a0 e1                                      mov r0, sl
007ec698  41 89 ec eb                                      bl #0x30eba4
007ec69c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec6a0  03 10 a0 e1                                      mov r1, r3
007ec6a4  40 87 ec eb                                      bl #0x30e3ac
007ec6a8  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec6ac  88 00 8d e5                                      str r0, [sp, #0x88]
007ec6b0  09 00 a0 e1                                      mov r0, sb
007ec6b4  02 10 a0 e1                                      mov r1, r2
007ec6b8  3b 87 ec eb                                      bl #0x30e3ac
007ec6bc  68 30 9d e5                                      ldr r3, [sp, #0x68]
007ec6c0  84 00 8d e5                                      str r0, [sp, #0x84]
007ec6c4  07 00 a0 e1                                      mov r0, r7
007ec6c8  8c 30 8d e5                                      str r3, [sp, #0x8c]
007ec6cc  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
007ec6d0  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ec6d4  90 30 8d e5                                      str r3, [sp, #0x90]
007ec6d8  00 20 96 e5                                      ldr r2, [r6]
007ec6dc  00 30 97 e5                                      ldr r3, [r7]
007ec6e0  94 20 8d e5                                      str r2, [sp, #0x94]
007ec6e4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
007ec6e8  a0 20 8d e5                                      str r2, [sp, #0xa0]
007ec6ec  0f e0 a0 e1                                      mov lr, pc
007ec6f0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007ec6f4  70 30 9d e5                                      ldr r3, [sp, #0x70]
007ec6f8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec6fc  01 80 88 e2                                      add r8, r8, #1
007ec700  08 00 53 e1                                      cmp r3, r8
007ec704  20 60 86 e2                                      add r6, r6, #0x20
007ec708  4f ff ff ca                                      bgt #0x7ec44c
007ec70c  ac d0 8d e2                                      add sp, sp, #0xac
007ec710  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ec714  a8 10 8d e2                                      add r1, sp, #0xa8
007ec718  03 30 81 e0                                      add r3, r1, r3
007ec71c  01 10 a0 e3                                      mov r1, #1
007ec720  04 10 43 e5                                      strb r1, [r3, #-4]
007ec724  14 30 92 e5                                      ldr r3, [r2, #0x14]
007ec728  00 00 57 e3                                      cmp r7, #0
007ec72c  5c 30 8a e5                                      str r3, [sl, #0x5c]
007ec730  18 30 92 e5                                      ldr r3, [r2, #0x18]
007ec734  60 30 8a e5                                      str r3, [sl, #0x60]
007ec738  31 ff ff 0a                                      beq #0x7ec404
007ec73c  48 20 9a e5                                      ldr r2, [sl, #0x48]
007ec740  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ec744  02 00 a0 e1                                      mov r0, r2
007ec748  10 20 8d e5                                      str r2, [sp, #0x10]
007ec74c  86 89 ec eb                                      bl #0x30ed6c
007ec750  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ec754  00 30 a0 e1                                      mov r3, r0
007ec758  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ec75c  14 30 8d e5                                      str r3, [sp, #0x14]
007ec760  81 89 ec eb                                      bl #0x30ed6c
007ec764  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec768  00 10 a0 e1                                      mov r1, r0
007ec76c  03 00 a0 e1                                      mov r0, r3
007ec770  0b 89 ec eb                                      bl #0x30eba4
007ec774  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec778  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ec77c  00 c0 a0 e1                                      mov ip, r0
007ec780  02 00 a0 e1                                      mov r0, r2
007ec784  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec788  77 89 ec eb                                      bl #0x30ed6c
007ec78c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ec790  00 30 a0 e1                                      mov r3, r0
007ec794  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ec798  14 30 8d e5                                      str r3, [sp, #0x14]
007ec79c  72 89 ec eb                                      bl #0x30ed6c
007ec7a0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec7a4  00 10 a0 e1                                      mov r1, r0
007ec7a8  03 00 a0 e1                                      mov r0, r3
007ec7ac  fc 88 ec eb                                      bl #0x30eba4
007ec7b0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec7b4  04 10 94 e5                                      ldr r1, [r4, #4]
007ec7b8  00 30 a0 e1                                      mov r3, r0
007ec7bc  0c 00 a0 e1                                      mov r0, ip
007ec7c0  14 30 8d e5                                      str r3, [sp, #0x14]
007ec7c4  f6 88 ec eb                                      bl #0x30eba4
007ec7c8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec7cc  08 10 94 e5                                      ldr r1, [r4, #8]
007ec7d0  00 20 a0 e1                                      mov r2, r0
007ec7d4  03 00 a0 e1                                      mov r0, r3
007ec7d8  10 20 8d e5                                      str r2, [sp, #0x10]
007ec7dc  f0 88 ec eb                                      bl #0x30eba4
007ec7e0  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec7e4  80 00 8d e5                                      str r0, [sp, #0x80]
007ec7e8  7c 20 8d e5                                      str r2, [sp, #0x7c]
007ec7ec  48 20 9a e5                                      ldr r2, [sl, #0x48]
007ec7f0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ec7f4  02 00 a0 e1                                      mov r0, r2
007ec7f8  10 20 8d e5                                      str r2, [sp, #0x10]
007ec7fc  5a 89 ec eb                                      bl #0x30ed6c
007ec800  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ec804  00 30 a0 e1                                      mov r3, r0
007ec808  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ec80c  14 30 8d e5                                      str r3, [sp, #0x14]
007ec810  55 89 ec eb                                      bl #0x30ed6c
007ec814  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec818  00 10 a0 e1                                      mov r1, r0
007ec81c  03 00 a0 e1                                      mov r0, r3
007ec820  df 88 ec eb                                      bl #0x30eba4
007ec824  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec828  00 c0 a0 e1                                      mov ip, r0
007ec82c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ec830  02 00 a0 e1                                      mov r0, r2
007ec834  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec838  4b 89 ec eb                                      bl #0x30ed6c
007ec83c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ec840  00 30 a0 e1                                      mov r3, r0
007ec844  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ec848  14 30 8d e5                                      str r3, [sp, #0x14]
007ec84c  46 89 ec eb                                      bl #0x30ed6c
007ec850  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec854  00 10 a0 e1                                      mov r1, r0
007ec858  03 00 a0 e1                                      mov r0, r3
007ec85c  d0 88 ec eb                                      bl #0x30eba4
007ec860  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec864  04 10 94 e5                                      ldr r1, [r4, #4]
007ec868  00 30 a0 e1                                      mov r3, r0
007ec86c  0c 00 a0 e1                                      mov r0, ip
007ec870  14 30 8d e5                                      str r3, [sp, #0x14]
007ec874  ca 88 ec eb                                      bl #0x30eba4
007ec878  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec87c  08 10 94 e5                                      ldr r1, [r4, #8]
007ec880  00 20 a0 e1                                      mov r2, r0
007ec884  03 00 a0 e1                                      mov r0, r3
007ec888  10 20 8d e5                                      str r2, [sp, #0x10]
007ec88c  c4 88 ec eb                                      bl #0x30eba4
007ec890  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec894  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ec898  00 c0 a0 e1                                      mov ip, r0
007ec89c  02 00 a0 e1                                      mov r0, r2
007ec8a0  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec8a4  c0 86 ec eb                                      bl #0x30e3ac
007ec8a8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec8ac  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ec8b0  00 30 a0 e1                                      mov r3, r0
007ec8b4  0c 00 a0 e1                                      mov r0, ip
007ec8b8  14 30 8d e5                                      str r3, [sp, #0x14]
007ec8bc  ba 86 ec eb                                      bl #0x30e3ac
007ec8c0  48 20 94 e5                                      ldr r2, [r4, #0x48]
007ec8c4  02 11 82 e2                                      add r1, r2, #0x80000000
007ec8c8  27 89 ec eb                                      bl #0x30ed6c
007ec8cc  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec8d0  00 20 a0 e1                                      mov r2, r0
007ec8d4  48 00 94 e5                                      ldr r0, [r4, #0x48]
007ec8d8  03 10 a0 e1                                      mov r1, r3
007ec8dc  10 20 8d e5                                      str r2, [sp, #0x10]
007ec8e0  21 89 ec eb                                      bl #0x30ed6c
007ec8e4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec8e8  40 10 94 e5                                      ldr r1, [r4, #0x40]
007ec8ec  00 30 a0 e1                                      mov r3, r0
007ec8f0  02 00 a0 e1                                      mov r0, r2
007ec8f4  14 30 8d e5                                      str r3, [sp, #0x14]
007ec8f8  a9 88 ec eb                                      bl #0x30eba4
007ec8fc  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec900  1c 00 8d e5                                      str r0, [sp, #0x1c]
007ec904  44 10 94 e5                                      ldr r1, [r4, #0x44]
007ec908  03 00 a0 e1                                      mov r0, r3
007ec90c  a4 88 ec eb                                      bl #0x30eba4
007ec910  20 00 8d e5                                      str r0, [sp, #0x20]
007ec914  50 20 9a e5                                      ldr r2, [sl, #0x50]
007ec918  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ec91c  02 00 a0 e1                                      mov r0, r2
007ec920  10 20 8d e5                                      str r2, [sp, #0x10]
007ec924  10 89 ec eb                                      bl #0x30ed6c
007ec928  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ec92c  00 30 a0 e1                                      mov r3, r0
007ec930  54 00 9a e5                                      ldr r0, [sl, #0x54]
007ec934  14 30 8d e5                                      str r3, [sp, #0x14]
007ec938  0b 89 ec eb                                      bl #0x30ed6c
007ec93c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec940  00 10 a0 e1                                      mov r1, r0
007ec944  03 00 a0 e1                                      mov r0, r3
007ec948  95 88 ec eb                                      bl #0x30eba4
007ec94c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec950  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ec954  00 c0 a0 e1                                      mov ip, r0
007ec958  02 00 a0 e1                                      mov r0, r2
007ec95c  0c c0 8d e5                                      str ip, [sp, #0xc]
007ec960  01 89 ec eb                                      bl #0x30ed6c
007ec964  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ec968  00 30 a0 e1                                      mov r3, r0
007ec96c  54 00 9a e5                                      ldr r0, [sl, #0x54]
007ec970  14 30 8d e5                                      str r3, [sp, #0x14]
007ec974  fc 88 ec eb                                      bl #0x30ed6c
007ec978  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec97c  00 10 a0 e1                                      mov r1, r0
007ec980  03 00 a0 e1                                      mov r0, r3
007ec984  86 88 ec eb                                      bl #0x30eba4
007ec988  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ec98c  04 10 95 e5                                      ldr r1, [r5, #4]
007ec990  00 30 a0 e1                                      mov r3, r0
007ec994  0c 00 a0 e1                                      mov r0, ip
007ec998  14 30 8d e5                                      str r3, [sp, #0x14]
007ec99c  80 88 ec eb                                      bl #0x30eba4
007ec9a0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec9a4  08 10 95 e5                                      ldr r1, [r5, #8]
007ec9a8  00 20 a0 e1                                      mov r2, r0
007ec9ac  03 00 a0 e1                                      mov r0, r3
007ec9b0  10 20 8d e5                                      str r2, [sp, #0x10]
007ec9b4  7a 88 ec eb                                      bl #0x30eba4
007ec9b8  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec9bc  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ec9c0  00 30 a0 e1                                      mov r3, r0
007ec9c4  02 00 a0 e1                                      mov r0, r2
007ec9c8  14 30 8d e5                                      str r3, [sp, #0x14]
007ec9cc  76 86 ec eb                                      bl #0x30e3ac
007ec9d0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ec9d4  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ec9d8  00 20 a0 e1                                      mov r2, r0
007ec9dc  03 00 a0 e1                                      mov r0, r3
007ec9e0  10 20 8d e5                                      str r2, [sp, #0x10]
007ec9e4  70 86 ec eb                                      bl #0x30e3ac
007ec9e8  48 30 95 e5                                      ldr r3, [r5, #0x48]
007ec9ec  02 11 83 e2                                      add r1, r3, #0x80000000
007ec9f0  dd 88 ec eb                                      bl #0x30ed6c
007ec9f4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ec9f8  00 30 a0 e1                                      mov r3, r0
007ec9fc  48 00 95 e5                                      ldr r0, [r5, #0x48]
007eca00  02 10 a0 e1                                      mov r1, r2
007eca04  14 30 8d e5                                      str r3, [sp, #0x14]
007eca08  d7 88 ec eb                                      bl #0x30ed6c
007eca0c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007eca10  40 10 95 e5                                      ldr r1, [r5, #0x40]
007eca14  00 20 a0 e1                                      mov r2, r0
007eca18  03 00 a0 e1                                      mov r0, r3
007eca1c  10 20 8d e5                                      str r2, [sp, #0x10]
007eca20  5f 88 ec eb                                      bl #0x30eba4
007eca24  10 20 9d e5                                      ldr r2, [sp, #0x10]
007eca28  00 30 a0 e1                                      mov r3, r0
007eca2c  44 10 95 e5                                      ldr r1, [r5, #0x44]
007eca30  02 00 a0 e1                                      mov r0, r2
007eca34  14 30 8d e5                                      str r3, [sp, #0x14]
007eca38  59 88 ec eb                                      bl #0x30eba4
007eca3c  20 10 9d e5                                      ldr r1, [sp, #0x20]
007eca40  59 86 ec eb                                      bl #0x30e3ac
007eca44  14 30 9d e5                                      ldr r3, [sp, #0x14]
007eca48  88 00 8d e5                                      str r0, [sp, #0x88]
007eca4c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007eca50  03 00 a0 e1                                      mov r0, r3
007eca54  54 86 ec eb                                      bl #0x30e3ac
007eca58  88 20 96 e5                                      ldr r2, [r6, #0x88]
007eca5c  8c 30 96 e5                                      ldr r3, [r6, #0x8c]
007eca60  84 00 8d e5                                      str r0, [sp, #0x84]
007eca64  8c 20 8d e5                                      str r2, [sp, #0x8c]
007eca68  90 30 8d e5                                      str r3, [sp, #0x90]
007eca6c  58 20 9a e5                                      ldr r2, [sl, #0x58]
007eca70  a0 90 8d e5                                      str sb, [sp, #0xa0]
007eca74  00 30 97 e5                                      ldr r3, [r7]
007eca78  07 00 a0 e1                                      mov r0, r7
007eca7c  94 20 8d e5                                      str r2, [sp, #0x94]
007eca80  24 10 9d e5                                      ldr r1, [sp, #0x24]
007eca84  0f e0 a0 e1                                      mov lr, pc
007eca88  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007eca8c  5c fe ff ea                                      b #0x7ec404
