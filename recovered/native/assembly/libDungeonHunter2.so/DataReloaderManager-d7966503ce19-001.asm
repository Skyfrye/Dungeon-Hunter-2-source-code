; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00339094, declared_size=52, range_size=52, mode=arm
; class-group: DataReloaderManager
; alias: _ZN19DataReloaderManagerC2Ev
; demangled: DataReloaderManager::DataReloaderManager()
; decoder-mode: arm
00339094  24 20 9f e5                                      ldr r2, [pc, #0x24]
00339098  24 c0 9f e5                                      ldr ip, [pc, #0x24]
0033909c  00 10 a0 e3                                      mov r1, #0
003390a0  02 20 8f e0                                      add r2, pc, r2
003390a4  0c c0 92 e7                                      ldr ip, [r2, ip]
003390a8  0c 10 80 e5                                      str r1, [r0, #0xc]
003390ac  04 10 80 e5                                      str r1, [r0, #4]
003390b0  08 c0 8c e2                                      add ip, ip, #8
003390b4  00 c0 80 e5                                      str ip, [r0]
003390b8  08 10 80 e5                                      str r1, [r0, #8]
003390bc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003390c0  f0 b9 65 00 34 31 00 00                          .byte 0xf0, 0xb9, 0x65, 0x00, 0x34, 0x31, 0x00, 0x00

; FUNCTION 0x003390c8, declared_size=52, range_size=52, mode=arm
; class-group: DataReloaderManager
; alias: _ZN19DataReloaderManagerC1Ev
; demangled: DataReloaderManager::DataReloaderManager()
; decoder-mode: arm
003390c8  24 20 9f e5                                      ldr r2, [pc, #0x24]
003390cc  24 c0 9f e5                                      ldr ip, [pc, #0x24]
003390d0  00 10 a0 e3                                      mov r1, #0
003390d4  02 20 8f e0                                      add r2, pc, r2
003390d8  0c c0 92 e7                                      ldr ip, [r2, ip]
003390dc  0c 10 80 e5                                      str r1, [r0, #0xc]
003390e0  04 10 80 e5                                      str r1, [r0, #4]
003390e4  08 c0 8c e2                                      add ip, ip, #8
003390e8  00 c0 80 e5                                      str ip, [r0]
003390ec  08 10 80 e5                                      str r1, [r0, #8]
003390f0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003390f4  bc b9 65 00 34 31 00 00                          .byte 0xbc, 0xb9, 0x65, 0x00, 0x34, 0x31, 0x00, 0x00

; FUNCTION 0x003390fc, declared_size=4, range_size=4, mode=arm
; class-group: DataReloaderManager
; alias: _ZN19DataReloaderManager12monitorFilesEPKcS1_P13IDataReloader
; demangled: DataReloaderManager::monitorFiles(char const*, char const*, IDataReloader*)
; decoder-mode: arm
003390fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00339100, declared_size=4, range_size=4, mode=arm
; class-group: DataReloaderManager
; alias: _ZNK19DataReloaderManager10checkFilesEv
; demangled: DataReloaderManager::checkFiles() const
; decoder-mode: arm
00339100  1e ff 2f e1                                      bx lr

; FUNCTION 0x003391a0, declared_size=160, range_size=160, mode=arm
; class-group: DataReloaderManager
; alias: _ZN19DataReloaderManagerD1Ev
; demangled: DataReloaderManager::~DataReloaderManager()
; decoder-mode: arm
003391a0  70 40 2d e9                                      push {r4, r5, r6, lr}
003391a4  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003391a8  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
003391ac  04 50 90 e5                                      ldr r5, [r0, #4]
003391b0  03 30 8f e0                                      add r3, pc, r3
003391b4  02 20 93 e7                                      ldr r2, [r3, r2]
003391b8  08 10 90 e5                                      ldr r1, [r0, #8]
003391bc  00 40 a0 e1                                      mov r4, r0
003391c0  08 20 82 e2                                      add r2, r2, #8
003391c4  01 00 55 e1                                      cmp r5, r1
003391c8  00 20 80 e5                                      str r2, [r0]
003391cc  0a 00 00 0a                                      beq #0x3391fc
003391d0  00 60 95 e5                                      ldr r6, [r5]
003391d4  04 50 85 e2                                      add r5, r5, #4
003391d8  00 00 56 e3                                      cmp r6, #0
003391dc  04 00 00 0a                                      beq #0x3391f4
003391e0  06 00 a0 e1                                      mov r0, r6
003391e4  ce ff ff eb                                      bl #0x339124
003391e8  06 00 a0 e1                                      mov r0, r6
003391ec  93 5c ff eb                                      bl #0x310440
003391f0  08 10 94 e5                                      ldr r1, [r4, #8]
003391f4  01 00 55 e1                                      cmp r5, r1
003391f8  f4 ff ff 1a                                      bne #0x3391d0
003391fc  04 00 94 e5                                      ldr r0, [r4, #4]
00339200  04 30 84 e2                                      add r3, r4, #4
00339204  00 00 50 e3                                      cmp r0, #0
00339208  05 00 00 0a                                      beq #0x339224
0033920c  08 10 93 e5                                      ldr r1, [r3, #8]
00339210  01 10 60 e0                                      rsb r1, r0, r1
00339214  03 10 c1 e3                                      bic r1, r1, #3
00339218  80 00 51 e3                                      cmp r1, #0x80
0033921c  02 00 00 8a                                      bhi #0x33922c
00339220  36 3f 0f eb                                      bl #0x708f00
00339224  04 00 a0 e1                                      mov r0, r4
00339228  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033922c  83 5c ff eb                                      bl #0x310440
00339230  04 00 a0 e1                                      mov r0, r4
00339234  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00339238  e0 b8 65 00 34 31 00 00                          .byte 0xe0, 0xb8, 0x65, 0x00, 0x34, 0x31, 0x00, 0x00

; FUNCTION 0x00339240, declared_size=28, range_size=28, mode=arm
; class-group: DataReloaderManager
; alias: _ZN19DataReloaderManagerD0Ev
; demangled: DataReloaderManager::~DataReloaderManager()
; decoder-mode: arm
00339240  10 40 2d e9                                      push {r4, lr}
00339244  00 40 a0 e1                                      mov r4, r0
00339248  d4 ff ff eb                                      bl #0x3391a0
0033924c  04 00 a0 e1                                      mov r0, r4
00339250  7a 5c ff eb                                      bl #0x310440
00339254  04 00 a0 e1                                      mov r0, r4
00339258  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033925c, declared_size=160, range_size=160, mode=arm
; class-group: DataReloaderManager
; alias: _ZN19DataReloaderManagerD2Ev
; demangled: DataReloaderManager::~DataReloaderManager()
; decoder-mode: arm
0033925c  70 40 2d e9                                      push {r4, r5, r6, lr}
00339260  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00339264  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00339268  04 50 90 e5                                      ldr r5, [r0, #4]
0033926c  03 30 8f e0                                      add r3, pc, r3
00339270  02 20 93 e7                                      ldr r2, [r3, r2]
00339274  08 10 90 e5                                      ldr r1, [r0, #8]
00339278  00 40 a0 e1                                      mov r4, r0
0033927c  08 20 82 e2                                      add r2, r2, #8
00339280  01 00 55 e1                                      cmp r5, r1
00339284  00 20 80 e5                                      str r2, [r0]
00339288  0a 00 00 0a                                      beq #0x3392b8
0033928c  00 60 95 e5                                      ldr r6, [r5]
00339290  04 50 85 e2                                      add r5, r5, #4
00339294  00 00 56 e3                                      cmp r6, #0
00339298  04 00 00 0a                                      beq #0x3392b0
0033929c  06 00 a0 e1                                      mov r0, r6
003392a0  9f ff ff eb                                      bl #0x339124
003392a4  06 00 a0 e1                                      mov r0, r6
003392a8  64 5c ff eb                                      bl #0x310440
003392ac  08 10 94 e5                                      ldr r1, [r4, #8]
003392b0  01 00 55 e1                                      cmp r5, r1
003392b4  f4 ff ff 1a                                      bne #0x33928c
003392b8  04 00 94 e5                                      ldr r0, [r4, #4]
003392bc  04 30 84 e2                                      add r3, r4, #4
003392c0  00 00 50 e3                                      cmp r0, #0
003392c4  05 00 00 0a                                      beq #0x3392e0
003392c8  08 10 93 e5                                      ldr r1, [r3, #8]
003392cc  01 10 60 e0                                      rsb r1, r0, r1
003392d0  03 10 c1 e3                                      bic r1, r1, #3
003392d4  80 00 51 e3                                      cmp r1, #0x80
003392d8  02 00 00 8a                                      bhi #0x3392e8
003392dc  07 3f 0f eb                                      bl #0x708f00
003392e0  04 00 a0 e1                                      mov r0, r4
003392e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003392e8  54 5c ff eb                                      bl #0x310440
003392ec  04 00 a0 e1                                      mov r0, r4
003392f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003392f4  24 b8 65 00 34 31 00 00                          .byte 0x24, 0xb8, 0x65, 0x00, 0x34, 0x31, 0x00, 0x00
