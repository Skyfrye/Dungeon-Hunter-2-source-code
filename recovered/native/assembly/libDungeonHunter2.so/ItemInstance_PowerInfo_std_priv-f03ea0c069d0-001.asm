; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fa258, declared_size=112, range_size=112, mode=arm
; class-group: ItemInstance::PowerInfo* std::priv
; alias: _ZNSt4priv6__copyIPN12ItemInstance9PowerInfoES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: ItemInstance::PowerInfo* std::priv::__copy<ItemInstance::PowerInfo*, ItemInstance::PowerInfo*, int>(ItemInstance::PowerInfo*, ItemInstance::PowerInfo*, ItemInstance::PowerInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003fa258  01 10 60 e0                                      rsb r1, r0, r1
003fa25c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fa260  c1 82 a0 e1                                      asr r8, r1, #5
003fa264  00 00 58 e3                                      cmp r8, #0
003fa268  00 40 a0 e1                                      mov r4, r0
003fa26c  02 70 a0 e1                                      mov r7, r2
003fa270  12 00 00 da                                      ble #0x3fa2c0
003fa274  02 50 a0 e1                                      mov r5, r2
003fa278  08 60 a0 e1                                      mov r6, r8
003fa27c  00 00 00 ea                                      b #0x3fa284
003fa280  20 40 84 e2                                      add r4, r4, #0x20
003fa284  00 30 94 e5                                      ldr r3, [r4]
003fa288  08 00 85 e2                                      add r0, r5, #8
003fa28c  08 20 84 e2                                      add r2, r4, #8
003fa290  00 30 85 e5                                      str r3, [r5]
003fa294  04 30 94 e5                                      ldr r3, [r4, #4]
003fa298  02 00 50 e1                                      cmp r0, r2
003fa29c  04 30 85 e5                                      str r3, [r5, #4]
003fa2a0  02 00 00 0a                                      beq #0x3fa2b0
003fa2a4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
003fa2a8  18 20 94 e5                                      ldr r2, [r4, #0x18]
003fa2ac  cb 59 fc eb                                      bl #0x3109e0
003fa2b0  01 60 56 e2                                      subs r6, r6, #1
003fa2b4  20 50 85 e2                                      add r5, r5, #0x20
003fa2b8  f0 ff ff 1a                                      bne #0x3fa280
003fa2bc  88 72 87 e0                                      add r7, r7, r8, lsl #5
003fa2c0  07 00 a0 e1                                      mov r0, r7
003fa2c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003fb4fc, declared_size=116, range_size=116, mode=arm
; class-group: ItemInstance::PowerInfo* std::priv
; alias: _ZNSt4priv7__ucopyIPN12ItemInstance9PowerInfoES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: ItemInstance::PowerInfo* std::priv::__ucopy<ItemInstance::PowerInfo*, ItemInstance::PowerInfo*, int>(ItemInstance::PowerInfo*, ItemInstance::PowerInfo*, ItemInstance::PowerInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003fb4fc  01 10 60 e0                                      rsb r1, r0, r1
003fb500  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fb504  c1 72 a0 e1                                      asr r7, r1, #5
003fb508  00 00 57 e3                                      cmp r7, #0
003fb50c  00 50 a0 e1                                      mov r5, r0
003fb510  02 80 a0 e1                                      mov r8, r2
003fb514  07 60 a0 c1                                      movgt r6, r7
003fb518  02 40 a0 c1                                      movgt r4, r2
003fb51c  01 00 00 ca                                      bgt #0x3fb528
003fb520  10 00 00 ea                                      b #0x3fb568
003fb524  20 50 85 e2                                      add r5, r5, #0x20
003fb528  00 20 95 e5                                      ldr r2, [r5]
003fb52c  08 30 84 e2                                      add r3, r4, #8
003fb530  03 00 a0 e1                                      mov r0, r3
003fb534  00 20 84 e5                                      str r2, [r4]
003fb538  04 20 95 e5                                      ldr r2, [r5, #4]
003fb53c  18 30 84 e5                                      str r3, [r4, #0x18]
003fb540  1c 30 84 e5                                      str r3, [r4, #0x1c]
003fb544  04 20 84 e5                                      str r2, [r4, #4]
003fb548  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
003fb54c  18 20 95 e5                                      ldr r2, [r5, #0x18]
003fb550  64 58 fc eb                                      bl #0x3116e8
003fb554  01 60 56 e2                                      subs r6, r6, #1
003fb558  20 40 84 e2                                      add r4, r4, #0x20
003fb55c  f0 ff ff 1a                                      bne #0x3fb524
003fb560  87 02 88 e0                                      add r0, r8, r7, lsl #5
003fb564  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fb568  02 00 a0 e1                                      mov r0, r2
003fb56c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
