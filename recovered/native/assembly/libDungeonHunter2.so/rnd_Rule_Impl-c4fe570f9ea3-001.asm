; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048bbec, declared_size=12, range_size=12, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4Impl11GetRootRuleEv
; demangled: rnd::Rule::Impl::GetRootRule()
; decoder-mode: arm
0048bbec  04 30 90 e5                                      ldr r3, [r0, #4]
0048bbf0  04 00 93 e5                                      ldr r0, [r3, #4]
0048bbf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048bd60, declared_size=348, range_size=348, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4ImplC1ERKS0_PS1_
; demangled: rnd::Rule::Impl::Impl(rnd::Rule const&, rnd::Rule::Impl*)
; decoder-mode: arm
0048bd60  70 40 2d e9                                      push {r4, r5, r6, lr}
0048bd64  34 41 9f e5                                      ldr r4, [pc, #0x134]
0048bd68  34 31 9f e5                                      ldr r3, [pc, #0x134]
0048bd6c  00 50 a0 e1                                      mov r5, r0
0048bd70  04 40 8f e0                                      add r4, pc, r4
0048bd74  03 30 94 e7                                      ldr r3, [r4, r3]
0048bd78  00 00 a0 e3                                      mov r0, #0
0048bd7c  00 00 52 e3                                      cmp r2, #0
0048bd80  08 30 83 e2                                      add r3, r3, #8
0048bd84  00 30 85 e5                                      str r3, [r5]
0048bd88  01 30 a0 e3                                      mov r3, #1
0048bd8c  04 10 85 e5                                      str r1, [r5, #4]
0048bd90  2c 30 85 e5                                      str r3, [r5, #0x2c]
0048bd94  40 00 85 e5                                      str r0, [r5, #0x40]
0048bd98  08 20 85 e5                                      str r2, [r5, #8]
0048bd9c  0c 00 85 e5                                      str r0, [r5, #0xc]
0048bda0  28 00 85 e5                                      str r0, [r5, #0x28]
0048bda4  30 00 85 e5                                      str r0, [r5, #0x30]
0048bda8  34 00 85 e5                                      str r0, [r5, #0x34]
0048bdac  38 00 85 e5                                      str r0, [r5, #0x38]
0048bdb0  3c 00 85 e5                                      str r0, [r5, #0x3c]
0048bdb4  12 00 00 0a                                      beq #0x48be04
0048bdb8  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0048bdbc  01 10 83 e2                                      add r1, r3, #1
0048bdc0  04 30 83 e2                                      add r3, r3, #4
0048bdc4  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
0048bdc8  0c 10 82 e5                                      str r1, [r2, #0xc]
0048bdcc  04 00 95 e5                                      ldr r0, [r5, #4]
0048bdd0  60 20 90 e5                                      ldr r2, [r0, #0x60]
0048bdd4  64 30 90 e5                                      ldr r3, [r0, #0x64]
0048bdd8  03 00 52 e1                                      cmp r2, r3
0048bddc  08 00 00 0a                                      beq #0x48be04
0048bde0  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0048bde4  50 00 80 e2                                      add r0, r0, #0x50
0048bde8  01 10 8f e0                                      add r1, pc, r1
0048bdec  4b 66 fc eb                                      bl #0x3a5720
0048bdf0  00 00 50 e3                                      cmp r0, #0
0048bdf4  04 00 00 1a                                      bne #0x48be0c
0048bdf8  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0048bdfc  03 30 94 e7                                      ldr r3, [r4, r3]
0048be00  3c 30 85 e5                                      str r3, [r5, #0x3c]
0048be04  05 00 a0 e1                                      mov r0, r5
0048be08  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048be0c  04 00 95 e5                                      ldr r0, [r5, #4]
0048be10  98 10 9f e5                                      ldr r1, [pc, #0x98]
0048be14  50 00 80 e2                                      add r0, r0, #0x50
0048be18  01 10 8f e0                                      add r1, pc, r1
0048be1c  3f 66 fc eb                                      bl #0x3a5720
0048be20  00 00 50 e3                                      cmp r0, #0
0048be24  05 00 00 1a                                      bne #0x48be40
0048be28  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0048be2c  05 00 a0 e1                                      mov r0, r5
0048be30  03 30 94 e7                                      ldr r3, [r4, r3]
0048be34  10 30 83 e2                                      add r3, r3, #0x10
0048be38  3c 30 85 e5                                      str r3, [r5, #0x3c]
0048be3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048be40  04 00 95 e5                                      ldr r0, [r5, #4]
0048be44  68 10 9f e5                                      ldr r1, [pc, #0x68]
0048be48  50 00 80 e2                                      add r0, r0, #0x50
0048be4c  01 10 8f e0                                      add r1, pc, r1
0048be50  32 66 fc eb                                      bl #0x3a5720
0048be54  00 00 50 e3                                      cmp r0, #0
0048be58  04 00 00 1a                                      bne #0x48be70
0048be5c  48 30 9f e5                                      ldr r3, [pc, #0x48]
0048be60  03 30 94 e7                                      ldr r3, [r4, r3]
0048be64  20 30 83 e2                                      add r3, r3, #0x20
0048be68  3c 30 85 e5                                      str r3, [r5, #0x3c]
0048be6c  e4 ff ff ea                                      b #0x48be04
0048be70  04 00 95 e5                                      ldr r0, [r5, #4]
0048be74  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0048be78  50 00 80 e2                                      add r0, r0, #0x50
0048be7c  01 10 8f e0                                      add r1, pc, r1
0048be80  26 66 fc eb                                      bl #0x3a5720
0048be84  00 00 50 e3                                      cmp r0, #0
0048be88  dd ff ff 1a                                      bne #0x48be04
0048be8c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0048be90  03 30 94 e7                                      ldr r3, [r4, r3]
0048be94  30 30 83 e2                                      add r3, r3, #0x30
0048be98  3c 30 85 e5                                      str r3, [r5, #0x3c]
0048be9c  d8 ff ff ea                                      b #0x48be04
; mapping-symbol data/literal pool
0048bea0  20 8d 50 00 00 10 00 00 d0 8f 44 00 fc 43 00 00  .byte 0x20, 0x8d, 0x50, 0x00, 0x00, 0x10, 0x00, 0x00, 0xd0, 0x8f, 0x44, 0x00, 0xfc, 0x43, 0x00, 0x00
0048beb0  a8 8f 44 00 7c 8f 44 00 54 8f 44 00              .byte 0xa8, 0x8f, 0x44, 0x00, 0x7c, 0x8f, 0x44, 0x00, 0x54, 0x8f, 0x44, 0x00

; FUNCTION 0x0048bebc, declared_size=348, range_size=348, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4ImplC2ERKS0_PS1_
; demangled: rnd::Rule::Impl::Impl(rnd::Rule const&, rnd::Rule::Impl*)
; decoder-mode: arm
0048bebc  70 40 2d e9                                      push {r4, r5, r6, lr}
0048bec0  34 41 9f e5                                      ldr r4, [pc, #0x134]
0048bec4  34 31 9f e5                                      ldr r3, [pc, #0x134]
0048bec8  00 50 a0 e1                                      mov r5, r0
0048becc  04 40 8f e0                                      add r4, pc, r4
0048bed0  03 30 94 e7                                      ldr r3, [r4, r3]
0048bed4  00 00 a0 e3                                      mov r0, #0
0048bed8  00 00 52 e3                                      cmp r2, #0
0048bedc  08 30 83 e2                                      add r3, r3, #8
0048bee0  00 30 85 e5                                      str r3, [r5]
0048bee4  01 30 a0 e3                                      mov r3, #1
0048bee8  04 10 85 e5                                      str r1, [r5, #4]
0048beec  2c 30 85 e5                                      str r3, [r5, #0x2c]
0048bef0  40 00 85 e5                                      str r0, [r5, #0x40]
0048bef4  08 20 85 e5                                      str r2, [r5, #8]
0048bef8  0c 00 85 e5                                      str r0, [r5, #0xc]
0048befc  28 00 85 e5                                      str r0, [r5, #0x28]
0048bf00  30 00 85 e5                                      str r0, [r5, #0x30]
0048bf04  34 00 85 e5                                      str r0, [r5, #0x34]
0048bf08  38 00 85 e5                                      str r0, [r5, #0x38]
0048bf0c  3c 00 85 e5                                      str r0, [r5, #0x3c]
0048bf10  12 00 00 0a                                      beq #0x48bf60
0048bf14  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0048bf18  01 10 83 e2                                      add r1, r3, #1
0048bf1c  04 30 83 e2                                      add r3, r3, #4
0048bf20  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
0048bf24  0c 10 82 e5                                      str r1, [r2, #0xc]
0048bf28  04 00 95 e5                                      ldr r0, [r5, #4]
0048bf2c  60 20 90 e5                                      ldr r2, [r0, #0x60]
0048bf30  64 30 90 e5                                      ldr r3, [r0, #0x64]
0048bf34  03 00 52 e1                                      cmp r2, r3
0048bf38  08 00 00 0a                                      beq #0x48bf60
0048bf3c  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0048bf40  50 00 80 e2                                      add r0, r0, #0x50
0048bf44  01 10 8f e0                                      add r1, pc, r1
0048bf48  f4 65 fc eb                                      bl #0x3a5720
0048bf4c  00 00 50 e3                                      cmp r0, #0
0048bf50  04 00 00 1a                                      bne #0x48bf68
0048bf54  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0048bf58  03 30 94 e7                                      ldr r3, [r4, r3]
0048bf5c  3c 30 85 e5                                      str r3, [r5, #0x3c]
0048bf60  05 00 a0 e1                                      mov r0, r5
0048bf64  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048bf68  04 00 95 e5                                      ldr r0, [r5, #4]
0048bf6c  98 10 9f e5                                      ldr r1, [pc, #0x98]
0048bf70  50 00 80 e2                                      add r0, r0, #0x50
0048bf74  01 10 8f e0                                      add r1, pc, r1
0048bf78  e8 65 fc eb                                      bl #0x3a5720
0048bf7c  00 00 50 e3                                      cmp r0, #0
0048bf80  05 00 00 1a                                      bne #0x48bf9c
0048bf84  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0048bf88  05 00 a0 e1                                      mov r0, r5
0048bf8c  03 30 94 e7                                      ldr r3, [r4, r3]
0048bf90  10 30 83 e2                                      add r3, r3, #0x10
0048bf94  3c 30 85 e5                                      str r3, [r5, #0x3c]
0048bf98  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048bf9c  04 00 95 e5                                      ldr r0, [r5, #4]
0048bfa0  68 10 9f e5                                      ldr r1, [pc, #0x68]
0048bfa4  50 00 80 e2                                      add r0, r0, #0x50
0048bfa8  01 10 8f e0                                      add r1, pc, r1
0048bfac  db 65 fc eb                                      bl #0x3a5720
0048bfb0  00 00 50 e3                                      cmp r0, #0
0048bfb4  04 00 00 1a                                      bne #0x48bfcc
0048bfb8  48 30 9f e5                                      ldr r3, [pc, #0x48]
0048bfbc  03 30 94 e7                                      ldr r3, [r4, r3]
0048bfc0  20 30 83 e2                                      add r3, r3, #0x20
0048bfc4  3c 30 85 e5                                      str r3, [r5, #0x3c]
0048bfc8  e4 ff ff ea                                      b #0x48bf60
0048bfcc  04 00 95 e5                                      ldr r0, [r5, #4]
0048bfd0  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0048bfd4  50 00 80 e2                                      add r0, r0, #0x50
0048bfd8  01 10 8f e0                                      add r1, pc, r1
0048bfdc  cf 65 fc eb                                      bl #0x3a5720
0048bfe0  00 00 50 e3                                      cmp r0, #0
0048bfe4  dd ff ff 1a                                      bne #0x48bf60
0048bfe8  18 30 9f e5                                      ldr r3, [pc, #0x18]
0048bfec  03 30 94 e7                                      ldr r3, [r4, r3]
0048bff0  30 30 83 e2                                      add r3, r3, #0x30
0048bff4  3c 30 85 e5                                      str r3, [r5, #0x3c]
0048bff8  d8 ff ff ea                                      b #0x48bf60
; mapping-symbol data/literal pool
0048bffc  c4 8b 50 00 00 10 00 00 74 8e 44 00 fc 43 00 00  .byte 0xc4, 0x8b, 0x50, 0x00, 0x00, 0x10, 0x00, 0x00, 0x74, 0x8e, 0x44, 0x00, 0xfc, 0x43, 0x00, 0x00
0048c00c  4c 8e 44 00 20 8e 44 00 f8 8d 44 00              .byte 0x4c, 0x8e, 0x44, 0x00, 0x20, 0x8e, 0x44, 0x00, 0xf8, 0x8d, 0x44, 0x00

; FUNCTION 0x0048d1a0, declared_size=264, range_size=264, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4ImplD1Ev
; demangled: rnd::Rule::Impl::~Impl()
; decoder-mode: arm
0048d1a0  10 40 2d e9                                      push {r4, lr}
0048d1a4  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0048d1a8  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
0048d1ac  08 c0 90 e5                                      ldr ip, [r0, #8]
0048d1b0  03 30 8f e0                                      add r3, pc, r3
0048d1b4  02 20 93 e7                                      ldr r2, [r3, r2]
0048d1b8  00 00 5c e3                                      cmp ip, #0
0048d1bc  00 40 a0 e1                                      mov r4, r0
0048d1c0  08 20 82 e2                                      add r2, r2, #8
0048d1c4  00 20 80 e5                                      str r2, [r0]
0048d1c8  10 00 00 0a                                      beq #0x48d210
0048d1cc  0c 00 9c e5                                      ldr r0, [ip, #0xc]
0048d1d0  00 00 50 e3                                      cmp r0, #0
0048d1d4  0d 00 00 da                                      ble #0x48d210
0048d1d8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0048d1dc  03 00 54 e1                                      cmp r4, r3
0048d1e0  00 30 a0 03                                      moveq r3, #0
0048d1e4  23 00 00 0a                                      beq #0x48d278
0048d1e8  0c 20 a0 e1                                      mov r2, ip
0048d1ec  00 30 a0 e3                                      mov r3, #0
0048d1f0  02 00 00 ea                                      b #0x48d200
0048d1f4  10 10 92 e5                                      ldr r1, [r2, #0x10]
0048d1f8  01 00 54 e1                                      cmp r4, r1
0048d1fc  1d 00 00 0a                                      beq #0x48d278
0048d200  01 30 83 e2                                      add r3, r3, #1
0048d204  00 00 53 e1                                      cmp r3, r0
0048d208  04 20 82 e2                                      add r2, r2, #4
0048d20c  f8 ff ff 1a                                      bne #0x48d1f4
0048d210  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0048d214  00 00 52 e3                                      cmp r2, #0
0048d218  01 20 42 e2                                      sub r2, r2, #1
0048d21c  04 30 82 e2                                      add r3, r2, #4
0048d220  08 00 00 da                                      ble #0x48d248
0048d224  0c 20 84 e5                                      str r2, [r4, #0xc]
0048d228  03 31 94 e7                                      ldr r3, [r4, r3, lsl #2]
0048d22c  00 00 53 e3                                      cmp r3, #0
0048d230  f7 ff ff 0a                                      beq #0x48d214
0048d234  03 00 a0 e1                                      mov r0, r3
0048d238  00 30 93 e5                                      ldr r3, [r3]
0048d23c  0f e0 a0 e1                                      mov lr, pc
0048d240  04 f0 93 e5                                      ldr pc, [r3, #4]
0048d244  f1 ff ff ea                                      b #0x48d210
0048d248  30 00 94 e5                                      ldr r0, [r4, #0x30]
0048d24c  30 30 84 e2                                      add r3, r4, #0x30
0048d250  00 00 50 e3                                      cmp r0, #0
0048d254  05 00 00 0a                                      beq #0x48d270
0048d258  08 10 93 e5                                      ldr r1, [r3, #8]
0048d25c  01 10 60 e0                                      rsb r1, r0, r1
0048d260  03 10 c1 e3                                      bic r1, r1, #3
0048d264  80 00 51 e3                                      cmp r1, #0x80
0048d268  09 00 00 8a                                      bhi #0x48d294
0048d26c  23 ef 09 eb                                      bl #0x708f00
0048d270  04 00 a0 e1                                      mov r0, r4
0048d274  10 80 bd e8                                      pop {r4, pc}
0048d278  01 20 40 e2                                      sub r2, r0, #1
0048d27c  0c 20 8c e5                                      str r2, [ip, #0xc]
0048d280  03 00 80 e2                                      add r0, r0, #3
0048d284  00 21 9c e7                                      ldr r2, [ip, r0, lsl #2]
0048d288  04 30 83 e2                                      add r3, r3, #4
0048d28c  03 21 8c e7                                      str r2, [ip, r3, lsl #2]
0048d290  de ff ff ea                                      b #0x48d210
0048d294  69 0c fa eb                                      bl #0x310440
0048d298  04 00 a0 e1                                      mov r0, r4
0048d29c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d2a0  e0 78 50 00 00 10 00 00                          .byte 0xe0, 0x78, 0x50, 0x00, 0x00, 0x10, 0x00, 0x00

; FUNCTION 0x0048d2a8, declared_size=28, range_size=28, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4ImplD0Ev
; demangled: rnd::Rule::Impl::~Impl()
; decoder-mode: arm
0048d2a8  10 40 2d e9                                      push {r4, lr}
0048d2ac  00 40 a0 e1                                      mov r4, r0
0048d2b0  ba ff ff eb                                      bl #0x48d1a0
0048d2b4  04 00 a0 e1                                      mov r0, r4
0048d2b8  60 0c fa eb                                      bl #0x310440
0048d2bc  04 00 a0 e1                                      mov r0, r4
0048d2c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048d2c4, declared_size=264, range_size=264, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4ImplD2Ev
; demangled: rnd::Rule::Impl::~Impl()
; decoder-mode: arm
0048d2c4  10 40 2d e9                                      push {r4, lr}
0048d2c8  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0048d2cc  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
0048d2d0  08 c0 90 e5                                      ldr ip, [r0, #8]
0048d2d4  03 30 8f e0                                      add r3, pc, r3
0048d2d8  02 20 93 e7                                      ldr r2, [r3, r2]
0048d2dc  00 00 5c e3                                      cmp ip, #0
0048d2e0  00 40 a0 e1                                      mov r4, r0
0048d2e4  08 20 82 e2                                      add r2, r2, #8
0048d2e8  00 20 80 e5                                      str r2, [r0]
0048d2ec  10 00 00 0a                                      beq #0x48d334
0048d2f0  0c 00 9c e5                                      ldr r0, [ip, #0xc]
0048d2f4  00 00 50 e3                                      cmp r0, #0
0048d2f8  0d 00 00 da                                      ble #0x48d334
0048d2fc  10 30 9c e5                                      ldr r3, [ip, #0x10]
0048d300  03 00 54 e1                                      cmp r4, r3
0048d304  00 30 a0 03                                      moveq r3, #0
0048d308  23 00 00 0a                                      beq #0x48d39c
0048d30c  0c 20 a0 e1                                      mov r2, ip
0048d310  00 30 a0 e3                                      mov r3, #0
0048d314  02 00 00 ea                                      b #0x48d324
0048d318  10 10 92 e5                                      ldr r1, [r2, #0x10]
0048d31c  01 00 54 e1                                      cmp r4, r1
0048d320  1d 00 00 0a                                      beq #0x48d39c
0048d324  01 30 83 e2                                      add r3, r3, #1
0048d328  00 00 53 e1                                      cmp r3, r0
0048d32c  04 20 82 e2                                      add r2, r2, #4
0048d330  f8 ff ff 1a                                      bne #0x48d318
0048d334  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0048d338  00 00 52 e3                                      cmp r2, #0
0048d33c  01 20 42 e2                                      sub r2, r2, #1
0048d340  04 30 82 e2                                      add r3, r2, #4
0048d344  08 00 00 da                                      ble #0x48d36c
0048d348  0c 20 84 e5                                      str r2, [r4, #0xc]
0048d34c  03 31 94 e7                                      ldr r3, [r4, r3, lsl #2]
0048d350  00 00 53 e3                                      cmp r3, #0
0048d354  f7 ff ff 0a                                      beq #0x48d338
0048d358  03 00 a0 e1                                      mov r0, r3
0048d35c  00 30 93 e5                                      ldr r3, [r3]
0048d360  0f e0 a0 e1                                      mov lr, pc
0048d364  04 f0 93 e5                                      ldr pc, [r3, #4]
0048d368  f1 ff ff ea                                      b #0x48d334
0048d36c  30 00 94 e5                                      ldr r0, [r4, #0x30]
0048d370  30 30 84 e2                                      add r3, r4, #0x30
0048d374  00 00 50 e3                                      cmp r0, #0
0048d378  05 00 00 0a                                      beq #0x48d394
0048d37c  08 10 93 e5                                      ldr r1, [r3, #8]
0048d380  01 10 60 e0                                      rsb r1, r0, r1
0048d384  03 10 c1 e3                                      bic r1, r1, #3
0048d388  80 00 51 e3                                      cmp r1, #0x80
0048d38c  09 00 00 8a                                      bhi #0x48d3b8
0048d390  da ee 09 eb                                      bl #0x708f00
0048d394  04 00 a0 e1                                      mov r0, r4
0048d398  10 80 bd e8                                      pop {r4, pc}
0048d39c  01 20 40 e2                                      sub r2, r0, #1
0048d3a0  0c 20 8c e5                                      str r2, [ip, #0xc]
0048d3a4  03 00 80 e2                                      add r0, r0, #3
0048d3a8  00 21 9c e7                                      ldr r2, [ip, r0, lsl #2]
0048d3ac  04 30 83 e2                                      add r3, r3, #4
0048d3b0  03 21 8c e7                                      str r2, [ip, r3, lsl #2]
0048d3b4  de ff ff ea                                      b #0x48d334
0048d3b8  20 0c fa eb                                      bl #0x310440
0048d3bc  04 00 a0 e1                                      mov r0, r4
0048d3c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d3c4  bc 77 50 00 00 10 00 00                          .byte 0xbc, 0x77, 0x50, 0x00, 0x00, 0x10, 0x00, 0x00

; FUNCTION 0x0048e690, declared_size=304, range_size=304, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4Impl11FilterExitsERSt6vectorISt4pairIPKNS_4ExitENS_8ListElemEESaIS8_EERPNS_8ListRuleE
; demangled: rnd::Rule::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >&, rnd::ListRule*&)
; decoder-mode: arm
0048e690  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048e694  00 60 91 e5                                      ldr r6, [r1]
0048e698  04 30 91 e5                                      ldr r3, [r1, #4]
0048e69c  01 40 a0 e1                                      mov r4, r1
0048e6a0  0c d0 4d e2                                      sub sp, sp, #0xc
0048e6a4  03 00 56 e1                                      cmp r6, r3
0048e6a8  00 50 a0 e1                                      mov r5, r0
0048e6ac  06 40 a0 01                                      moveq r4, r6
0048e6b0  23 00 00 0a                                      beq #0x48e744
0048e6b4  00 81 9f e5                                      ldr r8, [pc, #0x100]
0048e6b8  06 10 a0 e1                                      mov r1, r6
0048e6bc  08 80 8f e0                                      add r8, pc, r8
0048e6c0  06 70 88 e2                                      add r7, r8, #6
0048e6c4  02 80 88 e2                                      add r8, r8, #2
0048e6c8  02 00 00 ea                                      b #0x48e6d8
0048e6cc  54 10 81 e2                                      add r1, r1, #0x54
0048e6d0  03 00 51 e1                                      cmp r1, r3
0048e6d4  22 00 00 0a                                      beq #0x48e764
0048e6d8  00 20 91 e5                                      ldr r2, [r1]
0048e6dc  04 20 92 e5                                      ldr r2, [r2, #4]
0048e6e0  18 00 92 e5                                      ldr r0, [r2, #0x18]
0048e6e4  14 20 92 e5                                      ldr r2, [r2, #0x14]
0048e6e8  00 c0 52 e0                                      subs ip, r2, r0
0048e6ec  f6 ff ff 0a                                      beq #0x48e6cc
0048e6f0  05 00 5c e3                                      cmp ip, #5
0048e6f4  f4 ff ff 9a                                      bls #0x48e6cc
0048e6f8  00 00 52 e1                                      cmp r2, r0
0048e6fc  06 00 00 0a                                      beq #0x48e71c
0048e700  01 b0 80 e2                                      add fp, r0, #1
0048e704  d1 c0 5b e1                                      ldrsb ip, [fp, #-1]
0048e708  5f 00 5c e3                                      cmp ip, #0x5f
0048e70c  17 00 00 0a                                      beq #0x48e770
0048e710  0b 00 52 e1                                      cmp r2, fp
0048e714  01 b0 8b e2                                      add fp, fp, #1
0048e718  f9 ff ff 1a                                      bne #0x48e704
0048e71c  02 c0 a0 e1                                      mov ip, r2
0048e720  0c 00 52 e1                                      cmp r2, ip
0048e724  e8 ff ff 0a                                      beq #0x48e6cc
0048e728  0c 00 60 e0                                      rsb r0, r0, ip
0048e72c  01 00 70 e3                                      cmn r0, #1
0048e730  e5 ff ff 0a                                      beq #0x48e6cc
0048e734  04 00 a0 e1                                      mov r0, r4
0048e738  04 20 8d e2                                      add r2, sp, #4
0048e73c  cb fc ff eb                                      bl #0x48da70
0048e740  50 00 94 e8                                      ldm r4, {r4, r6}
0048e744  04 00 95 e5                                      ldr r0, [r5, #4]
0048e748  69 f5 ff eb                                      bl #0x48bcf4
0048e74c  06 10 a0 e1                                      mov r1, r6
0048e750  00 20 a0 e1                                      mov r2, r0
0048e754  04 00 a0 e1                                      mov r0, r4
0048e758  b2 ff ff eb                                      bl #0x48e628
0048e75c  0c d0 8d e2                                      add sp, sp, #0xc
0048e760  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048e764  06 40 a0 e1                                      mov r4, r6
0048e768  01 60 a0 e1                                      mov r6, r1
0048e76c  f4 ff ff ea                                      b #0x48e744
0048e770  02 00 5b e1                                      cmp fp, r2
0048e774  0b c0 a0 e1                                      mov ip, fp
0048e778  e8 ff ff 0a                                      beq #0x48e720
0048e77c  08 e0 a0 e1                                      mov lr, r8
0048e780  04 00 00 ea                                      b #0x48e798
0048e784  07 00 5e e1                                      cmp lr, r7
0048e788  09 00 00 0a                                      beq #0x48e7b4
0048e78c  02 00 5c e1                                      cmp ip, r2
0048e790  01 e0 8e e2                                      add lr, lr, #1
0048e794  e1 ff ff 0a                                      beq #0x48e720
0048e798  d0 90 dc e1                                      ldrsb sb, [ip]
0048e79c  d1 a0 5e e1                                      ldrsb sl, [lr, #-1]
0048e7a0  01 c0 8c e2                                      add ip, ip, #1
0048e7a4  0a 00 59 e1                                      cmp sb, sl
0048e7a8  f5 ff ff 0a                                      beq #0x48e784
0048e7ac  01 b0 8b e2                                      add fp, fp, #1
0048e7b0  d3 ff ff ea                                      b #0x48e704
0048e7b4  01 c0 4b e2                                      sub ip, fp, #1
0048e7b8  d8 ff ff ea                                      b #0x48e720
; mapping-symbol data/literal pool
0048e7bc  cc 67 44 00                                      .byte 0xcc, 0x67, 0x44, 0x00

; FUNCTION 0x0048f954, declared_size=1040, range_size=1040, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4Impl4StepEPNS_4TileEPKNS_4ExitE
; demangled: rnd::Rule::Impl::Step(rnd::Tile*, rnd::Exit const*)
; decoder-mode: arm
0048f954  fc 33 9f e5                                      ldr r3, [pc, #0x3fc]
0048f958  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048f95c  f8 c3 9f e5                                      ldr ip, [pc, #0x3f8]
0048f960  03 30 8f e0                                      add r3, pc, r3
0048f964  01 80 a0 e1                                      mov r8, r1
0048f968  0c 10 93 e7                                      ldr r1, [r3, ip]
0048f96c  f5 df 4d e2                                      sub sp, sp, #0x3d4
0048f970  1c 30 8d e5                                      str r3, [sp, #0x1c]
0048f974  28 c0 8d e5                                      str ip, [sp, #0x28]
0048f978  00 10 91 e5                                      ldr r1, [r1]
0048f97c  30 30 98 e5                                      ldr r3, [r8, #0x30]
0048f980  00 50 a0 e3                                      mov r5, #0
0048f984  24 52 8d e5                                      str r5, [sp, #0x224]
0048f988  28 52 8d e5                                      str r5, [sp, #0x228]
0048f98c  cc 13 8d e5                                      str r1, [sp, #0x3cc]
0048f990  2c 52 8d e5                                      str r5, [sp, #0x22c]
0048f994  5c 10 93 e5                                      ldr r1, [r3, #0x5c]
0048f998  00 40 a0 e1                                      mov r4, r0
0048f99c  0c 20 8d e5                                      str r2, [sp, #0xc]
0048f9a0  05 00 51 e1                                      cmp r1, r5
0048f9a4  89 1f 8d d2                                      addle r1, sp, #0x224
0048f9a8  04 10 8d d5                                      strle r1, [sp, #4]
0048f9ac  27 00 00 da                                      ble #0x48fa50
0048f9b0  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0048f9b4  a1 2f 8d e2                                      add r2, sp, #0x284
0048f9b8  89 cf 8d e2                                      add ip, sp, #0x224
0048f9bc  04 10 8d e8                                      stm sp, {r2, ip}
0048f9c0  4b bf a0 e3                                      mov fp, #0x12c
0048f9c4  df af 8d e2                                      add sl, sp, #0x37c
0048f9c8  b7 7f 8d e2                                      add r7, sp, #0x2dc
0048f9cc  04 90 82 e2                                      add sb, r2, #4
0048f9d0  08 00 8d e5                                      str r0, [sp, #8]
0048f9d4  9b 05 04 e0                                      mul r4, fp, r5
0048f9d8  60 40 84 e2                                      add r4, r4, #0x60
0048f9dc  04 40 83 e0                                      add r4, r3, r4
0048f9e0  06 00 54 e1                                      cmp r4, r6
0048f9e4  14 00 00 0a                                      beq #0x48fa3c
0048f9e8  0a 00 a0 e1                                      mov r0, sl
0048f9ec  a3 f9 ff eb                                      bl #0x48e080
0048f9f0  0a 10 a0 e1                                      mov r1, sl
0048f9f4  07 00 a0 e1                                      mov r0, r7
0048f9f8  d8 42 8d e5                                      str r4, [sp, #0x2d8]
0048f9fc  1f fa ff eb                                      bl #0x48e280
0048fa00  d8 32 9d e5                                      ldr r3, [sp, #0x2d8]
0048fa04  07 10 a0 e1                                      mov r1, r7
0048fa08  09 00 a0 e1                                      mov r0, sb
0048fa0c  84 32 8d e5                                      str r3, [sp, #0x284]
0048fa10  1a fa ff eb                                      bl #0x48e280
0048fa14  00 10 9d e5                                      ldr r1, [sp]
0048fa18  04 00 9d e5                                      ldr r0, [sp, #4]
0048fa1c  41 fd ff eb                                      bl #0x48ef28
0048fa20  09 00 a0 e1                                      mov r0, sb
0048fa24  e9 e1 ff eb                                      bl #0x4881d0
0048fa28  07 00 a0 e1                                      mov r0, r7
0048fa2c  e7 e1 ff eb                                      bl #0x4881d0
0048fa30  0a 00 a0 e1                                      mov r0, sl
0048fa34  e5 e1 ff eb                                      bl #0x4881d0
0048fa38  30 30 98 e5                                      ldr r3, [r8, #0x30]
0048fa3c  5c 20 93 e5                                      ldr r2, [r3, #0x5c]
0048fa40  01 50 85 e2                                      add r5, r5, #1
0048fa44  05 00 52 e1                                      cmp r2, r5
0048fa48  e1 ff ff ca                                      bgt #0x48f9d4
0048fa4c  08 40 9d e5                                      ldr r4, [sp, #8]
0048fa50  28 72 9d e5                                      ldr r7, [sp, #0x228]
0048fa54  24 a2 9d e5                                      ldr sl, [sp, #0x224]
0048fa58  04 00 94 e5                                      ldr r0, [r4, #4]
0048fa5c  3d 3f 0c e3                                      movw r3, #0xcf3d
0048fa60  07 60 6a e0                                      rsb r6, sl, r7
0048fa64  f3 3c 43 e3                                      movt r3, #0x3cf3
0048fa68  46 61 a0 e1                                      asr r6, r6, #2
0048fa6c  93 06 06 e0                                      mul r6, r3, r6
0048fa70  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0048fa74  9e f0 ff eb                                      bl #0x48bcf4
0048fa78  07 10 a0 e1                                      mov r1, r7
0048fa7c  00 20 a0 e1                                      mov r2, r0
0048fa80  0a 00 a0 e1                                      mov r0, sl
0048fa84  e7 fa ff eb                                      bl #0x48e628
0048fa88  00 00 55 e3                                      cmp r5, #0
0048fa8c  00 00 56 13                                      cmpne r6, #0
0048fa90  00 70 a0 13                                      movne r7, #0
0048fa94  01 70 a0 03                                      moveq r7, #1
0048fa98  84 00 00 0a                                      beq #0x48fcb0
0048fa9c  bc 32 9f e5                                      ldr r3, [pc, #0x2bc]
0048faa0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0048faa4  d6 a2 00 e3                                      movw sl, #0x2d6
0048faa8  04 e1 01 e3                                      movw lr, #0x1104
0048faac  9a 05 0a e0                                      mul sl, sl, r5
0048fab0  9e 06 0e e0                                      mul lr, lr, r6
0048fab4  03 c0 91 e7                                      ldr ip, [r1, r3]
0048fab8  0e 30 8a e0                                      add r3, sl, lr
0048fabc  d3 20 9c e1                                      ldrsb r2, [ip, r3]
0048fac0  03 30 8c e0                                      add r3, ip, r3
0048fac4  00 00 52 e3                                      cmp r2, #0
0048fac8  99 00 00 ba                                      blt #0x48fd34
0048facc  34 50 8d e2                                      add r5, sp, #0x34
0048fad0  06 00 a0 e3                                      mov r0, #6
0048fad4  90 a7 22 e0                                      mla r2, r0, r7, sl
0048fad8  d6 10 f3 e1                                      ldrsb r1, [r3, #6]!
0048fadc  0e 20 82 e0                                      add r2, r2, lr
0048fae0  0c 20 82 e0                                      add r2, r2, ip
0048fae4  00 00 51 e3                                      cmp r1, #0
0048fae8  07 21 85 e7                                      str r2, [r5, r7, lsl #2]
0048faec  01 70 87 e2                                      add r7, r7, #1
0048faf0  f7 ff ff aa                                      bge #0x48fad4
0048faf4  04 00 94 e5                                      ldr r0, [r4, #4]
0048faf8  07 71 a0 e1                                      lsl r7, r7, #2
0048fafc  10 70 8d e5                                      str r7, [sp, #0x10]
0048fb00  7b f0 ff eb                                      bl #0x48bcf4
0048fb04  96 66 26 e0                                      mla r6, r6, r6, r6
0048fb08  10 70 9d e5                                      ldr r7, [sp, #0x10]
0048fb0c  00 20 a0 e1                                      mov r2, r0
0048fb10  a6 6f 86 e0                                      add r6, r6, r6, lsr #31
0048fb14  07 10 85 e0                                      add r1, r5, r7
0048fb18  05 00 a0 e1                                      mov r0, r5
0048fb1c  fe f1 ff eb                                      bl #0x48c31c
0048fb20  23 2e 8d e2                                      add r2, sp, #0x230
0048fb24  86 3f 8d e2                                      add r3, sp, #0x218
0048fb28  3d af 0c e3                                      movw sl, #0xcf3d
0048fb2c  c6 60 a0 e1                                      asr r6, r6, #1
0048fb30  cb cf 8d e2                                      add ip, sp, #0x32c
0048fb34  04 10 82 e2                                      add r1, r2, #4
0048fb38  24 20 8d e5                                      str r2, [sp, #0x24]
0048fb3c  18 60 8d e5                                      str r6, [sp, #0x18]
0048fb40  f3 ac 43 e3                                      movt sl, #0x3cf3
0048fb44  00 70 a0 e3                                      mov r7, #0
0048fb48  2c 30 8d e5                                      str r3, [sp, #0x2c]
0048fb4c  08 c0 8d e5                                      str ip, [sp, #8]
0048fb50  20 10 8d e5                                      str r1, [sp, #0x20]
0048fb54  00 80 8d e5                                      str r8, [sp]
0048fb58  14 50 8d e5                                      str r5, [sp, #0x14]
0048fb5c  03 b0 a0 e1                                      mov fp, r3
0048fb60  0b 00 a0 e1                                      mov r0, fp
0048fb64  04 10 9d e5                                      ldr r1, [sp, #4]
0048fb68  24 fa ff eb                                      bl #0x48e400
0048fb6c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0048fb70  18 22 9d e5                                      ldr r2, [sp, #0x218]
0048fb74  07 60 93 e7                                      ldr r6, [r3, r7]
0048fb78  1c 32 9d e5                                      ldr r3, [sp, #0x21c]
0048fb7c  03 30 62 e0                                      rsb r3, r2, r3
0048fb80  43 31 a0 e1                                      asr r3, r3, #2
0048fb84  9a 03 03 e0                                      mul r3, sl, r3
0048fb88  00 00 53 e3                                      cmp r3, #0
0048fb8c  45 00 00 0a                                      beq #0x48fca8
0048fb90  00 00 a0 e3                                      mov r0, #0
0048fb94  00 50 a0 e1                                      mov r5, r0
0048fb98  54 80 a0 e3                                      mov r8, #0x54
0048fb9c  07 90 a0 e1                                      mov sb, r7
0048fba0  d0 10 96 e1                                      ldrsb r1, [r6, r0]
0048fba4  04 30 94 e5                                      ldr r3, [r4, #4]
0048fba8  98 00 00 e0                                      mul r0, r8, r0
0048fbac  04 10 81 e2                                      add r1, r1, #4
0048fbb0  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0048fbb4  00 70 92 e7                                      ldr r7, [r2, r0]
0048fbb8  04 10 a0 e1                                      mov r1, r4
0048fbbc  03 00 a0 e1                                      mov r0, r3
0048fbc0  00 30 93 e5                                      ldr r3, [r3]
0048fbc4  0f e0 a0 e1                                      mov lr, pc
0048fbc8  08 f0 93 e5                                      ldr pc, [r3, #8]
0048fbcc  00 30 50 e2                                      subs r3, r0, #0
0048fbd0  4c 00 00 0a                                      beq #0x48fd08
0048fbd4  3c 20 93 e5                                      ldr r2, [r3, #0x3c]
0048fbd8  00 00 52 e3                                      cmp r2, #0
0048fbdc  49 00 00 0a                                      beq #0x48fd08
0048fbe0  14 10 97 e5                                      ldr r1, [r7, #0x14]
0048fbe4  00 20 92 e5                                      ldr r2, [r2]
0048fbe8  00 10 91 e5                                      ldr r1, [r1]
0048fbec  01 00 52 e1                                      cmp r2, r1
0048fbf0  44 00 00 0a                                      beq #0x48fd08
0048fbf4  18 32 9d e5                                      ldr r3, [sp, #0x218]
0048fbf8  1c 22 9d e5                                      ldr r2, [sp, #0x21c]
0048fbfc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0048fc00  02 30 63 e0                                      rsb r3, r3, r2
0048fc04  43 31 a0 e1                                      asr r3, r3, #2
0048fc08  9a 03 03 e0                                      mul r3, sl, r3
0048fc0c  03 00 5c e1                                      cmp ip, r3
0048fc10  0e 00 00 8a                                      bhi #0x48fc50
0048fc14  09 70 a0 e1                                      mov r7, sb
0048fc18  0c 60 94 e5                                      ldr r6, [r4, #0xc]
0048fc1c  00 00 56 e3                                      cmp r6, #0
0048fc20  2f 00 00 0a                                      beq #0x48fce4
0048fc24  01 60 46 e2                                      sub r6, r6, #1
0048fc28  0c 60 84 e5                                      str r6, [r4, #0xc]
0048fc2c  04 30 86 e2                                      add r3, r6, #4
0048fc30  03 31 94 e7                                      ldr r3, [r4, r3, lsl #2]
0048fc34  00 00 53 e3                                      cmp r3, #0
0048fc38  f7 ff ff 0a                                      beq #0x48fc1c
0048fc3c  03 00 a0 e1                                      mov r0, r3
0048fc40  00 30 93 e5                                      ldr r3, [r3]
0048fc44  0f e0 a0 e1                                      mov lr, pc
0048fc48  04 f0 93 e5                                      ldr pc, [r3, #4]
0048fc4c  f1 ff ff ea                                      b #0x48fc18
0048fc50  08 00 9d e5                                      ldr r0, [sp, #8]
0048fc54  09 f9 ff eb                                      bl #0x48e080
0048fc58  08 10 9d e5                                      ldr r1, [sp, #8]
0048fc5c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0048fc60  30 72 8d e5                                      str r7, [sp, #0x230]
0048fc64  85 f9 ff eb                                      bl #0x48e280
0048fc68  0b 00 a0 e1                                      mov r0, fp
0048fc6c  24 10 9d e5                                      ldr r1, [sp, #0x24]
0048fc70  ac fc ff eb                                      bl #0x48ef28
0048fc74  20 00 9d e5                                      ldr r0, [sp, #0x20]
0048fc78  54 e1 ff eb                                      bl #0x4881d0
0048fc7c  08 00 9d e5                                      ldr r0, [sp, #8]
0048fc80  52 e1 ff eb                                      bl #0x4881d0
0048fc84  18 22 9d e5                                      ldr r2, [sp, #0x218]
0048fc88  1c 32 9d e5                                      ldr r3, [sp, #0x21c]
0048fc8c  01 50 85 e2                                      add r5, r5, #1
0048fc90  05 00 a0 e1                                      mov r0, r5
0048fc94  03 30 62 e0                                      rsb r3, r2, r3
0048fc98  43 31 a0 e1                                      asr r3, r3, #2
0048fc9c  9a 03 03 e0                                      mul r3, sl, r3
0048fca0  03 00 55 e1                                      cmp r5, r3
0048fca4  bd ff ff 3a                                      blo #0x48fba0
0048fca8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0048fcac  11 f7 ff eb                                      bl #0x48d8f8
0048fcb0  01 60 a0 e3                                      mov r6, #1
0048fcb4  04 00 9d e5                                      ldr r0, [sp, #4]
0048fcb8  0e f7 ff eb                                      bl #0x48d8f8
0048fcbc  28 20 9d e5                                      ldr r2, [sp, #0x28]
0048fcc0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0048fcc4  06 00 a0 e1                                      mov r0, r6
0048fcc8  02 30 9c e7                                      ldr r3, [ip, r2]
0048fccc  cc 23 9d e5                                      ldr r2, [sp, #0x3cc]
0048fcd0  00 30 93 e5                                      ldr r3, [r3]
0048fcd4  03 00 52 e1                                      cmp r2, r3
0048fcd8  1d 00 00 1a                                      bne #0x48fd54
0048fcdc  f5 df 8d e2                                      add sp, sp, #0x3d4
0048fce0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048fce4  00 00 9d e5                                      ldr r0, [sp]
0048fce8  0e 07 00 eb                                      bl #0x491928
0048fcec  0b 00 a0 e1                                      mov r0, fp
0048fcf0  00 f7 ff eb                                      bl #0x48d8f8
0048fcf4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0048fcf8  04 70 87 e2                                      add r7, r7, #4
0048fcfc  07 00 51 e1                                      cmp r1, r7
0048fd00  96 ff ff 1a                                      bne #0x48fb60
0048fd04  ea ff ff ea                                      b #0x48fcb4
0048fd08  03 00 a0 e1                                      mov r0, r3
0048fd0c  00 c0 93 e5                                      ldr ip, [r3]
0048fd10  07 20 a0 e1                                      mov r2, r7
0048fd14  00 10 9d e5                                      ldr r1, [sp]
0048fd18  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0048fd1c  0f e0 a0 e1                                      mov lr, pc
0048fd20  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0048fd24  00 00 50 e3                                      cmp r0, #0
0048fd28  d5 ff ff 1a                                      bne #0x48fc84
0048fd2c  09 70 a0 e1                                      mov r7, sb
0048fd30  b8 ff ff ea                                      b #0x48fc18
0048fd34  04 00 94 e5                                      ldr r0, [r4, #4]
0048fd38  ed ef ff eb                                      bl #0x48bcf4
0048fd3c  00 20 a0 e1                                      mov r2, r0
0048fd40  34 00 8d e2                                      add r0, sp, #0x34
0048fd44  00 10 a0 e1                                      mov r1, r0
0048fd48  73 f1 ff eb                                      bl #0x48c31c
0048fd4c  07 60 a0 e1                                      mov r6, r7
0048fd50  d7 ff ff ea                                      b #0x48fcb4
0048fd54  6d f9 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048fd58  30 51 50 00 ac 40 00 00 9c 23 00 00              .byte 0x30, 0x51, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0x9c, 0x23, 0x00, 0x00

; FUNCTION 0x00490304, declared_size=540, range_size=540, mode=arm
; class-group: rnd::Rule::Impl
; alias: _ZN3rnd4Rule4Impl7OneStepEPNS_4TileEPKNS_4ExitES6_
; demangled: rnd::Rule::Impl::OneStep(rnd::Tile*, rnd::Exit const*, rnd::Exit const*)
; decoder-mode: arm
00490304  08 c2 9f e5                                      ldr ip, [pc, #0x208]
00490308  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049030c  04 e2 9f e5                                      ldr lr, [pc, #0x204]
00490310  0c c0 8f e0                                      add ip, pc, ip
00490314  02 40 a0 e1                                      mov r4, r2
00490318  0e 20 9c e7                                      ldr r2, [ip, lr]
0049031c  53 df 4d e2                                      sub sp, sp, #0x14c
00490320  10 00 8d e5                                      str r0, [sp, #0x10]
00490324  00 20 92 e5                                      ldr r2, [r2]
00490328  18 e0 8d e5                                      str lr, [sp, #0x18]
0049032c  0c c0 8d e5                                      str ip, [sp, #0xc]
00490330  14 10 8d e5                                      str r1, [sp, #0x14]
00490334  20 50 8d e2                                      add r5, sp, #0x20
00490338  28 10 94 e5                                      ldr r1, [r4, #0x28]
0049033c  00 80 a0 e3                                      mov r8, #0
00490340  05 00 a0 e1                                      mov r0, r5
00490344  1c 30 8d e5                                      str r3, [sp, #0x1c]
00490348  44 21 8d e5                                      str r2, [sp, #0x144]
0049034c  20 80 8d e5                                      str r8, [sp, #0x20]
00490350  24 80 8d e5                                      str r8, [sp, #0x24]
00490354  28 80 8d e5                                      str r8, [sp, #0x28]
00490358  f4 f7 ff eb                                      bl #0x48e330
0049035c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00490360  08 00 53 e1                                      cmp r3, r8
00490364  16 00 00 da                                      ble #0x4903c4
00490368  30 b0 8d e2                                      add fp, sp, #0x30
0049036c  d4 70 8d e2                                      add r7, sp, #0xd4
00490370  04 60 a0 e1                                      mov r6, r4
00490374  04 a0 8b e2                                      add sl, fp, #4
00490378  2c 90 96 e5                                      ldr sb, [r6, #0x2c]
0049037c  07 00 a0 e1                                      mov r0, r7
00490380  3e f7 ff eb                                      bl #0x48e080
00490384  07 10 a0 e1                                      mov r1, r7
00490388  0a 00 a0 e1                                      mov r0, sl
0049038c  30 90 8d e5                                      str sb, [sp, #0x30]
00490390  ba f7 ff eb                                      bl #0x48e280
00490394  0b 10 a0 e1                                      mov r1, fp
00490398  05 00 a0 e1                                      mov r0, r5
0049039c  e1 fa ff eb                                      bl #0x48ef28
004903a0  0a 00 a0 e1                                      mov r0, sl
004903a4  89 df ff eb                                      bl #0x4881d0
004903a8  07 00 a0 e1                                      mov r0, r7
004903ac  87 df ff eb                                      bl #0x4881d0
004903b0  28 30 94 e5                                      ldr r3, [r4, #0x28]
004903b4  01 80 88 e2                                      add r8, r8, #1
004903b8  04 60 86 e2                                      add r6, r6, #4
004903bc  08 00 53 e1                                      cmp r3, r8
004903c0  ec ff ff ca                                      bgt #0x490378
004903c4  10 10 9d e5                                      ldr r1, [sp, #0x10]
004903c8  52 2f 8d e2                                      add r2, sp, #0x148
004903cc  00 30 a0 e3                                      mov r3, #0
004903d0  1c 31 22 e5                                      str r3, [r2, #-0x11c]!
004903d4  00 30 91 e5                                      ldr r3, [r1]
004903d8  01 00 a0 e1                                      mov r0, r1
004903dc  05 10 a0 e1                                      mov r1, r5
004903e0  0f e0 a0 e1                                      mov lr, pc
004903e4  08 f0 93 e5                                      ldr pc, [r3, #8]
004903e8  24 20 9d e5                                      ldr r2, [sp, #0x24]
004903ec  20 60 9d e5                                      ldr r6, [sp, #0x20]
004903f0  3d 3f 0c e3                                      movw r3, #0xcf3d
004903f4  f3 3c 43 e3                                      movt r3, #0x3cf3
004903f8  02 10 66 e0                                      rsb r1, r6, r2
004903fc  41 11 a0 e1                                      asr r1, r1, #2
00490400  93 01 03 e0                                      mul r3, r3, r1
00490404  00 00 53 e3                                      cmp r3, #0
00490408  36 00 00 0a                                      beq #0x4904e8
0049040c  06 00 52 e1                                      cmp r2, r6
00490410  22 00 00 0a                                      beq #0x4904a0
00490414  14 b0 9d e5                                      ldr fp, [sp, #0x14]
00490418  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
0049041c  14 50 8d e5                                      str r5, [sp, #0x14]
00490420  10 50 9d e5                                      ldr r5, [sp, #0x10]
00490424  84 70 8d e2                                      add r7, sp, #0x84
00490428  04 80 a0 e1                                      mov r8, r4
0049042c  06 10 a0 e1                                      mov r1, r6
00490430  04 40 91 e4                                      ldr r4, [r1], #4
00490434  07 00 a0 e1                                      mov r0, r7
00490438  90 f7 ff eb                                      bl #0x48e280
0049043c  0b 00 a0 e1                                      mov r0, fp
00490440  09 10 a0 e1                                      mov r1, sb
00490444  08 20 a0 e1                                      mov r2, r8
00490448  04 30 a0 e1                                      mov r3, r4
0049044c  00 70 8d e5                                      str r7, [sp]
00490450  96 05 00 eb                                      bl #0x491ab0
00490454  00 a0 50 e2                                      subs sl, r0, #0
00490458  09 00 00 0a                                      beq #0x490484
0049045c  04 20 a0 e1                                      mov r2, r4
00490460  00 30 95 e5                                      ldr r3, [r5]
00490464  05 00 a0 e1                                      mov r0, r5
00490468  0a 10 a0 e1                                      mov r1, sl
0049046c  0f e0 a0 e1                                      mov lr, pc
00490470  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00490474  00 00 50 e3                                      cmp r0, #0
00490478  15 00 00 1a                                      bne #0x4904d4
0049047c  0a 00 a0 e1                                      mov r0, sl
00490480  08 05 00 eb                                      bl #0x4918a8
00490484  07 00 a0 e1                                      mov r0, r7
00490488  50 df ff eb                                      bl #0x4881d0
0049048c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00490490  54 60 86 e2                                      add r6, r6, #0x54
00490494  03 00 56 e1                                      cmp r6, r3
00490498  e3 ff ff 1a                                      bne #0x49042c
0049049c  14 50 9d e5                                      ldr r5, [sp, #0x14]
004904a0  00 40 a0 e3                                      mov r4, #0
004904a4  05 00 a0 e1                                      mov r0, r5
004904a8  12 f5 ff eb                                      bl #0x48d8f8
004904ac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004904b0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
004904b4  44 21 9d e5                                      ldr r2, [sp, #0x144]
004904b8  04 00 a0 e1                                      mov r0, r4
004904bc  0c 30 91 e7                                      ldr r3, [r1, ip]
004904c0  00 30 93 e5                                      ldr r3, [r3]
004904c4  03 00 52 e1                                      cmp r2, r3
004904c8  10 00 00 1a                                      bne #0x490510
004904cc  53 df 8d e2                                      add sp, sp, #0x14c
004904d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004904d4  07 00 a0 e1                                      mov r0, r7
004904d8  14 50 9d e5                                      ldr r5, [sp, #0x14]
004904dc  01 40 a0 e3                                      mov r4, #1
004904e0  3a df ff eb                                      bl #0x4881d0
004904e4  ee ff ff ea                                      b #0x4904a4
004904e8  10 20 9d e5                                      ldr r2, [sp, #0x10]
004904ec  28 10 9f e5                                      ldr r1, [pc, #0x28]
004904f0  49 0f 8d e2                                      add r0, sp, #0x124
004904f4  04 30 92 e5                                      ldr r3, [r2, #4]
004904f8  01 10 8f e0                                      add r1, pc, r1
004904fc  6c 20 93 e5                                      ldr r2, [r3, #0x6c]
00490500  77 f9 f9 eb                                      bl #0x30eae4
00490504  20 60 9d e5                                      ldr r6, [sp, #0x20]
00490508  24 20 9d e5                                      ldr r2, [sp, #0x24]
0049050c  be ff ff ea                                      b #0x49040c
00490510  7e f7 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00490514  80 47 50 00 ac 40 00 00 f0 49 44 00              .byte 0x80, 0x47, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x49, 0x44, 0x00
