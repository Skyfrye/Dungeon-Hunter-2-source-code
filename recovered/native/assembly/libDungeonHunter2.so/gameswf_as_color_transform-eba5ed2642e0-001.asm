; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d9790, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_color_transform
; alias: _ZNK7gameswf18as_color_transform2isEi
; demangled: gameswf::as_color_transform::is(int) const
; decoder-mode: arm
007d9790  1c 00 51 e3                                      cmp r1, #0x1c
007d9794  01 00 a0 03                                      moveq r0, #1
007d9798  1e ff 2f 01                                      bxeq lr
007d979c  01 00 71 e2                                      rsbs r0, r1, #1
007d97a0  00 00 a0 33                                      movlo r0, #0
007d97a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d97a8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_color_transform
; alias: _ZN7gameswf18as_color_transformD1Ev
; demangled: gameswf::as_color_transform::~as_color_transform()
; decoder-mode: arm
007d97a8  24 30 9f e5                                      ldr r3, [pc, #0x24]
007d97ac  24 20 9f e5                                      ldr r2, [pc, #0x24]
007d97b0  10 40 2d e9                                      push {r4, lr}
007d97b4  03 30 8f e0                                      add r3, pc, r3
007d97b8  02 20 93 e7                                      ldr r2, [r3, r2]
007d97bc  00 40 a0 e1                                      mov r4, r0
007d97c0  08 20 82 e2                                      add r2, r2, #8
007d97c4  00 20 80 e5                                      str r2, [r0]
007d97c8  b3 40 fe eb                                      bl #0x769a9c
007d97cc  04 00 a0 e1                                      mov r0, r4
007d97d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007d97d4  dc b2 1b 00 ac 48 00 00                          .byte 0xdc, 0xb2, 0x1b, 0x00, 0xac, 0x48, 0x00, 0x00

; FUNCTION 0x007d9818, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::as_color_transform
; alias: _ZN7gameswf18as_color_transformC1EPNS_6playerEPKNS_6cxformE
; demangled: gameswf::as_color_transform::as_color_transform(gameswf::player*, gameswf::cxform const*)
; decoder-mode: arm
007d9818  70 40 2d e9                                      push {r4, r5, r6, lr}
007d981c  00 40 a0 e1                                      mov r4, r0
007d9820  02 50 a0 e1                                      mov r5, r2
007d9824  2d 49 fe eb                                      bl #0x76bce0
007d9828  58 60 9f e5                                      ldr r6, [pc, #0x58]
007d982c  58 10 9f e5                                      ldr r1, [pc, #0x58]
007d9830  fe 25 a0 e3                                      mov r2, #0x3f800000
007d9834  06 60 8f e0                                      add r6, pc, r6
007d9838  01 10 96 e7                                      ldr r1, [r6, r1]
007d983c  00 30 a0 e3                                      mov r3, #0
007d9840  00 00 55 e3                                      cmp r5, #0
007d9844  08 10 81 e2                                      add r1, r1, #8
007d9848  00 10 84 e5                                      str r1, [r4]
007d984c  50 20 84 e5                                      str r2, [r4, #0x50]
007d9850  54 30 84 e5                                      str r3, [r4, #0x54]
007d9854  38 20 84 e5                                      str r2, [r4, #0x38]
007d9858  40 20 84 e5                                      str r2, [r4, #0x40]
007d985c  48 20 84 e5                                      str r2, [r4, #0x48]
007d9860  3c 30 84 e5                                      str r3, [r4, #0x3c]
007d9864  44 30 84 e5                                      str r3, [r4, #0x44]
007d9868  4c 30 84 e5                                      str r3, [r4, #0x4c]
007d986c  38 c0 84 12                                      addne ip, r4, #0x38
007d9870  0f 00 b5 18                                      ldmne r5!, {r0, r1, r2, r3}
007d9874  0f 00 ac 18                                      stmne ip!, {r0, r1, r2, r3}
007d9878  0f 00 95 18                                      ldmne r5, {r0, r1, r2, r3}
007d987c  0f 00 8c 18                                      stmne ip, {r0, r1, r2, r3}
007d9880  04 00 a0 e1                                      mov r0, r4
007d9884  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007d9888  5c b2 1b 00 ac 48 00 00                          .byte 0x5c, 0xb2, 0x1b, 0x00, 0xac, 0x48, 0x00, 0x00

; FUNCTION 0x007d9890, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::as_color_transform
; alias: _ZN7gameswf18as_color_transformC2EPNS_6playerEPKNS_6cxformE
; demangled: gameswf::as_color_transform::as_color_transform(gameswf::player*, gameswf::cxform const*)
; decoder-mode: arm
007d9890  70 40 2d e9                                      push {r4, r5, r6, lr}
007d9894  00 40 a0 e1                                      mov r4, r0
007d9898  02 50 a0 e1                                      mov r5, r2
007d989c  0f 49 fe eb                                      bl #0x76bce0
007d98a0  58 60 9f e5                                      ldr r6, [pc, #0x58]
007d98a4  58 10 9f e5                                      ldr r1, [pc, #0x58]
007d98a8  fe 25 a0 e3                                      mov r2, #0x3f800000
007d98ac  06 60 8f e0                                      add r6, pc, r6
007d98b0  01 10 96 e7                                      ldr r1, [r6, r1]
007d98b4  00 30 a0 e3                                      mov r3, #0
007d98b8  00 00 55 e3                                      cmp r5, #0
007d98bc  08 10 81 e2                                      add r1, r1, #8
007d98c0  00 10 84 e5                                      str r1, [r4]
007d98c4  50 20 84 e5                                      str r2, [r4, #0x50]
007d98c8  54 30 84 e5                                      str r3, [r4, #0x54]
007d98cc  38 20 84 e5                                      str r2, [r4, #0x38]
007d98d0  40 20 84 e5                                      str r2, [r4, #0x40]
007d98d4  48 20 84 e5                                      str r2, [r4, #0x48]
007d98d8  3c 30 84 e5                                      str r3, [r4, #0x3c]
007d98dc  44 30 84 e5                                      str r3, [r4, #0x44]
007d98e0  4c 30 84 e5                                      str r3, [r4, #0x4c]
007d98e4  38 c0 84 12                                      addne ip, r4, #0x38
007d98e8  0f 00 b5 18                                      ldmne r5!, {r0, r1, r2, r3}
007d98ec  0f 00 ac 18                                      stmne ip!, {r0, r1, r2, r3}
007d98f0  0f 00 95 18                                      ldmne r5, {r0, r1, r2, r3}
007d98f4  0f 00 8c 18                                      stmne ip, {r0, r1, r2, r3}
007d98f8  04 00 a0 e1                                      mov r0, r4
007d98fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007d9900  e4 b1 1b 00 ac 48 00 00                          .byte 0xe4, 0xb1, 0x1b, 0x00, 0xac, 0x48, 0x00, 0x00

; FUNCTION 0x007d9cac, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_color_transform
; alias: _ZN7gameswf18as_color_transformD0Ev
; demangled: gameswf::as_color_transform::~as_color_transform()
; decoder-mode: arm
007d9cac  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007d9cb0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007d9cb4  10 40 2d e9                                      push {r4, lr}
007d9cb8  03 30 8f e0                                      add r3, pc, r3
007d9cbc  02 20 93 e7                                      ldr r2, [r3, r2]
007d9cc0  00 40 a0 e1                                      mov r4, r0
007d9cc4  08 20 82 e2                                      add r2, r2, #8
007d9cc8  00 20 80 e5                                      str r2, [r0]
007d9ccc  72 3f fe eb                                      bl #0x769a9c
007d9cd0  04 00 a0 e1                                      mov r0, r4
007d9cd4  75 d1 ec eb                                      bl #0x30e2b0
007d9cd8  04 00 a0 e1                                      mov r0, r4
007d9cdc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007d9ce0  d8 ad 1b 00 ac 48 00 00                          .byte 0xd8, 0xad, 0x1b, 0x00, 0xac, 0x48, 0x00, 0x00

; FUNCTION 0x007da638, declared_size=208, range_size=208, mode=arm
; class-group: gameswf::as_color_transform
; alias: _ZN7gameswf18as_color_transform10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_color_transform::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
007da638  70 40 2d e9                                      push {r4, r5, r6, lr}
007da63c  00 60 a0 e1                                      mov r6, r0
007da640  01 00 a0 e1                                      mov r0, r1
007da644  01 50 a0 e1                                      mov r5, r1
007da648  02 40 a0 e1                                      mov r4, r2
007da64c  bc fe ff eb                                      bl #0x7da144
007da650  01 00 40 e2                                      sub r0, r0, #1
007da654  08 00 50 e3                                      cmp r0, #8
007da658  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
007da65c  0e 00 00 ea                                      b #0x7da69c
007da660  12 00 00 ea                                      b #0x7da6b0
007da664  19 00 00 ea                                      b #0x7da6d0
007da668  1a 00 00 ea                                      b #0x7da6d8
007da66c  1b 00 00 ea                                      b #0x7da6e0
007da670  1c 00 00 ea                                      b #0x7da6e8
007da674  1d 00 00 ea                                      b #0x7da6f0
007da678  1e 00 00 ea                                      b #0x7da6f8
007da67c  1f 00 00 ea                                      b #0x7da700
007da680  ff ff ff ea                                      b #0x7da684
007da684  04 00 a0 e1                                      mov r0, r4
007da688  a5 f2 fe eb                                      bl #0x797124
007da68c  00 30 a0 e3                                      mov r3, #0
007da690  01 30 c4 e5                                      strb r3, [r4, #1]
007da694  01 00 a0 e3                                      mov r0, #1
007da698  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da69c  06 00 a0 e1                                      mov r0, r6
007da6a0  05 10 a0 e1                                      mov r1, r5
007da6a4  04 20 a0 e1                                      mov r2, r4
007da6a8  70 40 bd e8                                      pop {r4, r5, r6, lr}
007da6ac  a8 3a fe ea                                      b #0x769154
007da6b0  38 00 96 e5                                      ldr r0, [r6, #0x38]
007da6b4  7a d0 ec eb                                      bl #0x30e8a4
007da6b8  00 20 a0 e1                                      mov r2, r0
007da6bc  01 30 a0 e1                                      mov r3, r1
007da6c0  04 00 a0 e1                                      mov r0, r4
007da6c4  6f f3 fe eb                                      bl #0x797488
007da6c8  01 00 a0 e3                                      mov r0, #1
007da6cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da6d0  40 00 96 e5                                      ldr r0, [r6, #0x40]
007da6d4  f6 ff ff ea                                      b #0x7da6b4
007da6d8  48 00 96 e5                                      ldr r0, [r6, #0x48]
007da6dc  f4 ff ff ea                                      b #0x7da6b4
007da6e0  50 00 96 e5                                      ldr r0, [r6, #0x50]
007da6e4  f2 ff ff ea                                      b #0x7da6b4
007da6e8  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
007da6ec  f0 ff ff ea                                      b #0x7da6b4
007da6f0  44 00 96 e5                                      ldr r0, [r6, #0x44]
007da6f4  ee ff ff ea                                      b #0x7da6b4
007da6f8  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007da6fc  ec ff ff ea                                      b #0x7da6b4
007da700  54 00 96 e5                                      ldr r0, [r6, #0x54]
007da704  ea ff ff ea                                      b #0x7da6b4

; FUNCTION 0x007da708, declared_size=980, range_size=980, mode=arm
; class-group: gameswf::as_color_transform
; alias: _ZN7gameswf18as_color_transform10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_color_transform::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
007da708  70 40 2d e9                                      push {r4, r5, r6, lr}
007da70c  00 40 a0 e1                                      mov r4, r0
007da710  01 00 a0 e1                                      mov r0, r1
007da714  01 50 a0 e1                                      mov r5, r1
007da718  02 60 a0 e1                                      mov r6, r2
007da71c  88 fe ff eb                                      bl #0x7da144
007da720  01 00 40 e2                                      sub r0, r0, #1
007da724  08 00 50 e3                                      cmp r0, #8
007da728  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
007da72c  40 00 00 ea                                      b #0x7da834
007da730  44 00 00 ea                                      b #0x7da848
007da734  54 00 00 ea                                      b #0x7da88c
007da738  64 00 00 ea                                      b #0x7da8d0
007da73c  74 00 00 ea                                      b #0x7da914
007da740  84 00 00 ea                                      b #0x7da958
007da744  94 00 00 ea                                      b #0x7da99c
007da748  a4 00 00 ea                                      b #0x7da9e0
007da74c  b4 00 00 ea                                      b #0x7daa24
007da750  ff ff ff ea                                      b #0x7da754
007da754  06 00 a0 e1                                      mov r0, r6
007da758  bd f4 fe eb                                      bl #0x797a54
007da75c  b0 d0 ec eb                                      bl #0x30ea24
007da760  00 30 a0 e3                                      mov r3, #0
007da764  50 30 84 e5                                      str r3, [r4, #0x50]
007da768  38 30 84 e5                                      str r3, [r4, #0x38]
007da76c  40 30 84 e5                                      str r3, [r4, #0x40]
007da770  48 30 84 e5                                      str r3, [r4, #0x48]
007da774  00 50 a0 e1                                      mov r5, r0
007da778  50 08 e7 e7                                      ubfx r0, r0, #0x10, #8
007da77c  78 d0 ec eb                                      bl #0x30e964
007da780  02 15 e0 e3                                      mvn r1, #0x800000
007da784  00 60 a0 e1                                      mov r6, r0
007da788  49 cf ec eb                                      bl #0x30e4b4
007da78c  00 00 50 e3                                      cmp r0, #0
007da790  b6 00 00 0a                                      beq #0x7daa70
007da794  02 11 e0 e3                                      mvn r1, #0x80000000
007da798  06 00 a0 e1                                      mov r0, r6
007da79c  02 15 41 e2                                      sub r1, r1, #0x800000
007da7a0  81 d0 ec eb                                      bl #0x30e9ac
007da7a4  00 00 50 e3                                      cmp r0, #0
007da7a8  b0 00 00 0a                                      beq #0x7daa70
007da7ac  3c 60 84 e5                                      str r6, [r4, #0x3c]
007da7b0  55 04 e7 e7                                      ubfx r0, r5, #8, #8
007da7b4  6a d0 ec eb                                      bl #0x30e964
007da7b8  02 15 e0 e3                                      mvn r1, #0x800000
007da7bc  00 60 a0 e1                                      mov r6, r0
007da7c0  3b cf ec eb                                      bl #0x30e4b4
007da7c4  00 00 50 e3                                      cmp r0, #0
007da7c8  a6 00 00 0a                                      beq #0x7daa68
007da7cc  02 11 e0 e3                                      mvn r1, #0x80000000
007da7d0  06 00 a0 e1                                      mov r0, r6
007da7d4  02 15 41 e2                                      sub r1, r1, #0x800000
007da7d8  73 d0 ec eb                                      bl #0x30e9ac
007da7dc  00 00 50 e3                                      cmp r0, #0
007da7e0  a0 00 00 0a                                      beq #0x7daa68
007da7e4  75 00 ef e6                                      uxtb r0, r5
007da7e8  44 60 84 e5                                      str r6, [r4, #0x44]
007da7ec  5c d0 ec eb                                      bl #0x30e964
007da7f0  02 15 e0 e3                                      mvn r1, #0x800000
007da7f4  00 50 a0 e1                                      mov r5, r0
007da7f8  2d cf ec eb                                      bl #0x30e4b4
007da7fc  00 00 50 e3                                      cmp r0, #0
007da800  9c 00 00 0a                                      beq #0x7daa78
007da804  02 11 e0 e3                                      mvn r1, #0x80000000
007da808  05 00 a0 e1                                      mov r0, r5
007da80c  02 15 41 e2                                      sub r1, r1, #0x800000
007da810  65 d0 ec eb                                      bl #0x30e9ac
007da814  00 00 50 e3                                      cmp r0, #0
007da818  96 00 00 0a                                      beq #0x7daa78
007da81c  43 34 a0 e3                                      mov r3, #0x43000000
007da820  7f 38 83 e2                                      add r3, r3, #0x7f0000
007da824  4c 50 84 e5                                      str r5, [r4, #0x4c]
007da828  54 30 84 e5                                      str r3, [r4, #0x54]
007da82c  01 00 a0 e3                                      mov r0, #1
007da830  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da834  04 00 a0 e1                                      mov r0, r4
007da838  05 10 a0 e1                                      mov r1, r5
007da83c  06 20 a0 e1                                      mov r2, r6
007da840  70 40 bd e8                                      pop {r4, r5, r6, lr}
007da844  65 46 fe ea                                      b #0x76c1e0
007da848  06 00 a0 e1                                      mov r0, r6
007da84c  80 f4 fe eb                                      bl #0x797a54
007da850  92 cf ec eb                                      bl #0x30e6a0
007da854  02 15 e0 e3                                      mvn r1, #0x800000
007da858  00 50 a0 e1                                      mov r5, r0
007da85c  14 cf ec eb                                      bl #0x30e4b4
007da860  00 00 50 e3                                      cmp r0, #0
007da864  8b 00 00 0a                                      beq #0x7daa98
007da868  02 11 e0 e3                                      mvn r1, #0x80000000
007da86c  05 00 a0 e1                                      mov r0, r5
007da870  02 15 41 e2                                      sub r1, r1, #0x800000
007da874  4c d0 ec eb                                      bl #0x30e9ac
007da878  00 00 50 e3                                      cmp r0, #0
007da87c  85 00 00 0a                                      beq #0x7daa98
007da880  38 50 84 e5                                      str r5, [r4, #0x38]
007da884  01 00 a0 e3                                      mov r0, #1
007da888  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da88c  06 00 a0 e1                                      mov r0, r6
007da890  6f f4 fe eb                                      bl #0x797a54
007da894  81 cf ec eb                                      bl #0x30e6a0
007da898  02 15 e0 e3                                      mvn r1, #0x800000
007da89c  00 50 a0 e1                                      mov r5, r0
007da8a0  03 cf ec eb                                      bl #0x30e4b4
007da8a4  00 00 50 e3                                      cmp r0, #0
007da8a8  7d 00 00 0a                                      beq #0x7daaa4
007da8ac  02 11 e0 e3                                      mvn r1, #0x80000000
007da8b0  05 00 a0 e1                                      mov r0, r5
007da8b4  02 15 41 e2                                      sub r1, r1, #0x800000
007da8b8  3b d0 ec eb                                      bl #0x30e9ac
007da8bc  00 00 50 e3                                      cmp r0, #0
007da8c0  77 00 00 0a                                      beq #0x7daaa4
007da8c4  40 50 84 e5                                      str r5, [r4, #0x40]
007da8c8  01 00 a0 e3                                      mov r0, #1
007da8cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da8d0  06 00 a0 e1                                      mov r0, r6
007da8d4  5e f4 fe eb                                      bl #0x797a54
007da8d8  70 cf ec eb                                      bl #0x30e6a0
007da8dc  02 15 e0 e3                                      mvn r1, #0x800000
007da8e0  00 50 a0 e1                                      mov r5, r0
007da8e4  f2 ce ec eb                                      bl #0x30e4b4
007da8e8  00 00 50 e3                                      cmp r0, #0
007da8ec  77 00 00 0a                                      beq #0x7daad0
007da8f0  02 11 e0 e3                                      mvn r1, #0x80000000
007da8f4  05 00 a0 e1                                      mov r0, r5
007da8f8  02 15 41 e2                                      sub r1, r1, #0x800000
007da8fc  2a d0 ec eb                                      bl #0x30e9ac
007da900  00 00 50 e3                                      cmp r0, #0
007da904  71 00 00 0a                                      beq #0x7daad0
007da908  48 50 84 e5                                      str r5, [r4, #0x48]
007da90c  01 00 a0 e3                                      mov r0, #1
007da910  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da914  06 00 a0 e1                                      mov r0, r6
007da918  4d f4 fe eb                                      bl #0x797a54
007da91c  5f cf ec eb                                      bl #0x30e6a0
007da920  02 15 e0 e3                                      mvn r1, #0x800000
007da924  00 50 a0 e1                                      mov r5, r0
007da928  e1 ce ec eb                                      bl #0x30e4b4
007da92c  00 00 50 e3                                      cmp r0, #0
007da930  52 00 00 0a                                      beq #0x7daa80
007da934  02 11 e0 e3                                      mvn r1, #0x80000000
007da938  05 00 a0 e1                                      mov r0, r5
007da93c  02 15 41 e2                                      sub r1, r1, #0x800000
007da940  19 d0 ec eb                                      bl #0x30e9ac
007da944  00 00 50 e3                                      cmp r0, #0
007da948  4c 00 00 0a                                      beq #0x7daa80
007da94c  50 50 84 e5                                      str r5, [r4, #0x50]
007da950  01 00 a0 e3                                      mov r0, #1
007da954  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da958  06 00 a0 e1                                      mov r0, r6
007da95c  3c f4 fe eb                                      bl #0x797a54
007da960  4e cf ec eb                                      bl #0x30e6a0
007da964  02 15 e0 e3                                      mvn r1, #0x800000
007da968  00 50 a0 e1                                      mov r5, r0
007da96c  d0 ce ec eb                                      bl #0x30e4b4
007da970  00 00 50 e3                                      cmp r0, #0
007da974  52 00 00 0a                                      beq #0x7daac4
007da978  02 11 e0 e3                                      mvn r1, #0x80000000
007da97c  05 00 a0 e1                                      mov r0, r5
007da980  02 15 41 e2                                      sub r1, r1, #0x800000
007da984  08 d0 ec eb                                      bl #0x30e9ac
007da988  00 00 50 e3                                      cmp r0, #0
007da98c  4c 00 00 0a                                      beq #0x7daac4
007da990  3c 50 84 e5                                      str r5, [r4, #0x3c]
007da994  01 00 a0 e3                                      mov r0, #1
007da998  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da99c  06 00 a0 e1                                      mov r0, r6
007da9a0  2b f4 fe eb                                      bl #0x797a54
007da9a4  3d cf ec eb                                      bl #0x30e6a0
007da9a8  02 15 e0 e3                                      mvn r1, #0x800000
007da9ac  00 50 a0 e1                                      mov r5, r0
007da9b0  bf ce ec eb                                      bl #0x30e4b4
007da9b4  00 00 50 e3                                      cmp r0, #0
007da9b8  33 00 00 0a                                      beq #0x7daa8c
007da9bc  02 11 e0 e3                                      mvn r1, #0x80000000
007da9c0  05 00 a0 e1                                      mov r0, r5
007da9c4  02 15 41 e2                                      sub r1, r1, #0x800000
007da9c8  f7 cf ec eb                                      bl #0x30e9ac
007da9cc  00 00 50 e3                                      cmp r0, #0
007da9d0  2d 00 00 0a                                      beq #0x7daa8c
007da9d4  44 50 84 e5                                      str r5, [r4, #0x44]
007da9d8  01 00 a0 e3                                      mov r0, #1
007da9dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007da9e0  06 00 a0 e1                                      mov r0, r6
007da9e4  1a f4 fe eb                                      bl #0x797a54
007da9e8  2c cf ec eb                                      bl #0x30e6a0
007da9ec  02 15 e0 e3                                      mvn r1, #0x800000
007da9f0  00 50 a0 e1                                      mov r5, r0
007da9f4  ae ce ec eb                                      bl #0x30e4b4
007da9f8  00 00 50 e3                                      cmp r0, #0
007da9fc  2d 00 00 0a                                      beq #0x7daab8
007daa00  02 11 e0 e3                                      mvn r1, #0x80000000
007daa04  05 00 a0 e1                                      mov r0, r5
007daa08  02 15 41 e2                                      sub r1, r1, #0x800000
007daa0c  e6 cf ec eb                                      bl #0x30e9ac
007daa10  00 00 50 e3                                      cmp r0, #0
007daa14  27 00 00 0a                                      beq #0x7daab8
007daa18  4c 50 84 e5                                      str r5, [r4, #0x4c]
007daa1c  01 00 a0 e3                                      mov r0, #1
007daa20  70 80 bd e8                                      pop {r4, r5, r6, pc}
007daa24  06 00 a0 e1                                      mov r0, r6
007daa28  09 f4 fe eb                                      bl #0x797a54
007daa2c  1b cf ec eb                                      bl #0x30e6a0
007daa30  02 15 e0 e3                                      mvn r1, #0x800000
007daa34  00 50 a0 e1                                      mov r5, r0
007daa38  9d ce ec eb                                      bl #0x30e4b4
007daa3c  00 00 50 e3                                      cmp r0, #0
007daa40  1a 00 00 0a                                      beq #0x7daab0
007daa44  02 11 e0 e3                                      mvn r1, #0x80000000
007daa48  05 00 a0 e1                                      mov r0, r5
007daa4c  02 15 41 e2                                      sub r1, r1, #0x800000
007daa50  d5 cf ec eb                                      bl #0x30e9ac
007daa54  00 00 50 e3                                      cmp r0, #0
007daa58  14 00 00 0a                                      beq #0x7daab0
007daa5c  54 50 84 e5                                      str r5, [r4, #0x54]
007daa60  01 00 a0 e3                                      mov r0, #1
007daa64  70 80 bd e8                                      pop {r4, r5, r6, pc}
007daa68  00 60 a0 e3                                      mov r6, #0
007daa6c  5c ff ff ea                                      b #0x7da7e4
007daa70  00 60 a0 e3                                      mov r6, #0
007daa74  4c ff ff ea                                      b #0x7da7ac
007daa78  00 50 a0 e3                                      mov r5, #0
007daa7c  66 ff ff ea                                      b #0x7da81c
007daa80  00 50 a0 e3                                      mov r5, #0
007daa84  50 50 84 e5                                      str r5, [r4, #0x50]
007daa88  b0 ff ff ea                                      b #0x7da950
007daa8c  00 50 a0 e3                                      mov r5, #0
007daa90  44 50 84 e5                                      str r5, [r4, #0x44]
007daa94  cf ff ff ea                                      b #0x7da9d8
007daa98  00 50 a0 e3                                      mov r5, #0
007daa9c  38 50 84 e5                                      str r5, [r4, #0x38]
007daaa0  77 ff ff ea                                      b #0x7da884
007daaa4  00 50 a0 e3                                      mov r5, #0
007daaa8  40 50 84 e5                                      str r5, [r4, #0x40]
007daaac  85 ff ff ea                                      b #0x7da8c8
007daab0  00 50 a0 e3                                      mov r5, #0
007daab4  e8 ff ff ea                                      b #0x7daa5c
007daab8  00 50 a0 e3                                      mov r5, #0
007daabc  4c 50 84 e5                                      str r5, [r4, #0x4c]
007daac0  d5 ff ff ea                                      b #0x7daa1c
007daac4  00 50 a0 e3                                      mov r5, #0
007daac8  3c 50 84 e5                                      str r5, [r4, #0x3c]
007daacc  b0 ff ff ea                                      b #0x7da994
007daad0  00 50 a0 e3                                      mov r5, #0
007daad4  48 50 84 e5                                      str r5, [r4, #0x48]
007daad8  8b ff ff ea                                      b #0x7da90c
