; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056f0f8, declared_size=88, range_size=88, mode=arm
; class-group: boost::shared_ptr<char>
; alias: _ZN5boost10shared_ptrIcEaSERKS1_
; demangled: boost::shared_ptr<char>::operator=(boost::shared_ptr<char> const&)
; decoder-mode: arm
0056f0f8  10 40 2d e9                                      push {r4, lr}
0056f0fc  04 20 91 e4                                      ldr r2, [r1], #4
0056f100  08 d0 4d e2                                      sub sp, sp, #8
0056f104  08 30 8d e2                                      add r3, sp, #8
0056f108  08 20 23 e5                                      str r2, [r3, #-8]!
0056f10c  00 40 a0 e1                                      mov r4, r0
0056f110  04 00 83 e2                                      add r0, r3, #4
0056f114  58 ff ff eb                                      bl #0x56ee7c
0056f118  04 30 94 e5                                      ldr r3, [r4, #4]
0056f11c  00 10 9d e5                                      ldr r1, [sp]
0056f120  00 00 94 e5                                      ldr r0, [r4]
0056f124  04 20 9d e5                                      ldr r2, [sp, #4]
0056f128  00 00 53 e3                                      cmp r3, #0
0056f12c  00 00 8d e5                                      str r0, [sp]
0056f130  06 00 84 e8                                      stm r4, {r1, r2}
0056f134  02 00 00 0a                                      beq #0x56f144
0056f138  03 00 a0 e1                                      mov r0, r3
0056f13c  04 30 8d e5                                      str r3, [sp, #4]
0056f140  c2 ff ff eb                                      bl #0x56f050
0056f144  04 00 a0 e1                                      mov r0, r4
0056f148  08 d0 8d e2                                      add sp, sp, #8
0056f14c  10 80 bd e8                                      pop {r4, pc}
