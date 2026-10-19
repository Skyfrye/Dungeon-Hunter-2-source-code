; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00657894, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerC2EPNS_7IDeviceE
; demangled: glitch::collada::CResFileManager::CResFileManager(glitch::IDevice*)
; decoder-mode: arm
00657894  68 20 9f e5                                      ldr r2, [pc, #0x68]
00657898  68 30 9f e5                                      ldr r3, [pc, #0x68]
0065789c  68 c0 9f e5                                      ldr ip, [pc, #0x68]
006578a0  02 20 8f e0                                      add r2, pc, r2
006578a4  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
006578a8  03 70 92 e7                                      ldr r7, [r2, r3]
006578ac  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
006578b0  0c c0 92 e7                                      ldr ip, [r2, ip]
006578b4  00 40 a0 e3                                      mov r4, #0
006578b8  03 60 92 e7                                      ldr r6, [r2, r3]
006578bc  00 50 a0 e1                                      mov r5, r0
006578c0  08 80 8c e2                                      add r8, ip, #8
006578c4  01 c0 a0 e3                                      mov ip, #1
006578c8  00 11 80 e8                                      stm r0, {r8, ip}
006578cc  0c 40 80 e5                                      str r4, [r0, #0xc]
006578d0  08 40 e5 e5                                      strb r4, [r5, #8]!
006578d4  14 50 80 e5                                      str r5, [r0, #0x14]
006578d8  20 10 80 e5                                      str r1, [r0, #0x20]
006578dc  24 70 80 e5                                      str r7, [r0, #0x24]
006578e0  29 40 c0 e5                                      strb r4, [r0, #0x29]
006578e4  2b c0 c0 e5                                      strb ip, [r0, #0x2b]
006578e8  10 50 80 e5                                      str r5, [r0, #0x10]
006578ec  18 40 80 e5                                      str r4, [r0, #0x18]
006578f0  28 c0 c0 e5                                      strb ip, [r0, #0x28]
006578f4  2a c0 c0 e5                                      strb ip, [r0, #0x2a]
006578f8  00 00 86 e5                                      str r0, [r6]
006578fc  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
00657900  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00657904  f0 d1 33 00 ec 1b 00 00 58 22 00 00 48 44 00 00  .byte 0xf0, 0xd1, 0x33, 0x00, 0xec, 0x1b, 0x00, 0x00, 0x58, 0x22, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x00657914, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerC1EPNS_7IDeviceE
; demangled: glitch::collada::CResFileManager::CResFileManager(glitch::IDevice*)
; decoder-mode: arm
00657914  68 20 9f e5                                      ldr r2, [pc, #0x68]
00657918  68 30 9f e5                                      ldr r3, [pc, #0x68]
0065791c  68 c0 9f e5                                      ldr ip, [pc, #0x68]
00657920  02 20 8f e0                                      add r2, pc, r2
00657924  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00657928  03 70 92 e7                                      ldr r7, [r2, r3]
0065792c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00657930  0c c0 92 e7                                      ldr ip, [r2, ip]
00657934  00 40 a0 e3                                      mov r4, #0
00657938  03 60 92 e7                                      ldr r6, [r2, r3]
0065793c  00 50 a0 e1                                      mov r5, r0
00657940  08 80 8c e2                                      add r8, ip, #8
00657944  01 c0 a0 e3                                      mov ip, #1
00657948  00 11 80 e8                                      stm r0, {r8, ip}
0065794c  0c 40 80 e5                                      str r4, [r0, #0xc]
00657950  08 40 e5 e5                                      strb r4, [r5, #8]!
00657954  14 50 80 e5                                      str r5, [r0, #0x14]
00657958  20 10 80 e5                                      str r1, [r0, #0x20]
0065795c  24 70 80 e5                                      str r7, [r0, #0x24]
00657960  29 40 c0 e5                                      strb r4, [r0, #0x29]
00657964  2b c0 c0 e5                                      strb ip, [r0, #0x2b]
00657968  10 50 80 e5                                      str r5, [r0, #0x10]
0065796c  18 40 80 e5                                      str r4, [r0, #0x18]
00657970  28 c0 c0 e5                                      strb ip, [r0, #0x28]
00657974  2a c0 c0 e5                                      strb ip, [r0, #0x2a]
00657978  00 00 86 e5                                      str r0, [r6]
0065797c  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
00657980  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00657984  70 d1 33 00 ec 1b 00 00 58 22 00 00 48 44 00 00  .byte 0x70, 0xd1, 0x33, 0x00, 0xec, 0x1b, 0x00, 0x00, 0x58, 0x22, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x00657994, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager12checkVersionEPNS_2io9IReadFileE
; demangled: glitch::collada::CResFileManager::checkVersion(glitch::io::IReadFile*)
; decoder-mode: arm
00657994  00 00 a0 e3                                      mov r0, #0
00657998  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065799c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager12checkVersionEPKc
; demangled: glitch::collada::CResFileManager::checkVersion(char const*)
; decoder-mode: arm
0065799c  70 40 2d e9                                      push {r4, r5, r6, lr}
006579a0  20 30 90 e5                                      ldr r3, [r0, #0x20]
006579a4  00 50 a0 e1                                      mov r5, r0
006579a8  34 30 93 e5                                      ldr r3, [r3, #0x34]
006579ac  03 00 a0 e1                                      mov r0, r3
006579b0  00 30 93 e5                                      ldr r3, [r3]
006579b4  0f e0 a0 e1                                      mov lr, pc
006579b8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006579bc  00 40 a0 e1                                      mov r4, r0
006579c0  04 10 a0 e1                                      mov r1, r4
006579c4  05 00 a0 e1                                      mov r0, r5
006579c8  f1 ff ff eb                                      bl #0x657994
006579cc  00 50 a0 e1                                      mov r5, r0
006579d0  04 00 a0 e1                                      mov r0, r4
006579d4  ea 16 f3 eb                                      bl #0x31d584
006579d8  05 00 a0 e1                                      mov r0, r5
006579dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00657bd0, declared_size=188, range_size=188, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager11getReadFileEPNS_2io9IReadFileE
; demangled: glitch::collada::CResFileManager::getReadFile(glitch::io::IReadFile*)
; decoder-mode: arm
00657bd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00657bd4  2a 30 d0 e5                                      ldrb r3, [r0, #0x2a]
00657bd8  20 d0 4d e2                                      sub sp, sp, #0x20
00657bdc  00 40 a0 e1                                      mov r4, r0
00657be0  00 00 53 e3                                      cmp r3, #0
00657be4  01 50 a0 e1                                      mov r5, r1
00657be8  0e 00 00 1a                                      bne #0x657c28
00657bec  2b 30 d4 e5                                      ldrb r3, [r4, #0x2b]
00657bf0  00 00 53 e3                                      cmp r3, #0
00657bf4  06 00 00 1a                                      bne #0x657c14
00657bf8  04 30 95 e5                                      ldr r3, [r5, #4]
00657bfc  05 60 a0 e1                                      mov r6, r5
00657c00  01 30 83 e2                                      add r3, r3, #1
00657c04  04 30 85 e5                                      str r3, [r5, #4]
00657c08  06 00 a0 e1                                      mov r0, r6
00657c0c  20 d0 8d e2                                      add sp, sp, #0x20
00657c10  70 80 bd e8                                      pop {r4, r5, r6, pc}
00657c14  2a 30 d4 e5                                      ldrb r3, [r4, #0x2a]
00657c18  00 00 53 e3                                      cmp r3, #0
00657c1c  00 30 a0 13                                      movne r3, #0
00657c20  2a 30 c4 15                                      strbne r3, [r4, #0x2a]
00657c24  f3 ff ff ea                                      b #0x657bf8
00657c28  01 00 a0 e1                                      mov r0, r1
00657c2c  3e 7c fc eb                                      bl #0x576d2c
00657c30  00 00 50 e3                                      cmp r0, #0
00657c34  ec ff ff 0a                                      beq #0x657bec
00657c38  00 10 a0 e3                                      mov r1, #0
00657c3c  01 20 a0 e1                                      mov r2, r1
00657c40  00 30 95 e5                                      ldr r3, [r5]
00657c44  05 00 a0 e1                                      mov r0, r5
00657c48  0f e0 a0 e1                                      mov lr, pc
00657c4c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00657c50  01 20 a0 e3                                      mov r2, #1
00657c54  05 10 a0 e1                                      mov r1, r5
00657c58  02 30 a0 e1                                      mov r3, r2
00657c5c  0d 00 a0 e1                                      mov r0, sp
00657c60  cf 80 fc eb                                      bl #0x577fa4
00657c64  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00657c68  0d 00 a0 e1                                      mov r0, sp
00657c6c  0d 40 a0 e1                                      mov r4, sp
00657c70  01 10 8f e0                                      add r1, pc, r1
00657c74  6a 82 fc eb                                      bl #0x578624
00657c78  00 60 a0 e1                                      mov r6, r0
00657c7c  0d 00 a0 e1                                      mov r0, sp
00657c80  00 7e fc eb                                      bl #0x577488
00657c84  df ff ff ea                                      b #0x657c08
; mapping-symbol data/literal pool
00657c88  d8 d9 28 00                                      .byte 0xd8, 0xd9, 0x28, 0x00

; FUNCTION 0x006582c4, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerD1Ev
; demangled: glitch::collada::CResFileManager::~CResFileManager()
; decoder-mode: arm
006582c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006582c8  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
006582cc  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
006582d0  10 60 90 e5                                      ldr r6, [r0, #0x10]
006582d4  07 70 8f e0                                      add r7, pc, r7
006582d8  03 30 97 e7                                      ldr r3, [r7, r3]
006582dc  00 50 a0 e1                                      mov r5, r0
006582e0  08 40 80 e2                                      add r4, r0, #8
006582e4  08 30 83 e2                                      add r3, r3, #8
006582e8  00 30 80 e5                                      str r3, [r0]
006582ec  06 00 54 e1                                      cmp r4, r6
006582f0  0c 00 00 0a                                      beq #0x658328
006582f4  28 00 96 e5                                      ldr r0, [r6, #0x28]
006582f8  a1 14 f3 eb                                      bl #0x31d584
006582fc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00658300  00 00 52 e3                                      cmp r2, #0
00658304  01 00 00 1a                                      bne #0x658310
00658308  16 00 00 ea                                      b #0x658368
0065830c  03 20 a0 e1                                      mov r2, r3
00658310  08 30 92 e5                                      ldr r3, [r2, #8]
00658314  00 00 53 e3                                      cmp r3, #0
00658318  fb ff ff 1a                                      bne #0x65830c
0065831c  02 60 a0 e1                                      mov r6, r2
00658320  06 00 54 e1                                      cmp r4, r6
00658324  f2 ff ff 1a                                      bne #0x6582f4
00658328  74 30 9f e5                                      ldr r3, [pc, #0x74]
0065832c  00 60 a0 e3                                      mov r6, #0
00658330  03 30 97 e7                                      ldr r3, [r7, r3]
00658334  00 60 83 e5                                      str r6, [r3]
00658338  18 30 95 e5                                      ldr r3, [r5, #0x18]
0065833c  06 00 53 e1                                      cmp r3, r6
00658340  06 00 00 0a                                      beq #0x658360
00658344  04 00 a0 e1                                      mov r0, r4
00658348  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0065834c  c7 ff ff eb                                      bl #0x658270
00658350  14 40 85 e5                                      str r4, [r5, #0x14]
00658354  18 60 85 e5                                      str r6, [r5, #0x18]
00658358  10 40 85 e5                                      str r4, [r5, #0x10]
0065835c  0c 60 85 e5                                      str r6, [r5, #0xc]
00658360  05 00 a0 e1                                      mov r0, r5
00658364  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00658368  04 30 96 e5                                      ldr r3, [r6, #4]
0065836c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00658370  01 00 56 e1                                      cmp r6, r1
00658374  05 00 00 1a                                      bne #0x658390
00658378  03 60 a0 e1                                      mov r6, r3
0065837c  04 30 93 e5                                      ldr r3, [r3, #4]
00658380  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00658384  02 00 56 e1                                      cmp r6, r2
00658388  fa ff ff 0a                                      beq #0x658378
0065838c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00658390  03 00 52 e1                                      cmp r2, r3
00658394  03 60 a0 11                                      movne r6, r3
00658398  d3 ff ff ea                                      b #0x6582ec
; mapping-symbol data/literal pool
0065839c  bc c7 33 00 58 22 00 00 48 44 00 00              .byte 0xbc, 0xc7, 0x33, 0x00, 0x58, 0x22, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x006583a8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerD0Ev
; demangled: glitch::collada::CResFileManager::~CResFileManager()
; decoder-mode: arm
006583a8  10 40 2d e9                                      push {r4, lr}
006583ac  00 40 a0 e1                                      mov r4, r0
006583b0  c3 ff ff eb                                      bl #0x6582c4
006583b4  04 00 a0 e1                                      mov r0, r4
006583b8  bc d7 f2 eb                                      bl #0x30e2b0
006583bc  04 00 a0 e1                                      mov r0, r4
006583c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006583c4, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerD2Ev
; demangled: glitch::collada::CResFileManager::~CResFileManager()
; decoder-mode: arm
006583c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006583c8  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
006583cc  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
006583d0  10 60 90 e5                                      ldr r6, [r0, #0x10]
006583d4  07 70 8f e0                                      add r7, pc, r7
006583d8  03 30 97 e7                                      ldr r3, [r7, r3]
006583dc  00 50 a0 e1                                      mov r5, r0
006583e0  08 40 80 e2                                      add r4, r0, #8
006583e4  08 30 83 e2                                      add r3, r3, #8
006583e8  00 30 80 e5                                      str r3, [r0]
006583ec  06 00 54 e1                                      cmp r4, r6
006583f0  0c 00 00 0a                                      beq #0x658428
006583f4  28 00 96 e5                                      ldr r0, [r6, #0x28]
006583f8  61 14 f3 eb                                      bl #0x31d584
006583fc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00658400  00 00 52 e3                                      cmp r2, #0
00658404  01 00 00 1a                                      bne #0x658410
00658408  16 00 00 ea                                      b #0x658468
0065840c  03 20 a0 e1                                      mov r2, r3
00658410  08 30 92 e5                                      ldr r3, [r2, #8]
00658414  00 00 53 e3                                      cmp r3, #0
00658418  fb ff ff 1a                                      bne #0x65840c
0065841c  02 60 a0 e1                                      mov r6, r2
00658420  06 00 54 e1                                      cmp r4, r6
00658424  f2 ff ff 1a                                      bne #0x6583f4
00658428  74 30 9f e5                                      ldr r3, [pc, #0x74]
0065842c  00 60 a0 e3                                      mov r6, #0
00658430  03 30 97 e7                                      ldr r3, [r7, r3]
00658434  00 60 83 e5                                      str r6, [r3]
00658438  18 30 95 e5                                      ldr r3, [r5, #0x18]
0065843c  06 00 53 e1                                      cmp r3, r6
00658440  06 00 00 0a                                      beq #0x658460
00658444  04 00 a0 e1                                      mov r0, r4
00658448  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0065844c  87 ff ff eb                                      bl #0x658270
00658450  14 40 85 e5                                      str r4, [r5, #0x14]
00658454  18 60 85 e5                                      str r6, [r5, #0x18]
00658458  10 40 85 e5                                      str r4, [r5, #0x10]
0065845c  0c 60 85 e5                                      str r6, [r5, #0xc]
00658460  05 00 a0 e1                                      mov r0, r5
00658464  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00658468  04 30 96 e5                                      ldr r3, [r6, #4]
0065846c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00658470  01 00 56 e1                                      cmp r6, r1
00658474  05 00 00 1a                                      bne #0x658490
00658478  03 60 a0 e1                                      mov r6, r3
0065847c  04 30 93 e5                                      ldr r3, [r3, #4]
00658480  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00658484  02 00 56 e1                                      cmp r6, r2
00658488  fa ff ff 0a                                      beq #0x658478
0065848c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00658490  03 00 52 e1                                      cmp r2, r3
00658494  03 60 a0 11                                      movne r6, r3
00658498  d3 ff ff ea                                      b #0x6583ec
; mapping-symbol data/literal pool
0065849c  bc c6 33 00 58 22 00 00 48 44 00 00              .byte 0xbc, 0xc6, 0x33, 0x00, 0x58, 0x22, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x006584fc, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager6unloadENSt4priv17_Rb_tree_iteratorISt4pairIKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS0_8CResFileEENS2_11_MapTraitsTISG_EEEEb
; demangled: glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> > >, bool)
; decoder-mode: arm
006584fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00658500  00 30 91 e5                                      ldr r3, [r1]
00658504  08 40 80 e2                                      add r4, r0, #8
00658508  08 d0 4d e2                                      sub sp, sp, #8
0065850c  03 00 54 e1                                      cmp r4, r3
00658510  01 50 a0 e1                                      mov r5, r1
00658514  03 60 a0 03                                      moveq r6, #3
00658518  0e 00 00 0a                                      beq #0x658558
0065851c  28 00 93 e5                                      ldr r0, [r3, #0x28]
00658520  04 30 90 e5                                      ldr r3, [r0, #4]
00658524  01 00 53 e3                                      cmp r3, #1
00658528  00 60 a0 93                                      movls r6, #0
0065852c  03 00 00 9a                                      bls #0x658540
00658530  00 00 52 e3                                      cmp r2, #0
00658534  02 60 a0 03                                      moveq r6, #2
00658538  06 00 00 0a                                      beq #0x658558
0065853c  01 60 a0 e3                                      mov r6, #1
00658540  0f 14 f3 eb                                      bl #0x31d584
00658544  00 30 95 e5                                      ldr r3, [r5]
00658548  08 10 8d e2                                      add r1, sp, #8
0065854c  04 00 a0 e1                                      mov r0, r4
00658550  04 30 21 e5                                      str r3, [r1, #-4]!
00658554  d3 ff ff eb                                      bl #0x6584a8
00658558  06 00 a0 e1                                      mov r0, r6
0065855c  08 d0 8d e2                                      add sp, sp, #8
00658560  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00658564, declared_size=480, range_size=480, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager23updateExternalResourcesEPNS0_8CResFileEPNS_2io9IReadFileE
; demangled: glitch::collada::CResFileManager::updateExternalResources(glitch::collada::CResFile*, glitch::io::IReadFile*)
; decoder-mode: arm
00658564  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
00658568  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065856c  cc c1 9f e5                                      ldr ip, [pc, #0x1cc]
00658570  03 30 8f e0                                      add r3, pc, r3
00658574  01 b0 a0 e1                                      mov fp, r1
00658578  0c 10 93 e7                                      ldr r1, [r3, ip]
0065857c  64 d0 4d e2                                      sub sp, sp, #0x64
00658580  24 c0 8d e5                                      str ip, [sp, #0x24]
00658584  20 30 8d e5                                      str r3, [sp, #0x20]
00658588  00 c0 91 e5                                      ldr ip, [r1]
0065858c  24 30 9b e5                                      ldr r3, [fp, #0x24]
00658590  44 90 8d e2                                      add sb, sp, #0x44
00658594  5c c0 8d e5                                      str ip, [sp, #0x5c]
00658598  20 80 93 e5                                      ldr r8, [r3, #0x20]
0065859c  18 20 8d e5                                      str r2, [sp, #0x18]
006585a0  00 70 a0 e1                                      mov r7, r0
006585a4  4c 20 98 e5                                      ldr r2, [r8, #0x4c]
006585a8  10 10 a0 e3                                      mov r1, #0x10
006585ac  09 00 a0 e1                                      mov r0, sb
006585b0  10 20 8d e5                                      str r2, [sp, #0x10]
006585b4  54 90 8d e5                                      str sb, [sp, #0x54]
006585b8  58 90 8d e5                                      str sb, [sp, #0x58]
006585bc  f9 20 f3 eb                                      bl #0x3209a8
006585c0  54 30 9d e5                                      ldr r3, [sp, #0x54]
006585c4  00 20 a0 e3                                      mov r2, #0
006585c8  2c 40 8d e2                                      add r4, sp, #0x2c
006585cc  00 20 c3 e5                                      strb r2, [r3]
006585d0  20 30 97 e5                                      ldr r3, [r7, #0x20]
006585d4  0c 20 8b e2                                      add r2, fp, #0xc
006585d8  04 00 a0 e1                                      mov r0, r4
006585dc  34 30 93 e5                                      ldr r3, [r3, #0x34]
006585e0  03 10 a0 e1                                      mov r1, r3
006585e4  00 30 93 e5                                      ldr r3, [r3]
006585e8  0f e0 a0 e1                                      mov lr, pc
006585ec  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006585f0  09 00 a0 e1                                      mov r0, sb
006585f4  40 10 9d e5                                      ldr r1, [sp, #0x40]
006585f8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006585fc  61 21 f3 eb                                      bl #0x320b88
00658600  40 00 9d e5                                      ldr r0, [sp, #0x40]
00658604  04 00 50 e1                                      cmp r0, r4
00658608  02 00 00 0a                                      beq #0x658618
0065860c  00 00 50 e3                                      cmp r0, #0
00658610  00 00 00 0a                                      beq #0x658618
00658614  8d df f2 eb                                      bl #0x310450
00658618  20 30 97 e5                                      ldr r3, [r7, #0x20]
0065861c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00658620  10 30 93 e5                                      ldr r3, [r3, #0x10]
00658624  00 00 5c e3                                      cmp ip, #0
00658628  e0 30 93 e5                                      ldr r3, [r3, #0xe0]
0065862c  14 30 8d e5                                      str r3, [sp, #0x14]
00658630  2c 00 00 da                                      ble #0x6586e8
00658634  00 50 a0 e3                                      mov r5, #0
00658638  28 00 8d e2                                      add r0, sp, #0x28
0065863c  05 60 a0 e1                                      mov r6, r5
00658640  1c 00 8d e5                                      str r0, [sp, #0x1c]
00658644  50 40 98 e5                                      ldr r4, [r8, #0x50]
00658648  dc c9 fe eb                                      bl #0x60adc0
0065864c  00 a0 a0 e1                                      mov sl, r0
00658650  03 00 a0 e3                                      mov r0, #3
00658654  c9 c9 fe eb                                      bl #0x60ad80
00658658  24 00 97 e5                                      ldr r0, [r7, #0x24]
0065865c  05 40 84 e0                                      add r4, r4, r5
00658660  09 30 a0 e1                                      mov r3, sb
00658664  00 c0 90 e5                                      ldr ip, [r0]
00658668  00 10 a0 e1                                      mov r1, r0
0065866c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00658670  0b 20 a0 e1                                      mov r2, fp
00658674  08 40 8d e5                                      str r4, [sp, #8]
00658678  00 00 8d e5                                      str r0, [sp]
0065867c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00658680  04 00 8d e5                                      str r0, [sp, #4]
00658684  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00658688  0f e0 a0 e1                                      mov lr, pc
0065868c  08 f0 9c e5                                      ldr pc, [ip, #8]
00658690  0a 00 a0 e1                                      mov r0, sl
00658694  b9 c9 fe eb                                      bl #0x60ad80
00658698  28 30 9d e5                                      ldr r3, [sp, #0x28]
0065869c  00 00 53 e3                                      cmp r3, #0
006586a0  1f 00 00 0a                                      beq #0x658724
006586a4  04 20 93 e5                                      ldr r2, [r3, #4]
006586a8  01 20 82 e2                                      add r2, r2, #1
006586ac  04 20 83 e5                                      str r2, [r3, #4]
006586b0  10 00 94 e5                                      ldr r0, [r4, #0x10]
006586b4  10 30 84 e5                                      str r3, [r4, #0x10]
006586b8  00 00 50 e3                                      cmp r0, #0
006586bc  00 00 00 0a                                      beq #0x6586c4
006586c0  af 13 f3 eb                                      bl #0x31d584
006586c4  28 00 9d e5                                      ldr r0, [sp, #0x28]
006586c8  00 00 50 e3                                      cmp r0, #0
006586cc  00 00 00 0a                                      beq #0x6586d4
006586d0  ab 13 f3 eb                                      bl #0x31d584
006586d4  10 10 9d e5                                      ldr r1, [sp, #0x10]
006586d8  01 60 86 e2                                      add r6, r6, #1
006586dc  14 50 85 e2                                      add r5, r5, #0x14
006586e0  01 00 56 e1                                      cmp r6, r1
006586e4  d6 ff ff 1a                                      bne #0x658644
006586e8  58 00 9d e5                                      ldr r0, [sp, #0x58]
006586ec  09 00 50 e1                                      cmp r0, sb
006586f0  02 00 00 0a                                      beq #0x658700
006586f4  00 00 50 e3                                      cmp r0, #0
006586f8  00 00 00 0a                                      beq #0x658700
006586fc  53 df f2 eb                                      bl #0x310450
00658700  24 20 9d e5                                      ldr r2, [sp, #0x24]
00658704  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00658708  02 30 9c e7                                      ldr r3, [ip, r2]
0065870c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00658710  00 30 93 e5                                      ldr r3, [r3]
00658714  03 00 52 e1                                      cmp r2, r3
00658718  06 00 00 1a                                      bne #0x658738
0065871c  64 d0 8d e2                                      add sp, sp, #0x64
00658720  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00658724  10 00 94 e5                                      ldr r0, [r4, #0x10]
00658728  10 30 84 e5                                      str r3, [r4, #0x10]
0065872c  00 00 50 e3                                      cmp r0, #0
00658730  e2 ff ff 1a                                      bne #0x6586c0
00658734  e2 ff ff ea                                      b #0x6586c4
00658738  f4 d6 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0065873c  20 c5 33 00 ac 40 00 00                          .byte 0x20, 0xc5, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00658c90, declared_size=2064, range_size=2064, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE
; demangled: glitch::collada::CResFileManager::postLoadProcess(glitch::collada::CResFile*, glitch::io::IReadFile*)
; decoder-mode: arm
00658c90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00658c94  dc 37 9f e5                                      ldr r3, [pc, #0x7dc]
00658c98  dc 47 9f e5                                      ldr r4, [pc, #0x7dc]
00658c9c  84 d0 4d e2                                      sub sp, sp, #0x84
00658ca0  03 30 8f e0                                      add r3, pc, r3
00658ca4  14 30 8d e5                                      str r3, [sp, #0x14]
00658ca8  d0 57 9f e5                                      ldr r5, [pc, #0x7d0]
00658cac  04 30 93 e7                                      ldr r3, [r3, r4]
00658cb0  28 40 8d e5                                      str r4, [sp, #0x28]
00658cb4  30 50 8d e5                                      str r5, [sp, #0x30]
00658cb8  01 a0 a0 e1                                      mov sl, r1
00658cbc  00 e0 93 e5                                      ldr lr, [r3]
00658cc0  14 40 9d e5                                      ldr r4, [sp, #0x14]
00658cc4  04 10 91 e5                                      ldr r1, [r1, #4]
00658cc8  24 c0 9a e5                                      ldr ip, [sl, #0x24]
00658ccc  05 30 94 e7                                      ldr r3, [r4, r5]
00658cd0  7c e0 8d e5                                      str lr, [sp, #0x7c]
00658cd4  20 40 9c e5                                      ldr r4, [ip, #0x20]
00658cd8  00 00 51 e3                                      cmp r1, #0
00658cdc  01 10 81 12                                      addne r1, r1, #1
00658ce0  44 30 8d e5                                      str r3, [sp, #0x44]
00658ce4  18 20 8d e5                                      str r2, [sp, #0x18]
00658ce8  40 a0 8d e5                                      str sl, [sp, #0x40]
00658cec  04 10 8a 15                                      strne r1, [sl, #4]
00658cf0  10 30 94 e5                                      ldr r3, [r4, #0x10]
00658cf4  00 b0 a0 e1                                      mov fp, r0
00658cf8  00 00 53 e3                                      cmp r3, #0
00658cfc  a2 01 00 1a                                      bne #0x65938c
00658d00  40 50 8d e2                                      add r5, sp, #0x40
00658d04  05 00 a0 e1                                      mov r0, r5
00658d08  66 d5 fe eb                                      bl #0x60e2a8
00658d0c  70 17 9f e5                                      ldr r1, [pc, #0x770]
00658d10  01 10 8f e0                                      add r1, pc, r1
00658d14  80 d5 f2 eb                                      bl #0x30e31c
00658d18  00 00 50 e3                                      cmp r0, #0
00658d1c  ae 01 00 1a                                      bne #0x6593dc
00658d20  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
00658d24  00 00 53 e3                                      cmp r3, #0
00658d28  04 30 84 05                                      streq r3, [r4, #4]
00658d2c  9b 01 00 1a                                      bne #0x6593a0
00658d30  24 80 94 e5                                      ldr r8, [r4, #0x24]
00658d34  00 00 58 e3                                      cmp r8, #0
00658d38  08 00 00 da                                      ble #0x658d60
00658d3c  00 60 a0 e3                                      mov r6, #0
00658d40  28 70 94 e5                                      ldr r7, [r4, #0x28]
00658d44  86 72 87 e0                                      add r7, r7, r6, lsl #5
00658d48  07 00 a0 e1                                      mov r0, r7
00658d4c  63 e3 fe eb                                      bl #0x611ae0
00658d50  01 60 86 e2                                      add r6, r6, #1
00658d54  08 00 56 e1                                      cmp r6, r8
00658d58  14 00 87 e5                                      str r0, [r7, #0x14]
00658d5c  f7 ff ff 1a                                      bne #0x658d40
00658d60  64 e0 8d e2                                      add lr, sp, #0x64
00658d64  1c e0 8d e5                                      str lr, [sp, #0x1c]
00658d68  0e 00 a0 e1                                      mov r0, lr
00658d6c  10 10 a0 e3                                      mov r1, #0x10
00658d70  4c 90 94 e5                                      ldr sb, [r4, #0x4c]
00658d74  74 e0 8d e5                                      str lr, [sp, #0x74]
00658d78  78 e0 8d e5                                      str lr, [sp, #0x78]
00658d7c  09 1f f3 eb                                      bl #0x3209a8
00658d80  74 30 9d e5                                      ldr r3, [sp, #0x74]
00658d84  00 20 a0 e3                                      mov r2, #0
00658d88  4c 60 8d e2                                      add r6, sp, #0x4c
00658d8c  00 20 c3 e5                                      strb r2, [r3]
00658d90  20 30 9b e5                                      ldr r3, [fp, #0x20]
00658d94  0c 20 8a e2                                      add r2, sl, #0xc
00658d98  06 00 a0 e1                                      mov r0, r6
00658d9c  34 30 93 e5                                      ldr r3, [r3, #0x34]
00658da0  03 10 a0 e1                                      mov r1, r3
00658da4  00 30 93 e5                                      ldr r3, [r3]
00658da8  0f e0 a0 e1                                      mov lr, pc
00658dac  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00658db0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00658db4  60 10 9d e5                                      ldr r1, [sp, #0x60]
00658db8  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00658dbc  71 1f f3 eb                                      bl #0x320b88
00658dc0  60 00 9d e5                                      ldr r0, [sp, #0x60]
00658dc4  06 00 50 e1                                      cmp r0, r6
00658dc8  02 00 00 0a                                      beq #0x658dd8
00658dcc  00 00 50 e3                                      cmp r0, #0
00658dd0  00 00 00 0a                                      beq #0x658dd8
00658dd4  9d dd f2 eb                                      bl #0x310450
00658dd8  20 30 9b e5                                      ldr r3, [fp, #0x20]
00658ddc  34 00 93 e5                                      ldr r0, [r3, #0x34]
00658de0  24 00 8d e5                                      str r0, [sp, #0x24]
00658de4  10 30 93 e5                                      ldr r3, [r3, #0x10]
00658de8  00 00 50 e3                                      cmp r0, #0
00658dec  e0 30 93 e5                                      ldr r3, [r3, #0xe0]
00658df0  20 30 8d e5                                      str r3, [sp, #0x20]
00658df4  04 30 90 15                                      ldrne r3, [r0, #4]
00658df8  01 30 83 12                                      addne r3, r3, #1
00658dfc  04 30 80 15                                      strne r3, [r0, #4]
00658e00  00 00 59 e3                                      cmp sb, #0
00658e04  36 00 00 da                                      ble #0x658ee4
00658e08  00 70 a0 e3                                      mov r7, #0
00658e0c  38 10 8d e2                                      add r1, sp, #0x38
00658e10  34 50 8d e5                                      str r5, [sp, #0x34]
00658e14  07 80 a0 e1                                      mov r8, r7
00658e18  2c 10 8d e5                                      str r1, [sp, #0x2c]
00658e1c  04 50 a0 e1                                      mov r5, r4
00658e20  03 00 00 ea                                      b #0x658e34
00658e24  01 80 88 e2                                      add r8, r8, #1
00658e28  09 00 58 e1                                      cmp r8, sb
00658e2c  14 70 87 e2                                      add r7, r7, #0x14
00658e30  29 00 00 0a                                      beq #0x658edc
00658e34  50 40 95 e5                                      ldr r4, [r5, #0x50]
00658e38  07 40 84 e0                                      add r4, r4, r7
00658e3c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00658e40  00 00 53 e3                                      cmp r3, #0
00658e44  f6 ff ff 1a                                      bne #0x658e24
00658e48  dc c7 fe eb                                      bl #0x60adc0
00658e4c  00 60 a0 e1                                      mov r6, r0
00658e50  03 00 a0 e3                                      mov r0, #3
00658e54  c9 c7 fe eb                                      bl #0x60ad80
00658e58  24 00 9b e5                                      ldr r0, [fp, #0x24]
00658e5c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00658e60  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00658e64  00 c0 90 e5                                      ldr ip, [r0]
00658e68  00 10 a0 e1                                      mov r1, r0
00658e6c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00658e70  0a 20 a0 e1                                      mov r2, sl
00658e74  00 e0 8d e5                                      str lr, [sp]
00658e78  11 00 8d e9                                      stmib sp, {r0, r4}
00658e7c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00658e80  0f e0 a0 e1                                      mov lr, pc
00658e84  08 f0 9c e5                                      ldr pc, [ip, #8]
00658e88  06 00 a0 e1                                      mov r0, r6
00658e8c  bb c7 fe eb                                      bl #0x60ad80
00658e90  38 30 9d e5                                      ldr r3, [sp, #0x38]
00658e94  00 00 53 e3                                      cmp r3, #0
00658e98  e1 ff ff 0a                                      beq #0x658e24
00658e9c  04 20 93 e5                                      ldr r2, [r3, #4]
00658ea0  01 20 82 e2                                      add r2, r2, #1
00658ea4  04 20 83 e5                                      str r2, [r3, #4]
00658ea8  10 00 94 e5                                      ldr r0, [r4, #0x10]
00658eac  10 30 84 e5                                      str r3, [r4, #0x10]
00658eb0  00 00 50 e3                                      cmp r0, #0
00658eb4  00 00 00 0a                                      beq #0x658ebc
00658eb8  b1 11 f3 eb                                      bl #0x31d584
00658ebc  38 00 9d e5                                      ldr r0, [sp, #0x38]
00658ec0  00 00 50 e3                                      cmp r0, #0
00658ec4  d6 ff ff 0a                                      beq #0x658e24
00658ec8  01 80 88 e2                                      add r8, r8, #1
00658ecc  ac 11 f3 eb                                      bl #0x31d584
00658ed0  09 00 58 e1                                      cmp r8, sb
00658ed4  14 70 87 e2                                      add r7, r7, #0x14
00658ed8  d5 ff ff 1a                                      bne #0x658e34
00658edc  05 40 a0 e1                                      mov r4, r5
00658ee0  34 50 9d e5                                      ldr r5, [sp, #0x34]
00658ee4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00658ee8  00 00 53 e3                                      cmp r3, #0
00658eec  35 00 00 da                                      ble #0x658fc8
00658ef0  90 25 9f e5                                      ldr r2, [pc, #0x590]
00658ef4  00 70 a0 e3                                      mov r7, #0
00658ef8  38 10 8d e2                                      add r1, sp, #0x38
00658efc  02 20 8f e0                                      add r2, pc, r2
00658f00  07 80 a0 e1                                      mov r8, r7
00658f04  2c 20 8d e5                                      str r2, [sp, #0x2c]
00658f08  18 10 8d e5                                      str r1, [sp, #0x18]
00658f0c  07 b0 a0 e1                                      mov fp, r7
00658f10  14 90 a0 e3                                      mov sb, #0x14
00658f14  03 a0 a0 e1                                      mov sl, r3
00658f18  20 50 8d e5                                      str r5, [sp, #0x20]
00658f1c  60 50 94 e5                                      ldr r5, [r4, #0x60]
00658f20  54 20 94 e5                                      ldr r2, [r4, #0x54]
00658f24  07 50 85 e0                                      add r5, r5, r7
00658f28  18 30 95 e5                                      ldr r3, [r5, #0x18]
00658f2c  02 00 53 e1                                      cmp r3, r2
00658f30  18 b0 85 c5                                      strgt fp, [r5, #0x18]
00658f34  1e 00 00 ca                                      bgt #0x658fb4
00658f38  10 10 95 e5                                      ldr r1, [r5, #0x10]
00658f3c  00 00 51 e3                                      cmp r1, #0
00658f40  15 00 00 da                                      ble #0x658f9c
00658f44  00 30 a0 e3                                      mov r3, #0
00658f48  03 20 a0 e1                                      mov r2, r3
00658f4c  14 c0 95 e5                                      ldr ip, [r5, #0x14]
00658f50  03 c0 8c e0                                      add ip, ip, r3
00658f54  08 00 9c e5                                      ldr r0, [ip, #8]
00658f58  0a 00 50 e3                                      cmp r0, #0xa
00658f5c  09 00 00 9a                                      bls #0x658f88
00658f60  0e 00 50 e3                                      cmp r0, #0xe
00658f64  07 00 00 8a                                      bhi #0x658f88
00658f68  14 00 9c e5                                      ldr r0, [ip, #0x14]
00658f6c  00 00 90 e5                                      ldr r0, [r0]
00658f70  00 c0 90 e5                                      ldr ip, [r0]
00658f74  01 00 7c e3                                      cmn ip, #1
00658f78  50 e0 94 15                                      ldrne lr, [r4, #0x50]
00658f7c  00 b0 80 05                                      streq fp, [r0]
00658f80  99 ec 2c 10                                      mlane ip, sb, ip, lr
00658f84  00 c0 80 15                                      strne ip, [r0]
00658f88  01 20 82 e2                                      add r2, r2, #1
00658f8c  01 00 52 e1                                      cmp r2, r1
00658f90  18 30 83 e2                                      add r3, r3, #0x18
00658f94  ec ff ff 1a                                      bne #0x658f4c
00658f98  18 30 95 e5                                      ldr r3, [r5, #0x18]
00658f9c  01 00 73 e3                                      cmn r3, #1
00658fa0  af 00 00 0a                                      beq #0x659264
00658fa4  58 20 94 e5                                      ldr r2, [r4, #0x58]
00658fa8  74 e0 a0 e3                                      mov lr, #0x74
00658fac  9e 23 23 e0                                      mla r3, lr, r3, r2
00658fb0  18 30 85 e5                                      str r3, [r5, #0x18]
00658fb4  01 80 88 e2                                      add r8, r8, #1
00658fb8  0a 00 58 e1                                      cmp r8, sl
00658fbc  24 70 87 e2                                      add r7, r7, #0x24
00658fc0  d5 ff ff 1a                                      bne #0x658f1c
00658fc4  20 50 9d e5                                      ldr r5, [sp, #0x20]
00658fc8  54 70 94 e5                                      ldr r7, [r4, #0x54]
00658fcc  00 00 57 e3                                      cmp r7, #0
00658fd0  7d 00 00 da                                      ble #0x6591cc
00658fd4  00 e0 a0 e3                                      mov lr, #0
00658fd8  0e 60 a0 e1                                      mov r6, lr
00658fdc  0e c0 a0 e1                                      mov ip, lr
00658fe0  14 00 a0 e3                                      mov r0, #0x14
00658fe4  58 30 94 e5                                      ldr r3, [r4, #0x58]
00658fe8  0e 30 83 e0                                      add r3, r3, lr
00658fec  08 00 73 e3                                      cmn r3, #8
00658ff0  1a 00 00 0a                                      beq #0x659060
00658ff4  10 80 93 e5                                      ldr r8, [r3, #0x10]
00658ff8  00 00 58 e3                                      cmp r8, #0
00658ffc  17 00 00 da                                      ble #0x659060
00659000  00 20 a0 e3                                      mov r2, #0
00659004  02 10 a0 e1                                      mov r1, r2
00659008  14 90 93 e5                                      ldr sb, [r3, #0x14]
0065900c  02 90 89 e0                                      add sb, sb, r2
00659010  04 a0 99 e5                                      ldr sl, [sb, #4]
00659014  0a 00 5a e3                                      cmp sl, #0xa
00659018  0c 00 00 9a                                      bls #0x659050
0065901c  0e 00 5a e3                                      cmp sl, #0xe
00659020  0a 00 00 8a                                      bhi #0x659050
00659024  14 a0 99 e5                                      ldr sl, [sb, #0x14]
00659028  00 90 9a e5                                      ldr sb, [sl]
0065902c  00 a0 99 e5                                      ldr sl, [sb]
00659030  01 00 7a e3                                      cmn sl, #1
00659034  00 c0 89 05                                      streq ip, [sb]
00659038  04 00 00 0a                                      beq #0x659050
0065903c  4c b0 94 e5                                      ldr fp, [r4, #0x4c]
00659040  0b 00 5a e1                                      cmp sl, fp
00659044  50 b0 94 b5                                      ldrlt fp, [r4, #0x50]
00659048  90 ba 2a b0                                      mlalt sl, r0, sl, fp
0065904c  00 a0 89 b5                                      strlt sl, [sb]
00659050  01 10 81 e2                                      add r1, r1, #1
00659054  08 00 51 e1                                      cmp r1, r8
00659058  18 20 82 e2                                      add r2, r2, #0x18
0065905c  e9 ff ff 1a                                      bne #0x659008
00659060  20 00 73 e3                                      cmn r3, #0x20
00659064  1a 00 00 0a                                      beq #0x6590d4
00659068  28 80 93 e5                                      ldr r8, [r3, #0x28]
0065906c  00 00 58 e3                                      cmp r8, #0
00659070  17 00 00 da                                      ble #0x6590d4
00659074  00 20 a0 e3                                      mov r2, #0
00659078  02 10 a0 e1                                      mov r1, r2
0065907c  2c 90 93 e5                                      ldr sb, [r3, #0x2c]
00659080  02 90 89 e0                                      add sb, sb, r2
00659084  04 a0 99 e5                                      ldr sl, [sb, #4]
00659088  0a 00 5a e3                                      cmp sl, #0xa
0065908c  0c 00 00 9a                                      bls #0x6590c4
00659090  0e 00 5a e3                                      cmp sl, #0xe
00659094  0a 00 00 8a                                      bhi #0x6590c4
00659098  14 a0 99 e5                                      ldr sl, [sb, #0x14]
0065909c  00 90 9a e5                                      ldr sb, [sl]
006590a0  00 a0 99 e5                                      ldr sl, [sb]
006590a4  01 00 7a e3                                      cmn sl, #1
006590a8  00 c0 89 05                                      streq ip, [sb]
006590ac  04 00 00 0a                                      beq #0x6590c4
006590b0  4c b0 94 e5                                      ldr fp, [r4, #0x4c]
006590b4  0b 00 5a e1                                      cmp sl, fp
006590b8  50 b0 94 b5                                      ldrlt fp, [r4, #0x50]
006590bc  90 ba 2a b0                                      mlalt sl, r0, sl, fp
006590c0  00 a0 89 b5                                      strlt sl, [sb]
006590c4  01 10 81 e2                                      add r1, r1, #1
006590c8  08 00 51 e1                                      cmp r1, r8
006590cc  18 20 82 e2                                      add r2, r2, #0x18
006590d0  e9 ff ff 1a                                      bne #0x65907c
006590d4  3c 00 73 e3                                      cmn r3, #0x3c
006590d8  1a 00 00 0a                                      beq #0x659148
006590dc  44 80 93 e5                                      ldr r8, [r3, #0x44]
006590e0  00 00 58 e3                                      cmp r8, #0
006590e4  17 00 00 da                                      ble #0x659148
006590e8  00 20 a0 e3                                      mov r2, #0
006590ec  02 10 a0 e1                                      mov r1, r2
006590f0  48 90 93 e5                                      ldr sb, [r3, #0x48]
006590f4  02 90 89 e0                                      add sb, sb, r2
006590f8  04 a0 99 e5                                      ldr sl, [sb, #4]
006590fc  0a 00 5a e3                                      cmp sl, #0xa
00659100  0c 00 00 9a                                      bls #0x659138
00659104  0e 00 5a e3                                      cmp sl, #0xe
00659108  0a 00 00 8a                                      bhi #0x659138
0065910c  14 a0 99 e5                                      ldr sl, [sb, #0x14]
00659110  00 90 9a e5                                      ldr sb, [sl]
00659114  00 a0 99 e5                                      ldr sl, [sb]
00659118  01 00 7a e3                                      cmn sl, #1
0065911c  00 c0 89 05                                      streq ip, [sb]
00659120  04 00 00 0a                                      beq #0x659138
00659124  4c b0 94 e5                                      ldr fp, [r4, #0x4c]
00659128  0b 00 5a e1                                      cmp sl, fp
0065912c  50 b0 94 b5                                      ldrlt fp, [r4, #0x50]
00659130  90 ba 2a b0                                      mlalt sl, r0, sl, fp
00659134  00 a0 89 b5                                      strlt sl, [sb]
00659138  01 10 81 e2                                      add r1, r1, #1
0065913c  08 00 51 e1                                      cmp r1, r8
00659140  18 20 82 e2                                      add r2, r2, #0x18
00659144  e9 ff ff 1a                                      bne #0x6590f0
00659148  58 00 73 e3                                      cmn r3, #0x58
0065914c  1a 00 00 0a                                      beq #0x6591bc
00659150  60 80 93 e5                                      ldr r8, [r3, #0x60]
00659154  00 00 58 e3                                      cmp r8, #0
00659158  17 00 00 da                                      ble #0x6591bc
0065915c  00 20 a0 e3                                      mov r2, #0
00659160  02 10 a0 e1                                      mov r1, r2
00659164  64 90 93 e5                                      ldr sb, [r3, #0x64]
00659168  02 90 89 e0                                      add sb, sb, r2
0065916c  04 a0 99 e5                                      ldr sl, [sb, #4]
00659170  0a 00 5a e3                                      cmp sl, #0xa
00659174  0c 00 00 9a                                      bls #0x6591ac
00659178  0e 00 5a e3                                      cmp sl, #0xe
0065917c  0a 00 00 8a                                      bhi #0x6591ac
00659180  14 a0 99 e5                                      ldr sl, [sb, #0x14]
00659184  00 90 9a e5                                      ldr sb, [sl]
00659188  00 a0 99 e5                                      ldr sl, [sb]
0065918c  01 00 7a e3                                      cmn sl, #1
00659190  00 c0 89 05                                      streq ip, [sb]
00659194  04 00 00 0a                                      beq #0x6591ac
00659198  4c b0 94 e5                                      ldr fp, [r4, #0x4c]
0065919c  0b 00 5a e1                                      cmp sl, fp
006591a0  50 b0 94 b5                                      ldrlt fp, [r4, #0x50]
006591a4  90 ba 2a b0                                      mlalt sl, r0, sl, fp
006591a8  00 a0 89 b5                                      strlt sl, [sb]
006591ac  01 10 81 e2                                      add r1, r1, #1
006591b0  08 00 51 e1                                      cmp r1, r8
006591b4  18 20 82 e2                                      add r2, r2, #0x18
006591b8  e9 ff ff 1a                                      bne #0x659164
006591bc  01 60 86 e2                                      add r6, r6, #1
006591c0  07 00 56 e1                                      cmp r6, r7
006591c4  74 e0 8e e2                                      add lr, lr, #0x74
006591c8  85 ff ff 1a                                      bne #0x658fe4
006591cc  40 30 9d e5                                      ldr r3, [sp, #0x40]
006591d0  24 20 93 e5                                      ldr r2, [r3, #0x24]
006591d4  20 20 92 e5                                      ldr r2, [r2, #0x20]
006591d8  70 b0 92 e5                                      ldr fp, [r2, #0x70]
006591dc  00 00 5b e3                                      cmp fp, #0
006591e0  34 00 00 da                                      ble #0x6592b8
006591e4  00 80 a0 e3                                      mov r8, #0
006591e8  02 00 00 ea                                      b #0x6591f8
006591ec  01 80 88 e2                                      add r8, r8, #1
006591f0  0b 00 58 e1                                      cmp r8, fp
006591f4  2e 00 00 0a                                      beq #0x6592b4
006591f8  05 00 a0 e1                                      mov r0, r5
006591fc  08 10 a0 e1                                      mov r1, r8
00659200  8b d4 fe eb                                      bl #0x60e434
00659204  00 30 90 e5                                      ldr r3, [r0]
00659208  01 00 53 e3                                      cmp r3, #1
0065920c  f6 ff ff 1a                                      bne #0x6591ec
00659210  08 90 90 e5                                      ldr sb, [r0, #8]
00659214  10 a0 99 e5                                      ldr sl, [sb, #0x10]
00659218  00 00 5a e3                                      cmp sl, #0
0065921c  f2 ff ff da                                      ble #0x6591ec
00659220  00 60 a0 e3                                      mov r6, #0
00659224  02 00 00 ea                                      b #0x659234
00659228  01 60 86 e2                                      add r6, r6, #1
0065922c  0a 00 56 e1                                      cmp r6, sl
00659230  ed ff ff 0a                                      beq #0x6591ec
00659234  40 30 9d e5                                      ldr r3, [sp, #0x40]
00659238  14 70 99 e5                                      ldr r7, [sb, #0x14]
0065923c  24 30 93 e5                                      ldr r3, [r3, #0x24]
00659240  06 11 97 e7                                      ldr r1, [r7, r6, lsl #2]
00659244  20 30 93 e5                                      ldr r3, [r3, #0x20]
00659248  68 30 93 e5                                      ldr r3, [r3, #0x68]
0065924c  03 00 51 e1                                      cmp r1, r3
00659250  f4 ff ff 8a                                      bhi #0x659228
00659254  05 00 a0 e1                                      mov r0, r5
00659258  6f d4 fe eb                                      bl #0x60e41c
0065925c  06 01 87 e7                                      str r0, [r7, r6, lsl #2]
00659260  f0 ff ff ea                                      b #0x659228
00659264  08 10 95 e5                                      ldr r1, [r5, #8]
00659268  00 00 51 e3                                      cmp r1, #0
0065926c  18 10 85 05                                      streq r1, [r5, #0x18]
00659270  4f ff ff 0a                                      beq #0x658fb4
00659274  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00659278  30 30 9d e5                                      ldr r3, [sp, #0x30]
0065927c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00659280  03 20 9c e7                                      ldr r2, [ip, r3]
00659284  f4 d7 fe eb                                      bl #0x60f25c
00659288  38 60 9d e5                                      ldr r6, [sp, #0x38]
0065928c  00 00 56 e3                                      cmp r6, #0
00659290  71 00 00 0a                                      beq #0x65945c
00659294  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00659298  18 00 9d e5                                      ldr r0, [sp, #0x18]
0065929c  01 10 81 e2                                      add r1, r1, #1
006592a0  81 07 ff eb                                      bl #0x61b0ac
006592a4  18 00 85 e5                                      str r0, [r5, #0x18]
006592a8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006592ac  70 00 ff eb                                      bl #0x619474
006592b0  3f ff ff ea                                      b #0x658fb4
006592b4  40 30 9d e5                                      ldr r3, [sp, #0x40]
006592b8  24 30 93 e5                                      ldr r3, [r3, #0x24]
006592bc  20 30 93 e5                                      ldr r3, [r3, #0x20]
006592c0  78 70 93 e5                                      ldr r7, [r3, #0x78]
006592c4  00 00 57 e3                                      cmp r7, #0
006592c8  15 00 00 da                                      ble #0x659324
006592cc  00 60 a0 e3                                      mov r6, #0
006592d0  02 00 00 ea                                      b #0x6592e0
006592d4  01 60 86 e2                                      add r6, r6, #1
006592d8  07 00 56 e1                                      cmp r6, r7
006592dc  10 00 00 0a                                      beq #0x659324
006592e0  05 00 a0 e1                                      mov r0, r5
006592e4  06 10 a0 e1                                      mov r1, r6
006592e8  5e d4 fe eb                                      bl #0x60e468
006592ec  50 30 90 e5                                      ldr r3, [r0, #0x50]
006592f0  02 00 53 e3                                      cmp r3, #2
006592f4  f6 ff ff 1a                                      bne #0x6592d4
006592f8  54 80 90 e5                                      ldr r8, [r0, #0x54]
006592fc  05 00 a0 e1                                      mov r0, r5
00659300  01 60 86 e2                                      add r6, r6, #1
00659304  00 10 98 e5                                      ldr r1, [r8]
00659308  01 10 81 e2                                      add r1, r1, #1
0065930c  df 0b ff eb                                      bl #0x61c290
00659310  44 30 90 e5                                      ldr r3, [r0, #0x44]
00659314  07 00 56 e1                                      cmp r6, r7
00659318  04 30 93 e5                                      ldr r3, [r3, #4]
0065931c  04 30 88 e5                                      str r3, [r8, #4]
00659320  ee ff ff 1a                                      bne #0x6592e0
00659324  24 00 9d e5                                      ldr r0, [sp, #0x24]
00659328  01 30 a0 e3                                      mov r3, #1
0065932c  10 30 84 e5                                      str r3, [r4, #0x10]
00659330  00 00 50 e3                                      cmp r0, #0
00659334  01 00 00 0a                                      beq #0x659340
00659338  24 00 9d e5                                      ldr r0, [sp, #0x24]
0065933c  90 10 f3 eb                                      bl #0x31d584
00659340  78 00 9d e5                                      ldr r0, [sp, #0x78]
00659344  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00659348  01 00 50 e1                                      cmp r0, r1
0065934c  02 00 00 0a                                      beq #0x65935c
00659350  00 00 50 e3                                      cmp r0, #0
00659354  00 00 00 0a                                      beq #0x65935c
00659358  3c dc f2 eb                                      bl #0x310450
0065935c  05 00 a0 e1                                      mov r0, r5
00659360  43 00 ff eb                                      bl #0x619474
00659364  28 20 9d e5                                      ldr r2, [sp, #0x28]
00659368  14 40 9d e5                                      ldr r4, [sp, #0x14]
0065936c  00 00 a0 e3                                      mov r0, #0
00659370  02 30 94 e7                                      ldr r3, [r4, r2]
00659374  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00659378  00 30 93 e5                                      ldr r3, [r3]
0065937c  03 00 52 e1                                      cmp r2, r3
00659380  3b 00 00 1a                                      bne #0x659474
00659384  84 d0 8d e2                                      add sp, sp, #0x84
00659388  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065938c  0a 10 a0 e1                                      mov r1, sl
00659390  18 20 9d e5                                      ldr r2, [sp, #0x18]
00659394  72 fc ff eb                                      bl #0x658564
00659398  40 50 8d e2                                      add r5, sp, #0x40
0065939c  ee ff ff ea                                      b #0x65935c
006593a0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006593a4  00 30 9c e5                                      ldr r3, [ip]
006593a8  0c 00 a0 e1                                      mov r0, ip
006593ac  0f e0 a0 e1                                      mov lr, pc
006593b0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006593b4  00 10 a0 e3                                      mov r1, #0
006593b8  00 60 a0 e1                                      mov r6, r0
006593bc  18 00 a0 e3                                      mov r0, #0x18
006593c0  79 6b fb eb                                      bl #0x5341ac
006593c4  06 10 a0 e1                                      mov r1, r6
006593c8  00 70 a0 e1                                      mov r7, r0
006593cc  48 20 8d e2                                      add r2, sp, #0x48
006593d0  19 33 f3 eb                                      bl #0x32603c
006593d4  04 70 84 e5                                      str r7, [r4, #4]
006593d8  54 fe ff ea                                      b #0x658d30
006593dc  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
006593e0  02 10 a0 e3                                      mov r1, #2
006593e4  00 00 8f e0                                      add r0, pc, r0
006593e8  2c c6 fe eb                                      bl #0x60aca0
006593ec  9c 00 9f e5                                      ldr r0, [pc, #0x9c]
006593f0  02 10 a0 e3                                      mov r1, #2
006593f4  00 00 8f e0                                      add r0, pc, r0
006593f8  28 c6 fe eb                                      bl #0x60aca0
006593fc  02 10 a0 e3                                      mov r1, #2
00659400  20 00 9a e5                                      ldr r0, [sl, #0x20]
00659404  25 c6 fe eb                                      bl #0x60aca0
00659408  05 00 a0 e1                                      mov r0, r5
0065940c  a5 d3 fe eb                                      bl #0x60e2a8
00659410  02 10 a0 e3                                      mov r1, #2
00659414  21 c6 fe eb                                      bl #0x60aca0
00659418  74 00 9f e5                                      ldr r0, [pc, #0x74]
0065941c  02 10 a0 e3                                      mov r1, #2
00659420  00 00 8f e0                                      add r0, pc, r0
00659424  1d c6 fe eb                                      bl #0x60aca0
00659428  68 00 9f e5                                      ldr r0, [pc, #0x68]
0065942c  02 10 a0 e3                                      mov r1, #2
00659430  00 00 8f e0                                      add r0, pc, r0
00659434  19 c6 fe eb                                      bl #0x60aca0
00659438  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
0065943c  02 10 a0 e3                                      mov r1, #2
00659440  00 00 8f e0                                      add r0, pc, r0
00659444  15 c6 fe eb                                      bl #0x60aca0
00659448  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
0065944c  00 00 53 e3                                      cmp r3, #0
00659450  04 30 84 05                                      streq r3, [r4, #4]
00659454  35 fe ff 0a                                      beq #0x658d30
00659458  d0 ff ff ea                                      b #0x6593a0
0065945c  03 00 a0 e3                                      mov r0, #3
00659460  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00659464  08 20 95 e5                                      ldr r2, [r5, #8]
00659468  f1 c6 fe eb                                      bl #0x60b034
0065946c  18 60 85 e5                                      str r6, [r5, #0x18]
00659470  8c ff ff ea                                      b #0x6592a8
00659474  a5 d3 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00659478  f0 bd 33 00 ac 40 00 00 10 47 00 00 80 c9 28 00  .byte 0xf0, 0xbd, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00, 0x80, 0xc9, 0x28, 0x00
00659488  94 c8 28 00 bc c2 28 00 e4 c2 28 00 d8 c2 28 00  .byte 0x94, 0xc8, 0x28, 0x00, 0xbc, 0xc2, 0x28, 0x00, 0xe4, 0xc2, 0x28, 0x00, 0xd8, 0xc2, 0x28, 0x00
00659498  f0 c2 28 00 18 c3 28 00                          .byte 0xf0, 0xc2, 0x28, 0x00, 0x18, 0xc3, 0x28, 0x00

; FUNCTION 0x00659b60, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager6unloadEPKcb
; demangled: glitch::collada::CResFileManager::unload(char const*, bool)
; decoder-mode: arm
00659b60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00659b64  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
00659b68  c8 90 9f e5                                      ldr sb, [pc, #0xc8]
00659b6c  00 70 a0 e1                                      mov r7, r0
00659b70  04 40 8f e0                                      add r4, pc, r4
00659b74  09 00 94 e7                                      ldr r0, [r4, sb]
00659b78  20 30 97 e5                                      ldr r3, [r7, #0x20]
00659b7c  44 d0 4d e2                                      sub sp, sp, #0x44
00659b80  00 00 90 e5                                      ldr r0, [r0]
00659b84  24 50 8d e2                                      add r5, sp, #0x24
00659b88  0c 60 8d e2                                      add r6, sp, #0xc
00659b8c  3c 00 8d e5                                      str r0, [sp, #0x3c]
00659b90  34 80 93 e5                                      ldr r8, [r3, #0x34]
00659b94  02 b0 a0 e1                                      mov fp, r2
00659b98  05 00 a0 e1                                      mov r0, r5
00659b9c  00 30 98 e5                                      ldr r3, [r8]
00659ba0  08 20 8d e2                                      add r2, sp, #8
00659ba4  34 a0 93 e5                                      ldr sl, [r3, #0x34]
00659ba8  23 31 f3 eb                                      bl #0x32603c
00659bac  05 20 a0 e1                                      mov r2, r5
00659bb0  08 10 a0 e1                                      mov r1, r8
00659bb4  06 00 a0 e1                                      mov r0, r6
00659bb8  3a ff 2f e1                                      blx sl
00659bbc  06 10 a0 e1                                      mov r1, r6
00659bc0  08 00 87 e2                                      add r0, r7, #8
00659bc4  b0 ff ff eb                                      bl #0x659a8c
00659bc8  40 10 8d e2                                      add r1, sp, #0x40
00659bcc  3c 00 21 e5                                      str r0, [r1, #-0x3c]!
00659bd0  0b 20 a0 e1                                      mov r2, fp
00659bd4  07 00 a0 e1                                      mov r0, r7
00659bd8  47 fa ff eb                                      bl #0x6584fc
00659bdc  00 70 a0 e1                                      mov r7, r0
00659be0  20 00 9d e5                                      ldr r0, [sp, #0x20]
00659be4  06 00 50 e1                                      cmp r0, r6
00659be8  02 00 00 0a                                      beq #0x659bf8
00659bec  00 00 50 e3                                      cmp r0, #0
00659bf0  00 00 00 0a                                      beq #0x659bf8
00659bf4  15 da f2 eb                                      bl #0x310450
00659bf8  38 00 9d e5                                      ldr r0, [sp, #0x38]
00659bfc  05 00 50 e1                                      cmp r0, r5
00659c00  02 00 00 0a                                      beq #0x659c10
00659c04  00 00 50 e3                                      cmp r0, #0
00659c08  00 00 00 0a                                      beq #0x659c10
00659c0c  0f da f2 eb                                      bl #0x310450
00659c10  09 30 94 e7                                      ldr r3, [r4, sb]
00659c14  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00659c18  07 00 a0 e1                                      mov r0, r7
00659c1c  00 30 93 e5                                      ldr r3, [r3]
00659c20  03 00 52 e1                                      cmp r2, r3
00659c24  01 00 00 1a                                      bne #0x659c30
00659c28  44 d0 8d e2                                      add sp, sp, #0x44
00659c2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00659c30  b6 d1 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00659c34  20 af 33 00 ac 40 00 00                          .byte 0x20, 0xaf, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00659c3c, declared_size=192, range_size=192, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager9unloadAllEv
; demangled: glitch::collada::CResFileManager::unloadAll()
; decoder-mode: arm
00659c3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00659c40  10 30 90 e5                                      ldr r3, [r0, #0x10]
00659c44  08 60 80 e2                                      add r6, r0, #8
00659c48  00 50 a0 e1                                      mov r5, r0
00659c4c  03 00 56 e1                                      cmp r6, r3
00659c50  00 70 a0 e3                                      mov r7, #0
00659c54  10 00 00 0a                                      beq #0x659c9c
00659c58  0c 40 93 e5                                      ldr r4, [r3, #0xc]
00659c5c  00 00 54 e3                                      cmp r4, #0
00659c60  01 00 00 1a                                      bne #0x659c6c
00659c64  0e 00 00 ea                                      b #0x659ca4
00659c68  02 40 a0 e1                                      mov r4, r2
00659c6c  08 20 94 e5                                      ldr r2, [r4, #8]
00659c70  00 00 52 e3                                      cmp r2, #0
00659c74  fb ff ff 1a                                      bne #0x659c68
00659c78  24 10 93 e5                                      ldr r1, [r3, #0x24]
00659c7c  05 00 a0 e1                                      mov r0, r5
00659c80  00 20 a0 e3                                      mov r2, #0
00659c84  b5 ff ff eb                                      bl #0x659b60
00659c88  00 00 50 e3                                      cmp r0, #0
00659c8c  01 70 87 02                                      addeq r7, r7, #1
00659c90  04 30 a0 e1                                      mov r3, r4
00659c94  03 00 56 e1                                      cmp r6, r3
00659c98  ee ff ff 1a                                      bne #0x659c58
00659c9c  07 00 a0 e1                                      mov r0, r7
00659ca0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00659ca4  04 20 93 e5                                      ldr r2, [r3, #4]
00659ca8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00659cac  01 00 53 e1                                      cmp r3, r1
00659cb0  03 40 a0 11                                      movne r4, r3
00659cb4  00 10 a0 13                                      movne r1, #0
00659cb8  05 00 00 1a                                      bne #0x659cd4
00659cbc  02 40 a0 e1                                      mov r4, r2
00659cc0  04 20 92 e5                                      ldr r2, [r2, #4]
00659cc4  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00659cc8  04 00 51 e1                                      cmp r1, r4
00659ccc  fa ff ff 0a                                      beq #0x659cbc
00659cd0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00659cd4  02 00 51 e1                                      cmp r1, r2
00659cd8  02 40 a0 11                                      movne r4, r2
00659cdc  24 10 93 e5                                      ldr r1, [r3, #0x24]
00659ce0  05 00 a0 e1                                      mov r0, r5
00659ce4  00 20 a0 e3                                      mov r2, #0
00659ce8  9c ff ff eb                                      bl #0x659b60
00659cec  00 00 50 e3                                      cmp r0, #0
00659cf0  01 70 87 02                                      addeq r7, r7, #1
00659cf4  04 30 a0 e1                                      mov r3, r4
00659cf8  e5 ff ff ea                                      b #0x659c94

; FUNCTION 0x00659cfc, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager6unloadEPKNS0_8SColladaEb
; demangled: glitch::collada::CResFileManager::unload(glitch::collada::SCollada const*, bool)
; decoder-mode: arm
00659cfc  70 00 2d e9                                      push {r4, r5, r6}
00659d00  10 30 90 e5                                      ldr r3, [r0, #0x10]
00659d04  08 50 80 e2                                      add r5, r0, #8
00659d08  03 00 55 e1                                      cmp r5, r3
00659d0c  0f 00 00 0a                                      beq #0x659d50
00659d10  28 c0 93 e5                                      ldr ip, [r3, #0x28]
00659d14  24 c0 9c e5                                      ldr ip, [ip, #0x24]
00659d18  20 c0 9c e5                                      ldr ip, [ip, #0x20]
00659d1c  0c 00 51 e1                                      cmp r1, ip
00659d20  1a 00 00 0a                                      beq #0x659d90
00659d24  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00659d28  00 00 5c e3                                      cmp ip, #0
00659d2c  01 00 00 1a                                      bne #0x659d38
00659d30  09 00 00 ea                                      b #0x659d5c
00659d34  03 c0 a0 e1                                      mov ip, r3
00659d38  08 30 9c e5                                      ldr r3, [ip, #8]
00659d3c  00 00 53 e3                                      cmp r3, #0
00659d40  fb ff ff 1a                                      bne #0x659d34
00659d44  0c 30 a0 e1                                      mov r3, ip
00659d48  03 00 55 e1                                      cmp r5, r3
00659d4c  ef ff ff 1a                                      bne #0x659d10
00659d50  03 00 a0 e3                                      mov r0, #3
00659d54  70 00 bd e8                                      pop {r4, r5, r6}
00659d58  1e ff 2f e1                                      bx lr
00659d5c  04 40 93 e5                                      ldr r4, [r3, #4]
00659d60  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00659d64  06 00 53 e1                                      cmp r3, r6
00659d68  05 00 00 1a                                      bne #0x659d84
00659d6c  04 30 a0 e1                                      mov r3, r4
00659d70  04 40 94 e5                                      ldr r4, [r4, #4]
00659d74  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00659d78  03 00 5c e1                                      cmp ip, r3
00659d7c  fa ff ff 0a                                      beq #0x659d6c
00659d80  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00659d84  04 00 5c e1                                      cmp ip, r4
00659d88  04 30 a0 11                                      movne r3, r4
00659d8c  dd ff ff ea                                      b #0x659d08
00659d90  24 10 93 e5                                      ldr r1, [r3, #0x24]
00659d94  70 00 bd e8                                      pop {r4, r5, r6}
00659d98  70 ff ff ea                                      b #0x659b60

; FUNCTION 0x0065a748, declared_size=580, range_size=580, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager3getEPNS_2io9IReadFileEbb
; demangled: glitch::collada::CResFileManager::get(glitch::io::IReadFile*, bool, bool)
; decoder-mode: arm
0065a748  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065a74c  20 42 9f e5                                      ldr r4, [pc, #0x220]
0065a750  20 b2 9f e5                                      ldr fp, [pc, #0x220]
0065a754  20 92 9f e5                                      ldr sb, [pc, #0x220]
0065a758  04 40 8f e0                                      add r4, pc, r4
0065a75c  0b e0 94 e7                                      ldr lr, [r4, fp]
0065a760  09 c0 94 e7                                      ldr ip, [r4, sb]
0065a764  54 d0 4d e2                                      sub sp, sp, #0x54
0065a768  00 e0 9e e5                                      ldr lr, [lr]
0065a76c  00 c0 9c e5                                      ldr ip, [ip]
0065a770  00 80 a0 e1                                      mov r8, r0
0065a774  4c e0 8d e5                                      str lr, [sp, #0x4c]
0065a778  28 00 dc e5                                      ldrb r0, [ip, #0x28]
0065a77c  01 70 a0 e1                                      mov r7, r1
0065a780  1c a0 8d e2                                      add sl, sp, #0x1c
0065a784  04 00 8d e5                                      str r0, [sp, #4]
0065a788  00 00 a0 e3                                      mov r0, #0
0065a78c  28 00 cc e5                                      strb r0, [ip, #0x28]
0065a790  20 00 98 e5                                      ldr r0, [r8, #0x20]
0065a794  00 10 91 e5                                      ldr r1, [r1]
0065a798  34 50 8d e2                                      add r5, sp, #0x34
0065a79c  34 60 90 e5                                      ldr r6, [r0, #0x34]
0065a7a0  0c 30 8d e5                                      str r3, [sp, #0xc]
0065a7a4  07 00 a0 e1                                      mov r0, r7
0065a7a8  00 30 96 e5                                      ldr r3, [r6]
0065a7ac  08 20 8d e5                                      str r2, [sp, #8]
0065a7b0  34 30 93 e5                                      ldr r3, [r3, #0x34]
0065a7b4  00 30 8d e5                                      str r3, [sp]
0065a7b8  0f e0 a0 e1                                      mov lr, pc
0065a7bc  28 f0 91 e5                                      ldr pc, [r1, #0x28]
0065a7c0  18 20 8d e2                                      add r2, sp, #0x18
0065a7c4  00 10 a0 e1                                      mov r1, r0
0065a7c8  0a 00 a0 e1                                      mov r0, sl
0065a7cc  1a 2e f3 eb                                      bl #0x32603c
0065a7d0  05 00 a0 e1                                      mov r0, r5
0065a7d4  06 10 a0 e1                                      mov r1, r6
0065a7d8  0a 20 a0 e1                                      mov r2, sl
0065a7dc  00 30 9d e5                                      ldr r3, [sp]
0065a7e0  33 ff 2f e1                                      blx r3
0065a7e4  30 00 9d e5                                      ldr r0, [sp, #0x30]
0065a7e8  0a 00 50 e1                                      cmp r0, sl
0065a7ec  02 00 00 0a                                      beq #0x65a7fc
0065a7f0  00 00 50 e3                                      cmp r0, #0
0065a7f4  00 00 00 0a                                      beq #0x65a7fc
0065a7f8  14 d7 f2 eb                                      bl #0x310450
0065a7fc  08 60 88 e2                                      add r6, r8, #8
0065a800  06 00 a0 e1                                      mov r0, r6
0065a804  05 10 a0 e1                                      mov r1, r5
0065a808  9f fc ff eb                                      bl #0x659a8c
0065a80c  06 00 50 e1                                      cmp r0, r6
0065a810  00 a0 a0 e1                                      mov sl, r0
0065a814  2e 00 00 0a                                      beq #0x65a8d4
0065a818  05 10 a0 e1                                      mov r1, r5
0065a81c  06 00 a0 e1                                      mov r0, r6
0065a820  06 ff ff eb                                      bl #0x65a440
0065a824  48 30 9d e5                                      ldr r3, [sp, #0x48]
0065a828  50 10 8d e2                                      add r1, sp, #0x50
0065a82c  06 00 a0 e1                                      mov r0, r6
0065a830  40 30 21 e5                                      str r3, [r1, #-0x40]!
0065a834  64 ff ff eb                                      bl #0x65a5cc
0065a838  00 60 90 e5                                      ldr r6, [r0]
0065a83c  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
0065a840  24 20 96 e5                                      ldr r2, [r6, #0x24]
0065a844  03 10 94 e7                                      ldr r1, [r4, r3]
0065a848  34 31 9f e5                                      ldr r3, [pc, #0x134]
0065a84c  14 c0 92 e5                                      ldr ip, [r2, #0x14]
0065a850  03 30 94 e7                                      ldr r3, [r4, r3]
0065a854  ac cf a0 e1                                      lsr ip, ip, #0x1f
0065a858  0c 21 81 e7                                      str r2, [r1, ip, lsl #2]
0065a85c  24 20 96 e5                                      ldr r2, [r6, #0x24]
0065a860  20 11 9f e5                                      ldr r1, [pc, #0x120]
0065a864  00 00 93 e5                                      ldr r0, [r3]
0065a868  10 c0 92 e5                                      ldr ip, [r2, #0x10]
0065a86c  14 20 92 e5                                      ldr r2, [r2, #0x14]
0065a870  01 10 94 e7                                      ldr r1, [r4, r1]
0065a874  0c 01 80 e0                                      add r0, r0, ip, lsl #2
0065a878  a2 2f a0 e1                                      lsr r2, r2, #0x1f
0065a87c  02 01 81 e7                                      str r0, [r1, r2, lsl #2]
0065a880  24 20 96 e5                                      ldr r2, [r6, #0x24]
0065a884  08 20 92 e5                                      ldr r2, [r2, #8]
0065a888  00 20 83 e5                                      str r2, [r3]
0065a88c  48 00 9d e5                                      ldr r0, [sp, #0x48]
0065a890  05 00 50 e1                                      cmp r0, r5
0065a894  02 00 00 0a                                      beq #0x65a8a4
0065a898  00 00 50 e3                                      cmp r0, #0
0065a89c  00 00 00 0a                                      beq #0x65a8a4
0065a8a0  ea d6 f2 eb                                      bl #0x310450
0065a8a4  09 20 94 e7                                      ldr r2, [r4, sb]
0065a8a8  04 10 9d e5                                      ldr r1, [sp, #4]
0065a8ac  0b 30 94 e7                                      ldr r3, [r4, fp]
0065a8b0  00 20 92 e5                                      ldr r2, [r2]
0065a8b4  06 00 a0 e1                                      mov r0, r6
0065a8b8  28 10 c2 e5                                      strb r1, [r2, #0x28]
0065a8bc  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0065a8c0  00 30 93 e5                                      ldr r3, [r3]
0065a8c4  03 00 52 e1                                      cmp r2, r3
0065a8c8  28 00 00 1a                                      bne #0x65a970
0065a8cc  54 d0 8d e2                                      add sp, sp, #0x54
0065a8d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065a8d4  08 10 9d e5                                      ldr r1, [sp, #8]
0065a8d8  00 00 51 e3                                      cmp r1, #0
0065a8dc  00 60 a0 03                                      moveq r6, #0
0065a8e0  e9 ff ff 0a                                      beq #0x65a88c
0065a8e4  48 30 9d e5                                      ldr r3, [sp, #0x48]
0065a8e8  00 10 a0 e3                                      mov r1, #0
0065a8ec  50 00 a0 e3                                      mov r0, #0x50
0065a8f0  00 30 8d e5                                      str r3, [sp]
0065a8f4  2c 66 fb eb                                      bl #0x5341ac
0065a8f8  00 30 9d e5                                      ldr r3, [sp]
0065a8fc  07 20 a0 e1                                      mov r2, r7
0065a900  00 60 a0 e1                                      mov r6, r0
0065a904  03 10 a0 e1                                      mov r1, r3
0065a908  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0065a90c  cd f5 ff eb                                      bl #0x658048
0065a910  48 30 9d e5                                      ldr r3, [sp, #0x48]
0065a914  50 10 8d e2                                      add r1, sp, #0x50
0065a918  0a 00 a0 e1                                      mov r0, sl
0065a91c  3c 30 21 e5                                      str r3, [r1, #-0x3c]!
0065a920  29 ff ff eb                                      bl #0x65a5cc
0065a924  00 60 80 e5                                      str r6, [r0]
0065a928  24 30 96 e5                                      ldr r3, [r6, #0x24]
0065a92c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065a930  00 00 53 e3                                      cmp r3, #0
0065a934  d4 ff ff 1a                                      bne #0x65a88c
0065a938  07 10 a0 e1                                      mov r1, r7
0065a93c  08 00 a0 e1                                      mov r0, r8
0065a940  a2 f4 ff eb                                      bl #0x657bd0
0065a944  00 70 a0 e1                                      mov r7, r0
0065a948  06 10 a0 e1                                      mov r1, r6
0065a94c  08 00 a0 e1                                      mov r0, r8
0065a950  07 20 a0 e1                                      mov r2, r7
0065a954  cd f8 ff eb                                      bl #0x658c90
0065a958  00 80 a0 e1                                      mov r8, r0
0065a95c  07 00 a0 e1                                      mov r0, r7
0065a960  07 0b f3 eb                                      bl #0x31d584
0065a964  00 00 58 e3                                      cmp r8, #0
0065a968  00 60 a0 13                                      movne r6, #0
0065a96c  c6 ff ff ea                                      b #0x65a88c
0065a970  66 ce f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0065a974  38 a3 33 00 ac 40 00 00 48 44 00 00 b4 22 00 00  .byte 0x38, 0xa3, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0xb4, 0x22, 0x00, 0x00
0065a984  84 10 00 00 34 39 00 00                          .byte 0x84, 0x10, 0x00, 0x00, 0x34, 0x39, 0x00, 0x00

; FUNCTION 0x0065a98c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager4loadEPNS_2io9IReadFileEbPFvPKcPKNS0_8SColladaEEb
; demangled: glitch::collada::CResFileManager::load(glitch::io::IReadFile*, bool, void (*)(char const*, glitch::collada::SCollada const*), bool)
; decoder-mode: arm
0065a98c  00 00 52 e3                                      cmp r2, #0
0065a990  00 30 dd e5                                      ldrb r3, [sp]
0065a994  01 00 00 0a                                      beq #0x65a9a0
0065a998  00 00 a0 e3                                      mov r0, #0
0065a99c  1e ff 2f e1                                      bx lr
0065a9a0  01 20 a0 e3                                      mov r2, #1
0065a9a4  67 ff ff ea                                      b #0x65a748

; FUNCTION 0x0065a9a8, declared_size=692, range_size=692, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager3getEPKcb
; demangled: glitch::collada::CResFileManager::get(char const*, bool)
; decoder-mode: arm
0065a9a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065a9ac  88 42 9f e5                                      ldr r4, [pc, #0x288]
0065a9b0  88 b2 9f e5                                      ldr fp, [pc, #0x288]
0065a9b4  88 92 9f e5                                      ldr sb, [pc, #0x288]
0065a9b8  04 40 8f e0                                      add r4, pc, r4
0065a9bc  0b c0 94 e7                                      ldr ip, [r4, fp]
0065a9c0  09 30 94 e7                                      ldr r3, [r4, sb]
0065a9c4  5c d0 4d e2                                      sub sp, sp, #0x5c
0065a9c8  00 c0 9c e5                                      ldr ip, [ip]
0065a9cc  00 30 93 e5                                      ldr r3, [r3]
0065a9d0  00 60 a0 e1                                      mov r6, r0
0065a9d4  54 c0 8d e5                                      str ip, [sp, #0x54]
0065a9d8  28 00 d3 e5                                      ldrb r0, [r3, #0x28]
0065a9dc  24 50 8d e2                                      add r5, sp, #0x24
0065a9e0  3c 70 8d e2                                      add r7, sp, #0x3c
0065a9e4  04 00 8d e5                                      str r0, [sp, #4]
0065a9e8  00 00 a0 e3                                      mov r0, #0
0065a9ec  28 00 c3 e5                                      strb r0, [r3, #0x28]
0065a9f0  20 30 96 e5                                      ldr r3, [r6, #0x20]
0065a9f4  08 20 8d e5                                      str r2, [sp, #8]
0065a9f8  05 00 a0 e1                                      mov r0, r5
0065a9fc  34 80 93 e5                                      ldr r8, [r3, #0x34]
0065aa00  20 20 8d e2                                      add r2, sp, #0x20
0065aa04  00 30 98 e5                                      ldr r3, [r8]
0065aa08  0c 10 8d e5                                      str r1, [sp, #0xc]
0065aa0c  34 a0 93 e5                                      ldr sl, [r3, #0x34]
0065aa10  89 2d f3 eb                                      bl #0x32603c
0065aa14  07 00 a0 e1                                      mov r0, r7
0065aa18  08 10 a0 e1                                      mov r1, r8
0065aa1c  05 20 a0 e1                                      mov r2, r5
0065aa20  3a ff 2f e1                                      blx sl
0065aa24  38 00 9d e5                                      ldr r0, [sp, #0x38]
0065aa28  05 00 50 e1                                      cmp r0, r5
0065aa2c  02 00 00 0a                                      beq #0x65aa3c
0065aa30  00 00 50 e3                                      cmp r0, #0
0065aa34  00 00 00 0a                                      beq #0x65aa3c
0065aa38  84 d6 f2 eb                                      bl #0x310450
0065aa3c  50 30 9d e5                                      ldr r3, [sp, #0x50]
0065aa40  58 10 8d e2                                      add r1, sp, #0x58
0065aa44  08 50 86 e2                                      add r5, r6, #8
0065aa48  3c 30 21 e5                                      str r3, [r1, #-0x3c]!
0065aa4c  05 00 a0 e1                                      mov r0, r5
0065aa50  d1 fc ff eb                                      bl #0x659d9c
0065aa54  05 00 50 e1                                      cmp r0, r5
0065aa58  00 80 a0 e1                                      mov r8, r0
0065aa5c  2b 00 00 0a                                      beq #0x65ab10
0065aa60  50 30 9d e5                                      ldr r3, [sp, #0x50]
0065aa64  58 10 8d e2                                      add r1, sp, #0x58
0065aa68  05 00 a0 e1                                      mov r0, r5
0065aa6c  44 30 21 e5                                      str r3, [r1, #-0x44]!
0065aa70  d5 fe ff eb                                      bl #0x65a5cc
0065aa74  00 50 90 e5                                      ldr r5, [r0]
0065aa78  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
0065aa7c  24 20 95 e5                                      ldr r2, [r5, #0x24]
0065aa80  03 10 94 e7                                      ldr r1, [r4, r3]
0065aa84  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0065aa88  14 c0 92 e5                                      ldr ip, [r2, #0x14]
0065aa8c  03 30 94 e7                                      ldr r3, [r4, r3]
0065aa90  ac cf a0 e1                                      lsr ip, ip, #0x1f
0065aa94  0c 21 81 e7                                      str r2, [r1, ip, lsl #2]
0065aa98  24 20 95 e5                                      ldr r2, [r5, #0x24]
0065aa9c  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0065aaa0  00 00 93 e5                                      ldr r0, [r3]
0065aaa4  10 c0 92 e5                                      ldr ip, [r2, #0x10]
0065aaa8  14 20 92 e5                                      ldr r2, [r2, #0x14]
0065aaac  01 10 94 e7                                      ldr r1, [r4, r1]
0065aab0  0c 01 80 e0                                      add r0, r0, ip, lsl #2
0065aab4  a2 2f a0 e1                                      lsr r2, r2, #0x1f
0065aab8  02 01 81 e7                                      str r0, [r1, r2, lsl #2]
0065aabc  24 20 95 e5                                      ldr r2, [r5, #0x24]
0065aac0  08 20 92 e5                                      ldr r2, [r2, #8]
0065aac4  00 20 83 e5                                      str r2, [r3]
0065aac8  50 00 9d e5                                      ldr r0, [sp, #0x50]
0065aacc  07 00 50 e1                                      cmp r0, r7
0065aad0  02 00 00 0a                                      beq #0x65aae0
0065aad4  00 00 50 e3                                      cmp r0, #0
0065aad8  00 00 00 0a                                      beq #0x65aae0
0065aadc  5b d6 f2 eb                                      bl #0x310450
0065aae0  09 20 94 e7                                      ldr r2, [r4, sb]
0065aae4  04 10 9d e5                                      ldr r1, [sp, #4]
0065aae8  0b 30 94 e7                                      ldr r3, [r4, fp]
0065aaec  00 20 92 e5                                      ldr r2, [r2]
0065aaf0  05 00 a0 e1                                      mov r0, r5
0065aaf4  28 10 c2 e5                                      strb r1, [r2, #0x28]
0065aaf8  54 20 9d e5                                      ldr r2, [sp, #0x54]
0065aafc  00 30 93 e5                                      ldr r3, [r3]
0065ab00  03 00 52 e1                                      cmp r2, r3
0065ab04  41 00 00 1a                                      bne #0x65ac10
0065ab08  5c d0 8d e2                                      add sp, sp, #0x5c
0065ab0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065ab10  08 10 9d e5                                      ldr r1, [sp, #8]
0065ab14  00 00 51 e3                                      cmp r1, #0
0065ab18  01 50 a0 01                                      moveq r5, r1
0065ab1c  e9 ff ff 0a                                      beq #0x65aac8
0065ab20  20 30 96 e5                                      ldr r3, [r6, #0x20]
0065ab24  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0065ab28  34 30 93 e5                                      ldr r3, [r3, #0x34]
0065ab2c  03 00 a0 e1                                      mov r0, r3
0065ab30  00 30 93 e5                                      ldr r3, [r3]
0065ab34  0f e0 a0 e1                                      mov lr, pc
0065ab38  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0065ab3c  00 a0 50 e2                                      subs sl, r0, #0
0065ab40  33 00 00 0a                                      beq #0x65ac14
0065ab44  50 30 9d e5                                      ldr r3, [sp, #0x50]
0065ab48  00 10 a0 e3                                      mov r1, #0
0065ab4c  50 00 a0 e3                                      mov r0, #0x50
0065ab50  00 30 8d e5                                      str r3, [sp]
0065ab54  94 65 fb eb                                      bl #0x5341ac
0065ab58  00 30 9d e5                                      ldr r3, [sp]
0065ab5c  00 50 a0 e1                                      mov r5, r0
0065ab60  0a 20 a0 e1                                      mov r2, sl
0065ab64  03 10 a0 e1                                      mov r1, r3
0065ab68  00 30 a0 e3                                      mov r3, #0
0065ab6c  35 f5 ff eb                                      bl #0x658048
0065ab70  00 00 55 e3                                      cmp r5, #0
0065ab74  09 00 00 0a                                      beq #0x65aba0
0065ab78  50 30 9d e5                                      ldr r3, [sp, #0x50]
0065ab7c  58 10 8d e2                                      add r1, sp, #0x58
0065ab80  08 00 a0 e1                                      mov r0, r8
0065ab84  40 30 21 e5                                      str r3, [r1, #-0x40]!
0065ab88  8f fe ff eb                                      bl #0x65a5cc
0065ab8c  00 50 80 e5                                      str r5, [r0]
0065ab90  24 30 95 e5                                      ldr r3, [r5, #0x24]
0065ab94  14 80 93 e5                                      ldr r8, [r3, #0x14]
0065ab98  00 00 58 e3                                      cmp r8, #0
0065ab9c  02 00 00 0a                                      beq #0x65abac
0065aba0  0a 00 a0 e1                                      mov r0, sl
0065aba4  76 0a f3 eb                                      bl #0x31d584
0065aba8  c6 ff ff ea                                      b #0x65aac8
0065abac  0a 10 a0 e1                                      mov r1, sl
0065abb0  06 00 a0 e1                                      mov r0, r6
0065abb4  05 f4 ff eb                                      bl #0x657bd0
0065abb8  00 c0 a0 e1                                      mov ip, r0
0065abbc  0c 20 a0 e1                                      mov r2, ip
0065abc0  05 10 a0 e1                                      mov r1, r5
0065abc4  06 00 a0 e1                                      mov r0, r6
0065abc8  00 c0 8d e5                                      str ip, [sp]
0065abcc  2f f8 ff eb                                      bl #0x658c90
0065abd0  00 c0 9d e5                                      ldr ip, [sp]
0065abd4  00 30 a0 e1                                      mov r3, r0
0065abd8  00 30 8d e5                                      str r3, [sp]
0065abdc  0c 00 a0 e1                                      mov r0, ip
0065abe0  67 0a f3 eb                                      bl #0x31d584
0065abe4  00 30 9d e5                                      ldr r3, [sp]
0065abe8  00 00 53 e3                                      cmp r3, #0
0065abec  eb ff ff 0a                                      beq #0x65aba0
0065abf0  06 00 a0 e1                                      mov r0, r6
0065abf4  50 10 9d e5                                      ldr r1, [sp, #0x50]
0065abf8  08 20 a0 e1                                      mov r2, r8
0065abfc  d7 fb ff eb                                      bl #0x659b60
0065ac00  0a 00 a0 e1                                      mov r0, sl
0065ac04  08 50 a0 e1                                      mov r5, r8
0065ac08  5d 0a f3 eb                                      bl #0x31d584
0065ac0c  ad ff ff ea                                      b #0x65aac8
0065ac10  be cd f2 eb                                      bl #0x30e310
0065ac14  38 00 9f e5                                      ldr r0, [pc, #0x38]
0065ac18  0a 50 a0 e1                                      mov r5, sl
0065ac1c  00 00 8f e0                                      add r0, pc, r0
0065ac20  96 c1 fe eb                                      bl #0x60b280
0065ac24  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0065ac28  94 c1 fe eb                                      bl #0x60b280
0065ac2c  24 00 9f e5                                      ldr r0, [pc, #0x24]
0065ac30  00 00 8f e0                                      add r0, pc, r0
0065ac34  91 c1 fe eb                                      bl #0x60b280
0065ac38  a2 ff ff ea                                      b #0x65aac8
; mapping-symbol data/literal pool
0065ac3c  d8 a0 33 00 ac 40 00 00 48 44 00 00 b4 22 00 00  .byte 0xd8, 0xa0, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0xb4, 0x22, 0x00, 0x00
0065ac4c  84 10 00 00 34 39 00 00 8c ab 28 00 98 ab 28 00  .byte 0x84, 0x10, 0x00, 0x00, 0x34, 0x39, 0x00, 0x00, 0x8c, 0xab, 0x28, 0x00, 0x98, 0xab, 0x28, 0x00

; FUNCTION 0x0065ac5c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager4loadEPKcbPFvS3_PKNS0_8SColladaEE
; demangled: glitch::collada::CResFileManager::load(char const*, bool, void (*)(char const*, glitch::collada::SCollada const*))
; decoder-mode: arm
0065ac5c  00 00 52 e3                                      cmp r2, #0
0065ac60  01 00 00 0a                                      beq #0x65ac6c
0065ac64  00 00 a0 e3                                      mov r0, #0
0065ac68  1e ff 2f e1                                      bx lr
0065ac6c  01 20 a0 e3                                      mov r2, #1
0065ac70  4c ff ff ea                                      b #0x65a9a8

; FUNCTION 0x0065ac74, declared_size=336, range_size=336, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager3getEPNS0_8CResFileEPKcb
; demangled: glitch::collada::CResFileManager::get(glitch::collada::CResFile*, char const*, bool)
; decoder-mode: arm
0065ac74  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065ac78  38 41 9f e5                                      ldr r4, [pc, #0x138]
0065ac7c  38 71 9f e5                                      ldr r7, [pc, #0x138]
0065ac80  00 50 a0 e1                                      mov r5, r0
0065ac84  04 40 8f e0                                      add r4, pc, r4
0065ac88  07 c0 94 e7                                      ldr ip, [r4, r7]
0065ac8c  20 00 90 e5                                      ldr r0, [r0, #0x20]
0065ac90  20 d0 4d e2                                      sub sp, sp, #0x20
0065ac94  00 c0 9c e5                                      ldr ip, [ip]
0065ac98  0c 10 81 e2                                      add r1, r1, #0xc
0065ac9c  04 60 8d e2                                      add r6, sp, #4
0065aca0  1c c0 8d e5                                      str ip, [sp, #0x1c]
0065aca4  34 c0 90 e5                                      ldr ip, [r0, #0x34]
0065aca8  02 80 a0 e1                                      mov r8, r2
0065acac  06 00 a0 e1                                      mov r0, r6
0065acb0  01 20 a0 e1                                      mov r2, r1
0065acb4  0c 10 a0 e1                                      mov r1, ip
0065acb8  00 c0 9c e5                                      ldr ip, [ip]
0065acbc  03 90 a0 e1                                      mov sb, r3
0065acc0  0f e0 a0 e1                                      mov lr, pc
0065acc4  38 f0 9c e5                                      ldr pc, [ip, #0x38]
0065acc8  18 10 9d e5                                      ldr r1, [sp, #0x18]
0065accc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0065acd0  03 00 51 e1                                      cmp r1, r3
0065acd4  30 00 00 0a                                      beq #0x65ad9c
0065acd8  d1 30 53 e1                                      ldrsb r3, [r3, #-1]
0065acdc  5c 00 53 e3                                      cmp r3, #0x5c
0065ace0  07 00 00 0a                                      beq #0x65ad04
0065ace4  2f 00 53 e3                                      cmp r3, #0x2f
0065ace8  05 00 00 0a                                      beq #0x65ad04
0065acec  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0065acf0  06 00 a0 e1                                      mov r0, r6
0065acf4  01 10 8f e0                                      add r1, pc, r1
0065acf8  01 20 81 e2                                      add r2, r1, #1
0065acfc  52 17 f3 eb                                      bl #0x320a4c
0065ad00  18 10 9d e5                                      ldr r1, [sp, #0x18]
0065ad04  20 30 95 e5                                      ldr r3, [r5, #0x20]
0065ad08  01 20 a0 e3                                      mov r2, #1
0065ad0c  34 c0 93 e5                                      ldr ip, [r3, #0x34]
0065ad10  02 30 a0 e1                                      mov r3, r2
0065ad14  0c 00 a0 e1                                      mov r0, ip
0065ad18  00 c0 9c e5                                      ldr ip, [ip]
0065ad1c  0f e0 a0 e1                                      mov lr, pc
0065ad20  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0065ad24  08 10 a0 e1                                      mov r1, r8
0065ad28  00 a0 a0 e1                                      mov sl, r0
0065ad2c  09 20 a0 e1                                      mov r2, sb
0065ad30  05 00 a0 e1                                      mov r0, r5
0065ad34  1b ff ff eb                                      bl #0x65a9a8
0065ad38  00 00 5a e3                                      cmp sl, #0
0065ad3c  00 80 a0 e1                                      mov r8, r0
0065ad40  0d 00 00 1a                                      bne #0x65ad7c
0065ad44  18 00 9d e5                                      ldr r0, [sp, #0x18]
0065ad48  06 00 50 e1                                      cmp r0, r6
0065ad4c  02 00 00 0a                                      beq #0x65ad5c
0065ad50  00 00 50 e3                                      cmp r0, #0
0065ad54  00 00 00 0a                                      beq #0x65ad5c
0065ad58  bc d5 f2 eb                                      bl #0x310450
0065ad5c  07 30 94 e7                                      ldr r3, [r4, r7]
0065ad60  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0065ad64  08 00 a0 e1                                      mov r0, r8
0065ad68  00 30 93 e5                                      ldr r3, [r3]
0065ad6c  03 00 52 e1                                      cmp r2, r3
0065ad70  0f 00 00 1a                                      bne #0x65adb4
0065ad74  20 d0 8d e2                                      add sp, sp, #0x20
0065ad78  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065ad7c  20 30 95 e5                                      ldr r3, [r5, #0x20]
0065ad80  18 10 9d e5                                      ldr r1, [sp, #0x18]
0065ad84  34 30 93 e5                                      ldr r3, [r3, #0x34]
0065ad88  03 00 a0 e1                                      mov r0, r3
0065ad8c  00 30 93 e5                                      ldr r3, [r3]
0065ad90  0f e0 a0 e1                                      mov lr, pc
0065ad94  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0065ad98  e9 ff ff ea                                      b #0x65ad44
0065ad9c  08 10 a0 e1                                      mov r1, r8
0065ada0  05 00 a0 e1                                      mov r0, r5
0065ada4  09 20 a0 e1                                      mov r2, sb
0065ada8  fe fe ff eb                                      bl #0x65a9a8
0065adac  00 80 a0 e1                                      mov r8, r0
0065adb0  e3 ff ff ea                                      b #0x65ad44
0065adb4  55 cd f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0065adb8  0c 9e 33 00 ac 40 00 00 64 5f 26 00              .byte 0x0c, 0x9e, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00, 0x64, 0x5f, 0x26, 0x00
