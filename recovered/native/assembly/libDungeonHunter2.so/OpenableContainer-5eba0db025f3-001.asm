; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a1634, declared_size=60, range_size=60, mode=arm
; class-group: OpenableContainer
; alias: _ZNK17OpenableContainer9GetScriptEv
; demangled: OpenableContainer::GetScript() const
; decoder-mode: arm
003a1634  74 23 90 e5                                      ldr r2, [r0, #0x374]
003a1638  28 30 9f e5                                      ldr r3, [pc, #0x28]
003a163c  01 00 72 e3                                      cmn r2, #1
003a1640  03 30 8f e0                                      add r3, pc, r3
003a1644  00 00 a0 03                                      moveq r0, #0
003a1648  1e ff 2f 01                                      bxeq lr
003a164c  18 10 9f e5                                      ldr r1, [pc, #0x18]
003a1650  01 30 93 e7                                      ldr r3, [r3, r1]
003a1654  28 10 a0 e3                                      mov r1, #0x28
003a1658  00 30 93 e5                                      ldr r3, [r3]
003a165c  91 32 22 e0                                      mla r2, r1, r2, r3
003a1660  18 00 92 e5                                      ldr r0, [r2, #0x18]
003a1664  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003a1668  50 34 5f 00 dc 33 00 00                          .byte 0x50, 0x34, 0x5f, 0x00, 0xdc, 0x33, 0x00, 0x00

; FUNCTION 0x003a1670, declared_size=56, range_size=56, mode=arm
; class-group: OpenableContainer
; alias: _ZNK17OpenableContainer9GetVisualEv
; demangled: OpenableContainer::GetVisual() const
; decoder-mode: arm
003a1670  74 03 90 e5                                      ldr r0, [r0, #0x374]
003a1674  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a1678  01 00 70 e3                                      cmn r0, #1
003a167c  03 30 8f e0                                      add r3, pc, r3
003a1680  1e ff 2f 01                                      bxeq lr
003a1684  18 20 9f e5                                      ldr r2, [pc, #0x18]
003a1688  02 30 93 e7                                      ldr r3, [r3, r2]
003a168c  28 20 a0 e3                                      mov r2, #0x28
003a1690  00 30 93 e5                                      ldr r3, [r3]
003a1694  92 30 20 e0                                      mla r0, r2, r0, r3
003a1698  24 00 90 e5                                      ldr r0, [r0, #0x24]
003a169c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003a16a0  14 34 5f 00 dc 33 00 00                          .byte 0x14, 0x34, 0x5f, 0x00, 0xdc, 0x33, 0x00, 0x00

; FUNCTION 0x003a16a8, declared_size=36, range_size=36, mode=arm
; class-group: OpenableContainer
; alias: _ZNK17OpenableContainer8IsLockedEv
; demangled: OpenableContainer::IsLocked() const
; decoder-mode: arm
003a16a8  94 33 90 e5                                      ldr r3, [r0, #0x394]
003a16ac  03 30 43 e2                                      sub r3, r3, #3
003a16b0  01 00 53 e3                                      cmp r3, #1
003a16b4  00 00 a0 93                                      movls r0, #0
003a16b8  1e ff 2f 91                                      bxls lr
003a16bc  10 07 90 e5                                      ldr r0, [r0, #0x710]
003a16c0  01 00 90 e2                                      adds r0, r0, #1
003a16c4  01 00 a0 13                                      movne r0, #1
003a16c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a16cc, declared_size=8, range_size=8, mode=arm
; class-group: OpenableContainer
; alias: _ZNK17OpenableContainer18GetInteractionTypeEP10GameObject
; demangled: OpenableContainer::GetInteractionType(GameObject*) const
; decoder-mode: arm
003a16cc  00 00 a0 e3                                      mov r0, #0
003a16d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a177c, declared_size=72, range_size=72, mode=arm
; class-group: OpenableContainer
; alias: _ZNK17OpenableContainer11KeepPhysicsEv
; demangled: OpenableContainer::KeepPhysics() const
; decoder-mode: arm
003a177c  10 40 2d e9                                      push {r4, lr}
003a1780  8c 03 90 e5                                      ldr r0, [r0, #0x38c]
003a1784  df ff ff eb                                      bl #0x3a1708
003a1788  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
003a178c  01 00 70 e3                                      cmn r0, #1
003a1790  04 40 8f e0                                      add r4, pc, r4
003a1794  06 00 00 0a                                      beq #0x3a17b4
003a1798  20 30 9f e5                                      ldr r3, [pc, #0x20]
003a179c  28 20 a0 e3                                      mov r2, #0x28
003a17a0  03 30 94 e7                                      ldr r3, [r4, r3]
003a17a4  00 30 93 e5                                      ldr r3, [r3]
003a17a8  92 30 20 e0                                      mla r0, r2, r0, r3
003a17ac  0c 00 d0 e5                                      ldrb r0, [r0, #0xc]
003a17b0  10 80 bd e8                                      pop {r4, pc}
003a17b4  00 00 a0 e3                                      mov r0, #0
003a17b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a17bc  00 33 5f 00 dc 33 00 00                          .byte 0x00, 0x33, 0x5f, 0x00, 0xdc, 0x33, 0x00, 0x00

; FUNCTION 0x003a17c4, declared_size=64, range_size=64, mode=arm
; class-group: OpenableContainer
; alias: _ZNK17OpenableContainer8GetSoundEv
; demangled: OpenableContainer::GetSound() const
; decoder-mode: arm
003a17c4  10 40 2d e9                                      push {r4, lr}
003a17c8  8c 03 90 e5                                      ldr r0, [r0, #0x38c]
003a17cc  cd ff ff eb                                      bl #0x3a1708
003a17d0  24 40 9f e5                                      ldr r4, [pc, #0x24]
003a17d4  01 00 70 e3                                      cmn r0, #1
003a17d8  04 40 8f e0                                      add r4, pc, r4
003a17dc  05 00 00 0a                                      beq #0x3a17f8
003a17e0  18 30 9f e5                                      ldr r3, [pc, #0x18]
003a17e4  28 20 a0 e3                                      mov r2, #0x28
003a17e8  03 30 94 e7                                      ldr r3, [r4, r3]
003a17ec  00 30 93 e5                                      ldr r3, [r3]
003a17f0  92 30 20 e0                                      mla r0, r2, r0, r3
003a17f4  08 00 90 e5                                      ldr r0, [r0, #8]
003a17f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a17fc  b8 32 5f 00 dc 33 00 00                          .byte 0xb8, 0x32, 0x5f, 0x00, 0xdc, 0x33, 0x00, 0x00

; FUNCTION 0x003a1804, declared_size=64, range_size=64, mode=arm
; class-group: OpenableContainer
; alias: _ZNK17OpenableContainer7GetLootEv
; demangled: OpenableContainer::GetLoot() const
; decoder-mode: arm
003a1804  10 40 2d e9                                      push {r4, lr}
003a1808  8c 03 90 e5                                      ldr r0, [r0, #0x38c]
003a180c  bd ff ff eb                                      bl #0x3a1708
003a1810  24 40 9f e5                                      ldr r4, [pc, #0x24]
003a1814  01 00 70 e3                                      cmn r0, #1
003a1818  04 40 8f e0                                      add r4, pc, r4
003a181c  05 00 00 0a                                      beq #0x3a1838
003a1820  18 30 9f e5                                      ldr r3, [pc, #0x18]
003a1824  28 20 a0 e3                                      mov r2, #0x28
003a1828  03 30 94 e7                                      ldr r3, [r4, r3]
003a182c  00 30 93 e5                                      ldr r3, [r3]
003a1830  92 30 20 e0                                      mla r0, r2, r0, r3
003a1834  10 00 90 e5                                      ldr r0, [r0, #0x10]
003a1838  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a183c  78 32 5f 00 dc 33 00 00                          .byte 0x78, 0x32, 0x5f, 0x00, 0xdc, 0x33, 0x00, 0x00

; FUNCTION 0x003a1844, declared_size=28, range_size=28, mode=arm
; class-group: OpenableContainer
; alias: _ZNK17OpenableContainer9GetDataIdEv
; demangled: OpenableContainer::GetDataId() const
; decoder-mode: arm
003a1844  88 33 90 e5                                      ldr r3, [r0, #0x388]
003a1848  8c 03 90 e5                                      ldr r0, [r0, #0x38c]
003a184c  00 00 53 e1                                      cmp r3, r0
003a1850  00 00 00 0a                                      beq #0x3a1858
003a1854  ab ff ff ea                                      b #0x3a1708
003a1858  00 00 e0 e3                                      mvn r0, #0
003a185c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a1860, declared_size=92, range_size=92, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainer6UnlockEP9Character
; demangled: OpenableContainer::Unlock(Character*)
; decoder-mode: arm
003a1860  00 00 51 e3                                      cmp r1, #0
003a1864  70 40 2d e9                                      push {r4, r5, r6, lr}
003a1868  00 40 a0 e1                                      mov r4, r0
003a186c  0c 00 00 0a                                      beq #0x3a18a4
003a1870  df 5f 81 e2                                      add r5, r1, #0x37c
003a1874  05 00 a0 e1                                      mov r0, r5
003a1878  10 17 94 e5                                      ldr r1, [r4, #0x710]
003a187c  36 6e 01 eb                                      bl #0x3fd15c
003a1880  00 00 50 e3                                      cmp r0, #0
003a1884  06 00 00 0a                                      beq #0x3a18a4
003a1888  f0 35 d0 e1                                      ldrsh r3, [r0, #0x50]
003a188c  08 27 94 e5                                      ldr r2, [r4, #0x708]
003a1890  03 00 52 e1                                      cmp r2, r3
003a1894  02 00 00 ca                                      bgt #0x3a18a4
003a1898  0c 37 d4 e5                                      ldrb r3, [r4, #0x70c]
003a189c  00 00 53 e3                                      cmp r3, #0
003a18a0  01 00 00 1a                                      bne #0x3a18ac
003a18a4  00 00 a0 e3                                      mov r0, #0
003a18a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003a18ac  10 17 94 e5                                      ldr r1, [r4, #0x710]
003a18b0  05 00 a0 e1                                      mov r0, r5
003a18b4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003a18b8  66 73 01 ea                                      b #0x3fe658

; FUNCTION 0x003a18bc, declared_size=72, range_size=72, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainer12TryUnlockingEP10GameObject
; demangled: OpenableContainer::TryUnlocking(GameObject*)
; decoder-mode: arm
003a18bc  70 40 2d e9                                      push {r4, r5, r6, lr}
003a18c0  01 50 a0 e1                                      mov r5, r1
003a18c4  00 40 a0 e1                                      mov r4, r0
003a18c8  76 ff ff eb                                      bl #0x3a16a8
003a18cc  00 00 50 e3                                      cmp r0, #0
003a18d0  01 00 00 1a                                      bne #0x3a18dc
003a18d4  01 00 a0 e3                                      mov r0, #1
003a18d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003a18dc  00 30 95 e5                                      ldr r3, [r5]
003a18e0  05 00 a0 e1                                      mov r0, r5
003a18e4  0f e0 a0 e1                                      mov lr, pc
003a18e8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003a18ec  00 00 50 e3                                      cmp r0, #0
003a18f0  05 10 a0 11                                      movne r1, r5
003a18f4  00 10 a0 03                                      moveq r1, #0
003a18f8  04 00 a0 e1                                      mov r0, r4
003a18fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003a1900  d6 ff ff ea                                      b #0x3a1860

; FUNCTION 0x003a1904, declared_size=608, range_size=608, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainer8InteractEP10GameObject
; demangled: OpenableContainer::Interact(GameObject*)
; decoder-mode: arm
003a1904  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003a1908  30 d0 4d e2                                      sub sp, sp, #0x30
003a190c  00 60 a0 e1                                      mov r6, r0
003a1910  01 50 a0 e1                                      mov r5, r1
003a1914  e8 ff ff eb                                      bl #0x3a18bc
003a1918  08 42 9f e5                                      ldr r4, [pc, #0x208]
003a191c  00 00 50 e3                                      cmp r0, #0
003a1920  04 40 8f e0                                      add r4, pc, r4
003a1924  01 00 00 1a                                      bne #0x3a1930
003a1928  30 d0 8d e2                                      add sp, sp, #0x30
003a192c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003a1930  f4 71 9f e5                                      ldr r7, [pc, #0x1f4]
003a1934  07 00 94 e7                                      ldr r0, [r4, r7]
003a1938  15 f7 fd eb                                      bl #0x31f594
003a193c  00 80 50 e2                                      subs r8, r0, #0
003a1940  61 00 00 0a                                      beq #0x3a1acc
003a1944  07 a0 94 e7                                      ldr sl, [r4, r7]
003a1948  40 00 9a e5                                      ldr r0, [sl, #0x40]
003a194c  c8 35 ff eb                                      bl #0x36f074
003a1950  00 00 50 e3                                      cmp r0, #0
003a1954  3b 00 00 1a                                      bne #0x3a1a48
003a1958  06 00 a0 e1                                      mov r0, r6
003a195c  05 10 a0 e1                                      mov r1, r5
003a1960  24 60 8d e2                                      add r6, sp, #0x24
003a1964  73 fc ff eb                                      bl #0x3a0b38
003a1968  05 10 a0 e1                                      mov r1, r5
003a196c  06 00 a0 e1                                      mov r0, r6
003a1970  ed 70 fe eb                                      bl #0x33dd2c
003a1974  06 00 a0 e1                                      mov r0, r6
003a1978  75 79 fe eb                                      bl #0x33ff54
003a197c  00 50 50 e2                                      subs r5, r0, #0
003a1980  e8 ff ff 0a                                      beq #0x3a1928
003a1984  00 30 95 e5                                      ldr r3, [r5]
003a1988  0f e0 a0 e1                                      mov lr, pc
003a198c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003a1990  00 00 50 e3                                      cmp r0, #0
003a1994  e3 ff ff 0a                                      beq #0x3a1928
003a1998  56 6e 85 e2                                      add r6, r5, #0x560
003a199c  06 00 a0 e1                                      mov r0, r6
003a19a0  da 10 a0 e3                                      mov r1, #0xda
003a19a4  01 20 a0 e3                                      mov r2, #1
003a19a8  7a fb 00 eb                                      bl #0x3e0798
003a19ac  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
003a19b0  06 00 a0 e1                                      mov r0, r6
003a19b4  da 10 a0 e3                                      mov r1, #0xda
003a19b8  03 30 94 e7                                      ldr r3, [r4, r3]
003a19bc  00 20 a0 e3                                      mov r2, #0
003a19c0  00 60 93 e5                                      ldr r6, [r3]
003a19c4  45 f7 00 eb                                      bl #0x3df6e0
003a19c8  63 00 50 e3                                      cmp r0, #0x63
003a19cc  d5 ff ff da                                      ble #0x3a1928
003a19d0  07 30 94 e7                                      ldr r3, [r4, r7]
003a19d4  05 10 a0 e1                                      mov r1, r5
003a19d8  40 00 93 e5                                      ldr r0, [r3, #0x40]
003a19dc  86 35 ff eb                                      bl #0x36effc
003a19e0  00 00 50 e3                                      cmp r0, #0
003a19e4  cf ff ff 0a                                      beq #0x3a1928
003a19e8  44 31 9f e5                                      ldr r3, [pc, #0x144]
003a19ec  03 30 94 e7                                      ldr r3, [r4, r3]
003a19f0  00 80 93 e5                                      ldr r8, [r3]
003a19f4  00 00 58 e3                                      cmp r8, #0
003a19f8  48 00 00 0a                                      beq #0x3a1b20
003a19fc  34 31 9f e5                                      ldr r3, [pc, #0x134]
003a1a00  34 71 9f e5                                      ldr r7, [pc, #0x134]
003a1a04  00 50 a0 e3                                      mov r5, #0
003a1a08  03 30 94 e7                                      ldr r3, [r4, r3]
003a1a0c  07 70 8f e0                                      add r7, pc, r7
003a1a10  00 40 93 e5                                      ldr r4, [r3]
003a1a14  02 00 00 ea                                      b #0x3a1a24
003a1a18  01 50 85 e2                                      add r5, r5, #1
003a1a1c  08 00 55 e1                                      cmp r5, r8
003a1a20  3e 00 00 0a                                      beq #0x3a1b20
003a1a24  05 11 94 e7                                      ldr r1, [r4, r5, lsl #2]
003a1a28  07 00 a0 e1                                      mov r0, r7
003a1a2c  3a b2 fd eb                                      bl #0x30e31c
003a1a30  00 00 50 e3                                      cmp r0, #0
003a1a34  f7 ff ff 1a                                      bne #0x3a1a18
003a1a38  05 10 a0 e1                                      mov r1, r5
003a1a3c  06 00 a0 e1                                      mov r0, r6
003a1a40  5c 7e ff eb                                      bl #0x3813b8
003a1a44  b7 ff ff ea                                      b #0x3a1928
003a1a48  00 30 96 e5                                      ldr r3, [r6]
003a1a4c  06 00 a0 e1                                      mov r0, r6
003a1a50  0f e0 a0 e1                                      mov lr, pc
003a1a54  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
003a1a58  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
003a1a5c  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
003a1a60  00 90 a0 e1                                      mov sb, r0
003a1a64  01 10 8f e0                                      add r1, pc, r1
003a1a68  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
003a1a6c  02 20 8f e0                                      add r2, pc, r2
003a1a70  64 a0 96 e5                                      ldr sl, [r6, #0x64]
003a1a74  58 8c 04 eb                                      bl #0x4c4bdc
003a1a78  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
003a1a7c  30 10 8d e2                                      add r1, sp, #0x30
003a1a80  00 30 a0 e3                                      mov r3, #0
003a1a84  02 20 94 e7                                      ldr r2, [r4, r2]
003a1a88  0c 00 8d e5                                      str r0, [sp, #0xc]
003a1a8c  08 00 a0 e1                                      mov r0, r8
003a1a90  08 20 82 e2                                      add r2, r2, #8
003a1a94  28 20 21 e5                                      str r2, [r1, #-0x28]!
003a1a98  00 20 e0 e3                                      mvn r2, #0
003a1a9c  19 30 cd e5                                      strb r3, [sp, #0x19]
003a1aa0  18 30 cd e5                                      strb r3, [sp, #0x18]
003a1aa4  14 a0 8d e5                                      str sl, [sp, #0x14]
003a1aa8  1c 20 8d e5                                      str r2, [sp, #0x1c]
003a1aac  20 90 8d e5                                      str sb, [sp, #0x20]
003a1ab0  10 50 8d e5                                      str r5, [sp, #0x10]
003a1ab4  75 5d fe eb                                      bl #0x339090
003a1ab8  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003a1abc  03 30 94 e7                                      ldr r3, [r4, r3]
003a1ac0  08 30 83 e2                                      add r3, r3, #8
003a1ac4  08 30 8d e5                                      str r3, [sp, #8]
003a1ac8  a2 ff ff ea                                      b #0x3a1958
003a1acc  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003a1ad0  03 30 94 e7                                      ldr r3, [r4, r3]
003a1ad4  00 30 93 e5                                      ldr r3, [r3]
003a1ad8  02 00 53 e3                                      cmp r3, #2
003a1adc  00 80 88 05                                      streq r8, [r8]
003a1ae0  97 ff ff 0a                                      beq #0x3a1944
003a1ae4  01 00 53 e3                                      cmp r3, #1
003a1ae8  95 ff ff 1a                                      bne #0x3a1944
003a1aec  60 00 9f e5                                      ldr r0, [pc, #0x60]
003a1af0  60 10 9f e5                                      ldr r1, [pc, #0x60]
003a1af4  60 20 9f e5                                      ldr r2, [pc, #0x60]
003a1af8  00 00 94 e7                                      ldr r0, [r4, r0]
003a1afc  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003a1b00  f9 c0 a0 e3                                      mov ip, #0xf9
003a1b04  01 10 8f e0                                      add r1, pc, r1
003a1b08  02 20 8f e0                                      add r2, pc, r2
003a1b0c  03 30 8f e0                                      add r3, pc, r3
003a1b10  a8 00 80 e2                                      add r0, r0, #0xa8
003a1b14  00 c0 8d e5                                      str ip, [sp]
003a1b18  39 b1 fd eb                                      bl #0x30e004
003a1b1c  88 ff ff ea                                      b #0x3a1944
003a1b20  00 10 e0 e3                                      mvn r1, #0
003a1b24  c4 ff ff ea                                      b #0x3a1a3c
; mapping-symbol data/literal pool
003a1b28  70 31 5f 00 f4 37 00 00 70 1d 00 00 fc 0e 00 00  .byte 0x70, 0x31, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x70, 0x1d, 0x00, 0x00, 0xfc, 0x0e, 0x00, 0x00
003a1b38  2c 10 00 00 7c 16 52 00 04 0f 52 00 0c 16 52 00  .byte 0x2c, 0x10, 0x00, 0x00, 0x7c, 0x16, 0x52, 0x00, 0x04, 0x0f, 0x52, 0x00, 0x0c, 0x16, 0x52, 0x00
003a1b48  f8 27 00 00 b0 0b 00 00 c0 39 00 00 c0 19 00 00  .byte 0xf8, 0x27, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003a1b58  d4 c8 51 00 50 de 56 00 14 15 52 00              .byte 0xd4, 0xc8, 0x51, 0x00, 0x50, 0xde, 0x56, 0x00, 0x14, 0x15, 0x52, 0x00

; FUNCTION 0x003a1b64, declared_size=136, range_size=136, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainer8InitPostEv
; demangled: OpenableContainer::InitPost()
; decoder-mode: arm
003a1b64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a1b68  00 80 a0 e1                                      mov r8, r0
003a1b6c  67 f7 ff eb                                      bl #0x39f910
003a1b70  04 57 98 e5                                      ldr r5, [r8, #0x704]
003a1b74  00 27 98 e5                                      ldr r2, [r8, #0x700]
003a1b78  60 30 9f e5                                      ldr r3, [pc, #0x60]
003a1b7c  02 00 55 e1                                      cmp r5, r2
003a1b80  03 30 8f e0                                      add r3, pc, r3
003a1b84  12 00 00 0a                                      beq #0x3a1bd4
003a1b88  54 20 9f e5                                      ldr r2, [pc, #0x54]
003a1b8c  02 20 93 e7                                      ldr r2, [r3, r2]
003a1b90  00 60 92 e5                                      ldr r6, [r2]
003a1b94  00 00 56 e3                                      cmp r6, #0
003a1b98  0e 00 00 0a                                      beq #0x3a1bd8
003a1b9c  44 20 9f e5                                      ldr r2, [pc, #0x44]
003a1ba0  00 40 a0 e3                                      mov r4, #0
003a1ba4  02 30 93 e7                                      ldr r3, [r3, r2]
003a1ba8  00 70 93 e5                                      ldr r7, [r3]
003a1bac  02 00 00 ea                                      b #0x3a1bbc
003a1bb0  01 40 84 e2                                      add r4, r4, #1
003a1bb4  06 00 54 e1                                      cmp r4, r6
003a1bb8  06 00 00 0a                                      beq #0x3a1bd8
003a1bbc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
003a1bc0  05 00 a0 e1                                      mov r0, r5
003a1bc4  d4 b1 fd eb                                      bl #0x30e31c
003a1bc8  00 00 50 e3                                      cmp r0, #0
003a1bcc  f7 ff ff 1a                                      bne #0x3a1bb0
003a1bd0  10 47 88 e5                                      str r4, [r8, #0x710]
003a1bd4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003a1bd8  00 40 e0 e3                                      mvn r4, #0
003a1bdc  fb ff ff ea                                      b #0x3a1bd0
; mapping-symbol data/literal pool
003a1be0  10 2f 5f 00 60 0d 00 00 54 1c 00 00              .byte 0x10, 0x2f, 0x5f, 0x00, 0x60, 0x0d, 0x00, 0x00, 0x54, 0x1c, 0x00, 0x00

; FUNCTION 0x003a1bec, declared_size=8, range_size=8, mode=arm
; class-group: OpenableContainer
; alias: _ZThn36_N17OpenableContainerD1Ev
; demangled: non-virtual thunk to OpenableContainer::~OpenableContainer()
; decoder-mode: arm
003a1bec  24 00 40 e2                                      sub r0, r0, #0x24
003a1bf0  ff ff ff ea                                      b #0x3a1bf4

; FUNCTION 0x003a1bf4, declared_size=76, range_size=76, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainerD1Ev
; demangled: OpenableContainer::~OpenableContainer()
; decoder-mode: arm
003a1bf4  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003a1bf8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003a1bfc  10 40 2d e9                                      push {r4, lr}
003a1c00  02 20 8f e0                                      add r2, pc, r2
003a1c04  03 30 92 e7                                      ldr r3, [r2, r3]
003a1c08  00 40 a0 e1                                      mov r4, r0
003a1c0c  6f 0e 80 e2                                      add r0, r0, #0x6f0
003a1c10  01 2c 83 e2                                      add r2, r3, #0x100
003a1c14  08 10 83 e2                                      add r1, r3, #8
003a1c18  f4 30 83 e2                                      add r3, r3, #0xf4
003a1c1c  0a 00 84 e8                                      stm r4, {r1, r3}
003a1c20  24 20 84 e5                                      str r2, [r4, #0x24]
003a1c24  60 c7 fd eb                                      bl #0x3139ac
003a1c28  04 00 a0 e1                                      mov r0, r4
003a1c2c  59 fa ff eb                                      bl #0x3a0598
003a1c30  04 00 a0 e1                                      mov r0, r4
003a1c34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a1c38  90 2e 5f 00 fc 06 00 00                          .byte 0x90, 0x2e, 0x5f, 0x00, 0xfc, 0x06, 0x00, 0x00

; FUNCTION 0x003a1c40, declared_size=8, range_size=8, mode=arm
; class-group: OpenableContainer
; alias: _ZThn36_N17OpenableContainerD0Ev
; demangled: non-virtual thunk to OpenableContainer::~OpenableContainer()
; decoder-mode: arm
003a1c40  24 00 40 e2                                      sub r0, r0, #0x24
003a1c44  ff ff ff ea                                      b #0x3a1c48

; FUNCTION 0x003a1c48, declared_size=28, range_size=28, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainerD0Ev
; demangled: OpenableContainer::~OpenableContainer()
; decoder-mode: arm
003a1c48  10 40 2d e9                                      push {r4, lr}
003a1c4c  00 40 a0 e1                                      mov r4, r0
003a1c50  e7 ff ff eb                                      bl #0x3a1bf4
003a1c54  04 00 a0 e1                                      mov r0, r4
003a1c58  f8 b9 fd eb                                      bl #0x310440
003a1c5c  04 00 a0 e1                                      mov r0, r4
003a1c60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a1c64, declared_size=76, range_size=76, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainerD2Ev
; demangled: OpenableContainer::~OpenableContainer()
; decoder-mode: arm
003a1c64  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003a1c68  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003a1c6c  10 40 2d e9                                      push {r4, lr}
003a1c70  02 20 8f e0                                      add r2, pc, r2
003a1c74  03 30 92 e7                                      ldr r3, [r2, r3]
003a1c78  00 40 a0 e1                                      mov r4, r0
003a1c7c  6f 0e 80 e2                                      add r0, r0, #0x6f0
003a1c80  01 2c 83 e2                                      add r2, r3, #0x100
003a1c84  08 10 83 e2                                      add r1, r3, #8
003a1c88  f4 30 83 e2                                      add r3, r3, #0xf4
003a1c8c  0a 00 84 e8                                      stm r4, {r1, r3}
003a1c90  24 20 84 e5                                      str r2, [r4, #0x24]
003a1c94  44 c7 fd eb                                      bl #0x3139ac
003a1c98  04 00 a0 e1                                      mov r0, r4
003a1c9c  3d fa ff eb                                      bl #0x3a0598
003a1ca0  04 00 a0 e1                                      mov r0, r4
003a1ca4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a1ca8  20 2e 5f 00 fc 06 00 00                          .byte 0x20, 0x2e, 0x5f, 0x00, 0xfc, 0x06, 0x00, 0x00

; FUNCTION 0x003a1cb0, declared_size=124, range_size=124, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainerC1EN10ObjectBase6GO_IDSE
; demangled: OpenableContainer::OpenableContainer(ObjectBase::GO_IDS)
; decoder-mode: arm
003a1cb0  70 40 2d e9                                      push {r4, r5, r6, lr}
003a1cb4  68 50 9f e5                                      ldr r5, [pc, #0x68]
003a1cb8  00 40 a0 e1                                      mov r4, r0
003a1cbc  b1 fa ff eb                                      bl #0x3a0788
003a1cc0  60 30 9f e5                                      ldr r3, [pc, #0x60]
003a1cc4  05 50 8f e0                                      add r5, pc, r5
003a1cc8  6f 2e 84 e2                                      add r2, r4, #0x6f0
003a1ccc  03 30 95 e7                                      ldr r3, [r5, r3]
003a1cd0  02 00 a0 e1                                      mov r0, r2
003a1cd4  00 27 84 e5                                      str r2, [r4, #0x700]
003a1cd8  08 c0 83 e2                                      add ip, r3, #8
003a1cdc  01 1c 83 e2                                      add r1, r3, #0x100
003a1ce0  f4 30 83 e2                                      add r3, r3, #0xf4
003a1ce4  04 30 84 e5                                      str r3, [r4, #4]
003a1ce8  24 10 84 e5                                      str r1, [r4, #0x24]
003a1cec  04 27 84 e5                                      str r2, [r4, #0x704]
003a1cf0  00 c0 84 e5                                      str ip, [r4]
003a1cf4  10 10 a0 e3                                      mov r1, #0x10
003a1cf8  5f be fd eb                                      bl #0x31167c
003a1cfc  00 27 94 e5                                      ldr r2, [r4, #0x700]
003a1d00  00 10 a0 e3                                      mov r1, #0
003a1d04  01 30 a0 e3                                      mov r3, #1
003a1d08  00 10 c2 e5                                      strb r1, [r2]
003a1d0c  00 20 e0 e3                                      mvn r2, #0
003a1d10  0c 37 c4 e5                                      strb r3, [r4, #0x70c]
003a1d14  10 27 84 e5                                      str r2, [r4, #0x710]
003a1d18  08 37 84 e5                                      str r3, [r4, #0x708]
003a1d1c  04 00 a0 e1                                      mov r0, r4
003a1d20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a1d24  cc 2d 5f 00 fc 06 00 00                          .byte 0xcc, 0x2d, 0x5f, 0x00, 0xfc, 0x06, 0x00, 0x00

; FUNCTION 0x003a1d2c, declared_size=124, range_size=124, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainerC2EN10ObjectBase6GO_IDSE
; demangled: OpenableContainer::OpenableContainer(ObjectBase::GO_IDS)
; decoder-mode: arm
003a1d2c  70 40 2d e9                                      push {r4, r5, r6, lr}
003a1d30  68 50 9f e5                                      ldr r5, [pc, #0x68]
003a1d34  00 40 a0 e1                                      mov r4, r0
003a1d38  92 fa ff eb                                      bl #0x3a0788
003a1d3c  60 30 9f e5                                      ldr r3, [pc, #0x60]
003a1d40  05 50 8f e0                                      add r5, pc, r5
003a1d44  6f 2e 84 e2                                      add r2, r4, #0x6f0
003a1d48  03 30 95 e7                                      ldr r3, [r5, r3]
003a1d4c  02 00 a0 e1                                      mov r0, r2
003a1d50  00 27 84 e5                                      str r2, [r4, #0x700]
003a1d54  08 c0 83 e2                                      add ip, r3, #8
003a1d58  01 1c 83 e2                                      add r1, r3, #0x100
003a1d5c  f4 30 83 e2                                      add r3, r3, #0xf4
003a1d60  04 30 84 e5                                      str r3, [r4, #4]
003a1d64  24 10 84 e5                                      str r1, [r4, #0x24]
003a1d68  04 27 84 e5                                      str r2, [r4, #0x704]
003a1d6c  00 c0 84 e5                                      str ip, [r4]
003a1d70  10 10 a0 e3                                      mov r1, #0x10
003a1d74  40 be fd eb                                      bl #0x31167c
003a1d78  00 27 94 e5                                      ldr r2, [r4, #0x700]
003a1d7c  00 10 a0 e3                                      mov r1, #0
003a1d80  01 30 a0 e3                                      mov r3, #1
003a1d84  00 10 c2 e5                                      strb r1, [r2]
003a1d88  00 20 e0 e3                                      mvn r2, #0
003a1d8c  0c 37 c4 e5                                      strb r3, [r4, #0x70c]
003a1d90  10 27 84 e5                                      str r2, [r4, #0x710]
003a1d94  08 37 84 e5                                      str r3, [r4, #0x708]
003a1d98  04 00 a0 e1                                      mov r0, r4
003a1d9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a1da0  50 2d 5f 00 fc 06 00 00                          .byte 0x50, 0x2d, 0x5f, 0x00, 0xfc, 0x06, 0x00, 0x00

; FUNCTION 0x003a1e84, declared_size=8, range_size=8, mode=arm
; class-group: OpenableContainer
; alias: _ZThn4_N17OpenableContainer17DeclarePropertiesEv
; demangled: non-virtual thunk to OpenableContainer::DeclareProperties()
; decoder-mode: arm
003a1e84  04 00 40 e2                                      sub r0, r0, #4
003a1e88  ff ff ff ea                                      b #0x3a1e8c

; FUNCTION 0x003a1e8c, declared_size=516, range_size=516, mode=arm
; class-group: OpenableContainer
; alias: _ZN17OpenableContainer17DeclarePropertiesEv
; demangled: OpenableContainer::DeclareProperties()
; decoder-mode: arm
003a1e8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003a1e90  d4 41 9f e5                                      ldr r4, [pc, #0x1d4]
003a1e94  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
003a1e98  4c d0 4d e2                                      sub sp, sp, #0x4c
003a1e9c  04 40 8f e0                                      add r4, pc, r4
003a1ea0  03 c0 94 e7                                      ldr ip, [r4, r3]
003a1ea4  2c 70 8d e2                                      add r7, sp, #0x2c
003a1ea8  00 b0 a0 e1                                      mov fp, r0
003a1eac  00 30 9c e5                                      ldr r3, [ip]
003a1eb0  00 c0 8d e5                                      str ip, [sp]
003a1eb4  00 90 a0 e3                                      mov sb, #0
003a1eb8  44 30 8d e5                                      str r3, [sp, #0x44]
003a1ebc  5e fa ff eb                                      bl #0x3a083c
003a1ec0  07 00 a0 e1                                      mov r0, r7
003a1ec4  10 10 a0 e3                                      mov r1, #0x10
003a1ec8  3c 70 8d e5                                      str r7, [sp, #0x3c]
003a1ecc  40 70 8d e5                                      str r7, [sp, #0x40]
003a1ed0  e9 bd fd eb                                      bl #0x31167c
003a1ed4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
003a1ed8  14 80 8d e2                                      add r8, sp, #0x14
003a1edc  08 00 a0 e1                                      mov r0, r8
003a1ee0  00 90 c3 e5                                      strb sb, [r3]
003a1ee4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003a1ee8  40 10 9d e5                                      ldr r1, [sp, #0x40]
003a1eec  24 80 8d e5                                      str r8, [sp, #0x24]
003a1ef0  28 80 8d e5                                      str r8, [sp, #0x28]
003a1ef4  fb bd fd eb                                      bl #0x3116e8
003a1ef8  09 10 a0 e1                                      mov r1, sb
003a1efc  38 00 a0 e3                                      mov r0, #0x38
003a1f00  9a b9 fd eb                                      bl #0x310570
003a1f04  68 31 9f e5                                      ldr r3, [pc, #0x168]
003a1f08  68 a1 9f e5                                      ldr sl, [pc, #0x168]
003a1f0c  00 60 a0 e1                                      mov r6, r0
003a1f10  03 30 94 e7                                      ldr r3, [r4, r3]
003a1f14  0a a0 8f e0                                      add sl, pc, sl
003a1f18  0a 10 a0 e1                                      mov r1, sl
003a1f1c  08 30 83 e2                                      add r3, r3, #8
003a1f20  08 30 80 e4                                      str r3, [r0], #8
003a1f24  10 20 8d e2                                      add r2, sp, #0x10
003a1f28  04 30 8d e5                                      str r3, [sp, #4]
003a1f2c  6e c8 fd eb                                      bl #0x3140ec
003a1f30  44 21 9f e5                                      ldr r2, [pc, #0x144]
003a1f34  04 50 8b e2                                      add r5, fp, #4
003a1f38  6f 1e 8b e2                                      add r1, fp, #0x6f0
003a1f3c  02 20 94 e7                                      ldr r2, [r4, r2]
003a1f40  06 00 a0 e1                                      mov r0, r6
003a1f44  01 10 65 e0                                      rsb r1, r5, r1
003a1f48  08 20 82 e2                                      add r2, r2, #8
003a1f4c  04 10 86 e5                                      str r1, [r6, #4]
003a1f50  20 20 80 e4                                      str r2, [r0], #0x20
003a1f54  30 00 86 e5                                      str r0, [r6, #0x30]
003a1f58  34 00 86 e5                                      str r0, [r6, #0x34]
003a1f5c  28 10 9d e5                                      ldr r1, [sp, #0x28]
003a1f60  24 20 9d e5                                      ldr r2, [sp, #0x24]
003a1f64  df bd fd eb                                      bl #0x3116e8
003a1f68  06 20 a0 e1                                      mov r2, r6
003a1f6c  0a 10 a0 e1                                      mov r1, sl
003a1f70  05 00 a0 e1                                      mov r0, r5
003a1f74  5a c7 05 eb                                      bl #0x513ce4
003a1f78  08 00 a0 e1                                      mov r0, r8
003a1f7c  8a c6 fd eb                                      bl #0x3139ac
003a1f80  07 00 a0 e1                                      mov r0, r7
003a1f84  88 c6 fd eb                                      bl #0x3139ac
003a1f88  09 10 a0 e1                                      mov r1, sb
003a1f8c  24 00 a0 e3                                      mov r0, #0x24
003a1f90  76 b9 fd eb                                      bl #0x310570
003a1f94  e4 70 9f e5                                      ldr r7, [pc, #0xe4]
003a1f98  04 30 9d e5                                      ldr r3, [sp, #4]
003a1f9c  00 60 a0 e1                                      mov r6, r0
003a1fa0  07 70 8f e0                                      add r7, pc, r7
003a1fa4  08 30 80 e4                                      str r3, [r0], #8
003a1fa8  07 10 a0 e1                                      mov r1, r7
003a1fac  0c 20 8d e2                                      add r2, sp, #0xc
003a1fb0  04 30 8d e5                                      str r3, [sp, #4]
003a1fb4  4c c8 fd eb                                      bl #0x3140ec
003a1fb8  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
003a1fbc  07 bc 8b e2                                      add fp, fp, #0x700
003a1fc0  08 10 8b e2                                      add r1, fp, #8
003a1fc4  02 20 94 e7                                      ldr r2, [r4, r2]
003a1fc8  01 10 65 e0                                      rsb r1, r5, r1
003a1fcc  01 80 a0 e3                                      mov r8, #1
003a1fd0  08 20 82 e2                                      add r2, r2, #8
003a1fd4  04 10 86 e5                                      str r1, [r6, #4]
003a1fd8  00 20 86 e5                                      str r2, [r6]
003a1fdc  07 10 a0 e1                                      mov r1, r7
003a1fe0  06 20 a0 e1                                      mov r2, r6
003a1fe4  20 80 86 e5                                      str r8, [r6, #0x20]
003a1fe8  05 00 a0 e1                                      mov r0, r5
003a1fec  3c c7 05 eb                                      bl #0x513ce4
003a1ff0  09 10 a0 e1                                      mov r1, sb
003a1ff4  24 00 a0 e3                                      mov r0, #0x24
003a1ff8  5c b9 fd eb                                      bl #0x310570
003a1ffc  84 70 9f e5                                      ldr r7, [pc, #0x84]
003a2000  04 30 9d e5                                      ldr r3, [sp, #4]
003a2004  00 60 a0 e1                                      mov r6, r0
003a2008  07 70 8f e0                                      add r7, pc, r7
003a200c  08 30 80 e4                                      str r3, [r0], #8
003a2010  07 10 a0 e1                                      mov r1, r7
003a2014  08 20 8d e2                                      add r2, sp, #8
003a2018  33 c8 fd eb                                      bl #0x3140ec
003a201c  68 30 9f e5                                      ldr r3, [pc, #0x68]
003a2020  0c b0 8b e2                                      add fp, fp, #0xc
003a2024  0b b0 65 e0                                      rsb fp, r5, fp
003a2028  03 30 94 e7                                      ldr r3, [r4, r3]
003a202c  06 20 a0 e1                                      mov r2, r6
003a2030  04 b0 86 e5                                      str fp, [r6, #4]
003a2034  08 30 83 e2                                      add r3, r3, #8
003a2038  00 30 86 e5                                      str r3, [r6]
003a203c  20 80 c6 e5                                      strb r8, [r6, #0x20]
003a2040  05 00 a0 e1                                      mov r0, r5
003a2044  07 10 a0 e1                                      mov r1, r7
003a2048  25 c7 05 eb                                      bl #0x513ce4
003a204c  00 c0 9d e5                                      ldr ip, [sp]
003a2050  44 20 9d e5                                      ldr r2, [sp, #0x44]
003a2054  00 30 9c e5                                      ldr r3, [ip]
003a2058  03 00 52 e1                                      cmp r2, r3
003a205c  01 00 00 1a                                      bne #0x3a2068
003a2060  4c d0 8d e2                                      add sp, sp, #0x4c
003a2064  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003a2068  a8 b0 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003a206c  f4 2b 5f 00 ac 40 00 00 30 23 00 00 84 11 52 00  .byte 0xf4, 0x2b, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x23, 0x00, 0x00, 0x84, 0x11, 0x52, 0x00
003a207c  94 34 00 00 08 11 52 00 90 25 00 00 a8 10 52 00  .byte 0x94, 0x34, 0x00, 0x00, 0x08, 0x11, 0x52, 0x00, 0x90, 0x25, 0x00, 0x00, 0xa8, 0x10, 0x52, 0x00
003a208c  4c 3e 00 00                                      .byte 0x4c, 0x3e, 0x00, 0x00
