; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036583c, declared_size=432, range_size=432, mode=arm
; class-group: Animation& std::map<int, Animation, std::less<int>, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt3mapIi9AnimationSt4lessIiEN6glitch4core10SAllocatorISt4pairIKiS0_ELNS3_6memory13E_MEMORY_HINTE0EEEEixIiEERS0_RKT_
; demangled: Animation& std::map<int, Animation, std::less<int>, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::operator[]<int>(int const&)
; decoder-mode: arm
0036583c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00365840  94 51 9f e5                                      ldr r5, [pc, #0x194]
00365844  94 61 9f e5                                      ldr r6, [pc, #0x194]
00365848  04 40 90 e5                                      ldr r4, [r0, #4]
0036584c  05 50 8f e0                                      add r5, pc, r5
00365850  06 30 95 e7                                      ldr r3, [r5, r6]
00365854  70 d0 4d e2                                      sub sp, sp, #0x70
00365858  00 00 54 e3                                      cmp r4, #0
0036585c  00 30 93 e5                                      ldr r3, [r3]
00365860  00 a0 a0 e1                                      mov sl, r0
00365864  01 70 a0 e1                                      mov r7, r1
00365868  6c 30 8d e5                                      str r3, [sp, #0x6c]
0036586c  00 40 a0 01                                      moveq r4, r0
00365870  0b 00 00 0a                                      beq #0x3658a4
00365874  00 10 91 e5                                      ldr r1, [r1]
00365878  00 20 a0 e1                                      mov r2, r0
0036587c  01 00 00 ea                                      b #0x365888
00365880  04 20 a0 e1                                      mov r2, r4
00365884  03 40 a0 e1                                      mov r4, r3
00365888  10 30 94 e5                                      ldr r3, [r4, #0x10]
0036588c  01 00 53 e1                                      cmp r3, r1
00365890  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
00365894  08 30 94 a5                                      ldrge r3, [r4, #8]
00365898  02 40 a0 b1                                      movlt r4, r2
0036589c  00 00 53 e3                                      cmp r3, #0
003658a0  f6 ff ff 1a                                      bne #0x365880
003658a4  04 00 5a e1                                      cmp sl, r4
003658a8  04 00 00 0a                                      beq #0x3658c0
003658ac  00 20 97 e5                                      ldr r2, [r7]
003658b0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003658b4  04 00 a0 e1                                      mov r0, r4
003658b8  03 00 52 e1                                      cmp r2, r3
003658bc  3d 00 00 aa                                      bge #0x3659b8
003658c0  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
003658c4  3c 80 8d e2                                      add r8, sp, #0x3c
003658c8  08 00 a0 e1                                      mov r0, r8
003658cc  01 10 8f e0                                      add r1, pc, r1
003658d0  07 20 81 e2                                      add r2, r1, #7
003658d4  4c 80 8d e5                                      str r8, [sp, #0x4c]
003658d8  50 80 8d e5                                      str r8, [sp, #0x50]
003658dc  81 af fe eb                                      bl #0x3116e8
003658e0  00 30 97 e5                                      ldr r3, [r7]
003658e4  70 70 8d e2                                      add r7, sp, #0x70
003658e8  00 c0 a0 e3                                      mov ip, #0
003658ec  68 30 27 e5                                      str r3, [r7, #-0x68]!
003658f0  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
003658f4  00 e0 e0 e3                                      mvn lr, #0
003658f8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003658fc  03 90 95 e7                                      ldr sb, [r5, r3]
00365900  04 30 87 e2                                      add r3, r7, #4
00365904  03 00 a0 e1                                      mov r0, r3
00365908  50 10 9d e5                                      ldr r1, [sp, #0x50]
0036590c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00365910  20 30 8d e5                                      str r3, [sp, #0x20]
00365914  58 90 8d e5                                      str sb, [sp, #0x58]
00365918  60 e0 8d e5                                      str lr, [sp, #0x60]
0036591c  68 c0 8d e5                                      str ip, [sp, #0x68]
00365920  54 c0 8d e5                                      str ip, [sp, #0x54]
00365924  5c e0 8d e5                                      str lr, [sp, #0x5c]
00365928  64 c0 8d e5                                      str ip, [sp, #0x64]
0036592c  6d af fe eb                                      bl #0x3116e8
00365930  54 30 9d e5                                      ldr r3, [sp, #0x54]
00365934  58 20 9d e5                                      ldr r2, [sp, #0x58]
00365938  00 00 53 e3                                      cmp r3, #0
0036593c  28 20 8d e5                                      str r2, [sp, #0x28]
00365940  24 30 8d e5                                      str r3, [sp, #0x24]
00365944  03 00 00 0a                                      beq #0x365958
00365948  04 20 93 e5                                      ldr r2, [r3, #4]
0036594c  00 00 52 e3                                      cmp r2, #0
00365950  01 20 82 12                                      addne r2, r2, #1
00365954  04 20 83 15                                      strne r2, [r3, #4]
00365958  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
0036595c  0a 10 a0 e1                                      mov r1, sl
00365960  0d 20 a0 e1                                      mov r2, sp
00365964  2c c0 8d e5                                      str ip, [sp, #0x2c]
00365968  60 c0 9d e5                                      ldr ip, [sp, #0x60]
0036596c  07 30 a0 e1                                      mov r3, r7
00365970  04 00 8d e2                                      add r0, sp, #4
00365974  30 c0 8d e5                                      str ip, [sp, #0x30]
00365978  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0036597c  00 40 8d e5                                      str r4, [sp]
00365980  34 c0 8d e5                                      str ip, [sp, #0x34]
00365984  68 c0 9d e5                                      ldr ip, [sp, #0x68]
00365988  38 c0 8d e5                                      str ip, [sp, #0x38]
0036598c  cd fe ff eb                                      bl #0x3654c8
00365990  1c 00 87 e2                                      add r0, r7, #0x1c
00365994  04 40 9d e5                                      ldr r4, [sp, #4]
00365998  b5 ce 0a eb                                      bl #0x619474
0036599c  04 00 87 e2                                      add r0, r7, #4
003659a0  01 b8 fe eb                                      bl #0x3139ac
003659a4  18 00 88 e2                                      add r0, r8, #0x18
003659a8  b1 ce 0a eb                                      bl #0x619474
003659ac  08 00 a0 e1                                      mov r0, r8
003659b0  fd b7 fe eb                                      bl #0x3139ac
003659b4  04 00 a0 e1                                      mov r0, r4
003659b8  06 30 95 e7                                      ldr r3, [r5, r6]
003659bc  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
003659c0  14 00 80 e2                                      add r0, r0, #0x14
003659c4  00 30 93 e5                                      ldr r3, [r3]
003659c8  03 00 52 e1                                      cmp r2, r3
003659cc  01 00 00 1a                                      bne #0x3659d8
003659d0  70 d0 8d e2                                      add sp, sp, #0x70
003659d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003659d8  4c a2 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003659dc  44 f2 62 00 ac 40 00 00 d4 4d 57 00 10 47 00 00  .byte 0x44, 0xf2, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd4, 0x4d, 0x57, 0x00, 0x10, 0x47, 0x00, 0x00
