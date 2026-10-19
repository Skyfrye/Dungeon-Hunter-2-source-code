; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00761634, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::gradient_record>
; alias: _ZN7gameswf5arrayINS_15gradient_recordEE7reserveEi
; demangled: gameswf::array<gameswf::gradient_record>::reserve(int)
; decoder-mode: arm
00761634  10 40 2d e9                                      push {r4, lr}
00761638  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0076163c  00 40 a0 e1                                      mov r4, r0
00761640  00 00 53 e3                                      cmp r3, #0
00761644  0f 00 00 1a                                      bne #0x761688
00761648  00 00 51 e3                                      cmp r1, #0
0076164c  08 20 90 e5                                      ldr r2, [r0, #8]
00761650  08 10 80 e5                                      str r1, [r0, #8]
00761654  0c 00 00 1a                                      bne #0x76168c
00761658  00 00 90 e5                                      ldr r0, [r0]
0076165c  00 00 50 e3                                      cmp r0, #0
00761660  01 00 00 0a                                      beq #0x76166c
00761664  02 11 82 e0                                      add r1, r2, r2, lsl #2
00761668  32 c5 ff eb                                      bl #0x752b38
0076166c  00 30 a0 e3                                      mov r3, #0
00761670  00 30 84 e5                                      str r3, [r4]
00761674  10 80 bd e8                                      pop {r4, pc}
00761678  01 01 81 e0                                      add r0, r1, r1, lsl #2
0076167c  0c 10 a0 e1                                      mov r1, ip
00761680  45 c5 ff eb                                      bl #0x752b9c
00761684  00 00 84 e5                                      str r0, [r4]
00761688  10 80 bd e8                                      pop {r4, pc}
0076168c  00 c0 90 e5                                      ldr ip, [r0]
00761690  00 00 5c e3                                      cmp ip, #0
00761694  f7 ff ff 0a                                      beq #0x761678
00761698  0c 00 a0 e1                                      mov r0, ip
0076169c  01 11 81 e0                                      add r1, r1, r1, lsl #2
007616a0  02 21 82 e0                                      add r2, r2, r2, lsl #2
007616a4  40 c5 ff eb                                      bl #0x752bac
007616a8  00 00 84 e5                                      str r0, [r4]
007616ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0076181c, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::array<gameswf::gradient_record>
; alias: _ZN7gameswf5arrayINS_15gradient_recordEE6resizeEi
; demangled: gameswf::array<gameswf::gradient_record>::resize(int)
; decoder-mode: arm
0076181c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00761820  00 50 51 e2                                      subs r5, r1, #0
00761824  00 40 a0 e1                                      mov r4, r0
00761828  04 60 90 e5                                      ldr r6, [r0, #4]
0076182c  02 00 00 0a                                      beq #0x76183c
00761830  08 30 90 e5                                      ldr r3, [r0, #8]
00761834  03 00 55 e1                                      cmp r5, r3
00761838  0b 00 00 ca                                      bgt #0x76186c
0076183c  05 00 56 e1                                      cmp r6, r5
00761840  07 00 00 aa                                      bge #0x761864
00761844  06 61 86 e0                                      add r6, r6, r6, lsl #2
00761848  05 71 85 e0                                      add r7, r5, r5, lsl #2
0076184c  00 00 94 e5                                      ldr r0, [r4]
00761850  06 00 80 e0                                      add r0, r0, r6
00761854  05 60 86 e2                                      add r6, r6, #5
00761858  cc 8a 00 eb                                      bl #0x784390
0076185c  07 00 56 e1                                      cmp r6, r7
00761860  f9 ff ff 1a                                      bne #0x76184c
00761864  04 50 84 e5                                      str r5, [r4, #4]
00761868  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076186c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00761870  6f ff ff eb                                      bl #0x761634
00761874  f0 ff ff ea                                      b #0x76183c
