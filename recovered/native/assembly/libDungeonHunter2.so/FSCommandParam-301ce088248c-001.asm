; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004156b8, declared_size=8, range_size=8, mode=arm
; class-group: FSCommandParam
; alias: _ZN14FSCommandParam9GetStringEPKc
; demangled: FSCommandParam::GetString(char const*)
; decoder-mode: arm
004156b8  01 00 a0 e3                                      mov r0, #1
004156bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041577c, declared_size=56, range_size=56, mode=arm
; class-group: FSCommandParam
; alias: _ZN14FSCommandParam8GetFloatEPf
; demangled: FSCommandParam::GetFloat(float*)
; decoder-mode: arm
0041577c  10 40 2d e9                                      push {r4, lr}
00415780  01 40 a0 e1                                      mov r4, r1
00415784  14 00 90 e5                                      ldr r0, [r0, #0x14]
00415788  00 10 a0 e3                                      mov r1, #0
0041578c  c6 e3 fb eb                                      bl #0x30e6ac
00415790  c2 e3 fb eb                                      bl #0x30e6a0
00415794  00 10 a0 e3                                      mov r1, #0
00415798  00 00 84 e5                                      str r0, [r4]
0041579c  fa e1 fb eb                                      bl #0x30df8c
004157a0  00 00 50 e3                                      cmp r0, #0
004157a4  00 00 a0 e3                                      mov r0, #0
004157a8  01 00 a0 03                                      moveq r0, #1
004157ac  01 00 00 e2                                      and r0, r0, #1
004157b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004157b4, declared_size=32, range_size=32, mode=arm
; class-group: FSCommandParam
; alias: _ZN14FSCommandParam6GetIntEPi
; demangled: FSCommandParam::GetInt(int*)
; decoder-mode: arm
004157b4  10 40 2d e9                                      push {r4, lr}
004157b8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004157bc  01 40 a0 e1                                      mov r4, r1
004157c0  33 e2 fb eb                                      bl #0x30e094
004157c4  00 00 84 e5                                      str r0, [r4]
004157c8  00 00 50 e2                                      subs r0, r0, #0
004157cc  01 00 a0 13                                      movne r0, #1
004157d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004159b4, declared_size=68, range_size=68, mode=arm
; class-group: FSCommandParam
; alias: _ZN14FSCommandParamD1Ev
; demangled: FSCommandParam::~FSCommandParam()
; decoder-mode: arm
004159b4  10 40 2d e9                                      push {r4, lr}
004159b8  00 40 a0 e1                                      mov r4, r0
004159bc  14 00 90 e5                                      ldr r0, [r0, #0x14]
004159c0  04 00 50 e1                                      cmp r0, r4
004159c4  06 00 00 0a                                      beq #0x4159e4
004159c8  00 00 50 e3                                      cmp r0, #0
004159cc  04 00 00 0a                                      beq #0x4159e4
004159d0  00 10 94 e5                                      ldr r1, [r4]
004159d4  01 10 60 e0                                      rsb r1, r0, r1
004159d8  80 00 51 e3                                      cmp r1, #0x80
004159dc  02 00 00 8a                                      bhi #0x4159ec
004159e0  46 cd 0b eb                                      bl #0x708f00
004159e4  04 00 a0 e1                                      mov r0, r4
004159e8  10 80 bd e8                                      pop {r4, pc}
004159ec  93 ea fb eb                                      bl #0x310440
004159f0  04 00 a0 e1                                      mov r0, r4
004159f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00415c54, declared_size=68, range_size=68, mode=arm
; class-group: FSCommandParam
; alias: _ZN14FSCommandParamD2Ev
; demangled: FSCommandParam::~FSCommandParam()
; decoder-mode: arm
00415c54  10 40 2d e9                                      push {r4, lr}
00415c58  00 40 a0 e1                                      mov r4, r0
00415c5c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00415c60  04 00 50 e1                                      cmp r0, r4
00415c64  06 00 00 0a                                      beq #0x415c84
00415c68  00 00 50 e3                                      cmp r0, #0
00415c6c  04 00 00 0a                                      beq #0x415c84
00415c70  00 10 94 e5                                      ldr r1, [r4]
00415c74  01 10 60 e0                                      rsb r1, r0, r1
00415c78  80 00 51 e3                                      cmp r1, #0x80
00415c7c  02 00 00 8a                                      bhi #0x415c8c
00415c80  9e cc 0b eb                                      bl #0x708f00
00415c84  04 00 a0 e1                                      mov r0, r4
00415c88  10 80 bd e8                                      pop {r4, pc}
00415c8c  eb e9 fb eb                                      bl #0x310440
00415c90  04 00 a0 e1                                      mov r0, r4
00415c94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00415c98, declared_size=32, range_size=32, mode=arm
; class-group: FSCommandParam
; alias: _ZN14FSCommandParamC1EPKc
; demangled: FSCommandParam::FSCommandParam(char const*)
; decoder-mode: arm
00415c98  10 40 2d e9                                      push {r4, lr}
00415c9c  08 d0 4d e2                                      sub sp, sp, #8
00415ca0  00 40 a0 e1                                      mov r4, r0
00415ca4  04 20 8d e2                                      add r2, sp, #4
00415ca8  0f f9 fb eb                                      bl #0x3140ec
00415cac  04 00 a0 e1                                      mov r0, r4
00415cb0  08 d0 8d e2                                      add sp, sp, #8
00415cb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00415cb8, declared_size=32, range_size=32, mode=arm
; class-group: FSCommandParam
; alias: _ZN14FSCommandParamC2EPKc
; demangled: FSCommandParam::FSCommandParam(char const*)
; decoder-mode: arm
00415cb8  10 40 2d e9                                      push {r4, lr}
00415cbc  08 d0 4d e2                                      sub sp, sp, #8
00415cc0  00 40 a0 e1                                      mov r4, r0
00415cc4  04 20 8d e2                                      add r2, sp, #4
00415cc8  07 f9 fb eb                                      bl #0x3140ec
00415ccc  04 00 a0 e1                                      mov r0, r4
00415cd0  08 d0 8d e2                                      add sp, sp, #8
00415cd4  10 80 bd e8                                      pop {r4, pc}
