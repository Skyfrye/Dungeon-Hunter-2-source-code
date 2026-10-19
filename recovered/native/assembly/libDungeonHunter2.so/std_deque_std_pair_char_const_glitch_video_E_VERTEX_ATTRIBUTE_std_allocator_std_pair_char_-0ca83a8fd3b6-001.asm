; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006db880, declared_size=252, range_size=252, mode=arm
; class-group: std::deque<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >
; alias: _ZNSt5dequeISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS6_EEC1ERKS8_
; demangled: std::deque<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >::deque(std::deque<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > > const&)
; decoder-mode: arm
006db880  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006db884  7c d0 4d e2                                      sub sp, sp, #0x7c
006db888  01 50 a0 e1                                      mov r5, r1
006db88c  64 c0 8d e2                                      add ip, sp, #0x64
006db890  00 40 a0 e1                                      mov r4, r0
006db894  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
006db898  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
006db89c  0c 10 a0 e1                                      mov r1, ip
006db8a0  10 00 85 e2                                      add r0, r5, #0x10
006db8a4  54 fe ff eb                                      bl #0x6db1fc
006db8a8  00 60 a0 e3                                      mov r6, #0
006db8ac  00 10 a0 e1                                      mov r1, r0
006db8b0  00 60 84 e5                                      str r6, [r4]
006db8b4  04 00 a0 e1                                      mov r0, r4
006db8b8  04 60 84 e5                                      str r6, [r4, #4]
006db8bc  08 60 84 e5                                      str r6, [r4, #8]
006db8c0  0c 60 84 e5                                      str r6, [r4, #0xc]
006db8c4  10 60 84 e5                                      str r6, [r4, #0x10]
006db8c8  14 60 84 e5                                      str r6, [r4, #0x14]
006db8cc  18 60 84 e5                                      str r6, [r4, #0x18]
006db8d0  1c 60 84 e5                                      str r6, [r4, #0x1c]
006db8d4  20 60 84 e5                                      str r6, [r4, #0x20]
006db8d8  24 60 84 e5                                      str r6, [r4, #0x24]
006db8dc  bc ff ff eb                                      bl #0x6db7d4
006db8e0  0c 70 95 e5                                      ldr r7, [r5, #0xc]
006db8e4  10 c0 95 e5                                      ldr ip, [r5, #0x10]
006db8e8  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
006db8ec  18 90 95 e5                                      ldr sb, [r5, #0x18]
006db8f0  14 e0 95 e5                                      ldr lr, [r5, #0x14]
006db8f4  01 05 95 e8                                      ldm r5, {r0, r8, sl}
006db8f8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006db8fc  08 20 94 e5                                      ldr r2, [r4, #8]
006db900  04 30 94 e5                                      ldr r3, [r4, #4]
006db904  00 50 94 e5                                      ldr r5, [r4]
006db908  4c 90 8d e5                                      str sb, [sp, #0x4c]
006db90c  48 e0 8d e5                                      str lr, [sp, #0x48]
006db910  44 c0 8d e5                                      str ip, [sp, #0x44]
006db914  50 b0 8d e5                                      str fp, [sp, #0x50]
006db918  30 10 8d e5                                      str r1, [sp, #0x30]
006db91c  2c 20 8d e5                                      str r2, [sp, #0x2c]
006db920  28 30 8d e5                                      str r3, [sp, #0x28]
006db924  24 50 8d e5                                      str r5, [sp, #0x24]
006db928  04 c0 8d e2                                      add ip, sp, #4
006db92c  44 90 8d e2                                      add sb, sp, #0x44
006db930  54 00 8d e5                                      str r0, [sp, #0x54]
006db934  5c a0 8d e5                                      str sl, [sp, #0x5c]
006db938  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
006db93c  58 80 8d e5                                      str r8, [sp, #0x58]
006db940  60 70 8d e5                                      str r7, [sp, #0x60]
006db944  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
006db948  24 30 8d e2                                      add r3, sp, #0x24
006db94c  54 e0 8d e2                                      add lr, sp, #0x54
006db950  14 30 8d e5                                      str r3, [sp, #0x14]
006db954  74 30 8d e2                                      add r3, sp, #0x74
006db958  18 30 8d e5                                      str r3, [sp, #0x18]
006db95c  34 00 8d e2                                      add r0, sp, #0x34
006db960  0e 00 9e e8                                      ldm lr, {r1, r2, r3}
006db964  1c 60 8d e5                                      str r6, [sp, #0x1c]
006db968  00 70 8d e5                                      str r7, [sp]
006db96c  33 fe ff eb                                      bl #0x6db240
006db970  04 00 a0 e1                                      mov r0, r4
006db974  7c d0 8d e2                                      add sp, sp, #0x7c
006db978  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006db97c, declared_size=396, range_size=396, mode=arm
; class-group: std::deque<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >
; alias: _ZNSt5dequeISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS6_EE18_M_push_back_aux_vERKS6_
; demangled: std::deque<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >::_M_push_back_aux_v(std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> const&)
; decoder-mode: arm
006db97c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006db980  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
006db984  20 20 90 e5                                      ldr r2, [r0, #0x20]
006db988  24 30 90 e5                                      ldr r3, [r0, #0x24]
006db98c  01 50 a0 e1                                      mov r5, r1
006db990  0a 10 62 e0                                      rsb r1, r2, sl
006db994  41 11 43 e0                                      sub r1, r3, r1, asr #2
006db998  01 00 51 e3                                      cmp r1, #1
006db99c  00 40 a0 e1                                      mov r4, r0
006db9a0  10 00 00 9a                                      bls #0x6db9e8
006db9a4  24 00 84 e2                                      add r0, r4, #0x24
006db9a8  48 ff ff eb                                      bl #0x6db6d0
006db9ac  04 00 8a e5                                      str r0, [sl, #4]
006db9b0  00 20 95 e5                                      ldr r2, [r5]
006db9b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
006db9b8  00 20 83 e5                                      str r2, [r3]
006db9bc  04 20 95 e5                                      ldr r2, [r5, #4]
006db9c0  04 20 83 e5                                      str r2, [r3, #4]
006db9c4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006db9c8  04 20 83 e2                                      add r2, r3, #4
006db9cc  1c 20 84 e5                                      str r2, [r4, #0x1c]
006db9d0  04 30 93 e5                                      ldr r3, [r3, #4]
006db9d4  80 20 83 e2                                      add r2, r3, #0x80
006db9d8  10 30 84 e5                                      str r3, [r4, #0x10]
006db9dc  18 20 84 e5                                      str r2, [r4, #0x18]
006db9e0  14 30 84 e5                                      str r3, [r4, #0x14]
006db9e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006db9e8  0c 10 90 e5                                      ldr r1, [r0, #0xc]
006db9ec  0a 70 61 e0                                      rsb r7, r1, sl
006db9f0  47 71 a0 e1                                      asr r7, r7, #2
006db9f4  01 70 87 e2                                      add r7, r7, #1
006db9f8  01 90 87 e2                                      add sb, r7, #1
006db9fc  89 00 53 e1                                      cmp r3, sb, lsl #1
006dba00  0a 00 00 9a                                      bls #0x6dba30
006dba04  03 60 69 e0                                      rsb r6, sb, r3
006dba08  a6 60 a0 e1                                      lsr r6, r6, #1
006dba0c  06 61 82 e0                                      add r6, r2, r6, lsl #2
006dba10  06 00 51 e1                                      cmp r1, r6
006dba14  2e 00 00 9a                                      bls #0x6dbad4
006dba18  04 20 8a e2                                      add r2, sl, #4
006dba1c  01 20 52 e0                                      subs r2, r2, r1
006dba20  1e 00 00 0a                                      beq #0x6dbaa0
006dba24  06 00 a0 e1                                      mov r0, r6
006dba28  42 c9 f0 eb                                      bl #0x30df38
006dba2c  1b 00 00 ea                                      b #0x6dbaa0
006dba30  00 00 53 e3                                      cmp r3, #0
006dba34  03 20 a0 11                                      movne r2, r3
006dba38  01 20 a0 03                                      moveq r2, #1
006dba3c  02 80 83 e2                                      add r8, r3, #2
006dba40  02 80 88 e0                                      add r8, r8, r2
006dba44  08 10 a0 e1                                      mov r1, r8
006dba48  00 20 a0 e3                                      mov r2, #0
006dba4c  20 00 80 e2                                      add r0, r0, #0x20
006dba50  47 ff ff eb                                      bl #0x6db774
006dba54  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
006dba58  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006dba5c  08 60 69 e0                                      rsb r6, sb, r8
006dba60  a6 60 a0 e1                                      lsr r6, r6, #1
006dba64  04 20 82 e2                                      add r2, r2, #4
006dba68  01 20 52 e0                                      subs r2, r2, r1
006dba6c  00 a0 a0 e1                                      mov sl, r0
006dba70  06 61 80 e0                                      add r6, r0, r6, lsl #2
006dba74  20 00 00 1a                                      bne #0x6dbafc
006dba78  20 00 94 e5                                      ldr r0, [r4, #0x20]
006dba7c  24 10 94 e5                                      ldr r1, [r4, #0x24]
006dba80  00 00 50 e3                                      cmp r0, #0
006dba84  03 00 00 0a                                      beq #0x6dba98
006dba88  01 11 a0 e1                                      lsl r1, r1, #2
006dba8c  80 00 51 e3                                      cmp r1, #0x80
006dba90  17 00 00 8a                                      bhi #0x6dbaf4
006dba94  19 b5 00 eb                                      bl #0x708f00
006dba98  20 a0 84 e5                                      str sl, [r4, #0x20]
006dba9c  24 80 84 e5                                      str r8, [r4, #0x24]
006dbaa0  0c 60 84 e5                                      str r6, [r4, #0xc]
006dbaa4  00 30 96 e5                                      ldr r3, [r6]
006dbaa8  01 70 47 e2                                      sub r7, r7, #1
006dbaac  07 a1 86 e0                                      add sl, r6, r7, lsl #2
006dbab0  80 20 83 e2                                      add r2, r3, #0x80
006dbab4  08 20 84 e5                                      str r2, [r4, #8]
006dbab8  04 30 84 e5                                      str r3, [r4, #4]
006dbabc  1c a0 84 e5                                      str sl, [r4, #0x1c]
006dbac0  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
006dbac4  80 20 83 e2                                      add r2, r3, #0x80
006dbac8  18 20 84 e5                                      str r2, [r4, #0x18]
006dbacc  14 30 84 e5                                      str r3, [r4, #0x14]
006dbad0  b3 ff ff ea                                      b #0x6db9a4
006dbad4  04 20 8a e2                                      add r2, sl, #4
006dbad8  02 20 61 e0                                      rsb r2, r1, r2
006dbadc  00 00 52 e3                                      cmp r2, #0
006dbae0  ee ff ff da                                      ble #0x6dbaa0
006dbae4  07 01 86 e0                                      add r0, r6, r7, lsl #2
006dbae8  00 00 62 e0                                      rsb r0, r2, r0
006dbaec  11 c9 f0 eb                                      bl #0x30df38
006dbaf0  ea ff ff ea                                      b #0x6dbaa0
006dbaf4  ed c9 f0 eb                                      bl #0x30e2b0
006dbaf8  e6 ff ff ea                                      b #0x6dba98
006dbafc  06 00 a0 e1                                      mov r0, r6
006dbb00  0c c9 f0 eb                                      bl #0x30df38
006dbb04  db ff ff ea                                      b #0x6dba78
