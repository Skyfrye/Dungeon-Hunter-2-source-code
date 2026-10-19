; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a801c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<RenderFX::DepthSearchEntry>
; alias: _ZN7gameswf5arrayIN8RenderFX16DepthSearchEntryEE7reserveEi
; demangled: gameswf::array<RenderFX::DepthSearchEntry>::reserve(int)
; decoder-mode: arm
007a801c  10 40 2d e9                                      push {r4, lr}
007a8020  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007a8024  00 40 a0 e1                                      mov r4, r0
007a8028  00 00 53 e3                                      cmp r3, #0
007a802c  0f 00 00 1a                                      bne #0x7a8070
007a8030  00 00 51 e3                                      cmp r1, #0
007a8034  08 20 90 e5                                      ldr r2, [r0, #8]
007a8038  08 10 80 e5                                      str r1, [r0, #8]
007a803c  0c 00 00 1a                                      bne #0x7a8074
007a8040  00 00 90 e5                                      ldr r0, [r0]
007a8044  00 00 50 e3                                      cmp r0, #0
007a8048  01 00 00 0a                                      beq #0x7a8054
007a804c  82 11 a0 e1                                      lsl r1, r2, #3
007a8050  b8 aa fe eb                                      bl #0x752b38
007a8054  00 30 a0 e3                                      mov r3, #0
007a8058  00 30 84 e5                                      str r3, [r4]
007a805c  10 80 bd e8                                      pop {r4, pc}
007a8060  81 01 a0 e1                                      lsl r0, r1, #3
007a8064  0c 10 a0 e1                                      mov r1, ip
007a8068  cb aa fe eb                                      bl #0x752b9c
007a806c  00 00 84 e5                                      str r0, [r4]
007a8070  10 80 bd e8                                      pop {r4, pc}
007a8074  00 c0 90 e5                                      ldr ip, [r0]
007a8078  00 00 5c e3                                      cmp ip, #0
007a807c  f7 ff ff 0a                                      beq #0x7a8060
007a8080  0c 00 a0 e1                                      mov r0, ip
007a8084  81 11 a0 e1                                      lsl r1, r1, #3
007a8088  82 21 a0 e1                                      lsl r2, r2, #3
007a808c  c6 aa fe eb                                      bl #0x752bac
007a8090  00 00 84 e5                                      str r0, [r4]
007a8094  10 80 bd e8                                      pop {r4, pc}
