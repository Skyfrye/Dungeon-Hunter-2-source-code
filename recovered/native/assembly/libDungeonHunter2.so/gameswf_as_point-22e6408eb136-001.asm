; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a4168, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_point
; alias: _ZNK7gameswf8as_point2isEi
; demangled: gameswf::as_point::is(int) const
; decoder-mode: arm
007a4168  19 00 51 e3                                      cmp r1, #0x19
007a416c  01 00 a0 03                                      moveq r0, #1
007a4170  1e ff 2f 01                                      bxeq lr
007a4174  01 00 71 e2                                      rsbs r0, r1, #1
007a4178  00 00 a0 33                                      movlo r0, #0
007a417c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a41b4, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_point
; alias: _ZN7gameswf8as_pointD1Ev
; demangled: gameswf::as_point::~as_point()
; decoder-mode: arm
007a41b4  24 30 9f e5                                      ldr r3, [pc, #0x24]
007a41b8  24 20 9f e5                                      ldr r2, [pc, #0x24]
007a41bc  10 40 2d e9                                      push {r4, lr}
007a41c0  03 30 8f e0                                      add r3, pc, r3
007a41c4  02 20 93 e7                                      ldr r2, [r3, r2]
007a41c8  00 40 a0 e1                                      mov r4, r0
007a41cc  08 20 82 e2                                      add r2, r2, #8
007a41d0  00 20 80 e5                                      str r2, [r0]
007a41d4  30 16 ff eb                                      bl #0x769a9c
007a41d8  04 00 a0 e1                                      mov r0, r4
007a41dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a41e0  d0 08 1f 00 90 3c 00 00                          .byte 0xd0, 0x08, 0x1f, 0x00, 0x90, 0x3c, 0x00, 0x00

; FUNCTION 0x007a41e8, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::as_point
; alias: _ZN7gameswf8as_point10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_point::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
007a41e8  70 40 2d e9                                      push {r4, r5, r6, lr}
007a41ec  d0 30 d1 e1                                      ldrsb r3, [r1]
007a41f0  00 50 a0 e1                                      mov r5, r0
007a41f4  01 40 a0 e1                                      mov r4, r1
007a41f8  01 00 73 e3                                      cmn r3, #1
007a41fc  01 00 81 12                                      addne r0, r1, #1
007a4200  0c 00 91 05                                      ldreq r0, [r1, #0xc]
007a4204  98 10 9f e5                                      ldr r1, [pc, #0x98]
007a4208  02 60 a0 e1                                      mov r6, r2
007a420c  01 10 8f e0                                      add r1, pc, r1
007a4210  be b6 fe eb                                      bl #0x751d10
007a4214  00 00 50 e3                                      cmp r0, #0
007a4218  38 00 95 05                                      ldreq r0, [r5, #0x38]
007a421c  19 00 00 0a                                      beq #0x7a4288
007a4220  d0 30 d4 e1                                      ldrsb r3, [r4]
007a4224  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
007a4228  01 00 73 e3                                      cmn r3, #1
007a422c  01 00 84 12                                      addne r0, r4, #1
007a4230  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007a4234  01 10 8f e0                                      add r1, pc, r1
007a4238  b4 b6 fe eb                                      bl #0x751d10
007a423c  00 00 50 e3                                      cmp r0, #0
007a4240  3c 00 95 05                                      ldreq r0, [r5, #0x3c]
007a4244  0f 00 00 0a                                      beq #0x7a4288
007a4248  d0 30 d4 e1                                      ldrsb r3, [r4]
007a424c  58 10 9f e5                                      ldr r1, [pc, #0x58]
007a4250  01 00 73 e3                                      cmn r3, #1
007a4254  01 00 84 12                                      addne r0, r4, #1
007a4258  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007a425c  01 10 8f e0                                      add r1, pc, r1
007a4260  aa b6 fe eb                                      bl #0x751d10
007a4264  00 00 50 e3                                      cmp r0, #0
007a4268  04 00 00 0a                                      beq #0x7a4280
007a426c  05 00 a0 e1                                      mov r0, r5
007a4270  04 10 a0 e1                                      mov r1, r4
007a4274  06 20 a0 e1                                      mov r2, r6
007a4278  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a427c  b4 13 ff ea                                      b #0x769154
007a4280  38 00 85 e2                                      add r0, r5, #0x38
007a4284  f6 c9 ff eb                                      bl #0x796a64
007a4288  85 a9 ed eb                                      bl #0x30e8a4
007a428c  00 20 a0 e1                                      mov r2, r0
007a4290  01 30 a0 e1                                      mov r3, r1
007a4294  06 00 a0 e1                                      mov r0, r6
007a4298  7a cc ff eb                                      bl #0x797488
007a429c  01 00 a0 e3                                      mov r0, #1
007a42a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a42a4  fc 30 14 00 cc 0b 16 00 7c 5c 14 00              .byte 0xfc, 0x30, 0x14, 0x00, 0xcc, 0x0b, 0x16, 0x00, 0x7c, 0x5c, 0x14, 0x00

; FUNCTION 0x007a42b0, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::as_point
; alias: _ZN7gameswf8as_point10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_point::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
007a42b0  70 40 2d e9                                      push {r4, r5, r6, lr}
007a42b4  d0 30 d1 e1                                      ldrsb r3, [r1]
007a42b8  00 50 a0 e1                                      mov r5, r0
007a42bc  01 40 a0 e1                                      mov r4, r1
007a42c0  01 00 73 e3                                      cmn r3, #1
007a42c4  01 00 81 12                                      addne r0, r1, #1
007a42c8  0c 00 91 05                                      ldreq r0, [r1, #0xc]
007a42cc  78 10 9f e5                                      ldr r1, [pc, #0x78]
007a42d0  02 60 a0 e1                                      mov r6, r2
007a42d4  01 10 8f e0                                      add r1, pc, r1
007a42d8  8c b6 fe eb                                      bl #0x751d10
007a42dc  00 00 50 e3                                      cmp r0, #0
007a42e0  13 00 00 0a                                      beq #0x7a4334
007a42e4  d0 30 d4 e1                                      ldrsb r3, [r4]
007a42e8  60 10 9f e5                                      ldr r1, [pc, #0x60]
007a42ec  01 00 73 e3                                      cmn r3, #1
007a42f0  01 00 84 12                                      addne r0, r4, #1
007a42f4  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007a42f8  01 10 8f e0                                      add r1, pc, r1
007a42fc  83 b6 fe eb                                      bl #0x751d10
007a4300  00 00 50 e3                                      cmp r0, #0
007a4304  04 00 00 0a                                      beq #0x7a431c
007a4308  05 00 a0 e1                                      mov r0, r5
007a430c  04 10 a0 e1                                      mov r1, r4
007a4310  06 20 a0 e1                                      mov r2, r6
007a4314  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a4318  b0 1f ff ea                                      b #0x76c1e0
007a431c  06 00 a0 e1                                      mov r0, r6
007a4320  cb cd ff eb                                      bl #0x797a54
007a4324  dd a8 ed eb                                      bl #0x30e6a0
007a4328  3c 00 85 e5                                      str r0, [r5, #0x3c]
007a432c  01 00 a0 e3                                      mov r0, #1
007a4330  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a4334  06 00 a0 e1                                      mov r0, r6
007a4338  c5 cd ff eb                                      bl #0x797a54
007a433c  d7 a8 ed eb                                      bl #0x30e6a0
007a4340  38 00 85 e5                                      str r0, [r5, #0x38]
007a4344  01 00 a0 e3                                      mov r0, #1
007a4348  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a434c  34 30 14 00 08 0b 16 00                          .byte 0x34, 0x30, 0x14, 0x00, 0x08, 0x0b, 0x16, 0x00

; FUNCTION 0x007a4410, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_point
; alias: _ZN7gameswf8as_pointD0Ev
; demangled: gameswf::as_point::~as_point()
; decoder-mode: arm
007a4410  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007a4414  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007a4418  10 40 2d e9                                      push {r4, lr}
007a441c  03 30 8f e0                                      add r3, pc, r3
007a4420  02 20 93 e7                                      ldr r2, [r3, r2]
007a4424  00 40 a0 e1                                      mov r4, r0
007a4428  08 20 82 e2                                      add r2, r2, #8
007a442c  00 20 80 e5                                      str r2, [r0]
007a4430  99 15 ff eb                                      bl #0x769a9c
007a4434  04 00 a0 e1                                      mov r0, r4
007a4438  9c a7 ed eb                                      bl #0x30e2b0
007a443c  04 00 a0 e1                                      mov r0, r4
007a4440  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a4444  74 06 1f 00 90 3c 00 00                          .byte 0x74, 0x06, 0x1f, 0x00, 0x90, 0x3c, 0x00, 0x00

; FUNCTION 0x007a444c, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::as_point
; alias: _ZN7gameswf8as_pointC1EPNS_6playerEff
; demangled: gameswf::as_point::as_point(gameswf::player*, float, float)
; decoder-mode: arm
007a444c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a4450  98 41 9f e5                                      ldr r4, [pc, #0x198]
007a4454  98 51 9f e5                                      ldr r5, [pc, #0x198]
007a4458  03 80 a0 e1                                      mov r8, r3
007a445c  04 40 8f e0                                      add r4, pc, r4
007a4460  05 30 94 e7                                      ldr r3, [r4, r5]
007a4464  68 d0 4d e2                                      sub sp, sp, #0x68
007a4468  00 60 a0 e1                                      mov r6, r0
007a446c  00 30 93 e5                                      ldr r3, [r3]
007a4470  02 90 a0 e1                                      mov sb, r2
007a4474  50 a0 8d e2                                      add sl, sp, #0x50
007a4478  64 30 8d e5                                      str r3, [sp, #0x64]
007a447c  17 1e ff eb                                      bl #0x76bce0
007a4480  70 31 9f e5                                      ldr r3, [pc, #0x170]
007a4484  70 11 9f e5                                      ldr r1, [pc, #0x170]
007a4488  38 90 86 e5                                      str sb, [r6, #0x38]
007a448c  03 30 94 e7                                      ldr r3, [r4, r3]
007a4490  01 10 8f e0                                      add r1, pc, r1
007a4494  3c 80 86 e5                                      str r8, [r6, #0x3c]
007a4498  08 30 83 e2                                      add r3, r3, #8
007a449c  00 30 86 e5                                      str r3, [r6]
007a44a0  0a 00 a0 e1                                      mov r0, sl
007a44a4  74 bd f1 eb                                      bl #0x413a7c
007a44a8  50 21 9f e5                                      ldr r2, [pc, #0x150]
007a44ac  1c 70 8d e2                                      add r7, sp, #0x1c
007a44b0  00 30 a0 e3                                      mov r3, #0
007a44b4  02 10 94 e7                                      ldr r1, [r4, r2]
007a44b8  07 00 a0 e1                                      mov r0, r7
007a44bc  1d 30 cd e5                                      strb r3, [sp, #0x1d]
007a44c0  1c 30 cd e5                                      strb r3, [sp, #0x1c]
007a44c4  75 cb ff eb                                      bl #0x7972a0
007a44c8  06 00 a0 e1                                      mov r0, r6
007a44cc  0a 10 a0 e1                                      mov r1, sl
007a44d0  07 20 a0 e1                                      mov r2, r7
007a44d4  9e 11 ff eb                                      bl #0x768b54
007a44d8  07 00 a0 e1                                      mov r0, r7
007a44dc  10 cb ff eb                                      bl #0x797124
007a44e0  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007a44e4  01 00 73 e3                                      cmn r3, #1
007a44e8  33 00 00 0a                                      beq #0x7a45bc
007a44ec  10 11 9f e5                                      ldr r1, [pc, #0x110]
007a44f0  3c 80 8d e2                                      add r8, sp, #0x3c
007a44f4  08 00 a0 e1                                      mov r0, r8
007a44f8  01 10 8f e0                                      add r1, pc, r1
007a44fc  5e bd f1 eb                                      bl #0x413a7c
007a4500  00 21 9f e5                                      ldr r2, [pc, #0x100]
007a4504  10 70 8d e2                                      add r7, sp, #0x10
007a4508  00 30 a0 e3                                      mov r3, #0
007a450c  02 10 94 e7                                      ldr r1, [r4, r2]
007a4510  07 00 a0 e1                                      mov r0, r7
007a4514  11 30 cd e5                                      strb r3, [sp, #0x11]
007a4518  10 30 cd e5                                      strb r3, [sp, #0x10]
007a451c  5f cb ff eb                                      bl #0x7972a0
007a4520  06 00 a0 e1                                      mov r0, r6
007a4524  08 10 a0 e1                                      mov r1, r8
007a4528  07 20 a0 e1                                      mov r2, r7
007a452c  88 11 ff eb                                      bl #0x768b54
007a4530  07 00 a0 e1                                      mov r0, r7
007a4534  fa ca ff eb                                      bl #0x797124
007a4538  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
007a453c  01 00 73 e3                                      cmn r3, #1
007a4540  21 00 00 0a                                      beq #0x7a45cc
007a4544  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
007a4548  28 80 8d e2                                      add r8, sp, #0x28
007a454c  08 00 a0 e1                                      mov r0, r8
007a4550  01 10 8f e0                                      add r1, pc, r1
007a4554  48 bd f1 eb                                      bl #0x413a7c
007a4558  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
007a455c  04 70 8d e2                                      add r7, sp, #4
007a4560  00 30 a0 e3                                      mov r3, #0
007a4564  02 10 94 e7                                      ldr r1, [r4, r2]
007a4568  07 00 a0 e1                                      mov r0, r7
007a456c  05 30 cd e5                                      strb r3, [sp, #5]
007a4570  04 30 cd e5                                      strb r3, [sp, #4]
007a4574  49 cb ff eb                                      bl #0x7972a0
007a4578  06 00 a0 e1                                      mov r0, r6
007a457c  08 10 a0 e1                                      mov r1, r8
007a4580  07 20 a0 e1                                      mov r2, r7
007a4584  72 11 ff eb                                      bl #0x768b54
007a4588  07 00 a0 e1                                      mov r0, r7
007a458c  e4 ca ff eb                                      bl #0x797124
007a4590  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
007a4594  01 00 73 e3                                      cmn r3, #1
007a4598  0f 00 00 0a                                      beq #0x7a45dc
007a459c  05 30 94 e7                                      ldr r3, [r4, r5]
007a45a0  64 20 9d e5                                      ldr r2, [sp, #0x64]
007a45a4  06 00 a0 e1                                      mov r0, r6
007a45a8  00 30 93 e5                                      ldr r3, [r3]
007a45ac  03 00 52 e1                                      cmp r2, r3
007a45b0  0d 00 00 1a                                      bne #0x7a45ec
007a45b4  68 d0 8d e2                                      add sp, sp, #0x68
007a45b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007a45bc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
007a45c0  58 10 9d e5                                      ldr r1, [sp, #0x58]
007a45c4  5b b9 fe eb                                      bl #0x752b38
007a45c8  c7 ff ff ea                                      b #0x7a44ec
007a45cc  48 00 9d e5                                      ldr r0, [sp, #0x48]
007a45d0  44 10 9d e5                                      ldr r1, [sp, #0x44]
007a45d4  57 b9 fe eb                                      bl #0x752b38
007a45d8  d9 ff ff ea                                      b #0x7a4544
007a45dc  34 00 9d e5                                      ldr r0, [sp, #0x34]
007a45e0  30 10 9d e5                                      ldr r1, [sp, #0x30]
007a45e4  53 b9 fe eb                                      bl #0x752b38
007a45e8  eb ff ff ea                                      b #0x7a459c
007a45ec  47 a7 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a45f0  34 06 1f 00 ac 40 00 00 90 3c 00 00 a0 61 16 00  .byte 0x34, 0x06, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0x3c, 0x00, 0x00, 0xa0, 0x61, 0x16, 0x00
007a4600  ec 2f 00 00 40 61 16 00 14 36 00 00 f8 60 16 00  .byte 0xec, 0x2f, 0x00, 0x00, 0x40, 0x61, 0x16, 0x00, 0x14, 0x36, 0x00, 0x00, 0xf8, 0x60, 0x16, 0x00
007a4610  b8 3d 00 00                                      .byte 0xb8, 0x3d, 0x00, 0x00

; FUNCTION 0x007a48c0, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::as_point
; alias: _ZN7gameswf8as_pointC2EPNS_6playerEff
; demangled: gameswf::as_point::as_point(gameswf::player*, float, float)
; decoder-mode: arm
007a48c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a48c4  98 41 9f e5                                      ldr r4, [pc, #0x198]
007a48c8  98 51 9f e5                                      ldr r5, [pc, #0x198]
007a48cc  03 80 a0 e1                                      mov r8, r3
007a48d0  04 40 8f e0                                      add r4, pc, r4
007a48d4  05 30 94 e7                                      ldr r3, [r4, r5]
007a48d8  68 d0 4d e2                                      sub sp, sp, #0x68
007a48dc  00 60 a0 e1                                      mov r6, r0
007a48e0  00 30 93 e5                                      ldr r3, [r3]
007a48e4  02 90 a0 e1                                      mov sb, r2
007a48e8  50 a0 8d e2                                      add sl, sp, #0x50
007a48ec  64 30 8d e5                                      str r3, [sp, #0x64]
007a48f0  fa 1c ff eb                                      bl #0x76bce0
007a48f4  70 31 9f e5                                      ldr r3, [pc, #0x170]
007a48f8  70 11 9f e5                                      ldr r1, [pc, #0x170]
007a48fc  38 90 86 e5                                      str sb, [r6, #0x38]
007a4900  03 30 94 e7                                      ldr r3, [r4, r3]
007a4904  01 10 8f e0                                      add r1, pc, r1
007a4908  3c 80 86 e5                                      str r8, [r6, #0x3c]
007a490c  08 30 83 e2                                      add r3, r3, #8
007a4910  00 30 86 e5                                      str r3, [r6]
007a4914  0a 00 a0 e1                                      mov r0, sl
007a4918  57 bc f1 eb                                      bl #0x413a7c
007a491c  50 21 9f e5                                      ldr r2, [pc, #0x150]
007a4920  1c 70 8d e2                                      add r7, sp, #0x1c
007a4924  00 30 a0 e3                                      mov r3, #0
007a4928  02 10 94 e7                                      ldr r1, [r4, r2]
007a492c  07 00 a0 e1                                      mov r0, r7
007a4930  1d 30 cd e5                                      strb r3, [sp, #0x1d]
007a4934  1c 30 cd e5                                      strb r3, [sp, #0x1c]
007a4938  58 ca ff eb                                      bl #0x7972a0
007a493c  06 00 a0 e1                                      mov r0, r6
007a4940  0a 10 a0 e1                                      mov r1, sl
007a4944  07 20 a0 e1                                      mov r2, r7
007a4948  81 10 ff eb                                      bl #0x768b54
007a494c  07 00 a0 e1                                      mov r0, r7
007a4950  f3 c9 ff eb                                      bl #0x797124
007a4954  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007a4958  01 00 73 e3                                      cmn r3, #1
007a495c  33 00 00 0a                                      beq #0x7a4a30
007a4960  10 11 9f e5                                      ldr r1, [pc, #0x110]
007a4964  3c 80 8d e2                                      add r8, sp, #0x3c
007a4968  08 00 a0 e1                                      mov r0, r8
007a496c  01 10 8f e0                                      add r1, pc, r1
007a4970  41 bc f1 eb                                      bl #0x413a7c
007a4974  00 21 9f e5                                      ldr r2, [pc, #0x100]
007a4978  10 70 8d e2                                      add r7, sp, #0x10
007a497c  00 30 a0 e3                                      mov r3, #0
007a4980  02 10 94 e7                                      ldr r1, [r4, r2]
007a4984  07 00 a0 e1                                      mov r0, r7
007a4988  11 30 cd e5                                      strb r3, [sp, #0x11]
007a498c  10 30 cd e5                                      strb r3, [sp, #0x10]
007a4990  42 ca ff eb                                      bl #0x7972a0
007a4994  06 00 a0 e1                                      mov r0, r6
007a4998  08 10 a0 e1                                      mov r1, r8
007a499c  07 20 a0 e1                                      mov r2, r7
007a49a0  6b 10 ff eb                                      bl #0x768b54
007a49a4  07 00 a0 e1                                      mov r0, r7
007a49a8  dd c9 ff eb                                      bl #0x797124
007a49ac  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
007a49b0  01 00 73 e3                                      cmn r3, #1
007a49b4  21 00 00 0a                                      beq #0x7a4a40
007a49b8  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
007a49bc  28 80 8d e2                                      add r8, sp, #0x28
007a49c0  08 00 a0 e1                                      mov r0, r8
007a49c4  01 10 8f e0                                      add r1, pc, r1
007a49c8  2b bc f1 eb                                      bl #0x413a7c
007a49cc  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
007a49d0  04 70 8d e2                                      add r7, sp, #4
007a49d4  00 30 a0 e3                                      mov r3, #0
007a49d8  02 10 94 e7                                      ldr r1, [r4, r2]
007a49dc  07 00 a0 e1                                      mov r0, r7
007a49e0  05 30 cd e5                                      strb r3, [sp, #5]
007a49e4  04 30 cd e5                                      strb r3, [sp, #4]
007a49e8  2c ca ff eb                                      bl #0x7972a0
007a49ec  06 00 a0 e1                                      mov r0, r6
007a49f0  08 10 a0 e1                                      mov r1, r8
007a49f4  07 20 a0 e1                                      mov r2, r7
007a49f8  55 10 ff eb                                      bl #0x768b54
007a49fc  07 00 a0 e1                                      mov r0, r7
007a4a00  c7 c9 ff eb                                      bl #0x797124
007a4a04  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
007a4a08  01 00 73 e3                                      cmn r3, #1
007a4a0c  0f 00 00 0a                                      beq #0x7a4a50
007a4a10  05 30 94 e7                                      ldr r3, [r4, r5]
007a4a14  64 20 9d e5                                      ldr r2, [sp, #0x64]
007a4a18  06 00 a0 e1                                      mov r0, r6
007a4a1c  00 30 93 e5                                      ldr r3, [r3]
007a4a20  03 00 52 e1                                      cmp r2, r3
007a4a24  0d 00 00 1a                                      bne #0x7a4a60
007a4a28  68 d0 8d e2                                      add sp, sp, #0x68
007a4a2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007a4a30  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
007a4a34  58 10 9d e5                                      ldr r1, [sp, #0x58]
007a4a38  3e b8 fe eb                                      bl #0x752b38
007a4a3c  c7 ff ff ea                                      b #0x7a4960
007a4a40  48 00 9d e5                                      ldr r0, [sp, #0x48]
007a4a44  44 10 9d e5                                      ldr r1, [sp, #0x44]
007a4a48  3a b8 fe eb                                      bl #0x752b38
007a4a4c  d9 ff ff ea                                      b #0x7a49b8
007a4a50  34 00 9d e5                                      ldr r0, [sp, #0x34]
007a4a54  30 10 9d e5                                      ldr r1, [sp, #0x30]
007a4a58  36 b8 fe eb                                      bl #0x752b38
007a4a5c  eb ff ff ea                                      b #0x7a4a10
007a4a60  2a a6 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a4a64  c0 01 1f 00 ac 40 00 00 90 3c 00 00 2c 5d 16 00  .byte 0xc0, 0x01, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0x3c, 0x00, 0x00, 0x2c, 0x5d, 0x16, 0x00
007a4a74  ec 2f 00 00 cc 5c 16 00 14 36 00 00 84 5c 16 00  .byte 0xec, 0x2f, 0x00, 0x00, 0xcc, 0x5c, 0x16, 0x00, 0x14, 0x36, 0x00, 0x00, 0x84, 0x5c, 0x16, 0x00
007a4a84  b8 3d 00 00                                      .byte 0xb8, 0x3d, 0x00, 0x00
