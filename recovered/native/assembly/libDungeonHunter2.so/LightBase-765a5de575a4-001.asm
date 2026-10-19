; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040a708, declared_size=4, range_size=4, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase17RefreshAttachmentEv
; demangled: LightBase::RefreshAttachment()
; decoder-mode: arm
0040a708  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040a70c, declared_size=8, range_size=8, mode=arm
; class-group: LightBase
; alias: _ZNK9LightBase11IsUpdatableEv
; demangled: LightBase::IsUpdatable() const
; decoder-mode: arm
0040a70c  01 00 a0 e3                                      mov r0, #1
0040a710  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040a714, declared_size=20, range_size=20, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase6UpdateEv
; demangled: LightBase::Update()
; decoder-mode: arm
0040a714  10 40 2d e9                                      push {r4, lr}
0040a718  00 30 90 e5                                      ldr r3, [r0]
0040a71c  0f e0 a0 e1                                      mov lr, pc
0040a720  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0040a724  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040a728, declared_size=64, range_size=64, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase6TurnOnEv
; demangled: LightBase::TurnOn()
; decoder-mode: arm
0040a728  30 30 9f e5                                      ldr r3, [pc, #0x30]
0040a72c  30 20 9f e5                                      ldr r2, [pc, #0x30]
0040a730  10 40 2d e9                                      push {r4, lr}
0040a734  03 30 8f e0                                      add r3, pc, r3
0040a738  02 20 93 e7                                      ldr r2, [r3, r2]
0040a73c  20 11 90 e5                                      ldr r1, [r0, #0x120]
0040a740  10 30 92 e5                                      ldr r3, [r2, #0x10]
0040a744  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0040a748  04 30 93 e5                                      ldr r3, [r3, #4]
0040a74c  03 00 a0 e1                                      mov r0, r3
0040a750  00 30 93 e5                                      ldr r3, [r3]
0040a754  0f e0 a0 e1                                      mov lr, pc
0040a758  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0040a75c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040a760  5c a3 58 00 f4 37 00 00                          .byte 0x5c, 0xa3, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0040a768, declared_size=28, range_size=28, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase7TurnOffEv
; demangled: LightBase::TurnOff()
; decoder-mode: arm
0040a768  10 40 2d e9                                      push {r4, lr}
0040a76c  20 31 90 e5                                      ldr r3, [r0, #0x120]
0040a770  03 00 a0 e1                                      mov r0, r3
0040a774  00 30 93 e5                                      ldr r3, [r3]
0040a778  0f e0 a0 e1                                      mov lr, pc
0040a77c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0040a780  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040a784, declared_size=372, range_size=372, mode=arm
; class-group: LightBase
; alias: _ZNK9LightBase4DrawEv
; demangled: LightBase::Draw() const
; decoder-mode: arm
0040a784  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040a788  58 41 9f e5                                      ldr r4, [pc, #0x158]
0040a78c  58 51 9f e5                                      ldr r5, [pc, #0x158]
0040a790  58 21 9f e5                                      ldr r2, [pc, #0x158]
0040a794  04 40 8f e0                                      add r4, pc, r4
0040a798  05 30 94 e7                                      ldr r3, [r4, r5]
0040a79c  02 70 94 e7                                      ldr r7, [r4, r2]
0040a7a0  4c d0 4d e2                                      sub sp, sp, #0x4c
0040a7a4  00 30 93 e5                                      ldr r3, [r3]
0040a7a8  00 80 a0 e1                                      mov r8, r0
0040a7ac  07 00 a0 e1                                      mov r0, r7
0040a7b0  44 30 8d e5                                      str r3, [sp, #0x44]
0040a7b4  33 b4 fc eb                                      bl #0x337888
0040a7b8  34 11 9f e5                                      ldr r1, [pc, #0x134]
0040a7bc  2c 60 8d e2                                      add r6, sp, #0x2c
0040a7c0  28 20 8d e2                                      add r2, sp, #0x28
0040a7c4  01 10 8f e0                                      add r1, pc, r1
0040a7c8  06 00 a0 e1                                      mov r0, r6
0040a7cc  46 26 fc eb                                      bl #0x3140ec
0040a7d0  07 00 a0 e1                                      mov r0, r7
0040a7d4  06 10 a0 e1                                      mov r1, r6
0040a7d8  aa b4 fc eb                                      bl #0x337a88
0040a7dc  00 00 50 e3                                      cmp r0, #0
0040a7e0  36 00 00 0a                                      beq #0x40a8c0
0040a7e4  20 31 98 e5                                      ldr r3, [r8, #0x120]
0040a7e8  00 00 53 e3                                      cmp r3, #0
0040a7ec  33 00 00 0a                                      beq #0x40a8c0
0040a7f0  06 00 a0 e1                                      mov r0, r6
0040a7f4  6c 24 fc eb                                      bl #0x3139ac
0040a7f8  20 11 98 e5                                      ldr r1, [r8, #0x120]
0040a7fc  18 00 8d e2                                      add r0, sp, #0x18
0040a800  5e 32 06 eb                                      bl #0x597180
0040a804  18 80 9d e5                                      ldr r8, [sp, #0x18]
0040a808  41 14 a0 e3                                      mov r1, #0x41000000
0040a80c  02 16 81 e2                                      add r1, r1, #0x200000
0040a810  08 00 a0 e1                                      mov r0, r8
0040a814  e2 10 fc eb                                      bl #0x30eba4
0040a818  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
0040a81c  41 14 a0 e3                                      mov r1, #0x41000000
0040a820  00 b0 a0 e1                                      mov fp, r0
0040a824  02 16 81 e2                                      add r1, r1, #0x200000
0040a828  07 00 a0 e1                                      mov r0, r7
0040a82c  dc 10 fc eb                                      bl #0x30eba4
0040a830  20 60 9d e5                                      ldr r6, [sp, #0x20]
0040a834  41 14 a0 e3                                      mov r1, #0x41000000
0040a838  00 90 a0 e1                                      mov sb, r0
0040a83c  02 16 81 e2                                      add r1, r1, #0x200000
0040a840  06 00 a0 e1                                      mov r0, r6
0040a844  d6 10 fc eb                                      bl #0x30eba4
0040a848  41 14 a0 e3                                      mov r1, #0x41000000
0040a84c  00 a0 a0 e1                                      mov sl, r0
0040a850  02 16 81 e2                                      add r1, r1, #0x200000
0040a854  08 00 a0 e1                                      mov r0, r8
0040a858  d3 0e fc eb                                      bl #0x30e3ac
0040a85c  41 14 a0 e3                                      mov r1, #0x41000000
0040a860  00 00 8d e5                                      str r0, [sp]
0040a864  02 16 81 e2                                      add r1, r1, #0x200000
0040a868  07 00 a0 e1                                      mov r0, r7
0040a86c  ce 0e fc eb                                      bl #0x30e3ac
0040a870  41 14 a0 e3                                      mov r1, #0x41000000
0040a874  04 00 8d e5                                      str r0, [sp, #4]
0040a878  02 16 81 e2                                      add r1, r1, #0x200000
0040a87c  06 00 a0 e1                                      mov r0, r6
0040a880  c9 0e fc eb                                      bl #0x30e3ac
0040a884  00 20 a0 e3                                      mov r2, #0
0040a888  00 30 e0 e3                                      mvn r3, #0
0040a88c  08 00 8d e5                                      str r0, [sp, #8]
0040a890  26 20 cd e5                                      strb r2, [sp, #0x26]
0040a894  0d 00 a0 e1                                      mov r0, sp
0040a898  7a 20 e0 e3                                      mvn r2, #0x7a
0040a89c  24 10 8d e2                                      add r1, sp, #0x24
0040a8a0  0c b0 8d e5                                      str fp, [sp, #0xc]
0040a8a4  10 90 8d e5                                      str sb, [sp, #0x10]
0040a8a8  14 a0 8d e5                                      str sl, [sp, #0x14]
0040a8ac  25 30 cd e5                                      strb r3, [sp, #0x25]
0040a8b0  27 20 cd e5                                      strb r2, [sp, #0x27]
0040a8b4  24 30 cd e5                                      strb r3, [sp, #0x24]
0040a8b8  87 14 04 eb                                      bl #0x50fadc
0040a8bc  01 00 00 ea                                      b #0x40a8c8
0040a8c0  06 00 a0 e1                                      mov r0, r6
0040a8c4  38 24 fc eb                                      bl #0x3139ac
0040a8c8  05 30 94 e7                                      ldr r3, [r4, r5]
0040a8cc  44 20 9d e5                                      ldr r2, [sp, #0x44]
0040a8d0  00 30 93 e5                                      ldr r3, [r3]
0040a8d4  03 00 52 e1                                      cmp r2, r3
0040a8d8  01 00 00 1a                                      bne #0x40a8e4
0040a8dc  4c d0 8d e2                                      add sp, sp, #0x4c
0040a8e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040a8e4  89 0e fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0040a8e8  fc a2 58 00 ac 40 00 00 84 08 00 00 54 d3 4b 00  .byte 0xfc, 0xa2, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x54, 0xd3, 0x4b, 0x00

; FUNCTION 0x0040a8f8, declared_size=416, range_size=416, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase8SyncDataEv
; demangled: LightBase::SyncData()
; decoder-mode: arm
0040a8f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040a8fc  80 51 9f e5                                      ldr r5, [pc, #0x180]
0040a900  80 61 9f e5                                      ldr r6, [pc, #0x180]
0040a904  78 11 90 e5                                      ldr r1, [r0, #0x178]
0040a908  05 50 8f e0                                      add r5, pc, r5
0040a90c  06 30 95 e7                                      ldr r3, [r5, r6]
0040a910  7c 21 90 e5                                      ldr r2, [r0, #0x17c]
0040a914  20 d0 4d e2                                      sub sp, sp, #0x20
0040a918  00 30 93 e5                                      ldr r3, [r3]
0040a91c  02 00 51 e1                                      cmp r1, r2
0040a920  00 40 a0 e1                                      mov r4, r0
0040a924  1c 30 8d e5                                      str r3, [sp, #0x1c]
0040a928  18 00 00 0a                                      beq #0x40a990
0040a92c  58 31 9f e5                                      ldr r3, [pc, #0x158]
0040a930  04 70 8d e2                                      add r7, sp, #4
0040a934  03 80 95 e7                                      ldr r8, [r5, r3]
0040a938  08 00 a0 e1                                      mov r0, r8
0040a93c  d1 b3 fc eb                                      bl #0x337888
0040a940  48 11 9f e5                                      ldr r1, [pc, #0x148]
0040a944  0d 20 a0 e1                                      mov r2, sp
0040a948  07 00 a0 e1                                      mov r0, r7
0040a94c  01 10 8f e0                                      add r1, pc, r1
0040a950  e5 25 fc eb                                      bl #0x3140ec
0040a954  08 00 a0 e1                                      mov r0, r8
0040a958  07 10 a0 e1                                      mov r1, r7
0040a95c  49 b4 fc eb                                      bl #0x337a88
0040a960  00 80 a0 e1                                      mov r8, r0
0040a964  07 00 a0 e1                                      mov r0, r7
0040a968  0f 24 fc eb                                      bl #0x3139ac
0040a96c  00 00 58 e3                                      cmp r8, #0
0040a970  06 00 00 1a                                      bne #0x40a990
0040a974  06 30 95 e7                                      ldr r3, [r5, r6]
0040a978  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0040a97c  00 30 93 e5                                      ldr r3, [r3]
0040a980  03 00 52 e1                                      cmp r2, r3
0040a984  3d 00 00 1a                                      bne #0x40aa80
0040a988  20 d0 8d e2                                      add sp, sp, #0x20
0040a98c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0040a990  20 31 94 e5                                      ldr r3, [r4, #0x120]
0040a994  0a 17 0d e3                                      movw r1, #0xd70a
0040a998  23 1c 43 e3                                      movt r1, #0x3c23
0040a99c  34 71 93 e5                                      ldr r7, [r3, #0x134]
0040a9a0  00 00 57 e3                                      cmp r7, #0
0040a9a4  00 30 97 15                                      ldrne r3, [r7]
0040a9a8  01 30 83 12                                      addne r3, r3, #1
0040a9ac  00 30 87 15                                      strne r3, [r7]
0040a9b0  30 81 94 e5                                      ldr r8, [r4, #0x130]
0040a9b4  08 00 a0 e1                                      mov r0, r8
0040a9b8  4e 0e fc eb                                      bl #0x30e2f8
0040a9bc  00 00 50 e3                                      cmp r0, #0
0040a9c0  40 80 87 15                                      strne r8, [r7, #0x40]
0040a9c4  38 11 94 e5                                      ldr r1, [r4, #0x138]
0040a9c8  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
0040a9cc  34 31 94 e5                                      ldr r3, [r4, #0x134]
0040a9d0  38 10 87 e5                                      str r1, [r7, #0x38]
0040a9d4  3c 20 87 e5                                      str r2, [r7, #0x3c]
0040a9d8  34 30 87 e5                                      str r3, [r7, #0x34]
0040a9dc  40 21 94 e5                                      ldr r2, [r4, #0x140]
0040a9e0  44 01 94 e5                                      ldr r0, [r4, #0x144]
0040a9e4  48 11 94 e5                                      ldr r1, [r4, #0x148]
0040a9e8  fe 35 a0 e3                                      mov r3, #0x3f800000
0040a9ec  04 20 87 e5                                      str r2, [r7, #4]
0040a9f0  08 00 87 e5                                      str r0, [r7, #8]
0040a9f4  0c 10 87 e5                                      str r1, [r7, #0xc]
0040a9f8  10 30 87 e5                                      str r3, [r7, #0x10]
0040a9fc  4c 11 94 e5                                      ldr r1, [r4, #0x14c]
0040aa00  50 c1 94 e5                                      ldr ip, [r4, #0x150]
0040aa04  54 01 94 e5                                      ldr r0, [r4, #0x154]
0040aa08  00 20 97 e5                                      ldr r2, [r7]
0040aa0c  18 c0 87 e5                                      str ip, [r7, #0x18]
0040aa10  1c 00 87 e5                                      str r0, [r7, #0x1c]
0040aa14  14 10 87 e5                                      str r1, [r7, #0x14]
0040aa18  20 30 87 e5                                      str r3, [r7, #0x20]
0040aa1c  60 c1 94 e5                                      ldr ip, [r4, #0x160]
0040aa20  58 11 94 e5                                      ldr r1, [r4, #0x158]
0040aa24  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
0040aa28  01 20 42 e2                                      sub r2, r2, #1
0040aa2c  00 00 52 e3                                      cmp r2, #0
0040aa30  30 30 87 e5                                      str r3, [r7, #0x30]
0040aa34  2c c0 87 e5                                      str ip, [r7, #0x2c]
0040aa38  28 00 87 e5                                      str r0, [r7, #0x28]
0040aa3c  24 10 87 e5                                      str r1, [r7, #0x24]
0040aa40  00 20 87 e5                                      str r2, [r7]
0040aa44  ca ff ff 1a                                      bne #0x40a974
0040aa48  54 30 d7 e5                                      ldrb r3, [r7, #0x54]
0040aa4c  00 00 53 e3                                      cmp r3, #0
0040aa50  05 00 00 1a                                      bne #0x40aa6c
0040aa54  38 30 9f e5                                      ldr r3, [pc, #0x38]
0040aa58  50 20 97 e5                                      ldr r2, [r7, #0x50]
0040aa5c  03 30 95 e7                                      ldr r3, [r5, r3]
0040aa60  00 10 93 e5                                      ldr r1, [r3]
0040aa64  00 10 82 e5                                      str r1, [r2]
0040aa68  00 20 83 e5                                      str r2, [r3]
0040aa6c  00 30 a0 e3                                      mov r3, #0
0040aa70  50 30 87 e5                                      str r3, [r7, #0x50]
0040aa74  07 00 a0 e1                                      mov r0, r7
0040aa78  70 16 fc eb                                      bl #0x310440
0040aa7c  bc ff ff ea                                      b #0x40a974
0040aa80  22 0e fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0040aa84  88 a1 58 00 ac 40 00 00 84 08 00 00 8c 50 4b 00  .byte 0x88, 0xa1, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x8c, 0x50, 0x4b, 0x00
0040aa94  c0 3c 00 00                                      .byte 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040aa98, declared_size=8, range_size=8, mode=arm
; class-group: LightBase
; alias: _ZThn36_N9LightBaseD1Ev
; demangled: non-virtual thunk to LightBase::~LightBase()
; decoder-mode: arm
0040aa98  24 00 40 e2                                      sub r0, r0, #0x24
0040aa9c  ff ff ff ea                                      b #0x40aaa0

; FUNCTION 0x0040aaa0, declared_size=112, range_size=112, mode=arm
; class-group: LightBase
; alias: _ZN9LightBaseD1Ev
; demangled: LightBase::~LightBase()
; decoder-mode: arm
0040aaa0  10 40 2d e9                                      push {r4, lr}
0040aaa4  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0040aaa8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0040aaac  20 11 90 e5                                      ldr r1, [r0, #0x120]
0040aab0  02 20 8f e0                                      add r2, pc, r2
0040aab4  03 30 92 e7                                      ldr r3, [r2, r3]
0040aab8  00 40 a0 e1                                      mov r4, r0
0040aabc  00 00 51 e3                                      cmp r1, #0
0040aac0  84 20 83 e2                                      add r2, r3, #0x84
0040aac4  08 00 83 e2                                      add r0, r3, #8
0040aac8  78 30 83 e2                                      add r3, r3, #0x78
0040aacc  09 00 84 e8                                      stm r4, {r0, r3}
0040aad0  24 20 84 e5                                      str r2, [r4, #0x24]
0040aad4  05 00 00 0a                                      beq #0x40aaf0
0040aad8  00 30 91 e5                                      ldr r3, [r1]
0040aadc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0040aae0  00 00 81 e0                                      add r0, r1, r0
0040aae4  a6 4a fc eb                                      bl #0x31d584
0040aae8  00 30 a0 e3                                      mov r3, #0
0040aaec  20 31 84 e5                                      str r3, [r4, #0x120]
0040aaf0  5a 0f 84 e2                                      add r0, r4, #0x168
0040aaf4  ac 23 fc eb                                      bl #0x3139ac
0040aaf8  04 00 a0 e1                                      mov r0, r4
0040aafc  a5 cf fc eb                                      bl #0x33e998
0040ab00  04 00 a0 e1                                      mov r0, r4
0040ab04  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040ab08  e0 9f 58 00 e0 07 00 00                          .byte 0xe0, 0x9f, 0x58, 0x00, 0xe0, 0x07, 0x00, 0x00

; FUNCTION 0x0040ab10, declared_size=8, range_size=8, mode=arm
; class-group: LightBase
; alias: _ZThn36_N9LightBaseD0Ev
; demangled: non-virtual thunk to LightBase::~LightBase()
; decoder-mode: arm
0040ab10  24 00 40 e2                                      sub r0, r0, #0x24
0040ab14  ff ff ff ea                                      b #0x40ab18

; FUNCTION 0x0040ab18, declared_size=28, range_size=28, mode=arm
; class-group: LightBase
; alias: _ZN9LightBaseD0Ev
; demangled: LightBase::~LightBase()
; decoder-mode: arm
0040ab18  10 40 2d e9                                      push {r4, lr}
0040ab1c  00 40 a0 e1                                      mov r4, r0
0040ab20  de ff ff eb                                      bl #0x40aaa0
0040ab24  04 00 a0 e1                                      mov r0, r4
0040ab28  44 16 fc eb                                      bl #0x310440
0040ab2c  04 00 a0 e1                                      mov r0, r4
0040ab30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040ab34, declared_size=112, range_size=112, mode=arm
; class-group: LightBase
; alias: _ZN9LightBaseD2Ev
; demangled: LightBase::~LightBase()
; decoder-mode: arm
0040ab34  10 40 2d e9                                      push {r4, lr}
0040ab38  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0040ab3c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0040ab40  20 11 90 e5                                      ldr r1, [r0, #0x120]
0040ab44  02 20 8f e0                                      add r2, pc, r2
0040ab48  03 30 92 e7                                      ldr r3, [r2, r3]
0040ab4c  00 40 a0 e1                                      mov r4, r0
0040ab50  00 00 51 e3                                      cmp r1, #0
0040ab54  84 20 83 e2                                      add r2, r3, #0x84
0040ab58  08 00 83 e2                                      add r0, r3, #8
0040ab5c  78 30 83 e2                                      add r3, r3, #0x78
0040ab60  09 00 84 e8                                      stm r4, {r0, r3}
0040ab64  24 20 84 e5                                      str r2, [r4, #0x24]
0040ab68  05 00 00 0a                                      beq #0x40ab84
0040ab6c  00 30 91 e5                                      ldr r3, [r1]
0040ab70  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0040ab74  00 00 81 e0                                      add r0, r1, r0
0040ab78  81 4a fc eb                                      bl #0x31d584
0040ab7c  00 30 a0 e3                                      mov r3, #0
0040ab80  20 31 84 e5                                      str r3, [r4, #0x120]
0040ab84  5a 0f 84 e2                                      add r0, r4, #0x168
0040ab88  87 23 fc eb                                      bl #0x3139ac
0040ab8c  04 00 a0 e1                                      mov r0, r4
0040ab90  80 cf fc eb                                      bl #0x33e998
0040ab94  04 00 a0 e1                                      mov r0, r4
0040ab98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040ab9c  4c 9f 58 00 e0 07 00 00                          .byte 0x4c, 0x9f, 0x58, 0x00, 0xe0, 0x07, 0x00, 0x00

; FUNCTION 0x0040aba4, declared_size=180, range_size=180, mode=arm
; class-group: LightBase
; alias: _ZN9LightBaseC1EN10ObjectBase6GO_IDSE
; demangled: LightBase::LightBase(ObjectBase::GO_IDS)
; decoder-mode: arm
0040aba4  70 40 2d e9                                      push {r4, r5, r6, lr}
0040aba8  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
0040abac  00 40 a0 e1                                      mov r4, r0
0040abb0  d6 d1 fc eb                                      bl #0x33f310
0040abb4  98 10 9f e5                                      ldr r1, [pc, #0x98]
0040abb8  05 50 8f e0                                      add r5, pc, r5
0040abbc  00 30 a0 e3                                      mov r3, #0
0040abc0  01 10 95 e7                                      ldr r1, [r5, r1]
0040abc4  5a 2f 84 e2                                      add r2, r4, #0x168
0040abc8  00 60 a0 e3                                      mov r6, #0
0040abcc  08 c0 81 e2                                      add ip, r1, #8
0040abd0  84 00 81 e2                                      add r0, r1, #0x84
0040abd4  78 10 81 e2                                      add r1, r1, #0x78
0040abd8  04 10 84 e5                                      str r1, [r4, #4]
0040abdc  24 00 84 e5                                      str r0, [r4, #0x24]
0040abe0  60 31 84 e5                                      str r3, [r4, #0x160]
0040abe4  02 00 a0 e1                                      mov r0, r2
0040abe8  24 31 84 e5                                      str r3, [r4, #0x124]
0040abec  28 31 84 e5                                      str r3, [r4, #0x128]
0040abf0  2c 31 84 e5                                      str r3, [r4, #0x12c]
0040abf4  34 31 84 e5                                      str r3, [r4, #0x134]
0040abf8  38 31 84 e5                                      str r3, [r4, #0x138]
0040abfc  3c 31 84 e5                                      str r3, [r4, #0x13c]
0040ac00  40 31 84 e5                                      str r3, [r4, #0x140]
0040ac04  44 31 84 e5                                      str r3, [r4, #0x144]
0040ac08  48 31 84 e5                                      str r3, [r4, #0x148]
0040ac0c  4c 31 84 e5                                      str r3, [r4, #0x14c]
0040ac10  50 31 84 e5                                      str r3, [r4, #0x150]
0040ac14  54 31 84 e5                                      str r3, [r4, #0x154]
0040ac18  58 31 84 e5                                      str r3, [r4, #0x158]
0040ac1c  5c 31 84 e5                                      str r3, [r4, #0x15c]
0040ac20  00 c0 84 e5                                      str ip, [r4]
0040ac24  20 61 84 e5                                      str r6, [r4, #0x120]
0040ac28  78 21 84 e5                                      str r2, [r4, #0x178]
0040ac2c  7c 21 84 e5                                      str r2, [r4, #0x17c]
0040ac30  10 10 a0 e3                                      mov r1, #0x10
0040ac34  90 1a fc eb                                      bl #0x31167c
0040ac38  78 31 94 e5                                      ldr r3, [r4, #0x178]
0040ac3c  04 00 a0 e1                                      mov r0, r4
0040ac40  00 60 c3 e5                                      strb r6, [r3]
0040ac44  01 30 a0 e3                                      mov r3, #1
0040ac48  85 30 c4 e5                                      strb r3, [r4, #0x85]
0040ac4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0040ac50  d8 9e 58 00 e0 07 00 00                          .byte 0xd8, 0x9e, 0x58, 0x00, 0xe0, 0x07, 0x00, 0x00

; FUNCTION 0x0040ac58, declared_size=180, range_size=180, mode=arm
; class-group: LightBase
; alias: _ZN9LightBaseC2EN10ObjectBase6GO_IDSE
; demangled: LightBase::LightBase(ObjectBase::GO_IDS)
; decoder-mode: arm
0040ac58  70 40 2d e9                                      push {r4, r5, r6, lr}
0040ac5c  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
0040ac60  00 40 a0 e1                                      mov r4, r0
0040ac64  a9 d1 fc eb                                      bl #0x33f310
0040ac68  98 10 9f e5                                      ldr r1, [pc, #0x98]
0040ac6c  05 50 8f e0                                      add r5, pc, r5
0040ac70  00 30 a0 e3                                      mov r3, #0
0040ac74  01 10 95 e7                                      ldr r1, [r5, r1]
0040ac78  5a 2f 84 e2                                      add r2, r4, #0x168
0040ac7c  00 60 a0 e3                                      mov r6, #0
0040ac80  08 c0 81 e2                                      add ip, r1, #8
0040ac84  84 00 81 e2                                      add r0, r1, #0x84
0040ac88  78 10 81 e2                                      add r1, r1, #0x78
0040ac8c  04 10 84 e5                                      str r1, [r4, #4]
0040ac90  24 00 84 e5                                      str r0, [r4, #0x24]
0040ac94  60 31 84 e5                                      str r3, [r4, #0x160]
0040ac98  02 00 a0 e1                                      mov r0, r2
0040ac9c  24 31 84 e5                                      str r3, [r4, #0x124]
0040aca0  28 31 84 e5                                      str r3, [r4, #0x128]
0040aca4  2c 31 84 e5                                      str r3, [r4, #0x12c]
0040aca8  34 31 84 e5                                      str r3, [r4, #0x134]
0040acac  38 31 84 e5                                      str r3, [r4, #0x138]
0040acb0  3c 31 84 e5                                      str r3, [r4, #0x13c]
0040acb4  40 31 84 e5                                      str r3, [r4, #0x140]
0040acb8  44 31 84 e5                                      str r3, [r4, #0x144]
0040acbc  48 31 84 e5                                      str r3, [r4, #0x148]
0040acc0  4c 31 84 e5                                      str r3, [r4, #0x14c]
0040acc4  50 31 84 e5                                      str r3, [r4, #0x150]
0040acc8  54 31 84 e5                                      str r3, [r4, #0x154]
0040accc  58 31 84 e5                                      str r3, [r4, #0x158]
0040acd0  5c 31 84 e5                                      str r3, [r4, #0x15c]
0040acd4  00 c0 84 e5                                      str ip, [r4]
0040acd8  20 61 84 e5                                      str r6, [r4, #0x120]
0040acdc  78 21 84 e5                                      str r2, [r4, #0x178]
0040ace0  7c 21 84 e5                                      str r2, [r4, #0x17c]
0040ace4  10 10 a0 e3                                      mov r1, #0x10
0040ace8  63 1a fc eb                                      bl #0x31167c
0040acec  78 31 94 e5                                      ldr r3, [r4, #0x178]
0040acf0  04 00 a0 e1                                      mov r0, r4
0040acf4  00 60 c3 e5                                      strb r6, [r3]
0040acf8  01 30 a0 e3                                      mov r3, #1
0040acfc  85 30 c4 e5                                      strb r3, [r4, #0x85]
0040ad00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0040ad04  24 9e 58 00 e0 07 00 00                          .byte 0x24, 0x9e, 0x58, 0x00, 0xe0, 0x07, 0x00, 0x00

; FUNCTION 0x0040ade8, declared_size=8, range_size=8, mode=arm
; class-group: LightBase
; alias: _ZThn4_N9LightBase17DeclarePropertiesEv
; demangled: non-virtual thunk to LightBase::DeclareProperties()
; decoder-mode: arm
0040ade8  04 00 40 e2                                      sub r0, r0, #4
0040adec  ff ff ff ea                                      b #0x40adf0

; FUNCTION 0x0040adf0, declared_size=720, range_size=720, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase17DeclarePropertiesEv
; demangled: LightBase::DeclareProperties()
; decoder-mode: arm
0040adf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040adf4  88 52 9f e5                                      ldr r5, [pc, #0x288]
0040adf8  88 32 9f e5                                      ldr r3, [pc, #0x288]
0040adfc  88 12 9f e5                                      ldr r1, [pc, #0x288]
0040ae00  05 50 8f e0                                      add r5, pc, r5
0040ae04  03 c0 95 e7                                      ldr ip, [r5, r3]
0040ae08  80 32 9f e5                                      ldr r3, [pc, #0x280]
0040ae0c  8c d0 4d e2                                      sub sp, sp, #0x8c
0040ae10  00 70 9c e5                                      ldr r7, [ip]
0040ae14  03 30 95 e7                                      ldr r3, [r5, r3]
0040ae18  04 40 80 e2                                      add r4, r0, #4
0040ae1c  00 60 a0 e1                                      mov r6, r0
0040ae20  00 e0 93 e5                                      ldr lr, [r3]
0040ae24  08 a0 93 e5                                      ldr sl, [r3, #8]
0040ae28  04 80 93 e5                                      ldr r8, [r3, #4]
0040ae2c  49 2f 80 e2                                      add r2, r0, #0x124
0040ae30  3c 30 8d e2                                      add r3, sp, #0x3c
0040ae34  01 10 8f e0                                      add r1, pc, r1
0040ae38  04 00 a0 e1                                      mov r0, r4
0040ae3c  04 c0 8d e5                                      str ip, [sp, #4]
0040ae40  3c e0 8d e5                                      str lr, [sp, #0x3c]
0040ae44  84 70 8d e5                                      str r7, [sp, #0x84]
0040ae48  40 80 8d e5                                      str r8, [sp, #0x40]
0040ae4c  44 a0 8d e5                                      str sl, [sp, #0x44]
0040ae50  8f fa fd eb                                      bl #0x389894
0040ae54  00 10 a0 e3                                      mov r1, #0
0040ae58  24 00 a0 e3                                      mov r0, #0x24
0040ae5c  c3 15 fc eb                                      bl #0x310570
0040ae60  2c b2 9f e5                                      ldr fp, [pc, #0x22c]
0040ae64  2c 82 9f e5                                      ldr r8, [pc, #0x22c]
0040ae68  00 70 a0 e1                                      mov r7, r0
0040ae6c  0b b0 95 e7                                      ldr fp, [r5, fp]
0040ae70  08 80 8f e0                                      add r8, pc, r8
0040ae74  08 10 a0 e1                                      mov r1, r8
0040ae78  08 b0 8b e2                                      add fp, fp, #8
0040ae7c  50 20 8d e2                                      add r2, sp, #0x50
0040ae80  08 b0 80 e4                                      str fp, [r0], #8
0040ae84  98 24 fc eb                                      bl #0x3140ec
0040ae88  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
0040ae8c  13 2e 86 e2                                      add r2, r6, #0x130
0040ae90  02 20 64 e0                                      rsb r2, r4, r2
0040ae94  03 30 95 e7                                      ldr r3, [r5, r3]
0040ae98  04 20 87 e5                                      str r2, [r7, #4]
0040ae9c  08 10 a0 e1                                      mov r1, r8
0040aea0  08 30 83 e2                                      add r3, r3, #8
0040aea4  00 30 87 e5                                      str r3, [r7]
0040aea8  01 31 a0 e3                                      mov r3, #0x40000000
0040aeac  20 30 87 e5                                      str r3, [r7, #0x20]
0040aeb0  07 20 a0 e1                                      mov r2, r7
0040aeb4  04 00 a0 e1                                      mov r0, r4
0040aeb8  89 23 04 eb                                      bl #0x513ce4
0040aebc  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
0040aec0  00 70 a0 e3                                      mov r7, #0
0040aec4  4d 2f 86 e2                                      add r2, r6, #0x134
0040aec8  04 00 a0 e1                                      mov r0, r4
0040aecc  01 10 8f e0                                      add r1, pc, r1
0040aed0  30 30 8d e2                                      add r3, sp, #0x30
0040aed4  30 70 8d e5                                      str r7, [sp, #0x30]
0040aed8  34 70 8d e5                                      str r7, [sp, #0x34]
0040aedc  38 70 8d e5                                      str r7, [sp, #0x38]
0040aee0  6b fa fd eb                                      bl #0x389894
0040aee4  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
0040aee8  05 2d 86 e2                                      add r2, r6, #0x140
0040aeec  04 00 a0 e1                                      mov r0, r4
0040aef0  01 10 8f e0                                      add r1, pc, r1
0040aef4  24 30 8d e2                                      add r3, sp, #0x24
0040aef8  24 70 8d e5                                      str r7, [sp, #0x24]
0040aefc  28 70 8d e5                                      str r7, [sp, #0x28]
0040af00  2c 70 8d e5                                      str r7, [sp, #0x2c]
0040af04  62 fa fd eb                                      bl #0x389894
0040af08  98 11 9f e5                                      ldr r1, [pc, #0x198]
0040af0c  53 2f 86 e2                                      add r2, r6, #0x14c
0040af10  04 00 a0 e1                                      mov r0, r4
0040af14  01 10 8f e0                                      add r1, pc, r1
0040af18  18 30 8d e2                                      add r3, sp, #0x18
0040af1c  18 70 8d e5                                      str r7, [sp, #0x18]
0040af20  1c 70 8d e5                                      str r7, [sp, #0x1c]
0040af24  20 70 8d e5                                      str r7, [sp, #0x20]
0040af28  59 fa fd eb                                      bl #0x389894
0040af2c  78 11 9f e5                                      ldr r1, [pc, #0x178]
0040af30  0c 30 8d e2                                      add r3, sp, #0xc
0040af34  56 2f 86 e2                                      add r2, r6, #0x158
0040af38  01 10 8f e0                                      add r1, pc, r1
0040af3c  04 00 a0 e1                                      mov r0, r4
0040af40  14 70 8d e5                                      str r7, [sp, #0x14]
0040af44  0c 70 8d e5                                      str r7, [sp, #0xc]
0040af48  10 70 8d e5                                      str r7, [sp, #0x10]
0040af4c  50 fa fd eb                                      bl #0x389894
0040af50  00 10 a0 e3                                      mov r1, #0
0040af54  24 00 a0 e3                                      mov r0, #0x24
0040af58  84 15 fc eb                                      bl #0x310570
0040af5c  4c a1 9f e5                                      ldr sl, [pc, #0x14c]
0040af60  00 80 a0 e1                                      mov r8, r0
0040af64  4c 20 8d e2                                      add r2, sp, #0x4c
0040af68  0a a0 8f e0                                      add sl, pc, sl
0040af6c  0a 10 a0 e1                                      mov r1, sl
0040af70  08 b0 80 e4                                      str fp, [r0], #8
0040af74  5c 24 fc eb                                      bl #0x3140ec
0040af78  34 31 9f e5                                      ldr r3, [pc, #0x134]
0040af7c  59 2f 86 e2                                      add r2, r6, #0x164
0040af80  00 70 a0 e3                                      mov r7, #0
0040af84  03 30 95 e7                                      ldr r3, [r5, r3]
0040af88  02 20 64 e0                                      rsb r2, r4, r2
0040af8c  6c 90 8d e2                                      add sb, sp, #0x6c
0040af90  08 30 83 e2                                      add r3, r3, #8
0040af94  00 30 88 e5                                      str r3, [r8]
0040af98  04 20 88 e5                                      str r2, [r8, #4]
0040af9c  0a 10 a0 e1                                      mov r1, sl
0040afa0  08 20 a0 e1                                      mov r2, r8
0040afa4  20 70 c8 e5                                      strb r7, [r8, #0x20]
0040afa8  04 00 a0 e1                                      mov r0, r4
0040afac  4c 23 04 eb                                      bl #0x513ce4
0040afb0  09 00 a0 e1                                      mov r0, sb
0040afb4  10 10 a0 e3                                      mov r1, #0x10
0040afb8  7c 90 8d e5                                      str sb, [sp, #0x7c]
0040afbc  80 90 8d e5                                      str sb, [sp, #0x80]
0040afc0  ad 19 fc eb                                      bl #0x31167c
0040afc4  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0040afc8  54 80 8d e2                                      add r8, sp, #0x54
0040afcc  08 00 a0 e1                                      mov r0, r8
0040afd0  00 70 c3 e5                                      strb r7, [r3]
0040afd4  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0040afd8  80 10 9d e5                                      ldr r1, [sp, #0x80]
0040afdc  64 80 8d e5                                      str r8, [sp, #0x64]
0040afe0  68 80 8d e5                                      str r8, [sp, #0x68]
0040afe4  bf 19 fc eb                                      bl #0x3116e8
0040afe8  07 10 a0 e1                                      mov r1, r7
0040afec  38 00 a0 e3                                      mov r0, #0x38
0040aff0  5e 15 fc eb                                      bl #0x310570
0040aff4  bc a0 9f e5                                      ldr sl, [pc, #0xbc]
0040aff8  00 70 a0 e1                                      mov r7, r0
0040affc  48 20 8d e2                                      add r2, sp, #0x48
0040b000  0a a0 8f e0                                      add sl, pc, sl
0040b004  0a 10 a0 e1                                      mov r1, sl
0040b008  08 b0 80 e4                                      str fp, [r0], #8
0040b00c  36 24 fc eb                                      bl #0x3140ec
0040b010  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0040b014  5a 6f 86 e2                                      add r6, r6, #0x168
0040b018  07 00 a0 e1                                      mov r0, r7
0040b01c  03 30 95 e7                                      ldr r3, [r5, r3]
0040b020  06 60 64 e0                                      rsb r6, r4, r6
0040b024  04 60 87 e5                                      str r6, [r7, #4]
0040b028  08 30 83 e2                                      add r3, r3, #8
0040b02c  20 30 80 e4                                      str r3, [r0], #0x20
0040b030  30 00 87 e5                                      str r0, [r7, #0x30]
0040b034  34 00 87 e5                                      str r0, [r7, #0x34]
0040b038  68 10 9d e5                                      ldr r1, [sp, #0x68]
0040b03c  64 20 9d e5                                      ldr r2, [sp, #0x64]
0040b040  a8 19 fc eb                                      bl #0x3116e8
0040b044  07 20 a0 e1                                      mov r2, r7
0040b048  0a 10 a0 e1                                      mov r1, sl
0040b04c  04 00 a0 e1                                      mov r0, r4
0040b050  23 23 04 eb                                      bl #0x513ce4
0040b054  08 00 a0 e1                                      mov r0, r8
0040b058  53 22 fc eb                                      bl #0x3139ac
0040b05c  09 00 a0 e1                                      mov r0, sb
0040b060  51 22 fc eb                                      bl #0x3139ac
0040b064  04 c0 9d e5                                      ldr ip, [sp, #4]
0040b068  84 20 9d e5                                      ldr r2, [sp, #0x84]
0040b06c  00 30 9c e5                                      ldr r3, [ip]
0040b070  03 00 52 e1                                      cmp r2, r3
0040b074  01 00 00 1a                                      bne #0x40b080
0040b078  8c d0 8d e2                                      add sp, sp, #0x8c
0040b07c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040b080  a2 0c fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0040b084  90 9c 58 00 ac 40 00 00 f4 73 4b 00 2c 3f 00 00  .byte 0x90, 0x9c, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x73, 0x4b, 0x00, 0x2c, 0x3f, 0x00, 0x00
0040b094  30 23 00 00 c8 cc 4b 00 bc 24 00 00 74 cc 4b 00  .byte 0x30, 0x23, 0x00, 0x00, 0xc8, 0xcc, 0x4b, 0x00, 0xbc, 0x24, 0x00, 0x00, 0x74, 0xcc, 0x4b, 0x00
0040b0a4  18 ba 4b 00 3c cc 4b 00 28 cc 4b 00 08 cc 4b 00  .byte 0x18, 0xba, 0x4b, 0x00, 0x3c, 0xcc, 0x4b, 0x00, 0x28, 0xcc, 0x4b, 0x00, 0x08, 0xcc, 0x4b, 0x00
0040b0b4  4c 3e 00 00 98 e8 4b 00 94 34 00 00              .byte 0x4c, 0x3e, 0x00, 0x00, 0x98, 0xe8, 0x4b, 0x00, 0x94, 0x34, 0x00, 0x00

; FUNCTION 0x0040b0c0, declared_size=776, range_size=776, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase8InitPostEv
; demangled: LightBase::InitPost()
; decoder-mode: arm
0040b0c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040b0c4  43 54 a0 e3                                      mov r5, #0x43000000
0040b0c8  18 d0 4d e2                                      sub sp, sp, #0x18
0040b0cc  7f 58 85 e2                                      add r5, r5, #0x7f0000
0040b0d0  18 10 8d e2                                      add r1, sp, #0x18
0040b0d4  00 40 a0 e1                                      mov r4, r0
0040b0d8  04 50 21 e5                                      str r5, [r1, #-4]!
0040b0dc  05 0d 80 e2                                      add r0, r0, #0x140
0040b0e0  d9 07 fd eb                                      bl #0x34d04c
0040b0e4  18 10 8d e2                                      add r1, sp, #0x18
0040b0e8  08 50 21 e5                                      str r5, [r1, #-8]!
0040b0ec  53 0f 84 e2                                      add r0, r4, #0x14c
0040b0f0  d5 07 fd eb                                      bl #0x34d04c
0040b0f4  18 10 8d e2                                      add r1, sp, #0x18
0040b0f8  0c 50 21 e5                                      str r5, [r1, #-0xc]!
0040b0fc  56 0f 84 e2                                      add r0, r4, #0x158
0040b100  d1 07 fd eb                                      bl #0x34d04c
0040b104  11 13 a0 e3                                      mov r1, #0x44000000
0040b108  38 01 94 e5                                      ldr r0, [r4, #0x138]
0040b10c  7a 18 81 e2                                      add r1, r1, #0x7a0000
0040b110  df 0e fc eb                                      bl #0x30ec94
0040b114  00 14 02 e3                                      movw r1, #0x2400
0040b118  38 01 84 e5                                      str r0, [r4, #0x138]
0040b11c  74 19 44 e3                                      movt r1, #0x4974
0040b120  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
0040b124  da 0e fc eb                                      bl #0x30ec94
0040b128  7c 11 94 e5                                      ldr r1, [r4, #0x17c]
0040b12c  78 31 94 e5                                      ldr r3, [r4, #0x178]
0040b130  70 52 9f e5                                      ldr r5, [pc, #0x270]
0040b134  3c 01 84 e5                                      str r0, [r4, #0x13c]
0040b138  01 00 53 e1                                      cmp r3, r1
0040b13c  05 50 8f e0                                      add r5, pc, r5
0040b140  48 00 00 0a                                      beq #0x40b268
0040b144  60 62 9f e5                                      ldr r6, [pc, #0x260]
0040b148  60 22 9f e5                                      ldr r2, [pc, #0x260]
0040b14c  00 70 a0 e3                                      mov r7, #0
0040b150  06 30 95 e7                                      ldr r3, [r5, r6]
0040b154  02 20 8f e0                                      add r2, pc, r2
0040b158  10 00 93 e5                                      ldr r0, [r3, #0x10]
0040b15c  07 30 a0 e1                                      mov r3, r7
0040b160  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0040b164  00 70 8d e5                                      str r7, [sp]
0040b168  62 39 fd eb                                      bl #0x3596f8
0040b16c  00 80 50 e2                                      subs r8, r0, #0
0040b170  1f 00 00 0a                                      beq #0x40b1f4
0040b174  08 10 a0 e1                                      mov r1, r8
0040b178  88 21 b1 e5                                      ldr r2, [r1, #0x188]!
0040b17c  01 00 52 e1                                      cmp r2, r1
0040b180  07 10 a0 01                                      moveq r1, r7
0040b184  01 30 a0 01                                      moveq r3, r1
0040b188  06 00 00 0a                                      beq #0x40b1a8
0040b18c  02 30 a0 e1                                      mov r3, r2
0040b190  00 30 93 e5                                      ldr r3, [r3]
0040b194  03 00 51 e1                                      cmp r1, r3
0040b198  fc ff ff 1a                                      bne #0x40b190
0040b19c  08 30 92 e5                                      ldr r3, [r2, #8]
0040b1a0  01 20 a0 e1                                      mov r2, r1
0040b1a4  03 10 a0 e1                                      mov r1, r3
0040b1a8  20 31 84 e5                                      str r3, [r4, #0x120]
0040b1ac  88 31 98 e5                                      ldr r3, [r8, #0x188]
0040b1b0  02 00 53 e1                                      cmp r3, r2
0040b1b4  02 00 00 0a                                      beq #0x40b1c4
0040b1b8  00 30 93 e5                                      ldr r3, [r3]
0040b1bc  02 00 53 e1                                      cmp r3, r2
0040b1c0  fc ff ff 1a                                      bne #0x40b1b8
0040b1c4  06 30 95 e7                                      ldr r3, [r5, r6]
0040b1c8  10 30 93 e5                                      ldr r3, [r3, #0x10]
0040b1cc  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0040b1d0  04 30 93 e5                                      ldr r3, [r3, #4]
0040b1d4  03 00 a0 e1                                      mov r0, r3
0040b1d8  00 30 93 e5                                      ldr r3, [r3]
0040b1dc  0f e0 a0 e1                                      mov lr, pc
0040b1e0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0040b1e4  00 30 98 e5                                      ldr r3, [r8]
0040b1e8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0040b1ec  00 00 88 e0                                      add r0, r8, r0
0040b1f0  e3 48 fc eb                                      bl #0x31d584
0040b1f4  20 11 94 e5                                      ldr r1, [r4, #0x120]
0040b1f8  00 00 51 e3                                      cmp r1, #0
0040b1fc  1b 00 00 0a                                      beq #0x40b270
0040b200  00 20 91 e5                                      ldr r2, [r1]
0040b204  06 30 95 e7                                      ldr r3, [r5, r6]
0040b208  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0040b20c  02 10 81 e0                                      add r1, r1, r2
0040b210  04 20 91 e5                                      ldr r2, [r1, #4]
0040b214  01 20 82 e2                                      add r2, r2, #1
0040b218  04 20 81 e5                                      str r2, [r1, #4]
0040b21c  64 21 d4 e5                                      ldrb r2, [r4, #0x164]
0040b220  10 30 93 e5                                      ldr r3, [r3, #0x10]
0040b224  00 00 52 e3                                      cmp r2, #0
0040b228  1c 50 93 e5                                      ldr r5, [r3, #0x1c]
0040b22c  07 00 00 0a                                      beq #0x40b250
0040b230  28 84 95 e5                                      ldr r8, [r5, #0x428]
0040b234  2c 34 95 e5                                      ldr r3, [r5, #0x42c]
0040b238  03 00 58 e1                                      cmp r8, r3
0040b23c  38 00 00 0a                                      beq #0x40b324
0040b240  00 40 88 e5                                      str r4, [r8]
0040b244  28 34 95 e5                                      ldr r3, [r5, #0x428]
0040b248  04 30 83 e2                                      add r3, r3, #4
0040b24c  28 34 85 e5                                      str r3, [r5, #0x428]
0040b250  04 00 a0 e1                                      mov r0, r4
0040b254  00 30 94 e5                                      ldr r3, [r4]
0040b258  0f e0 a0 e1                                      mov lr, pc
0040b25c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0040b260  18 d0 8d e2                                      add sp, sp, #0x18
0040b264  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0040b268  3c 61 9f e5                                      ldr r6, [pc, #0x13c]
0040b26c  e0 ff ff ea                                      b #0x40b1f4
0040b270  57 0f a0 e3                                      mov r0, #0x15c
0040b274  cc a3 04 eb                                      bl #0x5341ac
0040b278  01 10 a0 e3                                      mov r1, #1
0040b27c  00 70 a0 e1                                      mov r7, r0
0040b280  9a e3 05 eb                                      bl #0x5840f0
0040b284  06 30 95 e7                                      ldr r3, [r5, r6]
0040b288  20 71 84 e5                                      str r7, [r4, #0x120]
0040b28c  07 10 a0 e1                                      mov r1, r7
0040b290  10 30 93 e5                                      ldr r3, [r3, #0x10]
0040b294  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0040b298  04 30 93 e5                                      ldr r3, [r3, #4]
0040b29c  03 00 a0 e1                                      mov r0, r3
0040b2a0  00 30 93 e5                                      ldr r3, [r3]
0040b2a4  0f e0 a0 e1                                      mov lr, pc
0040b2a8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0040b2ac  20 31 94 e5                                      ldr r3, [r4, #0x120]
0040b2b0  00 20 93 e5                                      ldr r2, [r3]
0040b2b4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0040b2b8  00 00 83 e0                                      add r0, r3, r0
0040b2bc  b0 48 fc eb                                      bl #0x31d584
0040b2c0  20 11 94 e5                                      ldr r1, [r4, #0x120]
0040b2c4  00 00 51 e3                                      cmp r1, #0
0040b2c8  cc ff ff 1a                                      bne #0x40b200
0040b2cc  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0040b2d0  03 30 95 e7                                      ldr r3, [r5, r3]
0040b2d4  00 30 93 e5                                      ldr r3, [r3]
0040b2d8  02 00 53 e3                                      cmp r3, #2
0040b2dc  00 10 81 05                                      streq r1, [r1]
0040b2e0  c6 ff ff 0a                                      beq #0x40b200
0040b2e4  01 00 53 e3                                      cmp r3, #1
0040b2e8  c4 ff ff 1a                                      bne #0x40b200
0040b2ec  c4 00 9f e5                                      ldr r0, [pc, #0xc4]
0040b2f0  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0040b2f4  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0040b2f8  00 00 95 e7                                      ldr r0, [r5, r0]
0040b2fc  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0040b300  01 10 8f e0                                      add r1, pc, r1
0040b304  5e c0 a0 e3                                      mov ip, #0x5e
0040b308  a8 00 80 e2                                      add r0, r0, #0xa8
0040b30c  02 20 8f e0                                      add r2, pc, r2
0040b310  03 30 8f e0                                      add r3, pc, r3
0040b314  00 c0 8d e5                                      str ip, [sp]
0040b318  39 0b fc eb                                      bl #0x30e004
0040b31c  20 11 94 e5                                      ldr r1, [r4, #0x120]
0040b320  b6 ff ff ea                                      b #0x40b200
0040b324  24 34 95 e5                                      ldr r3, [r5, #0x424]
0040b328  08 30 63 e0                                      rsb r3, r3, r8
0040b32c  43 31 a0 e1                                      asr r3, r3, #2
0040b330  01 00 53 e3                                      cmp r3, #1
0040b334  03 70 83 20                                      addhs r7, r3, r3
0040b338  01 70 83 32                                      addlo r7, r3, #1
0040b33c  07 01 77 e3                                      cmn r7, #0xc0000001
0040b340  10 00 00 9a                                      bls #0x40b388
0040b344  03 70 e0 e3                                      mvn r7, #3
0040b348  00 10 a0 e3                                      mov r1, #0
0040b34c  07 00 a0 e1                                      mov r0, r7
0040b350  84 14 fc eb                                      bl #0x310568
0040b354  24 14 95 e5                                      ldr r1, [r5, #0x424]
0040b358  00 60 a0 e1                                      mov r6, r0
0040b35c  01 80 58 e0                                      subs r8, r8, r1
0040b360  00 80 a0 01                                      moveq r8, r0
0040b364  0b 00 00 1a                                      bne #0x40b398
0040b368  04 40 88 e4                                      str r4, [r8], #4
0040b36c  24 04 95 e5                                      ldr r0, [r5, #0x424]
0040b370  07 70 86 e0                                      add r7, r6, r7
0040b374  35 14 fc eb                                      bl #0x310450
0040b378  2c 74 85 e5                                      str r7, [r5, #0x42c]
0040b37c  28 84 85 e5                                      str r8, [r5, #0x428]
0040b380  24 64 85 e5                                      str r6, [r5, #0x424]
0040b384  b1 ff ff ea                                      b #0x40b250
0040b388  07 00 53 e1                                      cmp r3, r7
0040b38c  07 71 a0 91                                      lslls r7, r7, #2
0040b390  ec ff ff 9a                                      bls #0x40b348
0040b394  ea ff ff ea                                      b #0x40b344
0040b398  08 20 a0 e1                                      mov r2, r8
0040b39c  e5 0a fc eb                                      bl #0x30df38
0040b3a0  08 80 80 e0                                      add r8, r0, r8
0040b3a4  ef ff ff ea                                      b #0x40b368
; mapping-symbol data/literal pool
0040b3a8  54 99 58 00 f4 37 00 00 b4 06 4c 00 c0 39 00 00  .byte 0x54, 0x99, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb4, 0x06, 0x4c, 0x00, 0xc0, 0x39, 0x00, 0x00
0040b3b8  c0 19 00 00 d8 30 4b 00 74 c8 4b 00 a0 c8 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xd8, 0x30, 0x4b, 0x00, 0x74, 0xc8, 0x4b, 0x00, 0xa0, 0xc8, 0x4b, 0x00

; FUNCTION 0x0040b3c8, declared_size=208, range_size=208, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase14SetAttenuationE7Point3DIfE
; demangled: LightBase::SetAttenuation(Point3D<float>)
; decoder-mode: arm
0040b3c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0040b3cc  20 21 90 e5                                      ldr r2, [r0, #0x120]
0040b3d0  01 30 a0 e1                                      mov r3, r1
0040b3d4  00 50 a0 e1                                      mov r5, r0
0040b3d8  34 41 92 e5                                      ldr r4, [r2, #0x134]
0040b3dc  ac 60 9f e5                                      ldr r6, [pc, #0xac]
0040b3e0  00 00 54 e3                                      cmp r4, #0
0040b3e4  00 20 94 15                                      ldrne r2, [r4]
0040b3e8  06 60 8f e0                                      add r6, pc, r6
0040b3ec  01 20 82 12                                      addne r2, r2, #1
0040b3f0  00 20 84 15                                      strne r2, [r4]
0040b3f4  00 80 91 e5                                      ldr r8, [r1]
0040b3f8  11 13 a0 e3                                      mov r1, #0x44000000
0040b3fc  7a 18 81 e2                                      add r1, r1, #0x7a0000
0040b400  34 81 80 e5                                      str r8, [r0, #0x134]
0040b404  04 00 93 e5                                      ldr r0, [r3, #4]
0040b408  38 01 85 e5                                      str r0, [r5, #0x138]
0040b40c  08 a0 93 e5                                      ldr sl, [r3, #8]
0040b410  3c a1 85 e5                                      str sl, [r5, #0x13c]
0040b414  1e 0e fc eb                                      bl #0x30ec94
0040b418  00 14 02 e3                                      movw r1, #0x2400
0040b41c  00 70 a0 e1                                      mov r7, r0
0040b420  38 01 85 e5                                      str r0, [r5, #0x138]
0040b424  74 19 44 e3                                      movt r1, #0x4974
0040b428  0a 00 a0 e1                                      mov r0, sl
0040b42c  18 0e fc eb                                      bl #0x30ec94
0040b430  3c 01 85 e5                                      str r0, [r5, #0x13c]
0040b434  00 30 94 e5                                      ldr r3, [r4]
0040b438  34 80 84 e5                                      str r8, [r4, #0x34]
0040b43c  38 70 84 e5                                      str r7, [r4, #0x38]
0040b440  01 30 43 e2                                      sub r3, r3, #1
0040b444  00 00 53 e3                                      cmp r3, #0
0040b448  3c 00 84 e5                                      str r0, [r4, #0x3c]
0040b44c  00 30 84 e5                                      str r3, [r4]
0040b450  0d 00 00 1a                                      bne #0x40b48c
0040b454  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
0040b458  00 00 53 e3                                      cmp r3, #0
0040b45c  05 00 00 1a                                      bne #0x40b478
0040b460  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0040b464  50 20 94 e5                                      ldr r2, [r4, #0x50]
0040b468  03 30 96 e7                                      ldr r3, [r6, r3]
0040b46c  00 10 93 e5                                      ldr r1, [r3]
0040b470  00 10 82 e5                                      str r1, [r2]
0040b474  00 20 83 e5                                      str r2, [r3]
0040b478  00 30 a0 e3                                      mov r3, #0
0040b47c  04 00 a0 e1                                      mov r0, r4
0040b480  50 30 84 e5                                      str r3, [r4, #0x50]
0040b484  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0040b488  ec 13 fc ea                                      b #0x310440
0040b48c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0040b490  a8 96 58 00 c0 3c 00 00                          .byte 0xa8, 0x96, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040b498, declared_size=304, range_size=304, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase12setLightNodeEPN6glitch5scene15CLightSceneNodeE
; demangled: LightBase::setLightNode(glitch::scene::CLightSceneNode*)
; decoder-mode: arm
0040b498  70 40 2d e9                                      push {r4, r5, r6, lr}
0040b49c  20 31 90 e5                                      ldr r3, [r0, #0x120]
0040b4a0  18 51 9f e5                                      ldr r5, [pc, #0x118]
0040b4a4  00 40 a0 e1                                      mov r4, r0
0040b4a8  00 00 53 e3                                      cmp r3, #0
0040b4ac  01 60 a0 e1                                      mov r6, r1
0040b4b0  05 50 8f e0                                      add r5, pc, r5
0040b4b4  05 00 00 0a                                      beq #0x40b4d0
0040b4b8  00 20 93 e5                                      ldr r2, [r3]
0040b4bc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0040b4c0  00 00 83 e0                                      add r0, r3, r0
0040b4c4  2e 48 fc eb                                      bl #0x31d584
0040b4c8  00 30 a0 e3                                      mov r3, #0
0040b4cc  20 31 84 e5                                      str r3, [r4, #0x120]
0040b4d0  20 61 84 e5                                      str r6, [r4, #0x120]
0040b4d4  34 01 96 e5                                      ldr r0, [r6, #0x134]
0040b4d8  00 00 50 e3                                      cmp r0, #0
0040b4dc  00 30 90 15                                      ldrne r3, [r0]
0040b4e0  34 20 90 e5                                      ldr r2, [r0, #0x34]
0040b4e4  01 30 83 12                                      addne r3, r3, #1
0040b4e8  00 30 80 15                                      strne r3, [r0]
0040b4ec  34 21 84 e5                                      str r2, [r4, #0x134]
0040b4f0  38 20 90 e5                                      ldr r2, [r0, #0x38]
0040b4f4  20 31 94 e5                                      ldr r3, [r4, #0x120]
0040b4f8  38 21 84 e5                                      str r2, [r4, #0x138]
0040b4fc  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0040b500  00 00 53 e3                                      cmp r3, #0
0040b504  3c 21 84 e5                                      str r2, [r4, #0x13c]
0040b508  0c c0 90 e5                                      ldr ip, [r0, #0xc]
0040b50c  08 10 90 e5                                      ldr r1, [r0, #8]
0040b510  04 20 90 e5                                      ldr r2, [r0, #4]
0040b514  48 c1 84 e5                                      str ip, [r4, #0x148]
0040b518  44 11 84 e5                                      str r1, [r4, #0x144]
0040b51c  40 21 84 e5                                      str r2, [r4, #0x140]
0040b520  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0040b524  18 10 90 e5                                      ldr r1, [r0, #0x18]
0040b528  14 20 90 e5                                      ldr r2, [r0, #0x14]
0040b52c  54 c1 84 e5                                      str ip, [r4, #0x154]
0040b530  50 11 84 e5                                      str r1, [r4, #0x150]
0040b534  4c 21 84 e5                                      str r2, [r4, #0x14c]
0040b538  24 20 90 e5                                      ldr r2, [r0, #0x24]
0040b53c  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
0040b540  28 10 90 e5                                      ldr r1, [r0, #0x28]
0040b544  58 21 84 e5                                      str r2, [r4, #0x158]
0040b548  60 c1 84 e5                                      str ip, [r4, #0x160]
0040b54c  5c 11 84 e5                                      str r1, [r4, #0x15c]
0040b550  40 20 90 e5                                      ldr r2, [r0, #0x40]
0040b554  30 21 84 e5                                      str r2, [r4, #0x130]
0040b558  05 00 00 0a                                      beq #0x40b574
0040b55c  00 20 93 e5                                      ldr r2, [r3]
0040b560  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0040b564  02 30 83 e0                                      add r3, r3, r2
0040b568  04 20 93 e5                                      ldr r2, [r3, #4]
0040b56c  01 20 82 e2                                      add r2, r2, #1
0040b570  04 20 83 e5                                      str r2, [r3, #4]
0040b574  00 30 90 e5                                      ldr r3, [r0]
0040b578  01 30 43 e2                                      sub r3, r3, #1
0040b57c  00 00 53 e3                                      cmp r3, #0
0040b580  00 30 80 e5                                      str r3, [r0]
0040b584  0c 00 00 1a                                      bne #0x40b5bc
0040b588  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
0040b58c  00 00 53 e3                                      cmp r3, #0
0040b590  05 00 00 1a                                      bne #0x40b5ac
0040b594  28 30 9f e5                                      ldr r3, [pc, #0x28]
0040b598  50 20 90 e5                                      ldr r2, [r0, #0x50]
0040b59c  03 30 95 e7                                      ldr r3, [r5, r3]
0040b5a0  00 10 93 e5                                      ldr r1, [r3]
0040b5a4  00 10 82 e5                                      str r1, [r2]
0040b5a8  00 20 83 e5                                      str r2, [r3]
0040b5ac  00 30 a0 e3                                      mov r3, #0
0040b5b0  50 30 80 e5                                      str r3, [r0, #0x50]
0040b5b4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0040b5b8  a0 13 fc ea                                      b #0x310440
0040b5bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0040b5c0  e0 95 58 00 c0 3c 00 00                          .byte 0xe0, 0x95, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040b5c8, declared_size=172, range_size=172, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase16SetSpecularColorE7Point3DIfE
; demangled: LightBase::SetSpecularColor(Point3D<float>)
; decoder-mode: arm
0040b5c8  30 00 2d e9                                      push {r4, r5}
0040b5cc  20 21 90 e5                                      ldr r2, [r0, #0x120]
0040b5d0  94 30 9f e5                                      ldr r3, [pc, #0x94]
0040b5d4  34 21 92 e5                                      ldr r2, [r2, #0x134]
0040b5d8  03 30 8f e0                                      add r3, pc, r3
0040b5dc  00 00 52 e3                                      cmp r2, #0
0040b5e0  00 c0 92 15                                      ldrne ip, [r2]
0040b5e4  01 c0 8c 12                                      addne ip, ip, #1
0040b5e8  00 c0 82 15                                      strne ip, [r2]
0040b5ec  00 c0 91 e5                                      ldr ip, [r1]
0040b5f0  58 c1 80 e5                                      str ip, [r0, #0x158]
0040b5f4  04 40 91 e5                                      ldr r4, [r1, #4]
0040b5f8  5c 41 80 e5                                      str r4, [r0, #0x15c]
0040b5fc  08 50 91 e5                                      ldr r5, [r1, #8]
0040b600  60 51 80 e5                                      str r5, [r0, #0x160]
0040b604  00 10 92 e5                                      ldr r1, [r2]
0040b608  fe 05 a0 e3                                      mov r0, #0x3f800000
0040b60c  30 00 82 e5                                      str r0, [r2, #0x30]
0040b610  01 10 41 e2                                      sub r1, r1, #1
0040b614  00 00 51 e3                                      cmp r1, #0
0040b618  2c 50 82 e5                                      str r5, [r2, #0x2c]
0040b61c  28 40 82 e5                                      str r4, [r2, #0x28]
0040b620  24 c0 82 e5                                      str ip, [r2, #0x24]
0040b624  00 10 82 e5                                      str r1, [r2]
0040b628  0d 00 00 1a                                      bne #0x40b664
0040b62c  54 10 d2 e5                                      ldrb r1, [r2, #0x54]
0040b630  00 00 51 e3                                      cmp r1, #0
0040b634  05 00 00 1a                                      bne #0x40b650
0040b638  30 00 9f e5                                      ldr r0, [pc, #0x30]
0040b63c  50 10 92 e5                                      ldr r1, [r2, #0x50]
0040b640  00 30 93 e7                                      ldr r3, [r3, r0]
0040b644  00 00 93 e5                                      ldr r0, [r3]
0040b648  00 00 81 e5                                      str r0, [r1]
0040b64c  00 10 83 e5                                      str r1, [r3]
0040b650  00 30 a0 e3                                      mov r3, #0
0040b654  02 00 a0 e1                                      mov r0, r2
0040b658  50 30 82 e5                                      str r3, [r2, #0x50]
0040b65c  30 00 bd e8                                      pop {r4, r5}
0040b660  76 13 fc ea                                      b #0x310440
0040b664  30 00 bd e8                                      pop {r4, r5}
0040b668  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0040b66c  b8 94 58 00 c0 3c 00 00                          .byte 0xb8, 0x94, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040b674, declared_size=172, range_size=172, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase15SetDiffuseColorE7Point3DIfE
; demangled: LightBase::SetDiffuseColor(Point3D<float>)
; decoder-mode: arm
0040b674  30 00 2d e9                                      push {r4, r5}
0040b678  20 21 90 e5                                      ldr r2, [r0, #0x120]
0040b67c  94 30 9f e5                                      ldr r3, [pc, #0x94]
0040b680  34 21 92 e5                                      ldr r2, [r2, #0x134]
0040b684  03 30 8f e0                                      add r3, pc, r3
0040b688  00 00 52 e3                                      cmp r2, #0
0040b68c  00 c0 92 15                                      ldrne ip, [r2]
0040b690  01 c0 8c 12                                      addne ip, ip, #1
0040b694  00 c0 82 15                                      strne ip, [r2]
0040b698  00 c0 91 e5                                      ldr ip, [r1]
0040b69c  4c c1 80 e5                                      str ip, [r0, #0x14c]
0040b6a0  04 40 91 e5                                      ldr r4, [r1, #4]
0040b6a4  50 41 80 e5                                      str r4, [r0, #0x150]
0040b6a8  08 50 91 e5                                      ldr r5, [r1, #8]
0040b6ac  54 51 80 e5                                      str r5, [r0, #0x154]
0040b6b0  00 10 92 e5                                      ldr r1, [r2]
0040b6b4  fe 05 a0 e3                                      mov r0, #0x3f800000
0040b6b8  20 00 82 e5                                      str r0, [r2, #0x20]
0040b6bc  01 10 41 e2                                      sub r1, r1, #1
0040b6c0  00 00 51 e3                                      cmp r1, #0
0040b6c4  1c 50 82 e5                                      str r5, [r2, #0x1c]
0040b6c8  18 40 82 e5                                      str r4, [r2, #0x18]
0040b6cc  14 c0 82 e5                                      str ip, [r2, #0x14]
0040b6d0  00 10 82 e5                                      str r1, [r2]
0040b6d4  0d 00 00 1a                                      bne #0x40b710
0040b6d8  54 10 d2 e5                                      ldrb r1, [r2, #0x54]
0040b6dc  00 00 51 e3                                      cmp r1, #0
0040b6e0  05 00 00 1a                                      bne #0x40b6fc
0040b6e4  30 00 9f e5                                      ldr r0, [pc, #0x30]
0040b6e8  50 10 92 e5                                      ldr r1, [r2, #0x50]
0040b6ec  00 30 93 e7                                      ldr r3, [r3, r0]
0040b6f0  00 00 93 e5                                      ldr r0, [r3]
0040b6f4  00 00 81 e5                                      str r0, [r1]
0040b6f8  00 10 83 e5                                      str r1, [r3]
0040b6fc  00 30 a0 e3                                      mov r3, #0
0040b700  02 00 a0 e1                                      mov r0, r2
0040b704  50 30 82 e5                                      str r3, [r2, #0x50]
0040b708  30 00 bd e8                                      pop {r4, r5}
0040b70c  4b 13 fc ea                                      b #0x310440
0040b710  30 00 bd e8                                      pop {r4, r5}
0040b714  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0040b718  0c 94 58 00 c0 3c 00 00                          .byte 0x0c, 0x94, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0040b720, declared_size=172, range_size=172, mode=arm
; class-group: LightBase
; alias: _ZN9LightBase15SetAmbientColorE7Point3DIfE
; demangled: LightBase::SetAmbientColor(Point3D<float>)
; decoder-mode: arm
0040b720  30 00 2d e9                                      push {r4, r5}
0040b724  20 21 90 e5                                      ldr r2, [r0, #0x120]
0040b728  94 30 9f e5                                      ldr r3, [pc, #0x94]
0040b72c  34 21 92 e5                                      ldr r2, [r2, #0x134]
0040b730  03 30 8f e0                                      add r3, pc, r3
0040b734  00 00 52 e3                                      cmp r2, #0
0040b738  00 c0 92 15                                      ldrne ip, [r2]
0040b73c  01 c0 8c 12                                      addne ip, ip, #1
0040b740  00 c0 82 15                                      strne ip, [r2]
0040b744  00 c0 91 e5                                      ldr ip, [r1]
0040b748  40 c1 80 e5                                      str ip, [r0, #0x140]
0040b74c  04 40 91 e5                                      ldr r4, [r1, #4]
0040b750  44 41 80 e5                                      str r4, [r0, #0x144]
0040b754  08 50 91 e5                                      ldr r5, [r1, #8]
0040b758  48 51 80 e5                                      str r5, [r0, #0x148]
0040b75c  00 10 92 e5                                      ldr r1, [r2]
0040b760  fe 05 a0 e3                                      mov r0, #0x3f800000
0040b764  10 00 82 e5                                      str r0, [r2, #0x10]
0040b768  01 10 41 e2                                      sub r1, r1, #1
0040b76c  00 00 51 e3                                      cmp r1, #0
0040b770  0c 50 82 e5                                      str r5, [r2, #0xc]
0040b774  08 40 82 e5                                      str r4, [r2, #8]
0040b778  04 c0 82 e5                                      str ip, [r2, #4]
0040b77c  00 10 82 e5                                      str r1, [r2]
0040b780  0d 00 00 1a                                      bne #0x40b7bc
0040b784  54 10 d2 e5                                      ldrb r1, [r2, #0x54]
0040b788  00 00 51 e3                                      cmp r1, #0
0040b78c  05 00 00 1a                                      bne #0x40b7a8
0040b790  30 00 9f e5                                      ldr r0, [pc, #0x30]
0040b794  50 10 92 e5                                      ldr r1, [r2, #0x50]
0040b798  00 30 93 e7                                      ldr r3, [r3, r0]
0040b79c  00 00 93 e5                                      ldr r0, [r3]
0040b7a0  00 00 81 e5                                      str r0, [r1]
0040b7a4  00 10 83 e5                                      str r1, [r3]
0040b7a8  00 30 a0 e3                                      mov r3, #0
0040b7ac  02 00 a0 e1                                      mov r0, r2
0040b7b0  50 30 82 e5                                      str r3, [r2, #0x50]
0040b7b4  30 00 bd e8                                      pop {r4, r5}
0040b7b8  20 13 fc ea                                      b #0x310440
0040b7bc  30 00 bd e8                                      pop {r4, r5}
0040b7c0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0040b7c4  60 93 58 00 c0 3c 00 00                          .byte 0x60, 0x93, 0x58, 0x00, 0xc0, 0x3c, 0x00, 0x00
