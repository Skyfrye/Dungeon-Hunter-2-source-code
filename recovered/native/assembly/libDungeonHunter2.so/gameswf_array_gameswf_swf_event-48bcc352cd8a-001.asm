; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075a298, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::swf_event*>
; alias: _ZN7gameswf5arrayIPNS_9swf_eventEE7reserveEi
; demangled: gameswf::array<gameswf::swf_event*>::reserve(int)
; decoder-mode: arm
0075a298  10 40 2d e9                                      push {r4, lr}
0075a29c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0075a2a0  00 40 a0 e1                                      mov r4, r0
0075a2a4  00 00 53 e3                                      cmp r3, #0
0075a2a8  0f 00 00 1a                                      bne #0x75a2ec
0075a2ac  00 00 51 e3                                      cmp r1, #0
0075a2b0  08 20 90 e5                                      ldr r2, [r0, #8]
0075a2b4  08 10 80 e5                                      str r1, [r0, #8]
0075a2b8  0c 00 00 1a                                      bne #0x75a2f0
0075a2bc  00 00 90 e5                                      ldr r0, [r0]
0075a2c0  00 00 50 e3                                      cmp r0, #0
0075a2c4  01 00 00 0a                                      beq #0x75a2d0
0075a2c8  02 11 a0 e1                                      lsl r1, r2, #2
0075a2cc  19 e2 ff eb                                      bl #0x752b38
0075a2d0  00 30 a0 e3                                      mov r3, #0
0075a2d4  00 30 84 e5                                      str r3, [r4]
0075a2d8  10 80 bd e8                                      pop {r4, pc}
0075a2dc  01 01 a0 e1                                      lsl r0, r1, #2
0075a2e0  0c 10 a0 e1                                      mov r1, ip
0075a2e4  2c e2 ff eb                                      bl #0x752b9c
0075a2e8  00 00 84 e5                                      str r0, [r4]
0075a2ec  10 80 bd e8                                      pop {r4, pc}
0075a2f0  00 c0 90 e5                                      ldr ip, [r0]
0075a2f4  00 00 5c e3                                      cmp ip, #0
0075a2f8  f7 ff ff 0a                                      beq #0x75a2dc
0075a2fc  0c 00 a0 e1                                      mov r0, ip
0075a300  01 11 a0 e1                                      lsl r1, r1, #2
0075a304  02 21 a0 e1                                      lsl r2, r2, #2
0075a308  27 e2 ff eb                                      bl #0x752bac
0075a30c  00 00 84 e5                                      str r0, [r4]
0075a310  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075d89c, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::array<gameswf::swf_event*>
; alias: _ZN7gameswf5arrayIPNS_9swf_eventEE14release_bufferEv
; demangled: gameswf::array<gameswf::swf_event*>::release_buffer()
; decoder-mode: arm
0075d89c  04 30 90 e5                                      ldr r3, [r0, #4]
0075d8a0  00 00 53 e3                                      cmp r3, #0
0075d8a4  02 00 00 da                                      ble #0x75d8b4
0075d8a8  00 10 a0 e3                                      mov r1, #0
0075d8ac  04 10 80 e5                                      str r1, [r0, #4]
0075d8b0  78 f2 ff ea                                      b #0x75a298
0075d8b4  fb ff ff aa                                      bge #0x75d8a8
0075d8b8  03 21 a0 e1                                      lsl r2, r3, #2
0075d8bc  00 c0 a0 e3                                      mov ip, #0
0075d8c0  00 10 90 e5                                      ldr r1, [r0]
0075d8c4  01 30 93 e2                                      adds r3, r3, #1
0075d8c8  02 c0 81 e7                                      str ip, [r1, r2]
0075d8cc  04 20 82 e2                                      add r2, r2, #4
0075d8d0  fa ff ff 1a                                      bne #0x75d8c0
0075d8d4  f3 ff ff ea                                      b #0x75d8a8
