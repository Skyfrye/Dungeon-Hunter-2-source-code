; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b7fe0, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::except_info
; alias: _ZN7gameswf11except_info4readEPNS_6streamEPNS_7abc_defE
; demangled: gameswf::except_info::read(gameswf::stream*, gameswf::abc_def*)
; decoder-mode: arm
007b7fe0  70 40 2d e9                                      push {r4, r5, r6, lr}
007b7fe4  00 40 a0 e1                                      mov r4, r0
007b7fe8  01 00 a0 e1                                      mov r0, r1
007b7fec  01 50 a0 e1                                      mov r5, r1
007b7ff0  d9 2e ff eb                                      bl #0x783b5c
007b7ff4  0c 00 84 e5                                      str r0, [r4, #0xc]
007b7ff8  05 00 a0 e1                                      mov r0, r5
007b7ffc  d6 2e ff eb                                      bl #0x783b5c
007b8000  10 00 84 e5                                      str r0, [r4, #0x10]
007b8004  05 00 a0 e1                                      mov r0, r5
007b8008  d3 2e ff eb                                      bl #0x783b5c
007b800c  14 00 84 e5                                      str r0, [r4, #0x14]
007b8010  05 00 a0 e1                                      mov r0, r5
007b8014  d0 2e ff eb                                      bl #0x783b5c
007b8018  18 00 84 e5                                      str r0, [r4, #0x18]
007b801c  05 00 a0 e1                                      mov r0, r5
007b8020  cd 2e ff eb                                      bl #0x783b5c
007b8024  1c 00 84 e5                                      str r0, [r4, #0x1c]
007b8028  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007c2c2c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::except_info
; alias: _ZN7gameswf11except_infoD1Ev
; demangled: gameswf::except_info::~except_info()
; decoder-mode: arm
007c2c2c  24 30 9f e5                                      ldr r3, [pc, #0x24]
007c2c30  24 20 9f e5                                      ldr r2, [pc, #0x24]
007c2c34  10 40 2d e9                                      push {r4, lr}
007c2c38  03 30 8f e0                                      add r3, pc, r3
007c2c3c  02 20 93 e7                                      ldr r2, [r3, r2]
007c2c40  00 40 a0 e1                                      mov r4, r0
007c2c44  08 20 82 e2                                      add r2, r2, #8
007c2c48  00 20 80 e5                                      str r2, [r0]
007c2c4c  14 6c fe eb                                      bl #0x75dca4
007c2c50  04 00 a0 e1                                      mov r0, r4
007c2c54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007c2c58  58 1e 1d 00 20 3b 00 00                          .byte 0x58, 0x1e, 0x1d, 0x00, 0x20, 0x3b, 0x00, 0x00

; FUNCTION 0x007c300c, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::except_info
; alias: _ZN7gameswf11except_infoD0Ev
; demangled: gameswf::except_info::~except_info()
; decoder-mode: arm
007c300c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007c3010  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007c3014  10 40 2d e9                                      push {r4, lr}
007c3018  03 30 8f e0                                      add r3, pc, r3
007c301c  02 20 93 e7                                      ldr r2, [r3, r2]
007c3020  00 40 a0 e1                                      mov r4, r0
007c3024  08 20 82 e2                                      add r2, r2, #8
007c3028  00 20 80 e5                                      str r2, [r0]
007c302c  1c 6b fe eb                                      bl #0x75dca4
007c3030  04 00 a0 e1                                      mov r0, r4
007c3034  9d 2c ed eb                                      bl #0x30e2b0
007c3038  04 00 a0 e1                                      mov r0, r4
007c303c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007c3040  78 1a 1d 00 20 3b 00 00                          .byte 0x78, 0x1a, 0x1d, 0x00, 0x20, 0x3b, 0x00, 0x00
