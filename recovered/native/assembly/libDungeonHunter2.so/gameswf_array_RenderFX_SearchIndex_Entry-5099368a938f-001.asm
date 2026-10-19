; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a823c, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<RenderFX::SearchIndex::Entry>
; alias: _ZN7gameswf5arrayIN8RenderFX11SearchIndex5EntryEE7reserveEi
; demangled: gameswf::array<RenderFX::SearchIndex::Entry>::reserve(int)
; decoder-mode: arm
007a823c  10 40 2d e9                                      push {r4, lr}
007a8240  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007a8244  00 40 a0 e1                                      mov r4, r0
007a8248  00 00 53 e3                                      cmp r3, #0
007a824c  11 00 00 1a                                      bne #0x7a8298
007a8250  00 00 51 e3                                      cmp r1, #0
007a8254  08 20 90 e5                                      ldr r2, [r0, #8]
007a8258  08 10 80 e5                                      str r1, [r0, #8]
007a825c  0e 00 00 1a                                      bne #0x7a829c
007a8260  00 00 90 e5                                      ldr r0, [r0]
007a8264  00 00 50 e3                                      cmp r0, #0
007a8268  02 00 00 0a                                      beq #0x7a8278
007a826c  41 1f a0 e3                                      mov r1, #0x104
007a8270  91 02 01 e0                                      mul r1, r1, r2
007a8274  2f aa fe eb                                      bl #0x752b38
007a8278  00 30 a0 e3                                      mov r3, #0
007a827c  00 30 84 e5                                      str r3, [r4]
007a8280  10 80 bd e8                                      pop {r4, pc}
007a8284  41 0f a0 e3                                      mov r0, #0x104
007a8288  90 01 00 e0                                      mul r0, r0, r1
007a828c  0c 10 a0 e1                                      mov r1, ip
007a8290  41 aa fe eb                                      bl #0x752b9c
007a8294  00 00 84 e5                                      str r0, [r4]
007a8298  10 80 bd e8                                      pop {r4, pc}
007a829c  00 c0 90 e5                                      ldr ip, [r0]
007a82a0  00 00 5c e3                                      cmp ip, #0
007a82a4  f6 ff ff 0a                                      beq #0x7a8284
007a82a8  41 ef a0 e3                                      mov lr, #0x104
007a82ac  9e 02 02 e0                                      mul r2, lr, r2
007a82b0  0c 00 a0 e1                                      mov r0, ip
007a82b4  9e 01 01 e0                                      mul r1, lr, r1
007a82b8  3b aa fe eb                                      bl #0x752bac
007a82bc  00 00 84 e5                                      str r0, [r4]
007a82c0  10 80 bd e8                                      pop {r4, pc}
