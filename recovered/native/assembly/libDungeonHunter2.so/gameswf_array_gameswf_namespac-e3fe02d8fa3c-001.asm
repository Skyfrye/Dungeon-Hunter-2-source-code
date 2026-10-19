; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b828c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::namespac>
; alias: _ZN7gameswf5arrayINS_8namespacEE7reserveEi
; demangled: gameswf::array<gameswf::namespac>::reserve(int)
; decoder-mode: arm
007b828c  10 40 2d e9                                      push {r4, lr}
007b8290  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b8294  00 40 a0 e1                                      mov r4, r0
007b8298  00 00 53 e3                                      cmp r3, #0
007b829c  0f 00 00 1a                                      bne #0x7b82e0
007b82a0  00 00 51 e3                                      cmp r1, #0
007b82a4  08 20 90 e5                                      ldr r2, [r0, #8]
007b82a8  08 10 80 e5                                      str r1, [r0, #8]
007b82ac  0c 00 00 1a                                      bne #0x7b82e4
007b82b0  00 00 90 e5                                      ldr r0, [r0]
007b82b4  00 00 50 e3                                      cmp r0, #0
007b82b8  01 00 00 0a                                      beq #0x7b82c4
007b82bc  82 11 a0 e1                                      lsl r1, r2, #3
007b82c0  1c 6a fe eb                                      bl #0x752b38
007b82c4  00 30 a0 e3                                      mov r3, #0
007b82c8  00 30 84 e5                                      str r3, [r4]
007b82cc  10 80 bd e8                                      pop {r4, pc}
007b82d0  81 01 a0 e1                                      lsl r0, r1, #3
007b82d4  0c 10 a0 e1                                      mov r1, ip
007b82d8  2f 6a fe eb                                      bl #0x752b9c
007b82dc  00 00 84 e5                                      str r0, [r4]
007b82e0  10 80 bd e8                                      pop {r4, pc}
007b82e4  00 c0 90 e5                                      ldr ip, [r0]
007b82e8  00 00 5c e3                                      cmp ip, #0
007b82ec  f7 ff ff 0a                                      beq #0x7b82d0
007b82f0  0c 00 a0 e1                                      mov r0, ip
007b82f4  81 11 a0 e1                                      lsl r1, r1, #3
007b82f8  82 21 a0 e1                                      lsl r2, r2, #3
007b82fc  2a 6a fe eb                                      bl #0x752bac
007b8300  00 00 84 e5                                      str r0, [r4]
007b8304  10 80 bd e8                                      pop {r4, pc}
