; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dcbe4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CBufferBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase11CBufferBase12getMappedPtrEv
; demangled: glitch::video::CCommonGLDriverBase::CBufferBase::getMappedPtr() const
; decoder-mode: arm
006dcbe4  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006dcbe8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dd160, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CBufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase11CBufferBaseD1Ev
; demangled: glitch::video::CCommonGLDriverBase::CBufferBase::~CBufferBase()
; decoder-mode: arm
006dd160  24 30 9f e5                                      ldr r3, [pc, #0x24]
006dd164  24 20 9f e5                                      ldr r2, [pc, #0x24]
006dd168  10 40 2d e9                                      push {r4, lr}
006dd16c  03 30 8f e0                                      add r3, pc, r3
006dd170  02 20 93 e7                                      ldr r2, [r3, r2]
006dd174  00 40 a0 e1                                      mov r4, r0
006dd178  08 20 82 e2                                      add r2, r2, #8
006dd17c  00 20 80 e5                                      str r2, [r0]
006dd180  35 13 fb eb                                      bl #0x5a1e5c
006dd184  04 00 a0 e1                                      mov r0, r4
006dd188  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006dd18c  24 79 2b 00 7c 1f 00 00                          .byte 0x24, 0x79, 0x2b, 0x00, 0x7c, 0x1f, 0x00, 0x00

; FUNCTION 0x006ddf18, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CBufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase11CBufferBaseC1EPS1_NS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
; demangled: glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(glitch::video::CCommonGLDriverBase*, glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)
; decoder-mode: arm
006ddf18  70 40 2d e9                                      push {r4, r5, r6, lr}
006ddf1c  08 d0 4d e2                                      sub sp, sp, #8
006ddf20  20 c0 dd e5                                      ldrb ip, [sp, #0x20]
006ddf24  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006ddf28  01 60 a0 e1                                      mov r6, r1
006ddf2c  48 50 9f e5                                      ldr r5, [pc, #0x48]
006ddf30  02 10 a0 e1                                      mov r1, r2
006ddf34  03 20 a0 e1                                      mov r2, r3
006ddf38  18 30 9d e5                                      ldr r3, [sp, #0x18]
006ddf3c  00 40 a0 e1                                      mov r4, r0
006ddf40  00 e0 8d e5                                      str lr, [sp]
006ddf44  04 c0 8d e5                                      str ip, [sp, #4]
006ddf48  6e 0e fb eb                                      bl #0x5a1908
006ddf4c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006ddf50  05 50 8f e0                                      add r5, pc, r5
006ddf54  00 20 a0 e3                                      mov r2, #0
006ddf58  03 30 95 e7                                      ldr r3, [r5, r3]
006ddf5c  14 60 84 e5                                      str r6, [r4, #0x14]
006ddf60  1c 20 84 e5                                      str r2, [r4, #0x1c]
006ddf64  08 30 83 e2                                      add r3, r3, #8
006ddf68  00 30 84 e5                                      str r3, [r4]
006ddf6c  18 20 84 e5                                      str r2, [r4, #0x18]
006ddf70  04 00 a0 e1                                      mov r0, r4
006ddf74  08 d0 8d e2                                      add sp, sp, #8
006ddf78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006ddf7c  40 6b 2b 00 7c 1f 00 00                          .byte 0x40, 0x6b, 0x2b, 0x00, 0x7c, 0x1f, 0x00, 0x00

; FUNCTION 0x006ddf84, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CBufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase11CBufferBaseC2EPS1_NS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
; demangled: glitch::video::CCommonGLDriverBase::CBufferBase::CBufferBase(glitch::video::CCommonGLDriverBase*, glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)
; decoder-mode: arm
006ddf84  70 40 2d e9                                      push {r4, r5, r6, lr}
006ddf88  08 d0 4d e2                                      sub sp, sp, #8
006ddf8c  20 c0 dd e5                                      ldrb ip, [sp, #0x20]
006ddf90  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006ddf94  01 60 a0 e1                                      mov r6, r1
006ddf98  48 50 9f e5                                      ldr r5, [pc, #0x48]
006ddf9c  02 10 a0 e1                                      mov r1, r2
006ddfa0  03 20 a0 e1                                      mov r2, r3
006ddfa4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006ddfa8  00 40 a0 e1                                      mov r4, r0
006ddfac  00 e0 8d e5                                      str lr, [sp]
006ddfb0  04 c0 8d e5                                      str ip, [sp, #4]
006ddfb4  53 0e fb eb                                      bl #0x5a1908
006ddfb8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006ddfbc  05 50 8f e0                                      add r5, pc, r5
006ddfc0  00 20 a0 e3                                      mov r2, #0
006ddfc4  03 30 95 e7                                      ldr r3, [r5, r3]
006ddfc8  14 60 84 e5                                      str r6, [r4, #0x14]
006ddfcc  1c 20 84 e5                                      str r2, [r4, #0x1c]
006ddfd0  08 30 83 e2                                      add r3, r3, #8
006ddfd4  00 30 84 e5                                      str r3, [r4]
006ddfd8  18 20 84 e5                                      str r2, [r4, #0x18]
006ddfdc  04 00 a0 e1                                      mov r0, r4
006ddfe0  08 d0 8d e2                                      add sp, sp, #8
006ddfe4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006ddfe8  d4 6a 2b 00 7c 1f 00 00                          .byte 0xd4, 0x6a, 0x2b, 0x00, 0x7c, 0x1f, 0x00, 0x00

; FUNCTION 0x006de1e8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CBufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase11CBufferBaseD0Ev
; demangled: glitch::video::CCommonGLDriverBase::CBufferBase::~CBufferBase()
; decoder-mode: arm
006de1e8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006de1ec  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006de1f0  10 40 2d e9                                      push {r4, lr}
006de1f4  03 30 8f e0                                      add r3, pc, r3
006de1f8  02 20 93 e7                                      ldr r2, [r3, r2]
006de1fc  00 40 a0 e1                                      mov r4, r0
006de200  08 20 82 e2                                      add r2, r2, #8
006de204  00 20 80 e5                                      str r2, [r0]
006de208  13 0f fb eb                                      bl #0x5a1e5c
006de20c  04 00 a0 e1                                      mov r0, r4
006de210  26 c0 f0 eb                                      bl #0x30e2b0
006de214  04 00 a0 e1                                      mov r0, r4
006de218  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006de21c  9c 68 2b 00 7c 1f 00 00                          .byte 0x9c, 0x68, 0x2b, 0x00, 0x7c, 0x1f, 0x00, 0x00
