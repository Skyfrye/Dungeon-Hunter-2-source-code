; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313720, declared_size=64, range_size=64, mode=arm
; class-group: Savegame::Job
; alias: _ZN8Savegame3Job6finishEv
; demangled: Savegame::Job::finish()
; decoder-mode: arm
00313720  10 40 2d e9                                      push {r4, lr}
00313724  1d 30 d0 e5                                      ldrb r3, [r0, #0x1d]
00313728  00 40 a0 e1                                      mov r4, r0
0031372c  00 00 53 e3                                      cmp r3, #0
00313730  06 00 00 0a                                      beq #0x313750
00313734  00 30 90 e5                                      ldr r3, [r0]
00313738  00 00 53 e3                                      cmp r3, #0
0031373c  03 00 00 0a                                      beq #0x313750
00313740  03 00 a0 e1                                      mov r0, r3
00313744  00 30 93 e5                                      ldr r3, [r3]
00313748  0f e0 a0 e1                                      mov lr, pc
0031374c  04 f0 93 e5                                      ldr pc, [r3, #4]
00313750  00 30 a0 e3                                      mov r3, #0
00313754  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
00313758  00 30 84 e5                                      str r3, [r4]
0031375c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00313c90, declared_size=76, range_size=76, mode=arm
; class-group: Savegame::Job
; alias: _ZN8Savegame3JobD1Ev
; demangled: Savegame::Job::~Job()
; decoder-mode: arm
00313c90  10 40 2d e9                                      push {r4, lr}
00313c94  1d 30 d0 e5                                      ldrb r3, [r0, #0x1d]
00313c98  00 40 a0 e1                                      mov r4, r0
00313c9c  00 00 53 e3                                      cmp r3, #0
00313ca0  06 00 00 0a                                      beq #0x313cc0
00313ca4  00 30 90 e5                                      ldr r3, [r0]
00313ca8  00 00 53 e3                                      cmp r3, #0
00313cac  03 00 00 0a                                      beq #0x313cc0
00313cb0  03 00 a0 e1                                      mov r0, r3
00313cb4  00 30 93 e5                                      ldr r3, [r3]
00313cb8  0f e0 a0 e1                                      mov lr, pc
00313cbc  04 f0 93 e5                                      ldr pc, [r3, #4]
00313cc0  00 30 a0 e3                                      mov r3, #0
00313cc4  04 00 84 e2                                      add r0, r4, #4
00313cc8  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
00313ccc  00 30 84 e5                                      str r3, [r4]
00313cd0  35 ff ff eb                                      bl #0x3139ac
00313cd4  04 00 a0 e1                                      mov r0, r4
00313cd8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00313cdc, declared_size=128, range_size=128, mode=arm
; class-group: Savegame::Job
; alias: _ZN8Savegame3Job4copyERKS0_
; demangled: Savegame::Job::copy(Savegame::Job const&)
; decoder-mode: arm
00313cdc  70 40 2d e9                                      push {r4, r5, r6, lr}
00313ce0  1d 30 d0 e5                                      ldrb r3, [r0, #0x1d]
00313ce4  00 40 a0 e1                                      mov r4, r0
00313ce8  01 50 a0 e1                                      mov r5, r1
00313cec  00 00 53 e3                                      cmp r3, #0
00313cf0  06 00 00 0a                                      beq #0x313d10
00313cf4  00 30 90 e5                                      ldr r3, [r0]
00313cf8  00 00 53 e3                                      cmp r3, #0
00313cfc  03 00 00 0a                                      beq #0x313d10
00313d00  03 00 a0 e1                                      mov r0, r3
00313d04  00 30 93 e5                                      ldr r3, [r3]
00313d08  0f e0 a0 e1                                      mov lr, pc
00313d0c  04 f0 93 e5                                      ldr pc, [r3, #4]
00313d10  00 30 a0 e3                                      mov r3, #0
00313d14  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
00313d18  00 30 84 e5                                      str r3, [r4]
00313d1c  05 30 a0 e1                                      mov r3, r5
00313d20  04 20 93 e4                                      ldr r2, [r3], #4
00313d24  04 00 a0 e1                                      mov r0, r4
00313d28  04 20 80 e4                                      str r2, [r0], #4
00313d2c  03 00 50 e1                                      cmp r0, r3
00313d30  02 00 00 0a                                      beq #0x313d40
00313d34  18 10 95 e5                                      ldr r1, [r5, #0x18]
00313d38  14 20 95 e5                                      ldr r2, [r5, #0x14]
00313d3c  27 f3 ff eb                                      bl #0x3109e0
00313d40  1d 30 d5 e5                                      ldrb r3, [r5, #0x1d]
00313d44  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
00313d48  1c 30 d5 e5                                      ldrb r3, [r5, #0x1c]
00313d4c  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
00313d50  00 30 a0 e3                                      mov r3, #0
00313d54  1d 30 c5 e5                                      strb r3, [r5, #0x1d]
00313d58  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003145e0, declared_size=72, range_size=72, mode=arm
; class-group: Savegame::Job
; alias: _ZN8Savegame3JobC1ERKS0_
; demangled: Savegame::Job::Job(Savegame::Job const&)
; decoder-mode: arm
003145e0  70 40 2d e9                                      push {r4, r5, r6, lr}
003145e4  04 30 80 e2                                      add r3, r0, #4
003145e8  00 40 a0 e1                                      mov r4, r0
003145ec  01 50 a0 e1                                      mov r5, r1
003145f0  03 00 a0 e1                                      mov r0, r3
003145f4  14 30 84 e5                                      str r3, [r4, #0x14]
003145f8  18 30 84 e5                                      str r3, [r4, #0x18]
003145fc  10 10 a0 e3                                      mov r1, #0x10
00314600  1d f4 ff eb                                      bl #0x31167c
00314604  14 20 94 e5                                      ldr r2, [r4, #0x14]
00314608  00 30 a0 e3                                      mov r3, #0
0031460c  04 00 a0 e1                                      mov r0, r4
00314610  00 30 c2 e5                                      strb r3, [r2]
00314614  05 10 a0 e1                                      mov r1, r5
00314618  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
0031461c  ae fd ff eb                                      bl #0x313cdc
00314620  04 00 a0 e1                                      mov r0, r4
00314624  70 80 bd e8                                      pop {r4, r5, r6, pc}
