; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a17fc, declared_size=24, range_size=24, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectList5AtEndEv
; demangled: ObjectSearcher::RoomObjectList::AtEnd()
; decoder-mode: arm
004a17fc  08 30 90 e5                                      ldr r3, [r0, #8]
004a1800  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004a1804  03 00 50 e1                                      cmp r0, r3
004a1808  00 00 a0 13                                      movne r0, #0
004a180c  01 00 a0 03                                      moveq r0, #1
004a1810  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a1814, declared_size=44, range_size=44, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectList4SizeEv
; demangled: ObjectSearcher::RoomObjectList::Size()
; decoder-mode: arm
004a1814  04 20 90 e5                                      ldr r2, [r0, #4]
004a1818  00 30 92 e5                                      ldr r3, [r2]
004a181c  02 00 53 e1                                      cmp r3, r2
004a1820  00 00 a0 03                                      moveq r0, #0
004a1824  1e ff 2f 01                                      bxeq lr
004a1828  00 00 a0 e3                                      mov r0, #0
004a182c  00 30 93 e5                                      ldr r3, [r3]
004a1830  01 00 80 e2                                      add r0, r0, #1
004a1834  03 00 52 e1                                      cmp r2, r3
004a1838  fb ff ff 1a                                      bne #0x4a182c
004a183c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a1840, declared_size=12, range_size=12, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectList3GetEv
; demangled: ObjectSearcher::RoomObjectList::Get()
; decoder-mode: arm
004a1840  10 30 90 e5                                      ldr r3, [r0, #0x10]
004a1844  08 00 93 e5                                      ldr r0, [r3, #8]
004a1848  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a18a4, declared_size=4, range_size=4, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectListD1Ev
; demangled: ObjectSearcher::RoomObjectList::~RoomObjectList()
; decoder-mode: arm
004a18a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a18a8, declared_size=68, range_size=68, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectList16_ValidateCurrentEv
; demangled: ObjectSearcher::RoomObjectList::_ValidateCurrent()
; decoder-mode: arm
004a18a8  08 30 90 e5                                      ldr r3, [r0, #8]
004a18ac  0c c0 90 e5                                      ldr ip, [r0, #0xc]
004a18b0  0c 00 53 e1                                      cmp r3, ip
004a18b4  0b 00 00 0a                                      beq #0x4a18e8
004a18b8  08 10 93 e5                                      ldr r1, [r3, #8]
004a18bc  10 20 90 e5                                      ldr r2, [r0, #0x10]
004a18c0  02 00 51 e1                                      cmp r1, r2
004a18c4  1e ff 2f 11                                      bxne lr
004a18c8  00 30 93 e5                                      ldr r3, [r3]
004a18cc  03 00 5c e1                                      cmp ip, r3
004a18d0  08 30 80 e5                                      str r3, [r0, #8]
004a18d4  1e ff 2f 01                                      bxeq lr
004a18d8  08 20 93 e5                                      ldr r2, [r3, #8]
004a18dc  00 20 92 e5                                      ldr r2, [r2]
004a18e0  10 20 80 e5                                      str r2, [r0, #0x10]
004a18e4  f1 ff ff ea                                      b #0x4a18b0
004a18e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a18ec, declared_size=16, range_size=16, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectList4NextEv
; demangled: ObjectSearcher::RoomObjectList::Next()
; decoder-mode: arm
004a18ec  10 20 90 e5                                      ldr r2, [r0, #0x10]
004a18f0  00 20 92 e5                                      ldr r2, [r2]
004a18f4  10 20 80 e5                                      str r2, [r0, #0x10]
004a18f8  ea ff ff ea                                      b #0x4a18a8

; FUNCTION 0x004a18fc, declared_size=32, range_size=32, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectList5ResetEv
; demangled: ObjectSearcher::RoomObjectList::Reset()
; decoder-mode: arm
004a18fc  04 10 90 e5                                      ldr r1, [r0, #4]
004a1900  00 20 91 e5                                      ldr r2, [r1]
004a1904  0c 10 80 e5                                      str r1, [r0, #0xc]
004a1908  08 20 80 e5                                      str r2, [r0, #8]
004a190c  08 20 92 e5                                      ldr r2, [r2, #8]
004a1910  00 20 92 e5                                      ldr r2, [r2]
004a1914  10 20 80 e5                                      str r2, [r0, #0x10]
004a1918  e2 ff ff ea                                      b #0x4a18a8

; FUNCTION 0x004a19c4, declared_size=52, range_size=52, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectListD0Ev
; demangled: ObjectSearcher::RoomObjectList::~RoomObjectList()
; decoder-mode: arm
004a19c4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004a19c8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004a19cc  10 40 2d e9                                      push {r4, lr}
004a19d0  03 30 8f e0                                      add r3, pc, r3
004a19d4  02 20 93 e7                                      ldr r2, [r3, r2]
004a19d8  00 40 a0 e1                                      mov r4, r0
004a19dc  08 20 82 e2                                      add r2, r2, #8
004a19e0  00 20 80 e5                                      str r2, [r0]
004a19e4  95 ba f9 eb                                      bl #0x310440
004a19e8  04 00 a0 e1                                      mov r0, r4
004a19ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004a19f0  c0 30 4f 00 b8 28 00 00                          .byte 0xc0, 0x30, 0x4f, 0x00, 0xb8, 0x28, 0x00, 0x00

; FUNCTION 0x004a1cfc, declared_size=52, range_size=52, mode=arm
; class-group: ObjectSearcher::RoomObjectList
; alias: _ZN14ObjectSearcher14RoomObjectList7GetCharEv
; demangled: ObjectSearcher::RoomObjectList::GetChar()
; decoder-mode: arm
004a1cfc  10 40 2d e9                                      push {r4, lr}
004a1d00  10 d0 4d e2                                      sub sp, sp, #0x10
004a1d04  00 30 90 e5                                      ldr r3, [r0]
004a1d08  0f e0 a0 e1                                      mov lr, pc
004a1d0c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
004a1d10  04 40 8d e2                                      add r4, sp, #4
004a1d14  00 10 a0 e1                                      mov r1, r0
004a1d18  04 00 a0 e1                                      mov r0, r4
004a1d1c  02 70 fa eb                                      bl #0x33dd2c
004a1d20  04 00 a0 e1                                      mov r0, r4
004a1d24  8a 78 fa eb                                      bl #0x33ff54
004a1d28  10 d0 8d e2                                      add sp, sp, #0x10
004a1d2c  10 80 bd e8                                      pop {r4, pc}
