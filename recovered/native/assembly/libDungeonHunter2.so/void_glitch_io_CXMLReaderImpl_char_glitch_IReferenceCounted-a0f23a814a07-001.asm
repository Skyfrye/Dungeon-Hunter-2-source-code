; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00572ca4, declared_size=240, range_size=240, mode=arm
; class-group: void glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE15convertTextDataImEEvPT_Pci
; demangled: void glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::convertTextData<unsigned long>(unsigned long*, char*, int)
; decoder-mode: arm
00572ca4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00572ca8  00 40 a0 e1                                      mov r4, r0
00572cac  20 00 90 e5                                      ldr r0, [r0, #0x20]
00572cb0  01 50 a0 e1                                      mov r5, r1
00572cb4  02 60 a0 e1                                      mov r6, r2
00572cb8  03 00 50 e3                                      cmp r0, #3
00572cbc  01 00 50 13                                      cmpne r0, #1
00572cc0  03 70 a0 e1                                      mov r7, r3
00572cc4  01 00 a0 93                                      movls r0, #1
00572cc8  02 00 00 9a                                      bls #0x572cd8
00572ccc  05 00 50 e3                                      cmp r0, #5
00572cd0  00 00 a0 13                                      movne r0, #0
00572cd4  01 00 a0 03                                      moveq r0, #1
00572cd8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00572cdc  03 00 53 e3                                      cmp r3, #3
00572ce0  01 00 53 13                                      cmpne r3, #1
00572ce4  01 30 a0 93                                      movls r3, #1
00572ce8  02 00 00 9a                                      bls #0x572cf8
00572cec  05 00 53 e3                                      cmp r3, #5
00572cf0  00 30 a0 13                                      movne r3, #0
00572cf4  01 30 a0 03                                      moveq r3, #1
00572cf8  03 00 50 e1                                      cmp r0, r3
00572cfc  0d 00 00 0a                                      beq #0x572d38
00572d00  00 30 95 e5                                      ldr r3, [r5]
00572d04  00 00 53 e3                                      cmp r3, #0
00572d08  0a 00 00 0a                                      beq #0x572d38
00572d0c  05 20 a0 e1                                      mov r2, r5
00572d10  23 1c a0 e1                                      lsr r1, r3, #0x18
00572d14  03 1c 81 e1                                      orr r1, r1, r3, lsl #24
00572d18  ff 08 03 e2                                      and r0, r3, #0xff0000
00572d1c  20 14 81 e1                                      orr r1, r1, r0, lsr #8
00572d20  ff 3c 03 e2                                      and r3, r3, #0xff00
00572d24  03 34 81 e1                                      orr r3, r1, r3, lsl #8
00572d28  00 30 82 e5                                      str r3, [r2]
00572d2c  04 30 b2 e5                                      ldr r3, [r2, #4]!
00572d30  00 00 53 e3                                      cmp r3, #0
00572d34  f5 ff ff 1a                                      bne #0x572d10
00572d38  07 00 a0 e1                                      mov r0, r7
00572d3c  00 10 a0 e3                                      mov r1, #0
00572d40  18 05 ff eb                                      bl #0x5341a8
00572d44  00 00 57 e3                                      cmp r7, #0
00572d48  08 00 84 e5                                      str r0, [r4, #8]
00572d4c  08 00 00 da                                      ble #0x572d74
00572d50  00 30 a0 e3                                      mov r3, #0
00572d54  00 00 00 ea                                      b #0x572d5c
00572d58  08 00 94 e5                                      ldr r0, [r4, #8]
00572d5c  03 21 95 e7                                      ldr r2, [r5, r3, lsl #2]
00572d60  03 20 c0 e7                                      strb r2, [r0, r3]
00572d64  01 30 83 e2                                      add r3, r3, #1
00572d68  07 00 53 e1                                      cmp r3, r7
00572d6c  f9 ff ff 1a                                      bne #0x572d58
00572d70  08 00 94 e5                                      ldr r0, [r4, #8]
00572d74  00 00 56 e3                                      cmp r6, #0
00572d78  14 70 84 e5                                      str r7, [r4, #0x14]
00572d7c  10 00 84 e5                                      str r0, [r4, #0x10]
00572d80  02 00 00 0a                                      beq #0x572d90
00572d84  06 00 a0 e1                                      mov r0, r6
00572d88  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00572d8c  c9 6c f6 ea                                      b #0x30e0b8
00572d90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00572d94, declared_size=228, range_size=228, mode=arm
; class-group: void glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE15convertTextDataItEEvPT_Pci
; demangled: void glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::convertTextData<unsigned short>(unsigned short*, char*, int)
; decoder-mode: arm
00572d94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00572d98  00 40 a0 e1                                      mov r4, r0
00572d9c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00572da0  01 50 a0 e1                                      mov r5, r1
00572da4  02 60 a0 e1                                      mov r6, r2
00572da8  03 00 50 e3                                      cmp r0, #3
00572dac  01 00 50 13                                      cmpne r0, #1
00572db0  03 70 a0 e1                                      mov r7, r3
00572db4  01 00 a0 93                                      movls r0, #1
00572db8  02 00 00 9a                                      bls #0x572dc8
00572dbc  05 00 50 e3                                      cmp r0, #5
00572dc0  00 00 a0 13                                      movne r0, #0
00572dc4  01 00 a0 03                                      moveq r0, #1
00572dc8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00572dcc  03 00 53 e3                                      cmp r3, #3
00572dd0  01 00 53 13                                      cmpne r3, #1
00572dd4  01 30 a0 93                                      movls r3, #1
00572dd8  02 00 00 9a                                      bls #0x572de8
00572ddc  05 00 53 e3                                      cmp r3, #5
00572de0  00 30 a0 13                                      movne r3, #0
00572de4  01 30 a0 03                                      moveq r3, #1
00572de8  03 00 50 e1                                      cmp r0, r3
00572dec  09 00 00 0a                                      beq #0x572e18
00572df0  b0 30 d5 e1                                      ldrh r3, [r5]
00572df4  00 00 53 e3                                      cmp r3, #0
00572df8  06 00 00 0a                                      beq #0x572e18
00572dfc  05 20 a0 e1                                      mov r2, r5
00572e00  43 14 a0 e1                                      asr r1, r3, #8
00572e04  03 34 81 e1                                      orr r3, r1, r3, lsl #8
00572e08  b0 30 c2 e1                                      strh r3, [r2]
00572e0c  b2 30 f2 e1                                      ldrh r3, [r2, #2]!
00572e10  00 00 53 e3                                      cmp r3, #0
00572e14  f9 ff ff 1a                                      bne #0x572e00
00572e18  07 00 a0 e1                                      mov r0, r7
00572e1c  00 10 a0 e3                                      mov r1, #0
00572e20  e0 04 ff eb                                      bl #0x5341a8
00572e24  00 00 57 e3                                      cmp r7, #0
00572e28  08 00 84 e5                                      str r0, [r4, #8]
00572e2c  09 00 00 da                                      ble #0x572e58
00572e30  00 30 a0 e3                                      mov r3, #0
00572e34  00 00 00 ea                                      b #0x572e3c
00572e38  08 00 94 e5                                      ldr r0, [r4, #8]
00572e3c  83 20 a0 e1                                      lsl r2, r3, #1
00572e40  b2 20 95 e1                                      ldrh r2, [r5, r2]
00572e44  03 20 c0 e7                                      strb r2, [r0, r3]
00572e48  01 30 83 e2                                      add r3, r3, #1
00572e4c  07 00 53 e1                                      cmp r3, r7
00572e50  f8 ff ff 1a                                      bne #0x572e38
00572e54  08 00 94 e5                                      ldr r0, [r4, #8]
00572e58  00 00 56 e3                                      cmp r6, #0
00572e5c  14 70 84 e5                                      str r7, [r4, #0x14]
00572e60  10 00 84 e5                                      str r0, [r4, #0x10]
00572e64  02 00 00 0a                                      beq #0x572e74
00572e68  06 00 a0 e1                                      mov r0, r6
00572e6c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00572e70  90 6c f6 ea                                      b #0x30e0b8
00572e74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
