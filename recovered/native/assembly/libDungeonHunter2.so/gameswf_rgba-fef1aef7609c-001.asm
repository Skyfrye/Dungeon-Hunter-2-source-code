; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007954d8, declared_size=296, range_size=296, mode=arm
; class-group: gameswf::rgba
; alias: _ZN7gameswf4rgba8set_lerpERKS0_S2_f
; demangled: gameswf::rgba::set_lerp(gameswf::rgba const&, gameswf::rgba const&, float)
; decoder-mode: arm
007954d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007954dc  00 50 a0 e1                                      mov r5, r0
007954e0  00 00 d1 e5                                      ldrb r0, [r1]
007954e4  02 60 a0 e1                                      mov r6, r2
007954e8  03 70 a0 e1                                      mov r7, r3
007954ec  01 40 a0 e1                                      mov r4, r1
007954f0  7a e3 ed eb                                      bl #0x30e2e0
007954f4  00 80 a0 e1                                      mov r8, r0
007954f8  00 00 d6 e5                                      ldrb r0, [r6]
007954fc  77 e3 ed eb                                      bl #0x30e2e0
00795500  08 10 a0 e1                                      mov r1, r8
00795504  a8 e3 ed eb                                      bl #0x30e3ac
00795508  00 10 a0 e1                                      mov r1, r0
0079550c  07 00 a0 e1                                      mov r0, r7
00795510  15 e6 ed eb                                      bl #0x30ed6c
00795514  00 10 a0 e1                                      mov r1, r0
00795518  08 00 a0 e1                                      mov r0, r8
0079551c  a0 e5 ed eb                                      bl #0x30eba4
00795520  3f 14 a0 e3                                      mov r1, #0x3f000000
00795524  9e e5 ed eb                                      bl #0x30eba4
00795528  e7 e3 ed eb                                      bl #0x30e4cc
0079552c  00 00 c5 e5                                      strb r0, [r5]
00795530  01 00 d4 e5                                      ldrb r0, [r4, #1]
00795534  69 e3 ed eb                                      bl #0x30e2e0
00795538  00 80 a0 e1                                      mov r8, r0
0079553c  01 00 d6 e5                                      ldrb r0, [r6, #1]
00795540  66 e3 ed eb                                      bl #0x30e2e0
00795544  08 10 a0 e1                                      mov r1, r8
00795548  97 e3 ed eb                                      bl #0x30e3ac
0079554c  00 10 a0 e1                                      mov r1, r0
00795550  07 00 a0 e1                                      mov r0, r7
00795554  04 e6 ed eb                                      bl #0x30ed6c
00795558  00 10 a0 e1                                      mov r1, r0
0079555c  08 00 a0 e1                                      mov r0, r8
00795560  8f e5 ed eb                                      bl #0x30eba4
00795564  3f 14 a0 e3                                      mov r1, #0x3f000000
00795568  8d e5 ed eb                                      bl #0x30eba4
0079556c  d6 e3 ed eb                                      bl #0x30e4cc
00795570  01 00 c5 e5                                      strb r0, [r5, #1]
00795574  02 00 d4 e5                                      ldrb r0, [r4, #2]
00795578  58 e3 ed eb                                      bl #0x30e2e0
0079557c  00 80 a0 e1                                      mov r8, r0
00795580  02 00 d6 e5                                      ldrb r0, [r6, #2]
00795584  55 e3 ed eb                                      bl #0x30e2e0
00795588  08 10 a0 e1                                      mov r1, r8
0079558c  86 e3 ed eb                                      bl #0x30e3ac
00795590  00 10 a0 e1                                      mov r1, r0
00795594  07 00 a0 e1                                      mov r0, r7
00795598  f3 e5 ed eb                                      bl #0x30ed6c
0079559c  00 10 a0 e1                                      mov r1, r0
007955a0  08 00 a0 e1                                      mov r0, r8
007955a4  7e e5 ed eb                                      bl #0x30eba4
007955a8  3f 14 a0 e3                                      mov r1, #0x3f000000
007955ac  7c e5 ed eb                                      bl #0x30eba4
007955b0  c5 e3 ed eb                                      bl #0x30e4cc
007955b4  02 00 c5 e5                                      strb r0, [r5, #2]
007955b8  03 00 d4 e5                                      ldrb r0, [r4, #3]
007955bc  47 e3 ed eb                                      bl #0x30e2e0
007955c0  00 40 a0 e1                                      mov r4, r0
007955c4  03 00 d6 e5                                      ldrb r0, [r6, #3]
007955c8  44 e3 ed eb                                      bl #0x30e2e0
007955cc  04 10 a0 e1                                      mov r1, r4
007955d0  75 e3 ed eb                                      bl #0x30e3ac
007955d4  00 10 a0 e1                                      mov r1, r0
007955d8  07 00 a0 e1                                      mov r0, r7
007955dc  e2 e5 ed eb                                      bl #0x30ed6c
007955e0  00 10 a0 e1                                      mov r1, r0
007955e4  04 00 a0 e1                                      mov r0, r4
007955e8  6d e5 ed eb                                      bl #0x30eba4
007955ec  3f 14 a0 e3                                      mov r1, #0x3f000000
007955f0  6b e5 ed eb                                      bl #0x30eba4
007955f4  b4 e3 ed eb                                      bl #0x30e4cc
007955f8  03 00 c5 e5                                      strb r0, [r5, #3]
007955fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00795e30, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::rgba
; alias: _ZN7gameswf4rgba5printEv
; demangled: gameswf::rgba::print()
; decoder-mode: arm
00795e30  04 e0 2d e5                                      str lr, [sp, #-4]!
00795e34  00 10 d0 e5                                      ldrb r1, [r0]
00795e38  01 20 d0 e5                                      ldrb r2, [r0, #1]
00795e3c  02 30 d0 e5                                      ldrb r3, [r0, #2]
00795e40  03 c0 d0 e5                                      ldrb ip, [r0, #3]
00795e44  14 00 9f e5                                      ldr r0, [pc, #0x14]
00795e48  0c d0 4d e2                                      sub sp, sp, #0xc
00795e4c  00 c0 8d e5                                      str ip, [sp]
00795e50  00 00 8f e0                                      add r0, pc, r0
00795e54  e5 2c ff eb                                      bl #0x7611f0
00795e58  0c d0 8d e2                                      add sp, sp, #0xc
00795e5c  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
00795e60  e8 41 17 00                                      .byte 0xe8, 0x41, 0x17, 0x00

; FUNCTION 0x0079684c, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::rgba
; alias: _ZN7gameswf4rgba8read_rgbEPNS_6streamE
; demangled: gameswf::rgba::read_rgb(gameswf::stream*)
; decoder-mode: arm
0079684c  70 40 2d e9                                      push {r4, r5, r6, lr}
00796850  00 40 a0 e1                                      mov r4, r0
00796854  01 00 a0 e1                                      mov r0, r1
00796858  01 50 a0 e1                                      mov r5, r1
0079685c  b1 b4 ff eb                                      bl #0x783b28
00796860  00 00 c4 e5                                      strb r0, [r4]
00796864  05 00 a0 e1                                      mov r0, r5
00796868  ae b4 ff eb                                      bl #0x783b28
0079686c  01 00 c4 e5                                      strb r0, [r4, #1]
00796870  05 00 a0 e1                                      mov r0, r5
00796874  ab b4 ff eb                                      bl #0x783b28
00796878  00 30 e0 e3                                      mvn r3, #0
0079687c  03 30 c4 e5                                      strb r3, [r4, #3]
00796880  02 00 c4 e5                                      strb r0, [r4, #2]
00796884  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00796888, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::rgba
; alias: _ZN7gameswf4rgba9read_rgbaEPNS_6streamE
; demangled: gameswf::rgba::read_rgba(gameswf::stream*)
; decoder-mode: arm
00796888  70 40 2d e9                                      push {r4, r5, r6, lr}
0079688c  01 50 a0 e1                                      mov r5, r1
00796890  00 40 a0 e1                                      mov r4, r0
00796894  ec ff ff eb                                      bl #0x79684c
00796898  05 00 a0 e1                                      mov r0, r5
0079689c  a1 b4 ff eb                                      bl #0x783b28
007968a0  03 00 c4 e5                                      strb r0, [r4, #3]
007968a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007968a8, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::rgba
; alias: _ZN7gameswf4rgba4readEPNS_6streamEi
; demangled: gameswf::rgba::read(gameswf::stream*, int)
; decoder-mode: arm
007968a8  16 00 52 e3                                      cmp r2, #0x16
007968ac  00 00 00 da                                      ble #0x7968b4
007968b0  f4 ff ff ea                                      b #0x796888
007968b4  e4 ff ff ea                                      b #0x79684c
