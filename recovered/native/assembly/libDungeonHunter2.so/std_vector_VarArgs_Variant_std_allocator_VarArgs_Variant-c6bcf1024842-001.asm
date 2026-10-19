; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fab18, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<VarArgs::Variant, std::allocator<VarArgs::Variant> >
; alias: _ZNSt6vectorIN7VarArgs7VariantESaIS1_EED1Ev
; demangled: std::vector<VarArgs::Variant, std::allocator<VarArgs::Variant> >::~vector()
; decoder-mode: arm
003fab18  10 40 2d e9                                      push {r4, lr}
003fab1c  00 40 a0 e1                                      mov r4, r0
003fab20  00 00 90 e5                                      ldr r0, [r0]
003fab24  00 00 50 e3                                      cmp r0, #0
003fab28  0c 00 00 0a                                      beq #0x3fab60
003fab2c  08 30 94 e5                                      ldr r3, [r4, #8]
003fab30  03 30 60 e0                                      rsb r3, r0, r3
003fab34  43 31 a0 e1                                      asr r3, r3, #2
003fab38  03 11 83 e0                                      add r1, r3, r3, lsl #2
003fab3c  01 12 81 e0                                      add r1, r1, r1, lsl #4
003fab40  01 14 81 e0                                      add r1, r1, r1, lsl #8
003fab44  01 18 81 e0                                      add r1, r1, r1, lsl #16
003fab48  81 30 83 e0                                      add r3, r3, r1, lsl #1
003fab4c  0c 10 a0 e3                                      mov r1, #0xc
003fab50  91 03 01 e0                                      mul r1, r1, r3
003fab54  80 00 51 e3                                      cmp r1, #0x80
003fab58  02 00 00 8a                                      bhi #0x3fab68
003fab5c  e7 38 0c eb                                      bl #0x708f00
003fab60  04 00 a0 e1                                      mov r0, r4
003fab64  10 80 bd e8                                      pop {r4, pc}
003fab68  34 56 fc eb                                      bl #0x310440
003fab6c  04 00 a0 e1                                      mov r0, r4
003fab70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0043f414, declared_size=436, range_size=436, mode=arm
; class-group: std::vector<VarArgs::Variant, std::allocator<VarArgs::Variant> >
; alias: _ZNSt6vectorIN7VarArgs7VariantESaIS1_EE22_M_insert_overflow_auxEPS1_RKS1_RKSt12__false_typejb.clone.21
; demangled: std::vector<VarArgs::Variant, std::allocator<VarArgs::Variant> >::_M_insert_overflow_aux(VarArgs::Variant*, VarArgs::Variant const&, std::__false_type const&, unsigned int, bool) [clone .clone.21]
; decoder-mode: arm
0043f414  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0043f418  00 40 a0 e1                                      mov r4, r0
0043f41c  01 10 90 e8                                      ldm r0, {r0, ip}
0043f420  01 50 a0 e1                                      mov r5, r1
0043f424  55 35 05 e3                                      movw r3, #0x5555
0043f428  0c 00 60 e0                                      rsb r0, r0, ip
0043f42c  40 01 a0 e1                                      asr r0, r0, #2
0043f430  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0043f434  00 11 80 e0                                      add r1, r0, r0, lsl #2
0043f438  08 d0 4d e2                                      sub sp, sp, #8
0043f43c  01 12 81 e0                                      add r1, r1, r1, lsl #4
0043f440  02 60 a0 e1                                      mov r6, r2
0043f444  01 14 81 e0                                      add r1, r1, r1, lsl #8
0043f448  01 18 81 e0                                      add r1, r1, r1, lsl #16
0043f44c  81 00 80 e0                                      add r0, r0, r1, lsl #1
0043f450  01 00 50 e3                                      cmp r0, #1
0043f454  00 10 80 20                                      addhs r1, r0, r0
0043f458  01 10 80 32                                      addlo r1, r0, #1
0043f45c  03 00 51 e1                                      cmp r1, r3
0043f460  53 00 00 8a                                      bhi #0x43f5b4
0043f464  01 00 50 e1                                      cmp r0, r1
0043f468  51 00 00 8a                                      bhi #0x43f5b4
0043f46c  08 20 8d e2                                      add r2, sp, #8
0043f470  04 10 22 e5                                      str r1, [r2, #-4]!
0043f474  08 00 84 e2                                      add r0, r4, #8
0043f478  f5 ed fe eb                                      bl #0x3fac54
0043f47c  00 c0 94 e5                                      ldr ip, [r4]
0043f480  00 70 a0 e1                                      mov r7, r0
0043f484  05 50 6c e0                                      rsb r5, ip, r5
0043f488  45 51 a0 e1                                      asr r5, r5, #2
0043f48c  05 31 85 e0                                      add r3, r5, r5, lsl #2
0043f490  03 32 83 e0                                      add r3, r3, r3, lsl #4
0043f494  03 34 83 e0                                      add r3, r3, r3, lsl #8
0043f498  03 38 83 e0                                      add r3, r3, r3, lsl #16
0043f49c  83 50 85 e0                                      add r5, r5, r3, lsl #1
0043f4a0  00 00 55 e3                                      cmp r5, #0
0043f4a4  00 30 a0 d1                                      movle r3, r0
0043f4a8  10 00 00 da                                      ble #0x43f4f0
0043f4ac  05 00 a0 e1                                      mov r0, r5
0043f4b0  00 30 a0 e3                                      mov r3, #0
0043f4b4  03 20 9c e7                                      ldr r2, [ip, r3]
0043f4b8  03 10 8c e0                                      add r1, ip, r3
0043f4bc  04 10 81 e2                                      add r1, r1, #4
0043f4c0  03 20 87 e7                                      str r2, [r7, r3]
0043f4c4  04 80 91 e4                                      ldr r8, [r1], #4
0043f4c8  03 20 87 e0                                      add r2, r7, r3
0043f4cc  04 20 82 e2                                      add r2, r2, #4
0043f4d0  04 80 82 e4                                      str r8, [r2], #4
0043f4d4  00 10 91 e5                                      ldr r1, [r1]
0043f4d8  01 00 50 e2                                      subs r0, r0, #1
0043f4dc  0c 30 83 e2                                      add r3, r3, #0xc
0043f4e0  00 10 82 e5                                      str r1, [r2]
0043f4e4  f2 ff ff 1a                                      bne #0x43f4b4
0043f4e8  0c 30 a0 e3                                      mov r3, #0xc
0043f4ec  93 75 23 e0                                      mla r3, r3, r5, r7
0043f4f0  06 10 a0 e1                                      mov r1, r6
0043f4f4  04 00 91 e4                                      ldr r0, [r1], #4
0043f4f8  03 20 a0 e1                                      mov r2, r3
0043f4fc  0c 50 83 e2                                      add r5, r3, #0xc
0043f500  04 00 82 e4                                      str r0, [r2], #4
0043f504  04 00 96 e5                                      ldr r0, [r6, #4]
0043f508  04 00 83 e5                                      str r0, [r3, #4]
0043f50c  04 30 91 e5                                      ldr r3, [r1, #4]
0043f510  04 30 82 e5                                      str r3, [r2, #4]
0043f514  09 00 94 e8                                      ldm r4, {r0, r3}
0043f518  00 00 53 e1                                      cmp r3, r0
0043f51c  0e 00 00 0a                                      beq #0x43f55c
0043f520  0c 20 43 e2                                      sub r2, r3, #0xc
0043f524  02 20 60 e0                                      rsb r2, r0, r2
0043f528  22 21 a0 e1                                      lsr r2, r2, #2
0043f52c  02 11 82 e0                                      add r1, r2, r2, lsl #2
0043f530  81 12 81 e0                                      add r1, r1, r1, lsl #5
0043f534  81 10 82 e0                                      add r1, r2, r1, lsl #1
0043f538  81 12 81 e0                                      add r1, r1, r1, lsl #5
0043f53c  81 c7 a0 e1                                      lsl ip, r1, #0xf
0043f540  0c 10 61 e0                                      rsb r1, r1, ip
0043f544  81 20 82 e0                                      add r2, r2, r1, lsl #1
0043f548  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0043f54c  0b 10 e0 e3                                      mvn r1, #0xb
0043f550  91 02 02 e0                                      mul r2, r1, r2
0043f554  01 20 82 e0                                      add r2, r2, r1
0043f558  02 30 83 e0                                      add r3, r3, r2
0043f55c  00 00 53 e3                                      cmp r3, #0
0043f560  08 20 94 e5                                      ldr r2, [r4, #8]
0043f564  0b 00 00 0a                                      beq #0x43f598
0043f568  02 30 63 e0                                      rsb r3, r3, r2
0043f56c  43 31 a0 e1                                      asr r3, r3, #2
0043f570  03 11 83 e0                                      add r1, r3, r3, lsl #2
0043f574  01 12 81 e0                                      add r1, r1, r1, lsl #4
0043f578  01 14 81 e0                                      add r1, r1, r1, lsl #8
0043f57c  01 18 81 e0                                      add r1, r1, r1, lsl #16
0043f580  81 30 83 e0                                      add r3, r3, r1, lsl #1
0043f584  0c 10 a0 e3                                      mov r1, #0xc
0043f588  91 03 01 e0                                      mul r1, r1, r3
0043f58c  80 00 51 e3                                      cmp r1, #0x80
0043f590  0a 00 00 8a                                      bhi #0x43f5c0
0043f594  59 26 0b eb                                      bl #0x708f00
0043f598  04 30 9d e5                                      ldr r3, [sp, #4]
0043f59c  0c 20 a0 e3                                      mov r2, #0xc
0043f5a0  00 70 84 e5                                      str r7, [r4]
0043f5a4  92 73 27 e0                                      mla r7, r2, r3, r7
0043f5a8  a0 00 84 e9                                      stmib r4, {r5, r7}
0043f5ac  08 d0 8d e2                                      add sp, sp, #8
0043f5b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0043f5b4  55 15 05 e3                                      movw r1, #0x5555
0043f5b8  01 17 81 e1                                      orr r1, r1, r1, lsl #14
0043f5bc  aa ff ff ea                                      b #0x43f46c
0043f5c0  9e 43 fb eb                                      bl #0x310440
0043f5c4  f3 ff ff ea                                      b #0x43f598
