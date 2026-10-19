; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003849a0, declared_size=172, range_size=172, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager13removeTextureEPNS0_8ITextureE
; demangled: glitch::video::CTextureManager::removeTexture(glitch::video::ITexture*)
; decoder-mode: arm
003849a0  70 40 2d e9                                      push {r4, r5, r6, lr}
003849a4  00 50 51 e2                                      subs r5, r1, #0
003849a8  10 d0 4d e2                                      sub sp, sp, #0x10
003849ac  00 40 a0 e1                                      mov r4, r0
003849b0  04 10 8d e5                                      str r1, [sp, #4]
003849b4  19 00 00 0a                                      beq #0x384a20
003849b8  0c 30 8d e2                                      add r3, sp, #0xc
003849bc  68 00 90 e5                                      ldr r0, [r0, #0x68]
003849c0  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
003849c4  04 20 8d e2                                      add r2, sp, #4
003849c8  a8 ff ff eb                                      bl #0x384870
003849cc  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
003849d0  03 00 50 e1                                      cmp r0, r3
003849d4  06 00 00 0a                                      beq #0x3849f4
003849d8  04 10 80 e2                                      add r1, r0, #4
003849dc  01 00 53 e1                                      cmp r3, r1
003849e0  01 00 00 0a                                      beq #0x3849ec
003849e4  01 20 53 e0                                      subs r2, r3, r1
003849e8  14 00 00 1a                                      bne #0x384a40
003849ec  04 30 43 e2                                      sub r3, r3, #4
003849f0  6c 30 84 e5                                      str r3, [r4, #0x6c]
003849f4  04 30 9d e5                                      ldr r3, [sp, #4]
003849f8  04 00 a0 e1                                      mov r0, r4
003849fc  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00384a00  38 60 93 e5                                      ldr r6, [r3, #0x38]
00384a04  33 91 09 eb                                      bl #0x5e8ed8
00384a08  00 20 a0 e3                                      mov r2, #0
00384a0c  00 10 a0 e1                                      mov r1, r0
00384a10  04 00 a0 e1                                      mov r0, r4
00384a14  18 95 09 eb                                      bl #0x5e9e7c
00384a18  00 50 50 e2                                      subs r5, r0, #0
00384a1c  02 00 00 1a                                      bne #0x384a2c
00384a20  05 00 a0 e1                                      mov r0, r5
00384a24  10 d0 8d e2                                      add sp, sp, #0x10
00384a28  70 80 bd e8                                      pop {r4, r5, r6, pc}
00384a2c  04 00 a0 e1                                      mov r0, r4
00384a30  03 10 06 e2                                      and r1, r6, #3
00384a34  04 20 9d e5                                      ldr r2, [sp, #4]
00384a38  08 8e 09 eb                                      bl #0x5e8260
00384a3c  f7 ff ff ea                                      b #0x384a20
00384a40  3c 25 fe eb                                      bl #0x30df38
00384a44  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
00384a48  e7 ff ff ea                                      b #0x3849ec

; FUNCTION 0x00384eb4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager13removeTextureERN5boost13intrusive_ptrINS0_8ITextureEEE
; demangled: glitch::video::CTextureManager::removeTexture(boost::intrusive_ptr<glitch::video::ITexture>&)
; decoder-mode: arm
00384eb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00384eb8  00 40 91 e5                                      ldr r4, [r1]
00384ebc  00 50 a0 e1                                      mov r5, r0
00384ec0  00 00 54 e3                                      cmp r4, #0
00384ec4  07 00 00 0a                                      beq #0x384ee8
00384ec8  00 30 a0 e3                                      mov r3, #0
00384ecc  00 30 81 e5                                      str r3, [r1]
00384ed0  04 00 a0 e1                                      mov r0, r4
00384ed4  aa 61 fe eb                                      bl #0x31d584
00384ed8  05 00 a0 e1                                      mov r0, r5
00384edc  04 10 a0 e1                                      mov r1, r4
00384ee0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00384ee4  ad fe ff ea                                      b #0x3849a0
00384ee8  04 00 a0 e1                                      mov r0, r4
00384eec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e8144, declared_size=284, range_size=284, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE
; demangled: glitch::video::CTextureManager::getImageLoader(glitch::io::IReadFile*) const
; decoder-mode: arm
005e8144  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e8148  00 40 52 e2                                      subs r4, r2, #0
005e814c  00 90 a0 e1                                      mov sb, r0
005e8150  01 a0 a0 e1                                      mov sl, r1
005e8154  24 00 00 0a                                      beq #0x5e81ec
005e8158  00 30 94 e5                                      ldr r3, [r4]
005e815c  04 00 a0 e1                                      mov r0, r4
005e8160  0f e0 a0 e1                                      mov lr, pc
005e8164  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005e8168  30 50 9a e5                                      ldr r5, [sl, #0x30]
005e816c  34 70 9a e5                                      ldr r7, [sl, #0x34]
005e8170  00 80 a0 e1                                      mov r8, r0
005e8174  07 00 55 e1                                      cmp r5, r7
005e8178  03 00 00 1a                                      bne #0x5e818c
005e817c  1a 00 00 ea                                      b #0x5e81ec
005e8180  04 50 85 e2                                      add r5, r5, #4
005e8184  07 00 55 e1                                      cmp r5, r7
005e8188  1b 00 00 0a                                      beq #0x5e81fc
005e818c  00 30 95 e5                                      ldr r3, [r5]
005e8190  04 10 a0 e1                                      mov r1, r4
005e8194  03 00 a0 e1                                      mov r0, r3
005e8198  00 30 93 e5                                      ldr r3, [r3]
005e819c  0f e0 a0 e1                                      mov lr, pc
005e81a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e81a4  00 30 94 e5                                      ldr r3, [r4]
005e81a8  00 60 a0 e1                                      mov r6, r0
005e81ac  08 10 a0 e1                                      mov r1, r8
005e81b0  04 00 a0 e1                                      mov r0, r4
005e81b4  00 20 a0 e3                                      mov r2, #0
005e81b8  0f e0 a0 e1                                      mov lr, pc
005e81bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005e81c0  00 00 56 e3                                      cmp r6, #0
005e81c4  ed ff ff 0a                                      beq #0x5e8180
005e81c8  00 30 95 e5                                      ldr r3, [r5]
005e81cc  00 00 53 e3                                      cmp r3, #0
005e81d0  00 30 89 e5                                      str r3, [sb]
005e81d4  02 00 00 0a                                      beq #0x5e81e4
005e81d8  04 20 93 e5                                      ldr r2, [r3, #4]
005e81dc  01 20 82 e2                                      add r2, r2, #1
005e81e0  04 20 83 e5                                      str r2, [r3, #4]
005e81e4  09 00 a0 e1                                      mov r0, sb
005e81e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e81ec  00 30 a0 e3                                      mov r3, #0
005e81f0  00 30 89 e5                                      str r3, [sb]
005e81f4  09 00 a0 e1                                      mov r0, sb
005e81f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e81fc  34 70 9a e5                                      ldr r7, [sl, #0x34]
005e8200  30 50 9a e5                                      ldr r5, [sl, #0x30]
005e8204  07 00 55 e1                                      cmp r5, r7
005e8208  03 00 00 1a                                      bne #0x5e821c
005e820c  f6 ff ff ea                                      b #0x5e81ec
005e8210  04 50 85 e2                                      add r5, r5, #4
005e8214  07 00 55 e1                                      cmp r5, r7
005e8218  f3 ff ff 0a                                      beq #0x5e81ec
005e821c  00 80 95 e5                                      ldr r8, [r5]
005e8220  00 30 94 e5                                      ldr r3, [r4]
005e8224  04 00 a0 e1                                      mov r0, r4
005e8228  00 20 98 e5                                      ldr r2, [r8]
005e822c  0c 60 92 e5                                      ldr r6, [r2, #0xc]
005e8230  0f e0 a0 e1                                      mov lr, pc
005e8234  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005e8238  00 10 a0 e1                                      mov r1, r0
005e823c  08 00 a0 e1                                      mov r0, r8
005e8240  36 ff 2f e1                                      blx r6
005e8244  00 00 50 e3                                      cmp r0, #0
005e8248  f0 ff ff 0a                                      beq #0x5e8210
005e824c  00 30 95 e5                                      ldr r3, [r5]
005e8250  00 00 53 e3                                      cmp r3, #0
005e8254  00 30 89 e5                                      str r3, [sb]
005e8258  de ff ff 1a                                      bne #0x5e81d8
005e825c  e0 ff ff ea                                      b #0x5e81e4

; FUNCTION 0x005e8260, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager16clearPlaceHolderENS0_14E_TEXTURE_TYPEEPNS0_8ITextureE
; demangled: glitch::video::CTextureManager::clearPlaceHolder(glitch::video::E_TEXTURE_TYPE, glitch::video::ITexture*)
; decoder-mode: arm
005e8260  12 30 81 e2                                      add r3, r1, #0x12
005e8264  03 c1 90 e7                                      ldr ip, [r0, r3, lsl #2]
005e8268  16 10 81 e2                                      add r1, r1, #0x16
005e826c  02 00 5c e1                                      cmp ip, r2
005e8270  00 c0 a0 03                                      moveq ip, #0
005e8274  03 c1 80 07                                      streq ip, [r0, r3, lsl #2]
005e8278  01 31 90 e7                                      ldr r3, [r0, r1, lsl #2]
005e827c  02 00 53 e1                                      cmp r3, r2
005e8280  00 30 a0 03                                      moveq r3, #0
005e8284  01 31 80 07                                      streq r3, [r0, r1, lsl #2]
005e8288  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e828c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager17clearPlaceHoldersEv
; demangled: glitch::video::CTextureManager::clearPlaceHolders()
; decoder-mode: arm
005e828c  00 30 a0 e3                                      mov r3, #0
005e8290  48 00 80 e2                                      add r0, r0, #0x48
005e8294  03 10 a0 e1                                      mov r1, r3
005e8298  03 20 90 e7                                      ldr r2, [r0, r3]
005e829c  00 00 52 e3                                      cmp r2, #0
005e82a0  02 00 00 0a                                      beq #0x5e82b0
005e82a4  04 20 92 e5                                      ldr r2, [r2, #4]
005e82a8  01 00 52 e3                                      cmp r2, #1
005e82ac  03 10 80 07                                      streq r1, [r0, r3]
005e82b0  04 30 83 e2                                      add r3, r3, #4
005e82b4  20 00 53 e3                                      cmp r3, #0x20
005e82b8  f6 ff ff 1a                                      bne #0x5e8298
005e82bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e82c0, declared_size=216, range_size=216, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager16writeImageToFileERKN5boost13intrusive_ptrINS0_6CImageEEEPKcj
; demangled: glitch::video::CTextureManager::writeImageToFile(boost::intrusive_ptr<glitch::video::CImage> const&, char const*, unsigned int)
; decoder-mode: arm
005e82c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e82c4  00 50 a0 e1                                      mov r5, r0
005e82c8  40 c0 95 e5                                      ldr ip, [r5, #0x40]
005e82cc  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
005e82d0  01 90 a0 e1                                      mov sb, r1
005e82d4  02 60 a0 e1                                      mov r6, r2
005e82d8  0c c0 60 e0                                      rsb ip, r0, ip
005e82dc  2c c1 b0 e1                                      lsrs ip, ip, #2
005e82e0  03 a0 a0 e1                                      mov sl, r3
005e82e4  29 00 00 0a                                      beq #0x5e8390
005e82e8  00 40 a0 e3                                      mov r4, #0
005e82ec  04 00 00 ea                                      b #0x5e8304
005e82f0  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
005e82f4  40 30 95 e5                                      ldr r3, [r5, #0x40]
005e82f8  03 30 60 e0                                      rsb r3, r0, r3
005e82fc  43 01 54 e1                                      cmp r4, r3, asr #2
005e8300  22 00 00 2a                                      bhs #0x5e8390
005e8304  04 31 90 e7                                      ldr r3, [r0, r4, lsl #2]
005e8308  06 10 a0 e1                                      mov r1, r6
005e830c  04 71 a0 e1                                      lsl r7, r4, #2
005e8310  03 00 a0 e1                                      mov r0, r3
005e8314  00 30 93 e5                                      ldr r3, [r3]
005e8318  0f e0 a0 e1                                      mov lr, pc
005e831c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e8320  00 00 50 e3                                      cmp r0, #0
005e8324  01 40 84 e2                                      add r4, r4, #1
005e8328  f0 ff ff 0a                                      beq #0x5e82f0
005e832c  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
005e8330  06 10 a0 e1                                      mov r1, r6
005e8334  00 20 a0 e3                                      mov r2, #0
005e8338  03 00 a0 e1                                      mov r0, r3
005e833c  00 30 93 e5                                      ldr r3, [r3]
005e8340  0f e0 a0 e1                                      mov lr, pc
005e8344  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005e8348  00 80 50 e2                                      subs r8, r0, #0
005e834c  09 20 a0 e1                                      mov r2, sb
005e8350  0a 30 a0 e1                                      mov r3, sl
005e8354  08 10 a0 e1                                      mov r1, r8
005e8358  e4 ff ff 0a                                      beq #0x5e82f0
005e835c  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
005e8360  07 c0 90 e7                                      ldr ip, [r0, r7]
005e8364  0c 00 a0 e1                                      mov r0, ip
005e8368  00 c0 9c e5                                      ldr ip, [ip]
005e836c  0f e0 a0 e1                                      mov lr, pc
005e8370  10 f0 9c e5                                      ldr pc, [ip, #0x10]
005e8374  00 70 a0 e1                                      mov r7, r0
005e8378  08 00 a0 e1                                      mov r0, r8
005e837c  80 d4 f4 eb                                      bl #0x31d584
005e8380  00 00 57 e3                                      cmp r7, #0
005e8384  d9 ff ff 0a                                      beq #0x5e82f0
005e8388  01 00 a0 e3                                      mov r0, #1
005e838c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e8390  00 00 a0 e3                                      mov r0, #0
005e8394  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005e86f4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager11createImageERKN5boost13intrusive_ptrINS0_6CImageEEERKNS_4core10position2dIiEERKNS8_11dimension2dIiEE
; demangled: glitch::video::CTextureManager::createImage(boost::intrusive_ptr<glitch::video::CImage> const&, glitch::core::position2d<int> const&, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
005e86f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e86f8  00 10 a0 e3                                      mov r1, #0
005e86fc  00 50 a0 e1                                      mov r5, r0
005e8700  2c 00 a0 e3                                      mov r0, #0x2c
005e8704  02 60 a0 e1                                      mov r6, r2
005e8708  03 70 a0 e1                                      mov r7, r3
005e870c  a6 2e fd eb                                      bl #0x5341ac
005e8710  18 30 9d e5                                      ldr r3, [sp, #0x18]
005e8714  06 10 a0 e1                                      mov r1, r6
005e8718  07 20 a0 e1                                      mov r2, r7
005e871c  00 40 a0 e1                                      mov r4, r0
005e8720  fa 64 00 eb                                      bl #0x601b10
005e8724  00 00 54 e3                                      cmp r4, #0
005e8728  00 40 85 e5                                      str r4, [r5]
005e872c  04 30 94 15                                      ldrne r3, [r4, #4]
005e8730  05 00 a0 e1                                      mov r0, r5
005e8734  01 30 83 12                                      addne r3, r3, #1
005e8738  04 30 84 15                                      strne r3, [r4, #4]
005e873c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005e8740, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager11createImageENS0_14E_PIXEL_FORMATERKN5boost13intrusive_ptrINS0_6CImageEEE
; demangled: glitch::video::CTextureManager::createImage(glitch::video::E_PIXEL_FORMAT, boost::intrusive_ptr<glitch::video::CImage> const&)
; decoder-mode: arm
005e8740  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e8744  00 10 a0 e3                                      mov r1, #0
005e8748  00 40 a0 e1                                      mov r4, r0
005e874c  2c 00 a0 e3                                      mov r0, #0x2c
005e8750  03 60 a0 e1                                      mov r6, r3
005e8754  02 70 a0 e1                                      mov r7, r2
005e8758  93 2e fd eb                                      bl #0x5341ac
005e875c  07 10 a0 e1                                      mov r1, r7
005e8760  06 20 a0 e1                                      mov r2, r6
005e8764  00 50 a0 e1                                      mov r5, r0
005e8768  72 65 00 eb                                      bl #0x601d38
005e876c  00 00 55 e3                                      cmp r5, #0
005e8770  00 50 84 e5                                      str r5, [r4]
005e8774  04 30 95 15                                      ldrne r3, [r5, #4]
005e8778  04 00 a0 e1                                      mov r0, r4
005e877c  01 30 83 12                                      addne r3, r3, #1
005e8780  04 30 85 15                                      strne r3, [r5, #4]
005e8784  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005e8788, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager11createImageENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE
; demangled: glitch::video::CTextureManager::createImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
005e8788  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e878c  00 10 a0 e3                                      mov r1, #0
005e8790  00 40 a0 e1                                      mov r4, r0
005e8794  2c 00 a0 e3                                      mov r0, #0x2c
005e8798  03 60 a0 e1                                      mov r6, r3
005e879c  02 70 a0 e1                                      mov r7, r2
005e87a0  81 2e fd eb                                      bl #0x5341ac
005e87a4  07 10 a0 e1                                      mov r1, r7
005e87a8  06 20 a0 e1                                      mov r2, r6
005e87ac  00 50 a0 e1                                      mov r5, r0
005e87b0  56 66 00 eb                                      bl #0x602110
005e87b4  00 00 55 e3                                      cmp r5, #0
005e87b8  00 50 84 e5                                      str r5, [r4]
005e87bc  04 30 95 15                                      ldrne r3, [r5, #4]
005e87c0  04 00 a0 e1                                      mov r0, r4
005e87c4  01 30 83 12                                      addne r3, r3, #1
005e87c8  04 30 85 15                                      strne r3, [r5, #4]
005e87cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005e87d0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager19createImageFromDataENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb
; demangled: glitch::video::CTextureManager::createImageFromData(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, void*, bool, bool)
; decoder-mode: arm
005e87d0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005e87d4  00 10 a0 e3                                      mov r1, #0
005e87d8  0c d0 4d e2                                      sub sp, sp, #0xc
005e87dc  00 50 a0 e1                                      mov r5, r0
005e87e0  2c 00 a0 e3                                      mov r0, #0x2c
005e87e4  02 80 a0 e1                                      mov r8, r2
005e87e8  03 a0 a0 e1                                      mov sl, r3
005e87ec  2c 70 dd e5                                      ldrb r7, [sp, #0x2c]
005e87f0  30 60 dd e5                                      ldrb r6, [sp, #0x30]
005e87f4  6c 2e fd eb                                      bl #0x5341ac
005e87f8  28 30 9d e5                                      ldr r3, [sp, #0x28]
005e87fc  08 10 a0 e1                                      mov r1, r8
005e8800  0a 20 a0 e1                                      mov r2, sl
005e8804  00 40 a0 e1                                      mov r4, r0
005e8808  00 70 8d e5                                      str r7, [sp]
005e880c  04 60 8d e5                                      str r6, [sp, #4]
005e8810  96 67 00 eb                                      bl #0x602670
005e8814  00 00 54 e3                                      cmp r4, #0
005e8818  00 40 85 e5                                      str r4, [r5]
005e881c  04 30 94 15                                      ldrne r3, [r4, #4]
005e8820  05 00 a0 e1                                      mov r0, r5
005e8824  01 30 83 12                                      addne r3, r3, #1
005e8828  04 30 84 15                                      strne r3, [r4, #4]
005e882c  0c d0 8d e2                                      add sp, sp, #0xc
005e8830  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x005e8dd4, declared_size=260, range_size=260, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager23markTextureAsUnloadableERKN5boost13intrusive_ptrINS0_8ITextureEEE
; demangled: glitch::video::CTextureManager::markTextureAsUnloadable(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005e8dd4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005e8dd8  00 30 91 e5                                      ldr r3, [r1]
005e8ddc  14 d0 4d e2                                      sub sp, sp, #0x14
005e8de0  10 20 8d e2                                      add r2, sp, #0x10
005e8de4  08 30 22 e5                                      str r3, [r2, #-8]!
005e8de8  00 40 a0 e1                                      mov r4, r0
005e8dec  0c 30 8d e2                                      add r3, sp, #0xc
005e8df0  68 00 90 e5                                      ldr r0, [r0, #0x68]
005e8df4  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
005e8df8  9c 6e f6 eb                                      bl #0x384870
005e8dfc  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
005e8e00  00 50 a0 e1                                      mov r5, r0
005e8e04  03 00 50 e1                                      cmp r0, r3
005e8e08  01 00 00 0a                                      beq #0x5e8e14
005e8e0c  14 d0 8d e2                                      add sp, sp, #0x14
005e8e10  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005e8e14  70 30 94 e5                                      ldr r3, [r4, #0x70]
005e8e18  03 00 50 e1                                      cmp r0, r3
005e8e1c  05 00 00 0a                                      beq #0x5e8e38
005e8e20  08 30 9d e5                                      ldr r3, [sp, #8]
005e8e24  00 30 80 e5                                      str r3, [r0]
005e8e28  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
005e8e2c  04 30 83 e2                                      add r3, r3, #4
005e8e30  6c 30 84 e5                                      str r3, [r4, #0x6c]
005e8e34  f4 ff ff ea                                      b #0x5e8e0c
005e8e38  68 30 94 e5                                      ldr r3, [r4, #0x68]
005e8e3c  00 30 63 e0                                      rsb r3, r3, r0
005e8e40  43 31 a0 e1                                      asr r3, r3, #2
005e8e44  01 00 53 e3                                      cmp r3, #1
005e8e48  03 10 83 20                                      addhs r1, r3, r3
005e8e4c  01 10 83 32                                      addlo r1, r3, #1
005e8e50  07 01 71 e3                                      cmn r1, #0xc0000001
005e8e54  1d 00 00 8a                                      bhi #0x5e8ed0
005e8e58  01 00 53 e1                                      cmp r3, r1
005e8e5c  1b 00 00 8a                                      bhi #0x5e8ed0
005e8e60  10 20 8d e2                                      add r2, sp, #0x10
005e8e64  70 70 84 e2                                      add r7, r4, #0x70
005e8e68  0c 10 22 e5                                      str r1, [r2, #-0xc]!
005e8e6c  07 00 a0 e1                                      mov r0, r7
005e8e70  6f fe ff eb                                      bl #0x5e8834
005e8e74  68 10 94 e5                                      ldr r1, [r4, #0x68]
005e8e78  00 60 a0 e1                                      mov r6, r0
005e8e7c  01 50 55 e0                                      subs r5, r5, r1
005e8e80  00 50 a0 01                                      moveq r5, r0
005e8e84  02 00 00 0a                                      beq #0x5e8e94
005e8e88  05 20 a0 e1                                      mov r2, r5
005e8e8c  29 94 f4 eb                                      bl #0x30df38
005e8e90  05 50 80 e0                                      add r5, r0, r5
005e8e94  08 30 9d e5                                      ldr r3, [sp, #8]
005e8e98  07 00 a0 e1                                      mov r0, r7
005e8e9c  04 30 85 e4                                      str r3, [r5], #4
005e8ea0  68 30 94 e5                                      ldr r3, [r4, #0x68]
005e8ea4  70 20 94 e5                                      ldr r2, [r4, #0x70]
005e8ea8  03 10 a0 e1                                      mov r1, r3
005e8eac  02 30 63 e0                                      rsb r3, r3, r2
005e8eb0  43 21 a0 e1                                      asr r2, r3, #2
005e8eb4  79 fe ff eb                                      bl #0x5e88a0
005e8eb8  04 30 9d e5                                      ldr r3, [sp, #4]
005e8ebc  68 60 84 e5                                      str r6, [r4, #0x68]
005e8ec0  6c 50 84 e5                                      str r5, [r4, #0x6c]
005e8ec4  03 61 86 e0                                      add r6, r6, r3, lsl #2
005e8ec8  70 60 84 e5                                      str r6, [r4, #0x70]
005e8ecc  ce ff ff ea                                      b #0x5e8e0c
005e8ed0  03 11 e0 e3                                      mvn r1, #0xc0000000
005e8ed4  e1 ff ff ea                                      b #0x5e8e60

; FUNCTION 0x005e8f2c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager11findTextureEPKc
; demangled: glitch::video::CTextureManager::findTexture(char const*) const
; decoder-mode: arm
005e8f2c  70 40 2d e9                                      push {r4, r5, r6, lr}
005e8f30  01 40 a0 e1                                      mov r4, r1
005e8f34  00 50 a0 e1                                      mov r5, r0
005e8f38  02 10 a0 e1                                      mov r1, r2
005e8f3c  04 00 a0 e1                                      mov r0, r4
005e8f40  e4 ff ff eb                                      bl #0x5e8ed8
005e8f44  18 20 94 e5                                      ldr r2, [r4, #0x18]
005e8f48  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005e8f4c  34 30 9f e5                                      ldr r3, [pc, #0x34]
005e8f50  01 10 62 e0                                      rsb r1, r2, r1
005e8f54  c1 01 50 e1                                      cmp r0, r1, asr #3
005e8f58  03 30 8f e0                                      add r3, pc, r3
005e8f5c  80 21 82 30                                      addlo r2, r2, r0, lsl #3
005e8f60  24 20 9f 25                                      ldrhs r2, [pc, #0x24]
005e8f64  02 20 93 27                                      ldrhs r2, [r3, r2]
005e8f68  00 30 92 e5                                      ldr r3, [r2]
005e8f6c  05 00 a0 e1                                      mov r0, r5
005e8f70  00 00 53 e3                                      cmp r3, #0
005e8f74  00 30 85 e5                                      str r3, [r5]
005e8f78  04 20 93 15                                      ldrne r2, [r3, #4]
005e8f7c  01 20 82 12                                      addne r2, r2, #1
005e8f80  04 20 83 15                                      strne r2, [r3, #4]
005e8f84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e8f88  38 bb 3a 00 e8 10 00 00                          .byte 0x38, 0xbb, 0x3a, 0x00, 0xe8, 0x10, 0x00, 0x00

; FUNCTION 0x005e90e0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager22addExternalImageLoaderERKN5boost13intrusive_ptrINS0_12IImageLoaderEEE
; demangled: glitch::video::CTextureManager::addExternalImageLoader(boost::intrusive_ptr<glitch::video::IImageLoader> const&)
; decoder-mode: arm
005e90e0  00 30 91 e5                                      ldr r3, [r1]
005e90e4  01 20 a0 e1                                      mov r2, r1
005e90e8  00 00 53 e3                                      cmp r3, #0
005e90ec  1e ff 2f 01                                      bxeq lr
005e90f0  04 10 93 e5                                      ldr r1, [r3, #4]
005e90f4  01 10 81 e2                                      add r1, r1, #1
005e90f8  04 10 83 e5                                      str r1, [r3, #4]
005e90fc  34 10 90 e5                                      ldr r1, [r0, #0x34]
005e9100  38 30 90 e5                                      ldr r3, [r0, #0x38]
005e9104  03 00 51 e1                                      cmp r1, r3
005e9108  09 00 00 0a                                      beq #0x5e9134
005e910c  00 30 92 e5                                      ldr r3, [r2]
005e9110  00 00 53 e3                                      cmp r3, #0
005e9114  00 30 81 e5                                      str r3, [r1]
005e9118  04 20 93 15                                      ldrne r2, [r3, #4]
005e911c  01 20 82 12                                      addne r2, r2, #1
005e9120  04 20 83 15                                      strne r2, [r3, #4]
005e9124  34 30 90 e5                                      ldr r3, [r0, #0x34]
005e9128  04 30 83 e2                                      add r3, r3, #4
005e912c  34 30 80 e5                                      str r3, [r0, #0x34]
005e9130  1e ff 2f e1                                      bx lr
005e9134  30 00 80 e2                                      add r0, r0, #0x30
005e9138  a7 ff ff ea                                      b #0x5e8fdc

; FUNCTION 0x005e913c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager19createImageFromFileEPNS_2io9IReadFileE
; demangled: glitch::video::CTextureManager::createImageFromFile(glitch::io::IReadFile*)
; decoder-mode: arm
005e913c  30 40 2d e9                                      push {r4, r5, lr}
005e9140  0c d0 4d e2                                      sub sp, sp, #0xc
005e9144  00 40 a0 e1                                      mov r4, r0
005e9148  04 00 8d e2                                      add r0, sp, #4
005e914c  02 50 a0 e1                                      mov r5, r2
005e9150  fb fb ff eb                                      bl #0x5e8144
005e9154  04 00 9d e5                                      ldr r0, [sp, #4]
005e9158  00 00 50 e3                                      cmp r0, #0
005e915c  00 00 84 05                                      streq r0, [r4]
005e9160  09 00 00 0a                                      beq #0x5e918c
005e9164  00 10 a0 e1                                      mov r1, r0
005e9168  00 30 90 e5                                      ldr r3, [r0]
005e916c  05 20 a0 e1                                      mov r2, r5
005e9170  04 00 a0 e1                                      mov r0, r4
005e9174  0f e0 a0 e1                                      mov lr, pc
005e9178  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005e917c  04 00 9d e5                                      ldr r0, [sp, #4]
005e9180  00 00 50 e3                                      cmp r0, #0
005e9184  00 00 00 0a                                      beq #0x5e918c
005e9188  fd d0 f4 eb                                      bl #0x31d584
005e918c  04 00 a0 e1                                      mov r0, r4
005e9190  0c d0 8d e2                                      add sp, sp, #0xc
005e9194  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005e9198, declared_size=184, range_size=184, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager19createImageFromFileEPKc
; demangled: glitch::video::CTextureManager::createImageFromFile(char const*)
; decoder-mode: arm
005e9198  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005e919c  00 30 a0 e3                                      mov r3, #0
005e91a0  00 70 52 e2                                      subs r7, r2, #0
005e91a4  0c d0 4d e2                                      sub sp, sp, #0xc
005e91a8  00 40 a0 e1                                      mov r4, r0
005e91ac  00 30 80 e5                                      str r3, [r0]
005e91b0  01 60 a0 e1                                      mov r6, r1
005e91b4  1b 00 00 0a                                      beq #0x5e9228
005e91b8  2c 30 91 e5                                      ldr r3, [r1, #0x2c]
005e91bc  07 10 a0 e1                                      mov r1, r7
005e91c0  03 00 a0 e1                                      mov r0, r3
005e91c4  00 30 93 e5                                      ldr r3, [r3]
005e91c8  0f e0 a0 e1                                      mov lr, pc
005e91cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e91d0  00 50 50 e2                                      subs r5, r0, #0
005e91d4  16 00 00 0a                                      beq #0x5e9234
005e91d8  05 20 a0 e1                                      mov r2, r5
005e91dc  04 00 8d e2                                      add r0, sp, #4
005e91e0  06 10 a0 e1                                      mov r1, r6
005e91e4  d4 ff ff eb                                      bl #0x5e913c
005e91e8  04 30 9d e5                                      ldr r3, [sp, #4]
005e91ec  00 00 53 e3                                      cmp r3, #0
005e91f0  04 20 93 15                                      ldrne r2, [r3, #4]
005e91f4  01 20 82 12                                      addne r2, r2, #1
005e91f8  04 20 83 15                                      strne r2, [r3, #4]
005e91fc  00 00 94 e5                                      ldr r0, [r4]
005e9200  00 30 84 e5                                      str r3, [r4]
005e9204  00 00 50 e3                                      cmp r0, #0
005e9208  00 00 00 0a                                      beq #0x5e9210
005e920c  dc d0 f4 eb                                      bl #0x31d584
005e9210  04 00 9d e5                                      ldr r0, [sp, #4]
005e9214  00 00 50 e3                                      cmp r0, #0
005e9218  00 00 00 0a                                      beq #0x5e9220
005e921c  d8 d0 f4 eb                                      bl #0x31d584
005e9220  05 00 a0 e1                                      mov r0, r5
005e9224  d6 d0 f4 eb                                      bl #0x31d584
005e9228  04 00 a0 e1                                      mov r0, r4
005e922c  0c d0 8d e2                                      add sp, sp, #0xc
005e9230  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005e9234  10 00 9f e5                                      ldr r0, [pc, #0x10]
005e9238  07 10 a0 e1                                      mov r1, r7
005e923c  02 20 a0 e3                                      mov r2, #2
005e9240  00 00 8f e0                                      add r0, pc, r0
005e9244  a7 86 00 eb                                      bl #0x60ace8
005e9248  f6 ff ff ea                                      b #0x5e9228
; mapping-symbol data/literal pool
005e924c  98 a0 2f 00                                      .byte 0x98, 0xa0, 0x2f, 0x00

; FUNCTION 0x005e94a8, declared_size=244, range_size=244, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager13renameTextureERKN5boost13intrusive_ptrINS0_8ITextureEEEPKc
; demangled: glitch::video::CTextureManager::renameTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, char const*)
; decoder-mode: arm
005e94a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e94ac  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
005e94b0  e0 70 9f e5                                      ldr r7, [pc, #0xe0]
005e94b4  01 80 a0 e1                                      mov r8, r1
005e94b8  04 40 8f e0                                      add r4, pc, r4
005e94bc  07 10 94 e7                                      ldr r1, [r4, r7]
005e94c0  02 a0 a0 e1                                      mov sl, r2
005e94c4  00 30 98 e5                                      ldr r3, [r8]
005e94c8  00 20 91 e5                                      ldr r2, [r1]
005e94cc  24 d0 4d e2                                      sub sp, sp, #0x24
005e94d0  00 90 a0 e1                                      mov sb, r0
005e94d4  1c 20 8d e5                                      str r2, [sp, #0x1c]
005e94d8  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
005e94dc  7d fe ff eb                                      bl #0x5e8ed8
005e94e0  00 60 98 e5                                      ldr r6, [r8]
005e94e4  04 50 8d e2                                      add r5, sp, #4
005e94e8  14 50 8d e5                                      str r5, [sp, #0x14]
005e94ec  18 50 8d e5                                      str r5, [sp, #0x18]
005e94f0  18 20 96 e5                                      ldr r2, [r6, #0x18]
005e94f4  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
005e94f8  00 b0 a0 e1                                      mov fp, r0
005e94fc  05 00 a0 e1                                      mov r0, r5
005e9500  bb f2 f4 eb                                      bl #0x325ff4
005e9504  0a 00 a0 e1                                      mov r0, sl
005e9508  51 92 f4 eb                                      bl #0x30de54
005e950c  08 60 86 e2                                      add r6, r6, #8
005e9510  00 20 8a e0                                      add r2, sl, r0
005e9514  0a 10 a0 e1                                      mov r1, sl
005e9518  06 00 a0 e1                                      mov r0, r6
005e951c  99 dd f4 eb                                      bl #0x320b88
005e9520  00 30 98 e5                                      ldr r3, [r8]
005e9524  09 00 a0 e1                                      mov r0, sb
005e9528  0b 10 a0 e1                                      mov r1, fp
005e952c  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
005e9530  00 30 a0 e3                                      mov r3, #0
005e9534  83 ff ff eb                                      bl #0x5e9348
005e9538  00 80 50 e2                                      subs r8, r0, #0
005e953c  05 00 00 1a                                      bne #0x5e9558
005e9540  05 00 56 e1                                      cmp r6, r5
005e9544  03 00 00 0a                                      beq #0x5e9558
005e9548  06 00 a0 e1                                      mov r0, r6
005e954c  18 10 9d e5                                      ldr r1, [sp, #0x18]
005e9550  14 20 9d e5                                      ldr r2, [sp, #0x14]
005e9554  8b dd f4 eb                                      bl #0x320b88
005e9558  18 00 9d e5                                      ldr r0, [sp, #0x18]
005e955c  05 00 50 e1                                      cmp r0, r5
005e9560  02 00 00 0a                                      beq #0x5e9570
005e9564  00 00 50 e3                                      cmp r0, #0
005e9568  00 00 00 0a                                      beq #0x5e9570
005e956c  b7 9b f4 eb                                      bl #0x310450
005e9570  07 30 94 e7                                      ldr r3, [r4, r7]
005e9574  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005e9578  08 00 a0 e1                                      mov r0, r8
005e957c  00 30 93 e5                                      ldr r3, [r3]
005e9580  03 00 52 e1                                      cmp r2, r3
005e9584  01 00 00 1a                                      bne #0x5e9590
005e9588  24 d0 8d e2                                      add sp, sp, #0x24
005e958c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e9590  5e 93 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e9594  d8 b5 3a 00 ac 40 00 00                          .byte 0xd8, 0xb5, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005e97e0, declared_size=244, range_size=244, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager28clearDriverSpecificResourcesEv
; demangled: glitch::video::CTextureManager::clearDriverSpecificResources()
; decoder-mode: arm
005e97e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e97e4  08 40 90 e5                                      ldr r4, [r0, #8]
005e97e8  dc 70 9f e5                                      ldr r7, [pc, #0xdc]
005e97ec  00 60 a0 e1                                      mov r6, r0
005e97f0  00 00 54 e1                                      cmp r4, r0
005e97f4  07 70 8f e0                                      add r7, pc, r7
005e97f8  1c 00 00 0a                                      beq #0x5e9870
005e97fc  cc 80 9f e5                                      ldr r8, [pc, #0xcc]
005e9800  18 30 96 e5                                      ldr r3, [r6, #0x18]
005e9804  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
005e9808  b4 23 d4 e1                                      ldrh r2, [r4, #0x34]
005e980c  01 10 63 e0                                      rsb r1, r3, r1
005e9810  c1 01 52 e1                                      cmp r2, r1, asr #3
005e9814  08 30 97 27                                      ldrhs r3, [r7, r8]
005e9818  82 31 83 30                                      addlo r3, r3, r2, lsl #3
005e981c  00 50 93 e5                                      ldr r5, [r3]
005e9820  00 00 55 e3                                      cmp r5, #0
005e9824  04 30 95 15                                      ldrne r3, [r5, #4]
005e9828  01 30 83 12                                      addne r3, r3, #1
005e982c  04 30 85 15                                      strne r3, [r5, #4]
005e9830  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005e9834  08 00 13 e3                                      tst r3, #8
005e9838  0d 00 00 1a                                      bne #0x5e9874
005e983c  05 00 a0 e1                                      mov r0, r5
005e9840  4f cf f4 eb                                      bl #0x31d584
005e9844  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005e9848  00 00 52 e3                                      cmp r2, #0
005e984c  01 00 00 1a                                      bne #0x5e9858
005e9850  10 00 00 ea                                      b #0x5e9898
005e9854  03 20 a0 e1                                      mov r2, r3
005e9858  08 30 92 e5                                      ldr r3, [r2, #8]
005e985c  00 00 53 e3                                      cmp r3, #0
005e9860  fb ff ff 1a                                      bne #0x5e9854
005e9864  02 40 a0 e1                                      mov r4, r2
005e9868  04 00 56 e1                                      cmp r6, r4
005e986c  e3 ff ff 1a                                      bne #0x5e9800
005e9870  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e9874  00 30 95 e5                                      ldr r3, [r5]
005e9878  05 00 a0 e1                                      mov r0, r5
005e987c  0f e0 a0 e1                                      mov lr, pc
005e9880  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e9884  05 00 a0 e1                                      mov r0, r5
005e9888  3d cf f4 eb                                      bl #0x31d584
005e988c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005e9890  00 00 52 e3                                      cmp r2, #0
005e9894  ef ff ff 1a                                      bne #0x5e9858
005e9898  04 30 94 e5                                      ldr r3, [r4, #4]
005e989c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005e98a0  04 00 51 e1                                      cmp r1, r4
005e98a4  05 00 00 1a                                      bne #0x5e98c0
005e98a8  03 40 a0 e1                                      mov r4, r3
005e98ac  04 30 93 e5                                      ldr r3, [r3, #4]
005e98b0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005e98b4  04 00 52 e1                                      cmp r2, r4
005e98b8  fa ff ff 0a                                      beq #0x5e98a8
005e98bc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005e98c0  03 00 52 e1                                      cmp r2, r3
005e98c4  03 40 a0 11                                      movne r4, r3
005e98c8  e6 ff ff ea                                      b #0x5e9868
; mapping-symbol data/literal pool
005e98cc  9c b2 3a 00 e8 10 00 00                          .byte 0x9c, 0xb2, 0x3a, 0x00, 0xe8, 0x10, 0x00, 0x00

; FUNCTION 0x005e9908, declared_size=324, range_size=324, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager11getHashNameEPKc
; demangled: glitch::video::CTextureManager::getHashName(char const*) const
; decoder-mode: arm
005e9908  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005e990c  30 41 9f e5                                      ldr r4, [pc, #0x130]
005e9910  30 61 9f e5                                      ldr r6, [pc, #0x130]
005e9914  74 30 91 e5                                      ldr r3, [r1, #0x74]
005e9918  04 40 8f e0                                      add r4, pc, r4
005e991c  06 c0 94 e7                                      ldr ip, [r4, r6]
005e9920  02 a0 a0 e1                                      mov sl, r2
005e9924  4c d0 4d e2                                      sub sp, sp, #0x4c
005e9928  00 20 9c e5                                      ldr r2, [ip]
005e992c  08 00 13 e3                                      tst r3, #8
005e9930  00 50 a0 e1                                      mov r5, r0
005e9934  44 20 8d e5                                      str r2, [sp, #0x44]
005e9938  1f 00 00 1a                                      bne #0x5e99bc
005e993c  04 00 13 e3                                      tst r3, #4
005e9940  12 00 00 0a                                      beq #0x5e9990
005e9944  2c 80 91 e5                                      ldr r8, [r1, #0x2c]
005e9948  14 70 8d e2                                      add r7, sp, #0x14
005e994c  0a 10 a0 e1                                      mov r1, sl
005e9950  00 30 98 e5                                      ldr r3, [r8]
005e9954  08 20 8d e2                                      add r2, sp, #8
005e9958  07 00 a0 e1                                      mov r0, r7
005e995c  34 a0 93 e5                                      ldr sl, [r3, #0x34]
005e9960  b5 f1 f4 eb                                      bl #0x32603c
005e9964  05 00 a0 e1                                      mov r0, r5
005e9968  08 10 a0 e1                                      mov r1, r8
005e996c  07 20 a0 e1                                      mov r2, r7
005e9970  3a ff 2f e1                                      blx sl
005e9974  28 00 9d e5                                      ldr r0, [sp, #0x28]
005e9978  07 00 50 e1                                      cmp r0, r7
005e997c  06 00 00 0a                                      beq #0x5e999c
005e9980  00 00 50 e3                                      cmp r0, #0
005e9984  04 00 00 0a                                      beq #0x5e999c
005e9988  b0 9a f4 eb                                      bl #0x310450
005e998c  02 00 00 ea                                      b #0x5e999c
005e9990  0a 10 a0 e1                                      mov r1, sl
005e9994  04 20 8d e2                                      add r2, sp, #4
005e9998  a7 f1 f4 eb                                      bl #0x32603c
005e999c  06 30 94 e7                                      ldr r3, [r4, r6]
005e99a0  44 20 9d e5                                      ldr r2, [sp, #0x44]
005e99a4  05 00 a0 e1                                      mov r0, r5
005e99a8  00 30 93 e5                                      ldr r3, [r3]
005e99ac  03 00 52 e1                                      cmp r2, r3
005e99b0  22 00 00 1a                                      bne #0x5e9a40
005e99b4  4c d0 8d e2                                      add sp, sp, #0x4c
005e99b8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005e99bc  2c 30 91 e5                                      ldr r3, [r1, #0x2c]
005e99c0  0a 10 a0 e1                                      mov r1, sl
005e99c4  03 00 a0 e1                                      mov r0, r3
005e99c8  00 30 93 e5                                      ldr r3, [r3]
005e99cc  0f e0 a0 e1                                      mov lr, pc
005e99d0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e99d4  00 70 50 e2                                      subs r7, r0, #0
005e99d8  13 00 00 0a                                      beq #0x5e9a2c
005e99dc  00 30 97 e5                                      ldr r3, [r7]
005e99e0  0f e0 a0 e1                                      mov lr, pc
005e99e4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005e99e8  2c 80 8d e2                                      add r8, sp, #0x2c
005e99ec  00 10 a0 e1                                      mov r1, r0
005e99f0  10 20 8d e2                                      add r2, sp, #0x10
005e99f4  08 00 a0 e1                                      mov r0, r8
005e99f8  8f f1 f4 eb                                      bl #0x32603c
005e99fc  07 00 a0 e1                                      mov r0, r7
005e9a00  df ce f4 eb                                      bl #0x31d584
005e9a04  10 50 85 e5                                      str r5, [r5, #0x10]
005e9a08  14 50 85 e5                                      str r5, [r5, #0x14]
005e9a0c  05 00 a0 e1                                      mov r0, r5
005e9a10  40 10 9d e5                                      ldr r1, [sp, #0x40]
005e9a14  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005e9a18  75 f1 f4 eb                                      bl #0x325ff4
005e9a1c  40 00 9d e5                                      ldr r0, [sp, #0x40]
005e9a20  08 00 50 e1                                      cmp r0, r8
005e9a24  d5 ff ff 1a                                      bne #0x5e9980
005e9a28  db ff ff ea                                      b #0x5e999c
005e9a2c  0a 10 a0 e1                                      mov r1, sl
005e9a30  05 00 a0 e1                                      mov r0, r5
005e9a34  0c 20 8d e2                                      add r2, sp, #0xc
005e9a38  7f f1 f4 eb                                      bl #0x32603c
005e9a3c  d6 ff ff ea                                      b #0x5e999c
005e9a40  32 92 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e9a44  78 b1 3a 00 ac 40 00 00                          .byte 0x78, 0xb1, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005ea050, declared_size=232, range_size=232, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManagerD2Ev
; demangled: glitch::video::CTextureManager::~CTextureManager()
; decoder-mode: arm
005ea050  70 40 2d e9                                      push {r4, r5, r6, lr}
005ea054  00 40 a0 e1                                      mov r4, r0
005ea058  8b f8 ff eb                                      bl #0x5e828c
005ea05c  04 00 a0 e1                                      mov r0, r4
005ea060  00 10 a0 e3                                      mov r1, #0
005ea064  c3 ff ff eb                                      bl #0x5e9f78
005ea068  30 30 94 e5                                      ldr r3, [r4, #0x30]
005ea06c  34 20 94 e5                                      ldr r2, [r4, #0x34]
005ea070  02 20 63 e0                                      rsb r2, r3, r2
005ea074  22 21 b0 e1                                      lsrs r2, r2, #2
005ea078  08 00 00 0a                                      beq #0x5ea0a0
005ea07c  00 50 a0 e3                                      mov r5, #0
005ea080  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005ea084  3e cd f4 eb                                      bl #0x31d584
005ea088  30 30 94 e5                                      ldr r3, [r4, #0x30]
005ea08c  34 20 94 e5                                      ldr r2, [r4, #0x34]
005ea090  01 50 85 e2                                      add r5, r5, #1
005ea094  02 20 63 e0                                      rsb r2, r3, r2
005ea098  42 01 55 e1                                      cmp r5, r2, asr #2
005ea09c  f7 ff ff 3a                                      blo #0x5ea080
005ea0a0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
005ea0a4  40 20 94 e5                                      ldr r2, [r4, #0x40]
005ea0a8  02 20 63 e0                                      rsb r2, r3, r2
005ea0ac  22 21 b0 e1                                      lsrs r2, r2, #2
005ea0b0  08 00 00 0a                                      beq #0x5ea0d8
005ea0b4  00 50 a0 e3                                      mov r5, #0
005ea0b8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005ea0bc  30 cd f4 eb                                      bl #0x31d584
005ea0c0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
005ea0c4  40 20 94 e5                                      ldr r2, [r4, #0x40]
005ea0c8  01 50 85 e2                                      add r5, r5, #1
005ea0cc  02 20 63 e0                                      rsb r2, r3, r2
005ea0d0  42 01 55 e1                                      cmp r5, r2, asr #2
005ea0d4  f7 ff ff 3a                                      blo #0x5ea0b8
005ea0d8  68 30 94 e5                                      ldr r3, [r4, #0x68]
005ea0dc  68 20 84 e2                                      add r2, r4, #0x68
005ea0e0  00 00 53 e3                                      cmp r3, #0
005ea0e4  05 00 00 0a                                      beq #0x5ea100
005ea0e8  08 20 92 e5                                      ldr r2, [r2, #8]
005ea0ec  03 10 a0 e1                                      mov r1, r3
005ea0f0  70 00 84 e2                                      add r0, r4, #0x70
005ea0f4  02 30 63 e0                                      rsb r3, r3, r2
005ea0f8  43 21 a0 e1                                      asr r2, r3, #2
005ea0fc  e7 f9 ff eb                                      bl #0x5e88a0
005ea100  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
005ea104  00 00 50 e3                                      cmp r0, #0
005ea108  00 00 00 0a                                      beq #0x5ea110
005ea10c  cf 98 f4 eb                                      bl #0x310450
005ea110  30 00 84 e2                                      add r0, r4, #0x30
005ea114  9d fb ff eb                                      bl #0x5e8f90
005ea118  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
005ea11c  00 00 50 e3                                      cmp r0, #0
005ea120  00 00 00 0a                                      beq #0x5ea128
005ea124  16 cd f4 eb                                      bl #0x31d584
005ea128  04 00 a0 e1                                      mov r0, r4
005ea12c  9b fd ff eb                                      bl #0x5e97a0
005ea130  04 00 a0 e1                                      mov r0, r4
005ea134  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005ea138, declared_size=232, range_size=232, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManagerD1Ev
; demangled: glitch::video::CTextureManager::~CTextureManager()
; decoder-mode: arm
005ea138  70 40 2d e9                                      push {r4, r5, r6, lr}
005ea13c  00 40 a0 e1                                      mov r4, r0
005ea140  51 f8 ff eb                                      bl #0x5e828c
005ea144  04 00 a0 e1                                      mov r0, r4
005ea148  00 10 a0 e3                                      mov r1, #0
005ea14c  89 ff ff eb                                      bl #0x5e9f78
005ea150  30 30 94 e5                                      ldr r3, [r4, #0x30]
005ea154  34 20 94 e5                                      ldr r2, [r4, #0x34]
005ea158  02 20 63 e0                                      rsb r2, r3, r2
005ea15c  22 21 b0 e1                                      lsrs r2, r2, #2
005ea160  08 00 00 0a                                      beq #0x5ea188
005ea164  00 50 a0 e3                                      mov r5, #0
005ea168  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005ea16c  04 cd f4 eb                                      bl #0x31d584
005ea170  30 30 94 e5                                      ldr r3, [r4, #0x30]
005ea174  34 20 94 e5                                      ldr r2, [r4, #0x34]
005ea178  01 50 85 e2                                      add r5, r5, #1
005ea17c  02 20 63 e0                                      rsb r2, r3, r2
005ea180  42 01 55 e1                                      cmp r5, r2, asr #2
005ea184  f7 ff ff 3a                                      blo #0x5ea168
005ea188  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
005ea18c  40 20 94 e5                                      ldr r2, [r4, #0x40]
005ea190  02 20 63 e0                                      rsb r2, r3, r2
005ea194  22 21 b0 e1                                      lsrs r2, r2, #2
005ea198  08 00 00 0a                                      beq #0x5ea1c0
005ea19c  00 50 a0 e3                                      mov r5, #0
005ea1a0  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005ea1a4  f6 cc f4 eb                                      bl #0x31d584
005ea1a8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
005ea1ac  40 20 94 e5                                      ldr r2, [r4, #0x40]
005ea1b0  01 50 85 e2                                      add r5, r5, #1
005ea1b4  02 20 63 e0                                      rsb r2, r3, r2
005ea1b8  42 01 55 e1                                      cmp r5, r2, asr #2
005ea1bc  f7 ff ff 3a                                      blo #0x5ea1a0
005ea1c0  68 30 94 e5                                      ldr r3, [r4, #0x68]
005ea1c4  68 20 84 e2                                      add r2, r4, #0x68
005ea1c8  00 00 53 e3                                      cmp r3, #0
005ea1cc  05 00 00 0a                                      beq #0x5ea1e8
005ea1d0  08 20 92 e5                                      ldr r2, [r2, #8]
005ea1d4  03 10 a0 e1                                      mov r1, r3
005ea1d8  70 00 84 e2                                      add r0, r4, #0x70
005ea1dc  02 30 63 e0                                      rsb r3, r3, r2
005ea1e0  43 21 a0 e1                                      asr r2, r3, #2
005ea1e4  ad f9 ff eb                                      bl #0x5e88a0
005ea1e8  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
005ea1ec  00 00 50 e3                                      cmp r0, #0
005ea1f0  00 00 00 0a                                      beq #0x5ea1f8
005ea1f4  95 98 f4 eb                                      bl #0x310450
005ea1f8  30 00 84 e2                                      add r0, r4, #0x30
005ea1fc  63 fb ff eb                                      bl #0x5e8f90
005ea200  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
005ea204  00 00 50 e3                                      cmp r0, #0
005ea208  00 00 00 0a                                      beq #0x5ea210
005ea20c  dc cc f4 eb                                      bl #0x31d584
005ea210  04 00 a0 e1                                      mov r0, r4
005ea214  61 fd ff eb                                      bl #0x5e97a0
005ea218  04 00 a0 e1                                      mov r0, r4
005ea21c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005ea228, declared_size=128, range_size=128, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager14setPlaceHolderENS1_14E_PLACE_HOLDERERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_14E_TEXTURE_TYPEE
; demangled: glitch::video::CTextureManager::setPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_TYPE)
; decoder-mode: arm
005ea228  ff 00 53 e3                                      cmp r3, #0xff
005ea22c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ea230  03 40 a0 e1                                      mov r4, r3
005ea234  00 50 a0 e1                                      mov r5, r0
005ea238  02 80 a0 e1                                      mov r8, r2
005ea23c  10 00 00 0a                                      beq #0x5ea284
005ea240  01 61 a0 e1                                      lsl r6, r1, #2
005ea244  04 70 86 e0                                      add r7, r6, r4
005ea248  12 70 87 e2                                      add r7, r7, #0x12
005ea24c  07 11 95 e7                                      ldr r1, [r5, r7, lsl #2]
005ea250  00 00 51 e3                                      cmp r1, #0
005ea254  02 00 00 0a                                      beq #0x5ea264
005ea258  05 00 a0 e1                                      mov r0, r5
005ea25c  cf 69 f6 eb                                      bl #0x3849a0
005ea260  07 11 95 e7                                      ldr r1, [r5, r7, lsl #2]
005ea264  04 30 91 e5                                      ldr r3, [r1, #4]
005ea268  01 00 53 e3                                      cmp r3, #1
005ea26c  0a 00 00 0a                                      beq #0x5ea29c
005ea270  00 30 98 e5                                      ldr r3, [r8]
005ea274  04 40 86 e0                                      add r4, r6, r4
005ea278  12 40 84 e2                                      add r4, r4, #0x12
005ea27c  04 31 85 e7                                      str r3, [r5, r4, lsl #2]
005ea280  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ea284  00 30 92 e5                                      ldr r3, [r2]
005ea288  00 00 53 e3                                      cmp r3, #0
005ea28c  fb ff ff 0a                                      beq #0x5ea280
005ea290  38 40 93 e5                                      ldr r4, [r3, #0x38]
005ea294  03 40 04 e2                                      and r4, r4, #3
005ea298  e8 ff ff ea                                      b #0x5ea240
005ea29c  05 00 a0 e1                                      mov r0, r5
005ea2a0  be 69 f6 eb                                      bl #0x3849a0
005ea2a4  f1 ff ff ea                                      b #0x5ea270

; FUNCTION 0x005ea2a8, declared_size=604, range_size=604, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager10getTextureEPKcbRNS_4core19SScopedProcessArrayIcEE
; demangled: glitch::video::CTextureManager::getTexture(char const*, bool, glitch::core::SScopedProcessArray<char>&) const
; decoder-mode: arm
005ea2a8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ea2ac  40 72 9f e5                                      ldr r7, [pc, #0x240]
005ea2b0  02 60 a0 e1                                      mov r6, r2
005ea2b4  00 00 52 e3                                      cmp r2, #0
005ea2b8  00 20 a0 e3                                      mov r2, #0
005ea2bc  07 70 8f e0                                      add r7, pc, r7
005ea2c0  00 50 a0 e1                                      mov r5, r0
005ea2c4  00 20 80 e5                                      str r2, [r0]
005ea2c8  01 40 a0 e1                                      mov r4, r1
005ea2cc  03 a0 a0 e1                                      mov sl, r3
005ea2d0  04 60 80 e5                                      str r6, [r0, #4]
005ea2d4  56 00 00 0a                                      beq #0x5ea434
005ea2d8  01 00 a0 e1                                      mov r0, r1
005ea2dc  06 10 a0 e1                                      mov r1, r6
005ea2e0  fc fa ff eb                                      bl #0x5e8ed8
005ea2e4  18 30 94 e5                                      ldr r3, [r4, #0x18]
005ea2e8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005ea2ec  02 20 63 e0                                      rsb r2, r3, r2
005ea2f0  c2 01 50 e1                                      cmp r0, r2, asr #3
005ea2f4  80 31 83 30                                      addlo r3, r3, r0, lsl #3
005ea2f8  65 00 00 2a                                      bhs #0x5ea494
005ea2fc  00 70 93 e5                                      ldr r7, [r3]
005ea300  00 00 57 e3                                      cmp r7, #0
005ea304  04 30 97 15                                      ldrne r3, [r7, #4]
005ea308  02 30 83 12                                      addne r3, r3, #2
005ea30c  04 30 87 15                                      strne r3, [r7, #4]
005ea310  00 00 95 e5                                      ldr r0, [r5]
005ea314  00 70 85 e5                                      str r7, [r5]
005ea318  00 00 50 e3                                      cmp r0, #0
005ea31c  00 00 00 0a                                      beq #0x5ea324
005ea320  97 cc f4 eb                                      bl #0x31d584
005ea324  00 00 57 e3                                      cmp r7, #0
005ea328  01 00 00 0a                                      beq #0x5ea334
005ea32c  07 00 a0 e1                                      mov r0, r7
005ea330  93 cc f4 eb                                      bl #0x31d584
005ea334  00 30 95 e5                                      ldr r3, [r5]
005ea338  00 00 53 e3                                      cmp r3, #0
005ea33c  3c 00 00 0a                                      beq #0x5ea434
005ea340  00 00 5a e3                                      cmp sl, #0
005ea344  55 00 00 1a                                      bne #0x5ea4a0
005ea348  fe 0f a0 e3                                      mov r0, #0x3f8
005ea34c  a8 28 fd eb                                      bl #0x5345f4
005ea350  06 10 a0 e1                                      mov r1, r6
005ea354  00 70 a0 e1                                      mov r7, r0
005ea358  70 90 f4 eb                                      bl #0x30e520
005ea35c  04 00 a0 e1                                      mov r0, r4
005ea360  07 10 a0 e1                                      mov r1, r7
005ea364  db fa ff eb                                      bl #0x5e8ed8
005ea368  ff bf 0f e3                                      movw fp, #0xffff
005ea36c  0b 00 50 e1                                      cmp r0, fp
005ea370  1d 00 00 0a                                      beq #0x5ea3ec
005ea374  06 00 a0 e1                                      mov r0, r6
005ea378  b5 8e f4 eb                                      bl #0x30de54
005ea37c  00 80 a0 e1                                      mov r8, r0
005ea380  fd 2f 60 e2                                      rsb r2, r0, #0x3f4
005ea384  01 00 80 e2                                      add r0, r0, #1
005ea388  0a 10 a0 e1                                      mov r1, sl
005ea38c  03 20 82 e2                                      add r2, r2, #3
005ea390  00 00 87 e0                                      add r0, r7, r0
005ea394  41 90 a0 e3                                      mov sb, #0x41
005ea398  30 90 f4 eb                                      bl #0x30e460
005ea39c  08 90 c7 e7                                      strb sb, [r7, r8]
005ea3a0  04 00 a0 e1                                      mov r0, r4
005ea3a4  07 10 a0 e1                                      mov r1, r7
005ea3a8  ca fa ff eb                                      bl #0x5e8ed8
005ea3ac  0b 00 50 e1                                      cmp r0, fp
005ea3b0  08 a0 a0 e1                                      mov sl, r8
005ea3b4  0c 00 00 0a                                      beq #0x5ea3ec
005ea3b8  0a 30 d7 e7                                      ldrb r3, [r7, sl]
005ea3bc  0a 20 87 e0                                      add r2, r7, sl
005ea3c0  5a 00 53 e3                                      cmp r3, #0x5a
005ea3c4  01 30 83 12                                      addne r3, r3, #1
005ea3c8  0a 30 c7 17                                      strbne r3, [r7, sl]
005ea3cc  0a 00 a0 11                                      movne r0, sl
005ea3d0  19 00 00 0a                                      beq #0x5ea43c
005ea3d4  00 a0 a0 e1                                      mov sl, r0
005ea3d8  04 00 a0 e1                                      mov r0, r4
005ea3dc  07 10 a0 e1                                      mov r1, r7
005ea3e0  bc fa ff eb                                      bl #0x5e8ed8
005ea3e4  0b 00 50 e1                                      cmp r0, fp
005ea3e8  f2 ff ff 1a                                      bne #0x5ea3b8
005ea3ec  28 20 9d e5                                      ldr r2, [sp, #0x28]
005ea3f0  00 00 92 e5                                      ldr r0, [r2]
005ea3f4  00 00 50 e3                                      cmp r0, #0
005ea3f8  00 00 00 0a                                      beq #0x5ea400
005ea3fc  a1 28 fd eb                                      bl #0x534688
005ea400  28 30 9d e5                                      ldr r3, [sp, #0x28]
005ea404  00 00 57 e3                                      cmp r7, #0
005ea408  00 70 83 e5                                      str r7, [r3]
005ea40c  32 00 00 0a                                      beq #0x5ea4dc
005ea410  00 00 95 e5                                      ldr r0, [r5]
005ea414  00 30 a0 e3                                      mov r3, #0
005ea418  00 30 85 e5                                      str r3, [r5]
005ea41c  03 00 50 e1                                      cmp r0, r3
005ea420  00 00 00 0a                                      beq #0x5ea428
005ea424  56 cc f4 eb                                      bl #0x31d584
005ea428  28 20 9d e5                                      ldr r2, [sp, #0x28]
005ea42c  00 30 92 e5                                      ldr r3, [r2]
005ea430  04 30 85 e5                                      str r3, [r5, #4]
005ea434  05 00 a0 e1                                      mov r0, r5
005ea438  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ea43c  01 00 8a e2                                      add r0, sl, #1
005ea440  f6 33 00 e3                                      movw r3, #0x3f6
005ea444  03 00 50 e1                                      cmp r0, r3
005ea448  1f 00 00 8a                                      bhi #0x5ea4cc
005ea44c  00 00 58 e1                                      cmp r8, r0
005ea450  00 90 c7 e7                                      strb sb, [r7, r0]
005ea454  de ff ff 2a                                      bhs #0x5ea3d4
005ea458  00 10 d2 e5                                      ldrb r1, [r2]
005ea45c  5a 00 51 e3                                      cmp r1, #0x5a
005ea460  01 30 4a 02                                      subeq r3, sl, #1
005ea464  03 30 87 00                                      addeq r3, r7, r3
005ea468  04 00 00 0a                                      beq #0x5ea480
005ea46c  12 00 00 ea                                      b #0x5ea4bc
005ea470  01 10 53 e4                                      ldrb r1, [r3], #-1
005ea474  01 a0 4a e2                                      sub sl, sl, #1
005ea478  5a 00 51 e3                                      cmp r1, #0x5a
005ea47c  0e 00 00 1a                                      bne #0x5ea4bc
005ea480  08 00 5a e1                                      cmp sl, r8
005ea484  00 90 c2 e5                                      strb sb, [r2]
005ea488  03 20 a0 e1                                      mov r2, r3
005ea48c  f7 ff ff 8a                                      bhi #0x5ea470
005ea490  cf ff ff ea                                      b #0x5ea3d4
005ea494  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005ea498  03 30 97 e7                                      ldr r3, [r7, r3]
005ea49c  96 ff ff ea                                      b #0x5ea2fc
005ea4a0  54 10 9f e5                                      ldr r1, [pc, #0x54]
005ea4a4  06 20 a0 e1                                      mov r2, r6
005ea4a8  01 00 a0 e3                                      mov r0, #1
005ea4ac  01 10 8f e0                                      add r1, pc, r1
005ea4b0  df 82 00 eb                                      bl #0x60b034
005ea4b4  05 00 a0 e1                                      mov r0, r5
005ea4b8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ea4bc  01 10 81 e2                                      add r1, r1, #1
005ea4c0  00 10 c2 e5                                      strb r1, [r2]
005ea4c4  00 a0 a0 e1                                      mov sl, r0
005ea4c8  c2 ff ff ea                                      b #0x5ea3d8
005ea4cc  07 00 a0 e1                                      mov r0, r7
005ea4d0  6c 28 fd eb                                      bl #0x534688
005ea4d4  00 70 a0 e3                                      mov r7, #0
005ea4d8  c3 ff ff ea                                      b #0x5ea3ec
005ea4dc  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
005ea4e0  06 20 a0 e1                                      mov r2, r6
005ea4e4  03 00 a0 e3                                      mov r0, #3
005ea4e8  01 10 8f e0                                      add r1, pc, r1
005ea4ec  d0 82 00 eb                                      bl #0x60b034
005ea4f0  cf ff ff ea                                      b #0x5ea434
; mapping-symbol data/literal pool
005ea4f4  d4 a7 3a 00 e8 10 00 00 4c 8e 2f 00 38 8e 2f 00  .byte 0xd4, 0xa7, 0x3a, 0x00, 0xe8, 0x10, 0x00, 0x00, 0x4c, 0x8e, 0x2f, 0x00, 0x38, 0x8e, 0x2f, 0x00

; FUNCTION 0x005ea764, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager10addTextureERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_14E_PIXEL_FORMATEPKc
; demangled: glitch::video::CTextureManager::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_PIXEL_FORMAT, char const*)
; decoder-mode: arm
005ea764  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005ea768  01 40 a0 e1                                      mov r4, r1
005ea76c  00 10 91 e5                                      ldr r1, [r1]
005ea770  02 70 a0 e1                                      mov r7, r2
005ea774  03 50 a0 e1                                      mov r5, r3
005ea778  00 00 51 e3                                      cmp r1, #0
005ea77c  00 60 a0 e1                                      mov r6, r0
005ea780  ff 8f 0f 03                                      movweq r8, #0xffff
005ea784  19 00 00 0a                                      beq #0x5ea7f0
005ea788  00 30 a0 e3                                      mov r3, #0
005ea78c  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
005ea790  04 20 a0 e1                                      mov r2, r4
005ea794  68 ff ff eb                                      bl #0x5ea53c
005ea798  ff 3f 0f e3                                      movw r3, #0xffff
005ea79c  03 00 50 e1                                      cmp r0, r3
005ea7a0  00 80 a0 e1                                      mov r8, r0
005ea7a4  0f 00 00 0a                                      beq #0x5ea7e8
005ea7a8  18 30 96 e5                                      ldr r3, [r6, #0x18]
005ea7ac  80 a1 a0 e1                                      lsl sl, r0, #3
005ea7b0  00 00 55 e3                                      cmp r5, #0
005ea7b4  0a 30 83 e0                                      add r3, r3, sl
005ea7b8  04 30 93 e5                                      ldr r3, [r3, #4]
005ea7bc  30 70 83 e5                                      str r7, [r3, #0x30]
005ea7c0  08 00 00 0a                                      beq #0x5ea7e8
005ea7c4  05 00 a0 e1                                      mov r0, r5
005ea7c8  a1 8d f4 eb                                      bl #0x30de54
005ea7cc  18 30 96 e5                                      ldr r3, [r6, #0x18]
005ea7d0  00 20 85 e0                                      add r2, r5, r0
005ea7d4  05 10 a0 e1                                      mov r1, r5
005ea7d8  0a a0 83 e0                                      add sl, r3, sl
005ea7dc  04 30 9a e5                                      ldr r3, [sl, #4]
005ea7e0  18 00 83 e2                                      add r0, r3, #0x18
005ea7e4  e7 d8 f4 eb                                      bl #0x320b88
005ea7e8  00 30 94 e5                                      ldr r3, [r4]
005ea7ec  bc 83 c3 e1                                      strh r8, [r3, #0x3c]
005ea7f0  08 00 a0 e1                                      mov r0, r8
005ea7f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005ea7f8, declared_size=256, range_size=256, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager10addTextureEPKcRKNS0_12STextureDescEb
; demangled: glitch::video::CTextureManager::addTexture(char const*, glitch::video::STextureDesc const&, bool)
; decoder-mode: arm
005ea7f8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005ea7fc  1c d0 4d e2                                      sub sp, sp, #0x1c
005ea800  38 c0 dd e5                                      ldrb ip, [sp, #0x38]
005ea804  08 60 8d e2                                      add r6, sp, #8
005ea808  03 80 a0 e1                                      mov r8, r3
005ea80c  0c 30 a0 e1                                      mov r3, ip
005ea810  00 c0 a0 e3                                      mov ip, #0
005ea814  00 50 a0 e1                                      mov r5, r0
005ea818  14 c0 8d e5                                      str ip, [sp, #0x14]
005ea81c  06 00 a0 e1                                      mov r0, r6
005ea820  14 c0 8d e2                                      add ip, sp, #0x14
005ea824  00 c0 8d e5                                      str ip, [sp]
005ea828  01 a0 a0 e1                                      mov sl, r1
005ea82c  9d fe ff eb                                      bl #0x5ea2a8
005ea830  08 40 9d e5                                      ldr r4, [sp, #8]
005ea834  00 00 54 e3                                      cmp r4, #0
005ea838  00 40 85 15                                      strne r4, [r5]
005ea83c  0d 00 00 0a                                      beq #0x5ea878
005ea840  04 30 94 e5                                      ldr r3, [r4, #4]
005ea844  01 30 83 e2                                      add r3, r3, #1
005ea848  04 30 84 e5                                      str r3, [r4, #4]
005ea84c  08 00 9d e5                                      ldr r0, [sp, #8]
005ea850  00 00 50 e3                                      cmp r0, #0
005ea854  00 00 00 0a                                      beq #0x5ea85c
005ea858  49 cb f4 eb                                      bl #0x31d584
005ea85c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005ea860  00 00 50 e3                                      cmp r0, #0
005ea864  00 00 00 0a                                      beq #0x5ea86c
005ea868  86 27 fd eb                                      bl #0x534688
005ea86c  05 00 a0 e1                                      mov r0, r5
005ea870  1c d0 8d e2                                      add sp, sp, #0x1c
005ea874  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005ea878  10 70 8d e2                                      add r7, sp, #0x10
005ea87c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005ea880  08 30 a0 e1                                      mov r3, r8
005ea884  07 00 a0 e1                                      mov r0, r7
005ea888  28 10 9a e5                                      ldr r1, [sl, #0x28]
005ea88c  59 ff fe eb                                      bl #0x5aa5f8
005ea890  07 10 a0 e1                                      mov r1, r7
005ea894  06 00 a0 e1                                      mov r0, r6
005ea898  56 69 f6 eb                                      bl #0x384df8
005ea89c  07 00 a0 e1                                      mov r0, r7
005ea8a0  e1 b2 f8 eb                                      bl #0x41742c
005ea8a4  08 00 9d e5                                      ldr r0, [sp, #8]
005ea8a8  00 00 50 e3                                      cmp r0, #0
005ea8ac  00 00 85 05                                      streq r0, [r5]
005ea8b0  e9 ff ff 0a                                      beq #0x5ea85c
005ea8b4  04 30 a0 e1                                      mov r3, r4
005ea8b8  0a 00 a0 e1                                      mov r0, sl
005ea8bc  06 10 a0 e1                                      mov r1, r6
005ea8c0  04 20 98 e5                                      ldr r2, [r8, #4]
005ea8c4  a6 ff ff eb                                      bl #0x5ea764
005ea8c8  1e 30 d8 e5                                      ldrb r3, [r8, #0x1e]
005ea8cc  00 00 53 e3                                      cmp r3, #0
005ea8d0  04 00 00 1a                                      bne #0x5ea8e8
005ea8d4  08 00 9d e5                                      ldr r0, [sp, #8]
005ea8d8  00 40 50 e2                                      subs r4, r0, #0
005ea8dc  00 00 85 e5                                      str r0, [r5]
005ea8e0  da ff ff 0a                                      beq #0x5ea850
005ea8e4  d5 ff ff ea                                      b #0x5ea840
005ea8e8  0a 00 a0 e1                                      mov r0, sl
005ea8ec  06 10 a0 e1                                      mov r1, r6
005ea8f0  37 f9 ff eb                                      bl #0x5e8dd4
005ea8f4  f6 ff ff ea                                      b #0x5ea8d4

; FUNCTION 0x005ea8f8, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager10addTextureERKNS_4core11dimension2dIiEEPKcNS0_14E_PIXEL_FORMATEb
; demangled: glitch::video::CTextureManager::addTexture(glitch::core::dimension2d<int> const&, char const*, glitch::video::E_PIXEL_FORMAT, bool)
; decoder-mode: arm
005ea8f8  30 40 2d e9                                      push {r4, r5, lr}
005ea8fc  04 e0 92 e5                                      ldr lr, [r2, #4]
005ea900  2c d0 4d e2                                      sub sp, sp, #0x2c
005ea904  00 40 92 e5                                      ldr r4, [r2]
005ea908  1c e0 8d e5                                      str lr, [sp, #0x1c]
005ea90c  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005ea910  28 c0 91 e5                                      ldr ip, [r1, #0x28]
005ea914  00 20 a0 e3                                      mov r2, #0
005ea918  01 50 a0 e3                                      mov r5, #1
005ea91c  18 40 8d e5                                      str r4, [sp, #0x18]
005ea920  0c e0 8d e5                                      str lr, [sp, #0xc]
005ea924  24 20 cd e5                                      strb r2, [sp, #0x24]
005ea928  14 20 8d e5                                      str r2, [sp, #0x14]
005ea92c  26 20 cd e5                                      strb r2, [sp, #0x26]
005ea930  08 20 8d e5                                      str r2, [sp, #8]
005ea934  10 20 8d e5                                      str r2, [sp, #0x10]
005ea938  20 50 8d e5                                      str r5, [sp, #0x20]
005ea93c  25 20 cd e5                                      strb r2, [sp, #0x25]
005ea940  88 20 9c e5                                      ldr r2, [ip, #0x88]
005ea944  74 e0 91 e5                                      ldr lr, [r1, #0x74]
005ea948  00 40 a0 e1                                      mov r4, r0
005ea94c  52 22 e0 e7                                      ubfx r2, r2, #4, #1
005ea950  20 00 1e e3                                      tst lr, #0x20
005ea954  24 20 cd e5                                      strb r2, [sp, #0x24]
005ea958  03 20 a0 13                                      movne r2, #3
005ea95c  3c c0 dd e5                                      ldrb ip, [sp, #0x3c]
005ea960  14 20 8d 15                                      strne r2, [sp, #0x14]
005ea964  01 00 00 1a                                      bne #0x5ea970
005ea968  10 00 1e e3                                      tst lr, #0x10
005ea96c  14 50 8d 15                                      strne r5, [sp, #0x14]
005ea970  03 20 a0 e1                                      mov r2, r3
005ea974  04 00 a0 e1                                      mov r0, r4
005ea978  08 30 8d e2                                      add r3, sp, #8
005ea97c  00 c0 8d e5                                      str ip, [sp]
005ea980  9c ff ff eb                                      bl #0x5ea7f8
005ea984  04 00 a0 e1                                      mov r0, r4
005ea988  2c d0 8d e2                                      add sp, sp, #0x2c
005ea98c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005eaa20, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager22addExternalImageWriterEPNS0_12IImageWriterE
; demangled: glitch::video::CTextureManager::addExternalImageWriter(glitch::video::IImageWriter*)
; decoder-mode: arm
005eaa20  04 e0 2d e5                                      str lr, [sp, #-4]!
005eaa24  00 30 51 e2                                      subs r3, r1, #0
005eaa28  0c d0 4d e2                                      sub sp, sp, #0xc
005eaa2c  04 10 8d e5                                      str r1, [sp, #4]
005eaa30  0b 00 00 0a                                      beq #0x5eaa64
005eaa34  04 20 93 e5                                      ldr r2, [r3, #4]
005eaa38  01 20 82 e2                                      add r2, r2, #1
005eaa3c  04 20 83 e5                                      str r2, [r3, #4]
005eaa40  40 10 90 e5                                      ldr r1, [r0, #0x40]
005eaa44  44 30 90 e5                                      ldr r3, [r0, #0x44]
005eaa48  03 00 51 e1                                      cmp r1, r3
005eaa4c  06 00 00 0a                                      beq #0x5eaa6c
005eaa50  04 30 9d e5                                      ldr r3, [sp, #4]
005eaa54  00 30 81 e5                                      str r3, [r1]
005eaa58  40 30 90 e5                                      ldr r3, [r0, #0x40]
005eaa5c  04 30 83 e2                                      add r3, r3, #4
005eaa60  40 30 80 e5                                      str r3, [r0, #0x40]
005eaa64  0c d0 8d e2                                      add sp, sp, #0xc
005eaa68  00 80 bd e8                                      ldm sp!, {pc}
005eaa6c  3c 00 80 e2                                      add r0, r0, #0x3c
005eaa70  04 20 8d e2                                      add r2, sp, #4
005eaa74  c5 ff ff eb                                      bl #0x5ea990
005eaa78  f9 ff ff ea                                      b #0x5eaa64

; FUNCTION 0x005eaa7c, declared_size=1116, range_size=1116, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManagerC1EPNS0_12IVideoDriverE
; demangled: glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)
; decoder-mode: arm
005eaa7c  30 40 2d e9                                      push {r4, r5, lr}
005eaa80  2c d0 4d e2                                      sub sp, sp, #0x2c
005eaa84  00 40 a0 e1                                      mov r4, r0
005eaa88  01 50 a0 e1                                      mov r5, r1
005eaa8c  5e f6 ff eb                                      bl #0x5e840c
005eaa90  28 50 84 e5                                      str r5, [r4, #0x28]
005eaa94  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
005eaa98  30 50 84 e2                                      add r5, r4, #0x30
005eaa9c  34 30 93 e5                                      ldr r3, [r3, #0x34]
005eaaa0  00 00 53 e3                                      cmp r3, #0
005eaaa4  2c 30 84 e5                                      str r3, [r4, #0x2c]
005eaaa8  04 20 93 15                                      ldrne r2, [r3, #4]
005eaaac  01 20 82 12                                      addne r2, r2, #1
005eaab0  04 20 83 15                                      strne r2, [r3, #4]
005eaab4  00 30 a0 e3                                      mov r3, #0
005eaab8  43 20 a0 e3                                      mov r2, #0x43
005eaabc  64 30 84 e5                                      str r3, [r4, #0x64]
005eaac0  30 30 84 e5                                      str r3, [r4, #0x30]
005eaac4  34 30 84 e5                                      str r3, [r4, #0x34]
005eaac8  38 30 84 e5                                      str r3, [r4, #0x38]
005eaacc  3c 30 84 e5                                      str r3, [r4, #0x3c]
005eaad0  40 30 84 e5                                      str r3, [r4, #0x40]
005eaad4  44 30 84 e5                                      str r3, [r4, #0x44]
005eaad8  68 30 84 e5                                      str r3, [r4, #0x68]
005eaadc  6c 30 84 e5                                      str r3, [r4, #0x6c]
005eaae0  70 30 84 e5                                      str r3, [r4, #0x70]
005eaae4  48 30 84 e5                                      str r3, [r4, #0x48]
005eaae8  4c 30 84 e5                                      str r3, [r4, #0x4c]
005eaaec  50 30 84 e5                                      str r3, [r4, #0x50]
005eaaf0  54 30 84 e5                                      str r3, [r4, #0x54]
005eaaf4  58 30 84 e5                                      str r3, [r4, #0x58]
005eaaf8  5c 30 84 e5                                      str r3, [r4, #0x5c]
005eaafc  60 30 84 e5                                      str r3, [r4, #0x60]
005eab00  74 20 84 e5                                      str r2, [r4, #0x74]
005eab04  5d 62 00 eb                                      bl #0x603480
005eab08  00 00 50 e3                                      cmp r0, #0
005eab0c  24 00 8d e5                                      str r0, [sp, #0x24]
005eab10  04 30 90 15                                      ldrne r3, [r0, #4]
005eab14  01 30 83 12                                      addne r3, r3, #1
005eab18  04 30 80 15                                      strne r3, [r0, #4]
005eab1c  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eab20  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eab24  03 00 51 e1                                      cmp r1, r3
005eab28  e6 00 00 0a                                      beq #0x5eaec8
005eab2c  24 30 9d e5                                      ldr r3, [sp, #0x24]
005eab30  00 00 53 e3                                      cmp r3, #0
005eab34  00 30 81 e5                                      str r3, [r1]
005eab38  04 20 93 15                                      ldrne r2, [r3, #4]
005eab3c  01 20 82 12                                      addne r2, r2, #1
005eab40  04 20 83 15                                      strne r2, [r3, #4]
005eab44  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eab48  04 30 83 e2                                      add r3, r3, #4
005eab4c  34 30 84 e5                                      str r3, [r4, #0x34]
005eab50  24 00 9d e5                                      ldr r0, [sp, #0x24]
005eab54  00 00 50 e3                                      cmp r0, #0
005eab58  00 00 00 0a                                      beq #0x5eab60
005eab5c  88 ca f4 eb                                      bl #0x31d584
005eab60  16 68 00 eb                                      bl #0x604bc0
005eab64  00 00 50 e3                                      cmp r0, #0
005eab68  20 00 8d e5                                      str r0, [sp, #0x20]
005eab6c  04 30 90 15                                      ldrne r3, [r0, #4]
005eab70  01 30 83 12                                      addne r3, r3, #1
005eab74  04 30 80 15                                      strne r3, [r0, #4]
005eab78  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eab7c  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eab80  03 00 51 e1                                      cmp r1, r3
005eab84  bb 00 00 0a                                      beq #0x5eae78
005eab88  20 30 9d e5                                      ldr r3, [sp, #0x20]
005eab8c  00 00 53 e3                                      cmp r3, #0
005eab90  00 30 81 e5                                      str r3, [r1]
005eab94  04 20 93 15                                      ldrne r2, [r3, #4]
005eab98  01 20 82 12                                      addne r2, r2, #1
005eab9c  04 20 83 15                                      strne r2, [r3, #4]
005eaba0  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eaba4  04 30 83 e2                                      add r3, r3, #4
005eaba8  34 30 84 e5                                      str r3, [r4, #0x34]
005eabac  20 00 9d e5                                      ldr r0, [sp, #0x20]
005eabb0  00 00 50 e3                                      cmp r0, #0
005eabb4  00 00 00 0a                                      beq #0x5eabbc
005eabb8  71 ca f4 eb                                      bl #0x31d584
005eabbc  da 6d 00 eb                                      bl #0x60632c
005eabc0  00 00 50 e3                                      cmp r0, #0
005eabc4  1c 00 8d e5                                      str r0, [sp, #0x1c]
005eabc8  04 30 90 15                                      ldrne r3, [r0, #4]
005eabcc  01 30 83 12                                      addne r3, r3, #1
005eabd0  04 30 80 15                                      strne r3, [r0, #4]
005eabd4  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eabd8  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eabdc  03 00 51 e1                                      cmp r1, r3
005eabe0  a0 00 00 0a                                      beq #0x5eae68
005eabe4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005eabe8  00 00 53 e3                                      cmp r3, #0
005eabec  00 30 81 e5                                      str r3, [r1]
005eabf0  04 20 93 15                                      ldrne r2, [r3, #4]
005eabf4  01 20 82 12                                      addne r2, r2, #1
005eabf8  04 20 83 15                                      strne r2, [r3, #4]
005eabfc  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eac00  04 30 83 e2                                      add r3, r3, #4
005eac04  34 30 84 e5                                      str r3, [r4, #0x34]
005eac08  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005eac0c  00 00 50 e3                                      cmp r0, #0
005eac10  00 00 00 0a                                      beq #0x5eac18
005eac14  5a ca f4 eb                                      bl #0x31d584
005eac18  69 60 00 eb                                      bl #0x602dc4
005eac1c  00 00 50 e3                                      cmp r0, #0
005eac20  18 00 8d e5                                      str r0, [sp, #0x18]
005eac24  04 30 90 15                                      ldrne r3, [r0, #4]
005eac28  01 30 83 12                                      addne r3, r3, #1
005eac2c  04 30 80 15                                      strne r3, [r0, #4]
005eac30  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eac34  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eac38  03 00 51 e1                                      cmp r1, r3
005eac3c  95 00 00 0a                                      beq #0x5eae98
005eac40  18 30 9d e5                                      ldr r3, [sp, #0x18]
005eac44  00 00 53 e3                                      cmp r3, #0
005eac48  00 30 81 e5                                      str r3, [r1]
005eac4c  04 20 93 15                                      ldrne r2, [r3, #4]
005eac50  01 20 82 12                                      addne r2, r2, #1
005eac54  04 20 83 15                                      strne r2, [r3, #4]
005eac58  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eac5c  04 30 83 e2                                      add r3, r3, #4
005eac60  34 30 84 e5                                      str r3, [r4, #0x34]
005eac64  18 00 9d e5                                      ldr r0, [sp, #0x18]
005eac68  00 00 50 e3                                      cmp r0, #0
005eac6c  00 00 00 0a                                      beq #0x5eac74
005eac70  43 ca f4 eb                                      bl #0x31d584
005eac74  e4 68 00 eb                                      bl #0x60500c
005eac78  00 00 50 e3                                      cmp r0, #0
005eac7c  14 00 8d e5                                      str r0, [sp, #0x14]
005eac80  04 30 90 15                                      ldrne r3, [r0, #4]
005eac84  01 30 83 12                                      addne r3, r3, #1
005eac88  04 30 80 15                                      strne r3, [r0, #4]
005eac8c  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eac90  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eac94  03 00 51 e1                                      cmp r1, r3
005eac98  82 00 00 0a                                      beq #0x5eaea8
005eac9c  14 30 9d e5                                      ldr r3, [sp, #0x14]
005eaca0  00 00 53 e3                                      cmp r3, #0
005eaca4  00 30 81 e5                                      str r3, [r1]
005eaca8  04 20 93 15                                      ldrne r2, [r3, #4]
005eacac  01 20 82 12                                      addne r2, r2, #1
005eacb0  04 20 83 15                                      strne r2, [r3, #4]
005eacb4  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eacb8  04 30 83 e2                                      add r3, r3, #4
005eacbc  34 30 84 e5                                      str r3, [r4, #0x34]
005eacc0  14 00 9d e5                                      ldr r0, [sp, #0x14]
005eacc4  00 00 50 e3                                      cmp r0, #0
005eacc8  00 00 00 0a                                      beq #0x5eacd0
005eaccc  2c ca f4 eb                                      bl #0x31d584
005eacd0  9b 65 00 eb                                      bl #0x604344
005eacd4  00 00 50 e3                                      cmp r0, #0
005eacd8  10 00 8d e5                                      str r0, [sp, #0x10]
005eacdc  04 30 90 15                                      ldrne r3, [r0, #4]
005eace0  01 30 83 12                                      addne r3, r3, #1
005eace4  04 30 80 15                                      strne r3, [r0, #4]
005eace8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eacec  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eacf0  03 00 51 e1                                      cmp r1, r3
005eacf4  6f 00 00 0a                                      beq #0x5eaeb8
005eacf8  10 30 9d e5                                      ldr r3, [sp, #0x10]
005eacfc  00 00 53 e3                                      cmp r3, #0
005ead00  00 30 81 e5                                      str r3, [r1]
005ead04  04 20 93 15                                      ldrne r2, [r3, #4]
005ead08  01 20 82 12                                      addne r2, r2, #1
005ead0c  04 20 83 15                                      strne r2, [r3, #4]
005ead10  34 30 94 e5                                      ldr r3, [r4, #0x34]
005ead14  04 30 83 e2                                      add r3, r3, #4
005ead18  34 30 84 e5                                      str r3, [r4, #0x34]
005ead1c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005ead20  00 00 50 e3                                      cmp r0, #0
005ead24  00 00 00 0a                                      beq #0x5ead2c
005ead28  15 ca f4 eb                                      bl #0x31d584
005ead2c  a3 6a 00 eb                                      bl #0x6057c0
005ead30  00 00 50 e3                                      cmp r0, #0
005ead34  0c 00 8d e5                                      str r0, [sp, #0xc]
005ead38  04 30 90 15                                      ldrne r3, [r0, #4]
005ead3c  01 30 83 12                                      addne r3, r3, #1
005ead40  04 30 80 15                                      strne r3, [r0, #4]
005ead44  34 10 94 e5                                      ldr r1, [r4, #0x34]
005ead48  38 30 94 e5                                      ldr r3, [r4, #0x38]
005ead4c  03 00 51 e1                                      cmp r1, r3
005ead50  4c 00 00 0a                                      beq #0x5eae88
005ead54  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ead58  00 00 53 e3                                      cmp r3, #0
005ead5c  00 30 81 e5                                      str r3, [r1]
005ead60  04 20 93 15                                      ldrne r2, [r3, #4]
005ead64  01 20 82 12                                      addne r2, r2, #1
005ead68  04 20 83 15                                      strne r2, [r3, #4]
005ead6c  34 30 94 e5                                      ldr r3, [r4, #0x34]
005ead70  04 30 83 e2                                      add r3, r3, #4
005ead74  34 30 84 e5                                      str r3, [r4, #0x34]
005ead78  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005ead7c  00 00 50 e3                                      cmp r0, #0
005ead80  00 00 00 0a                                      beq #0x5ead88
005ead84  fe c9 f4 eb                                      bl #0x31d584
005ead88  e0 6f 00 eb                                      bl #0x606d10
005ead8c  40 10 94 e5                                      ldr r1, [r4, #0x40]
005ead90  44 30 94 e5                                      ldr r3, [r4, #0x44]
005ead94  3c 50 84 e2                                      add r5, r4, #0x3c
005ead98  08 00 8d e5                                      str r0, [sp, #8]
005ead9c  03 00 51 e1                                      cmp r1, r3
005eada0  1a 00 00 0a                                      beq #0x5eae10
005eada4  00 00 81 e5                                      str r0, [r1]
005eada8  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eadac  04 30 83 e2                                      add r3, r3, #4
005eadb0  40 30 84 e5                                      str r3, [r4, #0x40]
005eadb4  1c 72 00 eb                                      bl #0x60762c
005eadb8  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eadbc  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eadc0  04 00 8d e5                                      str r0, [sp, #4]
005eadc4  03 00 51 e1                                      cmp r1, r3
005eadc8  19 00 00 0a                                      beq #0x5eae34
005eadcc  00 00 81 e5                                      str r0, [r1]
005eadd0  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eadd4  04 30 83 e2                                      add r3, r3, #4
005eadd8  40 30 84 e5                                      str r3, [r4, #0x40]
005eaddc  37 71 00 eb                                      bl #0x6072c0
005eade0  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eade4  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eade8  00 00 8d e5                                      str r0, [sp]
005eadec  03 00 51 e1                                      cmp r1, r3
005eadf0  18 00 00 0a                                      beq #0x5eae58
005eadf4  00 00 81 e5                                      str r0, [r1]
005eadf8  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eadfc  04 30 83 e2                                      add r3, r3, #4
005eae00  40 30 84 e5                                      str r3, [r4, #0x40]
005eae04  04 00 a0 e1                                      mov r0, r4
005eae08  2c d0 8d e2                                      add sp, sp, #0x2c
005eae0c  30 80 bd e8                                      pop {r4, r5, pc}
005eae10  05 00 a0 e1                                      mov r0, r5
005eae14  08 20 8d e2                                      add r2, sp, #8
005eae18  dc fe ff eb                                      bl #0x5ea990
005eae1c  02 72 00 eb                                      bl #0x60762c
005eae20  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eae24  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eae28  04 00 8d e5                                      str r0, [sp, #4]
005eae2c  03 00 51 e1                                      cmp r1, r3
005eae30  e5 ff ff 1a                                      bne #0x5eadcc
005eae34  05 00 a0 e1                                      mov r0, r5
005eae38  04 20 8d e2                                      add r2, sp, #4
005eae3c  d3 fe ff eb                                      bl #0x5ea990
005eae40  1e 71 00 eb                                      bl #0x6072c0
005eae44  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eae48  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eae4c  00 00 8d e5                                      str r0, [sp]
005eae50  03 00 51 e1                                      cmp r1, r3
005eae54  e6 ff ff 1a                                      bne #0x5eadf4
005eae58  05 00 a0 e1                                      mov r0, r5
005eae5c  0d 20 a0 e1                                      mov r2, sp
005eae60  ca fe ff eb                                      bl #0x5ea990
005eae64  e6 ff ff ea                                      b #0x5eae04
005eae68  05 00 a0 e1                                      mov r0, r5
005eae6c  1c 20 8d e2                                      add r2, sp, #0x1c
005eae70  59 f8 ff eb                                      bl #0x5e8fdc
005eae74  63 ff ff ea                                      b #0x5eac08
005eae78  05 00 a0 e1                                      mov r0, r5
005eae7c  20 20 8d e2                                      add r2, sp, #0x20
005eae80  55 f8 ff eb                                      bl #0x5e8fdc
005eae84  48 ff ff ea                                      b #0x5eabac
005eae88  05 00 a0 e1                                      mov r0, r5
005eae8c  0c 20 8d e2                                      add r2, sp, #0xc
005eae90  51 f8 ff eb                                      bl #0x5e8fdc
005eae94  b7 ff ff ea                                      b #0x5ead78
005eae98  05 00 a0 e1                                      mov r0, r5
005eae9c  18 20 8d e2                                      add r2, sp, #0x18
005eaea0  4d f8 ff eb                                      bl #0x5e8fdc
005eaea4  6e ff ff ea                                      b #0x5eac64
005eaea8  05 00 a0 e1                                      mov r0, r5
005eaeac  14 20 8d e2                                      add r2, sp, #0x14
005eaeb0  49 f8 ff eb                                      bl #0x5e8fdc
005eaeb4  81 ff ff ea                                      b #0x5eacc0
005eaeb8  05 00 a0 e1                                      mov r0, r5
005eaebc  10 20 8d e2                                      add r2, sp, #0x10
005eaec0  45 f8 ff eb                                      bl #0x5e8fdc
005eaec4  94 ff ff ea                                      b #0x5ead1c
005eaec8  05 00 a0 e1                                      mov r0, r5
005eaecc  24 20 8d e2                                      add r2, sp, #0x24
005eaed0  41 f8 ff eb                                      bl #0x5e8fdc
005eaed4  1d ff ff ea                                      b #0x5eab50

; FUNCTION 0x005eaed8, declared_size=1116, range_size=1116, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE
; demangled: glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)
; decoder-mode: arm
005eaed8  30 40 2d e9                                      push {r4, r5, lr}
005eaedc  2c d0 4d e2                                      sub sp, sp, #0x2c
005eaee0  00 40 a0 e1                                      mov r4, r0
005eaee4  01 50 a0 e1                                      mov r5, r1
005eaee8  47 f5 ff eb                                      bl #0x5e840c
005eaeec  28 50 84 e5                                      str r5, [r4, #0x28]
005eaef0  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
005eaef4  30 50 84 e2                                      add r5, r4, #0x30
005eaef8  34 30 93 e5                                      ldr r3, [r3, #0x34]
005eaefc  00 00 53 e3                                      cmp r3, #0
005eaf00  2c 30 84 e5                                      str r3, [r4, #0x2c]
005eaf04  04 20 93 15                                      ldrne r2, [r3, #4]
005eaf08  01 20 82 12                                      addne r2, r2, #1
005eaf0c  04 20 83 15                                      strne r2, [r3, #4]
005eaf10  00 30 a0 e3                                      mov r3, #0
005eaf14  43 20 a0 e3                                      mov r2, #0x43
005eaf18  64 30 84 e5                                      str r3, [r4, #0x64]
005eaf1c  30 30 84 e5                                      str r3, [r4, #0x30]
005eaf20  34 30 84 e5                                      str r3, [r4, #0x34]
005eaf24  38 30 84 e5                                      str r3, [r4, #0x38]
005eaf28  3c 30 84 e5                                      str r3, [r4, #0x3c]
005eaf2c  40 30 84 e5                                      str r3, [r4, #0x40]
005eaf30  44 30 84 e5                                      str r3, [r4, #0x44]
005eaf34  68 30 84 e5                                      str r3, [r4, #0x68]
005eaf38  6c 30 84 e5                                      str r3, [r4, #0x6c]
005eaf3c  70 30 84 e5                                      str r3, [r4, #0x70]
005eaf40  48 30 84 e5                                      str r3, [r4, #0x48]
005eaf44  4c 30 84 e5                                      str r3, [r4, #0x4c]
005eaf48  50 30 84 e5                                      str r3, [r4, #0x50]
005eaf4c  54 30 84 e5                                      str r3, [r4, #0x54]
005eaf50  58 30 84 e5                                      str r3, [r4, #0x58]
005eaf54  5c 30 84 e5                                      str r3, [r4, #0x5c]
005eaf58  60 30 84 e5                                      str r3, [r4, #0x60]
005eaf5c  74 20 84 e5                                      str r2, [r4, #0x74]
005eaf60  46 61 00 eb                                      bl #0x603480
005eaf64  00 00 50 e3                                      cmp r0, #0
005eaf68  24 00 8d e5                                      str r0, [sp, #0x24]
005eaf6c  04 30 90 15                                      ldrne r3, [r0, #4]
005eaf70  01 30 83 12                                      addne r3, r3, #1
005eaf74  04 30 80 15                                      strne r3, [r0, #4]
005eaf78  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eaf7c  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eaf80  03 00 51 e1                                      cmp r1, r3
005eaf84  e6 00 00 0a                                      beq #0x5eb324
005eaf88  24 30 9d e5                                      ldr r3, [sp, #0x24]
005eaf8c  00 00 53 e3                                      cmp r3, #0
005eaf90  00 30 81 e5                                      str r3, [r1]
005eaf94  04 20 93 15                                      ldrne r2, [r3, #4]
005eaf98  01 20 82 12                                      addne r2, r2, #1
005eaf9c  04 20 83 15                                      strne r2, [r3, #4]
005eafa0  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eafa4  04 30 83 e2                                      add r3, r3, #4
005eafa8  34 30 84 e5                                      str r3, [r4, #0x34]
005eafac  24 00 9d e5                                      ldr r0, [sp, #0x24]
005eafb0  00 00 50 e3                                      cmp r0, #0
005eafb4  00 00 00 0a                                      beq #0x5eafbc
005eafb8  71 c9 f4 eb                                      bl #0x31d584
005eafbc  ff 66 00 eb                                      bl #0x604bc0
005eafc0  00 00 50 e3                                      cmp r0, #0
005eafc4  20 00 8d e5                                      str r0, [sp, #0x20]
005eafc8  04 30 90 15                                      ldrne r3, [r0, #4]
005eafcc  01 30 83 12                                      addne r3, r3, #1
005eafd0  04 30 80 15                                      strne r3, [r0, #4]
005eafd4  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eafd8  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eafdc  03 00 51 e1                                      cmp r1, r3
005eafe0  bb 00 00 0a                                      beq #0x5eb2d4
005eafe4  20 30 9d e5                                      ldr r3, [sp, #0x20]
005eafe8  00 00 53 e3                                      cmp r3, #0
005eafec  00 30 81 e5                                      str r3, [r1]
005eaff0  04 20 93 15                                      ldrne r2, [r3, #4]
005eaff4  01 20 82 12                                      addne r2, r2, #1
005eaff8  04 20 83 15                                      strne r2, [r3, #4]
005eaffc  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb000  04 30 83 e2                                      add r3, r3, #4
005eb004  34 30 84 e5                                      str r3, [r4, #0x34]
005eb008  20 00 9d e5                                      ldr r0, [sp, #0x20]
005eb00c  00 00 50 e3                                      cmp r0, #0
005eb010  00 00 00 0a                                      beq #0x5eb018
005eb014  5a c9 f4 eb                                      bl #0x31d584
005eb018  c3 6c 00 eb                                      bl #0x60632c
005eb01c  00 00 50 e3                                      cmp r0, #0
005eb020  1c 00 8d e5                                      str r0, [sp, #0x1c]
005eb024  04 30 90 15                                      ldrne r3, [r0, #4]
005eb028  01 30 83 12                                      addne r3, r3, #1
005eb02c  04 30 80 15                                      strne r3, [r0, #4]
005eb030  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb034  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb038  03 00 51 e1                                      cmp r1, r3
005eb03c  a0 00 00 0a                                      beq #0x5eb2c4
005eb040  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005eb044  00 00 53 e3                                      cmp r3, #0
005eb048  00 30 81 e5                                      str r3, [r1]
005eb04c  04 20 93 15                                      ldrne r2, [r3, #4]
005eb050  01 20 82 12                                      addne r2, r2, #1
005eb054  04 20 83 15                                      strne r2, [r3, #4]
005eb058  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb05c  04 30 83 e2                                      add r3, r3, #4
005eb060  34 30 84 e5                                      str r3, [r4, #0x34]
005eb064  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005eb068  00 00 50 e3                                      cmp r0, #0
005eb06c  00 00 00 0a                                      beq #0x5eb074
005eb070  43 c9 f4 eb                                      bl #0x31d584
005eb074  52 5f 00 eb                                      bl #0x602dc4
005eb078  00 00 50 e3                                      cmp r0, #0
005eb07c  18 00 8d e5                                      str r0, [sp, #0x18]
005eb080  04 30 90 15                                      ldrne r3, [r0, #4]
005eb084  01 30 83 12                                      addne r3, r3, #1
005eb088  04 30 80 15                                      strne r3, [r0, #4]
005eb08c  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb090  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb094  03 00 51 e1                                      cmp r1, r3
005eb098  95 00 00 0a                                      beq #0x5eb2f4
005eb09c  18 30 9d e5                                      ldr r3, [sp, #0x18]
005eb0a0  00 00 53 e3                                      cmp r3, #0
005eb0a4  00 30 81 e5                                      str r3, [r1]
005eb0a8  04 20 93 15                                      ldrne r2, [r3, #4]
005eb0ac  01 20 82 12                                      addne r2, r2, #1
005eb0b0  04 20 83 15                                      strne r2, [r3, #4]
005eb0b4  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb0b8  04 30 83 e2                                      add r3, r3, #4
005eb0bc  34 30 84 e5                                      str r3, [r4, #0x34]
005eb0c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
005eb0c4  00 00 50 e3                                      cmp r0, #0
005eb0c8  00 00 00 0a                                      beq #0x5eb0d0
005eb0cc  2c c9 f4 eb                                      bl #0x31d584
005eb0d0  cd 67 00 eb                                      bl #0x60500c
005eb0d4  00 00 50 e3                                      cmp r0, #0
005eb0d8  14 00 8d e5                                      str r0, [sp, #0x14]
005eb0dc  04 30 90 15                                      ldrne r3, [r0, #4]
005eb0e0  01 30 83 12                                      addne r3, r3, #1
005eb0e4  04 30 80 15                                      strne r3, [r0, #4]
005eb0e8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb0ec  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb0f0  03 00 51 e1                                      cmp r1, r3
005eb0f4  82 00 00 0a                                      beq #0x5eb304
005eb0f8  14 30 9d e5                                      ldr r3, [sp, #0x14]
005eb0fc  00 00 53 e3                                      cmp r3, #0
005eb100  00 30 81 e5                                      str r3, [r1]
005eb104  04 20 93 15                                      ldrne r2, [r3, #4]
005eb108  01 20 82 12                                      addne r2, r2, #1
005eb10c  04 20 83 15                                      strne r2, [r3, #4]
005eb110  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb114  04 30 83 e2                                      add r3, r3, #4
005eb118  34 30 84 e5                                      str r3, [r4, #0x34]
005eb11c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005eb120  00 00 50 e3                                      cmp r0, #0
005eb124  00 00 00 0a                                      beq #0x5eb12c
005eb128  15 c9 f4 eb                                      bl #0x31d584
005eb12c  84 64 00 eb                                      bl #0x604344
005eb130  00 00 50 e3                                      cmp r0, #0
005eb134  10 00 8d e5                                      str r0, [sp, #0x10]
005eb138  04 30 90 15                                      ldrne r3, [r0, #4]
005eb13c  01 30 83 12                                      addne r3, r3, #1
005eb140  04 30 80 15                                      strne r3, [r0, #4]
005eb144  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb148  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb14c  03 00 51 e1                                      cmp r1, r3
005eb150  6f 00 00 0a                                      beq #0x5eb314
005eb154  10 30 9d e5                                      ldr r3, [sp, #0x10]
005eb158  00 00 53 e3                                      cmp r3, #0
005eb15c  00 30 81 e5                                      str r3, [r1]
005eb160  04 20 93 15                                      ldrne r2, [r3, #4]
005eb164  01 20 82 12                                      addne r2, r2, #1
005eb168  04 20 83 15                                      strne r2, [r3, #4]
005eb16c  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb170  04 30 83 e2                                      add r3, r3, #4
005eb174  34 30 84 e5                                      str r3, [r4, #0x34]
005eb178  10 00 9d e5                                      ldr r0, [sp, #0x10]
005eb17c  00 00 50 e3                                      cmp r0, #0
005eb180  00 00 00 0a                                      beq #0x5eb188
005eb184  fe c8 f4 eb                                      bl #0x31d584
005eb188  8c 69 00 eb                                      bl #0x6057c0
005eb18c  00 00 50 e3                                      cmp r0, #0
005eb190  0c 00 8d e5                                      str r0, [sp, #0xc]
005eb194  04 30 90 15                                      ldrne r3, [r0, #4]
005eb198  01 30 83 12                                      addne r3, r3, #1
005eb19c  04 30 80 15                                      strne r3, [r0, #4]
005eb1a0  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb1a4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb1a8  03 00 51 e1                                      cmp r1, r3
005eb1ac  4c 00 00 0a                                      beq #0x5eb2e4
005eb1b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005eb1b4  00 00 53 e3                                      cmp r3, #0
005eb1b8  00 30 81 e5                                      str r3, [r1]
005eb1bc  04 20 93 15                                      ldrne r2, [r3, #4]
005eb1c0  01 20 82 12                                      addne r2, r2, #1
005eb1c4  04 20 83 15                                      strne r2, [r3, #4]
005eb1c8  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb1cc  04 30 83 e2                                      add r3, r3, #4
005eb1d0  34 30 84 e5                                      str r3, [r4, #0x34]
005eb1d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005eb1d8  00 00 50 e3                                      cmp r0, #0
005eb1dc  00 00 00 0a                                      beq #0x5eb1e4
005eb1e0  e7 c8 f4 eb                                      bl #0x31d584
005eb1e4  c9 6e 00 eb                                      bl #0x606d10
005eb1e8  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb1ec  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb1f0  3c 50 84 e2                                      add r5, r4, #0x3c
005eb1f4  08 00 8d e5                                      str r0, [sp, #8]
005eb1f8  03 00 51 e1                                      cmp r1, r3
005eb1fc  1a 00 00 0a                                      beq #0x5eb26c
005eb200  00 00 81 e5                                      str r0, [r1]
005eb204  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eb208  04 30 83 e2                                      add r3, r3, #4
005eb20c  40 30 84 e5                                      str r3, [r4, #0x40]
005eb210  05 71 00 eb                                      bl #0x60762c
005eb214  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb218  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb21c  04 00 8d e5                                      str r0, [sp, #4]
005eb220  03 00 51 e1                                      cmp r1, r3
005eb224  19 00 00 0a                                      beq #0x5eb290
005eb228  00 00 81 e5                                      str r0, [r1]
005eb22c  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eb230  04 30 83 e2                                      add r3, r3, #4
005eb234  40 30 84 e5                                      str r3, [r4, #0x40]
005eb238  20 70 00 eb                                      bl #0x6072c0
005eb23c  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb240  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb244  00 00 8d e5                                      str r0, [sp]
005eb248  03 00 51 e1                                      cmp r1, r3
005eb24c  18 00 00 0a                                      beq #0x5eb2b4
005eb250  00 00 81 e5                                      str r0, [r1]
005eb254  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eb258  04 30 83 e2                                      add r3, r3, #4
005eb25c  40 30 84 e5                                      str r3, [r4, #0x40]
005eb260  04 00 a0 e1                                      mov r0, r4
005eb264  2c d0 8d e2                                      add sp, sp, #0x2c
005eb268  30 80 bd e8                                      pop {r4, r5, pc}
005eb26c  05 00 a0 e1                                      mov r0, r5
005eb270  08 20 8d e2                                      add r2, sp, #8
005eb274  c5 fd ff eb                                      bl #0x5ea990
005eb278  eb 70 00 eb                                      bl #0x60762c
005eb27c  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb280  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb284  04 00 8d e5                                      str r0, [sp, #4]
005eb288  03 00 51 e1                                      cmp r1, r3
005eb28c  e5 ff ff 1a                                      bne #0x5eb228
005eb290  05 00 a0 e1                                      mov r0, r5
005eb294  04 20 8d e2                                      add r2, sp, #4
005eb298  bc fd ff eb                                      bl #0x5ea990
005eb29c  07 70 00 eb                                      bl #0x6072c0
005eb2a0  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb2a4  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb2a8  00 00 8d e5                                      str r0, [sp]
005eb2ac  03 00 51 e1                                      cmp r1, r3
005eb2b0  e6 ff ff 1a                                      bne #0x5eb250
005eb2b4  05 00 a0 e1                                      mov r0, r5
005eb2b8  0d 20 a0 e1                                      mov r2, sp
005eb2bc  b3 fd ff eb                                      bl #0x5ea990
005eb2c0  e6 ff ff ea                                      b #0x5eb260
005eb2c4  05 00 a0 e1                                      mov r0, r5
005eb2c8  1c 20 8d e2                                      add r2, sp, #0x1c
005eb2cc  42 f7 ff eb                                      bl #0x5e8fdc
005eb2d0  63 ff ff ea                                      b #0x5eb064
005eb2d4  05 00 a0 e1                                      mov r0, r5
005eb2d8  20 20 8d e2                                      add r2, sp, #0x20
005eb2dc  3e f7 ff eb                                      bl #0x5e8fdc
005eb2e0  48 ff ff ea                                      b #0x5eb008
005eb2e4  05 00 a0 e1                                      mov r0, r5
005eb2e8  0c 20 8d e2                                      add r2, sp, #0xc
005eb2ec  3a f7 ff eb                                      bl #0x5e8fdc
005eb2f0  b7 ff ff ea                                      b #0x5eb1d4
005eb2f4  05 00 a0 e1                                      mov r0, r5
005eb2f8  18 20 8d e2                                      add r2, sp, #0x18
005eb2fc  36 f7 ff eb                                      bl #0x5e8fdc
005eb300  6e ff ff ea                                      b #0x5eb0c0
005eb304  05 00 a0 e1                                      mov r0, r5
005eb308  14 20 8d e2                                      add r2, sp, #0x14
005eb30c  32 f7 ff eb                                      bl #0x5e8fdc
005eb310  81 ff ff ea                                      b #0x5eb11c
005eb314  05 00 a0 e1                                      mov r0, r5
005eb318  10 20 8d e2                                      add r2, sp, #0x10
005eb31c  2e f7 ff eb                                      bl #0x5e8fdc
005eb320  94 ff ff ea                                      b #0x5eb178
005eb324  05 00 a0 e1                                      mov r0, r5
005eb328  24 20 8d e2                                      add r2, sp, #0x24
005eb32c  2a f7 ff eb                                      bl #0x5e8fdc
005eb330  1d ff ff ea                                      b #0x5eafac

; FUNCTION 0x005eb334, declared_size=2632, range_size=2632, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager20makeNormalMapTextureERKN5boost13intrusive_ptrINS0_8ITextureEEEf
; demangled: glitch::video::CTextureManager::makeNormalMapTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, float) const
; decoder-mode: arm
005eb334  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005eb338  7c d0 4d e2                                      sub sp, sp, #0x7c
005eb33c  58 10 8d e5                                      str r1, [sp, #0x58]
005eb340  00 00 91 e5                                      ldr r0, [r1]
005eb344  02 40 a0 e1                                      mov r4, r2
005eb348  00 00 50 e3                                      cmp r0, #0
005eb34c  28 00 8d e5                                      str r0, [sp, #0x28]
005eb350  09 00 00 0a                                      beq #0x5eb37c
005eb354  38 30 90 e5                                      ldr r3, [r0, #0x38]
005eb358  53 32 e5 e7                                      ubfx r3, r3, #4, #6
005eb35c  08 00 53 e3                                      cmp r3, #8
005eb360  07 00 00 0a                                      beq #0x5eb384
005eb364  0c 00 53 e3                                      cmp r3, #0xc
005eb368  05 00 00 0a                                      beq #0x5eb384
005eb36c  00 0a 9f e5                                      ldr r0, [pc, #0xa00]
005eb370  03 10 a0 e3                                      mov r1, #3
005eb374  00 00 8f e0                                      add r0, pc, r0
005eb378  48 7e 00 eb                                      bl #0x60aca0
005eb37c  7c d0 8d e2                                      add sp, sp, #0x7c
005eb380  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005eb384  28 20 9d e5                                      ldr r2, [sp, #0x28]
005eb388  24 50 92 e5                                      ldr r5, [r2, #0x24]
005eb38c  20 60 92 e5                                      ldr r6, [r2, #0x20]
005eb390  6c 20 8d e5                                      str r2, [sp, #0x6c]
005eb394  04 30 92 e5                                      ldr r3, [r2, #4]
005eb398  01 30 83 e2                                      add r3, r3, #1
005eb39c  04 30 82 e5                                      str r3, [r2, #4]
005eb3a0  58 30 9d e5                                      ldr r3, [sp, #0x58]
005eb3a4  00 00 93 e5                                      ldr r0, [r3]
005eb3a8  00 00 50 e3                                      cmp r0, #0
005eb3ac  03 00 00 0a                                      beq #0x5eb3c0
005eb3b0  00 20 a0 e3                                      mov r2, #0
005eb3b4  04 10 a0 e3                                      mov r1, #4
005eb3b8  02 30 a0 e1                                      mov r3, r2
005eb3bc  44 4b 00 eb                                      bl #0x5fe0d4
005eb3c0  00 00 50 e3                                      cmp r0, #0
005eb3c4  00 70 a0 e1                                      mov r7, r0
005eb3c8  70 00 8d e5                                      str r0, [sp, #0x70]
005eb3cc  61 02 00 0a                                      beq #0x5ebd58
005eb3d0  43 14 a0 e3                                      mov r1, #0x43000000
005eb3d4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005eb3d8  04 00 a0 e1                                      mov r0, r4
005eb3dc  2c 8e f4 eb                                      bl #0x30ec94
005eb3e0  00 40 a0 e1                                      mov r4, r0
005eb3e4  05 00 a0 e1                                      mov r0, r5
005eb3e8  5d 8d f4 eb                                      bl #0x30e964
005eb3ec  00 80 a0 e1                                      mov r8, r0
005eb3f0  06 00 a0 e1                                      mov r0, r6
005eb3f4  5a 8d f4 eb                                      bl #0x30e964
005eb3f8  00 60 a0 e1                                      mov r6, r0
005eb3fc  06 10 a0 e1                                      mov r1, r6
005eb400  08 00 a0 e1                                      mov r0, r8
005eb404  22 8e f4 eb                                      bl #0x30ec94
005eb408  08 10 a0 e1                                      mov r1, r8
005eb40c  00 50 a0 e1                                      mov r5, r0
005eb410  06 00 a0 e1                                      mov r0, r6
005eb414  1e 8e f4 eb                                      bl #0x30ec94
005eb418  58 10 9d e5                                      ldr r1, [sp, #0x58]
005eb41c  50 00 8d e5                                      str r0, [sp, #0x50]
005eb420  00 30 91 e5                                      ldr r3, [r1]
005eb424  38 00 93 e5                                      ldr r0, [r3, #0x38]
005eb428  50 02 e5 e7                                      ubfx r0, r0, #4, #6
005eb42c  0c 00 50 e3                                      cmp r0, #0xc
005eb430  32 01 00 0a                                      beq #0x5eb900
005eb434  20 10 93 e5                                      ldr r1, [r3, #0x20]
005eb438  ab 09 00 eb                                      bl #0x5edaec
005eb43c  28 20 9d e5                                      ldr r2, [sp, #0x28]
005eb440  a0 00 a0 e1                                      lsr r0, r0, #1
005eb444  00 10 a0 e3                                      mov r1, #0
005eb448  24 30 92 e5                                      ldr r3, [r2, #0x24]
005eb44c  08 00 8d e5                                      str r0, [sp, #8]
005eb450  83 30 a0 e1                                      lsl r3, r3, #1
005eb454  90 03 00 e0                                      mul r0, r0, r3
005eb458  52 23 fd eb                                      bl #0x5341a8
005eb45c  28 30 9d e5                                      ldr r3, [sp, #0x28]
005eb460  07 10 a0 e1                                      mov r1, r7
005eb464  00 60 a0 e1                                      mov r6, r0
005eb468  24 20 93 e5                                      ldr r2, [r3, #0x24]
005eb46c  08 30 9d e5                                      ldr r3, [sp, #8]
005eb470  82 20 a0 e1                                      lsl r2, r2, #1
005eb474  93 02 02 e0                                      mul r2, r3, r2
005eb478  fa 8c f4 eb                                      bl #0x30e868
005eb47c  08 00 9d e5                                      ldr r0, [sp, #8]
005eb480  00 00 50 e3                                      cmp r0, #0
005eb484  0c 01 00 0a                                      beq #0x5eb8bc
005eb488  00 10 e0 e3                                      mvn r1, #0
005eb48c  14 10 8d e5                                      str r1, [sp, #0x14]
005eb490  08 10 9d e5                                      ldr r1, [sp, #8]
005eb494  01 20 a0 e3                                      mov r2, #1
005eb498  00 30 a0 e3                                      mov r3, #0
005eb49c  11 12 a0 e1                                      lsl r1, r1, r2
005eb4a0  18 30 8d e5                                      str r3, [sp, #0x18]
005eb4a4  08 30 9d e5                                      ldr r3, [sp, #8]
005eb4a8  28 00 9d e5                                      ldr r0, [sp, #0x28]
005eb4ac  2c 20 8d e5                                      str r2, [sp, #0x2c]
005eb4b0  56 a5 05 e3                                      movw sl, #0x5556
005eb4b4  40 70 8d e5                                      str r7, [sp, #0x40]
005eb4b8  60 20 8d e2                                      add r2, sp, #0x60
005eb4bc  01 30 43 e2                                      sub r3, r3, #1
005eb4c0  24 b0 90 e5                                      ldr fp, [r0, #0x24]
005eb4c4  55 a5 45 e3                                      movt sl, #0x5555
005eb4c8  44 10 8d e5                                      str r1, [sp, #0x44]
005eb4cc  38 20 8d e5                                      str r2, [sp, #0x38]
005eb4d0  3c 30 8d e5                                      str r3, [sp, #0x3c]
005eb4d4  0c 50 8d e5                                      str r5, [sp, #0xc]
005eb4d8  00 00 5b e3                                      cmp fp, #0
005eb4dc  e7 00 00 da                                      ble #0x5eb880
005eb4e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
005eb4e4  7d 8b f4 eb                                      bl #0x30e2e0
005eb4e8  00 10 a0 e1                                      mov r1, r0
005eb4ec  50 00 9d e5                                      ldr r0, [sp, #0x50]
005eb4f0  1d 8e f4 eb                                      bl #0x30ed6c
005eb4f4  00 10 a0 e1                                      mov r1, r0
005eb4f8  ab 8b f4 eb                                      bl #0x30e3ac
005eb4fc  30 00 8d e5                                      str r0, [sp, #0x30]
005eb500  14 00 9d e5                                      ldr r0, [sp, #0x14]
005eb504  75 8b f4 eb                                      bl #0x30e2e0
005eb508  50 10 9d e5                                      ldr r1, [sp, #0x50]
005eb50c  16 8e f4 eb                                      bl #0x30ed6c
005eb510  00 50 a0 e1                                      mov r5, r0
005eb514  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005eb518  70 8b f4 eb                                      bl #0x30e2e0
005eb51c  50 10 9d e5                                      ldr r1, [sp, #0x50]
005eb520  11 8e f4 eb                                      bl #0x30ed6c
005eb524  00 10 a0 e1                                      mov r1, r0
005eb528  05 00 a0 e1                                      mov r0, r5
005eb52c  9e 8b f4 eb                                      bl #0x30e3ac
005eb530  30 30 9d e5                                      ldr r3, [sp, #0x30]
005eb534  20 00 8d e5                                      str r0, [sp, #0x20]
005eb538  40 00 9d e5                                      ldr r0, [sp, #0x40]
005eb53c  02 31 83 e2                                      add r3, r3, #0x80000000
005eb540  34 30 8d e5                                      str r3, [sp, #0x34]
005eb544  1c 00 8d e5                                      str r0, [sp, #0x1c]
005eb548  00 70 e0 e3                                      mvn r7, #0
005eb54c  00 80 a0 e3                                      mov r8, #0
005eb550  00 00 00 ea                                      b #0x5eb558
005eb554  05 80 a0 e1                                      mov r8, r5
005eb558  08 00 9d e5                                      ldr r0, [sp, #8]
005eb55c  14 10 9d e5                                      ldr r1, [sp, #0x14]
005eb560  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005eb564  90 08 05 e0                                      mul r5, r0, r8
005eb568  00 00 51 e3                                      cmp r1, #0
005eb56c  01 30 a0 a1                                      movge r3, r1
005eb570  03 30 85 e0                                      add r3, r5, r3
005eb574  83 30 a0 e1                                      lsl r3, r3, #1
005eb578  b3 30 96 e1                                      ldrh r3, [r6, r3]
005eb57c  d3 22 e4 e7                                      ubfx r2, r3, #5, #5
005eb580  53 15 e4 e7                                      ubfx r1, r3, #0xa, #5
005eb584  82 21 a0 e1                                      lsl r2, r2, #3
005eb588  1f 30 03 e2                                      and r3, r3, #0x1f
005eb58c  81 21 82 e0                                      add r2, r2, r1, lsl #3
005eb590  83 21 82 e0                                      add r2, r2, r3, lsl #3
005eb594  9a 32 c0 e0                                      smull r3, r0, sl, r2
005eb598  70 00 ef e6                                      uxtb r0, r0
005eb59c  4f 8b f4 eb                                      bl #0x30e2e0
005eb5a0  00 10 a0 e1                                      mov r1, r0
005eb5a4  04 00 a0 e1                                      mov r0, r4
005eb5a8  ef 8d f4 eb                                      bl #0x30ed6c
005eb5ac  24 00 8d e5                                      str r0, [sp, #0x24]
005eb5b0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005eb5b4  00 50 85 e0                                      add r5, r5, r0
005eb5b8  85 50 a0 e1                                      lsl r5, r5, #1
005eb5bc  b5 30 96 e1                                      ldrh r3, [r6, r5]
005eb5c0  01 50 88 e2                                      add r5, r8, #1
005eb5c4  d3 22 e4 e7                                      ubfx r2, r3, #5, #5
005eb5c8  53 15 e4 e7                                      ubfx r1, r3, #0xa, #5
005eb5cc  82 21 a0 e1                                      lsl r2, r2, #3
005eb5d0  81 21 82 e0                                      add r2, r2, r1, lsl #3
005eb5d4  1f 30 03 e2                                      and r3, r3, #0x1f
005eb5d8  83 21 82 e0                                      add r2, r2, r3, lsl #3
005eb5dc  9a 12 c0 e0                                      smull r1, r0, sl, r2
005eb5e0  70 00 ef e6                                      uxtb r0, r0
005eb5e4  3d 8b f4 eb                                      bl #0x30e2e0
005eb5e8  00 10 a0 e1                                      mov r1, r0
005eb5ec  04 00 a0 e1                                      mov r0, r4
005eb5f0  dd 8d f4 eb                                      bl #0x30ed6c
005eb5f4  01 00 77 e3                                      cmn r7, #1
005eb5f8  00 30 a0 e1                                      mov r3, r0
005eb5fc  07 00 a0 e1                                      mov r0, r7
005eb600  07 b0 a0 11                                      movne fp, r7
005eb604  01 b0 4b 02                                      subeq fp, fp, #1
005eb608  00 30 8d e5                                      str r3, [sp]
005eb60c  d4 8c f4 eb                                      bl #0x30e964
005eb610  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005eb614  d4 8d f4 eb                                      bl #0x30ed6c
005eb618  08 20 9d e5                                      ldr r2, [sp, #8]
005eb61c  00 90 a0 e1                                      mov sb, r0
005eb620  18 00 9d e5                                      ldr r0, [sp, #0x18]
005eb624  01 70 87 e2                                      add r7, r7, #1
005eb628  92 0b 2b e0                                      mla fp, r2, fp, r0
005eb62c  8b b0 a0 e1                                      lsl fp, fp, #1
005eb630  bb 20 96 e1                                      ldrh r2, [r6, fp]
005eb634  d2 12 e4 e7                                      ubfx r1, r2, #5, #5
005eb638  52 05 e4 e7                                      ubfx r0, r2, #0xa, #5
005eb63c  81 11 a0 e1                                      lsl r1, r1, #3
005eb640  1f 20 02 e2                                      and r2, r2, #0x1f
005eb644  80 11 81 e0                                      add r1, r1, r0, lsl #3
005eb648  82 11 81 e0                                      add r1, r1, r2, lsl #3
005eb64c  9a 21 c0 e0                                      smull r2, r0, sl, r1
005eb650  70 00 ef e6                                      uxtb r0, r0
005eb654  21 8b f4 eb                                      bl #0x30e2e0
005eb658  00 10 a0 e1                                      mov r1, r0
005eb65c  04 00 a0 e1                                      mov r0, r4
005eb660  c1 8d f4 eb                                      bl #0x30ed6c
005eb664  18 10 9d e5                                      ldr r1, [sp, #0x18]
005eb668  00 b0 a0 e1                                      mov fp, r0
005eb66c  08 00 9d e5                                      ldr r0, [sp, #8]
005eb670  90 15 22 e0                                      mla r2, r0, r5, r1
005eb674  82 20 a0 e1                                      lsl r2, r2, #1
005eb678  b2 20 96 e1                                      ldrh r2, [r6, r2]
005eb67c  d2 12 e4 e7                                      ubfx r1, r2, #5, #5
005eb680  52 05 e4 e7                                      ubfx r0, r2, #0xa, #5
005eb684  81 11 a0 e1                                      lsl r1, r1, #3
005eb688  1f 20 02 e2                                      and r2, r2, #0x1f
005eb68c  80 11 81 e0                                      add r1, r1, r0, lsl #3
005eb690  82 11 81 e0                                      add r1, r1, r2, lsl #3
005eb694  9a 21 c0 e0                                      smull r2, r0, sl, r1
005eb698  70 00 ef e6                                      uxtb r0, r0
005eb69c  0f 8b f4 eb                                      bl #0x30e2e0
005eb6a0  00 10 a0 e1                                      mov r1, r0
005eb6a4  04 00 a0 e1                                      mov r0, r4
005eb6a8  af 8d f4 eb                                      bl #0x30ed6c
005eb6ac  00 10 a0 e1                                      mov r1, r0
005eb6b0  0b 00 a0 e1                                      mov r0, fp
005eb6b4  3c 8b f4 eb                                      bl #0x30e3ac
005eb6b8  10 00 8d e5                                      str r0, [sp, #0x10]
005eb6bc  05 00 a0 e1                                      mov r0, r5
005eb6c0  a7 8c f4 eb                                      bl #0x30e964
005eb6c4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005eb6c8  a7 8d f4 eb                                      bl #0x30ed6c
005eb6cc  00 10 a0 e1                                      mov r1, r0
005eb6d0  09 00 a0 e1                                      mov r0, sb
005eb6d4  34 8b f4 eb                                      bl #0x30e3ac
005eb6d8  00 30 9d e5                                      ldr r3, [sp]
005eb6dc  00 b0 a0 e1                                      mov fp, r0
005eb6e0  24 00 9d e5                                      ldr r0, [sp, #0x24]
005eb6e4  03 10 a0 e1                                      mov r1, r3
005eb6e8  2f 8b f4 eb                                      bl #0x30e3ac
005eb6ec  00 90 a0 e1                                      mov sb, r0
005eb6f0  08 00 a0 e1                                      mov r0, r8
005eb6f4  9a 8c f4 eb                                      bl #0x30e964
005eb6f8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005eb6fc  9a 8d f4 eb                                      bl #0x30ed6c
005eb700  00 10 a0 e1                                      mov r1, r0
005eb704  28 8b f4 eb                                      bl #0x30e3ac
005eb708  10 20 9d e5                                      ldr r2, [sp, #0x10]
005eb70c  00 00 8d e5                                      str r0, [sp]
005eb710  02 11 82 e2                                      add r1, r2, #0x80000000
005eb714  94 8d f4 eb                                      bl #0x30ed6c
005eb718  09 10 a0 e1                                      mov r1, sb
005eb71c  00 80 a0 e1                                      mov r8, r0
005eb720  0b 00 a0 e1                                      mov r0, fp
005eb724  90 8d f4 eb                                      bl #0x30ed6c
005eb728  00 10 a0 e1                                      mov r1, r0
005eb72c  08 00 a0 e1                                      mov r0, r8
005eb730  1b 8d f4 eb                                      bl #0x30eba4
005eb734  02 11 8b e2                                      add r1, fp, #0x80000000
005eb738  60 00 8d e5                                      str r0, [sp, #0x60]
005eb73c  20 00 9d e5                                      ldr r0, [sp, #0x20]
005eb740  89 8d f4 eb                                      bl #0x30ed6c
005eb744  00 30 9d e5                                      ldr r3, [sp]
005eb748  00 80 a0 e1                                      mov r8, r0
005eb74c  30 10 9d e5                                      ldr r1, [sp, #0x30]
005eb750  03 00 a0 e1                                      mov r0, r3
005eb754  84 8d f4 eb                                      bl #0x30ed6c
005eb758  00 10 a0 e1                                      mov r1, r0
005eb75c  08 00 a0 e1                                      mov r0, r8
005eb760  0f 8d f4 eb                                      bl #0x30eba4
005eb764  34 10 9d e5                                      ldr r1, [sp, #0x34]
005eb768  64 00 8d e5                                      str r0, [sp, #0x64]
005eb76c  09 00 a0 e1                                      mov r0, sb
005eb770  7d 8d f4 eb                                      bl #0x30ed6c
005eb774  20 10 9d e5                                      ldr r1, [sp, #0x20]
005eb778  00 80 a0 e1                                      mov r8, r0
005eb77c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005eb780  79 8d f4 eb                                      bl #0x30ed6c
005eb784  00 10 a0 e1                                      mov r1, r0
005eb788  08 00 a0 e1                                      mov r0, r8
005eb78c  04 8d f4 eb                                      bl #0x30eba4
005eb790  68 00 8d e5                                      str r0, [sp, #0x68]
005eb794  38 00 9d e5                                      ldr r0, [sp, #0x38]
005eb798  50 cc f5 eb                                      bl #0x35e8e0
005eb79c  60 00 9d e5                                      ldr r0, [sp, #0x60]
005eb7a0  3f 14 a0 e3                                      mov r1, #0x3f000000
005eb7a4  70 8d f4 eb                                      bl #0x30ed6c
005eb7a8  3f 14 a0 e3                                      mov r1, #0x3f000000
005eb7ac  00 80 a0 e1                                      mov r8, r0
005eb7b0  64 00 9d e5                                      ldr r0, [sp, #0x64]
005eb7b4  6c 8d f4 eb                                      bl #0x30ed6c
005eb7b8  3f 14 a0 e3                                      mov r1, #0x3f000000
005eb7bc  00 90 a0 e1                                      mov sb, r0
005eb7c0  68 00 9d e5                                      ldr r0, [sp, #0x68]
005eb7c4  68 8d f4 eb                                      bl #0x30ed6c
005eb7c8  3f 14 a0 e3                                      mov r1, #0x3f000000
005eb7cc  f4 8c f4 eb                                      bl #0x30eba4
005eb7d0  3f 14 a0 e3                                      mov r1, #0x3f000000
005eb7d4  00 b0 a0 e1                                      mov fp, r0
005eb7d8  08 00 a0 e1                                      mov r0, r8
005eb7dc  f0 8c f4 eb                                      bl #0x30eba4
005eb7e0  43 14 a0 e3                                      mov r1, #0x43000000
005eb7e4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005eb7e8  5f 8d f4 eb                                      bl #0x30ed6c
005eb7ec  3f 14 a0 e3                                      mov r1, #0x3f000000
005eb7f0  00 80 a0 e1                                      mov r8, r0
005eb7f4  09 00 a0 e1                                      mov r0, sb
005eb7f8  60 80 8d e5                                      str r8, [sp, #0x60]
005eb7fc  e8 8c f4 eb                                      bl #0x30eba4
005eb800  43 14 a0 e3                                      mov r1, #0x43000000
005eb804  7f 18 81 e2                                      add r1, r1, #0x7f0000
005eb808  57 8d f4 eb                                      bl #0x30ed6c
005eb80c  43 14 a0 e3                                      mov r1, #0x43000000
005eb810  7f 18 81 e2                                      add r1, r1, #0x7f0000
005eb814  00 90 a0 e1                                      mov sb, r0
005eb818  0b 00 a0 e1                                      mov r0, fp
005eb81c  64 90 8d e5                                      str sb, [sp, #0x64]
005eb820  51 8d f4 eb                                      bl #0x30ed6c
005eb824  00 b0 a0 e1                                      mov fp, r0
005eb828  09 00 a0 e1                                      mov r0, sb
005eb82c  68 b0 8d e5                                      str fp, [sp, #0x68]
005eb830  9a 4a 0b eb                                      bl #0x8be2a0
005eb834  d0 31 e4 e7                                      ubfx r3, r0, #3, #5
005eb838  83 38 e0 e1                                      mvn r3, r3, lsl #17
005eb83c  08 00 a0 e1                                      mov r0, r8
005eb840  a3 88 e0 e1                                      mvn r8, r3, lsr #17
005eb844  95 4a 0b eb                                      bl #0x8be2a0
005eb848  f8 30 00 e2                                      and r3, r0, #0xf8
005eb84c  0b 00 a0 e1                                      mov r0, fp
005eb850  83 83 88 e1                                      orr r8, r8, r3, lsl #7
005eb854  91 4a 0b eb                                      bl #0x8be2a0
005eb858  f8 00 00 e2                                      and r0, r0, #0xf8
005eb85c  00 81 88 e1                                      orr r8, r8, r0, lsl #2
005eb860  44 30 9d e5                                      ldr r3, [sp, #0x44]
005eb864  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005eb868  b3 80 80 e0                                      strh r8, [r0], r3
005eb86c  28 10 9d e5                                      ldr r1, [sp, #0x28]
005eb870  1c 00 8d e5                                      str r0, [sp, #0x1c]
005eb874  24 b0 91 e5                                      ldr fp, [r1, #0x24]
005eb878  05 00 5b e1                                      cmp fp, r5
005eb87c  34 ff ff ca                                      bgt #0x5eb554
005eb880  08 20 9d e5                                      ldr r2, [sp, #8]
005eb884  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005eb888  18 00 9d e5                                      ldr r0, [sp, #0x18]
005eb88c  14 10 9d e5                                      ldr r1, [sp, #0x14]
005eb890  03 00 52 e1                                      cmp r2, r3
005eb894  40 20 9d e5                                      ldr r2, [sp, #0x40]
005eb898  01 00 80 e2                                      add r0, r0, #1
005eb89c  01 10 81 e2                                      add r1, r1, #1
005eb8a0  02 20 82 e2                                      add r2, r2, #2
005eb8a4  18 00 8d e5                                      str r0, [sp, #0x18]
005eb8a8  14 10 8d e5                                      str r1, [sp, #0x14]
005eb8ac  40 20 8d e5                                      str r2, [sp, #0x40]
005eb8b0  01 30 83 e2                                      add r3, r3, #1
005eb8b4  2c 30 8d 85                                      strhi r3, [sp, #0x2c]
005eb8b8  06 ff ff 8a                                      bhi #0x5eb4d8
005eb8bc  00 00 56 e3                                      cmp r6, #0
005eb8c0  01 00 00 0a                                      beq #0x5eb8cc
005eb8c4  06 00 a0 e1                                      mov r0, r6
005eb8c8  fa 89 f4 eb                                      bl #0x30e0b8
005eb8cc  58 10 9d e5                                      ldr r1, [sp, #0x58]
005eb8d0  00 00 91 e5                                      ldr r0, [r1]
005eb8d4  93 49 00 eb                                      bl #0x5fdf28
005eb8d8  70 30 9d e5                                      ldr r3, [sp, #0x70]
005eb8dc  00 00 53 e3                                      cmp r3, #0
005eb8e0  01 00 00 0a                                      beq #0x5eb8ec
005eb8e4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005eb8e8  c7 48 00 eb                                      bl #0x5fdc0c
005eb8ec  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005eb8f0  00 00 50 e3                                      cmp r0, #0
005eb8f4  a0 fe ff 0a                                      beq #0x5eb37c
005eb8f8  21 c7 f4 eb                                      bl #0x31d584
005eb8fc  9e fe ff ea                                      b #0x5eb37c
005eb900  20 10 93 e5                                      ldr r1, [r3, #0x20]
005eb904  78 08 00 eb                                      bl #0x5edaec
005eb908  28 20 9d e5                                      ldr r2, [sp, #0x28]
005eb90c  20 81 a0 e1                                      lsr r8, r0, #2
005eb910  00 10 a0 e3                                      mov r1, #0
005eb914  24 30 92 e5                                      ldr r3, [r2, #0x24]
005eb918  03 31 a0 e1                                      lsl r3, r3, #2
005eb91c  98 03 00 e0                                      mul r0, r8, r3
005eb920  20 22 fd eb                                      bl #0x5341a8
005eb924  28 30 9d e5                                      ldr r3, [sp, #0x28]
005eb928  07 10 a0 e1                                      mov r1, r7
005eb92c  00 60 a0 e1                                      mov r6, r0
005eb930  24 20 93 e5                                      ldr r2, [r3, #0x24]
005eb934  02 21 a0 e1                                      lsl r2, r2, #2
005eb938  98 02 02 e0                                      mul r2, r8, r2
005eb93c  c9 8b f4 eb                                      bl #0x30e868
005eb940  00 00 58 e3                                      cmp r8, #0
005eb944  dc ff ff 0a                                      beq #0x5eb8bc
005eb948  74 00 8d e2                                      add r0, sp, #0x74
005eb94c  01 10 80 e2                                      add r1, r0, #1
005eb950  01 20 81 e2                                      add r2, r1, #1
005eb954  40 20 8d e5                                      str r2, [sp, #0x40]
005eb958  00 30 e0 e3                                      mvn r3, #0
005eb95c  10 30 8d e5                                      str r3, [sp, #0x10]
005eb960  40 30 9d e5                                      ldr r3, [sp, #0x40]
005eb964  28 20 9d e5                                      ldr r2, [sp, #0x28]
005eb968  38 00 8d e5                                      str r0, [sp, #0x38]
005eb96c  3c 10 8d e5                                      str r1, [sp, #0x3c]
005eb970  01 00 a0 e3                                      mov r0, #1
005eb974  00 10 a0 e3                                      mov r1, #0
005eb978  2c 00 8d e5                                      str r0, [sp, #0x2c]
005eb97c  08 10 8d e5                                      str r1, [sp, #8]
005eb980  00 30 83 e0                                      add r3, r3, r0
005eb984  54 70 8d e5                                      str r7, [sp, #0x54]
005eb988  60 00 8d e2                                      add r0, sp, #0x60
005eb98c  01 10 48 e2                                      sub r1, r8, #1
005eb990  24 b0 92 e5                                      ldr fp, [r2, #0x24]
005eb994  44 30 8d e5                                      str r3, [sp, #0x44]
005eb998  48 00 8d e5                                      str r0, [sp, #0x48]
005eb99c  4c 10 8d e5                                      str r1, [sp, #0x4c]
005eb9a0  0c 50 8d e5                                      str r5, [sp, #0xc]
005eb9a4  00 00 5b e3                                      cmp fp, #0
005eb9a8  db 00 00 da                                      ble #0x5ebd1c
005eb9ac  08 00 9d e5                                      ldr r0, [sp, #8]
005eb9b0  4a 8a f4 eb                                      bl #0x30e2e0
005eb9b4  00 10 a0 e1                                      mov r1, r0
005eb9b8  50 00 9d e5                                      ldr r0, [sp, #0x50]
005eb9bc  ea 8c f4 eb                                      bl #0x30ed6c
005eb9c0  00 10 a0 e1                                      mov r1, r0
005eb9c4  78 8a f4 eb                                      bl #0x30e3ac
005eb9c8  30 00 8d e5                                      str r0, [sp, #0x30]
005eb9cc  10 00 9d e5                                      ldr r0, [sp, #0x10]
005eb9d0  42 8a f4 eb                                      bl #0x30e2e0
005eb9d4  50 10 9d e5                                      ldr r1, [sp, #0x50]
005eb9d8  e3 8c f4 eb                                      bl #0x30ed6c
005eb9dc  00 50 a0 e1                                      mov r5, r0
005eb9e0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005eb9e4  3d 8a f4 eb                                      bl #0x30e2e0
005eb9e8  50 10 9d e5                                      ldr r1, [sp, #0x50]
005eb9ec  de 8c f4 eb                                      bl #0x30ed6c
005eb9f0  00 10 a0 e1                                      mov r1, r0
005eb9f4  05 00 a0 e1                                      mov r0, r5
005eb9f8  6b 8a f4 eb                                      bl #0x30e3ac
005eb9fc  30 30 9d e5                                      ldr r3, [sp, #0x30]
005eba00  54 10 9d e5                                      ldr r1, [sp, #0x54]
005eba04  18 00 8d e5                                      str r0, [sp, #0x18]
005eba08  02 31 83 e2                                      add r3, r3, #0x80000000
005eba0c  08 01 a0 e1                                      lsl r0, r8, #2
005eba10  34 30 8d e5                                      str r3, [sp, #0x34]
005eba14  5c 00 8d e5                                      str r0, [sp, #0x5c]
005eba18  14 10 8d e5                                      str r1, [sp, #0x14]
005eba1c  00 90 a0 e3                                      mov sb, #0
005eba20  00 00 00 ea                                      b #0x5eba28
005eba24  05 90 a0 e1                                      mov sb, r5
005eba28  10 20 9d e5                                      ldr r2, [sp, #0x10]
005eba2c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005eba30  98 09 07 e0                                      mul r7, r8, sb
005eba34  00 00 52 e3                                      cmp r2, #0
005eba38  02 30 a0 a1                                      movge r3, r2
005eba3c  03 30 87 e0                                      add r3, r7, r3
005eba40  03 01 96 e7                                      ldr r0, [r6, r3, lsl #2]
005eba44  01 50 89 e2                                      add r5, sb, #1
005eba48  01 a0 49 e2                                      sub sl, sb, #1
005eba4c  50 08 e7 e7                                      ubfx r0, r0, #0x10, #8
005eba50  22 8a f4 eb                                      bl #0x30e2e0
005eba54  00 10 a0 e1                                      mov r1, r0
005eba58  04 00 a0 e1                                      mov r0, r4
005eba5c  c2 8c f4 eb                                      bl #0x30ed6c
005eba60  24 00 8d e5                                      str r0, [sp, #0x24]
005eba64  09 00 a0 e1                                      mov r0, sb
005eba68  bd 8b f4 eb                                      bl #0x30e964
005eba6c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005eba70  bd 8c f4 eb                                      bl #0x30ed6c
005eba74  20 00 8d e5                                      str r0, [sp, #0x20]
005eba78  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005eba7c  00 30 87 e0                                      add r3, r7, r0
005eba80  03 01 96 e7                                      ldr r0, [r6, r3, lsl #2]
005eba84  50 08 e7 e7                                      ubfx r0, r0, #0x10, #8
005eba88  14 8a f4 eb                                      bl #0x30e2e0
005eba8c  00 10 a0 e1                                      mov r1, r0
005eba90  04 00 a0 e1                                      mov r0, r4
005eba94  b4 8c f4 eb                                      bl #0x30ed6c
005eba98  08 10 9d e5                                      ldr r1, [sp, #8]
005eba9c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005ebaa0  98 15 23 e0                                      mla r3, r8, r5, r1
005ebaa4  03 01 96 e7                                      ldr r0, [r6, r3, lsl #2]
005ebaa8  50 08 e7 e7                                      ubfx r0, r0, #0x10, #8
005ebaac  0b 8a f4 eb                                      bl #0x30e2e0
005ebab0  00 10 a0 e1                                      mov r1, r0
005ebab4  04 00 a0 e1                                      mov r0, r4
005ebab8  ab 8c f4 eb                                      bl #0x30ed6c
005ebabc  00 90 a0 e1                                      mov sb, r0
005ebac0  0a 00 a0 e1                                      mov r0, sl
005ebac4  a6 8b f4 eb                                      bl #0x30e964
005ebac8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005ebacc  a6 8c f4 eb                                      bl #0x30ed6c
005ebad0  08 20 9d e5                                      ldr r2, [sp, #8]
005ebad4  00 00 5a e3                                      cmp sl, #0
005ebad8  01 a0 4b b2                                      sublt sl, fp, #1
005ebadc  98 2a 2a e0                                      mla sl, r8, sl, r2
005ebae0  00 30 a0 e1                                      mov r3, r0
005ebae4  0a 01 96 e7                                      ldr r0, [r6, sl, lsl #2]
005ebae8  00 30 8d e5                                      str r3, [sp]
005ebaec  50 08 e7 e7                                      ubfx r0, r0, #0x10, #8
005ebaf0  fa 89 f4 eb                                      bl #0x30e2e0
005ebaf4  00 10 a0 e1                                      mov r1, r0
005ebaf8  04 00 a0 e1                                      mov r0, r4
005ebafc  9a 8c f4 eb                                      bl #0x30ed6c
005ebb00  00 a0 a0 e1                                      mov sl, r0
005ebb04  05 00 a0 e1                                      mov r0, r5
005ebb08  95 8b f4 eb                                      bl #0x30e964
005ebb0c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005ebb10  95 8c f4 eb                                      bl #0x30ed6c
005ebb14  0a 10 a0 e1                                      mov r1, sl
005ebb18  00 b0 a0 e1                                      mov fp, r0
005ebb1c  09 00 a0 e1                                      mov r0, sb
005ebb20  21 8a f4 eb                                      bl #0x30e3ac
005ebb24  00 30 9d e5                                      ldr r3, [sp]
005ebb28  00 a0 a0 e1                                      mov sl, r0
005ebb2c  0b 10 a0 e1                                      mov r1, fp
005ebb30  03 00 a0 e1                                      mov r0, r3
005ebb34  1c 8a f4 eb                                      bl #0x30e3ac
005ebb38  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005ebb3c  00 b0 a0 e1                                      mov fp, r0
005ebb40  24 00 9d e5                                      ldr r0, [sp, #0x24]
005ebb44  18 8a f4 eb                                      bl #0x30e3ac
005ebb48  00 90 a0 e1                                      mov sb, r0
005ebb4c  20 00 9d e5                                      ldr r0, [sp, #0x20]
005ebb50  00 10 a0 e1                                      mov r1, r0
005ebb54  14 8a f4 eb                                      bl #0x30e3ac
005ebb58  02 11 8a e2                                      add r1, sl, #0x80000000
005ebb5c  04 00 8d e5                                      str r0, [sp, #4]
005ebb60  81 8c f4 eb                                      bl #0x30ed6c
005ebb64  09 10 a0 e1                                      mov r1, sb
005ebb68  00 30 a0 e1                                      mov r3, r0
005ebb6c  0b 00 a0 e1                                      mov r0, fp
005ebb70  00 30 8d e5                                      str r3, [sp]
005ebb74  7c 8c f4 eb                                      bl #0x30ed6c
005ebb78  00 30 9d e5                                      ldr r3, [sp]
005ebb7c  00 10 a0 e1                                      mov r1, r0
005ebb80  03 00 a0 e1                                      mov r0, r3
005ebb84  06 8c f4 eb                                      bl #0x30eba4
005ebb88  02 11 8b e2                                      add r1, fp, #0x80000000
005ebb8c  60 00 8d e5                                      str r0, [sp, #0x60]
005ebb90  18 00 9d e5                                      ldr r0, [sp, #0x18]
005ebb94  74 8c f4 eb                                      bl #0x30ed6c
005ebb98  04 20 9d e5                                      ldr r2, [sp, #4]
005ebb9c  00 b0 a0 e1                                      mov fp, r0
005ebba0  30 10 9d e5                                      ldr r1, [sp, #0x30]
005ebba4  02 00 a0 e1                                      mov r0, r2
005ebba8  6f 8c f4 eb                                      bl #0x30ed6c
005ebbac  00 10 a0 e1                                      mov r1, r0
005ebbb0  0b 00 a0 e1                                      mov r0, fp
005ebbb4  fa 8b f4 eb                                      bl #0x30eba4
005ebbb8  34 10 9d e5                                      ldr r1, [sp, #0x34]
005ebbbc  64 00 8d e5                                      str r0, [sp, #0x64]
005ebbc0  09 00 a0 e1                                      mov r0, sb
005ebbc4  68 8c f4 eb                                      bl #0x30ed6c
005ebbc8  18 10 9d e5                                      ldr r1, [sp, #0x18]
005ebbcc  00 90 a0 e1                                      mov sb, r0
005ebbd0  0a 00 a0 e1                                      mov r0, sl
005ebbd4  64 8c f4 eb                                      bl #0x30ed6c
005ebbd8  00 10 a0 e1                                      mov r1, r0
005ebbdc  09 00 a0 e1                                      mov r0, sb
005ebbe0  ef 8b f4 eb                                      bl #0x30eba4
005ebbe4  68 00 8d e5                                      str r0, [sp, #0x68]
005ebbe8  48 00 9d e5                                      ldr r0, [sp, #0x48]
005ebbec  3b cb f5 eb                                      bl #0x35e8e0
005ebbf0  60 00 9d e5                                      ldr r0, [sp, #0x60]
005ebbf4  3f 14 a0 e3                                      mov r1, #0x3f000000
005ebbf8  5b 8c f4 eb                                      bl #0x30ed6c
005ebbfc  3f 14 a0 e3                                      mov r1, #0x3f000000
005ebc00  00 b0 a0 e1                                      mov fp, r0
005ebc04  64 00 9d e5                                      ldr r0, [sp, #0x64]
005ebc08  57 8c f4 eb                                      bl #0x30ed6c
005ebc0c  3f 14 a0 e3                                      mov r1, #0x3f000000
005ebc10  00 a0 a0 e1                                      mov sl, r0
005ebc14  68 00 9d e5                                      ldr r0, [sp, #0x68]
005ebc18  53 8c f4 eb                                      bl #0x30ed6c
005ebc1c  3f 14 a0 e3                                      mov r1, #0x3f000000
005ebc20  00 90 a0 e1                                      mov sb, r0
005ebc24  0b 00 a0 e1                                      mov r0, fp
005ebc28  dd 8b f4 eb                                      bl #0x30eba4
005ebc2c  43 14 a0 e3                                      mov r1, #0x43000000
005ebc30  7f 18 81 e2                                      add r1, r1, #0x7f0000
005ebc34  4c 8c f4 eb                                      bl #0x30ed6c
005ebc38  3f 14 a0 e3                                      mov r1, #0x3f000000
005ebc3c  00 b0 a0 e1                                      mov fp, r0
005ebc40  0a 00 a0 e1                                      mov r0, sl
005ebc44  60 b0 8d e5                                      str fp, [sp, #0x60]
005ebc48  d5 8b f4 eb                                      bl #0x30eba4
005ebc4c  43 14 a0 e3                                      mov r1, #0x43000000
005ebc50  7f 18 81 e2                                      add r1, r1, #0x7f0000
005ebc54  44 8c f4 eb                                      bl #0x30ed6c
005ebc58  3f 14 a0 e3                                      mov r1, #0x3f000000
005ebc5c  00 a0 a0 e1                                      mov sl, r0
005ebc60  09 00 a0 e1                                      mov r0, sb
005ebc64  64 a0 8d e5                                      str sl, [sp, #0x64]
005ebc68  cd 8b f4 eb                                      bl #0x30eba4
005ebc6c  43 14 a0 e3                                      mov r1, #0x43000000
005ebc70  7f 18 81 e2                                      add r1, r1, #0x7f0000
005ebc74  3c 8c f4 eb                                      bl #0x30ed6c
005ebc78  00 30 a0 e1                                      mov r3, r0
005ebc7c  68 00 8d e5                                      str r0, [sp, #0x68]
005ebc80  28 00 9d e5                                      ldr r0, [sp, #0x28]
005ebc84  01 00 55 e3                                      cmp r5, #1
005ebc88  08 10 9d e5                                      ldr r1, [sp, #8]
005ebc8c  24 90 90 e5                                      ldr sb, [r0, #0x24]
005ebc90  01 90 49 42                                      submi sb, sb, #1
005ebc94  98 09 07 40                                      mulmi r7, r8, sb
005ebc98  01 70 87 e0                                      add r7, r7, r1
005ebc9c  07 01 96 e7                                      ldr r0, [r6, r7, lsl #2]
005ebca0  00 30 8d e5                                      str r3, [sp]
005ebca4  50 08 e7 e7                                      ubfx r0, r0, #0x10, #8
005ebca8  8c 89 f4 eb                                      bl #0x30e2e0
005ebcac  7b 49 0b eb                                      bl #0x8be2a0
005ebcb0  70 70 ef e6                                      uxtb r7, r0
005ebcb4  0b 00 a0 e1                                      mov r0, fp
005ebcb8  78 49 0b eb                                      bl #0x8be2a0
005ebcbc  00 30 9d e5                                      ldr r3, [sp]
005ebcc0  70 90 ef e6                                      uxtb sb, r0
005ebcc4  03 00 a0 e1                                      mov r0, r3
005ebcc8  74 49 0b eb                                      bl #0x8be2a0
005ebccc  70 b0 ef e6                                      uxtb fp, r0
005ebcd0  0a 00 a0 e1                                      mov r0, sl
005ebcd4  71 49 0b eb                                      bl #0x8be2a0
005ebcd8  38 20 9d e5                                      ldr r2, [sp, #0x38]
005ebcdc  00 70 c2 e5                                      strb r7, [r2]
005ebce0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ebce4  00 90 c3 e5                                      strb sb, [r3]
005ebce8  40 10 9d e5                                      ldr r1, [sp, #0x40]
005ebcec  00 b0 c1 e5                                      strb fp, [r1]
005ebcf0  44 20 9d e5                                      ldr r2, [sp, #0x44]
005ebcf4  00 00 c2 e5                                      strb r0, [r2]
005ebcf8  14 10 9d e5                                      ldr r1, [sp, #0x14]
005ebcfc  74 30 9d e5                                      ldr r3, [sp, #0x74]
005ebd00  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005ebd04  00 30 81 e6                                      str r3, [r1], r0
005ebd08  28 20 9d e5                                      ldr r2, [sp, #0x28]
005ebd0c  14 10 8d e5                                      str r1, [sp, #0x14]
005ebd10  24 b0 92 e5                                      ldr fp, [r2, #0x24]
005ebd14  05 00 5b e1                                      cmp fp, r5
005ebd18  41 ff ff ca                                      bgt #0x5eba24
005ebd1c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005ebd20  08 00 9d e5                                      ldr r0, [sp, #8]
005ebd24  10 10 9d e5                                      ldr r1, [sp, #0x10]
005ebd28  54 20 9d e5                                      ldr r2, [sp, #0x54]
005ebd2c  03 00 58 e1                                      cmp r8, r3
005ebd30  01 00 80 e2                                      add r0, r0, #1
005ebd34  01 10 81 e2                                      add r1, r1, #1
005ebd38  04 20 82 e2                                      add r2, r2, #4
005ebd3c  08 00 8d e5                                      str r0, [sp, #8]
005ebd40  10 10 8d e5                                      str r1, [sp, #0x10]
005ebd44  54 20 8d e5                                      str r2, [sp, #0x54]
005ebd48  01 30 83 e2                                      add r3, r3, #1
005ebd4c  da fe ff 9a                                      bls #0x5eb8bc
005ebd50  2c 30 8d e5                                      str r3, [sp, #0x2c]
005ebd54  12 ff ff ea                                      b #0x5eb9a4
005ebd58  18 00 9f e5                                      ldr r0, [pc, #0x18]
005ebd5c  03 10 a0 e3                                      mov r1, #3
005ebd60  00 00 8f e0                                      add r0, pc, r0
005ebd64  cd 7b 00 eb                                      bl #0x60aca0
005ebd68  6c 00 8d e2                                      add r0, sp, #0x6c
005ebd6c  d8 f6 ff eb                                      bl #0x5e98d4
005ebd70  81 fd ff ea                                      b #0x5eb37c
; mapping-symbol data/literal pool
005ebd74  e4 7f 2f 00 38 76 2f 00                          .byte 0xe4, 0x7f, 0x2f, 0x00, 0x38, 0x76, 0x2f, 0x00

; FUNCTION 0x005ebd7c, declared_size=528, range_size=528, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager19makeColorKeyTextureERKN5boost13intrusive_ptrINS0_8ITextureEEENS_4core10position2dIiEE
; demangled: glitch::video::CTextureManager::makeColorKeyTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int>) const
; decoder-mode: arm
005ebd7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ebd80  00 30 91 e5                                      ldr r3, [r1]
005ebd84  f0 41 9f e5                                      ldr r4, [pc, #0x1f0]
005ebd88  08 d0 4d e2                                      sub sp, sp, #8
005ebd8c  00 00 53 e3                                      cmp r3, #0
005ebd90  01 50 a0 e1                                      mov r5, r1
005ebd94  02 60 a0 e1                                      mov r6, r2
005ebd98  04 40 8f e0                                      add r4, pc, r4
005ebd9c  09 00 00 0a                                      beq #0x5ebdc8
005ebda0  38 20 93 e5                                      ldr r2, [r3, #0x38]
005ebda4  52 22 e5 e7                                      ubfx r2, r2, #4, #6
005ebda8  08 00 52 e3                                      cmp r2, #8
005ebdac  07 00 00 0a                                      beq #0x5ebdd0
005ebdb0  0c 00 52 e3                                      cmp r2, #0xc
005ebdb4  05 00 00 0a                                      beq #0x5ebdd0
005ebdb8  c0 01 9f e5                                      ldr r0, [pc, #0x1c0]
005ebdbc  03 10 a0 e3                                      mov r1, #3
005ebdc0  00 00 8f e0                                      add r0, pc, r0
005ebdc4  b5 7b 00 eb                                      bl #0x60aca0
005ebdc8  08 d0 8d e2                                      add sp, sp, #8
005ebdcc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ebdd0  00 30 8d e5                                      str r3, [sp]
005ebdd4  04 20 93 e5                                      ldr r2, [r3, #4]
005ebdd8  01 20 82 e2                                      add r2, r2, #1
005ebddc  04 20 83 e5                                      str r2, [r3, #4]
005ebde0  00 00 95 e5                                      ldr r0, [r5]
005ebde4  00 00 50 e3                                      cmp r0, #0
005ebde8  03 00 00 0a                                      beq #0x5ebdfc
005ebdec  00 20 a0 e3                                      mov r2, #0
005ebdf0  04 10 a0 e3                                      mov r1, #4
005ebdf4  02 30 a0 e1                                      mov r3, r2
005ebdf8  b5 48 00 eb                                      bl #0x5fe0d4
005ebdfc  00 00 50 e3                                      cmp r0, #0
005ebe00  00 70 a0 e1                                      mov r7, r0
005ebe04  04 00 8d e5                                      str r0, [sp, #4]
005ebe08  54 00 00 0a                                      beq #0x5ebf60
005ebe0c  00 50 95 e5                                      ldr r5, [r5]
005ebe10  38 00 95 e5                                      ldr r0, [r5, #0x38]
005ebe14  50 02 e5 e7                                      ubfx r0, r0, #4, #6
005ebe18  08 00 50 e3                                      cmp r0, #8
005ebe1c  2b 00 00 0a                                      beq #0x5ebed0
005ebe20  20 10 95 e5                                      ldr r1, [r5, #0x20]
005ebe24  30 07 00 eb                                      bl #0x5edaec
005ebe28  00 c0 96 e5                                      ldr ip, [r6]
005ebe2c  20 10 95 e5                                      ldr r1, [r5, #0x20]
005ebe30  04 60 96 e5                                      ldr r6, [r6, #4]
005ebe34  48 31 9f e5                                      ldr r3, [pc, #0x148]
005ebe38  24 20 95 e5                                      ldr r2, [r5, #0x24]
005ebe3c  96 c1 21 e0                                      mla r1, r6, r1, ip
005ebe40  03 30 94 e7                                      ldr r3, [r4, r3]
005ebe44  01 11 97 e7                                      ldr r1, [r7, r1, lsl #2]
005ebe48  20 01 a0 e1                                      lsr r0, r0, #2
005ebe4c  f0 31 93 e5                                      ldr r3, [r3, #0x1f0]
005ebe50  00 00 52 e3                                      cmp r2, #0
005ebe54  00 81 a0 c1                                      lslgt r8, r0, #2
005ebe58  01 10 83 e1                                      orr r1, r3, r1
005ebe5c  00 60 a0 c3                                      movgt r6, #0
005ebe60  10 00 00 da                                      ble #0x5ebea8
005ebe64  00 00 50 e3                                      cmp r0, #0
005ebe68  07 40 a0 11                                      movne r4, r7
005ebe6c  00 c0 a0 13                                      movne ip, #0
005ebe70  08 00 00 0a                                      beq #0x5ebe98
005ebe74  00 20 94 e5                                      ldr r2, [r4]
005ebe78  01 c0 8c e2                                      add ip, ip, #1
005ebe7c  02 20 83 e1                                      orr r2, r3, r2
005ebe80  01 00 52 e1                                      cmp r2, r1
005ebe84  00 20 a0 03                                      moveq r2, #0
005ebe88  00 00 5c e1                                      cmp ip, r0
005ebe8c  04 20 84 e4                                      str r2, [r4], #4
005ebe90  f7 ff ff 1a                                      bne #0x5ebe74
005ebe94  24 20 95 e5                                      ldr r2, [r5, #0x24]
005ebe98  01 60 86 e2                                      add r6, r6, #1
005ebe9c  06 00 52 e1                                      cmp r2, r6
005ebea0  08 70 87 e0                                      add r7, r7, r8
005ebea4  ee ff ff ca                                      bgt #0x5ebe64
005ebea8  04 30 9d e5                                      ldr r3, [sp, #4]
005ebeac  00 00 53 e3                                      cmp r3, #0
005ebeb0  01 00 00 0a                                      beq #0x5ebebc
005ebeb4  00 00 9d e5                                      ldr r0, [sp]
005ebeb8  53 47 00 eb                                      bl #0x5fdc0c
005ebebc  00 00 9d e5                                      ldr r0, [sp]
005ebec0  00 00 50 e3                                      cmp r0, #0
005ebec4  bf ff ff 0a                                      beq #0x5ebdc8
005ebec8  ad c5 f4 eb                                      bl #0x31d584
005ebecc  bd ff ff ea                                      b #0x5ebdc8
005ebed0  20 10 95 e5                                      ldr r1, [r5, #0x20]
005ebed4  04 07 00 eb                                      bl #0x5edaec
005ebed8  08 10 96 e8                                      ldm r6, {r3, ip}
005ebedc  20 10 95 e5                                      ldr r1, [r5, #0x20]
005ebee0  24 20 95 e5                                      ldr r2, [r5, #0x24]
005ebee4  a0 00 a0 e1                                      lsr r0, r0, #1
005ebee8  9c 31 23 e0                                      mla r3, ip, r1, r3
005ebeec  00 00 52 e3                                      cmp r2, #0
005ebef0  83 30 a0 e1                                      lsl r3, r3, #1
005ebef4  b3 c0 97 e1                                      ldrh ip, [r7, r3]
005ebef8  80 60 a0 c1                                      lslgt r6, r0, #1
005ebefc  00 40 a0 c3                                      movgt r4, #0
005ebf00  8c c8 e0 e1                                      mvn ip, ip, lsl #17
005ebf04  ac c8 e0 e1                                      mvn ip, ip, lsr #17
005ebf08  7c c0 ff e6                                      uxth ip, ip
005ebf0c  e5 ff ff da                                      ble #0x5ebea8
005ebf10  00 00 50 e3                                      cmp r0, #0
005ebf14  07 10 a0 11                                      movne r1, r7
005ebf18  00 20 a0 13                                      movne r2, #0
005ebf1c  0a 00 00 0a                                      beq #0x5ebf4c
005ebf20  b0 30 d1 e1                                      ldrh r3, [r1]
005ebf24  01 20 82 e2                                      add r2, r2, #1
005ebf28  83 38 e0 e1                                      mvn r3, r3, lsl #17
005ebf2c  a3 38 e0 e1                                      mvn r3, r3, lsr #17
005ebf30  73 30 ff e6                                      uxth r3, r3
005ebf34  0c 00 53 e1                                      cmp r3, ip
005ebf38  00 30 a0 03                                      moveq r3, #0
005ebf3c  00 00 52 e1                                      cmp r2, r0
005ebf40  b2 30 c1 e0                                      strh r3, [r1], #2
005ebf44  f5 ff ff 1a                                      bne #0x5ebf20
005ebf48  24 20 95 e5                                      ldr r2, [r5, #0x24]
005ebf4c  01 40 84 e2                                      add r4, r4, #1
005ebf50  04 00 52 e1                                      cmp r2, r4
005ebf54  06 70 87 e0                                      add r7, r7, r6
005ebf58  ec ff ff ca                                      bgt #0x5ebf10
005ebf5c  d1 ff ff ea                                      b #0x5ebea8
005ebf60  20 00 9f e5                                      ldr r0, [pc, #0x20]
005ebf64  03 10 a0 e3                                      mov r1, #3
005ebf68  00 00 8f e0                                      add r0, pc, r0
005ebf6c  4b 7b 00 eb                                      bl #0x60aca0
005ebf70  0d 00 a0 e1                                      mov r0, sp
005ebf74  56 f6 ff eb                                      bl #0x5e98d4
005ebf78  92 ff ff ea                                      b #0x5ebdc8
; mapping-symbol data/literal pool
005ebf7c  f8 8c 3a 00 08 76 2f 00 34 1f 00 00 a8 74 2f 00  .byte 0xf8, 0x8c, 0x3a, 0x00, 0x08, 0x76, 0x2f, 0x00, 0x34, 0x1f, 0x00, 0x00, 0xa8, 0x74, 0x2f, 0x00

; FUNCTION 0x005ebf8c, declared_size=556, range_size=556, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager19makeColorKeyTextureERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_6SColorE
; demangled: glitch::video::CTextureManager::makeColorKeyTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::SColor) const
; decoder-mode: arm
005ebf8c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005ebf90  00 30 91 e5                                      ldr r3, [r1]
005ebf94  0c 42 9f e5                                      ldr r4, [pc, #0x20c]
005ebf98  18 d0 4d e2                                      sub sp, sp, #0x18
005ebf9c  00 00 53 e3                                      cmp r3, #0
005ebfa0  04 40 8f e0                                      add r4, pc, r4
005ebfa4  01 50 a0 e1                                      mov r5, r1
005ebfa8  04 20 8d e5                                      str r2, [sp, #4]
005ebfac  52 a8 e7 e7                                      ubfx sl, r2, #0x10, #8
005ebfb0  22 7c a0 e1                                      lsr r7, r2, #0x18
005ebfb4  72 60 ef e6                                      uxtb r6, r2
005ebfb8  52 84 e7 e7                                      ubfx r8, r2, #8, #8
005ebfbc  09 00 00 0a                                      beq #0x5ebfe8
005ebfc0  38 20 93 e5                                      ldr r2, [r3, #0x38]
005ebfc4  52 22 e5 e7                                      ubfx r2, r2, #4, #6
005ebfc8  08 00 52 e3                                      cmp r2, #8
005ebfcc  07 00 00 0a                                      beq #0x5ebff0
005ebfd0  0c 00 52 e3                                      cmp r2, #0xc
005ebfd4  05 00 00 0a                                      beq #0x5ebff0
005ebfd8  cc 01 9f e5                                      ldr r0, [pc, #0x1cc]
005ebfdc  03 10 a0 e3                                      mov r1, #3
005ebfe0  00 00 8f e0                                      add r0, pc, r0
005ebfe4  2d 7b 00 eb                                      bl #0x60aca0
005ebfe8  18 d0 8d e2                                      add sp, sp, #0x18
005ebfec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005ebff0  0c 30 8d e5                                      str r3, [sp, #0xc]
005ebff4  04 20 93 e5                                      ldr r2, [r3, #4]
005ebff8  01 20 82 e2                                      add r2, r2, #1
005ebffc  04 20 83 e5                                      str r2, [r3, #4]
005ec000  00 00 95 e5                                      ldr r0, [r5]
005ec004  00 00 50 e3                                      cmp r0, #0
005ec008  03 00 00 0a                                      beq #0x5ec01c
005ec00c  00 20 a0 e3                                      mov r2, #0
005ec010  04 10 a0 e3                                      mov r1, #4
005ec014  02 30 a0 e1                                      mov r3, r2
005ec018  2d 48 00 eb                                      bl #0x5fe0d4
005ec01c  00 00 50 e3                                      cmp r0, #0
005ec020  00 90 a0 e1                                      mov sb, r0
005ec024  10 00 8d e5                                      str r0, [sp, #0x10]
005ec028  57 00 00 0a                                      beq #0x5ec18c
005ec02c  00 50 95 e5                                      ldr r5, [r5]
005ec030  38 00 95 e5                                      ldr r0, [r5, #0x38]
005ec034  50 02 e5 e7                                      ubfx r0, r0, #4, #6
005ec038  08 00 50 e3                                      cmp r0, #8
005ec03c  2c 00 00 0a                                      beq #0x5ec0f4
005ec040  20 10 95 e5                                      ldr r1, [r5, #0x20]
005ec044  a8 06 00 eb                                      bl #0x5edaec
005ec048  60 21 9f e5                                      ldr r2, [pc, #0x160]
005ec04c  15 30 8d e2                                      add r3, sp, #0x15
005ec050  02 a0 c3 e5                                      strb sl, [r3, #2]
005ec054  02 10 94 e7                                      ldr r1, [r4, r2]
005ec058  14 70 cd e5                                      strb r7, [sp, #0x14]
005ec05c  15 60 cd e5                                      strb r6, [sp, #0x15]
005ec060  01 80 c3 e5                                      strb r8, [r3, #1]
005ec064  24 20 95 e5                                      ldr r2, [r5, #0x24]
005ec068  f0 31 91 e5                                      ldr r3, [r1, #0x1f0]
005ec06c  14 40 9d e5                                      ldr r4, [sp, #0x14]
005ec070  20 01 a0 e1                                      lsr r0, r0, #2
005ec074  00 00 52 e3                                      cmp r2, #0
005ec078  04 40 83 e1                                      orr r4, r3, r4
005ec07c  00 71 a0 c1                                      lslgt r7, r0, #2
005ec080  00 60 a0 c3                                      movgt r6, #0
005ec084  10 00 00 da                                      ble #0x5ec0cc
005ec088  00 00 50 e3                                      cmp r0, #0
005ec08c  09 c0 a0 11                                      movne ip, sb
005ec090  00 10 a0 13                                      movne r1, #0
005ec094  08 00 00 0a                                      beq #0x5ec0bc
005ec098  00 20 9c e5                                      ldr r2, [ip]
005ec09c  01 10 81 e2                                      add r1, r1, #1
005ec0a0  02 20 83 e1                                      orr r2, r3, r2
005ec0a4  04 00 52 e1                                      cmp r2, r4
005ec0a8  00 20 a0 03                                      moveq r2, #0
005ec0ac  00 00 51 e1                                      cmp r1, r0
005ec0b0  04 20 8c e4                                      str r2, [ip], #4
005ec0b4  f7 ff ff 1a                                      bne #0x5ec098
005ec0b8  24 20 95 e5                                      ldr r2, [r5, #0x24]
005ec0bc  01 60 86 e2                                      add r6, r6, #1
005ec0c0  06 00 52 e1                                      cmp r2, r6
005ec0c4  07 90 89 e0                                      add sb, sb, r7
005ec0c8  ee ff ff ca                                      bgt #0x5ec088
005ec0cc  10 30 9d e5                                      ldr r3, [sp, #0x10]
005ec0d0  00 00 53 e3                                      cmp r3, #0
005ec0d4  01 00 00 0a                                      beq #0x5ec0e0
005ec0d8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005ec0dc  ca 46 00 eb                                      bl #0x5fdc0c
005ec0e0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005ec0e4  00 00 50 e3                                      cmp r0, #0
005ec0e8  be ff ff 0a                                      beq #0x5ebfe8
005ec0ec  24 c5 f4 eb                                      bl #0x31d584
005ec0f0  bc ff ff ea                                      b #0x5ebfe8
005ec0f4  20 10 95 e5                                      ldr r1, [r5, #0x20]
005ec0f8  7b 06 00 eb                                      bl #0x5edaec
005ec0fc  f8 30 06 e2                                      and r3, r6, #0xf8
005ec100  80 70 07 e2                                      and r7, r7, #0x80
005ec104  83 33 a0 e1                                      lsl r3, r3, #7
005ec108  07 34 83 e1                                      orr r3, r3, r7, lsl #8
005ec10c  aa a1 83 e1                                      orr sl, r3, sl, lsr #3
005ec110  f8 30 08 e2                                      and r3, r8, #0xf8
005ec114  03 31 8a e1                                      orr r3, sl, r3, lsl #2
005ec118  24 20 95 e5                                      ldr r2, [r5, #0x24]
005ec11c  83 38 e0 e1                                      mvn r3, r3, lsl #17
005ec120  a0 00 a0 e1                                      lsr r0, r0, #1
005ec124  00 00 52 e3                                      cmp r2, #0
005ec128  a3 38 e0 e1                                      mvn r3, r3, lsr #17
005ec12c  73 c0 ff e6                                      uxth ip, r3
005ec130  80 60 a0 c1                                      lslgt r6, r0, #1
005ec134  00 40 a0 c3                                      movgt r4, #0
005ec138  e3 ff ff da                                      ble #0x5ec0cc
005ec13c  00 00 50 e3                                      cmp r0, #0
005ec140  09 10 a0 11                                      movne r1, sb
005ec144  00 20 a0 13                                      movne r2, #0
005ec148  0a 00 00 0a                                      beq #0x5ec178
005ec14c  b0 30 d1 e1                                      ldrh r3, [r1]
005ec150  01 20 82 e2                                      add r2, r2, #1
005ec154  83 38 e0 e1                                      mvn r3, r3, lsl #17
005ec158  a3 38 e0 e1                                      mvn r3, r3, lsr #17
005ec15c  73 30 ff e6                                      uxth r3, r3
005ec160  0c 00 53 e1                                      cmp r3, ip
005ec164  00 30 a0 03                                      moveq r3, #0
005ec168  00 00 52 e1                                      cmp r2, r0
005ec16c  b2 30 c1 e0                                      strh r3, [r1], #2
005ec170  f5 ff ff 1a                                      bne #0x5ec14c
005ec174  24 20 95 e5                                      ldr r2, [r5, #0x24]
005ec178  01 40 84 e2                                      add r4, r4, #1
005ec17c  04 00 52 e1                                      cmp r2, r4
005ec180  06 90 89 e0                                      add sb, sb, r6
005ec184  ec ff ff ca                                      bgt #0x5ec13c
005ec188  cf ff ff ea                                      b #0x5ec0cc
005ec18c  20 00 9f e5                                      ldr r0, [pc, #0x20]
005ec190  03 10 a0 e3                                      mov r1, #3
005ec194  00 00 8f e0                                      add r0, pc, r0
005ec198  c0 7a 00 eb                                      bl #0x60aca0
005ec19c  0c 00 8d e2                                      add r0, sp, #0xc
005ec1a0  cb f5 ff eb                                      bl #0x5e98d4
005ec1a4  8f ff ff ea                                      b #0x5ebfe8
; mapping-symbol data/literal pool
005ec1a8  f0 8a 3a 00 e8 73 2f 00 34 1f 00 00 7c 72 2f 00  .byte 0xf0, 0x8a, 0x3a, 0x00, 0xe8, 0x73, 0x2f, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x7c, 0x72, 0x2f, 0x00

; FUNCTION 0x005ec1b8, declared_size=680, range_size=680, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager14getPlaceHolderENS1_14E_PLACE_HOLDERENS0_14E_TEXTURE_TYPEE
; demangled: glitch::video::CTextureManager::getPlaceHolder(glitch::video::CTextureManager::E_PLACE_HOLDER, glitch::video::E_TEXTURE_TYPE)
; decoder-mode: arm
005ec1b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ec1bc  80 52 9f e5                                      ldr r5, [pc, #0x280]
005ec1c0  80 62 9f e5                                      ldr r6, [pc, #0x280]
005ec1c4  01 a1 a0 e1                                      lsl sl, r1, #2
005ec1c8  05 50 8f e0                                      add r5, pc, r5
005ec1cc  02 80 a0 e1                                      mov r8, r2
005ec1d0  06 30 95 e7                                      ldr r3, [r5, r6]
005ec1d4  02 20 8a e0                                      add r2, sl, r2
005ec1d8  12 20 82 e2                                      add r2, r2, #0x12
005ec1dc  02 41 90 e7                                      ldr r4, [r0, r2, lsl #2]
005ec1e0  00 30 93 e5                                      ldr r3, [r3]
005ec1e4  84 d0 4d e2                                      sub sp, sp, #0x84
005ec1e8  00 00 54 e3                                      cmp r4, #0
005ec1ec  00 70 a0 e1                                      mov r7, r0
005ec1f0  7c 30 8d e5                                      str r3, [sp, #0x7c]
005ec1f4  07 00 00 0a                                      beq #0x5ec218
005ec1f8  06 30 95 e7                                      ldr r3, [r5, r6]
005ec1fc  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
005ec200  04 00 a0 e1                                      mov r0, r4
005ec204  00 30 93 e5                                      ldr r3, [r3]
005ec208  03 00 52 e1                                      cmp r2, r3
005ec20c  8b 00 00 1a                                      bne #0x5ec440
005ec210  84 d0 8d e2                                      add sp, sp, #0x84
005ec214  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ec218  0c 10 8d e5                                      str r1, [sp, #0xc]
005ec21c  e7 7a 00 eb                                      bl #0x60adc0
005ec220  10 00 8d e5                                      str r0, [sp, #0x10]
005ec224  04 00 a0 e3                                      mov r0, #4
005ec228  d4 7a 00 eb                                      bl #0x60ad80
005ec22c  18 22 9f e5                                      ldr r2, [pc, #0x218]
005ec230  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005ec234  78 30 ff e6                                      uxth r3, r8
005ec238  ff 00 53 e3                                      cmp r3, #0xff
005ec23c  02 20 8f e0                                      add r2, pc, r2
005ec240  01 30 a0 e3                                      mov r3, #1
005ec244  0e 00 a0 e3                                      mov r0, #0xe
005ec248  30 30 8d e5                                      str r3, [sp, #0x30]
005ec24c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005ec250  01 91 92 e7                                      ldr sb, [r2, r1, lsl #2]
005ec254  20 40 8d e5                                      str r4, [sp, #0x20]
005ec258  24 40 8d e5                                      str r4, [sp, #0x24]
005ec25c  28 30 8d e5                                      str r3, [sp, #0x28]
005ec260  2c 30 8d e5                                      str r3, [sp, #0x2c]
005ec264  34 40 cd e5                                      strb r4, [sp, #0x34]
005ec268  35 40 cd e5                                      strb r4, [sp, #0x35]
005ec26c  36 40 cd e5                                      strb r4, [sp, #0x36]
005ec270  18 80 8d e5                                      str r8, [sp, #0x18]
005ec274  6e 00 00 0a                                      beq #0x5ec434
005ec278  04 00 a0 e1                                      mov r0, r4
005ec27c  f9 45 00 eb                                      bl #0x5fda68
005ec280  08 31 90 e7                                      ldr r3, [r0, r8, lsl #2]
005ec284  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
005ec288  3c 40 8d e2                                      add r4, sp, #0x3c
005ec28c  09 20 a0 e1                                      mov r2, sb
005ec290  01 10 8f e0                                      add r1, pc, r1
005ec294  04 00 a0 e1                                      mov r0, r4
005ec298  11 8a f4 eb                                      bl #0x30eae4
005ec29c  b0 01 9f e5                                      ldr r0, [pc, #0x1b0]
005ec2a0  00 30 a0 e3                                      mov r3, #0
005ec2a4  2d c0 a0 e3                                      mov ip, #0x2d
005ec2a8  d3 20 94 e1                                      ldrsb r2, [r4, r3]
005ec2ac  20 00 52 e3                                      cmp r2, #0x20
005ec2b0  03 c0 c4 07                                      strbeq ip, [r4, r3]
005ec2b4  05 00 00 0a                                      beq #0x5ec2d0
005ec2b8  ff 00 52 e3                                      cmp r2, #0xff
005ec2bc  00 10 95 97                                      ldrls r1, [r5, r0]
005ec2c0  00 10 91 95                                      ldrls r1, [r1]
005ec2c4  82 20 81 90                                      addls r2, r1, r2, lsl #1
005ec2c8  f2 20 d2 91                                      ldrshls r2, [r2, #2]
005ec2cc  03 20 c4 e7                                      strb r2, [r4, r3]
005ec2d0  01 30 83 e2                                      add r3, r3, #1
005ec2d4  3f 00 53 e3                                      cmp r3, #0x3f
005ec2d8  f2 ff ff 1a                                      bne #0x5ec2a8
005ec2dc  01 90 a0 e3                                      mov sb, #1
005ec2e0  04 20 a0 e1                                      mov r2, r4
005ec2e4  00 90 8d e5                                      str sb, [sp]
005ec2e8  38 00 8d e2                                      add r0, sp, #0x38
005ec2ec  07 10 a0 e1                                      mov r1, r7
005ec2f0  18 30 8d e2                                      add r3, sp, #0x18
005ec2f4  b6 b2 d7 e1                                      ldrh fp, [r7, #0x26]
005ec2f8  3e f9 ff eb                                      bl #0x5ea7f8
005ec2fc  38 40 9d e5                                      ldr r4, [sp, #0x38]
005ec300  00 00 54 e3                                      cmp r4, #0
005ec304  3e 00 00 0a                                      beq #0x5ec404
005ec308  b6 32 d7 e1                                      ldrh r3, [r7, #0x26]
005ec30c  0b 00 53 e1                                      cmp r3, fp
005ec310  3b 00 00 9a                                      bls #0x5ec404
005ec314  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
005ec318  38 b0 94 e5                                      ldr fp, [r4, #0x38]
005ec31c  00 20 a0 e3                                      mov r2, #0
005ec320  03 30 8f e0                                      add r3, pc, r3
005ec324  03 b0 0b e2                                      and fp, fp, #3
005ec328  0a 30 83 e0                                      add r3, r3, sl
005ec32c  02 00 5b e3                                      cmp fp, #2
005ec330  0c 30 83 e2                                      add r3, r3, #0xc
005ec334  14 70 8d e5                                      str r7, [sp, #0x14]
005ec338  06 b0 a0 03                                      moveq fp, #6
005ec33c  05 70 a0 e1                                      mov r7, r5
005ec340  09 b0 a0 11                                      movne fp, sb
005ec344  03 50 a0 e1                                      mov r5, r3
005ec348  16 00 00 ea                                      b #0x5ec3a8
005ec34c  04 30 94 e5                                      ldr r3, [r4, #4]
005ec350  01 30 83 e2                                      add r3, r3, #1
005ec354  04 30 84 e5                                      str r3, [r4, #4]
005ec358  38 00 9d e5                                      ldr r0, [sp, #0x38]
005ec35c  00 00 50 e3                                      cmp r0, #0
005ec360  12 00 00 0a                                      beq #0x5ec3b0
005ec364  04 10 a0 e3                                      mov r1, #4
005ec368  00 30 a0 e3                                      mov r3, #0
005ec36c  58 47 00 eb                                      bl #0x5fe0d4
005ec370  05 10 a0 e1                                      mov r1, r5
005ec374  04 20 a0 e3                                      mov r2, #4
005ec378  3a 89 f4 eb                                      bl #0x30e868
005ec37c  04 00 a0 e1                                      mov r0, r4
005ec380  21 46 00 eb                                      bl #0x5fdc0c
005ec384  00 00 54 e3                                      cmp r4, #0
005ec388  01 00 00 0a                                      beq #0x5ec394
005ec38c  04 00 a0 e1                                      mov r0, r4
005ec390  7b c4 f4 eb                                      bl #0x31d584
005ec394  09 00 5b e1                                      cmp fp, sb
005ec398  06 00 00 da                                      ble #0x5ec3b8
005ec39c  38 40 9d e5                                      ldr r4, [sp, #0x38]
005ec3a0  09 20 a0 e1                                      mov r2, sb
005ec3a4  01 90 89 e2                                      add sb, sb, #1
005ec3a8  00 00 54 e3                                      cmp r4, #0
005ec3ac  e6 ff ff 1a                                      bne #0x5ec34c
005ec3b0  00 00 a0 e3                                      mov r0, #0
005ec3b4  ed ff ff ea                                      b #0x5ec370
005ec3b8  38 30 9d e5                                      ldr r3, [sp, #0x38]
005ec3bc  07 50 a0 e1                                      mov r5, r7
005ec3c0  14 70 9d e5                                      ldr r7, [sp, #0x14]
005ec3c4  38 20 93 e5                                      ldr r2, [r3, #0x38]
005ec3c8  07 0a 12 e3                                      tst r2, #0x7000
005ec3cc  06 00 00 0a                                      beq #0x5ec3ec
005ec3d0  b0 14 d3 e1                                      ldrh r1, [r3, #0x40]
005ec3d4  07 2a c2 e3                                      bic r2, r2, #0x7000
005ec3d8  38 20 83 e5                                      str r2, [r3, #0x38]
005ec3dc  04 20 81 e3                                      orr r2, r1, #4
005ec3e0  b0 24 c3 e1                                      strh r2, [r3, #0x40]
005ec3e4  38 30 9d e5                                      ldr r3, [sp, #0x38]
005ec3e8  38 20 93 e5                                      ldr r2, [r3, #0x38]
005ec3ec  0e 09 12 e3                                      tst r2, #0x38000
005ec3f0  b0 14 d3 11                                      ldrhne r1, [r3, #0x40]
005ec3f4  0e 29 c2 13                                      bicne r2, r2, #0x38000
005ec3f8  38 20 83 15                                      strne r2, [r3, #0x38]
005ec3fc  08 20 81 13                                      orrne r2, r1, #8
005ec400  b0 24 c3 11                                      strhne r2, [r3, #0x40]
005ec404  10 00 9d e5                                      ldr r0, [sp, #0x10]
005ec408  5c 7a 00 eb                                      bl #0x60ad80
005ec40c  38 40 9d e5                                      ldr r4, [sp, #0x38]
005ec410  08 80 8a e0                                      add r8, sl, r8
005ec414  12 80 88 e2                                      add r8, r8, #0x12
005ec418  00 00 54 e3                                      cmp r4, #0
005ec41c  08 41 87 e7                                      str r4, [r7, r8, lsl #2]
005ec420  74 ff ff 0a                                      beq #0x5ec1f8
005ec424  04 00 a0 e1                                      mov r0, r4
005ec428  55 c4 f4 eb                                      bl #0x31d584
005ec42c  08 41 97 e7                                      ldr r4, [r7, r8, lsl #2]
005ec430  70 ff ff ea                                      b #0x5ec1f8
005ec434  20 30 9f e5                                      ldr r3, [pc, #0x20]
005ec438  03 30 8f e0                                      add r3, pc, r3
005ec43c  90 ff ff ea                                      b #0x5ec284
005ec440  b2 87 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005ec444  c8 88 3a 00 ac 40 00 00 24 b2 36 00 b8 71 2f 00  .byte 0xc8, 0x88, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x24, 0xb2, 0x36, 0x00, 0xb8, 0x71, 0x2f, 0x00
005ec454  e0 36 00 00 b0 a8 40 00 28 a0 2d 00              .byte 0xe0, 0x36, 0x00, 0x00, 0xb0, 0xa8, 0x40, 0x00, 0x28, 0xa0, 0x2d, 0x00

; FUNCTION 0x005ec460, declared_size=1604, range_size=1604, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager22createTextureFromImageEPKcRKN5boost13intrusive_ptrINS0_6CImageEEENS0_16E_TEXTURE_LAYOUTE
; demangled: glitch::video::CTextureManager::createTextureFromImage(char const*, boost::intrusive_ptr<glitch::video::CImage> const&, glitch::video::E_TEXTURE_LAYOUT)
; decoder-mode: arm
005ec460  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ec464  00 c0 93 e5                                      ldr ip, [r3]
005ec468  5c d0 4d e2                                      sub sp, sp, #0x5c
005ec46c  01 e0 a0 e3                                      mov lr, #1
005ec470  0c 40 a0 e3                                      mov r4, #0xc
005ec474  03 a0 a0 e1                                      mov sl, r3
005ec478  00 30 a0 e3                                      mov r3, #0
005ec47c  38 40 8d e5                                      str r4, [sp, #0x38]
005ec480  44 e0 8d e5                                      str lr, [sp, #0x44]
005ec484  48 e0 8d e5                                      str lr, [sp, #0x48]
005ec488  40 30 8d e5                                      str r3, [sp, #0x40]
005ec48c  50 30 cd e5                                      strb r3, [sp, #0x50]
005ec490  4c e0 8d e5                                      str lr, [sp, #0x4c]
005ec494  52 30 cd e5                                      strb r3, [sp, #0x52]
005ec498  34 30 8d e5                                      str r3, [sp, #0x34]
005ec49c  3c 30 8d e5                                      str r3, [sp, #0x3c]
005ec4a0  51 30 cd e5                                      strb r3, [sp, #0x51]
005ec4a4  20 30 9c e5                                      ldr r3, [ip, #0x20]
005ec4a8  28 10 8d e5                                      str r1, [sp, #0x28]
005ec4ac  2c 00 8d e5                                      str r0, [sp, #0x2c]
005ec4b0  38 30 8d e5                                      str r3, [sp, #0x38]
005ec4b4  10 30 9c e5                                      ldr r3, [ip, #0x10]
005ec4b8  02 50 a0 e1                                      mov r5, r2
005ec4bc  28 20 9d e5                                      ldr r2, [sp, #0x28]
005ec4c0  44 30 8d e5                                      str r3, [sp, #0x44]
005ec4c4  14 30 9c e5                                      ldr r3, [ip, #0x14]
005ec4c8  80 60 9d e5                                      ldr r6, [sp, #0x80]
005ec4cc  48 30 8d e5                                      str r3, [sp, #0x48]
005ec4d0  28 40 dc e5                                      ldrb r4, [ip, #0x28]
005ec4d4  00 00 54 e3                                      cmp r4, #0
005ec4d8  28 10 9d 15                                      ldrne r1, [sp, #0x28]
005ec4dc  74 30 91 05                                      ldreq r3, [r1, #0x74]
005ec4e0  74 30 91 15                                      ldrne r3, [r1, #0x74]
005ec4e4  28 10 92 e5                                      ldr r1, [r2, #0x28]
005ec4e8  53 43 e0 17                                      ubfxne r4, r3, #6, #1
005ec4ec  88 20 91 e5                                      ldr r2, [r1, #0x88]
005ec4f0  10 00 12 e3                                      tst r2, #0x10
005ec4f4  04 20 a0 01                                      moveq r2, r4
005ec4f8  01 20 a0 13                                      movne r2, #1
005ec4fc  20 00 13 e3                                      tst r3, #0x20
005ec500  03 30 a0 13                                      movne r3, #3
005ec504  50 20 cd e5                                      strb r2, [sp, #0x50]
005ec508  40 30 8d 15                                      strne r3, [sp, #0x40]
005ec50c  02 00 00 1a                                      bne #0x5ec51c
005ec510  10 00 13 e3                                      tst r3, #0x10
005ec514  01 30 a0 13                                      movne r3, #1
005ec518  40 30 8d 15                                      strne r3, [sp, #0x40]
005ec51c  01 00 56 e3                                      cmp r6, #1
005ec520  b8 00 00 0a                                      beq #0x5ec808
005ec524  00 00 56 e3                                      cmp r6, #0
005ec528  9e 00 00 1a                                      bne #0x5ec7a8
005ec52c  54 00 8d e2                                      add r0, sp, #0x54
005ec530  34 30 8d e2                                      add r3, sp, #0x34
005ec534  05 20 a0 e1                                      mov r2, r5
005ec538  2e f8 fe eb                                      bl #0x5aa5f8
005ec53c  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec540  00 00 53 e3                                      cmp r3, #0
005ec544  03 00 a0 e1                                      mov r0, r3
005ec548  ab 00 00 0a                                      beq #0x5ec7fc
005ec54c  44 20 9d e5                                      ldr r2, [sp, #0x44]
005ec550  00 00 52 e3                                      cmp r2, #0
005ec554  00 10 e0 03                                      mvneq r1, #0
005ec558  03 00 00 0a                                      beq #0x5ec56c
005ec55c  00 10 e0 e3                                      mvn r1, #0
005ec560  c2 20 b0 e1                                      asrs r2, r2, #1
005ec564  01 10 81 e2                                      add r1, r1, #1
005ec568  fc ff ff 1a                                      bne #0x5ec560
005ec56c  48 20 9d e5                                      ldr r2, [sp, #0x48]
005ec570  00 00 52 e3                                      cmp r2, #0
005ec574  00 c0 e0 03                                      mvneq ip, #0
005ec578  03 00 00 0a                                      beq #0x5ec58c
005ec57c  00 c0 e0 e3                                      mvn ip, #0
005ec580  c2 20 b0 e1                                      asrs r2, r2, #1
005ec584  01 c0 8c e2                                      add ip, ip, #1
005ec588  fc ff ff 1a                                      bne #0x5ec580
005ec58c  00 20 9a e5                                      ldr r2, [sl]
005ec590  01 00 5c e1                                      cmp ip, r1
005ec594  0c 10 a0 a1                                      movge r1, ip
005ec598  01 10 a0 b1                                      movlt r1, r1
005ec59c  24 e0 92 e5                                      ldr lr, [r2, #0x24]
005ec5a0  0e 00 51 e1                                      cmp r1, lr
005ec5a4  08 10 92 e5                                      ldr r1, [r2, #8]
005ec5a8  01 60 a0 13                                      movne r6, #1
005ec5ac  01 60 24 02                                      eoreq r6, r4, #1
005ec5b0  00 00 51 e3                                      cmp r1, #0
005ec5b4  24 10 8d e5                                      str r1, [sp, #0x24]
005ec5b8  1e 01 00 0a                                      beq #0x5eca38
005ec5bc  38 c0 93 e5                                      ldr ip, [r3, #0x38]
005ec5c0  20 10 92 e5                                      ldr r1, [r2, #0x20]
005ec5c4  5c 22 e5 e7                                      ubfx r2, ip, #4, #6
005ec5c8  01 00 52 e1                                      cmp r2, r1
005ec5cc  9f 00 00 0a                                      beq #0x5ec850
005ec5d0  00 00 56 e3                                      cmp r6, #0
005ec5d4  b8 00 00 0a                                      beq #0x5ec8bc
005ec5d8  30 30 90 e5                                      ldr r3, [r0, #0x30]
005ec5dc  00 20 93 e5                                      ldr r2, [r3]
005ec5e0  04 00 93 e5                                      ldr r0, [r3, #4]
005ec5e4  00 00 62 e0                                      rsb r0, r2, r0
005ec5e8  00 10 a0 e3                                      mov r1, #0
005ec5ec  ed 1e fd eb                                      bl #0x5341a8
005ec5f0  24 20 9d e5                                      ldr r2, [sp, #0x24]
005ec5f4  00 10 a0 e1                                      mov r1, r0
005ec5f8  06 30 a0 e1                                      mov r3, r6
005ec5fc  02 40 50 e0                                      subs r4, r0, r2
005ec600  01 40 a0 13                                      movne r4, #1
005ec604  04 20 a0 e1                                      mov r2, r4
005ec608  54 00 9d e5                                      ldr r0, [sp, #0x54]
005ec60c  58 46 00 eb                                      bl #0x5fdf74
005ec610  00 00 54 e3                                      cmp r4, #0
005ec614  de 00 00 0a                                      beq #0x5ec994
005ec618  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec61c  00 20 9a e5                                      ldr r2, [sl]
005ec620  38 00 93 e5                                      ldr r0, [r3, #0x38]
005ec624  20 70 92 e5                                      ldr r7, [r2, #0x20]
005ec628  03 40 a0 e1                                      mov r4, r3
005ec62c  50 02 e5 e7                                      ubfx r0, r0, #4, #6
005ec630  07 00 50 e1                                      cmp r0, r7
005ec634  ec 00 00 0a                                      beq #0x5ec9ec
005ec638  77 30 ff e6                                      uxth r3, r7
005ec63c  27 00 53 e3                                      cmp r3, #0x27
005ec640  e2 00 00 1a                                      bne #0x5ec9d0
005ec644  3c 44 9f e5                                      ldr r4, [pc, #0x43c]
005ec648  00 70 a0 e1                                      mov r7, r0
005ec64c  04 40 8f e0                                      add r4, pc, r4
005ec650  27 00 57 e3                                      cmp r7, #0x27
005ec654  d9 00 00 1a                                      bne #0x5ec9c0
005ec658  2c c4 9f e5                                      ldr ip, [pc, #0x42c]
005ec65c  0c c0 8f e0                                      add ip, pc, ip
005ec660  28 14 9f e5                                      ldr r1, [pc, #0x428]
005ec664  04 30 a0 e1                                      mov r3, r4
005ec668  05 20 a0 e1                                      mov r2, r5
005ec66c  01 10 8f e0                                      add r1, pc, r1
005ec670  02 00 a0 e3                                      mov r0, #2
005ec674  00 c0 8d e5                                      str ip, [sp]
005ec678  6d 7a 00 eb                                      bl #0x60b034
005ec67c  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec680  00 20 9a e5                                      ldr r2, [sl]
005ec684  03 40 a0 e1                                      mov r4, r3
005ec688  00 00 56 e3                                      cmp r6, #0
005ec68c  0c 90 92 e5                                      ldr sb, [r2, #0xc]
005ec690  24 70 93 e5                                      ldr r7, [r3, #0x24]
005ec694  20 60 93 e5                                      ldr r6, [r3, #0x20]
005ec698  99 00 00 0a                                      beq #0x5ec904
005ec69c  01 10 a0 e3                                      mov r1, #1
005ec6a0  1c 10 8d e5                                      str r1, [sp, #0x1c]
005ec6a4  00 50 a0 e3                                      mov r5, #0
005ec6a8  20 a0 8d e5                                      str sl, [sp, #0x20]
005ec6ac  38 00 00 ea                                      b #0x5ec794
005ec6b0  04 30 94 e5                                      ldr r3, [r4, #4]
005ec6b4  01 30 83 e2                                      add r3, r3, #1
005ec6b8  04 30 84 e5                                      str r3, [r4, #4]
005ec6bc  54 00 9d e5                                      ldr r0, [sp, #0x54]
005ec6c0  00 00 50 e3                                      cmp r0, #0
005ec6c4  34 00 00 0a                                      beq #0x5ec79c
005ec6c8  04 10 a0 e3                                      mov r1, #4
005ec6cc  00 20 a0 e3                                      mov r2, #0
005ec6d0  05 30 a0 e1                                      mov r3, r5
005ec6d4  7e 46 00 eb                                      bl #0x5fe0d4
005ec6d8  00 80 a0 e1                                      mov r8, r0
005ec6dc  54 00 9d e5                                      ldr r0, [sp, #0x54]
005ec6e0  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005ec6e4  00 00 55 e3                                      cmp r5, #0
005ec6e8  05 10 a0 e1                                      mov r1, r5
005ec6ec  00 30 9c e5                                      ldr r3, [ip]
005ec6f0  04 b0 19 15                                      ldrne fp, [sb, #-4]
005ec6f4  24 b0 9d 05                                      ldreq fp, [sp, #0x24]
005ec6f8  20 30 93 e5                                      ldr r3, [r3, #0x20]
005ec6fc  38 a0 90 e5                                      ldr sl, [r0, #0x38]
005ec700  18 30 8d e5                                      str r3, [sp, #0x18]
005ec704  7e f7 ff eb                                      bl #0x5ea504
005ec708  18 30 9d e5                                      ldr r3, [sp, #0x18]
005ec70c  5a a2 e5 e7                                      ubfx sl, sl, #4, #6
005ec710  04 00 8d e5                                      str r0, [sp, #4]
005ec714  00 20 a0 e3                                      mov r2, #0
005ec718  03 00 a0 e1                                      mov r0, r3
005ec71c  0b 10 a0 e1                                      mov r1, fp
005ec720  0a 30 a0 e1                                      mov r3, sl
005ec724  00 80 8d e5                                      str r8, [sp]
005ec728  08 60 8d e5                                      str r6, [sp, #8]
005ec72c  0c 70 8d e5                                      str r7, [sp, #0xc]
005ec730  10 20 8d e5                                      str r2, [sp, #0x10]
005ec734  9c 33 00 eb                                      bl #0x5f95ac
005ec738  00 00 50 e3                                      cmp r0, #0
005ec73c  87 00 00 0a                                      beq #0x5ec960
005ec740  c6 60 a0 e1                                      asr r6, r6, #1
005ec744  c7 70 a0 e1                                      asr r7, r7, #1
005ec748  01 00 56 e3                                      cmp r6, #1
005ec74c  01 60 a0 b3                                      movlt r6, #1
005ec750  01 00 57 e3                                      cmp r7, #1
005ec754  01 70 a0 b3                                      movlt r7, #1
005ec758  00 00 58 e3                                      cmp r8, #0
005ec75c  01 00 00 0a                                      beq #0x5ec768
005ec760  04 00 a0 e1                                      mov r0, r4
005ec764  28 45 00 eb                                      bl #0x5fdc0c
005ec768  00 00 54 e3                                      cmp r4, #0
005ec76c  01 00 00 0a                                      beq #0x5ec778
005ec770  04 00 a0 e1                                      mov r0, r4
005ec774  82 c3 f4 eb                                      bl #0x31d584
005ec778  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005ec77c  01 50 85 e2                                      add r5, r5, #1
005ec780  75 50 ef e6                                      uxtb r5, r5
005ec784  03 00 55 e1                                      cmp r5, r3
005ec788  04 90 89 e2                                      add sb, sb, #4
005ec78c  80 00 00 2a                                      bhs #0x5ec994
005ec790  54 40 9d e5                                      ldr r4, [sp, #0x54]
005ec794  00 00 54 e3                                      cmp r4, #0
005ec798  c4 ff ff 1a                                      bne #0x5ec6b0
005ec79c  00 00 a0 e3                                      mov r0, #0
005ec7a0  00 80 a0 e1                                      mov r8, r0
005ec7a4  cd ff ff ea                                      b #0x5ec6e0
005ec7a8  76 30 ff e6                                      uxth r3, r6
005ec7ac  ff 00 53 e3                                      cmp r3, #0xff
005ec7b0  23 00 00 0a                                      beq #0x5ec844
005ec7b4  00 00 a0 e3                                      mov r0, #0
005ec7b8  ae 44 00 eb                                      bl #0x5fda78
005ec7bc  06 31 90 e7                                      ldr r3, [r0, r6, lsl #2]
005ec7c0  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
005ec7c4  02 00 a0 e3                                      mov r0, #2
005ec7c8  05 20 a0 e1                                      mov r2, r5
005ec7cc  01 10 8f e0                                      add r1, pc, r1
005ec7d0  17 7a 00 eb                                      bl #0x60b034
005ec7d4  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005ec7d8  54 00 8d e2                                      add r0, sp, #0x54
005ec7dc  34 30 8d e2                                      add r3, sp, #0x34
005ec7e0  28 10 9c e5                                      ldr r1, [ip, #0x28]
005ec7e4  05 20 a0 e1                                      mov r2, r5
005ec7e8  82 f7 fe eb                                      bl #0x5aa5f8
005ec7ec  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec7f0  00 00 53 e3                                      cmp r3, #0
005ec7f4  03 00 a0 e1                                      mov r0, r3
005ec7f8  53 ff ff 1a                                      bne #0x5ec54c
005ec7fc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005ec800  00 30 82 e5                                      str r3, [r2]
005ec804  52 00 00 ea                                      b #0x5ec954
005ec808  28 30 dc e5                                      ldrb r3, [ip, #0x28]
005ec80c  00 00 53 e3                                      cmp r3, #0
005ec810  3c 60 8d 05                                      streq r6, [sp, #0x3c]
005ec814  44 ff ff 0a                                      beq #0x5ec52c
005ec818  00 00 a0 e3                                      mov r0, #0
005ec81c  95 44 00 eb                                      bl #0x5fda78
005ec820  70 12 9f e5                                      ldr r1, [pc, #0x270]
005ec824  04 30 90 e5                                      ldr r3, [r0, #4]
005ec828  05 20 a0 e1                                      mov r2, r5
005ec82c  01 10 8f e0                                      add r1, pc, r1
005ec830  02 00 a0 e3                                      mov r0, #2
005ec834  fe 79 00 eb                                      bl #0x60b034
005ec838  28 30 9d e5                                      ldr r3, [sp, #0x28]
005ec83c  28 10 93 e5                                      ldr r1, [r3, #0x28]
005ec840  39 ff ff ea                                      b #0x5ec52c
005ec844  50 32 9f e5                                      ldr r3, [pc, #0x250]
005ec848  03 30 8f e0                                      add r3, pc, r3
005ec84c  db ff ff ea                                      b #0x5ec7c0
005ec850  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005ec854  74 10 9c e5                                      ldr r1, [ip, #0x74]
005ec858  01 00 11 e3                                      tst r1, #1
005ec85c  5b ff ff 1a                                      bne #0x5ec5d0
005ec860  02 00 11 e3                                      tst r1, #2
005ec864  59 ff ff 0a                                      beq #0x5ec5d0
005ec868  20 10 93 e5                                      ldr r1, [r3, #0x20]
005ec86c  02 00 a0 e1                                      mov r0, r2
005ec870  9d 04 00 eb                                      bl #0x5edaec
005ec874  00 30 9a e5                                      ldr r3, [sl]
005ec878  18 30 93 e5                                      ldr r3, [r3, #0x18]
005ec87c  00 00 53 e1                                      cmp r3, r0
005ec880  54 00 9d 15                                      ldrne r0, [sp, #0x54]
005ec884  51 ff ff 1a                                      bne #0x5ec5d0
005ec888  54 00 9d e5                                      ldr r0, [sp, #0x54]
005ec88c  3e 30 d0 e5                                      ldrb r3, [r0, #0x3e]
005ec890  01 00 53 e3                                      cmp r3, #1
005ec894  67 00 00 9a                                      bls #0x5eca38
005ec898  00 00 56 e3                                      cmp r6, #0
005ec89c  65 00 00 1a                                      bne #0x5eca38
005ec8a0  10 ee ff eb                                      bl #0x5e80e8
005ec8a4  00 30 9a e5                                      ldr r3, [sl]
005ec8a8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
005ec8ac  03 00 50 e1                                      cmp r0, r3
005ec8b0  54 00 9d 05                                      ldreq r0, [sp, #0x54]
005ec8b4  5f 00 00 0a                                      beq #0x5eca38
005ec8b8  54 00 9d e5                                      ldr r0, [sp, #0x54]
005ec8bc  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ec8c0  3f 20 d0 e5                                      ldrb r2, [r0, #0x3f]
005ec8c4  03 30 03 e2                                      and r3, r3, #3
005ec8c8  02 00 53 e3                                      cmp r3, #2
005ec8cc  05 30 a0 03                                      moveq r3, #5
005ec8d0  00 30 a0 13                                      movne r3, #0
005ec8d4  02 00 12 e3                                      tst r2, #2
005ec8d8  30 10 90 15                                      ldrne r1, [r0, #0x30]
005ec8dc  30 20 90 05                                      ldreq r2, [r0, #0x30]
005ec8e0  3e 10 d0 05                                      ldrbeq r1, [r0, #0x3e]
005ec8e4  00 20 91 15                                      ldrne r2, [r1]
005ec8e8  04 10 91 15                                      ldrne r1, [r1, #4]
005ec8ec  01 21 92 07                                      ldreq r2, [r2, r1, lsl #2]
005ec8f0  01 20 62 10                                      rsbne r2, r2, r1
005ec8f4  7f 00 82 e2                                      add r0, r2, #0x7f
005ec8f8  7f 00 c0 e3                                      bic r0, r0, #0x7f
005ec8fc  90 23 20 e0                                      mla r0, r0, r3, r2
005ec900  38 ff ff ea                                      b #0x5ec5e8
005ec904  3e 20 d3 e5                                      ldrb r2, [r3, #0x3e]
005ec908  00 00 52 e3                                      cmp r2, #0
005ec90c  1c 20 8d e5                                      str r2, [sp, #0x1c]
005ec910  63 ff ff 1a                                      bne #0x5ec6a4
005ec914  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005ec918  74 20 9c e5                                      ldr r2, [ip, #0x74]
005ec91c  02 00 12 e3                                      tst r2, #2
005ec920  20 00 00 1a                                      bne #0x5ec9a8
005ec924  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005ec928  00 00 53 e3                                      cmp r3, #0
005ec92c  00 30 81 e5                                      str r3, [r1]
005ec930  03 00 00 0a                                      beq #0x5ec944
005ec934  04 20 93 e5                                      ldr r2, [r3, #4]
005ec938  01 20 82 e2                                      add r2, r2, #1
005ec93c  04 20 83 e5                                      str r2, [r3, #4]
005ec940  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec944  00 00 53 e3                                      cmp r3, #0
005ec948  01 00 00 0a                                      beq #0x5ec954
005ec94c  03 00 a0 e1                                      mov r0, r3
005ec950  0b c3 f4 eb                                      bl #0x31d584
005ec954  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005ec958  5c d0 8d e2                                      add sp, sp, #0x5c
005ec95c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ec960  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005ec964  00 20 a0 e3                                      mov r2, #0
005ec968  00 00 58 e3                                      cmp r8, #0
005ec96c  00 20 81 e5                                      str r2, [r1]
005ec970  01 00 00 0a                                      beq #0x5ec97c
005ec974  04 00 a0 e1                                      mov r0, r4
005ec978  a3 44 00 eb                                      bl #0x5fdc0c
005ec97c  00 00 54 e3                                      cmp r4, #0
005ec980  ee ff ff 0a                                      beq #0x5ec940
005ec984  04 00 a0 e1                                      mov r0, r4
005ec988  fd c2 f4 eb                                      bl #0x31d584
005ec98c  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec990  eb ff ff ea                                      b #0x5ec944
005ec994  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005ec998  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec99c  74 20 9c e5                                      ldr r2, [ip, #0x74]
005ec9a0  02 00 12 e3                                      tst r2, #2
005ec9a4  de ff ff 0a                                      beq #0x5ec924
005ec9a8  01 20 22 e2                                      eor r2, r2, #1
005ec9ac  03 00 a0 e1                                      mov r0, r3
005ec9b0  01 10 02 e2                                      and r1, r2, #1
005ec9b4  38 45 00 eb                                      bl #0x5fde9c
005ec9b8  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec9bc  d8 ff ff ea                                      b #0x5ec924
005ec9c0  00 00 a0 e3                                      mov r0, #0
005ec9c4  de 03 00 eb                                      bl #0x5ed944
005ec9c8  07 c1 90 e7                                      ldr ip, [r0, r7, lsl #2]
005ec9cc  23 ff ff ea                                      b #0x5ec660
005ec9d0  00 00 a0 e3                                      mov r0, #0
005ec9d4  da 03 00 eb                                      bl #0x5ed944
005ec9d8  54 30 9d e5                                      ldr r3, [sp, #0x54]
005ec9dc  07 41 90 e7                                      ldr r4, [r0, r7, lsl #2]
005ec9e0  38 70 93 e5                                      ldr r7, [r3, #0x38]
005ec9e4  57 72 e5 e7                                      ubfx r7, r7, #4, #6
005ec9e8  18 ff ff ea                                      b #0x5ec650
005ec9ec  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005ec9f0  74 10 9c e5                                      ldr r1, [ip, #0x74]
005ec9f4  01 00 11 e3                                      tst r1, #1
005ec9f8  22 ff ff 1a                                      bne #0x5ec688
005ec9fc  20 10 93 e5                                      ldr r1, [r3, #0x20]
005eca00  39 04 00 eb                                      bl #0x5edaec
005eca04  00 20 9a e5                                      ldr r2, [sl]
005eca08  18 30 92 e5                                      ldr r3, [r2, #0x18]
005eca0c  00 00 53 e1                                      cmp r3, r0
005eca10  0e 00 00 0a                                      beq #0x5eca50
005eca14  84 10 9f e5                                      ldr r1, [pc, #0x84]
005eca18  05 20 a0 e1                                      mov r2, r5
005eca1c  02 00 a0 e3                                      mov r0, #2
005eca20  01 10 8f e0                                      add r1, pc, r1
005eca24  82 79 00 eb                                      bl #0x60b034
005eca28  54 30 9d e5                                      ldr r3, [sp, #0x54]
005eca2c  00 20 9a e5                                      ldr r2, [sl]
005eca30  03 40 a0 e1                                      mov r4, r3
005eca34  13 ff ff ea                                      b #0x5ec688
005eca38  06 30 a0 e1                                      mov r3, r6
005eca3c  24 10 9d e5                                      ldr r1, [sp, #0x24]
005eca40  00 20 a0 e3                                      mov r2, #0
005eca44  4a 45 00 eb                                      bl #0x5fdf74
005eca48  54 30 9d e5                                      ldr r3, [sp, #0x54]
005eca4c  b0 ff ff ea                                      b #0x5ec914
005eca50  54 30 9d e5                                      ldr r3, [sp, #0x54]
005eca54  3e 10 d3 e5                                      ldrb r1, [r3, #0x3e]
005eca58  03 40 a0 e1                                      mov r4, r3
005eca5c  01 00 51 e3                                      cmp r1, #1
005eca60  08 ff ff 9a                                      bls #0x5ec688
005eca64  03 00 a0 e1                                      mov r0, r3
005eca68  9e ed ff eb                                      bl #0x5e80e8
005eca6c  00 20 9a e5                                      ldr r2, [sl]
005eca70  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
005eca74  03 00 50 e1                                      cmp r0, r3
005eca78  54 30 9d 05                                      ldreq r3, [sp, #0x54]
005eca7c  03 40 a0 01                                      moveq r4, r3
005eca80  e3 ff ff 1a                                      bne #0x5eca14
005eca84  ff fe ff ea                                      b #0x5ec688
; mapping-symbol data/literal pool
005eca88  14 9e 2d 00 04 9e 2d 00 bc 6e 2f 00 f4 6c 2f 00  .byte 0x14, 0x9e, 0x2d, 0x00, 0x04, 0x9e, 0x2d, 0x00, 0xbc, 0x6e, 0x2f, 0x00, 0xf4, 0x6c, 0x2f, 0x00
005eca98  24 6c 2f 00 18 9c 2d 00 50 6b 2f 00              .byte 0x24, 0x6c, 0x2f, 0x00, 0x18, 0x9c, 0x2d, 0x00, 0x50, 0x6b, 0x2f, 0x00

; FUNCTION 0x005ecaa4, declared_size=256, range_size=256, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager10addTextureEPKcRKN5boost13intrusive_ptrINS0_6CImageEEEbNS0_16E_TEXTURE_LAYOUTE
; demangled: glitch::video::CTextureManager::addTexture(char const*, boost::intrusive_ptr<glitch::video::CImage> const&, bool, glitch::video::E_TEXTURE_LAYOUT)
; decoder-mode: arm
005ecaa4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005ecaa8  00 c0 93 e5                                      ldr ip, [r3]
005ecaac  1c d0 4d e2                                      sub sp, sp, #0x1c
005ecab0  03 60 a0 e1                                      mov r6, r3
005ecab4  00 00 5c e3                                      cmp ip, #0
005ecab8  38 30 dd e5                                      ldrb r3, [sp, #0x38]
005ecabc  00 50 a0 e1                                      mov r5, r0
005ecac0  01 80 a0 e1                                      mov r8, r1
005ecac4  00 c0 80 05                                      streq ip, [r0]
005ecac8  15 00 00 0a                                      beq #0x5ecb24
005ecacc  00 c0 a0 e3                                      mov ip, #0
005ecad0  08 70 8d e2                                      add r7, sp, #8
005ecad4  14 c0 8d e5                                      str ip, [sp, #0x14]
005ecad8  07 00 a0 e1                                      mov r0, r7
005ecadc  14 c0 8d e2                                      add ip, sp, #0x14
005ecae0  00 c0 8d e5                                      str ip, [sp]
005ecae4  ef f5 ff eb                                      bl #0x5ea2a8
005ecae8  08 40 9d e5                                      ldr r4, [sp, #8]
005ecaec  00 00 54 e3                                      cmp r4, #0
005ecaf0  00 40 85 15                                      strne r4, [r5]
005ecaf4  0d 00 00 0a                                      beq #0x5ecb30
005ecaf8  04 30 94 e5                                      ldr r3, [r4, #4]
005ecafc  01 30 83 e2                                      add r3, r3, #1
005ecb00  04 30 84 e5                                      str r3, [r4, #4]
005ecb04  08 00 9d e5                                      ldr r0, [sp, #8]
005ecb08  00 00 50 e3                                      cmp r0, #0
005ecb0c  00 00 00 0a                                      beq #0x5ecb14
005ecb10  9b c2 f4 eb                                      bl #0x31d584
005ecb14  14 00 9d e5                                      ldr r0, [sp, #0x14]
005ecb18  00 00 50 e3                                      cmp r0, #0
005ecb1c  00 00 00 0a                                      beq #0x5ecb24
005ecb20  d8 1e fd eb                                      bl #0x534688
005ecb24  05 00 a0 e1                                      mov r0, r5
005ecb28  1c d0 8d e2                                      add sp, sp, #0x1c
005ecb2c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005ecb30  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005ecb34  10 a0 8d e2                                      add sl, sp, #0x10
005ecb38  06 30 a0 e1                                      mov r3, r6
005ecb3c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005ecb40  0a 00 a0 e1                                      mov r0, sl
005ecb44  08 10 a0 e1                                      mov r1, r8
005ecb48  00 c0 8d e5                                      str ip, [sp]
005ecb4c  43 fe ff eb                                      bl #0x5ec460
005ecb50  0a 10 a0 e1                                      mov r1, sl
005ecb54  07 00 a0 e1                                      mov r0, r7
005ecb58  a6 60 f6 eb                                      bl #0x384df8
005ecb5c  0a 00 a0 e1                                      mov r0, sl
005ecb60  31 aa f8 eb                                      bl #0x41742c
005ecb64  08 00 9d e5                                      ldr r0, [sp, #8]
005ecb68  00 00 50 e3                                      cmp r0, #0
005ecb6c  00 00 85 05                                      streq r0, [r5]
005ecb70  e7 ff ff 0a                                      beq #0x5ecb14
005ecb74  00 20 96 e5                                      ldr r2, [r6]
005ecb78  04 30 a0 e1                                      mov r3, r4
005ecb7c  08 00 a0 e1                                      mov r0, r8
005ecb80  07 10 a0 e1                                      mov r1, r7
005ecb84  20 20 92 e5                                      ldr r2, [r2, #0x20]
005ecb88  f5 f6 ff eb                                      bl #0x5ea764
005ecb8c  08 00 9d e5                                      ldr r0, [sp, #8]
005ecb90  00 00 50 e3                                      cmp r0, #0
005ecb94  00 00 85 e5                                      str r0, [r5]
005ecb98  00 40 a0 e1                                      mov r4, r0
005ecb9c  d9 ff ff 0a                                      beq #0x5ecb08
005ecba0  d4 ff ff ea                                      b #0x5ecaf8

; FUNCTION 0x005ecba4, declared_size=912, range_size=912, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb
; demangled: glitch::video::CTextureManager::loadTextureFromFile(glitch::io::IReadFile*, char const*, glitch::video::E_PIXEL_FORMAT&, bool)
; decoder-mode: arm
005ecba4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ecba8  74 c0 91 e5                                      ldr ip, [r1, #0x74]
005ecbac  3c d0 4d e2                                      sub sp, sp, #0x3c
005ecbb0  00 40 a0 e3                                      mov r4, #0
005ecbb4  01 c0 8c e3                                      orr ip, ip, #1
005ecbb8  74 c0 81 e5                                      str ip, [r1, #0x74]
005ecbbc  00 60 a0 e1                                      mov r6, r0
005ecbc0  30 00 8d e2                                      add r0, sp, #0x30
005ecbc4  03 80 a0 e1                                      mov r8, r3
005ecbc8  01 50 a0 e1                                      mov r5, r1
005ecbcc  34 40 8d e5                                      str r4, [sp, #0x34]
005ecbd0  02 70 a0 e1                                      mov r7, r2
005ecbd4  60 b0 9d e5                                      ldr fp, [sp, #0x60]
005ecbd8  59 ed ff eb                                      bl #0x5e8144
005ecbdc  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecbe0  04 00 53 e1                                      cmp r3, r4
005ecbe4  81 00 00 0a                                      beq #0x5ecdf0
005ecbe8  03 00 a0 e1                                      mov r0, r3
005ecbec  00 30 93 e5                                      ldr r3, [r3]
005ecbf0  0f e0 a0 e1                                      mov lr, pc
005ecbf4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005ecbf8  00 a0 50 e2                                      subs sl, r0, #0
005ecbfc  5e 00 00 0a                                      beq #0x5ecd7c
005ecc00  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecc04  01 20 a0 e3                                      mov r2, #1
005ecc08  0c 10 a0 e3                                      mov r1, #0xc
005ecc0c  0c 10 8d e5                                      str r1, [sp, #0xc]
005ecc10  20 20 8d e5                                      str r2, [sp, #0x20]
005ecc14  26 40 cd e5                                      strb r4, [sp, #0x26]
005ecc18  08 40 8d e5                                      str r4, [sp, #8]
005ecc1c  10 40 8d e5                                      str r4, [sp, #0x10]
005ecc20  14 40 8d e5                                      str r4, [sp, #0x14]
005ecc24  18 20 8d e5                                      str r2, [sp, #0x18]
005ecc28  1c 20 8d e5                                      str r2, [sp, #0x1c]
005ecc2c  24 40 cd e5                                      strb r4, [sp, #0x24]
005ecc30  25 40 cd e5                                      strb r4, [sp, #0x25]
005ecc34  08 40 8d e2                                      add r4, sp, #8
005ecc38  03 00 a0 e1                                      mov r0, r3
005ecc3c  07 10 a0 e1                                      mov r1, r7
005ecc40  00 30 93 e5                                      ldr r3, [r3]
005ecc44  04 20 a0 e1                                      mov r2, r4
005ecc48  0f e0 a0 e1                                      mov lr, pc
005ecc4c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005ecc50  00 a0 50 e2                                      subs sl, r0, #0
005ecc54  96 00 00 0a                                      beq #0x5eceb4
005ecc58  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ecc5c  24 a0 dd e5                                      ldrb sl, [sp, #0x24]
005ecc60  00 30 8b e5                                      str r3, [fp]
005ecc64  28 10 95 e5                                      ldr r1, [r5, #0x28]
005ecc68  00 00 5a e3                                      cmp sl, #0
005ecc6c  74 30 95 15                                      ldrne r3, [r5, #0x74]
005ecc70  88 20 91 e5                                      ldr r2, [r1, #0x88]
005ecc74  74 30 95 05                                      ldreq r3, [r5, #0x74]
005ecc78  53 93 e0 17                                      ubfxne sb, r3, #6, #1
005ecc7c  0a 90 a0 01                                      moveq sb, sl
005ecc80  10 00 12 e3                                      tst r2, #0x10
005ecc84  09 20 a0 01                                      moveq r2, sb
005ecc88  01 20 a0 13                                      movne r2, #1
005ecc8c  20 00 13 e3                                      tst r3, #0x20
005ecc90  03 30 a0 13                                      movne r3, #3
005ecc94  24 20 cd e5                                      strb r2, [sp, #0x24]
005ecc98  14 30 8d 15                                      strne r3, [sp, #0x14]
005ecc9c  64 00 00 0a                                      beq #0x5ece34
005ecca0  08 20 a0 e1                                      mov r2, r8
005ecca4  2c 00 8d e2                                      add r0, sp, #0x2c
005ecca8  04 30 a0 e1                                      mov r3, r4
005eccac  51 f6 fe eb                                      bl #0x5aa5f8
005eccb0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005eccb4  00 00 53 e3                                      cmp r3, #0
005eccb8  04 20 93 15                                      ldrne r2, [r3, #4]
005eccbc  01 20 82 12                                      addne r2, r2, #1
005eccc0  04 20 83 15                                      strne r2, [r3, #4]
005eccc4  34 00 9d e5                                      ldr r0, [sp, #0x34]
005eccc8  34 30 8d e5                                      str r3, [sp, #0x34]
005ecccc  00 00 50 e3                                      cmp r0, #0
005eccd0  00 00 00 0a                                      beq #0x5eccd8
005eccd4  2a c2 f4 eb                                      bl #0x31d584
005eccd8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005eccdc  00 00 50 e3                                      cmp r0, #0
005ecce0  00 00 00 0a                                      beq #0x5ecce8
005ecce4  26 c2 f4 eb                                      bl #0x31d584
005ecce8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005eccec  24 a0 cd e5                                      strb sl, [sp, #0x24]
005eccf0  00 00 50 e3                                      cmp r0, #0
005eccf4  00 00 86 05                                      streq r0, [r6]
005eccf8  42 00 00 0a                                      beq #0x5ece08
005eccfc  01 30 29 e2                                      eor r3, sb, #1
005ecd00  00 10 a0 e3                                      mov r1, #0
005ecd04  01 20 a0 e3                                      mov r2, #1
005ecd08  99 44 00 eb                                      bl #0x5fdf74
005ecd0c  28 80 95 e5                                      ldr r8, [r5, #0x28]
005ecd10  9c 30 98 e5                                      ldr r3, [r8, #0x9c]
005ecd14  02 0a 13 e3                                      tst r3, #0x2000
005ecd18  49 00 00 1a                                      bne #0x5ece44
005ecd1c  30 20 9d e5                                      ldr r2, [sp, #0x30]
005ecd20  04 30 a0 e1                                      mov r3, r4
005ecd24  07 10 a0 e1                                      mov r1, r7
005ecd28  02 00 a0 e1                                      mov r0, r2
005ecd2c  00 c0 92 e5                                      ldr ip, [r2]
005ecd30  34 20 8d e2                                      add r2, sp, #0x34
005ecd34  0f e0 a0 e1                                      mov lr, pc
005ecd38  20 f0 9c e5                                      ldr pc, [ip, #0x20]
005ecd3c  00 40 50 e2                                      subs r4, r0, #0
005ecd40  6e 00 00 0a                                      beq #0x5ecf00
005ecd44  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecd48  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005ecd4c  08 00 13 e3                                      tst r3, #8
005ecd50  62 00 00 0a                                      beq #0x5ecee0
005ecd54  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005ecd58  00 00 53 e3                                      cmp r3, #0
005ecd5c  24 00 00 0a                                      beq #0x5ecdf4
005ecd60  74 30 95 e5                                      ldr r3, [r5, #0x74]
005ecd64  01 00 13 e3                                      tst r3, #1
005ecd68  21 00 00 1a                                      bne #0x5ecdf4
005ecd6c  01 10 a0 e3                                      mov r1, #1
005ecd70  49 44 00 eb                                      bl #0x5fde9c
005ecd74  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecd78  1d 00 00 ea                                      b #0x5ecdf4
005ecd7c  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecd80  08 90 8d e2                                      add sb, sp, #8
005ecd84  07 20 a0 e1                                      mov r2, r7
005ecd88  03 10 a0 e1                                      mov r1, r3
005ecd8c  09 00 a0 e1                                      mov r0, sb
005ecd90  00 30 93 e5                                      ldr r3, [r3]
005ecd94  0f e0 a0 e1                                      mov lr, pc
005ecd98  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005ecd9c  08 30 9d e5                                      ldr r3, [sp, #8]
005ecda0  00 00 53 e3                                      cmp r3, #0
005ecda4  11 00 00 0a                                      beq #0x5ecdf0
005ecda8  20 30 93 e5                                      ldr r3, [r3, #0x20]
005ecdac  28 40 8d e2                                      add r4, sp, #0x28
005ecdb0  08 20 a0 e1                                      mov r2, r8
005ecdb4  00 30 8b e5                                      str r3, [fp]
005ecdb8  05 10 a0 e1                                      mov r1, r5
005ecdbc  09 30 a0 e1                                      mov r3, sb
005ecdc0  04 00 a0 e1                                      mov r0, r4
005ecdc4  00 a0 8d e5                                      str sl, [sp]
005ecdc8  a4 fd ff eb                                      bl #0x5ec460
005ecdcc  04 10 a0 e1                                      mov r1, r4
005ecdd0  34 00 8d e2                                      add r0, sp, #0x34
005ecdd4  07 60 f6 eb                                      bl #0x384df8
005ecdd8  04 00 a0 e1                                      mov r0, r4
005ecddc  92 a9 f8 eb                                      bl #0x41742c
005ecde0  08 00 9d e5                                      ldr r0, [sp, #8]
005ecde4  00 00 50 e3                                      cmp r0, #0
005ecde8  00 00 00 0a                                      beq #0x5ecdf0
005ecdec  e4 c1 f4 eb                                      bl #0x31d584
005ecdf0  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecdf4  00 00 50 e3                                      cmp r0, #0
005ecdf8  00 00 86 e5                                      str r0, [r6]
005ecdfc  04 30 90 15                                      ldrne r3, [r0, #4]
005ece00  01 30 83 12                                      addne r3, r3, #1
005ece04  04 30 80 15                                      strne r3, [r0, #4]
005ece08  30 00 9d e5                                      ldr r0, [sp, #0x30]
005ece0c  00 00 50 e3                                      cmp r0, #0
005ece10  00 00 00 0a                                      beq #0x5ece18
005ece14  da c1 f4 eb                                      bl #0x31d584
005ece18  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ece1c  00 00 50 e3                                      cmp r0, #0
005ece20  00 00 00 0a                                      beq #0x5ece28
005ece24  d6 c1 f4 eb                                      bl #0x31d584
005ece28  06 00 a0 e1                                      mov r0, r6
005ece2c  3c d0 8d e2                                      add sp, sp, #0x3c
005ece30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ece34  10 00 13 e3                                      tst r3, #0x10
005ece38  01 30 a0 13                                      movne r3, #1
005ece3c  14 30 8d 15                                      strne r3, [sp, #0x14]
005ece40  96 ff ff ea                                      b #0x5ecca0
005ece44  74 20 95 e5                                      ldr r2, [r5, #0x74]
005ece48  02 00 12 e3                                      tst r2, #2
005ece4c  b2 ff ff 0a                                      beq #0x5ecd1c
005ece50  01 20 12 e2                                      ands r2, r2, #1
005ece54  b0 ff ff 1a                                      bne #0x5ecd1c
005ece58  88 a0 98 e5                                      ldr sl, [r8, #0x88]
005ece5c  02 aa 1a e2                                      ands sl, sl, #0x2000
005ece60  05 00 00 0a                                      beq #0x5ece7c
005ece64  00 30 98 e5                                      ldr r3, [r8]
005ece68  08 00 a0 e1                                      mov r0, r8
005ece6c  02 1a a0 e3                                      mov r1, #0x2000
005ece70  0f e0 a0 e1                                      mov lr, pc
005ece74  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005ece78  01 a0 a0 e3                                      mov sl, #1
005ece7c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ece80  00 10 a0 e3                                      mov r1, #0
005ece84  04 44 00 eb                                      bl #0x5fde9c
005ece88  88 30 98 e5                                      ldr r3, [r8, #0x88]
005ece8c  d3 36 e0 e7                                      ubfx r3, r3, #0xd, #1
005ece90  03 00 5a e1                                      cmp sl, r3
005ece94  a0 ff ff 0a                                      beq #0x5ecd1c
005ece98  08 00 a0 e1                                      mov r0, r8
005ece9c  0a 20 a0 e1                                      mov r2, sl
005ecea0  00 30 98 e5                                      ldr r3, [r8]
005ecea4  02 1a a0 e3                                      mov r1, #0x2000
005ecea8  0f e0 a0 e1                                      mov lr, pc
005eceac  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005eceb0  99 ff ff ea                                      b #0x5ecd1c
005eceb4  00 30 97 e5                                      ldr r3, [r7]
005eceb8  07 00 a0 e1                                      mov r0, r7
005ecebc  0f e0 a0 e1                                      mov lr, pc
005ecec0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ecec4  60 10 9f e5                                      ldr r1, [pc, #0x60]
005ecec8  00 20 a0 e1                                      mov r2, r0
005ececc  03 00 a0 e3                                      mov r0, #3
005eced0  01 10 8f e0                                      add r1, pc, r1
005eced4  56 78 00 eb                                      bl #0x60b034
005eced8  00 a0 86 e5                                      str sl, [r6]
005ecedc  c9 ff ff ea                                      b #0x5ece08
005ecee0  74 30 95 e5                                      ldr r3, [r5, #0x74]
005ecee4  02 00 13 e3                                      tst r3, #2
005ecee8  c1 ff ff 0a                                      beq #0x5ecdf4
005eceec  01 30 23 e2                                      eor r3, r3, #1
005ecef0  01 10 03 e2                                      and r1, r3, #1
005ecef4  e8 43 00 eb                                      bl #0x5fde9c
005ecef8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecefc  bc ff ff ea                                      b #0x5ecdf4
005ecf00  00 30 97 e5                                      ldr r3, [r7]
005ecf04  07 00 a0 e1                                      mov r0, r7
005ecf08  0f e0 a0 e1                                      mov lr, pc
005ecf0c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ecf10  18 10 9f e5                                      ldr r1, [pc, #0x18]
005ecf14  00 20 a0 e1                                      mov r2, r0
005ecf18  03 00 a0 e3                                      mov r0, #3
005ecf1c  01 10 8f e0                                      add r1, pc, r1
005ecf20  43 78 00 eb                                      bl #0x60b034
005ecf24  00 40 86 e5                                      str r4, [r6]
005ecf28  b6 ff ff ea                                      b #0x5ece08
; mapping-symbol data/literal pool
005ecf2c  c0 66 2f 00 94 66 2f 00                          .byte 0xc0, 0x66, 0x2f, 0x00, 0x94, 0x66, 0x2f, 0x00

; FUNCTION 0x005ecf34, declared_size=400, range_size=400, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager18getTextureInternalEPNS_2io9IReadFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEb
; demangled: glitch::video::CTextureManager::getTextureInternal(glitch::io::IReadFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, bool)
; decoder-mode: arm
005ecf34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005ecf38  02 40 a0 e1                                      mov r4, r2
005ecf3c  74 21 9f e5                                      ldr r2, [pc, #0x174]
005ecf40  38 d0 4d e2                                      sub sp, sp, #0x38
005ecf44  00 60 a0 e1                                      mov r6, r0
005ecf48  02 20 9f e7                                      ldr r2, [pc, r2]
005ecf4c  34 20 8d e5                                      str r2, [sp, #0x34]
005ecf50  01 70 a0 e1                                      mov r7, r1
005ecf54  04 20 a0 e3                                      mov r2, #4
005ecf58  00 c0 94 e5                                      ldr ip, [r4]
005ecf5c  04 00 a0 e1                                      mov r0, r4
005ecf60  30 10 8d e2                                      add r1, sp, #0x30
005ecf64  03 80 a0 e1                                      mov r8, r3
005ecf68  58 a0 dd e5                                      ldrb sl, [sp, #0x58]
005ecf6c  0f e0 a0 e1                                      mov lr, pc
005ecf70  0c f0 9c e5                                      ldr pc, [ip, #0xc]
005ecf74  34 30 9d e5                                      ldr r3, [sp, #0x34]
005ecf78  30 20 9d e5                                      ldr r2, [sp, #0x30]
005ecf7c  03 00 52 e1                                      cmp r2, r3
005ecf80  2b 00 00 0a                                      beq #0x5ed034
005ecf84  00 10 a0 e3                                      mov r1, #0
005ecf88  00 30 94 e5                                      ldr r3, [r4]
005ecf8c  04 00 a0 e1                                      mov r0, r4
005ecf90  01 20 a0 e1                                      mov r2, r1
005ecf94  0f e0 a0 e1                                      mov lr, pc
005ecf98  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005ecf9c  04 50 a0 e1                                      mov r5, r4
005ecfa0  14 30 98 e5                                      ldr r3, [r8, #0x14]
005ecfa4  2c c0 8d e2                                      add ip, sp, #0x2c
005ecfa8  06 00 a0 e1                                      mov r0, r6
005ecfac  07 10 a0 e1                                      mov r1, r7
005ecfb0  05 20 a0 e1                                      mov r2, r5
005ecfb4  00 c0 8d e5                                      str ip, [sp]
005ecfb8  04 a0 8d e5                                      str sl, [sp, #4]
005ecfbc  f8 fe ff eb                                      bl #0x5ecba4
005ecfc0  00 30 96 e5                                      ldr r3, [r6]
005ecfc4  00 00 53 e3                                      cmp r3, #0
005ecfc8  30 00 00 0a                                      beq #0x5ed090
005ecfcc  00 30 94 e5                                      ldr r3, [r4]
005ecfd0  04 00 a0 e1                                      mov r0, r4
005ecfd4  0f e0 a0 e1                                      mov lr, pc
005ecfd8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ecfdc  00 10 a0 e1                                      mov r1, r0
005ecfe0  d4 00 9f e5                                      ldr r0, [pc, #0xd4]
005ecfe4  01 20 a0 e3                                      mov r2, #1
005ecfe8  00 00 8f e0                                      add r0, pc, r0
005ecfec  3d 77 00 eb                                      bl #0x60ace8
005ecff0  00 30 95 e5                                      ldr r3, [r5]
005ecff4  05 00 a0 e1                                      mov r0, r5
005ecff8  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005ecffc  0f e0 a0 e1                                      mov lr, pc
005ed000  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ed004  06 10 a0 e1                                      mov r1, r6
005ed008  00 30 a0 e1                                      mov r3, r0
005ed00c  08 20 a0 e1                                      mov r2, r8
005ed010  07 00 a0 e1                                      mov r0, r7
005ed014  d2 f5 ff eb                                      bl #0x5ea764
005ed018  04 00 55 e1                                      cmp r5, r4
005ed01c  01 00 00 0a                                      beq #0x5ed028
005ed020  05 00 a0 e1                                      mov r0, r5
005ed024  56 c1 f4 eb                                      bl #0x31d584
005ed028  06 00 a0 e1                                      mov r0, r6
005ed02c  38 d0 8d e2                                      add sp, sp, #0x38
005ed030  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005ed034  00 10 a0 e3                                      mov r1, #0
005ed038  01 20 a0 e1                                      mov r2, r1
005ed03c  00 30 94 e5                                      ldr r3, [r4]
005ed040  04 00 a0 e1                                      mov r0, r4
005ed044  0f e0 a0 e1                                      mov lr, pc
005ed048  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005ed04c  0c 90 8d e2                                      add sb, sp, #0xc
005ed050  01 20 a0 e3                                      mov r2, #1
005ed054  02 30 a0 e1                                      mov r3, r2
005ed058  04 10 a0 e1                                      mov r1, r4
005ed05c  09 00 a0 e1                                      mov r0, sb
005ed060  cf 2b fe eb                                      bl #0x577fa4
005ed064  00 30 94 e5                                      ldr r3, [r4]
005ed068  04 00 a0 e1                                      mov r0, r4
005ed06c  0f e0 a0 e1                                      mov lr, pc
005ed070  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ed074  00 10 a0 e1                                      mov r1, r0
005ed078  09 00 a0 e1                                      mov r0, sb
005ed07c  68 2d fe eb                                      bl #0x578624
005ed080  00 50 a0 e1                                      mov r5, r0
005ed084  09 00 a0 e1                                      mov r0, sb
005ed088  fe 28 fe eb                                      bl #0x577488
005ed08c  c3 ff ff ea                                      b #0x5ecfa0
005ed090  00 30 94 e5                                      ldr r3, [r4]
005ed094  04 00 a0 e1                                      mov r0, r4
005ed098  0f e0 a0 e1                                      mov lr, pc
005ed09c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ed0a0  00 10 a0 e1                                      mov r1, r0
005ed0a4  14 00 9f e5                                      ldr r0, [pc, #0x14]
005ed0a8  03 20 a0 e3                                      mov r2, #3
005ed0ac  00 00 8f e0                                      add r0, pc, r0
005ed0b0  0c 77 00 eb                                      bl #0x60ace8
005ed0b4  d7 ff ff ea                                      b #0x5ed018
; mapping-symbol data/literal pool
005ed0b8  8c 63 2f 00 e8 65 2f 00 34 65 2f 00              .byte 0x8c, 0x63, 0x2f, 0x00, 0xe8, 0x65, 0x2f, 0x00, 0x34, 0x65, 0x2f, 0x00

; FUNCTION 0x005ed0c4, declared_size=332, range_size=332, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager10getTextureEPNS_2io9IReadFileEPKcb
; demangled: glitch::video::CTextureManager::getTexture(glitch::io::IReadFile*, char const*, bool)
; decoder-mode: arm
005ed0c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ed0c8  38 41 9f e5                                      ldr r4, [pc, #0x138]
005ed0cc  38 61 9f e5                                      ldr r6, [pc, #0x138]
005ed0d0  00 50 a0 e1                                      mov r5, r0
005ed0d4  04 40 8f e0                                      add r4, pc, r4
005ed0d8  06 00 94 e7                                      ldr r0, [r4, r6]
005ed0dc  00 90 52 e2                                      subs sb, r2, #0
005ed0e0  34 d0 4d e2                                      sub sp, sp, #0x34
005ed0e4  00 20 90 e5                                      ldr r2, [r0]
005ed0e8  00 00 a0 e3                                      mov r0, #0
005ed0ec  00 00 85 e5                                      str r0, [r5]
005ed0f0  01 a0 a0 e1                                      mov sl, r1
005ed0f4  2c 20 8d e5                                      str r2, [sp, #0x2c]
005ed0f8  58 b0 dd e5                                      ldrb fp, [sp, #0x58]
005ed0fc  21 00 00 0a                                      beq #0x5ed188
005ed100  00 00 53 e1                                      cmp r3, r0
005ed104  27 00 00 0a                                      beq #0x5ed1a8
005ed108  14 80 8d e2                                      add r8, sp, #0x14
005ed10c  03 10 a0 e1                                      mov r1, r3
005ed110  08 00 a0 e1                                      mov r0, r8
005ed114  10 20 8d e2                                      add r2, sp, #0x10
005ed118  c7 e3 f4 eb                                      bl #0x32603c
005ed11c  28 20 9d e5                                      ldr r2, [sp, #0x28]
005ed120  0c 00 8d e2                                      add r0, sp, #0xc
005ed124  0a 10 a0 e1                                      mov r1, sl
005ed128  7f ef ff eb                                      bl #0x5e8f2c
005ed12c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ed130  00 00 53 e3                                      cmp r3, #0
005ed134  04 20 93 15                                      ldrne r2, [r3, #4]
005ed138  01 20 82 12                                      addne r2, r2, #1
005ed13c  04 20 83 15                                      strne r2, [r3, #4]
005ed140  00 00 95 e5                                      ldr r0, [r5]
005ed144  00 30 85 e5                                      str r3, [r5]
005ed148  00 00 50 e3                                      cmp r0, #0
005ed14c  00 00 00 0a                                      beq #0x5ed154
005ed150  0b c1 f4 eb                                      bl #0x31d584
005ed154  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005ed158  00 00 50 e3                                      cmp r0, #0
005ed15c  00 00 00 0a                                      beq #0x5ed164
005ed160  07 c1 f4 eb                                      bl #0x31d584
005ed164  00 30 95 e5                                      ldr r3, [r5]
005ed168  00 00 53 e3                                      cmp r3, #0
005ed16c  17 00 00 0a                                      beq #0x5ed1d0
005ed170  28 00 9d e5                                      ldr r0, [sp, #0x28]
005ed174  08 00 50 e1                                      cmp r0, r8
005ed178  02 00 00 0a                                      beq #0x5ed188
005ed17c  00 00 50 e3                                      cmp r0, #0
005ed180  00 00 00 0a                                      beq #0x5ed188
005ed184  b1 8c f4 eb                                      bl #0x310450
005ed188  06 30 94 e7                                      ldr r3, [r4, r6]
005ed18c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005ed190  05 00 a0 e1                                      mov r0, r5
005ed194  00 30 93 e5                                      ldr r3, [r3]
005ed198  03 00 52 e1                                      cmp r2, r3
005ed19c  18 00 00 1a                                      bne #0x5ed204
005ed1a0  34 d0 8d e2                                      add sp, sp, #0x34
005ed1a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ed1a8  00 30 99 e5                                      ldr r3, [sb]
005ed1ac  09 00 a0 e1                                      mov r0, sb
005ed1b0  0f e0 a0 e1                                      mov lr, pc
005ed1b4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ed1b8  14 80 8d e2                                      add r8, sp, #0x14
005ed1bc  00 20 a0 e1                                      mov r2, r0
005ed1c0  0a 10 a0 e1                                      mov r1, sl
005ed1c4  08 00 a0 e1                                      mov r0, r8
005ed1c8  ce f1 ff eb                                      bl #0x5e9908
005ed1cc  d2 ff ff ea                                      b #0x5ed11c
005ed1d0  08 70 8d e2                                      add r7, sp, #8
005ed1d4  09 20 a0 e1                                      mov r2, sb
005ed1d8  0a 10 a0 e1                                      mov r1, sl
005ed1dc  08 30 a0 e1                                      mov r3, r8
005ed1e0  07 00 a0 e1                                      mov r0, r7
005ed1e4  00 b0 8d e5                                      str fp, [sp]
005ed1e8  51 ff ff eb                                      bl #0x5ecf34
005ed1ec  05 00 a0 e1                                      mov r0, r5
005ed1f0  07 10 a0 e1                                      mov r1, r7
005ed1f4  ff 5e f6 eb                                      bl #0x384df8
005ed1f8  07 00 a0 e1                                      mov r0, r7
005ed1fc  8a a8 f8 eb                                      bl #0x41742c
005ed200  da ff ff ea                                      b #0x5ed170
005ed204  41 84 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005ed208  bc 79 3a 00 ac 40 00 00                          .byte 0xbc, 0x79, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005ed210, declared_size=368, range_size=368, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager10getTextureEPKcS3_
; demangled: glitch::video::CTextureManager::getTexture(char const*, char const*)
; decoder-mode: arm
005ed210  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ed214  58 51 9f e5                                      ldr r5, [pc, #0x158]
005ed218  58 81 9f e5                                      ldr r8, [pc, #0x158]
005ed21c  00 40 a0 e1                                      mov r4, r0
005ed220  05 50 8f e0                                      add r5, pc, r5
005ed224  08 00 95 e7                                      ldr r0, [r5, r8]
005ed228  34 d0 4d e2                                      sub sp, sp, #0x34
005ed22c  00 c0 a0 e3                                      mov ip, #0
005ed230  00 00 90 e5                                      ldr r0, [r0]
005ed234  00 00 53 e3                                      cmp r3, #0
005ed238  00 c0 84 e5                                      str ip, [r4]
005ed23c  01 a0 a0 e1                                      mov sl, r1
005ed240  2c 00 8d e5                                      str r0, [sp, #0x2c]
005ed244  02 70 a0 e1                                      mov r7, r2
005ed248  27 00 00 0a                                      beq #0x5ed2ec
005ed24c  14 60 8d e2                                      add r6, sp, #0x14
005ed250  03 10 a0 e1                                      mov r1, r3
005ed254  06 00 a0 e1                                      mov r0, r6
005ed258  10 20 8d e2                                      add r2, sp, #0x10
005ed25c  76 e3 f4 eb                                      bl #0x32603c
005ed260  28 20 9d e5                                      ldr r2, [sp, #0x28]
005ed264  0c 00 8d e2                                      add r0, sp, #0xc
005ed268  0a 10 a0 e1                                      mov r1, sl
005ed26c  2e ef ff eb                                      bl #0x5e8f2c
005ed270  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ed274  00 00 53 e3                                      cmp r3, #0
005ed278  04 20 93 15                                      ldrne r2, [r3, #4]
005ed27c  01 20 82 12                                      addne r2, r2, #1
005ed280  04 20 83 15                                      strne r2, [r3, #4]
005ed284  00 00 94 e5                                      ldr r0, [r4]
005ed288  00 30 84 e5                                      str r3, [r4]
005ed28c  00 00 50 e3                                      cmp r0, #0
005ed290  00 00 00 0a                                      beq #0x5ed298
005ed294  ba c0 f4 eb                                      bl #0x31d584
005ed298  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005ed29c  00 00 50 e3                                      cmp r0, #0
005ed2a0  00 00 00 0a                                      beq #0x5ed2a8
005ed2a4  b6 c0 f4 eb                                      bl #0x31d584
005ed2a8  00 90 94 e5                                      ldr sb, [r4]
005ed2ac  00 00 59 e3                                      cmp sb, #0
005ed2b0  11 00 00 0a                                      beq #0x5ed2fc
005ed2b4  28 00 9d e5                                      ldr r0, [sp, #0x28]
005ed2b8  06 00 50 e1                                      cmp r0, r6
005ed2bc  02 00 00 0a                                      beq #0x5ed2cc
005ed2c0  00 00 50 e3                                      cmp r0, #0
005ed2c4  00 00 00 0a                                      beq #0x5ed2cc
005ed2c8  60 8c f4 eb                                      bl #0x310450
005ed2cc  08 30 95 e7                                      ldr r3, [r5, r8]
005ed2d0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005ed2d4  04 00 a0 e1                                      mov r0, r4
005ed2d8  00 30 93 e5                                      ldr r3, [r3]
005ed2dc  03 00 52 e1                                      cmp r2, r3
005ed2e0  22 00 00 1a                                      bne #0x5ed370
005ed2e4  34 d0 8d e2                                      add sp, sp, #0x34
005ed2e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ed2ec  14 60 8d e2                                      add r6, sp, #0x14
005ed2f0  06 00 a0 e1                                      mov r0, r6
005ed2f4  83 f1 ff eb                                      bl #0x5e9908
005ed2f8  d8 ff ff ea                                      b #0x5ed260
005ed2fc  2c 30 9a e5                                      ldr r3, [sl, #0x2c]
005ed300  07 10 a0 e1                                      mov r1, r7
005ed304  03 00 a0 e1                                      mov r0, r3
005ed308  00 30 93 e5                                      ldr r3, [r3]
005ed30c  0f e0 a0 e1                                      mov lr, pc
005ed310  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005ed314  00 b0 50 e2                                      subs fp, r0, #0
005ed318  0e 00 00 0a                                      beq #0x5ed358
005ed31c  08 70 8d e2                                      add r7, sp, #8
005ed320  0b 20 a0 e1                                      mov r2, fp
005ed324  06 30 a0 e1                                      mov r3, r6
005ed328  0a 10 a0 e1                                      mov r1, sl
005ed32c  07 00 a0 e1                                      mov r0, r7
005ed330  00 90 8d e5                                      str sb, [sp]
005ed334  fe fe ff eb                                      bl #0x5ecf34
005ed338  07 10 a0 e1                                      mov r1, r7
005ed33c  04 00 a0 e1                                      mov r0, r4
005ed340  ac 5e f6 eb                                      bl #0x384df8
005ed344  07 00 a0 e1                                      mov r0, r7
005ed348  37 a8 f8 eb                                      bl #0x41742c
005ed34c  0b 00 a0 e1                                      mov r0, fp
005ed350  8b c0 f4 eb                                      bl #0x31d584
005ed354  d6 ff ff ea                                      b #0x5ed2b4
005ed358  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
005ed35c  07 10 a0 e1                                      mov r1, r7
005ed360  03 20 a0 e3                                      mov r2, #3
005ed364  00 00 8f e0                                      add r0, pc, r0
005ed368  5e 76 00 eb                                      bl #0x60ace8
005ed36c  d0 ff ff ea                                      b #0x5ed2b4
005ed370  e6 83 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005ed374  70 78 3a 00 ac 40 00 00 94 62 2f 00              .byte 0x70, 0x78, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x62, 0x2f, 0x00

; FUNCTION 0x005ed380, declared_size=1476, range_size=1476, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager19rmReloadDataTextureENS1_9SIteratorEPKc
; demangled: glitch::video::CTextureManager::rmReloadDataTexture(glitch::video::CTextureManager::SIterator, char const*)
; decoder-mode: arm
005ed380  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ed384  00 30 a0 e3                                      mov r3, #0
005ed388  44 d0 4d e2                                      sub sp, sp, #0x44
005ed38c  3c 30 8d e5                                      str r3, [sp, #0x3c]
005ed390  18 30 90 e5                                      ldr r3, [r0, #0x18]
005ed394  00 70 a0 e1                                      mov r7, r0
005ed398  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005ed39c  b4 13 d1 e1                                      ldrh r1, [r1, #0x34]
005ed3a0  80 55 9f e5                                      ldr r5, [pc, #0x580]
005ed3a4  00 00 63 e0                                      rsb r0, r3, r0
005ed3a8  c0 01 51 e1                                      cmp r1, r0, asr #3
005ed3ac  05 50 8f e0                                      add r5, pc, r5
005ed3b0  02 40 a0 e1                                      mov r4, r2
005ed3b4  81 31 83 30                                      addlo r3, r3, r1, lsl #3
005ed3b8  6c 35 9f 25                                      ldrhs r3, [pc, #0x56c]
005ed3bc  03 30 95 27                                      ldrhs r3, [r5, r3]
005ed3c0  00 60 93 e5                                      ldr r6, [r3]
005ed3c4  00 00 56 e3                                      cmp r6, #0
005ed3c8  3c 60 8d 05                                      streq r6, [sp, #0x3c]
005ed3cc  0b 00 00 0a                                      beq #0x5ed400
005ed3d0  04 30 96 e5                                      ldr r3, [r6, #4]
005ed3d4  02 30 83 e2                                      add r3, r3, #2
005ed3d8  04 30 86 e5                                      str r3, [r6, #4]
005ed3dc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005ed3e0  3c 60 8d e5                                      str r6, [sp, #0x3c]
005ed3e4  00 00 50 e3                                      cmp r0, #0
005ed3e8  00 00 00 0a                                      beq #0x5ed3f0
005ed3ec  64 c0 f4 eb                                      bl #0x31d584
005ed3f0  00 00 56 e3                                      cmp r6, #0
005ed3f4  01 00 00 0a                                      beq #0x5ed400
005ed3f8  06 00 a0 e1                                      mov r0, r6
005ed3fc  60 c0 f4 eb                                      bl #0x31d584
005ed400  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed404  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
005ed408  18 20 97 e5                                      ldr r2, [r7, #0x18]
005ed40c  1c c0 97 e5                                      ldr ip, [r7, #0x1c]
005ed410  bc 13 d3 e1                                      ldrh r1, [r3, #0x3c]
005ed414  00 30 90 e5                                      ldr r3, [r0]
005ed418  0c c0 62 e0                                      rsb ip, r2, ip
005ed41c  cc 01 51 e1                                      cmp r1, ip, asr #3
005ed420  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005ed424  81 c1 82 30                                      addlo ip, r2, r1, lsl #3
005ed428  fc c4 9f 25                                      ldrhs ip, [pc, #0x4fc]
005ed42c  0c c0 95 27                                      ldrhs ip, [r5, ip]
005ed430  00 c0 9c e5                                      ldr ip, [ip]
005ed434  00 00 5c e3                                      cmp ip, #0
005ed438  ef 00 00 0a                                      beq #0x5ed7fc
005ed43c  81 21 82 e0                                      add r2, r2, r1, lsl #3
005ed440  04 20 92 e5                                      ldr r2, [r2, #4]
005ed444  28 c0 92 e5                                      ldr ip, [r2, #0x28]
005ed448  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
005ed44c  0c 00 51 e1                                      cmp r1, ip
005ed450  e9 00 00 0a                                      beq #0x5ed7fc
005ed454  33 ff 2f e1                                      blx r3
005ed458  00 50 a0 e1                                      mov r5, r0
005ed45c  07 10 a0 e1                                      mov r1, r7
005ed460  38 00 8d e2                                      add r0, sp, #0x38
005ed464  05 20 a0 e1                                      mov r2, r5
005ed468  35 eb ff eb                                      bl #0x5e8144
005ed46c  38 30 9d e5                                      ldr r3, [sp, #0x38]
005ed470  00 00 53 e3                                      cmp r3, #0
005ed474  0c 00 00 0a                                      beq #0x5ed4ac
005ed478  03 00 a0 e1                                      mov r0, r3
005ed47c  00 30 93 e5                                      ldr r3, [r3]
005ed480  0f e0 a0 e1                                      mov lr, pc
005ed484  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005ed488  00 00 50 e3                                      cmp r0, #0
005ed48c  0c 00 00 0a                                      beq #0x5ed4c4
005ed490  98 04 9f e5                                      ldr r0, [pc, #0x498]
005ed494  00 00 8f e0                                      add r0, pc, r0
005ed498  78 77 00 eb                                      bl #0x60b280
005ed49c  38 00 9d e5                                      ldr r0, [sp, #0x38]
005ed4a0  00 00 50 e3                                      cmp r0, #0
005ed4a4  00 00 00 0a                                      beq #0x5ed4ac
005ed4a8  35 c0 f4 eb                                      bl #0x31d584
005ed4ac  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005ed4b0  00 00 50 e3                                      cmp r0, #0
005ed4b4  00 00 00 0a                                      beq #0x5ed4bc
005ed4b8  31 c0 f4 eb                                      bl #0x31d584
005ed4bc  44 d0 8d e2                                      add sp, sp, #0x44
005ed4c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ed4c4  38 30 9d e5                                      ldr r3, [sp, #0x38]
005ed4c8  34 00 8d e2                                      add r0, sp, #0x34
005ed4cc  05 20 a0 e1                                      mov r2, r5
005ed4d0  03 10 a0 e1                                      mov r1, r3
005ed4d4  00 30 93 e5                                      ldr r3, [r3]
005ed4d8  0f e0 a0 e1                                      mov lr, pc
005ed4dc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005ed4e0  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ed4e4  00 00 50 e3                                      cmp r0, #0
005ed4e8  c1 00 00 0a                                      beq #0x5ed7f4
005ed4ec  28 60 d0 e5                                      ldrb r6, [r0, #0x28]
005ed4f0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed4f4  14 20 90 e5                                      ldr r2, [r0, #0x14]
005ed4f8  00 00 56 e3                                      cmp r6, #0
005ed4fc  74 60 97 15                                      ldrne r6, [r7, #0x74]
005ed500  10 10 90 e5                                      ldr r1, [r0, #0x10]
005ed504  56 63 e0 17                                      ubfxne r6, r6, #6, #1
005ed508  00 00 53 e3                                      cmp r3, #0
005ed50c  b0 00 00 0a                                      beq #0x5ed7d4
005ed510  00 00 51 e3                                      cmp r1, #0
005ed514  00 c0 e0 03                                      mvneq ip, #0
005ed518  03 00 00 0a                                      beq #0x5ed52c
005ed51c  00 c0 e0 e3                                      mvn ip, #0
005ed520  c1 10 b0 e1                                      asrs r1, r1, #1
005ed524  01 c0 8c e2                                      add ip, ip, #1
005ed528  fc ff ff 1a                                      bne #0x5ed520
005ed52c  00 00 52 e3                                      cmp r2, #0
005ed530  00 10 e0 03                                      mvneq r1, #0
005ed534  03 00 00 0a                                      beq #0x5ed548
005ed538  00 10 e0 e3                                      mvn r1, #0
005ed53c  c2 20 b0 e1                                      asrs r2, r2, #1
005ed540  01 10 81 e2                                      add r1, r1, #1
005ed544  fc ff ff 1a                                      bne #0x5ed53c
005ed548  24 20 90 e5                                      ldr r2, [r0, #0x24]
005ed54c  0c 00 51 e1                                      cmp r1, ip
005ed550  01 c0 a0 a1                                      movge ip, r1
005ed554  0c c0 a0 b1                                      movlt ip, ip
005ed558  02 00 5c e1                                      cmp ip, r2
005ed55c  08 20 90 e5                                      ldr r2, [r0, #8]
005ed560  01 60 a0 13                                      movne r6, #1
005ed564  01 60 26 02                                      eoreq r6, r6, #1
005ed568  00 00 52 e3                                      cmp r2, #0
005ed56c  20 20 8d e5                                      str r2, [sp, #0x20]
005ed570  89 00 00 0a                                      beq #0x5ed79c
005ed574  38 10 93 e5                                      ldr r1, [r3, #0x38]
005ed578  20 20 90 e5                                      ldr r2, [r0, #0x20]
005ed57c  51 02 e5 e7                                      ubfx r0, r1, #4, #6
005ed580  02 00 50 e1                                      cmp r0, r2
005ed584  72 00 00 0a                                      beq #0x5ed754
005ed588  00 00 56 e3                                      cmp r6, #0
005ed58c  c4 00 00 0a                                      beq #0x5ed8a4
005ed590  30 30 93 e5                                      ldr r3, [r3, #0x30]
005ed594  00 20 93 e5                                      ldr r2, [r3]
005ed598  04 00 93 e5                                      ldr r0, [r3, #4]
005ed59c  00 00 62 e0                                      rsb r0, r2, r0
005ed5a0  00 10 a0 e3                                      mov r1, #0
005ed5a4  ff 1a fd eb                                      bl #0x5341a8
005ed5a8  20 30 9d e5                                      ldr r3, [sp, #0x20]
005ed5ac  00 10 a0 e1                                      mov r1, r0
005ed5b0  03 50 50 e0                                      subs r5, r0, r3
005ed5b4  01 50 a0 13                                      movne r5, #1
005ed5b8  05 20 a0 e1                                      mov r2, r5
005ed5bc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005ed5c0  06 30 a0 e1                                      mov r3, r6
005ed5c4  6a 42 00 eb                                      bl #0x5fdf74
005ed5c8  00 00 55 e3                                      cmp r5, #0
005ed5cc  9f 00 00 0a                                      beq #0x5ed850
005ed5d0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed5d4  34 20 9d e5                                      ldr r2, [sp, #0x34]
005ed5d8  38 80 93 e5                                      ldr r8, [r3, #0x38]
005ed5dc  20 50 92 e5                                      ldr r5, [r2, #0x20]
005ed5e0  58 82 e5 e7                                      ubfx r8, r8, #4, #6
005ed5e4  05 00 58 e1                                      cmp r8, r5
005ed5e8  b0 00 00 0a                                      beq #0x5ed8b0
005ed5ec  75 30 ff e6                                      uxth r3, r5
005ed5f0  27 00 53 e3                                      cmp r3, #0x27
005ed5f4  9b 00 00 1a                                      bne #0x5ed868
005ed5f8  34 53 9f e5                                      ldr r5, [pc, #0x334]
005ed5fc  05 50 8f e0                                      add r5, pc, r5
005ed600  27 00 58 e3                                      cmp r8, #0x27
005ed604  93 00 00 1a                                      bne #0x5ed858
005ed608  28 c3 9f e5                                      ldr ip, [pc, #0x328]
005ed60c  0c c0 8f e0                                      add ip, pc, ip
005ed610  24 13 9f e5                                      ldr r1, [pc, #0x324]
005ed614  04 20 a0 e1                                      mov r2, r4
005ed618  05 30 a0 e1                                      mov r3, r5
005ed61c  01 10 8f e0                                      add r1, pc, r1
005ed620  02 00 a0 e3                                      mov r0, #2
005ed624  00 c0 8d e5                                      str ip, [sp]
005ed628  81 76 00 eb                                      bl #0x60b034
005ed62c  34 20 9d e5                                      ldr r2, [sp, #0x34]
005ed630  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed634  00 00 56 e3                                      cmp r6, #0
005ed638  0c a0 92 e5                                      ldr sl, [r2, #0xc]
005ed63c  24 60 93 e5                                      ldr r6, [r3, #0x24]
005ed640  20 50 93 e5                                      ldr r5, [r3, #0x20]
005ed644  6e 00 00 0a                                      beq #0x5ed804
005ed648  01 c0 a0 e3                                      mov ip, #1
005ed64c  1c c0 8d e5                                      str ip, [sp, #0x1c]
005ed650  00 40 a0 e3                                      mov r4, #0
005ed654  24 70 8d e5                                      str r7, [sp, #0x24]
005ed658  37 00 00 ea                                      b #0x5ed73c
005ed65c  04 20 93 e5                                      ldr r2, [r3, #4]
005ed660  01 20 82 e2                                      add r2, r2, #1
005ed664  04 20 83 e5                                      str r2, [r3, #4]
005ed668  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005ed66c  00 00 50 e3                                      cmp r0, #0
005ed670  34 00 00 0a                                      beq #0x5ed748
005ed674  04 10 a0 e3                                      mov r1, #4
005ed678  00 20 a0 e3                                      mov r2, #0
005ed67c  04 30 a0 e1                                      mov r3, r4
005ed680  93 42 00 eb                                      bl #0x5fe0d4
005ed684  00 70 a0 e1                                      mov r7, r0
005ed688  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005ed68c  34 30 9d e5                                      ldr r3, [sp, #0x34]
005ed690  00 00 54 e3                                      cmp r4, #0
005ed694  30 70 8d e5                                      str r7, [sp, #0x30]
005ed698  04 10 a0 e1                                      mov r1, r4
005ed69c  20 b0 9d 05                                      ldreq fp, [sp, #0x20]
005ed6a0  04 b0 1a 15                                      ldrne fp, [sl, #-4]
005ed6a4  20 90 93 e5                                      ldr sb, [r3, #0x20]
005ed6a8  38 80 90 e5                                      ldr r8, [r0, #0x38]
005ed6ac  94 f3 ff eb                                      bl #0x5ea504
005ed6b0  58 82 e5 e7                                      ubfx r8, r8, #4, #6
005ed6b4  04 00 8d e5                                      str r0, [sp, #4]
005ed6b8  00 20 a0 e3                                      mov r2, #0
005ed6bc  0b 10 a0 e1                                      mov r1, fp
005ed6c0  09 00 a0 e1                                      mov r0, sb
005ed6c4  08 30 a0 e1                                      mov r3, r8
005ed6c8  00 70 8d e5                                      str r7, [sp]
005ed6cc  08 50 8d e5                                      str r5, [sp, #8]
005ed6d0  0c 60 8d e5                                      str r6, [sp, #0xc]
005ed6d4  10 20 8d e5                                      str r2, [sp, #0x10]
005ed6d8  b3 2f 00 eb                                      bl #0x5f95ac
005ed6dc  00 00 50 e3                                      cmp r0, #0
005ed6e0  4c 00 00 0a                                      beq #0x5ed818
005ed6e4  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ed6e8  c5 50 a0 e1                                      asr r5, r5, #1
005ed6ec  c6 60 a0 e1                                      asr r6, r6, #1
005ed6f0  01 00 55 e3                                      cmp r5, #1
005ed6f4  01 50 a0 b3                                      movlt r5, #1
005ed6f8  01 00 56 e3                                      cmp r6, #1
005ed6fc  01 60 a0 b3                                      movlt r6, #1
005ed700  00 00 53 e3                                      cmp r3, #0
005ed704  01 00 00 0a                                      beq #0x5ed710
005ed708  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005ed70c  3e 41 00 eb                                      bl #0x5fdc0c
005ed710  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005ed714  00 00 50 e3                                      cmp r0, #0
005ed718  00 00 00 0a                                      beq #0x5ed720
005ed71c  98 bf f4 eb                                      bl #0x31d584
005ed720  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005ed724  01 40 84 e2                                      add r4, r4, #1
005ed728  74 40 ef e6                                      uxtb r4, r4
005ed72c  03 00 54 e1                                      cmp r4, r3
005ed730  04 a0 8a e2                                      add sl, sl, #4
005ed734  44 00 00 2a                                      bhs #0x5ed84c
005ed738  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed73c  00 00 53 e3                                      cmp r3, #0
005ed740  2c 30 8d e5                                      str r3, [sp, #0x2c]
005ed744  c4 ff ff 1a                                      bne #0x5ed65c
005ed748  00 00 a0 e3                                      mov r0, #0
005ed74c  00 70 a0 e1                                      mov r7, r0
005ed750  cd ff ff ea                                      b #0x5ed68c
005ed754  74 20 97 e5                                      ldr r2, [r7, #0x74]
005ed758  01 00 12 e3                                      tst r2, #1
005ed75c  89 ff ff 1a                                      bne #0x5ed588
005ed760  02 00 12 e3                                      tst r2, #2
005ed764  87 ff ff 0a                                      beq #0x5ed588
005ed768  20 10 93 e5                                      ldr r1, [r3, #0x20]
005ed76c  de 00 00 eb                                      bl #0x5edaec
005ed770  34 30 9d e5                                      ldr r3, [sp, #0x34]
005ed774  18 30 93 e5                                      ldr r3, [r3, #0x18]
005ed778  00 00 53 e1                                      cmp r3, r0
005ed77c  3c 30 9d 15                                      ldrne r3, [sp, #0x3c]
005ed780  80 ff ff 1a                                      bne #0x5ed588
005ed784  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed788  3e 20 d3 e5                                      ldrb r2, [r3, #0x3e]
005ed78c  01 00 52 e3                                      cmp r2, #1
005ed790  01 00 00 9a                                      bls #0x5ed79c
005ed794  00 00 56 e3                                      cmp r6, #0
005ed798  39 00 00 0a                                      beq #0x5ed884
005ed79c  03 00 a0 e1                                      mov r0, r3
005ed7a0  20 10 9d e5                                      ldr r1, [sp, #0x20]
005ed7a4  06 30 a0 e1                                      mov r3, r6
005ed7a8  00 20 a0 e3                                      mov r2, #0
005ed7ac  f0 41 00 eb                                      bl #0x5fdf74
005ed7b0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed7b4  74 20 97 e5                                      ldr r2, [r7, #0x74]
005ed7b8  02 00 12 e3                                      tst r2, #2
005ed7bc  04 00 00 0a                                      beq #0x5ed7d4
005ed7c0  01 20 22 e2                                      eor r2, r2, #1
005ed7c4  03 00 a0 e1                                      mov r0, r3
005ed7c8  01 10 02 e2                                      and r1, r2, #1
005ed7cc  b2 41 00 eb                                      bl #0x5fde9c
005ed7d0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed7d4  3f 20 d3 e5                                      ldrb r2, [r3, #0x3f]
005ed7d8  82 2c e0 e1                                      mvn r2, r2, lsl #25
005ed7dc  a2 2c e0 e1                                      mvn r2, r2, lsr #25
005ed7e0  3f 20 c3 e5                                      strb r2, [r3, #0x3f]
005ed7e4  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ed7e8  00 00 50 e3                                      cmp r0, #0
005ed7ec  00 00 00 0a                                      beq #0x5ed7f4
005ed7f0  63 bf f4 eb                                      bl #0x31d584
005ed7f4  38 00 9d e5                                      ldr r0, [sp, #0x38]
005ed7f8  28 ff ff ea                                      b #0x5ed4a0
005ed7fc  00 10 a0 e3                                      mov r1, #0
005ed800  13 ff ff ea                                      b #0x5ed454
005ed804  3e 20 d3 e5                                      ldrb r2, [r3, #0x3e]
005ed808  00 00 52 e3                                      cmp r2, #0
005ed80c  1c 20 8d e5                                      str r2, [sp, #0x1c]
005ed810  8e ff ff 1a                                      bne #0x5ed650
005ed814  e6 ff ff ea                                      b #0x5ed7b4
005ed818  2c 00 8d e2                                      add r0, sp, #0x2c
005ed81c  2c f0 ff eb                                      bl #0x5e98d4
005ed820  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ed824  00 00 50 e3                                      cmp r0, #0
005ed828  00 00 00 0a                                      beq #0x5ed830
005ed82c  54 bf f4 eb                                      bl #0x31d584
005ed830  38 00 9d e5                                      ldr r0, [sp, #0x38]
005ed834  00 00 50 e3                                      cmp r0, #0
005ed838  00 00 00 0a                                      beq #0x5ed840
005ed83c  50 bf f4 eb                                      bl #0x31d584
005ed840  3c 00 8d e2                                      add r0, sp, #0x3c
005ed844  f8 a6 f8 eb                                      bl #0x41742c
005ed848  1b ff ff ea                                      b #0x5ed4bc
005ed84c  24 70 9d e5                                      ldr r7, [sp, #0x24]
005ed850  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed854  d6 ff ff ea                                      b #0x5ed7b4
005ed858  00 00 a0 e3                                      mov r0, #0
005ed85c  38 00 00 eb                                      bl #0x5ed944
005ed860  08 c1 90 e7                                      ldr ip, [r0, r8, lsl #2]
005ed864  69 ff ff ea                                      b #0x5ed610
005ed868  00 00 a0 e3                                      mov r0, #0
005ed86c  34 00 00 eb                                      bl #0x5ed944
005ed870  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed874  05 51 90 e7                                      ldr r5, [r0, r5, lsl #2]
005ed878  38 80 93 e5                                      ldr r8, [r3, #0x38]
005ed87c  58 82 e5 e7                                      ubfx r8, r8, #4, #6
005ed880  5e ff ff ea                                      b #0x5ed600
005ed884  03 00 a0 e1                                      mov r0, r3
005ed888  16 ea ff eb                                      bl #0x5e80e8
005ed88c  34 30 9d e5                                      ldr r3, [sp, #0x34]
005ed890  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
005ed894  03 00 50 e1                                      cmp r0, r3
005ed898  3c 30 9d 05                                      ldreq r3, [sp, #0x3c]
005ed89c  be ff ff 0a                                      beq #0x5ed79c
005ed8a0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed8a4  03 00 a0 e1                                      mov r0, r3
005ed8a8  0e ea ff eb                                      bl #0x5e80e8
005ed8ac  3b ff ff ea                                      b #0x5ed5a0
005ed8b0  74 10 97 e5                                      ldr r1, [r7, #0x74]
005ed8b4  01 00 11 e3                                      tst r1, #1
005ed8b8  5d ff ff 1a                                      bne #0x5ed634
005ed8bc  20 10 93 e5                                      ldr r1, [r3, #0x20]
005ed8c0  08 00 a0 e1                                      mov r0, r8
005ed8c4  88 00 00 eb                                      bl #0x5edaec
005ed8c8  34 20 9d e5                                      ldr r2, [sp, #0x34]
005ed8cc  18 30 92 e5                                      ldr r3, [r2, #0x18]
005ed8d0  00 00 53 e1                                      cmp r3, r0
005ed8d4  07 00 00 0a                                      beq #0x5ed8f8
005ed8d8  60 10 9f e5                                      ldr r1, [pc, #0x60]
005ed8dc  04 20 a0 e1                                      mov r2, r4
005ed8e0  02 00 a0 e3                                      mov r0, #2
005ed8e4  01 10 8f e0                                      add r1, pc, r1
005ed8e8  d1 75 00 eb                                      bl #0x60b034
005ed8ec  34 20 9d e5                                      ldr r2, [sp, #0x34]
005ed8f0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed8f4  4e ff ff ea                                      b #0x5ed634
005ed8f8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed8fc  3e 10 d3 e5                                      ldrb r1, [r3, #0x3e]
005ed900  01 00 51 e3                                      cmp r1, #1
005ed904  4a ff ff 9a                                      bls #0x5ed634
005ed908  03 00 a0 e1                                      mov r0, r3
005ed90c  f5 e9 ff eb                                      bl #0x5e80e8
005ed910  34 20 9d e5                                      ldr r2, [sp, #0x34]
005ed914  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
005ed918  03 00 50 e1                                      cmp r0, r3
005ed91c  ed ff ff 1a                                      bne #0x5ed8d8
005ed920  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005ed924  42 ff ff ea                                      b #0x5ed634
; mapping-symbol data/literal pool
005ed928  e4 76 3a 00 e8 10 00 00 84 61 2f 00 64 8e 2d 00  .byte 0xe4, 0x76, 0x3a, 0x00, 0xe8, 0x10, 0x00, 0x00, 0x84, 0x61, 0x2f, 0x00, 0x64, 0x8e, 0x2d, 0x00
005ed938  54 8e 2d 00 0c 5f 2f 00 8c 5c 2f 00              .byte 0x54, 0x8e, 0x2d, 0x00, 0x0c, 0x5f, 0x2f, 0x00, 0x8c, 0x5c, 0x2f, 0x00
