; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043f8d0, declared_size=80, range_size=80, mode=arm
; class-group: tRoomInfo
; alias: _ZN9tRoomInfoaSERKS_
; demangled: tRoomInfo::operator=(tRoomInfo const&)
; decoder-mode: arm
0043f8d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0043f8d4  01 30 a0 e1                                      mov r3, r1
0043f8d8  d8 60 c3 e0                                      ldrd r6, r7, [r3], #8
0043f8dc  00 50 a0 e1                                      mov r5, r0
0043f8e0  f8 60 c0 e0                                      strd r6, r7, [r0], #8
0043f8e4  03 00 50 e1                                      cmp r0, r3
0043f8e8  01 40 a0 e1                                      mov r4, r1
0043f8ec  02 00 00 0a                                      beq #0x43f8fc
0043f8f0  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
0043f8f4  18 20 94 e5                                      ldr r2, [r4, #0x18]
0043f8f8  38 44 fb eb                                      bl #0x3109e0
0043f8fc  20 30 94 e5                                      ldr r3, [r4, #0x20]
0043f900  28 00 85 e2                                      add r0, r5, #0x28
0043f904  28 10 84 e2                                      add r1, r4, #0x28
0043f908  20 30 85 e5                                      str r3, [r5, #0x20]
0043f90c  06 64 0f eb                                      bl #0x81892c
0043f910  c0 33 94 e5                                      ldr r3, [r4, #0x3c0]
0043f914  05 00 a0 e1                                      mov r0, r5
0043f918  c0 33 85 e5                                      str r3, [r5, #0x3c0]
0043f91c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0043fb60, declared_size=60, range_size=60, mode=arm
; class-group: tRoomInfo
; alias: _ZN9tRoomInfoC1ERKS_
; demangled: tRoomInfo::tRoomInfo(tRoomInfo const&)
; decoder-mode: arm
0043fb60  70 40 2d e9                                      push {r4, r5, r6, lr}
0043fb64  00 40 a0 e1                                      mov r4, r0
0043fb68  01 50 a0 e1                                      mov r5, r1
0043fb6c  d8 20 c1 e0                                      ldrd r2, r3, [r1], #8
0043fb70  f8 20 c0 e0                                      strd r2, r3, [r0], #8
0043fb74  67 af fb eb                                      bl #0x32b918
0043fb78  20 30 95 e5                                      ldr r3, [r5, #0x20]
0043fb7c  28 00 84 e2                                      add r0, r4, #0x28
0043fb80  28 10 85 e2                                      add r1, r5, #0x28
0043fb84  20 30 84 e5                                      str r3, [r4, #0x20]
0043fb88  30 65 0f eb                                      bl #0x819050
0043fb8c  c0 33 95 e5                                      ldr r3, [r5, #0x3c0]
0043fb90  04 00 a0 e1                                      mov r0, r4
0043fb94  c0 33 84 e5                                      str r3, [r4, #0x3c0]
0043fb98  70 80 bd e8                                      pop {r4, r5, r6, pc}
