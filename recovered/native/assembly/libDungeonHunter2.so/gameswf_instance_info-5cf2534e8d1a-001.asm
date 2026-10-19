; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b970c, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::instance_info
; alias: _ZN7gameswf13instance_info4readEPNS_6streamEPNS_7abc_defE
; demangled: gameswf::instance_info::read(gameswf::stream*, gameswf::abc_def*)
; decoder-mode: arm
007b970c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b9710  00 70 a0 e1                                      mov r7, r0
007b9714  0c d0 4d e2                                      sub sp, sp, #0xc
007b9718  01 00 a0 e1                                      mov r0, r1
007b971c  01 80 a0 e1                                      mov r8, r1
007b9720  02 b0 a0 e1                                      mov fp, r2
007b9724  0c 29 ff eb                                      bl #0x783b5c
007b9728  0c 00 87 e5                                      str r0, [r7, #0xc]
007b972c  08 00 a0 e1                                      mov r0, r8
007b9730  09 29 ff eb                                      bl #0x783b5c
007b9734  10 00 87 e5                                      str r0, [r7, #0x10]
007b9738  08 00 a0 e1                                      mov r0, r8
007b973c  f9 28 ff eb                                      bl #0x783b28
007b9740  84 a1 9f e5                                      ldr sl, [pc, #0x184]
007b9744  08 00 10 e3                                      tst r0, #8
007b9748  14 00 c7 e5                                      strb r0, [r7, #0x14]
007b974c  0a a0 8f e0                                      add sl, pc, sl
007b9750  55 00 00 1a                                      bne #0x7b98ac
007b9754  08 00 a0 e1                                      mov r0, r8
007b9758  ff 28 ff eb                                      bl #0x783b5c
007b975c  00 50 50 e2                                      subs r5, r0, #0
007b9760  1c 60 87 e2                                      add r6, r7, #0x1c
007b9764  20 40 97 e5                                      ldr r4, [r7, #0x20]
007b9768  02 00 00 0a                                      beq #0x7b9778
007b976c  24 30 97 e5                                      ldr r3, [r7, #0x24]
007b9770  03 00 55 e1                                      cmp r5, r3
007b9774  50 00 00 ca                                      bgt #0x7b98bc
007b9778  04 00 55 e1                                      cmp r5, r4
007b977c  07 00 00 da                                      ble #0x7b97a0
007b9780  04 31 a0 e1                                      lsl r3, r4, #2
007b9784  00 10 a0 e3                                      mov r1, #0
007b9788  00 20 96 e5                                      ldr r2, [r6]
007b978c  01 40 84 e2                                      add r4, r4, #1
007b9790  04 00 55 e1                                      cmp r5, r4
007b9794  03 10 82 e7                                      str r1, [r2, r3]
007b9798  04 30 83 e2                                      add r3, r3, #4
007b979c  f9 ff ff 1a                                      bne #0x7b9788
007b97a0  00 00 55 e3                                      cmp r5, #0
007b97a4  20 50 87 e5                                      str r5, [r7, #0x20]
007b97a8  07 00 00 da                                      ble #0x7b97cc
007b97ac  00 40 a0 e3                                      mov r4, #0
007b97b0  08 00 a0 e1                                      mov r0, r8
007b97b4  1c 60 97 e5                                      ldr r6, [r7, #0x1c]
007b97b8  e7 28 ff eb                                      bl #0x783b5c
007b97bc  04 01 86 e7                                      str r0, [r6, r4, lsl #2]
007b97c0  01 40 84 e2                                      add r4, r4, #1
007b97c4  05 00 54 e1                                      cmp r4, r5
007b97c8  f8 ff ff 1a                                      bne #0x7b97b0
007b97cc  08 00 a0 e1                                      mov r0, r8
007b97d0  e1 28 ff eb                                      bl #0x783b5c
007b97d4  2c 00 87 e5                                      str r0, [r7, #0x2c]
007b97d8  08 00 a0 e1                                      mov r0, r8
007b97dc  de 28 ff eb                                      bl #0x783b5c
007b97e0  00 90 a0 e1                                      mov sb, r0
007b97e4  00 10 a0 e1                                      mov r1, r0
007b97e8  30 00 87 e2                                      add r0, r7, #0x30
007b97ec  af fc ff eb                                      bl #0x7b8ab0
007b97f0  00 00 59 e3                                      cmp sb, #0
007b97f4  2a 00 00 da                                      ble #0x7b98a4
007b97f8  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
007b97fc  00 60 a0 e3                                      mov r6, #0
007b9800  06 40 a0 e1                                      mov r4, r6
007b9804  04 20 8d e5                                      str r2, [sp, #4]
007b9808  00 10 a0 e3                                      mov r1, #0
007b980c  34 00 a0 e3                                      mov r0, #0x34
007b9810  e4 64 fe eb                                      bl #0x752ba8
007b9814  00 30 a0 e1                                      mov r3, r0
007b9818  04 40 83 e4                                      str r4, [r3], #4
007b981c  04 30 83 e2                                      add r3, r3, #4
007b9820  04 40 80 e5                                      str r4, [r0, #4]
007b9824  04 40 83 e4                                      str r4, [r3], #4
007b9828  04 40 83 e4                                      str r4, [r3], #4
007b982c  04 40 83 e4                                      str r4, [r3], #4
007b9830  04 40 83 e4                                      str r4, [r3], #4
007b9834  04 40 83 e4                                      str r4, [r3], #4
007b9838  04 40 83 e4                                      str r4, [r3], #4
007b983c  04 40 83 e4                                      str r4, [r3], #4
007b9840  04 40 83 e4                                      str r4, [r3], #4
007b9844  04 40 83 e4                                      str r4, [r3], #4
007b9848  04 40 83 e4                                      str r4, [r3], #4
007b984c  00 40 83 e5                                      str r4, [r3]
007b9850  00 50 a0 e1                                      mov r5, r0
007b9854  ea 80 fe eb                                      bl #0x759c04
007b9858  04 20 9d e5                                      ldr r2, [sp, #4]
007b985c  05 00 a0 e1                                      mov r0, r5
007b9860  08 10 a0 e1                                      mov r1, r8
007b9864  02 30 9a e7                                      ldr r3, [sl, r2]
007b9868  24 40 85 e5                                      str r4, [r5, #0x24]
007b986c  0b 20 a0 e1                                      mov r2, fp
007b9870  08 30 83 e2                                      add r3, r3, #8
007b9874  00 30 85 e5                                      str r3, [r5]
007b9878  28 40 85 e5                                      str r4, [r5, #0x28]
007b987c  2c 40 85 e5                                      str r4, [r5, #0x2c]
007b9880  30 40 c5 e5                                      strb r4, [r5, #0x30]
007b9884  be fa ff eb                                      bl #0x7b8384
007b9888  30 00 97 e5                                      ldr r0, [r7, #0x30]
007b988c  05 10 a0 e1                                      mov r1, r5
007b9890  06 01 80 e0                                      add r0, r0, r6, lsl #2
007b9894  01 60 86 e2                                      add r6, r6, #1
007b9898  49 fd ff eb                                      bl #0x7b8dc4
007b989c  09 00 56 e1                                      cmp r6, sb
007b98a0  d8 ff ff 1a                                      bne #0x7b9808
007b98a4  0c d0 8d e2                                      add sp, sp, #0xc
007b98a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b98ac  08 00 a0 e1                                      mov r0, r8
007b98b0  a9 28 ff eb                                      bl #0x783b5c
007b98b4  18 00 87 e5                                      str r0, [r7, #0x18]
007b98b8  a5 ff ff ea                                      b #0x7b9754
007b98bc  06 00 a0 e1                                      mov r0, r6
007b98c0  c5 10 85 e0                                      add r1, r5, r5, asr #1
007b98c4  bd aa fe eb                                      bl #0x7643c0
007b98c8  aa ff ff ea                                      b #0x7b9778
; mapping-symbol data/literal pool
007b98cc  44 b3 1d 00 44 36 00 00                          .byte 0x44, 0xb3, 0x1d, 0x00, 0x44, 0x36, 0x00, 0x00

; FUNCTION 0x007b9938, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::instance_info
; alias: _ZN7gameswf13instance_infoD1Ev
; demangled: gameswf::instance_info::~instance_info()
; decoder-mode: arm
007b9938  88 30 9f e5                                      ldr r3, [pc, #0x88]
007b993c  88 20 9f e5                                      ldr r2, [pc, #0x88]
007b9940  70 40 2d e9                                      push {r4, r5, r6, lr}
007b9944  03 30 8f e0                                      add r3, pc, r3
007b9948  02 20 93 e7                                      ldr r2, [r3, r2]
007b994c  00 50 a0 e1                                      mov r5, r0
007b9950  00 40 a0 e1                                      mov r4, r0
007b9954  08 20 82 e2                                      add r2, r2, #8
007b9958  30 20 85 e4                                      str r2, [r5], #0x30
007b995c  00 10 a0 e3                                      mov r1, #0
007b9960  05 00 a0 e1                                      mov r0, r5
007b9964  51 fc ff eb                                      bl #0x7b8ab0
007b9968  05 00 a0 e1                                      mov r0, r5
007b996c  00 10 a0 e3                                      mov r1, #0
007b9970  7c fb ff eb                                      bl #0x7b8768
007b9974  20 30 94 e5                                      ldr r3, [r4, #0x20]
007b9978  1c 00 84 e2                                      add r0, r4, #0x1c
007b997c  00 00 53 e3                                      cmp r3, #0
007b9980  07 00 00 da                                      ble #0x7b99a4
007b9984  00 30 a0 e3                                      mov r3, #0
007b9988  03 10 a0 e1                                      mov r1, r3
007b998c  20 30 84 e5                                      str r3, [r4, #0x20]
007b9990  8a aa fe eb                                      bl #0x7643c0
007b9994  04 00 a0 e1                                      mov r0, r4
007b9998  c1 90 fe eb                                      bl #0x75dca4
007b999c  04 00 a0 e1                                      mov r0, r4
007b99a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007b99a4  f6 ff ff aa                                      bge #0x7b9984
007b99a8  03 21 a0 e1                                      lsl r2, r3, #2
007b99ac  00 c0 a0 e3                                      mov ip, #0
007b99b0  00 10 90 e5                                      ldr r1, [r0]
007b99b4  01 30 93 e2                                      adds r3, r3, #1
007b99b8  02 c0 81 e7                                      str ip, [r1, r2]
007b99bc  04 20 82 e2                                      add r2, r2, #4
007b99c0  fa ff ff 1a                                      bne #0x7b99b0
007b99c4  ee ff ff ea                                      b #0x7b9984
; mapping-symbol data/literal pool
007b99c8  4c b1 1d 00 20 10 00 00                          .byte 0x4c, 0xb1, 0x1d, 0x00, 0x20, 0x10, 0x00, 0x00

; FUNCTION 0x007b99d0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::instance_info
; alias: _ZN7gameswf13instance_infoD0Ev
; demangled: gameswf::instance_info::~instance_info()
; decoder-mode: arm
007b99d0  10 40 2d e9                                      push {r4, lr}
007b99d4  00 40 a0 e1                                      mov r4, r0
007b99d8  d6 ff ff eb                                      bl #0x7b9938
007b99dc  04 00 a0 e1                                      mov r0, r4
007b99e0  32 52 ed eb                                      bl #0x30e2b0
007b99e4  04 00 a0 e1                                      mov r0, r4
007b99e8  10 80 bd e8                                      pop {r4, pc}
