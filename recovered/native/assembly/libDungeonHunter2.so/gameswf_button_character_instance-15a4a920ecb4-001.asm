; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c6b4c, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance18has_keypress_eventEv
; demangled: gameswf::button_character_instance::has_keypress_event()
; decoder-mode: arm
007c6b4c  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
007c6b50  38 00 93 e5                                      ldr r0, [r3, #0x38]
007c6b54  00 00 50 e3                                      cmp r0, #0
007c6b58  0c 00 00 da                                      ble #0x7c6b90
007c6b5c  34 c0 93 e5                                      ldr ip, [r3, #0x34]
007c6b60  00 30 9c e5                                      ldr r3, [ip]
007c6b64  fe 3c 13 e2                                      ands r3, r3, #0xfe00
007c6b68  14 20 a0 03                                      moveq r2, #0x14
007c6b6c  04 00 00 0a                                      beq #0x7c6b84
007c6b70  08 00 00 ea                                      b #0x7c6b98
007c6b74  02 10 9c e7                                      ldr r1, [ip, r2]
007c6b78  14 20 82 e2                                      add r2, r2, #0x14
007c6b7c  fe 0c 11 e3                                      tst r1, #0xfe00
007c6b80  04 00 00 1a                                      bne #0x7c6b98
007c6b84  01 30 83 e2                                      add r3, r3, #1
007c6b88  00 00 53 e1                                      cmp r3, r0
007c6b8c  f8 ff ff 1a                                      bne #0x7c6b74
007c6b90  00 00 a0 e3                                      mov r0, #0
007c6b94  1e ff 2f e1                                      bx lr
007c6b98  01 00 a0 e3                                      mov r0, #1
007c6b9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007c6ba0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance8hit_testEff
; demangled: gameswf::button_character_instance::hit_test(float, float)
; decoder-mode: arm
007c6ba0  10 40 2d e9                                      push {r4, lr}
007c6ba4  00 30 90 e5                                      ldr r3, [r0]
007c6ba8  0f e0 a0 e1                                      mov lr, pc
007c6bac  68 f0 93 e5                                      ldr pc, [r3, #0x68]
007c6bb0  00 00 50 e2                                      subs r0, r0, #0
007c6bb4  01 00 a0 13                                      movne r0, #1
007c6bb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c6bbc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance22can_handle_mouse_eventEv
; demangled: gameswf::button_character_instance::can_handle_mouse_event()
; decoder-mode: arm
007c6bbc  01 00 a0 e3                                      mov r0, #1
007c6bc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007c6bc4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance17get_character_defEv
; demangled: gameswf::button_character_instance::get_character_def()
; decoder-mode: arm
007c6bc4  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
007c6bc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007c6bcc, declared_size=288, range_size=288, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance9get_boundEPNS_4rectE
; demangled: gameswf::button_character_instance::get_bound(gameswf::rect*)
; decoder-mode: arm
007c6bcc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c6bd0  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
007c6bd4  28 d0 4d e2                                      sub sp, sp, #0x28
007c6bd8  00 40 a0 e1                                      mov r4, r0
007c6bdc  28 50 93 e5                                      ldr r5, [r3, #0x28]
007c6be0  01 70 a0 e1                                      mov r7, r1
007c6be4  00 00 55 e3                                      cmp r5, #0
007c6be8  39 00 00 0a                                      beq #0x7c6cd4
007c6bec  02 21 e0 e3                                      mvn r2, #0x80000000
007c6bf0  02 25 42 e2                                      sub r2, r2, #0x800000
007c6bf4  02 35 e0 e3                                      mvn r3, #0x800000
007c6bf8  08 20 81 e5                                      str r2, [r1, #8]
007c6bfc  0c 30 81 e5                                      str r3, [r1, #0xc]
007c6c00  00 20 81 e5                                      str r2, [r1]
007c6c04  04 30 81 e5                                      str r3, [r1, #4]
007c6c08  4c c0 90 e5                                      ldr ip, [r0, #0x4c]
007c6c0c  0d 80 a0 e1                                      mov r8, sp
007c6c10  0d 60 a0 e1                                      mov r6, sp
007c6c14  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007c6c18  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
007c6c1c  03 00 9c e8                                      ldm ip, {r0, r1}
007c6c20  03 00 88 e8                                      stm r8, {r0, r1}
007c6c24  2a 00 00 da                                      ble #0x7c6cd4
007c6c28  00 a0 a0 e3                                      mov sl, #0
007c6c2c  0a 80 a0 e1                                      mov r8, sl
007c6c30  18 90 8d e2                                      add sb, sp, #0x18
007c6c34  11 00 00 ea                                      b #0x7c6c80
007c6c38  05 20 d1 e5                                      ldrb r2, [r1, #5]
007c6c3c  00 00 52 e3                                      cmp r2, #0
007c6c40  0a 00 00 0a                                      beq #0x7c6c70
007c6c44  03 00 a0 e1                                      mov r0, r3
007c6c48  09 10 a0 e1                                      mov r1, sb
007c6c4c  00 30 93 e5                                      ldr r3, [r3]
007c6c50  0f e0 a0 e1                                      mov lr, pc
007c6c54  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
007c6c58  0d 00 a0 e1                                      mov r0, sp
007c6c5c  09 10 a0 e1                                      mov r1, sb
007c6c60  6b 37 ff eb                                      bl #0x794a14
007c6c64  07 00 a0 e1                                      mov r0, r7
007c6c68  09 10 a0 e1                                      mov r1, sb
007c6c6c  18 dc fe eb                                      bl #0x77dcd4
007c6c70  01 80 88 e2                                      add r8, r8, #1
007c6c74  05 00 58 e1                                      cmp r8, r5
007c6c78  64 a0 8a e2                                      add sl, sl, #0x64
007c6c7c  14 00 00 0a                                      beq #0x7c6cd4
007c6c80  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
007c6c84  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
007c6c88  08 31 93 e7                                      ldr r3, [r3, r8, lsl #2]
007c6c8c  24 10 92 e5                                      ldr r1, [r2, #0x24]
007c6c90  00 00 53 e3                                      cmp r3, #0
007c6c94  f5 ff ff 0a                                      beq #0x7c6c70
007c6c98  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
007c6c9c  0a 10 81 e0                                      add r1, r1, sl
007c6ca0  00 00 52 e3                                      cmp r2, #0
007c6ca4  e3 ff ff 0a                                      beq #0x7c6c38
007c6ca8  01 00 52 e3                                      cmp r2, #1
007c6cac  0a 00 00 0a                                      beq #0x7c6cdc
007c6cb0  02 00 52 e3                                      cmp r2, #2
007c6cb4  ed ff ff 1a                                      bne #0x7c6c70
007c6cb8  04 20 d1 e5                                      ldrb r2, [r1, #4]
007c6cbc  00 00 52 e3                                      cmp r2, #0
007c6cc0  df ff ff 1a                                      bne #0x7c6c44
007c6cc4  01 80 88 e2                                      add r8, r8, #1
007c6cc8  05 00 58 e1                                      cmp r8, r5
007c6ccc  64 a0 8a e2                                      add sl, sl, #0x64
007c6cd0  ea ff ff 1a                                      bne #0x7c6c80
007c6cd4  28 d0 8d e2                                      add sp, sp, #0x28
007c6cd8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007c6cdc  03 20 d1 e5                                      ldrb r2, [r1, #3]
007c6ce0  00 00 52 e3                                      cmp r2, #0
007c6ce4  d6 ff ff 1a                                      bne #0x7c6c44
007c6ce8  e0 ff ff ea                                      b #0x7c6c70

; FUNCTION 0x007c6cec, declared_size=228, range_size=228, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance7displayEv
; demangled: gameswf::button_character_instance::display()
; decoder-mode: arm
007c6cec  70 40 2d e9                                      push {r4, r5, r6, lr}
007c6cf0  a0 20 90 e5                                      ldr r2, [r0, #0xa0]
007c6cf4  00 60 a0 e1                                      mov r6, r0
007c6cf8  28 30 92 e5                                      ldr r3, [r2, #0x28]
007c6cfc  00 00 53 e3                                      cmp r3, #0
007c6d00  24 00 00 da                                      ble #0x7c6d98
007c6d04  00 50 a0 e3                                      mov r5, #0
007c6d08  05 40 a0 e1                                      mov r4, r5
007c6d0c  0c 00 00 ea                                      b #0x7c6d44
007c6d10  05 10 d0 e5                                      ldrb r1, [r0, #5]
007c6d14  00 00 51 e3                                      cmp r1, #0
007c6d18  04 00 00 0a                                      beq #0x7c6d30
007c6d1c  03 00 a0 e1                                      mov r0, r3
007c6d20  00 30 93 e5                                      ldr r3, [r3]
007c6d24  0f e0 a0 e1                                      mov lr, pc
007c6d28  20 f1 93 e5                                      ldr pc, [r3, #0x120]
007c6d2c  a0 20 96 e5                                      ldr r2, [r6, #0xa0]
007c6d30  28 30 92 e5                                      ldr r3, [r2, #0x28]
007c6d34  01 40 84 e2                                      add r4, r4, #1
007c6d38  64 50 85 e2                                      add r5, r5, #0x64
007c6d3c  03 00 54 e1                                      cmp r4, r3
007c6d40  14 00 00 aa                                      bge #0x7c6d98
007c6d44  a4 30 96 e5                                      ldr r3, [r6, #0xa4]
007c6d48  24 00 92 e5                                      ldr r0, [r2, #0x24]
007c6d4c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007c6d50  00 00 53 e3                                      cmp r3, #0
007c6d54  f5 ff ff 0a                                      beq #0x7c6d30
007c6d58  bc 10 96 e5                                      ldr r1, [r6, #0xbc]
007c6d5c  05 00 80 e0                                      add r0, r0, r5
007c6d60  00 00 51 e3                                      cmp r1, #0
007c6d64  e9 ff ff 0a                                      beq #0x7c6d10
007c6d68  01 00 51 e3                                      cmp r1, #1
007c6d6c  12 00 00 0a                                      beq #0x7c6dbc
007c6d70  02 00 51 e3                                      cmp r1, #2
007c6d74  ed ff ff 1a                                      bne #0x7c6d30
007c6d78  04 10 d0 e5                                      ldrb r1, [r0, #4]
007c6d7c  00 00 51 e3                                      cmp r1, #0
007c6d80  e5 ff ff 1a                                      bne #0x7c6d1c
007c6d84  28 30 92 e5                                      ldr r3, [r2, #0x28]
007c6d88  01 40 84 e2                                      add r4, r4, #1
007c6d8c  64 50 85 e2                                      add r5, r5, #0x64
007c6d90  03 00 54 e1                                      cmp r4, r3
007c6d94  ea ff ff ba                                      blt #0x7c6d44
007c6d98  54 30 96 e5                                      ldr r3, [r6, #0x54]
007c6d9c  00 00 53 e3                                      cmp r3, #0
007c6da0  09 00 00 0a                                      beq #0x7c6dcc
007c6da4  60 30 93 e5                                      ldr r3, [r3, #0x60]
007c6da8  00 00 53 e3                                      cmp r3, #0
007c6dac  06 00 00 0a                                      beq #0x7c6dcc
007c6db0  06 00 a0 e1                                      mov r0, r6
007c6db4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007c6db8  77 34 fe ea                                      b #0x753f9c
007c6dbc  03 10 d0 e5                                      ldrb r1, [r0, #3]
007c6dc0  00 00 51 e3                                      cmp r1, #0
007c6dc4  d4 ff ff 1a                                      bne #0x7c6d1c
007c6dc8  d8 ff ff ea                                      b #0x7c6d30
007c6dcc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007c6dd0, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance18execute_frame_tagsEib
; demangled: gameswf::button_character_instance::execute_frame_tags(int, bool)
; decoder-mode: arm
007c6dd0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c6dd4  00 50 50 e2                                      subs r5, r0, #0
007c6dd8  01 60 a0 e1                                      mov r6, r1
007c6ddc  02 70 a0 e1                                      mov r7, r2
007c6de0  00 00 00 0a                                      beq #0x7c6de8
007c6de4  9e 4b fe eb                                      bl #0x759c64
007c6de8  a0 00 95 e5                                      ldr r0, [r5, #0xa0]
007c6dec  28 30 90 e5                                      ldr r3, [r0, #0x28]
007c6df0  00 00 53 e3                                      cmp r3, #0
007c6df4  0f 00 00 da                                      ble #0x7c6e38
007c6df8  00 40 a0 e3                                      mov r4, #0
007c6dfc  a4 30 95 e5                                      ldr r3, [r5, #0xa4]
007c6e00  06 10 a0 e1                                      mov r1, r6
007c6e04  07 20 a0 e1                                      mov r2, r7
007c6e08  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007c6e0c  01 40 84 e2                                      add r4, r4, #1
007c6e10  00 00 53 e3                                      cmp r3, #0
007c6e14  04 00 00 0a                                      beq #0x7c6e2c
007c6e18  03 00 a0 e1                                      mov r0, r3
007c6e1c  00 30 93 e5                                      ldr r3, [r3]
007c6e20  0f e0 a0 e1                                      mov lr, pc
007c6e24  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
007c6e28  a0 00 95 e5                                      ldr r0, [r5, #0xa0]
007c6e2c  28 30 90 e5                                      ldr r3, [r0, #0x28]
007c6e30  03 00 54 e1                                      cmp r4, r3
007c6e34  f0 ff ff ba                                      blt #0x7c6dfc
007c6e38  00 00 55 e3                                      cmp r5, #0
007c6e3c  02 00 00 0a                                      beq #0x7c6e4c
007c6e40  05 00 a0 e1                                      mov r0, r5
007c6e44  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007c6e48  fc 4c fe ea                                      b #0x75a240
007c6e4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007c6e50, declared_size=240, range_size=240, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance24get_topmost_mouse_entityEff
; demangled: gameswf::button_character_instance::get_topmost_mouse_entity(float, float)
; decoder-mode: arm
007c6e50  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c6e54  00 70 a0 e1                                      mov r7, r0
007c6e58  9b 00 d0 e5                                      ldrb r0, [r0, #0x9b]
007c6e5c  18 d0 4d e2                                      sub sp, sp, #0x18
007c6e60  01 c0 a0 e1                                      mov ip, r1
007c6e64  00 00 50 e3                                      cmp r0, #0
007c6e68  02 30 a0 e1                                      mov r3, r2
007c6e6c  02 00 00 1a                                      bne #0x7c6e7c
007c6e70  00 00 a0 e3                                      mov r0, #0
007c6e74  18 d0 8d e2                                      add sp, sp, #0x18
007c6e78  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007c6e7c  10 a0 8d e2                                      add sl, sp, #0x10
007c6e80  4c 00 97 e5                                      ldr r0, [r7, #0x4c]
007c6e84  00 80 a0 e3                                      mov r8, #0
007c6e88  08 20 8d e2                                      add r2, sp, #8
007c6e8c  0a 10 a0 e1                                      mov r1, sl
007c6e90  0c 30 8d e5                                      str r3, [sp, #0xc]
007c6e94  08 c0 8d e5                                      str ip, [sp, #8]
007c6e98  10 80 8d e5                                      str r8, [sp, #0x10]
007c6e9c  14 80 8d e5                                      str r8, [sp, #0x14]
007c6ea0  b5 33 fe eb                                      bl #0x753d7c
007c6ea4  a0 30 97 e5                                      ldr r3, [r7, #0xa0]
007c6ea8  28 20 93 e5                                      ldr r2, [r3, #0x28]
007c6eac  00 00 52 e3                                      cmp r2, #0
007c6eb0  ee ff ff da                                      ble #0x7c6e70
007c6eb4  00 50 a0 e3                                      mov r5, #0
007c6eb8  05 60 a0 e1                                      mov r6, r5
007c6ebc  0d 90 a0 e1                                      mov sb, sp
007c6ec0  24 40 93 e5                                      ldr r4, [r3, #0x24]
007c6ec4  0d 10 a0 e1                                      mov r1, sp
007c6ec8  0a 20 a0 e1                                      mov r2, sl
007c6ecc  05 40 84 e0                                      add r4, r4, r5
007c6ed0  08 c0 94 e5                                      ldr ip, [r4, #8]
007c6ed4  14 00 84 e2                                      add r0, r4, #0x14
007c6ed8  00 00 5c e3                                      cmp ip, #0
007c6edc  0f 00 00 ba                                      blt #0x7c6f20
007c6ee0  02 c0 d4 e5                                      ldrb ip, [r4, #2]
007c6ee4  00 00 5c e3                                      cmp ip, #0
007c6ee8  0c 00 00 0a                                      beq #0x7c6f20
007c6eec  00 80 8d e5                                      str r8, [sp]
007c6ef0  04 80 8d e5                                      str r8, [sp, #4]
007c6ef4  a0 33 fe eb                                      bl #0x753d7c
007c6ef8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007c6efc  00 10 9d e5                                      ldr r1, [sp]
007c6f00  04 20 9d e5                                      ldr r2, [sp, #4]
007c6f04  03 00 a0 e1                                      mov r0, r3
007c6f08  00 30 93 e5                                      ldr r3, [r3]
007c6f0c  0f e0 a0 e1                                      mov lr, pc
007c6f10  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007c6f14  00 00 50 e3                                      cmp r0, #0
007c6f18  06 00 00 1a                                      bne #0x7c6f38
007c6f1c  a0 30 97 e5                                      ldr r3, [r7, #0xa0]
007c6f20  28 20 93 e5                                      ldr r2, [r3, #0x28]
007c6f24  01 60 86 e2                                      add r6, r6, #1
007c6f28  64 50 85 e2                                      add r5, r5, #0x64
007c6f2c  02 00 56 e1                                      cmp r6, r2
007c6f30  e2 ff ff ba                                      blt #0x7c6ec0
007c6f34  cd ff ff ea                                      b #0x7c6e70
007c6f38  07 00 a0 e1                                      mov r0, r7
007c6f3c  cc ff ff ea                                      b #0x7c6e74

; FUNCTION 0x007c6f40, declared_size=332, range_size=332, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance7advanceEf
; demangled: gameswf::button_character_instance::advance(float)
; decoder-mode: arm
007c6f40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c6f44  00 50 a0 e1                                      mov r5, r0
007c6f48  34 d0 4d e2                                      sub sp, sp, #0x34
007c6f4c  01 b0 a0 e1                                      mov fp, r1
007c6f50  14 5d fe eb                                      bl #0x75e3a8
007c6f54  05 00 a0 e1                                      mov r0, r5
007c6f58  05 34 fe eb                                      bl #0x753f74
007c6f5c  18 a0 8d e2                                      add sl, sp, #0x18
007c6f60  00 c0 a0 e1                                      mov ip, r0
007c6f64  0a 40 a0 e1                                      mov r4, sl
007c6f68  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007c6f6c  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
007c6f70  03 00 9c e8                                      ldm ip, {r0, r1}
007c6f74  a0 90 95 e5                                      ldr sb, [r5, #0xa0]
007c6f78  03 00 84 e8                                      stm r4, {r0, r1}
007c6f7c  28 30 99 e5                                      ldr r3, [sb, #0x28]
007c6f80  00 00 53 e3                                      cmp r3, #0
007c6f84  3a 00 00 da                                      ble #0x7c7074
007c6f88  00 60 a0 e3                                      mov r6, #0
007c6f8c  06 40 a0 e1                                      mov r4, r6
007c6f90  0d 80 a0 e1                                      mov r8, sp
007c6f94  0f 00 00 ea                                      b #0x7c6fd8
007c6f98  05 30 d9 e5                                      ldrb r3, [sb, #5]
007c6f9c  00 00 53 e3                                      cmp r3, #0
007c6fa0  27 00 00 0a                                      beq #0x7c7044
007c6fa4  a4 30 95 e5                                      ldr r3, [r5, #0xa4]
007c6fa8  0b 10 a0 e1                                      mov r1, fp
007c6fac  07 30 93 e7                                      ldr r3, [r3, r7]
007c6fb0  03 00 a0 e1                                      mov r0, r3
007c6fb4  00 30 93 e5                                      ldr r3, [r3]
007c6fb8  0f e0 a0 e1                                      mov lr, pc
007c6fbc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
007c6fc0  a0 90 95 e5                                      ldr sb, [r5, #0xa0]
007c6fc4  28 30 99 e5                                      ldr r3, [sb, #0x28]
007c6fc8  01 40 84 e2                                      add r4, r4, #1
007c6fcc  64 60 86 e2                                      add r6, r6, #0x64
007c6fd0  03 00 54 e1                                      cmp r4, r3
007c6fd4  26 00 00 aa                                      bge #0x7c7074
007c6fd8  a4 30 95 e5                                      ldr r3, [r5, #0xa4]
007c6fdc  24 c0 99 e5                                      ldr ip, [sb, #0x24]
007c6fe0  04 71 a0 e1                                      lsl r7, r4, #2
007c6fe4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007c6fe8  00 00 53 e3                                      cmp r3, #0
007c6fec  f4 ff ff 0a                                      beq #0x7c6fc4
007c6ff0  0a e0 a0 e1                                      mov lr, sl
007c6ff4  08 90 a0 e1                                      mov sb, r8
007c6ff8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007c6ffc  0f 00 a9 e8                                      stm sb!, {r0, r1, r2, r3}
007c7000  03 00 9e e8                                      ldm lr, {r0, r1}
007c7004  09 30 a0 e1                                      mov r3, sb
007c7008  06 90 8c e0                                      add sb, ip, r6
007c700c  03 00 83 e8                                      stm r3, {r0, r1}
007c7010  14 10 89 e2                                      add r1, sb, #0x14
007c7014  0d 00 a0 e1                                      mov r0, sp
007c7018  66 3d f1 eb                                      bl #0x4165b8
007c701c  bc 30 95 e5                                      ldr r3, [r5, #0xbc]
007c7020  00 00 53 e3                                      cmp r3, #0
007c7024  db ff ff 0a                                      beq #0x7c6f98
007c7028  01 00 53 e3                                      cmp r3, #1
007c702c  12 00 00 0a                                      beq #0x7c707c
007c7030  02 00 53 e3                                      cmp r3, #2
007c7034  02 00 00 1a                                      bne #0x7c7044
007c7038  04 30 d9 e5                                      ldrb r3, [sb, #4]
007c703c  00 00 53 e3                                      cmp r3, #0
007c7040  d7 ff ff 1a                                      bne #0x7c6fa4
007c7044  a4 30 95 e5                                      ldr r3, [r5, #0xa4]
007c7048  01 40 84 e2                                      add r4, r4, #1
007c704c  64 60 86 e2                                      add r6, r6, #0x64
007c7050  07 30 93 e7                                      ldr r3, [r3, r7]
007c7054  03 00 a0 e1                                      mov r0, r3
007c7058  00 30 93 e5                                      ldr r3, [r3]
007c705c  0f e0 a0 e1                                      mov lr, pc
007c7060  44 f0 93 e5                                      ldr pc, [r3, #0x44]
007c7064  a0 90 95 e5                                      ldr sb, [r5, #0xa0]
007c7068  28 30 99 e5                                      ldr r3, [sb, #0x28]
007c706c  03 00 54 e1                                      cmp r4, r3
007c7070  d8 ff ff ba                                      blt #0x7c6fd8
007c7074  34 d0 8d e2                                      add sp, sp, #0x34
007c7078  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c707c  03 30 d9 e5                                      ldrb r3, [sb, #3]
007c7080  00 00 53 e3                                      cmp r3, #0
007c7084  c6 ff ff 1a                                      bne #0x7c6fa4
007c7088  ed ff ff ea                                      b #0x7c7044

; FUNCTION 0x007c7ac0, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instanceD1Ev
; demangled: gameswf::button_character_instance::~button_character_instance()
; decoder-mode: arm
007c7ac0  54 30 9f e5                                      ldr r3, [pc, #0x54]
007c7ac4  54 20 9f e5                                      ldr r2, [pc, #0x54]
007c7ac8  70 40 2d e9                                      push {r4, r5, r6, lr}
007c7acc  03 30 8f e0                                      add r3, pc, r3
007c7ad0  02 20 93 e7                                      ldr r2, [r3, r2]
007c7ad4  00 50 a0 e1                                      mov r5, r0
007c7ad8  00 40 a0 e1                                      mov r4, r0
007c7adc  08 20 82 e2                                      add r2, r2, #8
007c7ae0  a4 20 85 e4                                      str r2, [r5], #0xa4
007c7ae4  00 10 a0 e3                                      mov r1, #0
007c7ae8  05 00 a0 e1                                      mov r0, r5
007c7aec  5e 37 fe eb                                      bl #0x75586c
007c7af0  05 00 a0 e1                                      mov r0, r5
007c7af4  00 10 a0 e3                                      mov r1, #0
007c7af8  28 37 fe eb                                      bl #0x7557a0
007c7afc  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
007c7b00  00 00 50 e3                                      cmp r0, #0
007c7b04  00 00 00 0a                                      beq #0x7c7b0c
007c7b08  cc 49 fe eb                                      bl #0x75a240
007c7b0c  04 00 a0 e1                                      mov r0, r4
007c7b10  97 58 fe eb                                      bl #0x75dd74
007c7b14  04 00 a0 e1                                      mov r0, r4
007c7b18  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c7b1c  c4 cf 1c 00 74 38 00 00                          .byte 0xc4, 0xcf, 0x1c, 0x00, 0x74, 0x38, 0x00, 0x00

; FUNCTION 0x007c7b24, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instanceD0Ev
; demangled: gameswf::button_character_instance::~button_character_instance()
; decoder-mode: arm
007c7b24  10 40 2d e9                                      push {r4, lr}
007c7b28  00 40 a0 e1                                      mov r4, r0
007c7b2c  e3 ff ff eb                                      bl #0x7c7ac0
007c7b30  04 00 a0 e1                                      mov r0, r4
007c7b34  dd 19 ed eb                                      bl #0x30e2b0
007c7b38  04 00 a0 e1                                      mov r0, r4
007c7b3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c7b40, declared_size=1248, range_size=1248, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance8on_eventERKNS_8event_idE
; demangled: gameswf::button_character_instance::on_event(gameswf::event_id const&)
; decoder-mode: arm
007c7b40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c7b44  c4 a4 9f e5                                      ldr sl, [pc, #0x4c4]
007c7b48  00 50 50 e2                                      subs r5, r0, #0
007c7b4c  0c d0 4d e2                                      sub sp, sp, #0xc
007c7b50  01 70 a0 e1                                      mov r7, r1
007c7b54  0a a0 8f e0                                      add sl, pc, sl
007c7b58  00 00 00 0a                                      beq #0x7c7b60
007c7b5c  40 48 fe eb                                      bl #0x759c64
007c7b60  40 60 95 e5                                      ldr r6, [r5, #0x40]
007c7b64  00 00 56 e3                                      cmp r6, #0
007c7b68  1e 00 00 0a                                      beq #0x7c7be8
007c7b6c  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
007c7b70  04 30 d0 e5                                      ldrb r3, [r0, #4]
007c7b74  00 00 53 e3                                      cmp r3, #0
007c7b78  11 00 00 0a                                      beq #0x7c7bc4
007c7b7c  06 00 a0 e1                                      mov r0, r6
007c7b80  37 48 fe eb                                      bl #0x759c64
007c7b84  a0 40 95 e5                                      ldr r4, [r5, #0xa0]
007c7b88  00 00 54 e3                                      cmp r4, #0
007c7b8c  74 00 00 0a                                      beq #0x7c7d64
007c7b90  04 00 a0 e1                                      mov r0, r4
007c7b94  32 48 fe eb                                      bl #0x759c64
007c7b98  00 80 d7 e5                                      ldrb r8, [r7]
007c7b9c  08 00 58 e3                                      cmp r8, #8
007c7ba0  71 00 00 0a                                      beq #0x7c7d6c
007c7ba4  07 00 58 e3                                      cmp r8, #7
007c7ba8  16 00 00 9a                                      bls #0x7c7c08
007c7bac  00 b0 a0 e3                                      mov fp, #0
007c7bb0  04 00 a0 e1                                      mov r0, r4
007c7bb4  a1 49 fe eb                                      bl #0x75a240
007c7bb8  06 00 a0 e1                                      mov r0, r6
007c7bbc  9f 49 fe eb                                      bl #0x75a240
007c7bc0  09 00 00 ea                                      b #0x7c7bec
007c7bc4  00 10 90 e5                                      ldr r1, [r0]
007c7bc8  01 10 41 e2                                      sub r1, r1, #1
007c7bcc  00 00 51 e3                                      cmp r1, #0
007c7bd0  00 10 80 e5                                      str r1, [r0]
007c7bd4  00 00 00 1a                                      bne #0x7c7bdc
007c7bd8  d6 2b fe eb                                      bl #0x752b38
007c7bdc  00 30 a0 e3                                      mov r3, #0
007c7be0  40 30 85 e5                                      str r3, [r5, #0x40]
007c7be4  3c 30 85 e5                                      str r3, [r5, #0x3c]
007c7be8  00 b0 a0 e3                                      mov fp, #0
007c7bec  00 00 55 e3                                      cmp r5, #0
007c7bf0  01 00 00 0a                                      beq #0x7c7bfc
007c7bf4  05 00 a0 e1                                      mov r0, r5
007c7bf8  90 49 fe eb                                      bl #0x75a240
007c7bfc  0b 00 a0 e1                                      mov r0, fp
007c7c00  0c d0 8d e2                                      add sp, sp, #0xc
007c7c04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c7c08  01 30 a0 e3                                      mov r3, #1
007c7c0c  78 80 af e6                                      sxtb r8, r8
007c7c10  13 88 a0 e1                                      lsl r8, r3, r8
007c7c14  94 20 18 e2                                      ands r2, r8, #0x94
007c7c18  02 30 a0 13                                      movne r3, #2
007c7c1c  bc 30 85 15                                      strne r3, [r5, #0xbc]
007c7c20  02 00 00 1a                                      bne #0x7c7c30
007c7c24  28 00 18 e3                                      tst r8, #0x28
007c7c28  bc 20 85 15                                      strne r2, [r5, #0xbc]
007c7c2c  88 00 00 0a                                      beq #0x7c7e54
007c7c30  44 30 94 e5                                      ldr r3, [r4, #0x44]
007c7c34  00 00 53 e3                                      cmp r3, #0
007c7c38  80 00 00 0a                                      beq #0x7c7e40
007c7c3c  d7 d3 fe eb                                      bl #0x77cba0
007c7c40  00 c0 50 e2                                      subs ip, r0, #0
007c7c44  7d 00 00 0a                                      beq #0x7c7e40
007c7c48  00 a0 d7 e5                                      ldrb sl, [r7]
007c7c4c  01 30 4a e2                                      sub r3, sl, #1
007c7c50  73 30 ef e6                                      uxtb r3, r3
007c7c54  04 00 53 e3                                      cmp r3, #4
007c7c58  17 00 00 8a                                      bhi #0x7c7cbc
007c7c5c  b0 23 9f e5                                      ldr r2, [pc, #0x3b0]
007c7c60  02 20 8f e0                                      add r2, pc, r2
007c7c64  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
007c7c68  00 00 53 e3                                      cmp r3, #0
007c7c6c  0f 00 00 ba                                      blt #0x7c7cb0
007c7c70  2c 20 a0 e3                                      mov r2, #0x2c
007c7c74  92 03 03 e0                                      mul r3, r2, r3
007c7c78  44 20 94 e5                                      ldr r2, [r4, #0x44]
007c7c7c  b3 10 92 e1                                      ldrh r1, [r2, r3]
007c7c80  03 20 82 e0                                      add r2, r2, r3
007c7c84  00 00 51 e3                                      cmp r1, #0
007c7c88  08 00 00 0a                                      beq #0x7c7cb0
007c7c8c  09 30 d2 e5                                      ldrb r3, [r2, #9]
007c7c90  00 00 53 e3                                      cmp r3, #0
007c7c94  63 00 00 0a                                      beq #0x7c7e28
007c7c98  04 20 92 e5                                      ldr r2, [r2, #4]
007c7c9c  00 30 9c e5                                      ldr r3, [ip]
007c7ca0  20 10 92 e5                                      ldr r1, [r2, #0x20]
007c7ca4  0f e0 a0 e1                                      mov lr, pc
007c7ca8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007c7cac  00 a0 d7 e5                                      ldrb sl, [r7]
007c7cb0  04 00 5a e3                                      cmp sl, #4
007c7cb4  01 a0 a0 03                                      moveq sl, #1
007c7cb8  11 00 00 0a                                      beq #0x7c7d04
007c7cbc  05 00 5a e3                                      cmp sl, #5
007c7cc0  02 a0 a0 03                                      moveq sl, #2
007c7cc4  0e 00 00 0a                                      beq #0x7c7d04
007c7cc8  01 00 5a e3                                      cmp sl, #1
007c7ccc  04 a0 a0 03                                      moveq sl, #4
007c7cd0  0b 00 00 0a                                      beq #0x7c7d04
007c7cd4  02 00 5a e3                                      cmp sl, #2
007c7cd8  08 a0 a0 03                                      moveq sl, #8
007c7cdc  08 00 00 0a                                      beq #0x7c7d04
007c7ce0  07 00 5a e3                                      cmp sl, #7
007c7ce4  10 a0 a0 03                                      moveq sl, #0x10
007c7ce8  05 00 00 0a                                      beq #0x7c7d04
007c7cec  06 00 5a e3                                      cmp sl, #6
007c7cf0  20 a0 a0 03                                      moveq sl, #0x20
007c7cf4  02 00 00 0a                                      beq #0x7c7d04
007c7cf8  03 00 5a e3                                      cmp sl, #3
007c7cfc  40 a0 a0 03                                      moveq sl, #0x40
007c7d00  00 a0 a0 13                                      movne sl, #0
007c7d04  38 30 94 e5                                      ldr r3, [r4, #0x38]
007c7d08  00 00 53 e3                                      cmp r3, #0
007c7d0c  a6 ff ff da                                      ble #0x7c7bac
007c7d10  00 70 a0 e3                                      mov r7, #0
007c7d14  07 80 a0 e1                                      mov r8, r7
007c7d18  07 b0 a0 e1                                      mov fp, r7
007c7d1c  01 00 00 ea                                      b #0x7c7d28
007c7d20  03 00 58 e1                                      cmp r8, r3
007c7d24  a1 ff ff aa                                      bge #0x7c7bb0
007c7d28  34 10 94 e5                                      ldr r1, [r4, #0x34]
007c7d2c  01 80 88 e2                                      add r8, r8, #1
007c7d30  07 20 91 e7                                      ldr r2, [r1, r7]
007c7d34  07 10 81 e0                                      add r1, r1, r7
007c7d38  14 70 87 e2                                      add r7, r7, #0x14
007c7d3c  02 00 1a e1                                      tst sl, r2
007c7d40  f6 ff ff 0a                                      beq #0x7c7d20
007c7d44  00 30 96 e5                                      ldr r3, [r6]
007c7d48  04 10 81 e2                                      add r1, r1, #4
007c7d4c  06 00 a0 e1                                      mov r0, r6
007c7d50  0f e0 a0 e1                                      mov lr, pc
007c7d54  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
007c7d58  01 b0 a0 e3                                      mov fp, #1
007c7d5c  38 30 94 e5                                      ldr r3, [r4, #0x38]
007c7d60  ee ff ff ea                                      b #0x7c7d20
007c7d64  04 b0 a0 e1                                      mov fp, r4
007c7d68  92 ff ff ea                                      b #0x7c7bb8
007c7d6c  a4 b2 9f e5                                      ldr fp, [pc, #0x2a4]
007c7d70  0b 00 9a e7                                      ldr r0, [sl, fp]
007c7d74  00 90 90 e5                                      ldr sb, [r0]
007c7d78  01 90 19 e2                                      ands sb, sb, #1
007c7d7c  38 00 00 0a                                      beq #0x7c7e64
007c7d80  38 30 94 e5                                      ldr r3, [r4, #0x38]
007c7d84  00 00 53 e3                                      cmp r3, #0
007c7d88  87 ff ff da                                      ble #0x7c7bac
007c7d8c  88 22 9f e5                                      ldr r2, [pc, #0x288]
007c7d90  00 80 a0 e3                                      mov r8, #0
007c7d94  08 90 a0 e1                                      mov sb, r8
007c7d98  04 20 8d e5                                      str r2, [sp, #4]
007c7d9c  08 b0 a0 e1                                      mov fp, r8
007c7da0  02 00 00 ea                                      b #0x7c7db0
007c7da4  03 00 59 e1                                      cmp sb, r3
007c7da8  14 80 88 e2                                      add r8, r8, #0x14
007c7dac  7f ff ff aa                                      bge #0x7c7bb0
007c7db0  34 10 94 e5                                      ldr r1, [r4, #0x34]
007c7db4  08 00 a0 e3                                      mov r0, #8
007c7db8  00 e0 a0 e3                                      mov lr, #0
007c7dbc  08 20 91 e7                                      ldr r2, [r1, r8]
007c7dc0  01 90 89 e2                                      add sb, sb, #1
007c7dc4  08 10 81 e0                                      add r1, r1, r8
007c7dc8  d2 24 e6 e7                                      ubfx r2, r2, #9, #7
007c7dcc  1f 00 52 e3                                      cmp r2, #0x1f
007c7dd0  04 c0 9d d5                                      ldrle ip, [sp, #4]
007c7dd4  72 20 ef c6                                      uxtbgt r2, r2
007c7dd8  0c 00 9a d7                                      ldrle r0, [sl, ip]
007c7ddc  82 c1 80 d0                                      addle ip, r0, r2, lsl #3
007c7de0  82 01 d0 d7                                      ldrble r0, [r0, r2, lsl #3]
007c7de4  01 20 dc d5                                      ldrble r2, [ip, #1]
007c7de8  04 e0 9c d5                                      ldrle lr, [ip, #4]
007c7dec  b0 c0 d7 e1                                      ldrh ip, [r7]
007c7df0  02 24 80 e1                                      orr r2, r0, r2, lsl #8
007c7df4  02 00 5c e1                                      cmp ip, r2
007c7df8  e9 ff ff 1a                                      bne #0x7c7da4
007c7dfc  04 20 97 e5                                      ldr r2, [r7, #4]
007c7e00  02 00 5e e1                                      cmp lr, r2
007c7e04  e6 ff ff 1a                                      bne #0x7c7da4
007c7e08  00 30 96 e5                                      ldr r3, [r6]
007c7e0c  04 10 81 e2                                      add r1, r1, #4
007c7e10  06 00 a0 e1                                      mov r0, r6
007c7e14  0f e0 a0 e1                                      mov lr, pc
007c7e18  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
007c7e1c  01 b0 a0 e3                                      mov fp, #1
007c7e20  38 30 94 e5                                      ldr r3, [r4, #0x38]
007c7e24  de ff ff ea                                      b #0x7c7da4
007c7e28  04 10 92 e5                                      ldr r1, [r2, #4]
007c7e2c  00 30 9c e5                                      ldr r3, [ip]
007c7e30  b8 21 d2 e1                                      ldrh r2, [r2, #0x18]
007c7e34  20 10 91 e5                                      ldr r1, [r1, #0x20]
007c7e38  0f e0 a0 e1                                      mov lr, pc
007c7e3c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007c7e40  00 a0 d7 e5                                      ldrb sl, [r7]
007c7e44  04 00 5a e3                                      cmp sl, #4
007c7e48  01 a0 a0 03                                      moveq sl, #1
007c7e4c  9a ff ff 1a                                      bne #0x7c7cbc
007c7e50  ab ff ff ea                                      b #0x7c7d04
007c7e54  42 00 18 e3                                      tst r8, #0x42
007c7e58  bc 30 85 15                                      strne r3, [r5, #0xbc]
007c7e5c  73 ff ff 1a                                      bne #0x7c7c30
007c7e60  51 ff ff ea                                      b #0x7c7bac
007c7e64  40 1a ed eb                                      bl #0x30e76c
007c7e68  00 00 50 e3                                      cmp r0, #0
007c7e6c  c3 ff ff 0a                                      beq #0x7c7d80
007c7e70  a4 31 9f e5                                      ldr r3, [pc, #0x1a4]
007c7e74  25 10 a0 e3                                      mov r1, #0x25
007c7e78  0d 00 a0 e3                                      mov r0, #0xd
007c7e7c  03 30 9a e7                                      ldr r3, [sl, r3]
007c7e80  09 20 a0 e1                                      mov r2, sb
007c7e84  09 10 c3 e5                                      strb r1, [r3, #9]
007c7e88  27 10 a0 e3                                      mov r1, #0x27
007c7e8c  11 10 c3 e5                                      strb r1, [r3, #0x11]
007c7e90  24 10 a0 e3                                      mov r1, #0x24
007c7e94  19 10 c3 e5                                      strb r1, [r3, #0x19]
007c7e98  23 10 a0 e3                                      mov r1, #0x23
007c7e9c  21 10 c3 e5                                      strb r1, [r3, #0x21]
007c7ea0  2d 10 a0 e3                                      mov r1, #0x2d
007c7ea4  29 10 c3 e5                                      strb r1, [r3, #0x29]
007c7ea8  2e 10 a0 e3                                      mov r1, #0x2e
007c7eac  31 10 c3 e5                                      strb r1, [r3, #0x31]
007c7eb0  00 90 c3 e5                                      strb sb, [r3]
007c7eb4  01 90 c3 e5                                      strb sb, [r3, #1]
007c7eb8  b2 90 c3 e1                                      strh sb, [r3, #2]
007c7ebc  04 90 83 e5                                      str sb, [r3, #4]
007c7ec0  08 80 c3 e5                                      strb r8, [r3, #8]
007c7ec4  ba 90 c3 e1                                      strh sb, [r3, #0xa]
007c7ec8  0c 90 83 e5                                      str sb, [r3, #0xc]
007c7ecc  10 80 c3 e5                                      strb r8, [r3, #0x10]
007c7ed0  b2 91 c3 e1                                      strh sb, [r3, #0x12]
007c7ed4  14 90 83 e5                                      str sb, [r3, #0x14]
007c7ed8  18 80 c3 e5                                      strb r8, [r3, #0x18]
007c7edc  ba 91 c3 e1                                      strh sb, [r3, #0x1a]
007c7ee0  1c 90 83 e5                                      str sb, [r3, #0x1c]
007c7ee4  20 80 c3 e5                                      strb r8, [r3, #0x20]
007c7ee8  b2 92 c3 e1                                      strh sb, [r3, #0x22]
007c7eec  24 90 83 e5                                      str sb, [r3, #0x24]
007c7ef0  28 80 c3 e5                                      strb r8, [r3, #0x28]
007c7ef4  ba 92 c3 e1                                      strh sb, [r3, #0x2a]
007c7ef8  2c 90 83 e5                                      str sb, [r3, #0x2c]
007c7efc  30 80 c3 e5                                      strb r8, [r3, #0x30]
007c7f00  b2 93 c3 e1                                      strh sb, [r3, #0x32]
007c7f04  34 90 83 e5                                      str sb, [r3, #0x34]
007c7f08  38 90 c3 e5                                      strb sb, [r3, #0x38]
007c7f0c  39 90 c3 e5                                      strb sb, [r3, #0x39]
007c7f10  ba 93 c3 e1                                      strh sb, [r3, #0x3a]
007c7f14  3c 90 83 e5                                      str sb, [r3, #0x3c]
007c7f18  40 80 c3 e5                                      strb r8, [r3, #0x40]
007c7f1c  69 00 c3 e5                                      strb r0, [r3, #0x69]
007c7f20  26 00 a0 e3                                      mov r0, #0x26
007c7f24  71 00 c3 e5                                      strb r0, [r3, #0x71]
007c7f28  28 00 a0 e3                                      mov r0, #0x28
007c7f2c  79 00 c3 e5                                      strb r0, [r3, #0x79]
007c7f30  22 00 a0 e3                                      mov r0, #0x22
007c7f34  81 00 c3 e5                                      strb r0, [r3, #0x81]
007c7f38  21 00 a0 e3                                      mov r0, #0x21
007c7f3c  61 90 c3 e5                                      strb sb, [r3, #0x61]
007c7f40  41 80 c3 e5                                      strb r8, [r3, #0x41]
007c7f44  b2 94 c3 e1                                      strh sb, [r3, #0x42]
007c7f48  44 90 83 e5                                      str sb, [r3, #0x44]
007c7f4c  48 90 c3 e5                                      strb sb, [r3, #0x48]
007c7f50  49 90 c3 e5                                      strb sb, [r3, #0x49]
007c7f54  ba 94 c3 e1                                      strh sb, [r3, #0x4a]
007c7f58  4c 90 83 e5                                      str sb, [r3, #0x4c]
007c7f5c  50 90 c3 e5                                      strb sb, [r3, #0x50]
007c7f60  51 90 c3 e5                                      strb sb, [r3, #0x51]
007c7f64  b2 95 c3 e1                                      strh sb, [r3, #0x52]
007c7f68  54 90 83 e5                                      str sb, [r3, #0x54]
007c7f6c  58 90 c3 e5                                      strb sb, [r3, #0x58]
007c7f70  59 90 c3 e5                                      strb sb, [r3, #0x59]
007c7f74  ba 95 c3 e1                                      strh sb, [r3, #0x5a]
007c7f78  5c 90 83 e5                                      str sb, [r3, #0x5c]
007c7f7c  60 90 c3 e5                                      strb sb, [r3, #0x60]
007c7f80  b2 96 c3 e1                                      strh sb, [r3, #0x62]
007c7f84  64 90 83 e5                                      str sb, [r3, #0x64]
007c7f88  68 80 c3 e5                                      strb r8, [r3, #0x68]
007c7f8c  ba 96 c3 e1                                      strh sb, [r3, #0x6a]
007c7f90  6c 90 83 e5                                      str sb, [r3, #0x6c]
007c7f94  70 80 c3 e5                                      strb r8, [r3, #0x70]
007c7f98  b2 97 c3 e1                                      strh sb, [r3, #0x72]
007c7f9c  74 90 83 e5                                      str sb, [r3, #0x74]
007c7fa0  78 80 c3 e5                                      strb r8, [r3, #0x78]
007c7fa4  ba 97 c3 e1                                      strh sb, [r3, #0x7a]
007c7fa8  7c 90 83 e5                                      str sb, [r3, #0x7c]
007c7fac  80 80 c3 e5                                      strb r8, [r3, #0x80]
007c7fb0  b2 98 c3 e1                                      strh sb, [r3, #0x82]
007c7fb4  89 00 c3 e5                                      strb r0, [r3, #0x89]
007c7fb8  09 00 a0 e3                                      mov r0, #9
007c7fbc  42 1f 83 e2                                      add r1, r3, #0x108
007c7fc0  90 80 c3 e5                                      strb r8, [r3, #0x90]
007c7fc4  91 00 c3 e5                                      strb r0, [r3, #0x91]
007c7fc8  84 90 83 e5                                      str sb, [r3, #0x84]
007c7fcc  88 80 c3 e5                                      strb r8, [r3, #0x88]
007c7fd0  ba 98 c3 e1                                      strh sb, [r3, #0x8a]
007c7fd4  8c 90 83 e5                                      str sb, [r3, #0x8c]
007c7fd8  b2 99 c3 e1                                      strh sb, [r3, #0x92]
007c7fdc  94 90 83 e5                                      str sb, [r3, #0x94]
007c7fe0  a0 30 83 e2                                      add r3, r3, #0xa0
007c7fe4  00 00 a0 e3                                      mov r0, #0
007c7fe8  08 20 43 e5                                      strb r2, [r3, #-8]
007c7fec  07 20 43 e5                                      strb r2, [r3, #-7]
007c7ff0  b6 00 43 e1                                      strh r0, [r3, #-6]
007c7ff4  04 20 03 e5                                      str r2, [r3, #-4]
007c7ff8  08 30 83 e2                                      add r3, r3, #8
007c7ffc  01 00 53 e1                                      cmp r3, r1
007c8000  f7 ff ff 1a                                      bne #0x7c7fe4
007c8004  0b 00 9a e7                                      ldr r0, [sl, fp]
007c8008  8b 1a ed eb                                      bl #0x30ea3c
007c800c  5b ff ff ea                                      b #0x7c7d80
; mapping-symbol data/literal pool
007c8010  3c cf 1c 00 b0 34 14 00 ac 13 00 00 6c 3a 00 00  .byte 0x3c, 0xcf, 0x1c, 0x00, 0xb0, 0x34, 0x14, 0x00, 0xac, 0x13, 0x00, 0x00, 0x6c, 0x3a, 0x00, 0x00

; FUNCTION 0x007c8020, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance14get_root_movieEv
; demangled: gameswf::button_character_instance::get_root_movie()
; decoder-mode: arm
007c8020  10 40 2d e9                                      push {r4, lr}
007c8024  40 30 90 e5                                      ldr r3, [r0, #0x40]
007c8028  00 40 a0 e1                                      mov r4, r0
007c802c  00 00 53 e3                                      cmp r3, #0
007c8030  03 00 00 0a                                      beq #0x7c8044
007c8034  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
007c8038  04 20 d0 e5                                      ldrb r2, [r0, #4]
007c803c  00 00 52 e3                                      cmp r2, #0
007c8040  04 00 00 0a                                      beq #0x7c8058
007c8044  03 00 a0 e1                                      mov r0, r3
007c8048  00 30 93 e5                                      ldr r3, [r3]
007c804c  0f e0 a0 e1                                      mov lr, pc
007c8050  34 f1 93 e5                                      ldr pc, [r3, #0x134]
007c8054  10 80 bd e8                                      pop {r4, pc}
007c8058  00 10 90 e5                                      ldr r1, [r0]
007c805c  01 10 41 e2                                      sub r1, r1, #1
007c8060  00 00 51 e3                                      cmp r1, #0
007c8064  00 10 80 e5                                      str r1, [r0]
007c8068  00 00 00 1a                                      bne #0x7c8070
007c806c  b1 2a fe eb                                      bl #0x752b38
007c8070  00 30 a0 e3                                      mov r3, #0
007c8074  40 30 84 e5                                      str r3, [r4, #0x40]
007c8078  3c 30 84 e5                                      str r3, [r4, #0x3c]
007c807c  03 00 a0 e1                                      mov r0, r3
007c8080  00 30 93 e5                                      ldr r3, [r3]
007c8084  0f e0 a0 e1                                      mov lr, pc
007c8088  34 f1 93 e5                                      ldr pc, [r3, #0x134]
007c808c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c84d8, declared_size=476, range_size=476, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instanceC1EPNS_6playerEPNS_27button_character_definitionEPNS_9characterEi
; demangled: gameswf::button_character_instance::button_character_instance(gameswf::player*, gameswf::button_character_definition*, gameswf::character*, int)
; decoder-mode: arm
007c84d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c84dc  14 d0 4d e2                                      sub sp, sp, #0x14
007c84e0  02 60 a0 e1                                      mov r6, r2
007c84e4  01 c0 a0 e3                                      mov ip, #1
007c84e8  03 20 a0 e1                                      mov r2, r3
007c84ec  b8 51 9f e5                                      ldr r5, [pc, #0x1b8]
007c84f0  38 30 9d e5                                      ldr r3, [sp, #0x38]
007c84f4  00 40 a0 e1                                      mov r4, r0
007c84f8  00 c0 8d e5                                      str ip, [sp]
007c84fc  89 31 fe eb                                      bl #0x754b28
007c8500  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
007c8504  05 50 8f e0                                      add r5, pc, r5
007c8508  00 00 56 e3                                      cmp r6, #0
007c850c  03 30 95 e7                                      ldr r3, [r5, r3]
007c8510  a0 60 84 e5                                      str r6, [r4, #0xa0]
007c8514  08 30 83 e2                                      add r3, r3, #8
007c8518  00 30 84 e5                                      str r3, [r4]
007c851c  01 00 00 0a                                      beq #0x7c8528
007c8520  06 00 a0 e1                                      mov r0, r6
007c8524  ce 45 fe eb                                      bl #0x759c64
007c8528  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
007c852c  00 30 a0 e3                                      mov r3, #0
007c8530  bc 30 84 e5                                      str r3, [r4, #0xbc]
007c8534  a4 30 84 e5                                      str r3, [r4, #0xa4]
007c8538  a8 30 84 e5                                      str r3, [r4, #0xa8]
007c853c  ac 30 84 e5                                      str r3, [r4, #0xac]
007c8540  b0 30 c4 e5                                      strb r3, [r4, #0xb0]
007c8544  b4 30 84 e5                                      str r3, [r4, #0xb4]
007c8548  b8 30 84 e5                                      str r3, [r4, #0xb8]
007c854c  28 a0 92 e5                                      ldr sl, [r2, #0x28]
007c8550  a4 00 84 e2                                      add r0, r4, #0xa4
007c8554  0a 10 a0 e1                                      mov r1, sl
007c8558  c3 34 fe eb                                      bl #0x75586c
007c855c  04 00 a0 e1                                      mov r0, r4
007c8560  22 32 fe eb                                      bl #0x754df0
007c8564  00 50 50 e2                                      subs r5, r0, #0
007c8568  40 00 00 0a                                      beq #0x7c8670
007c856c  00 30 95 e5                                      ldr r3, [r5]
007c8570  09 10 a0 e3                                      mov r1, #9
007c8574  0f e0 a0 e1                                      mov lr, pc
007c8578  08 f0 93 e5                                      ldr pc, [r3, #8]
007c857c  00 00 50 e3                                      cmp r0, #0
007c8580  0c 50 8d 15                                      strne r5, [sp, #0xc]
007c8584  39 00 00 0a                                      beq #0x7c8670
007c8588  00 00 5a e3                                      cmp sl, #0
007c858c  34 00 00 da                                      ble #0x7c8664
007c8590  00 60 a0 e3                                      mov r6, #0
007c8594  06 70 a0 e1                                      mov r7, r6
007c8598  06 80 a0 e1                                      mov r8, r6
007c859c  11 00 00 ea                                      b #0x7c85e8
007c85a0  af 45 fe eb                                      bl #0x759c64
007c85a4  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
007c85a8  09 10 a0 e1                                      mov r1, sb
007c85ac  01 80 88 e2                                      add r8, r8, #1
007c85b0  06 00 80 e0                                      add r0, r0, r6
007c85b4  f4 32 fe eb                                      bl #0x75518c
007c85b8  09 00 a0 e1                                      mov r0, sb
007c85bc  05 10 a0 e1                                      mov r1, r5
007c85c0  0c 27 f1 eb                                      bl #0x4121f8
007c85c4  09 00 a0 e1                                      mov r0, sb
007c85c8  0b 10 a0 e1                                      mov r1, fp
007c85cc  e2 2b fe eb                                      bl #0x75355c
007c85d0  09 00 a0 e1                                      mov r0, sb
007c85d4  19 47 fe eb                                      bl #0x75a240
007c85d8  0a 00 58 e1                                      cmp r8, sl
007c85dc  64 70 87 e2                                      add r7, r7, #0x64
007c85e0  04 60 86 e2                                      add r6, r6, #4
007c85e4  1e 00 00 0a                                      beq #0x7c8664
007c85e8  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
007c85ec  24 50 93 e5                                      ldr r5, [r3, #0x24]
007c85f0  07 50 85 e0                                      add r5, r5, r7
007c85f4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007c85f8  00 00 53 e3                                      cmp r3, #0
007c85fc  1e 00 00 0a                                      beq #0x7c867c
007c8600  03 00 a0 e1                                      mov r0, r3
007c8604  38 20 9d e5                                      ldr r2, [sp, #0x38]
007c8608  04 10 a0 e1                                      mov r1, r4
007c860c  00 30 93 e5                                      ldr r3, [r3]
007c8610  0f e0 a0 e1                                      mov lr, pc
007c8614  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007c8618  00 90 50 e2                                      subs sb, r0, #0
007c861c  2c b0 85 e2                                      add fp, r5, #0x2c
007c8620  14 50 85 e2                                      add r5, r5, #0x14
007c8624  dd ff ff 1a                                      bne #0x7c85a0
007c8628  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
007c862c  09 10 a0 e1                                      mov r1, sb
007c8630  01 80 88 e2                                      add r8, r8, #1
007c8634  06 00 80 e0                                      add r0, r0, r6
007c8638  d3 32 fe eb                                      bl #0x75518c
007c863c  09 00 a0 e1                                      mov r0, sb
007c8640  05 10 a0 e1                                      mov r1, r5
007c8644  eb 26 f1 eb                                      bl #0x4121f8
007c8648  09 00 a0 e1                                      mov r0, sb
007c864c  0b 10 a0 e1                                      mov r1, fp
007c8650  c1 2b fe eb                                      bl #0x75355c
007c8654  0a 00 58 e1                                      cmp r8, sl
007c8658  64 70 87 e2                                      add r7, r7, #0x64
007c865c  04 60 86 e2                                      add r6, r6, #4
007c8660  e0 ff ff 1a                                      bne #0x7c85e8
007c8664  04 00 a0 e1                                      mov r0, r4
007c8668  14 d0 8d e2                                      add sp, sp, #0x14
007c866c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c8670  00 20 a0 e3                                      mov r2, #0
007c8674  0c 20 8d e5                                      str r2, [sp, #0xc]
007c8678  c2 ff ff ea                                      b #0x7c8588
007c867c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007c8680  08 10 95 e5                                      ldr r1, [r5, #8]
007c8684  00 30 9c e5                                      ldr r3, [ip]
007c8688  0c 00 a0 e1                                      mov r0, ip
007c868c  0f e0 a0 e1                                      mov lr, pc
007c8690  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
007c8694  0c 00 85 e5                                      str r0, [r5, #0xc]
007c8698  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
007c869c  00 30 a0 e1                                      mov r3, r0
007c86a0  24 50 92 e5                                      ldr r5, [r2, #0x24]
007c86a4  07 50 85 e0                                      add r5, r5, r7
007c86a8  d4 ff ff ea                                      b #0x7c8600
; mapping-symbol data/literal pool
007c86ac  8c c5 1c 00 74 38 00 00                          .byte 0x8c, 0xc5, 0x1c, 0x00, 0x74, 0x38, 0x00, 0x00

; FUNCTION 0x007c873c, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::button_character_instance
; alias: _ZN7gameswf25button_character_instance15get_mouse_stateEPiS1_S1_
; demangled: gameswf::button_character_instance::get_mouse_state(int*, int*, int*)
; decoder-mode: arm
007c873c  30 40 2d e9                                      push {r4, r5, lr}
007c8740  40 c0 90 e5                                      ldr ip, [r0, #0x40]
007c8744  0c d0 4d e2                                      sub sp, sp, #0xc
007c8748  00 40 a0 e1                                      mov r4, r0
007c874c  00 00 5c e3                                      cmp ip, #0
007c8750  01 50 a0 e1                                      mov r5, r1
007c8754  03 00 00 0a                                      beq #0x7c8768
007c8758  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
007c875c  04 10 d0 e5                                      ldrb r1, [r0, #4]
007c8760  00 00 51 e3                                      cmp r1, #0
007c8764  06 00 00 0a                                      beq #0x7c8784
007c8768  0c 00 a0 e1                                      mov r0, ip
007c876c  05 10 a0 e1                                      mov r1, r5
007c8770  00 c0 9c e5                                      ldr ip, [ip]
007c8774  0f e0 a0 e1                                      mov lr, pc
007c8778  70 f0 9c e5                                      ldr pc, [ip, #0x70]
007c877c  0c d0 8d e2                                      add sp, sp, #0xc
007c8780  30 80 bd e8                                      pop {r4, r5, pc}
007c8784  00 10 90 e5                                      ldr r1, [r0]
007c8788  01 10 41 e2                                      sub r1, r1, #1
007c878c  00 00 51 e3                                      cmp r1, #0
007c8790  00 10 80 e5                                      str r1, [r0]
007c8794  04 00 00 1a                                      bne #0x7c87ac
007c8798  04 20 8d e5                                      str r2, [sp, #4]
007c879c  00 30 8d e5                                      str r3, [sp]
007c87a0  e4 28 fe eb                                      bl #0x752b38
007c87a4  00 30 9d e5                                      ldr r3, [sp]
007c87a8  04 20 9d e5                                      ldr r2, [sp, #4]
007c87ac  00 c0 a0 e3                                      mov ip, #0
007c87b0  40 c0 84 e5                                      str ip, [r4, #0x40]
007c87b4  3c c0 84 e5                                      str ip, [r4, #0x3c]
007c87b8  ea ff ff ea                                      b #0x7c8768
