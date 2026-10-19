; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004011b8, declared_size=184, range_size=184, mode=arm
; class-group: ItemInventory::Item* std::priv
; alias: _ZNSt4priv21__unguarded_partitionIPN13ItemInventory4ItemES2_19SortByValueAndClassEET_S5_S5_T0_T1_
; demangled: ItemInventory::Item* std::priv::__unguarded_partition<ItemInventory::Item*, ItemInventory::Item, SortByValueAndClass>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item, SortByValueAndClass)
; decoder-mode: arm
004011b8  08 d0 4d e2                                      sub sp, sp, #8
004011bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004011c0  00 50 a0 e1                                      mov r5, r0
004011c4  18 20 8d e5                                      str r2, [sp, #0x18]
004011c8  1c 30 8d e5                                      str r3, [sp, #0x1c]
004011cc  01 40 a0 e1                                      mov r4, r1
004011d0  24 70 8d e2                                      add r7, sp, #0x24
004011d4  18 60 8d e2                                      add r6, sp, #0x18
004011d8  05 10 a0 e1                                      mov r1, r5
004011dc  07 00 a0 e1                                      mov r0, r7
004011e0  06 20 a0 e1                                      mov r2, r6
004011e4  ff ef ff eb                                      bl #0x3fd1e8
004011e8  00 00 50 e3                                      cmp r0, #0
004011ec  0c 50 85 12                                      addne r5, r5, #0xc
004011f0  f8 ff ff 1a                                      bne #0x4011d8
004011f4  0c 40 44 e2                                      sub r4, r4, #0xc
004011f8  04 20 a0 e1                                      mov r2, r4
004011fc  07 00 a0 e1                                      mov r0, r7
00401200  06 10 a0 e1                                      mov r1, r6
00401204  f7 ef ff eb                                      bl #0x3fd1e8
00401208  00 00 50 e3                                      cmp r0, #0
0040120c  f8 ff ff 1a                                      bne #0x4011f4
00401210  04 00 55 e1                                      cmp r5, r4
00401214  11 00 00 2a                                      bhs #0x401260
00401218  04 20 a0 e1                                      mov r2, r4
0040121c  04 80 92 e4                                      ldr r8, [r2], #4
00401220  05 30 a0 e1                                      mov r3, r5
00401224  05 c0 d5 e5                                      ldrb ip, [r5, #5]
00401228  04 00 d5 e5                                      ldrb r0, [r5, #4]
0040122c  08 e0 95 e5                                      ldr lr, [r5, #8]
00401230  00 10 95 e5                                      ldr r1, [r5]
00401234  04 80 83 e4                                      str r8, [r3], #4
00401238  04 80 94 e5                                      ldr r8, [r4, #4]
0040123c  04 80 85 e5                                      str r8, [r5, #4]
00401240  04 20 92 e5                                      ldr r2, [r2, #4]
00401244  0c 50 85 e2                                      add r5, r5, #0xc
00401248  04 20 83 e5                                      str r2, [r3, #4]
0040124c  08 e0 84 e5                                      str lr, [r4, #8]
00401250  05 c0 c4 e5                                      strb ip, [r4, #5]
00401254  04 00 c4 e5                                      strb r0, [r4, #4]
00401258  00 10 84 e5                                      str r1, [r4]
0040125c  dd ff ff ea                                      b #0x4011d8
00401260  05 00 a0 e1                                      mov r0, r5
00401264  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00401268  08 d0 8d e2                                      add sp, sp, #8
0040126c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0043baec, declared_size=184, range_size=184, mode=arm
; class-group: ItemInventory::Item* std::priv
; alias: _ZNSt4priv21__unguarded_partitionIPN13ItemInventory4ItemES2_18SortByEquipabilityEET_S5_S5_T0_T1_
; demangled: ItemInventory::Item* std::priv::__unguarded_partition<ItemInventory::Item*, ItemInventory::Item, SortByEquipability>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item, SortByEquipability)
; decoder-mode: arm
0043baec  08 d0 4d e2                                      sub sp, sp, #8
0043baf0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0043baf4  00 50 a0 e1                                      mov r5, r0
0043baf8  18 20 8d e5                                      str r2, [sp, #0x18]
0043bafc  1c 30 8d e5                                      str r3, [sp, #0x1c]
0043bb00  01 40 a0 e1                                      mov r4, r1
0043bb04  24 70 8d e2                                      add r7, sp, #0x24
0043bb08  18 60 8d e2                                      add r6, sp, #0x18
0043bb0c  05 10 a0 e1                                      mov r1, r5
0043bb10  07 00 a0 e1                                      mov r0, r7
0043bb14  06 20 a0 e1                                      mov r2, r6
0043bb18  ac 06 ff eb                                      bl #0x3fd5d0
0043bb1c  00 00 50 e3                                      cmp r0, #0
0043bb20  0c 50 85 12                                      addne r5, r5, #0xc
0043bb24  f8 ff ff 1a                                      bne #0x43bb0c
0043bb28  0c 40 44 e2                                      sub r4, r4, #0xc
0043bb2c  04 20 a0 e1                                      mov r2, r4
0043bb30  07 00 a0 e1                                      mov r0, r7
0043bb34  06 10 a0 e1                                      mov r1, r6
0043bb38  a4 06 ff eb                                      bl #0x3fd5d0
0043bb3c  00 00 50 e3                                      cmp r0, #0
0043bb40  f8 ff ff 1a                                      bne #0x43bb28
0043bb44  04 00 55 e1                                      cmp r5, r4
0043bb48  11 00 00 2a                                      bhs #0x43bb94
0043bb4c  04 20 a0 e1                                      mov r2, r4
0043bb50  04 80 92 e4                                      ldr r8, [r2], #4
0043bb54  05 30 a0 e1                                      mov r3, r5
0043bb58  05 c0 d5 e5                                      ldrb ip, [r5, #5]
0043bb5c  04 00 d5 e5                                      ldrb r0, [r5, #4]
0043bb60  08 e0 95 e5                                      ldr lr, [r5, #8]
0043bb64  00 10 95 e5                                      ldr r1, [r5]
0043bb68  04 80 83 e4                                      str r8, [r3], #4
0043bb6c  04 80 94 e5                                      ldr r8, [r4, #4]
0043bb70  04 80 85 e5                                      str r8, [r5, #4]
0043bb74  04 20 92 e5                                      ldr r2, [r2, #4]
0043bb78  0c 50 85 e2                                      add r5, r5, #0xc
0043bb7c  04 20 83 e5                                      str r2, [r3, #4]
0043bb80  08 e0 84 e5                                      str lr, [r4, #8]
0043bb84  05 c0 c4 e5                                      strb ip, [r4, #5]
0043bb88  04 00 c4 e5                                      strb r0, [r4, #4]
0043bb8c  00 10 84 e5                                      str r1, [r4]
0043bb90  dd ff ff ea                                      b #0x43bb0c
0043bb94  05 00 a0 e1                                      mov r0, r5
0043bb98  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0043bb9c  08 d0 8d e2                                      add sp, sp, #8
0043bba0  1e ff 2f e1                                      bx lr
