; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b8ff4, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::script_info
; alias: _ZN7gameswf11script_info4readEPNS_6streamEPNS_7abc_defE
; demangled: gameswf::script_info::read(gameswf::stream*, gameswf::abc_def*)
; decoder-mode: arm
007b8ff4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b8ff8  00 80 a0 e1                                      mov r8, r0
007b8ffc  0c d0 4d e2                                      sub sp, sp, #0xc
007b9000  01 00 a0 e1                                      mov r0, r1
007b9004  01 a0 a0 e1                                      mov sl, r1
007b9008  02 b0 a0 e1                                      mov fp, r2
007b900c  d2 2a ff eb                                      bl #0x783b5c
007b9010  0c 00 88 e5                                      str r0, [r8, #0xc]
007b9014  0a 00 a0 e1                                      mov r0, sl
007b9018  cf 2a ff eb                                      bl #0x783b5c
007b901c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
007b9020  00 90 a0 e1                                      mov sb, r0
007b9024  00 10 a0 e1                                      mov r1, r0
007b9028  10 00 88 e2                                      add r0, r8, #0x10
007b902c  9f fe ff eb                                      bl #0x7b8ab0
007b9030  00 00 59 e3                                      cmp sb, #0
007b9034  07 70 8f e0                                      add r7, pc, r7
007b9038  2a 00 00 da                                      ble #0x7b90e8
007b903c  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
007b9040  00 60 a0 e3                                      mov r6, #0
007b9044  06 40 a0 e1                                      mov r4, r6
007b9048  04 20 8d e5                                      str r2, [sp, #4]
007b904c  00 10 a0 e3                                      mov r1, #0
007b9050  34 00 a0 e3                                      mov r0, #0x34
007b9054  d3 66 fe eb                                      bl #0x752ba8
007b9058  00 30 a0 e1                                      mov r3, r0
007b905c  04 40 83 e4                                      str r4, [r3], #4
007b9060  04 30 83 e2                                      add r3, r3, #4
007b9064  04 40 80 e5                                      str r4, [r0, #4]
007b9068  04 40 83 e4                                      str r4, [r3], #4
007b906c  04 40 83 e4                                      str r4, [r3], #4
007b9070  04 40 83 e4                                      str r4, [r3], #4
007b9074  04 40 83 e4                                      str r4, [r3], #4
007b9078  04 40 83 e4                                      str r4, [r3], #4
007b907c  04 40 83 e4                                      str r4, [r3], #4
007b9080  04 40 83 e4                                      str r4, [r3], #4
007b9084  04 40 83 e4                                      str r4, [r3], #4
007b9088  04 40 83 e4                                      str r4, [r3], #4
007b908c  04 40 83 e4                                      str r4, [r3], #4
007b9090  00 40 83 e5                                      str r4, [r3]
007b9094  00 50 a0 e1                                      mov r5, r0
007b9098  d9 82 fe eb                                      bl #0x759c04
007b909c  04 20 9d e5                                      ldr r2, [sp, #4]
007b90a0  05 00 a0 e1                                      mov r0, r5
007b90a4  0a 10 a0 e1                                      mov r1, sl
007b90a8  02 30 97 e7                                      ldr r3, [r7, r2]
007b90ac  24 40 85 e5                                      str r4, [r5, #0x24]
007b90b0  0b 20 a0 e1                                      mov r2, fp
007b90b4  08 30 83 e2                                      add r3, r3, #8
007b90b8  00 30 85 e5                                      str r3, [r5]
007b90bc  28 40 85 e5                                      str r4, [r5, #0x28]
007b90c0  2c 40 85 e5                                      str r4, [r5, #0x2c]
007b90c4  30 40 c5 e5                                      strb r4, [r5, #0x30]
007b90c8  ad fc ff eb                                      bl #0x7b8384
007b90cc  10 00 98 e5                                      ldr r0, [r8, #0x10]
007b90d0  05 10 a0 e1                                      mov r1, r5
007b90d4  06 01 80 e0                                      add r0, r0, r6, lsl #2
007b90d8  01 60 86 e2                                      add r6, r6, #1
007b90dc  38 ff ff eb                                      bl #0x7b8dc4
007b90e0  09 00 56 e1                                      cmp r6, sb
007b90e4  d8 ff ff 1a                                      bne #0x7b904c
007b90e8  0c d0 8d e2                                      add sp, sp, #0xc
007b90ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007b90f0  5c ba 1d 00 44 36 00 00                          .byte 0x5c, 0xba, 0x1d, 0x00, 0x44, 0x36, 0x00, 0x00

; FUNCTION 0x007b92c8, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::script_info
; alias: _ZN7gameswf11script_infoD1Ev
; demangled: gameswf::script_info::~script_info()
; decoder-mode: arm
007b92c8  44 30 9f e5                                      ldr r3, [pc, #0x44]
007b92cc  44 20 9f e5                                      ldr r2, [pc, #0x44]
007b92d0  70 40 2d e9                                      push {r4, r5, r6, lr}
007b92d4  03 30 8f e0                                      add r3, pc, r3
007b92d8  02 20 93 e7                                      ldr r2, [r3, r2]
007b92dc  00 40 a0 e1                                      mov r4, r0
007b92e0  00 50 a0 e1                                      mov r5, r0
007b92e4  08 20 82 e2                                      add r2, r2, #8
007b92e8  10 20 84 e4                                      str r2, [r4], #0x10
007b92ec  04 00 a0 e1                                      mov r0, r4
007b92f0  00 10 a0 e3                                      mov r1, #0
007b92f4  ed fd ff eb                                      bl #0x7b8ab0
007b92f8  04 00 a0 e1                                      mov r0, r4
007b92fc  00 10 a0 e3                                      mov r1, #0
007b9300  18 fd ff eb                                      bl #0x7b8768
007b9304  05 00 a0 e1                                      mov r0, r5
007b9308  65 92 fe eb                                      bl #0x75dca4
007b930c  05 00 a0 e1                                      mov r0, r5
007b9310  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007b9314  bc b7 1d 00 2c 19 00 00                          .byte 0xbc, 0xb7, 0x1d, 0x00, 0x2c, 0x19, 0x00, 0x00

; FUNCTION 0x007b9370, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::script_info
; alias: _ZN7gameswf11script_infoD0Ev
; demangled: gameswf::script_info::~script_info()
; decoder-mode: arm
007b9370  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
007b9374  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
007b9378  70 40 2d e9                                      push {r4, r5, r6, lr}
007b937c  03 30 8f e0                                      add r3, pc, r3
007b9380  02 20 93 e7                                      ldr r2, [r3, r2]
007b9384  00 50 a0 e1                                      mov r5, r0
007b9388  00 40 a0 e1                                      mov r4, r0
007b938c  08 20 82 e2                                      add r2, r2, #8
007b9390  10 20 85 e4                                      str r2, [r5], #0x10
007b9394  05 00 a0 e1                                      mov r0, r5
007b9398  00 10 a0 e3                                      mov r1, #0
007b939c  c3 fd ff eb                                      bl #0x7b8ab0
007b93a0  00 10 a0 e3                                      mov r1, #0
007b93a4  05 00 a0 e1                                      mov r0, r5
007b93a8  ee fc ff eb                                      bl #0x7b8768
007b93ac  04 00 a0 e1                                      mov r0, r4
007b93b0  3b 92 fe eb                                      bl #0x75dca4
007b93b4  04 00 a0 e1                                      mov r0, r4
007b93b8  bc 53 ed eb                                      bl #0x30e2b0
007b93bc  04 00 a0 e1                                      mov r0, r4
007b93c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007b93c4  14 b7 1d 00 2c 19 00 00                          .byte 0x14, 0xb7, 0x1d, 0x00, 0x2c, 0x19, 0x00, 0x00
