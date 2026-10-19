; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fb570, declared_size=208, range_size=208, mode=arm
; class-group: ItemInstance::PowerInfo
; alias: _ZN12ItemInstance9PowerInfo4swapERS0_
; demangled: ItemInstance::PowerInfo::swap(ItemInstance::PowerInfo&)
; decoder-mode: arm
003fb570  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003fb574  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
003fb578  bc a0 9f e5                                      ldr sl, [pc, #0xbc]
003fb57c  24 d0 4d e2                                      sub sp, sp, #0x24
003fb580  06 60 8f e0                                      add r6, pc, r6
003fb584  0a 30 96 e7                                      ldr r3, [r6, sl]
003fb588  00 40 a0 e1                                      mov r4, r0
003fb58c  04 70 8d e2                                      add r7, sp, #4
003fb590  00 30 93 e5                                      ldr r3, [r3]
003fb594  18 20 94 e5                                      ldr r2, [r4, #0x18]
003fb598  01 50 a0 e1                                      mov r5, r1
003fb59c  07 00 a0 e1                                      mov r0, r7
003fb5a0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
003fb5a4  08 80 85 e2                                      add r8, r5, #8
003fb5a8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003fb5ac  14 70 8d e5                                      str r7, [sp, #0x14]
003fb5b0  18 70 8d e5                                      str r7, [sp, #0x18]
003fb5b4  4b 58 fc eb                                      bl #0x3116e8
003fb5b8  08 00 84 e2                                      add r0, r4, #8
003fb5bc  08 00 50 e1                                      cmp r0, r8
003fb5c0  02 00 00 0a                                      beq #0x3fb5d0
003fb5c4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
003fb5c8  18 20 95 e5                                      ldr r2, [r5, #0x18]
003fb5cc  03 55 fc eb                                      bl #0x3109e0
003fb5d0  07 00 58 e1                                      cmp r8, r7
003fb5d4  03 00 00 0a                                      beq #0x3fb5e8
003fb5d8  08 00 a0 e1                                      mov r0, r8
003fb5dc  18 10 9d e5                                      ldr r1, [sp, #0x18]
003fb5e0  14 20 9d e5                                      ldr r2, [sp, #0x14]
003fb5e4  fd 54 fc eb                                      bl #0x3109e0
003fb5e8  00 20 95 e5                                      ldr r2, [r5]
003fb5ec  00 30 94 e5                                      ldr r3, [r4]
003fb5f0  07 00 a0 e1                                      mov r0, r7
003fb5f4  03 30 22 e0                                      eor r3, r2, r3
003fb5f8  00 30 84 e5                                      str r3, [r4]
003fb5fc  00 20 95 e5                                      ldr r2, [r5]
003fb600  02 30 23 e0                                      eor r3, r3, r2
003fb604  00 30 85 e5                                      str r3, [r5]
003fb608  00 20 94 e5                                      ldr r2, [r4]
003fb60c  03 30 22 e0                                      eor r3, r2, r3
003fb610  00 30 84 e5                                      str r3, [r4]
003fb614  e4 60 fc eb                                      bl #0x3139ac
003fb618  0a 30 96 e7                                      ldr r3, [r6, sl]
003fb61c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003fb620  00 30 93 e5                                      ldr r3, [r3]
003fb624  03 00 52 e1                                      cmp r2, r3
003fb628  01 00 00 1a                                      bne #0x3fb634
003fb62c  24 d0 8d e2                                      add sp, sp, #0x24
003fb630  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003fb634  35 4b fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003fb638  10 95 59 00 ac 40 00 00                          .byte 0x10, 0x95, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00
