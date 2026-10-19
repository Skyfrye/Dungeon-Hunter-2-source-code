; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047c7f4, declared_size=116, range_size=116, mode=arm
; class-group: int Objective_EventReceiver
; alias: _ZN23Objective_EventReceiver20HasEnemyOfTypeLoadedI14TestCharPropIdEEiii.clone.3
; demangled: int Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(int, int) [clone .clone.3]
; decoder-mode: arm
0047c7f4  64 30 9f e5                                      ldr r3, [pc, #0x64]
0047c7f8  64 20 9f e5                                      ldr r2, [pc, #0x64]
0047c7fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047c800  03 30 8f e0                                      add r3, pc, r3
0047c804  02 20 93 e7                                      ldr r2, [r3, r2]
0047c808  00 60 a0 e1                                      mov r6, r0
0047c80c  00 70 a0 e3                                      mov r7, #0
0047c810  38 50 92 e5                                      ldr r5, [r2, #0x38]
0047c814  60 40 b5 e5                                      ldr r4, [r5, #0x60]!
0047c818  05 00 54 e1                                      cmp r4, r5
0047c81c  08 00 00 0a                                      beq #0x47c844
0047c820  08 30 94 e5                                      ldr r3, [r4, #8]
0047c824  00 00 53 e2                                      subs r0, r3, #0
0047c828  02 00 00 0a                                      beq #0x47c838
0047c82c  41 dd fc eb                                      bl #0x3b3d38
0047c830  00 00 56 e1                                      cmp r6, r0
0047c834  01 70 87 02                                      addeq r7, r7, #1
0047c838  00 40 94 e5                                      ldr r4, [r4]
0047c83c  05 00 54 e1                                      cmp r4, r5
0047c840  f6 ff ff 1a                                      bne #0x47c820
0047c844  00 00 57 e3                                      cmp r7, #0
0047c848  01 00 00 0a                                      beq #0x47c854
0047c84c  07 00 a0 e1                                      mov r0, r7
0047c850  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0047c854  06 00 a0 e1                                      mov r0, r6
0047c858  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047c85c  b9 99 fc ea                                      b #0x3a2f48
; mapping-symbol data/literal pool
0047c860  90 82 51 00 f4 37 00 00                          .byte 0x90, 0x82, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047cc20, declared_size=148, range_size=148, mode=arm
; class-group: int Objective_EventReceiver
; alias: _ZN23Objective_EventReceiver20HasEnemyOfTypeLoadedI16TestCharTemplateEEiii.clone.0
; demangled: int Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(int, int) [clone .clone.0]
; decoder-mode: arm
0047cc20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047cc24  78 60 9f e5                                      ldr r6, [pc, #0x78]
0047cc28  78 30 9f e5                                      ldr r3, [pc, #0x78]
0047cc2c  00 70 a0 e1                                      mov r7, r0
0047cc30  06 60 8f e0                                      add r6, pc, r6
0047cc34  03 30 96 e7                                      ldr r3, [r6, r3]
0047cc38  00 80 a0 e3                                      mov r8, #0
0047cc3c  38 50 93 e5                                      ldr r5, [r3, #0x38]
0047cc40  60 40 b5 e5                                      ldr r4, [r5, #0x60]!
0047cc44  05 00 54 e1                                      cmp r4, r5
0047cc48  08 00 00 0a                                      beq #0x47cc70
0047cc4c  08 30 94 e5                                      ldr r3, [r4, #8]
0047cc50  00 00 53 e2                                      subs r0, r3, #0
0047cc54  02 00 00 0a                                      beq #0x47cc64
0047cc58  a3 da fc eb                                      bl #0x3b36ec
0047cc5c  00 00 57 e1                                      cmp r7, r0
0047cc60  01 80 88 02                                      addeq r8, r8, #1
0047cc64  00 40 94 e5                                      ldr r4, [r4]
0047cc68  05 00 54 e1                                      cmp r4, r5
0047cc6c  f6 ff ff 1a                                      bne #0x47cc4c
0047cc70  00 00 58 e3                                      cmp r8, #0
0047cc74  08 00 00 1a                                      bne #0x47cc9c
0047cc78  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0047cc7c  03 20 96 e7                                      ldr r2, [r6, r3]
0047cc80  28 30 9f e5                                      ldr r3, [pc, #0x28]
0047cc84  03 30 96 e7                                      ldr r3, [r6, r3]
0047cc88  03 00 52 e1                                      cmp r2, r3
0047cc8c  02 00 00 1a                                      bne #0x47cc9c
0047cc90  07 00 a0 e1                                      mov r0, r7
0047cc94  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047cc98  aa 98 fc ea                                      b #0x3a2f48
0047cc9c  08 00 a0 e1                                      mov r0, r8
0047cca0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0047cca4  60 7e 51 00 f4 37 00 00 9c 33 00 00 84 37 00 00  .byte 0x60, 0x7e, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x33, 0x00, 0x00, 0x84, 0x37, 0x00, 0x00
