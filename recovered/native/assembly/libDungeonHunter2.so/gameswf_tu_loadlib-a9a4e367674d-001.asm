; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b7588, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::tu_loadlib
; alias: _ZN7gameswf10tu_loadlibD2Ev
; demangled: gameswf::tu_loadlib::~tu_loadlib()
; decoder-mode: arm
007b7588  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b758c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::tu_loadlib
; alias: _ZN7gameswf10tu_loadlibD1Ev
; demangled: gameswf::tu_loadlib::~tu_loadlib()
; decoder-mode: arm
007b758c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b7590, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::tu_loadlib
; alias: _ZN7gameswf10tu_loadlib12get_functionEPKc
; demangled: gameswf::tu_loadlib::get_function(char const*)
; decoder-mode: arm
007b7590  00 00 a0 e3                                      mov r0, #0
007b7594  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b7600, declared_size=212, range_size=212, mode=arm
; class-group: gameswf::tu_loadlib
; alias: _ZN7gameswf10tu_loadlibC2EPKc
; demangled: gameswf::tu_loadlib::tu_loadlib(char const*)
; decoder-mode: arm
007b7600  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b7604  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
007b7608  b8 70 9f e5                                      ldr r7, [pc, #0xb8]
007b760c  18 d0 4d e2                                      sub sp, sp, #0x18
007b7610  04 40 8f e0                                      add r4, pc, r4
007b7614  07 30 94 e7                                      ldr r3, [r4, r7]
007b7618  00 20 a0 e3                                      mov r2, #0
007b761c  00 60 a0 e1                                      mov r6, r0
007b7620  00 30 93 e5                                      ldr r3, [r3]
007b7624  01 80 a0 e1                                      mov r8, r1
007b7628  00 20 80 e5                                      str r2, [r0]
007b762c  0d 00 a0 e1                                      mov r0, sp
007b7630  14 30 8d e5                                      str r3, [sp, #0x14]
007b7634  d7 ff ff eb                                      bl #0x7b7598
007b7638  0d 00 a0 e1                                      mov r0, sp
007b763c  08 10 a0 e1                                      mov r1, r8
007b7640  e1 6a fe eb                                      bl #0x7521cc
007b7644  80 10 9f e5                                      ldr r1, [pc, #0x80]
007b7648  0d 00 a0 e1                                      mov r0, sp
007b764c  0d 50 a0 e1                                      mov r5, sp
007b7650  01 10 8f e0                                      add r1, pc, r1
007b7654  dc 6a fe eb                                      bl #0x7521cc
007b7658  00 30 96 e5                                      ldr r3, [r6]
007b765c  00 00 53 e3                                      cmp r3, #0
007b7660  0e 00 00 0a                                      beq #0x7b76a0
007b7664  d0 30 dd e1                                      ldrsb r3, [sp]
007b7668  01 00 73 e3                                      cmn r3, #1
007b766c  07 00 00 0a                                      beq #0x7b7690
007b7670  07 30 94 e7                                      ldr r3, [r4, r7]
007b7674  14 20 9d e5                                      ldr r2, [sp, #0x14]
007b7678  06 00 a0 e1                                      mov r0, r6
007b767c  00 30 93 e5                                      ldr r3, [r3]
007b7680  03 00 52 e1                                      cmp r2, r3
007b7684  0d 00 00 1a                                      bne #0x7b76c0
007b7688  18 d0 8d e2                                      add sp, sp, #0x18
007b768c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b7690  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007b7694  08 10 9d e5                                      ldr r1, [sp, #8]
007b7698  26 6d fe eb                                      bl #0x752b38
007b769c  f3 ff ff ea                                      b #0x7b7670
007b76a0  d0 30 dd e1                                      ldrsb r3, [sp]
007b76a4  24 00 9f e5                                      ldr r0, [pc, #0x24]
007b76a8  01 00 73 e3                                      cmn r3, #1
007b76ac  01 10 8d 12                                      addne r1, sp, #1
007b76b0  0c 10 9d 05                                      ldreq r1, [sp, #0xc]
007b76b4  00 00 8f e0                                      add r0, pc, r0
007b76b8  f1 59 ed eb                                      bl #0x30de84
007b76bc  e8 ff ff ea                                      b #0x7b7664
007b76c0  12 5b ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007b76c4  80 d4 1d 00 ac 40 00 00 98 33 15 00 3c 33 15 00  .byte 0x80, 0xd4, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x33, 0x15, 0x00, 0x3c, 0x33, 0x15, 0x00

; FUNCTION 0x007b76d4, declared_size=212, range_size=212, mode=arm
; class-group: gameswf::tu_loadlib
; alias: _ZN7gameswf10tu_loadlibC1EPKc
; demangled: gameswf::tu_loadlib::tu_loadlib(char const*)
; decoder-mode: arm
007b76d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b76d8  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
007b76dc  b8 70 9f e5                                      ldr r7, [pc, #0xb8]
007b76e0  18 d0 4d e2                                      sub sp, sp, #0x18
007b76e4  04 40 8f e0                                      add r4, pc, r4
007b76e8  07 30 94 e7                                      ldr r3, [r4, r7]
007b76ec  00 20 a0 e3                                      mov r2, #0
007b76f0  00 60 a0 e1                                      mov r6, r0
007b76f4  00 30 93 e5                                      ldr r3, [r3]
007b76f8  01 80 a0 e1                                      mov r8, r1
007b76fc  00 20 80 e5                                      str r2, [r0]
007b7700  0d 00 a0 e1                                      mov r0, sp
007b7704  14 30 8d e5                                      str r3, [sp, #0x14]
007b7708  a2 ff ff eb                                      bl #0x7b7598
007b770c  0d 00 a0 e1                                      mov r0, sp
007b7710  08 10 a0 e1                                      mov r1, r8
007b7714  ac 6a fe eb                                      bl #0x7521cc
007b7718  80 10 9f e5                                      ldr r1, [pc, #0x80]
007b771c  0d 00 a0 e1                                      mov r0, sp
007b7720  0d 50 a0 e1                                      mov r5, sp
007b7724  01 10 8f e0                                      add r1, pc, r1
007b7728  a7 6a fe eb                                      bl #0x7521cc
007b772c  00 30 96 e5                                      ldr r3, [r6]
007b7730  00 00 53 e3                                      cmp r3, #0
007b7734  0e 00 00 0a                                      beq #0x7b7774
007b7738  d0 30 dd e1                                      ldrsb r3, [sp]
007b773c  01 00 73 e3                                      cmn r3, #1
007b7740  07 00 00 0a                                      beq #0x7b7764
007b7744  07 30 94 e7                                      ldr r3, [r4, r7]
007b7748  14 20 9d e5                                      ldr r2, [sp, #0x14]
007b774c  06 00 a0 e1                                      mov r0, r6
007b7750  00 30 93 e5                                      ldr r3, [r3]
007b7754  03 00 52 e1                                      cmp r2, r3
007b7758  0d 00 00 1a                                      bne #0x7b7794
007b775c  18 d0 8d e2                                      add sp, sp, #0x18
007b7760  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b7764  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007b7768  08 10 9d e5                                      ldr r1, [sp, #8]
007b776c  f1 6c fe eb                                      bl #0x752b38
007b7770  f3 ff ff ea                                      b #0x7b7744
007b7774  d0 30 dd e1                                      ldrsb r3, [sp]
007b7778  24 00 9f e5                                      ldr r0, [pc, #0x24]
007b777c  01 00 73 e3                                      cmn r3, #1
007b7780  01 10 8d 12                                      addne r1, sp, #1
007b7784  0c 10 9d 05                                      ldreq r1, [sp, #0xc]
007b7788  00 00 8f e0                                      add r0, pc, r0
007b778c  bc 59 ed eb                                      bl #0x30de84
007b7790  e8 ff ff ea                                      b #0x7b7738
007b7794  dd 5a ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007b7798  ac d3 1d 00 ac 40 00 00 c4 32 15 00 68 32 15 00  .byte 0xac, 0xd3, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc4, 0x32, 0x15, 0x00, 0x68, 0x32, 0x15, 0x00
