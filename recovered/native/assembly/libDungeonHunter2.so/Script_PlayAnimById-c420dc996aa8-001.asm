; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045569c, declared_size=8, range_size=8, mode=arm
; class-group: Script_PlayAnimById
; alias: _ZNK19Script_PlayAnimById10IsBlockingEv
; demangled: Script_PlayAnimById::IsBlocking() const
; decoder-mode: arm
0045569c  00 00 a0 e3                                      mov r0, #0
004556a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045e24c, declared_size=296, range_size=296, mode=arm
; class-group: Script_PlayAnimById
; alias: _ZN19Script_PlayAnimById7ExecuteEbi
; demangled: Script_PlayAnimById::Execute(bool, int)
; decoder-mode: arm
0045e24c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045e250  08 41 9f e5                                      ldr r4, [pc, #0x108]
0045e254  08 51 9f e5                                      ldr r5, [pc, #0x108]
0045e258  3c d0 4d e2                                      sub sp, sp, #0x3c
0045e25c  04 40 8f e0                                      add r4, pc, r4
0045e260  05 30 94 e7                                      ldr r3, [r4, r5]
0045e264  00 60 51 e2                                      subs r6, r1, #0
0045e268  02 a0 a0 e1                                      mov sl, r2
0045e26c  00 30 93 e5                                      ldr r3, [r3]
0045e270  34 30 8d e5                                      str r3, [sp, #0x34]
0045e274  06 00 00 0a                                      beq #0x45e294
0045e278  05 30 94 e7                                      ldr r3, [r4, r5]
0045e27c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045e280  00 30 93 e5                                      ldr r3, [r3]
0045e284  03 00 52 e1                                      cmp r2, r3
0045e288  33 00 00 1a                                      bne #0x45e35c
0045e28c  3c d0 8d e2                                      add sp, sp, #0x3c
0045e290  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045e294  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0045e298  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045e29c  1c 80 8d e2                                      add r8, sp, #0x1c
0045e2a0  03 b0 94 e7                                      ldr fp, [r4, r3]
0045e2a4  0c 90 8d e2                                      add sb, sp, #0xc
0045e2a8  0b 00 a0 e1                                      mov r0, fp
0045e2ac  75 65 fb eb                                      bl #0x337888
0045e2b0  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0045e2b4  18 20 8d e2                                      add r2, sp, #0x18
0045e2b8  08 00 a0 e1                                      mov r0, r8
0045e2bc  01 10 8f e0                                      add r1, pc, r1
0045e2c0  89 d7 fa eb                                      bl #0x3140ec
0045e2c4  08 10 a0 e1                                      mov r1, r8
0045e2c8  0b 00 a0 e1                                      mov r0, fp
0045e2cc  ed 65 fb eb                                      bl #0x337a88
0045e2d0  08 00 a0 e1                                      mov r0, r8
0045e2d4  de e7 fa eb                                      bl #0x318254
0045e2d8  90 10 9f e5                                      ldr r1, [pc, #0x90]
0045e2dc  14 20 97 e5                                      ldr r2, [r7, #0x14]
0045e2e0  0a 30 a0 e1                                      mov r3, sl
0045e2e4  01 10 94 e7                                      ldr r1, [r4, r1]
0045e2e8  09 00 a0 e1                                      mov r0, sb
0045e2ec  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045e2f0  00 60 8d e5                                      str r6, [sp]
0045e2f4  04 60 8d e5                                      str r6, [sp, #4]
0045e2f8  68 b2 fb eb                                      bl #0x34aca0
0045e2fc  09 00 a0 e1                                      mov r0, sb
0045e300  06 10 a0 e1                                      mov r1, r6
0045e304  ad 86 fb eb                                      bl #0x33fdc0
0045e308  00 00 50 e3                                      cmp r0, #0
0045e30c  d9 ff ff 0a                                      beq #0x45e278
0045e310  09 00 a0 e1                                      mov r0, sb
0045e314  f2 86 fb eb                                      bl #0x33fee4
0045e318  00 00 50 e3                                      cmp r0, #0
0045e31c  d5 ff ff 0a                                      beq #0x45e278
0045e320  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
0045e324  00 00 53 e3                                      cmp r3, #0
0045e328  d2 ff ff 0a                                      beq #0x45e278
0045e32c  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0045e330  00 00 5c e3                                      cmp ip, #0
0045e334  cf ff ff 0a                                      beq #0x45e278
0045e338  0c 20 d7 e5                                      ldrb r2, [r7, #0xc]
0045e33c  08 10 97 e5                                      ldr r1, [r7, #8]
0045e340  0c 00 a0 e1                                      mov r0, ip
0045e344  06 30 a0 e1                                      mov r3, r6
0045e348  00 c0 9c e5                                      ldr ip, [ip]
0045e34c  00 60 8d e5                                      str r6, [sp]
0045e350  0f e0 a0 e1                                      mov lr, pc
0045e354  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0045e358  c6 ff ff ea                                      b #0x45e278
0045e35c  eb bf fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045e360  34 68 53 00 ac 40 00 00 84 08 00 00 c4 ed 46 00  .byte 0x34, 0x68, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0xed, 0x46, 0x00
0045e370  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
