; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b8670, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::metadata_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_13metadata_infoEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::metadata_info> >::reserve(int)
; decoder-mode: arm
007b8670  10 40 2d e9                                      push {r4, lr}
007b8674  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b8678  00 40 a0 e1                                      mov r4, r0
007b867c  00 00 53 e3                                      cmp r3, #0
007b8680  0f 00 00 1a                                      bne #0x7b86c4
007b8684  00 00 51 e3                                      cmp r1, #0
007b8688  08 20 90 e5                                      ldr r2, [r0, #8]
007b868c  08 10 80 e5                                      str r1, [r0, #8]
007b8690  0c 00 00 1a                                      bne #0x7b86c8
007b8694  00 00 90 e5                                      ldr r0, [r0]
007b8698  00 00 50 e3                                      cmp r0, #0
007b869c  01 00 00 0a                                      beq #0x7b86a8
007b86a0  02 11 a0 e1                                      lsl r1, r2, #2
007b86a4  23 69 fe eb                                      bl #0x752b38
007b86a8  00 30 a0 e3                                      mov r3, #0
007b86ac  00 30 84 e5                                      str r3, [r4]
007b86b0  10 80 bd e8                                      pop {r4, pc}
007b86b4  01 01 a0 e1                                      lsl r0, r1, #2
007b86b8  0c 10 a0 e1                                      mov r1, ip
007b86bc  36 69 fe eb                                      bl #0x752b9c
007b86c0  00 00 84 e5                                      str r0, [r4]
007b86c4  10 80 bd e8                                      pop {r4, pc}
007b86c8  00 c0 90 e5                                      ldr ip, [r0]
007b86cc  00 00 5c e3                                      cmp ip, #0
007b86d0  f7 ff ff 0a                                      beq #0x7b86b4
007b86d4  0c 00 a0 e1                                      mov r0, ip
007b86d8  01 11 a0 e1                                      lsl r1, r1, #2
007b86dc  02 21 a0 e1                                      lsl r2, r2, #2
007b86e0  31 69 fe eb                                      bl #0x752bac
007b86e4  00 00 84 e5                                      str r0, [r4]
007b86e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b8978, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::metadata_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_13metadata_infoEEEE6resizeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::metadata_info> >::resize(int)
; decoder-mode: arm
007b8978  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b897c  04 60 90 e5                                      ldr r6, [r0, #4]
007b8980  00 40 a0 e1                                      mov r4, r0
007b8984  01 50 a0 e1                                      mov r5, r1
007b8988  01 00 56 e1                                      cmp r6, r1
007b898c  0a 00 00 da                                      ble #0x7b89bc
007b8990  01 81 a0 e1                                      lsl r8, r1, #2
007b8994  01 70 a0 e1                                      mov r7, r1
007b8998  00 30 94 e5                                      ldr r3, [r4]
007b899c  01 70 87 e2                                      add r7, r7, #1
007b89a0  08 00 93 e7                                      ldr r0, [r3, r8]
007b89a4  04 80 88 e2                                      add r8, r8, #4
007b89a8  00 00 50 e3                                      cmp r0, #0
007b89ac  00 00 00 0a                                      beq #0x7b89b4
007b89b0  22 86 fe eb                                      bl #0x75a240
007b89b4  06 00 57 e1                                      cmp r7, r6
007b89b8  f6 ff ff 1a                                      bne #0x7b8998
007b89bc  00 00 55 e3                                      cmp r5, #0
007b89c0  02 00 00 0a                                      beq #0x7b89d0
007b89c4  08 30 94 e5                                      ldr r3, [r4, #8]
007b89c8  03 00 55 e1                                      cmp r5, r3
007b89cc  0c 00 00 ca                                      bgt #0x7b8a04
007b89d0  05 00 56 e1                                      cmp r6, r5
007b89d4  08 00 00 aa                                      bge #0x7b89fc
007b89d8  06 30 a0 e1                                      mov r3, r6
007b89dc  00 10 a0 e3                                      mov r1, #0
007b89e0  06 61 a0 e1                                      lsl r6, r6, #2
007b89e4  00 20 94 e5                                      ldr r2, [r4]
007b89e8  01 30 83 e2                                      add r3, r3, #1
007b89ec  05 00 53 e1                                      cmp r3, r5
007b89f0  06 10 82 e7                                      str r1, [r2, r6]
007b89f4  04 60 86 e2                                      add r6, r6, #4
007b89f8  f9 ff ff 1a                                      bne #0x7b89e4
007b89fc  04 50 84 e5                                      str r5, [r4, #4]
007b8a00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b8a04  04 00 a0 e1                                      mov r0, r4
007b8a08  c5 10 85 e0                                      add r1, r5, r5, asr #1
007b8a0c  17 ff ff eb                                      bl #0x7b8670
007b8a10  ee ff ff ea                                      b #0x7b89d0
