; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076069c, declared_size=124, range_size=124, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIiEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<int>(int const&)
; decoder-mode: arm
0076069c  70 40 2d e9                                      push {r4, r5, r6, lr}
007606a0  04 30 90 e5                                      ldr r3, [r0, #4]
007606a4  08 20 90 e5                                      ldr r2, [r0, #8]
007606a8  08 d0 4d e2                                      sub sp, sp, #8
007606ac  01 60 83 e2                                      add r6, r3, #1
007606b0  02 00 56 e1                                      cmp r6, r2
007606b4  00 40 a0 e1                                      mov r4, r0
007606b8  01 50 a0 e1                                      mov r5, r1
007606bc  11 00 00 ca                                      bgt #0x760708
007606c0  0c 20 a0 e3                                      mov r2, #0xc
007606c4  92 03 03 e0                                      mul r3, r2, r3
007606c8  00 20 94 e5                                      ldr r2, [r4]
007606cc  00 10 a0 e3                                      mov r1, #0
007606d0  00 00 95 e5                                      ldr r0, [r5]
007606d4  03 50 82 e0                                      add r5, r2, r3
007606d8  03 10 c2 e7                                      strb r1, [r2, r3]
007606dc  02 30 a0 e3                                      mov r3, #2
007606e0  01 30 c5 e5                                      strb r3, [r5, #1]
007606e4  91 b9 ee eb                                      bl #0x30ed30
007606e8  f0 00 cd e1                                      strd r0, r1, [sp]
007606ec  00 30 9d e5                                      ldr r3, [sp]
007606f0  04 30 85 e5                                      str r3, [r5, #4]
007606f4  04 30 9d e5                                      ldr r3, [sp, #4]
007606f8  08 30 85 e5                                      str r3, [r5, #8]
007606fc  04 60 84 e5                                      str r6, [r4, #4]
00760700  08 d0 8d e2                                      add sp, sp, #8
00760704  70 80 bd e8                                      pop {r4, r5, r6, pc}
00760708  c6 10 86 e0                                      add r1, r6, r6, asr #1
0076070c  3e e7 ff eb                                      bl #0x75a40c
00760710  04 30 94 e5                                      ldr r3, [r4, #4]
00760714  e9 ff ff ea                                      b #0x7606c0

; FUNCTION 0x00769098, declared_size=92, range_size=92, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(gameswf::as_value const&)
; decoder-mode: arm
00769098  70 40 2d e9                                      push {r4, r5, r6, lr}
0076909c  04 30 90 e5                                      ldr r3, [r0, #4]
007690a0  08 20 90 e5                                      ldr r2, [r0, #8]
007690a4  00 40 a0 e1                                      mov r4, r0
007690a8  01 50 83 e2                                      add r5, r3, #1
007690ac  02 00 55 e1                                      cmp r5, r2
007690b0  01 60 a0 e1                                      mov r6, r1
007690b4  0a 00 00 ca                                      bgt #0x7690e4
007690b8  0c 20 a0 e3                                      mov r2, #0xc
007690bc  92 03 03 e0                                      mul r3, r2, r3
007690c0  00 c0 94 e5                                      ldr ip, [r4]
007690c4  00 20 a0 e3                                      mov r2, #0
007690c8  06 10 a0 e1                                      mov r1, r6
007690cc  03 00 8c e0                                      add r0, ip, r3
007690d0  03 20 cc e7                                      strb r2, [ip, r3]
007690d4  01 20 c0 e5                                      strb r2, [r0, #1]
007690d8  97 b9 00 eb                                      bl #0x79773c
007690dc  04 50 84 e5                                      str r5, [r4, #4]
007690e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007690e4  c5 10 85 e0                                      add r1, r5, r5, asr #1
007690e8  c7 c4 ff eb                                      bl #0x75a40c
007690ec  04 30 94 e5                                      ldr r3, [r4, #4]
007690f0  f0 ff ff ea                                      b #0x7690b8

; FUNCTION 0x007690f4, declared_size=96, range_size=96, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backINS_9tu_stringEEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<gameswf::tu_string>(gameswf::tu_string const&)
; decoder-mode: arm
007690f4  70 40 2d e9                                      push {r4, r5, r6, lr}
007690f8  04 30 90 e5                                      ldr r3, [r0, #4]
007690fc  08 20 90 e5                                      ldr r2, [r0, #8]
00769100  00 40 a0 e1                                      mov r4, r0
00769104  01 50 83 e2                                      add r5, r3, #1
00769108  02 00 55 e1                                      cmp r5, r2
0076910c  01 60 a0 e1                                      mov r6, r1
00769110  0b 00 00 ca                                      bgt #0x769144
00769114  0c 20 a0 e3                                      mov r2, #0xc
00769118  00 c0 94 e5                                      ldr ip, [r4]
0076911c  92 03 03 e0                                      mul r3, r2, r3
00769120  00 20 a0 e3                                      mov r2, #0
00769124  03 00 8c e0                                      add r0, ip, r3
00769128  03 20 cc e7                                      strb r2, [ip, r3]
0076912c  06 10 a0 e1                                      mov r1, r6
00769130  04 20 80 e5                                      str r2, [r0, #4]
00769134  01 20 c0 e5                                      strb r2, [r0, #1]
00769138  66 b8 00 eb                                      bl #0x7972d8
0076913c  04 50 84 e5                                      str r5, [r4, #4]
00769140  70 80 bd e8                                      pop {r4, r5, r6, pc}
00769144  c5 10 85 e0                                      add r1, r5, r5, asr #1
00769148  af c4 ff eb                                      bl #0x75a40c
0076914c  04 30 94 e5                                      ldr r3, [r4, #4]
00769150  ef ff ff ea                                      b #0x769114

; FUNCTION 0x007691f0, declared_size=92, range_size=92, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIPKcEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<char const*>(char const* const&)
; decoder-mode: arm
007691f0  70 40 2d e9                                      push {r4, r5, r6, lr}
007691f4  04 30 90 e5                                      ldr r3, [r0, #4]
007691f8  08 20 90 e5                                      ldr r2, [r0, #8]
007691fc  00 40 a0 e1                                      mov r4, r0
00769200  01 50 83 e2                                      add r5, r3, #1
00769204  02 00 55 e1                                      cmp r5, r2
00769208  01 60 a0 e1                                      mov r6, r1
0076920c  0a 00 00 ca                                      bgt #0x76923c
00769210  0c 20 a0 e3                                      mov r2, #0xc
00769214  92 03 03 e0                                      mul r3, r2, r3
00769218  00 c0 94 e5                                      ldr ip, [r4]
0076921c  00 20 a0 e3                                      mov r2, #0
00769220  00 10 96 e5                                      ldr r1, [r6]
00769224  03 00 8c e0                                      add r0, ip, r3
00769228  03 20 cc e7                                      strb r2, [ip, r3]
0076922c  01 20 c0 e5                                      strb r2, [r0, #1]
00769230  46 b8 00 eb                                      bl #0x797350
00769234  04 50 84 e5                                      str r5, [r4, #4]
00769238  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076923c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00769240  71 c4 ff eb                                      bl #0x75a40c
00769244  04 30 94 e5                                      ldr r3, [r4, #4]
00769248  f0 ff ff ea                                      b #0x769210

; FUNCTION 0x007a264c, declared_size=108, range_size=108, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIPNS_9characterEEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<gameswf::character*>(gameswf::character* const&)
; decoder-mode: arm
007a264c  70 40 2d e9                                      push {r4, r5, r6, lr}
007a2650  04 30 90 e5                                      ldr r3, [r0, #4]
007a2654  08 20 90 e5                                      ldr r2, [r0, #8]
007a2658  00 40 a0 e1                                      mov r4, r0
007a265c  01 50 83 e2                                      add r5, r3, #1
007a2660  02 00 55 e1                                      cmp r5, r2
007a2664  01 60 a0 e1                                      mov r6, r1
007a2668  0e 00 00 ca                                      bgt #0x7a26a8
007a266c  0c 20 a0 e3                                      mov r2, #0xc
007a2670  00 00 96 e5                                      ldr r0, [r6]
007a2674  00 10 94 e5                                      ldr r1, [r4]
007a2678  92 03 03 e0                                      mul r3, r2, r3
007a267c  00 c0 a0 e3                                      mov ip, #0
007a2680  03 20 81 e0                                      add r2, r1, r3
007a2684  03 c0 c1 e7                                      strb ip, [r1, r3]
007a2688  00 00 50 e3                                      cmp r0, #0
007a268c  05 30 a0 e3                                      mov r3, #5
007a2690  01 30 c2 e5                                      strb r3, [r2, #1]
007a2694  04 00 82 e5                                      str r0, [r2, #4]
007a2698  00 00 00 0a                                      beq #0x7a26a0
007a269c  70 dd fe eb                                      bl #0x759c64
007a26a0  04 50 84 e5                                      str r5, [r4, #4]
007a26a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a26a8  c5 10 85 e0                                      add r1, r5, r5, asr #1
007a26ac  56 df fe eb                                      bl #0x75a40c
007a26b0  04 30 94 e5                                      ldr r3, [r4, #4]
007a26b4  ec ff ff ea                                      b #0x7a266c

; FUNCTION 0x007a5768, declared_size=92, range_size=92, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIPcEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<char*>(char* const&)
; decoder-mode: arm
007a5768  70 40 2d e9                                      push {r4, r5, r6, lr}
007a576c  04 30 90 e5                                      ldr r3, [r0, #4]
007a5770  08 20 90 e5                                      ldr r2, [r0, #8]
007a5774  00 40 a0 e1                                      mov r4, r0
007a5778  01 50 83 e2                                      add r5, r3, #1
007a577c  02 00 55 e1                                      cmp r5, r2
007a5780  01 60 a0 e1                                      mov r6, r1
007a5784  0a 00 00 ca                                      bgt #0x7a57b4
007a5788  0c 20 a0 e3                                      mov r2, #0xc
007a578c  92 03 03 e0                                      mul r3, r2, r3
007a5790  00 c0 94 e5                                      ldr ip, [r4]
007a5794  00 20 a0 e3                                      mov r2, #0
007a5798  00 10 96 e5                                      ldr r1, [r6]
007a579c  03 00 8c e0                                      add r0, ip, r3
007a57a0  03 20 cc e7                                      strb r2, [ip, r3]
007a57a4  01 20 c0 e5                                      strb r2, [r0, #1]
007a57a8  e8 c6 ff eb                                      bl #0x797350
007a57ac  04 50 84 e5                                      str r5, [r4, #4]
007a57b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a57b4  c5 10 85 e0                                      add r1, r5, r5, asr #1
007a57b8  13 d3 fe eb                                      bl #0x75a40c
007a57bc  04 30 94 e5                                      ldr r3, [r4, #4]
007a57c0  f0 ff ff ea                                      b #0x7a5788

; FUNCTION 0x007ba9b8, declared_size=124, range_size=124, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIfEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<float>(float const&)
; decoder-mode: arm
007ba9b8  70 40 2d e9                                      push {r4, r5, r6, lr}
007ba9bc  04 30 90 e5                                      ldr r3, [r0, #4]
007ba9c0  08 20 90 e5                                      ldr r2, [r0, #8]
007ba9c4  08 d0 4d e2                                      sub sp, sp, #8
007ba9c8  01 60 83 e2                                      add r6, r3, #1
007ba9cc  02 00 56 e1                                      cmp r6, r2
007ba9d0  00 40 a0 e1                                      mov r4, r0
007ba9d4  01 50 a0 e1                                      mov r5, r1
007ba9d8  11 00 00 ca                                      bgt #0x7baa24
007ba9dc  0c 20 a0 e3                                      mov r2, #0xc
007ba9e0  92 03 03 e0                                      mul r3, r2, r3
007ba9e4  00 20 94 e5                                      ldr r2, [r4]
007ba9e8  00 10 a0 e3                                      mov r1, #0
007ba9ec  00 00 95 e5                                      ldr r0, [r5]
007ba9f0  03 50 82 e0                                      add r5, r2, r3
007ba9f4  03 10 c2 e7                                      strb r1, [r2, r3]
007ba9f8  02 30 a0 e3                                      mov r3, #2
007ba9fc  01 30 c5 e5                                      strb r3, [r5, #1]
007baa00  a7 4f ed eb                                      bl #0x30e8a4
007baa04  f0 00 cd e1                                      strd r0, r1, [sp]
007baa08  00 30 9d e5                                      ldr r3, [sp]
007baa0c  04 30 85 e5                                      str r3, [r5, #4]
007baa10  04 30 9d e5                                      ldr r3, [sp, #4]
007baa14  08 30 85 e5                                      str r3, [r5, #8]
007baa18  04 60 84 e5                                      str r6, [r4, #4]
007baa1c  08 d0 8d e2                                      add sp, sp, #8
007baa20  70 80 bd e8                                      pop {r4, r5, r6, pc}
007baa24  c6 10 86 e0                                      add r1, r6, r6, asr #1
007baa28  77 7e fe eb                                      bl #0x75a40c
007baa2c  04 30 94 e5                                      ldr r3, [r4, #4]
007baa30  e9 ff ff ea                                      b #0x7ba9dc

; FUNCTION 0x007baa34, declared_size=120, range_size=120, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIdEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<double>(double const&)
; decoder-mode: arm
007baa34  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007baa38  04 30 90 e5                                      ldr r3, [r0, #4]
007baa3c  08 20 90 e5                                      ldr r2, [r0, #8]
007baa40  0c d0 4d e2                                      sub sp, sp, #0xc
007baa44  01 50 83 e2                                      add r5, r3, #1
007baa48  02 00 55 e1                                      cmp r5, r2
007baa4c  00 40 a0 e1                                      mov r4, r0
007baa50  01 60 a0 e1                                      mov r6, r1
007baa54  10 00 00 ca                                      bgt #0x7baa9c
007baa58  0c 20 a0 e3                                      mov r2, #0xc
007baa5c  00 10 94 e5                                      ldr r1, [r4]
007baa60  92 03 03 e0                                      mul r3, r2, r3
007baa64  d0 60 c6 e1                                      ldrd r6, r7, [r6]
007baa68  00 00 a0 e3                                      mov r0, #0
007baa6c  03 00 c1 e7                                      strb r0, [r1, r3]
007baa70  03 20 81 e0                                      add r2, r1, r3
007baa74  02 30 a0 e3                                      mov r3, #2
007baa78  01 30 c2 e5                                      strb r3, [r2, #1]
007baa7c  f0 60 cd e1                                      strd r6, r7, [sp]
007baa80  00 30 9d e5                                      ldr r3, [sp]
007baa84  04 30 82 e5                                      str r3, [r2, #4]
007baa88  04 30 9d e5                                      ldr r3, [sp, #4]
007baa8c  08 30 82 e5                                      str r3, [r2, #8]
007baa90  04 50 84 e5                                      str r5, [r4, #4]
007baa94  0c d0 8d e2                                      add sp, sp, #0xc
007baa98  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007baa9c  c5 10 85 e0                                      add r1, r5, r5, asr #1
007baaa0  59 7e fe eb                                      bl #0x75a40c
007baaa4  04 30 94 e5                                      ldr r3, [r4, #4]
007baaa8  ea ff ff ea                                      b #0x7baa58

; FUNCTION 0x007baeb0, declared_size=72, range_size=72, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIPKwEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<wchar_t const*>(wchar_t const* const&)
; decoder-mode: arm
007baeb0  70 40 2d e9                                      push {r4, r5, r6, lr}
007baeb4  04 30 90 e5                                      ldr r3, [r0, #4]
007baeb8  08 20 90 e5                                      ldr r2, [r0, #8]
007baebc  00 40 a0 e1                                      mov r4, r0
007baec0  01 50 83 e2                                      add r5, r3, #1
007baec4  02 00 55 e1                                      cmp r5, r2
007baec8  01 60 a0 e1                                      mov r6, r1
007baecc  02 00 00 da                                      ble #0x7baedc
007baed0  c5 10 85 e0                                      add r1, r5, r5, asr #1
007baed4  4c 7d fe eb                                      bl #0x75a40c
007baed8  04 30 94 e5                                      ldr r3, [r4, #4]
007baedc  00 20 94 e5                                      ldr r2, [r4]
007baee0  0c 00 a0 e3                                      mov r0, #0xc
007baee4  00 10 96 e5                                      ldr r1, [r6]
007baee8  90 23 20 e0                                      mla r0, r0, r3, r2
007baeec  45 71 ff eb                                      bl #0x797408
007baef0  04 50 84 e5                                      str r5, [r4, #4]
007baef4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007bb2bc, declared_size=104, range_size=104, mode=arm
; class-group: void gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE9push_backIPNS_9as_objectEEEvRKT_
; demangled: void gameswf::array<gameswf::as_value>::push_back<gameswf::as_object*>(gameswf::as_object* const&)
; decoder-mode: arm
007bb2bc  70 40 2d e9                                      push {r4, r5, r6, lr}
007bb2c0  04 30 90 e5                                      ldr r3, [r0, #4]
007bb2c4  08 20 90 e5                                      ldr r2, [r0, #8]
007bb2c8  00 40 a0 e1                                      mov r4, r0
007bb2cc  01 50 83 e2                                      add r5, r3, #1
007bb2d0  02 00 55 e1                                      cmp r5, r2
007bb2d4  01 60 a0 e1                                      mov r6, r1
007bb2d8  02 00 00 da                                      ble #0x7bb2e8
007bb2dc  c5 10 85 e0                                      add r1, r5, r5, asr #1
007bb2e0  49 7c fe eb                                      bl #0x75a40c
007bb2e4  04 30 94 e5                                      ldr r3, [r4, #4]
007bb2e8  0c 20 a0 e3                                      mov r2, #0xc
007bb2ec  00 00 96 e5                                      ldr r0, [r6]
007bb2f0  00 10 94 e5                                      ldr r1, [r4]
007bb2f4  92 03 03 e0                                      mul r3, r2, r3
007bb2f8  00 c0 a0 e3                                      mov ip, #0
007bb2fc  03 20 81 e0                                      add r2, r1, r3
007bb300  03 c0 c1 e7                                      strb ip, [r1, r3]
007bb304  00 00 50 e3                                      cmp r0, #0
007bb308  05 30 a0 e3                                      mov r3, #5
007bb30c  01 30 c2 e5                                      strb r3, [r2, #1]
007bb310  04 00 82 e5                                      str r0, [r2, #4]
007bb314  00 00 00 0a                                      beq #0x7bb31c
007bb318  51 7a fe eb                                      bl #0x759c64
007bb31c  04 50 84 e5                                      str r5, [r4, #4]
007bb320  70 80 bd e8                                      pop {r4, r5, r6, pc}
