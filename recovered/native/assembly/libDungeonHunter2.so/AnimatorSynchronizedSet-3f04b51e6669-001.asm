; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00368efc, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZNK23AnimatorSynchronizedSet7getTypeEv
; demangled: AnimatorSynchronizedSet::getType() const
; decoder-mode: arm
00368efc  0f 00 a0 e3                                      mov r0, #0xf
00368f00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00368f24, declared_size=32, range_size=32, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZN23AnimatorSynchronizedSet11animateNodeEPN6glitch5scene10ISceneNodeEj
; demangled: AnimatorSynchronizedSet::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
00368f24  70 40 2d e9                                      push {r4, r5, r6, lr}
00368f28  00 50 a0 e1                                      mov r5, r0
00368f2c  02 40 a0 e1                                      mov r4, r2
00368f30  ce d8 0b eb                                      bl #0x65f270
00368f34  84 00 85 e2                                      add r0, r5, #0x84
00368f38  04 10 a0 e1                                      mov r1, r4
00368f3c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00368f40  a8 ed ff ea                                      b #0x3645e8

; FUNCTION 0x00368f44, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZThn88_N23AnimatorSynchronizedSetD1Ev
; demangled: non-virtual thunk to AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00368f44  58 00 40 e2                                      sub r0, r0, #0x58
00368f48  01 00 00 ea                                      b #0x368f54

; FUNCTION 0x00368f4c, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZThn4_N23AnimatorSynchronizedSetD1Ev
; demangled: non-virtual thunk to AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00368f4c  04 00 40 e2                                      sub r0, r0, #4
00368f50  ff ff ff ea                                      b #0x368f54

; FUNCTION 0x00368f54, declared_size=104, range_size=104, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZN23AnimatorSynchronizedSetD1Ev
; demangled: AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00368f54  70 40 2d e9                                      push {r4, r5, r6, lr}
00368f58  50 50 9f e5                                      ldr r5, [pc, #0x50]
00368f5c  50 30 9f e5                                      ldr r3, [pc, #0x50]
00368f60  00 40 a0 e1                                      mov r4, r0
00368f64  05 50 8f e0                                      add r5, pc, r5
00368f68  03 30 95 e7                                      ldr r3, [r5, r3]
00368f6c  84 00 80 e2                                      add r0, r0, #0x84
00368f70  f4 20 83 e2                                      add r2, r3, #0xf4
00368f74  0c c0 83 e2                                      add ip, r3, #0xc
00368f78  52 1f 83 e2                                      add r1, r3, #0x148
00368f7c  e0 30 83 e2                                      add r3, r3, #0xe0
00368f80  00 c0 84 e5                                      str ip, [r4]
00368f84  c0 10 84 e5                                      str r1, [r4, #0xc0]
00368f88  04 30 84 e5                                      str r3, [r4, #4]
00368f8c  58 20 84 e5                                      str r2, [r4, #0x58]
00368f90  28 ee ff eb                                      bl #0x364838
00368f94  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00368f98  04 00 a0 e1                                      mov r0, r4
00368f9c  01 10 95 e7                                      ldr r1, [r5, r1]
00368fa0  04 10 81 e2                                      add r1, r1, #4
00368fa4  19 e7 0b eb                                      bl #0x662c10
00368fa8  04 00 a0 e1                                      mov r0, r4
00368fac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00368fb0  2c bb 62 00 cc 45 00 00 10 40 00 00              .byte 0x2c, 0xbb, 0x62, 0x00, 0xcc, 0x45, 0x00, 0x00, 0x10, 0x40, 0x00, 0x00

; FUNCTION 0x00368fbc, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZThn88_N23AnimatorSynchronizedSetD0Ev
; demangled: non-virtual thunk to AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00368fbc  58 00 40 e2                                      sub r0, r0, #0x58
00368fc0  01 00 00 ea                                      b #0x368fcc

; FUNCTION 0x00368fc4, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZThn4_N23AnimatorSynchronizedSetD0Ev
; demangled: non-virtual thunk to AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00368fc4  04 00 40 e2                                      sub r0, r0, #4
00368fc8  ff ff ff ea                                      b #0x368fcc

; FUNCTION 0x00368fcc, declared_size=28, range_size=28, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZN23AnimatorSynchronizedSetD0Ev
; demangled: AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00368fcc  10 40 2d e9                                      push {r4, lr}
00368fd0  00 40 a0 e1                                      mov r4, r0
00368fd4  de ff ff eb                                      bl #0x368f54
00368fd8  04 00 a0 e1                                      mov r0, r4
00368fdc  17 9d fe eb                                      bl #0x310440
00368fe0  04 00 a0 e1                                      mov r0, r4
00368fe4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00368fe8, declared_size=100, range_size=100, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZN23AnimatorSynchronizedSetD2Ev
; demangled: AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00368fe8  70 40 2d e9                                      push {r4, r5, r6, lr}
00368fec  50 30 9f e5                                      ldr r3, [pc, #0x50]
00368ff0  01 50 a0 e1                                      mov r5, r1
00368ff4  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00368ff8  00 10 91 e5                                      ldr r1, [r1]
00368ffc  03 30 8f e0                                      add r3, pc, r3
00369000  02 20 93 e7                                      ldr r2, [r3, r2]
00369004  00 10 80 e5                                      str r1, [r0]
00369008  00 40 a0 e1                                      mov r4, r0
0036900c  2c c0 95 e5                                      ldr ip, [r5, #0x2c]
00369010  0c 00 11 e5                                      ldr r0, [r1, #-0xc]
00369014  f4 10 82 e2                                      add r1, r2, #0xf4
00369018  e0 20 82 e2                                      add r2, r2, #0xe0
0036901c  00 c0 84 e7                                      str ip, [r4, r0]
00369020  04 20 84 e5                                      str r2, [r4, #4]
00369024  58 10 84 e5                                      str r1, [r4, #0x58]
00369028  84 00 84 e2                                      add r0, r4, #0x84
0036902c  01 ee ff eb                                      bl #0x364838
00369030  04 00 a0 e1                                      mov r0, r4
00369034  04 10 85 e2                                      add r1, r5, #4
00369038  f4 e6 0b eb                                      bl #0x662c10
0036903c  04 00 a0 e1                                      mov r0, r4
00369040  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00369044  94 ba 62 00 cc 45 00 00                          .byte 0x94, 0xba, 0x62, 0x00, 0xcc, 0x45, 0x00, 0x00

; FUNCTION 0x0036904c, declared_size=144, range_size=144, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZN23AnimatorSynchronizedSetC1ERKN5boost13intrusive_ptrIN6glitch7collada13CAnimationSetEEERKSt6vectorISsNS2_4core10SAllocatorISsLNS2_6memory13E_MEMORY_HINTE0EEEE
; demangled: AnimatorSynchronizedSet::AnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0036904c  70 40 2d e9                                      push {r4, r5, r6, lr}
00369050  74 50 9f e5                                      ldr r5, [pc, #0x74]
00369054  74 e0 9f e5                                      ldr lr, [pc, #0x74]
00369058  74 c0 9f e5                                      ldr ip, [pc, #0x74]
0036905c  05 50 8f e0                                      add r5, pc, r5
00369060  0e e0 95 e7                                      ldr lr, [r5, lr]
00369064  0c c0 95 e7                                      ldr ip, [r5, ip]
00369068  01 60 a0 e1                                      mov r6, r1
0036906c  02 30 a0 e1                                      mov r3, r2
00369070  08 e0 8e e2                                      add lr, lr, #8
00369074  01 20 a0 e3                                      mov r2, #1
00369078  04 10 8c e2                                      add r1, ip, #4
0036907c  c4 20 80 e5                                      str r2, [r0, #0xc4]
00369080  c0 e0 80 e5                                      str lr, [r0, #0xc0]
00369084  06 20 a0 e1                                      mov r2, r6
00369088  00 40 a0 e1                                      mov r4, r0
0036908c  57 e7 0b eb                                      bl #0x662df0
00369090  40 30 9f e5                                      ldr r3, [pc, #0x40]
00369094  84 00 84 e2                                      add r0, r4, #0x84
00369098  04 10 a0 e1                                      mov r1, r4
0036909c  03 30 95 e7                                      ldr r3, [r5, r3]
003690a0  f4 20 83 e2                                      add r2, r3, #0xf4
003690a4  0c e0 83 e2                                      add lr, r3, #0xc
003690a8  52 cf 83 e2                                      add ip, r3, #0x148
003690ac  e0 30 83 e2                                      add r3, r3, #0xe0
003690b0  00 e0 84 e5                                      str lr, [r4]
003690b4  c0 c0 84 e5                                      str ip, [r4, #0xc0]
003690b8  04 30 84 e5                                      str r3, [r4, #4]
003690bc  58 20 84 e5                                      str r2, [r4, #0x58]
003690c0  b4 ec ff eb                                      bl #0x364398
003690c4  04 00 a0 e1                                      mov r0, r4
003690c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003690cc  34 ba 62 00 44 2b 00 00 10 40 00 00 cc 45 00 00  .byte 0x34, 0xba, 0x62, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x10, 0x40, 0x00, 0x00, 0xcc, 0x45, 0x00, 0x00

; FUNCTION 0x003690dc, declared_size=100, range_size=100, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZN23AnimatorSynchronizedSetC2ERKN5boost13intrusive_ptrIN6glitch7collada13CAnimationSetEEERKSt6vectorISsNS2_4core10SAllocatorISsLNS2_6memory13E_MEMORY_HINTE0EEEE
; demangled: AnimatorSynchronizedSet::AnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
003690dc  70 40 2d e9                                      push {r4, r5, r6, lr}
003690e0  01 60 a0 e1                                      mov r6, r1
003690e4  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
003690e8  04 10 81 e2                                      add r1, r1, #4
003690ec  00 40 a0 e1                                      mov r4, r0
003690f0  3e e7 0b eb                                      bl #0x662df0
003690f4  00 20 96 e5                                      ldr r2, [r6]
003690f8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003690fc  05 50 8f e0                                      add r5, pc, r5
00369100  00 20 84 e5                                      str r2, [r4]
00369104  03 30 95 e7                                      ldr r3, [r5, r3]
00369108  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
0036910c  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
00369110  f4 20 83 e2                                      add r2, r3, #0xf4
00369114  e0 30 83 e2                                      add r3, r3, #0xe0
00369118  01 00 84 e7                                      str r0, [r4, r1]
0036911c  04 30 84 e5                                      str r3, [r4, #4]
00369120  58 20 84 e5                                      str r2, [r4, #0x58]
00369124  84 00 84 e2                                      add r0, r4, #0x84
00369128  04 10 a0 e1                                      mov r1, r4
0036912c  99 ec ff eb                                      bl #0x364398
00369130  04 00 a0 e1                                      mov r0, r4
00369134  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00369138  94 b9 62 00 cc 45 00 00                          .byte 0x94, 0xb9, 0x62, 0x00, 0xcc, 0x45, 0x00, 0x00

; FUNCTION 0x00369140, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZTv0_n12_N23AnimatorSynchronizedSetD0Ev
; demangled: virtual thunk to AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00369140  00 30 90 e5                                      ldr r3, [r0]
00369144  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00369148  03 00 80 e0                                      add r0, r0, r3
0036914c  9e ff ff ea                                      b #0x368fcc

; FUNCTION 0x00369150, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorSynchronizedSet
; alias: _ZTv0_n12_N23AnimatorSynchronizedSetD1Ev
; demangled: virtual thunk to AnimatorSynchronizedSet::~AnimatorSynchronizedSet()
; decoder-mode: arm
00369150  00 30 90 e5                                      ldr r3, [r0]
00369154  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00369158  03 00 80 e0                                      add r0, r0, r3
0036915c  7c ff ff ea                                      b #0x368f54
