; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007f3530, declared_size=48, range_size=48, mode=arm
; class-group: b2StackAllocator
; alias: _ZN16b2StackAllocatorC2Ev
; demangled: b2StackAllocator::b2StackAllocator()
; decoder-mode: arm
007f3530  19 3a a0 e3                                      mov r3, #0x19000
007f3534  00 10 a0 e3                                      mov r1, #0
007f3538  30 00 2d e9                                      push {r4, r5}
007f353c  08 c0 83 e2                                      add ip, r3, #8
007f3540  63 5f 83 e2                                      add r5, r3, #0x18c
007f3544  04 40 83 e2                                      add r4, r3, #4
007f3548  05 10 80 e7                                      str r1, [r0, r5]
007f354c  04 10 80 e7                                      str r1, [r0, r4]
007f3550  0c 10 80 e7                                      str r1, [r0, ip]
007f3554  03 10 80 e7                                      str r1, [r0, r3]
007f3558  30 00 bd e8                                      pop {r4, r5}
007f355c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f3560, declared_size=48, range_size=48, mode=arm
; class-group: b2StackAllocator
; alias: _ZN16b2StackAllocatorC1Ev
; demangled: b2StackAllocator::b2StackAllocator()
; decoder-mode: arm
007f3560  19 3a a0 e3                                      mov r3, #0x19000
007f3564  00 10 a0 e3                                      mov r1, #0
007f3568  30 00 2d e9                                      push {r4, r5}
007f356c  08 c0 83 e2                                      add ip, r3, #8
007f3570  63 5f 83 e2                                      add r5, r3, #0x18c
007f3574  04 40 83 e2                                      add r4, r3, #4
007f3578  05 10 80 e7                                      str r1, [r0, r5]
007f357c  04 10 80 e7                                      str r1, [r0, r4]
007f3580  0c 10 80 e7                                      str r1, [r0, ip]
007f3584  03 10 80 e7                                      str r1, [r0, r3]
007f3588  30 00 bd e8                                      pop {r4, r5}
007f358c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f3590, declared_size=4, range_size=4, mode=arm
; class-group: b2StackAllocator
; alias: _ZN16b2StackAllocatorD2Ev
; demangled: b2StackAllocator::~b2StackAllocator()
; decoder-mode: arm
007f3590  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f3594, declared_size=4, range_size=4, mode=arm
; class-group: b2StackAllocator
; alias: _ZN16b2StackAllocatorD1Ev
; demangled: b2StackAllocator::~b2StackAllocator()
; decoder-mode: arm
007f3594  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f3598, declared_size=16, range_size=16, mode=arm
; class-group: b2StackAllocator
; alias: _ZNK16b2StackAllocator16GetMaxAllocationEv
; demangled: b2StackAllocator::GetMaxAllocation() const
; decoder-mode: arm
007f3598  19 3a a0 e3                                      mov r3, #0x19000
007f359c  08 30 83 e2                                      add r3, r3, #8
007f35a0  03 00 90 e7                                      ldr r0, [r0, r3]
007f35a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f35a8, declared_size=156, range_size=156, mode=arm
; class-group: b2StackAllocator
; alias: _ZN16b2StackAllocator4FreeEPv
; demangled: b2StackAllocator::Free(void*)
; decoder-mode: arm
007f35a8  70 40 2d e9                                      push {r4, r5, r6, lr}
007f35ac  19 3a a0 e3                                      mov r3, #0x19000
007f35b0  63 3f 83 e2                                      add r3, r3, #0x18c
007f35b4  03 50 90 e7                                      ldr r5, [r0, r3]
007f35b8  0c 20 a0 e3                                      mov r2, #0xc
007f35bc  19 3a a0 e3                                      mov r3, #0x19000
007f35c0  01 50 45 e2                                      sub r5, r5, #1
007f35c4  92 05 22 e0                                      mla r2, r2, r5, r0
007f35c8  00 40 a0 e1                                      mov r4, r0
007f35cc  03 c0 82 e0                                      add ip, r2, r3
007f35d0  10 c0 8c e2                                      add ip, ip, #0x10
007f35d4  04 60 dc e5                                      ldrb r6, [ip, #4]
007f35d8  10 30 83 e2                                      add r3, r3, #0x10
007f35dc  19 ca a0 e3                                      mov ip, #0x19000
007f35e0  00 00 56 e3                                      cmp r6, #0
007f35e4  13 00 00 1a                                      bne #0x7f3638
007f35e8  03 30 92 e7                                      ldr r3, [r2, r3]
007f35ec  0c 20 90 e7                                      ldr r2, [r0, ip]
007f35f0  02 30 63 e0                                      rsb r3, r3, r2
007f35f4  0c 30 80 e7                                      str r3, [r0, ip]
007f35f8  0c 30 a0 e3                                      mov r3, #0xc
007f35fc  93 45 25 e0                                      mla r5, r3, r5, r4
007f3600  19 2a a0 e3                                      mov r2, #0x19000
007f3604  02 30 a0 e1                                      mov r3, r2
007f3608  10 30 83 e2                                      add r3, r3, #0x10
007f360c  04 20 82 e2                                      add r2, r2, #4
007f3610  03 10 95 e7                                      ldr r1, [r5, r3]
007f3614  02 00 94 e7                                      ldr r0, [r4, r2]
007f3618  19 3a a0 e3                                      mov r3, #0x19000
007f361c  63 3f 83 e2                                      add r3, r3, #0x18c
007f3620  00 10 61 e0                                      rsb r1, r1, r0
007f3624  02 10 84 e7                                      str r1, [r4, r2]
007f3628  03 20 94 e7                                      ldr r2, [r4, r3]
007f362c  01 20 42 e2                                      sub r2, r2, #1
007f3630  03 20 84 e7                                      str r2, [r4, r3]
007f3634  70 80 bd e8                                      pop {r4, r5, r6, pc}
007f3638  01 00 a0 e1                                      mov r0, r1
007f363c  9e ff ff eb                                      bl #0x7f34bc
007f3640  ec ff ff ea                                      b #0x7f35f8

; FUNCTION 0x007f3644, declared_size=228, range_size=228, mode=arm
; class-group: b2StackAllocator
; alias: _ZN16b2StackAllocator8AllocateEi
; demangled: b2StackAllocator::Allocate(int)
; decoder-mode: arm
007f3644  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f3648  19 3a a0 e3                                      mov r3, #0x19000
007f364c  63 3f 83 e2                                      add r3, r3, #0x18c
007f3650  03 60 90 e7                                      ldr r6, [r0, r3]
007f3654  0c 50 a0 e3                                      mov r5, #0xc
007f3658  19 3a a0 e3                                      mov r3, #0x19000
007f365c  95 06 25 e0                                      mla r5, r5, r6, r0
007f3660  10 30 83 e2                                      add r3, r3, #0x10
007f3664  03 10 85 e7                                      str r1, [r5, r3]
007f3668  19 3a a0 e3                                      mov r3, #0x19000
007f366c  01 70 a0 e1                                      mov r7, r1
007f3670  03 10 90 e7                                      ldr r1, [r0, r3]
007f3674  03 80 85 e0                                      add r8, r5, r3
007f3678  00 40 a0 e1                                      mov r4, r0
007f367c  01 20 87 e0                                      add r2, r7, r1
007f3680  03 00 52 e1                                      cmp r2, r3
007f3684  10 80 88 e2                                      add r8, r8, #0x10
007f3688  1e 00 00 ca                                      bgt #0x7f3708
007f368c  19 2a a0 e3                                      mov r2, #0x19000
007f3690  0c 20 82 e2                                      add r2, r2, #0xc
007f3694  01 10 80 e0                                      add r1, r0, r1
007f3698  02 10 85 e7                                      str r1, [r5, r2]
007f369c  00 20 a0 e3                                      mov r2, #0
007f36a0  04 20 c8 e5                                      strb r2, [r8, #4]
007f36a4  03 20 90 e7                                      ldr r2, [r0, r3]
007f36a8  02 20 87 e0                                      add r2, r7, r2
007f36ac  03 20 80 e7                                      str r2, [r0, r3]
007f36b0  19 3a a0 e3                                      mov r3, #0x19000
007f36b4  04 30 83 e2                                      add r3, r3, #4
007f36b8  03 10 94 e7                                      ldr r1, [r4, r3]
007f36bc  19 2a a0 e3                                      mov r2, #0x19000
007f36c0  08 20 82 e2                                      add r2, r2, #8
007f36c4  01 70 87 e0                                      add r7, r7, r1
007f36c8  03 70 84 e7                                      str r7, [r4, r3]
007f36cc  02 10 94 e7                                      ldr r1, [r4, r2]
007f36d0  19 3a a0 e3                                      mov r3, #0x19000
007f36d4  63 3f 83 e2                                      add r3, r3, #0x18c
007f36d8  01 00 57 e1                                      cmp r7, r1
007f36dc  02 70 84 a7                                      strge r7, [r4, r2]
007f36e0  02 10 84 b7                                      strlt r1, [r4, r2]
007f36e4  03 10 94 e7                                      ldr r1, [r4, r3]
007f36e8  0c 20 a0 e3                                      mov r2, #0xc
007f36ec  92 46 26 e0                                      mla r6, r2, r6, r4
007f36f0  01 10 81 e2                                      add r1, r1, #1
007f36f4  19 2a a0 e3                                      mov r2, #0x19000
007f36f8  03 10 84 e7                                      str r1, [r4, r3]
007f36fc  0c 20 82 e2                                      add r2, r2, #0xc
007f3700  02 00 96 e7                                      ldr r0, [r6, r2]
007f3704  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007f3708  07 00 a0 e1                                      mov r0, r7
007f370c  78 ff ff eb                                      bl #0x7f34f4
007f3710  19 3a a0 e3                                      mov r3, #0x19000
007f3714  0c 30 83 e2                                      add r3, r3, #0xc
007f3718  03 00 85 e7                                      str r0, [r5, r3]
007f371c  01 30 a0 e3                                      mov r3, #1
007f3720  04 30 c8 e5                                      strb r3, [r8, #4]
007f3724  e1 ff ff ea                                      b #0x7f36b0
