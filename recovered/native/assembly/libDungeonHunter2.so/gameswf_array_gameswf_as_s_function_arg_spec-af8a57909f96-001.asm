; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ba87c, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::as_s_function::arg_spec>
; alias: _ZN7gameswf5arrayINS_13as_s_function8arg_specEE7reserveEi
; demangled: gameswf::array<gameswf::as_s_function::arg_spec>::reserve(int)
; decoder-mode: arm
007ba87c  10 40 2d e9                                      push {r4, lr}
007ba880  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007ba884  00 40 a0 e1                                      mov r4, r0
007ba888  00 00 53 e3                                      cmp r3, #0
007ba88c  11 00 00 1a                                      bne #0x7ba8d8
007ba890  00 00 51 e3                                      cmp r1, #0
007ba894  08 20 90 e5                                      ldr r2, [r0, #8]
007ba898  08 10 80 e5                                      str r1, [r0, #8]
007ba89c  0e 00 00 1a                                      bne #0x7ba8dc
007ba8a0  00 00 90 e5                                      ldr r0, [r0]
007ba8a4  00 00 50 e3                                      cmp r0, #0
007ba8a8  02 00 00 0a                                      beq #0x7ba8b8
007ba8ac  18 10 a0 e3                                      mov r1, #0x18
007ba8b0  91 02 01 e0                                      mul r1, r1, r2
007ba8b4  9f 60 fe eb                                      bl #0x752b38
007ba8b8  00 30 a0 e3                                      mov r3, #0
007ba8bc  00 30 84 e5                                      str r3, [r4]
007ba8c0  10 80 bd e8                                      pop {r4, pc}
007ba8c4  18 00 a0 e3                                      mov r0, #0x18
007ba8c8  90 01 00 e0                                      mul r0, r0, r1
007ba8cc  0c 10 a0 e1                                      mov r1, ip
007ba8d0  b1 60 fe eb                                      bl #0x752b9c
007ba8d4  00 00 84 e5                                      str r0, [r4]
007ba8d8  10 80 bd e8                                      pop {r4, pc}
007ba8dc  00 c0 90 e5                                      ldr ip, [r0]
007ba8e0  00 00 5c e3                                      cmp ip, #0
007ba8e4  f6 ff ff 0a                                      beq #0x7ba8c4
007ba8e8  18 e0 a0 e3                                      mov lr, #0x18
007ba8ec  9e 02 02 e0                                      mul r2, lr, r2
007ba8f0  0c 00 a0 e1                                      mov r0, ip
007ba8f4  9e 01 01 e0                                      mul r1, lr, r1
007ba8f8  ab 60 fe eb                                      bl #0x752bac
007ba8fc  00 00 84 e5                                      str r0, [r4]
007ba900  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007bb430, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::array<gameswf::as_s_function::arg_spec>
; alias: _ZN7gameswf5arrayINS_13as_s_function8arg_specEE6resizeEi
; demangled: gameswf::array<gameswf::as_s_function::arg_spec>::resize(int)
; decoder-mode: arm
007bb430  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007bb434  04 80 90 e5                                      ldr r8, [r0, #4]
007bb438  00 60 a0 e1                                      mov r6, r0
007bb43c  01 70 a0 e1                                      mov r7, r1
007bb440  01 00 58 e1                                      cmp r8, r1
007bb444  11 00 00 da                                      ble #0x7bb490
007bb448  18 50 a0 e3                                      mov r5, #0x18
007bb44c  95 01 05 e0                                      mul r5, r5, r1
007bb450  01 40 a0 e1                                      mov r4, r1
007bb454  01 00 00 ea                                      b #0x7bb460
007bb458  08 00 54 e1                                      cmp r4, r8
007bb45c  0b 00 00 0a                                      beq #0x7bb490
007bb460  00 30 96 e5                                      ldr r3, [r6]
007bb464  01 40 84 e2                                      add r4, r4, #1
007bb468  05 30 83 e0                                      add r3, r3, r5
007bb46c  d4 20 d3 e1                                      ldrsb r2, [r3, #4]
007bb470  18 50 85 e2                                      add r5, r5, #0x18
007bb474  01 00 72 e3                                      cmn r2, #1
007bb478  f6 ff ff 1a                                      bne #0x7bb458
007bb47c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
007bb480  10 00 93 e5                                      ldr r0, [r3, #0x10]
007bb484  ab 5d fe eb                                      bl #0x752b38
007bb488  08 00 54 e1                                      cmp r4, r8
007bb48c  f3 ff ff 1a                                      bne #0x7bb460
007bb490  00 00 57 e3                                      cmp r7, #0
007bb494  02 00 00 0a                                      beq #0x7bb4a4
007bb498  08 30 96 e5                                      ldr r3, [r6, #8]
007bb49c  03 00 57 e1                                      cmp r7, r3
007bb4a0  1c 00 00 ca                                      bgt #0x7bb518
007bb4a4  07 00 58 e1                                      cmp r8, r7
007bb4a8  18 00 00 aa                                      bge #0x7bb510
007bb4ac  18 00 a0 e3                                      mov r0, #0x18
007bb4b0  90 08 00 e0                                      mul r0, r0, r8
007bb4b4  00 20 a0 e3                                      mov r2, #0
007bb4b8  01 50 a0 e3                                      mov r5, #1
007bb4bc  00 40 e0 e3                                      mvn r4, #0
007bb4c0  00 c0 96 e5                                      ldr ip, [r6]
007bb4c4  01 80 88 e2                                      add r8, r8, #1
007bb4c8  07 00 58 e1                                      cmp r8, r7
007bb4cc  00 10 8c e0                                      add r1, ip, r0
007bb4d0  08 30 81 e2                                      add r3, r1, #8
007bb4d4  00 20 8c e7                                      str r2, [ip, r0]
007bb4d8  04 20 81 e5                                      str r2, [r1, #4]
007bb4dc  04 20 83 e4                                      str r2, [r3], #4
007bb4e0  04 20 83 e4                                      str r2, [r3], #4
007bb4e4  04 20 83 e4                                      str r2, [r3], #4
007bb4e8  00 20 83 e5                                      str r2, [r3]
007bb4ec  14 30 91 e5                                      ldr r3, [r1, #0x14]
007bb4f0  04 50 c1 e5                                      strb r5, [r1, #4]
007bb4f4  18 00 80 e2                                      add r0, r0, #0x18
007bb4f8  14 30 d7 e7                                      bfi r3, r4, #0, #0x18
007bb4fc  23 cc a0 e1                                      lsr ip, r3, #0x18
007bb500  12 c0 c0 e7                                      bfi ip, r2, #0, #1
007bb504  14 30 81 e5                                      str r3, [r1, #0x14]
007bb508  17 c0 c1 e5                                      strb ip, [r1, #0x17]
007bb50c  eb ff ff 1a                                      bne #0x7bb4c0
007bb510  04 70 86 e5                                      str r7, [r6, #4]
007bb514  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007bb518  06 00 a0 e1                                      mov r0, r6
007bb51c  c7 10 87 e0                                      add r1, r7, r7, asr #1
007bb520  d5 fc ff eb                                      bl #0x7ba87c
007bb524  de ff ff ea                                      b #0x7bb4a4

; FUNCTION 0x007d2ac0, declared_size=212, range_size=212, mode=arm
; class-group: gameswf::array<gameswf::as_s_function::arg_spec>
; alias: _ZN7gameswf5arrayINS_13as_s_function8arg_specEE6resizeEi.clone.1
; demangled: gameswf::array<gameswf::as_s_function::arg_spec>::resize(int) [clone .clone.1]
; decoder-mode: arm
007d2ac0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d2ac4  04 40 90 e5                                      ldr r4, [r0, #4]
007d2ac8  00 70 a0 e1                                      mov r7, r0
007d2acc  00 00 54 e3                                      cmp r4, #0
007d2ad0  13 00 00 da                                      ble #0x7d2b24
007d2ad4  00 50 a0 e3                                      mov r5, #0
007d2ad8  05 60 a0 e1                                      mov r6, r5
007d2adc  01 00 00 ea                                      b #0x7d2ae8
007d2ae0  04 00 56 e1                                      cmp r6, r4
007d2ae4  0b 00 00 0a                                      beq #0x7d2b18
007d2ae8  00 30 97 e5                                      ldr r3, [r7]
007d2aec  01 60 86 e2                                      add r6, r6, #1
007d2af0  05 30 83 e0                                      add r3, r3, r5
007d2af4  d4 20 d3 e1                                      ldrsb r2, [r3, #4]
007d2af8  18 50 85 e2                                      add r5, r5, #0x18
007d2afc  01 00 72 e3                                      cmn r2, #1
007d2b00  f6 ff ff 1a                                      bne #0x7d2ae0
007d2b04  0c 10 93 e5                                      ldr r1, [r3, #0xc]
007d2b08  10 00 93 e5                                      ldr r0, [r3, #0x10]
007d2b0c  09 00 fe eb                                      bl #0x752b38
007d2b10  04 00 56 e1                                      cmp r6, r4
007d2b14  f3 ff ff 1a                                      bne #0x7d2ae8
007d2b18  00 30 a0 e3                                      mov r3, #0
007d2b1c  04 30 87 e5                                      str r3, [r7, #4]
007d2b20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007d2b24  fb ff ff aa                                      bge #0x7d2b18
007d2b28  18 00 a0 e3                                      mov r0, #0x18
007d2b2c  90 04 00 e0                                      mul r0, r0, r4
007d2b30  00 20 a0 e3                                      mov r2, #0
007d2b34  01 60 a0 e3                                      mov r6, #1
007d2b38  00 50 e0 e3                                      mvn r5, #0
007d2b3c  00 c0 97 e5                                      ldr ip, [r7]
007d2b40  01 40 94 e2                                      adds r4, r4, #1
007d2b44  00 10 8c e0                                      add r1, ip, r0
007d2b48  08 30 81 e2                                      add r3, r1, #8
007d2b4c  00 20 8c e7                                      str r2, [ip, r0]
007d2b50  04 20 81 e5                                      str r2, [r1, #4]
007d2b54  04 20 83 e4                                      str r2, [r3], #4
007d2b58  04 20 83 e4                                      str r2, [r3], #4
007d2b5c  04 20 83 e4                                      str r2, [r3], #4
007d2b60  00 20 83 e5                                      str r2, [r3]
007d2b64  14 30 91 e5                                      ldr r3, [r1, #0x14]
007d2b68  04 60 c1 e5                                      strb r6, [r1, #4]
007d2b6c  18 00 80 e2                                      add r0, r0, #0x18
007d2b70  15 30 d7 e7                                      bfi r3, r5, #0, #0x18
007d2b74  23 cc a0 e1                                      lsr ip, r3, #0x18
007d2b78  12 c0 c0 e7                                      bfi ip, r2, #0, #1
007d2b7c  14 30 81 e5                                      str r3, [r1, #0x14]
007d2b80  17 c0 c1 e5                                      strb ip, [r1, #0x17]
007d2b84  ec ff ff 1a                                      bne #0x7d2b3c
007d2b88  00 30 a0 e3                                      mov r3, #0
007d2b8c  04 30 87 e5                                      str r3, [r7, #4]
007d2b90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
