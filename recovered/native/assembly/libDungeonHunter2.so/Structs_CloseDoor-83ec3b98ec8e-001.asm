; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d18c0, declared_size=48, range_size=48, mode=arm
; class-group: Structs::CloseDoor
; alias: _ZN7Structs9CloseDoor8finalizeEv
; demangled: Structs::CloseDoor::finalize()
; decoder-mode: arm
004d18c0  10 40 2d e9                                      push {r4, lr}
004d18c4  00 40 a0 e1                                      mov r4, r0
004d18c8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d18cc  00 00 50 e3                                      cmp r0, #0
004d18d0  03 00 00 0a                                      beq #0x4d18e4
004d18d4  d9 fa f8 eb                                      bl #0x310440
004d18d8  00 30 a0 e3                                      mov r3, #0
004d18dc  08 30 84 e5                                      str r3, [r4, #8]
004d18e0  0c 30 84 e5                                      str r3, [r4, #0xc]
004d18e4  04 00 a0 e1                                      mov r0, r4
004d18e8  10 40 bd e8                                      pop {r4, lr}
004d18ec  dd d4 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d18f0, declared_size=72, range_size=72, mode=arm
; class-group: Structs::CloseDoor
; alias: _ZN7Structs9CloseDoorD1Ev
; demangled: Structs::CloseDoor::~CloseDoor()
; decoder-mode: arm
004d18f0  10 40 2d e9                                      push {r4, lr}
004d18f4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d18f8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d18fc  00 40 a0 e1                                      mov r4, r0
004d1900  03 30 8f e0                                      add r3, pc, r3
004d1904  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1908  02 20 93 e7                                      ldr r2, [r3, r2]
004d190c  00 00 50 e3                                      cmp r0, #0
004d1910  08 20 82 e2                                      add r2, r2, #8
004d1914  00 20 84 e5                                      str r2, [r4]
004d1918  00 00 00 0a                                      beq #0x4d1920
004d191c  c7 fa f8 eb                                      bl #0x310440
004d1920  04 00 a0 e1                                      mov r0, r4
004d1924  cd d4 ff eb                                      bl #0x4c6c60
004d1928  04 00 a0 e1                                      mov r0, r4
004d192c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1930  90 31 4c 00 c0 47 00 00                          .byte 0x90, 0x31, 0x4c, 0x00, 0xc0, 0x47, 0x00, 0x00

; FUNCTION 0x004d1938, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CloseDoor
; alias: _ZN7Structs9CloseDoorD0Ev
; demangled: Structs::CloseDoor::~CloseDoor()
; decoder-mode: arm
004d1938  10 40 2d e9                                      push {r4, lr}
004d193c  00 40 a0 e1                                      mov r4, r0
004d1940  ea ff ff eb                                      bl #0x4d18f0
004d1944  04 00 a0 e1                                      mov r0, r4
004d1948  bc fa f8 eb                                      bl #0x310440
004d194c  04 00 a0 e1                                      mov r0, r4
004d1950  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1954, declared_size=72, range_size=72, mode=arm
; class-group: Structs::CloseDoor
; alias: _ZN7Structs9CloseDoorD2Ev
; demangled: Structs::CloseDoor::~CloseDoor()
; decoder-mode: arm
004d1954  10 40 2d e9                                      push {r4, lr}
004d1958  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d195c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1960  00 40 a0 e1                                      mov r4, r0
004d1964  03 30 8f e0                                      add r3, pc, r3
004d1968  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d196c  02 20 93 e7                                      ldr r2, [r3, r2]
004d1970  00 00 50 e3                                      cmp r0, #0
004d1974  08 20 82 e2                                      add r2, r2, #8
004d1978  00 20 84 e5                                      str r2, [r4]
004d197c  00 00 00 0a                                      beq #0x4d1984
004d1980  ae fa f8 eb                                      bl #0x310440
004d1984  04 00 a0 e1                                      mov r0, r4
004d1988  b4 d4 ff eb                                      bl #0x4c6c60
004d198c  04 00 a0 e1                                      mov r0, r4
004d1990  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1994  2c 31 4c 00 c0 47 00 00                          .byte 0x2c, 0x31, 0x4c, 0x00, 0xc0, 0x47, 0x00, 0x00

; FUNCTION 0x005005f0, declared_size=204, range_size=204, mode=arm
; class-group: Structs::CloseDoor
; alias: _ZN7Structs9CloseDoor4readEP11IStreamBase
; demangled: Structs::CloseDoor::read(IStreamBase*)
; decoder-mode: arm
005005f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005005f4  00 40 a0 e1                                      mov r4, r0
005005f8  08 d0 4d e2                                      sub sp, sp, #8
005005fc  01 50 a0 e1                                      mov r5, r1
00500600  88 fc ff eb                                      bl #0x4ff828
00500604  05 00 a0 e1                                      mov r0, r5
00500608  08 10 84 e2                                      add r1, r4, #8
0050060c  e3 7a fb eb                                      bl #0x3df1a0
00500610  01 30 a0 e3                                      mov r3, #1
00500614  00 00 53 e3                                      cmp r3, #0
00500618  04 30 8d e5                                      str r3, [sp, #4]
0050061c  0f 00 00 1a                                      bne #0x500660
00500620  09 30 84 e2                                      add r3, r4, #9
00500624  0a 20 84 e2                                      add r2, r4, #0xa
00500628  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050062c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500630  02 00 53 e1                                      cmp r3, r2
00500634  01 10 20 e0                                      eor r1, r0, r1
00500638  01 10 43 e5                                      strb r1, [r3, #-1]
0050063c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500640  00 10 21 e0                                      eor r1, r1, r0
00500644  01 10 c2 e5                                      strb r1, [r2, #1]
00500648  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050064c  01 20 42 e2                                      sub r2, r2, #1
00500650  00 10 21 e0                                      eor r1, r1, r0
00500654  01 10 43 e5                                      strb r1, [r3, #-1]
00500658  01 30 83 e2                                      add r3, r3, #1
0050065c  f1 ff ff 3a                                      blo #0x500628
00500660  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500664  00 00 50 e3                                      cmp r0, #0
00500668  00 00 00 0a                                      beq #0x500670
0050066c  73 3f f8 eb                                      bl #0x310440
00500670  08 00 94 e5                                      ldr r0, [r4, #8]
00500674  01 10 a0 e3                                      mov r1, #1
00500678  00 60 a0 e3                                      mov r6, #0
0050067c  01 00 80 e0                                      add r0, r0, r1
00500680  b9 3f f8 eb                                      bl #0x31056c
00500684  08 20 94 e5                                      ldr r2, [r4, #8]
00500688  00 10 a0 e1                                      mov r1, r0
0050068c  0c 00 84 e5                                      str r0, [r4, #0xc]
00500690  06 30 a0 e1                                      mov r3, r6
00500694  05 00 a0 e1                                      mov r0, r5
00500698  6d 5b f8 eb                                      bl #0x317454
0050069c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005006a0  08 30 94 e5                                      ldr r3, [r4, #8]
005006a4  05 00 a0 e1                                      mov r0, r5
005006a8  10 10 84 e2                                      add r1, r4, #0x10
005006ac  03 60 c2 e7                                      strb r6, [r2, r3]
005006b0  79 6c ff eb                                      bl #0x4db89c
005006b4  08 d0 8d e2                                      add sp, sp, #8
005006b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
