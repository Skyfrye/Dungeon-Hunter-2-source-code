; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004786dc, declared_size=20, range_size=20, mode=arm
; class-group: ConditionList
; alias: _ZN13ConditionListC2Ev
; demangled: ConditionList::ConditionList()
; decoder-mode: arm
004786dc  00 20 a0 e3                                      mov r2, #0
004786e0  08 20 80 e5                                      str r2, [r0, #8]
004786e4  00 20 80 e5                                      str r2, [r0]
004786e8  04 20 80 e5                                      str r2, [r0, #4]
004786ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x004786f0, declared_size=20, range_size=20, mode=arm
; class-group: ConditionList
; alias: _ZN13ConditionListC1Ev
; demangled: ConditionList::ConditionList()
; decoder-mode: arm
004786f0  00 20 a0 e3                                      mov r2, #0
004786f4  08 20 80 e5                                      str r2, [r0, #8]
004786f8  00 20 80 e5                                      str r2, [r0]
004786fc  04 20 80 e5                                      str r2, [r0, #4]
00478700  1e ff 2f e1                                      bx lr

; FUNCTION 0x00478704, declared_size=88, range_size=88, mode=arm
; class-group: ConditionList
; alias: _ZN13ConditionList4EvalEv
; demangled: ConditionList::Eval()
; decoder-mode: arm
00478704  70 40 2d e9                                      push {r4, r5, r6, lr}
00478708  00 30 90 e5                                      ldr r3, [r0]
0047870c  00 50 a0 e1                                      mov r5, r0
00478710  00 00 53 e3                                      cmp r3, #0
00478714  0e 00 00 da                                      ble #0x478754
00478718  00 40 a0 e3                                      mov r4, #0
0047871c  02 00 00 ea                                      b #0x47872c
00478720  00 30 95 e5                                      ldr r3, [r5]
00478724  04 00 53 e1                                      cmp r3, r4
00478728  09 00 00 da                                      ble #0x478754
0047872c  04 30 95 e5                                      ldr r3, [r5, #4]
00478730  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00478734  01 40 84 e2                                      add r4, r4, #1
00478738  03 00 a0 e1                                      mov r0, r3
0047873c  00 30 93 e5                                      ldr r3, [r3]
00478740  0f e0 a0 e1                                      mov lr, pc
00478744  08 f0 93 e5                                      ldr pc, [r3, #8]
00478748  00 00 50 e3                                      cmp r0, #0
0047874c  f3 ff ff 1a                                      bne #0x478720
00478750  70 80 bd e8                                      pop {r4, r5, r6, pc}
00478754  01 00 a0 e3                                      mov r0, #1
00478758  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0047875c, declared_size=76, range_size=76, mode=arm
; class-group: ConditionList
; alias: _ZNK13ConditionList41DBG_TraceDetailedConditionListInformationEP7__sFILE
; demangled: ConditionList::DBG_TraceDetailedConditionListInformation(__sFILE*) const
; decoder-mode: arm
0047875c  70 40 2d e9                                      push {r4, r5, r6, lr}
00478760  00 30 90 e5                                      ldr r3, [r0]
00478764  00 50 a0 e1                                      mov r5, r0
00478768  01 60 a0 e1                                      mov r6, r1
0047876c  00 00 53 e3                                      cmp r3, #0
00478770  0b 00 00 da                                      ble #0x4787a4
00478774  00 40 a0 e3                                      mov r4, #0
00478778  04 30 95 e5                                      ldr r3, [r5, #4]
0047877c  06 10 a0 e1                                      mov r1, r6
00478780  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00478784  01 40 84 e2                                      add r4, r4, #1
00478788  03 00 a0 e1                                      mov r0, r3
0047878c  00 30 93 e5                                      ldr r3, [r3]
00478790  0f e0 a0 e1                                      mov lr, pc
00478794  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00478798  00 30 95 e5                                      ldr r3, [r5]
0047879c  04 00 53 e1                                      cmp r3, r4
004787a0  f4 ff ff ca                                      bgt #0x478778
004787a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00478914, declared_size=136, range_size=136, mode=arm
; class-group: ConditionList
; alias: _ZN13ConditionList12AssignPyDataEPN7Structs15v2ConditionStubEi
; demangled: ConditionList::AssignPyData(Structs::v2ConditionStub*, int)
; decoder-mode: arm
00478914  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00478918  00 00 52 e3                                      cmp r2, #0
0047891c  00 40 a0 e1                                      mov r4, r0
00478920  08 10 84 e5                                      str r1, [r4, #8]
00478924  01 50 a0 e1                                      mov r5, r1
00478928  00 20 80 e5                                      str r2, [r0]
0047892c  18 00 00 da                                      ble #0x478994
00478930  02 01 a0 e1                                      lsl r0, r2, #2
00478934  00 10 a0 e3                                      mov r1, #0
00478938  0b 5f fa eb                                      bl #0x31056c
0047893c  00 30 94 e5                                      ldr r3, [r4]
00478940  00 70 a0 e1                                      mov r7, r0
00478944  04 00 84 e5                                      str r0, [r4, #4]
00478948  00 00 53 e3                                      cmp r3, #0
0047894c  10 00 00 da                                      ble #0x478994
00478950  40 80 9f e5                                      ldr r8, [pc, #0x40]
00478954  00 60 a0 e3                                      mov r6, #0
00478958  08 80 8f e0                                      add r8, pc, r8
0047895c  00 00 00 ea                                      b #0x478964
00478960  04 70 94 e5                                      ldr r7, [r4, #4]
00478964  04 30 95 e5                                      ldr r3, [r5, #4]
00478968  0f e0 a0 e1                                      mov lr, pc
0047896c  03 f1 98 e7                                      ldr pc, [r8, r3, lsl #2]
00478970  06 01 87 e7                                      str r0, [r7, r6, lsl #2]
00478974  04 30 94 e5                                      ldr r3, [r4, #4]
00478978  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0047897c  01 60 86 e2                                      add r6, r6, #1
00478980  04 50 83 e5                                      str r5, [r3, #4]
00478984  00 30 94 e5                                      ldr r3, [r4]
00478988  10 50 85 e2                                      add r5, r5, #0x10
0047898c  06 00 53 e1                                      cmp r3, r6
00478990  f2 ff ff ca                                      bgt #0x478960
00478994  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00478998  f8 08 4f 00                                      .byte 0xf8, 0x08, 0x4f, 0x00

; FUNCTION 0x00478eac, declared_size=116, range_size=116, mode=arm
; class-group: ConditionList
; alias: _ZN13ConditionListD1Ev
; demangled: ConditionList::~ConditionList()
; decoder-mode: arm
00478eac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00478eb0  00 20 90 e5                                      ldr r2, [r0]
00478eb4  00 60 a0 e1                                      mov r6, r0
00478eb8  00 00 52 e3                                      cmp r2, #0
00478ebc  04 50 90 d5                                      ldrle r5, [r0, #4]
00478ec0  0e 00 00 da                                      ble #0x478f00
00478ec4  04 50 90 e5                                      ldr r5, [r0, #4]
00478ec8  00 40 a0 e3                                      mov r4, #0
00478ecc  04 70 a0 e1                                      mov r7, r4
00478ed0  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
00478ed4  00 00 53 e3                                      cmp r3, #0
00478ed8  05 00 00 0a                                      beq #0x478ef4
00478edc  03 00 a0 e1                                      mov r0, r3
00478ee0  00 30 93 e5                                      ldr r3, [r3]
00478ee4  0f e0 a0 e1                                      mov lr, pc
00478ee8  04 f0 93 e5                                      ldr pc, [r3, #4]
00478eec  04 71 85 e7                                      str r7, [r5, r4, lsl #2]
00478ef0  24 00 96 e8                                      ldm r6, {r2, r5}
00478ef4  01 40 84 e2                                      add r4, r4, #1
00478ef8  04 00 52 e1                                      cmp r2, r4
00478efc  f3 ff ff ca                                      bgt #0x478ed0
00478f00  00 00 55 e3                                      cmp r5, #0
00478f04  03 00 00 0a                                      beq #0x478f18
00478f08  05 00 a0 e1                                      mov r0, r5
00478f0c  4b 5d fa eb                                      bl #0x310440
00478f10  00 30 a0 e3                                      mov r3, #0
00478f14  04 30 86 e5                                      str r3, [r6, #4]
00478f18  06 00 a0 e1                                      mov r0, r6
00478f1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00478f20, declared_size=116, range_size=116, mode=arm
; class-group: ConditionList
; alias: _ZN13ConditionListD2Ev
; demangled: ConditionList::~ConditionList()
; decoder-mode: arm
00478f20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00478f24  00 20 90 e5                                      ldr r2, [r0]
00478f28  00 60 a0 e1                                      mov r6, r0
00478f2c  00 00 52 e3                                      cmp r2, #0
00478f30  04 50 90 d5                                      ldrle r5, [r0, #4]
00478f34  0e 00 00 da                                      ble #0x478f74
00478f38  04 50 90 e5                                      ldr r5, [r0, #4]
00478f3c  00 40 a0 e3                                      mov r4, #0
00478f40  04 70 a0 e1                                      mov r7, r4
00478f44  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
00478f48  00 00 53 e3                                      cmp r3, #0
00478f4c  05 00 00 0a                                      beq #0x478f68
00478f50  03 00 a0 e1                                      mov r0, r3
00478f54  00 30 93 e5                                      ldr r3, [r3]
00478f58  0f e0 a0 e1                                      mov lr, pc
00478f5c  04 f0 93 e5                                      ldr pc, [r3, #4]
00478f60  04 71 85 e7                                      str r7, [r5, r4, lsl #2]
00478f64  24 00 96 e8                                      ldm r6, {r2, r5}
00478f68  01 40 84 e2                                      add r4, r4, #1
00478f6c  04 00 52 e1                                      cmp r2, r4
00478f70  f3 ff ff ca                                      bgt #0x478f44
00478f74  00 00 55 e3                                      cmp r5, #0
00478f78  03 00 00 0a                                      beq #0x478f8c
00478f7c  05 00 a0 e1                                      mov r0, r5
00478f80  2e 5d fa eb                                      bl #0x310440
00478f84  00 30 a0 e3                                      mov r3, #0
00478f88  04 30 86 e5                                      str r3, [r6, #4]
00478f8c  06 00 a0 e1                                      mov r0, r6
00478f90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
