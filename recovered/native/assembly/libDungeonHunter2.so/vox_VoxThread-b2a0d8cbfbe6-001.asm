; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00893600, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThread14GetCurThreadIdEv
; demangled: vox::VoxThread::GetCurThreadId()
; decoder-mode: arm
00893600  dc ea e9 ea                                      b #0x30e178

; FUNCTION 0x00893604, declared_size=12, range_size=12, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThread5SleepEj
; demangled: vox::VoxThread::Sleep(unsigned int)
; decoder-mode: arm
00893604  fa 3f a0 e3                                      mov r3, #0x3e8
00893608  93 00 00 e0                                      mul r0, r3, r0
0089360c  9b ec e9 ea                                      b #0x30e880

; FUNCTION 0x00893610, declared_size=240, range_size=240, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThread7_UpdateEv
; demangled: vox::VoxThread::_Update()
; decoder-mode: arm
00893610  f0 4d 2d e9                                      push {r4, r5, r6, r7, r8, sl, fp, lr}
00893614  0c 80 80 e2                                      add r8, r0, #0xc
00893618  00 40 a0 e1                                      mov r4, r0
0089361c  08 00 a0 e1                                      mov r0, r8
00893620  95 ff ff eb                                      bl #0x89347c
00893624  11 60 d4 e5                                      ldrb r6, [r4, #0x11]
00893628  08 00 a0 e1                                      mov r0, r8
0089362c  10 50 d4 e5                                      ldrb r5, [r4, #0x10]
00893630  90 ff ff eb                                      bl #0x893478
00893634  00 00 56 e3                                      cmp r6, #0
00893638  2b 00 00 0a                                      beq #0x8936ec
0089363c  6c 3d ff eb                                      bl #0x862bf4
00893640  00 00 55 e3                                      cmp r5, #0
00893644  00 60 a0 e1                                      mov r6, r0
00893648  01 70 a0 e1                                      mov r7, r1
0089364c  27 00 00 1a                                      bne #0x8936f0
00893650  67 3d ff eb                                      bl #0x862bf4
00893654  d8 21 c4 e1                                      ldrd r2, r3, [r4, #0x18]
00893658  00 a0 a0 e1                                      mov sl, r0
0089365c  01 b0 a0 e1                                      mov fp, r1
00893660  06 00 a0 e1                                      mov r0, r6
00893664  07 10 a0 e1                                      mov r1, r7
00893668  af eb e9 eb                                      bl #0x30e52c
0089366c  00 30 04 e3                                      movw r3, #0x4000
00893670  00 20 a0 e3                                      mov r2, #0
00893674  8f 30 44 e3                                      movt r3, #0x408f
00893678  0d ed e9 eb                                      bl #0x30eab4
0089367c  e8 ec e9 eb                                      bl #0x30ea24
00893680  06 20 a0 e1                                      mov r2, r6
00893684  42 50 60 e2                                      rsb r5, r0, #0x42
00893688  07 30 a0 e1                                      mov r3, r7
0089368c  0a 00 a0 e1                                      mov r0, sl
00893690  0b 10 a0 e1                                      mov r1, fp
00893694  a4 eb e9 eb                                      bl #0x30e52c
00893698  00 30 04 e3                                      movw r3, #0x4000
0089369c  00 20 a0 e3                                      mov r2, #0
008936a0  8f 30 44 e3                                      movt r3, #0x408f
008936a4  02 ed e9 eb                                      bl #0x30eab4
008936a8  dd ec e9 eb                                      bl #0x30ea24
008936ac  05 00 60 e0                                      rsb r0, r0, r5
008936b0  00 00 50 e3                                      cmp r0, #0
008936b4  f8 61 c4 e1                                      strd r6, r7, [r4, #0x18]
008936b8  01 00 a0 d3                                      movle r0, #1
008936bc  01 00 00 da                                      ble #0x8936c8
008936c0  21 00 50 e3                                      cmp r0, #0x21
008936c4  21 00 a0 a3                                      movge r0, #0x21
008936c8  cd ff ff eb                                      bl #0x893604
008936cc  08 00 a0 e1                                      mov r0, r8
008936d0  69 ff ff eb                                      bl #0x89347c
008936d4  11 60 d4 e5                                      ldrb r6, [r4, #0x11]
008936d8  08 00 a0 e1                                      mov r0, r8
008936dc  10 50 d4 e5                                      ldrb r5, [r4, #0x10]
008936e0  64 ff ff eb                                      bl #0x893478
008936e4  00 00 56 e3                                      cmp r6, #0
008936e8  d3 ff ff 1a                                      bne #0x89363c
008936ec  f0 8d bd e8                                      pop {r4, r5, r6, r7, r8, sl, fp, pc}
008936f0  03 00 94 e9                                      ldmib r4, {r0, r1}
008936f4  0f e0 a0 e1                                      mov lr, pc
008936f8  00 f0 94 e5                                      ldr pc, [r4]
008936fc  d3 ff ff ea                                      b #0x893650

; FUNCTION 0x00893700, declared_size=16, range_size=16, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThread6UpdateEPv
; demangled: vox::VoxThread::Update(void*)
; decoder-mode: arm
00893700  10 40 2d e9                                      push {r4, lr}
00893704  c1 ff ff eb                                      bl #0x893610
00893708  00 00 a0 e3                                      mov r0, #0
0089370c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00893714, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThread4StopEv
; demangled: vox::VoxThread::Stop()
; decoder-mode: arm
00893714  70 40 2d e9                                      push {r4, r5, r6, lr}
00893718  0c 60 80 e2                                      add r6, r0, #0xc
0089371c  00 40 a0 e1                                      mov r4, r0
00893720  00 50 a0 e3                                      mov r5, #0
00893724  06 00 a0 e1                                      mov r0, r6
00893728  53 ff ff eb                                      bl #0x89347c
0089372c  06 00 a0 e1                                      mov r0, r6
00893730  10 50 c4 e5                                      strb r5, [r4, #0x10]
00893734  11 50 c4 e5                                      strb r5, [r4, #0x11]
00893738  4e ff ff eb                                      bl #0x893478
0089373c  60 00 94 e5                                      ldr r0, [r4, #0x60]
00893740  05 10 a0 e1                                      mov r1, r5
00893744  70 40 bd e8                                      pop {r4, r5, r6, lr}
00893748  54 ed e9 ea                                      b #0x30eca0

; FUNCTION 0x0089374c, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThreadD1Ev
; demangled: vox::VoxThread::~VoxThread()
; decoder-mode: arm
0089374c  10 40 2d e9                                      push {r4, lr}
00893750  00 40 a0 e1                                      mov r4, r0
00893754  ee ff ff eb                                      bl #0x893714
00893758  0c 00 84 e2                                      add r0, r4, #0xc
0089375c  91 ff ff eb                                      bl #0x8935a8
00893760  04 00 a0 e1                                      mov r0, r4
00893764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00893768, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThreadD2Ev
; demangled: vox::VoxThread::~VoxThread()
; decoder-mode: arm
00893768  10 40 2d e9                                      push {r4, lr}
0089376c  00 40 a0 e1                                      mov r4, r0
00893770  e7 ff ff eb                                      bl #0x893714
00893774  0c 00 84 e2                                      add r0, r4, #0xc
00893778  8a ff ff eb                                      bl #0x8935a8
0089377c  04 00 a0 e1                                      mov r0, r4
00893780  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00893784, declared_size=304, range_size=304, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThreadC1EPFvPvS1_ES1_S1_Pc
; demangled: vox::VoxThread::VoxThread(void (*)(void*, void*), void*, void*, char*)
; decoder-mode: arm
00893784  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00893788  00 40 a0 e1                                      mov r4, r0
0089378c  0e 00 80 e8                                      stm r0, {r1, r2, r3}
00893790  14 d0 4d e2                                      sub sp, sp, #0x14
00893794  0c 00 80 e2                                      add r0, r0, #0xc
00893798  28 60 9d e5                                      ldr r6, [sp, #0x28]
0089379c  8b ff ff eb                                      bl #0x8935d0
008937a0  00 20 94 e5                                      ldr r2, [r4]
008937a4  00 51 9f e5                                      ldr r5, [pc, #0x100]
008937a8  01 30 a0 e3                                      mov r3, #1
008937ac  00 00 52 e3                                      cmp r2, #0
008937b0  00 00 a0 e3                                      mov r0, #0
008937b4  00 10 a0 e3                                      mov r1, #0
008937b8  11 30 c4 e5                                      strb r3, [r4, #0x11]
008937bc  05 50 8f e0                                      add r5, pc, r5
008937c0  f8 01 c4 e1                                      strd r0, r1, [r4, #0x18]
008937c4  10 30 c4 e5                                      strb r3, [r4, #0x10]
008937c8  11 20 c4 05                                      strbeq r2, [r4, #0x11]
008937cc  0f 00 00 0a                                      beq #0x893810
008937d0  00 00 56 e3                                      cmp r6, #0
008937d4  2b 00 00 0a                                      beq #0x893888
008937d8  06 10 a0 e1                                      mov r1, r6
008937dc  20 00 84 e2                                      add r0, r4, #0x20
008937e0  3f 20 a0 e3                                      mov r2, #0x3f
008937e4  8e e9 e9 eb                                      bl #0x30de24
008937e8  00 30 a0 e3                                      mov r3, #0
008937ec  5f 30 c4 e5                                      strb r3, [r4, #0x5f]
008937f0  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
008937f4  60 00 84 e2                                      add r0, r4, #0x60
008937f8  00 10 a0 e3                                      mov r1, #0
008937fc  03 20 95 e7                                      ldr r2, [r5, r3]
00893800  04 30 a0 e1                                      mov r3, r4
00893804  f5 e9 e9 eb                                      bl #0x30dfe0
00893808  00 00 50 e3                                      cmp r0, #0
0089380c  02 00 00 0a                                      beq #0x89381c
00893810  04 00 a0 e1                                      mov r0, r4
00893814  14 d0 8d e2                                      add sp, sp, #0x14
00893818  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0089381c  0c 60 8d e2                                      add r6, sp, #0xc
00893820  08 50 8d e2                                      add r5, sp, #8
00893824  06 10 a0 e1                                      mov r1, r6
00893828  05 20 a0 e1                                      mov r2, r5
0089382c  60 00 94 e5                                      ldr r0, [r4, #0x60]
00893830  94 eb e9 eb                                      bl #0x30e688
00893834  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00893838  d6 e9 e9 eb                                      bl #0x30df98
0089383c  00 70 a0 e1                                      mov r7, r0
00893840  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00893844  6e eb e9 eb                                      bl #0x30e604
00893848  1e 00 50 e3                                      cmp r0, #0x1e
0089384c  00 30 a0 e1                                      mov r3, r0
00893850  02 00 00 da                                      ble #0x893860
00893854  1f 00 57 e3                                      cmp r7, #0x1f
00893858  07 30 a0 a1                                      movge r3, r7
0089385c  1f 30 a0 b3                                      movlt r3, #0x1f
00893860  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00893864  04 20 8d e2                                      add r2, sp, #4
00893868  60 00 94 e5                                      ldr r0, [r4, #0x60]
0089386c  04 30 8d e5                                      str r3, [sp, #4]
00893870  d3 ea e9 eb                                      bl #0x30e3c4
00893874  06 10 a0 e1                                      mov r1, r6
00893878  05 20 a0 e1                                      mov r2, r5
0089387c  60 00 94 e5                                      ldr r0, [r4, #0x60]
00893880  80 eb e9 eb                                      bl #0x30e688
00893884  e1 ff ff ea                                      b #0x893810
00893888  68 32 07 e3                                      movw r3, #0x7268
0089388c  65 31 46 e3                                      movt r3, #0x6165
00893890  56 2f 06 e3                                      movw r2, #0x6f56
00893894  78 24 45 e3                                      movt r2, #0x5478
00893898  24 30 84 e5                                      str r3, [r4, #0x24]
0089389c  64 30 a0 e3                                      mov r3, #0x64
008938a0  20 20 84 e5                                      str r2, [r4, #0x20]
008938a4  b8 32 c4 e1                                      strh r3, [r4, #0x28]
008938a8  d0 ff ff ea                                      b #0x8937f0
; mapping-symbol data/literal pool
008938ac  d4 12 10 00 7c 4b 00 00                          .byte 0xd4, 0x12, 0x10, 0x00, 0x7c, 0x4b, 0x00, 0x00

; FUNCTION 0x008938b4, declared_size=304, range_size=304, mode=arm
; class-group: vox::VoxThread
; alias: _ZN3vox9VoxThreadC2EPFvPvS1_ES1_S1_Pc
; demangled: vox::VoxThread::VoxThread(void (*)(void*, void*), void*, void*, char*)
; decoder-mode: arm
008938b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008938b8  00 40 a0 e1                                      mov r4, r0
008938bc  0e 00 80 e8                                      stm r0, {r1, r2, r3}
008938c0  14 d0 4d e2                                      sub sp, sp, #0x14
008938c4  0c 00 80 e2                                      add r0, r0, #0xc
008938c8  28 60 9d e5                                      ldr r6, [sp, #0x28]
008938cc  3f ff ff eb                                      bl #0x8935d0
008938d0  00 20 94 e5                                      ldr r2, [r4]
008938d4  00 51 9f e5                                      ldr r5, [pc, #0x100]
008938d8  01 30 a0 e3                                      mov r3, #1
008938dc  00 00 52 e3                                      cmp r2, #0
008938e0  00 00 a0 e3                                      mov r0, #0
008938e4  00 10 a0 e3                                      mov r1, #0
008938e8  11 30 c4 e5                                      strb r3, [r4, #0x11]
008938ec  05 50 8f e0                                      add r5, pc, r5
008938f0  f8 01 c4 e1                                      strd r0, r1, [r4, #0x18]
008938f4  10 30 c4 e5                                      strb r3, [r4, #0x10]
008938f8  11 20 c4 05                                      strbeq r2, [r4, #0x11]
008938fc  0f 00 00 0a                                      beq #0x893940
00893900  00 00 56 e3                                      cmp r6, #0
00893904  2b 00 00 0a                                      beq #0x8939b8
00893908  06 10 a0 e1                                      mov r1, r6
0089390c  20 00 84 e2                                      add r0, r4, #0x20
00893910  3f 20 a0 e3                                      mov r2, #0x3f
00893914  42 e9 e9 eb                                      bl #0x30de24
00893918  00 30 a0 e3                                      mov r3, #0
0089391c  5f 30 c4 e5                                      strb r3, [r4, #0x5f]
00893920  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00893924  60 00 84 e2                                      add r0, r4, #0x60
00893928  00 10 a0 e3                                      mov r1, #0
0089392c  03 20 95 e7                                      ldr r2, [r5, r3]
00893930  04 30 a0 e1                                      mov r3, r4
00893934  a9 e9 e9 eb                                      bl #0x30dfe0
00893938  00 00 50 e3                                      cmp r0, #0
0089393c  02 00 00 0a                                      beq #0x89394c
00893940  04 00 a0 e1                                      mov r0, r4
00893944  14 d0 8d e2                                      add sp, sp, #0x14
00893948  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0089394c  0c 60 8d e2                                      add r6, sp, #0xc
00893950  08 50 8d e2                                      add r5, sp, #8
00893954  06 10 a0 e1                                      mov r1, r6
00893958  05 20 a0 e1                                      mov r2, r5
0089395c  60 00 94 e5                                      ldr r0, [r4, #0x60]
00893960  48 eb e9 eb                                      bl #0x30e688
00893964  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00893968  8a e9 e9 eb                                      bl #0x30df98
0089396c  00 70 a0 e1                                      mov r7, r0
00893970  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00893974  22 eb e9 eb                                      bl #0x30e604
00893978  1e 00 50 e3                                      cmp r0, #0x1e
0089397c  00 30 a0 e1                                      mov r3, r0
00893980  02 00 00 da                                      ble #0x893990
00893984  1f 00 57 e3                                      cmp r7, #0x1f
00893988  07 30 a0 a1                                      movge r3, r7
0089398c  1f 30 a0 b3                                      movlt r3, #0x1f
00893990  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00893994  04 20 8d e2                                      add r2, sp, #4
00893998  60 00 94 e5                                      ldr r0, [r4, #0x60]
0089399c  04 30 8d e5                                      str r3, [sp, #4]
008939a0  87 ea e9 eb                                      bl #0x30e3c4
008939a4  06 10 a0 e1                                      mov r1, r6
008939a8  05 20 a0 e1                                      mov r2, r5
008939ac  60 00 94 e5                                      ldr r0, [r4, #0x60]
008939b0  34 eb e9 eb                                      bl #0x30e688
008939b4  e1 ff ff ea                                      b #0x893940
008939b8  68 32 07 e3                                      movw r3, #0x7268
008939bc  65 31 46 e3                                      movt r3, #0x6165
008939c0  56 2f 06 e3                                      movw r2, #0x6f56
008939c4  78 24 45 e3                                      movt r2, #0x5478
008939c8  24 30 84 e5                                      str r3, [r4, #0x24]
008939cc  64 30 a0 e3                                      mov r3, #0x64
008939d0  20 20 84 e5                                      str r2, [r4, #0x20]
008939d4  b8 32 c4 e1                                      strh r3, [r4, #0x28]
008939d8  d0 ff ff ea                                      b #0x893920
; mapping-symbol data/literal pool
008939dc  a4 11 10 00 7c 4b 00 00                          .byte 0xa4, 0x11, 0x10, 0x00, 0x7c, 0x4b, 0x00, 0x00
