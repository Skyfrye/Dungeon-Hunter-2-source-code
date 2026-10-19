; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081ce18, declared_size=48, range_size=48, mode=arm
; class-group: tFriendInfo
; alias: _ZN11tFriendInfoD1Ev
; demangled: tFriendInfo::~tFriendInfo()
; decoder-mode: arm
0081ce18  10 40 2d e9                                      push {r4, lr}
0081ce1c  00 40 a0 e1                                      mov r4, r0
0081ce20  50 00 80 e2                                      add r0, r0, #0x50
0081ce24  0a ed eb eb                                      bl #0x318254
0081ce28  38 00 84 e2                                      add r0, r4, #0x38
0081ce2c  08 ed eb eb                                      bl #0x318254
0081ce30  20 00 84 e2                                      add r0, r4, #0x20
0081ce34  06 ed eb eb                                      bl #0x318254
0081ce38  04 00 84 e2                                      add r0, r4, #4
0081ce3c  04 ed eb eb                                      bl #0x318254
0081ce40  04 00 a0 e1                                      mov r0, r4
0081ce44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081e024, declared_size=76, range_size=76, mode=arm
; class-group: tFriendInfo
; alias: _ZN11tFriendInfoC1ERKS_
; demangled: tFriendInfo::tFriendInfo(tFriendInfo const&)
; decoder-mode: arm
0081e024  70 40 2d e9                                      push {r4, r5, r6, lr}
0081e028  01 50 a0 e1                                      mov r5, r1
0081e02c  04 30 91 e4                                      ldr r3, [r1], #4
0081e030  00 40 a0 e1                                      mov r4, r0
0081e034  04 30 80 e4                                      str r3, [r0], #4
0081e038  36 36 ec eb                                      bl #0x32b918
0081e03c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0081e040  20 10 85 e2                                      add r1, r5, #0x20
0081e044  20 00 84 e2                                      add r0, r4, #0x20
0081e048  1c 30 84 e5                                      str r3, [r4, #0x1c]
0081e04c  31 36 ec eb                                      bl #0x32b918
0081e050  38 10 85 e2                                      add r1, r5, #0x38
0081e054  38 00 84 e2                                      add r0, r4, #0x38
0081e058  2e 36 ec eb                                      bl #0x32b918
0081e05c  50 10 85 e2                                      add r1, r5, #0x50
0081e060  50 00 84 e2                                      add r0, r4, #0x50
0081e064  2b 36 ec eb                                      bl #0x32b918
0081e068  04 00 a0 e1                                      mov r0, r4
0081e06c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081ebc8, declared_size=148, range_size=148, mode=arm
; class-group: tFriendInfo
; alias: _ZN11tFriendInfoC1Ev
; demangled: tFriendInfo::tFriendInfo()
; decoder-mode: arm
0081ebc8  70 40 2d e9                                      push {r4, r5, r6, lr}
0081ebcc  04 30 80 e2                                      add r3, r0, #4
0081ebd0  00 40 a0 e1                                      mov r4, r0
0081ebd4  14 30 84 e5                                      str r3, [r4, #0x14]
0081ebd8  03 00 a0 e1                                      mov r0, r3
0081ebdc  18 30 84 e5                                      str r3, [r4, #0x18]
0081ebe0  10 10 a0 e3                                      mov r1, #0x10
0081ebe4  a4 ca eb eb                                      bl #0x31167c
0081ebe8  14 20 94 e5                                      ldr r2, [r4, #0x14]
0081ebec  20 30 84 e2                                      add r3, r4, #0x20
0081ebf0  00 50 a0 e3                                      mov r5, #0
0081ebf4  00 50 c2 e5                                      strb r5, [r2]
0081ebf8  03 00 a0 e1                                      mov r0, r3
0081ebfc  30 30 84 e5                                      str r3, [r4, #0x30]
0081ec00  34 30 84 e5                                      str r3, [r4, #0x34]
0081ec04  10 10 a0 e3                                      mov r1, #0x10
0081ec08  9b ca eb eb                                      bl #0x31167c
0081ec0c  30 20 94 e5                                      ldr r2, [r4, #0x30]
0081ec10  38 30 84 e2                                      add r3, r4, #0x38
0081ec14  03 00 a0 e1                                      mov r0, r3
0081ec18  00 50 c2 e5                                      strb r5, [r2]
0081ec1c  10 10 a0 e3                                      mov r1, #0x10
0081ec20  48 30 84 e5                                      str r3, [r4, #0x48]
0081ec24  4c 30 84 e5                                      str r3, [r4, #0x4c]
0081ec28  93 ca eb eb                                      bl #0x31167c
0081ec2c  48 20 94 e5                                      ldr r2, [r4, #0x48]
0081ec30  50 30 84 e2                                      add r3, r4, #0x50
0081ec34  03 00 a0 e1                                      mov r0, r3
0081ec38  00 50 c2 e5                                      strb r5, [r2]
0081ec3c  10 10 a0 e3                                      mov r1, #0x10
0081ec40  60 30 84 e5                                      str r3, [r4, #0x60]
0081ec44  64 30 84 e5                                      str r3, [r4, #0x64]
0081ec48  8b ca eb eb                                      bl #0x31167c
0081ec4c  60 30 94 e5                                      ldr r3, [r4, #0x60]
0081ec50  04 00 a0 e1                                      mov r0, r4
0081ec54  00 50 c3 e5                                      strb r5, [r3]
0081ec58  70 80 bd e8                                      pop {r4, r5, r6, pc}
