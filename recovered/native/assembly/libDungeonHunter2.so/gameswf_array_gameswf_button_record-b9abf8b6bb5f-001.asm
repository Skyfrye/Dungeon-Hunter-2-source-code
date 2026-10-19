; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c7194, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::button_record>
; alias: _ZN7gameswf5arrayINS_13button_recordEE7reserveEi
; demangled: gameswf::array<gameswf::button_record>::reserve(int)
; decoder-mode: arm
007c7194  10 40 2d e9                                      push {r4, lr}
007c7198  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007c719c  00 40 a0 e1                                      mov r4, r0
007c71a0  00 00 53 e3                                      cmp r3, #0
007c71a4  11 00 00 1a                                      bne #0x7c71f0
007c71a8  00 00 51 e3                                      cmp r1, #0
007c71ac  08 20 90 e5                                      ldr r2, [r0, #8]
007c71b0  08 10 80 e5                                      str r1, [r0, #8]
007c71b4  0e 00 00 1a                                      bne #0x7c71f4
007c71b8  00 00 90 e5                                      ldr r0, [r0]
007c71bc  00 00 50 e3                                      cmp r0, #0
007c71c0  02 00 00 0a                                      beq #0x7c71d0
007c71c4  64 10 a0 e3                                      mov r1, #0x64
007c71c8  91 02 01 e0                                      mul r1, r1, r2
007c71cc  59 2e fe eb                                      bl #0x752b38
007c71d0  00 30 a0 e3                                      mov r3, #0
007c71d4  00 30 84 e5                                      str r3, [r4]
007c71d8  10 80 bd e8                                      pop {r4, pc}
007c71dc  64 00 a0 e3                                      mov r0, #0x64
007c71e0  90 01 00 e0                                      mul r0, r0, r1
007c71e4  0c 10 a0 e1                                      mov r1, ip
007c71e8  6b 2e fe eb                                      bl #0x752b9c
007c71ec  00 00 84 e5                                      str r0, [r4]
007c71f0  10 80 bd e8                                      pop {r4, pc}
007c71f4  00 c0 90 e5                                      ldr ip, [r0]
007c71f8  00 00 5c e3                                      cmp ip, #0
007c71fc  f6 ff ff 0a                                      beq #0x7c71dc
007c7200  64 e0 a0 e3                                      mov lr, #0x64
007c7204  9e 02 02 e0                                      mul r2, lr, r2
007c7208  0c 00 a0 e1                                      mov r0, ip
007c720c  9e 01 01 e0                                      mul r1, lr, r1
007c7210  65 2e fe eb                                      bl #0x752bac
007c7214  00 00 84 e5                                      str r0, [r4]
007c7218  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c7820, declared_size=180, range_size=180, mode=arm
; class-group: gameswf::array<gameswf::button_record>
; alias: _ZN7gameswf5arrayINS_13button_recordEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::button_record>::resize(int) [clone .clone.0]
; decoder-mode: arm
007c7820  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c7824  04 60 90 e5                                      ldr r6, [r0, #4]
007c7828  00 80 a0 e1                                      mov r8, r0
007c782c  00 00 56 e3                                      cmp r6, #0
007c7830  11 00 00 da                                      ble #0x7c787c
007c7834  00 40 a0 e3                                      mov r4, #0
007c7838  04 50 a0 e1                                      mov r5, r4
007c783c  00 70 98 e5                                      ldr r7, [r8]
007c7840  00 10 a0 e3                                      mov r1, #0
007c7844  01 50 85 e2                                      add r5, r5, #1
007c7848  04 70 87 e0                                      add r7, r7, r4
007c784c  50 70 87 e2                                      add r7, r7, #0x50
007c7850  07 00 a0 e1                                      mov r0, r7
007c7854  9f 38 fe eb                                      bl #0x755ad8
007c7858  07 00 a0 e1                                      mov r0, r7
007c785c  00 10 a0 e3                                      mov r1, #0
007c7860  98 2d fe eb                                      bl #0x752ec8
007c7864  06 00 55 e1                                      cmp r5, r6
007c7868  64 40 84 e2                                      add r4, r4, #0x64
007c786c  f2 ff ff 1a                                      bne #0x7c783c
007c7870  00 30 a0 e3                                      mov r3, #0
007c7874  04 30 88 e5                                      str r3, [r8, #4]
007c7878  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c787c  fb ff ff aa                                      bge #0x7c7870
007c7880  64 70 a0 e3                                      mov r7, #0x64
007c7884  97 06 07 e0                                      mul r7, r7, r6
007c7888  fe 55 a0 e3                                      mov r5, #0x3f800000
007c788c  00 40 98 e5                                      ldr r4, [r8]
007c7890  00 10 a0 e3                                      mov r1, #0
007c7894  64 20 a0 e3                                      mov r2, #0x64
007c7898  07 40 84 e0                                      add r4, r4, r7
007c789c  04 00 a0 e1                                      mov r0, r4
007c78a0  ee 1a ed eb                                      bl #0x30e460
007c78a4  01 60 96 e2                                      adds r6, r6, #1
007c78a8  44 50 84 e5                                      str r5, [r4, #0x44]
007c78ac  14 50 84 e5                                      str r5, [r4, #0x14]
007c78b0  24 50 84 e5                                      str r5, [r4, #0x24]
007c78b4  2c 50 84 e5                                      str r5, [r4, #0x2c]
007c78b8  34 50 84 e5                                      str r5, [r4, #0x34]
007c78bc  3c 50 84 e5                                      str r5, [r4, #0x3c]
007c78c0  64 70 87 e2                                      add r7, r7, #0x64
007c78c4  f0 ff ff 1a                                      bne #0x7c788c
007c78c8  00 30 a0 e3                                      mov r3, #0
007c78cc  04 30 88 e5                                      str r3, [r8, #4]
007c78d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
