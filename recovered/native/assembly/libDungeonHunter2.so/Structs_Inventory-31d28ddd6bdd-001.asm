; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c3c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Inventory
; alias: _ZN7Structs9InventoryD2Ev
; demangled: Structs::Inventory::~Inventory()
; decoder-mode: arm
004c6c3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c40, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Inventory
; alias: _ZN7Structs9InventoryD1Ev
; demangled: Structs::Inventory::~Inventory()
; decoder-mode: arm
004c6c40  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c44, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Inventory
; alias: _ZN7Structs9Inventory8finalizeEv
; demangled: Structs::Inventory::finalize()
; decoder-mode: arm
004c6c44  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce198, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Inventory
; alias: _ZN7Structs9InventoryD0Ev
; demangled: Structs::Inventory::~Inventory()
; decoder-mode: arm
004ce198  10 40 2d e9                                      push {r4, lr}
004ce19c  00 40 a0 e1                                      mov r4, r0
004ce1a0  a6 e2 ff eb                                      bl #0x4c6c40
004ce1a4  04 00 a0 e1                                      mov r0, r4
004ce1a8  a4 08 f9 eb                                      bl #0x310440
004ce1ac  04 00 a0 e1                                      mov r0, r4
004ce1b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dbb5c, declared_size=112, range_size=112, mode=arm
; class-group: Structs::Inventory
; alias: _ZN7Structs9Inventory4readEP11IStreamBase
; demangled: Structs::Inventory::read(IStreamBase*)
; decoder-mode: arm
004dbb5c  30 40 2d e9                                      push {r4, r5, lr}
004dbb60  04 40 80 e2                                      add r4, r0, #4
004dbb64  0c d0 4d e2                                      sub sp, sp, #0xc
004dbb68  00 50 a0 e1                                      mov r5, r0
004dbb6c  01 00 a0 e1                                      mov r0, r1
004dbb70  04 10 a0 e1                                      mov r1, r4
004dbb74  cc ff ff eb                                      bl #0x4dbaac
004dbb78  01 30 a0 e3                                      mov r3, #1
004dbb7c  00 00 53 e3                                      cmp r3, #0
004dbb80  04 30 8d e5                                      str r3, [sp, #4]
004dbb84  0e 00 00 1a                                      bne #0x4dbbc4
004dbb88  05 50 85 e2                                      add r5, r5, #5
004dbb8c  01 20 d4 e5                                      ldrb r2, [r4, #1]
004dbb90  01 30 55 e5                                      ldrb r3, [r5, #-1]
004dbb94  04 00 55 e1                                      cmp r5, r4
004dbb98  03 30 22 e0                                      eor r3, r2, r3
004dbb9c  01 30 45 e5                                      strb r3, [r5, #-1]
004dbba0  01 20 d4 e5                                      ldrb r2, [r4, #1]
004dbba4  02 30 23 e0                                      eor r3, r3, r2
004dbba8  01 30 c4 e5                                      strb r3, [r4, #1]
004dbbac  01 20 55 e5                                      ldrb r2, [r5, #-1]
004dbbb0  01 40 44 e2                                      sub r4, r4, #1
004dbbb4  02 30 23 e0                                      eor r3, r3, r2
004dbbb8  01 30 45 e5                                      strb r3, [r5, #-1]
004dbbbc  01 50 85 e2                                      add r5, r5, #1
004dbbc0  f1 ff ff 3a                                      blo #0x4dbb8c
004dbbc4  0c d0 8d e2                                      add sp, sp, #0xc
004dbbc8  30 80 bd e8                                      pop {r4, r5, pc}
