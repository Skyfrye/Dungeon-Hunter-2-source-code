; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0087112c, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEC1ERKS5_
; demangled: std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >::vector(std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
0087112c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00871130  88 00 91 e8                                      ldm r1, {r3, r7}
00871134  00 50 a0 e3                                      mov r5, #0
00871138  00 40 a0 e1                                      mov r4, r0
0087113c  07 70 63 e0                                      rsb r7, r3, r7
00871140  07 70 c7 e3                                      bic r7, r7, #7
00871144  01 60 a0 e1                                      mov r6, r1
00871148  00 50 80 e5                                      str r5, [r0]
0087114c  04 50 80 e5                                      str r5, [r0, #4]
00871150  08 50 80 e5                                      str r5, [r0, #8]
00871154  05 10 a0 e1                                      mov r1, r5
00871158  07 00 a0 e1                                      mov r0, r7
0087115c  39 7d ea eb                                      bl #0x310648
00871160  07 70 80 e0                                      add r7, r0, r7
00871164  08 70 84 e5                                      str r7, [r4, #8]
00871168  00 00 84 e5                                      str r0, [r4]
0087116c  04 00 84 e5                                      str r0, [r4, #4]
00871170  c0 00 96 e8                                      ldm r6, {r6, r7}
00871174  00 30 a0 e1                                      mov r3, r0
00871178  07 70 66 e0                                      rsb r7, r6, r7
0087117c  c7 71 a0 e1                                      asr r7, r7, #3
00871180  05 00 57 e1                                      cmp r7, r5
00871184  0a 00 00 da                                      ble #0x8711b4
00871188  07 10 a0 e1                                      mov r1, r7
0087118c  06 20 a0 e1                                      mov r2, r6
00871190  05 c0 b2 e7                                      ldr ip, [r2, r5]!
00871194  00 30 a0 e1                                      mov r3, r0
00871198  01 10 51 e2                                      subs r1, r1, #1
0087119c  05 c0 a3 e7                                      str ip, [r3, r5]!
008711a0  04 20 d2 e5                                      ldrb r2, [r2, #4]
008711a4  08 50 85 e2                                      add r5, r5, #8
008711a8  04 20 c3 e5                                      strb r2, [r3, #4]
008711ac  f6 ff ff 1a                                      bne #0x87118c
008711b0  87 31 80 e0                                      add r3, r0, r7, lsl #3
008711b4  04 30 84 e5                                      str r3, [r4, #4]
008711b8  04 00 a0 e1                                      mov r0, r4
008711bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00872758, declared_size=308, range_size=308, mode=arm
; class-group: std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEaSERKS5_
; demangled: std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >::operator=(std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00872758  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0087275c  00 00 51 e1                                      cmp r1, r0
00872760  18 d0 4d e2                                      sub sp, sp, #0x18
00872764  01 50 a0 e1                                      mov r5, r1
00872768  00 40 a0 e1                                      mov r4, r0
0087276c  16 00 00 0a                                      beq #0x8727cc
00872770  04 30 91 e5                                      ldr r3, [r1, #4]
00872774  00 c0 91 e5                                      ldr ip, [r1]
00872778  00 20 90 e5                                      ldr r2, [r0]
0087277c  08 10 90 e5                                      ldr r1, [r0, #8]
00872780  03 60 6c e0                                      rsb r6, ip, r3
00872784  c6 61 a0 e1                                      asr r6, r6, #3
00872788  01 10 62 e0                                      rsb r1, r2, r1
0087278c  c1 01 56 e1                                      cmp r6, r1, asr #3
00872790  2b 00 00 8a                                      bhi #0x872844
00872794  04 10 90 e5                                      ldr r1, [r0, #4]
00872798  01 10 62 e0                                      rsb r1, r2, r1
0087279c  c1 11 a0 e1                                      asr r1, r1, #3
008727a0  01 00 56 e1                                      cmp r6, r1
008727a4  0b 00 00 8a                                      bhi #0x8727d8
008727a8  0c 00 a0 e1                                      mov r0, ip
008727ac  03 10 a0 e1                                      mov r1, r3
008727b0  00 c0 a0 e3                                      mov ip, #0
008727b4  14 30 8d e2                                      add r3, sp, #0x14
008727b8  00 c0 8d e5                                      str ip, [sp]
008727bc  d0 ff ff eb                                      bl #0x872704
008727c0  00 80 94 e5                                      ldr r8, [r4]
008727c4  86 61 88 e0                                      add r6, r8, r6, lsl #3
008727c8  04 60 84 e5                                      str r6, [r4, #4]
008727cc  04 00 a0 e1                                      mov r0, r4
008727d0  18 d0 8d e2                                      add sp, sp, #0x18
008727d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008727d8  81 11 8c e0                                      add r1, ip, r1, lsl #3
008727dc  0c 00 a0 e1                                      mov r0, ip
008727e0  00 70 a0 e3                                      mov r7, #0
008727e4  10 30 8d e2                                      add r3, sp, #0x10
008727e8  00 70 8d e5                                      str r7, [sp]
008727ec  c4 ff ff eb                                      bl #0x872704
008727f0  00 11 94 e8                                      ldm r4, {r8, ip}
008727f4  00 30 95 e5                                      ldr r3, [r5]
008727f8  04 10 95 e5                                      ldr r1, [r5, #4]
008727fc  0c 50 68 e0                                      rsb r5, r8, ip
00872800  07 50 c5 e3                                      bic r5, r5, #7
00872804  05 50 83 e0                                      add r5, r3, r5
00872808  01 10 65 e0                                      rsb r1, r5, r1
0087280c  c1 11 a0 e1                                      asr r1, r1, #3
00872810  07 00 51 e1                                      cmp r1, r7
00872814  ea ff ff da                                      ble #0x8727c4
00872818  05 20 a0 e1                                      mov r2, r5
0087281c  07 00 b2 e7                                      ldr r0, [r2, r7]!
00872820  0c 30 a0 e1                                      mov r3, ip
00872824  01 10 51 e2                                      subs r1, r1, #1
00872828  07 00 a3 e7                                      str r0, [r3, r7]!
0087282c  04 20 d2 e5                                      ldrb r2, [r2, #4]
00872830  08 70 87 e2                                      add r7, r7, #8
00872834  04 20 c3 e5                                      strb r2, [r3, #4]
00872838  f6 ff ff 1a                                      bne #0x872818
0087283c  00 80 94 e5                                      ldr r8, [r4]
00872840  df ff ff ea                                      b #0x8727c4
00872844  18 10 8d e2                                      add r1, sp, #0x18
00872848  0c 20 a0 e1                                      mov r2, ip
0087284c  0c 60 21 e5                                      str r6, [r1, #-0xc]!
00872850  71 fa ff eb                                      bl #0x87121c
00872854  00 30 94 e5                                      ldr r3, [r4]
00872858  00 80 a0 e1                                      mov r8, r0
0087285c  04 00 94 e5                                      ldr r0, [r4, #4]
00872860  03 00 50 e1                                      cmp r0, r3
00872864  08 20 40 12                                      subne r2, r0, #8
00872868  02 30 63 10                                      rsbne r3, r3, r2
0087286c  a3 31 e0 11                                      mvnne r3, r3, lsr #3
00872870  83 01 80 10                                      addne r0, r0, r3, lsl #3
00872874  f2 76 ea eb                                      bl #0x310444
00872878  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0087287c  00 80 84 e5                                      str r8, [r4]
00872880  83 31 88 e0                                      add r3, r8, r3, lsl #3
00872884  08 30 84 e5                                      str r3, [r4, #8]
00872888  cd ff ff ea                                      b #0x8727c4
