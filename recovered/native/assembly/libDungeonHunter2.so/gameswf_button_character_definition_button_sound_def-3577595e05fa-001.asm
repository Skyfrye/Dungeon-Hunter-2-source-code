; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c72ec, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::button_character_definition::button_sound_def
; alias: _ZN7gameswf27button_character_definition16button_sound_defD1Ev
; demangled: gameswf::button_character_definition::button_sound_def::~button_sound_def()
; decoder-mode: arm
007c72ec  70 40 2d e9                                      push {r4, r5, r6, lr}
007c72f0  00 60 50 e2                                      subs r6, r0, #0
007c72f4  0a 00 00 0a                                      beq #0x7c7324
007c72f8  b0 40 86 e2                                      add r4, r6, #0xb0
007c72fc  2c 40 44 e2                                      sub r4, r4, #0x2c
007c7300  1c 50 84 e2                                      add r5, r4, #0x1c
007c7304  00 10 a0 e3                                      mov r1, #0
007c7308  05 00 a0 e1                                      mov r0, r5
007c730c  6a d6 fe eb                                      bl #0x77ccbc
007c7310  05 00 a0 e1                                      mov r0, r5
007c7314  00 10 a0 e3                                      mov r1, #0
007c7318  48 d6 fe eb                                      bl #0x77cc40
007c731c  06 00 54 e1                                      cmp r4, r6
007c7320  f5 ff ff 1a                                      bne #0x7c72fc
007c7324  06 00 a0 e1                                      mov r0, r6
007c7328  70 80 bd e8                                      pop {r4, r5, r6, pc}
