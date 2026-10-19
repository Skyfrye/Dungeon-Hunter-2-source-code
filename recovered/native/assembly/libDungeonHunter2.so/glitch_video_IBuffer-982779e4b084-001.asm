; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a1908, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZN6glitch5video7IBufferC2ENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvh
; demangled: glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, unsigned char)
; decoder-mode: arm
005a1908  f0 00 2d e9                                      push {r4, r5, r6, r7}
005a190c  60 c0 9f e5                                      ldr ip, [pc, #0x60]
005a1910  60 40 9f e5                                      ldr r4, [pc, #0x60]
005a1914  10 50 9d e5                                      ldr r5, [sp, #0x10]
005a1918  0c c0 8f e0                                      add ip, pc, ip
005a191c  04 40 9c e7                                      ldr r4, [ip, r4]
005a1920  14 60 dd e5                                      ldrb r6, [sp, #0x14]
005a1924  00 70 a0 e3                                      mov r7, #0
005a1928  08 40 84 e2                                      add r4, r4, #8
005a192c  72 20 ef e6                                      uxtb r2, r2
005a1930  00 00 53 e3                                      cmp r3, #0
005a1934  00 40 80 e5                                      str r4, [r0]
005a1938  10 10 c0 e5                                      strb r1, [r0, #0x10]
005a193c  13 70 c0 e5                                      strb r7, [r0, #0x13]
005a1940  04 70 80 e5                                      str r7, [r0, #4]
005a1944  08 50 80 e5                                      str r5, [r0, #8]
005a1948  0c 30 80 e5                                      str r3, [r0, #0xc]
005a194c  11 20 c0 e5                                      strb r2, [r0, #0x11]
005a1950  12 60 c0 e5                                      strb r6, [r0, #0x12]
005a1954  04 00 00 0a                                      beq #0x5a196c
005a1958  04 00 52 e3                                      cmp r2, #4
005a195c  02 00 00 0a                                      beq #0x5a196c
005a1960  07 00 55 e1                                      cmp r5, r7
005a1964  02 60 86 13                                      orrne r6, r6, #2
005a1968  12 60 c0 15                                      strbne r6, [r0, #0x12]
005a196c  f0 00 bd e8                                      pop {r4, r5, r6, r7}
005a1970  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005a1974  78 31 3f 00 28 19 00 00                          .byte 0x78, 0x31, 0x3f, 0x00, 0x28, 0x19, 0x00, 0x00

; FUNCTION 0x005a197c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZN6glitch5video7IBufferC1ENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvh
; demangled: glitch::video::IBuffer::IBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, unsigned char)
; decoder-mode: arm
005a197c  f0 00 2d e9                                      push {r4, r5, r6, r7}
005a1980  60 c0 9f e5                                      ldr ip, [pc, #0x60]
005a1984  60 40 9f e5                                      ldr r4, [pc, #0x60]
005a1988  10 50 9d e5                                      ldr r5, [sp, #0x10]
005a198c  0c c0 8f e0                                      add ip, pc, ip
005a1990  04 40 9c e7                                      ldr r4, [ip, r4]
005a1994  14 60 dd e5                                      ldrb r6, [sp, #0x14]
005a1998  00 70 a0 e3                                      mov r7, #0
005a199c  08 40 84 e2                                      add r4, r4, #8
005a19a0  72 20 ef e6                                      uxtb r2, r2
005a19a4  00 00 53 e3                                      cmp r3, #0
005a19a8  00 40 80 e5                                      str r4, [r0]
005a19ac  10 10 c0 e5                                      strb r1, [r0, #0x10]
005a19b0  13 70 c0 e5                                      strb r7, [r0, #0x13]
005a19b4  04 70 80 e5                                      str r7, [r0, #4]
005a19b8  08 50 80 e5                                      str r5, [r0, #8]
005a19bc  0c 30 80 e5                                      str r3, [r0, #0xc]
005a19c0  11 20 c0 e5                                      strb r2, [r0, #0x11]
005a19c4  12 60 c0 e5                                      strb r6, [r0, #0x12]
005a19c8  04 00 00 0a                                      beq #0x5a19e0
005a19cc  04 00 52 e3                                      cmp r2, #4
005a19d0  02 00 00 0a                                      beq #0x5a19e0
005a19d4  07 00 55 e1                                      cmp r5, r7
005a19d8  02 60 86 13                                      orrne r6, r6, #2
005a19dc  12 60 c0 15                                      strbne r6, [r0, #0x12]
005a19e0  f0 00 bd e8                                      pop {r4, r5, r6, r7}
005a19e4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005a19e8  04 31 3f 00 28 19 00 00                          .byte 0x04, 0x31, 0x3f, 0x00, 0x28, 0x19, 0x00, 0x00

; FUNCTION 0x005a19f0, declared_size=204, range_size=204, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZN6glitch5video7IBuffer3mapENS0_19E_BUFFER_MAP_ACCESSE
; demangled: glitch::video::IBuffer::map(glitch::video::E_BUFFER_MAP_ACCESS)
; decoder-mode: arm
005a19f0  10 40 2d e9                                      push {r4, lr}
005a19f4  13 20 d0 e5                                      ldrb r2, [r0, #0x13]
005a19f8  00 30 a0 e1                                      mov r3, r0
005a19fc  00 00 52 e3                                      cmp r2, #0
005a1a00  09 00 00 0a                                      beq #0x5a1a2c
005a1a04  12 10 d0 e5                                      ldrb r1, [r0, #0x12]
005a1a08  1f c0 02 e2                                      and ip, r2, #0x1f
005a1a0c  01 c0 8c e2                                      add ip, ip, #1
005a1a10  1f 20 c2 e3                                      bic r2, r2, #0x1f
005a1a14  02 20 8c e1                                      orr r2, ip, r2
005a1a18  20 00 11 e3                                      tst r1, #0x20
005a1a1c  13 20 c0 e5                                      strb r2, [r0, #0x13]
005a1a20  1d 00 00 1a                                      bne #0x5a1a9c
005a1a24  08 00 90 e5                                      ldr r0, [r0, #8]
005a1a28  10 80 bd e8                                      pop {r4, pc}
005a1a2c  12 20 d0 e5                                      ldrb r2, [r0, #0x12]
005a1a30  08 00 12 e3                                      tst r2, #8
005a1a34  08 00 00 0a                                      beq #0x5a1a5c
005a1a38  03 00 51 e3                                      cmp r1, #3
005a1a3c  1a 00 00 ca                                      bgt #0x5a1aac
005a1a40  01 10 01 e2                                      and r1, r1, #1
005a1a44  03 00 a0 e1                                      mov r0, r3
005a1a48  02 10 81 e3                                      orr r1, r1, #2
005a1a4c  00 30 93 e5                                      ldr r3, [r3]
005a1a50  0f e0 a0 e1                                      mov lr, pc
005a1a54  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005a1a58  10 80 bd e8                                      pop {r4, pc}
005a1a5c  08 00 90 e5                                      ldr r0, [r0, #8]
005a1a60  00 00 50 e3                                      cmp r0, #0
005a1a64  0a 00 00 0a                                      beq #0x5a1a94
005a1a68  11 c0 d3 e5                                      ldrb ip, [r3, #0x11]
005a1a6c  81 12 a0 e1                                      lsl r1, r1, #5
005a1a70  01 10 81 e3                                      orr r1, r1, #1
005a1a74  04 00 5c e3                                      cmp ip, #4
005a1a78  13 10 c3 e5                                      strb r1, [r3, #0x13]
005a1a7c  05 00 00 0a                                      beq #0x5a1a98
005a1a80  00 00 50 e3                                      cmp r0, #0
005a1a84  02 00 00 0a                                      beq #0x5a1a94
005a1a88  02 20 82 e3                                      orr r2, r2, #2
005a1a8c  12 20 c3 e5                                      strb r2, [r3, #0x12]
005a1a90  10 80 bd e8                                      pop {r4, pc}
005a1a94  00 00 a0 e3                                      mov r0, #0
005a1a98  10 80 bd e8                                      pop {r4, pc}
005a1a9c  00 30 90 e5                                      ldr r3, [r0]
005a1aa0  0f e0 a0 e1                                      mov lr, pc
005a1aa4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005a1aa8  10 80 bd e8                                      pop {r4, pc}
005a1aac  08 00 90 e5                                      ldr r0, [r0, #8]
005a1ab0  00 00 50 e3                                      cmp r0, #0
005a1ab4  eb ff ff 1a                                      bne #0x5a1a68
005a1ab8  e0 ff ff ea                                      b #0x5a1a40

; FUNCTION 0x005a1adc, declared_size=320, range_size=320, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZNK6glitch5video7IBuffer3mapENS0_24E_BUFFER_READ_MAP_ACCESSE
; demangled: glitch::video::IBuffer::map(glitch::video::E_BUFFER_READ_MAP_ACCESS) const
; decoder-mode: arm
005a1adc  10 40 2d e9                                      push {r4, lr}
005a1ae0  13 30 d0 e5                                      ldrb r3, [r0, #0x13]
005a1ae4  00 40 a0 e1                                      mov r4, r0
005a1ae8  00 00 53 e3                                      cmp r3, #0
005a1aec  09 00 00 0a                                      beq #0x5a1b18
005a1af0  12 20 d0 e5                                      ldrb r2, [r0, #0x12]
005a1af4  1f 10 03 e2                                      and r1, r3, #0x1f
005a1af8  01 10 81 e2                                      add r1, r1, #1
005a1afc  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a1b00  03 30 81 e1                                      orr r3, r1, r3
005a1b04  20 00 12 e3                                      tst r2, #0x20
005a1b08  13 30 c0 e5                                      strb r3, [r0, #0x13]
005a1b0c  0e 00 00 1a                                      bne #0x5a1b4c
005a1b10  08 00 90 e5                                      ldr r0, [r0, #8]
005a1b14  10 80 bd e8                                      pop {r4, pc}
005a1b18  01 00 51 e3                                      cmp r1, #1
005a1b1c  0e 00 00 0a                                      beq #0x5a1b5c
005a1b20  12 20 d4 e5                                      ldrb r2, [r4, #0x12]
005a1b24  02 30 12 e2                                      ands r3, r2, #2
005a1b28  01 00 00 1a                                      bne #0x5a1b34
005a1b2c  08 00 12 e3                                      tst r2, #8
005a1b30  28 00 00 1a                                      bne #0x5a1bd8
005a1b34  08 00 94 e5                                      ldr r0, [r4, #8]
005a1b38  00 00 50 e3                                      cmp r0, #0
005a1b3c  81 12 a0 11                                      lslne r1, r1, #5
005a1b40  01 10 81 13                                      orrne r1, r1, #1
005a1b44  13 10 c4 15                                      strbne r1, [r4, #0x13]
005a1b48  10 80 bd e8                                      pop {r4, pc}
005a1b4c  00 30 90 e5                                      ldr r3, [r0]
005a1b50  0f e0 a0 e1                                      mov lr, pc
005a1b54  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005a1b58  10 80 bd e8                                      pop {r4, pc}
005a1b5c  08 20 90 e5                                      ldr r2, [r0, #8]
005a1b60  00 00 52 e3                                      cmp r2, #0
005a1b64  ed ff ff 0a                                      beq #0x5a1b20
005a1b68  12 10 d0 e5                                      ldrb r1, [r0, #0x12]
005a1b6c  04 00 11 e3                                      tst r1, #4
005a1b70  03 00 00 1a                                      bne #0x5a1b84
005a1b74  21 30 a0 e3                                      mov r3, #0x21
005a1b78  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a1b7c  02 00 a0 e1                                      mov r0, r2
005a1b80  10 80 bd e8                                      pop {r4, pc}
005a1b84  03 10 a0 e1                                      mov r1, r3
005a1b88  00 30 90 e5                                      ldr r3, [r0]
005a1b8c  0f e0 a0 e1                                      mov lr, pc
005a1b90  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005a1b94  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005a1b98  00 10 a0 e1                                      mov r1, r0
005a1b9c  08 00 94 e5                                      ldr r0, [r4, #8]
005a1ba0  30 b3 f5 eb                                      bl #0x30e868
005a1ba4  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005a1ba8  12 10 d4 e5                                      ldrb r1, [r4, #0x12]
005a1bac  1f 20 03 e2                                      and r2, r3, #0x1f
005a1bb0  fb 00 01 e2                                      and r0, r1, #0xfb
005a1bb4  01 00 52 e3                                      cmp r2, #1
005a1bb8  12 00 c4 e5                                      strb r0, [r4, #0x12]
005a1bbc  0b 00 00 9a                                      bls #0x5a1bf0
005a1bc0  01 20 42 e2                                      sub r2, r2, #1
005a1bc4  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a1bc8  03 30 82 e1                                      orr r3, r2, r3
005a1bcc  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a1bd0  08 20 94 e5                                      ldr r2, [r4, #8]
005a1bd4  e6 ff ff ea                                      b #0x5a1b74
005a1bd8  03 10 a0 e1                                      mov r1, r3
005a1bdc  04 00 a0 e1                                      mov r0, r4
005a1be0  00 30 94 e5                                      ldr r3, [r4]
005a1be4  0f e0 a0 e1                                      mov lr, pc
005a1be8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005a1bec  10 80 bd e8                                      pop {r4, pc}
005a1bf0  20 00 11 e3                                      tst r1, #0x20
005a1bf4  03 00 00 1a                                      bne #0x5a1c08
005a1bf8  00 30 a0 e3                                      mov r3, #0
005a1bfc  08 20 94 e5                                      ldr r2, [r4, #8]
005a1c00  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a1c04  da ff ff ea                                      b #0x5a1b74
005a1c08  00 30 94 e5                                      ldr r3, [r4]
005a1c0c  04 00 a0 e1                                      mov r0, r4
005a1c10  0f e0 a0 e1                                      mov lr, pc
005a1c14  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a1c18  f6 ff ff ea                                      b #0x5a1bf8

; FUNCTION 0x005a1c1c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZN6glitch5video7IBuffer4copyEv
; demangled: glitch::video::IBuffer::copy()
; decoder-mode: arm
005a1c1c  70 40 2d e9                                      push {r4, r5, r6, lr}
005a1c20  12 30 d0 e5                                      ldrb r3, [r0, #0x12]
005a1c24  00 40 a0 e1                                      mov r4, r0
005a1c28  01 00 13 e3                                      tst r3, #1
005a1c2c  04 00 00 0a                                      beq #0x5a1c44
005a1c30  08 30 90 e5                                      ldr r3, [r0, #8]
005a1c34  00 00 53 e3                                      cmp r3, #0
005a1c38  01 00 00 0a                                      beq #0x5a1c44
005a1c3c  00 00 a0 e3                                      mov r0, #0
005a1c40  70 80 bd e8                                      pop {r4, r5, r6, pc}
005a1c44  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a1c48  00 00 50 e3                                      cmp r0, #0
005a1c4c  fa ff ff 0a                                      beq #0x5a1c3c
005a1c50  00 10 a0 e3                                      mov r1, #0
005a1c54  08 50 94 e5                                      ldr r5, [r4, #8]
005a1c58  52 49 fe eb                                      bl #0x5341a8
005a1c5c  05 10 a0 e1                                      mov r1, r5
005a1c60  08 00 84 e5                                      str r0, [r4, #8]
005a1c64  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005a1c68  fe b2 f5 eb                                      bl #0x30e868
005a1c6c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a1c70  01 00 a0 e3                                      mov r0, #1
005a1c74  00 30 83 e1                                      orr r3, r3, r0
005a1c78  12 30 c4 e5                                      strb r3, [r4, #0x12]
005a1c7c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a1c80, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZNK6glitch5video7IBuffer5cloneEv
; demangled: glitch::video::IBuffer::clone() const
; decoder-mode: arm
005a1c80  70 40 2d e9                                      push {r4, r5, r6, lr}
005a1c84  00 30 91 e5                                      ldr r3, [r1]
005a1c88  01 40 a0 e1                                      mov r4, r1
005a1c8c  00 50 a0 e1                                      mov r5, r0
005a1c90  0f e0 a0 e1                                      mov lr, pc
005a1c94  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005a1c98  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a1c9c  01 00 13 e3                                      tst r3, #1
005a1ca0  01 00 00 0a                                      beq #0x5a1cac
005a1ca4  00 00 95 e5                                      ldr r0, [r5]
005a1ca8  db ff ff eb                                      bl #0x5a1c1c
005a1cac  05 00 a0 e1                                      mov r0, r5
005a1cb0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a1cb4, declared_size=360, range_size=360, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZN6glitch5video7IBuffer5resetEjPvb
; demangled: glitch::video::IBuffer::reset(unsigned int, void*, bool)
; decoder-mode: arm
005a1cb4  30 40 2d e9                                      push {r4, r5, lr}
005a1cb8  00 50 51 e2                                      subs r5, r1, #0
005a1cbc  0c d0 4d e2                                      sub sp, sp, #0xc
005a1cc0  00 40 a0 e1                                      mov r4, r0
005a1cc4  17 00 00 1a                                      bne #0x5a1d28
005a1cc8  12 10 d0 e5                                      ldrb r1, [r0, #0x12]
005a1ccc  01 00 11 e3                                      tst r1, #1
005a1cd0  0c 00 00 0a                                      beq #0x5a1d08
005a1cd4  08 00 90 e5                                      ldr r0, [r0, #8]
005a1cd8  00 00 50 e3                                      cmp r0, #0
005a1cdc  09 00 00 0a                                      beq #0x5a1d08
005a1ce0  f4 b0 f5 eb                                      bl #0x30e0b8
005a1ce4  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
005a1ce8  04 00 53 e3                                      cmp r3, #4
005a1cec  48 00 00 0a                                      beq #0x5a1e14
005a1cf0  08 30 94 e5                                      ldr r3, [r4, #8]
005a1cf4  00 00 53 e3                                      cmp r3, #0
005a1cf8  45 00 00 0a                                      beq #0x5a1e14
005a1cfc  12 10 d4 e5                                      ldrb r1, [r4, #0x12]
005a1d00  02 10 81 e3                                      orr r1, r1, #2
005a1d04  12 10 c4 e5                                      strb r1, [r4, #0x12]
005a1d08  01 10 81 e3                                      orr r1, r1, #1
005a1d0c  00 30 a0 e3                                      mov r3, #0
005a1d10  04 10 c1 e3                                      bic r1, r1, #4
005a1d14  12 10 c4 e5                                      strb r1, [r4, #0x12]
005a1d18  08 30 84 e5                                      str r3, [r4, #8]
005a1d1c  0c 30 84 e5                                      str r3, [r4, #0xc]
005a1d20  0c d0 8d e2                                      add sp, sp, #0xc
005a1d24  30 80 bd e8                                      pop {r4, r5, pc}
005a1d28  08 00 90 e5                                      ldr r0, [r0, #8]
005a1d2c  00 00 52 e1                                      cmp r2, r0
005a1d30  12 10 d4 05                                      ldrbeq r1, [r4, #0x12]
005a1d34  2f 00 00 0a                                      beq #0x5a1df8
005a1d38  00 00 50 e3                                      cmp r0, #0
005a1d3c  12 10 d4 05                                      ldrbeq r1, [r4, #0x12]
005a1d40  02 00 00 0a                                      beq #0x5a1d50
005a1d44  12 10 d4 e5                                      ldrb r1, [r4, #0x12]
005a1d48  01 00 11 e3                                      tst r1, #1
005a1d4c  1b 00 00 1a                                      bne #0x5a1dc0
005a1d50  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005a1d54  11 00 d4 e5                                      ldrb r0, [r4, #0x11]
005a1d58  08 20 84 e5                                      str r2, [r4, #8]
005a1d5c  0c 00 55 e1                                      cmp r5, ip
005a1d60  02 c0 a0 13                                      movne ip, #2
005a1d64  00 c0 a0 03                                      moveq ip, #0
005a1d68  04 00 50 e3                                      cmp r0, #4
005a1d6c  21 00 00 0a                                      beq #0x5a1df8
005a1d70  00 00 52 e3                                      cmp r2, #0
005a1d74  01 10 8c 01                                      orreq r1, ip, r1
005a1d78  02 10 81 13                                      orrne r1, r1, #2
005a1d7c  0c 50 84 05                                      streq r5, [r4, #0xc]
005a1d80  12 10 c4 05                                      strbeq r1, [r4, #0x12]
005a1d84  0c 50 84 15                                      strne r5, [r4, #0xc]
005a1d88  12 10 c4 15                                      strbne r1, [r4, #0x12]
005a1d8c  1c 00 00 0a                                      beq #0x5a1e04
005a1d90  00 00 53 e3                                      cmp r3, #0
005a1d94  01 10 c1 03                                      biceq r1, r1, #1
005a1d98  12 10 c4 05                                      strbeq r1, [r4, #0x12]
005a1d9c  df ff ff 0a                                      beq #0x5a1d20
005a1da0  12 10 d4 e5                                      ldrb r1, [r4, #0x12]
005a1da4  00 00 52 e3                                      cmp r2, #0
005a1da8  01 10 81 e3                                      orr r1, r1, #1
005a1dac  12 10 c4 e5                                      strb r1, [r4, #0x12]
005a1db0  da ff ff 1a                                      bne #0x5a1d20
005a1db4  04 10 c1 e3                                      bic r1, r1, #4
005a1db8  12 10 c4 e5                                      strb r1, [r4, #0x12]
005a1dbc  d7 ff ff ea                                      b #0x5a1d20
005a1dc0  04 20 8d e5                                      str r2, [sp, #4]
005a1dc4  00 30 8d e5                                      str r3, [sp]
005a1dc8  ba b0 f5 eb                                      bl #0x30e0b8
005a1dcc  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005a1dd0  11 00 d4 e5                                      ldrb r0, [r4, #0x11]
005a1dd4  04 20 9d e5                                      ldr r2, [sp, #4]
005a1dd8  0c 00 55 e1                                      cmp r5, ip
005a1ddc  02 c0 a0 13                                      movne ip, #2
005a1de0  00 c0 a0 03                                      moveq ip, #0
005a1de4  04 00 50 e3                                      cmp r0, #4
005a1de8  00 30 9d e5                                      ldr r3, [sp]
005a1dec  12 10 d4 e5                                      ldrb r1, [r4, #0x12]
005a1df0  08 20 84 e5                                      str r2, [r4, #8]
005a1df4  dd ff ff 1a                                      bne #0x5a1d70
005a1df8  00 00 52 e3                                      cmp r2, #0
005a1dfc  0c 50 84 e5                                      str r5, [r4, #0xc]
005a1e00  e2 ff ff 1a                                      bne #0x5a1d90
005a1e04  01 10 81 e3                                      orr r1, r1, #1
005a1e08  71 10 ef e6                                      uxtb r1, r1
005a1e0c  12 10 c4 e5                                      strb r1, [r4, #0x12]
005a1e10  e7 ff ff ea                                      b #0x5a1db4
005a1e14  12 10 d4 e5                                      ldrb r1, [r4, #0x12]
005a1e18  ba ff ff ea                                      b #0x5a1d08

; FUNCTION 0x005a1e1c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZN6glitch5video7IBufferD1Ev
; demangled: glitch::video::IBuffer::~IBuffer()
; decoder-mode: arm
005a1e1c  30 c0 9f e5                                      ldr ip, [pc, #0x30]
005a1e20  30 30 9f e5                                      ldr r3, [pc, #0x30]
005a1e24  00 10 a0 e3                                      mov r1, #0
005a1e28  0c c0 8f e0                                      add ip, pc, ip
005a1e2c  03 30 9c e7                                      ldr r3, [ip, r3]
005a1e30  10 40 2d e9                                      push {r4, lr}
005a1e34  08 30 83 e2                                      add r3, r3, #8
005a1e38  00 40 a0 e1                                      mov r4, r0
005a1e3c  00 30 80 e5                                      str r3, [r0]
005a1e40  01 20 a0 e1                                      mov r2, r1
005a1e44  01 30 a0 e3                                      mov r3, #1
005a1e48  99 ff ff eb                                      bl #0x5a1cb4
005a1e4c  04 00 a0 e1                                      mov r0, r4
005a1e50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005a1e54  68 2c 3f 00 28 19 00 00                          .byte 0x68, 0x2c, 0x3f, 0x00, 0x28, 0x19, 0x00, 0x00

; FUNCTION 0x005a1e5c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZN6glitch5video7IBufferD2Ev
; demangled: glitch::video::IBuffer::~IBuffer()
; decoder-mode: arm
005a1e5c  30 c0 9f e5                                      ldr ip, [pc, #0x30]
005a1e60  30 30 9f e5                                      ldr r3, [pc, #0x30]
005a1e64  00 10 a0 e3                                      mov r1, #0
005a1e68  0c c0 8f e0                                      add ip, pc, ip
005a1e6c  03 30 9c e7                                      ldr r3, [ip, r3]
005a1e70  10 40 2d e9                                      push {r4, lr}
005a1e74  08 30 83 e2                                      add r3, r3, #8
005a1e78  00 40 a0 e1                                      mov r4, r0
005a1e7c  00 30 80 e5                                      str r3, [r0]
005a1e80  01 20 a0 e1                                      mov r2, r1
005a1e84  01 30 a0 e3                                      mov r3, #1
005a1e88  89 ff ff eb                                      bl #0x5a1cb4
005a1e8c  04 00 a0 e1                                      mov r0, r4
005a1e90  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005a1e94  28 2c 3f 00 28 19 00 00                          .byte 0x28, 0x2c, 0x3f, 0x00, 0x28, 0x19, 0x00, 0x00

; FUNCTION 0x005a1e9c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZN6glitch5video7IBufferD0Ev
; demangled: glitch::video::IBuffer::~IBuffer()
; decoder-mode: arm
005a1e9c  10 40 2d e9                                      push {r4, lr}
005a1ea0  00 40 a0 e1                                      mov r4, r0
005a1ea4  dc ff ff eb                                      bl #0x5a1e1c
005a1ea8  04 00 a0 e1                                      mov r0, r4
005a1eac  ff b0 f5 eb                                      bl #0x30e2b0
005a1eb0  04 00 a0 e1                                      mov r0, r4
005a1eb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00637a68, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::IBuffer
; alias: _ZNK6glitch5video7IBuffer5unmapEv
; demangled: glitch::video::IBuffer::unmap() const
; decoder-mode: arm
00637a68  13 30 d0 e5                                      ldrb r3, [r0, #0x13]
00637a6c  10 40 2d e9                                      push {r4, lr}
00637a70  1f 20 03 e2                                      and r2, r3, #0x1f
00637a74  01 00 52 e3                                      cmp r2, #1
00637a78  00 40 a0 e1                                      mov r4, r0
00637a7c  04 00 00 9a                                      bls #0x637a94
00637a80  01 20 42 e2                                      sub r2, r2, #1
00637a84  1f 30 c3 e3                                      bic r3, r3, #0x1f
00637a88  03 30 82 e1                                      orr r3, r2, r3
00637a8c  13 30 c0 e5                                      strb r3, [r0, #0x13]
00637a90  10 80 bd e8                                      pop {r4, pc}
00637a94  12 30 d0 e5                                      ldrb r3, [r0, #0x12]
00637a98  20 00 13 e3                                      tst r3, #0x20
00637a9c  02 00 00 1a                                      bne #0x637aac
00637aa0  00 30 a0 e3                                      mov r3, #0
00637aa4  13 30 c4 e5                                      strb r3, [r4, #0x13]
00637aa8  10 80 bd e8                                      pop {r4, pc}
00637aac  00 30 90 e5                                      ldr r3, [r0]
00637ab0  0f e0 a0 e1                                      mov lr, pc
00637ab4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00637ab8  00 30 a0 e3                                      mov r3, #0
00637abc  13 30 c4 e5                                      strb r3, [r4, #0x13]
00637ac0  10 80 bd e8                                      pop {r4, pc}
