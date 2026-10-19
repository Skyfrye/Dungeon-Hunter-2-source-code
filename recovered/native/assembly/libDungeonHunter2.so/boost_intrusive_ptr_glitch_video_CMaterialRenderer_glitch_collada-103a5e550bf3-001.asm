; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006357a0, declared_size=2632, range_size=2632, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada
; alias: _ZN6glitch7collada32createMaterialRendererForProfileINS0_18SProfileNullTraitsEEEN5boost13intrusive_ptrINS_5video17CMaterialRendererEEERKNS0_16CColladaDatabaseEPNS5_12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
; demangled: boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileNullTraits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006357a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006357a4  d4 d0 4d e2                                      sub sp, sp, #0xd4
006357a8  f8 c0 9d e5                                      ldr ip, [sp, #0xf8]
006357ac  10 1a 9f e5                                      ldr r1, [pc, #0xa10]
006357b0  10 4a 9f e5                                      ldr r4, [pc, #0xa10]
006357b4  6c c0 8d e5                                      str ip, [sp, #0x6c]
006357b8  01 10 8f e0                                      add r1, pc, r1
006357bc  04 c0 91 e7                                      ldr ip, [r1, r4]
006357c0  80 40 8d e5                                      str r4, [sp, #0x80]
006357c4  6c 40 9d e5                                      ldr r4, [sp, #0x6c]
006357c8  70 10 8d e5                                      str r1, [sp, #0x70]
006357cc  00 10 94 e5                                      ldr r1, [r4]
006357d0  78 00 8d e5                                      str r0, [sp, #0x78]
006357d4  00 00 9c e5                                      ldr r0, [ip]
006357d8  04 00 51 e1                                      cmp r1, r4
006357dc  fc c0 9d e5                                      ldr ip, [sp, #0xfc]
006357e0  cc 00 8d e5                                      str r0, [sp, #0xcc]
006357e4  78 00 9d 05                                      ldreq r0, [sp, #0x78]
006357e8  40 30 8d e5                                      str r3, [sp, #0x40]
006357ec  00 30 a0 03                                      moveq r3, #0
006357f0  48 20 8d e5                                      str r2, [sp, #0x48]
006357f4  68 c0 8d e5                                      str ip, [sp, #0x68]
006357f8  00 30 80 05                                      streq r3, [r0]
006357fc  52 02 00 0a                                      beq #0x63614c
00635800  48 10 9d e5                                      ldr r1, [sp, #0x48]
00635804  dc 10 91 e5                                      ldr r1, [r1, #0xdc]
00635808  24 10 8d e5                                      str r1, [sp, #0x24]
0063580c  90 fa fb eb                                      bl #0x534254
00635810  84 00 8d e5                                      str r0, [sp, #0x84]
00635814  01 00 a0 e3                                      mov r0, #1
00635818  92 fa fb eb                                      bl #0x534268
0063581c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00635820  00 30 92 e5                                      ldr r3, [r2]
00635824  03 00 52 e1                                      cmp r2, r3
00635828  00 40 a0 03                                      moveq r4, #0
0063582c  04 00 a0 01                                      moveq r0, r4
00635830  10 00 00 0a                                      beq #0x635878
00635834  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00635838  00 40 a0 e3                                      mov r4, #0
0063583c  04 00 a0 e1                                      mov r0, r4
00635840  10 20 93 e5                                      ldr r2, [r3, #0x10]
00635844  00 30 93 e5                                      ldr r3, [r3]
00635848  08 10 92 e5                                      ldr r1, [r2, #8]
0063584c  10 20 92 e5                                      ldr r2, [r2, #0x10]
00635850  01 00 54 e1                                      cmp r4, r1
00635854  01 40 a0 31                                      movlo r4, r1
00635858  02 00 50 e1                                      cmp r0, r2
0063585c  02 00 a0 31                                      movlo r0, r2
00635860  03 00 5c e1                                      cmp ip, r3
00635864  f5 ff ff 1a                                      bne #0x635840
00635868  00 00 50 e3                                      cmp r0, #0
0063586c  01 00 00 0a                                      beq #0x635878
00635870  00 01 a0 e1                                      lsl r0, r0, #2
00635874  5e fb fb eb                                      bl #0x5345f4
00635878  00 00 54 e3                                      cmp r4, #0
0063587c  30 00 8d e5                                      str r0, [sp, #0x30]
00635880  60 40 8d 05                                      streq r4, [sp, #0x60]
00635884  02 00 00 0a                                      beq #0x635894
00635888  04 01 a0 e1                                      lsl r0, r4, #2
0063588c  58 fb fb eb                                      bl #0x5345f4
00635890  60 00 8d e5                                      str r0, [sp, #0x60]
00635894  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635898  40 10 9d e5                                      ldr r1, [sp, #0x40]
0063589c  01 20 a0 e3                                      mov r2, #1
006358a0  91 a0 fe eb                                      bl #0x5ddaec
006358a4  00 00 50 e3                                      cmp r0, #0
006358a8  88 00 8d e5                                      str r0, [sp, #0x88]
006358ac  0b 01 00 0a                                      beq #0x635ce0
006358b0  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006358b4  6c 40 9d e5                                      ldr r4, [sp, #0x6c]
006358b8  00 30 93 e5                                      ldr r3, [r3]
006358bc  03 00 54 e1                                      cmp r4, r3
006358c0  74 30 8d e5                                      str r3, [sp, #0x74]
006358c4  05 01 00 0a                                      beq #0x635ce0
006358c8  fc 38 9f e5                                      ldr r3, [pc, #0x8fc]
006358cc  01 c0 a0 e3                                      mov ip, #1
006358d0  54 c0 8d e5                                      str ip, [sp, #0x54]
006358d4  03 30 8f e0                                      add r3, pc, r3
006358d8  58 30 8d e5                                      str r3, [sp, #0x58]
006358dc  ec 38 9f e5                                      ldr r3, [pc, #0x8ec]
006358e0  03 30 8f e0                                      add r3, pc, r3
006358e4  44 30 8d e5                                      str r3, [sp, #0x44]
006358e8  e4 38 9f e5                                      ldr r3, [pc, #0x8e4]
006358ec  03 30 8f e0                                      add r3, pc, r3
006358f0  50 30 8d e5                                      str r3, [sp, #0x50]
006358f4  74 00 9d e5                                      ldr r0, [sp, #0x74]
006358f8  10 00 90 e5                                      ldr r0, [r0, #0x10]
006358fc  2c 00 8d e5                                      str r0, [sp, #0x2c]
00635900  08 10 90 e5                                      ldr r1, [r0, #8]
00635904  5c 10 8d e5                                      str r1, [sp, #0x5c]
00635908  10 30 90 e5                                      ldr r3, [r0, #0x10]
0063590c  51 20 bd e7                                      sbfx r2, r1, #0, #0x1e
00635910  00 00 53 e3                                      cmp r3, #0
00635914  00 30 a0 d3                                      movle r3, #0
00635918  01 30 a0 c3                                      movgt r3, #1
0063591c  00 00 52 e3                                      cmp r2, #0
00635920  7c 30 8d e5                                      str r3, [sp, #0x7c]
00635924  09 00 00 da                                      ble #0x635950
00635928  60 00 9d e5                                      ldr r0, [sp, #0x60]
0063592c  00 30 a0 e3                                      mov r3, #0
00635930  03 10 a0 e1                                      mov r1, r3
00635934  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00635938  01 30 83 e2                                      add r3, r3, #1
0063593c  02 00 53 e1                                      cmp r3, r2
00635940  fb ff ff 1a                                      bne #0x635934
00635944  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00635948  08 20 92 e5                                      ldr r2, [r2, #8]
0063594c  5c 20 8d e5                                      str r2, [sp, #0x5c]
00635950  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00635954  00 00 53 e3                                      cmp r3, #0
00635958  00 80 a0 d3                                      movle r8, #0
0063595c  81 00 00 da                                      ble #0x635b68
00635960  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
00635964  6c 48 9f e5                                      ldr r4, [pc, #0x86c]
00635968  00 c0 a0 e3                                      mov ip, #0
0063596c  01 00 20 e2                                      eor r0, r0, #1
00635970  bc 10 8d e2                                      add r1, sp, #0xbc
00635974  8c 40 8d e5                                      str r4, [sp, #0x8c]
00635978  34 c0 8d e5                                      str ip, [sp, #0x34]
0063597c  38 c0 8d e5                                      str ip, [sp, #0x38]
00635980  3c c0 8d e5                                      str ip, [sp, #0x3c]
00635984  0c 80 a0 e1                                      mov r8, ip
00635988  64 00 8d e5                                      str r0, [sp, #0x64]
0063598c  c4 a0 8d e2                                      add sl, sp, #0xc4
00635990  28 10 8d e5                                      str r1, [sp, #0x28]
00635994  94 90 8d e2                                      add sb, sp, #0x94
00635998  13 00 00 ea                                      b #0x6359ec
0063599c  60 00 9d e5                                      ldr r0, [sp, #0x60]
006359a0  34 10 9d e5                                      ldr r1, [sp, #0x34]
006359a4  01 00 80 e0                                      add r0, r0, r1
006359a8  4c 00 8d e5                                      str r0, [sp, #0x4c]
006359ac  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006359b0  00 40 90 e5                                      ldr r4, [r0]
006359b4  00 00 54 e3                                      cmp r4, #0
006359b8  20 00 00 0a                                      beq #0x635a40
006359bc  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006359c0  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006359c4  34 00 9d e5                                      ldr r0, [sp, #0x34]
006359c8  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
006359cc  01 30 83 e2                                      add r3, r3, #1
006359d0  0c c0 8c e2                                      add ip, ip, #0xc
006359d4  04 00 80 e2                                      add r0, r0, #4
006359d8  04 00 53 e1                                      cmp r3, r4
006359dc  3c 30 8d e5                                      str r3, [sp, #0x3c]
006359e0  38 c0 8d e5                                      str ip, [sp, #0x38]
006359e4  34 00 8d e5                                      str r0, [sp, #0x34]
006359e8  5e 00 00 0a                                      beq #0x635b68
006359ec  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006359f0  54 40 9d e5                                      ldr r4, [sp, #0x54]
006359f4  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006359f8  0c 30 92 e5                                      ldr r3, [r2, #0xc]
006359fc  00 00 54 e3                                      cmp r4, #0
00635a00  0c c0 83 e0                                      add ip, r3, ip
00635a04  14 c0 8d e5                                      str ip, [sp, #0x14]
00635a08  e3 ff ff 1a                                      bne #0x63599c
00635a0c  38 20 9d e5                                      ldr r2, [sp, #0x38]
00635a10  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635a14  02 10 93 e7                                      ldr r1, [r3, r2]
00635a18  4a 98 fe eb                                      bl #0x5dbb48
00635a1c  60 40 9d e5                                      ldr r4, [sp, #0x60]
00635a20  34 30 9d e5                                      ldr r3, [sp, #0x34]
00635a24  03 c0 84 e0                                      add ip, r4, r3
00635a28  03 00 84 e7                                      str r0, [r4, r3]
00635a2c  4c c0 8d e5                                      str ip, [sp, #0x4c]
00635a30  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00635a34  00 40 90 e5                                      ldr r4, [r0]
00635a38  00 00 54 e3                                      cmp r4, #0
00635a3c  de ff ff 1a                                      bne #0x6359bc
00635a40  14 20 9d e5                                      ldr r2, [sp, #0x14]
00635a44  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635a48  00 10 92 e5                                      ldr r1, [r2]
00635a4c  01 20 a0 e3                                      mov r2, #1
00635a50  6d 9f fe eb                                      bl #0x5dd80c
00635a54  00 00 50 e3                                      cmp r0, #0
00635a58  d7 ff ff 0a                                      beq #0x6359bc
00635a5c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00635a60  04 30 93 e5                                      ldr r3, [r3, #4]
00635a64  00 00 53 e3                                      cmp r3, #0
00635a68  18 30 8d e5                                      str r3, [sp, #0x18]
00635a6c  36 00 00 da                                      ble #0x635b4c
00635a70  70 00 9d e5                                      ldr r0, [sp, #0x70]
00635a74  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
00635a78  b8 10 8d e2                                      add r1, sp, #0xb8
00635a7c  c0 20 8d e2                                      add r2, sp, #0xc0
00635a80  0c 70 90 e7                                      ldr r7, [r0, ip]
00635a84  04 50 a0 e1                                      mov r5, r4
00635a88  1c 10 8d e5                                      str r1, [sp, #0x1c]
00635a8c  20 20 8d e5                                      str r2, [sp, #0x20]
00635a90  48 00 9d e5                                      ldr r0, [sp, #0x48]
00635a94  00 c0 97 e5                                      ldr ip, [r7]
00635a98  14 30 9d e5                                      ldr r3, [sp, #0x14]
00635a9c  d8 b0 90 e5                                      ldr fp, [r0, #0xd8]
00635aa0  07 10 a0 e3                                      mov r1, #7
00635aa4  08 60 93 e5                                      ldr r6, [r3, #8]
00635aa8  0c 30 a0 e1                                      mov r3, ip
00635aac  01 c0 8c e2                                      add ip, ip, #1
00635ab0  00 c0 87 e5                                      str ip, [r7]
00635ab4  58 20 9d e5                                      ldr r2, [sp, #0x58]
00635ab8  0a 00 a0 e1                                      mov r0, sl
00635abc  e0 61 f3 eb                                      bl #0x30e244
00635ac0  0a 20 a0 e1                                      mov r2, sl
00635ac4  28 00 9d e5                                      ldr r0, [sp, #0x28]
00635ac8  0b 10 a0 e1                                      mov r1, fp
00635acc  48 10 fe eb                                      bl #0x5b9bf4
00635ad0  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00635ad4  04 60 86 e0                                      add r6, r6, r4
00635ad8  8c 10 86 e2                                      add r1, r6, #0x8c
00635adc  00 00 53 e3                                      cmp r3, #0
00635ae0  b8 30 8d e5                                      str r3, [sp, #0xb8]
00635ae4  04 20 93 15                                      ldrne r2, [r3, #4]
00635ae8  09 00 a0 e1                                      mov r0, sb
00635aec  01 20 82 12                                      addne r2, r2, #1
00635af0  04 20 83 15                                      strne r2, [r3, #4]
00635af4  c5 87 fe eb                                      bl #0x5d7a10
00635af8  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635afc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00635b00  09 20 a0 e1                                      mov r2, sb
00635b04  20 30 9d e5                                      ldr r3, [sp, #0x20]
00635b08  07 9d fe eb                                      bl #0x5dcf2c
00635b0c  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
00635b10  00 00 50 e3                                      cmp r0, #0
00635b14  00 00 00 0a                                      beq #0x635b1c
00635b18  99 9e f3 eb                                      bl #0x31d584
00635b1c  d8 30 96 e5                                      ldr r3, [r6, #0xd8]
00635b20  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
00635b24  00 00 53 e3                                      cmp r3, #0
00635b28  01 80 a0 c3                                      movgt r8, #1
00635b2c  00 00 50 e3                                      cmp r0, #0
00635b30  00 00 00 0a                                      beq #0x635b38
00635b34  92 9e f3 eb                                      bl #0x31d584
00635b38  18 10 9d e5                                      ldr r1, [sp, #0x18]
00635b3c  01 50 85 e2                                      add r5, r5, #1
00635b40  e0 40 84 e2                                      add r4, r4, #0xe0
00635b44  01 00 55 e1                                      cmp r5, r1
00635b48  d0 ff ff 1a                                      bne #0x635a90
00635b4c  00 20 a0 e3                                      mov r2, #0
00635b50  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635b54  64 10 9d e5                                      ldr r1, [sp, #0x64]
00635b58  c1 9e fe eb                                      bl #0x5dd664
00635b5c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00635b60  00 00 82 e5                                      str r0, [r2]
00635b64  94 ff ff ea                                      b #0x6359bc
00635b68  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
00635b6c  00 00 51 e3                                      cmp r1, #0
00635b70  01 00 00 1a                                      bne #0x635b7c
00635b74  00 00 58 e3                                      cmp r8, #0
00635b78  50 00 00 0a                                      beq #0x635cc0
00635b7c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00635b80  10 a0 92 e5                                      ldr sl, [r2, #0x10]
00635b84  5a 20 bd e7                                      sbfx r2, sl, #0, #0x1e
00635b88  00 00 52 e3                                      cmp r2, #0
00635b8c  08 00 00 da                                      ble #0x635bb4
00635b90  30 00 9d e5                                      ldr r0, [sp, #0x30]
00635b94  00 30 a0 e3                                      mov r3, #0
00635b98  03 10 a0 e1                                      mov r1, r3
00635b9c  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00635ba0  01 30 83 e2                                      add r3, r3, #1
00635ba4  02 00 53 e1                                      cmp r3, r2
00635ba8  fb ff ff 1a                                      bne #0x635b9c
00635bac  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00635bb0  10 a0 93 e5                                      ldr sl, [r3, #0x10]
00635bb4  00 00 5a e3                                      cmp sl, #0
00635bb8  a8 00 00 da                                      ble #0x635e60
00635bbc  18 96 9f e5                                      ldr sb, [pc, #0x618]
00635bc0  00 60 a0 e3                                      mov r6, #0
00635bc4  06 50 a0 e1                                      mov r5, r6
00635bc8  09 90 8f e0                                      add sb, pc, sb
00635bcc  09 b0 a0 e1                                      mov fp, sb
00635bd0  06 80 a0 e1                                      mov r8, r6
00635bd4  30 90 9d e5                                      ldr sb, [sp, #0x30]
00635bd8  08 00 00 ea                                      b #0x635c00
00635bdc  06 70 89 e0                                      add r7, sb, r6
00635be0  00 30 97 e5                                      ldr r3, [r7]
00635be4  00 00 53 e3                                      cmp r3, #0
00635be8  1a 00 00 0a                                      beq #0x635c58
00635bec  01 80 88 e2                                      add r8, r8, #1
00635bf0  0a 00 58 e1                                      cmp r8, sl
00635bf4  18 50 85 e2                                      add r5, r5, #0x18
00635bf8  04 60 86 e2                                      add r6, r6, #4
00635bfc  97 00 00 0a                                      beq #0x635e60
00635c00  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
00635c04  14 30 94 e5                                      ldr r3, [r4, #0x14]
00635c08  05 40 83 e0                                      add r4, r3, r5
00635c0c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00635c10  01 00 52 e3                                      cmp r2, #1
00635c14  04 00 00 da                                      ble #0x635c2c
00635c18  05 30 93 e7                                      ldr r3, [r3, r5]
00635c1c  02 00 a0 e3                                      mov r0, #2
00635c20  0b 10 a0 e1                                      mov r1, fp
00635c24  40 20 9d e5                                      ldr r2, [sp, #0x40]
00635c28  01 55 ff eb                                      bl #0x60b034
00635c2c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00635c30  00 00 5c e3                                      cmp ip, #0
00635c34  e8 ff ff 1a                                      bne #0x635bdc
00635c38  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635c3c  00 10 94 e5                                      ldr r1, [r4]
00635c40  c4 ef ff eb                                      bl #0x631b58
00635c44  06 70 89 e0                                      add r7, sb, r6
00635c48  06 00 89 e7                                      str r0, [sb, r6]
00635c4c  00 30 97 e5                                      ldr r3, [r7]
00635c50  00 00 53 e3                                      cmp r3, #0
00635c54  e4 ff ff 1a                                      bne #0x635bec
00635c58  10 30 94 e5                                      ldr r3, [r4, #0x10]
00635c5c  08 20 94 e5                                      ldr r2, [r4, #8]
00635c60  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635c64  00 30 93 e5                                      ldr r3, [r3]
00635c68  00 10 94 e5                                      ldr r1, [r4]
00635c6c  f7 ef ff eb                                      bl #0x631c50
00635c70  00 00 87 e5                                      str r0, [r7]
00635c74  dc ff ff ea                                      b #0x635bec
00635c78  38 00 9d e5                                      ldr r0, [sp, #0x38]
00635c7c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00635c80  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00635c84  01 00 80 e2                                      add r0, r0, #1
00635c88  e0 20 82 e2                                      add r2, r2, #0xe0
00635c8c  01 00 50 e1                                      cmp r0, r1
00635c90  38 00 8d e5                                      str r0, [sp, #0x38]
00635c94  3c 20 8d e5                                      str r2, [sp, #0x3c]
00635c98  8e 00 00 1a                                      bne #0x635ed8
00635c9c  54 30 9d e5                                      ldr r3, [sp, #0x54]
00635ca0  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
00635ca4  64 40 9d e5                                      ldr r4, [sp, #0x64]
00635ca8  01 30 83 e2                                      add r3, r3, #1
00635cac  0c c0 8c e2                                      add ip, ip, #0xc
00635cb0  04 00 53 e1                                      cmp r3, r4
00635cb4  54 30 8d e5                                      str r3, [sp, #0x54]
00635cb8  5c c0 8d e5                                      str ip, [sp, #0x5c]
00635cbc  6f 00 00 1a                                      bne #0x635e80
00635cc0  74 00 9d e5                                      ldr r0, [sp, #0x74]
00635cc4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00635cc8  00 10 a0 e3                                      mov r1, #0
00635ccc  00 00 90 e5                                      ldr r0, [r0]
00635cd0  54 10 8d e5                                      str r1, [sp, #0x54]
00635cd4  00 00 52 e1                                      cmp r2, r0
00635cd8  74 00 8d e5                                      str r0, [sp, #0x74]
00635cdc  04 ff ff 1a                                      bne #0x6358f4
00635ce0  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635ce4  32 a0 fe eb                                      bl #0x5dddb4
00635ce8  24 30 9d e5                                      ldr r3, [sp, #0x24]
00635cec  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00635cf0  18 30 93 e5                                      ldr r3, [r3, #0x18]
00635cf4  02 20 63 e0                                      rsb r2, r3, r2
00635cf8  c2 01 50 e1                                      cmp r0, r2, asr #3
00635cfc  80 31 83 30                                      addlo r3, r3, r0, lsl #3
00635d00  02 00 00 3a                                      blo #0x635d10
00635d04  d4 34 9f e5                                      ldr r3, [pc, #0x4d4]
00635d08  70 40 9d e5                                      ldr r4, [sp, #0x70]
00635d0c  03 30 94 e7                                      ldr r3, [r4, r3]
00635d10  00 30 93 e5                                      ldr r3, [r3]
00635d14  00 00 53 e3                                      cmp r3, #0
00635d18  b4 30 8d e5                                      str r3, [sp, #0xb4]
00635d1c  00 20 93 15                                      ldrne r2, [r3]
00635d20  01 20 82 12                                      addne r2, r2, #1
00635d24  00 20 83 15                                      strne r2, [r3]
00635d28  88 c0 9d e5                                      ldr ip, [sp, #0x88]
00635d2c  00 00 5c e3                                      cmp ip, #0
00635d30  ed 00 00 0a                                      beq #0x6360ec
00635d34  b4 b0 9d e5                                      ldr fp, [sp, #0xb4]
00635d38  00 00 5b e3                                      cmp fp, #0
00635d3c  0c 01 00 0a                                      beq #0x636174
00635d40  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00635d44  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00635d48  00 00 90 e5                                      ldr r0, [r0]
00635d4c  20 00 8d e5                                      str r0, [sp, #0x20]
00635d50  be 10 db e1                                      ldrh r1, [fp, #0xe]
00635d54  00 00 52 e1                                      cmp r2, r0
00635d58  18 10 8d e5                                      str r1, [sp, #0x18]
00635d5c  12 01 00 0a                                      beq #0x6361ac
00635d60  b4 30 8d e2                                      add r3, sp, #0xb4
00635d64  00 60 a0 e3                                      mov r6, #0
00635d68  14 30 8d e5                                      str r3, [sp, #0x14]
00635d6c  05 00 00 ea                                      b #0x635d88
00635d70  20 30 9d e5                                      ldr r3, [sp, #0x20]
00635d74  6c 40 9d e5                                      ldr r4, [sp, #0x6c]
00635d78  00 30 93 e5                                      ldr r3, [r3]
00635d7c  03 00 54 e1                                      cmp r4, r3
00635d80  20 30 8d e5                                      str r3, [sp, #0x20]
00635d84  03 01 00 0a                                      beq #0x636198
00635d88  20 40 9d e5                                      ldr r4, [sp, #0x20]
00635d8c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00635d90  10 40 94 e5                                      ldr r4, [r4, #0x10]
00635d94  06 00 5c e1                                      cmp ip, r6
00635d98  1c 40 8d e5                                      str r4, [sp, #0x1c]
00635d9c  10 50 94 e5                                      ldr r5, [r4, #0x10]
00635da0  f2 ff ff 9a                                      bls #0x635d70
00635da4  00 40 a0 e3                                      mov r4, #0
00635da8  be 30 db e1                                      ldrh r3, [fp, #0xe]
00635dac  06 00 53 e1                                      cmp r3, r6
00635db0  20 30 9b 85                                      ldrhi r3, [fp, #0x20]
00635db4  00 30 a0 93                                      movls r3, #0
00635db8  06 32 83 80                                      addhi r3, r3, r6, lsl #4
00635dbc  04 00 55 e1                                      cmp r5, r4
00635dc0  ea ff ff da                                      ble #0x635d70
00635dc4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00635dc8  18 10 a0 e3                                      mov r1, #0x18
00635dcc  00 a0 93 e5                                      ldr sl, [r3]
00635dd0  91 04 07 e0                                      mul r7, r1, r4
00635dd4  14 80 90 e5                                      ldr r8, [r0, #0x14]
00635dd8  00 00 5a e3                                      cmp sl, #0
00635ddc  04 90 8a e2                                      add sb, sl, #4
00635de0  09 10 a0 11                                      movne r1, sb
00635de4  00 10 a0 03                                      moveq r1, #0
00635de8  07 00 98 e7                                      ldr r0, [r8, r7]
00635dec  4a 61 f3 eb                                      bl #0x30e31c
00635df0  00 00 50 e3                                      cmp r0, #0
00635df4  07 20 88 e0                                      add r2, r8, r7
00635df8  0b 00 00 0a                                      beq #0x635e2c
00635dfc  01 40 84 e2                                      add r4, r4, #1
00635e00  05 00 54 e1                                      cmp r4, r5
00635e04  18 70 87 e2                                      add r7, r7, #0x18
00635e08  d8 ff ff 0a                                      beq #0x635d70
00635e0c  00 00 5a e3                                      cmp sl, #0
00635e10  09 10 a0 11                                      movne r1, sb
00635e14  00 10 a0 03                                      moveq r1, #0
00635e18  07 00 98 e7                                      ldr r0, [r8, r7]
00635e1c  3e 61 f3 eb                                      bl #0x30e31c
00635e20  00 00 50 e3                                      cmp r0, #0
00635e24  07 20 88 e0                                      add r2, r8, r7
00635e28  f3 ff ff 1a                                      bne #0x635dfc
00635e2c  04 00 55 e1                                      cmp r5, r4
00635e30  ce ff ff da                                      ble #0x635d70
00635e34  06 10 a0 e1                                      mov r1, r6
00635e38  14 00 9d e5                                      ldr r0, [sp, #0x14]
00635e3c  68 30 9d e5                                      ldr r3, [sp, #0x68]
00635e40  9f f1 ff eb                                      bl #0x6324c4
00635e44  18 20 9d e5                                      ldr r2, [sp, #0x18]
00635e48  01 60 86 e2                                      add r6, r6, #1
00635e4c  76 60 ff e6                                      uxth r6, r6
00635e50  02 00 56 e1                                      cmp r6, r2
00635e54  a2 00 00 2a                                      bhs #0x6360e4
00635e58  b4 b0 9d e5                                      ldr fp, [sp, #0xb4]
00635e5c  d1 ff ff ea                                      b #0x635da8
00635e60  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00635e64  08 00 90 e5                                      ldr r0, [r0, #8]
00635e68  00 00 50 e3                                      cmp r0, #0
00635e6c  64 00 8d e5                                      str r0, [sp, #0x64]
00635e70  92 ff ff da                                      ble #0x635cc0
00635e74  00 10 a0 e3                                      mov r1, #0
00635e78  5c 10 8d e5                                      str r1, [sp, #0x5c]
00635e7c  54 10 8d e5                                      str r1, [sp, #0x54]
00635e80  54 20 9d e5                                      ldr r2, [sp, #0x54]
00635e84  60 30 9d e5                                      ldr r3, [sp, #0x60]
00635e88  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
00635e8c  02 41 83 e0                                      add r4, r3, r2, lsl #2
00635e90  28 40 8d e5                                      str r4, [sp, #0x28]
00635e94  00 00 51 e3                                      cmp r1, #0
00635e98  7f ff ff 0a                                      beq #0x635c9c
00635e9c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635ea0  93 87 fe eb                                      bl #0x5d7cf4
00635ea4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00635ea8  00 b0 a0 e1                                      mov fp, r0
00635eac  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00635eb0  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00635eb4  00 30 83 e0                                      add r3, r3, r0
00635eb8  34 30 8d e5                                      str r3, [sp, #0x34]
00635ebc  04 10 93 e5                                      ldr r1, [r3, #4]
00635ec0  00 00 51 e3                                      cmp r1, #0
00635ec4  4c 10 8d e5                                      str r1, [sp, #0x4c]
00635ec8  73 ff ff da                                      ble #0x635c9c
00635ecc  00 20 a0 e3                                      mov r2, #0
00635ed0  3c 20 8d e5                                      str r2, [sp, #0x3c]
00635ed4  38 20 8d e5                                      str r2, [sp, #0x38]
00635ed8  34 40 9d e5                                      ldr r4, [sp, #0x34]
00635edc  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00635ee0  08 30 94 e5                                      ldr r3, [r4, #8]
00635ee4  0c 30 83 e0                                      add r3, r3, ip
00635ee8  18 30 8d e5                                      str r3, [sp, #0x18]
00635eec  d8 00 93 e5                                      ldr r0, [r3, #0xd8]
00635ef0  00 00 50 e3                                      cmp r0, #0
00635ef4  14 00 8d e5                                      str r0, [sp, #0x14]
00635ef8  5e ff ff da                                      ble #0x635c78
00635efc  38 10 9d e5                                      ldr r1, [sp, #0x38]
00635f00  34 30 a0 e3                                      mov r3, #0x34
00635f04  00 40 a0 e3                                      mov r4, #0
00635f08  71 10 ef e6                                      uxtb r1, r1
00635f0c  93 01 03 e0                                      mul r3, r3, r1
00635f10  20 10 8d e5                                      str r1, [sp, #0x20]
00635f14  1c 30 8d e5                                      str r3, [sp, #0x1c]
00635f18  04 70 a0 e1                                      mov r7, r4
00635f1c  17 00 00 ea                                      b #0x635f80
00635f20  02 30 d5 e5                                      ldrb r3, [r5, #2]
00635f24  01 00 53 e3                                      cmp r3, #1
00635f28  43 00 00 0a                                      beq #0x63603c
00635f2c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00635f30  08 30 95 e5                                      ldr r3, [r5, #8]
00635f34  18 00 a0 e3                                      mov r0, #0x18
00635f38  14 20 9c e5                                      ldr r2, [ip, #0x14]
00635f3c  90 23 22 e0                                      mla r2, r0, r3, r2
00635f40  04 20 92 e5                                      ldr r2, [r2, #4]
00635f44  11 00 52 e3                                      cmp r2, #0x11
00635f48  2d 00 00 0a                                      beq #0x636004
00635f4c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00635f50  03 11 90 e7                                      ldr r1, [r0, r3, lsl #2]
00635f54  28 30 9d e5                                      ldr r3, [sp, #0x28]
00635f58  24 00 9d e5                                      ldr r0, [sp, #0x24]
00635f5c  00 20 93 e5                                      ldr r2, [r3]
00635f60  20 30 9d e5                                      ldr r3, [sp, #0x20]
00635f64  00 05 8d e8                                      stm sp, {r8, sl}
00635f68  15 ef ff eb                                      bl #0x631bc4
00635f6c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00635f70  01 70 87 e2                                      add r7, r7, #1
00635f74  0c 40 84 e2                                      add r4, r4, #0xc
00635f78  0c 00 57 e1                                      cmp r7, ip
00635f7c  3d ff ff 0a                                      beq #0x635c78
00635f80  18 20 9d e5                                      ldr r2, [sp, #0x18]
00635f84  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00635f88  00 30 a0 e3                                      mov r3, #0
00635f8c  dc 60 92 e5                                      ldr r6, [r2, #0xdc]
00635f90  08 20 9b e5                                      ldr r2, [fp, #8]
00635f94  04 50 86 e0                                      add r5, r6, r4
00635f98  0c 20 82 e0                                      add r2, r2, ip
00635f9c  20 90 92 e5                                      ldr sb, [r2, #0x20]
00635fa0  03 a0 d5 e5                                      ldrb sl, [r5, #3]
00635fa4  b4 10 96 e1                                      ldrh r1, [r6, r4]
00635fa8  09 00 a0 e1                                      mov r0, sb
00635fac  0a 20 a0 e1                                      mov r2, sl
00635fb0  4b ba fe eb                                      bl #0x5e48e4
00635fb4  00 80 a0 e1                                      mov r8, r0
00635fb8  ff 0f 0f e3                                      movw r0, #0xffff
00635fbc  00 00 58 e1                                      cmp r8, r0
00635fc0  d6 ff ff 1a                                      bne #0x635f20
00635fc4  b4 60 96 e1                                      ldrh r6, [r6, r4]
00635fc8  34 10 9d e5                                      ldr r1, [sp, #0x34]
00635fcc  ff 00 56 e3                                      cmp r6, #0xff
00635fd0  00 50 91 e5                                      ldr r5, [r1]
00635fd4  50 c0 9d 05                                      ldreq ip, [sp, #0x50]
00635fd8  02 00 00 0a                                      beq #0x635fe8
00635fdc  00 00 a0 e3                                      mov r0, #0
00635fe0  2f c8 fe eb                                      bl #0x5e80a4
00635fe4  06 c1 90 e7                                      ldr ip, [r0, r6, lsl #2]
00635fe8  05 30 a0 e1                                      mov r3, r5
00635fec  03 00 a0 e3                                      mov r0, #3
00635ff0  44 10 9d e5                                      ldr r1, [sp, #0x44]
00635ff4  40 20 9d e5                                      ldr r2, [sp, #0x40]
00635ff8  00 c0 8d e5                                      str ip, [sp]
00635ffc  0c 54 ff eb                                      bl #0x60b034
00636000  d9 ff ff ea                                      b #0x635f6c
00636004  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00636008  05 20 8a e2                                      add r2, sl, #5
0063600c  82 21 99 e7                                      ldr r2, [sb, r2, lsl #3]
00636010  28 00 9d e5                                      ldr r0, [sp, #0x28]
00636014  03 11 9c e7                                      ldr r1, [ip, r3, lsl #2]
00636018  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0063601c  08 22 82 e0                                      add r2, r2, r8, lsl #4
00636020  00 30 90 e5                                      ldr r3, [r0]
00636024  b4 20 d2 e1                                      ldrh r2, [r2, #4]
00636028  24 00 9d e5                                      ldr r0, [sp, #0x24]
0063602c  00 05 8d e9                                      stmib sp, {r8, sl}
00636030  00 c0 8d e5                                      str ip, [sp]
00636034  00 92 fe eb                                      bl #0x5da83c
00636038  cb ff ff ea                                      b #0x635f6c
0063603c  48 20 9d e5                                      ldr r2, [sp, #0x48]
00636040  08 10 95 e5                                      ldr r1, [r5, #8]
00636044  e4 00 92 e5                                      ldr r0, [r2, #0xe4]
00636048  ca 14 fe eb                                      bl #0x5bb378
0063604c  ff 3f 0f e3                                      movw r3, #0xffff
00636050  03 00 50 e1                                      cmp r0, r3
00636054  07 00 00 0a                                      beq #0x636078
00636058  28 10 9d e5                                      ldr r1, [sp, #0x28]
0063605c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00636060  00 20 91 e5                                      ldr r2, [r1]
00636064  00 10 a0 e1                                      mov r1, r0
00636068  24 00 9d e5                                      ldr r0, [sp, #0x24]
0063606c  00 05 8d e8                                      stm sp, {r8, sl}
00636070  9e 91 fe eb                                      bl #0x5da6f0
00636074  bc ff ff ea                                      b #0x635f6c
00636078  05 30 8a e2                                      add r3, sl, #5
0063607c  83 31 99 e7                                      ldr r3, [sb, r3, lsl #3]
00636080  08 32 83 e0                                      add r3, r3, r8, lsl #4
00636084  b4 20 d3 e1                                      ldrh r2, [r3, #4]
00636088  12 00 52 e3                                      cmp r2, #0x12
0063608c  0d 00 00 da                                      ble #0x6360c8
00636090  1b 00 52 e3                                      cmp r2, #0x1b
00636094  0b 00 00 ca                                      bgt #0x6360c8
00636098  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0063609c  08 10 95 e5                                      ldr r1, [r5, #8]
006360a0  12 20 a0 e3                                      mov r2, #0x12
006360a4  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
006360a8  02 e0 a0 e1                                      mov lr, r2
006360ac  08 c0 93 e5                                      ldr ip, [r3, #8]
006360b0  00 c0 8d e5                                      str ip, [sp]
006360b4  07 c0 d3 e5                                      ldrb ip, [r3, #7]
006360b8  0e 30 a0 e1                                      mov r3, lr
006360bc  04 c0 8d e5                                      str ip, [sp, #4]
006360c0  ab 18 fe eb                                      bl #0x5bc374
006360c4  e3 ff ff ea                                      b #0x636058
006360c8  12 00 52 e3                                      cmp r2, #0x12
006360cc  f1 ff ff 0a                                      beq #0x636098
006360d0  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006360d4  08 10 95 e5                                      ldr r1, [r5, #8]
006360d8  06 e0 d3 e5                                      ldrb lr, [r3, #6]
006360dc  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
006360e0  f1 ff ff ea                                      b #0x6360ac
006360e4  b4 b0 9d e5                                      ldr fp, [sp, #0xb4]
006360e8  20 ff ff ea                                      b #0x635d70
006360ec  b4 b0 9d e5                                      ldr fp, [sp, #0xb4]
006360f0  00 00 5b e3                                      cmp fp, #0
006360f4  1e 00 00 0a                                      beq #0x636174
006360f8  78 00 9d e5                                      ldr r0, [sp, #0x78]
006360fc  b4 10 8d e2                                      add r1, sp, #0xb4
00636100  00 b0 80 e5                                      str fp, [r0]
00636104  14 10 8d e5                                      str r1, [sp, #0x14]
00636108  00 30 9b e5                                      ldr r3, [fp]
0063610c  01 30 83 e2                                      add r3, r3, #1
00636110  00 30 8b e5                                      str r3, [fp]
00636114  14 00 9d e5                                      ldr r0, [sp, #0x14]
00636118  66 70 f4 eb                                      bl #0x3522b8
0063611c  60 10 9d e5                                      ldr r1, [sp, #0x60]
00636120  00 00 51 e3                                      cmp r1, #0
00636124  01 00 00 0a                                      beq #0x636130
00636128  01 00 a0 e1                                      mov r0, r1
0063612c  55 f9 fb eb                                      bl #0x534688
00636130  30 20 9d e5                                      ldr r2, [sp, #0x30]
00636134  00 00 52 e3                                      cmp r2, #0
00636138  01 00 00 0a                                      beq #0x636144
0063613c  02 00 a0 e1                                      mov r0, r2
00636140  50 f9 fb eb                                      bl #0x534688
00636144  84 00 9d e5                                      ldr r0, [sp, #0x84]
00636148  46 f8 fb eb                                      bl #0x534268
0063614c  70 c0 9d e5                                      ldr ip, [sp, #0x70]
00636150  80 40 9d e5                                      ldr r4, [sp, #0x80]
00636154  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
00636158  78 00 9d e5                                      ldr r0, [sp, #0x78]
0063615c  04 30 9c e7                                      ldr r3, [ip, r4]
00636160  00 30 93 e5                                      ldr r3, [r3]
00636164  03 00 52 e1                                      cmp r2, r3
00636168  14 00 00 1a                                      bne #0x6361c0
0063616c  d4 d0 8d e2                                      add sp, sp, #0xd4
00636170  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00636174  68 10 9f e5                                      ldr r1, [pc, #0x68]
00636178  40 20 9d e5                                      ldr r2, [sp, #0x40]
0063617c  03 00 a0 e3                                      mov r0, #3
00636180  01 10 8f e0                                      add r1, pc, r1
00636184  aa 53 ff eb                                      bl #0x60b034
00636188  d0 c0 8d e2                                      add ip, sp, #0xd0
0063618c  14 c0 8d e5                                      str ip, [sp, #0x14]
00636190  1c b0 3c e5                                      ldr fp, [ip, #-0x1c]!
00636194  14 c0 8d e5                                      str ip, [sp, #0x14]
00636198  78 00 9d e5                                      ldr r0, [sp, #0x78]
0063619c  00 00 5b e3                                      cmp fp, #0
006361a0  00 b0 80 e5                                      str fp, [r0]
006361a4  d7 ff ff 1a                                      bne #0x636108
006361a8  d9 ff ff ea                                      b #0x636114
006361ac  78 20 9d e5                                      ldr r2, [sp, #0x78]
006361b0  b4 30 8d e2                                      add r3, sp, #0xb4
006361b4  00 b0 82 e5                                      str fp, [r2]
006361b8  14 30 8d e5                                      str r3, [sp, #0x14]
006361bc  d1 ff ff ea                                      b #0x636108
006361c0  52 60 f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006361c4  d8 f2 35 00 ac 40 00 00 dc c5 28 00 30 f7 2a 00  .byte 0xd8, 0xf2, 0x35, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0xc5, 0x28, 0x00, 0x30, 0xf7, 0x2a, 0x00
006361d4  74 0b 29 00 e8 21 00 00 10 f4 2a 00 dc 30 00 00  .byte 0x74, 0x0b, 0x29, 0x00, 0xe8, 0x21, 0x00, 0x00, 0x10, 0xf4, 0x2a, 0x00, 0xdc, 0x30, 0x00, 0x00
006361e4  b0 ee 2a 00                                      .byte 0xb0, 0xee, 0x2a, 0x00

; FUNCTION 0x006361e8, declared_size=2436, range_size=2436, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada
; alias: _ZN6glitch7collada32createMaterialRendererForProfileINS0_19SProfileGLES2TraitsEEEN5boost13intrusive_ptrINS_5video17CMaterialRendererEEERKNS0_16CColladaDatabaseEPNS5_12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
; demangled: boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006361e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006361ec  64 19 9f e5                                      ldr r1, [pc, #0x964]
006361f0  ac d0 4d e2                                      sub sp, sp, #0xac
006361f4  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
006361f8  68 10 8d e5                                      str r1, [sp, #0x68]
006361fc  64 00 8d e5                                      str r0, [sp, #0x64]
00636200  00 10 9c e5                                      ldr r1, [ip]
00636204  68 00 9d e5                                      ldr r0, [sp, #0x68]
00636208  40 30 8d e5                                      str r3, [sp, #0x40]
0063620c  0c 00 51 e1                                      cmp r1, ip
00636210  64 10 9d 05                                      ldreq r1, [sp, #0x64]
00636214  00 00 8f e0                                      add r0, pc, r0
00636218  00 30 a0 03                                      moveq r3, #0
0063621c  68 00 8d e5                                      str r0, [sp, #0x68]
00636220  3c 20 8d e5                                      str r2, [sp, #0x3c]
00636224  00 30 81 05                                      streq r3, [r1]
00636228  34 02 00 0a                                      beq #0x636b00
0063622c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00636230  dc 20 92 e5                                      ldr r2, [r2, #0xdc]
00636234  24 20 8d e5                                      str r2, [sp, #0x24]
00636238  05 f8 fb eb                                      bl #0x534254
0063623c  6c 00 8d e5                                      str r0, [sp, #0x6c]
00636240  01 00 a0 e3                                      mov r0, #1
00636244  07 f8 fb eb                                      bl #0x534268
00636248  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
0063624c  00 30 9c e5                                      ldr r3, [ip]
00636250  03 00 5c e1                                      cmp ip, r3
00636254  00 40 a0 03                                      moveq r4, #0
00636258  04 00 a0 01                                      moveq r0, r4
0063625c  10 00 00 0a                                      beq #0x6362a4
00636260  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
00636264  00 40 a0 e3                                      mov r4, #0
00636268  04 00 a0 e1                                      mov r0, r4
0063626c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00636270  00 30 93 e5                                      ldr r3, [r3]
00636274  20 10 92 e5                                      ldr r1, [r2, #0x20]
00636278  28 20 92 e5                                      ldr r2, [r2, #0x28]
0063627c  01 00 54 e1                                      cmp r4, r1
00636280  01 40 a0 31                                      movlo r4, r1
00636284  02 00 50 e1                                      cmp r0, r2
00636288  02 00 a0 31                                      movlo r0, r2
0063628c  03 00 5c e1                                      cmp ip, r3
00636290  f5 ff ff 1a                                      bne #0x63626c
00636294  00 00 50 e3                                      cmp r0, #0
00636298  01 00 00 0a                                      beq #0x6362a4
0063629c  00 01 a0 e1                                      lsl r0, r0, #2
006362a0  d3 f8 fb eb                                      bl #0x5345f4
006362a4  00 00 54 e3                                      cmp r4, #0
006362a8  2c 00 8d e5                                      str r0, [sp, #0x2c]
006362ac  54 40 8d 05                                      streq r4, [sp, #0x54]
006362b0  02 00 00 0a                                      beq #0x6362c0
006362b4  04 01 a0 e1                                      lsl r0, r4, #2
006362b8  cd f8 fb eb                                      bl #0x5345f4
006362bc  54 00 8d e5                                      str r0, [sp, #0x54]
006362c0  24 00 9d e5                                      ldr r0, [sp, #0x24]
006362c4  40 10 9d e5                                      ldr r1, [sp, #0x40]
006362c8  01 20 a0 e3                                      mov r2, #1
006362cc  06 9e fe eb                                      bl #0x5ddaec
006362d0  00 00 50 e3                                      cmp r0, #0
006362d4  70 00 8d e5                                      str r0, [sp, #0x70]
006362d8  f5 00 00 0a                                      beq #0x6366b4
006362dc  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
006362e0  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006362e4  00 00 90 e5                                      ldr r0, [r0]
006362e8  00 00 51 e1                                      cmp r1, r0
006362ec  60 00 8d e5                                      str r0, [sp, #0x60]
006362f0  ef 00 00 0a                                      beq #0x6366b4
006362f4  60 38 9f e5                                      ldr r3, [pc, #0x860]
006362f8  01 20 a0 e3                                      mov r2, #1
006362fc  34 20 8d e5                                      str r2, [sp, #0x34]
00636300  03 30 8f e0                                      add r3, pc, r3
00636304  44 30 8d e5                                      str r3, [sp, #0x44]
00636308  50 38 9f e5                                      ldr r3, [pc, #0x850]
0063630c  03 30 8f e0                                      add r3, pc, r3
00636310  74 30 8d e5                                      str r3, [sp, #0x74]
00636314  a0 30 8d e2                                      add r3, sp, #0xa0
00636318  4c 30 8d e5                                      str r3, [sp, #0x4c]
0063631c  60 c0 9d e5                                      ldr ip, [sp, #0x60]
00636320  10 c0 9c e5                                      ldr ip, [ip, #0x10]
00636324  28 c0 8d e5                                      str ip, [sp, #0x28]
00636328  20 00 9c e5                                      ldr r0, [ip, #0x20]
0063632c  38 00 8d e5                                      str r0, [sp, #0x38]
00636330  28 30 9c e5                                      ldr r3, [ip, #0x28]
00636334  50 20 bd e7                                      sbfx r2, r0, #0, #0x1e
00636338  00 00 53 e3                                      cmp r3, #0
0063633c  00 30 a0 d3                                      movle r3, #0
00636340  01 30 a0 c3                                      movgt r3, #1
00636344  00 00 52 e3                                      cmp r2, #0
00636348  50 30 8d e5                                      str r3, [sp, #0x50]
0063634c  09 00 00 da                                      ble #0x636378
00636350  54 00 9d e5                                      ldr r0, [sp, #0x54]
00636354  00 30 a0 e3                                      mov r3, #0
00636358  03 10 a0 e1                                      mov r1, r3
0063635c  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00636360  01 30 83 e2                                      add r3, r3, #1
00636364  02 00 53 e1                                      cmp r3, r2
00636368  fb ff ff 1a                                      bne #0x63635c
0063636c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00636370  20 10 91 e5                                      ldr r1, [r1, #0x20]
00636374  38 10 8d e5                                      str r1, [sp, #0x38]
00636378  38 20 9d e5                                      ldr r2, [sp, #0x38]
0063637c  00 00 52 e3                                      cmp r2, #0
00636380  00 80 a0 d3                                      movle r8, #0
00636384  6c 00 00 da                                      ble #0x63653c
00636388  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0063638c  00 30 a0 e3                                      mov r3, #0
00636390  a4 00 8d e2                                      add r0, sp, #0xa4
00636394  01 c0 2c e2                                      eor ip, ip, #1
00636398  18 30 8d e5                                      str r3, [sp, #0x18]
0063639c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006363a0  20 30 8d e5                                      str r3, [sp, #0x20]
006363a4  03 80 a0 e1                                      mov r8, r3
006363a8  48 c0 8d e5                                      str ip, [sp, #0x48]
006363ac  78 a0 8d e2                                      add sl, sp, #0x78
006363b0  9c b0 8d e2                                      add fp, sp, #0x9c
006363b4  14 00 8d e5                                      str r0, [sp, #0x14]
006363b8  24 90 9d e5                                      ldr sb, [sp, #0x24]
006363bc  13 00 00 ea                                      b #0x636410
006363c0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006363c4  54 00 9d e5                                      ldr r0, [sp, #0x54]
006363c8  01 00 80 e0                                      add r0, r0, r1
006363cc  30 00 8d e5                                      str r0, [sp, #0x30]
006363d0  30 10 9d e5                                      ldr r1, [sp, #0x30]
006363d4  00 50 91 e5                                      ldr r5, [r1]
006363d8  00 00 55 e3                                      cmp r5, #0
006363dc  1f 00 00 0a                                      beq #0x636460
006363e0  20 20 9d e5                                      ldr r2, [sp, #0x20]
006363e4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006363e8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006363ec  38 30 9d e5                                      ldr r3, [sp, #0x38]
006363f0  01 20 82 e2                                      add r2, r2, #1
006363f4  0c c0 8c e2                                      add ip, ip, #0xc
006363f8  04 00 80 e2                                      add r0, r0, #4
006363fc  03 00 52 e1                                      cmp r2, r3
00636400  20 20 8d e5                                      str r2, [sp, #0x20]
00636404  1c c0 8d e5                                      str ip, [sp, #0x1c]
00636408  18 00 8d e5                                      str r0, [sp, #0x18]
0063640c  4a 00 00 0a                                      beq #0x63653c
00636410  28 10 9d e5                                      ldr r1, [sp, #0x28]
00636414  34 20 9d e5                                      ldr r2, [sp, #0x34]
00636418  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0063641c  24 30 91 e5                                      ldr r3, [r1, #0x24]
00636420  00 00 52 e3                                      cmp r2, #0
00636424  0c 70 83 e0                                      add r7, r3, ip
00636428  e4 ff ff 1a                                      bne #0x6363c0
0063642c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00636430  09 00 a0 e1                                      mov r0, sb
00636434  02 10 93 e7                                      ldr r1, [r3, r2]
00636438  c2 95 fe eb                                      bl #0x5dbb48
0063643c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00636440  18 30 9d e5                                      ldr r3, [sp, #0x18]
00636444  03 00 8c e7                                      str r0, [ip, r3]
00636448  03 00 8c e0                                      add r0, ip, r3
0063644c  30 00 8d e5                                      str r0, [sp, #0x30]
00636450  30 10 9d e5                                      ldr r1, [sp, #0x30]
00636454  00 50 91 e5                                      ldr r5, [r1]
00636458  00 00 55 e3                                      cmp r5, #0
0063645c  df ff ff 1a                                      bne #0x6363e0
00636460  09 00 a0 e1                                      mov r0, sb
00636464  00 10 97 e5                                      ldr r1, [r7]
00636468  01 20 a0 e3                                      mov r2, #1
0063646c  e6 9c fe eb                                      bl #0x5dd80c
00636470  00 00 50 e3                                      cmp r0, #0
00636474  d9 ff ff 0a                                      beq #0x6363e0
00636478  04 20 97 e5                                      ldr r2, [r7, #4]
0063647c  00 00 52 e3                                      cmp r2, #0
00636480  10 20 8d e5                                      str r2, [sp, #0x10]
00636484  25 00 00 da                                      ble #0x636520
00636488  05 60 a0 e1                                      mov r6, r5
0063648c  08 40 97 e5                                      ldr r4, [r7, #8]
00636490  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00636494  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00636498  05 40 84 e0                                      add r4, r4, r5
0063649c  04 20 a0 e1                                      mov r2, r4
006364a0  d8 10 93 e5                                      ldr r1, [r3, #0xd8]
006364a4  a1 f9 ff eb                                      bl #0x634b30
006364a8  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006364ac  1c 10 84 e2                                      add r1, r4, #0x1c
006364b0  0a 00 a0 e1                                      mov r0, sl
006364b4  00 00 53 e3                                      cmp r3, #0
006364b8  9c 30 8d e5                                      str r3, [sp, #0x9c]
006364bc  04 20 93 15                                      ldrne r2, [r3, #4]
006364c0  01 60 86 e2                                      add r6, r6, #1
006364c4  74 50 85 e2                                      add r5, r5, #0x74
006364c8  01 20 82 12                                      addne r2, r2, #1
006364cc  04 20 83 15                                      strne r2, [r3, #4]
006364d0  4e 85 fe eb                                      bl #0x5d7a10
006364d4  09 00 a0 e1                                      mov r0, sb
006364d8  0b 10 a0 e1                                      mov r1, fp
006364dc  0a 20 a0 e1                                      mov r2, sl
006364e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006364e4  90 9a fe eb                                      bl #0x5dcf2c
006364e8  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
006364ec  00 00 50 e3                                      cmp r0, #0
006364f0  00 00 00 0a                                      beq #0x6364f8
006364f4  22 9c f3 eb                                      bl #0x31d584
006364f8  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
006364fc  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
00636500  00 00 53 e3                                      cmp r3, #0
00636504  01 80 a0 c3                                      movgt r8, #1
00636508  00 00 50 e3                                      cmp r0, #0
0063650c  00 00 00 0a                                      beq #0x636514
00636510  1b 9c f3 eb                                      bl #0x31d584
00636514  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00636518  0c 00 56 e1                                      cmp r6, ip
0063651c  da ff ff 1a                                      bne #0x63648c
00636520  48 10 9d e5                                      ldr r1, [sp, #0x48]
00636524  09 00 a0 e1                                      mov r0, sb
00636528  00 20 a0 e3                                      mov r2, #0
0063652c  4c 9c fe eb                                      bl #0x5dd664
00636530  30 10 9d e5                                      ldr r1, [sp, #0x30]
00636534  00 00 81 e5                                      str r0, [r1]
00636538  a8 ff ff ea                                      b #0x6363e0
0063653c  50 10 9d e5                                      ldr r1, [sp, #0x50]
00636540  00 00 51 e3                                      cmp r1, #0
00636544  01 00 00 1a                                      bne #0x636550
00636548  00 00 58 e3                                      cmp r8, #0
0063654c  50 00 00 0a                                      beq #0x636694
00636550  28 20 9d e5                                      ldr r2, [sp, #0x28]
00636554  28 a0 92 e5                                      ldr sl, [r2, #0x28]
00636558  5a 20 bd e7                                      sbfx r2, sl, #0, #0x1e
0063655c  00 00 52 e3                                      cmp r2, #0
00636560  08 00 00 da                                      ble #0x636588
00636564  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00636568  00 30 a0 e3                                      mov r3, #0
0063656c  03 10 a0 e1                                      mov r1, r3
00636570  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00636574  01 30 83 e2                                      add r3, r3, #1
00636578  02 00 53 e1                                      cmp r3, r2
0063657c  fb ff ff 1a                                      bne #0x636570
00636580  28 30 9d e5                                      ldr r3, [sp, #0x28]
00636584  28 a0 93 e5                                      ldr sl, [r3, #0x28]
00636588  00 00 5a e3                                      cmp sl, #0
0063658c  a8 00 00 da                                      ble #0x636834
00636590  00 40 a0 e3                                      mov r4, #0
00636594  04 60 a0 e1                                      mov r6, r4
00636598  04 80 a0 e1                                      mov r8, r4
0063659c  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
006365a0  74 b0 9d e5                                      ldr fp, [sp, #0x74]
006365a4  07 00 00 ea                                      b #0x6365c8
006365a8  00 30 97 e5                                      ldr r3, [r7]
006365ac  01 80 88 e2                                      add r8, r8, #1
006365b0  18 60 86 e2                                      add r6, r6, #0x18
006365b4  00 00 53 e3                                      cmp r3, #0
006365b8  1b 00 00 0a                                      beq #0x63662c
006365bc  0a 00 58 e1                                      cmp r8, sl
006365c0  04 40 84 e2                                      add r4, r4, #4
006365c4  9a 00 00 0a                                      beq #0x636834
006365c8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006365cc  40 20 9d e5                                      ldr r2, [sp, #0x40]
006365d0  02 00 a0 e3                                      mov r0, #2
006365d4  2c 30 9c e5                                      ldr r3, [ip, #0x2c]
006365d8  0b 10 a0 e1                                      mov r1, fp
006365dc  04 70 89 e0                                      add r7, sb, r4
006365e0  06 50 83 e0                                      add r5, r3, r6
006365e4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
006365e8  01 00 5c e3                                      cmp ip, #1
006365ec  01 00 00 da                                      ble #0x6365f8
006365f0  06 30 93 e7                                      ldr r3, [r3, r6]
006365f4  8e 52 ff eb                                      bl #0x60b034
006365f8  34 00 9d e5                                      ldr r0, [sp, #0x34]
006365fc  00 00 50 e3                                      cmp r0, #0
00636600  e8 ff ff 1a                                      bne #0x6365a8
00636604  00 10 95 e5                                      ldr r1, [r5]
00636608  24 00 9d e5                                      ldr r0, [sp, #0x24]
0063660c  51 ed ff eb                                      bl #0x631b58
00636610  04 70 89 e0                                      add r7, sb, r4
00636614  04 00 89 e7                                      str r0, [sb, r4]
00636618  00 30 97 e5                                      ldr r3, [r7]
0063661c  01 80 88 e2                                      add r8, r8, #1
00636620  18 60 86 e2                                      add r6, r6, #0x18
00636624  00 00 53 e3                                      cmp r3, #0
00636628  e3 ff ff 1a                                      bne #0x6365bc
0063662c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00636630  08 20 95 e5                                      ldr r2, [r5, #8]
00636634  24 00 9d e5                                      ldr r0, [sp, #0x24]
00636638  00 30 93 e5                                      ldr r3, [r3]
0063663c  00 10 95 e5                                      ldr r1, [r5]
00636640  82 ed ff eb                                      bl #0x631c50
00636644  00 00 87 e5                                      str r0, [r7]
00636648  db ff ff ea                                      b #0x6365bc
0063664c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00636650  34 20 9d e5                                      ldr r2, [sp, #0x34]
00636654  48 10 9d e5                                      ldr r1, [sp, #0x48]
00636658  01 00 80 e2                                      add r0, r0, #1
0063665c  74 20 82 e2                                      add r2, r2, #0x74
00636660  01 00 50 e1                                      cmp r0, r1
00636664  30 00 8d e5                                      str r0, [sp, #0x30]
00636668  34 20 8d e5                                      str r2, [sp, #0x34]
0063666c  8e 00 00 1a                                      bne #0x6368ac
00636670  50 30 9d e5                                      ldr r3, [sp, #0x50]
00636674  58 00 9d e5                                      ldr r0, [sp, #0x58]
00636678  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
0063667c  01 30 83 e2                                      add r3, r3, #1
00636680  0c 00 80 e2                                      add r0, r0, #0xc
00636684  0c 00 53 e1                                      cmp r3, ip
00636688  50 30 8d e5                                      str r3, [sp, #0x50]
0063668c  58 00 8d e5                                      str r0, [sp, #0x58]
00636690  6f 00 00 1a                                      bne #0x636854
00636694  60 10 9d e5                                      ldr r1, [sp, #0x60]
00636698  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
0063669c  00 20 a0 e3                                      mov r2, #0
006366a0  00 10 91 e5                                      ldr r1, [r1]
006366a4  34 20 8d e5                                      str r2, [sp, #0x34]
006366a8  01 00 53 e1                                      cmp r3, r1
006366ac  60 10 8d e5                                      str r1, [sp, #0x60]
006366b0  19 ff ff 1a                                      bne #0x63631c
006366b4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006366b8  bd 9d fe eb                                      bl #0x5dddb4
006366bc  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006366c0  18 30 9c e5                                      ldr r3, [ip, #0x18]
006366c4  1c 20 9c e5                                      ldr r2, [ip, #0x1c]
006366c8  02 20 63 e0                                      rsb r2, r3, r2
006366cc  c2 01 50 e1                                      cmp r0, r2, asr #3
006366d0  80 31 83 30                                      addlo r3, r3, r0, lsl #3
006366d4  02 00 00 3a                                      blo #0x6366e4
006366d8  84 34 9f e5                                      ldr r3, [pc, #0x484]
006366dc  68 00 9d e5                                      ldr r0, [sp, #0x68]
006366e0  03 30 90 e7                                      ldr r3, [r0, r3]
006366e4  00 30 93 e5                                      ldr r3, [r3]
006366e8  00 00 53 e3                                      cmp r3, #0
006366ec  98 30 8d e5                                      str r3, [sp, #0x98]
006366f0  00 20 93 15                                      ldrne r2, [r3]
006366f4  01 20 82 12                                      addne r2, r2, #1
006366f8  00 20 83 15                                      strne r2, [r3]
006366fc  70 10 9d e5                                      ldr r1, [sp, #0x70]
00636700  00 00 51 e3                                      cmp r1, #0
00636704  e6 00 00 0a                                      beq #0x636aa4
00636708  98 b0 9d e5                                      ldr fp, [sp, #0x98]
0063670c  00 00 5b e3                                      cmp fp, #0
00636710  fd 00 00 0a                                      beq #0x636b0c
00636714  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
00636718  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
0063671c  00 20 92 e5                                      ldr r2, [r2]
00636720  1c 20 8d e5                                      str r2, [sp, #0x1c]
00636724  be 30 db e1                                      ldrh r3, [fp, #0xe]
00636728  02 00 5c e1                                      cmp ip, r2
0063672c  14 30 8d e5                                      str r3, [sp, #0x14]
00636730  03 01 00 0a                                      beq #0x636b44
00636734  98 00 8d e2                                      add r0, sp, #0x98
00636738  00 60 a0 e3                                      mov r6, #0
0063673c  10 00 8d e5                                      str r0, [sp, #0x10]
00636740  05 00 00 ea                                      b #0x63675c
00636744  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00636748  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
0063674c  00 10 91 e5                                      ldr r1, [r1]
00636750  01 00 52 e1                                      cmp r2, r1
00636754  1c 10 8d e5                                      str r1, [sp, #0x1c]
00636758  f4 00 00 0a                                      beq #0x636b30
0063675c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00636760  14 20 9d e5                                      ldr r2, [sp, #0x14]
00636764  10 10 91 e5                                      ldr r1, [r1, #0x10]
00636768  02 00 56 e1                                      cmp r6, r2
0063676c  18 10 8d e5                                      str r1, [sp, #0x18]
00636770  28 50 91 e5                                      ldr r5, [r1, #0x28]
00636774  f2 ff ff 2a                                      bhs #0x636744
00636778  00 40 a0 e3                                      mov r4, #0
0063677c  be 30 db e1                                      ldrh r3, [fp, #0xe]
00636780  06 00 53 e1                                      cmp r3, r6
00636784  20 30 9b 85                                      ldrhi r3, [fp, #0x20]
00636788  00 30 a0 93                                      movls r3, #0
0063678c  06 32 83 80                                      addhi r3, r3, r6, lsl #4
00636790  05 00 54 e1                                      cmp r4, r5
00636794  ea ff ff aa                                      bge #0x636744
00636798  00 a0 93 e5                                      ldr sl, [r3]
0063679c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006367a0  18 c0 a0 e3                                      mov ip, #0x18
006367a4  9c 04 07 e0                                      mul r7, ip, r4
006367a8  2c 80 93 e5                                      ldr r8, [r3, #0x2c]
006367ac  00 00 5a e3                                      cmp sl, #0
006367b0  04 90 8a e2                                      add sb, sl, #4
006367b4  09 10 a0 11                                      movne r1, sb
006367b8  00 10 a0 03                                      moveq r1, #0
006367bc  07 00 98 e7                                      ldr r0, [r8, r7]
006367c0  d5 5e f3 eb                                      bl #0x30e31c
006367c4  00 00 50 e3                                      cmp r0, #0
006367c8  07 20 88 e0                                      add r2, r8, r7
006367cc  0b 00 00 0a                                      beq #0x636800
006367d0  01 40 84 e2                                      add r4, r4, #1
006367d4  05 00 54 e1                                      cmp r4, r5
006367d8  18 70 87 e2                                      add r7, r7, #0x18
006367dc  d8 ff ff 0a                                      beq #0x636744
006367e0  00 00 5a e3                                      cmp sl, #0
006367e4  09 10 a0 11                                      movne r1, sb
006367e8  00 10 a0 03                                      moveq r1, #0
006367ec  07 00 98 e7                                      ldr r0, [r8, r7]
006367f0  c9 5e f3 eb                                      bl #0x30e31c
006367f4  00 00 50 e3                                      cmp r0, #0
006367f8  07 20 88 e0                                      add r2, r8, r7
006367fc  f3 ff ff 1a                                      bne #0x6367d0
00636800  04 00 55 e1                                      cmp r5, r4
00636804  ce ff ff da                                      ble #0x636744
00636808  06 10 a0 e1                                      mov r1, r6
0063680c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00636810  d4 30 9d e5                                      ldr r3, [sp, #0xd4]
00636814  2a ef ff eb                                      bl #0x6324c4
00636818  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063681c  01 60 86 e2                                      add r6, r6, #1
00636820  76 60 ff e6                                      uxth r6, r6
00636824  00 00 56 e1                                      cmp r6, r0
00636828  9b 00 00 2a                                      bhs #0x636a9c
0063682c  98 b0 9d e5                                      ldr fp, [sp, #0x98]
00636830  d1 ff ff ea                                      b #0x63677c
00636834  28 10 9d e5                                      ldr r1, [sp, #0x28]
00636838  20 10 91 e5                                      ldr r1, [r1, #0x20]
0063683c  00 00 51 e3                                      cmp r1, #0
00636840  5c 10 8d e5                                      str r1, [sp, #0x5c]
00636844  92 ff ff da                                      ble #0x636694
00636848  00 20 a0 e3                                      mov r2, #0
0063684c  58 20 8d e5                                      str r2, [sp, #0x58]
00636850  50 20 8d e5                                      str r2, [sp, #0x50]
00636854  50 30 9d e5                                      ldr r3, [sp, #0x50]
00636858  54 c0 9d e5                                      ldr ip, [sp, #0x54]
0063685c  03 11 9c e7                                      ldr r1, [ip, r3, lsl #2]
00636860  03 01 8c e0                                      add r0, ip, r3, lsl #2
00636864  20 00 8d e5                                      str r0, [sp, #0x20]
00636868  00 00 51 e3                                      cmp r1, #0
0063686c  7f ff ff 0a                                      beq #0x636670
00636870  24 00 9d e5                                      ldr r0, [sp, #0x24]
00636874  1e 85 fe eb                                      bl #0x5d7cf4
00636878  28 10 9d e5                                      ldr r1, [sp, #0x28]
0063687c  58 20 9d e5                                      ldr r2, [sp, #0x58]
00636880  00 b0 a0 e1                                      mov fp, r0
00636884  24 30 91 e5                                      ldr r3, [r1, #0x24]
00636888  02 30 83 e0                                      add r3, r3, r2
0063688c  38 30 8d e5                                      str r3, [sp, #0x38]
00636890  04 30 93 e5                                      ldr r3, [r3, #4]
00636894  00 00 53 e3                                      cmp r3, #0
00636898  48 30 8d e5                                      str r3, [sp, #0x48]
0063689c  73 ff ff da                                      ble #0x636670
006368a0  00 c0 a0 e3                                      mov ip, #0
006368a4  34 c0 8d e5                                      str ip, [sp, #0x34]
006368a8  30 c0 8d e5                                      str ip, [sp, #0x30]
006368ac  38 00 9d e5                                      ldr r0, [sp, #0x38]
006368b0  34 10 9d e5                                      ldr r1, [sp, #0x34]
006368b4  08 30 90 e5                                      ldr r3, [r0, #8]
006368b8  01 30 83 e0                                      add r3, r3, r1
006368bc  14 30 8d e5                                      str r3, [sp, #0x14]
006368c0  6c 20 93 e5                                      ldr r2, [r3, #0x6c]
006368c4  00 00 52 e3                                      cmp r2, #0
006368c8  10 20 8d e5                                      str r2, [sp, #0x10]
006368cc  5e ff ff da                                      ble #0x63664c
006368d0  30 30 9d e5                                      ldr r3, [sp, #0x30]
006368d4  34 c0 a0 e3                                      mov ip, #0x34
006368d8  00 40 a0 e3                                      mov r4, #0
006368dc  73 30 ef e6                                      uxtb r3, r3
006368e0  9c 03 0c e0                                      mul ip, ip, r3
006368e4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006368e8  18 c0 8d e5                                      str ip, [sp, #0x18]
006368ec  04 a0 a0 e1                                      mov sl, r4
006368f0  0c 00 00 ea                                      b #0x636928
006368f4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006368f8  03 11 90 e7                                      ldr r1, [r0, r3, lsl #2]
006368fc  20 30 9d e5                                      ldr r3, [sp, #0x20]
00636900  24 00 9d e5                                      ldr r0, [sp, #0x24]
00636904  00 20 93 e5                                      ldr r2, [r3]
00636908  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0063690c  40 01 8d e8                                      stm sp, {r6, r8}
00636910  ab ec ff eb                                      bl #0x631bc4
00636914  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00636918  01 a0 8a e2                                      add sl, sl, #1
0063691c  0c 40 84 e2                                      add r4, r4, #0xc
00636920  0c 00 5a e1                                      cmp sl, ip
00636924  48 ff ff 0a                                      beq #0x63664c
00636928  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063692c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00636930  08 20 9b e5                                      ldr r2, [fp, #8]
00636934  70 70 90 e5                                      ldr r7, [r0, #0x70]
00636938  00 30 a0 e3                                      mov r3, #0
0063693c  01 20 82 e0                                      add r2, r2, r1
00636940  04 50 87 e0                                      add r5, r7, r4
00636944  20 90 92 e5                                      ldr sb, [r2, #0x20]
00636948  05 80 d5 e5                                      ldrb r8, [r5, #5]
0063694c  04 10 97 e7                                      ldr r1, [r7, r4]
00636950  09 00 a0 e1                                      mov r0, sb
00636954  08 20 a0 e1                                      mov r2, r8
00636958  85 b8 fe eb                                      bl #0x5e4b74
0063695c  ff 2f 0f e3                                      movw r2, #0xffff
00636960  02 00 50 e1                                      cmp r0, r2
00636964  00 60 a0 e1                                      mov r6, r0
00636968  18 00 00 0a                                      beq #0x6369d0
0063696c  04 30 d5 e5                                      ldrb r3, [r5, #4]
00636970  01 00 53 e3                                      cmp r3, #1
00636974  1e 00 00 0a                                      beq #0x6369f4
00636978  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0063697c  08 30 95 e5                                      ldr r3, [r5, #8]
00636980  18 00 a0 e3                                      mov r0, #0x18
00636984  2c 20 9c e5                                      ldr r2, [ip, #0x2c]
00636988  90 23 22 e0                                      mla r2, r0, r3, r2
0063698c  04 20 92 e5                                      ldr r2, [r2, #4]
00636990  11 00 52 e3                                      cmp r2, #0x11
00636994  d6 ff ff 1a                                      bne #0x6368f4
00636998  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0063699c  05 20 88 e2                                      add r2, r8, #5
006369a0  82 21 99 e7                                      ldr r2, [sb, r2, lsl #3]
006369a4  20 00 9d e5                                      ldr r0, [sp, #0x20]
006369a8  03 11 9c e7                                      ldr r1, [ip, r3, lsl #2]
006369ac  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006369b0  06 22 82 e0                                      add r2, r2, r6, lsl #4
006369b4  00 30 90 e5                                      ldr r3, [r0]
006369b8  b4 20 d2 e1                                      ldrh r2, [r2, #4]
006369bc  24 00 9d e5                                      ldr r0, [sp, #0x24]
006369c0  40 01 8d e9                                      stmib sp, {r6, r8}
006369c4  00 c0 8d e5                                      str ip, [sp]
006369c8  9b 8f fe eb                                      bl #0x5da83c
006369cc  d0 ff ff ea                                      b #0x636914
006369d0  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006369d4  03 00 a0 e3                                      mov r0, #3
006369d8  44 10 9d e5                                      ldr r1, [sp, #0x44]
006369dc  00 30 9c e5                                      ldr r3, [ip]
006369e0  04 c0 97 e7                                      ldr ip, [r7, r4]
006369e4  40 20 9d e5                                      ldr r2, [sp, #0x40]
006369e8  00 c0 8d e5                                      str ip, [sp]
006369ec  90 51 ff eb                                      bl #0x60b034
006369f0  c7 ff ff ea                                      b #0x636914
006369f4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006369f8  e4 00 91 e5                                      ldr r0, [r1, #0xe4]
006369fc  08 10 95 e5                                      ldr r1, [r5, #8]
00636a00  5c 12 fe eb                                      bl #0x5bb378
00636a04  ff 2f 0f e3                                      movw r2, #0xffff
00636a08  02 00 50 e1                                      cmp r0, r2
00636a0c  07 00 00 0a                                      beq #0x636a30
00636a10  20 10 9d e5                                      ldr r1, [sp, #0x20]
00636a14  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00636a18  00 20 91 e5                                      ldr r2, [r1]
00636a1c  00 10 a0 e1                                      mov r1, r0
00636a20  24 00 9d e5                                      ldr r0, [sp, #0x24]
00636a24  40 01 8d e8                                      stm sp, {r6, r8}
00636a28  30 8f fe eb                                      bl #0x5da6f0
00636a2c  b8 ff ff ea                                      b #0x636914
00636a30  05 30 88 e2                                      add r3, r8, #5
00636a34  83 31 99 e7                                      ldr r3, [sb, r3, lsl #3]
00636a38  06 32 83 e0                                      add r3, r3, r6, lsl #4
00636a3c  b4 20 d3 e1                                      ldrh r2, [r3, #4]
00636a40  12 00 52 e3                                      cmp r2, #0x12
00636a44  0d 00 00 da                                      ble #0x636a80
00636a48  1b 00 52 e3                                      cmp r2, #0x1b
00636a4c  0b 00 00 ca                                      bgt #0x636a80
00636a50  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00636a54  08 10 95 e5                                      ldr r1, [r5, #8]
00636a58  12 20 a0 e3                                      mov r2, #0x12
00636a5c  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
00636a60  02 e0 a0 e1                                      mov lr, r2
00636a64  08 c0 93 e5                                      ldr ip, [r3, #8]
00636a68  00 c0 8d e5                                      str ip, [sp]
00636a6c  07 c0 d3 e5                                      ldrb ip, [r3, #7]
00636a70  0e 30 a0 e1                                      mov r3, lr
00636a74  04 c0 8d e5                                      str ip, [sp, #4]
00636a78  3d 16 fe eb                                      bl #0x5bc374
00636a7c  e3 ff ff ea                                      b #0x636a10
00636a80  12 00 52 e3                                      cmp r2, #0x12
00636a84  f1 ff ff 0a                                      beq #0x636a50
00636a88  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00636a8c  08 10 95 e5                                      ldr r1, [r5, #8]
00636a90  06 e0 d3 e5                                      ldrb lr, [r3, #6]
00636a94  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
00636a98  f1 ff ff ea                                      b #0x636a64
00636a9c  98 b0 9d e5                                      ldr fp, [sp, #0x98]
00636aa0  27 ff ff ea                                      b #0x636744
00636aa4  98 b0 9d e5                                      ldr fp, [sp, #0x98]
00636aa8  00 00 5b e3                                      cmp fp, #0
00636aac  16 00 00 0a                                      beq #0x636b0c
00636ab0  64 00 9d e5                                      ldr r0, [sp, #0x64]
00636ab4  98 10 8d e2                                      add r1, sp, #0x98
00636ab8  00 b0 80 e5                                      str fp, [r0]
00636abc  10 10 8d e5                                      str r1, [sp, #0x10]
00636ac0  00 30 9b e5                                      ldr r3, [fp]
00636ac4  01 30 83 e2                                      add r3, r3, #1
00636ac8  00 30 8b e5                                      str r3, [fp]
00636acc  10 00 9d e5                                      ldr r0, [sp, #0x10]
00636ad0  f8 6d f4 eb                                      bl #0x3522b8
00636ad4  54 00 9d e5                                      ldr r0, [sp, #0x54]
00636ad8  00 00 50 e3                                      cmp r0, #0
00636adc  00 00 00 0a                                      beq #0x636ae4
00636ae0  e8 f6 fb eb                                      bl #0x534688
00636ae4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00636ae8  00 00 51 e3                                      cmp r1, #0
00636aec  01 00 00 0a                                      beq #0x636af8
00636af0  01 00 a0 e1                                      mov r0, r1
00636af4  e3 f6 fb eb                                      bl #0x534688
00636af8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00636afc  d9 f5 fb eb                                      bl #0x534268
00636b00  64 00 9d e5                                      ldr r0, [sp, #0x64]
00636b04  ac d0 8d e2                                      add sp, sp, #0xac
00636b08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00636b0c  54 10 9f e5                                      ldr r1, [pc, #0x54]
00636b10  40 20 9d e5                                      ldr r2, [sp, #0x40]
00636b14  03 00 a0 e3                                      mov r0, #3
00636b18  01 10 8f e0                                      add r1, pc, r1
00636b1c  44 51 ff eb                                      bl #0x60b034
00636b20  a8 30 8d e2                                      add r3, sp, #0xa8
00636b24  10 30 8d e5                                      str r3, [sp, #0x10]
00636b28  10 b0 33 e5                                      ldr fp, [r3, #-0x10]!
00636b2c  10 30 8d e5                                      str r3, [sp, #0x10]
00636b30  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00636b34  00 00 5b e3                                      cmp fp, #0
00636b38  00 b0 8c e5                                      str fp, [ip]
00636b3c  df ff ff 1a                                      bne #0x636ac0
00636b40  e1 ff ff ea                                      b #0x636acc
00636b44  64 20 9d e5                                      ldr r2, [sp, #0x64]
00636b48  98 30 8d e2                                      add r3, sp, #0x98
00636b4c  00 b0 82 e5                                      str fp, [r2]
00636b50  10 30 8d e5                                      str r3, [sp, #0x10]
00636b54  d9 ff ff ea                                      b #0x636ac0
; mapping-symbol data/literal pool
00636b58  7c e8 35 00 10 ed 2a 00 cc ec 2a 00 dc 30 00 00  .byte 0x7c, 0xe8, 0x35, 0x00, 0x10, 0xed, 0x2a, 0x00, 0xcc, 0xec, 0x2a, 0x00, 0xdc, 0x30, 0x00, 0x00
00636b68  18 e5 2a 00                                      .byte 0x18, 0xe5, 0x2a, 0x00
