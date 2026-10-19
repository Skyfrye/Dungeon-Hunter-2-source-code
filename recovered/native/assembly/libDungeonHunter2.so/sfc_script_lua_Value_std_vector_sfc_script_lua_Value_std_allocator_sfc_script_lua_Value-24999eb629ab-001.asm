; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031c830, declared_size=108, range_size=108, mode=arm
; class-group: sfc::script::lua::Value* std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >
; alias: _ZNSt6vectorIN3sfc6script3lua5ValueESaIS3_EE20_M_allocate_and_copyIPS3_EES7_RjT_S9_
; demangled: sfc::script::lua::Value* std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >::_M_allocate_and_copy<sfc::script::lua::Value*>(unsigned int&, sfc::script::lua::Value*, sfc::script::lua::Value*)
; decoder-mode: arm
0031c830  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031c834  08 00 80 e2                                      add r0, r0, #8
0031c838  02 40 a0 e1                                      mov r4, r2
0031c83c  01 20 a0 e1                                      mov r2, r1
0031c840  00 10 91 e5                                      ldr r1, [r1]
0031c844  03 50 a0 e1                                      mov r5, r3
0031c848  3a f3 ff eb                                      bl #0x319538
0031c84c  05 50 64 e0                                      rsb r5, r4, r5
0031c850  45 52 a0 e1                                      asr r5, r5, #4
0031c854  00 70 a0 e1                                      mov r7, r0
0031c858  85 61 85 e0                                      add r6, r5, r5, lsl #3
0031c85c  06 63 86 e0                                      add r6, r6, r6, lsl #6
0031c860  86 61 85 e0                                      add r6, r5, r6, lsl #3
0031c864  86 67 86 e0                                      add r6, r6, r6, lsl #15
0031c868  86 61 85 e0                                      add r6, r5, r6, lsl #3
0031c86c  00 60 66 e2                                      rsb r6, r6, #0
0031c870  00 00 56 e3                                      cmp r6, #0
0031c874  06 00 00 da                                      ble #0x31c894
0031c878  00 50 a0 e3                                      mov r5, #0
0031c87c  05 00 87 e0                                      add r0, r7, r5
0031c880  05 10 84 e0                                      add r1, r4, r5
0031c884  6a ff ff eb                                      bl #0x31c634
0031c888  01 60 56 e2                                      subs r6, r6, #1
0031c88c  70 50 85 e2                                      add r5, r5, #0x70
0031c890  f9 ff ff 1a                                      bne #0x31c87c
0031c894  07 00 a0 e1                                      mov r0, r7
0031c898  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
