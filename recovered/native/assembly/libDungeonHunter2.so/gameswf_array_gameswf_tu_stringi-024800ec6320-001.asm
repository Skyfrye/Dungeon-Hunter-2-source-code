; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ba778, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::tu_stringi>
; alias: _ZN7gameswf5arrayINS_10tu_stringiEE7reserveEi
; demangled: gameswf::array<gameswf::tu_stringi>::reserve(int)
; decoder-mode: arm
007ba778  10 40 2d e9                                      push {r4, lr}
007ba77c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007ba780  00 40 a0 e1                                      mov r4, r0
007ba784  00 00 53 e3                                      cmp r3, #0
007ba788  11 00 00 1a                                      bne #0x7ba7d4
007ba78c  00 00 51 e3                                      cmp r1, #0
007ba790  08 20 90 e5                                      ldr r2, [r0, #8]
007ba794  08 10 80 e5                                      str r1, [r0, #8]
007ba798  0e 00 00 1a                                      bne #0x7ba7d8
007ba79c  00 00 90 e5                                      ldr r0, [r0]
007ba7a0  00 00 50 e3                                      cmp r0, #0
007ba7a4  02 00 00 0a                                      beq #0x7ba7b4
007ba7a8  14 10 a0 e3                                      mov r1, #0x14
007ba7ac  91 02 01 e0                                      mul r1, r1, r2
007ba7b0  e0 60 fe eb                                      bl #0x752b38
007ba7b4  00 30 a0 e3                                      mov r3, #0
007ba7b8  00 30 84 e5                                      str r3, [r4]
007ba7bc  10 80 bd e8                                      pop {r4, pc}
007ba7c0  14 00 a0 e3                                      mov r0, #0x14
007ba7c4  90 01 00 e0                                      mul r0, r0, r1
007ba7c8  0c 10 a0 e1                                      mov r1, ip
007ba7cc  f2 60 fe eb                                      bl #0x752b9c
007ba7d0  00 00 84 e5                                      str r0, [r4]
007ba7d4  10 80 bd e8                                      pop {r4, pc}
007ba7d8  00 c0 90 e5                                      ldr ip, [r0]
007ba7dc  00 00 5c e3                                      cmp ip, #0
007ba7e0  f6 ff ff 0a                                      beq #0x7ba7c0
007ba7e4  14 e0 a0 e3                                      mov lr, #0x14
007ba7e8  9e 02 02 e0                                      mul r2, lr, r2
007ba7ec  0c 00 a0 e1                                      mov r0, ip
007ba7f0  9e 01 01 e0                                      mul r1, lr, r1
007ba7f4  ec 60 fe eb                                      bl #0x752bac
007ba7f8  00 00 84 e5                                      str r0, [r4]
007ba7fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007bb324, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::array<gameswf::tu_stringi>
; alias: _ZN7gameswf5arrayINS_10tu_stringiEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::tu_stringi>::resize(int) [clone .clone.0]
; decoder-mode: arm
007bb324  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007bb328  04 40 90 e5                                      ldr r4, [r0, #4]
007bb32c  00 70 a0 e1                                      mov r7, r0
007bb330  00 00 54 e3                                      cmp r4, #0
007bb334  13 00 00 da                                      ble #0x7bb388
007bb338  00 50 a0 e3                                      mov r5, #0
007bb33c  05 60 a0 e1                                      mov r6, r5
007bb340  01 00 00 ea                                      b #0x7bb34c
007bb344  04 00 56 e1                                      cmp r6, r4
007bb348  0b 00 00 0a                                      beq #0x7bb37c
007bb34c  00 30 97 e5                                      ldr r3, [r7]
007bb350  01 60 86 e2                                      add r6, r6, #1
007bb354  d5 20 93 e1                                      ldrsb r2, [r3, r5]
007bb358  05 30 83 e0                                      add r3, r3, r5
007bb35c  14 50 85 e2                                      add r5, r5, #0x14
007bb360  01 00 72 e3                                      cmn r2, #1
007bb364  f6 ff ff 1a                                      bne #0x7bb344
007bb368  08 10 93 e5                                      ldr r1, [r3, #8]
007bb36c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
007bb370  f0 5d fe eb                                      bl #0x752b38
007bb374  04 00 56 e1                                      cmp r6, r4
007bb378  f3 ff ff 1a                                      bne #0x7bb34c
007bb37c  00 30 a0 e3                                      mov r3, #0
007bb380  04 30 87 e5                                      str r3, [r7, #4]
007bb384  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007bb388  fb ff ff aa                                      bge #0x7bb37c
007bb38c  14 20 a0 e3                                      mov r2, #0x14
007bb390  92 04 02 e0                                      mul r2, r2, r4
007bb394  01 60 a0 e3                                      mov r6, #1
007bb398  00 50 a0 e3                                      mov r5, #0
007bb39c  00 c0 e0 e3                                      mvn ip, #0
007bb3a0  00 30 97 e5                                      ldr r3, [r7]
007bb3a4  01 40 94 e2                                      adds r4, r4, #1
007bb3a8  02 60 c3 e7                                      strb r6, [r3, r2]
007bb3ac  02 30 83 e0                                      add r3, r3, r2
007bb3b0  10 10 93 e5                                      ldr r1, [r3, #0x10]
007bb3b4  01 50 c3 e5                                      strb r5, [r3, #1]
007bb3b8  14 20 82 e2                                      add r2, r2, #0x14
007bb3bc  1c 10 d7 e7                                      bfi r1, ip, #0, #0x18
007bb3c0  21 0c a0 e1                                      lsr r0, r1, #0x18
007bb3c4  1f 00 c0 e7                                      bfc r0, #0, #1
007bb3c8  10 10 83 e5                                      str r1, [r3, #0x10]
007bb3cc  13 00 c3 e5                                      strb r0, [r3, #0x13]
007bb3d0  f2 ff ff 1a                                      bne #0x7bb3a0
007bb3d4  00 30 a0 e3                                      mov r3, #0
007bb3d8  04 30 87 e5                                      str r3, [r7, #4]
007bb3dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007bb410, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::array<gameswf::tu_stringi>
; alias: _ZN7gameswf5arrayINS_10tu_stringiEED1Ev
; demangled: gameswf::array<gameswf::tu_stringi>::~array()
; decoder-mode: arm
007bb410  10 40 2d e9                                      push {r4, lr}
007bb414  00 40 a0 e1                                      mov r4, r0
007bb418  c1 ff ff eb                                      bl #0x7bb324
007bb41c  04 00 a0 e1                                      mov r0, r4
007bb420  00 10 a0 e3                                      mov r1, #0
007bb424  d3 fc ff eb                                      bl #0x7ba778
007bb428  04 00 a0 e1                                      mov r0, r4
007bb42c  10 80 bd e8                                      pop {r4, pc}
