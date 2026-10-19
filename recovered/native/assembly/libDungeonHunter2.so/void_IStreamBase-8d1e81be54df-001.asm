; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313b48, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsIjEEvRT_
; demangled: void IStreamBase::readAs<unsigned int>(unsigned int&)
; decoder-mode: arm
00313b48  04 e0 2d e5                                      str lr, [sp, #-4]!
00313b4c  00 30 a0 e3                                      mov r3, #0
00313b50  0c d0 4d e2                                      sub sp, sp, #0xc
00313b54  00 c0 90 e5                                      ldr ip, [r0]
00313b58  04 20 a0 e3                                      mov r2, #4
00313b5c  0f e0 a0 e1                                      mov lr, pc
00313b60  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00313b64  74 30 9f e5                                      ldr r3, [pc, #0x74]
00313b68  04 00 50 e3                                      cmp r0, #4
00313b6c  03 30 8f e0                                      add r3, pc, r3
00313b70  0a 00 00 0a                                      beq #0x313ba0
00313b74  68 20 9f e5                                      ldr r2, [pc, #0x68]
00313b78  02 20 93 e7                                      ldr r2, [r3, r2]
00313b7c  00 20 92 e5                                      ldr r2, [r2]
00313b80  02 00 52 e3                                      cmp r2, #2
00313b84  00 30 a0 03                                      moveq r3, #0
00313b88  00 30 83 05                                      streq r3, [r3]
00313b8c  01 00 00 0a                                      beq #0x313b98
00313b90  01 00 52 e3                                      cmp r2, #1
00313b94  04 00 00 0a                                      beq #0x313bac
00313b98  0c d0 8d e2                                      add sp, sp, #0xc
00313b9c  00 80 bd e8                                      ldm sp!, {pc}
00313ba0  00 00 51 e3                                      cmp r1, #0
00313ba4  fb ff ff 0a                                      beq #0x313b98
00313ba8  f1 ff ff ea                                      b #0x313b74
00313bac  34 00 9f e5                                      ldr r0, [pc, #0x34]
00313bb0  34 10 9f e5                                      ldr r1, [pc, #0x34]
00313bb4  34 20 9f e5                                      ldr r2, [pc, #0x34]
00313bb8  00 00 93 e7                                      ldr r0, [r3, r0]
00313bbc  30 30 9f e5                                      ldr r3, [pc, #0x30]
00313bc0  45 c0 a0 e3                                      mov ip, #0x45
00313bc4  01 10 8f e0                                      add r1, pc, r1
00313bc8  02 20 8f e0                                      add r2, pc, r2
00313bcc  03 30 8f e0                                      add r3, pc, r3
00313bd0  a8 00 80 e2                                      add r0, r0, #0xa8
00313bd4  00 c0 8d e5                                      str ip, [sp]
00313bd8  09 e9 ff eb                                      bl #0x30e004
00313bdc  ed ff ff ea                                      b #0x313b98
; mapping-symbol data/literal pool
00313be0  24 0f 68 00 c0 39 00 00 c0 19 00 00 14 a8 5a 00  .byte 0x24, 0x0f, 0x68, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x14, 0xa8, 0x5a, 0x00
00313bf0  38 a9 5a 00 4c a9 5a 00                          .byte 0x38, 0xa9, 0x5a, 0x00, 0x4c, 0xa9, 0x5a, 0x00

; FUNCTION 0x0033e040, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsIbEEvRT_
; demangled: void IStreamBase::readAs<bool>(bool&)
; decoder-mode: arm
0033e040  04 e0 2d e5                                      str lr, [sp, #-4]!
0033e044  00 30 a0 e3                                      mov r3, #0
0033e048  0c d0 4d e2                                      sub sp, sp, #0xc
0033e04c  00 c0 90 e5                                      ldr ip, [r0]
0033e050  01 20 a0 e3                                      mov r2, #1
0033e054  0f e0 a0 e1                                      mov lr, pc
0033e058  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0033e05c  74 30 9f e5                                      ldr r3, [pc, #0x74]
0033e060  01 00 50 e3                                      cmp r0, #1
0033e064  03 30 8f e0                                      add r3, pc, r3
0033e068  0a 00 00 0a                                      beq #0x33e098
0033e06c  68 20 9f e5                                      ldr r2, [pc, #0x68]
0033e070  02 20 93 e7                                      ldr r2, [r3, r2]
0033e074  00 20 92 e5                                      ldr r2, [r2]
0033e078  02 00 52 e3                                      cmp r2, #2
0033e07c  00 30 a0 03                                      moveq r3, #0
0033e080  00 30 83 05                                      streq r3, [r3]
0033e084  01 00 00 0a                                      beq #0x33e090
0033e088  01 00 52 e3                                      cmp r2, #1
0033e08c  04 00 00 0a                                      beq #0x33e0a4
0033e090  0c d0 8d e2                                      add sp, sp, #0xc
0033e094  00 80 bd e8                                      ldm sp!, {pc}
0033e098  00 00 51 e3                                      cmp r1, #0
0033e09c  fb ff ff 0a                                      beq #0x33e090
0033e0a0  f1 ff ff ea                                      b #0x33e06c
0033e0a4  34 00 9f e5                                      ldr r0, [pc, #0x34]
0033e0a8  34 10 9f e5                                      ldr r1, [pc, #0x34]
0033e0ac  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033e0b0  00 00 93 e7                                      ldr r0, [r3, r0]
0033e0b4  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033e0b8  45 c0 a0 e3                                      mov ip, #0x45
0033e0bc  01 10 8f e0                                      add r1, pc, r1
0033e0c0  02 20 8f e0                                      add r2, pc, r2
0033e0c4  03 30 8f e0                                      add r3, pc, r3
0033e0c8  a8 00 80 e2                                      add r0, r0, #0xa8
0033e0cc  00 c0 8d e5                                      str ip, [sp]
0033e0d0  cb 3f ff eb                                      bl #0x30e004
0033e0d4  ed ff ff ea                                      b #0x33e090
; mapping-symbol data/literal pool
0033e0d8  2c 6a 65 00 c0 39 00 00 c0 19 00 00 1c 03 58 00  .byte 0x2c, 0x6a, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x1c, 0x03, 0x58, 0x00
0033e0e8  40 04 58 00 54 04 58 00                          .byte 0x40, 0x04, 0x58, 0x00, 0x54, 0x04, 0x58, 0x00

; FUNCTION 0x0033e138, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsIbEEvRKT_
; demangled: void IStreamBase::writeAs<bool>(bool const&)
; decoder-mode: arm
0033e138  04 e0 2d e5                                      str lr, [sp, #-4]!
0033e13c  00 30 a0 e3                                      mov r3, #0
0033e140  0c d0 4d e2                                      sub sp, sp, #0xc
0033e144  00 c0 90 e5                                      ldr ip, [r0]
0033e148  01 20 a0 e3                                      mov r2, #1
0033e14c  0f e0 a0 e1                                      mov lr, pc
0033e150  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0033e154  74 30 9f e5                                      ldr r3, [pc, #0x74]
0033e158  01 00 50 e3                                      cmp r0, #1
0033e15c  03 30 8f e0                                      add r3, pc, r3
0033e160  0a 00 00 0a                                      beq #0x33e190
0033e164  68 20 9f e5                                      ldr r2, [pc, #0x68]
0033e168  02 20 93 e7                                      ldr r2, [r3, r2]
0033e16c  00 20 92 e5                                      ldr r2, [r2]
0033e170  02 00 52 e3                                      cmp r2, #2
0033e174  00 30 a0 03                                      moveq r3, #0
0033e178  00 30 83 05                                      streq r3, [r3]
0033e17c  01 00 00 0a                                      beq #0x33e188
0033e180  01 00 52 e3                                      cmp r2, #1
0033e184  04 00 00 0a                                      beq #0x33e19c
0033e188  0c d0 8d e2                                      add sp, sp, #0xc
0033e18c  00 80 bd e8                                      ldm sp!, {pc}
0033e190  00 00 51 e3                                      cmp r1, #0
0033e194  fb ff ff 0a                                      beq #0x33e188
0033e198  f1 ff ff ea                                      b #0x33e164
0033e19c  34 00 9f e5                                      ldr r0, [pc, #0x34]
0033e1a0  34 10 9f e5                                      ldr r1, [pc, #0x34]
0033e1a4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033e1a8  00 00 93 e7                                      ldr r0, [r3, r0]
0033e1ac  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033e1b0  4d c0 a0 e3                                      mov ip, #0x4d
0033e1b4  01 10 8f e0                                      add r1, pc, r1
0033e1b8  02 20 8f e0                                      add r2, pc, r2
0033e1bc  03 30 8f e0                                      add r3, pc, r3
0033e1c0  a8 00 80 e2                                      add r0, r0, #0xa8
0033e1c4  00 c0 8d e5                                      str ip, [sp]
0033e1c8  8d 3f ff eb                                      bl #0x30e004
0033e1cc  ed ff ff ea                                      b #0x33e188
; mapping-symbol data/literal pool
0033e1d0  34 69 65 00 c0 39 00 00 c0 19 00 00 24 02 58 00  .byte 0x34, 0x69, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x24, 0x02, 0x58, 0x00
0033e1e0  e8 02 58 00 5c 03 58 00                          .byte 0xe8, 0x02, 0x58, 0x00, 0x5c, 0x03, 0x58, 0x00

; FUNCTION 0x0037fb38, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsISt6bitsetILj128EEEEvRKT_
; demangled: void IStreamBase::writeAs<std::bitset<128u> >(std::bitset<128u> const&)
; decoder-mode: arm
0037fb38  04 e0 2d e5                                      str lr, [sp, #-4]!
0037fb3c  00 30 a0 e3                                      mov r3, #0
0037fb40  0c d0 4d e2                                      sub sp, sp, #0xc
0037fb44  00 c0 90 e5                                      ldr ip, [r0]
0037fb48  10 20 a0 e3                                      mov r2, #0x10
0037fb4c  0f e0 a0 e1                                      mov lr, pc
0037fb50  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0037fb54  74 30 9f e5                                      ldr r3, [pc, #0x74]
0037fb58  10 00 50 e3                                      cmp r0, #0x10
0037fb5c  03 30 8f e0                                      add r3, pc, r3
0037fb60  0a 00 00 0a                                      beq #0x37fb90
0037fb64  68 20 9f e5                                      ldr r2, [pc, #0x68]
0037fb68  02 20 93 e7                                      ldr r2, [r3, r2]
0037fb6c  00 20 92 e5                                      ldr r2, [r2]
0037fb70  02 00 52 e3                                      cmp r2, #2
0037fb74  00 30 a0 03                                      moveq r3, #0
0037fb78  00 30 83 05                                      streq r3, [r3]
0037fb7c  01 00 00 0a                                      beq #0x37fb88
0037fb80  01 00 52 e3                                      cmp r2, #1
0037fb84  04 00 00 0a                                      beq #0x37fb9c
0037fb88  0c d0 8d e2                                      add sp, sp, #0xc
0037fb8c  00 80 bd e8                                      ldm sp!, {pc}
0037fb90  00 00 51 e3                                      cmp r1, #0
0037fb94  fb ff ff 0a                                      beq #0x37fb88
0037fb98  f1 ff ff ea                                      b #0x37fb64
0037fb9c  34 00 9f e5                                      ldr r0, [pc, #0x34]
0037fba0  34 10 9f e5                                      ldr r1, [pc, #0x34]
0037fba4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0037fba8  00 00 93 e7                                      ldr r0, [r3, r0]
0037fbac  30 30 9f e5                                      ldr r3, [pc, #0x30]
0037fbb0  4d c0 a0 e3                                      mov ip, #0x4d
0037fbb4  01 10 8f e0                                      add r1, pc, r1
0037fbb8  02 20 8f e0                                      add r2, pc, r2
0037fbbc  03 30 8f e0                                      add r3, pc, r3
0037fbc0  a8 00 80 e2                                      add r0, r0, #0xa8
0037fbc4  00 c0 8d e5                                      str ip, [sp]
0037fbc8  0d 39 fe eb                                      bl #0x30e004
0037fbcc  ed ff ff ea                                      b #0x37fb88
; mapping-symbol data/literal pool
0037fbd0  34 4f 61 00 c0 39 00 00 c0 19 00 00 24 e8 53 00  .byte 0x34, 0x4f, 0x61, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x24, 0xe8, 0x53, 0x00
0037fbe0  e8 e8 53 00 5c e9 53 00                          .byte 0xe8, 0xe8, 0x53, 0x00, 0x5c, 0xe9, 0x53, 0x00

; FUNCTION 0x0037fbe8, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsISt6bitsetILj128EEEEvRT_
; demangled: void IStreamBase::readAs<std::bitset<128u> >(std::bitset<128u>&)
; decoder-mode: arm
0037fbe8  04 e0 2d e5                                      str lr, [sp, #-4]!
0037fbec  00 30 a0 e3                                      mov r3, #0
0037fbf0  0c d0 4d e2                                      sub sp, sp, #0xc
0037fbf4  00 c0 90 e5                                      ldr ip, [r0]
0037fbf8  10 20 a0 e3                                      mov r2, #0x10
0037fbfc  0f e0 a0 e1                                      mov lr, pc
0037fc00  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0037fc04  74 30 9f e5                                      ldr r3, [pc, #0x74]
0037fc08  10 00 50 e3                                      cmp r0, #0x10
0037fc0c  03 30 8f e0                                      add r3, pc, r3
0037fc10  0a 00 00 0a                                      beq #0x37fc40
0037fc14  68 20 9f e5                                      ldr r2, [pc, #0x68]
0037fc18  02 20 93 e7                                      ldr r2, [r3, r2]
0037fc1c  00 20 92 e5                                      ldr r2, [r2]
0037fc20  02 00 52 e3                                      cmp r2, #2
0037fc24  00 30 a0 03                                      moveq r3, #0
0037fc28  00 30 83 05                                      streq r3, [r3]
0037fc2c  01 00 00 0a                                      beq #0x37fc38
0037fc30  01 00 52 e3                                      cmp r2, #1
0037fc34  04 00 00 0a                                      beq #0x37fc4c
0037fc38  0c d0 8d e2                                      add sp, sp, #0xc
0037fc3c  00 80 bd e8                                      ldm sp!, {pc}
0037fc40  00 00 51 e3                                      cmp r1, #0
0037fc44  fb ff ff 0a                                      beq #0x37fc38
0037fc48  f1 ff ff ea                                      b #0x37fc14
0037fc4c  34 00 9f e5                                      ldr r0, [pc, #0x34]
0037fc50  34 10 9f e5                                      ldr r1, [pc, #0x34]
0037fc54  34 20 9f e5                                      ldr r2, [pc, #0x34]
0037fc58  00 00 93 e7                                      ldr r0, [r3, r0]
0037fc5c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0037fc60  45 c0 a0 e3                                      mov ip, #0x45
0037fc64  01 10 8f e0                                      add r1, pc, r1
0037fc68  02 20 8f e0                                      add r2, pc, r2
0037fc6c  03 30 8f e0                                      add r3, pc, r3
0037fc70  a8 00 80 e2                                      add r0, r0, #0xa8
0037fc74  00 c0 8d e5                                      str ip, [sp]
0037fc78  e1 38 fe eb                                      bl #0x30e004
0037fc7c  ed ff ff ea                                      b #0x37fc38
; mapping-symbol data/literal pool
0037fc80  84 4e 61 00 c0 39 00 00 c0 19 00 00 74 e7 53 00  .byte 0x84, 0x4e, 0x61, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x74, 0xe7, 0x53, 0x00
0037fc90  98 e8 53 00 ac e8 53 00                          .byte 0x98, 0xe8, 0x53, 0x00, 0xac, 0xe8, 0x53, 0x00

; FUNCTION 0x0038b758, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsIiEEvRT_
; demangled: void IStreamBase::readAs<int>(int&)
; decoder-mode: arm
0038b758  04 e0 2d e5                                      str lr, [sp, #-4]!
0038b75c  00 30 a0 e3                                      mov r3, #0
0038b760  0c d0 4d e2                                      sub sp, sp, #0xc
0038b764  00 c0 90 e5                                      ldr ip, [r0]
0038b768  04 20 a0 e3                                      mov r2, #4
0038b76c  0f e0 a0 e1                                      mov lr, pc
0038b770  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0038b774  74 30 9f e5                                      ldr r3, [pc, #0x74]
0038b778  04 00 50 e3                                      cmp r0, #4
0038b77c  03 30 8f e0                                      add r3, pc, r3
0038b780  0a 00 00 0a                                      beq #0x38b7b0
0038b784  68 20 9f e5                                      ldr r2, [pc, #0x68]
0038b788  02 20 93 e7                                      ldr r2, [r3, r2]
0038b78c  00 20 92 e5                                      ldr r2, [r2]
0038b790  02 00 52 e3                                      cmp r2, #2
0038b794  00 30 a0 03                                      moveq r3, #0
0038b798  00 30 83 05                                      streq r3, [r3]
0038b79c  01 00 00 0a                                      beq #0x38b7a8
0038b7a0  01 00 52 e3                                      cmp r2, #1
0038b7a4  04 00 00 0a                                      beq #0x38b7bc
0038b7a8  0c d0 8d e2                                      add sp, sp, #0xc
0038b7ac  00 80 bd e8                                      ldm sp!, {pc}
0038b7b0  00 00 51 e3                                      cmp r1, #0
0038b7b4  fb ff ff 0a                                      beq #0x38b7a8
0038b7b8  f1 ff ff ea                                      b #0x38b784
0038b7bc  34 00 9f e5                                      ldr r0, [pc, #0x34]
0038b7c0  34 10 9f e5                                      ldr r1, [pc, #0x34]
0038b7c4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0038b7c8  00 00 93 e7                                      ldr r0, [r3, r0]
0038b7cc  30 30 9f e5                                      ldr r3, [pc, #0x30]
0038b7d0  45 c0 a0 e3                                      mov ip, #0x45
0038b7d4  01 10 8f e0                                      add r1, pc, r1
0038b7d8  02 20 8f e0                                      add r2, pc, r2
0038b7dc  03 30 8f e0                                      add r3, pc, r3
0038b7e0  a8 00 80 e2                                      add r0, r0, #0xa8
0038b7e4  00 c0 8d e5                                      str ip, [sp]
0038b7e8  05 0a fe eb                                      bl #0x30e004
0038b7ec  ed ff ff ea                                      b #0x38b7a8
; mapping-symbol data/literal pool
0038b7f0  14 93 60 00 c0 39 00 00 c0 19 00 00 04 2c 53 00  .byte 0x14, 0x93, 0x60, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x04, 0x2c, 0x53, 0x00
0038b800  28 2d 53 00 3c 2d 53 00                          .byte 0x28, 0x2d, 0x53, 0x00, 0x3c, 0x2d, 0x53, 0x00

; FUNCTION 0x0038b808, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsIiEEvRKT_
; demangled: void IStreamBase::writeAs<int>(int const&)
; decoder-mode: arm
0038b808  04 e0 2d e5                                      str lr, [sp, #-4]!
0038b80c  00 30 a0 e3                                      mov r3, #0
0038b810  0c d0 4d e2                                      sub sp, sp, #0xc
0038b814  00 c0 90 e5                                      ldr ip, [r0]
0038b818  04 20 a0 e3                                      mov r2, #4
0038b81c  0f e0 a0 e1                                      mov lr, pc
0038b820  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0038b824  74 30 9f e5                                      ldr r3, [pc, #0x74]
0038b828  04 00 50 e3                                      cmp r0, #4
0038b82c  03 30 8f e0                                      add r3, pc, r3
0038b830  0a 00 00 0a                                      beq #0x38b860
0038b834  68 20 9f e5                                      ldr r2, [pc, #0x68]
0038b838  02 20 93 e7                                      ldr r2, [r3, r2]
0038b83c  00 20 92 e5                                      ldr r2, [r2]
0038b840  02 00 52 e3                                      cmp r2, #2
0038b844  00 30 a0 03                                      moveq r3, #0
0038b848  00 30 83 05                                      streq r3, [r3]
0038b84c  01 00 00 0a                                      beq #0x38b858
0038b850  01 00 52 e3                                      cmp r2, #1
0038b854  04 00 00 0a                                      beq #0x38b86c
0038b858  0c d0 8d e2                                      add sp, sp, #0xc
0038b85c  00 80 bd e8                                      ldm sp!, {pc}
0038b860  00 00 51 e3                                      cmp r1, #0
0038b864  fb ff ff 0a                                      beq #0x38b858
0038b868  f1 ff ff ea                                      b #0x38b834
0038b86c  34 00 9f e5                                      ldr r0, [pc, #0x34]
0038b870  34 10 9f e5                                      ldr r1, [pc, #0x34]
0038b874  34 20 9f e5                                      ldr r2, [pc, #0x34]
0038b878  00 00 93 e7                                      ldr r0, [r3, r0]
0038b87c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0038b880  4d c0 a0 e3                                      mov ip, #0x4d
0038b884  01 10 8f e0                                      add r1, pc, r1
0038b888  02 20 8f e0                                      add r2, pc, r2
0038b88c  03 30 8f e0                                      add r3, pc, r3
0038b890  a8 00 80 e2                                      add r0, r0, #0xa8
0038b894  00 c0 8d e5                                      str ip, [sp]
0038b898  d9 09 fe eb                                      bl #0x30e004
0038b89c  ed ff ff ea                                      b #0x38b858
; mapping-symbol data/literal pool
0038b8a0  64 92 60 00 c0 39 00 00 c0 19 00 00 54 2b 53 00  .byte 0x64, 0x92, 0x60, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x54, 0x2b, 0x53, 0x00
0038b8b0  18 2c 53 00 8c 2c 53 00                          .byte 0x18, 0x2c, 0x53, 0x00, 0x8c, 0x2c, 0x53, 0x00

; FUNCTION 0x0039f638, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsIhEEvRT_
; demangled: void IStreamBase::readAs<unsigned char>(unsigned char&)
; decoder-mode: arm
0039f638  04 e0 2d e5                                      str lr, [sp, #-4]!
0039f63c  00 30 a0 e3                                      mov r3, #0
0039f640  0c d0 4d e2                                      sub sp, sp, #0xc
0039f644  00 c0 90 e5                                      ldr ip, [r0]
0039f648  01 20 a0 e3                                      mov r2, #1
0039f64c  0f e0 a0 e1                                      mov lr, pc
0039f650  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0039f654  74 30 9f e5                                      ldr r3, [pc, #0x74]
0039f658  01 00 50 e3                                      cmp r0, #1
0039f65c  03 30 8f e0                                      add r3, pc, r3
0039f660  0a 00 00 0a                                      beq #0x39f690
0039f664  68 20 9f e5                                      ldr r2, [pc, #0x68]
0039f668  02 20 93 e7                                      ldr r2, [r3, r2]
0039f66c  00 20 92 e5                                      ldr r2, [r2]
0039f670  02 00 52 e3                                      cmp r2, #2
0039f674  00 30 a0 03                                      moveq r3, #0
0039f678  00 30 83 05                                      streq r3, [r3]
0039f67c  01 00 00 0a                                      beq #0x39f688
0039f680  01 00 52 e3                                      cmp r2, #1
0039f684  04 00 00 0a                                      beq #0x39f69c
0039f688  0c d0 8d e2                                      add sp, sp, #0xc
0039f68c  00 80 bd e8                                      ldm sp!, {pc}
0039f690  00 00 51 e3                                      cmp r1, #0
0039f694  fb ff ff 0a                                      beq #0x39f688
0039f698  f1 ff ff ea                                      b #0x39f664
0039f69c  34 00 9f e5                                      ldr r0, [pc, #0x34]
0039f6a0  34 10 9f e5                                      ldr r1, [pc, #0x34]
0039f6a4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0039f6a8  00 00 93 e7                                      ldr r0, [r3, r0]
0039f6ac  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039f6b0  45 c0 a0 e3                                      mov ip, #0x45
0039f6b4  01 10 8f e0                                      add r1, pc, r1
0039f6b8  02 20 8f e0                                      add r2, pc, r2
0039f6bc  03 30 8f e0                                      add r3, pc, r3
0039f6c0  a8 00 80 e2                                      add r0, r0, #0xa8
0039f6c4  00 c0 8d e5                                      str ip, [sp]
0039f6c8  4d ba fd eb                                      bl #0x30e004
0039f6cc  ed ff ff ea                                      b #0x39f688
; mapping-symbol data/literal pool
0039f6d0  34 54 5f 00 c0 39 00 00 c0 19 00 00 24 ed 51 00  .byte 0x34, 0x54, 0x5f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x24, 0xed, 0x51, 0x00
0039f6e0  48 ee 51 00 5c ee 51 00                          .byte 0x48, 0xee, 0x51, 0x00, 0x5c, 0xee, 0x51, 0x00

; FUNCTION 0x0039f828, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsIhEEvRKT_
; demangled: void IStreamBase::writeAs<unsigned char>(unsigned char const&)
; decoder-mode: arm
0039f828  04 e0 2d e5                                      str lr, [sp, #-4]!
0039f82c  00 30 a0 e3                                      mov r3, #0
0039f830  0c d0 4d e2                                      sub sp, sp, #0xc
0039f834  00 c0 90 e5                                      ldr ip, [r0]
0039f838  01 20 a0 e3                                      mov r2, #1
0039f83c  0f e0 a0 e1                                      mov lr, pc
0039f840  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0039f844  74 30 9f e5                                      ldr r3, [pc, #0x74]
0039f848  01 00 50 e3                                      cmp r0, #1
0039f84c  03 30 8f e0                                      add r3, pc, r3
0039f850  0a 00 00 0a                                      beq #0x39f880
0039f854  68 20 9f e5                                      ldr r2, [pc, #0x68]
0039f858  02 20 93 e7                                      ldr r2, [r3, r2]
0039f85c  00 20 92 e5                                      ldr r2, [r2]
0039f860  02 00 52 e3                                      cmp r2, #2
0039f864  00 30 a0 03                                      moveq r3, #0
0039f868  00 30 83 05                                      streq r3, [r3]
0039f86c  01 00 00 0a                                      beq #0x39f878
0039f870  01 00 52 e3                                      cmp r2, #1
0039f874  04 00 00 0a                                      beq #0x39f88c
0039f878  0c d0 8d e2                                      add sp, sp, #0xc
0039f87c  00 80 bd e8                                      ldm sp!, {pc}
0039f880  00 00 51 e3                                      cmp r1, #0
0039f884  fb ff ff 0a                                      beq #0x39f878
0039f888  f1 ff ff ea                                      b #0x39f854
0039f88c  34 00 9f e5                                      ldr r0, [pc, #0x34]
0039f890  34 10 9f e5                                      ldr r1, [pc, #0x34]
0039f894  34 20 9f e5                                      ldr r2, [pc, #0x34]
0039f898  00 00 93 e7                                      ldr r0, [r3, r0]
0039f89c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039f8a0  4d c0 a0 e3                                      mov ip, #0x4d
0039f8a4  01 10 8f e0                                      add r1, pc, r1
0039f8a8  02 20 8f e0                                      add r2, pc, r2
0039f8ac  03 30 8f e0                                      add r3, pc, r3
0039f8b0  a8 00 80 e2                                      add r0, r0, #0xa8
0039f8b4  00 c0 8d e5                                      str ip, [sp]
0039f8b8  d1 b9 fd eb                                      bl #0x30e004
0039f8bc  ed ff ff ea                                      b #0x39f878
; mapping-symbol data/literal pool
0039f8c0  44 52 5f 00 c0 39 00 00 c0 19 00 00 34 eb 51 00  .byte 0x44, 0x52, 0x5f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x34, 0xeb, 0x51, 0x00
0039f8d0  f8 eb 51 00 6c ec 51 00                          .byte 0xf8, 0xeb, 0x51, 0x00, 0x6c, 0xec, 0x51, 0x00

; FUNCTION 0x003a3970, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsIN7Structs19CharacterPropertiesEEEvRT_
; demangled: void IStreamBase::readAs<Structs::CharacterProperties>(Structs::CharacterProperties&)
; decoder-mode: arm
003a3970  04 e0 2d e5                                      str lr, [sp, #-4]!
003a3974  00 30 a0 e3                                      mov r3, #0
003a3978  0c d0 4d e2                                      sub sp, sp, #0xc
003a397c  00 c0 90 e5                                      ldr ip, [r0]
003a3980  e1 2f a0 e3                                      mov r2, #0x384
003a3984  0f e0 a0 e1                                      mov lr, pc
003a3988  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003a398c  74 30 9f e5                                      ldr r3, [pc, #0x74]
003a3990  e1 0f 50 e3                                      cmp r0, #0x384
003a3994  03 30 8f e0                                      add r3, pc, r3
003a3998  0a 00 00 0a                                      beq #0x3a39c8
003a399c  68 20 9f e5                                      ldr r2, [pc, #0x68]
003a39a0  02 20 93 e7                                      ldr r2, [r3, r2]
003a39a4  00 20 92 e5                                      ldr r2, [r2]
003a39a8  02 00 52 e3                                      cmp r2, #2
003a39ac  00 30 a0 03                                      moveq r3, #0
003a39b0  00 30 83 05                                      streq r3, [r3]
003a39b4  01 00 00 0a                                      beq #0x3a39c0
003a39b8  01 00 52 e3                                      cmp r2, #1
003a39bc  04 00 00 0a                                      beq #0x3a39d4
003a39c0  0c d0 8d e2                                      add sp, sp, #0xc
003a39c4  00 80 bd e8                                      ldm sp!, {pc}
003a39c8  00 00 51 e3                                      cmp r1, #0
003a39cc  fb ff ff 0a                                      beq #0x3a39c0
003a39d0  f1 ff ff ea                                      b #0x3a399c
003a39d4  34 00 9f e5                                      ldr r0, [pc, #0x34]
003a39d8  34 10 9f e5                                      ldr r1, [pc, #0x34]
003a39dc  34 20 9f e5                                      ldr r2, [pc, #0x34]
003a39e0  00 00 93 e7                                      ldr r0, [r3, r0]
003a39e4  30 30 9f e5                                      ldr r3, [pc, #0x30]
003a39e8  45 c0 a0 e3                                      mov ip, #0x45
003a39ec  01 10 8f e0                                      add r1, pc, r1
003a39f0  02 20 8f e0                                      add r2, pc, r2
003a39f4  03 30 8f e0                                      add r3, pc, r3
003a39f8  a8 00 80 e2                                      add r0, r0, #0xa8
003a39fc  00 c0 8d e5                                      str ip, [sp]
003a3a00  7f a9 fd eb                                      bl #0x30e004
003a3a04  ed ff ff ea                                      b #0x3a39c0
; mapping-symbol data/literal pool
003a3a08  fc 10 5f 00 c0 39 00 00 c0 19 00 00 ec a9 51 00  .byte 0xfc, 0x10, 0x5f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xec, 0xa9, 0x51, 0x00
003a3a18  10 ab 51 00 24 ab 51 00                          .byte 0x10, 0xab, 0x51, 0x00, 0x24, 0xab, 0x51, 0x00

; FUNCTION 0x003a3a20, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsI7Point3DIfEEEvRT_
; demangled: void IStreamBase::readAs<Point3D<float> >(Point3D<float>&)
; decoder-mode: arm
003a3a20  04 e0 2d e5                                      str lr, [sp, #-4]!
003a3a24  00 30 a0 e3                                      mov r3, #0
003a3a28  0c d0 4d e2                                      sub sp, sp, #0xc
003a3a2c  00 c0 90 e5                                      ldr ip, [r0]
003a3a30  0c 20 a0 e3                                      mov r2, #0xc
003a3a34  0f e0 a0 e1                                      mov lr, pc
003a3a38  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003a3a3c  74 30 9f e5                                      ldr r3, [pc, #0x74]
003a3a40  0c 00 50 e3                                      cmp r0, #0xc
003a3a44  03 30 8f e0                                      add r3, pc, r3
003a3a48  0a 00 00 0a                                      beq #0x3a3a78
003a3a4c  68 20 9f e5                                      ldr r2, [pc, #0x68]
003a3a50  02 20 93 e7                                      ldr r2, [r3, r2]
003a3a54  00 20 92 e5                                      ldr r2, [r2]
003a3a58  02 00 52 e3                                      cmp r2, #2
003a3a5c  00 30 a0 03                                      moveq r3, #0
003a3a60  00 30 83 05                                      streq r3, [r3]
003a3a64  01 00 00 0a                                      beq #0x3a3a70
003a3a68  01 00 52 e3                                      cmp r2, #1
003a3a6c  04 00 00 0a                                      beq #0x3a3a84
003a3a70  0c d0 8d e2                                      add sp, sp, #0xc
003a3a74  00 80 bd e8                                      ldm sp!, {pc}
003a3a78  00 00 51 e3                                      cmp r1, #0
003a3a7c  fb ff ff 0a                                      beq #0x3a3a70
003a3a80  f1 ff ff ea                                      b #0x3a3a4c
003a3a84  34 00 9f e5                                      ldr r0, [pc, #0x34]
003a3a88  34 10 9f e5                                      ldr r1, [pc, #0x34]
003a3a8c  34 20 9f e5                                      ldr r2, [pc, #0x34]
003a3a90  00 00 93 e7                                      ldr r0, [r3, r0]
003a3a94  30 30 9f e5                                      ldr r3, [pc, #0x30]
003a3a98  45 c0 a0 e3                                      mov ip, #0x45
003a3a9c  01 10 8f e0                                      add r1, pc, r1
003a3aa0  02 20 8f e0                                      add r2, pc, r2
003a3aa4  03 30 8f e0                                      add r3, pc, r3
003a3aa8  a8 00 80 e2                                      add r0, r0, #0xa8
003a3aac  00 c0 8d e5                                      str ip, [sp]
003a3ab0  53 a9 fd eb                                      bl #0x30e004
003a3ab4  ed ff ff ea                                      b #0x3a3a70
; mapping-symbol data/literal pool
003a3ab8  4c 10 5f 00 c0 39 00 00 c0 19 00 00 3c a9 51 00  .byte 0x4c, 0x10, 0x5f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x3c, 0xa9, 0x51, 0x00
003a3ac8  60 aa 51 00 74 aa 51 00                          .byte 0x60, 0xaa, 0x51, 0x00, 0x74, 0xaa, 0x51, 0x00

; FUNCTION 0x003a3ad0, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsIN7Structs19CharacterPropertiesEEEvRKT_
; demangled: void IStreamBase::writeAs<Structs::CharacterProperties>(Structs::CharacterProperties const&)
; decoder-mode: arm
003a3ad0  04 e0 2d e5                                      str lr, [sp, #-4]!
003a3ad4  00 30 a0 e3                                      mov r3, #0
003a3ad8  0c d0 4d e2                                      sub sp, sp, #0xc
003a3adc  00 c0 90 e5                                      ldr ip, [r0]
003a3ae0  e1 2f a0 e3                                      mov r2, #0x384
003a3ae4  0f e0 a0 e1                                      mov lr, pc
003a3ae8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003a3aec  74 30 9f e5                                      ldr r3, [pc, #0x74]
003a3af0  e1 0f 50 e3                                      cmp r0, #0x384
003a3af4  03 30 8f e0                                      add r3, pc, r3
003a3af8  0a 00 00 0a                                      beq #0x3a3b28
003a3afc  68 20 9f e5                                      ldr r2, [pc, #0x68]
003a3b00  02 20 93 e7                                      ldr r2, [r3, r2]
003a3b04  00 20 92 e5                                      ldr r2, [r2]
003a3b08  02 00 52 e3                                      cmp r2, #2
003a3b0c  00 30 a0 03                                      moveq r3, #0
003a3b10  00 30 83 05                                      streq r3, [r3]
003a3b14  01 00 00 0a                                      beq #0x3a3b20
003a3b18  01 00 52 e3                                      cmp r2, #1
003a3b1c  04 00 00 0a                                      beq #0x3a3b34
003a3b20  0c d0 8d e2                                      add sp, sp, #0xc
003a3b24  00 80 bd e8                                      ldm sp!, {pc}
003a3b28  00 00 51 e3                                      cmp r1, #0
003a3b2c  fb ff ff 0a                                      beq #0x3a3b20
003a3b30  f1 ff ff ea                                      b #0x3a3afc
003a3b34  34 00 9f e5                                      ldr r0, [pc, #0x34]
003a3b38  34 10 9f e5                                      ldr r1, [pc, #0x34]
003a3b3c  34 20 9f e5                                      ldr r2, [pc, #0x34]
003a3b40  00 00 93 e7                                      ldr r0, [r3, r0]
003a3b44  30 30 9f e5                                      ldr r3, [pc, #0x30]
003a3b48  4d c0 a0 e3                                      mov ip, #0x4d
003a3b4c  01 10 8f e0                                      add r1, pc, r1
003a3b50  02 20 8f e0                                      add r2, pc, r2
003a3b54  03 30 8f e0                                      add r3, pc, r3
003a3b58  a8 00 80 e2                                      add r0, r0, #0xa8
003a3b5c  00 c0 8d e5                                      str ip, [sp]
003a3b60  27 a9 fd eb                                      bl #0x30e004
003a3b64  ed ff ff ea                                      b #0x3a3b20
; mapping-symbol data/literal pool
003a3b68  9c 0f 5f 00 c0 39 00 00 c0 19 00 00 8c a8 51 00  .byte 0x9c, 0x0f, 0x5f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x8c, 0xa8, 0x51, 0x00
003a3b78  50 a9 51 00 c4 a9 51 00                          .byte 0x50, 0xa9, 0x51, 0x00, 0xc4, 0xa9, 0x51, 0x00

; FUNCTION 0x003a3b80, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsI7Point3DIfEEEvRKT_
; demangled: void IStreamBase::writeAs<Point3D<float> >(Point3D<float> const&)
; decoder-mode: arm
003a3b80  04 e0 2d e5                                      str lr, [sp, #-4]!
003a3b84  00 30 a0 e3                                      mov r3, #0
003a3b88  0c d0 4d e2                                      sub sp, sp, #0xc
003a3b8c  00 c0 90 e5                                      ldr ip, [r0]
003a3b90  0c 20 a0 e3                                      mov r2, #0xc
003a3b94  0f e0 a0 e1                                      mov lr, pc
003a3b98  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003a3b9c  74 30 9f e5                                      ldr r3, [pc, #0x74]
003a3ba0  0c 00 50 e3                                      cmp r0, #0xc
003a3ba4  03 30 8f e0                                      add r3, pc, r3
003a3ba8  0a 00 00 0a                                      beq #0x3a3bd8
003a3bac  68 20 9f e5                                      ldr r2, [pc, #0x68]
003a3bb0  02 20 93 e7                                      ldr r2, [r3, r2]
003a3bb4  00 20 92 e5                                      ldr r2, [r2]
003a3bb8  02 00 52 e3                                      cmp r2, #2
003a3bbc  00 30 a0 03                                      moveq r3, #0
003a3bc0  00 30 83 05                                      streq r3, [r3]
003a3bc4  01 00 00 0a                                      beq #0x3a3bd0
003a3bc8  01 00 52 e3                                      cmp r2, #1
003a3bcc  04 00 00 0a                                      beq #0x3a3be4
003a3bd0  0c d0 8d e2                                      add sp, sp, #0xc
003a3bd4  00 80 bd e8                                      ldm sp!, {pc}
003a3bd8  00 00 51 e3                                      cmp r1, #0
003a3bdc  fb ff ff 0a                                      beq #0x3a3bd0
003a3be0  f1 ff ff ea                                      b #0x3a3bac
003a3be4  34 00 9f e5                                      ldr r0, [pc, #0x34]
003a3be8  34 10 9f e5                                      ldr r1, [pc, #0x34]
003a3bec  34 20 9f e5                                      ldr r2, [pc, #0x34]
003a3bf0  00 00 93 e7                                      ldr r0, [r3, r0]
003a3bf4  30 30 9f e5                                      ldr r3, [pc, #0x30]
003a3bf8  4d c0 a0 e3                                      mov ip, #0x4d
003a3bfc  01 10 8f e0                                      add r1, pc, r1
003a3c00  02 20 8f e0                                      add r2, pc, r2
003a3c04  03 30 8f e0                                      add r3, pc, r3
003a3c08  a8 00 80 e2                                      add r0, r0, #0xa8
003a3c0c  00 c0 8d e5                                      str ip, [sp]
003a3c10  fb a8 fd eb                                      bl #0x30e004
003a3c14  ed ff ff ea                                      b #0x3a3bd0
; mapping-symbol data/literal pool
003a3c18  ec 0e 5f 00 c0 39 00 00 c0 19 00 00 dc a7 51 00  .byte 0xec, 0x0e, 0x5f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xdc, 0xa7, 0x51, 0x00
003a3c28  a0 a8 51 00 14 a9 51 00                          .byte 0xa0, 0xa8, 0x51, 0x00, 0x14, 0xa9, 0x51, 0x00

; FUNCTION 0x003e79b4, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsIN4Door10DoorStatesEEEvRT_
; demangled: void IStreamBase::readAs<Door::DoorStates>(Door::DoorStates&)
; decoder-mode: arm
003e79b4  04 e0 2d e5                                      str lr, [sp, #-4]!
003e79b8  00 30 a0 e3                                      mov r3, #0
003e79bc  0c d0 4d e2                                      sub sp, sp, #0xc
003e79c0  00 c0 90 e5                                      ldr ip, [r0]
003e79c4  04 20 a0 e3                                      mov r2, #4
003e79c8  0f e0 a0 e1                                      mov lr, pc
003e79cc  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003e79d0  74 30 9f e5                                      ldr r3, [pc, #0x74]
003e79d4  04 00 50 e3                                      cmp r0, #4
003e79d8  03 30 8f e0                                      add r3, pc, r3
003e79dc  0a 00 00 0a                                      beq #0x3e7a0c
003e79e0  68 20 9f e5                                      ldr r2, [pc, #0x68]
003e79e4  02 20 93 e7                                      ldr r2, [r3, r2]
003e79e8  00 20 92 e5                                      ldr r2, [r2]
003e79ec  02 00 52 e3                                      cmp r2, #2
003e79f0  00 30 a0 03                                      moveq r3, #0
003e79f4  00 30 83 05                                      streq r3, [r3]
003e79f8  01 00 00 0a                                      beq #0x3e7a04
003e79fc  01 00 52 e3                                      cmp r2, #1
003e7a00  04 00 00 0a                                      beq #0x3e7a18
003e7a04  0c d0 8d e2                                      add sp, sp, #0xc
003e7a08  00 80 bd e8                                      ldm sp!, {pc}
003e7a0c  00 00 51 e3                                      cmp r1, #0
003e7a10  fb ff ff 0a                                      beq #0x3e7a04
003e7a14  f1 ff ff ea                                      b #0x3e79e0
003e7a18  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e7a1c  34 10 9f e5                                      ldr r1, [pc, #0x34]
003e7a20  34 20 9f e5                                      ldr r2, [pc, #0x34]
003e7a24  00 00 93 e7                                      ldr r0, [r3, r0]
003e7a28  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e7a2c  45 c0 a0 e3                                      mov ip, #0x45
003e7a30  01 10 8f e0                                      add r1, pc, r1
003e7a34  02 20 8f e0                                      add r2, pc, r2
003e7a38  03 30 8f e0                                      add r3, pc, r3
003e7a3c  a8 00 80 e2                                      add r0, r0, #0xa8
003e7a40  00 c0 8d e5                                      str ip, [sp]
003e7a44  6e 99 fc eb                                      bl #0x30e004
003e7a48  ed ff ff ea                                      b #0x3e7a04
; mapping-symbol data/literal pool
003e7a4c  b8 d0 5a 00 c0 39 00 00 c0 19 00 00 a8 69 4d 00  .byte 0xb8, 0xd0, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xa8, 0x69, 0x4d, 0x00
003e7a5c  cc 6a 4d 00 e0 6a 4d 00                          .byte 0xcc, 0x6a, 0x4d, 0x00, 0xe0, 0x6a, 0x4d, 0x00

; FUNCTION 0x003e7abc, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsIN4Door10DoorStatesEEEvRKT_
; demangled: void IStreamBase::writeAs<Door::DoorStates>(Door::DoorStates const&)
; decoder-mode: arm
003e7abc  04 e0 2d e5                                      str lr, [sp, #-4]!
003e7ac0  00 30 a0 e3                                      mov r3, #0
003e7ac4  0c d0 4d e2                                      sub sp, sp, #0xc
003e7ac8  00 c0 90 e5                                      ldr ip, [r0]
003e7acc  04 20 a0 e3                                      mov r2, #4
003e7ad0  0f e0 a0 e1                                      mov lr, pc
003e7ad4  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003e7ad8  74 30 9f e5                                      ldr r3, [pc, #0x74]
003e7adc  04 00 50 e3                                      cmp r0, #4
003e7ae0  03 30 8f e0                                      add r3, pc, r3
003e7ae4  0a 00 00 0a                                      beq #0x3e7b14
003e7ae8  68 20 9f e5                                      ldr r2, [pc, #0x68]
003e7aec  02 20 93 e7                                      ldr r2, [r3, r2]
003e7af0  00 20 92 e5                                      ldr r2, [r2]
003e7af4  02 00 52 e3                                      cmp r2, #2
003e7af8  00 30 a0 03                                      moveq r3, #0
003e7afc  00 30 83 05                                      streq r3, [r3]
003e7b00  01 00 00 0a                                      beq #0x3e7b0c
003e7b04  01 00 52 e3                                      cmp r2, #1
003e7b08  04 00 00 0a                                      beq #0x3e7b20
003e7b0c  0c d0 8d e2                                      add sp, sp, #0xc
003e7b10  00 80 bd e8                                      ldm sp!, {pc}
003e7b14  00 00 51 e3                                      cmp r1, #0
003e7b18  fb ff ff 0a                                      beq #0x3e7b0c
003e7b1c  f1 ff ff ea                                      b #0x3e7ae8
003e7b20  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e7b24  34 10 9f e5                                      ldr r1, [pc, #0x34]
003e7b28  34 20 9f e5                                      ldr r2, [pc, #0x34]
003e7b2c  00 00 93 e7                                      ldr r0, [r3, r0]
003e7b30  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e7b34  4d c0 a0 e3                                      mov ip, #0x4d
003e7b38  01 10 8f e0                                      add r1, pc, r1
003e7b3c  02 20 8f e0                                      add r2, pc, r2
003e7b40  03 30 8f e0                                      add r3, pc, r3
003e7b44  a8 00 80 e2                                      add r0, r0, #0xa8
003e7b48  00 c0 8d e5                                      str ip, [sp]
003e7b4c  2c 99 fc eb                                      bl #0x30e004
003e7b50  ed ff ff ea                                      b #0x3e7b0c
; mapping-symbol data/literal pool
003e7b54  b0 cf 5a 00 c0 39 00 00 c0 19 00 00 a0 68 4d 00  .byte 0xb0, 0xcf, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xa0, 0x68, 0x4d, 0x00
003e7b64  64 69 4d 00 d8 69 4d 00                          .byte 0x64, 0x69, 0x4d, 0x00, 0xd8, 0x69, 0x4d, 0x00

; FUNCTION 0x004616c0, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsIyEEvRKT_
; demangled: void IStreamBase::writeAs<unsigned long long>(unsigned long long const&)
; decoder-mode: arm
004616c0  04 e0 2d e5                                      str lr, [sp, #-4]!
004616c4  00 30 a0 e3                                      mov r3, #0
004616c8  0c d0 4d e2                                      sub sp, sp, #0xc
004616cc  00 c0 90 e5                                      ldr ip, [r0]
004616d0  08 20 a0 e3                                      mov r2, #8
004616d4  0f e0 a0 e1                                      mov lr, pc
004616d8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
004616dc  74 30 9f e5                                      ldr r3, [pc, #0x74]
004616e0  08 00 50 e3                                      cmp r0, #8
004616e4  03 30 8f e0                                      add r3, pc, r3
004616e8  0a 00 00 0a                                      beq #0x461718
004616ec  68 20 9f e5                                      ldr r2, [pc, #0x68]
004616f0  02 20 93 e7                                      ldr r2, [r3, r2]
004616f4  00 20 92 e5                                      ldr r2, [r2]
004616f8  02 00 52 e3                                      cmp r2, #2
004616fc  00 30 a0 03                                      moveq r3, #0
00461700  00 30 83 05                                      streq r3, [r3]
00461704  01 00 00 0a                                      beq #0x461710
00461708  01 00 52 e3                                      cmp r2, #1
0046170c  04 00 00 0a                                      beq #0x461724
00461710  0c d0 8d e2                                      add sp, sp, #0xc
00461714  00 80 bd e8                                      ldm sp!, {pc}
00461718  00 00 51 e3                                      cmp r1, #0
0046171c  fb ff ff 0a                                      beq #0x461710
00461720  f1 ff ff ea                                      b #0x4616ec
00461724  34 00 9f e5                                      ldr r0, [pc, #0x34]
00461728  34 10 9f e5                                      ldr r1, [pc, #0x34]
0046172c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00461730  00 00 93 e7                                      ldr r0, [r3, r0]
00461734  30 30 9f e5                                      ldr r3, [pc, #0x30]
00461738  4d c0 a0 e3                                      mov ip, #0x4d
0046173c  01 10 8f e0                                      add r1, pc, r1
00461740  02 20 8f e0                                      add r2, pc, r2
00461744  03 30 8f e0                                      add r3, pc, r3
00461748  a8 00 80 e2                                      add r0, r0, #0xa8
0046174c  00 c0 8d e5                                      str ip, [sp]
00461750  2b b2 fa eb                                      bl #0x30e004
00461754  ed ff ff ea                                      b #0x461710
; mapping-symbol data/literal pool
00461758  ac 33 53 00 c0 39 00 00 c0 19 00 00 9c cc 45 00  .byte 0xac, 0x33, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x9c, 0xcc, 0x45, 0x00
00461768  60 cd 45 00 d4 cd 45 00                          .byte 0x60, 0xcd, 0x45, 0x00, 0xd4, 0xcd, 0x45, 0x00

; FUNCTION 0x00461770, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsIjEEvRKT_
; demangled: void IStreamBase::writeAs<unsigned int>(unsigned int const&)
; decoder-mode: arm
00461770  04 e0 2d e5                                      str lr, [sp, #-4]!
00461774  00 30 a0 e3                                      mov r3, #0
00461778  0c d0 4d e2                                      sub sp, sp, #0xc
0046177c  00 c0 90 e5                                      ldr ip, [r0]
00461780  04 20 a0 e3                                      mov r2, #4
00461784  0f e0 a0 e1                                      mov lr, pc
00461788  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046178c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00461790  04 00 50 e3                                      cmp r0, #4
00461794  03 30 8f e0                                      add r3, pc, r3
00461798  0a 00 00 0a                                      beq #0x4617c8
0046179c  68 20 9f e5                                      ldr r2, [pc, #0x68]
004617a0  02 20 93 e7                                      ldr r2, [r3, r2]
004617a4  00 20 92 e5                                      ldr r2, [r2]
004617a8  02 00 52 e3                                      cmp r2, #2
004617ac  00 30 a0 03                                      moveq r3, #0
004617b0  00 30 83 05                                      streq r3, [r3]
004617b4  01 00 00 0a                                      beq #0x4617c0
004617b8  01 00 52 e3                                      cmp r2, #1
004617bc  04 00 00 0a                                      beq #0x4617d4
004617c0  0c d0 8d e2                                      add sp, sp, #0xc
004617c4  00 80 bd e8                                      ldm sp!, {pc}
004617c8  00 00 51 e3                                      cmp r1, #0
004617cc  fb ff ff 0a                                      beq #0x4617c0
004617d0  f1 ff ff ea                                      b #0x46179c
004617d4  34 00 9f e5                                      ldr r0, [pc, #0x34]
004617d8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004617dc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004617e0  00 00 93 e7                                      ldr r0, [r3, r0]
004617e4  30 30 9f e5                                      ldr r3, [pc, #0x30]
004617e8  4d c0 a0 e3                                      mov ip, #0x4d
004617ec  01 10 8f e0                                      add r1, pc, r1
004617f0  02 20 8f e0                                      add r2, pc, r2
004617f4  03 30 8f e0                                      add r3, pc, r3
004617f8  a8 00 80 e2                                      add r0, r0, #0xa8
004617fc  00 c0 8d e5                                      str ip, [sp]
00461800  ff b1 fa eb                                      bl #0x30e004
00461804  ed ff ff ea                                      b #0x4617c0
; mapping-symbol data/literal pool
00461808  fc 32 53 00 c0 39 00 00 c0 19 00 00 ec cb 45 00  .byte 0xfc, 0x32, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xec, 0xcb, 0x45, 0x00
00461818  b0 cc 45 00 24 cd 45 00                          .byte 0xb0, 0xcc, 0x45, 0x00, 0x24, 0xcd, 0x45, 0x00

; FUNCTION 0x00461828, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsIyEEvRT_
; demangled: void IStreamBase::readAs<unsigned long long>(unsigned long long&)
; decoder-mode: arm
00461828  04 e0 2d e5                                      str lr, [sp, #-4]!
0046182c  00 30 a0 e3                                      mov r3, #0
00461830  0c d0 4d e2                                      sub sp, sp, #0xc
00461834  00 c0 90 e5                                      ldr ip, [r0]
00461838  08 20 a0 e3                                      mov r2, #8
0046183c  0f e0 a0 e1                                      mov lr, pc
00461840  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00461844  74 30 9f e5                                      ldr r3, [pc, #0x74]
00461848  08 00 50 e3                                      cmp r0, #8
0046184c  03 30 8f e0                                      add r3, pc, r3
00461850  0a 00 00 0a                                      beq #0x461880
00461854  68 20 9f e5                                      ldr r2, [pc, #0x68]
00461858  02 20 93 e7                                      ldr r2, [r3, r2]
0046185c  00 20 92 e5                                      ldr r2, [r2]
00461860  02 00 52 e3                                      cmp r2, #2
00461864  00 30 a0 03                                      moveq r3, #0
00461868  00 30 83 05                                      streq r3, [r3]
0046186c  01 00 00 0a                                      beq #0x461878
00461870  01 00 52 e3                                      cmp r2, #1
00461874  04 00 00 0a                                      beq #0x46188c
00461878  0c d0 8d e2                                      add sp, sp, #0xc
0046187c  00 80 bd e8                                      ldm sp!, {pc}
00461880  00 00 51 e3                                      cmp r1, #0
00461884  fb ff ff 0a                                      beq #0x461878
00461888  f1 ff ff ea                                      b #0x461854
0046188c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00461890  34 10 9f e5                                      ldr r1, [pc, #0x34]
00461894  34 20 9f e5                                      ldr r2, [pc, #0x34]
00461898  00 00 93 e7                                      ldr r0, [r3, r0]
0046189c  30 30 9f e5                                      ldr r3, [pc, #0x30]
004618a0  45 c0 a0 e3                                      mov ip, #0x45
004618a4  01 10 8f e0                                      add r1, pc, r1
004618a8  02 20 8f e0                                      add r2, pc, r2
004618ac  03 30 8f e0                                      add r3, pc, r3
004618b0  a8 00 80 e2                                      add r0, r0, #0xa8
004618b4  00 c0 8d e5                                      str ip, [sp]
004618b8  d1 b1 fa eb                                      bl #0x30e004
004618bc  ed ff ff ea                                      b #0x461878
; mapping-symbol data/literal pool
004618c0  44 32 53 00 c0 39 00 00 c0 19 00 00 34 cb 45 00  .byte 0x44, 0x32, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x34, 0xcb, 0x45, 0x00
004618d0  58 cc 45 00 6c cc 45 00                          .byte 0x58, 0xcc, 0x45, 0x00, 0x6c, 0xcc, 0x45, 0x00

; FUNCTION 0x00468db8, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsItEEvRKT_
; demangled: void IStreamBase::writeAs<unsigned short>(unsigned short const&)
; decoder-mode: arm
00468db8  04 e0 2d e5                                      str lr, [sp, #-4]!
00468dbc  00 30 a0 e3                                      mov r3, #0
00468dc0  0c d0 4d e2                                      sub sp, sp, #0xc
00468dc4  00 c0 90 e5                                      ldr ip, [r0]
00468dc8  02 20 a0 e3                                      mov r2, #2
00468dcc  0f e0 a0 e1                                      mov lr, pc
00468dd0  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00468dd4  74 30 9f e5                                      ldr r3, [pc, #0x74]
00468dd8  02 00 50 e3                                      cmp r0, #2
00468ddc  03 30 8f e0                                      add r3, pc, r3
00468de0  0a 00 00 0a                                      beq #0x468e10
00468de4  68 20 9f e5                                      ldr r2, [pc, #0x68]
00468de8  02 20 93 e7                                      ldr r2, [r3, r2]
00468dec  00 20 92 e5                                      ldr r2, [r2]
00468df0  02 00 52 e3                                      cmp r2, #2
00468df4  00 30 a0 03                                      moveq r3, #0
00468df8  00 30 83 05                                      streq r3, [r3]
00468dfc  01 00 00 0a                                      beq #0x468e08
00468e00  01 00 52 e3                                      cmp r2, #1
00468e04  04 00 00 0a                                      beq #0x468e1c
00468e08  0c d0 8d e2                                      add sp, sp, #0xc
00468e0c  00 80 bd e8                                      ldm sp!, {pc}
00468e10  00 00 51 e3                                      cmp r1, #0
00468e14  fb ff ff 0a                                      beq #0x468e08
00468e18  f1 ff ff ea                                      b #0x468de4
00468e1c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00468e20  34 10 9f e5                                      ldr r1, [pc, #0x34]
00468e24  34 20 9f e5                                      ldr r2, [pc, #0x34]
00468e28  00 00 93 e7                                      ldr r0, [r3, r0]
00468e2c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00468e30  4d c0 a0 e3                                      mov ip, #0x4d
00468e34  01 10 8f e0                                      add r1, pc, r1
00468e38  02 20 8f e0                                      add r2, pc, r2
00468e3c  03 30 8f e0                                      add r3, pc, r3
00468e40  a8 00 80 e2                                      add r0, r0, #0xa8
00468e44  00 c0 8d e5                                      str ip, [sp]
00468e48  6d 94 fa eb                                      bl #0x30e004
00468e4c  ed ff ff ea                                      b #0x468e08
; mapping-symbol data/literal pool
00468e50  b4 bc 52 00 c0 39 00 00 c0 19 00 00 a4 55 45 00  .byte 0xb4, 0xbc, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xa4, 0x55, 0x45, 0x00
00468e60  68 56 45 00 dc 56 45 00                          .byte 0x68, 0x56, 0x45, 0x00, 0xdc, 0x56, 0x45, 0x00

; FUNCTION 0x00468e68, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase7writeAsIaEEvRKT_
; demangled: void IStreamBase::writeAs<signed char>(signed char const&)
; decoder-mode: arm
00468e68  04 e0 2d e5                                      str lr, [sp, #-4]!
00468e6c  00 30 a0 e3                                      mov r3, #0
00468e70  0c d0 4d e2                                      sub sp, sp, #0xc
00468e74  00 c0 90 e5                                      ldr ip, [r0]
00468e78  01 20 a0 e3                                      mov r2, #1
00468e7c  0f e0 a0 e1                                      mov lr, pc
00468e80  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00468e84  74 30 9f e5                                      ldr r3, [pc, #0x74]
00468e88  01 00 50 e3                                      cmp r0, #1
00468e8c  03 30 8f e0                                      add r3, pc, r3
00468e90  0a 00 00 0a                                      beq #0x468ec0
00468e94  68 20 9f e5                                      ldr r2, [pc, #0x68]
00468e98  02 20 93 e7                                      ldr r2, [r3, r2]
00468e9c  00 20 92 e5                                      ldr r2, [r2]
00468ea0  02 00 52 e3                                      cmp r2, #2
00468ea4  00 30 a0 03                                      moveq r3, #0
00468ea8  00 30 83 05                                      streq r3, [r3]
00468eac  01 00 00 0a                                      beq #0x468eb8
00468eb0  01 00 52 e3                                      cmp r2, #1
00468eb4  04 00 00 0a                                      beq #0x468ecc
00468eb8  0c d0 8d e2                                      add sp, sp, #0xc
00468ebc  00 80 bd e8                                      ldm sp!, {pc}
00468ec0  00 00 51 e3                                      cmp r1, #0
00468ec4  fb ff ff 0a                                      beq #0x468eb8
00468ec8  f1 ff ff ea                                      b #0x468e94
00468ecc  34 00 9f e5                                      ldr r0, [pc, #0x34]
00468ed0  34 10 9f e5                                      ldr r1, [pc, #0x34]
00468ed4  34 20 9f e5                                      ldr r2, [pc, #0x34]
00468ed8  00 00 93 e7                                      ldr r0, [r3, r0]
00468edc  30 30 9f e5                                      ldr r3, [pc, #0x30]
00468ee0  4d c0 a0 e3                                      mov ip, #0x4d
00468ee4  01 10 8f e0                                      add r1, pc, r1
00468ee8  02 20 8f e0                                      add r2, pc, r2
00468eec  03 30 8f e0                                      add r3, pc, r3
00468ef0  a8 00 80 e2                                      add r0, r0, #0xa8
00468ef4  00 c0 8d e5                                      str ip, [sp]
00468ef8  41 94 fa eb                                      bl #0x30e004
00468efc  ed ff ff ea                                      b #0x468eb8
; mapping-symbol data/literal pool
00468f00  04 bc 52 00 c0 39 00 00 c0 19 00 00 f4 54 45 00  .byte 0x04, 0xbc, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xf4, 0x54, 0x45, 0x00
00468f10  b8 55 45 00 2c 56 45 00                          .byte 0xb8, 0x55, 0x45, 0x00, 0x2c, 0x56, 0x45, 0x00

; FUNCTION 0x00469070, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsItEEvRT_
; demangled: void IStreamBase::readAs<unsigned short>(unsigned short&)
; decoder-mode: arm
00469070  04 e0 2d e5                                      str lr, [sp, #-4]!
00469074  00 30 a0 e3                                      mov r3, #0
00469078  0c d0 4d e2                                      sub sp, sp, #0xc
0046907c  00 c0 90 e5                                      ldr ip, [r0]
00469080  02 20 a0 e3                                      mov r2, #2
00469084  0f e0 a0 e1                                      mov lr, pc
00469088  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0046908c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00469090  02 00 50 e3                                      cmp r0, #2
00469094  03 30 8f e0                                      add r3, pc, r3
00469098  0a 00 00 0a                                      beq #0x4690c8
0046909c  68 20 9f e5                                      ldr r2, [pc, #0x68]
004690a0  02 20 93 e7                                      ldr r2, [r3, r2]
004690a4  00 20 92 e5                                      ldr r2, [r2]
004690a8  02 00 52 e3                                      cmp r2, #2
004690ac  00 30 a0 03                                      moveq r3, #0
004690b0  00 30 83 05                                      streq r3, [r3]
004690b4  01 00 00 0a                                      beq #0x4690c0
004690b8  01 00 52 e3                                      cmp r2, #1
004690bc  04 00 00 0a                                      beq #0x4690d4
004690c0  0c d0 8d e2                                      add sp, sp, #0xc
004690c4  00 80 bd e8                                      ldm sp!, {pc}
004690c8  00 00 51 e3                                      cmp r1, #0
004690cc  fb ff ff 0a                                      beq #0x4690c0
004690d0  f1 ff ff ea                                      b #0x46909c
004690d4  34 00 9f e5                                      ldr r0, [pc, #0x34]
004690d8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004690dc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004690e0  00 00 93 e7                                      ldr r0, [r3, r0]
004690e4  30 30 9f e5                                      ldr r3, [pc, #0x30]
004690e8  45 c0 a0 e3                                      mov ip, #0x45
004690ec  01 10 8f e0                                      add r1, pc, r1
004690f0  02 20 8f e0                                      add r2, pc, r2
004690f4  03 30 8f e0                                      add r3, pc, r3
004690f8  a8 00 80 e2                                      add r0, r0, #0xa8
004690fc  00 c0 8d e5                                      str ip, [sp]
00469100  bf 93 fa eb                                      bl #0x30e004
00469104  ed ff ff ea                                      b #0x4690c0
; mapping-symbol data/literal pool
00469108  fc b9 52 00 c0 39 00 00 c0 19 00 00 ec 52 45 00  .byte 0xfc, 0xb9, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xec, 0x52, 0x45, 0x00
00469118  10 54 45 00 24 54 45 00                          .byte 0x10, 0x54, 0x45, 0x00, 0x24, 0x54, 0x45, 0x00

; FUNCTION 0x00469120, declared_size=176, range_size=176, mode=arm
; class-group: void IStreamBase
; alias: _ZN11IStreamBase6readAsIaEEvRT_
; demangled: void IStreamBase::readAs<signed char>(signed char&)
; decoder-mode: arm
00469120  04 e0 2d e5                                      str lr, [sp, #-4]!
00469124  00 30 a0 e3                                      mov r3, #0
00469128  0c d0 4d e2                                      sub sp, sp, #0xc
0046912c  00 c0 90 e5                                      ldr ip, [r0]
00469130  01 20 a0 e3                                      mov r2, #1
00469134  0f e0 a0 e1                                      mov lr, pc
00469138  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0046913c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00469140  01 00 50 e3                                      cmp r0, #1
00469144  03 30 8f e0                                      add r3, pc, r3
00469148  0a 00 00 0a                                      beq #0x469178
0046914c  68 20 9f e5                                      ldr r2, [pc, #0x68]
00469150  02 20 93 e7                                      ldr r2, [r3, r2]
00469154  00 20 92 e5                                      ldr r2, [r2]
00469158  02 00 52 e3                                      cmp r2, #2
0046915c  00 30 a0 03                                      moveq r3, #0
00469160  00 30 83 05                                      streq r3, [r3]
00469164  01 00 00 0a                                      beq #0x469170
00469168  01 00 52 e3                                      cmp r2, #1
0046916c  04 00 00 0a                                      beq #0x469184
00469170  0c d0 8d e2                                      add sp, sp, #0xc
00469174  00 80 bd e8                                      ldm sp!, {pc}
00469178  00 00 51 e3                                      cmp r1, #0
0046917c  fb ff ff 0a                                      beq #0x469170
00469180  f1 ff ff ea                                      b #0x46914c
00469184  34 00 9f e5                                      ldr r0, [pc, #0x34]
00469188  34 10 9f e5                                      ldr r1, [pc, #0x34]
0046918c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00469190  00 00 93 e7                                      ldr r0, [r3, r0]
00469194  30 30 9f e5                                      ldr r3, [pc, #0x30]
00469198  45 c0 a0 e3                                      mov ip, #0x45
0046919c  01 10 8f e0                                      add r1, pc, r1
004691a0  02 20 8f e0                                      add r2, pc, r2
004691a4  03 30 8f e0                                      add r3, pc, r3
004691a8  a8 00 80 e2                                      add r0, r0, #0xa8
004691ac  00 c0 8d e5                                      str ip, [sp]
004691b0  93 93 fa eb                                      bl #0x30e004
004691b4  ed ff ff ea                                      b #0x469170
; mapping-symbol data/literal pool
004691b8  4c b9 52 00 c0 39 00 00 c0 19 00 00 3c 52 45 00  .byte 0x4c, 0xb9, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x3c, 0x52, 0x45, 0x00
004691c8  60 53 45 00 74 53 45 00                          .byte 0x60, 0x53, 0x45, 0x00, 0x74, 0x53, 0x45, 0x00
