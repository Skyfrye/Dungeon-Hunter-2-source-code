; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c74c0, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::button_action
; alias: _ZN7gameswf13button_action4readEPNS_6streamEi
; demangled: gameswf::button_action::read(gameswf::stream*, int)
; decoder-mode: arm
007c74c0  07 00 52 e3                                      cmp r2, #7
007c74c4  08 30 a0 03                                      moveq r3, #8
007c74c8  70 40 2d e9                                      push {r4, r5, r6, lr}
007c74cc  00 40 a0 e1                                      mov r4, r0
007c74d0  01 50 a0 e1                                      mov r5, r1
007c74d4  00 30 80 05                                      streq r3, [r0]
007c74d8  02 00 00 0a                                      beq #0x7c74e8
007c74dc  01 00 a0 e1                                      mov r0, r1
007c74e0  cb f1 fe eb                                      bl #0x783c14
007c74e4  00 00 84 e5                                      str r0, [r4]
007c74e8  00 10 a0 e3                                      mov r1, #0
007c74ec  0c 00 a0 e3                                      mov r0, #0xc
007c74f0  ac 2d fe eb                                      bl #0x752ba8
007c74f4  00 60 a0 e1                                      mov r6, r0
007c74f8  42 ce ff eb                                      bl #0x7bae08
007c74fc  05 10 a0 e1                                      mov r1, r5
007c7500  06 00 a0 e1                                      mov r0, r6
007c7504  a6 ce ff eb                                      bl #0x7bafa4
007c7508  08 30 94 e5                                      ldr r3, [r4, #8]
007c750c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007c7510  01 50 83 e2                                      add r5, r3, #1
007c7514  02 00 55 e1                                      cmp r5, r2
007c7518  03 00 00 da                                      ble #0x7c752c
007c751c  04 00 84 e2                                      add r0, r4, #4
007c7520  c5 10 85 e0                                      add r1, r5, r5, asr #1
007c7524  b3 dc fe eb                                      bl #0x77e7f8
007c7528  08 30 94 e5                                      ldr r3, [r4, #8]
007c752c  04 20 94 e5                                      ldr r2, [r4, #4]
007c7530  03 61 82 e7                                      str r6, [r2, r3, lsl #2]
007c7534  08 50 84 e5                                      str r5, [r4, #8]
007c7538  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007c7614, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::button_action
; alias: _ZN7gameswf13button_actionD1Ev
; demangled: gameswf::button_action::~button_action()
; decoder-mode: arm
007c7614  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c7618  08 40 90 e5                                      ldr r4, [r0, #8]
007c761c  00 60 a0 e1                                      mov r6, r0
007c7620  00 00 54 e3                                      cmp r4, #0
007c7624  17 00 00 da                                      ble #0x7c7688
007c7628  00 50 a0 e3                                      mov r5, #0
007c762c  04 30 96 e5                                      ldr r3, [r6, #4]
007c7630  05 71 93 e7                                      ldr r7, [r3, r5, lsl #2]
007c7634  01 50 85 e2                                      add r5, r5, #1
007c7638  00 00 57 e3                                      cmp r7, #0
007c763c  06 00 00 0a                                      beq #0x7c765c
007c7640  00 00 97 e5                                      ldr r0, [r7]
007c7644  00 00 50 e3                                      cmp r0, #0
007c7648  00 00 00 0a                                      beq #0x7c7650
007c764c  e8 50 fe eb                                      bl #0x75b9f4
007c7650  07 00 a0 e1                                      mov r0, r7
007c7654  00 10 a0 e3                                      mov r1, #0
007c7658  36 2d fe eb                                      bl #0x752b38
007c765c  04 00 55 e1                                      cmp r5, r4
007c7660  f1 ff ff 1a                                      bne #0x7c762c
007c7664  08 40 96 e5                                      ldr r4, [r6, #8]
007c7668  04 00 86 e2                                      add r0, r6, #4
007c766c  00 00 54 e3                                      cmp r4, #0
007c7670  05 00 00 da                                      ble #0x7c768c
007c7674  00 10 a0 e3                                      mov r1, #0
007c7678  08 10 86 e5                                      str r1, [r6, #8]
007c767c  5d dc fe eb                                      bl #0x77e7f8
007c7680  06 00 a0 e1                                      mov r0, r6
007c7684  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c7688  04 00 80 e2                                      add r0, r0, #4
007c768c  00 00 54 e3                                      cmp r4, #0
007c7690  f7 ff ff aa                                      bge #0x7c7674
007c7694  04 31 a0 e1                                      lsl r3, r4, #2
007c7698  00 10 a0 e3                                      mov r1, #0
007c769c  00 20 90 e5                                      ldr r2, [r0]
007c76a0  01 40 94 e2                                      adds r4, r4, #1
007c76a4  03 10 82 e7                                      str r1, [r2, r3]
007c76a8  04 30 83 e2                                      add r3, r3, #4
007c76ac  fa ff ff 1a                                      bne #0x7c769c
007c76b0  00 10 a0 e3                                      mov r1, #0
007c76b4  08 10 86 e5                                      str r1, [r6, #8]
007c76b8  4e dc fe eb                                      bl #0x77e7f8
007c76bc  06 00 a0 e1                                      mov r0, r6
007c76c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007c7770, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::button_action
; alias: _ZN7gameswf13button_actionD2Ev
; demangled: gameswf::button_action::~button_action()
; decoder-mode: arm
007c7770  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c7774  08 40 90 e5                                      ldr r4, [r0, #8]
007c7778  00 60 a0 e1                                      mov r6, r0
007c777c  00 00 54 e3                                      cmp r4, #0
007c7780  17 00 00 da                                      ble #0x7c77e4
007c7784  00 50 a0 e3                                      mov r5, #0
007c7788  04 30 96 e5                                      ldr r3, [r6, #4]
007c778c  05 71 93 e7                                      ldr r7, [r3, r5, lsl #2]
007c7790  01 50 85 e2                                      add r5, r5, #1
007c7794  00 00 57 e3                                      cmp r7, #0
007c7798  06 00 00 0a                                      beq #0x7c77b8
007c779c  00 00 97 e5                                      ldr r0, [r7]
007c77a0  00 00 50 e3                                      cmp r0, #0
007c77a4  00 00 00 0a                                      beq #0x7c77ac
007c77a8  91 50 fe eb                                      bl #0x75b9f4
007c77ac  07 00 a0 e1                                      mov r0, r7
007c77b0  00 10 a0 e3                                      mov r1, #0
007c77b4  df 2c fe eb                                      bl #0x752b38
007c77b8  04 00 55 e1                                      cmp r5, r4
007c77bc  f1 ff ff 1a                                      bne #0x7c7788
007c77c0  08 40 96 e5                                      ldr r4, [r6, #8]
007c77c4  04 00 86 e2                                      add r0, r6, #4
007c77c8  00 00 54 e3                                      cmp r4, #0
007c77cc  05 00 00 da                                      ble #0x7c77e8
007c77d0  00 10 a0 e3                                      mov r1, #0
007c77d4  08 10 86 e5                                      str r1, [r6, #8]
007c77d8  06 dc fe eb                                      bl #0x77e7f8
007c77dc  06 00 a0 e1                                      mov r0, r6
007c77e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c77e4  04 00 80 e2                                      add r0, r0, #4
007c77e8  00 00 54 e3                                      cmp r4, #0
007c77ec  f7 ff ff aa                                      bge #0x7c77d0
007c77f0  04 31 a0 e1                                      lsl r3, r4, #2
007c77f4  00 10 a0 e3                                      mov r1, #0
007c77f8  00 20 90 e5                                      ldr r2, [r0]
007c77fc  01 40 94 e2                                      adds r4, r4, #1
007c7800  03 10 82 e7                                      str r1, [r2, r3]
007c7804  04 30 83 e2                                      add r3, r3, #4
007c7808  fa ff ff 1a                                      bne #0x7c77f8
007c780c  00 10 a0 e3                                      mov r1, #0
007c7810  08 10 86 e5                                      str r1, [r6, #8]
007c7814  f7 db fe eb                                      bl #0x77e7f8
007c7818  06 00 a0 e1                                      mov r0, r6
007c781c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
