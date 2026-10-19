; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6fcc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::WaitDialog
; alias: _ZN7Structs10WaitDialogD2Ev
; demangled: Structs::WaitDialog::~WaitDialog()
; decoder-mode: arm
004c6fcc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6fd0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6fd4  10 40 2d e9                                      push {r4, lr}
004c6fd8  03 30 8f e0                                      add r3, pc, r3
004c6fdc  02 20 93 e7                                      ldr r2, [r3, r2]
004c6fe0  00 40 a0 e1                                      mov r4, r0
004c6fe4  08 20 82 e2                                      add r2, r2, #8
004c6fe8  00 20 80 e5                                      str r2, [r0]
004c6fec  1b ff ff eb                                      bl #0x4c6c60
004c6ff0  04 00 a0 e1                                      mov r0, r4
004c6ff4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6ff8  b8 da 4c 00 44 47 00 00                          .byte 0xb8, 0xda, 0x4c, 0x00, 0x44, 0x47, 0x00, 0x00

; FUNCTION 0x004c7000, declared_size=52, range_size=52, mode=arm
; class-group: Structs::WaitDialog
; alias: _ZN7Structs10WaitDialogD1Ev
; demangled: Structs::WaitDialog::~WaitDialog()
; decoder-mode: arm
004c7000  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7004  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7008  10 40 2d e9                                      push {r4, lr}
004c700c  03 30 8f e0                                      add r3, pc, r3
004c7010  02 20 93 e7                                      ldr r2, [r3, r2]
004c7014  00 40 a0 e1                                      mov r4, r0
004c7018  08 20 82 e2                                      add r2, r2, #8
004c701c  00 20 80 e5                                      str r2, [r0]
004c7020  0e ff ff eb                                      bl #0x4c6c60
004c7024  04 00 a0 e1                                      mov r0, r4
004c7028  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c702c  84 da 4c 00 44 47 00 00                          .byte 0x84, 0xda, 0x4c, 0x00, 0x44, 0x47, 0x00, 0x00

; FUNCTION 0x004c7034, declared_size=4, range_size=4, mode=arm
; class-group: Structs::WaitDialog
; alias: _ZN7Structs10WaitDialog8finalizeEv
; demangled: Structs::WaitDialog::finalize()
; decoder-mode: arm
004c7034  0b ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce064, declared_size=28, range_size=28, mode=arm
; class-group: Structs::WaitDialog
; alias: _ZN7Structs10WaitDialogD0Ev
; demangled: Structs::WaitDialog::~WaitDialog()
; decoder-mode: arm
004ce064  10 40 2d e9                                      push {r4, lr}
004ce068  00 40 a0 e1                                      mov r4, r0
004ce06c  e3 e3 ff eb                                      bl #0x4c7000
004ce070  04 00 a0 e1                                      mov r0, r4
004ce074  f1 08 f9 eb                                      bl #0x310440
004ce078  04 00 a0 e1                                      mov r0, r4
004ce07c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8d0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::WaitDialog
; alias: _ZN7Structs10WaitDialog4readEP11IStreamBase
; demangled: Structs::WaitDialog::read(IStreamBase*)
; decoder-mode: arm
004ff8d0  d4 ff ff ea                                      b #0x4ff828
