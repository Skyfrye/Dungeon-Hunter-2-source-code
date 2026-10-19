; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006cd9d8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZNK6glitch5scene25CSceneNodeAnimatorTexture7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorTexture::getType() const
; decoder-mode: arm
006cd9d8  04 00 a0 e3                                      mov r0, #4
006cd9dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006cd9e0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTexture13clearTexturesEv
; demangled: glitch::scene::CSceneNodeAnimatorTexture::clearTextures()
; decoder-mode: arm
006cd9e0  70 40 2d e9                                      push {r4, r5, r6, lr}
006cd9e4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006cd9e8  10 20 90 e5                                      ldr r2, [r0, #0x10]
006cd9ec  00 50 a0 e1                                      mov r5, r0
006cd9f0  02 20 63 e0                                      rsb r2, r3, r2
006cd9f4  22 21 b0 e1                                      lsrs r2, r2, #2
006cd9f8  0c 00 00 0a                                      beq #0x6cda30
006cd9fc  00 40 a0 e3                                      mov r4, #0
006cda00  04 60 a0 e1                                      mov r6, r4
006cda04  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
006cda08  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
006cda0c  01 40 84 e2                                      add r4, r4, #1
006cda10  00 00 50 e3                                      cmp r0, #0
006cda14  00 00 00 0a                                      beq #0x6cda1c
006cda18  d9 3e f1 eb                                      bl #0x31d584
006cda1c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006cda20  10 20 95 e5                                      ldr r2, [r5, #0x10]
006cda24  02 20 63 e0                                      rsb r2, r3, r2
006cda28  42 01 54 e1                                      cmp r4, r2, asr #2
006cda2c  f4 ff ff 3a                                      blo #0x6cda04
006cda30  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006cda34, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTexture10updateTimeEj
; demangled: glitch::scene::CSceneNodeAnimatorTexture::updateTime(unsigned int)
; decoder-mode: arm
006cda34  1e ff 2f e1                                      bx lr

; FUNCTION 0x006cda58, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTexture11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorTexture::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006cda58  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006cda5c  10 40 90 e5                                      ldr r4, [r0, #0x10]
006cda60  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006cda64  0c d0 4d e2                                      sub sp, sp, #0xc
006cda68  00 50 a0 e1                                      mov r5, r0
006cda6c  04 40 63 e0                                      rsb r4, r3, r4
006cda70  44 41 b0 e1                                      asrs r4, r4, #2
006cda74  01 60 a0 e1                                      mov r6, r1
006cda78  1f 00 00 0a                                      beq #0x6cdafc
006cda7c  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
006cda80  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006cda84  00 00 53 e3                                      cmp r3, #0
006cda88  1d 00 00 0a                                      beq #0x6cdb04
006cda8c  02 00 60 e0                                      rsb r0, r0, r2
006cda90  18 10 95 e5                                      ldr r1, [r5, #0x18]
006cda94  6c 04 f1 eb                                      bl #0x30ec4c
006cda98  04 10 a0 e1                                      mov r1, r4
006cda9c  22 04 f1 eb                                      bl #0x30eb2c
006cdaa0  01 70 a0 e1                                      mov r7, r1
006cdaa4  04 00 57 e1                                      cmp r7, r4
006cdaa8  13 00 00 2a                                      bhs #0x6cdafc
006cdaac  04 40 8d e2                                      add r4, sp, #4
006cdab0  06 10 a0 e1                                      mov r1, r6
006cdab4  04 00 a0 e1                                      mov r0, r4
006cdab8  00 20 a0 e3                                      mov r2, #0
006cdabc  00 30 96 e5                                      ldr r3, [r6]
006cdac0  0f e0 a0 e1                                      mov lr, pc
006cdac4  84 f0 93 e5                                      ldr pc, [r3, #0x84]
006cdac8  04 30 9d e5                                      ldr r3, [sp, #4]
006cdacc  02 10 a0 e3                                      mov r1, #2
006cdad0  00 20 a0 e3                                      mov r2, #0
006cdad4  04 00 93 e5                                      ldr r0, [r3, #4]
006cdad8  0a 05 fc eb                                      bl #0x5cef08
006cdadc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006cdae0  00 10 a0 e1                                      mov r1, r0
006cdae4  00 20 a0 e3                                      mov r2, #0
006cdae8  04 00 9d e5                                      ldr r0, [sp, #4]
006cdaec  07 31 83 e0                                      add r3, r3, r7, lsl #2
006cdaf0  0b fe fb eb                                      bl #0x5cd324
006cdaf4  04 00 a0 e1                                      mov r0, r4
006cdaf8  3a 0c f1 eb                                      bl #0x310be8
006cdafc  0c d0 8d e2                                      add sp, sp, #0xc
006cdb00  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006cdb04  20 30 95 e5                                      ldr r3, [r5, #0x20]
006cdb08  03 00 52 e1                                      cmp r2, r3
006cdb0c  01 70 44 22                                      subhs r7, r4, #1
006cdb10  e3 ff ff 2a                                      bhs #0x6cdaa4
006cdb14  dc ff ff ea                                      b #0x6cda8c

; FUNCTION 0x006cdb18, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZThn4_N6glitch5scene25CSceneNodeAnimatorTextureD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture()
; decoder-mode: arm
006cdb18  04 00 40 e2                                      sub r0, r0, #4
006cdb1c  ff ff ff ea                                      b #0x6cdb20

; FUNCTION 0x006cdb20, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTextureD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture()
; decoder-mode: arm
006cdb20  70 40 2d e9                                      push {r4, r5, r6, lr}
006cdb24  48 50 9f e5                                      ldr r5, [pc, #0x48]
006cdb28  48 30 9f e5                                      ldr r3, [pc, #0x48]
006cdb2c  00 40 a0 e1                                      mov r4, r0
006cdb30  05 50 8f e0                                      add r5, pc, r5
006cdb34  03 30 95 e7                                      ldr r3, [r5, r3]
006cdb38  68 20 83 e2                                      add r2, r3, #0x68
006cdb3c  0c 10 83 e2                                      add r1, r3, #0xc
006cdb40  84 30 83 e2                                      add r3, r3, #0x84
006cdb44  28 30 80 e5                                      str r3, [r0, #0x28]
006cdb48  06 00 80 e8                                      stm r0, {r1, r2}
006cdb4c  a3 ff ff eb                                      bl #0x6cd9e0
006cdb50  0c 00 84 e2                                      add r0, r4, #0xc
006cdb54  f4 07 fa eb                                      bl #0x54fb2c
006cdb58  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
006cdb5c  04 00 a0 e1                                      mov r0, r4
006cdb60  01 10 95 e7                                      ldr r1, [r5, r1]
006cdb64  04 10 81 e2                                      add r1, r1, #4
006cdb68  72 2f fb eb                                      bl #0x599938
006cdb6c  04 00 a0 e1                                      mov r0, r4
006cdb70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006cdb74  60 6f 2c 00 88 13 00 00 84 1c 00 00              .byte 0x60, 0x6f, 0x2c, 0x00, 0x88, 0x13, 0x00, 0x00, 0x84, 0x1c, 0x00, 0x00

; FUNCTION 0x006cdb80, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZThn4_N6glitch5scene25CSceneNodeAnimatorTextureD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture()
; decoder-mode: arm
006cdb80  04 00 40 e2                                      sub r0, r0, #4
006cdb84  ff ff ff ea                                      b #0x6cdb88

; FUNCTION 0x006cdb88, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTextureD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture()
; decoder-mode: arm
006cdb88  10 40 2d e9                                      push {r4, lr}
006cdb8c  00 40 a0 e1                                      mov r4, r0
006cdb90  e2 ff ff eb                                      bl #0x6cdb20
006cdb94  04 00 a0 e1                                      mov r0, r4
006cdb98  c4 01 f1 eb                                      bl #0x30e2b0
006cdb9c  04 00 a0 e1                                      mov r0, r4
006cdba0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006cdba4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTextureD2Ev
; demangled: glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture()
; decoder-mode: arm
006cdba4  70 40 2d e9                                      push {r4, r5, r6, lr}
006cdba8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
006cdbac  01 50 a0 e1                                      mov r5, r1
006cdbb0  48 20 9f e5                                      ldr r2, [pc, #0x48]
006cdbb4  00 10 91 e5                                      ldr r1, [r1]
006cdbb8  03 30 8f e0                                      add r3, pc, r3
006cdbbc  02 20 93 e7                                      ldr r2, [r3, r2]
006cdbc0  00 10 80 e5                                      str r1, [r0]
006cdbc4  14 c0 95 e5                                      ldr ip, [r5, #0x14]
006cdbc8  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
006cdbcc  68 20 82 e2                                      add r2, r2, #0x68
006cdbd0  00 40 a0 e1                                      mov r4, r0
006cdbd4  01 c0 80 e7                                      str ip, [r0, r1]
006cdbd8  04 20 80 e5                                      str r2, [r0, #4]
006cdbdc  7f ff ff eb                                      bl #0x6cd9e0
006cdbe0  0c 00 84 e2                                      add r0, r4, #0xc
006cdbe4  d0 07 fa eb                                      bl #0x54fb2c
006cdbe8  04 00 a0 e1                                      mov r0, r4
006cdbec  04 10 85 e2                                      add r1, r5, #4
006cdbf0  50 2f fb eb                                      bl #0x599938
006cdbf4  04 00 a0 e1                                      mov r0, r4
006cdbf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006cdbfc  d8 6e 2c 00 88 13 00 00                          .byte 0xd8, 0x6e, 0x2c, 0x00, 0x88, 0x13, 0x00, 0x00

; FUNCTION 0x006cdcd8, declared_size=380, range_size=380, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTextureC1ERKSt6vectorIN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10SAllocatorIS7_LNS_6memory13E_MEMORY_HINTE0EEEEibj
; demangled: glitch::scene::CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> > const&, int, bool, unsigned int)
; decoder-mode: arm
006cdcd8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cdcdc  5c 61 9f e5                                      ldr r6, [pc, #0x15c]
006cdce0  5c c1 9f e5                                      ldr ip, [pc, #0x15c]
006cdce4  5c e1 9f e5                                      ldr lr, [pc, #0x15c]
006cdce8  06 60 8f e0                                      add r6, pc, r6
006cdcec  0c 70 96 e7                                      ldr r7, [r6, ip]
006cdcf0  0e e0 96 e7                                      ldr lr, [r6, lr]
006cdcf4  50 c1 9f e5                                      ldr ip, [pc, #0x150]
006cdcf8  08 80 97 e5                                      ldr r8, [r7, #8]
006cdcfc  08 e0 8e e2                                      add lr, lr, #8
006cdd00  01 50 a0 e3                                      mov r5, #1
006cdd04  2c 50 80 e5                                      str r5, [r0, #0x2c]
006cdd08  00 80 80 e5                                      str r8, [r0]
006cdd0c  28 e0 80 e5                                      str lr, [r0, #0x28]
006cdd10  0c c0 96 e7                                      ldr ip, [r6, ip]
006cdd14  0c e0 18 e5                                      ldr lr, [r8, #-0xc]
006cdd18  0c 80 97 e5                                      ldr r8, [r7, #0xc]
006cdd1c  08 c0 8c e2                                      add ip, ip, #8
006cdd20  00 40 a0 e1                                      mov r4, r0
006cdd24  0e 80 80 e7                                      str r8, [r0, lr]
006cdd28  04 c0 80 e5                                      str ip, [r0, #4]
006cdd2c  01 50 a0 e1                                      mov r5, r1
006cdd30  02 80 a0 e1                                      mov r8, r2
006cdd34  03 90 a0 e1                                      mov sb, r3
006cdd38  20 a0 9d e5                                      ldr sl, [sp, #0x20]
006cdd3c  12 4d ff eb                                      bl #0x6a118c
006cdd40  04 20 97 e5                                      ldr r2, [r7, #4]
006cdd44  04 31 9f e5                                      ldr r3, [pc, #0x104]
006cdd48  10 00 97 e5                                      ldr r0, [r7, #0x10]
006cdd4c  00 20 84 e5                                      str r2, [r4]
006cdd50  03 30 96 e7                                      ldr r3, [r6, r3]
006cdd54  0c 60 12 e5                                      ldr r6, [r2, #-0xc]
006cdd58  00 10 a0 e3                                      mov r1, #0
006cdd5c  68 20 83 e2                                      add r2, r3, #0x68
006cdd60  0c c0 83 e2                                      add ip, r3, #0xc
006cdd64  84 30 83 e2                                      add r3, r3, #0x84
006cdd68  06 00 84 e7                                      str r0, [r4, r6]
006cdd6c  18 80 84 e5                                      str r8, [r4, #0x18]
006cdd70  00 c0 84 e5                                      str ip, [r4]
006cdd74  28 30 84 e5                                      str r3, [r4, #0x28]
006cdd78  04 20 84 e5                                      str r2, [r4, #4]
006cdd7c  24 90 c4 e5                                      strb sb, [r4, #0x24]
006cdd80  08 10 84 e5                                      str r1, [r4, #8]
006cdd84  0c 10 84 e5                                      str r1, [r4, #0xc]
006cdd88  10 10 84 e5                                      str r1, [r4, #0x10]
006cdd8c  14 10 84 e5                                      str r1, [r4, #0x14]
006cdd90  1c a0 84 e5                                      str sl, [r4, #0x1c]
006cdd94  00 30 95 e5                                      ldr r3, [r5]
006cdd98  04 20 95 e5                                      ldr r2, [r5, #4]
006cdd9c  02 20 63 e0                                      rsb r2, r3, r2
006cdda0  42 21 b0 e1                                      asrs r2, r2, #2
006cdda4  02 80 a0 01                                      moveq r8, r2
006cdda8  1b 00 00 0a                                      beq #0x6cde1c
006cddac  0c 70 84 e2                                      add r7, r4, #0xc
006cddb0  01 00 a0 e1                                      mov r0, r1
006cddb4  01 60 a0 e1                                      mov r6, r1
006cddb8  00 00 00 ea                                      b #0x6cddc0
006cddbc  14 10 94 e5                                      ldr r1, [r4, #0x14]
006cddc0  00 00 51 e1                                      cmp r1, r0
006cddc4  06 21 83 e0                                      add r2, r3, r6, lsl #2
006cddc8  17 00 00 0a                                      beq #0x6cde2c
006cddcc  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
006cddd0  00 30 80 e5                                      str r3, [r0]
006cddd4  00 00 53 e3                                      cmp r3, #0
006cddd8  04 20 93 15                                      ldrne r2, [r3, #4]
006cdddc  01 20 82 12                                      addne r2, r2, #1
006cdde0  04 20 83 15                                      strne r2, [r3, #4]
006cdde4  10 20 94 e5                                      ldr r2, [r4, #0x10]
006cdde8  04 10 82 e2                                      add r1, r2, #4
006cddec  10 10 84 e5                                      str r1, [r4, #0x10]
006cddf0  01 20 a0 e1                                      mov r2, r1
006cddf4  08 10 95 e8                                      ldm r5, {r3, ip}
006cddf8  01 60 86 e2                                      add r6, r6, #1
006cddfc  02 00 a0 e1                                      mov r0, r2
006cde00  0c 20 63 e0                                      rsb r2, r3, ip
006cde04  42 01 56 e1                                      cmp r6, r2, asr #2
006cde08  eb ff ff 3a                                      blo #0x6cddbc
006cde0c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006cde10  01 10 63 e0                                      rsb r1, r3, r1
006cde14  41 11 a0 e1                                      asr r1, r1, #2
006cde18  98 01 08 e0                                      mul r8, r8, r1
006cde1c  0a a0 88 e0                                      add sl, r8, sl
006cde20  20 a0 84 e5                                      str sl, [r4, #0x20]
006cde24  04 00 a0 e1                                      mov r0, r4
006cde28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006cde2c  07 00 a0 e1                                      mov r0, r7
006cde30  73 ff ff eb                                      bl #0x6cdc04
006cde34  10 20 94 e5                                      ldr r2, [r4, #0x10]
006cde38  02 10 a0 e1                                      mov r1, r2
006cde3c  ec ff ff ea                                      b #0x6cddf4
; mapping-symbol data/literal pool
006cde40  a8 6d 2c 00 84 1c 00 00 44 2b 00 00 4c 27 00 00  .byte 0xa8, 0x6d, 0x2c, 0x00, 0x84, 0x1c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00
006cde50  88 13 00 00                                      .byte 0x88, 0x13, 0x00, 0x00

; FUNCTION 0x006cde54, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTexture11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorTexture::createClone()
; decoder-mode: arm
006cde54  30 40 2d e9                                      push {r4, r5, lr}
006cde58  00 10 a0 e3                                      mov r1, #0
006cde5c  00 50 a0 e1                                      mov r5, r0
006cde60  0c d0 4d e2                                      sub sp, sp, #0xc
006cde64  30 00 a0 e3                                      mov r0, #0x30
006cde68  cf 98 f9 eb                                      bl #0x5341ac
006cde6c  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
006cde70  00 40 a0 e1                                      mov r4, r0
006cde74  18 20 95 e5                                      ldr r2, [r5, #0x18]
006cde78  24 30 d5 e5                                      ldrb r3, [r5, #0x24]
006cde7c  0c 10 85 e2                                      add r1, r5, #0xc
006cde80  00 c0 8d e5                                      str ip, [sp]
006cde84  93 ff ff eb                                      bl #0x6cdcd8
006cde88  04 00 a0 e1                                      mov r0, r4
006cde8c  0c d0 8d e2                                      add sp, sp, #0xc
006cde90  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006cdee4, declared_size=416, range_size=416, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZNK6glitch5scene25CSceneNodeAnimatorTexture19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorTexture::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006cdee4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cdee8  80 31 9f e5                                      ldr r3, [pc, #0x180]
006cdeec  80 c1 9f e5                                      ldr ip, [pc, #0x180]
006cdef0  2c d0 4d e2                                      sub sp, sp, #0x2c
006cdef4  03 30 8f e0                                      add r3, pc, r3
006cdef8  00 30 8d e5                                      str r3, [sp]
006cdefc  0c 30 93 e7                                      ldr r3, [r3, ip]
006cdf00  01 70 a0 e1                                      mov r7, r1
006cdf04  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
006cdf08  00 30 93 e5                                      ldr r3, [r3]
006cdf0c  00 60 a0 e1                                      mov r6, r0
006cdf10  04 c0 8d e5                                      str ip, [sp, #4]
006cdf14  24 30 8d e5                                      str r3, [sp, #0x24]
006cdf18  02 40 a0 e1                                      mov r4, r2
006cdf1c  01 10 8f e0                                      add r1, pc, r1
006cdf20  07 00 a0 e1                                      mov r0, r7
006cdf24  18 20 96 e5                                      ldr r2, [r6, #0x18]
006cdf28  00 30 a0 e3                                      mov r3, #0
006cdf2c  00 c0 97 e5                                      ldr ip, [r7]
006cdf30  0f e0 a0 e1                                      mov lr, pc
006cdf34  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006cdf38  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
006cdf3c  00 30 a0 e3                                      mov r3, #0
006cdf40  00 c0 97 e5                                      ldr ip, [r7]
006cdf44  07 00 a0 e1                                      mov r0, r7
006cdf48  01 10 8f e0                                      add r1, pc, r1
006cdf4c  24 20 d6 e5                                      ldrb r2, [r6, #0x24]
006cdf50  0f e0 a0 e1                                      mov lr, pc
006cdf54  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006cdf58  10 a0 96 e5                                      ldr sl, [r6, #0x10]
006cdf5c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006cdf60  00 00 54 e3                                      cmp r4, #0
006cdf64  0a a0 63 e0                                      rsb sl, r3, sl
006cdf68  4a a1 a0 e1                                      asr sl, sl, #2
006cdf6c  02 00 00 0a                                      beq #0x6cdf7c
006cdf70  00 30 94 e5                                      ldr r3, [r4]
006cdf74  02 00 13 e3                                      tst r3, #2
006cdf78  01 a0 8a 12                                      addne sl, sl, #1
006cdf7c  00 00 5a e3                                      cmp sl, #0
006cdf80  30 00 00 0a                                      beq #0x6ce048
006cdf84  f4 90 9f e5                                      ldr sb, [pc, #0xf4]
006cdf88  00 50 a0 e3                                      mov r5, #0
006cdf8c  01 80 a0 e3                                      mov r8, #1
006cdf90  09 90 8f e0                                      add sb, pc, sb
006cdf94  07 90 89 e2                                      add sb, sb, #7
006cdf98  0c 40 8d e2                                      add r4, sp, #0xc
006cdf9c  08 b0 8d e2                                      add fp, sp, #8
006cdfa0  09 10 a0 e1                                      mov r1, sb
006cdfa4  04 00 a0 e1                                      mov r0, r4
006cdfa8  1c 40 8d e5                                      str r4, [sp, #0x1c]
006cdfac  20 40 8d e5                                      str r4, [sp, #0x20]
006cdfb0  b7 ff ff eb                                      bl #0x6cde94
006cdfb4  04 00 a0 e1                                      mov r0, r4
006cdfb8  78 10 af e6                                      sxtb r1, r8
006cdfbc  f9 9f f5 eb                                      bl #0x435fa8
006cdfc0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006cdfc4  10 00 96 e5                                      ldr r0, [r6, #0x10]
006cdfc8  00 20 97 e5                                      ldr r2, [r7]
006cdfcc  20 10 9d e5                                      ldr r1, [sp, #0x20]
006cdfd0  00 00 63 e0                                      rsb r0, r3, r0
006cdfd4  40 01 55 e1                                      cmp r5, r0, asr #2
006cdfd8  00 e0 a0 23                                      movhs lr, #0
006cdfdc  b0 c2 92 e5                                      ldr ip, [r2, #0x2b0]
006cdfe0  08 e0 8d 25                                      strhs lr, [sp, #8]
006cdfe4  05 00 00 2a                                      bhs #0x6ce000
006cdfe8  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
006cdfec  00 00 53 e3                                      cmp r3, #0
006cdff0  08 30 8d e5                                      str r3, [sp, #8]
006cdff4  04 20 93 15                                      ldrne r2, [r3, #4]
006cdff8  01 20 82 12                                      addne r2, r2, #1
006cdffc  04 20 83 15                                      strne r2, [r3, #4]
006ce000  07 00 a0 e1                                      mov r0, r7
006ce004  0b 20 a0 e1                                      mov r2, fp
006ce008  00 30 a0 e3                                      mov r3, #0
006ce00c  3c ff 2f e1                                      blx ip
006ce010  08 00 9d e5                                      ldr r0, [sp, #8]
006ce014  00 00 50 e3                                      cmp r0, #0
006ce018  00 00 00 0a                                      beq #0x6ce020
006ce01c  58 3d f1 eb                                      bl #0x31d584
006ce020  20 00 9d e5                                      ldr r0, [sp, #0x20]
006ce024  04 00 50 e1                                      cmp r0, r4
006ce028  02 00 00 0a                                      beq #0x6ce038
006ce02c  00 00 50 e3                                      cmp r0, #0
006ce030  00 00 00 0a                                      beq #0x6ce038
006ce034  05 09 f1 eb                                      bl #0x310450
006ce038  01 50 85 e2                                      add r5, r5, #1
006ce03c  0a 00 55 e1                                      cmp r5, sl
006ce040  01 80 88 e2                                      add r8, r8, #1
006ce044  d5 ff ff 1a                                      bne #0x6cdfa0
006ce048  00 20 9d e5                                      ldr r2, [sp]
006ce04c  04 10 9d e5                                      ldr r1, [sp, #4]
006ce050  01 30 92 e7                                      ldr r3, [r2, r1]
006ce054  24 20 9d e5                                      ldr r2, [sp, #0x24]
006ce058  00 30 93 e5                                      ldr r3, [r3]
006ce05c  03 00 52 e1                                      cmp r2, r3
006ce060  01 00 00 1a                                      bne #0x6ce06c
006ce064  2c d0 8d e2                                      add sp, sp, #0x2c
006ce068  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ce06c  a7 00 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006ce070  9c 6b 2c 00 ac 40 00 00 24 d5 21 00 b8 b4 20 00  .byte 0x9c, 0x6b, 0x2c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x24, 0xd5, 0x21, 0x00, 0xb8, 0xb4, 0x20, 0x00
006ce080  88 04 21 00                                      .byte 0x88, 0x04, 0x21, 0x00

; FUNCTION 0x006ce084, declared_size=372, range_size=372, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTextureC2ERKSt6vectorIN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10SAllocatorIS7_LNS_6memory13E_MEMORY_HINTE0EEEEibj
; demangled: glitch::scene::CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> > const&, int, bool, unsigned int)
; decoder-mode: arm
006ce084  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ce088  04 80 81 e2                                      add r8, r1, #4
006ce08c  54 61 9f e5                                      ldr r6, [pc, #0x154]
006ce090  04 c0 98 e5                                      ldr ip, [r8, #4]
006ce094  01 70 a0 e1                                      mov r7, r1
006ce098  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
006ce09c  06 60 8f e0                                      add r6, pc, r6
006ce0a0  00 c0 80 e5                                      str ip, [r0]
006ce0a4  01 10 96 e7                                      ldr r1, [r6, r1]
006ce0a8  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006ce0ac  08 e0 98 e5                                      ldr lr, [r8, #8]
006ce0b0  08 10 81 e2                                      add r1, r1, #8
006ce0b4  00 40 a0 e1                                      mov r4, r0
006ce0b8  0c e0 80 e7                                      str lr, [r0, ip]
006ce0bc  04 10 80 e5                                      str r1, [r0, #4]
006ce0c0  02 50 a0 e1                                      mov r5, r2
006ce0c4  03 a0 a0 e1                                      mov sl, r3
006ce0c8  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
006ce0cc  28 b0 dd e5                                      ldrb fp, [sp, #0x28]
006ce0d0  2d 4c ff eb                                      bl #0x6a118c
006ce0d4  04 20 97 e5                                      ldr r2, [r7, #4]
006ce0d8  10 31 9f e5                                      ldr r3, [pc, #0x110]
006ce0dc  00 10 a0 e3                                      mov r1, #0
006ce0e0  00 20 84 e5                                      str r2, [r4]
006ce0e4  03 30 96 e7                                      ldr r3, [r6, r3]
006ce0e8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006ce0ec  0c 00 98 e5                                      ldr r0, [r8, #0xc]
006ce0f0  68 c0 83 e2                                      add ip, r3, #0x68
006ce0f4  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
006ce0f8  02 00 84 e7                                      str r0, [r4, r2]
006ce0fc  04 c0 84 e5                                      str ip, [r4, #4]
006ce100  08 10 84 e5                                      str r1, [r4, #8]
006ce104  00 20 97 e5                                      ldr r2, [r7]
006ce108  03 30 96 e7                                      ldr r3, [r6, r3]
006ce10c  00 20 84 e5                                      str r2, [r4]
006ce110  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006ce114  14 00 97 e5                                      ldr r0, [r7, #0x14]
006ce118  68 30 83 e2                                      add r3, r3, #0x68
006ce11c  02 00 84 e7                                      str r0, [r4, r2]
006ce120  18 a0 84 e5                                      str sl, [r4, #0x18]
006ce124  04 30 84 e5                                      str r3, [r4, #4]
006ce128  24 b0 c4 e5                                      strb fp, [r4, #0x24]
006ce12c  0c 10 84 e5                                      str r1, [r4, #0xc]
006ce130  10 10 84 e5                                      str r1, [r4, #0x10]
006ce134  14 10 84 e5                                      str r1, [r4, #0x14]
006ce138  1c 90 84 e5                                      str sb, [r4, #0x1c]
006ce13c  00 30 95 e5                                      ldr r3, [r5]
006ce140  04 20 95 e5                                      ldr r2, [r5, #4]
006ce144  02 20 63 e0                                      rsb r2, r3, r2
006ce148  42 21 b0 e1                                      asrs r2, r2, #2
006ce14c  02 a0 a0 01                                      moveq sl, r2
006ce150  1b 00 00 0a                                      beq #0x6ce1c4
006ce154  0c 70 84 e2                                      add r7, r4, #0xc
006ce158  01 00 a0 e1                                      mov r0, r1
006ce15c  01 60 a0 e1                                      mov r6, r1
006ce160  00 00 00 ea                                      b #0x6ce168
006ce164  14 10 94 e5                                      ldr r1, [r4, #0x14]
006ce168  00 00 51 e1                                      cmp r1, r0
006ce16c  06 21 83 e0                                      add r2, r3, r6, lsl #2
006ce170  17 00 00 0a                                      beq #0x6ce1d4
006ce174  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
006ce178  00 30 80 e5                                      str r3, [r0]
006ce17c  00 00 53 e3                                      cmp r3, #0
006ce180  04 20 93 15                                      ldrne r2, [r3, #4]
006ce184  01 20 82 12                                      addne r2, r2, #1
006ce188  04 20 83 15                                      strne r2, [r3, #4]
006ce18c  10 20 94 e5                                      ldr r2, [r4, #0x10]
006ce190  04 10 82 e2                                      add r1, r2, #4
006ce194  10 10 84 e5                                      str r1, [r4, #0x10]
006ce198  01 20 a0 e1                                      mov r2, r1
006ce19c  08 10 95 e8                                      ldm r5, {r3, ip}
006ce1a0  01 60 86 e2                                      add r6, r6, #1
006ce1a4  02 00 a0 e1                                      mov r0, r2
006ce1a8  0c 20 63 e0                                      rsb r2, r3, ip
006ce1ac  42 01 56 e1                                      cmp r6, r2, asr #2
006ce1b0  eb ff ff 3a                                      blo #0x6ce164
006ce1b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006ce1b8  01 10 63 e0                                      rsb r1, r3, r1
006ce1bc  41 11 a0 e1                                      asr r1, r1, #2
006ce1c0  9a 01 0a e0                                      mul sl, sl, r1
006ce1c4  09 90 8a e0                                      add sb, sl, sb
006ce1c8  20 90 84 e5                                      str sb, [r4, #0x20]
006ce1cc  04 00 a0 e1                                      mov r0, r4
006ce1d0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ce1d4  07 00 a0 e1                                      mov r0, r7
006ce1d8  89 fe ff eb                                      bl #0x6cdc04
006ce1dc  10 20 94 e5                                      ldr r2, [r4, #0x10]
006ce1e0  02 10 a0 e1                                      mov r1, r2
006ce1e4  ec ff ff ea                                      b #0x6ce19c
; mapping-symbol data/literal pool
006ce1e8  f4 69 2c 00 4c 27 00 00 08 23 00 00 88 13 00 00  .byte 0xf4, 0x69, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0x88, 0x13, 0x00, 0x00

; FUNCTION 0x006ce1f8, declared_size=420, range_size=420, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZN6glitch5scene25CSceneNodeAnimatorTexture21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorTexture::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006ce1f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ce1fc  84 91 9f e5                                      ldr sb, [pc, #0x184]
006ce200  84 b1 9f e5                                      ldr fp, [pc, #0x184]
006ce204  01 50 a0 e1                                      mov r5, r1
006ce208  09 90 8f e0                                      add sb, pc, sb
006ce20c  0b 30 99 e7                                      ldr r3, [sb, fp]
006ce210  78 11 9f e5                                      ldr r1, [pc, #0x178]
006ce214  2c d0 4d e2                                      sub sp, sp, #0x2c
006ce218  00 20 93 e5                                      ldr r2, [r3]
006ce21c  00 70 a0 e1                                      mov r7, r0
006ce220  00 30 95 e5                                      ldr r3, [r5]
006ce224  01 10 8f e0                                      add r1, pc, r1
006ce228  24 20 8d e5                                      str r2, [sp, #0x24]
006ce22c  05 00 a0 e1                                      mov r0, r5
006ce230  0f e0 a0 e1                                      mov lr, pc
006ce234  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006ce238  54 11 9f e5                                      ldr r1, [pc, #0x154]
006ce23c  18 00 87 e5                                      str r0, [r7, #0x18]
006ce240  00 30 95 e5                                      ldr r3, [r5]
006ce244  01 10 8f e0                                      add r1, pc, r1
006ce248  05 00 a0 e1                                      mov r0, r5
006ce24c  0f e0 a0 e1                                      mov lr, pc
006ce250  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006ce254  3c 81 9f e5                                      ldr r8, [pc, #0x13c]
006ce258  24 00 c7 e5                                      strb r0, [r7, #0x24]
006ce25c  07 00 a0 e1                                      mov r0, r7
006ce260  de fd ff eb                                      bl #0x6cd9e0
006ce264  08 80 8f e0                                      add r8, pc, r8
006ce268  0c 30 87 e2                                      add r3, r7, #0xc
006ce26c  04 30 8d e5                                      str r3, [sp, #4]
006ce270  01 60 a0 e3                                      mov r6, #1
006ce274  07 80 88 e2                                      add r8, r8, #7
006ce278  0c 40 8d e2                                      add r4, sp, #0xc
006ce27c  08 a0 8d e2                                      add sl, sp, #8
006ce280  08 10 a0 e1                                      mov r1, r8
006ce284  04 00 a0 e1                                      mov r0, r4
006ce288  1c 40 8d e5                                      str r4, [sp, #0x1c]
006ce28c  20 40 8d e5                                      str r4, [sp, #0x20]
006ce290  ff fe ff eb                                      bl #0x6cde94
006ce294  04 00 a0 e1                                      mov r0, r4
006ce298  76 10 af e6                                      sxtb r1, r6
006ce29c  41 9f f5 eb                                      bl #0x435fa8
006ce2a0  00 30 95 e5                                      ldr r3, [r5]
006ce2a4  05 00 a0 e1                                      mov r0, r5
006ce2a8  20 10 9d e5                                      ldr r1, [sp, #0x20]
006ce2ac  0f e0 a0 e1                                      mov lr, pc
006ce2b0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006ce2b4  00 00 50 e3                                      cmp r0, #0
006ce2b8  1f 00 00 0a                                      beq #0x6ce33c
006ce2bc  00 30 95 e5                                      ldr r3, [r5]
006ce2c0  0a 00 a0 e1                                      mov r0, sl
006ce2c4  05 10 a0 e1                                      mov r1, r5
006ce2c8  20 20 9d e5                                      ldr r2, [sp, #0x20]
006ce2cc  0f e0 a0 e1                                      mov lr, pc
006ce2d0  bc f2 93 e5                                      ldr pc, [r3, #0x2bc]
006ce2d4  08 30 9d e5                                      ldr r3, [sp, #8]
006ce2d8  00 00 53 e3                                      cmp r3, #0
006ce2dc  0e 00 00 0a                                      beq #0x6ce31c
006ce2e0  10 10 97 e5                                      ldr r1, [r7, #0x10]
006ce2e4  14 20 97 e5                                      ldr r2, [r7, #0x14]
006ce2e8  02 00 51 e1                                      cmp r1, r2
006ce2ec  1f 00 00 0a                                      beq #0x6ce370
006ce2f0  00 30 81 e5                                      str r3, [r1]
006ce2f4  04 20 93 e5                                      ldr r2, [r3, #4]
006ce2f8  01 20 82 e2                                      add r2, r2, #1
006ce2fc  04 20 83 e5                                      str r2, [r3, #4]
006ce300  10 30 97 e5                                      ldr r3, [r7, #0x10]
006ce304  08 00 9d e5                                      ldr r0, [sp, #8]
006ce308  04 30 83 e2                                      add r3, r3, #4
006ce30c  10 30 87 e5                                      str r3, [r7, #0x10]
006ce310  00 00 50 e3                                      cmp r0, #0
006ce314  00 00 00 0a                                      beq #0x6ce31c
006ce318  99 3c f1 eb                                      bl #0x31d584
006ce31c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006ce320  04 00 50 e1                                      cmp r0, r4
006ce324  02 00 00 0a                                      beq #0x6ce334
006ce328  00 00 50 e3                                      cmp r0, #0
006ce32c  00 00 00 0a                                      beq #0x6ce334
006ce330  46 08 f1 eb                                      bl #0x310450
006ce334  01 60 86 e2                                      add r6, r6, #1
006ce338  d0 ff ff ea                                      b #0x6ce280
006ce33c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006ce340  04 00 50 e1                                      cmp r0, r4
006ce344  02 00 00 0a                                      beq #0x6ce354
006ce348  00 00 50 e3                                      cmp r0, #0
006ce34c  00 00 00 0a                                      beq #0x6ce354
006ce350  3e 08 f1 eb                                      bl #0x310450
006ce354  0b 30 99 e7                                      ldr r3, [sb, fp]
006ce358  24 20 9d e5                                      ldr r2, [sp, #0x24]
006ce35c  00 30 93 e5                                      ldr r3, [r3]
006ce360  03 00 52 e1                                      cmp r2, r3
006ce364  06 00 00 1a                                      bne #0x6ce384
006ce368  2c d0 8d e2                                      add sp, sp, #0x2c
006ce36c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ce370  04 00 9d e5                                      ldr r0, [sp, #4]
006ce374  0a 20 a0 e1                                      mov r2, sl
006ce378  21 fe ff eb                                      bl #0x6cdc04
006ce37c  08 00 9d e5                                      ldr r0, [sp, #8]
006ce380  e2 ff ff ea                                      b #0x6ce310
006ce384  e1 ff f0 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006ce388  88 68 2c 00 ac 40 00 00 1c d2 21 00 bc b1 20 00  .byte 0x88, 0x68, 0x2c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0xd2, 0x21, 0x00, 0xbc, 0xb1, 0x20, 0x00
006ce398  b4 01 21 00                                      .byte 0xb4, 0x01, 0x21, 0x00

; FUNCTION 0x006ce39c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZTv0_n12_N6glitch5scene25CSceneNodeAnimatorTextureD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture()
; decoder-mode: arm
006ce39c  00 30 90 e5                                      ldr r3, [r0]
006ce3a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ce3a4  03 00 80 e0                                      add r0, r0, r3
006ce3a8  f6 fd ff ea                                      b #0x6cdb88

; FUNCTION 0x006ce3ac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorTexture
; alias: _ZTv0_n12_N6glitch5scene25CSceneNodeAnimatorTextureD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture()
; decoder-mode: arm
006ce3ac  00 30 90 e5                                      ldr r3, [r0]
006ce3b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ce3b4  03 00 80 e0                                      add r0, r0, r3
006ce3b8  d8 fd ff ea                                      b #0x6cdb20
