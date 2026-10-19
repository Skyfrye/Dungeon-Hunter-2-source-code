; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00401104, declared_size=180, range_size=180, mode=arm
; class-group: ItemInventory::Item const& std::priv
; alias: _ZNSt4priv8__medianIN13ItemInventory4ItemE19SortByValueAndClassEERKT_S6_S6_S6_T0_
; demangled: ItemInventory::Item const& std::priv::__median<ItemInventory::Item, SortByValueAndClass>(ItemInventory::Item const&, ItemInventory::Item const&, ItemInventory::Item const&, SortByValueAndClass)
; decoder-mode: arm
00401104  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00401108  0c d0 4d e2                                      sub sp, sp, #0xc
0040110c  08 40 8d e2                                      add r4, sp, #8
00401110  04 30 24 e5                                      str r3, [r4, #-4]!
00401114  00 60 a0 e1                                      mov r6, r0
00401118  01 50 a0 e1                                      mov r5, r1
0040111c  02 70 a0 e1                                      mov r7, r2
00401120  04 00 a0 e1                                      mov r0, r4
00401124  06 10 a0 e1                                      mov r1, r6
00401128  05 20 a0 e1                                      mov r2, r5
0040112c  2d f0 ff eb                                      bl #0x3fd1e8
00401130  00 00 50 e3                                      cmp r0, #0
00401134  08 00 00 0a                                      beq #0x40115c
00401138  04 00 a0 e1                                      mov r0, r4
0040113c  05 10 a0 e1                                      mov r1, r5
00401140  07 20 a0 e1                                      mov r2, r7
00401144  27 f0 ff eb                                      bl #0x3fd1e8
00401148  00 00 50 e3                                      cmp r0, #0
0040114c  0a 00 00 0a                                      beq #0x40117c
00401150  05 00 a0 e1                                      mov r0, r5
00401154  0c d0 8d e2                                      add sp, sp, #0xc
00401158  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0040115c  04 00 a0 e1                                      mov r0, r4
00401160  06 10 a0 e1                                      mov r1, r6
00401164  07 20 a0 e1                                      mov r2, r7
00401168  1e f0 ff eb                                      bl #0x3fd1e8
0040116c  00 00 50 e3                                      cmp r0, #0
00401170  09 00 00 0a                                      beq #0x40119c
00401174  06 50 a0 e1                                      mov r5, r6
00401178  f4 ff ff ea                                      b #0x401150
0040117c  04 00 a0 e1                                      mov r0, r4
00401180  06 10 a0 e1                                      mov r1, r6
00401184  07 20 a0 e1                                      mov r2, r7
00401188  16 f0 ff eb                                      bl #0x3fd1e8
0040118c  00 00 50 e3                                      cmp r0, #0
00401190  f7 ff ff 0a                                      beq #0x401174
00401194  07 50 a0 e1                                      mov r5, r7
00401198  ec ff ff ea                                      b #0x401150
0040119c  04 00 a0 e1                                      mov r0, r4
004011a0  05 10 a0 e1                                      mov r1, r5
004011a4  07 20 a0 e1                                      mov r2, r7
004011a8  0e f0 ff eb                                      bl #0x3fd1e8
004011ac  00 00 50 e3                                      cmp r0, #0
004011b0  e6 ff ff 0a                                      beq #0x401150
004011b4  f6 ff ff ea                                      b #0x401194

; FUNCTION 0x0043ba34, declared_size=184, range_size=184, mode=arm
; class-group: ItemInventory::Item const& std::priv
; alias: _ZNSt4priv8__medianIN13ItemInventory4ItemE18SortByEquipabilityEERKT_S6_S6_S6_T0_
; demangled: ItemInventory::Item const& std::priv::__median<ItemInventory::Item, SortByEquipability>(ItemInventory::Item const&, ItemInventory::Item const&, ItemInventory::Item const&, SortByEquipability)
; decoder-mode: arm
0043ba34  08 d0 4d e2                                      sub sp, sp, #8
0043ba38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0043ba3c  14 40 8d e2                                      add r4, sp, #0x14
0043ba40  08 30 a4 e5                                      str r3, [r4, #8]!
0043ba44  00 60 a0 e1                                      mov r6, r0
0043ba48  01 50 a0 e1                                      mov r5, r1
0043ba4c  02 70 a0 e1                                      mov r7, r2
0043ba50  04 00 a0 e1                                      mov r0, r4
0043ba54  06 10 a0 e1                                      mov r1, r6
0043ba58  05 20 a0 e1                                      mov r2, r5
0043ba5c  db 06 ff eb                                      bl #0x3fd5d0
0043ba60  00 00 50 e3                                      cmp r0, #0
0043ba64  09 00 00 0a                                      beq #0x43ba90
0043ba68  04 00 a0 e1                                      mov r0, r4
0043ba6c  05 10 a0 e1                                      mov r1, r5
0043ba70  07 20 a0 e1                                      mov r2, r7
0043ba74  d5 06 ff eb                                      bl #0x3fd5d0
0043ba78  00 00 50 e3                                      cmp r0, #0
0043ba7c  0b 00 00 0a                                      beq #0x43bab0
0043ba80  05 00 a0 e1                                      mov r0, r5
0043ba84  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0043ba88  08 d0 8d e2                                      add sp, sp, #8
0043ba8c  1e ff 2f e1                                      bx lr
0043ba90  04 00 a0 e1                                      mov r0, r4
0043ba94  06 10 a0 e1                                      mov r1, r6
0043ba98  07 20 a0 e1                                      mov r2, r7
0043ba9c  cb 06 ff eb                                      bl #0x3fd5d0
0043baa0  00 00 50 e3                                      cmp r0, #0
0043baa4  09 00 00 0a                                      beq #0x43bad0
0043baa8  06 50 a0 e1                                      mov r5, r6
0043baac  f3 ff ff ea                                      b #0x43ba80
0043bab0  04 00 a0 e1                                      mov r0, r4
0043bab4  06 10 a0 e1                                      mov r1, r6
0043bab8  07 20 a0 e1                                      mov r2, r7
0043babc  c3 06 ff eb                                      bl #0x3fd5d0
0043bac0  00 00 50 e3                                      cmp r0, #0
0043bac4  f7 ff ff 0a                                      beq #0x43baa8
0043bac8  07 50 a0 e1                                      mov r5, r7
0043bacc  eb ff ff ea                                      b #0x43ba80
0043bad0  04 00 a0 e1                                      mov r0, r4
0043bad4  05 10 a0 e1                                      mov r1, r5
0043bad8  07 20 a0 e1                                      mov r2, r7
0043badc  bb 06 ff eb                                      bl #0x3fd5d0
0043bae0  00 00 50 e3                                      cmp r0, #0
0043bae4  e5 ff ff 0a                                      beq #0x43ba80
0043bae8  f6 ff ff ea                                      b #0x43bac8
