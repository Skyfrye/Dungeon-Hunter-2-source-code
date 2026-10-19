; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007794d0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::line_strip
; alias: _ZN7gameswf10line_stripC2Ev
; demangled: gameswf::line_strip::line_strip()
; decoder-mode: arm
007794d0  00 20 a0 e3                                      mov r2, #0
007794d4  00 10 e0 e3                                      mvn r1, #0
007794d8  10 20 c0 e5                                      strb r2, [r0, #0x10]
007794dc  06 00 80 e8                                      stm r0, {r1, r2}
007794e0  08 20 80 e5                                      str r2, [r0, #8]
007794e4  0c 20 80 e5                                      str r2, [r0, #0xc]
007794e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007794ec, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::line_strip
; alias: _ZN7gameswf10line_stripC1Ev
; demangled: gameswf::line_strip::line_strip()
; decoder-mode: arm
007794ec  00 20 a0 e3                                      mov r2, #0
007794f0  00 10 e0 e3                                      mvn r1, #0
007794f4  10 20 c0 e5                                      strb r2, [r0, #0x10]
007794f8  06 00 80 e8                                      stm r0, {r1, r2}
007794fc  08 20 80 e5                                      str r2, [r0, #8]
00779500  0c 20 80 e5                                      str r2, [r0, #0xc]
00779504  1e ff 2f e1                                      bx lr

; FUNCTION 0x00779508, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::line_strip
; alias: _ZNK7gameswf10line_strip7displayERKNS_15base_line_styleEf
; demangled: gameswf::line_strip::display(gameswf::base_line_style const&, float) const
; decoder-mode: arm
00779508  70 40 2d e9                                      push {r4, r5, r6, lr}
0077950c  01 30 a0 e1                                      mov r3, r1
00779510  00 40 a0 e1                                      mov r4, r0
00779514  02 10 a0 e1                                      mov r1, r2
00779518  03 00 a0 e1                                      mov r0, r3
0077951c  40 50 9f e5                                      ldr r5, [pc, #0x40]
00779520  00 30 93 e5                                      ldr r3, [r3]
00779524  0f e0 a0 e1                                      mov lr, pc
00779528  08 f0 93 e5                                      ldr pc, [r3, #8]
0077952c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00779530  05 50 8f e0                                      add r5, pc, r5
00779534  08 20 94 e5                                      ldr r2, [r4, #8]
00779538  03 30 95 e7                                      ldr r3, [r5, r3]
0077953c  04 10 94 e5                                      ldr r1, [r4, #4]
00779540  00 30 93 e5                                      ldr r3, [r3]
00779544  00 00 53 e3                                      cmp r3, #0
00779548  04 00 00 0a                                      beq #0x779560
0077954c  03 00 a0 e1                                      mov r0, r3
00779550  c2 20 a0 e1                                      asr r2, r2, #1
00779554  00 30 93 e5                                      ldr r3, [r3]
00779558  0f e0 a0 e1                                      mov lr, pc
0077955c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00779560  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00779564  60 b5 21 00 b4 39 00 00                          .byte 0x60, 0xb5, 0x21, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x0077b654, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::line_strip
; alias: _ZN7gameswf10line_strip18output_cached_dataEPNS_7tu_fileE
; demangled: gameswf::line_strip::output_cached_data(gameswf::tu_file*)
; decoder-mode: arm
0077b654  30 40 2d e9                                      push {r4, r5, lr}
0077b658  00 40 a0 e1                                      mov r4, r0
0077b65c  04 30 94 e4                                      ldr r3, [r4], #4
0077b660  0c d0 4d e2                                      sub sp, sp, #0xc
0077b664  08 00 8d e2                                      add r0, sp, #8
0077b668  01 50 a0 e1                                      mov r5, r1
0077b66c  04 30 20 e5                                      str r3, [r0, #-4]!
0077b670  04 10 a0 e3                                      mov r1, #4
0077b674  00 20 95 e5                                      ldr r2, [r5]
0077b678  0f e0 a0 e1                                      mov lr, pc
0077b67c  0c f0 95 e5                                      ldr pc, [r5, #0xc]
0077b680  05 00 a0 e1                                      mov r0, r5
0077b684  04 10 a0 e1                                      mov r1, r4
0077b688  cf ff ff eb                                      bl #0x77b5cc
0077b68c  0c d0 8d e2                                      add sp, sp, #0xc
0077b690  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0077bba4, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::line_strip
; alias: _ZN7gameswf10line_strip17input_cached_dataEPNS_7tu_fileE
; demangled: gameswf::line_strip::input_cached_data(gameswf::tu_file*)
; decoder-mode: arm
0077bba4  30 40 2d e9                                      push {r4, r5, lr}
0077bba8  01 40 a0 e1                                      mov r4, r1
0077bbac  0c d0 4d e2                                      sub sp, sp, #0xc
0077bbb0  04 10 a0 e3                                      mov r1, #4
0077bbb4  00 50 a0 e1                                      mov r5, r0
0077bbb8  00 20 94 e5                                      ldr r2, [r4]
0077bbbc  01 00 8d e0                                      add r0, sp, r1
0077bbc0  0f e0 a0 e1                                      mov lr, pc
0077bbc4  08 f0 94 e5                                      ldr pc, [r4, #8]
0077bbc8  04 30 9d e5                                      ldr r3, [sp, #4]
0077bbcc  05 10 a0 e1                                      mov r1, r5
0077bbd0  04 00 a0 e1                                      mov r0, r4
0077bbd4  04 30 81 e4                                      str r3, [r1], #4
0077bbd8  c6 ff ff eb                                      bl #0x77baf8
0077bbdc  0c d0 8d e2                                      add sp, sp, #0xc
0077bbe0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0077bc0c, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::line_strip
; alias: _ZN7gameswf10line_stripC1EiPKNS_5pointEi
; demangled: gameswf::line_strip::line_strip(int, gameswf::point const*, int)
; decoder-mode: arm
0077bc0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0077bc10  83 50 a0 e1                                      lsl r5, r3, #1
0077bc14  00 60 a0 e3                                      mov r6, #0
0077bc18  00 00 55 e3                                      cmp r5, #0
0077bc1c  0c d0 4d e2                                      sub sp, sp, #0xc
0077bc20  00 40 a0 e1                                      mov r4, r0
0077bc24  42 00 80 e8                                      stm r0, {r1, r6}
0077bc28  08 60 80 e5                                      str r6, [r0, #8]
0077bc2c  0c 60 80 e5                                      str r6, [r0, #0xc]
0077bc30  10 60 c0 e5                                      strb r6, [r0, #0x10]
0077bc34  13 00 00 aa                                      bge #0x77bc88
0077bc38  00 00 53 e3                                      cmp r3, #0
0077bc3c  08 50 84 e5                                      str r5, [r4, #8]
0077bc40  0d 00 00 da                                      ble #0x77bc7c
0077bc44  00 10 a0 e3                                      mov r1, #0
0077bc48  01 c0 a0 e1                                      mov ip, r1
0077bc4c  02 00 a0 e1                                      mov r0, r2
0077bc50  01 60 b0 e7                                      ldr r6, [r0, r1]!
0077bc54  04 50 94 e5                                      ldr r5, [r4, #4]
0077bc58  01 c0 8c e2                                      add ip, ip, #1
0077bc5c  03 00 5c e1                                      cmp ip, r3
0077bc60  01 60 85 e7                                      str r6, [r5, r1]
0077bc64  04 60 94 e5                                      ldr r6, [r4, #4]
0077bc68  04 50 90 e5                                      ldr r5, [r0, #4]
0077bc6c  01 00 86 e0                                      add r0, r6, r1
0077bc70  04 50 80 e5                                      str r5, [r0, #4]
0077bc74  08 10 81 e2                                      add r1, r1, #8
0077bc78  f3 ff ff 1a                                      bne #0x77bc4c
0077bc7c  04 00 a0 e1                                      mov r0, r4
0077bc80  0c d0 8d e2                                      add sp, sp, #0xc
0077bc84  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0077bc88  ea ff ff 0a                                      beq #0x77bc38
0077bc8c  e9 ff ff da                                      ble #0x77bc38
0077bc90  04 70 80 e2                                      add r7, r0, #4
0077bc94  07 00 a0 e1                                      mov r0, r7
0077bc98  c5 10 85 e0                                      add r1, r5, r5, asr #1
0077bc9c  04 20 8d e5                                      str r2, [sp, #4]
0077bca0  00 30 8d e5                                      str r3, [sp]
0077bca4  51 f8 ff eb                                      bl #0x779df0
0077bca8  00 30 9d e5                                      ldr r3, [sp]
0077bcac  04 20 9d e5                                      ldr r2, [sp, #4]
0077bcb0  00 00 a0 e3                                      mov r0, #0
0077bcb4  00 10 97 e5                                      ldr r1, [r7]
0077bcb8  06 01 81 e7                                      str r0, [r1, r6, lsl #2]
0077bcbc  01 60 86 e2                                      add r6, r6, #1
0077bcc0  05 00 56 e1                                      cmp r6, r5
0077bcc4  fa ff ff 1a                                      bne #0x77bcb4
0077bcc8  da ff ff ea                                      b #0x77bc38

; FUNCTION 0x0077bd40, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::line_strip
; alias: _ZN7gameswf10line_stripC2EiPKNS_5pointEi
; demangled: gameswf::line_strip::line_strip(int, gameswf::point const*, int)
; decoder-mode: arm
0077bd40  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0077bd44  83 50 a0 e1                                      lsl r5, r3, #1
0077bd48  00 60 a0 e3                                      mov r6, #0
0077bd4c  00 00 55 e3                                      cmp r5, #0
0077bd50  0c d0 4d e2                                      sub sp, sp, #0xc
0077bd54  00 40 a0 e1                                      mov r4, r0
0077bd58  42 00 80 e8                                      stm r0, {r1, r6}
0077bd5c  08 60 80 e5                                      str r6, [r0, #8]
0077bd60  0c 60 80 e5                                      str r6, [r0, #0xc]
0077bd64  10 60 c0 e5                                      strb r6, [r0, #0x10]
0077bd68  13 00 00 aa                                      bge #0x77bdbc
0077bd6c  00 00 53 e3                                      cmp r3, #0
0077bd70  08 50 84 e5                                      str r5, [r4, #8]
0077bd74  0d 00 00 da                                      ble #0x77bdb0
0077bd78  00 10 a0 e3                                      mov r1, #0
0077bd7c  01 c0 a0 e1                                      mov ip, r1
0077bd80  02 00 a0 e1                                      mov r0, r2
0077bd84  01 60 b0 e7                                      ldr r6, [r0, r1]!
0077bd88  04 50 94 e5                                      ldr r5, [r4, #4]
0077bd8c  01 c0 8c e2                                      add ip, ip, #1
0077bd90  03 00 5c e1                                      cmp ip, r3
0077bd94  01 60 85 e7                                      str r6, [r5, r1]
0077bd98  04 60 94 e5                                      ldr r6, [r4, #4]
0077bd9c  04 50 90 e5                                      ldr r5, [r0, #4]
0077bda0  01 00 86 e0                                      add r0, r6, r1
0077bda4  04 50 80 e5                                      str r5, [r0, #4]
0077bda8  08 10 81 e2                                      add r1, r1, #8
0077bdac  f3 ff ff 1a                                      bne #0x77bd80
0077bdb0  04 00 a0 e1                                      mov r0, r4
0077bdb4  0c d0 8d e2                                      add sp, sp, #0xc
0077bdb8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0077bdbc  ea ff ff 0a                                      beq #0x77bd6c
0077bdc0  e9 ff ff da                                      ble #0x77bd6c
0077bdc4  04 70 80 e2                                      add r7, r0, #4
0077bdc8  07 00 a0 e1                                      mov r0, r7
0077bdcc  c5 10 85 e0                                      add r1, r5, r5, asr #1
0077bdd0  04 20 8d e5                                      str r2, [sp, #4]
0077bdd4  00 30 8d e5                                      str r3, [sp]
0077bdd8  04 f8 ff eb                                      bl #0x779df0
0077bddc  00 30 9d e5                                      ldr r3, [sp]
0077bde0  04 20 9d e5                                      ldr r2, [sp, #4]
0077bde4  00 00 a0 e3                                      mov r0, #0
0077bde8  00 10 97 e5                                      ldr r1, [r7]
0077bdec  06 01 81 e7                                      str r0, [r1, r6, lsl #2]
0077bdf0  01 60 86 e2                                      add r6, r6, #1
0077bdf4  05 00 56 e1                                      cmp r6, r5
0077bdf8  fa ff ff 1a                                      bne #0x77bde8
0077bdfc  da ff ff ea                                      b #0x77bd6c
