; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007557a0, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::character> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9characterEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::character> >::reserve(int)
; decoder-mode: arm
007557a0  10 40 2d e9                                      push {r4, lr}
007557a4  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007557a8  00 40 a0 e1                                      mov r4, r0
007557ac  00 00 53 e3                                      cmp r3, #0
007557b0  0f 00 00 1a                                      bne #0x7557f4
007557b4  00 00 51 e3                                      cmp r1, #0
007557b8  08 20 90 e5                                      ldr r2, [r0, #8]
007557bc  08 10 80 e5                                      str r1, [r0, #8]
007557c0  0c 00 00 1a                                      bne #0x7557f8
007557c4  00 00 90 e5                                      ldr r0, [r0]
007557c8  00 00 50 e3                                      cmp r0, #0
007557cc  01 00 00 0a                                      beq #0x7557d8
007557d0  02 11 a0 e1                                      lsl r1, r2, #2
007557d4  d7 f4 ff eb                                      bl #0x752b38
007557d8  00 30 a0 e3                                      mov r3, #0
007557dc  00 30 84 e5                                      str r3, [r4]
007557e0  10 80 bd e8                                      pop {r4, pc}
007557e4  01 01 a0 e1                                      lsl r0, r1, #2
007557e8  0c 10 a0 e1                                      mov r1, ip
007557ec  ea f4 ff eb                                      bl #0x752b9c
007557f0  00 00 84 e5                                      str r0, [r4]
007557f4  10 80 bd e8                                      pop {r4, pc}
007557f8  00 c0 90 e5                                      ldr ip, [r0]
007557fc  00 00 5c e3                                      cmp ip, #0
00755800  f7 ff ff 0a                                      beq #0x7557e4
00755804  0c 00 a0 e1                                      mov r0, ip
00755808  01 11 a0 e1                                      lsl r1, r1, #2
0075580c  02 21 a0 e1                                      lsl r2, r2, #2
00755810  e5 f4 ff eb                                      bl #0x752bac
00755814  00 00 84 e5                                      str r0, [r4]
00755818  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075586c, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::character> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9characterEEEE6resizeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::character> >::resize(int)
; decoder-mode: arm
0075586c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00755870  04 60 90 e5                                      ldr r6, [r0, #4]
00755874  00 40 a0 e1                                      mov r4, r0
00755878  01 50 a0 e1                                      mov r5, r1
0075587c  01 00 56 e1                                      cmp r6, r1
00755880  0a 00 00 da                                      ble #0x7558b0
00755884  01 81 a0 e1                                      lsl r8, r1, #2
00755888  01 70 a0 e1                                      mov r7, r1
0075588c  00 30 94 e5                                      ldr r3, [r4]
00755890  01 70 87 e2                                      add r7, r7, #1
00755894  08 00 93 e7                                      ldr r0, [r3, r8]
00755898  04 80 88 e2                                      add r8, r8, #4
0075589c  00 00 50 e3                                      cmp r0, #0
007558a0  00 00 00 0a                                      beq #0x7558a8
007558a4  65 12 00 eb                                      bl #0x75a240
007558a8  06 00 57 e1                                      cmp r7, r6
007558ac  f6 ff ff 1a                                      bne #0x75588c
007558b0  00 00 55 e3                                      cmp r5, #0
007558b4  02 00 00 0a                                      beq #0x7558c4
007558b8  08 30 94 e5                                      ldr r3, [r4, #8]
007558bc  03 00 55 e1                                      cmp r5, r3
007558c0  0c 00 00 ca                                      bgt #0x7558f8
007558c4  05 00 56 e1                                      cmp r6, r5
007558c8  08 00 00 aa                                      bge #0x7558f0
007558cc  06 30 a0 e1                                      mov r3, r6
007558d0  00 10 a0 e3                                      mov r1, #0
007558d4  06 61 a0 e1                                      lsl r6, r6, #2
007558d8  00 20 94 e5                                      ldr r2, [r4]
007558dc  01 30 83 e2                                      add r3, r3, #1
007558e0  05 00 53 e1                                      cmp r3, r5
007558e4  06 10 82 e7                                      str r1, [r2, r6]
007558e8  04 60 86 e2                                      add r6, r6, #4
007558ec  f9 ff ff 1a                                      bne #0x7558d8
007558f0  04 50 84 e5                                      str r5, [r4, #4]
007558f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007558f8  04 00 a0 e1                                      mov r0, r4
007558fc  c5 10 85 e0                                      add r1, r5, r5, asr #1
00755900  a6 ff ff eb                                      bl #0x7557a0
00755904  ee ff ff ea                                      b #0x7558c4

; FUNCTION 0x00774848, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::character> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9characterEEEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::character> >::resize(int) [clone .clone.0]
; decoder-mode: arm
00774848  70 40 2d e9                                      push {r4, r5, r6, lr}
0077484c  04 40 90 e5                                      ldr r4, [r0, #4]
00774850  00 60 a0 e1                                      mov r6, r0
00774854  00 00 54 e3                                      cmp r4, #0
00774858  0b 00 00 da                                      ble #0x77488c
0077485c  00 50 a0 e3                                      mov r5, #0
00774860  00 30 96 e5                                      ldr r3, [r6]
00774864  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00774868  01 50 85 e2                                      add r5, r5, #1
0077486c  00 00 50 e3                                      cmp r0, #0
00774870  00 00 00 0a                                      beq #0x774878
00774874  71 96 ff eb                                      bl #0x75a240
00774878  04 00 55 e1                                      cmp r5, r4
0077487c  f7 ff ff 1a                                      bne #0x774860
00774880  00 30 a0 e3                                      mov r3, #0
00774884  04 30 86 e5                                      str r3, [r6, #4]
00774888  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077488c  fb ff ff aa                                      bge #0x774880
00774890  04 31 a0 e1                                      lsl r3, r4, #2
00774894  00 10 a0 e3                                      mov r1, #0
00774898  00 20 96 e5                                      ldr r2, [r6]
0077489c  01 40 94 e2                                      adds r4, r4, #1
007748a0  03 10 82 e7                                      str r1, [r2, r3]
007748a4  04 30 83 e2                                      add r3, r3, #4
007748a8  fa ff ff 1a                                      bne #0x774898
007748ac  00 30 a0 e3                                      mov r3, #0
007748b0  04 30 86 e5                                      str r3, [r6, #4]
007748b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
