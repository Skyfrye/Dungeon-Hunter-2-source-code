; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056f288, declared_size=100, range_size=100, mode=arm
; class-group: void boost::shared_ptr<char>
; alias: _ZN5boost10shared_ptrIcE5resetIcEEvPT_
; demangled: void boost::shared_ptr<char>::reset<char>(char*)
; decoder-mode: arm
0056f288  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f28c  08 d0 4d e2                                      sub sp, sp, #8
0056f290  08 50 8d e2                                      add r5, sp, #8
0056f294  08 10 25 e5                                      str r1, [r5, #-8]!
0056f298  00 40 a0 e1                                      mov r4, r0
0056f29c  01 60 a0 e1                                      mov r6, r1
0056f2a0  04 00 85 e2                                      add r0, r5, #4
0056f2a4  2b ff ff eb                                      bl #0x56ef58
0056f2a8  06 10 a0 e1                                      mov r1, r6
0056f2ac  06 20 a0 e1                                      mov r2, r6
0056f2b0  0d 00 a0 e1                                      mov r0, sp
0056f2b4  2b fe ff eb                                      bl #0x56eb68
0056f2b8  0a 00 94 e8                                      ldm r4, {r1, r3}
0056f2bc  00 20 9d e5                                      ldr r2, [sp]
0056f2c0  00 10 8d e5                                      str r1, [sp]
0056f2c4  04 10 9d e5                                      ldr r1, [sp, #4]
0056f2c8  00 00 53 e3                                      cmp r3, #0
0056f2cc  00 20 84 e5                                      str r2, [r4]
0056f2d0  04 10 84 e5                                      str r1, [r4, #4]
0056f2d4  02 00 00 0a                                      beq #0x56f2e4
0056f2d8  03 00 a0 e1                                      mov r0, r3
0056f2dc  04 30 8d e5                                      str r3, [sp, #4]
0056f2e0  5a ff ff eb                                      bl #0x56f050
0056f2e4  08 d0 8d e2                                      add sp, sp, #8
0056f2e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
