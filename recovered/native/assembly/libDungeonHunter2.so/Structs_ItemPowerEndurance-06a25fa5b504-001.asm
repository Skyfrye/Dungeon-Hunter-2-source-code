; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d67a8, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerEndurance
; alias: _ZN7Structs18ItemPowerEndurance8finalizeEv
; demangled: Structs::ItemPowerEndurance::finalize()
; decoder-mode: arm
004d67a8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d67ac  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d67b0  00 50 a0 e1                                      mov r5, r0
004d67b4  00 00 53 e3                                      cmp r3, #0
004d67b8  12 00 00 0a                                      beq #0x4d6808
004d67bc  04 00 13 e5                                      ldr r0, [r3, #-4]
004d67c0  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d67c4  00 00 53 e1                                      cmp r3, r0
004d67c8  01 00 00 1a                                      bne #0x4d67d4
004d67cc  08 00 00 ea                                      b #0x4d67f4
004d67d0  04 00 a0 e1                                      mov r0, r4
004d67d4  10 40 40 e2                                      sub r4, r0, #0x10
004d67d8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d67dc  04 00 a0 e1                                      mov r0, r4
004d67e0  0f e0 a0 e1                                      mov lr, pc
004d67e4  00 f0 93 e5                                      ldr pc, [r3]
004d67e8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d67ec  04 00 50 e1                                      cmp r0, r4
004d67f0  f6 ff ff 1a                                      bne #0x4d67d0
004d67f4  08 00 40 e2                                      sub r0, r0, #8
004d67f8  10 e7 f8 eb                                      bl #0x310440
004d67fc  00 30 a0 e3                                      mov r3, #0
004d6800  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6804  10 30 85 e5                                      str r3, [r5, #0x10]
004d6808  05 00 a0 e1                                      mov r0, r5
004d680c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6810  c9 fb ff ea                                      b #0x4d573c

; FUNCTION 0x004d95c4, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerEndurance
; alias: _ZN7Structs18ItemPowerEnduranceD1Ev
; demangled: Structs::ItemPowerEndurance::~ItemPowerEndurance()
; decoder-mode: arm
004d95c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d95c8  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d95cc  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d95d0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d95d4  03 30 8f e0                                      add r3, pc, r3
004d95d8  02 20 93 e7                                      ldr r2, [r3, r2]
004d95dc  00 00 51 e3                                      cmp r1, #0
004d95e0  00 50 a0 e1                                      mov r5, r0
004d95e4  08 20 82 e2                                      add r2, r2, #8
004d95e8  00 20 80 e5                                      str r2, [r0]
004d95ec  0f 00 00 0a                                      beq #0x4d9630
004d95f0  04 00 11 e5                                      ldr r0, [r1, #-4]
004d95f4  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d95f8  00 00 51 e1                                      cmp r1, r0
004d95fc  01 00 00 1a                                      bne #0x4d9608
004d9600  08 00 00 ea                                      b #0x4d9628
004d9604  04 00 a0 e1                                      mov r0, r4
004d9608  10 40 40 e2                                      sub r4, r0, #0x10
004d960c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d9610  04 00 a0 e1                                      mov r0, r4
004d9614  0f e0 a0 e1                                      mov lr, pc
004d9618  00 f0 93 e5                                      ldr pc, [r3]
004d961c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9620  04 00 50 e1                                      cmp r0, r4
004d9624  f6 ff ff 1a                                      bne #0x4d9604
004d9628  08 00 40 e2                                      sub r0, r0, #8
004d962c  83 db f8 eb                                      bl #0x310440
004d9630  05 00 a0 e1                                      mov r0, r5
004d9634  ed f4 ff eb                                      bl #0x4d69f0
004d9638  05 00 a0 e1                                      mov r0, r5
004d963c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9640  bc b4 4b 00 10 26 00 00                          .byte 0xbc, 0xb4, 0x4b, 0x00, 0x10, 0x26, 0x00, 0x00

; FUNCTION 0x004d9648, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerEndurance
; alias: _ZN7Structs18ItemPowerEnduranceD0Ev
; demangled: Structs::ItemPowerEndurance::~ItemPowerEndurance()
; decoder-mode: arm
004d9648  10 40 2d e9                                      push {r4, lr}
004d964c  00 40 a0 e1                                      mov r4, r0
004d9650  db ff ff eb                                      bl #0x4d95c4
004d9654  04 00 a0 e1                                      mov r0, r4
004d9658  78 db f8 eb                                      bl #0x310440
004d965c  04 00 a0 e1                                      mov r0, r4
004d9660  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9664, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerEndurance
; alias: _ZN7Structs18ItemPowerEnduranceD2Ev
; demangled: Structs::ItemPowerEndurance::~ItemPowerEndurance()
; decoder-mode: arm
004d9664  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9668  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d966c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d9670  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d9674  03 30 8f e0                                      add r3, pc, r3
004d9678  02 20 93 e7                                      ldr r2, [r3, r2]
004d967c  00 00 51 e3                                      cmp r1, #0
004d9680  00 50 a0 e1                                      mov r5, r0
004d9684  08 20 82 e2                                      add r2, r2, #8
004d9688  00 20 80 e5                                      str r2, [r0]
004d968c  0f 00 00 0a                                      beq #0x4d96d0
004d9690  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9694  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9698  00 00 51 e1                                      cmp r1, r0
004d969c  01 00 00 1a                                      bne #0x4d96a8
004d96a0  08 00 00 ea                                      b #0x4d96c8
004d96a4  04 00 a0 e1                                      mov r0, r4
004d96a8  10 40 40 e2                                      sub r4, r0, #0x10
004d96ac  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d96b0  04 00 a0 e1                                      mov r0, r4
004d96b4  0f e0 a0 e1                                      mov lr, pc
004d96b8  00 f0 93 e5                                      ldr pc, [r3]
004d96bc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d96c0  04 00 50 e1                                      cmp r0, r4
004d96c4  f6 ff ff 1a                                      bne #0x4d96a4
004d96c8  08 00 40 e2                                      sub r0, r0, #8
004d96cc  5b db f8 eb                                      bl #0x310440
004d96d0  05 00 a0 e1                                      mov r0, r5
004d96d4  c5 f4 ff eb                                      bl #0x4d69f0
004d96d8  05 00 a0 e1                                      mov r0, r5
004d96dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d96e0  1c b4 4b 00 10 26 00 00                          .byte 0x1c, 0xb4, 0x4b, 0x00, 0x10, 0x26, 0x00, 0x00

; FUNCTION 0x004ed1f0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerEndurance
; alias: _ZN7Structs18ItemPowerEndurance4readEP11IStreamBase
; demangled: Structs::ItemPowerEndurance::read(IStreamBase*)
; decoder-mode: arm
004ed1f0  f4 fe ff ea                                      b #0x4ecdc8
