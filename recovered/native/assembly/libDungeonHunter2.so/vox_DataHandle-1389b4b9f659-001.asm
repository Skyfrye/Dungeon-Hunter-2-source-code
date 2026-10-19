; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00868d54, declared_size=148, range_size=148, mode=arm
; class-group: vox::DataHandle
; alias: _ZN3vox10DataHandleC1ExPPNS_17VoxEngineInternalEPNS_9HandlableEjj
; demangled: vox::DataHandle::DataHandle(long long, vox::VoxEngineInternal**, vox::Handlable*, unsigned int, unsigned int)
; decoder-mode: arm
00868d54  70 40 2d e9                                      push {r4, r5, r6, lr}
00868d58  80 c0 9f e5                                      ldr ip, [pc, #0x80]
00868d5c  00 40 a0 e1                                      mov r4, r0
00868d60  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00868d64  18 00 9d e5                                      ldr r0, [sp, #0x18]
00868d68  0c c0 8f e0                                      add ip, pc, ip
00868d6c  10 60 9d e5                                      ldr r6, [sp, #0x10]
00868d70  14 10 9d e5                                      ldr r1, [sp, #0x14]
00868d74  05 50 9c e7                                      ldr r5, [ip, r5]
00868d78  10 00 84 e5                                      str r0, [r4, #0x10]
00868d7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00868d80  08 50 85 e2                                      add r5, r5, #8
00868d84  00 00 56 e3                                      cmp r6, #0
00868d88  14 00 84 e5                                      str r0, [r4, #0x14]
00868d8c  00 50 84 e5                                      str r5, [r4]
00868d90  f8 20 c4 e1                                      strd r2, r3, [r4, #8]
00868d94  18 10 84 e5                                      str r1, [r4, #0x18]
00868d98  1c 60 84 e5                                      str r6, [r4, #0x1c]
00868d9c  20 10 84 e5                                      str r1, [r4, #0x20]
00868da0  08 00 00 0a                                      beq #0x868dc8
00868da4  00 00 96 e5                                      ldr r0, [r6]
00868da8  00 00 50 e3                                      cmp r0, #0
00868dac  05 00 00 0a                                      beq #0x868dc8
00868db0  00 00 51 e3                                      cmp r1, #0
00868db4  05 00 00 0a                                      beq #0x868dd0
00868db8  01 00 a0 e1                                      mov r0, r1
00868dbc  00 30 91 e5                                      ldr r3, [r1]
00868dc0  0f e0 a0 e1                                      mov lr, pc
00868dc4  08 f0 93 e5                                      ldr pc, [r3, #8]
00868dc8  04 00 a0 e1                                      mov r0, r4
00868dcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00868dd0  04 10 a0 e1                                      mov r1, r4
00868dd4  cd ff ff eb                                      bl #0x868d10
00868dd8  04 00 a0 e1                                      mov r0, r4
00868ddc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00868de0  28 bd 12 00 a4 19 00 00                          .byte 0x28, 0xbd, 0x12, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x00868de8, declared_size=148, range_size=148, mode=arm
; class-group: vox::DataHandle
; alias: _ZN3vox10DataHandleC2ExPPNS_17VoxEngineInternalEPNS_9HandlableEjj
; demangled: vox::DataHandle::DataHandle(long long, vox::VoxEngineInternal**, vox::Handlable*, unsigned int, unsigned int)
; decoder-mode: arm
00868de8  70 40 2d e9                                      push {r4, r5, r6, lr}
00868dec  80 c0 9f e5                                      ldr ip, [pc, #0x80]
00868df0  00 40 a0 e1                                      mov r4, r0
00868df4  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00868df8  18 00 9d e5                                      ldr r0, [sp, #0x18]
00868dfc  0c c0 8f e0                                      add ip, pc, ip
00868e00  10 60 9d e5                                      ldr r6, [sp, #0x10]
00868e04  14 10 9d e5                                      ldr r1, [sp, #0x14]
00868e08  05 50 9c e7                                      ldr r5, [ip, r5]
00868e0c  10 00 84 e5                                      str r0, [r4, #0x10]
00868e10  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00868e14  08 50 85 e2                                      add r5, r5, #8
00868e18  00 00 56 e3                                      cmp r6, #0
00868e1c  14 00 84 e5                                      str r0, [r4, #0x14]
00868e20  00 50 84 e5                                      str r5, [r4]
00868e24  f8 20 c4 e1                                      strd r2, r3, [r4, #8]
00868e28  18 10 84 e5                                      str r1, [r4, #0x18]
00868e2c  1c 60 84 e5                                      str r6, [r4, #0x1c]
00868e30  20 10 84 e5                                      str r1, [r4, #0x20]
00868e34  08 00 00 0a                                      beq #0x868e5c
00868e38  00 00 96 e5                                      ldr r0, [r6]
00868e3c  00 00 50 e3                                      cmp r0, #0
00868e40  05 00 00 0a                                      beq #0x868e5c
00868e44  00 00 51 e3                                      cmp r1, #0
00868e48  05 00 00 0a                                      beq #0x868e64
00868e4c  01 00 a0 e1                                      mov r0, r1
00868e50  00 30 91 e5                                      ldr r3, [r1]
00868e54  0f e0 a0 e1                                      mov lr, pc
00868e58  08 f0 93 e5                                      ldr pc, [r3, #8]
00868e5c  04 00 a0 e1                                      mov r0, r4
00868e60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00868e64  04 10 a0 e1                                      mov r1, r4
00868e68  a8 ff ff eb                                      bl #0x868d10
00868e6c  04 00 a0 e1                                      mov r0, r4
00868e70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00868e74  94 bc 12 00 a4 19 00 00                          .byte 0x94, 0xbc, 0x12, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x00868e7c, declared_size=144, range_size=144, mode=arm
; class-group: vox::DataHandle
; alias: _ZN3vox10DataHandleC1ERKS0_
; demangled: vox::DataHandle::DataHandle(vox::DataHandle const&)
; decoder-mode: arm
00868e7c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00868e80  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00868e84  d0 40 2d e9                                      push {r4, r6, r7, lr}
00868e88  03 30 8f e0                                      add r3, pc, r3
00868e8c  02 20 93 e7                                      ldr r2, [r3, r2]
00868e90  00 40 a0 e1                                      mov r4, r0
00868e94  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00868e98  08 20 82 e2                                      add r2, r2, #8
00868e9c  00 20 84 e5                                      str r2, [r4]
00868ea0  d8 60 c1 e1                                      ldrd r6, r7, [r1, #8]
00868ea4  f8 60 c4 e1                                      strd r6, r7, [r4, #8]
00868ea8  10 20 91 e5                                      ldr r2, [r1, #0x10]
00868eac  00 00 93 e7                                      ldr r0, [r3, r0]
00868eb0  10 20 84 e5                                      str r2, [r4, #0x10]
00868eb4  14 30 91 e5                                      ldr r3, [r1, #0x14]
00868eb8  08 00 80 e2                                      add r0, r0, #8
00868ebc  14 30 84 e5                                      str r3, [r4, #0x14]
00868ec0  18 30 91 e5                                      ldr r3, [r1, #0x18]
00868ec4  18 30 84 e5                                      str r3, [r4, #0x18]
00868ec8  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
00868ecc  1c 30 84 e5                                      str r3, [r4, #0x1c]
00868ed0  20 20 91 e5                                      ldr r2, [r1, #0x20]
00868ed4  00 00 53 e3                                      cmp r3, #0
00868ed8  00 00 84 e5                                      str r0, [r4]
00868edc  20 20 84 e5                                      str r2, [r4, #0x20]
00868ee0  04 00 00 0a                                      beq #0x868ef8
00868ee4  00 00 93 e5                                      ldr r0, [r3]
00868ee8  00 00 50 e3                                      cmp r0, #0
00868eec  01 00 00 0a                                      beq #0x868ef8
00868ef0  04 10 a0 e1                                      mov r1, r4
00868ef4  85 ff ff eb                                      bl #0x868d10
00868ef8  04 00 a0 e1                                      mov r0, r4
00868efc  d0 80 bd e8                                      pop {r4, r6, r7, pc}
; mapping-symbol data/literal pool
00868f00  08 bc 12 00 24 09 00 00 a4 19 00 00              .byte 0x08, 0xbc, 0x12, 0x00, 0x24, 0x09, 0x00, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x00868f0c, declared_size=144, range_size=144, mode=arm
; class-group: vox::DataHandle
; alias: _ZN3vox10DataHandleC2ERKS0_
; demangled: vox::DataHandle::DataHandle(vox::DataHandle const&)
; decoder-mode: arm
00868f0c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00868f10  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00868f14  d0 40 2d e9                                      push {r4, r6, r7, lr}
00868f18  03 30 8f e0                                      add r3, pc, r3
00868f1c  02 20 93 e7                                      ldr r2, [r3, r2]
00868f20  00 40 a0 e1                                      mov r4, r0
00868f24  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00868f28  08 20 82 e2                                      add r2, r2, #8
00868f2c  00 20 84 e5                                      str r2, [r4]
00868f30  d8 60 c1 e1                                      ldrd r6, r7, [r1, #8]
00868f34  f8 60 c4 e1                                      strd r6, r7, [r4, #8]
00868f38  10 20 91 e5                                      ldr r2, [r1, #0x10]
00868f3c  00 00 93 e7                                      ldr r0, [r3, r0]
00868f40  10 20 84 e5                                      str r2, [r4, #0x10]
00868f44  14 30 91 e5                                      ldr r3, [r1, #0x14]
00868f48  08 00 80 e2                                      add r0, r0, #8
00868f4c  14 30 84 e5                                      str r3, [r4, #0x14]
00868f50  18 30 91 e5                                      ldr r3, [r1, #0x18]
00868f54  18 30 84 e5                                      str r3, [r4, #0x18]
00868f58  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
00868f5c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00868f60  20 20 91 e5                                      ldr r2, [r1, #0x20]
00868f64  00 00 53 e3                                      cmp r3, #0
00868f68  00 00 84 e5                                      str r0, [r4]
00868f6c  20 20 84 e5                                      str r2, [r4, #0x20]
00868f70  04 00 00 0a                                      beq #0x868f88
00868f74  00 00 93 e5                                      ldr r0, [r3]
00868f78  00 00 50 e3                                      cmp r0, #0
00868f7c  01 00 00 0a                                      beq #0x868f88
00868f80  04 10 a0 e1                                      mov r1, r4
00868f84  61 ff ff eb                                      bl #0x868d10
00868f88  04 00 a0 e1                                      mov r0, r4
00868f8c  d0 80 bd e8                                      pop {r4, r6, r7, pc}
; mapping-symbol data/literal pool
00868f90  78 bb 12 00 24 09 00 00 a4 19 00 00              .byte 0x78, 0xbb, 0x12, 0x00, 0x24, 0x09, 0x00, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x0086aba0, declared_size=136, range_size=136, mode=arm
; class-group: vox::DataHandle
; alias: _ZN3vox10DataHandleaSERKS0_
; demangled: vox::DataHandle::operator=(vox::DataHandle const&)
; decoder-mode: arm
0086aba0  01 00 50 e1                                      cmp r0, r1
0086aba4  70 40 2d e9                                      push {r4, r5, r6, lr}
0086aba8  00 40 a0 e1                                      mov r4, r0
0086abac  01 50 a0 e1                                      mov r5, r1
0086abb0  1a 00 00 0a                                      beq #0x86ac20
0086abb4  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0086abb8  00 00 53 e3                                      cmp r3, #0
0086abbc  04 00 00 0a                                      beq #0x86abd4
0086abc0  00 00 93 e5                                      ldr r0, [r3]
0086abc4  00 00 50 e3                                      cmp r0, #0
0086abc8  01 00 00 0a                                      beq #0x86abd4
0086abcc  04 10 a0 e1                                      mov r1, r4
0086abd0  ce ff ff eb                                      bl #0x86ab10
0086abd4  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0086abd8  1c 30 84 e5                                      str r3, [r4, #0x1c]
0086abdc  d8 00 c5 e1                                      ldrd r0, r1, [r5, #8]
0086abe0  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
0086abe4  10 20 95 e5                                      ldr r2, [r5, #0x10]
0086abe8  00 00 53 e3                                      cmp r3, #0
0086abec  10 20 84 e5                                      str r2, [r4, #0x10]
0086abf0  14 20 95 e5                                      ldr r2, [r5, #0x14]
0086abf4  14 20 84 e5                                      str r2, [r4, #0x14]
0086abf8  18 20 95 e5                                      ldr r2, [r5, #0x18]
0086abfc  18 20 84 e5                                      str r2, [r4, #0x18]
0086ac00  20 20 95 e5                                      ldr r2, [r5, #0x20]
0086ac04  20 20 84 e5                                      str r2, [r4, #0x20]
0086ac08  04 00 00 0a                                      beq #0x86ac20
0086ac0c  00 00 93 e5                                      ldr r0, [r3]
0086ac10  00 00 50 e3                                      cmp r0, #0
0086ac14  01 00 00 0a                                      beq #0x86ac20
0086ac18  04 10 a0 e1                                      mov r1, r4
0086ac1c  3b f8 ff eb                                      bl #0x868d10
0086ac20  04 00 a0 e1                                      mov r0, r4
0086ac24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0086ac28, declared_size=80, range_size=80, mode=arm
; class-group: vox::DataHandle
; alias: _ZN3vox10DataHandleD1Ev
; demangled: vox::DataHandle::~DataHandle()
; decoder-mode: arm
0086ac28  10 40 2d e9                                      push {r4, lr}
0086ac2c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0086ac30  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0086ac34  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
0086ac38  03 30 8f e0                                      add r3, pc, r3
0086ac3c  02 20 93 e7                                      ldr r2, [r3, r2]
0086ac40  00 00 51 e3                                      cmp r1, #0
0086ac44  00 40 a0 e1                                      mov r4, r0
0086ac48  08 20 82 e2                                      add r2, r2, #8
0086ac4c  00 20 80 e5                                      str r2, [r0]
0086ac50  04 00 00 0a                                      beq #0x86ac68
0086ac54  00 00 91 e5                                      ldr r0, [r1]
0086ac58  00 00 50 e3                                      cmp r0, #0
0086ac5c  01 00 00 0a                                      beq #0x86ac68
0086ac60  04 10 a0 e1                                      mov r1, r4
0086ac64  a9 ff ff eb                                      bl #0x86ab10
0086ac68  04 00 a0 e1                                      mov r0, r4
0086ac6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0086ac70  58 9e 12 00 a4 19 00 00                          .byte 0x58, 0x9e, 0x12, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x0086ac78, declared_size=28, range_size=28, mode=arm
; class-group: vox::DataHandle
; alias: _ZN3vox10DataHandleD0Ev
; demangled: vox::DataHandle::~DataHandle()
; decoder-mode: arm
0086ac78  10 40 2d e9                                      push {r4, lr}
0086ac7c  00 40 a0 e1                                      mov r4, r0
0086ac80  e8 ff ff eb                                      bl #0x86ac28
0086ac84  04 00 a0 e1                                      mov r0, r4
0086ac88  88 8d ea eb                                      bl #0x30e2b0
0086ac8c  04 00 a0 e1                                      mov r0, r4
0086ac90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0086b968, declared_size=80, range_size=80, mode=arm
; class-group: vox::DataHandle
; alias: _ZN3vox10DataHandleD2Ev
; demangled: vox::DataHandle::~DataHandle()
; decoder-mode: arm
0086b968  10 40 2d e9                                      push {r4, lr}
0086b96c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0086b970  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0086b974  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
0086b978  03 30 8f e0                                      add r3, pc, r3
0086b97c  02 20 93 e7                                      ldr r2, [r3, r2]
0086b980  00 00 51 e3                                      cmp r1, #0
0086b984  00 40 a0 e1                                      mov r4, r0
0086b988  08 20 82 e2                                      add r2, r2, #8
0086b98c  00 20 80 e5                                      str r2, [r0]
0086b990  04 00 00 0a                                      beq #0x86b9a8
0086b994  00 00 91 e5                                      ldr r0, [r1]
0086b998  00 00 50 e3                                      cmp r0, #0
0086b99c  01 00 00 0a                                      beq #0x86b9a8
0086b9a0  04 10 a0 e1                                      mov r1, r4
0086b9a4  59 fc ff eb                                      bl #0x86ab10
0086b9a8  04 00 a0 e1                                      mov r0, r4
0086b9ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0086b9b0  18 91 12 00 a4 19 00 00                          .byte 0x18, 0x91, 0x12, 0x00, 0xa4, 0x19, 0x00, 0x00
