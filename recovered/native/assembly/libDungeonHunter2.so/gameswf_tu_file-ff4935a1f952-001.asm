; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b663c, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC2EPvPFiS1_iS1_EPFiPKviS1_EPFiiS1_EPFiS1_EPFiS5_EPFbS1_ESB_
; demangled: gameswf::tu_file::tu_file(void*, int (*)(void*, int, void*), int (*)(void const*, int, void*), int (*)(int, void*), int (*)(void*), int (*)(void const*), bool (*)(void*), int (*)(void*))
; decoder-mode: arm
007b663c  04 40 2d e5                                      str r4, [sp, #-4]!
007b6640  0c 30 80 e5                                      str r3, [r0, #0xc]
007b6644  04 30 9d e5                                      ldr r3, [sp, #4]
007b6648  00 40 a0 e3                                      mov r4, #0
007b664c  24 40 80 e5                                      str r4, [r0, #0x24]
007b6650  10 30 80 e5                                      str r3, [r0, #0x10]
007b6654  08 30 9d e5                                      ldr r3, [sp, #8]
007b6658  00 10 80 e5                                      str r1, [r0]
007b665c  08 20 80 e5                                      str r2, [r0, #8]
007b6660  14 30 80 e5                                      str r3, [r0, #0x14]
007b6664  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007b6668  18 30 80 e5                                      str r3, [r0, #0x18]
007b666c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b6670  1c 30 80 e5                                      str r3, [r0, #0x1c]
007b6674  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b6678  20 30 80 e5                                      str r3, [r0, #0x20]
007b667c  10 00 bd e8                                      ldm sp!, {r4}
007b6680  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b6684, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC1EPvPFiS1_iS1_EPFiPKviS1_EPFiiS1_EPFiS1_EPFiS5_EPFbS1_ESB_
; demangled: gameswf::tu_file::tu_file(void*, int (*)(void*, int, void*), int (*)(void const*, int, void*), int (*)(int, void*), int (*)(void*), int (*)(void const*), bool (*)(void*), int (*)(void*))
; decoder-mode: arm
007b6684  04 40 2d e5                                      str r4, [sp, #-4]!
007b6688  0c 30 80 e5                                      str r3, [r0, #0xc]
007b668c  04 30 9d e5                                      ldr r3, [sp, #4]
007b6690  00 40 a0 e3                                      mov r4, #0
007b6694  24 40 80 e5                                      str r4, [r0, #0x24]
007b6698  10 30 80 e5                                      str r3, [r0, #0x10]
007b669c  08 30 9d e5                                      ldr r3, [sp, #8]
007b66a0  00 10 80 e5                                      str r1, [r0]
007b66a4  08 20 80 e5                                      str r2, [r0, #8]
007b66a8  14 30 80 e5                                      str r3, [r0, #0x14]
007b66ac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007b66b0  18 30 80 e5                                      str r3, [r0, #0x18]
007b66b4  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b66b8  1c 30 80 e5                                      str r3, [r0, #0x1c]
007b66bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b66c0  20 30 80 e5                                      str r3, [r0, #0x20]
007b66c4  10 00 bd e8                                      ldm sp!, {r4}
007b66c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b66cc, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC2EP7__sFILEb
; demangled: gameswf::tu_file::tu_file(__sFILE*, bool)
; decoder-mode: arm
007b66cc  f0 00 2d e9                                      push {r4, r5, r6, r7}
007b66d0  64 c0 9f e5                                      ldr ip, [pc, #0x64]
007b66d4  64 70 9f e5                                      ldr r7, [pc, #0x64]
007b66d8  64 60 9f e5                                      ldr r6, [pc, #0x64]
007b66dc  64 50 9f e5                                      ldr r5, [pc, #0x64]
007b66e0  64 40 9f e5                                      ldr r4, [pc, #0x64]
007b66e4  64 30 9f e5                                      ldr r3, [pc, #0x64]
007b66e8  07 70 8f e0                                      add r7, pc, r7
007b66ec  06 60 8f e0                                      add r6, pc, r6
007b66f0  05 50 8f e0                                      add r5, pc, r5
007b66f4  04 40 8f e0                                      add r4, pc, r4
007b66f8  0c c0 8f e0                                      add ip, pc, ip
007b66fc  03 30 8f e0                                      add r3, pc, r3
007b6700  00 00 52 e3                                      cmp r2, #0
007b6704  00 10 80 e5                                      str r1, [r0]
007b6708  08 70 80 e5                                      str r7, [r0, #8]
007b670c  0c 60 80 e5                                      str r6, [r0, #0xc]
007b6710  10 50 80 e5                                      str r5, [r0, #0x10]
007b6714  14 40 80 e5                                      str r4, [r0, #0x14]
007b6718  18 c0 80 e5                                      str ip, [r0, #0x18]
007b671c  1c 30 80 e5                                      str r3, [r0, #0x1c]
007b6720  2c 20 9f 15                                      ldrne r2, [pc, #0x2c]
007b6724  02 20 8f 10                                      addne r2, pc, r2
007b6728  00 30 a0 e3                                      mov r3, #0
007b672c  20 20 80 e5                                      str r2, [r0, #0x20]
007b6730  24 30 80 e5                                      str r3, [r0, #0x24]
007b6734  f0 00 bd e8                                      pop {r4, r5, r6, r7}
007b6738  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007b673c  10 0e 00 00 88 0e 00 00 74 0e 00 00 3c 0e 00 00  .byte 0x10, 0x0e, 0x00, 0x00, 0x88, 0x0e, 0x00, 0x00, 0x74, 0x0e, 0x00, 0x00, 0x3c, 0x0e, 0x00, 0x00
007b674c  18 0e 00 00 f8 0d 00 00 b8 0d 00 00              .byte 0x18, 0x0e, 0x00, 0x00, 0xf8, 0x0d, 0x00, 0x00, 0xb8, 0x0d, 0x00, 0x00

; FUNCTION 0x007b6758, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC1EP7__sFILEb
; demangled: gameswf::tu_file::tu_file(__sFILE*, bool)
; decoder-mode: arm
007b6758  f0 00 2d e9                                      push {r4, r5, r6, r7}
007b675c  64 c0 9f e5                                      ldr ip, [pc, #0x64]
007b6760  64 70 9f e5                                      ldr r7, [pc, #0x64]
007b6764  64 60 9f e5                                      ldr r6, [pc, #0x64]
007b6768  64 50 9f e5                                      ldr r5, [pc, #0x64]
007b676c  64 40 9f e5                                      ldr r4, [pc, #0x64]
007b6770  64 30 9f e5                                      ldr r3, [pc, #0x64]
007b6774  07 70 8f e0                                      add r7, pc, r7
007b6778  06 60 8f e0                                      add r6, pc, r6
007b677c  05 50 8f e0                                      add r5, pc, r5
007b6780  04 40 8f e0                                      add r4, pc, r4
007b6784  0c c0 8f e0                                      add ip, pc, ip
007b6788  03 30 8f e0                                      add r3, pc, r3
007b678c  00 00 52 e3                                      cmp r2, #0
007b6790  00 10 80 e5                                      str r1, [r0]
007b6794  08 70 80 e5                                      str r7, [r0, #8]
007b6798  0c 60 80 e5                                      str r6, [r0, #0xc]
007b679c  10 50 80 e5                                      str r5, [r0, #0x10]
007b67a0  14 40 80 e5                                      str r4, [r0, #0x14]
007b67a4  18 c0 80 e5                                      str ip, [r0, #0x18]
007b67a8  1c 30 80 e5                                      str r3, [r0, #0x1c]
007b67ac  2c 20 9f 15                                      ldrne r2, [pc, #0x2c]
007b67b0  02 20 8f 10                                      addne r2, pc, r2
007b67b4  00 30 a0 e3                                      mov r3, #0
007b67b8  20 20 80 e5                                      str r2, [r0, #0x20]
007b67bc  24 30 80 e5                                      str r3, [r0, #0x24]
007b67c0  f0 00 bd e8                                      pop {r4, r5, r6, r7}
007b67c4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007b67c8  84 0d 00 00 fc 0d 00 00 e8 0d 00 00 b0 0d 00 00  .byte 0x84, 0x0d, 0x00, 0x00, 0xfc, 0x0d, 0x00, 0x00, 0xe8, 0x0d, 0x00, 0x00, 0xb0, 0x0d, 0x00, 0x00
007b67d8  8c 0d 00 00 6c 0d 00 00 2c 0d 00 00              .byte 0x8c, 0x0d, 0x00, 0x00, 0x6c, 0x0d, 0x00, 0x00, 0x2c, 0x0d, 0x00, 0x00

; FUNCTION 0x007b67e4, declared_size=228, range_size=228, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC2EPKcS2_
; demangled: gameswf::tu_file::tu_file(char const*, char const*)
; decoder-mode: arm
007b67e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b67e8  b4 50 9f e5                                      ldr r5, [pc, #0xb4]
007b67ec  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
007b67f0  00 40 a0 e1                                      mov r4, r0
007b67f4  05 50 8f e0                                      add r5, pc, r5
007b67f8  03 30 95 e7                                      ldr r3, [r5, r3]
007b67fc  00 60 a0 e3                                      mov r6, #0
007b6800  01 00 a0 e3                                      mov r0, #1
007b6804  24 00 84 e5                                      str r0, [r4, #0x24]
007b6808  04 30 84 e5                                      str r3, [r4, #4]
007b680c  01 00 a0 e1                                      mov r0, r1
007b6810  00 60 84 e5                                      str r6, [r4]
007b6814  08 60 84 e5                                      str r6, [r4, #8]
007b6818  0c 60 84 e5                                      str r6, [r4, #0xc]
007b681c  10 60 84 e5                                      str r6, [r4, #0x10]
007b6820  14 60 84 e5                                      str r6, [r4, #0x14]
007b6824  18 60 84 e5                                      str r6, [r4, #0x18]
007b6828  1c 60 84 e5                                      str r6, [r4, #0x1c]
007b682c  20 60 84 e5                                      str r6, [r4, #0x20]
007b6830  02 10 a0 e1                                      mov r1, r2
007b6834  89 d2 f1 eb                                      bl #0x42b260
007b6838  06 00 50 e1                                      cmp r0, r6
007b683c  00 00 84 e5                                      str r0, [r4]
007b6840  15 00 00 0a                                      beq #0x7b689c
007b6844  60 20 9f e5                                      ldr r2, [pc, #0x60]
007b6848  60 30 9f e5                                      ldr r3, [pc, #0x60]
007b684c  24 60 84 e5                                      str r6, [r4, #0x24]
007b6850  02 c0 95 e7                                      ldr ip, [r5, r2]
007b6854  58 20 9f e5                                      ldr r2, [pc, #0x58]
007b6858  03 80 95 e7                                      ldr r8, [r5, r3]
007b685c  54 30 9f e5                                      ldr r3, [pc, #0x54]
007b6860  02 00 95 e7                                      ldr r0, [r5, r2]
007b6864  50 20 9f e5                                      ldr r2, [pc, #0x50]
007b6868  03 70 95 e7                                      ldr r7, [r5, r3]
007b686c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
007b6870  02 10 95 e7                                      ldr r1, [r5, r2]
007b6874  48 20 9f e5                                      ldr r2, [pc, #0x48]
007b6878  03 30 95 e7                                      ldr r3, [r5, r3]
007b687c  08 80 84 e5                                      str r8, [r4, #8]
007b6880  02 20 95 e7                                      ldr r2, [r5, r2]
007b6884  0c 70 84 e5                                      str r7, [r4, #0xc]
007b6888  10 c0 84 e5                                      str ip, [r4, #0x10]
007b688c  14 00 84 e5                                      str r0, [r4, #0x14]
007b6890  18 10 84 e5                                      str r1, [r4, #0x18]
007b6894  1c 20 84 e5                                      str r2, [r4, #0x1c]
007b6898  20 30 84 e5                                      str r3, [r4, #0x20]
007b689c  04 00 a0 e1                                      mov r0, r4
007b68a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007b68a4  9c e2 1d 00 6c 0c 00 00 b8 3c 00 00 c0 3e 00 00  .byte 0x9c, 0xe2, 0x1d, 0x00, 0x6c, 0x0c, 0x00, 0x00, 0xb8, 0x3c, 0x00, 0x00, 0xc0, 0x3e, 0x00, 0x00
007b68b4  0c 1e 00 00 dc 44 00 00 84 22 00 00 58 1e 00 00  .byte 0x0c, 0x1e, 0x00, 0x00, 0xdc, 0x44, 0x00, 0x00, 0x84, 0x22, 0x00, 0x00, 0x58, 0x1e, 0x00, 0x00
007b68c4  24 47 00 00                                      .byte 0x24, 0x47, 0x00, 0x00

; FUNCTION 0x007b68c8, declared_size=228, range_size=228, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC1EPKcS2_
; demangled: gameswf::tu_file::tu_file(char const*, char const*)
; decoder-mode: arm
007b68c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b68cc  b4 50 9f e5                                      ldr r5, [pc, #0xb4]
007b68d0  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
007b68d4  00 40 a0 e1                                      mov r4, r0
007b68d8  05 50 8f e0                                      add r5, pc, r5
007b68dc  03 30 95 e7                                      ldr r3, [r5, r3]
007b68e0  00 60 a0 e3                                      mov r6, #0
007b68e4  01 00 a0 e3                                      mov r0, #1
007b68e8  24 00 84 e5                                      str r0, [r4, #0x24]
007b68ec  04 30 84 e5                                      str r3, [r4, #4]
007b68f0  01 00 a0 e1                                      mov r0, r1
007b68f4  00 60 84 e5                                      str r6, [r4]
007b68f8  08 60 84 e5                                      str r6, [r4, #8]
007b68fc  0c 60 84 e5                                      str r6, [r4, #0xc]
007b6900  10 60 84 e5                                      str r6, [r4, #0x10]
007b6904  14 60 84 e5                                      str r6, [r4, #0x14]
007b6908  18 60 84 e5                                      str r6, [r4, #0x18]
007b690c  1c 60 84 e5                                      str r6, [r4, #0x1c]
007b6910  20 60 84 e5                                      str r6, [r4, #0x20]
007b6914  02 10 a0 e1                                      mov r1, r2
007b6918  50 d2 f1 eb                                      bl #0x42b260
007b691c  06 00 50 e1                                      cmp r0, r6
007b6920  00 00 84 e5                                      str r0, [r4]
007b6924  15 00 00 0a                                      beq #0x7b6980
007b6928  60 20 9f e5                                      ldr r2, [pc, #0x60]
007b692c  60 30 9f e5                                      ldr r3, [pc, #0x60]
007b6930  24 60 84 e5                                      str r6, [r4, #0x24]
007b6934  02 c0 95 e7                                      ldr ip, [r5, r2]
007b6938  58 20 9f e5                                      ldr r2, [pc, #0x58]
007b693c  03 80 95 e7                                      ldr r8, [r5, r3]
007b6940  54 30 9f e5                                      ldr r3, [pc, #0x54]
007b6944  02 00 95 e7                                      ldr r0, [r5, r2]
007b6948  50 20 9f e5                                      ldr r2, [pc, #0x50]
007b694c  03 70 95 e7                                      ldr r7, [r5, r3]
007b6950  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
007b6954  02 10 95 e7                                      ldr r1, [r5, r2]
007b6958  48 20 9f e5                                      ldr r2, [pc, #0x48]
007b695c  03 30 95 e7                                      ldr r3, [r5, r3]
007b6960  08 80 84 e5                                      str r8, [r4, #8]
007b6964  02 20 95 e7                                      ldr r2, [r5, r2]
007b6968  0c 70 84 e5                                      str r7, [r4, #0xc]
007b696c  10 c0 84 e5                                      str ip, [r4, #0x10]
007b6970  14 00 84 e5                                      str r0, [r4, #0x14]
007b6974  18 10 84 e5                                      str r1, [r4, #0x18]
007b6978  1c 20 84 e5                                      str r2, [r4, #0x1c]
007b697c  20 30 84 e5                                      str r3, [r4, #0x20]
007b6980  04 00 a0 e1                                      mov r0, r4
007b6984  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007b6988  b8 e1 1d 00 6c 0c 00 00 b8 3c 00 00 c0 3e 00 00  .byte 0xb8, 0xe1, 0x1d, 0x00, 0x6c, 0x0c, 0x00, 0x00, 0xb8, 0x3c, 0x00, 0x00, 0xc0, 0x3e, 0x00, 0x00
007b6998  0c 1e 00 00 dc 44 00 00 84 22 00 00 58 1e 00 00  .byte 0x0c, 0x1e, 0x00, 0x00, 0xdc, 0x44, 0x00, 0x00, 0x84, 0x22, 0x00, 0x00, 0x58, 0x1e, 0x00, 0x00
007b69a8  24 47 00 00                                      .byte 0x24, 0x47, 0x00, 0x00

; FUNCTION 0x007b69ac, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_file5closeEv
; demangled: gameswf::tu_file::close()
; decoder-mode: arm
007b69ac  10 40 2d e9                                      push {r4, lr}
007b69b0  20 30 90 e5                                      ldr r3, [r0, #0x20]
007b69b4  00 40 a0 e1                                      mov r4, r0
007b69b8  00 00 53 e3                                      cmp r3, #0
007b69bc  01 00 00 0a                                      beq #0x7b69c8
007b69c0  00 00 90 e5                                      ldr r0, [r0]
007b69c4  33 ff 2f e1                                      blx r3
007b69c8  00 30 a0 e3                                      mov r3, #0
007b69cc  20 30 84 e5                                      str r3, [r4, #0x20]
007b69d0  00 30 84 e5                                      str r3, [r4]
007b69d4  08 30 84 e5                                      str r3, [r4, #8]
007b69d8  0c 30 84 e5                                      str r3, [r4, #0xc]
007b69dc  10 30 84 e5                                      str r3, [r4, #0x10]
007b69e0  18 30 84 e5                                      str r3, [r4, #0x18]
007b69e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b69e8, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileD1Ev
; demangled: gameswf::tu_file::~tu_file()
; decoder-mode: arm
007b69e8  10 40 2d e9                                      push {r4, lr}
007b69ec  00 40 a0 e1                                      mov r4, r0
007b69f0  ed ff ff eb                                      bl #0x7b69ac
007b69f4  04 00 a0 e1                                      mov r0, r4
007b69f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b69fc, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileD2Ev
; demangled: gameswf::tu_file::~tu_file()
; decoder-mode: arm
007b69fc  10 40 2d e9                                      push {r4, lr}
007b6a00  00 40 a0 e1                                      mov r4, r0
007b6a04  e8 ff ff eb                                      bl #0x7b69ac
007b6a08  04 00 a0 e1                                      mov r0, r4
007b6a0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b6a10, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_file9copy_fromEPS0_
; demangled: gameswf::tu_file::copy_from(gameswf::tu_file*)
; decoder-mode: arm
007b6a10  70 40 2d e9                                      push {r4, r5, r6, lr}
007b6a14  08 d0 4d e2                                      sub sp, sp, #8
007b6a18  00 60 a0 e1                                      mov r6, r0
007b6a1c  01 40 a0 e1                                      mov r4, r1
007b6a20  07 50 8d e2                                      add r5, sp, #7
007b6a24  0c 00 00 ea                                      b #0x7b6a5c
007b6a28  00 20 94 e5                                      ldr r2, [r4]
007b6a2c  0f e0 a0 e1                                      mov lr, pc
007b6a30  08 f0 94 e5                                      ldr pc, [r4, #8]
007b6a34  24 30 94 e5                                      ldr r3, [r4, #0x24]
007b6a38  05 00 a0 e1                                      mov r0, r5
007b6a3c  01 10 a0 e3                                      mov r1, #1
007b6a40  00 00 53 e3                                      cmp r3, #0
007b6a44  07 30 dd e5                                      ldrb r3, [sp, #7]
007b6a48  0a 00 00 1a                                      bne #0x7b6a78
007b6a4c  00 20 96 e5                                      ldr r2, [r6]
007b6a50  07 30 cd e5                                      strb r3, [sp, #7]
007b6a54  0f e0 a0 e1                                      mov lr, pc
007b6a58  0c f0 96 e5                                      ldr pc, [r6, #0xc]
007b6a5c  00 00 94 e5                                      ldr r0, [r4]
007b6a60  0f e0 a0 e1                                      mov lr, pc
007b6a64  1c f0 94 e5                                      ldr pc, [r4, #0x1c]
007b6a68  00 00 50 e3                                      cmp r0, #0
007b6a6c  01 10 a0 e3                                      mov r1, #1
007b6a70  05 00 a0 e1                                      mov r0, r5
007b6a74  eb ff ff 0a                                      beq #0x7b6a28
007b6a78  08 d0 8d e2                                      add sp, sp, #8
007b6a7c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007b6a80, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_file10read_fullyEPNS_6membufEi
; demangled: gameswf::tu_file::read_fully(gameswf::membuf*, int)
; decoder-mode: arm
007b6a80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b6a84  01 00 72 e3                                      cmn r2, #1
007b6a88  00 40 a0 e1                                      mov r4, r0
007b6a8c  01 70 a0 e1                                      mov r7, r1
007b6a90  00 50 91 05                                      ldreq r5, [r1]
007b6a94  02 50 a0 11                                      movne r5, r2
007b6a98  00 60 a0 e3                                      mov r6, #0
007b6a9c  00 00 94 e5                                      ldr r0, [r4]
007b6aa0  0f e0 a0 e1                                      mov lr, pc
007b6aa4  1c f0 94 e5                                      ldr pc, [r4, #0x1c]
007b6aa8  00 00 50 e3                                      cmp r0, #0
007b6aac  00 00 00 0a                                      beq #0x7b6ab4
007b6ab0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b6ab4  00 10 55 e2                                      subs r1, r5, #0
007b6ab8  fc ff ff da                                      ble #0x7b6ab0
007b6abc  08 00 97 e5                                      ldr r0, [r7, #8]
007b6ac0  00 20 94 e5                                      ldr r2, [r4]
007b6ac4  06 00 80 e0                                      add r0, r0, r6
007b6ac8  0f e0 a0 e1                                      mov lr, pc
007b6acc  08 f0 94 e5                                      ldr pc, [r4, #8]
007b6ad0  24 30 94 e5                                      ldr r3, [r4, #0x24]
007b6ad4  00 00 53 e3                                      cmp r3, #0
007b6ad8  f4 ff ff 1a                                      bne #0x7b6ab0
007b6adc  00 00 50 e3                                      cmp r0, #0
007b6ae0  f2 ff ff da                                      ble #0x7b6ab0
007b6ae4  05 50 60 e0                                      rsb r5, r0, r5
007b6ae8  00 60 86 e0                                      add r6, r6, r0
007b6aec  ea ff ff ea                                      b #0x7b6a9c

; FUNCTION 0x007b6af0, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_file10copy_bytesEPS0_i
; demangled: gameswf::tu_file::copy_bytes(gameswf::tu_file*, int)
; decoder-mode: arm
007b6af0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b6af4  b4 a0 9f e5                                      ldr sl, [pc, #0xb4]
007b6af8  b4 b0 9f e5                                      ldr fp, [pc, #0xb4]
007b6afc  01 da 4d e2                                      sub sp, sp, #0x1000
007b6b00  0a a0 8f e0                                      add sl, pc, sl
007b6b04  0b 30 9a e7                                      ldr r3, [sl, fp]
007b6b08  0c d0 4d e2                                      sub sp, sp, #0xc
007b6b0c  01 80 a0 e1                                      mov r8, r1
007b6b10  00 30 93 e5                                      ldr r3, [r3]
007b6b14  01 1a 8d e2                                      add r1, sp, #0x1000
007b6b18  00 90 52 e2                                      subs sb, r2, #0
007b6b1c  00 70 a0 e1                                      mov r7, r0
007b6b20  04 30 81 e5                                      str r3, [r1, #4]
007b6b24  16 00 00 0a                                      beq #0x7b6b84
007b6b28  08 60 8d e2                                      add r6, sp, #8
007b6b2c  04 60 46 e2                                      sub r6, r6, #4
007b6b30  09 40 a0 e1                                      mov r4, sb
007b6b34  01 00 00 ea                                      b #0x7b6b40
007b6b38  00 00 54 e3                                      cmp r4, #0
007b6b3c  10 00 00 0a                                      beq #0x7b6b84
007b6b40  01 0a 54 e3                                      cmp r4, #0x1000
007b6b44  04 50 a0 b1                                      movlt r5, r4
007b6b48  01 5a a0 a3                                      movge r5, #0x1000
007b6b4c  00 20 98 e5                                      ldr r2, [r8]
007b6b50  05 10 a0 e1                                      mov r1, r5
007b6b54  06 00 a0 e1                                      mov r0, r6
007b6b58  0f e0 a0 e1                                      mov lr, pc
007b6b5c  08 f0 98 e5                                      ldr pc, [r8, #8]
007b6b60  00 20 97 e5                                      ldr r2, [r7]
007b6b64  00 10 a0 e1                                      mov r1, r0
007b6b68  06 00 a0 e1                                      mov r0, r6
007b6b6c  0f e0 a0 e1                                      mov lr, pc
007b6b70  0c f0 97 e5                                      ldr pc, [r7, #0xc]
007b6b74  00 00 55 e1                                      cmp r5, r0
007b6b78  04 40 60 e0                                      rsb r4, r0, r4
007b6b7c  ed ff ff da                                      ble #0x7b6b38
007b6b80  09 90 64 e0                                      rsb sb, r4, sb
007b6b84  0b 30 9a e7                                      ldr r3, [sl, fp]
007b6b88  01 1a 8d e2                                      add r1, sp, #0x1000
007b6b8c  04 20 91 e5                                      ldr r2, [r1, #4]
007b6b90  00 30 93 e5                                      ldr r3, [r3]
007b6b94  09 00 a0 e1                                      mov r0, sb
007b6b98  03 00 52 e1                                      cmp r2, r3
007b6b9c  02 00 00 1a                                      bne #0x7b6bac
007b6ba0  0c d0 8d e2                                      add sp, sp, #0xc
007b6ba4  01 da 8d e2                                      add sp, sp, #0x1000
007b6ba8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b6bac  d7 5d ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007b6bb0  90 df 1d 00 ac 40 00 00                          .byte 0x90, 0xdf, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007b6bb8, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_file12write_stringEPKc
; demangled: gameswf::tu_file::write_string(char const*)
; decoder-mode: arm
007b6bb8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007b6bbc  0c d0 4d e2                                      sub sp, sp, #0xc
007b6bc0  00 60 a0 e1                                      mov r6, r0
007b6bc4  01 50 a0 e1                                      mov r5, r1
007b6bc8  00 40 a0 e3                                      mov r4, #0
007b6bcc  07 70 8d e2                                      add r7, sp, #7
007b6bd0  04 30 d5 e7                                      ldrb r3, [r5, r4]
007b6bd4  07 00 a0 e1                                      mov r0, r7
007b6bd8  01 40 84 e2                                      add r4, r4, #1
007b6bdc  07 30 cd e5                                      strb r3, [sp, #7]
007b6be0  01 10 a0 e3                                      mov r1, #1
007b6be4  00 20 96 e5                                      ldr r2, [r6]
007b6be8  0f e0 a0 e1                                      mov lr, pc
007b6bec  0c f0 96 e5                                      ldr pc, [r6, #0xc]
007b6bf0  04 30 85 e0                                      add r3, r5, r4
007b6bf4  d1 30 53 e1                                      ldrsb r3, [r3, #-1]
007b6bf8  00 00 53 e3                                      cmp r3, #0
007b6bfc  f3 ff ff 1a                                      bne #0x7b6bd0
007b6c00  0c d0 8d e2                                      add sp, sp, #0xc
007b6c04  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007b6c08, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_file11read_stringEPcic
; demangled: gameswf::tu_file::read_string(char*, int, char)
; decoder-mode: arm
007b6c08  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007b6c0c  00 60 52 e2                                      subs r6, r2, #0
007b6c10  0c d0 4d e2                                      sub sp, sp, #0xc
007b6c14  00 40 a0 e1                                      mov r4, r0
007b6c18  01 50 a0 e1                                      mov r5, r1
007b6c1c  03 80 a0 e1                                      mov r8, r3
007b6c20  12 00 00 da                                      ble #0x7b6c70
007b6c24  00 70 a0 e3                                      mov r7, #0
007b6c28  07 a0 8d e2                                      add sl, sp, #7
007b6c2c  02 00 00 ea                                      b #0x7b6c3c
007b6c30  01 70 87 e2                                      add r7, r7, #1
007b6c34  06 00 57 e1                                      cmp r7, r6
007b6c38  0c 00 00 0a                                      beq #0x7b6c70
007b6c3c  00 20 94 e5                                      ldr r2, [r4]
007b6c40  0a 00 a0 e1                                      mov r0, sl
007b6c44  01 10 a0 e3                                      mov r1, #1
007b6c48  0f e0 a0 e1                                      mov lr, pc
007b6c4c  08 f0 94 e5                                      ldr pc, [r4, #8]
007b6c50  07 30 dd e5                                      ldrb r3, [sp, #7]
007b6c54  73 20 af e6                                      sxtb r2, r3
007b6c58  08 00 52 e1                                      cmp r2, r8
007b6c5c  07 30 c5 e7                                      strb r3, [r5, r7]
007b6c60  f2 ff ff 1a                                      bne #0x7b6c30
007b6c64  00 30 a0 e3                                      mov r3, #0
007b6c68  07 30 c5 e7                                      strb r3, [r5, r7]
007b6c6c  03 00 00 ea                                      b #0x7b6c80
007b6c70  06 50 85 e0                                      add r5, r5, r6
007b6c74  00 30 a0 e3                                      mov r3, #0
007b6c78  01 30 45 e5                                      strb r3, [r5, #-1]
007b6c7c  00 70 e0 e3                                      mvn r7, #0
007b6c80  07 00 a0 e1                                      mov r0, r7
007b6c84  0c d0 8d e2                                      add sp, sp, #0xc
007b6c88  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007b7040, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_file6printfEPKcz
; demangled: gameswf::tu_file::printf(char const*, ...)
; decoder-mode: arm
007b7040  0e 00 2d e9                                      push {r1, r2, r3}
007b7044  80 c0 9f e5                                      ldr ip, [pc, #0x80]
007b7048  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007b704c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
007b7050  0c c0 8f e0                                      add ip, pc, ip
007b7054  3f de 4d e2                                      sub sp, sp, #0x3f0
007b7058  03 50 9c e7                                      ldr r5, [ip, r3]
007b705c  01 eb 8d e2                                      add lr, sp, #0x400
007b7060  08 e0 8e e2                                      add lr, lr, #8
007b7064  00 70 95 e5                                      ldr r7, [r5]
007b7068  04 40 8d e2                                      add r4, sp, #4
007b706c  0e 30 a0 e1                                      mov r3, lr
007b7070  00 60 a0 e1                                      mov r6, r0
007b7074  04 24 9d e5                                      ldr r2, [sp, #0x404]
007b7078  fa 1f a0 e3                                      mov r1, #0x3e8
007b707c  04 00 a0 e1                                      mov r0, r4
007b7080  00 e0 8d e5                                      str lr, [sp]
007b7084  ec 73 8d e5                                      str r7, [sp, #0x3ec]
007b7088  9b 5e ed eb                                      bl #0x30eafc
007b708c  04 00 a0 e1                                      mov r0, r4
007b7090  6f 5b ed eb                                      bl #0x30de54
007b7094  00 20 96 e5                                      ldr r2, [r6]
007b7098  00 10 a0 e1                                      mov r1, r0
007b709c  04 00 a0 e1                                      mov r0, r4
007b70a0  0f e0 a0 e1                                      mov lr, pc
007b70a4  0c f0 96 e5                                      ldr pc, [r6, #0xc]
007b70a8  ec 23 9d e5                                      ldr r2, [sp, #0x3ec]
007b70ac  00 30 95 e5                                      ldr r3, [r5]
007b70b0  03 00 52 e1                                      cmp r2, r3
007b70b4  03 00 00 1a                                      bne #0x7b70c8
007b70b8  3f de 8d e2                                      add sp, sp, #0x3f0
007b70bc  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
007b70c0  0c d0 8d e2                                      add sp, sp, #0xc
007b70c4  1e ff 2f e1                                      bx lr
007b70c8  90 5c ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007b70cc  40 da 1d 00 ac 40 00 00                          .byte 0x40, 0xda, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007b70d4, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_file7copy_toEPNS_6membufE
; demangled: gameswf::tu_file::copy_to(gameswf::membuf*)
; decoder-mode: arm
007b70d4  70 40 2d e9                                      push {r4, r5, r6, lr}
007b70d8  00 40 a0 e1                                      mov r4, r0
007b70dc  01 50 a0 e1                                      mov r5, r1
007b70e0  ff 6f 00 e3                                      movw r6, #0xfff
007b70e4  02 00 00 ea                                      b #0x7b70f4
007b70e8  24 30 94 e5                                      ldr r3, [r4, #0x24]
007b70ec  00 00 53 e3                                      cmp r3, #0
007b70f0  1b 00 00 1a                                      bne #0x7b7164
007b70f4  00 00 94 e5                                      ldr r0, [r4]
007b70f8  0f e0 a0 e1                                      mov lr, pc
007b70fc  1c f0 94 e5                                      ldr pc, [r4, #0x1c]
007b7100  00 00 50 e3                                      cmp r0, #0
007b7104  05 00 a0 e1                                      mov r0, r5
007b7108  15 00 00 1a                                      bne #0x7b7164
007b710c  00 10 95 e5                                      ldr r1, [r5]
007b7110  01 1a 81 e2                                      add r1, r1, #0x1000
007b7114  50 8f fe eb                                      bl #0x75ae5c
007b7118  00 30 95 e5                                      ldr r3, [r5]
007b711c  08 00 95 e5                                      ldr r0, [r5, #8]
007b7120  01 1a a0 e3                                      mov r1, #0x1000
007b7124  01 3a 43 e2                                      sub r3, r3, #0x1000
007b7128  03 00 80 e0                                      add r0, r0, r3
007b712c  00 20 94 e5                                      ldr r2, [r4]
007b7130  0f e0 a0 e1                                      mov lr, pc
007b7134  08 f0 94 e5                                      ldr pc, [r4, #8]
007b7138  06 00 50 e1                                      cmp r0, r6
007b713c  00 30 a0 e1                                      mov r3, r0
007b7140  e8 ff ff ca                                      bgt #0x7b70e8
007b7144  00 10 95 e5                                      ldr r1, [r5]
007b7148  05 00 a0 e1                                      mov r0, r5
007b714c  01 1a 41 e2                                      sub r1, r1, #0x1000
007b7150  03 10 81 e0                                      add r1, r1, r3
007b7154  40 8f fe eb                                      bl #0x75ae5c
007b7158  24 30 94 e5                                      ldr r3, [r4, #0x24]
007b715c  00 00 53 e3                                      cmp r3, #0
007b7160  e3 ff ff 0a                                      beq #0x7b70f4
007b7164  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007b71f0, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC1ENS0_18memory_buffer_enumEiPv
; demangled: gameswf::tu_file::tu_file(gameswf::tu_file::memory_buffer_enum, int, void*)
; decoder-mode: arm
007b71f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007b71f4  00 10 a0 e3                                      mov r1, #0
007b71f8  00 40 a0 e1                                      mov r4, r0
007b71fc  18 00 a0 e3                                      mov r0, #0x18
007b7200  02 60 a0 e1                                      mov r6, r2
007b7204  03 70 a0 e1                                      mov r7, r3
007b7208  66 6e fe eb                                      bl #0x752ba8
007b720c  07 20 a0 e1                                      mov r2, r7
007b7210  06 30 a0 e1                                      mov r3, r6
007b7214  00 10 a0 e3                                      mov r1, #0
007b7218  00 50 a0 e1                                      mov r5, r0
007b721c  70 70 9f e5                                      ldr r7, [pc, #0x70]
007b7220  26 fc ff eb                                      bl #0x7b62c0
007b7224  6c 60 9f e5                                      ldr r6, [pc, #0x6c]
007b7228  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
007b722c  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
007b7230  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
007b7234  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
007b7238  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
007b723c  00 80 a0 e3                                      mov r8, #0
007b7240  07 70 8f e0                                      add r7, pc, r7
007b7244  06 60 8f e0                                      add r6, pc, r6
007b7248  0c c0 8f e0                                      add ip, pc, ip
007b724c  00 00 8f e0                                      add r0, pc, r0
007b7250  01 10 8f e0                                      add r1, pc, r1
007b7254  02 20 8f e0                                      add r2, pc, r2
007b7258  03 30 8f e0                                      add r3, pc, r3
007b725c  01 a0 a0 e3                                      mov sl, #1
007b7260  14 a0 c5 e5                                      strb sl, [r5, #0x14]
007b7264  10 80 85 e5                                      str r8, [r5, #0x10]
007b7268  14 00 84 e5                                      str r0, [r4, #0x14]
007b726c  00 50 84 e5                                      str r5, [r4]
007b7270  08 70 84 e5                                      str r7, [r4, #8]
007b7274  0c 60 84 e5                                      str r6, [r4, #0xc]
007b7278  10 c0 84 e5                                      str ip, [r4, #0x10]
007b727c  18 10 84 e5                                      str r1, [r4, #0x18]
007b7280  1c 20 84 e5                                      str r2, [r4, #0x1c]
007b7284  20 30 84 e5                                      str r3, [r4, #0x20]
007b7288  24 80 84 e5                                      str r8, [r4, #0x24]
007b728c  04 00 a0 e1                                      mov r0, r4
007b7290  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007b7294  ac fd ff ff 1c ff ff ff 88 f3 ff ff b4 f3 ff ff  .byte 0xac, 0xfd, 0xff, 0xff, 0x1c, 0xff, 0xff, 0xff, 0x88, 0xf3, 0xff, 0xff, 0xb4, 0xf3, 0xff, 0xff
007b72a4  c4 f3 ff ff c8 f3 ff ff 10 01 00 00              .byte 0xc4, 0xf3, 0xff, 0xff, 0xc8, 0xf3, 0xff, 0xff, 0x10, 0x01, 0x00, 0x00

; FUNCTION 0x007b72b0, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC2ENS0_18memory_buffer_enumEiPv
; demangled: gameswf::tu_file::tu_file(gameswf::tu_file::memory_buffer_enum, int, void*)
; decoder-mode: arm
007b72b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007b72b4  00 10 a0 e3                                      mov r1, #0
007b72b8  00 40 a0 e1                                      mov r4, r0
007b72bc  18 00 a0 e3                                      mov r0, #0x18
007b72c0  02 60 a0 e1                                      mov r6, r2
007b72c4  03 70 a0 e1                                      mov r7, r3
007b72c8  36 6e fe eb                                      bl #0x752ba8
007b72cc  07 20 a0 e1                                      mov r2, r7
007b72d0  06 30 a0 e1                                      mov r3, r6
007b72d4  00 10 a0 e3                                      mov r1, #0
007b72d8  00 50 a0 e1                                      mov r5, r0
007b72dc  70 70 9f e5                                      ldr r7, [pc, #0x70]
007b72e0  f6 fb ff eb                                      bl #0x7b62c0
007b72e4  6c 60 9f e5                                      ldr r6, [pc, #0x6c]
007b72e8  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
007b72ec  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
007b72f0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
007b72f4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
007b72f8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
007b72fc  00 80 a0 e3                                      mov r8, #0
007b7300  07 70 8f e0                                      add r7, pc, r7
007b7304  06 60 8f e0                                      add r6, pc, r6
007b7308  0c c0 8f e0                                      add ip, pc, ip
007b730c  00 00 8f e0                                      add r0, pc, r0
007b7310  01 10 8f e0                                      add r1, pc, r1
007b7314  02 20 8f e0                                      add r2, pc, r2
007b7318  03 30 8f e0                                      add r3, pc, r3
007b731c  01 a0 a0 e3                                      mov sl, #1
007b7320  14 a0 c5 e5                                      strb sl, [r5, #0x14]
007b7324  10 80 85 e5                                      str r8, [r5, #0x10]
007b7328  14 00 84 e5                                      str r0, [r4, #0x14]
007b732c  00 50 84 e5                                      str r5, [r4]
007b7330  08 70 84 e5                                      str r7, [r4, #8]
007b7334  0c 60 84 e5                                      str r6, [r4, #0xc]
007b7338  10 c0 84 e5                                      str ip, [r4, #0x10]
007b733c  18 10 84 e5                                      str r1, [r4, #0x18]
007b7340  1c 20 84 e5                                      str r2, [r4, #0x1c]
007b7344  20 30 84 e5                                      str r3, [r4, #0x20]
007b7348  24 80 84 e5                                      str r8, [r4, #0x24]
007b734c  04 00 a0 e1                                      mov r0, r4
007b7350  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007b7354  ec fc ff ff 5c fe ff ff c8 f2 ff ff f4 f2 ff ff  .byte 0xec, 0xfc, 0xff, 0xff, 0x5c, 0xfe, 0xff, 0xff, 0xc8, 0xf2, 0xff, 0xff, 0xf4, 0xf2, 0xff, 0xff
007b7364  04 f3 ff ff 08 f3 ff ff 50 00 00 00              .byte 0x04, 0xf3, 0xff, 0xff, 0x08, 0xf3, 0xff, 0xff, 0x50, 0x00, 0x00, 0x00

; FUNCTION 0x007b7394, declared_size=168, range_size=168, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC1ENS0_18memory_buffer_enumE
; demangled: gameswf::tu_file::tu_file(gameswf::tu_file::memory_buffer_enum)
; decoder-mode: arm
007b7394  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b7398  00 10 a0 e3                                      mov r1, #0
007b739c  00 40 a0 e1                                      mov r4, r0
007b73a0  18 00 a0 e3                                      mov r0, #0x18
007b73a4  ff 6d fe eb                                      bl #0x752ba8
007b73a8  70 80 9f e5                                      ldr r8, [pc, #0x70]
007b73ac  00 50 a0 e1                                      mov r5, r0
007b73b0  6c 70 9f e5                                      ldr r7, [pc, #0x6c]
007b73b4  b4 fb ff eb                                      bl #0x7b628c
007b73b8  68 60 9f e5                                      ldr r6, [pc, #0x68]
007b73bc  68 c0 9f e5                                      ldr ip, [pc, #0x68]
007b73c0  68 00 9f e5                                      ldr r0, [pc, #0x68]
007b73c4  68 10 9f e5                                      ldr r1, [pc, #0x68]
007b73c8  68 20 9f e5                                      ldr r2, [pc, #0x68]
007b73cc  00 30 a0 e3                                      mov r3, #0
007b73d0  08 80 8f e0                                      add r8, pc, r8
007b73d4  07 70 8f e0                                      add r7, pc, r7
007b73d8  06 60 8f e0                                      add r6, pc, r6
007b73dc  0c c0 8f e0                                      add ip, pc, ip
007b73e0  00 00 8f e0                                      add r0, pc, r0
007b73e4  01 10 8f e0                                      add r1, pc, r1
007b73e8  02 20 8f e0                                      add r2, pc, r2
007b73ec  10 30 85 e5                                      str r3, [r5, #0x10]
007b73f0  14 30 c5 e5                                      strb r3, [r5, #0x14]
007b73f4  18 00 84 e5                                      str r0, [r4, #0x18]
007b73f8  00 50 84 e5                                      str r5, [r4]
007b73fc  08 80 84 e5                                      str r8, [r4, #8]
007b7400  0c 70 84 e5                                      str r7, [r4, #0xc]
007b7404  10 60 84 e5                                      str r6, [r4, #0x10]
007b7408  14 c0 84 e5                                      str ip, [r4, #0x14]
007b740c  1c 10 84 e5                                      str r1, [r4, #0x1c]
007b7410  20 20 84 e5                                      str r2, [r4, #0x20]
007b7414  24 30 84 e5                                      str r3, [r4, #0x24]
007b7418  04 00 a0 e1                                      mov r0, r4
007b741c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007b7420  1c fc ff ff 8c fd ff ff f8 f1 ff ff 24 f2 ff ff  .byte 0x1c, 0xfc, 0xff, 0xff, 0x8c, 0xfd, 0xff, 0xff, 0xf8, 0xf1, 0xff, 0xff, 0x24, 0xf2, 0xff, 0xff
007b7430  34 f2 ff ff 38 f2 ff ff 80 ff ff ff              .byte 0x34, 0xf2, 0xff, 0xff, 0x38, 0xf2, 0xff, 0xff, 0x80, 0xff, 0xff, 0xff

; FUNCTION 0x007b743c, declared_size=168, range_size=168, mode=arm
; class-group: gameswf::tu_file
; alias: _ZN7gameswf7tu_fileC2ENS0_18memory_buffer_enumE
; demangled: gameswf::tu_file::tu_file(gameswf::tu_file::memory_buffer_enum)
; decoder-mode: arm
007b743c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b7440  00 10 a0 e3                                      mov r1, #0
007b7444  00 40 a0 e1                                      mov r4, r0
007b7448  18 00 a0 e3                                      mov r0, #0x18
007b744c  d5 6d fe eb                                      bl #0x752ba8
007b7450  70 80 9f e5                                      ldr r8, [pc, #0x70]
007b7454  00 50 a0 e1                                      mov r5, r0
007b7458  6c 70 9f e5                                      ldr r7, [pc, #0x6c]
007b745c  8a fb ff eb                                      bl #0x7b628c
007b7460  68 60 9f e5                                      ldr r6, [pc, #0x68]
007b7464  68 c0 9f e5                                      ldr ip, [pc, #0x68]
007b7468  68 00 9f e5                                      ldr r0, [pc, #0x68]
007b746c  68 10 9f e5                                      ldr r1, [pc, #0x68]
007b7470  68 20 9f e5                                      ldr r2, [pc, #0x68]
007b7474  00 30 a0 e3                                      mov r3, #0
007b7478  08 80 8f e0                                      add r8, pc, r8
007b747c  07 70 8f e0                                      add r7, pc, r7
007b7480  06 60 8f e0                                      add r6, pc, r6
007b7484  0c c0 8f e0                                      add ip, pc, ip
007b7488  00 00 8f e0                                      add r0, pc, r0
007b748c  01 10 8f e0                                      add r1, pc, r1
007b7490  02 20 8f e0                                      add r2, pc, r2
007b7494  10 30 85 e5                                      str r3, [r5, #0x10]
007b7498  14 30 c5 e5                                      strb r3, [r5, #0x14]
007b749c  18 00 84 e5                                      str r0, [r4, #0x18]
007b74a0  00 50 84 e5                                      str r5, [r4]
007b74a4  08 80 84 e5                                      str r8, [r4, #8]
007b74a8  0c 70 84 e5                                      str r7, [r4, #0xc]
007b74ac  10 60 84 e5                                      str r6, [r4, #0x10]
007b74b0  14 c0 84 e5                                      str ip, [r4, #0x14]
007b74b4  1c 10 84 e5                                      str r1, [r4, #0x1c]
007b74b8  20 20 84 e5                                      str r2, [r4, #0x20]
007b74bc  24 30 84 e5                                      str r3, [r4, #0x24]
007b74c0  04 00 a0 e1                                      mov r0, r4
007b74c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007b74c8  74 fb ff ff e4 fc ff ff 50 f1 ff ff 7c f1 ff ff  .byte 0x74, 0xfb, 0xff, 0xff, 0xe4, 0xfc, 0xff, 0xff, 0x50, 0xf1, 0xff, 0xff, 0x7c, 0xf1, 0xff, 0xff
007b74d8  8c f1 ff ff 90 f1 ff ff d8 fe ff ff              .byte 0x8c, 0xf1, 0xff, 0xff, 0x90, 0xf1, 0xff, 0xff, 0xd8, 0xfe, 0xff, 0xff
