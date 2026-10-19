; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056eb48, declared_size=4, range_size=4, mode=arm
; class-group: boost::detail::sp_counted_base
; alias: _ZN5boost6detail15sp_counted_baseD1Ev
; demangled: boost::detail::sp_counted_base::~sp_counted_base()
; decoder-mode: arm
0056eb48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056eb4c, declared_size=28, range_size=28, mode=arm
; class-group: boost::detail::sp_counted_base
; alias: _ZN5boost6detail15sp_counted_base7destroyEv
; demangled: boost::detail::sp_counted_base::destroy()
; decoder-mode: arm
0056eb4c  00 30 50 e2                                      subs r3, r0, #0
0056eb50  10 40 2d e9                                      push {r4, lr}
0056eb54  02 00 00 0a                                      beq #0x56eb64
0056eb58  00 30 93 e5                                      ldr r3, [r3]
0056eb5c  0f e0 a0 e1                                      mov lr, pc
0056eb60  04 f0 93 e5                                      ldr pc, [r3, #4]
0056eb64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056ef3c, declared_size=20, range_size=20, mode=arm
; class-group: boost::detail::sp_counted_base
; alias: _ZN5boost6detail15sp_counted_baseD0Ev
; demangled: boost::detail::sp_counted_base::~sp_counted_base()
; decoder-mode: arm
0056ef3c  10 40 2d e9                                      push {r4, lr}
0056ef40  00 40 a0 e1                                      mov r4, r0
0056ef44  d9 7c f6 eb                                      bl #0x30e2b0
0056ef48  04 00 a0 e1                                      mov r0, r4
0056ef4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056efb0, declared_size=160, range_size=160, mode=arm
; class-group: boost::detail::sp_counted_base
; alias: _ZN5boost6detail15sp_counted_base12weak_releaseEv
; demangled: boost::detail::sp_counted_base::weak_release()
; decoder-mode: arm
0056efb0  7d 3c 00 e3                                      movw r3, #0xc7d
0056efb4  08 20 80 e2                                      add r2, r0, #8
0056efb8  ce 37 4c e3                                      movt r3, #0xc7ce
0056efbc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056efc0  93 12 8a e0                                      umull r1, sl, r3, r2
0056efc4  29 10 a0 e3                                      mov r1, #0x29
0056efc8  78 30 9f e5                                      ldr r3, [pc, #0x78]
0056efcc  aa a2 a0 e1                                      lsr sl, sl, #5
0056efd0  91 2a 6a e0                                      mls sl, r1, sl, r2
0056efd4  70 20 9f e5                                      ldr r2, [pc, #0x70]
0056efd8  03 30 8f e0                                      add r3, pc, r3
0056efdc  00 70 a0 e1                                      mov r7, r0
0056efe0  02 80 93 e7                                      ldr r8, [r3, r2]
0056efe4  01 60 a0 e3                                      mov r6, #1
0056efe8  0a 51 88 e0                                      add r5, r8, sl, lsl #2
0056efec  96 30 05 e1                                      swp r3, r6, [r5]
0056eff0  00 00 53 e3                                      cmp r3, #0
0056eff4  06 00 00 0a                                      beq #0x56f014
0056eff8  00 40 a0 e3                                      mov r4, #0
0056effc  04 00 a0 e1                                      mov r0, r4
0056f000  8b ff ff eb                                      bl #0x56ee34
0056f004  01 40 84 e2                                      add r4, r4, #1
0056f008  96 30 05 e1                                      swp r3, r6, [r5]
0056f00c  00 00 53 e3                                      cmp r3, #0
0056f010  f9 ff ff 1a                                      bne #0x56effc
0056f014  08 30 97 e5                                      ldr r3, [r7, #8]
0056f018  01 20 43 e2                                      sub r2, r3, #1
0056f01c  08 20 87 e5                                      str r2, [r7, #8]
0056f020  01 00 53 e3                                      cmp r3, #1
0056f024  00 30 a0 e3                                      mov r3, #0
0056f028  0a 31 88 e7                                      str r3, [r8, sl, lsl #2]
0056f02c  00 00 00 0a                                      beq #0x56f034
0056f030  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056f034  07 00 a0 e1                                      mov r0, r7
0056f038  00 30 97 e5                                      ldr r3, [r7]
0056f03c  0f e0 a0 e1                                      mov lr, pc
0056f040  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056f044  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0056f048  b8 5a 42 00 14 18 00 00                          .byte 0xb8, 0x5a, 0x42, 0x00, 0x14, 0x18, 0x00, 0x00

; FUNCTION 0x0056f050, declared_size=168, range_size=168, mode=arm
; class-group: boost::detail::sp_counted_base
; alias: _ZN5boost6detail15sp_counted_base7releaseEv
; demangled: boost::detail::sp_counted_base::release()
; decoder-mode: arm
0056f050  7d 3c 00 e3                                      movw r3, #0xc7d
0056f054  04 20 80 e2                                      add r2, r0, #4
0056f058  ce 37 4c e3                                      movt r3, #0xc7ce
0056f05c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056f060  93 12 8a e0                                      umull r1, sl, r3, r2
0056f064  29 10 a0 e3                                      mov r1, #0x29
0056f068  80 30 9f e5                                      ldr r3, [pc, #0x80]
0056f06c  aa a2 a0 e1                                      lsr sl, sl, #5
0056f070  91 2a 6a e0                                      mls sl, r1, sl, r2
0056f074  78 20 9f e5                                      ldr r2, [pc, #0x78]
0056f078  03 30 8f e0                                      add r3, pc, r3
0056f07c  00 70 a0 e1                                      mov r7, r0
0056f080  02 80 93 e7                                      ldr r8, [r3, r2]
0056f084  01 60 a0 e3                                      mov r6, #1
0056f088  0a 51 88 e0                                      add r5, r8, sl, lsl #2
0056f08c  96 30 05 e1                                      swp r3, r6, [r5]
0056f090  00 00 53 e3                                      cmp r3, #0
0056f094  06 00 00 0a                                      beq #0x56f0b4
0056f098  00 40 a0 e3                                      mov r4, #0
0056f09c  04 00 a0 e1                                      mov r0, r4
0056f0a0  63 ff ff eb                                      bl #0x56ee34
0056f0a4  01 40 84 e2                                      add r4, r4, #1
0056f0a8  96 30 05 e1                                      swp r3, r6, [r5]
0056f0ac  00 00 53 e3                                      cmp r3, #0
0056f0b0  f9 ff ff 1a                                      bne #0x56f09c
0056f0b4  04 30 97 e5                                      ldr r3, [r7, #4]
0056f0b8  01 20 43 e2                                      sub r2, r3, #1
0056f0bc  04 20 87 e5                                      str r2, [r7, #4]
0056f0c0  01 00 53 e3                                      cmp r3, #1
0056f0c4  00 30 a0 e3                                      mov r3, #0
0056f0c8  0a 31 88 e7                                      str r3, [r8, sl, lsl #2]
0056f0cc  00 00 00 0a                                      beq #0x56f0d4
0056f0d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056f0d4  07 00 a0 e1                                      mov r0, r7
0056f0d8  00 30 97 e5                                      ldr r3, [r7]
0056f0dc  0f e0 a0 e1                                      mov lr, pc
0056f0e0  08 f0 93 e5                                      ldr pc, [r3, #8]
0056f0e4  07 00 a0 e1                                      mov r0, r7
0056f0e8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0056f0ec  af ff ff ea                                      b #0x56efb0
; mapping-symbol data/literal pool
0056f0f0  18 5a 42 00 14 18 00 00                          .byte 0x18, 0x5a, 0x42, 0x00, 0x14, 0x18, 0x00, 0x00
