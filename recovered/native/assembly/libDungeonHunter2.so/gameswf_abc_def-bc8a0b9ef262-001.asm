; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b7fb4, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::abc_def
; alias: _ZNK7gameswf7abc_def13find_instanceERKNS_9tu_stringE
; demangled: gameswf::abc_def::find_instance(gameswf::tu_string const&) const
; decoder-mode: arm
007b7fb4  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
007b7fb8  00 00 93 e5                                      ldr r0, [r3]
007b7fbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b7fc0, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::abc_def
; alias: _ZNK7gameswf7abc_def21get_class_constructorERNS_9tu_stringE
; demangled: gameswf::abc_def::get_class_constructor(gameswf::tu_string&) const
; decoder-mode: arm
007b7fc0  10 40 2d e9                                      push {r4, lr}
007b7fc4  00 40 a0 e1                                      mov r4, r0
007b7fc8  f9 ff ff eb                                      bl #0x7b7fb4
007b7fcc  00 00 50 e3                                      cmp r0, #0
007b7fd0  2c 20 90 15                                      ldrne r2, [r0, #0x2c]
007b7fd4  7c 30 94 15                                      ldrne r3, [r4, #0x7c]
007b7fd8  02 01 93 17                                      ldrne r0, [r3, r2, lsl #2]
007b7fdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b8e04, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::abc_def
; alias: _ZN7gameswf7abc_defC1EPNS_6playerE
; demangled: gameswf::abc_def::abc_def(gameswf::player*)
; decoder-mode: arm
007b8e04  70 40 2d e9                                      push {r4, r5, r6, lr}
007b8e08  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
007b8e0c  00 40 a0 e1                                      mov r4, r0
007b8e10  7b 83 fe eb                                      bl #0x759c04
007b8e14  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
007b8e18  05 50 8f e0                                      add r5, pc, r5
007b8e1c  00 30 a0 e3                                      mov r3, #0
007b8e20  02 20 95 e7                                      ldr r2, [r5, r2]
007b8e24  0c 30 84 e5                                      str r3, [r4, #0xc]
007b8e28  10 30 84 e5                                      str r3, [r4, #0x10]
007b8e2c  08 20 82 e2                                      add r2, r2, #8
007b8e30  00 20 84 e5                                      str r2, [r4]
007b8e34  14 30 84 e5                                      str r3, [r4, #0x14]
007b8e38  18 30 c4 e5                                      strb r3, [r4, #0x18]
007b8e3c  1c 30 84 e5                                      str r3, [r4, #0x1c]
007b8e40  20 30 84 e5                                      str r3, [r4, #0x20]
007b8e44  24 30 84 e5                                      str r3, [r4, #0x24]
007b8e48  28 30 c4 e5                                      strb r3, [r4, #0x28]
007b8e4c  2c 30 84 e5                                      str r3, [r4, #0x2c]
007b8e50  30 30 84 e5                                      str r3, [r4, #0x30]
007b8e54  34 30 84 e5                                      str r3, [r4, #0x34]
007b8e58  38 30 c4 e5                                      strb r3, [r4, #0x38]
007b8e5c  3c 30 84 e5                                      str r3, [r4, #0x3c]
007b8e60  40 30 84 e5                                      str r3, [r4, #0x40]
007b8e64  44 30 84 e5                                      str r3, [r4, #0x44]
007b8e68  48 30 c4 e5                                      strb r3, [r4, #0x48]
007b8e6c  4c 30 84 e5                                      str r3, [r4, #0x4c]
007b8e70  50 30 84 e5                                      str r3, [r4, #0x50]
007b8e74  54 30 84 e5                                      str r3, [r4, #0x54]
007b8e78  58 30 c4 e5                                      strb r3, [r4, #0x58]
007b8e7c  5c 30 84 e5                                      str r3, [r4, #0x5c]
007b8e80  60 30 84 e5                                      str r3, [r4, #0x60]
007b8e84  64 30 84 e5                                      str r3, [r4, #0x64]
007b8e88  68 30 c4 e5                                      strb r3, [r4, #0x68]
007b8e8c  6c 30 84 e5                                      str r3, [r4, #0x6c]
007b8e90  70 30 84 e5                                      str r3, [r4, #0x70]
007b8e94  74 30 84 e5                                      str r3, [r4, #0x74]
007b8e98  78 30 c4 e5                                      strb r3, [r4, #0x78]
007b8e9c  7c 30 84 e5                                      str r3, [r4, #0x7c]
007b8ea0  80 30 84 e5                                      str r3, [r4, #0x80]
007b8ea4  84 30 84 e5                                      str r3, [r4, #0x84]
007b8ea8  88 30 c4 e5                                      strb r3, [r4, #0x88]
007b8eac  04 00 a0 e1                                      mov r0, r4
007b8eb0  c8 30 c4 e5                                      strb r3, [r4, #0xc8]
007b8eb4  8c 30 84 e5                                      str r3, [r4, #0x8c]
007b8eb8  90 30 84 e5                                      str r3, [r4, #0x90]
007b8ebc  94 30 84 e5                                      str r3, [r4, #0x94]
007b8ec0  98 30 c4 e5                                      strb r3, [r4, #0x98]
007b8ec4  9c 30 84 e5                                      str r3, [r4, #0x9c]
007b8ec8  a0 30 84 e5                                      str r3, [r4, #0xa0]
007b8ecc  a4 30 84 e5                                      str r3, [r4, #0xa4]
007b8ed0  a8 30 c4 e5                                      strb r3, [r4, #0xa8]
007b8ed4  ac 30 84 e5                                      str r3, [r4, #0xac]
007b8ed8  b0 30 84 e5                                      str r3, [r4, #0xb0]
007b8edc  b4 30 84 e5                                      str r3, [r4, #0xb4]
007b8ee0  b8 30 c4 e5                                      strb r3, [r4, #0xb8]
007b8ee4  bc 30 84 e5                                      str r3, [r4, #0xbc]
007b8ee8  c0 30 84 e5                                      str r3, [r4, #0xc0]
007b8eec  c4 30 84 e5                                      str r3, [r4, #0xc4]
007b8ef0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007b8ef4  78 bc 1d 00 68 2e 00 00                          .byte 0x78, 0xbc, 0x1d, 0x00, 0x68, 0x2e, 0x00, 0x00

; FUNCTION 0x007b8efc, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::abc_def
; alias: _ZN7gameswf7abc_defC2EPNS_6playerE
; demangled: gameswf::abc_def::abc_def(gameswf::player*)
; decoder-mode: arm
007b8efc  70 40 2d e9                                      push {r4, r5, r6, lr}
007b8f00  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
007b8f04  00 40 a0 e1                                      mov r4, r0
007b8f08  3d 83 fe eb                                      bl #0x759c04
007b8f0c  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
007b8f10  05 50 8f e0                                      add r5, pc, r5
007b8f14  00 30 a0 e3                                      mov r3, #0
007b8f18  02 20 95 e7                                      ldr r2, [r5, r2]
007b8f1c  0c 30 84 e5                                      str r3, [r4, #0xc]
007b8f20  10 30 84 e5                                      str r3, [r4, #0x10]
007b8f24  08 20 82 e2                                      add r2, r2, #8
007b8f28  00 20 84 e5                                      str r2, [r4]
007b8f2c  14 30 84 e5                                      str r3, [r4, #0x14]
007b8f30  18 30 c4 e5                                      strb r3, [r4, #0x18]
007b8f34  1c 30 84 e5                                      str r3, [r4, #0x1c]
007b8f38  20 30 84 e5                                      str r3, [r4, #0x20]
007b8f3c  24 30 84 e5                                      str r3, [r4, #0x24]
007b8f40  28 30 c4 e5                                      strb r3, [r4, #0x28]
007b8f44  2c 30 84 e5                                      str r3, [r4, #0x2c]
007b8f48  30 30 84 e5                                      str r3, [r4, #0x30]
007b8f4c  34 30 84 e5                                      str r3, [r4, #0x34]
007b8f50  38 30 c4 e5                                      strb r3, [r4, #0x38]
007b8f54  3c 30 84 e5                                      str r3, [r4, #0x3c]
007b8f58  40 30 84 e5                                      str r3, [r4, #0x40]
007b8f5c  44 30 84 e5                                      str r3, [r4, #0x44]
007b8f60  48 30 c4 e5                                      strb r3, [r4, #0x48]
007b8f64  4c 30 84 e5                                      str r3, [r4, #0x4c]
007b8f68  50 30 84 e5                                      str r3, [r4, #0x50]
007b8f6c  54 30 84 e5                                      str r3, [r4, #0x54]
007b8f70  58 30 c4 e5                                      strb r3, [r4, #0x58]
007b8f74  5c 30 84 e5                                      str r3, [r4, #0x5c]
007b8f78  60 30 84 e5                                      str r3, [r4, #0x60]
007b8f7c  64 30 84 e5                                      str r3, [r4, #0x64]
007b8f80  68 30 c4 e5                                      strb r3, [r4, #0x68]
007b8f84  6c 30 84 e5                                      str r3, [r4, #0x6c]
007b8f88  70 30 84 e5                                      str r3, [r4, #0x70]
007b8f8c  74 30 84 e5                                      str r3, [r4, #0x74]
007b8f90  78 30 c4 e5                                      strb r3, [r4, #0x78]
007b8f94  7c 30 84 e5                                      str r3, [r4, #0x7c]
007b8f98  80 30 84 e5                                      str r3, [r4, #0x80]
007b8f9c  84 30 84 e5                                      str r3, [r4, #0x84]
007b8fa0  88 30 c4 e5                                      strb r3, [r4, #0x88]
007b8fa4  04 00 a0 e1                                      mov r0, r4
007b8fa8  c8 30 c4 e5                                      strb r3, [r4, #0xc8]
007b8fac  8c 30 84 e5                                      str r3, [r4, #0x8c]
007b8fb0  90 30 84 e5                                      str r3, [r4, #0x90]
007b8fb4  94 30 84 e5                                      str r3, [r4, #0x94]
007b8fb8  98 30 c4 e5                                      strb r3, [r4, #0x98]
007b8fbc  9c 30 84 e5                                      str r3, [r4, #0x9c]
007b8fc0  a0 30 84 e5                                      str r3, [r4, #0xa0]
007b8fc4  a4 30 84 e5                                      str r3, [r4, #0xa4]
007b8fc8  a8 30 c4 e5                                      strb r3, [r4, #0xa8]
007b8fcc  ac 30 84 e5                                      str r3, [r4, #0xac]
007b8fd0  b0 30 84 e5                                      str r3, [r4, #0xb0]
007b8fd4  b4 30 84 e5                                      str r3, [r4, #0xb4]
007b8fd8  b8 30 c4 e5                                      strb r3, [r4, #0xb8]
007b8fdc  bc 30 84 e5                                      str r3, [r4, #0xbc]
007b8fe0  c0 30 84 e5                                      str r3, [r4, #0xc0]
007b8fe4  c4 30 84 e5                                      str r3, [r4, #0xc4]
007b8fe8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007b8fec  80 bb 1d 00 68 2e 00 00                          .byte 0x80, 0xbb, 0x1d, 0x00, 0x68, 0x2e, 0x00, 0x00

; FUNCTION 0x007b94c4, declared_size=556, range_size=556, mode=arm
; class-group: gameswf::abc_def
; alias: _ZN7gameswf7abc_defD1Ev
; demangled: gameswf::abc_def::~abc_def()
; decoder-mode: arm
007b94c4  1c 32 9f e5                                      ldr r3, [pc, #0x21c]
007b94c8  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
007b94cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b94d0  03 30 8f e0                                      add r3, pc, r3
007b94d4  02 20 93 e7                                      ldr r2, [r3, r2]
007b94d8  00 50 a0 e1                                      mov r5, r0
007b94dc  00 40 a0 e1                                      mov r4, r0
007b94e0  08 20 82 e2                                      add r2, r2, #8
007b94e4  bc 20 85 e4                                      str r2, [r5], #0xbc
007b94e8  05 00 a0 e1                                      mov r0, r5
007b94ec  00 10 a0 e3                                      mov r1, #0
007b94f0  bc fd ff eb                                      bl #0x7b8be8
007b94f4  05 00 a0 e1                                      mov r0, r5
007b94f8  00 10 a0 e3                                      mov r1, #0
007b94fc  ac 50 84 e2                                      add r5, r4, #0xac
007b9500  d6 fc ff eb                                      bl #0x7b8860
007b9504  05 00 a0 e1                                      mov r0, r5
007b9508  00 10 a0 e3                                      mov r1, #0
007b950c  8e fd ff eb                                      bl #0x7b8b4c
007b9510  05 00 a0 e1                                      mov r0, r5
007b9514  00 10 a0 e3                                      mov r1, #0
007b9518  9c 50 84 e2                                      add r5, r4, #0x9c
007b951c  b0 fc ff eb                                      bl #0x7b87e4
007b9520  05 00 a0 e1                                      mov r0, r5
007b9524  00 10 a0 e3                                      mov r1, #0
007b9528  39 fd ff eb                                      bl #0x7b8a14
007b952c  05 00 a0 e1                                      mov r0, r5
007b9530  00 10 a0 e3                                      mov r1, #0
007b9534  8c 50 84 e2                                      add r5, r4, #0x8c
007b9538  6b fc ff eb                                      bl #0x7b86ec
007b953c  05 00 a0 e1                                      mov r0, r5
007b9540  00 10 a0 e3                                      mov r1, #0
007b9544  0b fd ff eb                                      bl #0x7b8978
007b9548  05 00 a0 e1                                      mov r0, r5
007b954c  00 10 a0 e3                                      mov r1, #0
007b9550  7c 50 84 e2                                      add r5, r4, #0x7c
007b9554  45 fc ff eb                                      bl #0x7b8670
007b9558  05 00 a0 e1                                      mov r0, r5
007b955c  00 10 a0 e3                                      mov r1, #0
007b9560  dd fc ff eb                                      bl #0x7b88dc
007b9564  05 00 a0 e1                                      mov r0, r5
007b9568  00 10 a0 e3                                      mov r1, #0
007b956c  6c 50 84 e2                                      add r5, r4, #0x6c
007b9570  1f fc ff eb                                      bl #0x7b85f4
007b9574  05 00 a0 e1                                      mov r0, r5
007b9578  00 10 a0 e3                                      mov r1, #0
007b957c  00 fc ff eb                                      bl #0x7b8584
007b9580  05 00 a0 e1                                      mov r0, r5
007b9584  00 10 a0 e3                                      mov r1, #0
007b9588  5c 50 84 e2                                      add r5, r4, #0x5c
007b958c  da fb ff eb                                      bl #0x7b84fc
007b9590  00 10 a0 e3                                      mov r1, #0
007b9594  05 00 a0 e1                                      mov r0, r5
007b9598  8b ff ff eb                                      bl #0x7b93cc
007b959c  05 00 a0 e1                                      mov r0, r5
007b95a0  00 10 a0 e3                                      mov r1, #0
007b95a4  57 fb ff eb                                      bl #0x7b8308
007b95a8  50 20 94 e5                                      ldr r2, [r4, #0x50]
007b95ac  4c 00 84 e2                                      add r0, r4, #0x4c
007b95b0  00 00 52 e3                                      cmp r2, #0
007b95b4  26 00 00 da                                      ble #0x7b9654
007b95b8  00 50 a0 e3                                      mov r5, #0
007b95bc  05 10 a0 e1                                      mov r1, r5
007b95c0  3c 60 84 e2                                      add r6, r4, #0x3c
007b95c4  50 50 84 e5                                      str r5, [r4, #0x50]
007b95c8  2f fb ff eb                                      bl #0x7b828c
007b95cc  06 00 a0 e1                                      mov r0, r6
007b95d0  05 10 a0 e1                                      mov r1, r5
007b95d4  f4 fa ff eb                                      bl #0x7b81ac
007b95d8  06 00 a0 e1                                      mov r0, r6
007b95dc  05 10 a0 e1                                      mov r1, r5
007b95e0  cf fa ff eb                                      bl #0x7b8124
007b95e4  30 30 94 e5                                      ldr r3, [r4, #0x30]
007b95e8  2c 00 84 e2                                      add r0, r4, #0x2c
007b95ec  05 00 53 e1                                      cmp r3, r5
007b95f0  22 00 00 da                                      ble #0x7b9680
007b95f4  00 50 a0 e3                                      mov r5, #0
007b95f8  30 50 84 e5                                      str r5, [r4, #0x30]
007b95fc  05 10 a0 e1                                      mov r1, r5
007b9600  a8 fa ff eb                                      bl #0x7b80a8
007b9604  20 30 94 e5                                      ldr r3, [r4, #0x20]
007b9608  1c 00 84 e2                                      add r0, r4, #0x1c
007b960c  05 00 53 e1                                      cmp r3, r5
007b9610  24 00 00 da                                      ble #0x7b96a8
007b9614  00 50 a0 e3                                      mov r5, #0
007b9618  20 50 84 e5                                      str r5, [r4, #0x20]
007b961c  05 10 a0 e1                                      mov r1, r5
007b9620  81 fa ff eb                                      bl #0x7b802c
007b9624  10 30 94 e5                                      ldr r3, [r4, #0x10]
007b9628  0c 00 84 e2                                      add r0, r4, #0xc
007b962c  05 00 53 e1                                      cmp r3, r5
007b9630  24 00 00 da                                      ble #0x7b96c8
007b9634  00 30 a0 e3                                      mov r3, #0
007b9638  03 10 a0 e1                                      mov r1, r3
007b963c  10 30 84 e5                                      str r3, [r4, #0x10]
007b9640  5e ab fe eb                                      bl #0x7643c0
007b9644  04 00 a0 e1                                      mov r0, r4
007b9648  95 91 fe eb                                      bl #0x75dca4
007b964c  04 00 a0 e1                                      mov r0, r4
007b9650  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b9654  d7 ff ff aa                                      bge #0x7b95b8
007b9658  82 31 a0 e1                                      lsl r3, r2, #3
007b965c  00 c0 a0 e3                                      mov ip, #0
007b9660  00 10 90 e5                                      ldr r1, [r0]
007b9664  01 20 92 e2                                      adds r2, r2, #1
007b9668  03 e0 81 e0                                      add lr, r1, r3
007b966c  03 c0 81 e7                                      str ip, [r1, r3]
007b9670  04 c0 8e e5                                      str ip, [lr, #4]
007b9674  08 30 83 e2                                      add r3, r3, #8
007b9678  f8 ff ff 1a                                      bne #0x7b9660
007b967c  cd ff ff ea                                      b #0x7b95b8
007b9680  db ff ff aa                                      bge #0x7b95f4
007b9684  83 21 a0 e1                                      lsl r2, r3, #3
007b9688  00 60 a0 e3                                      mov r6, #0
007b968c  00 70 a0 e3                                      mov r7, #0
007b9690  00 10 90 e5                                      ldr r1, [r0]
007b9694  01 30 93 e2                                      adds r3, r3, #1
007b9698  f2 60 81 e1                                      strd r6, r7, [r1, r2]
007b969c  08 20 82 e2                                      add r2, r2, #8
007b96a0  fa ff ff 1a                                      bne #0x7b9690
007b96a4  d2 ff ff ea                                      b #0x7b95f4
007b96a8  d9 ff ff aa                                      bge #0x7b9614
007b96ac  03 21 a0 e1                                      lsl r2, r3, #2
007b96b0  00 10 90 e5                                      ldr r1, [r0]
007b96b4  01 30 93 e2                                      adds r3, r3, #1
007b96b8  02 50 81 e7                                      str r5, [r1, r2]
007b96bc  04 20 82 e2                                      add r2, r2, #4
007b96c0  fa ff ff 1a                                      bne #0x7b96b0
007b96c4  d2 ff ff ea                                      b #0x7b9614
007b96c8  d9 ff ff aa                                      bge #0x7b9634
007b96cc  03 21 a0 e1                                      lsl r2, r3, #2
007b96d0  00 10 90 e5                                      ldr r1, [r0]
007b96d4  01 30 93 e2                                      adds r3, r3, #1
007b96d8  02 50 81 e7                                      str r5, [r1, r2]
007b96dc  04 20 82 e2                                      add r2, r2, #4
007b96e0  fa ff ff 1a                                      bne #0x7b96d0
007b96e4  d2 ff ff ea                                      b #0x7b9634
; mapping-symbol data/literal pool
007b96e8  c0 b5 1d 00 68 2e 00 00                          .byte 0xc0, 0xb5, 0x1d, 0x00, 0x68, 0x2e, 0x00, 0x00

; FUNCTION 0x007b96f0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::abc_def
; alias: _ZN7gameswf7abc_defD0Ev
; demangled: gameswf::abc_def::~abc_def()
; decoder-mode: arm
007b96f0  10 40 2d e9                                      push {r4, lr}
007b96f4  00 40 a0 e1                                      mov r4, r0
007b96f8  71 ff ff eb                                      bl #0x7b94c4
007b96fc  04 00 a0 e1                                      mov r0, r4
007b9700  ea 52 ed eb                                      bl #0x30e2b0
007b9704  04 00 a0 e1                                      mov r0, r4
007b9708  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b99ec, declared_size=556, range_size=556, mode=arm
; class-group: gameswf::abc_def
; alias: _ZN7gameswf7abc_defD2Ev
; demangled: gameswf::abc_def::~abc_def()
; decoder-mode: arm
007b99ec  1c 32 9f e5                                      ldr r3, [pc, #0x21c]
007b99f0  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
007b99f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b99f8  03 30 8f e0                                      add r3, pc, r3
007b99fc  02 20 93 e7                                      ldr r2, [r3, r2]
007b9a00  00 50 a0 e1                                      mov r5, r0
007b9a04  00 40 a0 e1                                      mov r4, r0
007b9a08  08 20 82 e2                                      add r2, r2, #8
007b9a0c  bc 20 85 e4                                      str r2, [r5], #0xbc
007b9a10  05 00 a0 e1                                      mov r0, r5
007b9a14  00 10 a0 e3                                      mov r1, #0
007b9a18  72 fc ff eb                                      bl #0x7b8be8
007b9a1c  05 00 a0 e1                                      mov r0, r5
007b9a20  00 10 a0 e3                                      mov r1, #0
007b9a24  ac 50 84 e2                                      add r5, r4, #0xac
007b9a28  8c fb ff eb                                      bl #0x7b8860
007b9a2c  05 00 a0 e1                                      mov r0, r5
007b9a30  00 10 a0 e3                                      mov r1, #0
007b9a34  44 fc ff eb                                      bl #0x7b8b4c
007b9a38  05 00 a0 e1                                      mov r0, r5
007b9a3c  00 10 a0 e3                                      mov r1, #0
007b9a40  9c 50 84 e2                                      add r5, r4, #0x9c
007b9a44  66 fb ff eb                                      bl #0x7b87e4
007b9a48  05 00 a0 e1                                      mov r0, r5
007b9a4c  00 10 a0 e3                                      mov r1, #0
007b9a50  ef fb ff eb                                      bl #0x7b8a14
007b9a54  05 00 a0 e1                                      mov r0, r5
007b9a58  00 10 a0 e3                                      mov r1, #0
007b9a5c  8c 50 84 e2                                      add r5, r4, #0x8c
007b9a60  21 fb ff eb                                      bl #0x7b86ec
007b9a64  05 00 a0 e1                                      mov r0, r5
007b9a68  00 10 a0 e3                                      mov r1, #0
007b9a6c  c1 fb ff eb                                      bl #0x7b8978
007b9a70  05 00 a0 e1                                      mov r0, r5
007b9a74  00 10 a0 e3                                      mov r1, #0
007b9a78  7c 50 84 e2                                      add r5, r4, #0x7c
007b9a7c  fb fa ff eb                                      bl #0x7b8670
007b9a80  05 00 a0 e1                                      mov r0, r5
007b9a84  00 10 a0 e3                                      mov r1, #0
007b9a88  93 fb ff eb                                      bl #0x7b88dc
007b9a8c  05 00 a0 e1                                      mov r0, r5
007b9a90  00 10 a0 e3                                      mov r1, #0
007b9a94  6c 50 84 e2                                      add r5, r4, #0x6c
007b9a98  d5 fa ff eb                                      bl #0x7b85f4
007b9a9c  05 00 a0 e1                                      mov r0, r5
007b9aa0  00 10 a0 e3                                      mov r1, #0
007b9aa4  b6 fa ff eb                                      bl #0x7b8584
007b9aa8  05 00 a0 e1                                      mov r0, r5
007b9aac  00 10 a0 e3                                      mov r1, #0
007b9ab0  5c 50 84 e2                                      add r5, r4, #0x5c
007b9ab4  90 fa ff eb                                      bl #0x7b84fc
007b9ab8  00 10 a0 e3                                      mov r1, #0
007b9abc  05 00 a0 e1                                      mov r0, r5
007b9ac0  41 fe ff eb                                      bl #0x7b93cc
007b9ac4  05 00 a0 e1                                      mov r0, r5
007b9ac8  00 10 a0 e3                                      mov r1, #0
007b9acc  0d fa ff eb                                      bl #0x7b8308
007b9ad0  50 20 94 e5                                      ldr r2, [r4, #0x50]
007b9ad4  4c 00 84 e2                                      add r0, r4, #0x4c
007b9ad8  00 00 52 e3                                      cmp r2, #0
007b9adc  26 00 00 da                                      ble #0x7b9b7c
007b9ae0  00 50 a0 e3                                      mov r5, #0
007b9ae4  05 10 a0 e1                                      mov r1, r5
007b9ae8  3c 60 84 e2                                      add r6, r4, #0x3c
007b9aec  50 50 84 e5                                      str r5, [r4, #0x50]
007b9af0  e5 f9 ff eb                                      bl #0x7b828c
007b9af4  06 00 a0 e1                                      mov r0, r6
007b9af8  05 10 a0 e1                                      mov r1, r5
007b9afc  aa f9 ff eb                                      bl #0x7b81ac
007b9b00  06 00 a0 e1                                      mov r0, r6
007b9b04  05 10 a0 e1                                      mov r1, r5
007b9b08  85 f9 ff eb                                      bl #0x7b8124
007b9b0c  30 30 94 e5                                      ldr r3, [r4, #0x30]
007b9b10  2c 00 84 e2                                      add r0, r4, #0x2c
007b9b14  05 00 53 e1                                      cmp r3, r5
007b9b18  22 00 00 da                                      ble #0x7b9ba8
007b9b1c  00 50 a0 e3                                      mov r5, #0
007b9b20  30 50 84 e5                                      str r5, [r4, #0x30]
007b9b24  05 10 a0 e1                                      mov r1, r5
007b9b28  5e f9 ff eb                                      bl #0x7b80a8
007b9b2c  20 30 94 e5                                      ldr r3, [r4, #0x20]
007b9b30  1c 00 84 e2                                      add r0, r4, #0x1c
007b9b34  05 00 53 e1                                      cmp r3, r5
007b9b38  24 00 00 da                                      ble #0x7b9bd0
007b9b3c  00 50 a0 e3                                      mov r5, #0
007b9b40  20 50 84 e5                                      str r5, [r4, #0x20]
007b9b44  05 10 a0 e1                                      mov r1, r5
007b9b48  37 f9 ff eb                                      bl #0x7b802c
007b9b4c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007b9b50  0c 00 84 e2                                      add r0, r4, #0xc
007b9b54  05 00 53 e1                                      cmp r3, r5
007b9b58  24 00 00 da                                      ble #0x7b9bf0
007b9b5c  00 30 a0 e3                                      mov r3, #0
007b9b60  03 10 a0 e1                                      mov r1, r3
007b9b64  10 30 84 e5                                      str r3, [r4, #0x10]
007b9b68  14 aa fe eb                                      bl #0x7643c0
007b9b6c  04 00 a0 e1                                      mov r0, r4
007b9b70  4b 90 fe eb                                      bl #0x75dca4
007b9b74  04 00 a0 e1                                      mov r0, r4
007b9b78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b9b7c  d7 ff ff aa                                      bge #0x7b9ae0
007b9b80  82 31 a0 e1                                      lsl r3, r2, #3
007b9b84  00 c0 a0 e3                                      mov ip, #0
007b9b88  00 10 90 e5                                      ldr r1, [r0]
007b9b8c  01 20 92 e2                                      adds r2, r2, #1
007b9b90  03 e0 81 e0                                      add lr, r1, r3
007b9b94  03 c0 81 e7                                      str ip, [r1, r3]
007b9b98  04 c0 8e e5                                      str ip, [lr, #4]
007b9b9c  08 30 83 e2                                      add r3, r3, #8
007b9ba0  f8 ff ff 1a                                      bne #0x7b9b88
007b9ba4  cd ff ff ea                                      b #0x7b9ae0
007b9ba8  db ff ff aa                                      bge #0x7b9b1c
007b9bac  83 21 a0 e1                                      lsl r2, r3, #3
007b9bb0  00 60 a0 e3                                      mov r6, #0
007b9bb4  00 70 a0 e3                                      mov r7, #0
007b9bb8  00 10 90 e5                                      ldr r1, [r0]
007b9bbc  01 30 93 e2                                      adds r3, r3, #1
007b9bc0  f2 60 81 e1                                      strd r6, r7, [r1, r2]
007b9bc4  08 20 82 e2                                      add r2, r2, #8
007b9bc8  fa ff ff 1a                                      bne #0x7b9bb8
007b9bcc  d2 ff ff ea                                      b #0x7b9b1c
007b9bd0  d9 ff ff aa                                      bge #0x7b9b3c
007b9bd4  03 21 a0 e1                                      lsl r2, r3, #2
007b9bd8  00 10 90 e5                                      ldr r1, [r0]
007b9bdc  01 30 93 e2                                      adds r3, r3, #1
007b9be0  02 50 81 e7                                      str r5, [r1, r2]
007b9be4  04 20 82 e2                                      add r2, r2, #4
007b9be8  fa ff ff 1a                                      bne #0x7b9bd8
007b9bec  d2 ff ff ea                                      b #0x7b9b3c
007b9bf0  d9 ff ff aa                                      bge #0x7b9b5c
007b9bf4  03 21 a0 e1                                      lsl r2, r3, #2
007b9bf8  00 10 90 e5                                      ldr r1, [r0]
007b9bfc  01 30 93 e2                                      adds r3, r3, #1
007b9c00  02 50 81 e7                                      str r5, [r1, r2]
007b9c04  04 20 82 e2                                      add r2, r2, #4
007b9c08  fa ff ff 1a                                      bne #0x7b9bf8
007b9c0c  d2 ff ff ea                                      b #0x7b9b5c
; mapping-symbol data/literal pool
007b9c10  98 b0 1d 00 68 2e 00 00                          .byte 0x98, 0xb0, 0x1d, 0x00, 0x68, 0x2e, 0x00, 0x00

; FUNCTION 0x007b9c90, declared_size=1480, range_size=1480, mode=arm
; class-group: gameswf::abc_def
; alias: _ZN7gameswf7abc_def10read_cpoolEPNS_6streamE
; demangled: gameswf::abc_def::read_cpool(gameswf::stream*)
; decoder-mode: arm
007b9c90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b9c94  00 50 a0 e1                                      mov r5, r0
007b9c98  1c d0 4d e2                                      sub sp, sp, #0x1c
007b9c9c  01 00 a0 e1                                      mov r0, r1
007b9ca0  01 40 a0 e1                                      mov r4, r1
007b9ca4  ac 27 ff eb                                      bl #0x783b5c
007b9ca8  00 70 50 e2                                      subs r7, r0, #0
007b9cac  1c 00 00 da                                      ble #0x7b9d24
007b9cb0  14 30 95 e5                                      ldr r3, [r5, #0x14]
007b9cb4  0c 80 85 e2                                      add r8, r5, #0xc
007b9cb8  10 60 95 e5                                      ldr r6, [r5, #0x10]
007b9cbc  03 00 57 e1                                      cmp r7, r3
007b9cc0  58 01 00 ca                                      bgt #0x7ba228
007b9cc4  06 00 57 e1                                      cmp r7, r6
007b9cc8  07 00 00 da                                      ble #0x7b9cec
007b9ccc  06 31 a0 e1                                      lsl r3, r6, #2
007b9cd0  00 10 a0 e3                                      mov r1, #0
007b9cd4  00 20 98 e5                                      ldr r2, [r8]
007b9cd8  01 60 86 e2                                      add r6, r6, #1
007b9cdc  06 00 57 e1                                      cmp r7, r6
007b9ce0  03 10 82 e7                                      str r1, [r2, r3]
007b9ce4  04 30 83 e2                                      add r3, r3, #4
007b9ce8  f9 ff ff 1a                                      bne #0x7b9cd4
007b9cec  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007b9cf0  00 20 a0 e3                                      mov r2, #0
007b9cf4  01 00 57 e3                                      cmp r7, #1
007b9cf8  10 70 85 e5                                      str r7, [r5, #0x10]
007b9cfc  00 20 83 e5                                      str r2, [r3]
007b9d00  07 00 00 0a                                      beq #0x7b9d24
007b9d04  01 60 a0 e3                                      mov r6, #1
007b9d08  04 00 a0 e1                                      mov r0, r4
007b9d0c  0c 80 95 e5                                      ldr r8, [r5, #0xc]
007b9d10  91 27 ff eb                                      bl #0x783b5c
007b9d14  06 01 88 e7                                      str r0, [r8, r6, lsl #2]
007b9d18  01 60 86 e2                                      add r6, r6, #1
007b9d1c  07 00 56 e1                                      cmp r6, r7
007b9d20  f8 ff ff 1a                                      bne #0x7b9d08
007b9d24  04 00 a0 e1                                      mov r0, r4
007b9d28  8b 27 ff eb                                      bl #0x783b5c
007b9d2c  00 70 50 e2                                      subs r7, r0, #0
007b9d30  1c 00 00 da                                      ble #0x7b9da8
007b9d34  24 30 95 e5                                      ldr r3, [r5, #0x24]
007b9d38  1c 80 85 e2                                      add r8, r5, #0x1c
007b9d3c  20 60 95 e5                                      ldr r6, [r5, #0x20]
007b9d40  03 00 57 e1                                      cmp r7, r3
007b9d44  2b 01 00 ca                                      bgt #0x7ba1f8
007b9d48  06 00 57 e1                                      cmp r7, r6
007b9d4c  07 00 00 da                                      ble #0x7b9d70
007b9d50  06 31 a0 e1                                      lsl r3, r6, #2
007b9d54  00 10 a0 e3                                      mov r1, #0
007b9d58  00 20 98 e5                                      ldr r2, [r8]
007b9d5c  01 60 86 e2                                      add r6, r6, #1
007b9d60  06 00 57 e1                                      cmp r7, r6
007b9d64  03 10 82 e7                                      str r1, [r2, r3]
007b9d68  04 30 83 e2                                      add r3, r3, #4
007b9d6c  f9 ff ff 1a                                      bne #0x7b9d58
007b9d70  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007b9d74  00 20 a0 e3                                      mov r2, #0
007b9d78  01 00 57 e3                                      cmp r7, #1
007b9d7c  20 70 85 e5                                      str r7, [r5, #0x20]
007b9d80  00 20 83 e5                                      str r2, [r3]
007b9d84  07 00 00 0a                                      beq #0x7b9da8
007b9d88  01 60 a0 e3                                      mov r6, #1
007b9d8c  04 00 a0 e1                                      mov r0, r4
007b9d90  1c 80 95 e5                                      ldr r8, [r5, #0x1c]
007b9d94  70 27 ff eb                                      bl #0x783b5c
007b9d98  06 01 88 e7                                      str r0, [r8, r6, lsl #2]
007b9d9c  01 60 86 e2                                      add r6, r6, #1
007b9da0  07 00 56 e1                                      cmp r6, r7
007b9da4  f8 ff ff 1a                                      bne #0x7b9d8c
007b9da8  04 00 a0 e1                                      mov r0, r4
007b9dac  6a 27 ff eb                                      bl #0x783b5c
007b9db0  00 70 50 e2                                      subs r7, r0, #0
007b9db4  1f 00 00 da                                      ble #0x7b9e38
007b9db8  34 30 95 e5                                      ldr r3, [r5, #0x34]
007b9dbc  2c 80 85 e2                                      add r8, r5, #0x2c
007b9dc0  30 60 95 e5                                      ldr r6, [r5, #0x30]
007b9dc4  03 00 57 e1                                      cmp r7, r3
007b9dc8  0e 01 00 ca                                      bgt #0x7ba208
007b9dcc  06 00 57 e1                                      cmp r7, r6
007b9dd0  08 00 00 da                                      ble #0x7b9df8
007b9dd4  86 31 a0 e1                                      lsl r3, r6, #3
007b9dd8  00 00 a0 e3                                      mov r0, #0
007b9ddc  00 10 a0 e3                                      mov r1, #0
007b9de0  00 20 98 e5                                      ldr r2, [r8]
007b9de4  01 60 86 e2                                      add r6, r6, #1
007b9de8  06 00 57 e1                                      cmp r7, r6
007b9dec  f3 00 82 e1                                      strd r0, r1, [r2, r3]
007b9df0  08 30 83 e2                                      add r3, r3, #8
007b9df4  f9 ff ff 1a                                      bne #0x7b9de0
007b9df8  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
007b9dfc  00 00 a0 e3                                      mov r0, #0
007b9e00  00 10 a0 e3                                      mov r1, #0
007b9e04  01 00 57 e3                                      cmp r7, #1
007b9e08  30 70 85 e5                                      str r7, [r5, #0x30]
007b9e0c  f0 00 c3 e1                                      strd r0, r1, [r3]
007b9e10  08 00 00 0a                                      beq #0x7b9e38
007b9e14  01 60 a0 e3                                      mov r6, #1
007b9e18  04 00 a0 e1                                      mov r0, r4
007b9e1c  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
007b9e20  2f 27 ff eb                                      bl #0x783ae4
007b9e24  86 31 a0 e1                                      lsl r3, r6, #3
007b9e28  01 60 86 e2                                      add r6, r6, #1
007b9e2c  07 00 56 e1                                      cmp r6, r7
007b9e30  f3 00 88 e1                                      strd r0, r1, [r8, r3]
007b9e34  f7 ff ff 1a                                      bne #0x7b9e18
007b9e38  04 00 a0 e1                                      mov r0, r4
007b9e3c  46 27 ff eb                                      bl #0x783b5c
007b9e40  00 80 50 e2                                      subs r8, r0, #0
007b9e44  1f 00 00 da                                      ble #0x7b9ec8
007b9e48  3c 00 85 e2                                      add r0, r5, #0x3c
007b9e4c  08 10 a0 e1                                      mov r1, r8
007b9e50  d5 f8 ff eb                                      bl #0x7b81ac
007b9e54  3c 60 95 e5                                      ldr r6, [r5, #0x3c]
007b9e58  00 10 a0 e3                                      mov r1, #0
007b9e5c  06 00 a0 e1                                      mov r0, r6
007b9e60  ab 5f fe eb                                      bl #0x751d14
007b9e64  d0 30 d6 e1                                      ldrsb r3, [r6]
007b9e68  00 20 a0 e3                                      mov r2, #0
007b9e6c  01 00 73 e3                                      cmn r3, #1
007b9e70  0c 30 96 05                                      ldreq r3, [r6, #0xc]
007b9e74  01 30 86 12                                      addne r3, r6, #1
007b9e78  01 00 58 e3                                      cmp r8, #1
007b9e7c  00 20 c3 e5                                      strb r2, [r3]
007b9e80  10 30 96 e5                                      ldr r3, [r6, #0x10]
007b9e84  00 20 e0 e3                                      mvn r2, #0
007b9e88  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007b9e8c  10 30 86 e5                                      str r3, [r6, #0x10]
007b9e90  0c 00 00 0a                                      beq #0x7b9ec8
007b9e94  14 70 a0 e3                                      mov r7, #0x14
007b9e98  01 60 a0 e3                                      mov r6, #1
007b9e9c  04 00 a0 e1                                      mov r0, r4
007b9ea0  2d 27 ff eb                                      bl #0x783b5c
007b9ea4  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
007b9ea8  00 10 a0 e1                                      mov r1, r0
007b9eac  01 60 86 e2                                      add r6, r6, #1
007b9eb0  07 20 82 e0                                      add r2, r2, r7
007b9eb4  04 00 a0 e1                                      mov r0, r4
007b9eb8  f5 28 ff eb                                      bl #0x784294
007b9ebc  08 00 56 e1                                      cmp r6, r8
007b9ec0  14 70 87 e2                                      add r7, r7, #0x14
007b9ec4  f4 ff ff 1a                                      bne #0x7b9e9c
007b9ec8  04 00 a0 e1                                      mov r0, r4
007b9ecc  22 27 ff eb                                      bl #0x783b5c
007b9ed0  00 70 50 e2                                      subs r7, r0, #0
007b9ed4  24 00 00 da                                      ble #0x7b9f6c
007b9ed8  54 30 95 e5                                      ldr r3, [r5, #0x54]
007b9edc  4c 80 85 e2                                      add r8, r5, #0x4c
007b9ee0  50 60 95 e5                                      ldr r6, [r5, #0x50]
007b9ee4  03 00 57 e1                                      cmp r7, r3
007b9ee8  ca 00 00 ca                                      bgt #0x7ba218
007b9eec  06 00 57 e1                                      cmp r7, r6
007b9ef0  09 00 00 da                                      ble #0x7b9f1c
007b9ef4  86 31 a0 e1                                      lsl r3, r6, #3
007b9ef8  00 10 a0 e3                                      mov r1, #0
007b9efc  00 20 98 e5                                      ldr r2, [r8]
007b9f00  01 60 86 e2                                      add r6, r6, #1
007b9f04  06 00 57 e1                                      cmp r7, r6
007b9f08  03 00 82 e0                                      add r0, r2, r3
007b9f0c  03 10 82 e7                                      str r1, [r2, r3]
007b9f10  04 10 80 e5                                      str r1, [r0, #4]
007b9f14  08 30 83 e2                                      add r3, r3, #8
007b9f18  f7 ff ff 1a                                      bne #0x7b9efc
007b9f1c  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
007b9f20  00 20 a0 e3                                      mov r2, #0
007b9f24  01 00 57 e3                                      cmp r7, #1
007b9f28  50 70 85 e5                                      str r7, [r5, #0x50]
007b9f2c  00 20 83 e5                                      str r2, [r3]
007b9f30  04 20 83 e5                                      str r2, [r3, #4]
007b9f34  0c 00 00 0a                                      beq #0x7b9f6c
007b9f38  01 60 a0 e3                                      mov r6, #1
007b9f3c  04 00 a0 e1                                      mov r0, r4
007b9f40  f8 26 ff eb                                      bl #0x783b28
007b9f44  00 80 a0 e1                                      mov r8, r0
007b9f48  04 00 a0 e1                                      mov r0, r4
007b9f4c  02 27 ff eb                                      bl #0x783b5c
007b9f50  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
007b9f54  86 21 83 e0                                      add r2, r3, r6, lsl #3
007b9f58  04 00 82 e5                                      str r0, [r2, #4]
007b9f5c  86 81 83 e7                                      str r8, [r3, r6, lsl #3]
007b9f60  01 60 86 e2                                      add r6, r6, #1
007b9f64  07 00 56 e1                                      cmp r6, r7
007b9f68  f3 ff ff 1a                                      bne #0x7b9f3c
007b9f6c  04 00 a0 e1                                      mov r0, r4
007b9f70  f9 26 ff eb                                      bl #0x783b5c
007b9f74  00 b0 50 e2                                      subs fp, r0, #0
007b9f78  53 00 00 da                                      ble #0x7ba0cc
007b9f7c  5c 00 85 e2                                      add r0, r5, #0x5c
007b9f80  0b 10 a0 e1                                      mov r1, fp
007b9f84  10 fd ff eb                                      bl #0x7b93cc
007b9f88  5c 00 95 e5                                      ldr r0, [r5, #0x5c]
007b9f8c  00 c0 a0 e3                                      mov ip, #0
007b9f90  08 c0 8d e5                                      str ip, [sp, #8]
007b9f94  0c c0 8d e5                                      str ip, [sp, #0xc]
007b9f98  10 c0 8d e5                                      str ip, [sp, #0x10]
007b9f9c  14 c0 cd e5                                      strb ip, [sp, #0x14]
007b9fa0  04 30 90 e5                                      ldr r3, [r0, #4]
007b9fa4  0c 00 53 e1                                      cmp r3, ip
007b9fa8  a2 00 00 da                                      ble #0x7ba238
007b9fac  01 00 5b e3                                      cmp fp, #1
007b9fb0  00 a0 a0 e3                                      mov sl, #0
007b9fb4  08 10 8d 02                                      addeq r1, sp, #8
007b9fb8  04 a0 80 e5                                      str sl, [r0, #4]
007b9fbc  04 10 8d 05                                      streq r1, [sp, #4]
007b9fc0  3f 00 00 0a                                      beq #0x7ba0c4
007b9fc4  08 20 8d e2                                      add r2, sp, #8
007b9fc8  01 90 a0 e3                                      mov sb, #1
007b9fcc  04 20 8d e5                                      str r2, [sp, #4]
007b9fd0  04 00 a0 e1                                      mov r0, r4
007b9fd4  e0 26 ff eb                                      bl #0x783b5c
007b9fd8  00 60 50 e2                                      subs r6, r0, #0
007b9fdc  0c 70 9d e5                                      ldr r7, [sp, #0xc]
007b9fe0  02 00 00 0a                                      beq #0x7b9ff0
007b9fe4  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b9fe8  03 00 56 e1                                      cmp r6, r3
007b9fec  7d 00 00 ca                                      bgt #0x7ba1e8
007b9ff0  07 00 56 e1                                      cmp r6, r7
007b9ff4  06 00 00 da                                      ble #0x7ba014
007b9ff8  07 31 a0 e1                                      lsl r3, r7, #2
007b9ffc  08 20 9d e5                                      ldr r2, [sp, #8]
007ba000  01 70 87 e2                                      add r7, r7, #1
007ba004  07 00 56 e1                                      cmp r6, r7
007ba008  03 a0 82 e7                                      str sl, [r2, r3]
007ba00c  04 30 83 e2                                      add r3, r3, #4
007ba010  f9 ff ff 1a                                      bne #0x7b9ffc
007ba014  00 00 56 e3                                      cmp r6, #0
007ba018  0c 60 8d e5                                      str r6, [sp, #0xc]
007ba01c  08 00 00 da                                      ble #0x7ba044
007ba020  00 70 a0 e3                                      mov r7, #0
007ba024  04 00 a0 e1                                      mov r0, r4
007ba028  08 80 9d e5                                      ldr r8, [sp, #8]
007ba02c  ca 26 ff eb                                      bl #0x783b5c
007ba030  07 01 88 e7                                      str r0, [r8, r7, lsl #2]
007ba034  01 70 87 e2                                      add r7, r7, #1
007ba038  06 00 57 e1                                      cmp r7, r6
007ba03c  f8 ff ff 1a                                      bne #0x7ba024
007ba040  0c 60 9d e5                                      ldr r6, [sp, #0xc]
007ba044  5c 70 95 e5                                      ldr r7, [r5, #0x5c]
007ba048  00 00 56 e3                                      cmp r6, #0
007ba04c  09 72 87 e0                                      add r7, r7, sb, lsl #4
007ba050  04 80 97 e5                                      ldr r8, [r7, #4]
007ba054  02 00 00 0a                                      beq #0x7ba064
007ba058  08 30 97 e5                                      ldr r3, [r7, #8]
007ba05c  03 00 56 e1                                      cmp r6, r3
007ba060  5c 00 00 ca                                      bgt #0x7ba1d8
007ba064  08 00 56 e1                                      cmp r6, r8
007ba068  06 00 00 da                                      ble #0x7ba088
007ba06c  08 31 a0 e1                                      lsl r3, r8, #2
007ba070  00 20 97 e5                                      ldr r2, [r7]
007ba074  01 80 88 e2                                      add r8, r8, #1
007ba078  06 00 58 e1                                      cmp r8, r6
007ba07c  03 a0 82 e7                                      str sl, [r2, r3]
007ba080  04 30 83 e2                                      add r3, r3, #4
007ba084  f9 ff ff 1a                                      bne #0x7ba070
007ba088  00 00 56 e3                                      cmp r6, #0
007ba08c  04 60 87 e5                                      str r6, [r7, #4]
007ba090  08 00 00 da                                      ble #0x7ba0b8
007ba094  00 30 a0 e3                                      mov r3, #0
007ba098  08 10 9d e5                                      ldr r1, [sp, #8]
007ba09c  00 20 97 e5                                      ldr r2, [r7]
007ba0a0  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
007ba0a4  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007ba0a8  04 20 97 e5                                      ldr r2, [r7, #4]
007ba0ac  01 30 83 e2                                      add r3, r3, #1
007ba0b0  02 00 53 e1                                      cmp r3, r2
007ba0b4  f7 ff ff ba                                      blt #0x7ba098
007ba0b8  01 90 89 e2                                      add sb, sb, #1
007ba0bc  0b 00 59 e1                                      cmp sb, fp
007ba0c0  c2 ff ff 1a                                      bne #0x7b9fd0
007ba0c4  04 00 9d e5                                      ldr r0, [sp, #4]
007ba0c8  01 fe ff eb                                      bl #0x7b98d4
007ba0cc  04 00 a0 e1                                      mov r0, r4
007ba0d0  a1 26 ff eb                                      bl #0x783b5c
007ba0d4  00 60 50 e2                                      subs r6, r0, #0
007ba0d8  2e 00 00 da                                      ble #0x7ba198
007ba0dc  6c 00 85 e2                                      add r0, r5, #0x6c
007ba0e0  06 10 a0 e1                                      mov r1, r6
007ba0e4  26 f9 ff eb                                      bl #0x7b8584
007ba0e8  6c 30 95 e5                                      ldr r3, [r5, #0x6c]
007ba0ec  00 20 a0 e3                                      mov r2, #0
007ba0f0  01 00 56 e3                                      cmp r6, #1
007ba0f4  02 90 a0 e1                                      mov sb, r2
007ba0f8  00 20 83 e5                                      str r2, [r3]
007ba0fc  0c 20 83 e5                                      str r2, [r3, #0xc]
007ba100  10 20 83 e5                                      str r2, [r3, #0x10]
007ba104  08 20 83 e5                                      str r2, [r3, #8]
007ba108  04 20 83 e5                                      str r2, [r3, #4]
007ba10c  21 00 00 0a                                      beq #0x7ba198
007ba110  04 20 8d e5                                      str r2, [sp, #4]
007ba114  01 a0 a0 e3                                      mov sl, #1
007ba118  14 70 a0 e3                                      mov r7, #0x14
007ba11c  02 b0 a0 e1                                      mov fp, r2
007ba120  04 00 a0 e1                                      mov r0, r4
007ba124  7f 26 ff eb                                      bl #0x783b28
007ba128  1c 00 50 e3                                      cmp r0, #0x1c
007ba12c  00 80 a0 e1                                      mov r8, r0
007ba130  70 30 af e6                                      sxtb r3, r0
007ba134  0a 00 00 8a                                      bhi #0x7ba164
007ba138  01 10 a0 e3                                      mov r1, #1
007ba13c  11 33 a0 e1                                      lsl r3, r1, r3
007ba140  42 0c 13 e3                                      tst r3, #0x4200
007ba144  1c 00 00 1a                                      bne #0x7ba1bc
007ba148  82 0d 13 e3                                      tst r3, #0x2080
007ba14c  13 00 00 1a                                      bne #0x7ba1a0
007ba150  06 03 13 e3                                      tst r3, #0x18000000
007ba154  02 00 00 0a                                      beq #0x7ba164
007ba158  04 00 a0 e1                                      mov r0, r4
007ba15c  7e 26 ff eb                                      bl #0x783b5c
007ba160  00 90 a0 e1                                      mov sb, r0
007ba164  6c 20 95 e5                                      ldr r2, [r5, #0x6c]
007ba168  00 10 a0 e3                                      mov r1, #0
007ba16c  01 a0 8a e2                                      add sl, sl, #1
007ba170  07 30 82 e0                                      add r3, r2, r7
007ba174  04 10 83 e5                                      str r1, [r3, #4]
007ba178  0c 90 83 e5                                      str sb, [r3, #0xc]
007ba17c  10 b0 83 e5                                      str fp, [r3, #0x10]
007ba180  04 10 9d e5                                      ldr r1, [sp, #4]
007ba184  06 00 5a e1                                      cmp sl, r6
007ba188  08 10 83 e5                                      str r1, [r3, #8]
007ba18c  07 80 82 e7                                      str r8, [r2, r7]
007ba190  14 70 87 e2                                      add r7, r7, #0x14
007ba194  e1 ff ff 1a                                      bne #0x7ba120
007ba198  1c d0 8d e2                                      add sp, sp, #0x1c
007ba19c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ba1a0  04 00 a0 e1                                      mov r0, r4
007ba1a4  6c 26 ff eb                                      bl #0x783b5c
007ba1a8  04 00 8d e5                                      str r0, [sp, #4]
007ba1ac  04 00 a0 e1                                      mov r0, r4
007ba1b0  69 26 ff eb                                      bl #0x783b5c
007ba1b4  00 b0 a0 e1                                      mov fp, r0
007ba1b8  e9 ff ff ea                                      b #0x7ba164
007ba1bc  04 00 a0 e1                                      mov r0, r4
007ba1c0  65 26 ff eb                                      bl #0x783b5c
007ba1c4  00 90 a0 e1                                      mov sb, r0
007ba1c8  04 00 a0 e1                                      mov r0, r4
007ba1cc  62 26 ff eb                                      bl #0x783b5c
007ba1d0  00 b0 a0 e1                                      mov fp, r0
007ba1d4  e2 ff ff ea                                      b #0x7ba164
007ba1d8  07 00 a0 e1                                      mov r0, r7
007ba1dc  c6 10 86 e0                                      add r1, r6, r6, asr #1
007ba1e0  76 a8 fe eb                                      bl #0x7643c0
007ba1e4  9e ff ff ea                                      b #0x7ba064
007ba1e8  04 00 9d e5                                      ldr r0, [sp, #4]
007ba1ec  c6 10 86 e0                                      add r1, r6, r6, asr #1
007ba1f0  72 a8 fe eb                                      bl #0x7643c0
007ba1f4  7d ff ff ea                                      b #0x7b9ff0
007ba1f8  08 00 a0 e1                                      mov r0, r8
007ba1fc  c7 10 87 e0                                      add r1, r7, r7, asr #1
007ba200  89 f7 ff eb                                      bl #0x7b802c
007ba204  cf fe ff ea                                      b #0x7b9d48
007ba208  08 00 a0 e1                                      mov r0, r8
007ba20c  c7 10 87 e0                                      add r1, r7, r7, asr #1
007ba210  a4 f7 ff eb                                      bl #0x7b80a8
007ba214  ec fe ff ea                                      b #0x7b9dcc
007ba218  08 00 a0 e1                                      mov r0, r8
007ba21c  c7 10 87 e0                                      add r1, r7, r7, asr #1
007ba220  19 f8 ff eb                                      bl #0x7b828c
007ba224  30 ff ff ea                                      b #0x7b9eec
007ba228  08 00 a0 e1                                      mov r0, r8
007ba22c  c7 10 87 e0                                      add r1, r7, r7, asr #1
007ba230  62 a8 fe eb                                      bl #0x7643c0
007ba234  a2 fe ff ea                                      b #0x7b9cc4
007ba238  5b ff ff aa                                      bge #0x7b9fac
007ba23c  03 21 a0 e1                                      lsl r2, r3, #2
007ba240  00 10 90 e5                                      ldr r1, [r0]
007ba244  01 30 93 e2                                      adds r3, r3, #1
007ba248  02 c0 81 e7                                      str ip, [r1, r2]
007ba24c  04 20 82 e2                                      add r2, r2, #4
007ba250  fa ff ff 1a                                      bne #0x7ba240
007ba254  54 ff ff ea                                      b #0x7b9fac

; FUNCTION 0x007ba258, declared_size=908, range_size=908, mode=arm
; class-group: gameswf::abc_def
; alias: _ZN7gameswf7abc_def4readEPNS_6streamEPNS_20movie_definition_subE
; demangled: gameswf::abc_def::read(gameswf::stream*, gameswf::movie_definition_sub*)
; decoder-mode: arm
007ba258  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ba25c  01 50 a0 e1                                      mov r5, r1
007ba260  0c d0 4d e2                                      sub sp, sp, #0xc
007ba264  00 40 a0 e1                                      mov r4, r0
007ba268  01 00 a0 e1                                      mov r0, r1
007ba26c  02 b0 a0 e1                                      mov fp, r2
007ba270  91 26 ff eb                                      bl #0x783cbc
007ba274  05 00 a0 e1                                      mov r0, r5
007ba278  65 26 ff eb                                      bl #0x783c14
007ba27c  05 00 a0 e1                                      mov r0, r5
007ba280  63 26 ff eb                                      bl #0x783c14
007ba284  05 10 a0 e1                                      mov r1, r5
007ba288  04 00 a0 e1                                      mov r0, r4
007ba28c  7f fe ff eb                                      bl #0x7b9c90
007ba290  05 00 a0 e1                                      mov r0, r5
007ba294  30 26 ff eb                                      bl #0x783b5c
007ba298  30 73 9f e5                                      ldr r7, [pc, #0x330]
007ba29c  00 90 a0 e1                                      mov sb, r0
007ba2a0  00 10 a0 e1                                      mov r1, r0
007ba2a4  7c 00 84 e2                                      add r0, r4, #0x7c
007ba2a8  8b f9 ff eb                                      bl #0x7b88dc
007ba2ac  00 00 59 e3                                      cmp sb, #0
007ba2b0  07 70 8f e0                                      add r7, pc, r7
007ba2b4  17 00 00 da                                      ble #0x7ba318
007ba2b8  18 30 8b e2                                      add r3, fp, #0x18
007ba2bc  04 30 8d e5                                      str r3, [sp, #4]
007ba2c0  00 60 a0 e3                                      mov r6, #0
007ba2c4  04 00 9d e5                                      ldr r0, [sp, #4]
007ba2c8  e4 6b fe eb                                      bl #0x755260
007ba2cc  00 10 a0 e3                                      mov r1, #0
007ba2d0  bc 00 a0 e3                                      mov r0, #0xbc
007ba2d4  1c a0 9b e5                                      ldr sl, [fp, #0x1c]
007ba2d8  32 62 fe eb                                      bl #0x752ba8
007ba2dc  06 20 a0 e1                                      mov r2, r6
007ba2e0  00 80 a0 e1                                      mov r8, r0
007ba2e4  0a 30 a0 e1                                      mov r3, sl
007ba2e8  04 10 a0 e1                                      mov r1, r4
007ba2ec  02 24 00 eb                                      bl #0x7c32fc
007ba2f0  08 00 a0 e1                                      mov r0, r8
007ba2f4  05 10 a0 e1                                      mov r1, r5
007ba2f8  d4 22 00 eb                                      bl #0x7c2e50
007ba2fc  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
007ba300  08 10 a0 e1                                      mov r1, r8
007ba304  06 01 80 e0                                      add r0, r0, r6, lsl #2
007ba308  01 60 86 e2                                      add r6, r6, #1
007ba30c  5c fa ff eb                                      bl #0x7b8c84
007ba310  09 00 56 e1                                      cmp r6, sb
007ba314  ea ff ff 1a                                      bne #0x7ba2c4
007ba318  05 00 a0 e1                                      mov r0, r5
007ba31c  0e 26 ff eb                                      bl #0x783b5c
007ba320  00 90 a0 e1                                      mov sb, r0
007ba324  00 10 a0 e1                                      mov r1, r0
007ba328  8c 00 84 e2                                      add r0, r4, #0x8c
007ba32c  91 f9 ff eb                                      bl #0x7b8978
007ba330  00 00 59 e3                                      cmp sb, #0
007ba334  18 00 00 da                                      ble #0x7ba39c
007ba338  94 b2 9f e5                                      ldr fp, [pc, #0x294]
007ba33c  00 80 a0 e3                                      mov r8, #0
007ba340  08 a0 a0 e1                                      mov sl, r8
007ba344  00 10 a0 e3                                      mov r1, #0
007ba348  0c 00 a0 e3                                      mov r0, #0xc
007ba34c  15 62 fe eb                                      bl #0x752ba8
007ba350  00 a0 80 e5                                      str sl, [r0]
007ba354  04 a0 80 e5                                      str sl, [r0, #4]
007ba358  08 a0 80 e5                                      str sl, [r0, #8]
007ba35c  00 60 a0 e1                                      mov r6, r0
007ba360  27 7e fe eb                                      bl #0x759c04
007ba364  0b 30 97 e7                                      ldr r3, [r7, fp]
007ba368  06 00 a0 e1                                      mov r0, r6
007ba36c  05 10 a0 e1                                      mov r1, r5
007ba370  08 30 83 e2                                      add r3, r3, #8
007ba374  00 30 86 e5                                      str r3, [r6]
007ba378  04 20 a0 e1                                      mov r2, r4
007ba37c  0b f7 ff eb                                      bl #0x7b7fb0
007ba380  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
007ba384  06 10 a0 e1                                      mov r1, r6
007ba388  08 01 80 e0                                      add r0, r0, r8, lsl #2
007ba38c  01 80 88 e2                                      add r8, r8, #1
007ba390  4b fa ff eb                                      bl #0x7b8cc4
007ba394  09 00 58 e1                                      cmp r8, sb
007ba398  e9 ff ff 1a                                      bne #0x7ba344
007ba39c  05 00 a0 e1                                      mov r0, r5
007ba3a0  ed 25 ff eb                                      bl #0x783b5c
007ba3a4  00 90 a0 e1                                      mov sb, r0
007ba3a8  00 10 a0 e1                                      mov r1, r0
007ba3ac  9c 00 84 e2                                      add r0, r4, #0x9c
007ba3b0  97 f9 ff eb                                      bl #0x7b8a14
007ba3b4  00 00 59 e3                                      cmp sb, #0
007ba3b8  80 00 00 da                                      ble #0x7ba5c0
007ba3bc  14 b2 9f e5                                      ldr fp, [pc, #0x214]
007ba3c0  00 a0 a0 e3                                      mov sl, #0
007ba3c4  0a 80 a0 e1                                      mov r8, sl
007ba3c8  00 10 a0 e3                                      mov r1, #0
007ba3cc  40 00 a0 e3                                      mov r0, #0x40
007ba3d0  f4 61 fe eb                                      bl #0x752ba8
007ba3d4  00 60 a0 e1                                      mov r6, r0
007ba3d8  09 7e fe eb                                      bl #0x759c04
007ba3dc  0b 30 97 e7                                      ldr r3, [r7, fp]
007ba3e0  06 00 a0 e1                                      mov r0, r6
007ba3e4  05 10 a0 e1                                      mov r1, r5
007ba3e8  08 30 83 e2                                      add r3, r3, #8
007ba3ec  00 30 86 e5                                      str r3, [r6]
007ba3f0  04 20 a0 e1                                      mov r2, r4
007ba3f4  0c 80 86 e5                                      str r8, [r6, #0xc]
007ba3f8  10 80 86 e5                                      str r8, [r6, #0x10]
007ba3fc  14 80 c6 e5                                      strb r8, [r6, #0x14]
007ba400  18 80 86 e5                                      str r8, [r6, #0x18]
007ba404  1c 80 86 e5                                      str r8, [r6, #0x1c]
007ba408  20 80 86 e5                                      str r8, [r6, #0x20]
007ba40c  24 80 86 e5                                      str r8, [r6, #0x24]
007ba410  28 80 c6 e5                                      strb r8, [r6, #0x28]
007ba414  2c 80 86 e5                                      str r8, [r6, #0x2c]
007ba418  30 80 86 e5                                      str r8, [r6, #0x30]
007ba41c  34 80 86 e5                                      str r8, [r6, #0x34]
007ba420  38 80 86 e5                                      str r8, [r6, #0x38]
007ba424  3c 80 c6 e5                                      strb r8, [r6, #0x3c]
007ba428  b7 fc ff eb                                      bl #0x7b970c
007ba42c  9c 00 94 e5                                      ldr r0, [r4, #0x9c]
007ba430  06 10 a0 e1                                      mov r1, r6
007ba434  0a 01 80 e0                                      add r0, r0, sl, lsl #2
007ba438  01 a0 8a e2                                      add sl, sl, #1
007ba43c  30 fa ff eb                                      bl #0x7b8d04
007ba440  09 00 5a e1                                      cmp sl, sb
007ba444  df ff ff 1a                                      bne #0x7ba3c8
007ba448  ac 00 84 e2                                      add r0, r4, #0xac
007ba44c  09 10 a0 e1                                      mov r1, sb
007ba450  bd f9 ff eb                                      bl #0x7b8b4c
007ba454  80 b1 9f e5                                      ldr fp, [pc, #0x180]
007ba458  08 a0 a0 e1                                      mov sl, r8
007ba45c  00 10 a0 e3                                      mov r1, #0
007ba460  20 00 a0 e3                                      mov r0, #0x20
007ba464  cf 61 fe eb                                      bl #0x752ba8
007ba468  00 a0 80 e5                                      str sl, [r0]
007ba46c  04 a0 80 e5                                      str sl, [r0, #4]
007ba470  08 a0 80 e5                                      str sl, [r0, #8]
007ba474  0c a0 80 e5                                      str sl, [r0, #0xc]
007ba478  10 a0 80 e5                                      str sl, [r0, #0x10]
007ba47c  14 a0 80 e5                                      str sl, [r0, #0x14]
007ba480  18 a0 80 e5                                      str sl, [r0, #0x18]
007ba484  1c a0 c0 e5                                      strb sl, [r0, #0x1c]
007ba488  00 60 a0 e1                                      mov r6, r0
007ba48c  dc 7d fe eb                                      bl #0x759c04
007ba490  0b 30 97 e7                                      ldr r3, [r7, fp]
007ba494  06 00 a0 e1                                      mov r0, r6
007ba498  05 10 a0 e1                                      mov r1, r5
007ba49c  08 30 83 e2                                      add r3, r3, #8
007ba4a0  00 30 86 e5                                      str r3, [r6]
007ba4a4  04 20 a0 e1                                      mov r2, r4
007ba4a8  10 a0 86 e5                                      str sl, [r6, #0x10]
007ba4ac  14 a0 86 e5                                      str sl, [r6, #0x14]
007ba4b0  18 a0 86 e5                                      str sl, [r6, #0x18]
007ba4b4  1c a0 c6 e5                                      strb sl, [r6, #0x1c]
007ba4b8  0e fb ff eb                                      bl #0x7b90f8
007ba4bc  ac 00 94 e5                                      ldr r0, [r4, #0xac]
007ba4c0  06 10 a0 e1                                      mov r1, r6
007ba4c4  08 01 80 e0                                      add r0, r0, r8, lsl #2
007ba4c8  01 80 88 e2                                      add r8, r8, #1
007ba4cc  1c fa ff eb                                      bl #0x7b8d44
007ba4d0  09 00 58 e1                                      cmp r8, sb
007ba4d4  e0 ff ff 1a                                      bne #0x7ba45c
007ba4d8  05 00 a0 e1                                      mov r0, r5
007ba4dc  9e 25 ff eb                                      bl #0x783b5c
007ba4e0  00 90 a0 e1                                      mov sb, r0
007ba4e4  00 10 a0 e1                                      mov r1, r0
007ba4e8  bc 00 84 e2                                      add r0, r4, #0xbc
007ba4ec  bd f9 ff eb                                      bl #0x7b8be8
007ba4f0  00 00 59 e3                                      cmp sb, #0
007ba4f4  21 00 00 da                                      ble #0x7ba580
007ba4f8  e0 b0 9f e5                                      ldr fp, [pc, #0xe0]
007ba4fc  00 a0 a0 e3                                      mov sl, #0
007ba500  0a 80 a0 e1                                      mov r8, sl
007ba504  00 10 a0 e3                                      mov r1, #0
007ba508  20 00 a0 e3                                      mov r0, #0x20
007ba50c  a5 61 fe eb                                      bl #0x752ba8
007ba510  00 80 80 e5                                      str r8, [r0]
007ba514  04 80 80 e5                                      str r8, [r0, #4]
007ba518  08 80 80 e5                                      str r8, [r0, #8]
007ba51c  0c 80 80 e5                                      str r8, [r0, #0xc]
007ba520  10 80 80 e5                                      str r8, [r0, #0x10]
007ba524  14 80 80 e5                                      str r8, [r0, #0x14]
007ba528  18 80 80 e5                                      str r8, [r0, #0x18]
007ba52c  1c 80 c0 e5                                      strb r8, [r0, #0x1c]
007ba530  00 60 a0 e1                                      mov r6, r0
007ba534  b2 7d fe eb                                      bl #0x759c04
007ba538  0b 30 97 e7                                      ldr r3, [r7, fp]
007ba53c  06 00 a0 e1                                      mov r0, r6
007ba540  05 10 a0 e1                                      mov r1, r5
007ba544  08 30 83 e2                                      add r3, r3, #8
007ba548  00 30 86 e5                                      str r3, [r6]
007ba54c  04 20 a0 e1                                      mov r2, r4
007ba550  10 80 86 e5                                      str r8, [r6, #0x10]
007ba554  14 80 86 e5                                      str r8, [r6, #0x14]
007ba558  18 80 86 e5                                      str r8, [r6, #0x18]
007ba55c  1c 80 c6 e5                                      strb r8, [r6, #0x1c]
007ba560  a3 fa ff eb                                      bl #0x7b8ff4
007ba564  bc 00 94 e5                                      ldr r0, [r4, #0xbc]
007ba568  06 10 a0 e1                                      mov r1, r6
007ba56c  0a 01 80 e0                                      add r0, r0, sl, lsl #2
007ba570  01 a0 8a e2                                      add sl, sl, #1
007ba574  02 fa ff eb                                      bl #0x7b8d84
007ba578  09 00 5a e1                                      cmp sl, sb
007ba57c  e0 ff ff 1a                                      bne #0x7ba504
007ba580  05 00 a0 e1                                      mov r0, r5
007ba584  74 25 ff eb                                      bl #0x783b5c
007ba588  00 70 50 e2                                      subs r7, r0, #0
007ba58c  09 00 00 da                                      ble #0x7ba5b8
007ba590  00 60 a0 e3                                      mov r6, #0
007ba594  05 00 a0 e1                                      mov r0, r5
007ba598  6f 25 ff eb                                      bl #0x783b5c
007ba59c  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
007ba5a0  01 60 86 e2                                      add r6, r6, #1
007ba5a4  05 10 a0 e1                                      mov r1, r5
007ba5a8  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
007ba5ac  ab 21 00 eb                                      bl #0x7c2c60
007ba5b0  07 00 56 e1                                      cmp r6, r7
007ba5b4  f6 ff ff 1a                                      bne #0x7ba594
007ba5b8  0c d0 8d e2                                      add sp, sp, #0xc
007ba5bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ba5c0  09 10 a0 e1                                      mov r1, sb
007ba5c4  ac 00 84 e2                                      add r0, r4, #0xac
007ba5c8  5f f9 ff eb                                      bl #0x7b8b4c
007ba5cc  c1 ff ff ea                                      b #0x7ba4d8
; mapping-symbol data/literal pool
007ba5d0  e0 a7 1d 00 54 12 00 00 20 10 00 00 c8 2a 00 00  .byte 0xe0, 0xa7, 0x1d, 0x00, 0x54, 0x12, 0x00, 0x00, 0x20, 0x10, 0x00, 0x00, 0xc8, 0x2a, 0x00, 0x00
007ba5e0  2c 19 00 00                                      .byte 0x2c, 0x19, 0x00, 0x00
