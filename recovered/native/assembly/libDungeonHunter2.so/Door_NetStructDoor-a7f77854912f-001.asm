; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e80d4, declared_size=416, range_size=416, mode=arm
; class-group: Door::NetStructDoor
; alias: _ZN4Door13NetStructDoorC1Ev
; demangled: Door::NetStructDoor::NetStructDoor()
; decoder-mode: arm
003e80d4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e80d8  84 71 9f e5                                      ldr r7, [pc, #0x184]
003e80dc  00 40 a0 e1                                      mov r4, r0
003e80e0  03 ae 10 eb                                      bl #0x8138f4
003e80e4  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
003e80e8  7c 51 9f e5                                      ldr r5, [pc, #0x17c]
003e80ec  07 70 8f e0                                      add r7, pc, r7
003e80f0  03 30 97 e7                                      ldr r3, [r7, r3]
003e80f4  4d 21 d4 e5                                      ldrb r2, [r4, #0x14d]
003e80f8  05 00 97 e7                                      ldr r0, [r7, r5]
003e80fc  08 30 83 e2                                      add r3, r3, #8
003e8100  00 90 a0 e3                                      mov sb, #0
003e8104  00 80 a0 e3                                      mov r8, #0
003e8108  4e cf a0 e3                                      mov ip, #0x138
003e810c  fc 80 84 e1                                      strd r8, sb, [r4, ip]
003e8110  00 00 52 e3                                      cmp r2, #0
003e8114  00 10 e0 e3                                      mvn r1, #0
003e8118  00 20 a0 e3                                      mov r2, #0
003e811c  08 00 80 e2                                      add r0, r0, #8
003e8120  00 30 84 e5                                      str r3, [r4]
003e8124  01 30 a0 e3                                      mov r3, #1
003e8128  34 31 84 e5                                      str r3, [r4, #0x134]
003e812c  44 11 84 e5                                      str r1, [r4, #0x144]
003e8130  30 01 84 e5                                      str r0, [r4, #0x130]
003e8134  40 11 84 e5                                      str r1, [r4, #0x140]
003e8138  48 21 84 e5                                      str r2, [r4, #0x148]
003e813c  4c 21 c4 e5                                      strb r2, [r4, #0x14c]
003e8140  13 9e 84 02                                      addeq sb, r4, #0x130
003e8144  03 00 00 0a                                      beq #0x3e8158
003e8148  13 9e 84 e2                                      add sb, r4, #0x130
003e814c  4d 21 c4 e5                                      strb r2, [r4, #0x14d]
003e8150  09 00 a0 e1                                      mov r0, sb
003e8154  8a b3 10 eb                                      bl #0x814f84
003e8158  10 81 9f e5                                      ldr r8, [pc, #0x110]
003e815c  6d 31 d4 e5                                      ldrb r3, [r4, #0x16d]
003e8160  05 10 97 e7                                      ldr r1, [r7, r5]
003e8164  08 00 97 e7                                      ldr r0, [r7, r8]
003e8168  56 cf a0 e3                                      mov ip, #0x158
003e816c  00 a0 a0 e3                                      mov sl, #0
003e8170  08 00 80 e2                                      add r0, r0, #8
003e8174  00 b0 a0 e3                                      mov fp, #0
003e8178  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003e817c  00 00 53 e3                                      cmp r3, #0
003e8180  00 20 e0 e3                                      mvn r2, #0
003e8184  00 30 a0 e3                                      mov r3, #0
003e8188  08 10 81 e2                                      add r1, r1, #8
003e818c  30 01 84 e5                                      str r0, [r4, #0x130]
003e8190  01 00 a0 e3                                      mov r0, #1
003e8194  54 01 84 e5                                      str r0, [r4, #0x154]
003e8198  64 21 84 e5                                      str r2, [r4, #0x164]
003e819c  50 11 84 e5                                      str r1, [r4, #0x150]
003e81a0  60 21 84 e5                                      str r2, [r4, #0x160]
003e81a4  68 31 84 e5                                      str r3, [r4, #0x168]
003e81a8  6c 31 c4 e5                                      strb r3, [r4, #0x16c]
003e81ac  15 6e 84 02                                      addeq r6, r4, #0x150
003e81b0  03 00 00 0a                                      beq #0x3e81c4
003e81b4  15 6e 84 e2                                      add r6, r4, #0x150
003e81b8  6d 31 c4 e5                                      strb r3, [r4, #0x16d]
003e81bc  06 00 a0 e1                                      mov r0, r6
003e81c0  6f b3 10 eb                                      bl #0x814f84
003e81c4  08 00 97 e7                                      ldr r0, [r7, r8]
003e81c8  8d 31 d4 e5                                      ldrb r3, [r4, #0x18d]
003e81cc  05 10 97 e7                                      ldr r1, [r7, r5]
003e81d0  08 00 80 e2                                      add r0, r0, #8
003e81d4  5e cf a0 e3                                      mov ip, #0x178
003e81d8  00 a0 a0 e3                                      mov sl, #0
003e81dc  00 b0 a0 e3                                      mov fp, #0
003e81e0  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003e81e4  00 00 53 e3                                      cmp r3, #0
003e81e8  00 20 e0 e3                                      mvn r2, #0
003e81ec  00 30 a0 e3                                      mov r3, #0
003e81f0  08 10 81 e2                                      add r1, r1, #8
003e81f4  50 01 84 e5                                      str r0, [r4, #0x150]
003e81f8  01 00 a0 e3                                      mov r0, #1
003e81fc  74 01 84 e5                                      str r0, [r4, #0x174]
003e8200  84 21 84 e5                                      str r2, [r4, #0x184]
003e8204  70 11 84 e5                                      str r1, [r4, #0x170]
003e8208  80 21 84 e5                                      str r2, [r4, #0x180]
003e820c  88 31 84 e5                                      str r3, [r4, #0x188]
003e8210  8c 31 c4 e5                                      strb r3, [r4, #0x18c]
003e8214  17 5e 84 02                                      addeq r5, r4, #0x170
003e8218  03 00 00 0a                                      beq #0x3e822c
003e821c  17 5e 84 e2                                      add r5, r4, #0x170
003e8220  8d 31 c4 e5                                      strb r3, [r4, #0x18d]
003e8224  05 00 a0 e1                                      mov r0, r5
003e8228  55 b3 10 eb                                      bl #0x814f84
003e822c  08 30 97 e7                                      ldr r3, [r7, r8]
003e8230  09 10 a0 e1                                      mov r1, sb
003e8234  04 00 a0 e1                                      mov r0, r4
003e8238  08 30 83 e2                                      add r3, r3, #8
003e823c  70 31 84 e5                                      str r3, [r4, #0x170]
003e8240  01 ac 10 eb                                      bl #0x81324c
003e8244  04 00 a0 e1                                      mov r0, r4
003e8248  06 10 a0 e1                                      mov r1, r6
003e824c  fe ab 10 eb                                      bl #0x81324c
003e8250  04 00 a0 e1                                      mov r0, r4
003e8254  05 10 a0 e1                                      mov r1, r5
003e8258  fb ab 10 eb                                      bl #0x81324c
003e825c  04 00 a0 e1                                      mov r0, r4
003e8260  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003e8264  a4 c9 5a 00 20 20 00 00 18 30 00 00 c8 0a 00 00  .byte 0xa4, 0xc9, 0x5a, 0x00, 0x20, 0x20, 0x00, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00

; FUNCTION 0x003e83d4, declared_size=124, range_size=124, mode=arm
; class-group: Door::NetStructDoor
; alias: _ZN4Door13NetStructDoorD1Ev
; demangled: Door::NetStructDoor::~NetStructDoor()
; decoder-mode: arm
003e83d4  70 40 2d e9                                      push {r4, r5, r6, lr}
003e83d8  64 30 9f e5                                      ldr r3, [pc, #0x64]
003e83dc  64 20 9f e5                                      ldr r2, [pc, #0x64]
003e83e0  64 10 9f e5                                      ldr r1, [pc, #0x64]
003e83e4  03 30 8f e0                                      add r3, pc, r3
003e83e8  00 40 a0 e1                                      mov r4, r0
003e83ec  01 10 93 e7                                      ldr r1, [r3, r1]
003e83f0  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
003e83f4  02 20 93 e7                                      ldr r2, [r3, r2]
003e83f8  08 10 81 e2                                      add r1, r1, #8
003e83fc  00 00 50 e3                                      cmp r0, #0
003e8400  08 20 82 e2                                      add r2, r2, #8
003e8404  30 21 84 e5                                      str r2, [r4, #0x130]
003e8408  00 10 84 e5                                      str r1, [r4]
003e840c  70 21 84 e5                                      str r2, [r4, #0x170]
003e8410  50 21 84 e5                                      str r2, [r4, #0x150]
003e8414  08 00 00 0a                                      beq #0x3e843c
003e8418  43 5f 84 e2                                      add r5, r4, #0x10c
003e841c  05 00 a0 e1                                      mov r0, r5
003e8420  10 11 94 e5                                      ldr r1, [r4, #0x110]
003e8424  e9 22 fe eb                                      bl #0x370fd0
003e8428  00 30 a0 e3                                      mov r3, #0
003e842c  18 51 84 e5                                      str r5, [r4, #0x118]
003e8430  1c 31 84 e5                                      str r3, [r4, #0x11c]
003e8434  14 51 84 e5                                      str r5, [r4, #0x114]
003e8438  10 31 84 e5                                      str r3, [r4, #0x110]
003e843c  04 00 a0 e1                                      mov r0, r4
003e8440  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e8444  ac c6 5a 00 a8 10 00 00 c4 43 00 00              .byte 0xac, 0xc6, 0x5a, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x003e8798, declared_size=132, range_size=132, mode=arm
; class-group: Door::NetStructDoor
; alias: _ZN4Door13NetStructDoorD0Ev
; demangled: Door::NetStructDoor::~NetStructDoor()
; decoder-mode: arm
003e8798  70 40 2d e9                                      push {r4, r5, r6, lr}
003e879c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003e87a0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003e87a4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003e87a8  03 30 8f e0                                      add r3, pc, r3
003e87ac  00 40 a0 e1                                      mov r4, r0
003e87b0  01 10 93 e7                                      ldr r1, [r3, r1]
003e87b4  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
003e87b8  02 20 93 e7                                      ldr r2, [r3, r2]
003e87bc  08 10 81 e2                                      add r1, r1, #8
003e87c0  00 00 50 e3                                      cmp r0, #0
003e87c4  08 20 82 e2                                      add r2, r2, #8
003e87c8  30 21 84 e5                                      str r2, [r4, #0x130]
003e87cc  00 10 84 e5                                      str r1, [r4]
003e87d0  70 21 84 e5                                      str r2, [r4, #0x170]
003e87d4  50 21 84 e5                                      str r2, [r4, #0x150]
003e87d8  08 00 00 0a                                      beq #0x3e8800
003e87dc  43 5f 84 e2                                      add r5, r4, #0x10c
003e87e0  05 00 a0 e1                                      mov r0, r5
003e87e4  10 11 94 e5                                      ldr r1, [r4, #0x110]
003e87e8  f8 21 fe eb                                      bl #0x370fd0
003e87ec  00 30 a0 e3                                      mov r3, #0
003e87f0  18 51 84 e5                                      str r5, [r4, #0x118]
003e87f4  1c 31 84 e5                                      str r3, [r4, #0x11c]
003e87f8  14 51 84 e5                                      str r5, [r4, #0x114]
003e87fc  10 31 84 e5                                      str r3, [r4, #0x110]
003e8800  04 00 a0 e1                                      mov r0, r4
003e8804  0d 9f fc eb                                      bl #0x310440
003e8808  04 00 a0 e1                                      mov r0, r4
003e880c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e8810  e8 c2 5a 00 a8 10 00 00 c4 43 00 00              .byte 0xe8, 0xc2, 0x5a, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00
