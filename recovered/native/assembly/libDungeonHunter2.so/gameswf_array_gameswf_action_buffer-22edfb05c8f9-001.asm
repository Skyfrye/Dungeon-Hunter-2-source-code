; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077e7f8, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::action_buffer*>
; alias: _ZN7gameswf5arrayIPNS_13action_bufferEE7reserveEi
; demangled: gameswf::array<gameswf::action_buffer*>::reserve(int)
; decoder-mode: arm
0077e7f8  10 40 2d e9                                      push {r4, lr}
0077e7fc  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0077e800  00 40 a0 e1                                      mov r4, r0
0077e804  00 00 53 e3                                      cmp r3, #0
0077e808  0f 00 00 1a                                      bne #0x77e84c
0077e80c  00 00 51 e3                                      cmp r1, #0
0077e810  08 20 90 e5                                      ldr r2, [r0, #8]
0077e814  08 10 80 e5                                      str r1, [r0, #8]
0077e818  0c 00 00 1a                                      bne #0x77e850
0077e81c  00 00 90 e5                                      ldr r0, [r0]
0077e820  00 00 50 e3                                      cmp r0, #0
0077e824  01 00 00 0a                                      beq #0x77e830
0077e828  02 11 a0 e1                                      lsl r1, r2, #2
0077e82c  c1 50 ff eb                                      bl #0x752b38
0077e830  00 30 a0 e3                                      mov r3, #0
0077e834  00 30 84 e5                                      str r3, [r4]
0077e838  10 80 bd e8                                      pop {r4, pc}
0077e83c  01 01 a0 e1                                      lsl r0, r1, #2
0077e840  0c 10 a0 e1                                      mov r1, ip
0077e844  d4 50 ff eb                                      bl #0x752b9c
0077e848  00 00 84 e5                                      str r0, [r4]
0077e84c  10 80 bd e8                                      pop {r4, pc}
0077e850  00 c0 90 e5                                      ldr ip, [r0]
0077e854  00 00 5c e3                                      cmp ip, #0
0077e858  f7 ff ff 0a                                      beq #0x77e83c
0077e85c  0c 00 a0 e1                                      mov r0, ip
0077e860  01 11 a0 e1                                      lsl r1, r1, #2
0077e864  02 21 a0 e1                                      lsl r2, r2, #2
0077e868  cf 50 ff eb                                      bl #0x752bac
0077e86c  00 00 84 e5                                      str r0, [r4]
0077e870  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00781844, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::array<gameswf::action_buffer*>
; alias: _ZN7gameswf5arrayIPNS_13action_bufferEE6removeEi
; demangled: gameswf::array<gameswf::action_buffer*>::remove(int)
; decoder-mode: arm
00781844  10 40 2d e9                                      push {r4, lr}
00781848  04 20 90 e5                                      ldr r2, [r0, #4]
0078184c  00 40 a0 e1                                      mov r4, r0
00781850  01 30 a0 e1                                      mov r3, r1
00781854  01 00 52 e3                                      cmp r2, #1
00781858  0b 00 00 0a                                      beq #0x78188c
0078185c  00 00 90 e5                                      ldr r0, [r0]
00781860  01 20 42 e2                                      sub r2, r2, #1
00781864  02 20 61 e0                                      rsb r2, r1, r2
00781868  01 10 81 e2                                      add r1, r1, #1
0078186c  01 11 80 e0                                      add r1, r0, r1, lsl #2
00781870  02 21 a0 e1                                      lsl r2, r2, #2
00781874  03 01 80 e0                                      add r0, r0, r3, lsl #2
00781878  ae 31 ee eb                                      bl #0x30df38
0078187c  04 30 94 e5                                      ldr r3, [r4, #4]
00781880  01 30 43 e2                                      sub r3, r3, #1
00781884  04 30 84 e5                                      str r3, [r4, #4]
00781888  10 80 bd e8                                      pop {r4, pc}
0078188c  00 30 a0 e3                                      mov r3, #0
00781890  04 30 80 e5                                      str r3, [r0, #4]
00781894  10 80 bd e8                                      pop {r4, pc}
