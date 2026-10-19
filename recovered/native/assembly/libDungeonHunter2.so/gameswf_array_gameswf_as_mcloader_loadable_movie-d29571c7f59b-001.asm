; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a25d0, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::as_mcloader::loadable_movie>
; alias: _ZN7gameswf5arrayINS_11as_mcloader14loadable_movieEE7reserveEi
; demangled: gameswf::array<gameswf::as_mcloader::loadable_movie>::reserve(int)
; decoder-mode: arm
007a25d0  10 40 2d e9                                      push {r4, lr}
007a25d4  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007a25d8  00 40 a0 e1                                      mov r4, r0
007a25dc  00 00 53 e3                                      cmp r3, #0
007a25e0  0f 00 00 1a                                      bne #0x7a2624
007a25e4  00 00 51 e3                                      cmp r1, #0
007a25e8  08 20 90 e5                                      ldr r2, [r0, #8]
007a25ec  08 10 80 e5                                      str r1, [r0, #8]
007a25f0  0c 00 00 1a                                      bne #0x7a2628
007a25f4  00 00 90 e5                                      ldr r0, [r0]
007a25f8  00 00 50 e3                                      cmp r0, #0
007a25fc  01 00 00 0a                                      beq #0x7a2608
007a2600  02 12 a0 e1                                      lsl r1, r2, #4
007a2604  4b c1 fe eb                                      bl #0x752b38
007a2608  00 30 a0 e3                                      mov r3, #0
007a260c  00 30 84 e5                                      str r3, [r4]
007a2610  10 80 bd e8                                      pop {r4, pc}
007a2614  01 02 a0 e1                                      lsl r0, r1, #4
007a2618  0c 10 a0 e1                                      mov r1, ip
007a261c  5e c1 fe eb                                      bl #0x752b9c
007a2620  00 00 84 e5                                      str r0, [r4]
007a2624  10 80 bd e8                                      pop {r4, pc}
007a2628  00 c0 90 e5                                      ldr ip, [r0]
007a262c  00 00 5c e3                                      cmp ip, #0
007a2630  f7 ff ff 0a                                      beq #0x7a2614
007a2634  0c 00 a0 e1                                      mov r0, ip
007a2638  01 12 a0 e1                                      lsl r1, r1, #4
007a263c  02 22 a0 e1                                      lsl r2, r2, #4
007a2640  59 c1 fe eb                                      bl #0x752bac
007a2644  00 00 84 e5                                      str r0, [r4]
007a2648  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a2904, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::array<gameswf::as_mcloader::loadable_movie>
; alias: _ZN7gameswf5arrayINS_11as_mcloader14loadable_movieEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::as_mcloader::loadable_movie>::resize(int) [clone .clone.0]
; decoder-mode: arm
007a2904  70 40 2d e9                                      push {r4, r5, r6, lr}
007a2908  04 40 90 e5                                      ldr r4, [r0, #4]
007a290c  00 60 a0 e1                                      mov r6, r0
007a2910  00 00 54 e3                                      cmp r4, #0
007a2914  09 00 00 da                                      ble #0x7a2940
007a2918  00 50 a0 e3                                      mov r5, #0
007a291c  00 00 96 e5                                      ldr r0, [r6]
007a2920  05 02 80 e0                                      add r0, r0, r5, lsl #4
007a2924  01 50 85 e2                                      add r5, r5, #1
007a2928  81 ff ff eb                                      bl #0x7a2734
007a292c  04 00 55 e1                                      cmp r5, r4
007a2930  f9 ff ff 1a                                      bne #0x7a291c
007a2934  00 30 a0 e3                                      mov r3, #0
007a2938  04 30 86 e5                                      str r3, [r6, #4]
007a293c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a2940  fb ff ff aa                                      bge #0x7a2934
007a2944  04 22 a0 e1                                      lsl r2, r4, #4
007a2948  00 30 a0 e3                                      mov r3, #0
007a294c  00 00 96 e5                                      ldr r0, [r6]
007a2950  01 40 94 e2                                      adds r4, r4, #1
007a2954  02 10 80 e0                                      add r1, r0, r2
007a2958  02 30 80 e7                                      str r3, [r0, r2]
007a295c  0c 30 81 e5                                      str r3, [r1, #0xc]
007a2960  04 30 81 e5                                      str r3, [r1, #4]
007a2964  08 30 81 e5                                      str r3, [r1, #8]
007a2968  10 20 82 e2                                      add r2, r2, #0x10
007a296c  f6 ff ff 1a                                      bne #0x7a294c
007a2970  00 30 a0 e3                                      mov r3, #0
007a2974  04 30 86 e5                                      str r3, [r6, #4]
007a2978  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007a297c, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::array<gameswf::as_mcloader::loadable_movie>
; alias: _ZN7gameswf5arrayINS_11as_mcloader14loadable_movieEE6removeEi
; demangled: gameswf::array<gameswf::as_mcloader::loadable_movie>::remove(int)
; decoder-mode: arm
007a297c  70 40 2d e9                                      push {r4, r5, r6, lr}
007a2980  04 30 90 e5                                      ldr r3, [r0, #4]
007a2984  00 40 a0 e1                                      mov r4, r0
007a2988  01 60 a0 e1                                      mov r6, r1
007a298c  01 00 53 e3                                      cmp r3, #1
007a2990  0f 00 00 0a                                      beq #0x7a29d4
007a2994  00 00 90 e5                                      ldr r0, [r0]
007a2998  01 52 a0 e1                                      lsl r5, r1, #4
007a299c  05 00 80 e0                                      add r0, r0, r5
007a29a0  63 ff ff eb                                      bl #0x7a2734
007a29a4  09 00 94 e8                                      ldm r4, {r0, r3}
007a29a8  01 10 86 e2                                      add r1, r6, #1
007a29ac  01 30 43 e2                                      sub r3, r3, #1
007a29b0  03 60 66 e0                                      rsb r6, r6, r3
007a29b4  01 12 80 e0                                      add r1, r0, r1, lsl #4
007a29b8  06 22 a0 e1                                      lsl r2, r6, #4
007a29bc  05 00 80 e0                                      add r0, r0, r5
007a29c0  5c ad ed eb                                      bl #0x30df38
007a29c4  04 30 94 e5                                      ldr r3, [r4, #4]
007a29c8  01 30 43 e2                                      sub r3, r3, #1
007a29cc  04 30 84 e5                                      str r3, [r4, #4]
007a29d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a29d4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a29d8  c9 ff ff ea                                      b #0x7a2904
