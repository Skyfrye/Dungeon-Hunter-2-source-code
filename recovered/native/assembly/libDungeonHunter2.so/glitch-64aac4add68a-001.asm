; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00362368, declared_size=48, range_size=48, mode=arm
; class-group: glitch
; alias: _ZN6glitch21intrusive_ptr_releaseEPKNS_24ISharedMemoryBlockHeaderINS_5video27CMaterialVertexAttributeMapEEE
; demangled: glitch::intrusive_ptr_release(glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialVertexAttributeMap> const*)
; decoder-mode: arm
00362368  10 40 2d e9                                      push {r4, lr}
0036236c  00 30 90 e5                                      ldr r3, [r0]
00362370  00 40 a0 e1                                      mov r4, r0
00362374  01 30 43 e2                                      sub r3, r3, #1
00362378  00 00 53 e3                                      cmp r3, #0
0036237c  00 30 80 e5                                      str r3, [r0]
00362380  00 00 00 0a                                      beq #0x362388
00362384  10 80 bd e8                                      pop {r4, pc}
00362388  f1 f4 09 eb                                      bl #0x5df754
0036238c  04 00 a0 e1                                      mov r0, r4
00362390  10 40 bd e8                                      pop {r4, lr}
00362394  29 b8 fe ea                                      b #0x310440

; FUNCTION 0x005340ac, declared_size=204, range_size=204, mode=arm
; class-group: glitch
; alias: _ZN6glitch12createDeviceENS_5video13E_DRIVER_TYPEERKNS_4core11dimension2dIiEEjbbbPNS_14IEventReceiverE
; demangled: glitch::createDevice(glitch::video::E_DRIVER_TYPE, glitch::core::dimension2d<int> const&, unsigned int, bool, bool, bool, glitch::IEventReceiver*)
; decoder-mode: arm
005340ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005340b0  bc c0 9f e5                                      ldr ip, [pc, #0xbc]
005340b4  58 d0 4d e2                                      sub sp, sp, #0x58
005340b8  04 60 91 e5                                      ldr r6, [r1, #4]
005340bc  0c c0 8f e0                                      add ip, pc, ip
005340c0  00 70 91 e5                                      ldr r7, [r1]
005340c4  3c c0 8d e5                                      str ip, [sp, #0x3c]
005340c8  05 c6 a0 e3                                      mov ip, #0x500000
005340cc  40 c0 8d e5                                      str ip, [sp, #0x40]
005340d0  0a c8 a0 e3                                      mov ip, #0xa0000
005340d4  70 50 dd e5                                      ldrb r5, [sp, #0x70]
005340d8  74 40 dd e5                                      ldrb r4, [sp, #0x74]
005340dc  44 c0 8d e5                                      str ip, [sp, #0x44]
005340e0  0e 30 cd e5                                      strb r3, [sp, #0xe]
005340e4  02 c8 a0 e3                                      mov ip, #0x20000
005340e8  78 30 9d e5                                      ldr r3, [sp, #0x78]
005340ec  48 c0 8d e5                                      str ip, [sp, #0x48]
005340f0  10 80 a0 e3                                      mov r8, #0x10
005340f4  02 ca a0 e3                                      mov ip, #0x2000
005340f8  00 10 a0 e3                                      mov r1, #0
005340fc  00 00 8d e5                                      str r0, [sp]
00534100  00 e0 e0 e3                                      mvn lr, #0
00534104  0d 80 cd e5                                      strb r8, [sp, #0xd]
00534108  4c c0 8d e5                                      str ip, [sp, #0x4c]
0053410c  01 87 a0 e3                                      mov r8, #0x40000
00534110  fe c5 a0 e3                                      mov ip, #0x3f800000
00534114  0d 00 a0 e1                                      mov r0, sp
00534118  20 80 8d e5                                      str r8, [sp, #0x20]
0053411c  38 e0 8d e5                                      str lr, [sp, #0x38]
00534120  50 c0 8d e5                                      str ip, [sp, #0x50]
00534124  54 10 8d e5                                      str r1, [sp, #0x54]
00534128  04 70 8d e5                                      str r7, [sp, #4]
0053412c  08 60 8d e5                                      str r6, [sp, #8]
00534130  0c 20 cd e5                                      strb r2, [sp, #0xc]
00534134  0f 50 cd e5                                      strb r5, [sp, #0xf]
00534138  10 40 cd e5                                      strb r4, [sp, #0x10]
0053413c  28 30 8d e5                                      str r3, [sp, #0x28]
00534140  11 10 cd e5                                      strb r1, [sp, #0x11]
00534144  14 10 8d e5                                      str r1, [sp, #0x14]
00534148  18 10 8d e5                                      str r1, [sp, #0x18]
0053414c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00534150  24 10 cd e5                                      strb r1, [sp, #0x24]
00534154  25 10 cd e5                                      strb r1, [sp, #0x25]
00534158  26 10 cd e5                                      strb r1, [sp, #0x26]
0053415c  2c 10 8d e5                                      str r1, [sp, #0x2c]
00534160  30 10 cd e5                                      strb r1, [sp, #0x30]
00534164  34 e0 8d e5                                      str lr, [sp, #0x34]
00534168  76 b1 05 eb                                      bl #0x6a0748
0053416c  58 d0 8d e2                                      add sp, sp, #0x58
00534170  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00534174  84 9b 3a 00                                      .byte 0x84, 0x9b, 0x3a, 0x00

; FUNCTION 0x00589de8, declared_size=48, range_size=48, mode=arm
; class-group: glitch
; alias: _ZN6glitch21intrusive_ptr_releaseEPKNS_24ISharedMemoryBlockHeaderINS_5video9CMaterialEEE
; demangled: glitch::intrusive_ptr_release(glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> const*)
; decoder-mode: arm
00589de8  10 40 2d e9                                      push {r4, lr}
00589dec  00 30 90 e5                                      ldr r3, [r0]
00589df0  00 40 a0 e1                                      mov r4, r0
00589df4  01 30 43 e2                                      sub r3, r3, #1
00589df8  00 00 53 e3                                      cmp r3, #0
00589dfc  00 30 80 e5                                      str r3, [r0]
00589e00  00 00 00 0a                                      beq #0x589e08
00589e04  10 80 bd e8                                      pop {r4, pc}
00589e08  5a 08 01 eb                                      bl #0x5cbf78
00589e0c  04 00 a0 e1                                      mov r0, r4
00589e10  10 40 bd e8                                      pop {r4, lr}
00589e14  25 11 f6 ea                                      b #0x30e2b0

; FUNCTION 0x005a20bc, declared_size=24, range_size=24, mode=arm
; class-group: glitch
; alias: _ZN6glitcheqERKSt4pairIjNS_4core8aabbox3dIfEEES6_
; demangled: glitch::operator==(std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, std::pair<unsigned int, glitch::core::aabbox3d<float> > const&)
; decoder-mode: arm
005a20bc  00 30 90 e5                                      ldr r3, [r0]
005a20c0  00 00 91 e5                                      ldr r0, [r1]
005a20c4  00 00 53 e1                                      cmp r3, r0
005a20c8  00 00 a0 13                                      movne r0, #0
005a20cc  01 00 a0 03                                      moveq r0, #1
005a20d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a20d4, declared_size=140, range_size=140, mode=arm
; class-group: glitch
; alias: _ZN6glitch13lessThanPlaneERKSt4pairIjNS_4core8aabbox3dIfEEEfc
; demangled: glitch::lessThanPlane(std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, float, char)
; decoder-mode: arm
005a20d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a20d8  00 40 a0 e1                                      mov r4, r0
005a20dc  10 d0 4d e2                                      sub sp, sp, #0x10
005a20e0  08 00 90 e5                                      ldr r0, [r0, #8]
005a20e4  01 50 a0 e1                                      mov r5, r1
005a20e8  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a20ec  02 60 a0 e1                                      mov r6, r2
005a20f0  ab b2 f5 eb                                      bl #0x30eba4
005a20f4  3f 14 a0 e3                                      mov r1, #0x3f000000
005a20f8  1b b3 f5 eb                                      bl #0x30ed6c
005a20fc  18 10 94 e5                                      ldr r1, [r4, #0x18]
005a2100  00 80 a0 e1                                      mov r8, r0
005a2104  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a2108  a5 b2 f5 eb                                      bl #0x30eba4
005a210c  3f 14 a0 e3                                      mov r1, #0x3f000000
005a2110  15 b3 f5 eb                                      bl #0x30ed6c
005a2114  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a2118  00 70 a0 e1                                      mov r7, r0
005a211c  04 00 94 e5                                      ldr r0, [r4, #4]
005a2120  9f b2 f5 eb                                      bl #0x30eba4
005a2124  3f 14 a0 e3                                      mov r1, #0x3f000000
005a2128  0f b3 f5 eb                                      bl #0x30ed6c
005a212c  08 80 8d e5                                      str r8, [sp, #8]
005a2130  04 00 8d e5                                      str r0, [sp, #4]
005a2134  0c 70 8d e5                                      str r7, [sp, #0xc]
005a2138  04 30 8d e2                                      add r3, sp, #4
005a213c  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
005a2140  05 10 a0 e1                                      mov r1, r5
005a2144  70 b1 f5 eb                                      bl #0x30e70c
005a2148  00 00 50 e3                                      cmp r0, #0
005a214c  00 00 a0 e3                                      mov r0, #0
005a2150  01 00 a0 13                                      movne r0, #1
005a2154  01 00 00 e2                                      and r0, r0, #1
005a2158  10 d0 8d e2                                      add sp, sp, #0x10
005a215c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a2160, declared_size=264, range_size=264, mode=arm
; class-group: glitch
; alias: _ZN6glitch14distanceKdTreeERKSt4pairIjNS_4core8aabbox3dIfEEERKS3_
; demangled: glitch::distanceKdTree(std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
005a2160  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a2164  00 50 a0 e1                                      mov r5, r0
005a2168  01 40 a0 e1                                      mov r4, r1
005a216c  04 00 90 e5                                      ldr r0, [r0, #4]
005a2170  10 10 95 e5                                      ldr r1, [r5, #0x10]
005a2174  8a b2 f5 eb                                      bl #0x30eba4
005a2178  3f 14 a0 e3                                      mov r1, #0x3f000000
005a217c  fa b2 f5 eb                                      bl #0x30ed6c
005a2180  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a2184  00 60 a0 e1                                      mov r6, r0
005a2188  00 00 94 e5                                      ldr r0, [r4]
005a218c  84 b2 f5 eb                                      bl #0x30eba4
005a2190  3f 14 a0 e3                                      mov r1, #0x3f000000
005a2194  f4 b2 f5 eb                                      bl #0x30ed6c
005a2198  00 10 a0 e1                                      mov r1, r0
005a219c  06 00 a0 e1                                      mov r0, r6
005a21a0  81 b0 f5 eb                                      bl #0x30e3ac
005a21a4  14 10 95 e5                                      ldr r1, [r5, #0x14]
005a21a8  00 70 a0 e1                                      mov r7, r0
005a21ac  08 00 95 e5                                      ldr r0, [r5, #8]
005a21b0  7b b2 f5 eb                                      bl #0x30eba4
005a21b4  3f 14 a0 e3                                      mov r1, #0x3f000000
005a21b8  eb b2 f5 eb                                      bl #0x30ed6c
005a21bc  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a21c0  00 60 a0 e1                                      mov r6, r0
005a21c4  04 00 94 e5                                      ldr r0, [r4, #4]
005a21c8  75 b2 f5 eb                                      bl #0x30eba4
005a21cc  3f 14 a0 e3                                      mov r1, #0x3f000000
005a21d0  e5 b2 f5 eb                                      bl #0x30ed6c
005a21d4  00 10 a0 e1                                      mov r1, r0
005a21d8  06 00 a0 e1                                      mov r0, r6
005a21dc  72 b0 f5 eb                                      bl #0x30e3ac
005a21e0  18 10 95 e5                                      ldr r1, [r5, #0x18]
005a21e4  00 60 a0 e1                                      mov r6, r0
005a21e8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005a21ec  6c b2 f5 eb                                      bl #0x30eba4
005a21f0  3f 14 a0 e3                                      mov r1, #0x3f000000
005a21f4  dc b2 f5 eb                                      bl #0x30ed6c
005a21f8  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a21fc  00 50 a0 e1                                      mov r5, r0
005a2200  08 00 94 e5                                      ldr r0, [r4, #8]
005a2204  66 b2 f5 eb                                      bl #0x30eba4
005a2208  3f 14 a0 e3                                      mov r1, #0x3f000000
005a220c  d6 b2 f5 eb                                      bl #0x30ed6c
005a2210  00 10 a0 e1                                      mov r1, r0
005a2214  05 00 a0 e1                                      mov r0, r5
005a2218  63 b0 f5 eb                                      bl #0x30e3ac
005a221c  07 10 a0 e1                                      mov r1, r7
005a2220  00 50 a0 e1                                      mov r5, r0
005a2224  07 00 a0 e1                                      mov r0, r7
005a2228  cf b2 f5 eb                                      bl #0x30ed6c
005a222c  06 10 a0 e1                                      mov r1, r6
005a2230  00 40 a0 e1                                      mov r4, r0
005a2234  06 00 a0 e1                                      mov r0, r6
005a2238  cb b2 f5 eb                                      bl #0x30ed6c
005a223c  00 10 a0 e1                                      mov r1, r0
005a2240  04 00 a0 e1                                      mov r0, r4
005a2244  56 b2 f5 eb                                      bl #0x30eba4
005a2248  05 10 a0 e1                                      mov r1, r5
005a224c  00 40 a0 e1                                      mov r4, r0
005a2250  05 00 a0 e1                                      mov r0, r5
005a2254  c4 b2 f5 eb                                      bl #0x30ed6c
005a2258  00 10 a0 e1                                      mov r1, r0
005a225c  04 00 a0 e1                                      mov r0, r4
005a2260  4f b2 f5 eb                                      bl #0x30eba4
005a2264  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a2268, declared_size=264, range_size=264, mode=arm
; class-group: glitch
; alias: _ZN6glitch14distanceKdTreeERKSt4pairIjNS_4core8aabbox3dIfEEES6_
; demangled: glitch::distanceKdTree(std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, std::pair<unsigned int, glitch::core::aabbox3d<float> > const&)
; decoder-mode: arm
005a2268  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a226c  00 50 a0 e1                                      mov r5, r0
005a2270  01 40 a0 e1                                      mov r4, r1
005a2274  04 00 90 e5                                      ldr r0, [r0, #4]
005a2278  10 10 95 e5                                      ldr r1, [r5, #0x10]
005a227c  48 b2 f5 eb                                      bl #0x30eba4
005a2280  3f 14 a0 e3                                      mov r1, #0x3f000000
005a2284  b8 b2 f5 eb                                      bl #0x30ed6c
005a2288  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a228c  00 60 a0 e1                                      mov r6, r0
005a2290  04 00 94 e5                                      ldr r0, [r4, #4]
005a2294  42 b2 f5 eb                                      bl #0x30eba4
005a2298  3f 14 a0 e3                                      mov r1, #0x3f000000
005a229c  b2 b2 f5 eb                                      bl #0x30ed6c
005a22a0  00 10 a0 e1                                      mov r1, r0
005a22a4  06 00 a0 e1                                      mov r0, r6
005a22a8  3f b0 f5 eb                                      bl #0x30e3ac
005a22ac  14 10 95 e5                                      ldr r1, [r5, #0x14]
005a22b0  00 70 a0 e1                                      mov r7, r0
005a22b4  08 00 95 e5                                      ldr r0, [r5, #8]
005a22b8  39 b2 f5 eb                                      bl #0x30eba4
005a22bc  3f 14 a0 e3                                      mov r1, #0x3f000000
005a22c0  a9 b2 f5 eb                                      bl #0x30ed6c
005a22c4  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a22c8  00 60 a0 e1                                      mov r6, r0
005a22cc  08 00 94 e5                                      ldr r0, [r4, #8]
005a22d0  33 b2 f5 eb                                      bl #0x30eba4
005a22d4  3f 14 a0 e3                                      mov r1, #0x3f000000
005a22d8  a3 b2 f5 eb                                      bl #0x30ed6c
005a22dc  00 10 a0 e1                                      mov r1, r0
005a22e0  06 00 a0 e1                                      mov r0, r6
005a22e4  30 b0 f5 eb                                      bl #0x30e3ac
005a22e8  18 10 95 e5                                      ldr r1, [r5, #0x18]
005a22ec  00 60 a0 e1                                      mov r6, r0
005a22f0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005a22f4  2a b2 f5 eb                                      bl #0x30eba4
005a22f8  3f 14 a0 e3                                      mov r1, #0x3f000000
005a22fc  9a b2 f5 eb                                      bl #0x30ed6c
005a2300  18 10 94 e5                                      ldr r1, [r4, #0x18]
005a2304  00 50 a0 e1                                      mov r5, r0
005a2308  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a230c  24 b2 f5 eb                                      bl #0x30eba4
005a2310  3f 14 a0 e3                                      mov r1, #0x3f000000
005a2314  94 b2 f5 eb                                      bl #0x30ed6c
005a2318  00 10 a0 e1                                      mov r1, r0
005a231c  05 00 a0 e1                                      mov r0, r5
005a2320  21 b0 f5 eb                                      bl #0x30e3ac
005a2324  07 10 a0 e1                                      mov r1, r7
005a2328  00 50 a0 e1                                      mov r5, r0
005a232c  07 00 a0 e1                                      mov r0, r7
005a2330  8d b2 f5 eb                                      bl #0x30ed6c
005a2334  06 10 a0 e1                                      mov r1, r6
005a2338  00 40 a0 e1                                      mov r4, r0
005a233c  06 00 a0 e1                                      mov r0, r6
005a2340  89 b2 f5 eb                                      bl #0x30ed6c
005a2344  00 10 a0 e1                                      mov r1, r0
005a2348  04 00 a0 e1                                      mov r0, r4
005a234c  14 b2 f5 eb                                      bl #0x30eba4
005a2350  05 10 a0 e1                                      mov r1, r5
005a2354  00 40 a0 e1                                      mov r4, r0
005a2358  05 00 a0 e1                                      mov r0, r5
005a235c  82 b2 f5 eb                                      bl #0x30ed6c
005a2360  00 10 a0 e1                                      mov r1, r0
005a2364  04 00 a0 e1                                      mov r0, r4
005a2368  0d b2 f5 eb                                      bl #0x30eba4
005a236c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a2370, declared_size=132, range_size=132, mode=arm
; class-group: glitch
; alias: _ZN6glitch14distanceKdTreeERKSt4pairIjNS_4core8aabbox3dIfEEEfc
; demangled: glitch::distanceKdTree(std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, float, char)
; decoder-mode: arm
005a2370  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a2374  00 40 a0 e1                                      mov r4, r0
005a2378  10 d0 4d e2                                      sub sp, sp, #0x10
005a237c  08 00 90 e5                                      ldr r0, [r0, #8]
005a2380  01 50 a0 e1                                      mov r5, r1
005a2384  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a2388  02 60 a0 e1                                      mov r6, r2
005a238c  04 b2 f5 eb                                      bl #0x30eba4
005a2390  3f 14 a0 e3                                      mov r1, #0x3f000000
005a2394  74 b2 f5 eb                                      bl #0x30ed6c
005a2398  18 10 94 e5                                      ldr r1, [r4, #0x18]
005a239c  00 80 a0 e1                                      mov r8, r0
005a23a0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a23a4  fe b1 f5 eb                                      bl #0x30eba4
005a23a8  3f 14 a0 e3                                      mov r1, #0x3f000000
005a23ac  6e b2 f5 eb                                      bl #0x30ed6c
005a23b0  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a23b4  00 70 a0 e1                                      mov r7, r0
005a23b8  04 00 94 e5                                      ldr r0, [r4, #4]
005a23bc  f8 b1 f5 eb                                      bl #0x30eba4
005a23c0  3f 14 a0 e3                                      mov r1, #0x3f000000
005a23c4  68 b2 f5 eb                                      bl #0x30ed6c
005a23c8  08 80 8d e5                                      str r8, [sp, #8]
005a23cc  04 00 8d e5                                      str r0, [sp, #4]
005a23d0  0c 70 8d e5                                      str r7, [sp, #0xc]
005a23d4  04 30 8d e2                                      add r3, sp, #4
005a23d8  05 10 a0 e1                                      mov r1, r5
005a23dc  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
005a23e0  f1 af f5 eb                                      bl #0x30e3ac
005a23e4  00 10 a0 e1                                      mov r1, r0
005a23e8  5f b2 f5 eb                                      bl #0x30ed6c
005a23ec  10 d0 8d e2                                      add sp, sp, #0x10
005a23f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006a0748, declared_size=84, range_size=84, mode=arm
; class-group: glitch
; alias: _ZN6glitch14createDeviceExERKNS_19SCreationParametersE
; demangled: glitch::createDeviceEx(glitch::SCreationParameters const&)
; decoder-mode: arm
006a0748  70 40 2d e9                                      push {r4, r5, r6, lr}
006a074c  00 50 a0 e1                                      mov r5, r0
006a0750  43 0f a0 e3                                      mov r0, #0x10c
006a0754  4c b8 f1 eb                                      bl #0x30e88c
006a0758  05 10 a0 e1                                      mov r1, r5
006a075c  00 40 a0 e1                                      mov r4, r0
006a0760  b3 ff ff eb                                      bl #0x6a0634
006a0764  00 00 54 e3                                      cmp r4, #0
006a0768  02 00 00 0a                                      beq #0x6a0778
006a076c  10 60 94 e5                                      ldr r6, [r4, #0x10]
006a0770  00 00 56 e3                                      cmp r6, #0
006a0774  01 00 00 0a                                      beq #0x6a0780
006a0778  04 00 a0 e1                                      mov r0, r4
006a077c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a0780  00 30 95 e5                                      ldr r3, [r5]
006a0784  00 00 53 e3                                      cmp r3, #0
006a0788  fa ff ff 0a                                      beq #0x6a0778
006a078c  04 00 a0 e1                                      mov r0, r4
006a0790  7b f3 f1 eb                                      bl #0x31d584
006a0794  06 00 a0 e1                                      mov r0, r6
006a0798  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a0f08, declared_size=136, range_size=136, mode=arm
; class-group: glitch
; alias: _ZN6glitch22getInitializationStepsEv
; demangled: glitch::getInitializationSteps()
; decoder-mode: arm
006a0f08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a0f0c  68 50 9f e5                                      ldr r5, [pc, #0x68]
006a0f10  68 40 9f e5                                      ldr r4, [pc, #0x68]
006a0f14  05 50 8f e0                                      add r5, pc, r5
006a0f18  0c 60 95 e5                                      ldr r6, [r5, #0xc]
006a0f1c  04 40 8f e0                                      add r4, pc, r4
006a0f20  01 60 16 e2                                      ands r6, r6, #1
006a0f24  03 00 00 0a                                      beq #0x6a0f38
006a0f28  54 00 9f e5                                      ldr r0, [pc, #0x54]
006a0f2c  00 00 8f e0                                      add r0, pc, r0
006a0f30  10 00 80 e2                                      add r0, r0, #0x10
006a0f34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a0f38  0c 70 85 e2                                      add r7, r5, #0xc
006a0f3c  07 00 a0 e1                                      mov r0, r7
006a0f40  09 b6 f1 eb                                      bl #0x30e76c
006a0f44  00 00 50 e3                                      cmp r0, #0
006a0f48  f6 ff ff 0a                                      beq #0x6a0f28
006a0f4c  07 00 a0 e1                                      mov r0, r7
006a0f50  18 60 85 e5                                      str r6, [r5, #0x18]
006a0f54  10 60 85 e5                                      str r6, [r5, #0x10]
006a0f58  14 60 85 e5                                      str r6, [r5, #0x14]
006a0f5c  b6 b6 f1 eb                                      bl #0x30ea3c
006a0f60  20 30 9f e5                                      ldr r3, [pc, #0x20]
006a0f64  04 00 87 e2                                      add r0, r7, #4
006a0f68  03 10 94 e7                                      ldr r1, [r4, r3]
006a0f6c  18 30 9f e5                                      ldr r3, [pc, #0x18]
006a0f70  03 20 94 e7                                      ldr r2, [r4, r3]
006a0f74  e2 b4 f1 eb                                      bl #0x30e304
006a0f78  ea ff ff ea                                      b #0x6a0f28
; mapping-symbol data/literal pool
006a0f7c  fc 66 35 00 74 3b 2f 00 e4 66 35 00 38 09 00 00  .byte 0xfc, 0x66, 0x35, 0x00, 0x74, 0x3b, 0x2f, 0x00, 0xe4, 0x66, 0x35, 0x00, 0x38, 0x09, 0x00, 0x00
006a0f8c  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006a0f90, declared_size=148, range_size=148, mode=arm
; class-group: glitch
; alias: _ZN6glitch4exitEv
; demangled: glitch::exit()
; decoder-mode: arm
006a0f90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a0f94  80 60 9f e5                                      ldr r6, [pc, #0x80]
006a0f98  80 80 9f e5                                      ldr r8, [pc, #0x80]
006a0f9c  06 60 8f e0                                      add r6, pc, r6
006a0fa0  08 70 96 e7                                      ldr r7, [r6, r8]
006a0fa4  00 00 97 e5                                      ldr r0, [r7]
006a0fa8  01 00 40 e2                                      sub r0, r0, #1
006a0fac  00 00 50 e3                                      cmp r0, #0
006a0fb0  00 00 87 e5                                      str r0, [r7]
006a0fb4  02 00 00 0a                                      beq #0x6a0fc4
006a0fb8  01 00 70 e2                                      rsbs r0, r0, #1
006a0fbc  00 00 a0 33                                      movlo r0, #0
006a0fc0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a0fc4  cf ff ff eb                                      bl #0x6a0f08
006a0fc8  28 00 90 e8                                      ldm r0, {r3, r5}
006a0fcc  05 50 63 e0                                      rsb r5, r3, r5
006a0fd0  45 51 a0 e1                                      asr r5, r5, #2
006a0fd4  01 40 55 e2                                      subs r4, r5, #1
006a0fd8  00 00 97 45                                      ldrmi r0, [r7]
006a0fdc  f5 ff ff 4a                                      bmi #0x6a0fb8
006a0fe0  07 51 45 e2                                      sub r5, r5, #0xc0000001
006a0fe4  05 51 a0 e1                                      lsl r5, r5, #2
006a0fe8  c6 ff ff eb                                      bl #0x6a0f08
006a0fec  00 30 90 e5                                      ldr r3, [r0]
006a0ff0  00 00 a0 e3                                      mov r0, #0
006a0ff4  0f e0 a0 e1                                      mov lr, pc
006a0ff8  05 f0 93 e7                                      ldr pc, [r3, r5]
006a0ffc  01 40 54 e2                                      subs r4, r4, #1
006a1000  04 50 45 e2                                      sub r5, r5, #4
006a1004  f7 ff ff 5a                                      bpl #0x6a0fe8
006a1008  08 30 96 e7                                      ldr r3, [r6, r8]
006a100c  00 00 93 e5                                      ldr r0, [r3]
006a1010  01 00 70 e2                                      rsbs r0, r0, #1
006a1014  00 00 a0 33                                      movlo r0, #0
006a1018  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006a101c  f4 3a 2f 00 40 24 00 00                          .byte 0xf4, 0x3a, 0x2f, 0x00, 0x40, 0x24, 0x00, 0x00

; FUNCTION 0x006a1024, declared_size=140, range_size=140, mode=arm
; class-group: glitch
; alias: _ZN6glitch4initEv
; demangled: glitch::init()
; decoder-mode: arm
006a1024  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a1028  78 50 9f e5                                      ldr r5, [pc, #0x78]
006a102c  78 70 9f e5                                      ldr r7, [pc, #0x78]
006a1030  05 50 8f e0                                      add r5, pc, r5
006a1034  07 80 95 e7                                      ldr r8, [r5, r7]
006a1038  00 40 98 e5                                      ldr r4, [r8]
006a103c  00 00 54 e3                                      cmp r4, #0
006a1040  06 00 00 0a                                      beq #0x6a1060
006a1044  07 30 95 e7                                      ldr r3, [r5, r7]
006a1048  01 40 84 e2                                      add r4, r4, #1
006a104c  01 00 54 e3                                      cmp r4, #1
006a1050  00 00 a0 13                                      movne r0, #0
006a1054  01 00 a0 03                                      moveq r0, #1
006a1058  00 40 83 e5                                      str r4, [r3]
006a105c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a1060  a8 ff ff eb                                      bl #0x6a0f08
006a1064  48 00 90 e8                                      ldm r0, {r3, r6}
006a1068  06 60 63 e0                                      rsb r6, r3, r6
006a106c  46 61 a0 e1                                      asr r6, r6, #2
006a1070  00 00 56 e3                                      cmp r6, #0
006a1074  00 40 98 d5                                      ldrle r4, [r8]
006a1078  f1 ff ff da                                      ble #0x6a1044
006a107c  a1 ff ff eb                                      bl #0x6a0f08
006a1080  00 30 90 e5                                      ldr r3, [r0]
006a1084  01 00 a0 e3                                      mov r0, #1
006a1088  0f e0 a0 e1                                      mov lr, pc
006a108c  04 f1 93 e7                                      ldr pc, [r3, r4, lsl #2]
006a1090  01 40 84 e2                                      add r4, r4, #1
006a1094  06 00 54 e1                                      cmp r4, r6
006a1098  f7 ff ff 1a                                      bne #0x6a107c
006a109c  07 30 95 e7                                      ldr r3, [r5, r7]
006a10a0  00 40 93 e5                                      ldr r4, [r3]
006a10a4  e6 ff ff ea                                      b #0x6a1044
; mapping-symbol data/literal pool
006a10a8  60 3a 2f 00 40 24 00 00                          .byte 0x60, 0x3a, 0x2f, 0x00, 0x40, 0x24, 0x00, 0x00

; FUNCTION 0x006a10b0, declared_size=220, range_size=220, mode=arm
; class-group: glitch
; alias: _ZN6glitch16registerInitStepEPFvbE
; demangled: glitch::registerInitStep(void (*)(bool))
; decoder-mode: arm
006a10b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a10b4  00 50 a0 e1                                      mov r5, r0
006a10b8  92 ff ff eb                                      bl #0x6a0f08
006a10bc  04 80 90 e5                                      ldr r8, [r0, #4]
006a10c0  08 30 90 e5                                      ldr r3, [r0, #8]
006a10c4  00 40 a0 e1                                      mov r4, r0
006a10c8  03 00 58 e1                                      cmp r8, r3
006a10cc  09 00 00 0a                                      beq #0x6a10f8
006a10d0  00 50 88 e5                                      str r5, [r8]
006a10d4  04 30 90 e5                                      ldr r3, [r0, #4]
006a10d8  04 30 83 e2                                      add r3, r3, #4
006a10dc  04 30 80 e5                                      str r3, [r0, #4]
006a10e0  88 ff ff eb                                      bl #0x6a0f08
006a10e4  00 30 90 e5                                      ldr r3, [r0]
006a10e8  04 00 90 e5                                      ldr r0, [r0, #4]
006a10ec  00 00 63 e0                                      rsb r0, r3, r0
006a10f0  40 01 a0 e1                                      asr r0, r0, #2
006a10f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a10f8  00 30 90 e5                                      ldr r3, [r0]
006a10fc  08 30 63 e0                                      rsb r3, r3, r8
006a1100  43 31 a0 e1                                      asr r3, r3, #2
006a1104  01 00 53 e3                                      cmp r3, #1
006a1108  03 70 83 20                                      addhs r7, r3, r3
006a110c  01 70 83 32                                      addlo r7, r3, #1
006a1110  07 01 77 e3                                      cmn r7, #0xc0000001
006a1114  16 00 00 8a                                      bhi #0x6a1174
006a1118  07 00 53 e1                                      cmp r3, r7
006a111c  07 71 a0 91                                      lslls r7, r7, #2
006a1120  13 00 00 8a                                      bhi #0x6a1174
006a1124  00 10 a0 e3                                      mov r1, #0
006a1128  07 00 a0 e1                                      mov r0, r7
006a112c  0d bd f1 eb                                      bl #0x310568
006a1130  00 10 94 e5                                      ldr r1, [r4]
006a1134  00 60 a0 e1                                      mov r6, r0
006a1138  01 80 58 e0                                      subs r8, r8, r1
006a113c  00 80 a0 01                                      moveq r8, r0
006a1140  0d 00 00 1a                                      bne #0x6a117c
006a1144  04 50 88 e4                                      str r5, [r8], #4
006a1148  00 00 94 e5                                      ldr r0, [r4]
006a114c  07 70 86 e0                                      add r7, r6, r7
006a1150  be bc f1 eb                                      bl #0x310450
006a1154  08 70 84 e5                                      str r7, [r4, #8]
006a1158  40 01 84 e8                                      stm r4, {r6, r8}
006a115c  69 ff ff eb                                      bl #0x6a0f08
006a1160  00 30 90 e5                                      ldr r3, [r0]
006a1164  04 00 90 e5                                      ldr r0, [r0, #4]
006a1168  00 00 63 e0                                      rsb r0, r3, r0
006a116c  40 01 a0 e1                                      asr r0, r0, #2
006a1170  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a1174  03 70 e0 e3                                      mvn r7, #3
006a1178  e9 ff ff ea                                      b #0x6a1124
006a117c  08 20 a0 e1                                      mov r2, r8
006a1180  6c b3 f1 eb                                      bl #0x30df38
006a1184  08 80 80 e0                                      add r8, r0, r8
006a1188  ed ff ff ea                                      b #0x6a1144

; FUNCTION 0x006ff948, declared_size=48, range_size=48, mode=arm
; class-group: glitch
; alias: _ZN6glitch21intrusive_ptr_releaseEPKNS_24ISharedMemoryBlockHeaderINS_5video14CVertexStreamsEEE
; demangled: glitch::intrusive_ptr_release(glitch::ISharedMemoryBlockHeader<glitch::video::CVertexStreams> const*)
; decoder-mode: arm
006ff948  10 40 2d e9                                      push {r4, lr}
006ff94c  00 30 90 e5                                      ldr r3, [r0]
006ff950  00 40 a0 e1                                      mov r4, r0
006ff954  01 30 43 e2                                      sub r3, r3, #1
006ff958  00 00 53 e3                                      cmp r3, #0
006ff95c  00 30 80 e5                                      str r3, [r0]
006ff960  00 00 00 0a                                      beq #0x6ff968
006ff964  10 80 bd e8                                      pop {r4, pc}
006ff968  2b 84 fa eb                                      bl #0x5a0a1c
006ff96c  04 00 a0 e1                                      mov r0, r4
006ff970  10 40 bd e8                                      pop {r4, lr}
006ff974  4d 3a f0 ea                                      b #0x30e2b0
