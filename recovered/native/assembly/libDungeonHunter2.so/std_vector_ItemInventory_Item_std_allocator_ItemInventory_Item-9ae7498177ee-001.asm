; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003feb94, declared_size=436, range_size=436, mode=arm
; class-group: std::vector<ItemInventory::Item, std::allocator<ItemInventory::Item> >
; alias: _ZNSt6vectorIN13ItemInventory4ItemESaIS1_EE22_M_insert_overflow_auxEPS1_RKS1_RKSt12__false_typejb.clone.6
; demangled: std::vector<ItemInventory::Item, std::allocator<ItemInventory::Item> >::_M_insert_overflow_aux(ItemInventory::Item*, ItemInventory::Item const&, std::__false_type const&, unsigned int, bool) [clone .clone.6]
; decoder-mode: arm
003feb94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003feb98  00 40 a0 e1                                      mov r4, r0
003feb9c  01 10 90 e8                                      ldm r0, {r0, ip}
003feba0  01 50 a0 e1                                      mov r5, r1
003feba4  55 35 05 e3                                      movw r3, #0x5555
003feba8  0c 00 60 e0                                      rsb r0, r0, ip
003febac  40 01 a0 e1                                      asr r0, r0, #2
003febb0  03 37 83 e1                                      orr r3, r3, r3, lsl #14
003febb4  00 11 80 e0                                      add r1, r0, r0, lsl #2
003febb8  08 d0 4d e2                                      sub sp, sp, #8
003febbc  01 12 81 e0                                      add r1, r1, r1, lsl #4
003febc0  02 60 a0 e1                                      mov r6, r2
003febc4  01 14 81 e0                                      add r1, r1, r1, lsl #8
003febc8  01 18 81 e0                                      add r1, r1, r1, lsl #16
003febcc  81 00 80 e0                                      add r0, r0, r1, lsl #1
003febd0  01 00 50 e3                                      cmp r0, #1
003febd4  00 10 80 20                                      addhs r1, r0, r0
003febd8  01 10 80 32                                      addlo r1, r0, #1
003febdc  03 00 51 e1                                      cmp r1, r3
003febe0  53 00 00 8a                                      bhi #0x3fed34
003febe4  01 00 50 e1                                      cmp r0, r1
003febe8  51 00 00 8a                                      bhi #0x3fed34
003febec  08 20 8d e2                                      add r2, sp, #8
003febf0  04 10 22 e5                                      str r1, [r2, #-4]!
003febf4  08 00 84 e2                                      add r0, r4, #8
003febf8  28 ff ff eb                                      bl #0x3fe8a0
003febfc  00 c0 94 e5                                      ldr ip, [r4]
003fec00  00 70 a0 e1                                      mov r7, r0
003fec04  05 50 6c e0                                      rsb r5, ip, r5
003fec08  45 51 a0 e1                                      asr r5, r5, #2
003fec0c  05 31 85 e0                                      add r3, r5, r5, lsl #2
003fec10  03 32 83 e0                                      add r3, r3, r3, lsl #4
003fec14  03 34 83 e0                                      add r3, r3, r3, lsl #8
003fec18  03 38 83 e0                                      add r3, r3, r3, lsl #16
003fec1c  83 50 85 e0                                      add r5, r5, r3, lsl #1
003fec20  00 00 55 e3                                      cmp r5, #0
003fec24  00 30 a0 d1                                      movle r3, r0
003fec28  10 00 00 da                                      ble #0x3fec70
003fec2c  05 00 a0 e1                                      mov r0, r5
003fec30  00 30 a0 e3                                      mov r3, #0
003fec34  03 20 9c e7                                      ldr r2, [ip, r3]
003fec38  03 10 8c e0                                      add r1, ip, r3
003fec3c  04 10 81 e2                                      add r1, r1, #4
003fec40  03 20 87 e7                                      str r2, [r7, r3]
003fec44  04 80 91 e4                                      ldr r8, [r1], #4
003fec48  03 20 87 e0                                      add r2, r7, r3
003fec4c  04 20 82 e2                                      add r2, r2, #4
003fec50  04 80 82 e4                                      str r8, [r2], #4
003fec54  00 10 91 e5                                      ldr r1, [r1]
003fec58  01 00 50 e2                                      subs r0, r0, #1
003fec5c  0c 30 83 e2                                      add r3, r3, #0xc
003fec60  00 10 82 e5                                      str r1, [r2]
003fec64  f2 ff ff 1a                                      bne #0x3fec34
003fec68  0c 30 a0 e3                                      mov r3, #0xc
003fec6c  93 75 23 e0                                      mla r3, r3, r5, r7
003fec70  06 10 a0 e1                                      mov r1, r6
003fec74  04 00 91 e4                                      ldr r0, [r1], #4
003fec78  03 20 a0 e1                                      mov r2, r3
003fec7c  0c 50 83 e2                                      add r5, r3, #0xc
003fec80  04 00 82 e4                                      str r0, [r2], #4
003fec84  04 00 96 e5                                      ldr r0, [r6, #4]
003fec88  04 00 83 e5                                      str r0, [r3, #4]
003fec8c  04 30 91 e5                                      ldr r3, [r1, #4]
003fec90  04 30 82 e5                                      str r3, [r2, #4]
003fec94  09 00 94 e8                                      ldm r4, {r0, r3}
003fec98  00 00 53 e1                                      cmp r3, r0
003fec9c  0e 00 00 0a                                      beq #0x3fecdc
003feca0  0c 20 43 e2                                      sub r2, r3, #0xc
003feca4  02 20 60 e0                                      rsb r2, r0, r2
003feca8  22 21 a0 e1                                      lsr r2, r2, #2
003fecac  02 11 82 e0                                      add r1, r2, r2, lsl #2
003fecb0  81 12 81 e0                                      add r1, r1, r1, lsl #5
003fecb4  81 10 82 e0                                      add r1, r2, r1, lsl #1
003fecb8  81 12 81 e0                                      add r1, r1, r1, lsl #5
003fecbc  81 c7 a0 e1                                      lsl ip, r1, #0xf
003fecc0  0c 10 61 e0                                      rsb r1, r1, ip
003fecc4  81 20 82 e0                                      add r2, r2, r1, lsl #1
003fecc8  03 21 c2 e3                                      bic r2, r2, #0xc0000000
003feccc  0b 10 e0 e3                                      mvn r1, #0xb
003fecd0  91 02 02 e0                                      mul r2, r1, r2
003fecd4  01 20 82 e0                                      add r2, r2, r1
003fecd8  02 30 83 e0                                      add r3, r3, r2
003fecdc  00 00 53 e3                                      cmp r3, #0
003fece0  08 20 94 e5                                      ldr r2, [r4, #8]
003fece4  0b 00 00 0a                                      beq #0x3fed18
003fece8  02 30 63 e0                                      rsb r3, r3, r2
003fecec  43 31 a0 e1                                      asr r3, r3, #2
003fecf0  03 11 83 e0                                      add r1, r3, r3, lsl #2
003fecf4  01 12 81 e0                                      add r1, r1, r1, lsl #4
003fecf8  01 14 81 e0                                      add r1, r1, r1, lsl #8
003fecfc  01 18 81 e0                                      add r1, r1, r1, lsl #16
003fed00  81 30 83 e0                                      add r3, r3, r1, lsl #1
003fed04  0c 10 a0 e3                                      mov r1, #0xc
003fed08  91 03 01 e0                                      mul r1, r1, r3
003fed0c  80 00 51 e3                                      cmp r1, #0x80
003fed10  0a 00 00 8a                                      bhi #0x3fed40
003fed14  79 28 0c eb                                      bl #0x708f00
003fed18  04 30 9d e5                                      ldr r3, [sp, #4]
003fed1c  0c 20 a0 e3                                      mov r2, #0xc
003fed20  00 70 84 e5                                      str r7, [r4]
003fed24  92 73 27 e0                                      mla r7, r2, r3, r7
003fed28  a0 00 84 e9                                      stmib r4, {r5, r7}
003fed2c  08 d0 8d e2                                      add sp, sp, #8
003fed30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fed34  55 15 05 e3                                      movw r1, #0x5555
003fed38  01 17 81 e1                                      orr r1, r1, r1, lsl #14
003fed3c  aa ff ff ea                                      b #0x3febec
003fed40  be 45 fc eb                                      bl #0x310440
003fed44  f3 ff ff ea                                      b #0x3fed18

; FUNCTION 0x0043f1e0, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<ItemInventory::Item, std::allocator<ItemInventory::Item> >
; alias: _ZNSt6vectorIN13ItemInventory4ItemESaIS1_EED1Ev
; demangled: std::vector<ItemInventory::Item, std::allocator<ItemInventory::Item> >::~vector()
; decoder-mode: arm
0043f1e0  10 40 2d e9                                      push {r4, lr}
0043f1e4  00 40 a0 e1                                      mov r4, r0
0043f1e8  00 00 90 e5                                      ldr r0, [r0]
0043f1ec  00 00 50 e3                                      cmp r0, #0
0043f1f0  0c 00 00 0a                                      beq #0x43f228
0043f1f4  08 30 94 e5                                      ldr r3, [r4, #8]
0043f1f8  03 30 60 e0                                      rsb r3, r0, r3
0043f1fc  43 31 a0 e1                                      asr r3, r3, #2
0043f200  03 11 83 e0                                      add r1, r3, r3, lsl #2
0043f204  01 12 81 e0                                      add r1, r1, r1, lsl #4
0043f208  01 14 81 e0                                      add r1, r1, r1, lsl #8
0043f20c  01 18 81 e0                                      add r1, r1, r1, lsl #16
0043f210  81 30 83 e0                                      add r3, r3, r1, lsl #1
0043f214  0c 10 a0 e3                                      mov r1, #0xc
0043f218  91 03 01 e0                                      mul r1, r1, r3
0043f21c  80 00 51 e3                                      cmp r1, #0x80
0043f220  02 00 00 8a                                      bhi #0x43f230
0043f224  35 27 0b eb                                      bl #0x708f00
0043f228  04 00 a0 e1                                      mov r0, r4
0043f22c  10 80 bd e8                                      pop {r4, pc}
0043f230  82 44 fb eb                                      bl #0x310440
0043f234  04 00 a0 e1                                      mov r0, r4
0043f238  10 80 bd e8                                      pop {r4, pc}
