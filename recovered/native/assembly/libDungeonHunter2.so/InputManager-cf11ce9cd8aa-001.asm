; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034d6bc, declared_size=64, range_size=64, mode=arm
; class-group: InputManager
; alias: _ZN12InputManagerC2Eiii
; demangled: InputManager::InputManager(int, int, int)
; decoder-mode: arm
0034d6bc  70 00 2d e9                                      push {r4, r5, r6}
0034d6c0  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0034d6c4  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0034d6c8  01 60 a0 e3                                      mov r6, #1
0034d6cc  04 40 8f e0                                      add r4, pc, r4
0034d6d0  05 50 94 e7                                      ldr r5, [r4, r5]
0034d6d4  10 60 c0 e5                                      strb r6, [r0, #0x10]
0034d6d8  04 10 80 e5                                      str r1, [r0, #4]
0034d6dc  08 50 85 e2                                      add r5, r5, #8
0034d6e0  00 50 80 e5                                      str r5, [r0]
0034d6e4  08 20 80 e5                                      str r2, [r0, #8]
0034d6e8  0c 30 80 e5                                      str r3, [r0, #0xc]
0034d6ec  70 00 bd e8                                      pop {r4, r5, r6}
0034d6f0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0034d6f4  c4 73 64 00 b4 06 00 00                          .byte 0xc4, 0x73, 0x64, 0x00, 0xb4, 0x06, 0x00, 0x00

; FUNCTION 0x0034d6fc, declared_size=64, range_size=64, mode=arm
; class-group: InputManager
; alias: _ZN12InputManagerC1Eiii
; demangled: InputManager::InputManager(int, int, int)
; decoder-mode: arm
0034d6fc  70 00 2d e9                                      push {r4, r5, r6}
0034d700  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0034d704  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0034d708  01 60 a0 e3                                      mov r6, #1
0034d70c  04 40 8f e0                                      add r4, pc, r4
0034d710  05 50 94 e7                                      ldr r5, [r4, r5]
0034d714  10 60 c0 e5                                      strb r6, [r0, #0x10]
0034d718  04 10 80 e5                                      str r1, [r0, #4]
0034d71c  08 50 85 e2                                      add r5, r5, #8
0034d720  00 50 80 e5                                      str r5, [r0]
0034d724  08 20 80 e5                                      str r2, [r0, #8]
0034d728  0c 30 80 e5                                      str r3, [r0, #0xc]
0034d72c  70 00 bd e8                                      pop {r4, r5, r6}
0034d730  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0034d734  84 73 64 00 b4 06 00 00                          .byte 0x84, 0x73, 0x64, 0x00, 0xb4, 0x06, 0x00, 0x00

; FUNCTION 0x0034d73c, declared_size=4, range_size=4, mode=arm
; class-group: InputManager
; alias: _ZN12InputManagerD2Ev
; demangled: InputManager::~InputManager()
; decoder-mode: arm
0034d73c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034d740, declared_size=4, range_size=4, mode=arm
; class-group: InputManager
; alias: _ZN12InputManagerD1Ev
; demangled: InputManager::~InputManager()
; decoder-mode: arm
0034d740  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034d744, declared_size=8, range_size=8, mode=arm
; class-group: InputManager
; alias: _ZNK12InputManager12GetNumMousesEv
; demangled: InputManager::GetNumMouses() const
; decoder-mode: arm
0034d744  04 00 90 e5                                      ldr r0, [r0, #4]
0034d748  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034d74c, declared_size=8, range_size=8, mode=arm
; class-group: InputManager
; alias: _ZNK12InputManager15GetNumKeyboardsEv
; demangled: InputManager::GetNumKeyboards() const
; decoder-mode: arm
0034d74c  08 00 90 e5                                      ldr r0, [r0, #8]
0034d750  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034d754, declared_size=8, range_size=8, mode=arm
; class-group: InputManager
; alias: _ZNK12InputManager14GetNumGamepadsEv
; demangled: InputManager::GetNumGamepads() const
; decoder-mode: arm
0034d754  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0034d758  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034d75c, declared_size=88, range_size=88, mode=arm
; class-group: InputManager
; alias: _ZN12InputManager24GetConnectedGamepadCountEv
; demangled: InputManager::GetConnectedGamepadCount()
; decoder-mode: arm
0034d75c  70 40 2d e9                                      push {r4, r5, r6, lr}
0034d760  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0034d764  00 50 a0 e1                                      mov r5, r0
0034d768  00 00 53 e3                                      cmp r3, #0
0034d76c  00 60 a0 d3                                      movle r6, #0
0034d770  0d 00 00 da                                      ble #0x34d7ac
0034d774  00 40 a0 e3                                      mov r4, #0
0034d778  04 60 a0 e1                                      mov r6, r4
0034d77c  04 10 a0 e1                                      mov r1, r4
0034d780  00 30 95 e5                                      ldr r3, [r5]
0034d784  05 00 a0 e1                                      mov r0, r5
0034d788  0f e0 a0 e1                                      mov lr, pc
0034d78c  08 f0 93 e5                                      ldr pc, [r3, #8]
0034d790  58 37 d0 e5                                      ldrb r3, [r0, #0x758]
0034d794  01 40 84 e2                                      add r4, r4, #1
0034d798  00 00 53 e3                                      cmp r3, #0
0034d79c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0034d7a0  01 60 86 12                                      addne r6, r6, #1
0034d7a4  04 00 53 e1                                      cmp r3, r4
0034d7a8  f3 ff ff ca                                      bgt #0x34d77c
0034d7ac  06 00 a0 e1                                      mov r0, r6
0034d7b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034d7b4, declared_size=108, range_size=108, mode=arm
; class-group: InputManager
; alias: _ZN12InputManager24GetFirstConnectedGamepadEv
; demangled: InputManager::GetFirstConnectedGamepad()
; decoder-mode: arm
0034d7b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0034d7b8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0034d7bc  00 50 a0 e1                                      mov r5, r0
0034d7c0  00 00 53 e3                                      cmp r3, #0
0034d7c4  13 00 00 da                                      ble #0x34d818
0034d7c8  00 40 a0 e3                                      mov r4, #0
0034d7cc  03 00 00 ea                                      b #0x34d7e0
0034d7d0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0034d7d4  01 40 84 e2                                      add r4, r4, #1
0034d7d8  04 00 53 e1                                      cmp r3, r4
0034d7dc  0d 00 00 da                                      ble #0x34d818
0034d7e0  00 30 95 e5                                      ldr r3, [r5]
0034d7e4  04 10 a0 e1                                      mov r1, r4
0034d7e8  05 00 a0 e1                                      mov r0, r5
0034d7ec  0f e0 a0 e1                                      mov lr, pc
0034d7f0  08 f0 93 e5                                      ldr pc, [r3, #8]
0034d7f4  58 37 d0 e5                                      ldrb r3, [r0, #0x758]
0034d7f8  00 00 53 e3                                      cmp r3, #0
0034d7fc  f3 ff ff 0a                                      beq #0x34d7d0
0034d800  05 00 a0 e1                                      mov r0, r5
0034d804  04 10 a0 e1                                      mov r1, r4
0034d808  00 30 95 e5                                      ldr r3, [r5]
0034d80c  0f e0 a0 e1                                      mov lr, pc
0034d810  08 f0 93 e5                                      ldr pc, [r3, #8]
0034d814  70 80 bd e8                                      pop {r4, r5, r6, pc}
0034d818  00 00 a0 e3                                      mov r0, #0
0034d81c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034d820, declared_size=208, range_size=208, mode=arm
; class-group: InputManager
; alias: _ZN12InputManager11UpdateFrameEf
; demangled: InputManager::UpdateFrame(float)
; decoder-mode: arm
0034d820  70 40 2d e9                                      push {r4, r5, r6, lr}
0034d824  00 40 a0 e1                                      mov r4, r0
0034d828  01 60 a0 e1                                      mov r6, r1
0034d82c  00 50 a0 e3                                      mov r5, #0
0034d830  07 00 00 ea                                      b #0x34d854
0034d834  00 30 94 e5                                      ldr r3, [r4]
0034d838  0f e0 a0 e1                                      mov lr, pc
0034d83c  00 f0 93 e5                                      ldr pc, [r3]
0034d840  06 10 a0 e1                                      mov r1, r6
0034d844  00 30 90 e5                                      ldr r3, [r0]
0034d848  0f e0 a0 e1                                      mov lr, pc
0034d84c  00 f0 93 e5                                      ldr pc, [r3]
0034d850  01 50 85 e2                                      add r5, r5, #1
0034d854  04 00 a0 e1                                      mov r0, r4
0034d858  b9 ff ff eb                                      bl #0x34d744
0034d85c  00 00 55 e1                                      cmp r5, r0
0034d860  05 10 a0 e1                                      mov r1, r5
0034d864  04 00 a0 e1                                      mov r0, r4
0034d868  f1 ff ff ba                                      blt #0x34d834
0034d86c  00 50 a0 e3                                      mov r5, #0
0034d870  07 00 00 ea                                      b #0x34d894
0034d874  00 30 94 e5                                      ldr r3, [r4]
0034d878  0f e0 a0 e1                                      mov lr, pc
0034d87c  04 f0 93 e5                                      ldr pc, [r3, #4]
0034d880  06 10 a0 e1                                      mov r1, r6
0034d884  00 30 90 e5                                      ldr r3, [r0]
0034d888  0f e0 a0 e1                                      mov lr, pc
0034d88c  00 f0 93 e5                                      ldr pc, [r3]
0034d890  01 50 85 e2                                      add r5, r5, #1
0034d894  04 00 a0 e1                                      mov r0, r4
0034d898  ab ff ff eb                                      bl #0x34d74c
0034d89c  00 00 55 e1                                      cmp r5, r0
0034d8a0  05 10 a0 e1                                      mov r1, r5
0034d8a4  04 00 a0 e1                                      mov r0, r4
0034d8a8  f1 ff ff ba                                      blt #0x34d874
0034d8ac  00 50 a0 e3                                      mov r5, #0
0034d8b0  07 00 00 ea                                      b #0x34d8d4
0034d8b4  00 30 94 e5                                      ldr r3, [r4]
0034d8b8  0f e0 a0 e1                                      mov lr, pc
0034d8bc  08 f0 93 e5                                      ldr pc, [r3, #8]
0034d8c0  06 10 a0 e1                                      mov r1, r6
0034d8c4  00 30 90 e5                                      ldr r3, [r0]
0034d8c8  0f e0 a0 e1                                      mov lr, pc
0034d8cc  00 f0 93 e5                                      ldr pc, [r3]
0034d8d0  01 50 85 e2                                      add r5, r5, #1
0034d8d4  04 00 a0 e1                                      mov r0, r4
0034d8d8  9d ff ff eb                                      bl #0x34d754
0034d8dc  00 00 55 e1                                      cmp r5, r0
0034d8e0  05 10 a0 e1                                      mov r1, r5
0034d8e4  04 00 a0 e1                                      mov r0, r4
0034d8e8  f1 ff ff ba                                      blt #0x34d8b4
0034d8ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034d910, declared_size=28, range_size=28, mode=arm
; class-group: InputManager
; alias: _ZN12InputManagerD0Ev
; demangled: InputManager::~InputManager()
; decoder-mode: arm
0034d910  10 40 2d e9                                      push {r4, lr}
0034d914  00 40 a0 e1                                      mov r4, r0
0034d918  88 ff ff eb                                      bl #0x34d740
0034d91c  04 00 a0 e1                                      mov r0, r4
0034d920  c6 0a ff eb                                      bl #0x310440
0034d924  04 00 a0 e1                                      mov r0, r4
0034d928  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034dab4, declared_size=104, range_size=104, mode=arm
; class-group: InputManager
; alias: _ZN12InputManager7DestroyEv
; demangled: InputManager::Destroy()
; decoder-mode: arm
0034dab4  10 40 2d e9                                      push {r4, lr}
0034dab8  54 40 9f e5                                      ldr r4, [pc, #0x54]
0034dabc  04 40 8f e0                                      add r4, pc, r4
0034dac0  00 30 94 e5                                      ldr r3, [r4]
0034dac4  00 00 53 e3                                      cmp r3, #0
0034dac8  05 00 00 0a                                      beq #0x34dae4
0034dacc  03 00 a0 e1                                      mov r0, r3
0034dad0  00 30 93 e5                                      ldr r3, [r3]
0034dad4  0f e0 a0 e1                                      mov lr, pc
0034dad8  04 f0 93 e5                                      ldr pc, [r3, #4]
0034dadc  00 30 a0 e3                                      mov r3, #0
0034dae0  00 30 84 e5                                      str r3, [r4]
0034dae4  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0034dae8  04 40 8f e0                                      add r4, pc, r4
0034daec  04 30 94 e5                                      ldr r3, [r4, #4]
0034daf0  00 00 53 e3                                      cmp r3, #0
0034daf4  05 00 00 0a                                      beq #0x34db10
0034daf8  03 00 a0 e1                                      mov r0, r3
0034dafc  00 30 93 e5                                      ldr r3, [r3]
0034db00  0f e0 a0 e1                                      mov lr, pc
0034db04  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0034db08  00 30 a0 e3                                      mov r3, #0
0034db0c  04 30 84 e5                                      str r3, [r4, #4]
0034db10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034db14  dc 43 65 00 b0 43 65 00                          .byte 0xdc, 0x43, 0x65, 0x00, 0xb0, 0x43, 0x65, 0x00

; FUNCTION 0x0034db1c, declared_size=152, range_size=152, mode=arm
; class-group: InputManager
; alias: _ZN12InputManager11GetReceiverEv
; demangled: InputManager::GetReceiver()
; decoder-mode: arm
0034db1c  10 40 2d e9                                      push {r4, lr}
0034db20  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0034db24  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
0034db28  03 00 9f e7                                      ldr r0, [pc, r3]
0034db2c  00 00 50 e3                                      cmp r0, #0
0034db30  04 40 8f e0                                      add r4, pc, r4
0034db34  00 00 00 0a                                      beq #0x34db3c
0034db38  10 80 bd e8                                      pop {r4, pc}
0034db3c  00 10 a0 e1                                      mov r1, r0
0034db40  46 0f a0 e3                                      mov r0, #0x118
0034db44  89 0a ff eb                                      bl #0x310570
0034db48  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0034db4c  00 30 a0 e3                                      mov r3, #0
0034db50  03 10 a0 e1                                      mov r1, r3
0034db54  02 20 94 e7                                      ldr r2, [r4, r2]
0034db58  08 20 82 e2                                      add r2, r2, #8
0034db5c  00 20 80 e5                                      str r2, [r0]
0034db60  03 20 80 e0                                      add r2, r0, r3
0034db64  01 30 83 e2                                      add r3, r3, #1
0034db68  ff 00 53 e3                                      cmp r3, #0xff
0034db6c  04 10 c2 e5                                      strb r1, [r2, #4]
0034db70  00 20 a0 e3                                      mov r2, #0
0034db74  f9 ff ff 1a                                      bne #0x34db60
0034db78  30 30 9f e5                                      ldr r3, [pc, #0x30]
0034db7c  00 10 a0 e3                                      mov r1, #0
0034db80  12 21 c0 e5                                      strb r2, [r0, #0x112]
0034db84  03 30 8f e0                                      add r3, pc, r3
0034db88  0c 11 80 e5                                      str r1, [r0, #0x10c]
0034db8c  08 21 80 e5                                      str r2, [r0, #0x108]
0034db90  04 21 80 e5                                      str r2, [r0, #0x104]
0034db94  14 21 c0 e5                                      strb r2, [r0, #0x114]
0034db98  13 21 c0 e5                                      strb r2, [r0, #0x113]
0034db9c  00 00 83 e5                                      str r0, [r3]
0034dba0  e4 ff ff ea                                      b #0x34db38
; mapping-symbol data/literal pool
0034dba4  70 43 65 00 60 6f 64 00 e0 18 00 00 14 43 65 00  .byte 0x70, 0x43, 0x65, 0x00, 0x60, 0x6f, 0x64, 0x00, 0xe0, 0x18, 0x00, 0x00, 0x14, 0x43, 0x65, 0x00

; FUNCTION 0x0034dda4, declared_size=196, range_size=196, mode=arm
; class-group: InputManager
; alias: _ZN12InputManager11GetInstanceEv
; demangled: InputManager::GetInstance()
; decoder-mode: arm
0034dda4  70 40 2d e9                                      push {r4, r5, r6, lr}
0034dda8  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
0034ddac  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
0034ddb0  08 d0 4d e2                                      sub sp, sp, #8
0034ddb4  04 40 8f e0                                      add r4, pc, r4
0034ddb8  04 60 94 e5                                      ldr r6, [r4, #4]
0034ddbc  05 50 8f e0                                      add r5, pc, r5
0034ddc0  00 00 56 e3                                      cmp r6, #0
0034ddc4  02 00 00 0a                                      beq #0x34ddd4
0034ddc8  06 00 a0 e1                                      mov r0, r6
0034ddcc  08 d0 8d e2                                      add sp, sp, #8
0034ddd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0034ddd4  06 10 a0 e1                                      mov r1, r6
0034ddd8  af 0d a0 e3                                      mov r0, #0x2bc0
0034dddc  e3 09 ff eb                                      bl #0x310570
0034dde0  00 60 a0 e1                                      mov r6, r0
0034dde4  cb ff ff eb                                      bl #0x34dd18
0034dde8  00 00 56 e3                                      cmp r6, #0
0034ddec  04 60 84 e5                                      str r6, [r4, #4]
0034ddf0  f4 ff ff 1a                                      bne #0x34ddc8
0034ddf4  58 30 9f e5                                      ldr r3, [pc, #0x58]
0034ddf8  03 30 95 e7                                      ldr r3, [r5, r3]
0034ddfc  00 30 93 e5                                      ldr r3, [r3]
0034de00  02 00 53 e3                                      cmp r3, #2
0034de04  00 60 86 05                                      streq r6, [r6]
0034de08  ee ff ff 0a                                      beq #0x34ddc8
0034de0c  01 00 53 e3                                      cmp r3, #1
0034de10  ec ff ff 1a                                      bne #0x34ddc8
0034de14  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0034de18  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0034de1c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0034de20  00 00 95 e7                                      ldr r0, [r5, r0]
0034de24  38 30 9f e5                                      ldr r3, [pc, #0x38]
0034de28  8e c2 00 e3                                      movw ip, #0x28e
0034de2c  01 10 8f e0                                      add r1, pc, r1
0034de30  a8 00 80 e2                                      add r0, r0, #0xa8
0034de34  02 20 8f e0                                      add r2, pc, r2
0034de38  03 30 8f e0                                      add r3, pc, r3
0034de3c  00 c0 8d e5                                      str ip, [sp]
0034de40  6f 00 ff eb                                      bl #0x30e004
0034de44  04 60 94 e5                                      ldr r6, [r4, #4]
0034de48  de ff ff ea                                      b #0x34ddc8
; mapping-symbol data/literal pool
0034de4c  e4 40 65 00 d4 6c 64 00 c0 39 00 00 c0 19 00 00  .byte 0xe4, 0x40, 0x65, 0x00, 0xd4, 0x6c, 0x64, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0034de5c  ac 05 57 00 8c 28 57 00 30 28 57 00              .byte 0xac, 0x05, 0x57, 0x00, 0x8c, 0x28, 0x57, 0x00, 0x30, 0x28, 0x57, 0x00
