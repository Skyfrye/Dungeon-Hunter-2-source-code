; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863680, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox19PriorityBankElementENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE5eraseEPS1_
; demangled: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >::erase(vox::PriorityBankElement*)
; decoder-mode: arm
00863680  30 00 2d e9                                      push {r4, r5}
00863684  04 30 90 e5                                      ldr r3, [r0, #4]
00863688  08 c0 81 e2                                      add ip, r1, #8
0086368c  00 20 a0 e1                                      mov r2, r0
00863690  03 00 5c e1                                      cmp ip, r3
00863694  0c 00 00 0a                                      beq #0x8636cc
00863698  03 c0 6c e0                                      rsb ip, ip, r3
0086369c  cc c1 a0 e1                                      asr ip, ip, #3
008636a0  00 00 5c e3                                      cmp ip, #0
008636a4  08 00 00 da                                      ble #0x8636cc
008636a8  01 30 a0 e1                                      mov r3, r1
008636ac  08 50 93 e5                                      ldr r5, [r3, #8]
008636b0  0c 40 93 e5                                      ldr r4, [r3, #0xc]
008636b4  01 c0 5c e2                                      subs ip, ip, #1
008636b8  00 50 83 e5                                      str r5, [r3]
008636bc  04 40 83 e5                                      str r4, [r3, #4]
008636c0  08 30 83 e2                                      add r3, r3, #8
008636c4  f8 ff ff 1a                                      bne #0x8636ac
008636c8  04 30 92 e5                                      ldr r3, [r2, #4]
008636cc  08 30 43 e2                                      sub r3, r3, #8
008636d0  04 30 82 e5                                      str r3, [r2, #4]
008636d4  01 00 a0 e1                                      mov r0, r1
008636d8  30 00 bd e8                                      pop {r4, r5}
008636dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00863d58, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox19PriorityBankElementENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEC1ERKS5_
; demangled: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >::vector(std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00863d58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00863d5c  88 00 91 e8                                      ldm r1, {r3, r7}
00863d60  00 50 a0 e3                                      mov r5, #0
00863d64  00 40 a0 e1                                      mov r4, r0
00863d68  07 70 63 e0                                      rsb r7, r3, r7
00863d6c  07 70 c7 e3                                      bic r7, r7, #7
00863d70  01 60 a0 e1                                      mov r6, r1
00863d74  00 50 80 e5                                      str r5, [r0]
00863d78  04 50 80 e5                                      str r5, [r0, #4]
00863d7c  08 50 80 e5                                      str r5, [r0, #8]
00863d80  05 10 a0 e1                                      mov r1, r5
00863d84  07 00 a0 e1                                      mov r0, r7
00863d88  2e b2 ea eb                                      bl #0x310648
00863d8c  07 70 80 e0                                      add r7, r0, r7
00863d90  08 70 84 e5                                      str r7, [r4, #8]
00863d94  00 00 84 e5                                      str r0, [r4]
00863d98  04 00 84 e5                                      str r0, [r4, #4]
00863d9c  c0 00 96 e8                                      ldm r6, {r6, r7}
00863da0  00 30 a0 e1                                      mov r3, r0
00863da4  07 70 66 e0                                      rsb r7, r6, r7
00863da8  c7 71 a0 e1                                      asr r7, r7, #3
00863dac  05 00 57 e1                                      cmp r7, r5
00863db0  0a 00 00 da                                      ble #0x863de0
00863db4  07 10 a0 e1                                      mov r1, r7
00863db8  06 20 a0 e1                                      mov r2, r6
00863dbc  05 c0 b2 e7                                      ldr ip, [r2, r5]!
00863dc0  00 30 a0 e1                                      mov r3, r0
00863dc4  01 10 51 e2                                      subs r1, r1, #1
00863dc8  05 c0 a3 e7                                      str ip, [r3, r5]!
00863dcc  04 20 92 e5                                      ldr r2, [r2, #4]
00863dd0  08 50 85 e2                                      add r5, r5, #8
00863dd4  04 20 83 e5                                      str r2, [r3, #4]
00863dd8  f6 ff ff 1a                                      bne #0x863db8
00863ddc  87 31 80 e0                                      add r3, r0, r7, lsl #3
00863de0  04 30 84 e5                                      str r3, [r4, #4]
00863de4  04 00 a0 e1                                      mov r0, r4
00863de8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00863f2c, declared_size=380, range_size=380, mode=arm
; class-group: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox19PriorityBankElementENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEaSERKS5_
; demangled: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >::operator=(std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00863f2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00863f30  00 00 51 e1                                      cmp r1, r0
00863f34  08 d0 4d e2                                      sub sp, sp, #8
00863f38  00 50 a0 e1                                      mov r5, r0
00863f3c  20 00 00 0a                                      beq #0x863fc4
00863f40  0c 00 91 e8                                      ldm r1, {r2, r3}
00863f44  00 c0 90 e5                                      ldr ip, [r0]
00863f48  08 60 90 e5                                      ldr r6, [r0, #8]
00863f4c  03 40 62 e0                                      rsb r4, r2, r3
00863f50  c4 41 a0 e1                                      asr r4, r4, #3
00863f54  06 60 6c e0                                      rsb r6, ip, r6
00863f58  c6 01 54 e1                                      cmp r4, r6, asr #3
00863f5c  04 70 a0 e1                                      mov r7, r4
00863f60  0c 60 a0 e1                                      mov r6, ip
00863f64  3d 00 00 8a                                      bhi #0x864060
00863f68  04 80 90 e5                                      ldr r8, [r0, #4]
00863f6c  08 00 6c e0                                      rsb r0, ip, r8
00863f70  c0 01 a0 e1                                      asr r0, r0, #3
00863f74  00 00 54 e1                                      cmp r4, r0
00863f78  14 00 00 8a                                      bhi #0x863fd0
00863f7c  00 00 54 e3                                      cmp r4, #0
00863f80  84 41 a0 d1                                      lslle r4, r4, #3
00863f84  0b 00 00 da                                      ble #0x863fb8
00863f88  00 00 a0 e3                                      mov r0, #0
00863f8c  02 10 a0 e1                                      mov r1, r2
00863f90  00 60 b1 e7                                      ldr r6, [r1, r0]!
00863f94  0c 30 a0 e1                                      mov r3, ip
00863f98  01 40 54 e2                                      subs r4, r4, #1
00863f9c  00 60 a3 e7                                      str r6, [r3, r0]!
00863fa0  04 10 91 e5                                      ldr r1, [r1, #4]
00863fa4  08 00 80 e2                                      add r0, r0, #8
00863fa8  04 10 83 e5                                      str r1, [r3, #4]
00863fac  f6 ff ff 1a                                      bne #0x863f8c
00863fb0  00 c0 95 e5                                      ldr ip, [r5]
00863fb4  87 41 a0 e1                                      lsl r4, r7, #3
00863fb8  0c 60 a0 e1                                      mov r6, ip
00863fbc  04 60 86 e0                                      add r6, r6, r4
00863fc0  04 60 85 e5                                      str r6, [r5, #4]
00863fc4  05 00 a0 e1                                      mov r0, r5
00863fc8  08 d0 8d e2                                      add sp, sp, #8
00863fcc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00863fd0  00 70 50 e2                                      subs r7, r0, #0
00863fd4  08 70 a0 d1                                      movle r7, r8
00863fd8  80 01 82 e0                                      add r0, r2, r0, lsl #3
00863fdc  0e 00 00 da                                      ble #0x86401c
00863fe0  00 60 a0 e3                                      mov r6, #0
00863fe4  02 00 a0 e1                                      mov r0, r2
00863fe8  06 80 b0 e7                                      ldr r8, [r0, r6]!
00863fec  0c 30 a0 e1                                      mov r3, ip
00863ff0  01 70 57 e2                                      subs r7, r7, #1
00863ff4  06 80 a3 e7                                      str r8, [r3, r6]!
00863ff8  04 00 90 e5                                      ldr r0, [r0, #4]
00863ffc  08 60 86 e2                                      add r6, r6, #8
00864000  04 00 83 e5                                      str r0, [r3, #4]
00864004  f6 ff ff 1a                                      bne #0x863fe4
00864008  c0 00 95 e8                                      ldm r5, {r6, r7}
0086400c  0c 00 91 e8                                      ldm r1, {r2, r3}
00864010  07 00 66 e0                                      rsb r0, r6, r7
00864014  07 00 c0 e3                                      bic r0, r0, #7
00864018  00 00 82 e0                                      add r0, r2, r0
0086401c  03 30 60 e0                                      rsb r3, r0, r3
00864020  c3 31 a0 e1                                      asr r3, r3, #3
00864024  00 00 53 e3                                      cmp r3, #0
00864028  00 c0 a0 c3                                      movgt ip, #0
0086402c  09 00 00 da                                      ble #0x864058
00864030  00 10 a0 e1                                      mov r1, r0
00864034  0c 60 b1 e7                                      ldr r6, [r1, ip]!
00864038  07 20 a0 e1                                      mov r2, r7
0086403c  01 30 53 e2                                      subs r3, r3, #1
00864040  0c 60 a2 e7                                      str r6, [r2, ip]!
00864044  04 10 91 e5                                      ldr r1, [r1, #4]
00864048  08 c0 8c e2                                      add ip, ip, #8
0086404c  04 10 82 e5                                      str r1, [r2, #4]
00864050  f6 ff ff 1a                                      bne #0x864030
00864054  00 60 95 e5                                      ldr r6, [r5]
00864058  84 41 a0 e1                                      lsl r4, r4, #3
0086405c  d6 ff ff ea                                      b #0x863fbc
00864060  08 10 8d e2                                      add r1, sp, #8
00864064  04 40 21 e5                                      str r4, [r1, #-4]!
00864068  99 ff ff eb                                      bl #0x863ed4
0086406c  00 30 95 e5                                      ldr r3, [r5]
00864070  00 60 a0 e1                                      mov r6, r0
00864074  04 00 95 e5                                      ldr r0, [r5, #4]
00864078  84 41 a0 e1                                      lsl r4, r4, #3
0086407c  03 00 50 e1                                      cmp r0, r3
00864080  08 20 40 12                                      subne r2, r0, #8
00864084  02 30 63 10                                      rsbne r3, r3, r2
00864088  a3 31 e0 11                                      mvnne r3, r3, lsr #3
0086408c  83 01 80 10                                      addne r0, r0, r3, lsl #3
00864090  eb b0 ea eb                                      bl #0x310444
00864094  04 30 9d e5                                      ldr r3, [sp, #4]
00864098  00 60 85 e5                                      str r6, [r5]
0086409c  83 31 86 e0                                      add r3, r6, r3, lsl #3
008640a0  08 30 85 e5                                      str r3, [r5, #8]
008640a4  c4 ff ff ea                                      b #0x863fbc

; FUNCTION 0x008660fc, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox19PriorityBankElementENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE7reserveEj
; demangled: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >::reserve(unsigned int)
; decoder-mode: arm
008660fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00866100  00 40 a0 e1                                      mov r4, r0
00866104  00 20 90 e5                                      ldr r2, [r0]
00866108  08 00 90 e5                                      ldr r0, [r0, #8]
0086610c  08 d0 4d e2                                      sub sp, sp, #8
00866110  04 10 8d e5                                      str r1, [sp, #4]
00866114  00 00 62 e0                                      rsb r0, r2, r0
00866118  c0 01 51 e1                                      cmp r1, r0, asr #3
0086611c  18 00 00 9a                                      bls #0x866184
00866120  1e 02 71 e3                                      cmn r1, #0xe0000001
00866124  18 00 00 8a                                      bhi #0x86618c
00866128  04 30 94 e5                                      ldr r3, [r4, #4]
0086612c  00 00 52 e3                                      cmp r2, #0
00866130  03 50 62 e0                                      rsb r5, r2, r3
00866134  c5 51 a0 e1                                      asr r5, r5, #3
00866138  18 00 00 0a                                      beq #0x8661a0
0086613c  04 00 a0 e1                                      mov r0, r4
00866140  04 10 8d e2                                      add r1, sp, #4
00866144  ed f6 ff eb                                      bl #0x863d00
00866148  00 30 94 e5                                      ldr r3, [r4]
0086614c  00 60 a0 e1                                      mov r6, r0
00866150  04 00 94 e5                                      ldr r0, [r4, #4]
00866154  03 00 50 e1                                      cmp r0, r3
00866158  08 20 40 12                                      subne r2, r0, #8
0086615c  02 30 63 10                                      rsbne r3, r3, r2
00866160  a3 31 e0 11                                      mvnne r3, r3, lsr #3
00866164  83 01 80 10                                      addne r0, r0, r3, lsl #3
00866168  b5 a8 ea eb                                      bl #0x310444
0086616c  04 30 9d e5                                      ldr r3, [sp, #4]
00866170  85 51 86 e0                                      add r5, r6, r5, lsl #3
00866174  04 50 84 e5                                      str r5, [r4, #4]
00866178  83 31 86 e0                                      add r3, r6, r3, lsl #3
0086617c  08 30 84 e5                                      str r3, [r4, #8]
00866180  00 60 84 e5                                      str r6, [r4]
00866184  08 d0 8d e2                                      add sp, sp, #8
00866188  70 80 bd e8                                      pop {r4, r5, r6, pc}
0086618c  24 00 9f e5                                      ldr r0, [pc, #0x24]
00866190  00 00 8f e0                                      add r0, pc, r0
00866194  5b 60 01 eb                                      bl #0x8be308
00866198  00 20 94 e5                                      ldr r2, [r4]
0086619c  e1 ff ff ea                                      b #0x866128
008661a0  04 00 9d e5                                      ldr r0, [sp, #4]
008661a4  02 10 a0 e1                                      mov r1, r2
008661a8  80 01 a0 e1                                      lsl r0, r0, #3
008661ac  25 a9 ea eb                                      bl #0x310648
008661b0  00 60 a0 e1                                      mov r6, r0
008661b4  ec ff ff ea                                      b #0x86616c
; mapping-symbol data/literal pool
008661b8  d8 82 05 00                                      .byte 0xd8, 0x82, 0x05, 0x00

; FUNCTION 0x00869484, declared_size=264, range_size=264, mode=arm
; class-group: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox19PriorityBankElementENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE9push_backERKS1_
; demangled: std::vector<vox::PriorityBankElement, vox::SAllocator<vox::PriorityBankElement, (vox::VoxMemHint)0> >::push_back(vox::PriorityBankElement const&)
; decoder-mode: arm
00869484  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00869488  48 00 90 e9                                      ldmib r0, {r3, r6}
0086948c  00 40 a0 e1                                      mov r4, r0
00869490  01 50 a0 e1                                      mov r5, r1
00869494  06 00 53 e1                                      cmp r3, r6
00869498  07 00 00 0a                                      beq #0x8694bc
0086949c  00 20 91 e5                                      ldr r2, [r1]
008694a0  00 20 83 e5                                      str r2, [r3]
008694a4  04 20 91 e5                                      ldr r2, [r1, #4]
008694a8  04 20 83 e5                                      str r2, [r3, #4]
008694ac  04 30 90 e5                                      ldr r3, [r0, #4]
008694b0  08 30 83 e2                                      add r3, r3, #8
008694b4  04 30 80 e5                                      str r3, [r0, #4]
008694b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008694bc  00 30 90 e5                                      ldr r3, [r0]
008694c0  06 30 63 e0                                      rsb r3, r3, r6
008694c4  c3 31 a0 e1                                      asr r3, r3, #3
008694c8  01 00 53 e3                                      cmp r3, #1
008694cc  03 70 83 20                                      addhs r7, r3, r3
008694d0  01 70 83 32                                      addlo r7, r3, #1
008694d4  1e 02 77 e3                                      cmn r7, #0xe0000001
008694d8  29 00 00 8a                                      bhi #0x869584
008694dc  07 00 53 e1                                      cmp r3, r7
008694e0  87 71 a0 91                                      lslls r7, r7, #3
008694e4  26 00 00 8a                                      bhi #0x869584
008694e8  07 00 a0 e1                                      mov r0, r7
008694ec  00 10 a0 e3                                      mov r1, #0
008694f0  54 9c ea eb                                      bl #0x310648
008694f4  00 e0 94 e5                                      ldr lr, [r4]
008694f8  00 80 a0 e1                                      mov r8, r0
008694fc  06 60 6e e0                                      rsb r6, lr, r6
00869500  c6 61 a0 e1                                      asr r6, r6, #3
00869504  00 00 56 e3                                      cmp r6, #0
00869508  00 60 a0 d1                                      movle r6, r0
0086950c  0b 00 00 da                                      ble #0x869540
00869510  06 10 a0 e1                                      mov r1, r6
00869514  00 00 a0 e3                                      mov r0, #0
00869518  0e 20 a0 e1                                      mov r2, lr
0086951c  00 c0 b2 e7                                      ldr ip, [r2, r0]!
00869520  08 30 a0 e1                                      mov r3, r8
00869524  01 10 51 e2                                      subs r1, r1, #1
00869528  00 c0 a3 e7                                      str ip, [r3, r0]!
0086952c  04 20 92 e5                                      ldr r2, [r2, #4]
00869530  08 00 80 e2                                      add r0, r0, #8
00869534  04 20 83 e5                                      str r2, [r3, #4]
00869538  f6 ff ff 1a                                      bne #0x869518
0086953c  86 61 88 e0                                      add r6, r8, r6, lsl #3
00869540  00 30 95 e5                                      ldr r3, [r5]
00869544  08 a0 86 e2                                      add sl, r6, #8
00869548  07 70 88 e0                                      add r7, r8, r7
0086954c  00 30 86 e5                                      str r3, [r6]
00869550  04 30 95 e5                                      ldr r3, [r5, #4]
00869554  04 30 86 e5                                      str r3, [r6, #4]
00869558  00 30 94 e5                                      ldr r3, [r4]
0086955c  04 00 94 e5                                      ldr r0, [r4, #4]
00869560  03 00 50 e1                                      cmp r0, r3
00869564  08 20 40 12                                      subne r2, r0, #8
00869568  02 30 63 10                                      rsbne r3, r3, r2
0086956c  a3 31 e0 11                                      mvnne r3, r3, lsr #3
00869570  83 01 80 10                                      addne r0, r0, r3, lsl #3
00869574  b2 9b ea eb                                      bl #0x310444
00869578  08 70 84 e5                                      str r7, [r4, #8]
0086957c  00 05 84 e8                                      stm r4, {r8, sl}
00869580  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00869584  07 70 e0 e3                                      mvn r7, #7
00869588  d6 ff ff ea                                      b #0x8694e8
