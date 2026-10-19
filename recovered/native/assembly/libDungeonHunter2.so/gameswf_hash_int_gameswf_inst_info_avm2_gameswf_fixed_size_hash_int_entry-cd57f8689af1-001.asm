; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c9cd8, declared_size=180, range_size=180, mode=arm
; class-group: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::entry
; alias: _ZN7gameswf4hashIiNS_14inst_info_avm2ENS_15fixed_size_hashIiEEE5entryC1ERKS5_
; demangled: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::entry::entry(gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::entry const&)
; decoder-mode: arm
007c9cd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c9cdc  00 30 91 e5                                      ldr r3, [r1]
007c9ce0  00 80 a0 e3                                      mov r8, #0
007c9ce4  01 50 a0 e1                                      mov r5, r1
007c9ce8  00 30 80 e5                                      str r3, [r0]
007c9cec  04 30 91 e5                                      ldr r3, [r1, #4]
007c9cf0  00 40 a0 e1                                      mov r4, r0
007c9cf4  04 30 80 e5                                      str r3, [r0, #4]
007c9cf8  08 30 91 e5                                      ldr r3, [r1, #8]
007c9cfc  08 30 80 e5                                      str r3, [r0, #8]
007c9d00  0c 30 91 e5                                      ldr r3, [r1, #0xc]
007c9d04  10 80 80 e5                                      str r8, [r0, #0x10]
007c9d08  14 80 80 e5                                      str r8, [r0, #0x14]
007c9d0c  0c 30 80 e5                                      str r3, [r0, #0xc]
007c9d10  18 80 80 e5                                      str r8, [r0, #0x18]
007c9d14  1c 80 c0 e5                                      strb r8, [r0, #0x1c]
007c9d18  14 60 91 e5                                      ldr r6, [r1, #0x14]
007c9d1c  08 00 56 e1                                      cmp r6, r8
007c9d20  02 00 00 aa                                      bge #0x7c9d30
007c9d24  14 60 84 e5                                      str r6, [r4, #0x14]
007c9d28  04 00 a0 e1                                      mov r0, r4
007c9d2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c9d30  fb ff ff 0a                                      beq #0x7c9d24
007c9d34  fa ff ff da                                      ble #0x7c9d24
007c9d38  10 70 80 e2                                      add r7, r0, #0x10
007c9d3c  07 00 a0 e1                                      mov r0, r7
007c9d40  c6 10 86 e0                                      add r1, r6, r6, asr #1
007c9d44  31 fc ff eb                                      bl #0x7c8e10
007c9d48  08 30 a0 e1                                      mov r3, r8
007c9d4c  00 20 97 e5                                      ldr r2, [r7]
007c9d50  08 31 82 e7                                      str r3, [r2, r8, lsl #2]
007c9d54  01 80 88 e2                                      add r8, r8, #1
007c9d58  06 00 58 e1                                      cmp r8, r6
007c9d5c  fa ff ff 1a                                      bne #0x7c9d4c
007c9d60  14 80 84 e5                                      str r8, [r4, #0x14]
007c9d64  10 10 95 e5                                      ldr r1, [r5, #0x10]
007c9d68  10 20 94 e5                                      ldr r2, [r4, #0x10]
007c9d6c  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
007c9d70  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007c9d74  14 20 94 e5                                      ldr r2, [r4, #0x14]
007c9d78  01 30 83 e2                                      add r3, r3, #1
007c9d7c  02 00 53 e1                                      cmp r3, r2
007c9d80  f7 ff ff ba                                      blt #0x7c9d64
007c9d84  04 00 a0 e1                                      mov r0, r4
007c9d88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
