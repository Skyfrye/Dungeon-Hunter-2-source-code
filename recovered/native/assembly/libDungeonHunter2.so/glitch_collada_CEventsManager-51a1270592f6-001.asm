; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060e02c, declared_size=424, range_size=424, mode=arm
; class-group: glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager9findEntryEi
; demangled: glitch::collada::CEventsManager::findEntry(int)
; decoder-mode: arm
0060e02c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060e030  14 50 90 e5                                      ldr r5, [r0, #0x14]
0060e034  00 30 95 e5                                      ldr r3, [r5]
0060e038  03 00 53 e3                                      cmp r3, #3
0060e03c  42 00 00 0a                                      beq #0x60e14c
0060e040  04 00 53 e3                                      cmp r3, #4
0060e044  24 00 00 0a                                      beq #0x60e0dc
0060e048  01 00 53 e3                                      cmp r3, #1
0060e04c  01 00 00 0a                                      beq #0x60e058
0060e050  00 00 a0 e3                                      mov r0, #0
0060e054  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060e058  08 60 95 e5                                      ldr r6, [r5, #8]
0060e05c  00 00 56 e3                                      cmp r6, #0
0060e060  19 00 00 da                                      ble #0x60e0cc
0060e064  01 00 a0 e1                                      mov r0, r1
0060e068  3d 02 f4 eb                                      bl #0x30e964
0060e06c  55 15 05 e3                                      movw r1, #0x5555
0060e070  05 12 44 e3                                      movt r1, #0x4205
0060e074  06 03 f4 eb                                      bl #0x30ec94
0060e078  0c 50 95 e5                                      ldr r5, [r5, #0xc]
0060e07c  00 70 a0 e1                                      mov r7, r0
0060e080  00 00 d5 e5                                      ldrb r0, [r5]
0060e084  36 02 f4 eb                                      bl #0x30e964
0060e088  00 10 a0 e1                                      mov r1, r0
0060e08c  07 00 a0 e1                                      mov r0, r7
0060e090  9d 01 f4 eb                                      bl #0x30e70c
0060e094  00 00 50 e3                                      cmp r0, #0
0060e098  00 40 a0 03                                      moveq r4, #0
0060e09c  07 00 00 0a                                      beq #0x60e0c0
0060e0a0  49 00 00 ea                                      b #0x60e1cc
0060e0a4  04 00 d5 e7                                      ldrb r0, [r5, r4]
0060e0a8  2d 02 f4 eb                                      bl #0x30e964
0060e0ac  00 10 a0 e1                                      mov r1, r0
0060e0b0  07 00 a0 e1                                      mov r0, r7
0060e0b4  94 01 f4 eb                                      bl #0x30e70c
0060e0b8  00 00 50 e3                                      cmp r0, #0
0060e0bc  04 00 00 1a                                      bne #0x60e0d4
0060e0c0  01 40 84 e2                                      add r4, r4, #1
0060e0c4  06 00 54 e1                                      cmp r4, r6
0060e0c8  f5 ff ff 1a                                      bne #0x60e0a4
0060e0cc  01 00 46 e2                                      sub r0, r6, #1
0060e0d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060e0d4  01 00 44 e2                                      sub r0, r4, #1
0060e0d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060e0dc  08 60 95 e5                                      ldr r6, [r5, #8]
0060e0e0  00 00 56 e3                                      cmp r6, #0
0060e0e4  16 00 00 da                                      ble #0x60e144
0060e0e8  01 00 a0 e1                                      mov r0, r1
0060e0ec  1c 02 f4 eb                                      bl #0x30e964
0060e0f0  0c 50 95 e5                                      ldr r5, [r5, #0xc]
0060e0f4  00 70 a0 e1                                      mov r7, r0
0060e0f8  00 00 95 e5                                      ldr r0, [r5]
0060e0fc  18 02 f4 eb                                      bl #0x30e964
0060e100  00 10 a0 e1                                      mov r1, r0
0060e104  07 00 a0 e1                                      mov r0, r7
0060e108  7f 01 f4 eb                                      bl #0x30e70c
0060e10c  00 00 50 e3                                      cmp r0, #0
0060e110  00 40 a0 03                                      moveq r4, #0
0060e114  07 00 00 0a                                      beq #0x60e138
0060e118  2b 00 00 ea                                      b #0x60e1cc
0060e11c  04 01 95 e7                                      ldr r0, [r5, r4, lsl #2]
0060e120  0f 02 f4 eb                                      bl #0x30e964
0060e124  00 10 a0 e1                                      mov r1, r0
0060e128  07 00 a0 e1                                      mov r0, r7
0060e12c  76 01 f4 eb                                      bl #0x30e70c
0060e130  00 00 50 e3                                      cmp r0, #0
0060e134  e6 ff ff 1a                                      bne #0x60e0d4
0060e138  01 40 84 e2                                      add r4, r4, #1
0060e13c  06 00 54 e1                                      cmp r4, r6
0060e140  f5 ff ff 1a                                      bne #0x60e11c
0060e144  01 00 46 e2                                      sub r0, r6, #1
0060e148  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060e14c  08 60 95 e5                                      ldr r6, [r5, #8]
0060e150  00 00 56 e3                                      cmp r6, #0
0060e154  fa ff ff da                                      ble #0x60e144
0060e158  01 00 a0 e1                                      mov r0, r1
0060e15c  00 02 f4 eb                                      bl #0x30e964
0060e160  55 15 05 e3                                      movw r1, #0x5555
0060e164  05 12 44 e3                                      movt r1, #0x4205
0060e168  c9 02 f4 eb                                      bl #0x30ec94
0060e16c  0c 50 95 e5                                      ldr r5, [r5, #0xc]
0060e170  00 70 a0 e1                                      mov r7, r0
0060e174  b0 00 d5 e1                                      ldrh r0, [r5]
0060e178  f9 01 f4 eb                                      bl #0x30e964
0060e17c  00 10 a0 e1                                      mov r1, r0
0060e180  07 00 a0 e1                                      mov r0, r7
0060e184  60 01 f4 eb                                      bl #0x30e70c
0060e188  00 00 50 e3                                      cmp r0, #0
0060e18c  00 40 a0 03                                      moveq r4, #0
0060e190  07 00 00 0a                                      beq #0x60e1b4
0060e194  0c 00 00 ea                                      b #0x60e1cc
0060e198  b3 00 95 e1                                      ldrh r0, [r5, r3]
0060e19c  f0 01 f4 eb                                      bl #0x30e964
0060e1a0  00 10 a0 e1                                      mov r1, r0
0060e1a4  07 00 a0 e1                                      mov r0, r7
0060e1a8  57 01 f4 eb                                      bl #0x30e70c
0060e1ac  00 00 50 e3                                      cmp r0, #0
0060e1b0  c7 ff ff 1a                                      bne #0x60e0d4
0060e1b4  01 40 84 e2                                      add r4, r4, #1
0060e1b8  06 00 54 e1                                      cmp r4, r6
0060e1bc  84 30 a0 e1                                      lsl r3, r4, #1
0060e1c0  f4 ff ff 1a                                      bne #0x60e198
0060e1c4  01 00 46 e2                                      sub r0, r6, #1
0060e1c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060e1cc  00 00 e0 e3                                      mvn r0, #0
0060e1d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0060ebb4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager14dispatchEventsEiii
; demangled: glitch::collada::CEventsManager::dispatchEvents(int, int, int)
; decoder-mode: arm
0060ebb4  14 c0 90 e5                                      ldr ip, [r0, #0x14]
0060ebb8  00 c0 9c e5                                      ldr ip, [ip]
0060ebbc  03 00 5c e3                                      cmp ip, #3
0060ebc0  05 00 00 0a                                      beq #0x60ebdc
0060ebc4  04 00 5c e3                                      cmp ip, #4
0060ebc8  02 00 00 0a                                      beq #0x60ebd8
0060ebcc  01 00 5c e3                                      cmp ip, #1
0060ebd0  1e ff 2f 11                                      bxne lr
0060ebd4  c2 ff ff ea                                      b #0x60eae4
0060ebd8  55 ff ff ea                                      b #0x60e934
0060ebdc  89 ff ff ea                                      b #0x60ea08

; FUNCTION 0x0060ebe0, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager8onUpdateEiiii
; demangled: glitch::collada::CEventsManager::onUpdate(int, int, int, int)
; decoder-mode: arm
0060ebe0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0060ebe4  02 00 51 e1                                      cmp r1, r2
0060ebe8  01 60 a0 e1                                      mov r6, r1
0060ebec  02 50 a0 e1                                      mov r5, r2
0060ebf0  03 a0 a0 e1                                      mov sl, r3
0060ebf4  00 40 a0 e1                                      mov r4, r0
0060ebf8  20 90 9d e5                                      ldr sb, [sp, #0x20]
0060ebfc  25 00 00 0a                                      beq #0x60ec98
0060ec00  08 30 90 e5                                      ldr r3, [r0, #8]
0060ec04  00 00 53 e3                                      cmp r3, #0
0060ec08  22 00 00 0a                                      beq #0x60ec98
0060ec0c  01 10 41 e2                                      sub r1, r1, #1
0060ec10  05 fd ff eb                                      bl #0x60e02c
0060ec14  05 10 a0 e1                                      mov r1, r5
0060ec18  01 70 80 e2                                      add r7, r0, #1
0060ec1c  04 00 a0 e1                                      mov r0, r4
0060ec20  01 fd ff eb                                      bl #0x60e02c
0060ec24  10 30 94 e5                                      ldr r3, [r4, #0x10]
0060ec28  00 80 a0 e1                                      mov r8, r0
0060ec2c  07 00 53 e1                                      cmp r3, r7
0060ec30  04 30 94 e5                                      ldr r3, [r4, #4]
0060ec34  01 70 87 02                                      addeq r7, r7, #1
0060ec38  05 00 56 e1                                      cmp r6, r5
0060ec3c  01 30 83 e2                                      add r3, r3, #1
0060ec40  04 30 84 e5                                      str r3, [r4, #4]
0060ec44  14 00 00 da                                      ble #0x60ec9c
0060ec48  09 10 a0 e1                                      mov r1, sb
0060ec4c  04 00 a0 e1                                      mov r0, r4
0060ec50  f5 fc ff eb                                      bl #0x60e02c
0060ec54  09 30 6a e0                                      rsb r3, sl, sb
0060ec58  00 20 a0 e1                                      mov r2, r0
0060ec5c  05 30 83 e0                                      add r3, r3, r5
0060ec60  07 10 a0 e1                                      mov r1, r7
0060ec64  04 00 a0 e1                                      mov r0, r4
0060ec68  d1 ff ff eb                                      bl #0x60ebb4
0060ec6c  01 10 4a e2                                      sub r1, sl, #1
0060ec70  04 00 a0 e1                                      mov r0, r4
0060ec74  ec fc ff eb                                      bl #0x60e02c
0060ec78  05 30 a0 e1                                      mov r3, r5
0060ec7c  01 10 80 e2                                      add r1, r0, #1
0060ec80  08 20 a0 e1                                      mov r2, r8
0060ec84  04 00 a0 e1                                      mov r0, r4
0060ec88  c9 ff ff eb                                      bl #0x60ebb4
0060ec8c  04 00 a0 e1                                      mov r0, r4
0060ec90  3b 3a f4 eb                                      bl #0x31d584
0060ec94  10 80 84 e5                                      str r8, [r4, #0x10]
0060ec98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0060ec9c  07 10 a0 e1                                      mov r1, r7
0060eca0  05 30 a0 e1                                      mov r3, r5
0060eca4  04 00 a0 e1                                      mov r0, r4
0060eca8  08 20 a0 e1                                      mov r2, r8
0060ecac  c0 ff ff eb                                      bl #0x60ebb4
0060ecb0  f5 ff ff ea                                      b #0x60ec8c

; FUNCTION 0x0060ecb4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager8onUpdateEii
; demangled: glitch::collada::CEventsManager::onUpdate(int, int)
; decoder-mode: arm
0060ecb4  70 40 2d e9                                      push {r4, r5, r6, lr}
0060ecb8  08 30 90 e5                                      ldr r3, [r0, #8]
0060ecbc  00 40 a0 e1                                      mov r4, r0
0060ecc0  02 50 a0 e1                                      mov r5, r2
0060ecc4  00 00 53 e3                                      cmp r3, #0
0060ecc8  0f 00 00 0a                                      beq #0x60ed0c
0060eccc  04 30 90 e5                                      ldr r3, [r0, #4]
0060ecd0  01 30 83 e2                                      add r3, r3, #1
0060ecd4  04 30 80 e5                                      str r3, [r0, #4]
0060ecd8  d3 fc ff eb                                      bl #0x60e02c
0060ecdc  05 10 a0 e1                                      mov r1, r5
0060ece0  00 60 a0 e1                                      mov r6, r0
0060ece4  04 00 a0 e1                                      mov r0, r4
0060ece8  cf fc ff eb                                      bl #0x60e02c
0060ecec  01 10 86 e2                                      add r1, r6, #1
0060ecf0  00 20 a0 e1                                      mov r2, r0
0060ecf4  05 30 a0 e1                                      mov r3, r5
0060ecf8  04 00 a0 e1                                      mov r0, r4
0060ecfc  ac ff ff eb                                      bl #0x60ebb4
0060ed00  04 00 a0 e1                                      mov r0, r4
0060ed04  70 40 bd e8                                      pop {r4, r5, r6, lr}
0060ed08  1d 3a f4 ea                                      b #0x31d584
0060ed0c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060edd0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManagerD1Ev
; demangled: glitch::collada::CEventsManager::~CEventsManager()
; decoder-mode: arm
0060edd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f4bc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManagerD0Ev
; demangled: glitch::collada::CEventsManager::~CEventsManager()
; decoder-mode: arm
0060f4bc  10 40 2d e9                                      push {r4, lr}
0060f4c0  00 40 a0 e1                                      mov r4, r0
0060f4c4  79 fb f3 eb                                      bl #0x30e2b0
0060f4c8  04 00 a0 e1                                      mov r0, r4
0060f4cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060feec, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager25getEventTimeFromEventNameEPKc
; demangled: glitch::collada::CEventsManager::getEventTimeFromEventName(char const*)
; decoder-mode: arm
0060feec  14 30 90 e5                                      ldr r3, [r0, #0x14]
0060fef0  00 30 93 e5                                      ldr r3, [r3]
0060fef4  03 00 53 e3                                      cmp r3, #3
0060fef8  07 00 00 0a                                      beq #0x60ff1c
0060fefc  04 00 53 e3                                      cmp r3, #4
0060ff00  04 00 00 0a                                      beq #0x60ff18
0060ff04  01 00 53 e3                                      cmp r3, #1
0060ff08  01 00 00 0a                                      beq #0x60ff14
0060ff0c  00 00 a0 e3                                      mov r0, #0
0060ff10  1e ff 2f e1                                      bx lr
0060ff14  cb ff ff ea                                      b #0x60fe48
0060ff18  76 ff ff ea                                      b #0x60fcf8
0060ff1c  9e ff ff ea                                      b #0x60fd9c
