; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003de174, declared_size=52, range_size=52, mode=arm
; class-group: AISPlayerIPhone
; alias: _ZN15AISPlayerIPhoneD1Ev
; demangled: AISPlayerIPhone::~AISPlayerIPhone()
; decoder-mode: arm
003de174  24 30 9f e5                                      ldr r3, [pc, #0x24]
003de178  24 20 9f e5                                      ldr r2, [pc, #0x24]
003de17c  10 40 2d e9                                      push {r4, lr}
003de180  03 30 8f e0                                      add r3, pc, r3
003de184  02 20 93 e7                                      ldr r2, [r3, r2]
003de188  00 40 a0 e1                                      mov r4, r0
003de18c  08 20 82 e2                                      add r2, r2, #8
003de190  00 20 80 e5                                      str r2, [r0]
003de194  d9 ff ff eb                                      bl #0x3de100
003de198  04 00 a0 e1                                      mov r0, r4
003de19c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003de1a0  10 69 5b 00 cc 17 00 00                          .byte 0x10, 0x69, 0x5b, 0x00, 0xcc, 0x17, 0x00, 0x00

; FUNCTION 0x003de1a8, declared_size=4, range_size=4, mode=arm
; class-group: AISPlayerIPhone
; alias: _ZN15AISPlayerIPhone20OnTargetInMeleeRangeEv
; demangled: AISPlayerIPhone::OnTargetInMeleeRange()
; decoder-mode: arm
003de1a8  35 f8 ff ea                                      b #0x3dc284

; FUNCTION 0x003de1ac, declared_size=4, range_size=4, mode=arm
; class-group: AISPlayerIPhone
; alias: _ZN15AISPlayerIPhone20OnTargetInCloseRangeEv
; demangled: AISPlayerIPhone::OnTargetInCloseRange()
; decoder-mode: arm
003de1ac  53 f8 ff ea                                      b #0x3dc300

; FUNCTION 0x003de1b0, declared_size=4, range_size=4, mode=arm
; class-group: AISPlayerIPhone
; alias: _ZN15AISPlayerIPhone21OnTargetInRangedRangeEv
; demangled: AISPlayerIPhone::OnTargetInRangedRange()
; decoder-mode: arm
003de1b0  ea f8 ff ea                                      b #0x3dc560

; FUNCTION 0x003de1b4, declared_size=4, range_size=4, mode=arm
; class-group: AISPlayerIPhone
; alias: _ZN15AISPlayerIPhone18OnTargetOutOfRangeEv
; demangled: AISPlayerIPhone::OnTargetOutOfRange()
; decoder-mode: arm
003de1b4  37 f9 ff ea                                      b #0x3dc698

; FUNCTION 0x003de294, declared_size=60, range_size=60, mode=arm
; class-group: AISPlayerIPhone
; alias: _ZN15AISPlayerIPhoneD0Ev
; demangled: AISPlayerIPhone::~AISPlayerIPhone()
; decoder-mode: arm
003de294  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003de298  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003de29c  10 40 2d e9                                      push {r4, lr}
003de2a0  03 30 8f e0                                      add r3, pc, r3
003de2a4  02 20 93 e7                                      ldr r2, [r3, r2]
003de2a8  00 40 a0 e1                                      mov r4, r0
003de2ac  08 20 82 e2                                      add r2, r2, #8
003de2b0  00 20 80 e5                                      str r2, [r0]
003de2b4  91 ff ff eb                                      bl #0x3de100
003de2b8  04 00 a0 e1                                      mov r0, r4
003de2bc  5f c8 fc eb                                      bl #0x310440
003de2c0  04 00 a0 e1                                      mov r0, r4
003de2c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003de2c8  f0 67 5b 00 cc 17 00 00                          .byte 0xf0, 0x67, 0x5b, 0x00, 0xcc, 0x17, 0x00, 0x00
