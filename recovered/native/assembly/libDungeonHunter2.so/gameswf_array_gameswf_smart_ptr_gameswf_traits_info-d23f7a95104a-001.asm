; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b8768, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::traits_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_11traits_infoEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::traits_info> >::reserve(int)
; decoder-mode: arm
007b8768  10 40 2d e9                                      push {r4, lr}
007b876c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b8770  00 40 a0 e1                                      mov r4, r0
007b8774  00 00 53 e3                                      cmp r3, #0
007b8778  0f 00 00 1a                                      bne #0x7b87bc
007b877c  00 00 51 e3                                      cmp r1, #0
007b8780  08 20 90 e5                                      ldr r2, [r0, #8]
007b8784  08 10 80 e5                                      str r1, [r0, #8]
007b8788  0c 00 00 1a                                      bne #0x7b87c0
007b878c  00 00 90 e5                                      ldr r0, [r0]
007b8790  00 00 50 e3                                      cmp r0, #0
007b8794  01 00 00 0a                                      beq #0x7b87a0
007b8798  02 11 a0 e1                                      lsl r1, r2, #2
007b879c  e5 68 fe eb                                      bl #0x752b38
007b87a0  00 30 a0 e3                                      mov r3, #0
007b87a4  00 30 84 e5                                      str r3, [r4]
007b87a8  10 80 bd e8                                      pop {r4, pc}
007b87ac  01 01 a0 e1                                      lsl r0, r1, #2
007b87b0  0c 10 a0 e1                                      mov r1, ip
007b87b4  f8 68 fe eb                                      bl #0x752b9c
007b87b8  00 00 84 e5                                      str r0, [r4]
007b87bc  10 80 bd e8                                      pop {r4, pc}
007b87c0  00 c0 90 e5                                      ldr ip, [r0]
007b87c4  00 00 5c e3                                      cmp ip, #0
007b87c8  f7 ff ff 0a                                      beq #0x7b87ac
007b87cc  0c 00 a0 e1                                      mov r0, ip
007b87d0  01 11 a0 e1                                      lsl r1, r1, #2
007b87d4  02 21 a0 e1                                      lsl r2, r2, #2
007b87d8  f3 68 fe eb                                      bl #0x752bac
007b87dc  00 00 84 e5                                      str r0, [r4]
007b87e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b8ab0, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::traits_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_11traits_infoEEEE6resizeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::traits_info> >::resize(int)
; decoder-mode: arm
007b8ab0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b8ab4  04 60 90 e5                                      ldr r6, [r0, #4]
007b8ab8  00 40 a0 e1                                      mov r4, r0
007b8abc  01 50 a0 e1                                      mov r5, r1
007b8ac0  01 00 56 e1                                      cmp r6, r1
007b8ac4  0a 00 00 da                                      ble #0x7b8af4
007b8ac8  01 81 a0 e1                                      lsl r8, r1, #2
007b8acc  01 70 a0 e1                                      mov r7, r1
007b8ad0  00 30 94 e5                                      ldr r3, [r4]
007b8ad4  01 70 87 e2                                      add r7, r7, #1
007b8ad8  08 00 93 e7                                      ldr r0, [r3, r8]
007b8adc  04 80 88 e2                                      add r8, r8, #4
007b8ae0  00 00 50 e3                                      cmp r0, #0
007b8ae4  00 00 00 0a                                      beq #0x7b8aec
007b8ae8  d4 85 fe eb                                      bl #0x75a240
007b8aec  06 00 57 e1                                      cmp r7, r6
007b8af0  f6 ff ff 1a                                      bne #0x7b8ad0
007b8af4  00 00 55 e3                                      cmp r5, #0
007b8af8  02 00 00 0a                                      beq #0x7b8b08
007b8afc  08 30 94 e5                                      ldr r3, [r4, #8]
007b8b00  03 00 55 e1                                      cmp r5, r3
007b8b04  0c 00 00 ca                                      bgt #0x7b8b3c
007b8b08  05 00 56 e1                                      cmp r6, r5
007b8b0c  08 00 00 aa                                      bge #0x7b8b34
007b8b10  06 30 a0 e1                                      mov r3, r6
007b8b14  00 10 a0 e3                                      mov r1, #0
007b8b18  06 61 a0 e1                                      lsl r6, r6, #2
007b8b1c  00 20 94 e5                                      ldr r2, [r4]
007b8b20  01 30 83 e2                                      add r3, r3, #1
007b8b24  05 00 53 e1                                      cmp r3, r5
007b8b28  06 10 82 e7                                      str r1, [r2, r6]
007b8b2c  04 60 86 e2                                      add r6, r6, #4
007b8b30  f9 ff ff 1a                                      bne #0x7b8b1c
007b8b34  04 50 84 e5                                      str r5, [r4, #4]
007b8b38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b8b3c  04 00 a0 e1                                      mov r0, r4
007b8b40  c5 10 85 e0                                      add r1, r5, r5, asr #1
007b8b44  07 ff ff eb                                      bl #0x7b8768
007b8b48  ee ff ff ea                                      b #0x7b8b08
