; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455f78, declared_size=696, range_size=696, mode=arm
; class-group: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >
; alias: _ZNSt6vectorIN13ScriptManager13ScriptContextESaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >::_M_fill_insert_aux(ScriptManager::ScriptContext*, unsigned int, ScriptManager::ScriptContext const&, std::__false_type const&)
; decoder-mode: arm
00455f78  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00455f7c  00 40 90 e5                                      ldr r4, [r0]
00455f80  18 d0 4d e2                                      sub sp, sp, #0x18
00455f84  00 c0 a0 e1                                      mov ip, r0
00455f88  04 00 53 e1                                      cmp r3, r4
00455f8c  01 50 a0 e1                                      mov r5, r1
00455f90  02 40 a0 e1                                      mov r4, r2
00455f94  04 60 90 35                                      ldrlo r6, [r0, #4]
00455f98  10 00 00 3a                                      blo #0x455fe0
00455f9c  04 60 90 e5                                      ldr r6, [r0, #4]
00455fa0  06 00 53 e1                                      cmp r3, r6
00455fa4  0d 00 00 2a                                      bhs #0x455fe0
00455fa8  03 c0 a0 e1                                      mov ip, r3
00455fac  04 50 9c e4                                      ldr r5, [ip], #4
00455fb0  04 40 93 e5                                      ldr r4, [r3, #4]
00455fb4  18 30 8d e2                                      add r3, sp, #0x18
00455fb8  04 e0 9c e5                                      ldr lr, [ip, #4]
00455fbc  0c c0 8d e2                                      add ip, sp, #0xc
00455fc0  04 40 8c e4                                      str r4, [ip], #4
00455fc4  00 e0 8c e5                                      str lr, [ip]
00455fc8  10 50 23 e5                                      str r5, [r3, #-0x10]!
00455fcc  14 c0 8d e2                                      add ip, sp, #0x14
00455fd0  00 c0 8d e5                                      str ip, [sp]
00455fd4  e7 ff ff eb                                      bl #0x455f78
00455fd8  18 d0 8d e2                                      add sp, sp, #0x18
00455fdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00455fe0  06 20 65 e0                                      rsb r2, r5, r6
00455fe4  42 21 a0 e1                                      asr r2, r2, #2
00455fe8  02 71 82 e0                                      add r7, r2, r2, lsl #2
00455fec  07 72 87 e0                                      add r7, r7, r7, lsl #4
00455ff0  07 74 87 e0                                      add r7, r7, r7, lsl #8
00455ff4  07 78 87 e0                                      add r7, r7, r7, lsl #16
00455ff8  87 70 82 e0                                      add r7, r2, r7, lsl #1
00455ffc  07 00 54 e1                                      cmp r4, r7
00456000  47 00 00 2a                                      bhs #0x456124
00456004  0c 20 a0 e3                                      mov r2, #0xc
00456008  92 04 04 e0                                      mul r4, r2, r4
0045600c  44 21 a0 e1                                      asr r2, r4, #2
00456010  06 80 64 e0                                      rsb r8, r4, r6
00456014  02 71 82 e0                                      add r7, r2, r2, lsl #2
00456018  07 72 87 e0                                      add r7, r7, r7, lsl #4
0045601c  07 74 87 e0                                      add r7, r7, r7, lsl #8
00456020  07 78 87 e0                                      add r7, r7, r7, lsl #16
00456024  87 70 82 e0                                      add r7, r2, r7, lsl #1
00456028  00 00 57 e3                                      cmp r7, #0
0045602c  06 00 a0 d1                                      movle r0, r6
00456030  0e 00 00 da                                      ble #0x456070
00456034  00 20 a0 e3                                      mov r2, #0
00456038  02 10 98 e7                                      ldr r1, [r8, r2]
0045603c  02 00 88 e0                                      add r0, r8, r2
00456040  04 00 80 e2                                      add r0, r0, #4
00456044  02 10 86 e7                                      str r1, [r6, r2]
00456048  04 a0 90 e4                                      ldr sl, [r0], #4
0045604c  02 10 86 e0                                      add r1, r6, r2
00456050  04 10 81 e2                                      add r1, r1, #4
00456054  04 a0 81 e4                                      str sl, [r1], #4
00456058  00 00 90 e5                                      ldr r0, [r0]
0045605c  01 70 57 e2                                      subs r7, r7, #1
00456060  0c 20 82 e2                                      add r2, r2, #0xc
00456064  00 00 81 e5                                      str r0, [r1]
00456068  f2 ff ff 1a                                      bne #0x456038
0045606c  04 00 9c e5                                      ldr r0, [ip, #4]
00456070  08 20 65 e0                                      rsb r2, r5, r8
00456074  42 21 a0 e1                                      asr r2, r2, #2
00456078  04 00 80 e0                                      add r0, r0, r4
0045607c  02 11 82 e0                                      add r1, r2, r2, lsl #2
00456080  04 00 8c e5                                      str r0, [ip, #4]
00456084  01 12 81 e0                                      add r1, r1, r1, lsl #4
00456088  01 14 81 e0                                      add r1, r1, r1, lsl #8
0045608c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00456090  81 10 82 e0                                      add r1, r2, r1, lsl #1
00456094  00 00 51 e3                                      cmp r1, #0
00456098  0a 00 00 da                                      ble #0x4560c8
0045609c  08 20 a0 e1                                      mov r2, r8
004560a0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
004560a4  01 10 51 e2                                      subs r1, r1, #1
004560a8  0c 00 06 e5                                      str r0, [r6, #-0xc]
004560ac  08 00 12 e5                                      ldr r0, [r2, #-8]
004560b0  08 00 06 e5                                      str r0, [r6, #-8]
004560b4  04 00 12 e5                                      ldr r0, [r2, #-4]
004560b8  0c 20 42 e2                                      sub r2, r2, #0xc
004560bc  04 00 06 e5                                      str r0, [r6, #-4]
004560c0  0c 60 46 e2                                      sub r6, r6, #0xc
004560c4  f5 ff ff 1a                                      bne #0x4560a0
004560c8  44 41 a0 e1                                      asr r4, r4, #2
004560cc  04 21 84 e0                                      add r2, r4, r4, lsl #2
004560d0  02 22 82 e0                                      add r2, r2, r2, lsl #4
004560d4  02 24 82 e0                                      add r2, r2, r2, lsl #8
004560d8  02 28 82 e0                                      add r2, r2, r2, lsl #16
004560dc  82 40 84 e0                                      add r4, r4, r2, lsl #1
004560e0  00 00 54 e3                                      cmp r4, #0
004560e4  bb ff ff da                                      ble #0x455fd8
004560e8  04 00 83 e2                                      add r0, r3, #4
004560ec  00 10 a0 e3                                      mov r1, #0
004560f0  04 60 80 e2                                      add r6, r0, #4
004560f4  00 c0 93 e5                                      ldr ip, [r3]
004560f8  01 20 85 e0                                      add r2, r5, r1
004560fc  04 20 82 e2                                      add r2, r2, #4
00456100  01 c0 85 e7                                      str ip, [r5, r1]
00456104  00 c0 90 e5                                      ldr ip, [r0]
00456108  01 40 54 e2                                      subs r4, r4, #1
0045610c  0c 10 81 e2                                      add r1, r1, #0xc
00456110  04 c0 82 e4                                      str ip, [r2], #4
00456114  00 c0 96 e5                                      ldr ip, [r6]
00456118  00 c0 82 e5                                      str ip, [r2]
0045611c  f4 ff ff 1a                                      bne #0x4560f4
00456120  ac ff ff ea                                      b #0x455fd8
00456124  0c 20 a0 e3                                      mov r2, #0xc
00456128  04 40 67 e0                                      rsb r4, r7, r4
0045612c  92 64 24 e0                                      mla r4, r2, r4, r6
00456130  04 20 66 e0                                      rsb r2, r6, r4
00456134  42 21 a0 e1                                      asr r2, r2, #2
00456138  02 81 82 e0                                      add r8, r2, r2, lsl #2
0045613c  08 82 88 e0                                      add r8, r8, r8, lsl #4
00456140  08 84 88 e0                                      add r8, r8, r8, lsl #8
00456144  08 88 88 e0                                      add r8, r8, r8, lsl #16
00456148  88 80 82 e0                                      add r8, r2, r8, lsl #1
0045614c  00 00 58 e3                                      cmp r8, #0
00456150  0d 00 00 da                                      ble #0x45618c
00456154  04 00 83 e2                                      add r0, r3, #4
00456158  00 10 a0 e3                                      mov r1, #0
0045615c  04 90 80 e2                                      add sb, r0, #4
00456160  00 a0 93 e5                                      ldr sl, [r3]
00456164  01 20 86 e0                                      add r2, r6, r1
00456168  04 20 82 e2                                      add r2, r2, #4
0045616c  01 a0 86 e7                                      str sl, [r6, r1]
00456170  00 a0 90 e5                                      ldr sl, [r0]
00456174  01 80 58 e2                                      subs r8, r8, #1
00456178  0c 10 81 e2                                      add r1, r1, #0xc
0045617c  04 a0 82 e4                                      str sl, [r2], #4
00456180  00 a0 99 e5                                      ldr sl, [sb]
00456184  00 a0 82 e5                                      str sl, [r2]
00456188  f4 ff ff 1a                                      bne #0x456160
0045618c  00 00 57 e3                                      cmp r7, #0
00456190  04 40 8c e5                                      str r4, [ip, #4]
00456194  21 00 00 da                                      ble #0x456220
00456198  07 60 a0 e1                                      mov r6, r7
0045619c  00 20 a0 e3                                      mov r2, #0
004561a0  02 10 95 e7                                      ldr r1, [r5, r2]
004561a4  02 00 85 e0                                      add r0, r5, r2
004561a8  04 00 80 e2                                      add r0, r0, #4
004561ac  02 10 84 e7                                      str r1, [r4, r2]
004561b0  04 80 90 e4                                      ldr r8, [r0], #4
004561b4  02 10 84 e0                                      add r1, r4, r2
004561b8  04 10 81 e2                                      add r1, r1, #4
004561bc  04 80 81 e4                                      str r8, [r1], #4
004561c0  00 00 90 e5                                      ldr r0, [r0]
004561c4  01 60 56 e2                                      subs r6, r6, #1
004561c8  0c 20 82 e2                                      add r2, r2, #0xc
004561cc  00 00 81 e5                                      str r0, [r1]
004561d0  f2 ff ff 1a                                      bne #0x4561a0
004561d4  04 20 9c e5                                      ldr r2, [ip, #4]
004561d8  0c 10 a0 e3                                      mov r1, #0xc
004561dc  04 00 83 e2                                      add r0, r3, #4
004561e0  91 27 22 e0                                      mla r2, r1, r7, r2
004561e4  04 40 80 e2                                      add r4, r0, #4
004561e8  06 10 a0 e1                                      mov r1, r6
004561ec  04 20 8c e5                                      str r2, [ip, #4]
004561f0  00 c0 93 e5                                      ldr ip, [r3]
004561f4  01 20 85 e0                                      add r2, r5, r1
004561f8  04 20 82 e2                                      add r2, r2, #4
004561fc  01 c0 85 e7                                      str ip, [r5, r1]
00456200  00 c0 90 e5                                      ldr ip, [r0]
00456204  01 70 57 e2                                      subs r7, r7, #1
00456208  0c 10 81 e2                                      add r1, r1, #0xc
0045620c  04 c0 82 e4                                      str ip, [r2], #4
00456210  00 c0 94 e5                                      ldr ip, [r4]
00456214  00 c0 82 e5                                      str ip, [r2]
00456218  f4 ff ff 1a                                      bne #0x4561f0
0045621c  6d ff ff ea                                      b #0x455fd8
00456220  0c 30 a0 e3                                      mov r3, #0xc
00456224  93 47 24 e0                                      mla r4, r3, r7, r4
00456228  04 40 8c e5                                      str r4, [ip, #4]
0045622c  69 ff ff ea                                      b #0x455fd8

; FUNCTION 0x00458fb4, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >
; alias: _ZNSt6vectorIN13ScriptManager13ScriptContextESaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00458fb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00458fb8  14 00 90 e8                                      ldm r0, {r2, r4}
00458fbc  55 35 05 e3                                      movw r3, #0x5555
00458fc0  55 35 41 e3                                      movt r3, #0x1555
00458fc4  04 20 62 e0                                      rsb r2, r2, r4
00458fc8  42 21 a0 e1                                      asr r2, r2, #2
00458fcc  01 50 a0 e1                                      mov r5, r1
00458fd0  02 41 82 e0                                      add r4, r2, r2, lsl #2
00458fd4  04 42 84 e0                                      add r4, r4, r4, lsl #4
00458fd8  04 44 84 e0                                      add r4, r4, r4, lsl #8
00458fdc  04 48 84 e0                                      add r4, r4, r4, lsl #16
00458fe0  84 40 82 e0                                      add r4, r2, r4, lsl #1
00458fe4  03 30 64 e0                                      rsb r3, r4, r3
00458fe8  01 00 53 e1                                      cmp r3, r1
00458fec  0b 00 00 3a                                      blo #0x459020
00458ff0  55 35 05 e3                                      movw r3, #0x5555
00458ff4  05 00 54 e1                                      cmp r4, r5
00458ff8  04 00 84 20                                      addhs r0, r4, r4
00458ffc  05 00 84 30                                      addlo r0, r4, r5
00459000  03 37 83 e1                                      orr r3, r3, r3, lsl #14
00459004  03 00 50 e1                                      cmp r0, r3
00459008  01 00 00 8a                                      bhi #0x459014
0045900c  04 00 50 e1                                      cmp r0, r4
00459010  01 00 00 2a                                      bhs #0x45901c
00459014  55 05 05 e3                                      movw r0, #0x5555
00459018  00 07 80 e1                                      orr r0, r0, r0, lsl #14
0045901c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00459020  08 00 9f e5                                      ldr r0, [pc, #8]
00459024  00 00 8f e0                                      add r0, pc, r0
00459028  84 bf 0a eb                                      bl #0x708e40
0045902c  ef ff ff ea                                      b #0x458ff0
; mapping-symbol data/literal pool
00459030  44 54 46 00                                      .byte 0x44, 0x54, 0x46, 0x00

; FUNCTION 0x0045a824, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >
; alias: _ZNSt6vectorIN13ScriptManager13ScriptContextESaIS1_EED1Ev
; demangled: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >::~vector()
; decoder-mode: arm
0045a824  10 40 2d e9                                      push {r4, lr}
0045a828  00 40 a0 e1                                      mov r4, r0
0045a82c  00 00 90 e5                                      ldr r0, [r0]
0045a830  00 00 50 e3                                      cmp r0, #0
0045a834  0c 00 00 0a                                      beq #0x45a86c
0045a838  08 30 94 e5                                      ldr r3, [r4, #8]
0045a83c  03 30 60 e0                                      rsb r3, r0, r3
0045a840  43 31 a0 e1                                      asr r3, r3, #2
0045a844  03 11 83 e0                                      add r1, r3, r3, lsl #2
0045a848  01 12 81 e0                                      add r1, r1, r1, lsl #4
0045a84c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0045a850  01 18 81 e0                                      add r1, r1, r1, lsl #16
0045a854  81 30 83 e0                                      add r3, r3, r1, lsl #1
0045a858  0c 10 a0 e3                                      mov r1, #0xc
0045a85c  91 03 01 e0                                      mul r1, r1, r3
0045a860  80 00 51 e3                                      cmp r1, #0x80
0045a864  02 00 00 8a                                      bhi #0x45a874
0045a868  a4 b9 0a eb                                      bl #0x708f00
0045a86c  04 00 a0 e1                                      mov r0, r4
0045a870  10 80 bd e8                                      pop {r4, pc}
0045a874  f1 d6 fa eb                                      bl #0x310440
0045a878  04 00 a0 e1                                      mov r0, r4
0045a87c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0045a8e8, declared_size=676, range_size=676, mode=arm
; class-group: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >
; alias: _ZNSt6vectorIN13ScriptManager13ScriptContextESaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >::_M_fill_insert(ScriptManager::ScriptContext*, unsigned int, ScriptManager::ScriptContext const&)
; decoder-mode: arm
0045a8e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045a8ec  00 70 52 e2                                      subs r7, r2, #0
0045a8f0  10 d0 4d e2                                      sub sp, sp, #0x10
0045a8f4  00 50 a0 e1                                      mov r5, r0
0045a8f8  01 40 a0 e1                                      mov r4, r1
0045a8fc  03 60 a0 e1                                      mov r6, r3
0045a900  8a 00 00 0a                                      beq #0x45ab30
0045a904  00 50 90 e9                                      ldmib r0, {ip, lr}
0045a908  0e c0 6c e0                                      rsb ip, ip, lr
0045a90c  4c c1 a0 e1                                      asr ip, ip, #2
0045a910  0c e1 8c e0                                      add lr, ip, ip, lsl #2
0045a914  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0045a918  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0045a91c  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0045a920  8e c0 8c e0                                      add ip, ip, lr, lsl #1
0045a924  0c 00 57 e1                                      cmp r7, ip
0045a928  82 00 00 9a                                      bls #0x45ab38
0045a92c  07 10 a0 e1                                      mov r1, r7
0045a930  9f f9 ff eb                                      bl #0x458fb4
0045a934  10 20 8d e2                                      add r2, sp, #0x10
0045a938  00 10 a0 e1                                      mov r1, r0
0045a93c  08 00 22 e5                                      str r0, [r2, #-8]!
0045a940  08 00 85 e2                                      add r0, r5, #8
0045a944  6b ff ff eb                                      bl #0x45a6f8
0045a948  00 c0 95 e5                                      ldr ip, [r5]
0045a94c  00 80 a0 e1                                      mov r8, r0
0045a950  04 30 6c e0                                      rsb r3, ip, r4
0045a954  43 31 a0 e1                                      asr r3, r3, #2
0045a958  03 a1 83 e0                                      add sl, r3, r3, lsl #2
0045a95c  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0045a960  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0045a964  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0045a968  8a a0 83 e0                                      add sl, r3, sl, lsl #1
0045a96c  00 00 5a e3                                      cmp sl, #0
0045a970  00 a0 a0 d1                                      movle sl, r0
0045a974  10 00 00 da                                      ble #0x45a9bc
0045a978  0a 00 a0 e1                                      mov r0, sl
0045a97c  00 30 a0 e3                                      mov r3, #0
0045a980  03 20 9c e7                                      ldr r2, [ip, r3]
0045a984  03 10 8c e0                                      add r1, ip, r3
0045a988  04 10 81 e2                                      add r1, r1, #4
0045a98c  03 20 88 e7                                      str r2, [r8, r3]
0045a990  04 90 91 e4                                      ldr sb, [r1], #4
0045a994  03 20 88 e0                                      add r2, r8, r3
0045a998  04 20 82 e2                                      add r2, r2, #4
0045a99c  04 90 82 e4                                      str sb, [r2], #4
0045a9a0  00 10 91 e5                                      ldr r1, [r1]
0045a9a4  01 00 50 e2                                      subs r0, r0, #1
0045a9a8  0c 30 83 e2                                      add r3, r3, #0xc
0045a9ac  00 10 82 e5                                      str r1, [r2]
0045a9b0  f2 ff ff 1a                                      bne #0x45a980
0045a9b4  0c 30 a0 e3                                      mov r3, #0xc
0045a9b8  93 8a 2a e0                                      mla sl, r3, sl, r8
0045a9bc  01 00 57 e3                                      cmp r7, #1
0045a9c0  67 00 00 0a                                      beq #0x45ab64
0045a9c4  0c 30 a0 e3                                      mov r3, #0xc
0045a9c8  93 a7 27 e0                                      mla r7, r3, r7, sl
0045a9cc  07 30 6a e0                                      rsb r3, sl, r7
0045a9d0  43 31 a0 e1                                      asr r3, r3, #2
0045a9d4  03 11 83 e0                                      add r1, r3, r3, lsl #2
0045a9d8  01 12 81 e0                                      add r1, r1, r1, lsl #4
0045a9dc  01 14 81 e0                                      add r1, r1, r1, lsl #8
0045a9e0  01 18 81 e0                                      add r1, r1, r1, lsl #16
0045a9e4  81 10 83 e0                                      add r1, r3, r1, lsl #1
0045a9e8  00 00 51 e3                                      cmp r1, #0
0045a9ec  0d 00 00 da                                      ble #0x45aa28
0045a9f0  04 c0 86 e2                                      add ip, r6, #4
0045a9f4  00 20 a0 e3                                      mov r2, #0
0045a9f8  04 90 8c e2                                      add sb, ip, #4
0045a9fc  00 00 96 e5                                      ldr r0, [r6]
0045aa00  02 30 8a e0                                      add r3, sl, r2
0045aa04  04 30 83 e2                                      add r3, r3, #4
0045aa08  02 00 8a e7                                      str r0, [sl, r2]
0045aa0c  00 00 9c e5                                      ldr r0, [ip]
0045aa10  01 10 51 e2                                      subs r1, r1, #1
0045aa14  0c 20 82 e2                                      add r2, r2, #0xc
0045aa18  04 00 83 e4                                      str r0, [r3], #4
0045aa1c  00 00 99 e5                                      ldr r0, [sb]
0045aa20  00 00 83 e5                                      str r0, [r3]
0045aa24  f4 ff ff 1a                                      bne #0x45a9fc
0045aa28  04 30 95 e5                                      ldr r3, [r5, #4]
0045aa2c  03 20 64 e0                                      rsb r2, r4, r3
0045aa30  42 21 a0 e1                                      asr r2, r2, #2
0045aa34  02 61 82 e0                                      add r6, r2, r2, lsl #2
0045aa38  06 62 86 e0                                      add r6, r6, r6, lsl #4
0045aa3c  06 64 86 e0                                      add r6, r6, r6, lsl #8
0045aa40  06 68 86 e0                                      add r6, r6, r6, lsl #16
0045aa44  86 60 82 e0                                      add r6, r2, r6, lsl #1
0045aa48  00 00 56 e3                                      cmp r6, #0
0045aa4c  11 00 00 da                                      ble #0x45aa98
0045aa50  06 00 a0 e1                                      mov r0, r6
0045aa54  00 30 a0 e3                                      mov r3, #0
0045aa58  03 20 94 e7                                      ldr r2, [r4, r3]
0045aa5c  03 10 84 e0                                      add r1, r4, r3
0045aa60  04 10 81 e2                                      add r1, r1, #4
0045aa64  03 20 87 e7                                      str r2, [r7, r3]
0045aa68  04 c0 91 e4                                      ldr ip, [r1], #4
0045aa6c  03 20 87 e0                                      add r2, r7, r3
0045aa70  04 20 82 e2                                      add r2, r2, #4
0045aa74  04 c0 82 e4                                      str ip, [r2], #4
0045aa78  00 10 91 e5                                      ldr r1, [r1]
0045aa7c  01 00 50 e2                                      subs r0, r0, #1
0045aa80  0c 30 83 e2                                      add r3, r3, #0xc
0045aa84  00 10 82 e5                                      str r1, [r2]
0045aa88  f2 ff ff 1a                                      bne #0x45aa58
0045aa8c  0c 30 a0 e3                                      mov r3, #0xc
0045aa90  93 76 27 e0                                      mla r7, r3, r6, r7
0045aa94  04 30 95 e5                                      ldr r3, [r5, #4]
0045aa98  00 00 95 e5                                      ldr r0, [r5]
0045aa9c  03 00 50 e1                                      cmp r0, r3
0045aaa0  0e 00 00 0a                                      beq #0x45aae0
0045aaa4  0c 20 43 e2                                      sub r2, r3, #0xc
0045aaa8  02 20 60 e0                                      rsb r2, r0, r2
0045aaac  22 21 a0 e1                                      lsr r2, r2, #2
0045aab0  02 11 82 e0                                      add r1, r2, r2, lsl #2
0045aab4  81 12 81 e0                                      add r1, r1, r1, lsl #5
0045aab8  81 10 82 e0                                      add r1, r2, r1, lsl #1
0045aabc  81 12 81 e0                                      add r1, r1, r1, lsl #5
0045aac0  81 c7 a0 e1                                      lsl ip, r1, #0xf
0045aac4  0c 10 61 e0                                      rsb r1, r1, ip
0045aac8  81 20 82 e0                                      add r2, r2, r1, lsl #1
0045aacc  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0045aad0  0b 10 e0 e3                                      mvn r1, #0xb
0045aad4  91 02 02 e0                                      mul r2, r1, r2
0045aad8  01 20 82 e0                                      add r2, r2, r1
0045aadc  02 30 83 e0                                      add r3, r3, r2
0045aae0  00 00 53 e3                                      cmp r3, #0
0045aae4  08 20 95 e5                                      ldr r2, [r5, #8]
0045aae8  0b 00 00 0a                                      beq #0x45ab1c
0045aaec  02 30 63 e0                                      rsb r3, r3, r2
0045aaf0  43 31 a0 e1                                      asr r3, r3, #2
0045aaf4  03 11 83 e0                                      add r1, r3, r3, lsl #2
0045aaf8  01 12 81 e0                                      add r1, r1, r1, lsl #4
0045aafc  01 14 81 e0                                      add r1, r1, r1, lsl #8
0045ab00  01 18 81 e0                                      add r1, r1, r1, lsl #16
0045ab04  81 30 83 e0                                      add r3, r3, r1, lsl #1
0045ab08  0c 10 a0 e3                                      mov r1, #0xc
0045ab0c  91 03 01 e0                                      mul r1, r1, r3
0045ab10  80 00 51 e3                                      cmp r1, #0x80
0045ab14  0b 00 00 8a                                      bhi #0x45ab48
0045ab18  f8 b8 0a eb                                      bl #0x708f00
0045ab1c  08 30 9d e5                                      ldr r3, [sp, #8]
0045ab20  0c 20 a0 e3                                      mov r2, #0xc
0045ab24  00 80 85 e5                                      str r8, [r5]
0045ab28  92 83 28 e0                                      mla r8, r2, r3, r8
0045ab2c  80 01 85 e9                                      stmib r5, {r7, r8}
0045ab30  10 d0 8d e2                                      add sp, sp, #0x10
0045ab34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045ab38  0c c0 8d e2                                      add ip, sp, #0xc
0045ab3c  00 c0 8d e5                                      str ip, [sp]
0045ab40  0c ed ff eb                                      bl #0x455f78
0045ab44  f9 ff ff ea                                      b #0x45ab30
0045ab48  3c d6 fa eb                                      bl #0x310440
0045ab4c  08 30 9d e5                                      ldr r3, [sp, #8]
0045ab50  0c 20 a0 e3                                      mov r2, #0xc
0045ab54  00 80 85 e5                                      str r8, [r5]
0045ab58  92 83 28 e0                                      mla r8, r2, r3, r8
0045ab5c  80 01 85 e9                                      stmib r5, {r7, r8}
0045ab60  f2 ff ff ea                                      b #0x45ab30
0045ab64  06 20 a0 e1                                      mov r2, r6
0045ab68  04 10 92 e4                                      ldr r1, [r2], #4
0045ab6c  0a 30 a0 e1                                      mov r3, sl
0045ab70  0c 70 8a e2                                      add r7, sl, #0xc
0045ab74  04 10 83 e4                                      str r1, [r3], #4
0045ab78  04 10 96 e5                                      ldr r1, [r6, #4]
0045ab7c  04 10 8a e5                                      str r1, [sl, #4]
0045ab80  04 20 92 e5                                      ldr r2, [r2, #4]
0045ab84  04 20 83 e5                                      str r2, [r3, #4]
0045ab88  a6 ff ff ea                                      b #0x45aa28

; FUNCTION 0x0045ab8c, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >
; alias: _ZNSt6vectorIN13ScriptManager13ScriptContextESaIS1_EE6resizeEjRKS1_
; demangled: std::vector<ScriptManager::ScriptContext, std::allocator<ScriptManager::ScriptContext> >::resize(unsigned int, ScriptManager::ScriptContext const&)
; decoder-mode: arm
0045ab8c  70 00 2d e9                                      push {r4, r5, r6}
0045ab90  04 40 90 e5                                      ldr r4, [r0, #4]
0045ab94  00 50 90 e5                                      ldr r5, [r0]
0045ab98  02 30 a0 e1                                      mov r3, r2
0045ab9c  04 20 65 e0                                      rsb r2, r5, r4
0045aba0  42 21 a0 e1                                      asr r2, r2, #2
0045aba4  02 61 82 e0                                      add r6, r2, r2, lsl #2
0045aba8  06 62 86 e0                                      add r6, r6, r6, lsl #4
0045abac  06 64 86 e0                                      add r6, r6, r6, lsl #8
0045abb0  06 68 86 e0                                      add r6, r6, r6, lsl #16
0045abb4  86 20 82 e0                                      add r2, r2, r6, lsl #1
0045abb8  02 00 51 e1                                      cmp r1, r2
0045abbc  05 00 00 2a                                      bhs #0x45abd8
0045abc0  0c 30 a0 e3                                      mov r3, #0xc
0045abc4  93 51 25 e0                                      mla r5, r3, r1, r5
0045abc8  04 00 55 e1                                      cmp r5, r4
0045abcc  04 50 80 15                                      strne r5, [r0, #4]
0045abd0  70 00 bd e8                                      pop {r4, r5, r6}
0045abd4  1e ff 2f e1                                      bx lr
0045abd8  01 20 62 e0                                      rsb r2, r2, r1
0045abdc  04 10 a0 e1                                      mov r1, r4
0045abe0  70 00 bd e8                                      pop {r4, r5, r6}
0045abe4  3f ff ff ea                                      b #0x45a8e8
