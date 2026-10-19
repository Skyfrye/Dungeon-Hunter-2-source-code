; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8ba4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::WorldMapLocker
; alias: _ZN7Structs14WorldMapLockerD2Ev
; demangled: Structs::WorldMapLocker::~WorldMapLocker()
; decoder-mode: arm
004c8ba4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c8ba8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::WorldMapLocker
; alias: _ZN7Structs14WorldMapLockerD1Ev
; demangled: Structs::WorldMapLocker::~WorldMapLocker()
; decoder-mode: arm
004c8ba8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c8bac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::WorldMapLocker
; alias: _ZN7Structs14WorldMapLocker8finalizeEv
; demangled: Structs::WorldMapLocker::finalize()
; decoder-mode: arm
004c8bac  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cd830, declared_size=28, range_size=28, mode=arm
; class-group: Structs::WorldMapLocker
; alias: _ZN7Structs14WorldMapLockerD0Ev
; demangled: Structs::WorldMapLocker::~WorldMapLocker()
; decoder-mode: arm
004cd830  10 40 2d e9                                      push {r4, lr}
004cd834  00 40 a0 e1                                      mov r4, r0
004cd838  da ec ff eb                                      bl #0x4c8ba8
004cd83c  04 00 a0 e1                                      mov r0, r4
004cd840  fe 0a f9 eb                                      bl #0x310440
004cd844  04 00 a0 e1                                      mov r0, r4
004cd848  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004eb4d8, declared_size=208, range_size=208, mode=arm
; class-group: Structs::WorldMapLocker
; alias: _ZN7Structs14WorldMapLocker4readEP11IStreamBase
; demangled: Structs::WorldMapLocker::read(IStreamBase*)
; decoder-mode: arm
004eb4d8  30 40 2d e9                                      push {r4, r5, lr}
004eb4dc  00 40 a0 e1                                      mov r4, r0
004eb4e0  0c d0 4d e2                                      sub sp, sp, #0xc
004eb4e4  01 00 a0 e1                                      mov r0, r1
004eb4e8  01 50 a0 e1                                      mov r5, r1
004eb4ec  04 10 84 e2                                      add r1, r4, #4
004eb4f0  e6 b6 fd eb                                      bl #0x459090
004eb4f4  01 30 a0 e3                                      mov r3, #1
004eb4f8  00 00 53 e3                                      cmp r3, #0
004eb4fc  04 30 8d e5                                      str r3, [sp, #4]
004eb500  0f 00 00 1a                                      bne #0x4eb544
004eb504  05 30 84 e2                                      add r3, r4, #5
004eb508  06 20 84 e2                                      add r2, r4, #6
004eb50c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb510  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb514  02 00 53 e1                                      cmp r3, r2
004eb518  01 10 20 e0                                      eor r1, r0, r1
004eb51c  01 10 43 e5                                      strb r1, [r3, #-1]
004eb520  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb524  00 10 21 e0                                      eor r1, r1, r0
004eb528  01 10 c2 e5                                      strb r1, [r2, #1]
004eb52c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb530  01 20 42 e2                                      sub r2, r2, #1
004eb534  00 10 21 e0                                      eor r1, r1, r0
004eb538  01 10 43 e5                                      strb r1, [r3, #-1]
004eb53c  01 30 83 e2                                      add r3, r3, #1
004eb540  f1 ff ff 3a                                      blo #0x4eb50c
004eb544  05 00 a0 e1                                      mov r0, r5
004eb548  08 10 84 e2                                      add r1, r4, #8
004eb54c  cf b6 fd eb                                      bl #0x459090
004eb550  01 30 a0 e3                                      mov r3, #1
004eb554  00 00 53 e3                                      cmp r3, #0
004eb558  04 30 8d e5                                      str r3, [sp, #4]
004eb55c  0f 00 00 1a                                      bne #0x4eb5a0
004eb560  0a 30 84 e2                                      add r3, r4, #0xa
004eb564  09 40 84 e2                                      add r4, r4, #9
004eb568  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb56c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004eb570  04 00 53 e1                                      cmp r3, r4
004eb574  02 20 21 e0                                      eor r2, r1, r2
004eb578  01 20 44 e5                                      strb r2, [r4, #-1]
004eb57c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb580  01 20 22 e0                                      eor r2, r2, r1
004eb584  01 20 c3 e5                                      strb r2, [r3, #1]
004eb588  01 10 54 e5                                      ldrb r1, [r4, #-1]
004eb58c  01 30 43 e2                                      sub r3, r3, #1
004eb590  01 20 22 e0                                      eor r2, r2, r1
004eb594  01 20 44 e5                                      strb r2, [r4, #-1]
004eb598  01 40 84 e2                                      add r4, r4, #1
004eb59c  f1 ff ff 8a                                      bhi #0x4eb568
004eb5a0  0c d0 8d e2                                      add sp, sp, #0xc
004eb5a4  30 80 bd e8                                      pop {r4, r5, pc}
