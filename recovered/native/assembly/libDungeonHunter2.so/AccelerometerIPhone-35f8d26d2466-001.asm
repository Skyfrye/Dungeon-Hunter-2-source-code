; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033db64, declared_size=16, range_size=16, mode=arm
; class-group: AccelerometerIPhone
; alias: _ZN19AccelerometerIPhone5movedEfff
; demangled: AccelerometerIPhone::moved(float, float, float)
; decoder-mode: arm
0033db64  02 11 81 e2                                      add r1, r1, #0x80000000
0033db68  02 21 82 e2                                      add r2, r2, #0x80000000
0033db6c  02 31 83 e2                                      add r3, r3, #0x80000000
0033db70  59 ff ff ea                                      b #0x33d8dc

; FUNCTION 0x0033db74, declared_size=52, range_size=52, mode=arm
; class-group: AccelerometerIPhone
; alias: _ZN19AccelerometerIPhoneD1Ev
; demangled: AccelerometerIPhone::~AccelerometerIPhone()
; decoder-mode: arm
0033db74  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033db78  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033db7c  10 40 2d e9                                      push {r4, lr}
0033db80  03 30 8f e0                                      add r3, pc, r3
0033db84  02 20 93 e7                                      ldr r2, [r3, r2]
0033db88  00 40 a0 e1                                      mov r4, r0
0033db8c  08 20 82 e2                                      add r2, r2, #8
0033db90  00 20 80 e5                                      str r2, [r0]
0033db94  df fe ff eb                                      bl #0x33d718
0033db98  04 00 a0 e1                                      mov r0, r4
0033db9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033dba0  10 6f 65 00 0c 18 00 00                          .byte 0x10, 0x6f, 0x65, 0x00, 0x0c, 0x18, 0x00, 0x00

; FUNCTION 0x0033dba8, declared_size=28, range_size=28, mode=arm
; class-group: AccelerometerIPhone
; alias: _ZN19AccelerometerIPhoneD0Ev
; demangled: AccelerometerIPhone::~AccelerometerIPhone()
; decoder-mode: arm
0033dba8  10 40 2d e9                                      push {r4, lr}
0033dbac  00 40 a0 e1                                      mov r4, r0
0033dbb0  ef ff ff eb                                      bl #0x33db74
0033dbb4  04 00 a0 e1                                      mov r0, r4
0033dbb8  20 4a ff eb                                      bl #0x310440
0033dbbc  04 00 a0 e1                                      mov r0, r4
0033dbc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033dbc4, declared_size=52, range_size=52, mode=arm
; class-group: AccelerometerIPhone
; alias: _ZN19AccelerometerIPhoneD2Ev
; demangled: AccelerometerIPhone::~AccelerometerIPhone()
; decoder-mode: arm
0033dbc4  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033dbc8  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033dbcc  10 40 2d e9                                      push {r4, lr}
0033dbd0  03 30 8f e0                                      add r3, pc, r3
0033dbd4  02 20 93 e7                                      ldr r2, [r3, r2]
0033dbd8  00 40 a0 e1                                      mov r4, r0
0033dbdc  08 20 82 e2                                      add r2, r2, #8
0033dbe0  00 20 80 e5                                      str r2, [r0]
0033dbe4  cb fe ff eb                                      bl #0x33d718
0033dbe8  04 00 a0 e1                                      mov r0, r4
0033dbec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033dbf0  c0 6e 65 00 0c 18 00 00                          .byte 0xc0, 0x6e, 0x65, 0x00, 0x0c, 0x18, 0x00, 0x00

; FUNCTION 0x0033dbf8, declared_size=52, range_size=52, mode=arm
; class-group: AccelerometerIPhone
; alias: _ZN19AccelerometerIPhoneC1Ev
; demangled: AccelerometerIPhone::AccelerometerIPhone()
; decoder-mode: arm
0033dbf8  70 40 2d e9                                      push {r4, r5, r6, lr}
0033dbfc  20 40 9f e5                                      ldr r4, [pc, #0x20]
0033dc00  00 50 a0 e1                                      mov r5, r0
0033dc04  96 ff ff eb                                      bl #0x33da64
0033dc08  18 30 9f e5                                      ldr r3, [pc, #0x18]
0033dc0c  04 40 8f e0                                      add r4, pc, r4
0033dc10  05 00 a0 e1                                      mov r0, r5
0033dc14  03 30 94 e7                                      ldr r3, [r4, r3]
0033dc18  08 30 83 e2                                      add r3, r3, #8
0033dc1c  00 30 85 e5                                      str r3, [r5]
0033dc20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033dc24  84 6e 65 00 0c 18 00 00                          .byte 0x84, 0x6e, 0x65, 0x00, 0x0c, 0x18, 0x00, 0x00

; FUNCTION 0x0033dc2c, declared_size=52, range_size=52, mode=arm
; class-group: AccelerometerIPhone
; alias: _ZN19AccelerometerIPhoneC2Ev
; demangled: AccelerometerIPhone::AccelerometerIPhone()
; decoder-mode: arm
0033dc2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033dc30  20 40 9f e5                                      ldr r4, [pc, #0x20]
0033dc34  00 50 a0 e1                                      mov r5, r0
0033dc38  89 ff ff eb                                      bl #0x33da64
0033dc3c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0033dc40  04 40 8f e0                                      add r4, pc, r4
0033dc44  05 00 a0 e1                                      mov r0, r5
0033dc48  03 30 94 e7                                      ldr r3, [r4, r3]
0033dc4c  08 30 83 e2                                      add r3, r3, #8
0033dc50  00 30 85 e5                                      str r3, [r5]
0033dc54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033dc58  50 6e 65 00 0c 18 00 00                          .byte 0x50, 0x6e, 0x65, 0x00, 0x0c, 0x18, 0x00, 0x00
