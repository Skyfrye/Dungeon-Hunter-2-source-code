; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dc684, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CDriverBinding
; alias: _ZN6glitch5video14CDriverBinding8onDeleteEv
; demangled: glitch::video::CDriverBinding::onDelete()
; decoder-mode: arm
006dc684  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dc71c, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CDriverBinding
; alias: _ZN6glitch5video14CDriverBindingD1Ev
; demangled: glitch::video::CDriverBinding::~CDriverBinding()
; decoder-mode: arm
006dc71c  30 40 2d e9                                      push {r4, r5, lr}
006dc720  74 30 9f e5                                      ldr r3, [pc, #0x74]
006dc724  74 20 9f e5                                      ldr r2, [pc, #0x74]
006dc728  04 10 90 e5                                      ldr r1, [r0, #4]
006dc72c  03 30 8f e0                                      add r3, pc, r3
006dc730  02 20 93 e7                                      ldr r2, [r3, r2]
006dc734  00 00 51 e3                                      cmp r1, #0
006dc738  14 d0 4d e2                                      sub sp, sp, #0x14
006dc73c  08 20 82 e2                                      add r2, r2, #8
006dc740  00 40 a0 e1                                      mov r4, r0
006dc744  00 20 80 e5                                      str r2, [r0]
006dc748  10 00 00 0a                                      beq #0x6dc790
006dc74c  20 00 90 e5                                      ldr r0, [r0, #0x20]
006dc750  00 20 a0 e3                                      mov r2, #0
006dc754  10 50 8d e2                                      add r5, sp, #0x10
006dc758  00 10 90 e5                                      ldr r1, [r0]
006dc75c  02 30 a0 e1                                      mov r3, r2
006dc760  f4 c1 91 e5                                      ldr ip, [r1, #0x1f4]
006dc764  04 20 25 e5                                      str r2, [r5, #-4]!
006dc768  01 10 a0 e3                                      mov r1, #1
006dc76c  14 00 8d e8                                      stm sp, {r2, r4}
006dc770  05 20 a0 e1                                      mov r2, r5
006dc774  3c ff 2f e1                                      blx ip
006dc778  05 00 a0 e1                                      mov r0, r5
006dc77c  5e 12 fb eb                                      bl #0x5a10fc
006dc780  04 00 94 e5                                      ldr r0, [r4, #4]
006dc784  00 00 50 e3                                      cmp r0, #0
006dc788  00 00 00 0a                                      beq #0x6dc790
006dc78c  7c 03 f1 eb                                      bl #0x31d584
006dc790  04 00 a0 e1                                      mov r0, r4
006dc794  14 d0 8d e2                                      add sp, sp, #0x14
006dc798  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006dc79c  64 83 2b 00 3c 48 00 00                          .byte 0x64, 0x83, 0x2b, 0x00, 0x3c, 0x48, 0x00, 0x00

; FUNCTION 0x006dc7a4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CDriverBinding
; alias: _ZN6glitch5video14CDriverBindingD0Ev
; demangled: glitch::video::CDriverBinding::~CDriverBinding()
; decoder-mode: arm
006dc7a4  10 40 2d e9                                      push {r4, lr}
006dc7a8  00 40 a0 e1                                      mov r4, r0
006dc7ac  da ff ff eb                                      bl #0x6dc71c
006dc7b0  04 00 a0 e1                                      mov r0, r4
006dc7b4  bd c6 f0 eb                                      bl #0x30e2b0
006dc7b8  04 00 a0 e1                                      mov r0, r4
006dc7bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006dc7c0, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CDriverBinding
; alias: _ZN6glitch5video14CDriverBindingD2Ev
; demangled: glitch::video::CDriverBinding::~CDriverBinding()
; decoder-mode: arm
006dc7c0  30 40 2d e9                                      push {r4, r5, lr}
006dc7c4  74 30 9f e5                                      ldr r3, [pc, #0x74]
006dc7c8  74 20 9f e5                                      ldr r2, [pc, #0x74]
006dc7cc  04 10 90 e5                                      ldr r1, [r0, #4]
006dc7d0  03 30 8f e0                                      add r3, pc, r3
006dc7d4  02 20 93 e7                                      ldr r2, [r3, r2]
006dc7d8  00 00 51 e3                                      cmp r1, #0
006dc7dc  14 d0 4d e2                                      sub sp, sp, #0x14
006dc7e0  08 20 82 e2                                      add r2, r2, #8
006dc7e4  00 40 a0 e1                                      mov r4, r0
006dc7e8  00 20 80 e5                                      str r2, [r0]
006dc7ec  10 00 00 0a                                      beq #0x6dc834
006dc7f0  20 00 90 e5                                      ldr r0, [r0, #0x20]
006dc7f4  00 20 a0 e3                                      mov r2, #0
006dc7f8  10 50 8d e2                                      add r5, sp, #0x10
006dc7fc  00 10 90 e5                                      ldr r1, [r0]
006dc800  02 30 a0 e1                                      mov r3, r2
006dc804  f4 c1 91 e5                                      ldr ip, [r1, #0x1f4]
006dc808  04 20 25 e5                                      str r2, [r5, #-4]!
006dc80c  01 10 a0 e3                                      mov r1, #1
006dc810  14 00 8d e8                                      stm sp, {r2, r4}
006dc814  05 20 a0 e1                                      mov r2, r5
006dc818  3c ff 2f e1                                      blx ip
006dc81c  05 00 a0 e1                                      mov r0, r5
006dc820  35 12 fb eb                                      bl #0x5a10fc
006dc824  04 00 94 e5                                      ldr r0, [r4, #4]
006dc828  00 00 50 e3                                      cmp r0, #0
006dc82c  00 00 00 0a                                      beq #0x6dc834
006dc830  53 03 f1 eb                                      bl #0x31d584
006dc834  04 00 a0 e1                                      mov r0, r4
006dc838  14 d0 8d e2                                      add sp, sp, #0x14
006dc83c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006dc840  c0 82 2b 00 3c 48 00 00                          .byte 0xc0, 0x82, 0x2b, 0x00, 0x3c, 0x48, 0x00, 0x00
