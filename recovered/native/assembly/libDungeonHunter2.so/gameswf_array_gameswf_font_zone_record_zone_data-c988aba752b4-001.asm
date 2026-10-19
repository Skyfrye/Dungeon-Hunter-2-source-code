; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ced18, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::font::zone_record::zone_data>
; alias: _ZN7gameswf5arrayINS_4font11zone_record9zone_dataEE7reserveEi
; demangled: gameswf::array<gameswf::font::zone_record::zone_data>::reserve(int)
; decoder-mode: arm
007ced18  10 40 2d e9                                      push {r4, lr}
007ced1c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007ced20  00 40 a0 e1                                      mov r4, r0
007ced24  00 00 53 e3                                      cmp r3, #0
007ced28  0f 00 00 1a                                      bne #0x7ced6c
007ced2c  00 00 51 e3                                      cmp r1, #0
007ced30  08 20 90 e5                                      ldr r2, [r0, #8]
007ced34  08 10 80 e5                                      str r1, [r0, #8]
007ced38  0c 00 00 1a                                      bne #0x7ced70
007ced3c  00 00 90 e5                                      ldr r0, [r0]
007ced40  00 00 50 e3                                      cmp r0, #0
007ced44  01 00 00 0a                                      beq #0x7ced50
007ced48  82 11 a0 e1                                      lsl r1, r2, #3
007ced4c  79 0f fe eb                                      bl #0x752b38
007ced50  00 30 a0 e3                                      mov r3, #0
007ced54  00 30 84 e5                                      str r3, [r4]
007ced58  10 80 bd e8                                      pop {r4, pc}
007ced5c  81 01 a0 e1                                      lsl r0, r1, #3
007ced60  0c 10 a0 e1                                      mov r1, ip
007ced64  8c 0f fe eb                                      bl #0x752b9c
007ced68  00 00 84 e5                                      str r0, [r4]
007ced6c  10 80 bd e8                                      pop {r4, pc}
007ced70  00 c0 90 e5                                      ldr ip, [r0]
007ced74  00 00 5c e3                                      cmp ip, #0
007ced78  f7 ff ff 0a                                      beq #0x7ced5c
007ced7c  0c 00 a0 e1                                      mov r0, ip
007ced80  81 11 a0 e1                                      lsl r1, r1, #3
007ced84  82 21 a0 e1                                      lsl r2, r2, #3
007ced88  87 0f fe eb                                      bl #0x752bac
007ced8c  00 00 84 e5                                      str r0, [r4]
007ced90  10 80 bd e8                                      pop {r4, pc}
