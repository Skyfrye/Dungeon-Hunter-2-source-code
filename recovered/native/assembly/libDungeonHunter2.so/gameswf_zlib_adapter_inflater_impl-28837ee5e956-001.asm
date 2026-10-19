; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b7b20, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::zlib_adapter::inflater_impl
; alias: _ZN7gameswf12zlib_adapter13inflater_impl19rewind_unused_bytesEv
; demangled: gameswf::zlib_adapter::inflater_impl::rewind_unused_bytes()
; decoder-mode: arm
007b7b20  10 40 2d e9                                      push {r4, lr}
007b7b24  08 30 90 e5                                      ldr r3, [r0, #8]
007b7b28  00 40 a0 e1                                      mov r4, r0
007b7b2c  00 00 53 e3                                      cmp r3, #0
007b7b30  09 00 00 0a                                      beq #0x7b7b5c
007b7b34  00 30 90 e5                                      ldr r3, [r0]
007b7b38  00 00 93 e5                                      ldr r0, [r3]
007b7b3c  0f e0 a0 e1                                      mov lr, pc
007b7b40  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007b7b44  08 20 94 e5                                      ldr r2, [r4, #8]
007b7b48  00 30 94 e5                                      ldr r3, [r4]
007b7b4c  00 00 62 e0                                      rsb r0, r2, r0
007b7b50  00 10 93 e5                                      ldr r1, [r3]
007b7b54  0f e0 a0 e1                                      mov lr, pc
007b7b58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007b7b5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b7b78, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::zlib_adapter::inflater_impl
; alias: _ZN7gameswf12zlib_adapter13inflater_implC1EPNS_7tu_fileE
; demangled: gameswf::zlib_adapter::inflater_impl::inflater_impl(gameswf::tu_file*)
; decoder-mode: arm
007b7b78  70 40 2d e9                                      push {r4, r5, r6, lr}
007b7b7c  00 10 80 e5                                      str r1, [r0]
007b7b80  00 40 a0 e1                                      mov r4, r0
007b7b84  00 00 91 e5                                      ldr r0, [r1]
007b7b88  0f e0 a0 e1                                      mov lr, pc
007b7b8c  18 f0 91 e5                                      ldr pc, [r1, #0x18]
007b7b90  54 10 9f e5                                      ldr r1, [pc, #0x54]
007b7b94  00 30 a0 e3                                      mov r3, #0
007b7b98  48 50 01 e3                                      movw r5, #0x1048
007b7b9c  3c 00 84 e5                                      str r0, [r4, #0x3c]
007b7ba0  14 30 84 e5                                      str r3, [r4, #0x14]
007b7ba4  40 30 84 e5                                      str r3, [r4, #0x40]
007b7ba8  44 30 c4 e5                                      strb r3, [r4, #0x44]
007b7bac  01 10 8f e0                                      add r1, pc, r1
007b7bb0  05 30 84 e7                                      str r3, [r4, r5]
007b7bb4  04 00 84 e2                                      add r0, r4, #4
007b7bb8  24 30 84 e5                                      str r3, [r4, #0x24]
007b7bbc  28 30 84 e5                                      str r3, [r4, #0x28]
007b7bc0  2c 30 84 e5                                      str r3, [r4, #0x2c]
007b7bc4  04 30 84 e5                                      str r3, [r4, #4]
007b7bc8  08 30 84 e5                                      str r3, [r4, #8]
007b7bcc  10 30 84 e5                                      str r3, [r4, #0x10]
007b7bd0  38 20 a0 e3                                      mov r2, #0x38
007b7bd4  2a eb fa eb                                      bl #0x672884
007b7bd8  00 00 50 e3                                      cmp r0, #0
007b7bdc  01 30 a0 13                                      movne r3, #1
007b7be0  05 30 84 17                                      strne r3, [r4, r5]
007b7be4  04 00 a0 e1                                      mov r0, r4
007b7be8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007b7bec  b4 75 12 00                                      .byte 0xb4, 0x75, 0x12, 0x00

; FUNCTION 0x007b7ce8, declared_size=212, range_size=212, mode=arm
; class-group: gameswf::zlib_adapter::inflater_impl
; alias: _ZN7gameswf12zlib_adapter13inflater_impl19inflate_from_streamEPvi
; demangled: gameswf::zlib_adapter::inflater_impl::inflate_from_stream(void*, int)
; decoder-mode: arm
007b7ce8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b7cec  48 30 01 e3                                      movw r3, #0x1048
007b7cf0  03 30 90 e7                                      ldr r3, [r0, r3]
007b7cf4  00 40 a0 e1                                      mov r4, r0
007b7cf8  02 70 a0 e1                                      mov r7, r2
007b7cfc  00 00 53 e3                                      cmp r3, #0
007b7d00  1f 00 00 1a                                      bne #0x7b7d84
007b7d04  10 10 80 e5                                      str r1, [r0, #0x10]
007b7d08  45 50 80 e2                                      add r5, r0, #0x45
007b7d0c  14 20 84 e5                                      str r2, [r4, #0x14]
007b7d10  04 60 80 e2                                      add r6, r0, #4
007b7d14  08 30 94 e5                                      ldr r3, [r4, #8]
007b7d18  01 1a a0 e3                                      mov r1, #0x1000
007b7d1c  05 00 a0 e1                                      mov r0, r5
007b7d20  00 00 53 e3                                      cmp r3, #0
007b7d24  07 00 00 1a                                      bne #0x7b7d48
007b7d28  00 30 94 e5                                      ldr r3, [r4]
007b7d2c  00 20 93 e5                                      ldr r2, [r3]
007b7d30  0f e0 a0 e1                                      mov lr, pc
007b7d34  08 f0 93 e5                                      ldr pc, [r3, #8]
007b7d38  00 00 50 e3                                      cmp r0, #0
007b7d3c  13 00 00 0a                                      beq #0x7b7d90
007b7d40  08 00 84 e5                                      str r0, [r4, #8]
007b7d44  04 50 84 e5                                      str r5, [r4, #4]
007b7d48  06 00 a0 e1                                      mov r0, r6
007b7d4c  02 10 a0 e3                                      mov r1, #2
007b7d50  7c ec fa eb                                      bl #0x672f48
007b7d54  01 00 50 e3                                      cmp r0, #1
007b7d58  0b 00 00 0a                                      beq #0x7b7d8c
007b7d5c  00 00 50 e3                                      cmp r0, #0
007b7d60  10 00 00 1a                                      bne #0x7b7da8
007b7d64  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b7d68  00 00 50 e3                                      cmp r0, #0
007b7d6c  e8 ff ff 1a                                      bne #0x7b7d14
007b7d70  40 30 94 e5                                      ldr r3, [r4, #0x40]
007b7d74  07 00 60 e0                                      rsb r0, r0, r7
007b7d78  00 30 83 e0                                      add r3, r3, r0
007b7d7c  40 30 84 e5                                      str r3, [r4, #0x40]
007b7d80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b7d84  00 00 a0 e3                                      mov r0, #0
007b7d88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b7d8c  44 00 c4 e5                                      strb r0, [r4, #0x44]
007b7d90  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b7d94  40 30 94 e5                                      ldr r3, [r4, #0x40]
007b7d98  07 00 60 e0                                      rsb r0, r0, r7
007b7d9c  00 30 83 e0                                      add r3, r3, r0
007b7da0  40 30 84 e5                                      str r3, [r4, #0x40]
007b7da4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b7da8  01 20 a0 e3                                      mov r2, #1
007b7dac  48 30 01 e3                                      movw r3, #0x1048
007b7db0  03 20 84 e7                                      str r2, [r4, r3]
007b7db4  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b7db8  ec ff ff ea                                      b #0x7b7d70

; FUNCTION 0x007b7e88, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::zlib_adapter::inflater_impl
; alias: _ZN7gameswf12zlib_adapter13inflater_impl5resetEv
; demangled: gameswf::zlib_adapter::inflater_impl::reset()
; decoder-mode: arm
007b7e88  70 40 2d e9                                      push {r4, r5, r6, lr}
007b7e8c  00 30 a0 e3                                      mov r3, #0
007b7e90  48 60 01 e3                                      movw r6, #0x1048
007b7e94  44 30 c0 e5                                      strb r3, [r0, #0x44]
007b7e98  00 40 a0 e1                                      mov r4, r0
007b7e9c  06 30 80 e7                                      str r3, [r0, r6]
007b7ea0  04 00 80 e2                                      add r0, r0, #4
007b7ea4  f8 e9 fa eb                                      bl #0x67268c
007b7ea8  00 50 50 e2                                      subs r5, r0, #0
007b7eac  02 00 00 0a                                      beq #0x7b7ebc
007b7eb0  01 30 a0 e3                                      mov r3, #1
007b7eb4  06 30 84 e7                                      str r3, [r4, r6]
007b7eb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007b7ebc  00 30 94 e5                                      ldr r3, [r4]
007b7ec0  04 50 84 e5                                      str r5, [r4, #4]
007b7ec4  08 50 84 e5                                      str r5, [r4, #8]
007b7ec8  10 50 84 e5                                      str r5, [r4, #0x10]
007b7ecc  14 50 84 e5                                      str r5, [r4, #0x14]
007b7ed0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007b7ed4  00 10 93 e5                                      ldr r1, [r3]
007b7ed8  0f e0 a0 e1                                      mov lr, pc
007b7edc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007b7ee0  40 50 84 e5                                      str r5, [r4, #0x40]
007b7ee4  70 80 bd e8                                      pop {r4, r5, r6, pc}
