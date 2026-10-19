; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007baef8, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::event_id
; alias: _ZNK7gameswf8event_id17get_function_nameEv
; demangled: gameswf::event_id::get_function_name() const
; decoder-mode: arm
007baef8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007baefc  94 70 9f e5                                      ldr r7, [pc, #0x94]
007baf00  00 90 a0 e1                                      mov sb, r0
007baf04  07 70 8f e0                                      add r7, pc, r7
007baf08  04 50 97 e5                                      ldr r5, [r7, #4]
007baf0c  00 00 55 e3                                      cmp r5, #0
007baf10  05 00 00 0a                                      beq #0x7baf2c
007baf14  80 30 9f e5                                      ldr r3, [pc, #0x80]
007baf18  00 20 d9 e5                                      ldrb r2, [sb]
007baf1c  14 00 a0 e3                                      mov r0, #0x14
007baf20  03 30 9f e7                                      ldr r3, [pc, r3]
007baf24  90 32 20 e0                                      mla r0, r0, r2, r3
007baf28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007baf2c  6c a0 9f e5                                      ldr sl, [pc, #0x6c]
007baf30  07 00 a0 e1                                      mov r0, r7
007baf34  1b 10 a0 e3                                      mov r1, #0x1b
007baf38  0e fe ff eb                                      bl #0x7ba778
007baf3c  0a a0 8f e0                                      add sl, pc, sl
007baf40  04 30 97 e5                                      ldr r3, [r7, #4]
007baf44  07 60 a0 e1                                      mov r6, r7
007baf48  14 80 a0 e3                                      mov r8, #0x14
007baf4c  08 00 00 ea                                      b #0x7baf74
007baf50  00 00 96 e5                                      ldr r0, [r6]
007baf54  05 10 9a e7                                      ldr r1, [sl, r5]
007baf58  04 50 85 e2                                      add r5, r5, #4
007baf5c  98 03 20 e0                                      mla r0, r8, r3, r0
007baf60  c5 62 f1 eb                                      bl #0x413a7c
007baf64  6c 00 55 e3                                      cmp r5, #0x6c
007baf68  04 40 86 e5                                      str r4, [r6, #4]
007baf6c  e8 ff ff 0a                                      beq #0x7baf14
007baf70  04 30 a0 e1                                      mov r3, r4
007baf74  08 20 97 e5                                      ldr r2, [r7, #8]
007baf78  01 40 83 e2                                      add r4, r3, #1
007baf7c  02 00 54 e1                                      cmp r4, r2
007baf80  f2 ff ff da                                      ble #0x7baf50
007baf84  07 00 a0 e1                                      mov r0, r7
007baf88  c4 10 84 e0                                      add r1, r4, r4, asr #1
007baf8c  f9 fd ff eb                                      bl #0x7ba778
007baf90  04 30 97 e5                                      ldr r3, [r7, #4]
007baf94  ed ff ff ea                                      b #0x7baf50
; mapping-symbol data/literal pool
007baf98  bc 3c 27 00 a0 3c 27 00 a4 2d 1e 00              .byte 0xbc, 0x3c, 0x27, 0x00, 0xa0, 0x3c, 0x27, 0x00, 0xa4, 0x2d, 0x1e, 0x00
