; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078ad54, declared_size=108, range_size=108, mode=arm
; class-group: void gameswf::array<gameswf::edit_text_character::text_attributes>
; alias: _ZN7gameswf5arrayINS_19edit_text_character15text_attributesEE9push_backIS2_EEvRKT_
; demangled: void gameswf::array<gameswf::edit_text_character::text_attributes>::push_back<gameswf::edit_text_character::text_attributes>(gameswf::edit_text_character::text_attributes const&)
; decoder-mode: arm
0078ad54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078ad58  04 30 90 e5                                      ldr r3, [r0, #4]
0078ad5c  08 20 90 e5                                      ldr r2, [r0, #8]
0078ad60  00 40 a0 e1                                      mov r4, r0
0078ad64  01 60 83 e2                                      add r6, r3, #1
0078ad68  02 00 56 e1                                      cmp r6, r2
0078ad6c  01 50 a0 e1                                      mov r5, r1
0078ad70  0e 00 00 ca                                      bgt #0x78adb0
0078ad74  00 00 95 e5                                      ldr r0, [r5]
0078ad78  00 70 94 e5                                      ldr r7, [r4]
0078ad7c  00 00 50 e3                                      cmp r0, #0
0078ad80  03 02 87 e7                                      str r0, [r7, r3, lsl #4]
0078ad84  03 72 87 e0                                      add r7, r7, r3, lsl #4
0078ad88  00 00 00 0a                                      beq #0x78ad90
0078ad8c  b4 3b ff eb                                      bl #0x759c64
0078ad90  04 30 95 e5                                      ldr r3, [r5, #4]
0078ad94  04 30 87 e5                                      str r3, [r7, #4]
0078ad98  08 30 95 e5                                      ldr r3, [r5, #8]
0078ad9c  08 30 87 e5                                      str r3, [r7, #8]
0078ada0  0c 30 d5 e5                                      ldrb r3, [r5, #0xc]
0078ada4  0c 30 c7 e5                                      strb r3, [r7, #0xc]
0078ada8  04 60 84 e5                                      str r6, [r4, #4]
0078adac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078adb0  c6 10 86 e0                                      add r1, r6, r6, asr #1
0078adb4  30 fe ff eb                                      bl #0x78a67c
0078adb8  04 30 94 e5                                      ldr r3, [r4, #4]
0078adbc  ec ff ff ea                                      b #0x78ad74
