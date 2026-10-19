; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d4238, declared_size=224, range_size=224, mode=arm
; class-group: Structs::Loot
; alias: _ZN7Structs4Loot8finalizeEv
; demangled: Structs::Loot::finalize()
; decoder-mode: arm
004d4238  70 40 2d e9                                      push {r4, r5, r6, lr}
004d423c  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d4240  00 50 a0 e1                                      mov r5, r0
004d4244  00 00 53 e3                                      cmp r3, #0
004d4248  13 00 00 0a                                      beq #0x4d429c
004d424c  04 20 13 e5                                      ldr r2, [r3, #-4]
004d4250  24 00 a0 e3                                      mov r0, #0x24
004d4254  90 32 20 e0                                      mla r0, r0, r2, r3
004d4258  00 00 53 e1                                      cmp r3, r0
004d425c  01 00 00 1a                                      bne #0x4d4268
004d4260  08 00 00 ea                                      b #0x4d4288
004d4264  04 00 a0 e1                                      mov r0, r4
004d4268  24 40 40 e2                                      sub r4, r0, #0x24
004d426c  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004d4270  04 00 a0 e1                                      mov r0, r4
004d4274  0f e0 a0 e1                                      mov lr, pc
004d4278  00 f0 93 e5                                      ldr pc, [r3]
004d427c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d4280  04 00 50 e1                                      cmp r0, r4
004d4284  f6 ff ff 1a                                      bne #0x4d4264
004d4288  08 00 40 e2                                      sub r0, r0, #8
004d428c  6b f0 f8 eb                                      bl #0x310440
004d4290  00 30 a0 e3                                      mov r3, #0
004d4294  0c 30 85 e5                                      str r3, [r5, #0xc]
004d4298  10 30 85 e5                                      str r3, [r5, #0x10]
004d429c  18 30 95 e5                                      ldr r3, [r5, #0x18]
004d42a0  00 00 53 e3                                      cmp r3, #0
004d42a4  13 00 00 0a                                      beq #0x4d42f8
004d42a8  04 20 13 e5                                      ldr r2, [r3, #-4]
004d42ac  24 00 a0 e3                                      mov r0, #0x24
004d42b0  90 32 20 e0                                      mla r0, r0, r2, r3
004d42b4  00 00 53 e1                                      cmp r3, r0
004d42b8  01 00 00 1a                                      bne #0x4d42c4
004d42bc  08 00 00 ea                                      b #0x4d42e4
004d42c0  04 00 a0 e1                                      mov r0, r4
004d42c4  24 40 40 e2                                      sub r4, r0, #0x24
004d42c8  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004d42cc  04 00 a0 e1                                      mov r0, r4
004d42d0  0f e0 a0 e1                                      mov lr, pc
004d42d4  00 f0 93 e5                                      ldr pc, [r3]
004d42d8  18 00 95 e5                                      ldr r0, [r5, #0x18]
004d42dc  04 00 50 e1                                      cmp r0, r4
004d42e0  f6 ff ff 1a                                      bne #0x4d42c0
004d42e4  08 00 40 e2                                      sub r0, r0, #8
004d42e8  54 f0 f8 eb                                      bl #0x310440
004d42ec  00 30 a0 e3                                      mov r3, #0
004d42f0  14 30 85 e5                                      str r3, [r5, #0x14]
004d42f4  18 30 85 e5                                      str r3, [r5, #0x18]
004d42f8  20 00 95 e5                                      ldr r0, [r5, #0x20]
004d42fc  00 00 50 e3                                      cmp r0, #0
004d4300  03 00 00 0a                                      beq #0x4d4314
004d4304  4d f0 f8 eb                                      bl #0x310440
004d4308  00 30 a0 e3                                      mov r3, #0
004d430c  1c 30 85 e5                                      str r3, [r5, #0x1c]
004d4310  20 30 85 e5                                      str r3, [r5, #0x20]
004d4314  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d4318, declared_size=224, range_size=224, mode=arm
; class-group: Structs::Loot
; alias: _ZN7Structs4LootD1Ev
; demangled: Structs::Loot::~Loot()
; decoder-mode: arm
004d4318  70 40 2d e9                                      push {r4, r5, r6, lr}
004d431c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
004d4320  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
004d4324  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d4328  03 30 8f e0                                      add r3, pc, r3
004d432c  02 20 93 e7                                      ldr r2, [r3, r2]
004d4330  00 00 51 e3                                      cmp r1, #0
004d4334  00 50 a0 e1                                      mov r5, r0
004d4338  08 20 82 e2                                      add r2, r2, #8
004d433c  00 20 80 e5                                      str r2, [r0]
004d4340  10 00 00 0a                                      beq #0x4d4388
004d4344  04 30 11 e5                                      ldr r3, [r1, #-4]
004d4348  24 00 a0 e3                                      mov r0, #0x24
004d434c  90 13 20 e0                                      mla r0, r0, r3, r1
004d4350  00 00 51 e1                                      cmp r1, r0
004d4354  01 00 00 1a                                      bne #0x4d4360
004d4358  08 00 00 ea                                      b #0x4d4380
004d435c  04 00 a0 e1                                      mov r0, r4
004d4360  24 40 40 e2                                      sub r4, r0, #0x24
004d4364  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004d4368  04 00 a0 e1                                      mov r0, r4
004d436c  0f e0 a0 e1                                      mov lr, pc
004d4370  00 f0 93 e5                                      ldr pc, [r3]
004d4374  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d4378  04 00 50 e1                                      cmp r0, r4
004d437c  f6 ff ff 1a                                      bne #0x4d435c
004d4380  08 00 40 e2                                      sub r0, r0, #8
004d4384  2d f0 f8 eb                                      bl #0x310440
004d4388  18 30 95 e5                                      ldr r3, [r5, #0x18]
004d438c  00 00 53 e3                                      cmp r3, #0
004d4390  10 00 00 0a                                      beq #0x4d43d8
004d4394  04 20 13 e5                                      ldr r2, [r3, #-4]
004d4398  24 00 a0 e3                                      mov r0, #0x24
004d439c  90 32 20 e0                                      mla r0, r0, r2, r3
004d43a0  00 00 53 e1                                      cmp r3, r0
004d43a4  01 00 00 1a                                      bne #0x4d43b0
004d43a8  08 00 00 ea                                      b #0x4d43d0
004d43ac  04 00 a0 e1                                      mov r0, r4
004d43b0  24 40 40 e2                                      sub r4, r0, #0x24
004d43b4  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004d43b8  04 00 a0 e1                                      mov r0, r4
004d43bc  0f e0 a0 e1                                      mov lr, pc
004d43c0  00 f0 93 e5                                      ldr pc, [r3]
004d43c4  18 00 95 e5                                      ldr r0, [r5, #0x18]
004d43c8  04 00 50 e1                                      cmp r0, r4
004d43cc  f6 ff ff 1a                                      bne #0x4d43ac
004d43d0  08 00 40 e2                                      sub r0, r0, #8
004d43d4  19 f0 f8 eb                                      bl #0x310440
004d43d8  20 00 95 e5                                      ldr r0, [r5, #0x20]
004d43dc  00 00 50 e3                                      cmp r0, #0
004d43e0  00 00 00 0a                                      beq #0x4d43e8
004d43e4  15 f0 f8 eb                                      bl #0x310440
004d43e8  05 00 a0 e1                                      mov r0, r5
004d43ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d43f0  68 07 4c 00 70 34 00 00                          .byte 0x68, 0x07, 0x4c, 0x00, 0x70, 0x34, 0x00, 0x00

; FUNCTION 0x004d43f8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Loot
; alias: _ZN7Structs4LootD0Ev
; demangled: Structs::Loot::~Loot()
; decoder-mode: arm
004d43f8  10 40 2d e9                                      push {r4, lr}
004d43fc  00 40 a0 e1                                      mov r4, r0
004d4400  c4 ff ff eb                                      bl #0x4d4318
004d4404  04 00 a0 e1                                      mov r0, r4
004d4408  0c f0 f8 eb                                      bl #0x310440
004d440c  04 00 a0 e1                                      mov r0, r4
004d4410  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4414, declared_size=224, range_size=224, mode=arm
; class-group: Structs::Loot
; alias: _ZN7Structs4LootD2Ev
; demangled: Structs::Loot::~Loot()
; decoder-mode: arm
004d4414  70 40 2d e9                                      push {r4, r5, r6, lr}
004d4418  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
004d441c  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
004d4420  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d4424  03 30 8f e0                                      add r3, pc, r3
004d4428  02 20 93 e7                                      ldr r2, [r3, r2]
004d442c  00 00 51 e3                                      cmp r1, #0
004d4430  00 50 a0 e1                                      mov r5, r0
004d4434  08 20 82 e2                                      add r2, r2, #8
004d4438  00 20 80 e5                                      str r2, [r0]
004d443c  10 00 00 0a                                      beq #0x4d4484
004d4440  04 30 11 e5                                      ldr r3, [r1, #-4]
004d4444  24 00 a0 e3                                      mov r0, #0x24
004d4448  90 13 20 e0                                      mla r0, r0, r3, r1
004d444c  00 00 51 e1                                      cmp r1, r0
004d4450  01 00 00 1a                                      bne #0x4d445c
004d4454  08 00 00 ea                                      b #0x4d447c
004d4458  04 00 a0 e1                                      mov r0, r4
004d445c  24 40 40 e2                                      sub r4, r0, #0x24
004d4460  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004d4464  04 00 a0 e1                                      mov r0, r4
004d4468  0f e0 a0 e1                                      mov lr, pc
004d446c  00 f0 93 e5                                      ldr pc, [r3]
004d4470  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d4474  04 00 50 e1                                      cmp r0, r4
004d4478  f6 ff ff 1a                                      bne #0x4d4458
004d447c  08 00 40 e2                                      sub r0, r0, #8
004d4480  ee ef f8 eb                                      bl #0x310440
004d4484  18 30 95 e5                                      ldr r3, [r5, #0x18]
004d4488  00 00 53 e3                                      cmp r3, #0
004d448c  10 00 00 0a                                      beq #0x4d44d4
004d4490  04 20 13 e5                                      ldr r2, [r3, #-4]
004d4494  24 00 a0 e3                                      mov r0, #0x24
004d4498  90 32 20 e0                                      mla r0, r0, r2, r3
004d449c  00 00 53 e1                                      cmp r3, r0
004d44a0  01 00 00 1a                                      bne #0x4d44ac
004d44a4  08 00 00 ea                                      b #0x4d44cc
004d44a8  04 00 a0 e1                                      mov r0, r4
004d44ac  24 40 40 e2                                      sub r4, r0, #0x24
004d44b0  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004d44b4  04 00 a0 e1                                      mov r0, r4
004d44b8  0f e0 a0 e1                                      mov lr, pc
004d44bc  00 f0 93 e5                                      ldr pc, [r3]
004d44c0  18 00 95 e5                                      ldr r0, [r5, #0x18]
004d44c4  04 00 50 e1                                      cmp r0, r4
004d44c8  f6 ff ff 1a                                      bne #0x4d44a8
004d44cc  08 00 40 e2                                      sub r0, r0, #8
004d44d0  da ef f8 eb                                      bl #0x310440
004d44d4  20 00 95 e5                                      ldr r0, [r5, #0x20]
004d44d8  00 00 50 e3                                      cmp r0, #0
004d44dc  00 00 00 0a                                      beq #0x4d44e4
004d44e0  d6 ef f8 eb                                      bl #0x310440
004d44e4  05 00 a0 e1                                      mov r0, r5
004d44e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d44ec  6c 06 4c 00 70 34 00 00                          .byte 0x6c, 0x06, 0x4c, 0x00, 0x70, 0x34, 0x00, 0x00

; FUNCTION 0x004fe794, declared_size=1140, range_size=1140, mode=arm
; class-group: Structs::Loot
; alias: _ZN7Structs4Loot4readEP11IStreamBase
; demangled: Structs::Loot::read(IStreamBase*)
; decoder-mode: arm
004fe794  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004fe798  00 40 a0 e1                                      mov r4, r0
004fe79c  08 d0 4d e2                                      sub sp, sp, #8
004fe7a0  01 00 a0 e1                                      mov r0, r1
004fe7a4  01 60 a0 e1                                      mov r6, r1
004fe7a8  50 84 9f e5                                      ldr r8, [pc, #0x450]
004fe7ac  04 10 84 e2                                      add r1, r4, #4
004fe7b0  36 6a fd eb                                      bl #0x459090
004fe7b4  01 30 a0 e3                                      mov r3, #1
004fe7b8  00 00 53 e3                                      cmp r3, #0
004fe7bc  04 30 8d e5                                      str r3, [sp, #4]
004fe7c0  08 80 8f e0                                      add r8, pc, r8
004fe7c4  0f 00 00 1a                                      bne #0x4fe808
004fe7c8  05 30 84 e2                                      add r3, r4, #5
004fe7cc  06 20 84 e2                                      add r2, r4, #6
004fe7d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe7d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe7d8  02 00 53 e1                                      cmp r3, r2
004fe7dc  01 10 20 e0                                      eor r1, r0, r1
004fe7e0  01 10 43 e5                                      strb r1, [r3, #-1]
004fe7e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe7e8  00 10 21 e0                                      eor r1, r1, r0
004fe7ec  01 10 c2 e5                                      strb r1, [r2, #1]
004fe7f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe7f4  01 20 42 e2                                      sub r2, r2, #1
004fe7f8  00 10 21 e0                                      eor r1, r1, r0
004fe7fc  01 10 43 e5                                      strb r1, [r3, #-1]
004fe800  01 30 83 e2                                      add r3, r3, #1
004fe804  f1 ff ff 3a                                      blo #0x4fe7d0
004fe808  06 00 a0 e1                                      mov r0, r6
004fe80c  08 10 84 e2                                      add r1, r4, #8
004fe810  1e 6a fd eb                                      bl #0x459090
004fe814  01 30 a0 e3                                      mov r3, #1
004fe818  00 00 53 e3                                      cmp r3, #0
004fe81c  04 30 8d e5                                      str r3, [sp, #4]
004fe820  0f 00 00 1a                                      bne #0x4fe864
004fe824  09 30 84 e2                                      add r3, r4, #9
004fe828  0a 20 84 e2                                      add r2, r4, #0xa
004fe82c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe830  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe834  02 00 53 e1                                      cmp r3, r2
004fe838  01 10 20 e0                                      eor r1, r0, r1
004fe83c  01 10 43 e5                                      strb r1, [r3, #-1]
004fe840  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe844  00 10 21 e0                                      eor r1, r1, r0
004fe848  01 10 c2 e5                                      strb r1, [r2, #1]
004fe84c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe850  01 20 42 e2                                      sub r2, r2, #1
004fe854  00 10 21 e0                                      eor r1, r1, r0
004fe858  01 10 43 e5                                      strb r1, [r3, #-1]
004fe85c  01 30 83 e2                                      add r3, r3, #1
004fe860  f1 ff ff 3a                                      blo #0x4fe82c
004fe864  06 00 a0 e1                                      mov r0, r6
004fe868  0c 10 84 e2                                      add r1, r4, #0xc
004fe86c  4b 82 fb eb                                      bl #0x3df1a0
004fe870  01 30 a0 e3                                      mov r3, #1
004fe874  00 00 53 e3                                      cmp r3, #0
004fe878  04 30 8d e5                                      str r3, [sp, #4]
004fe87c  0f 00 00 1a                                      bne #0x4fe8c0
004fe880  0d 30 84 e2                                      add r3, r4, #0xd
004fe884  0e 20 84 e2                                      add r2, r4, #0xe
004fe888  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe88c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe890  02 00 53 e1                                      cmp r3, r2
004fe894  01 10 20 e0                                      eor r1, r0, r1
004fe898  01 10 43 e5                                      strb r1, [r3, #-1]
004fe89c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe8a0  00 10 21 e0                                      eor r1, r1, r0
004fe8a4  01 10 c2 e5                                      strb r1, [r2, #1]
004fe8a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe8ac  01 20 42 e2                                      sub r2, r2, #1
004fe8b0  00 10 21 e0                                      eor r1, r1, r0
004fe8b4  01 10 43 e5                                      strb r1, [r3, #-1]
004fe8b8  01 30 83 e2                                      add r3, r3, #1
004fe8bc  f1 ff ff 3a                                      blo #0x4fe888
004fe8c0  10 30 94 e5                                      ldr r3, [r4, #0x10]
004fe8c4  00 00 53 e3                                      cmp r3, #0
004fe8c8  10 00 00 0a                                      beq #0x4fe910
004fe8cc  04 20 13 e5                                      ldr r2, [r3, #-4]
004fe8d0  24 00 a0 e3                                      mov r0, #0x24
004fe8d4  90 32 20 e0                                      mla r0, r0, r2, r3
004fe8d8  00 00 53 e1                                      cmp r3, r0
004fe8dc  01 00 00 1a                                      bne #0x4fe8e8
004fe8e0  08 00 00 ea                                      b #0x4fe908
004fe8e4  05 00 a0 e1                                      mov r0, r5
004fe8e8  24 50 40 e2                                      sub r5, r0, #0x24
004fe8ec  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004fe8f0  05 00 a0 e1                                      mov r0, r5
004fe8f4  0f e0 a0 e1                                      mov lr, pc
004fe8f8  00 f0 93 e5                                      ldr pc, [r3]
004fe8fc  10 00 94 e5                                      ldr r0, [r4, #0x10]
004fe900  05 00 50 e1                                      cmp r0, r5
004fe904  f6 ff ff 1a                                      bne #0x4fe8e4
004fe908  08 00 40 e2                                      sub r0, r0, #8
004fe90c  cb 46 f8 eb                                      bl #0x310440
004fe910  0c 50 94 e5                                      ldr r5, [r4, #0xc]
004fe914  24 70 a0 e3                                      mov r7, #0x24
004fe918  01 10 a0 e3                                      mov r1, #1
004fe91c  97 05 00 e0                                      mul r0, r7, r5
004fe920  08 00 80 e2                                      add r0, r0, #8
004fe924  10 47 f8 eb                                      bl #0x31056c
004fe928  00 00 55 e3                                      cmp r5, #0
004fe92c  00 70 80 e5                                      str r7, [r0]
004fe930  04 50 80 e5                                      str r5, [r0, #4]
004fe934  08 30 80 e2                                      add r3, r0, #8
004fe938  08 00 00 0a                                      beq #0x4fe960
004fe93c  c0 12 9f e5                                      ldr r1, [pc, #0x2c0]
004fe940  00 20 a0 e3                                      mov r2, #0
004fe944  01 10 98 e7                                      ldr r1, [r8, r1]
004fe948  08 10 81 e2                                      add r1, r1, #8
004fe94c  01 20 82 e2                                      add r2, r2, #1
004fe950  05 00 52 e1                                      cmp r2, r5
004fe954  08 10 80 e5                                      str r1, [r0, #8]
004fe958  24 00 80 e2                                      add r0, r0, #0x24
004fe95c  fa ff ff 1a                                      bne #0x4fe94c
004fe960  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004fe964  10 30 84 e5                                      str r3, [r4, #0x10]
004fe968  00 00 52 e3                                      cmp r2, #0
004fe96c  0d 00 00 0a                                      beq #0x4fe9a8
004fe970  00 50 a0 e3                                      mov r5, #0
004fe974  05 70 a0 e1                                      mov r7, r5
004fe978  00 00 00 ea                                      b #0x4fe980
004fe97c  10 30 94 e5                                      ldr r3, [r4, #0x10]
004fe980  05 00 83 e0                                      add r0, r3, r5
004fe984  06 10 a0 e1                                      mov r1, r6
004fe988  05 30 93 e7                                      ldr r3, [r3, r5]
004fe98c  0f e0 a0 e1                                      mov lr, pc
004fe990  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004fe994  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004fe998  01 70 87 e2                                      add r7, r7, #1
004fe99c  24 50 85 e2                                      add r5, r5, #0x24
004fe9a0  07 00 53 e1                                      cmp r3, r7
004fe9a4  f4 ff ff 8a                                      bhi #0x4fe97c
004fe9a8  06 00 a0 e1                                      mov r0, r6
004fe9ac  14 10 84 e2                                      add r1, r4, #0x14
004fe9b0  fa 81 fb eb                                      bl #0x3df1a0
004fe9b4  01 30 a0 e3                                      mov r3, #1
004fe9b8  00 00 53 e3                                      cmp r3, #0
004fe9bc  04 30 8d e5                                      str r3, [sp, #4]
004fe9c0  0f 00 00 1a                                      bne #0x4fea04
004fe9c4  15 30 84 e2                                      add r3, r4, #0x15
004fe9c8  16 20 84 e2                                      add r2, r4, #0x16
004fe9cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe9d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe9d4  02 00 53 e1                                      cmp r3, r2
004fe9d8  01 10 20 e0                                      eor r1, r0, r1
004fe9dc  01 10 43 e5                                      strb r1, [r3, #-1]
004fe9e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe9e4  00 10 21 e0                                      eor r1, r1, r0
004fe9e8  01 10 c2 e5                                      strb r1, [r2, #1]
004fe9ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe9f0  01 20 42 e2                                      sub r2, r2, #1
004fe9f4  00 10 21 e0                                      eor r1, r1, r0
004fe9f8  01 10 43 e5                                      strb r1, [r3, #-1]
004fe9fc  01 30 83 e2                                      add r3, r3, #1
004fea00  f1 ff ff 3a                                      blo #0x4fe9cc
004fea04  18 30 94 e5                                      ldr r3, [r4, #0x18]
004fea08  00 00 53 e3                                      cmp r3, #0
004fea0c  10 00 00 0a                                      beq #0x4fea54
004fea10  04 20 13 e5                                      ldr r2, [r3, #-4]
004fea14  24 00 a0 e3                                      mov r0, #0x24
004fea18  90 32 20 e0                                      mla r0, r0, r2, r3
004fea1c  00 00 53 e1                                      cmp r3, r0
004fea20  01 00 00 1a                                      bne #0x4fea2c
004fea24  08 00 00 ea                                      b #0x4fea4c
004fea28  05 00 a0 e1                                      mov r0, r5
004fea2c  24 50 40 e2                                      sub r5, r0, #0x24
004fea30  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004fea34  05 00 a0 e1                                      mov r0, r5
004fea38  0f e0 a0 e1                                      mov lr, pc
004fea3c  00 f0 93 e5                                      ldr pc, [r3]
004fea40  18 00 94 e5                                      ldr r0, [r4, #0x18]
004fea44  05 00 50 e1                                      cmp r0, r5
004fea48  f6 ff ff 1a                                      bne #0x4fea28
004fea4c  08 00 40 e2                                      sub r0, r0, #8
004fea50  7a 46 f8 eb                                      bl #0x310440
004fea54  14 50 94 e5                                      ldr r5, [r4, #0x14]
004fea58  24 70 a0 e3                                      mov r7, #0x24
004fea5c  01 10 a0 e3                                      mov r1, #1
004fea60  97 05 00 e0                                      mul r0, r7, r5
004fea64  08 00 80 e2                                      add r0, r0, #8
004fea68  bf 46 f8 eb                                      bl #0x31056c
004fea6c  00 00 55 e3                                      cmp r5, #0
004fea70  00 70 80 e5                                      str r7, [r0]
004fea74  04 50 80 e5                                      str r5, [r0, #4]
004fea78  08 30 80 e2                                      add r3, r0, #8
004fea7c  08 00 00 0a                                      beq #0x4feaa4
004fea80  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
004fea84  00 20 a0 e3                                      mov r2, #0
004fea88  01 10 98 e7                                      ldr r1, [r8, r1]
004fea8c  08 10 81 e2                                      add r1, r1, #8
004fea90  01 20 82 e2                                      add r2, r2, #1
004fea94  05 00 52 e1                                      cmp r2, r5
004fea98  08 10 80 e5                                      str r1, [r0, #8]
004fea9c  24 00 80 e2                                      add r0, r0, #0x24
004feaa0  fa ff ff 1a                                      bne #0x4fea90
004feaa4  14 20 94 e5                                      ldr r2, [r4, #0x14]
004feaa8  18 30 84 e5                                      str r3, [r4, #0x18]
004feaac  00 00 52 e3                                      cmp r2, #0
004feab0  0d 00 00 0a                                      beq #0x4feaec
004feab4  00 50 a0 e3                                      mov r5, #0
004feab8  05 70 a0 e1                                      mov r7, r5
004feabc  00 00 00 ea                                      b #0x4feac4
004feac0  18 30 94 e5                                      ldr r3, [r4, #0x18]
004feac4  05 00 83 e0                                      add r0, r3, r5
004feac8  06 10 a0 e1                                      mov r1, r6
004feacc  05 30 93 e7                                      ldr r3, [r3, r5]
004fead0  0f e0 a0 e1                                      mov lr, pc
004fead4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004fead8  14 30 94 e5                                      ldr r3, [r4, #0x14]
004feadc  01 70 87 e2                                      add r7, r7, #1
004feae0  24 50 85 e2                                      add r5, r5, #0x24
004feae4  07 00 53 e1                                      cmp r3, r7
004feae8  f4 ff ff 8a                                      bhi #0x4feac0
004feaec  06 00 a0 e1                                      mov r0, r6
004feaf0  1c 10 84 e2                                      add r1, r4, #0x1c
004feaf4  a9 81 fb eb                                      bl #0x3df1a0
004feaf8  01 30 a0 e3                                      mov r3, #1
004feafc  00 00 53 e3                                      cmp r3, #0
004feb00  04 30 8d e5                                      str r3, [sp, #4]
004feb04  0f 00 00 1a                                      bne #0x4feb48
004feb08  1d 30 84 e2                                      add r3, r4, #0x1d
004feb0c  1e 20 84 e2                                      add r2, r4, #0x1e
004feb10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004feb14  01 10 53 e5                                      ldrb r1, [r3, #-1]
004feb18  02 00 53 e1                                      cmp r3, r2
004feb1c  01 10 20 e0                                      eor r1, r0, r1
004feb20  01 10 43 e5                                      strb r1, [r3, #-1]
004feb24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004feb28  00 10 21 e0                                      eor r1, r1, r0
004feb2c  01 10 c2 e5                                      strb r1, [r2, #1]
004feb30  01 00 53 e5                                      ldrb r0, [r3, #-1]
004feb34  01 20 42 e2                                      sub r2, r2, #1
004feb38  00 10 21 e0                                      eor r1, r1, r0
004feb3c  01 10 43 e5                                      strb r1, [r3, #-1]
004feb40  01 30 83 e2                                      add r3, r3, #1
004feb44  f1 ff ff 3a                                      blo #0x4feb10
004feb48  20 00 94 e5                                      ldr r0, [r4, #0x20]
004feb4c  00 00 50 e3                                      cmp r0, #0
004feb50  00 00 00 0a                                      beq #0x4feb58
004feb54  39 46 f8 eb                                      bl #0x310440
004feb58  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004feb5c  01 10 a0 e3                                      mov r1, #1
004feb60  00 01 a0 e1                                      lsl r0, r0, #2
004feb64  80 46 f8 eb                                      bl #0x31056c
004feb68  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004feb6c  20 00 84 e5                                      str r0, [r4, #0x20]
004feb70  00 00 53 e3                                      cmp r3, #0
004feb74  1f 00 00 0a                                      beq #0x4febf8
004feb78  00 50 a0 e3                                      mov r5, #0
004feb7c  01 80 a0 e3                                      mov r8, #1
004feb80  05 71 a0 e1                                      lsl r7, r5, #2
004feb84  07 10 80 e0                                      add r1, r0, r7
004feb88  06 00 a0 e1                                      mov r0, r6
004feb8c  3f 69 fd eb                                      bl #0x459090
004feb90  04 80 8d e5                                      str r8, [sp, #4]
004feb94  00 00 58 e3                                      cmp r8, #0
004feb98  20 30 94 e5                                      ldr r3, [r4, #0x20]
004feb9c  10 00 00 1a                                      bne #0x4febe4
004feba0  07 70 83 e0                                      add r7, r3, r7
004feba4  02 30 87 e2                                      add r3, r7, #2
004feba8  01 70 87 e2                                      add r7, r7, #1
004febac  01 10 d3 e5                                      ldrb r1, [r3, #1]
004febb0  01 20 57 e5                                      ldrb r2, [r7, #-1]
004febb4  03 00 57 e1                                      cmp r7, r3
004febb8  02 20 21 e0                                      eor r2, r1, r2
004febbc  01 20 47 e5                                      strb r2, [r7, #-1]
004febc0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004febc4  01 20 22 e0                                      eor r2, r2, r1
004febc8  01 20 c3 e5                                      strb r2, [r3, #1]
004febcc  01 10 57 e5                                      ldrb r1, [r7, #-1]
004febd0  01 30 43 e2                                      sub r3, r3, #1
004febd4  01 20 22 e0                                      eor r2, r2, r1
004febd8  01 20 47 e5                                      strb r2, [r7, #-1]
004febdc  01 70 87 e2                                      add r7, r7, #1
004febe0  f1 ff ff 3a                                      blo #0x4febac
004febe4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004febe8  01 50 85 e2                                      add r5, r5, #1
004febec  05 00 53 e1                                      cmp r3, r5
004febf0  20 00 94 85                                      ldrhi r0, [r4, #0x20]
004febf4  e1 ff ff 8a                                      bhi #0x4feb80
004febf8  08 d0 8d e2                                      add sp, sp, #8
004febfc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004fec00  d0 62 49 00 94 1a 00 00                          .byte 0xd0, 0x62, 0x49, 0x00, 0x94, 0x1a, 0x00, 0x00
