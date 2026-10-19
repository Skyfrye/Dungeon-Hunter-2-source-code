; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083f6e4, declared_size=112, range_size=112, mode=arm
; class-group: item
; alias: _ZN4itemD1Ev
; demangled: item::~item()
; decoder-mode: arm
0083f6e4  10 40 2d e9                                      push {r4, lr}
0083f6e8  00 40 a0 e1                                      mov r4, r0
0083f6ec  42 0f 80 e2                                      add r0, r0, #0x108
0083f6f0  d7 62 eb eb                                      bl #0x318254
0083f6f4  f0 00 84 e2                                      add r0, r4, #0xf0
0083f6f8  d5 62 eb eb                                      bl #0x318254
0083f6fc  d8 00 84 e2                                      add r0, r4, #0xd8
0083f700  d3 62 eb eb                                      bl #0x318254
0083f704  c0 00 84 e2                                      add r0, r4, #0xc0
0083f708  d1 62 eb eb                                      bl #0x318254
0083f70c  a8 00 84 e2                                      add r0, r4, #0xa8
0083f710  cf 62 eb eb                                      bl #0x318254
0083f714  90 00 84 e2                                      add r0, r4, #0x90
0083f718  cd 62 eb eb                                      bl #0x318254
0083f71c  78 00 84 e2                                      add r0, r4, #0x78
0083f720  cb 62 eb eb                                      bl #0x318254
0083f724  60 00 84 e2                                      add r0, r4, #0x60
0083f728  c9 62 eb eb                                      bl #0x318254
0083f72c  48 00 84 e2                                      add r0, r4, #0x48
0083f730  c7 62 eb eb                                      bl #0x318254
0083f734  30 00 84 e2                                      add r0, r4, #0x30
0083f738  c5 62 eb eb                                      bl #0x318254
0083f73c  18 00 84 e2                                      add r0, r4, #0x18
0083f740  c3 62 eb eb                                      bl #0x318254
0083f744  04 00 a0 e1                                      mov r0, r4
0083f748  c1 62 eb eb                                      bl #0x318254
0083f74c  04 00 a0 e1                                      mov r0, r4
0083f750  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0084246c, declared_size=4, range_size=4, mode=arm
; class-group: item
; alias: _ZNK4item5writeEPN4slim7XmlNodeE
; demangled: item::write(slim::XmlNode*) const
; decoder-mode: arm
0084246c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00842608, declared_size=348, range_size=348, mode=arm
; class-group: item
; alias: _ZN4itemaSERKS_
; demangled: item::operator=(item const&)
; decoder-mode: arm
00842608  01 00 50 e1                                      cmp r0, r1
0084260c  70 40 2d e9                                      push {r4, r5, r6, lr}
00842610  01 40 a0 e1                                      mov r4, r1
00842614  00 50 a0 e1                                      mov r5, r0
00842618  02 00 00 0a                                      beq #0x842628
0084261c  14 10 91 e5                                      ldr r1, [r1, #0x14]
00842620  10 20 94 e5                                      ldr r2, [r4, #0x10]
00842624  ed 38 eb eb                                      bl #0x3109e0
00842628  18 00 85 e2                                      add r0, r5, #0x18
0084262c  18 30 84 e2                                      add r3, r4, #0x18
00842630  03 00 50 e1                                      cmp r0, r3
00842634  02 00 00 0a                                      beq #0x842644
00842638  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0084263c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00842640  e6 38 eb eb                                      bl #0x3109e0
00842644  30 00 85 e2                                      add r0, r5, #0x30
00842648  30 30 84 e2                                      add r3, r4, #0x30
0084264c  03 00 50 e1                                      cmp r0, r3
00842650  02 00 00 0a                                      beq #0x842660
00842654  44 10 94 e5                                      ldr r1, [r4, #0x44]
00842658  40 20 94 e5                                      ldr r2, [r4, #0x40]
0084265c  df 38 eb eb                                      bl #0x3109e0
00842660  48 00 85 e2                                      add r0, r5, #0x48
00842664  48 30 84 e2                                      add r3, r4, #0x48
00842668  03 00 50 e1                                      cmp r0, r3
0084266c  02 00 00 0a                                      beq #0x84267c
00842670  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00842674  58 20 94 e5                                      ldr r2, [r4, #0x58]
00842678  d8 38 eb eb                                      bl #0x3109e0
0084267c  60 00 85 e2                                      add r0, r5, #0x60
00842680  60 30 84 e2                                      add r3, r4, #0x60
00842684  03 00 50 e1                                      cmp r0, r3
00842688  02 00 00 0a                                      beq #0x842698
0084268c  74 10 94 e5                                      ldr r1, [r4, #0x74]
00842690  70 20 94 e5                                      ldr r2, [r4, #0x70]
00842694  d1 38 eb eb                                      bl #0x3109e0
00842698  78 00 85 e2                                      add r0, r5, #0x78
0084269c  78 30 84 e2                                      add r3, r4, #0x78
008426a0  03 00 50 e1                                      cmp r0, r3
008426a4  02 00 00 0a                                      beq #0x8426b4
008426a8  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
008426ac  88 20 94 e5                                      ldr r2, [r4, #0x88]
008426b0  ca 38 eb eb                                      bl #0x3109e0
008426b4  90 00 85 e2                                      add r0, r5, #0x90
008426b8  90 30 84 e2                                      add r3, r4, #0x90
008426bc  03 00 50 e1                                      cmp r0, r3
008426c0  02 00 00 0a                                      beq #0x8426d0
008426c4  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
008426c8  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
008426cc  c3 38 eb eb                                      bl #0x3109e0
008426d0  a8 00 85 e2                                      add r0, r5, #0xa8
008426d4  a8 30 84 e2                                      add r3, r4, #0xa8
008426d8  03 00 50 e1                                      cmp r0, r3
008426dc  02 00 00 0a                                      beq #0x8426ec
008426e0  bc 10 94 e5                                      ldr r1, [r4, #0xbc]
008426e4  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
008426e8  bc 38 eb eb                                      bl #0x3109e0
008426ec  c0 00 85 e2                                      add r0, r5, #0xc0
008426f0  c0 30 84 e2                                      add r3, r4, #0xc0
008426f4  03 00 50 e1                                      cmp r0, r3
008426f8  02 00 00 0a                                      beq #0x842708
008426fc  d4 10 94 e5                                      ldr r1, [r4, #0xd4]
00842700  d0 20 94 e5                                      ldr r2, [r4, #0xd0]
00842704  b5 38 eb eb                                      bl #0x3109e0
00842708  d8 00 85 e2                                      add r0, r5, #0xd8
0084270c  d8 30 84 e2                                      add r3, r4, #0xd8
00842710  03 00 50 e1                                      cmp r0, r3
00842714  02 00 00 0a                                      beq #0x842724
00842718  ec 10 94 e5                                      ldr r1, [r4, #0xec]
0084271c  e8 20 94 e5                                      ldr r2, [r4, #0xe8]
00842720  ae 38 eb eb                                      bl #0x3109e0
00842724  f0 00 85 e2                                      add r0, r5, #0xf0
00842728  f0 30 84 e2                                      add r3, r4, #0xf0
0084272c  03 00 50 e1                                      cmp r0, r3
00842730  02 00 00 0a                                      beq #0x842740
00842734  04 11 94 e5                                      ldr r1, [r4, #0x104]
00842738  00 21 94 e5                                      ldr r2, [r4, #0x100]
0084273c  a7 38 eb eb                                      bl #0x3109e0
00842740  42 0f 85 e2                                      add r0, r5, #0x108
00842744  42 3f 84 e2                                      add r3, r4, #0x108
00842748  03 00 50 e1                                      cmp r0, r3
0084274c  02 00 00 0a                                      beq #0x84275c
00842750  18 21 94 e5                                      ldr r2, [r4, #0x118]
00842754  1c 11 94 e5                                      ldr r1, [r4, #0x11c]
00842758  a0 38 eb eb                                      bl #0x3109e0
0084275c  05 00 a0 e1                                      mov r0, r5
00842760  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00842a88, declared_size=744, range_size=744, mode=arm
; class-group: item
; alias: _ZN4item4readEPKN4slim7XmlNodeE
; demangled: item::read(slim::XmlNode const*)
; decoder-mode: arm
00842a88  70 40 2d e9                                      push {r4, r5, r6, lr}
00842a8c  00 40 51 e2                                      subs r4, r1, #0
00842a90  00 50 a0 e1                                      mov r5, r0
00842a94  9d 00 00 0a                                      beq #0x842d10
00842a98  94 12 9f e5                                      ldr r1, [pc, #0x294]
00842a9c  04 00 a0 e1                                      mov r0, r4
00842aa0  01 10 8f e0                                      add r1, pc, r1
00842aa4  5f 07 00 eb                                      bl #0x844828
00842aa8  00 00 50 e3                                      cmp r0, #0
00842aac  06 00 00 0a                                      beq #0x842acc
00842ab0  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842ab4  06 00 a0 e1                                      mov r0, r6
00842ab8  e5 2c eb eb                                      bl #0x30de54
00842abc  06 10 a0 e1                                      mov r1, r6
00842ac0  00 20 86 e0                                      add r2, r6, r0
00842ac4  05 00 a0 e1                                      mov r0, r5
00842ac8  c4 37 eb eb                                      bl #0x3109e0
00842acc  64 12 9f e5                                      ldr r1, [pc, #0x264]
00842ad0  04 00 a0 e1                                      mov r0, r4
00842ad4  01 10 8f e0                                      add r1, pc, r1
00842ad8  52 07 00 eb                                      bl #0x844828
00842adc  00 00 50 e3                                      cmp r0, #0
00842ae0  06 00 00 0a                                      beq #0x842b00
00842ae4  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842ae8  06 00 a0 e1                                      mov r0, r6
00842aec  d8 2c eb eb                                      bl #0x30de54
00842af0  06 10 a0 e1                                      mov r1, r6
00842af4  00 20 86 e0                                      add r2, r6, r0
00842af8  18 00 85 e2                                      add r0, r5, #0x18
00842afc  b7 37 eb eb                                      bl #0x3109e0
00842b00  34 12 9f e5                                      ldr r1, [pc, #0x234]
00842b04  04 00 a0 e1                                      mov r0, r4
00842b08  01 10 8f e0                                      add r1, pc, r1
00842b0c  45 07 00 eb                                      bl #0x844828
00842b10  00 00 50 e3                                      cmp r0, #0
00842b14  06 00 00 0a                                      beq #0x842b34
00842b18  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842b1c  06 00 a0 e1                                      mov r0, r6
00842b20  cb 2c eb eb                                      bl #0x30de54
00842b24  06 10 a0 e1                                      mov r1, r6
00842b28  00 20 86 e0                                      add r2, r6, r0
00842b2c  30 00 85 e2                                      add r0, r5, #0x30
00842b30  aa 37 eb eb                                      bl #0x3109e0
00842b34  04 12 9f e5                                      ldr r1, [pc, #0x204]
00842b38  04 00 a0 e1                                      mov r0, r4
00842b3c  01 10 8f e0                                      add r1, pc, r1
00842b40  38 07 00 eb                                      bl #0x844828
00842b44  00 00 50 e3                                      cmp r0, #0
00842b48  06 00 00 0a                                      beq #0x842b68
00842b4c  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842b50  06 00 a0 e1                                      mov r0, r6
00842b54  be 2c eb eb                                      bl #0x30de54
00842b58  06 10 a0 e1                                      mov r1, r6
00842b5c  00 20 86 e0                                      add r2, r6, r0
00842b60  48 00 85 e2                                      add r0, r5, #0x48
00842b64  9d 37 eb eb                                      bl #0x3109e0
00842b68  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
00842b6c  04 00 a0 e1                                      mov r0, r4
00842b70  01 10 8f e0                                      add r1, pc, r1
00842b74  2b 07 00 eb                                      bl #0x844828
00842b78  00 00 50 e3                                      cmp r0, #0
00842b7c  06 00 00 0a                                      beq #0x842b9c
00842b80  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842b84  06 00 a0 e1                                      mov r0, r6
00842b88  b1 2c eb eb                                      bl #0x30de54
00842b8c  06 10 a0 e1                                      mov r1, r6
00842b90  00 20 86 e0                                      add r2, r6, r0
00842b94  60 00 85 e2                                      add r0, r5, #0x60
00842b98  90 37 eb eb                                      bl #0x3109e0
00842b9c  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
00842ba0  04 00 a0 e1                                      mov r0, r4
00842ba4  01 10 8f e0                                      add r1, pc, r1
00842ba8  1e 07 00 eb                                      bl #0x844828
00842bac  00 00 50 e3                                      cmp r0, #0
00842bb0  06 00 00 0a                                      beq #0x842bd0
00842bb4  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842bb8  06 00 a0 e1                                      mov r0, r6
00842bbc  a4 2c eb eb                                      bl #0x30de54
00842bc0  06 10 a0 e1                                      mov r1, r6
00842bc4  00 20 86 e0                                      add r2, r6, r0
00842bc8  78 00 85 e2                                      add r0, r5, #0x78
00842bcc  83 37 eb eb                                      bl #0x3109e0
00842bd0  74 11 9f e5                                      ldr r1, [pc, #0x174]
00842bd4  04 00 a0 e1                                      mov r0, r4
00842bd8  01 10 8f e0                                      add r1, pc, r1
00842bdc  11 07 00 eb                                      bl #0x844828
00842be0  00 00 50 e3                                      cmp r0, #0
00842be4  06 00 00 0a                                      beq #0x842c04
00842be8  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842bec  06 00 a0 e1                                      mov r0, r6
00842bf0  97 2c eb eb                                      bl #0x30de54
00842bf4  06 10 a0 e1                                      mov r1, r6
00842bf8  00 20 86 e0                                      add r2, r6, r0
00842bfc  90 00 85 e2                                      add r0, r5, #0x90
00842c00  76 37 eb eb                                      bl #0x3109e0
00842c04  44 11 9f e5                                      ldr r1, [pc, #0x144]
00842c08  04 00 a0 e1                                      mov r0, r4
00842c0c  01 10 8f e0                                      add r1, pc, r1
00842c10  04 07 00 eb                                      bl #0x844828
00842c14  00 00 50 e3                                      cmp r0, #0
00842c18  06 00 00 0a                                      beq #0x842c38
00842c1c  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842c20  06 00 a0 e1                                      mov r0, r6
00842c24  8a 2c eb eb                                      bl #0x30de54
00842c28  06 10 a0 e1                                      mov r1, r6
00842c2c  00 20 86 e0                                      add r2, r6, r0
00842c30  a8 00 85 e2                                      add r0, r5, #0xa8
00842c34  69 37 eb eb                                      bl #0x3109e0
00842c38  14 11 9f e5                                      ldr r1, [pc, #0x114]
00842c3c  04 00 a0 e1                                      mov r0, r4
00842c40  01 10 8f e0                                      add r1, pc, r1
00842c44  f7 06 00 eb                                      bl #0x844828
00842c48  00 00 50 e3                                      cmp r0, #0
00842c4c  06 00 00 0a                                      beq #0x842c6c
00842c50  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842c54  06 00 a0 e1                                      mov r0, r6
00842c58  7d 2c eb eb                                      bl #0x30de54
00842c5c  06 10 a0 e1                                      mov r1, r6
00842c60  00 20 86 e0                                      add r2, r6, r0
00842c64  c0 00 85 e2                                      add r0, r5, #0xc0
00842c68  5c 37 eb eb                                      bl #0x3109e0
00842c6c  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00842c70  04 00 a0 e1                                      mov r0, r4
00842c74  01 10 8f e0                                      add r1, pc, r1
00842c78  ea 06 00 eb                                      bl #0x844828
00842c7c  00 00 50 e3                                      cmp r0, #0
00842c80  06 00 00 0a                                      beq #0x842ca0
00842c84  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842c88  06 00 a0 e1                                      mov r0, r6
00842c8c  70 2c eb eb                                      bl #0x30de54
00842c90  06 10 a0 e1                                      mov r1, r6
00842c94  00 20 86 e0                                      add r2, r6, r0
00842c98  d8 00 85 e2                                      add r0, r5, #0xd8
00842c9c  4f 37 eb eb                                      bl #0x3109e0
00842ca0  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
00842ca4  04 00 a0 e1                                      mov r0, r4
00842ca8  01 10 8f e0                                      add r1, pc, r1
00842cac  dd 06 00 eb                                      bl #0x844828
00842cb0  00 00 50 e3                                      cmp r0, #0
00842cb4  06 00 00 0a                                      beq #0x842cd4
00842cb8  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00842cbc  06 00 a0 e1                                      mov r0, r6
00842cc0  63 2c eb eb                                      bl #0x30de54
00842cc4  06 10 a0 e1                                      mov r1, r6
00842cc8  00 20 86 e0                                      add r2, r6, r0
00842ccc  f0 00 85 e2                                      add r0, r5, #0xf0
00842cd0  42 37 eb eb                                      bl #0x3109e0
00842cd4  84 10 9f e5                                      ldr r1, [pc, #0x84]
00842cd8  04 00 a0 e1                                      mov r0, r4
00842cdc  01 10 8f e0                                      add r1, pc, r1
00842ce0  d0 06 00 eb                                      bl #0x844828
00842ce4  00 00 50 e3                                      cmp r0, #0
00842ce8  07 00 00 0a                                      beq #0x842d0c
00842cec  2c 40 90 e5                                      ldr r4, [r0, #0x2c]
00842cf0  04 00 a0 e1                                      mov r0, r4
00842cf4  56 2c eb eb                                      bl #0x30de54
00842cf8  04 10 a0 e1                                      mov r1, r4
00842cfc  00 20 84 e0                                      add r2, r4, r0
00842d00  42 0f 85 e2                                      add r0, r5, #0x108
00842d04  70 40 bd e8                                      pop {r4, r5, r6, lr}
00842d08  34 37 eb ea                                      b #0x3109e0
00842d0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00842d10  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00842d14  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00842d18  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00842d1c  00 00 8f e0                                      add r0, pc, r0
00842d20  02 20 8f e0                                      add r2, pc, r2
00842d24  03 30 8f e0                                      add r3, pc, r3
00842d28  66 10 a0 e3                                      mov r1, #0x66
00842d2c  c3 2f eb eb                                      bl #0x30ec40
00842d30  58 ff ff ea                                      b #0x842a98
; mapping-symbol data/literal pool
00842d34  f0 8b 0c 00 a4 c3 0c 00 78 c3 0c 00 1c 22 09 00  .byte 0xf0, 0x8b, 0x0c, 0x00, 0xa4, 0xc3, 0x0c, 0x00, 0x78, 0xc3, 0x0c, 0x00, 0x1c, 0x22, 0x09, 0x00
00842d44  20 c3 0c 00 fc c2 0c 00 d8 c2 0c 00 9c bf 09 00  .byte 0x20, 0xc3, 0x0c, 0x00, 0xfc, 0xc2, 0x0c, 0x00, 0xd8, 0xc2, 0x0c, 0x00, 0x9c, 0xbf, 0x09, 0x00
00842d54  f0 64 0c 00 b4 10 08 00 18 c2 0c 00 f4 c1 0c 00  .byte 0xf0, 0x64, 0x0c, 0x00, 0xb4, 0x10, 0x08, 0x00, 0x18, 0xc2, 0x0c, 0x00, 0xf4, 0xc1, 0x0c, 0x00
00842d64  ec c0 0c 00 68 c0 0c 00 44 c1 0c 00              .byte 0xec, 0xc0, 0x0c, 0x00, 0x68, 0xc0, 0x0c, 0x00, 0x44, 0xc1, 0x0c, 0x00

; FUNCTION 0x00842d70, declared_size=156, range_size=156, mode=arm
; class-group: item
; alias: _ZN4itemC1ERKS_
; demangled: item::item(item const&)
; decoder-mode: arm
00842d70  70 40 2d e9                                      push {r4, r5, r6, lr}
00842d74  00 40 a0 e1                                      mov r4, r0
00842d78  01 50 a0 e1                                      mov r5, r1
00842d7c  e5 a2 eb eb                                      bl #0x32b918
00842d80  18 10 85 e2                                      add r1, r5, #0x18
00842d84  18 00 84 e2                                      add r0, r4, #0x18
00842d88  e2 a2 eb eb                                      bl #0x32b918
00842d8c  30 10 85 e2                                      add r1, r5, #0x30
00842d90  30 00 84 e2                                      add r0, r4, #0x30
00842d94  df a2 eb eb                                      bl #0x32b918
00842d98  48 10 85 e2                                      add r1, r5, #0x48
00842d9c  48 00 84 e2                                      add r0, r4, #0x48
00842da0  dc a2 eb eb                                      bl #0x32b918
00842da4  60 10 85 e2                                      add r1, r5, #0x60
00842da8  60 00 84 e2                                      add r0, r4, #0x60
00842dac  d9 a2 eb eb                                      bl #0x32b918
00842db0  78 10 85 e2                                      add r1, r5, #0x78
00842db4  78 00 84 e2                                      add r0, r4, #0x78
00842db8  d6 a2 eb eb                                      bl #0x32b918
00842dbc  90 10 85 e2                                      add r1, r5, #0x90
00842dc0  90 00 84 e2                                      add r0, r4, #0x90
00842dc4  d3 a2 eb eb                                      bl #0x32b918
00842dc8  a8 10 85 e2                                      add r1, r5, #0xa8
00842dcc  a8 00 84 e2                                      add r0, r4, #0xa8
00842dd0  d0 a2 eb eb                                      bl #0x32b918
00842dd4  c0 10 85 e2                                      add r1, r5, #0xc0
00842dd8  c0 00 84 e2                                      add r0, r4, #0xc0
00842ddc  cd a2 eb eb                                      bl #0x32b918
00842de0  d8 10 85 e2                                      add r1, r5, #0xd8
00842de4  d8 00 84 e2                                      add r0, r4, #0xd8
00842de8  ca a2 eb eb                                      bl #0x32b918
00842dec  f0 10 85 e2                                      add r1, r5, #0xf0
00842df0  f0 00 84 e2                                      add r0, r4, #0xf0
00842df4  c7 a2 eb eb                                      bl #0x32b918
00842df8  42 1f 85 e2                                      add r1, r5, #0x108
00842dfc  42 0f 84 e2                                      add r0, r4, #0x108
00842e00  c4 a2 eb eb                                      bl #0x32b918
00842e04  04 00 a0 e1                                      mov r0, r4
00842e08  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00843cd8, declared_size=396, range_size=396, mode=arm
; class-group: item
; alias: _ZN4itemC1Ev
; demangled: item::item()
; decoder-mode: arm
00843cd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00843cdc  00 40 a0 e1                                      mov r4, r0
00843ce0  10 00 84 e5                                      str r0, [r4, #0x10]
00843ce4  14 00 84 e5                                      str r0, [r4, #0x14]
00843ce8  10 10 a0 e3                                      mov r1, #0x10
00843cec  62 36 eb eb                                      bl #0x31167c
00843cf0  10 20 94 e5                                      ldr r2, [r4, #0x10]
00843cf4  00 50 a0 e3                                      mov r5, #0
00843cf8  18 30 84 e2                                      add r3, r4, #0x18
00843cfc  00 50 c2 e5                                      strb r5, [r2]
00843d00  03 00 a0 e1                                      mov r0, r3
00843d04  28 30 84 e5                                      str r3, [r4, #0x28]
00843d08  2c 30 84 e5                                      str r3, [r4, #0x2c]
00843d0c  10 10 a0 e3                                      mov r1, #0x10
00843d10  59 36 eb eb                                      bl #0x31167c
00843d14  28 20 94 e5                                      ldr r2, [r4, #0x28]
00843d18  30 30 84 e2                                      add r3, r4, #0x30
00843d1c  03 00 a0 e1                                      mov r0, r3
00843d20  00 50 c2 e5                                      strb r5, [r2]
00843d24  10 10 a0 e3                                      mov r1, #0x10
00843d28  40 30 84 e5                                      str r3, [r4, #0x40]
00843d2c  44 30 84 e5                                      str r3, [r4, #0x44]
00843d30  51 36 eb eb                                      bl #0x31167c
00843d34  40 20 94 e5                                      ldr r2, [r4, #0x40]
00843d38  48 30 84 e2                                      add r3, r4, #0x48
00843d3c  03 00 a0 e1                                      mov r0, r3
00843d40  00 50 c2 e5                                      strb r5, [r2]
00843d44  10 10 a0 e3                                      mov r1, #0x10
00843d48  58 30 84 e5                                      str r3, [r4, #0x58]
00843d4c  5c 30 84 e5                                      str r3, [r4, #0x5c]
00843d50  49 36 eb eb                                      bl #0x31167c
00843d54  58 20 94 e5                                      ldr r2, [r4, #0x58]
00843d58  60 30 84 e2                                      add r3, r4, #0x60
00843d5c  03 00 a0 e1                                      mov r0, r3
00843d60  00 50 c2 e5                                      strb r5, [r2]
00843d64  10 10 a0 e3                                      mov r1, #0x10
00843d68  70 30 84 e5                                      str r3, [r4, #0x70]
00843d6c  74 30 84 e5                                      str r3, [r4, #0x74]
00843d70  41 36 eb eb                                      bl #0x31167c
00843d74  70 20 94 e5                                      ldr r2, [r4, #0x70]
00843d78  78 30 84 e2                                      add r3, r4, #0x78
00843d7c  03 00 a0 e1                                      mov r0, r3
00843d80  00 50 c2 e5                                      strb r5, [r2]
00843d84  10 10 a0 e3                                      mov r1, #0x10
00843d88  88 30 84 e5                                      str r3, [r4, #0x88]
00843d8c  8c 30 84 e5                                      str r3, [r4, #0x8c]
00843d90  39 36 eb eb                                      bl #0x31167c
00843d94  88 20 94 e5                                      ldr r2, [r4, #0x88]
00843d98  90 30 84 e2                                      add r3, r4, #0x90
00843d9c  03 00 a0 e1                                      mov r0, r3
00843da0  00 50 c2 e5                                      strb r5, [r2]
00843da4  10 10 a0 e3                                      mov r1, #0x10
00843da8  a0 30 84 e5                                      str r3, [r4, #0xa0]
00843dac  a4 30 84 e5                                      str r3, [r4, #0xa4]
00843db0  31 36 eb eb                                      bl #0x31167c
00843db4  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
00843db8  a8 30 84 e2                                      add r3, r4, #0xa8
00843dbc  03 00 a0 e1                                      mov r0, r3
00843dc0  00 50 c2 e5                                      strb r5, [r2]
00843dc4  10 10 a0 e3                                      mov r1, #0x10
00843dc8  b8 30 84 e5                                      str r3, [r4, #0xb8]
00843dcc  bc 30 84 e5                                      str r3, [r4, #0xbc]
00843dd0  29 36 eb eb                                      bl #0x31167c
00843dd4  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
00843dd8  c0 30 84 e2                                      add r3, r4, #0xc0
00843ddc  03 00 a0 e1                                      mov r0, r3
00843de0  00 50 c2 e5                                      strb r5, [r2]
00843de4  10 10 a0 e3                                      mov r1, #0x10
00843de8  d0 30 84 e5                                      str r3, [r4, #0xd0]
00843dec  d4 30 84 e5                                      str r3, [r4, #0xd4]
00843df0  21 36 eb eb                                      bl #0x31167c
00843df4  d0 20 94 e5                                      ldr r2, [r4, #0xd0]
00843df8  d8 30 84 e2                                      add r3, r4, #0xd8
00843dfc  03 00 a0 e1                                      mov r0, r3
00843e00  00 50 c2 e5                                      strb r5, [r2]
00843e04  10 10 a0 e3                                      mov r1, #0x10
00843e08  e8 30 84 e5                                      str r3, [r4, #0xe8]
00843e0c  ec 30 84 e5                                      str r3, [r4, #0xec]
00843e10  19 36 eb eb                                      bl #0x31167c
00843e14  e8 20 94 e5                                      ldr r2, [r4, #0xe8]
00843e18  f0 30 84 e2                                      add r3, r4, #0xf0
00843e1c  03 00 a0 e1                                      mov r0, r3
00843e20  00 50 c2 e5                                      strb r5, [r2]
00843e24  10 10 a0 e3                                      mov r1, #0x10
00843e28  00 31 84 e5                                      str r3, [r4, #0x100]
00843e2c  04 31 84 e5                                      str r3, [r4, #0x104]
00843e30  11 36 eb eb                                      bl #0x31167c
00843e34  00 21 94 e5                                      ldr r2, [r4, #0x100]
00843e38  42 3f 84 e2                                      add r3, r4, #0x108
00843e3c  03 00 a0 e1                                      mov r0, r3
00843e40  00 50 c2 e5                                      strb r5, [r2]
00843e44  10 10 a0 e3                                      mov r1, #0x10
00843e48  18 31 84 e5                                      str r3, [r4, #0x118]
00843e4c  1c 31 84 e5                                      str r3, [r4, #0x11c]
00843e50  09 36 eb eb                                      bl #0x31167c
00843e54  18 31 94 e5                                      ldr r3, [r4, #0x118]
00843e58  04 00 a0 e1                                      mov r0, r4
00843e5c  00 50 c3 e5                                      strb r5, [r3]
00843e60  70 80 bd e8                                      pop {r4, r5, r6, pc}
