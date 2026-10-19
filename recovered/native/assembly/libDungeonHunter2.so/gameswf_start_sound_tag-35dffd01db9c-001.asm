; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077cbe4, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::start_sound_tag
; alias: _ZN7gameswf15start_sound_tag7executeEPNS_9characterE
; demangled: gameswf::start_sound_tag::execute(gameswf::character*)
; decoder-mode: arm
0077cbe4  10 40 2d e9                                      push {r4, lr}
0077cbe8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0077cbec  00 10 a0 e1                                      mov r1, r0
0077cbf0  03 30 9f e7                                      ldr r3, [pc, r3]
0077cbf4  00 00 53 e3                                      cmp r3, #0
0077cbf8  08 00 00 0a                                      beq #0x77cc20
0077cbfc  0c 20 d0 e5                                      ldrb r2, [r0, #0xc]
0077cc00  00 00 52 e3                                      cmp r2, #0
0077cc04  06 00 00 1a                                      bne #0x77cc24
0077cc08  03 00 a0 e1                                      mov r0, r3
0077cc0c  08 20 91 e5                                      ldr r2, [r1, #8]
0077cc10  00 30 93 e5                                      ldr r3, [r3]
0077cc14  b4 10 d1 e1                                      ldrh r1, [r1, #4]
0077cc18  0f e0 a0 e1                                      mov lr, pc
0077cc1c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0077cc20  10 80 bd e8                                      pop {r4, pc}
0077cc24  03 00 a0 e1                                      mov r0, r3
0077cc28  b4 10 d1 e1                                      ldrh r1, [r1, #4]
0077cc2c  00 30 93 e5                                      ldr r3, [r3]
0077cc30  0f e0 a0 e1                                      mov lr, pc
0077cc34  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0077cc38  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0077cc3c  bc fd 27 00                                      .byte 0xbc, 0xfd, 0x27, 0x00

; FUNCTION 0x0077cd28, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::start_sound_tag
; alias: _ZN7gameswf15start_sound_tagD1Ev
; demangled: gameswf::start_sound_tag::~start_sound_tag()
; decoder-mode: arm
0077cd28  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0077cd2c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0077cd30  70 40 2d e9                                      push {r4, r5, r6, lr}
0077cd34  03 30 8f e0                                      add r3, pc, r3
0077cd38  02 20 93 e7                                      ldr r2, [r3, r2]
0077cd3c  00 40 a0 e1                                      mov r4, r0
0077cd40  00 50 a0 e1                                      mov r5, r0
0077cd44  08 20 82 e2                                      add r2, r2, #8
0077cd48  10 20 84 e4                                      str r2, [r4], #0x10
0077cd4c  04 00 a0 e1                                      mov r0, r4
0077cd50  00 10 a0 e3                                      mov r1, #0
0077cd54  d8 ff ff eb                                      bl #0x77ccbc
0077cd58  04 00 a0 e1                                      mov r0, r4
0077cd5c  00 10 a0 e3                                      mov r1, #0
0077cd60  b6 ff ff eb                                      bl #0x77cc40
0077cd64  05 00 a0 e1                                      mov r0, r5
0077cd68  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0077cd6c  5c 7d 21 00 e8 3a 00 00                          .byte 0x5c, 0x7d, 0x21, 0x00, 0xe8, 0x3a, 0x00, 0x00

; FUNCTION 0x0077cd74, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::start_sound_tag
; alias: _ZN7gameswf15start_sound_tag4readEPNS_6streamEiPNS_20movie_definition_subEPKNS_12sound_sampleE
; demangled: gameswf::start_sound_tag::read(gameswf::stream*, int, gameswf::movie_definition_sub*, gameswf::sound_sample const*)
; decoder-mode: arm
0077cd74  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077cd78  01 40 a0 e1                                      mov r4, r1
0077cd7c  00 50 a0 e1                                      mov r5, r0
0077cd80  02 10 a0 e3                                      mov r1, #2
0077cd84  04 00 a0 e1                                      mov r0, r4
0077cd88  03 70 a0 e1                                      mov r7, r3
0077cd8c  04 1b 00 eb                                      bl #0x7839a4
0077cd90  01 10 a0 e3                                      mov r1, #1
0077cd94  04 00 a0 e1                                      mov r0, r4
0077cd98  01 1b 00 eb                                      bl #0x7839a4
0077cd9c  00 00 50 e2                                      subs r0, r0, #0
0077cda0  01 00 a0 13                                      movne r0, #1
0077cda4  0c 00 c5 e5                                      strb r0, [r5, #0xc]
0077cda8  01 10 a0 e3                                      mov r1, #1
0077cdac  04 00 a0 e1                                      mov r0, r4
0077cdb0  fb 1a 00 eb                                      bl #0x7839a4
0077cdb4  01 10 a0 e3                                      mov r1, #1
0077cdb8  04 00 a0 e1                                      mov r0, r4
0077cdbc  f8 1a 00 eb                                      bl #0x7839a4
0077cdc0  01 10 a0 e3                                      mov r1, #1
0077cdc4  00 60 a0 e1                                      mov r6, r0
0077cdc8  04 00 a0 e1                                      mov r0, r4
0077cdcc  f4 1a 00 eb                                      bl #0x7839a4
0077cdd0  01 10 a0 e3                                      mov r1, #1
0077cdd4  00 80 a0 e1                                      mov r8, r0
0077cdd8  04 00 a0 e1                                      mov r0, r4
0077cddc  f0 1a 00 eb                                      bl #0x7839a4
0077cde0  01 10 a0 e3                                      mov r1, #1
0077cde4  00 a0 a0 e1                                      mov sl, r0
0077cde8  04 00 a0 e1                                      mov r0, r4
0077cdec  ec 1a 00 eb                                      bl #0x7839a4
0077cdf0  00 00 50 e3                                      cmp r0, #0
0077cdf4  31 00 00 1a                                      bne #0x77cec0
0077cdf8  00 00 5a e3                                      cmp sl, #0
0077cdfc  2c 00 00 1a                                      bne #0x77ceb4
0077ce00  00 00 58 e3                                      cmp r8, #0
0077ce04  26 00 00 1a                                      bne #0x77cea4
0077ce08  00 00 56 e3                                      cmp r6, #0
0077ce0c  08 00 00 1a                                      bne #0x77ce34
0077ce10  20 30 9d e5                                      ldr r3, [sp, #0x20]
0077ce14  07 00 a0 e1                                      mov r0, r7
0077ce18  05 10 a0 e1                                      mov r1, r5
0077ce1c  b0 32 d3 e1                                      ldrh r3, [r3, #0x20]
0077ce20  b4 30 c5 e1                                      strh r3, [r5, #4]
0077ce24  00 30 97 e5                                      ldr r3, [r7]
0077ce28  0f e0 a0 e1                                      mov lr, pc
0077ce2c  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0077ce30  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0077ce34  04 00 a0 e1                                      mov r0, r4
0077ce38  3a 1b 00 eb                                      bl #0x783b28
0077ce3c  00 60 a0 e1                                      mov r6, r0
0077ce40  00 10 a0 e1                                      mov r1, r0
0077ce44  10 00 85 e2                                      add r0, r5, #0x10
0077ce48  9b ff ff eb                                      bl #0x77ccbc
0077ce4c  00 00 56 e3                                      cmp r6, #0
0077ce50  ee ff ff 0a                                      beq #0x77ce10
0077ce54  00 80 a0 e3                                      mov r8, #0
0077ce58  04 00 a0 e1                                      mov r0, r4
0077ce5c  10 a0 95 e5                                      ldr sl, [r5, #0x10]
0077ce60  2d 1c 00 eb                                      bl #0x783f1c
0077ce64  88 01 8a e7                                      str r0, [sl, r8, lsl #3]
0077ce68  04 00 a0 e1                                      mov r0, r4
0077ce6c  10 90 95 e5                                      ldr sb, [r5, #0x10]
0077ce70  67 1b 00 eb                                      bl #0x783c14
0077ce74  88 a1 a0 e1                                      lsl sl, r8, #3
0077ce78  0a 90 89 e0                                      add sb, sb, sl
0077ce7c  b4 00 c9 e1                                      strh r0, [sb, #4]
0077ce80  10 30 95 e5                                      ldr r3, [r5, #0x10]
0077ce84  04 00 a0 e1                                      mov r0, r4
0077ce88  01 80 88 e2                                      add r8, r8, #1
0077ce8c  0a a0 83 e0                                      add sl, r3, sl
0077ce90  5f 1b 00 eb                                      bl #0x783c14
0077ce94  08 00 56 e1                                      cmp r6, r8
0077ce98  b6 00 ca e1                                      strh r0, [sl, #6]
0077ce9c  ed ff ff ca                                      bgt #0x77ce58
0077cea0  da ff ff ea                                      b #0x77ce10
0077cea4  04 00 a0 e1                                      mov r0, r4
0077cea8  59 1b 00 eb                                      bl #0x783c14
0077ceac  08 00 85 e5                                      str r0, [r5, #8]
0077ceb0  d4 ff ff ea                                      b #0x77ce08
0077ceb4  04 00 a0 e1                                      mov r0, r4
0077ceb8  17 1c 00 eb                                      bl #0x783f1c
0077cebc  cf ff ff ea                                      b #0x77ce00
0077cec0  04 00 a0 e1                                      mov r0, r4
0077cec4  14 1c 00 eb                                      bl #0x783f1c
0077cec8  ca ff ff ea                                      b #0x77cdf8

; FUNCTION 0x0077d07c, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::start_sound_tag
; alias: _ZN7gameswf15start_sound_tagD0Ev
; demangled: gameswf::start_sound_tag::~start_sound_tag()
; decoder-mode: arm
0077d07c  44 30 9f e5                                      ldr r3, [pc, #0x44]
0077d080  44 20 9f e5                                      ldr r2, [pc, #0x44]
0077d084  70 40 2d e9                                      push {r4, r5, r6, lr}
0077d088  03 30 8f e0                                      add r3, pc, r3
0077d08c  02 20 93 e7                                      ldr r2, [r3, r2]
0077d090  00 40 a0 e1                                      mov r4, r0
0077d094  00 50 a0 e1                                      mov r5, r0
0077d098  08 20 82 e2                                      add r2, r2, #8
0077d09c  10 20 84 e4                                      str r2, [r4], #0x10
0077d0a0  04 00 a0 e1                                      mov r0, r4
0077d0a4  00 10 a0 e3                                      mov r1, #0
0077d0a8  03 ff ff eb                                      bl #0x77ccbc
0077d0ac  04 00 a0 e1                                      mov r0, r4
0077d0b0  00 10 a0 e3                                      mov r1, #0
0077d0b4  e1 fe ff eb                                      bl #0x77cc40
0077d0b8  05 00 a0 e1                                      mov r0, r5
0077d0bc  7b 44 ee eb                                      bl #0x30e2b0
0077d0c0  05 00 a0 e1                                      mov r0, r5
0077d0c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0077d0c8  08 7a 21 00 e8 3a 00 00                          .byte 0x08, 0x7a, 0x21, 0x00, 0xe8, 0x3a, 0x00, 0x00
