; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b3858, declared_size=52, range_size=52, mode=arm
; class-group: POPlayer
; alias: _ZN8POPlayerD1Ev
; demangled: POPlayer::~POPlayer()
; decoder-mode: arm
003b3858  24 30 9f e5                                      ldr r3, [pc, #0x24]
003b385c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003b3860  10 40 2d e9                                      push {r4, lr}
003b3864  03 30 8f e0                                      add r3, pc, r3
003b3868  02 20 93 e7                                      ldr r2, [r3, r2]
003b386c  00 40 a0 e1                                      mov r4, r0
003b3870  08 20 82 e2                                      add r2, r2, #8
003b3874  00 20 80 e5                                      str r2, [r0]
003b3878  a8 ed 02 eb                                      bl #0x46ef20
003b387c  04 00 a0 e1                                      mov r0, r4
003b3880  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b3884  2c 12 5e 00 2c 12 00 00                          .byte 0x2c, 0x12, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00

; FUNCTION 0x003b441c, declared_size=60, range_size=60, mode=arm
; class-group: POPlayer
; alias: _ZN8POPlayerD0Ev
; demangled: POPlayer::~POPlayer()
; decoder-mode: arm
003b441c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003b4420  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003b4424  10 40 2d e9                                      push {r4, lr}
003b4428  03 30 8f e0                                      add r3, pc, r3
003b442c  02 20 93 e7                                      ldr r2, [r3, r2]
003b4430  00 40 a0 e1                                      mov r4, r0
003b4434  08 20 82 e2                                      add r2, r2, #8
003b4438  00 20 80 e5                                      str r2, [r0]
003b443c  b7 ea 02 eb                                      bl #0x46ef20
003b4440  04 00 a0 e1                                      mov r0, r4
003b4444  fd 6f fd eb                                      bl #0x310440
003b4448  04 00 a0 e1                                      mov r0, r4
003b444c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b4450  68 06 5e 00 2c 12 00 00                          .byte 0x68, 0x06, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00
