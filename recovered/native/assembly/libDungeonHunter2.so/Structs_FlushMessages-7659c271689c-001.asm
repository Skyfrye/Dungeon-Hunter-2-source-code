; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7b9c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::FlushMessages
; alias: _ZN7Structs13FlushMessagesD2Ev
; demangled: Structs::FlushMessages::~FlushMessages()
; decoder-mode: arm
004c7b9c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7ba0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7ba4  10 40 2d e9                                      push {r4, lr}
004c7ba8  03 30 8f e0                                      add r3, pc, r3
004c7bac  02 20 93 e7                                      ldr r2, [r3, r2]
004c7bb0  00 40 a0 e1                                      mov r4, r0
004c7bb4  08 20 82 e2                                      add r2, r2, #8
004c7bb8  00 20 80 e5                                      str r2, [r0]
004c7bbc  27 fc ff eb                                      bl #0x4c6c60
004c7bc0  04 00 a0 e1                                      mov r0, r4
004c7bc4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7bc8  e8 ce 4c 00 6c 06 00 00                          .byte 0xe8, 0xce, 0x4c, 0x00, 0x6c, 0x06, 0x00, 0x00

; FUNCTION 0x004c7bd0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::FlushMessages
; alias: _ZN7Structs13FlushMessagesD1Ev
; demangled: Structs::FlushMessages::~FlushMessages()
; decoder-mode: arm
004c7bd0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7bd4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7bd8  10 40 2d e9                                      push {r4, lr}
004c7bdc  03 30 8f e0                                      add r3, pc, r3
004c7be0  02 20 93 e7                                      ldr r2, [r3, r2]
004c7be4  00 40 a0 e1                                      mov r4, r0
004c7be8  08 20 82 e2                                      add r2, r2, #8
004c7bec  00 20 80 e5                                      str r2, [r0]
004c7bf0  1a fc ff eb                                      bl #0x4c6c60
004c7bf4  04 00 a0 e1                                      mov r0, r4
004c7bf8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7bfc  b4 ce 4c 00 6c 06 00 00                          .byte 0xb4, 0xce, 0x4c, 0x00, 0x6c, 0x06, 0x00, 0x00

; FUNCTION 0x004c7c04, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FlushMessages
; alias: _ZN7Structs13FlushMessages8finalizeEv
; demangled: Structs::FlushMessages::finalize()
; decoder-mode: arm
004c7c04  17 fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdd54, declared_size=28, range_size=28, mode=arm
; class-group: Structs::FlushMessages
; alias: _ZN7Structs13FlushMessagesD0Ev
; demangled: Structs::FlushMessages::~FlushMessages()
; decoder-mode: arm
004cdd54  10 40 2d e9                                      push {r4, lr}
004cdd58  00 40 a0 e1                                      mov r4, r0
004cdd5c  9b e7 ff eb                                      bl #0x4c7bd0
004cdd60  04 00 a0 e1                                      mov r0, r4
004cdd64  b5 09 f9 eb                                      bl #0x310440
004cdd68  04 00 a0 e1                                      mov r0, r4
004cdd6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff898, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FlushMessages
; alias: _ZN7Structs13FlushMessages4readEP11IStreamBase
; demangled: Structs::FlushMessages::read(IStreamBase*)
; decoder-mode: arm
004ff898  e2 ff ff ea                                      b #0x4ff828
