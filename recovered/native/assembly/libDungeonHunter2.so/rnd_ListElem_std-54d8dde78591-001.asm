; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00490550, declared_size=128, range_size=128, mode=arm
; class-group: rnd::ListElem* std
; alias: _ZSt7find_ifIPN3rnd8ListElemENS0_11BlockSearchEET_S4_S4_T0_
; demangled: rnd::ListElem* std::find_if<rnd::ListElem*, rnd::BlockSearch>(rnd::ListElem*, rnd::ListElem*, rnd::BlockSearch)
; decoder-mode: arm
00490550  70 30 9f e5                                      ldr r3, [pc, #0x70]
00490554  70 c0 9f e5                                      ldr ip, [pc, #0x70]
00490558  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0049055c  03 30 8f e0                                      add r3, pc, r3
00490560  0c 50 93 e7                                      ldr r5, [r3, ip]
00490564  54 d0 4d e2                                      sub sp, sp, #0x54
00490568  04 40 8d e2                                      add r4, sp, #4
0049056c  00 c0 95 e5                                      ldr ip, [r5]
00490570  01 60 a0 e1                                      mov r6, r1
00490574  00 70 a0 e1                                      mov r7, r0
00490578  02 10 a0 e1                                      mov r1, r2
0049057c  04 00 a0 e1                                      mov r0, r4
00490580  4c c0 8d e5                                      str ip, [sp, #0x4c]
00490584  e5 ff ff eb                                      bl #0x490520
00490588  06 10 a0 e1                                      mov r1, r6
0049058c  04 20 a0 e1                                      mov r2, r4
00490590  0d 30 a0 e1                                      mov r3, sp
00490594  07 00 a0 e1                                      mov r0, r7
00490598  4d f0 ff eb                                      bl #0x48c6d4
0049059c  00 60 a0 e1                                      mov r6, r0
004905a0  04 00 a0 e1                                      mov r0, r4
004905a4  6c f5 ff eb                                      bl #0x48db5c
004905a8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
004905ac  00 30 95 e5                                      ldr r3, [r5]
004905b0  06 00 a0 e1                                      mov r0, r6
004905b4  03 00 52 e1                                      cmp r2, r3
004905b8  01 00 00 1a                                      bne #0x4905c4
004905bc  54 d0 8d e2                                      add sp, sp, #0x54
004905c0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004905c4  51 f7 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004905c8  34 45 50 00 ac 40 00 00                          .byte 0x34, 0x45, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00
