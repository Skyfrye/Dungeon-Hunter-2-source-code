; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b9d2c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager12grabInternalEt
; demangled: glitch::video::CGlobalMaterialParameterManager::grabInternal(unsigned short)
; decoder-mode: arm
005b9d2c  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b9d30  14 20 a0 e3                                      mov r2, #0x14
005b9d34  92 31 23 e0                                      mla r3, r2, r1, r3
005b9d38  10 30 93 e5                                      ldr r3, [r3, #0x10]
005b9d3c  18 20 93 e5                                      ldr r2, [r3, #0x18]
005b9d40  01 20 82 e2                                      add r2, r2, #1
005b9d44  18 20 83 e5                                      str r2, [r3, #0x18]
005b9d48  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9d4c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager12dropInternalEt
; demangled: glitch::video::CGlobalMaterialParameterManager::dropInternal(unsigned short)
; decoder-mode: arm
005b9d4c  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b9d50  14 20 a0 e3                                      mov r2, #0x14
005b9d54  92 31 23 e0                                      mla r3, r2, r1, r3
005b9d58  10 30 93 e5                                      ldr r3, [r3, #0x10]
005b9d5c  18 20 93 e5                                      ldr r2, [r3, #0x18]
005b9d60  01 20 42 e2                                      sub r2, r2, #1
005b9d64  18 20 83 e5                                      str r2, [r3, #0x18]
005b9d68  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9e50, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManagerC1EPNS0_12IVideoDriverE
; demangled: glitch::video::CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(glitch::video::IVideoDriver*)
; decoder-mode: arm
005b9e50  70 40 2d e9                                      push {r4, r5, r6, lr}
005b9e54  00 40 a0 e1                                      mov r4, r0
005b9e58  01 50 a0 e1                                      mov r5, r1
005b9e5c  ee ff ff eb                                      bl #0x5b9e1c
005b9e60  00 20 a0 e3                                      mov r2, #0
005b9e64  01 30 a0 e3                                      mov r3, #1
005b9e68  28 50 84 e5                                      str r5, [r4, #0x28]
005b9e6c  34 20 84 e5                                      str r2, [r4, #0x34]
005b9e70  3a 30 c4 e5                                      strb r3, [r4, #0x3a]
005b9e74  2c 20 84 e5                                      str r2, [r4, #0x2c]
005b9e78  30 20 84 e5                                      str r2, [r4, #0x30]
005b9e7c  38 30 c4 e5                                      strb r3, [r4, #0x38]
005b9e80  39 30 c4 e5                                      strb r3, [r4, #0x39]
005b9e84  04 00 a0 e1                                      mov r0, r4
005b9e88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b9e8c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManagerC2EPNS0_12IVideoDriverE
; demangled: glitch::video::CGlobalMaterialParameterManager::CGlobalMaterialParameterManager(glitch::video::IVideoDriver*)
; decoder-mode: arm
005b9e8c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b9e90  00 40 a0 e1                                      mov r4, r0
005b9e94  01 50 a0 e1                                      mov r5, r1
005b9e98  df ff ff eb                                      bl #0x5b9e1c
005b9e9c  00 20 a0 e3                                      mov r2, #0
005b9ea0  01 30 a0 e3                                      mov r3, #1
005b9ea4  28 50 84 e5                                      str r5, [r4, #0x28]
005b9ea8  34 20 84 e5                                      str r2, [r4, #0x34]
005b9eac  3a 30 c4 e5                                      strb r3, [r4, #0x3a]
005b9eb0  2c 20 84 e5                                      str r2, [r4, #0x2c]
005b9eb4  30 20 84 e5                                      str r2, [r4, #0x30]
005b9eb8  38 30 c4 e5                                      strb r3, [r4, #0x38]
005b9ebc  39 30 c4 e5                                      strb r3, [r4, #0x39]
005b9ec0  04 00 a0 e1                                      mov r0, r4
005b9ec4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005ba820, declared_size=128, range_size=128, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager4packEv
; demangled: glitch::video::CGlobalMaterialParameterManager::pack()
; decoder-mode: arm
005ba820  70 40 2d e9                                      push {r4, r5, r6, lr}
005ba824  38 30 d0 e5                                      ldrb r3, [r0, #0x38]
005ba828  00 40 a0 e1                                      mov r4, r0
005ba82c  00 00 53 e3                                      cmp r3, #0
005ba830  11 00 00 0a                                      beq #0x5ba87c
005ba834  39 10 d0 e5                                      ldrb r1, [r0, #0x39]
005ba838  00 00 51 e3                                      cmp r1, #0
005ba83c  0e 00 00 1a                                      bne #0x5ba87c
005ba840  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005ba844  30 50 94 e5                                      ldr r5, [r4, #0x30]
005ba848  00 50 55 e0                                      subs r5, r5, r0
005ba84c  05 60 a0 01                                      moveq r6, r5
005ba850  0a 00 00 1a                                      bne #0x5ba880
005ba854  05 50 86 e0                                      add r5, r6, r5
005ba858  01 30 a0 e3                                      mov r3, #1
005ba85c  00 00 50 e3                                      cmp r0, #0
005ba860  39 30 c4 e5                                      strb r3, [r4, #0x39]
005ba864  30 50 84 e5                                      str r5, [r4, #0x30]
005ba868  2c 60 84 e5                                      str r6, [r4, #0x2c]
005ba86c  34 50 84 e5                                      str r5, [r4, #0x34]
005ba870  01 00 00 0a                                      beq #0x5ba87c
005ba874  70 40 bd e8                                      pop {r4, r5, r6, lr}
005ba878  0e 4e f5 ea                                      b #0x30e0b8
005ba87c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ba880  05 00 a0 e1                                      mov r0, r5
005ba884  47 e6 fd eb                                      bl #0x5341a8
005ba888  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
005ba88c  05 20 a0 e1                                      mov r2, r5
005ba890  00 60 a0 e1                                      mov r6, r0
005ba894  f3 4f f5 eb                                      bl #0x30e868
005ba898  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
005ba89c  ec ff ff ea                                      b #0x5ba854

; FUNCTION 0x005ba8a0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager14setAutoPackingEb
; demangled: glitch::video::CGlobalMaterialParameterManager::setAutoPacking(bool)
; decoder-mode: arm
005ba8a0  3a 20 d0 e5                                      ldrb r2, [r0, #0x3a]
005ba8a4  02 00 51 e1                                      cmp r1, r2
005ba8a8  1e ff 2f 01                                      bxeq lr
005ba8ac  00 00 51 e3                                      cmp r1, #0
005ba8b0  3a 10 c0 e5                                      strb r1, [r0, #0x3a]
005ba8b4  1e ff 2f 01                                      bxeq lr
005ba8b8  00 00 52 e3                                      cmp r2, #0
005ba8bc  1e ff 2f 11                                      bxne lr
005ba8c0  d6 ff ff ea                                      b #0x5ba820

; FUNCTION 0x005bb560, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManagerD1Ev
; demangled: glitch::video::CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager()
; decoder-mode: arm
005bb560  10 40 2d e9                                      push {r4, lr}
005bb564  00 40 a0 e1                                      mov r4, r0
005bb568  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bb56c  00 00 50 e3                                      cmp r0, #0
005bb570  00 00 00 0a                                      beq #0x5bb578
005bb574  cf 4a f5 eb                                      bl #0x30e0b8
005bb578  04 00 a0 e1                                      mov r0, r4
005bb57c  e7 ff ff eb                                      bl #0x5bb520
005bb580  04 00 a0 e1                                      mov r0, r4
005bb584  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005bb588, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManagerD2Ev
; demangled: glitch::video::CGlobalMaterialParameterManager::~CGlobalMaterialParameterManager()
; decoder-mode: arm
005bb588  10 40 2d e9                                      push {r4, lr}
005bb58c  00 40 a0 e1                                      mov r4, r0
005bb590  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bb594  00 00 50 e3                                      cmp r0, #0
005bb598  00 00 00 0a                                      beq #0x5bb5a0
005bb59c  c5 4a f5 eb                                      bl #0x30e0b8
005bb5a0  04 00 a0 e1                                      mov r0, r4
005bb5a4  dd ff ff eb                                      bl #0x5bb520
005bb5a8  04 00 a0 e1                                      mov r0, r4
005bb5ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005bc374, declared_size=592, range_size=592, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager12addParameterEPKcNS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjh
; demangled: glitch::video::CGlobalMaterialParameterManager::addParameter(char const*, glitch::video::E_SHADER_PARAMETER_TYPE, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, unsigned int, unsigned char)
; decoder-mode: arm
005bc374  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005bc378  24 42 9f e5                                      ldr r4, [pc, #0x224]
005bc37c  1c d0 4d e2                                      sub sp, sp, #0x1c
005bc380  00 50 51 e2                                      subs r5, r1, #0
005bc384  04 40 8f e0                                      add r4, pc, r4
005bc388  02 90 a0 e1                                      mov sb, r2
005bc38c  03 80 a0 e1                                      mov r8, r3
005bc390  00 70 a0 e1                                      mov r7, r0
005bc394  44 a0 dd e5                                      ldrb sl, [sp, #0x44]
005bc398  02 00 00 0a                                      beq #0x5bc3a8
005bc39c  d0 30 d5 e1                                      ldrsb r3, [r5]
005bc3a0  00 00 53 e3                                      cmp r3, #0
005bc3a4  09 00 00 1a                                      bne #0x5bc3d0
005bc3a8  f8 01 9f e5                                      ldr r0, [pc, #0x1f8]
005bc3ac  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
005bc3b0  03 20 a0 e3                                      mov r2, #3
005bc3b4  00 00 8f e0                                      add r0, pc, r0
005bc3b8  01 10 8f e0                                      add r1, pc, r1
005bc3bc  49 3a 01 eb                                      bl #0x60ace8
005bc3c0  ff 6f 0f e3                                      movw r6, #0xffff
005bc3c4  06 00 a0 e1                                      mov r0, r6
005bc3c8  1c d0 8d e2                                      add sp, sp, #0x1c
005bc3cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005bc3d0  e8 fb ff eb                                      bl #0x5bb378
005bc3d4  ff 3f 0f e3                                      movw r3, #0xffff
005bc3d8  03 00 50 e1                                      cmp r0, r3
005bc3dc  00 60 a0 e1                                      mov r6, r0
005bc3e0  57 00 00 1a                                      bne #0x5bc544
005bc3e4  ff 00 59 e3                                      cmp sb, #0xff
005bc3e8  61 00 00 0a                                      beq #0x5bc574
005bc3ec  ff 00 58 e3                                      cmp r8, #0xff
005bc3f0  65 00 00 0a                                      beq #0x5bc58c
005bc3f4  40 20 9d e5                                      ldr r2, [sp, #0x40]
005bc3f8  00 00 52 e3                                      cmp r2, #0
005bc3fc  56 00 00 0a                                      beq #0x5bc55c
005bc400  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
005bc404  2c b0 97 e5                                      ldr fp, [r7, #0x2c]
005bc408  30 20 97 e5                                      ldr r2, [r7, #0x30]
005bc40c  03 30 94 e7                                      ldr r3, [r4, r3]
005bc410  34 40 97 e5                                      ldr r4, [r7, #0x34]
005bc414  02 20 6b e0                                      rsb r2, fp, r2
005bc418  08 60 d3 e7                                      ldrb r6, [r3, r8]
005bc41c  04 40 6b e0                                      rsb r4, fp, r4
005bc420  04 20 8d e5                                      str r2, [sp, #4]
005bc424  02 60 86 e0                                      add r6, r6, r2
005bc428  06 00 54 e1                                      cmp r4, r6
005bc42c  20 00 00 aa                                      bge #0x5bc4b4
005bc430  00 00 54 e3                                      cmp r4, #0
005bc434  04 00 00 1a                                      bne #0x5bc44c
005bc438  01 00 56 e3                                      cmp r6, #1
005bc43c  01 30 a0 d3                                      movle r3, #1
005bc440  03 40 a0 d1                                      movle r4, r3
005bc444  04 00 00 da                                      ble #0x5bc45c
005bc448  01 40 a0 e3                                      mov r4, #1
005bc44c  84 40 a0 e1                                      lsl r4, r4, #1
005bc450  04 00 56 e1                                      cmp r6, r4
005bc454  fc ff ff ca                                      bgt #0x5bc44c
005bc458  04 30 a0 e1                                      mov r3, r4
005bc45c  03 00 a0 e1                                      mov r0, r3
005bc460  00 10 a0 e3                                      mov r1, #0
005bc464  00 30 8d e5                                      str r3, [sp]
005bc468  4e df fd eb                                      bl #0x5341a8
005bc46c  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
005bc470  04 20 9d e5                                      ldr r2, [sp, #4]
005bc474  00 b0 a0 e1                                      mov fp, r0
005bc478  fa 48 f5 eb                                      bl #0x30e868
005bc47c  08 10 9d e8                                      ldm sp, {r3, ip}
005bc480  00 10 a0 e3                                      mov r1, #0
005bc484  0c 00 8b e0                                      add r0, fp, ip
005bc488  03 20 6c e0                                      rsb r2, ip, r3
005bc48c  f3 47 f5 eb                                      bl #0x30e460
005bc490  00 30 9d e5                                      ldr r3, [sp]
005bc494  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
005bc498  2c b0 87 e5                                      str fp, [r7, #0x2c]
005bc49c  03 30 8b e0                                      add r3, fp, r3
005bc4a0  00 00 50 e3                                      cmp r0, #0
005bc4a4  34 30 87 e5                                      str r3, [r7, #0x34]
005bc4a8  01 00 00 0a                                      beq #0x5bc4b4
005bc4ac  01 47 f5 eb                                      bl #0x30e0b8
005bc4b0  2c b0 97 e5                                      ldr fp, [r7, #0x2c]
005bc4b4  38 30 d7 e5                                      ldrb r3, [r7, #0x38]
005bc4b8  06 b0 8b e0                                      add fp, fp, r6
005bc4bc  30 b0 87 e5                                      str fp, [r7, #0x30]
005bc4c0  00 00 53 e3                                      cmp r3, #0
005bc4c4  02 00 00 0a                                      beq #0x5bc4d4
005bc4c8  06 00 54 e1                                      cmp r4, r6
005bc4cc  00 30 a0 13                                      movne r3, #0
005bc4d0  01 30 a0 03                                      moveq r3, #1
005bc4d4  39 30 c7 e5                                      strb r3, [r7, #0x39]
005bc4d8  05 00 a0 e1                                      mov r0, r5
005bc4dc  01 10 a0 e3                                      mov r1, #1
005bc4e0  e3 a2 03 eb                                      bl #0x6a5074
005bc4e4  08 00 8d e5                                      str r0, [sp, #8]
005bc4e8  00 00 50 e3                                      cmp r0, #0
005bc4ec  00 30 90 15                                      ldrne r3, [r0]
005bc4f0  08 40 8d e2                                      add r4, sp, #8
005bc4f4  01 30 83 12                                      addne r3, r3, #1
005bc4f8  00 30 80 15                                      strne r3, [r0]
005bc4fc  08 10 9d e5                                      ldr r1, [sp, #8]
005bc500  40 20 9d e5                                      ldr r2, [sp, #0x40]
005bc504  04 30 9d e5                                      ldr r3, [sp, #4]
005bc508  00 00 51 e3                                      cmp r1, #0
005bc50c  10 20 8d e5                                      str r2, [sp, #0x10]
005bc510  14 30 8d e5                                      str r3, [sp, #0x14]
005bc514  04 10 81 12                                      addne r1, r1, #4
005bc518  07 00 a0 e1                                      mov r0, r7
005bc51c  04 20 a0 e1                                      mov r2, r4
005bc520  00 30 a0 e3                                      mov r3, #0
005bc524  bc 90 cd e1                                      strh sb, [sp, #0xc]
005bc528  0e 80 cd e5                                      strb r8, [sp, #0xe]
005bc52c  0f a0 cd e5                                      strb sl, [sp, #0xf]
005bc530  0d ff ff eb                                      bl #0x5bc16c
005bc534  00 60 a0 e1                                      mov r6, r0
005bc538  04 00 a0 e1                                      mov r0, r4
005bc53c  2d f8 ff eb                                      bl #0x5ba5f8
005bc540  9f ff ff ea                                      b #0x5bc3c4
005bc544  68 00 9f e5                                      ldr r0, [pc, #0x68]
005bc548  05 10 a0 e1                                      mov r1, r5
005bc54c  02 20 a0 e3                                      mov r2, #2
005bc550  00 00 8f e0                                      add r0, pc, r0
005bc554  e3 39 01 eb                                      bl #0x60ace8
005bc558  99 ff ff ea                                      b #0x5bc3c4
005bc55c  54 10 9f e5                                      ldr r1, [pc, #0x54]
005bc560  05 00 a0 e1                                      mov r0, r5
005bc564  03 20 a0 e3                                      mov r2, #3
005bc568  01 10 8f e0                                      add r1, pc, r1
005bc56c  dd 39 01 eb                                      bl #0x60ace8
005bc570  93 ff ff ea                                      b #0x5bc3c4
005bc574  40 10 9f e5                                      ldr r1, [pc, #0x40]
005bc578  05 00 a0 e1                                      mov r0, r5
005bc57c  03 20 a0 e3                                      mov r2, #3
005bc580  01 10 8f e0                                      add r1, pc, r1
005bc584  d7 39 01 eb                                      bl #0x60ace8
005bc588  8d ff ff ea                                      b #0x5bc3c4
005bc58c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
005bc590  05 00 a0 e1                                      mov r0, r5
005bc594  03 20 a0 e3                                      mov r2, #3
005bc598  01 10 8f e0                                      add r1, pc, r1
005bc59c  d1 39 01 eb                                      bl #0x60ace8
005bc5a0  87 ff ff ea                                      b #0x5bc3c4
; mapping-symbol data/literal pool
005bc5a4  0c 87 3d 00 6c 45 32 00 c8 45 32 00 c0 15 00 00  .byte 0x0c, 0x87, 0x3d, 0x00, 0x6c, 0x45, 0x32, 0x00, 0xc8, 0x45, 0x32, 0x00, 0xc0, 0x15, 0x00, 0x00
005bc5b4  90 44 32 00 68 44 32 00 18 44 32 00 18 44 32 00  .byte 0x90, 0x44, 0x32, 0x00, 0x68, 0x44, 0x32, 0x00, 0x18, 0x44, 0x32, 0x00, 0x18, 0x44, 0x32, 0x00

; FUNCTION 0x005bd608, declared_size=716, range_size=716, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZNK6glitch5video31CGlobalMaterialParameterManager19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CGlobalMaterialParameterManager::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005bd608  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005bd60c  98 a2 9f e5                                      ldr sl, [pc, #0x298]
005bd610  98 b2 9f e5                                      ldr fp, [pc, #0x298]
005bd614  34 d0 4d e2                                      sub sp, sp, #0x34
005bd618  0a a0 8f e0                                      add sl, pc, sl
005bd61c  0b 30 9a e7                                      ldr r3, [sl, fp]
005bd620  00 00 52 e3                                      cmp r2, #0
005bd624  00 70 a0 e1                                      mov r7, r0
005bd628  00 30 93 e5                                      ldr r3, [r3]
005bd62c  01 40 a0 e1                                      mov r4, r1
005bd630  2c 30 8d e5                                      str r3, [sp, #0x2c]
005bd634  0a 00 00 0a                                      beq #0x5bd664
005bd638  00 30 92 e5                                      ldr r3, [r2]
005bd63c  02 00 13 e3                                      tst r3, #2
005bd640  07 00 00 0a                                      beq #0x5bd664
005bd644  8d fd ff eb                                      bl #0x5bcc80
005bd648  0b 30 9a e7                                      ldr r3, [sl, fp]
005bd64c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005bd650  00 30 93 e5                                      ldr r3, [r3]
005bd654  03 00 52 e1                                      cmp r2, r3
005bd658  92 00 00 1a                                      bne #0x5bd8a8
005bd65c  34 d0 8d e2                                      add sp, sp, #0x34
005bd660  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005bd664  48 12 9f e5                                      ldr r1, [pc, #0x248]
005bd668  04 00 a0 e1                                      mov r0, r4
005bd66c  00 30 94 e5                                      ldr r3, [r4]
005bd670  01 10 8f e0                                      add r1, pc, r1
005bd674  0f e0 a0 e1                                      mov lr, pc
005bd678  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005bd67c  34 12 9f e5                                      ldr r1, [pc, #0x234]
005bd680  00 c0 94 e5                                      ldr ip, [r4]
005bd684  04 00 a0 e1                                      mov r0, r4
005bd688  01 10 8f e0                                      add r1, pc, r1
005bd68c  b6 22 d7 e1                                      ldrh r2, [r7, #0x26]
005bd690  00 30 a0 e3                                      mov r3, #0
005bd694  0f e0 a0 e1                                      mov lr, pc
005bd698  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005bd69c  08 50 97 e5                                      ldr r5, [r7, #8]
005bd6a0  07 00 55 e1                                      cmp r5, r7
005bd6a4  6d 00 00 0a                                      beq #0x5bd860
005bd6a8  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
005bd6ac  0c 22 9f e5                                      ldr r2, [pc, #0x20c]
005bd6b0  0c a0 8d e5                                      str sl, [sp, #0xc]
005bd6b4  03 30 8f e0                                      add r3, pc, r3
005bd6b8  04 30 8d e5                                      str r3, [sp, #4]
005bd6bc  00 32 9f e5                                      ldr r3, [pc, #0x200]
005bd6c0  10 20 8d e5                                      str r2, [sp, #0x10]
005bd6c4  14 b0 8d e5                                      str fp, [sp, #0x14]
005bd6c8  03 30 8f e0                                      add r3, pc, r3
005bd6cc  08 30 8d e5                                      str r3, [sp, #8]
005bd6d0  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
005bd6d4  00 80 a0 e3                                      mov r8, #0
005bd6d8  1c 90 8d e2                                      add sb, sp, #0x1c
005bd6dc  03 20 8f e0                                      add r2, pc, r3
005bd6e0  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
005bd6e4  02 b0 a0 e1                                      mov fp, r2
005bd6e8  03 30 8f e0                                      add r3, pc, r3
005bd6ec  03 a0 a0 e1                                      mov sl, r3
005bd6f0  08 20 a0 e1                                      mov r2, r8
005bd6f4  04 10 9d e5                                      ldr r1, [sp, #4]
005bd6f8  09 00 a0 e1                                      mov r0, sb
005bd6fc  f8 44 f5 eb                                      bl #0x30eae4
005bd700  00 30 94 e5                                      ldr r3, [r4]
005bd704  09 10 a0 e1                                      mov r1, sb
005bd708  04 00 a0 e1                                      mov r0, r4
005bd70c  0f e0 a0 e1                                      mov lr, pc
005bd710  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005bd714  18 10 97 e5                                      ldr r1, [r7, #0x18]
005bd718  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
005bd71c  bc 61 d5 e1                                      ldrh r6, [r5, #0x1c]
005bd720  03 30 61 e0                                      rsb r3, r1, r3
005bd724  43 31 a0 e1                                      asr r3, r3, #2
005bd728  83 20 83 e0                                      add r2, r3, r3, lsl #1
005bd72c  02 22 82 e0                                      add r2, r2, r2, lsl #4
005bd730  02 24 82 e0                                      add r2, r2, r2, lsl #8
005bd734  02 28 82 e0                                      add r2, r2, r2, lsl #16
005bd738  02 21 83 e0                                      add r2, r3, r2, lsl #2
005bd73c  02 00 56 e1                                      cmp r6, r2
005bd740  0c 20 9d 25                                      ldrhs r2, [sp, #0xc]
005bd744  10 30 9d 25                                      ldrhs r3, [sp, #0x10]
005bd748  14 30 a0 33                                      movlo r3, #0x14
005bd74c  93 16 26 30                                      mlalo r6, r3, r6, r1
005bd750  03 60 92 27                                      ldrhs r6, [r2, r3]
005bd754  00 20 96 e5                                      ldr r2, [r6]
005bd758  00 00 52 e3                                      cmp r2, #0
005bd75c  27 00 00 0a                                      beq #0x5bd800
005bd760  00 30 94 e5                                      ldr r3, [r4]
005bd764  7c c0 93 e5                                      ldr ip, [r3, #0x7c]
005bd768  04 20 82 e2                                      add r2, r2, #4
005bd76c  00 30 a0 e3                                      mov r3, #0
005bd770  08 10 9d e5                                      ldr r1, [sp, #8]
005bd774  04 00 a0 e1                                      mov r0, r4
005bd778  3c ff 2f e1                                      blx ip
005bd77c  04 00 a0 e1                                      mov r0, r4
005bd780  00 20 a0 e3                                      mov r2, #0
005bd784  b4 10 d6 e1                                      ldrh r1, [r6, #4]
005bd788  c9 f4 ff eb                                      bl #0x5baab4
005bd78c  04 00 a0 e1                                      mov r0, r4
005bd790  0b 10 a0 e1                                      mov r1, fp
005bd794  06 20 d6 e5                                      ldrb r2, [r6, #6]
005bd798  00 30 a0 e3                                      mov r3, #0
005bd79c  b2 f3 ff eb                                      bl #0x5ba66c
005bd7a0  08 20 96 e5                                      ldr r2, [r6, #8]
005bd7a4  04 00 a0 e1                                      mov r0, r4
005bd7a8  0a 10 a0 e1                                      mov r1, sl
005bd7ac  00 30 a0 e3                                      mov r3, #0
005bd7b0  00 c0 94 e5                                      ldr ip, [r4]
005bd7b4  0f e0 a0 e1                                      mov lr, pc
005bd7b8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005bd7bc  00 30 94 e5                                      ldr r3, [r4]
005bd7c0  04 00 a0 e1                                      mov r0, r4
005bd7c4  0f e0 a0 e1                                      mov lr, pc
005bd7c8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005bd7cc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005bd7d0  00 00 53 e3                                      cmp r3, #0
005bd7d4  01 00 00 1a                                      bne #0x5bd7e0
005bd7d8  10 00 00 ea                                      b #0x5bd820
005bd7dc  02 30 a0 e1                                      mov r3, r2
005bd7e0  08 20 93 e5                                      ldr r2, [r3, #8]
005bd7e4  00 00 52 e3                                      cmp r2, #0
005bd7e8  fb ff ff 1a                                      bne #0x5bd7dc
005bd7ec  03 50 a0 e1                                      mov r5, r3
005bd7f0  05 00 57 e1                                      cmp r7, r5
005bd7f4  17 00 00 0a                                      beq #0x5bd858
005bd7f8  01 80 88 e2                                      add r8, r8, #1
005bd7fc  bb ff ff ea                                      b #0x5bd6f0
005bd800  02 60 a0 e1                                      mov r6, r2
005bd804  00 20 92 e5                                      ldr r2, [r2]
005bd808  00 30 94 e5                                      ldr r3, [r4]
005bd80c  00 00 52 e3                                      cmp r2, #0
005bd810  7c c0 93 e5                                      ldr ip, [r3, #0x7c]
005bd814  02 60 a0 01                                      moveq r6, r2
005bd818  d3 ff ff 0a                                      beq #0x5bd76c
005bd81c  d1 ff ff ea                                      b #0x5bd768
005bd820  04 20 95 e5                                      ldr r2, [r5, #4]
005bd824  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005bd828  05 00 51 e1                                      cmp r1, r5
005bd82c  05 00 00 1a                                      bne #0x5bd848
005bd830  02 50 a0 e1                                      mov r5, r2
005bd834  04 20 92 e5                                      ldr r2, [r2, #4]
005bd838  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005bd83c  05 00 53 e1                                      cmp r3, r5
005bd840  fa ff ff 0a                                      beq #0x5bd830
005bd844  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005bd848  03 00 52 e1                                      cmp r2, r3
005bd84c  02 50 a0 11                                      movne r5, r2
005bd850  05 00 57 e1                                      cmp r7, r5
005bd854  e7 ff ff 1a                                      bne #0x5bd7f8
005bd858  0c a0 9d e5                                      ldr sl, [sp, #0xc]
005bd85c  14 b0 9d e5                                      ldr fp, [sp, #0x14]
005bd860  04 00 a0 e1                                      mov r0, r4
005bd864  00 30 94 e5                                      ldr r3, [r4]
005bd868  0f e0 a0 e1                                      mov lr, pc
005bd86c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005bd870  58 10 9f e5                                      ldr r1, [pc, #0x58]
005bd874  00 30 94 e5                                      ldr r3, [r4]
005bd878  04 00 a0 e1                                      mov r0, r4
005bd87c  01 10 8f e0                                      add r1, pc, r1
005bd880  0f e0 a0 e1                                      mov lr, pc
005bd884  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005bd888  07 00 a0 e1                                      mov r0, r7
005bd88c  04 10 a0 e1                                      mov r1, r4
005bd890  fa fc ff eb                                      bl #0x5bcc80
005bd894  04 00 a0 e1                                      mov r0, r4
005bd898  00 30 94 e5                                      ldr r3, [r4]
005bd89c  0f e0 a0 e1                                      mov lr, pc
005bd8a0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005bd8a4  67 ff ff ea                                      b #0x5bd648
005bd8a8  98 42 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005bd8ac  78 74 3d 00 ac 40 00 00 e8 33 32 00 e0 33 32 00  .byte 0x78, 0x74, 0x3d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0x33, 0x32, 0x00, 0xe0, 0x33, 0x32, 0x00
005bd8bc  6c 33 32 00 14 28 00 00 b8 e6 30 00 54 33 32 00  .byte 0x6c, 0x33, 0x32, 0x00, 0x14, 0x28, 0x00, 0x00, 0xb8, 0xe6, 0x30, 0x00, 0x54, 0x33, 0x32, 0x00
005bd8cc  58 33 32 00 d4 31 32 00                          .byte 0x58, 0x33, 0x32, 0x00, 0xd4, 0x31, 0x32, 0x00

; FUNCTION 0x005be198, declared_size=596, range_size=596, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CGlobalMaterialParameterManager::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005be198  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005be19c  20 92 9f e5                                      ldr sb, [pc, #0x220]
005be1a0  20 32 9f e5                                      ldr r3, [pc, #0x220]
005be1a4  5c d0 4d e2                                      sub sp, sp, #0x5c
005be1a8  09 90 8f e0                                      add sb, pc, sb
005be1ac  0c 30 8d e5                                      str r3, [sp, #0xc]
005be1b0  03 30 99 e7                                      ldr r3, [sb, r3]
005be1b4  00 00 52 e3                                      cmp r2, #0
005be1b8  00 b0 a0 e1                                      mov fp, r0
005be1bc  00 30 93 e5                                      ldr r3, [r3]
005be1c0  01 40 a0 e1                                      mov r4, r1
005be1c4  54 30 8d e5                                      str r3, [sp, #0x54]
005be1c8  02 00 00 0a                                      beq #0x5be1d8
005be1cc  00 30 92 e5                                      ldr r3, [r2]
005be1d0  02 00 13 e3                                      tst r3, #2
005be1d4  70 00 00 1a                                      bne #0x5be39c
005be1d8  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
005be1dc  04 00 a0 e1                                      mov r0, r4
005be1e0  00 30 94 e5                                      ldr r3, [r4]
005be1e4  01 10 8f e0                                      add r1, pc, r1
005be1e8  0f e0 a0 e1                                      mov lr, pc
005be1ec  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005be1f0  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
005be1f4  00 30 94 e5                                      ldr r3, [r4]
005be1f8  04 00 a0 e1                                      mov r0, r4
005be1fc  01 10 8f e0                                      add r1, pc, r1
005be200  0f e0 a0 e1                                      mov lr, pc
005be204  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005be208  00 00 50 e3                                      cmp r0, #0
005be20c  10 00 8d e5                                      str r0, [sp, #0x10]
005be210  4f 00 00 0a                                      beq #0x5be354
005be214  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
005be218  24 90 8d e5                                      str sb, [sp, #0x24]
005be21c  00 50 a0 e3                                      mov r5, #0
005be220  03 30 8f e0                                      add r3, pc, r3
005be224  14 30 8d e5                                      str r3, [sp, #0x14]
005be228  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
005be22c  44 70 8d e2                                      add r7, sp, #0x44
005be230  2c 60 8d e2                                      add r6, sp, #0x2c
005be234  03 30 8f e0                                      add r3, pc, r3
005be238  18 30 8d e5                                      str r3, [sp, #0x18]
005be23c  98 31 9f e5                                      ldr r3, [pc, #0x198]
005be240  03 30 8f e0                                      add r3, pc, r3
005be244  1c 30 8d e5                                      str r3, [sp, #0x1c]
005be248  90 31 9f e5                                      ldr r3, [pc, #0x190]
005be24c  03 30 8f e0                                      add r3, pc, r3
005be250  20 30 8d e5                                      str r3, [sp, #0x20]
005be254  88 31 9f e5                                      ldr r3, [pc, #0x188]
005be258  03 30 8f e0                                      add r3, pc, r3
005be25c  03 90 a0 e1                                      mov sb, r3
005be260  05 20 a0 e1                                      mov r2, r5
005be264  14 10 9d e5                                      ldr r1, [sp, #0x14]
005be268  07 00 a0 e1                                      mov r0, r7
005be26c  1c 42 f5 eb                                      bl #0x30eae4
005be270  04 00 a0 e1                                      mov r0, r4
005be274  07 10 a0 e1                                      mov r1, r7
005be278  00 30 94 e5                                      ldr r3, [r4]
005be27c  0f e0 a0 e1                                      mov lr, pc
005be280  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005be284  04 10 a0 e1                                      mov r1, r4
005be288  18 20 9d e5                                      ldr r2, [sp, #0x18]
005be28c  06 00 a0 e1                                      mov r0, r6
005be290  00 30 94 e5                                      ldr r3, [r4]
005be294  0f e0 a0 e1                                      mov lr, pc
005be298  84 f0 93 e5                                      ldr pc, [r3, #0x84]
005be29c  00 30 94 e5                                      ldr r3, [r4]
005be2a0  00 00 a0 e3                                      mov r0, #0
005be2a4  00 81 93 e5                                      ldr r8, [r3, #0x100]
005be2a8  7d a7 00 eb                                      bl #0x5e80a4
005be2ac  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005be2b0  00 20 a0 e1                                      mov r2, r0
005be2b4  04 00 a0 e1                                      mov r0, r4
005be2b8  38 ff 2f e1                                      blx r8
005be2bc  00 30 94 e5                                      ldr r3, [r4]
005be2c0  00 a0 a0 e1                                      mov sl, r0
005be2c4  00 00 a0 e3                                      mov r0, #0
005be2c8  00 81 93 e5                                      ldr r8, [r3, #0x100]
005be2cc  78 a7 00 eb                                      bl #0x5e80b4
005be2d0  20 10 9d e5                                      ldr r1, [sp, #0x20]
005be2d4  00 20 a0 e1                                      mov r2, r0
005be2d8  04 00 a0 e1                                      mov r0, r4
005be2dc  38 ff 2f e1                                      blx r8
005be2e0  09 10 a0 e1                                      mov r1, sb
005be2e4  00 80 a0 e1                                      mov r8, r0
005be2e8  00 30 94 e5                                      ldr r3, [r4]
005be2ec  04 00 a0 e1                                      mov r0, r4
005be2f0  0f e0 a0 e1                                      mov lr, pc
005be2f4  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005be2f8  ff c0 a0 e3                                      mov ip, #0xff
005be2fc  00 00 8d e5                                      str r0, [sp]
005be300  0a 20 a0 e1                                      mov r2, sl
005be304  40 10 9d e5                                      ldr r1, [sp, #0x40]
005be308  08 30 a0 e1                                      mov r3, r8
005be30c  0b 00 a0 e1                                      mov r0, fp
005be310  04 c0 8d e5                                      str ip, [sp, #4]
005be314  16 f8 ff eb                                      bl #0x5bc374
005be318  04 00 a0 e1                                      mov r0, r4
005be31c  00 30 94 e5                                      ldr r3, [r4]
005be320  0f e0 a0 e1                                      mov lr, pc
005be324  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005be328  40 00 9d e5                                      ldr r0, [sp, #0x40]
005be32c  06 00 50 e1                                      cmp r0, r6
005be330  02 00 00 0a                                      beq #0x5be340
005be334  00 00 50 e3                                      cmp r0, #0
005be338  00 00 00 0a                                      beq #0x5be340
005be33c  43 48 f5 eb                                      bl #0x310450
005be340  10 20 9d e5                                      ldr r2, [sp, #0x10]
005be344  01 50 85 e2                                      add r5, r5, #1
005be348  05 00 52 e1                                      cmp r2, r5
005be34c  c3 ff ff 1a                                      bne #0x5be260
005be350  24 90 9d e5                                      ldr sb, [sp, #0x24]
005be354  04 00 a0 e1                                      mov r0, r4
005be358  00 30 94 e5                                      ldr r3, [r4]
005be35c  0f e0 a0 e1                                      mov lr, pc
005be360  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005be364  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
005be368  00 30 94 e5                                      ldr r3, [r4]
005be36c  04 00 a0 e1                                      mov r0, r4
005be370  01 10 8f e0                                      add r1, pc, r1
005be374  0f e0 a0 e1                                      mov lr, pc
005be378  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005be37c  0b 00 a0 e1                                      mov r0, fp
005be380  04 10 a0 e1                                      mov r1, r4
005be384  c2 fd ff eb                                      bl #0x5bda94
005be388  04 00 a0 e1                                      mov r0, r4
005be38c  00 30 94 e5                                      ldr r3, [r4]
005be390  0f e0 a0 e1                                      mov lr, pc
005be394  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005be398  00 00 00 ea                                      b #0x5be3a0
005be39c  bc fd ff eb                                      bl #0x5bda94
005be3a0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005be3a4  54 20 9d e5                                      ldr r2, [sp, #0x54]
005be3a8  0c 30 99 e7                                      ldr r3, [sb, ip]
005be3ac  00 30 93 e5                                      ldr r3, [r3]
005be3b0  03 00 52 e1                                      cmp r2, r3
005be3b4  01 00 00 1a                                      bne #0x5be3c0
005be3b8  5c d0 8d e2                                      add sp, sp, #0x5c
005be3bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005be3c0  d2 3f f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005be3c4  e8 68 3d 00 ac 40 00 00 74 28 32 00 6c 28 32 00  .byte 0xe8, 0x68, 0x3d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0x28, 0x32, 0x00, 0x6c, 0x28, 0x32, 0x00
005be3d4  00 28 32 00 4c db 30 00 38 47 30 00 e4 27 32 00  .byte 0x00, 0x28, 0x32, 0x00, 0x4c, 0xdb, 0x30, 0x00, 0x38, 0x47, 0x30, 0x00, 0xe4, 0x27, 0x32, 0x00
005be3e4  e8 27 32 00 e0 26 32 00                          .byte 0xe8, 0x27, 0x32, 0x00, 0xe0, 0x26, 0x32, 0x00

; FUNCTION 0x005c0f60, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager15clearParametersEv
; demangled: glitch::video::CGlobalMaterialParameterManager::clearParameters()
; decoder-mode: arm
005c0f60  dd ff ff ea                                      b #0x5c0edc

; FUNCTION 0x005c11dc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager12removeUnusedEv
; demangled: glitch::video::CGlobalMaterialParameterManager::removeUnused()
; decoder-mode: arm
005c11dc  70 40 2d e9                                      push {r4, r5, r6, lr}
005c11e0  00 10 a0 e3                                      mov r1, #0
005c11e4  00 40 a0 e1                                      mov r4, r0
005c11e8  c5 ff ff eb                                      bl #0x5c1104
005c11ec  00 50 50 e2                                      subs r5, r0, #0
005c11f0  04 00 00 0a                                      beq #0x5c1208
005c11f4  3a 30 d4 e5                                      ldrb r3, [r4, #0x3a]
005c11f8  00 20 a0 e3                                      mov r2, #0
005c11fc  38 20 c4 e5                                      strb r2, [r4, #0x38]
005c1200  02 00 53 e1                                      cmp r3, r2
005c1204  01 00 00 1a                                      bne #0x5c1210
005c1208  05 00 a0 e1                                      mov r0, r5
005c120c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1210  04 00 a0 e1                                      mov r0, r4
005c1214  81 e5 ff eb                                      bl #0x5ba820
005c1218  05 00 a0 e1                                      mov r0, r5
005c121c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005c1220, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager9removeAllEv
; demangled: glitch::video::CGlobalMaterialParameterManager::removeAll()
; decoder-mode: arm
005c1220  70 40 2d e9                                      push {r4, r5, r6, lr}
005c1224  00 10 a0 e3                                      mov r1, #0
005c1228  00 40 a0 e1                                      mov r4, r0
005c122c  b4 ff ff eb                                      bl #0x5c1104
005c1230  00 50 50 e2                                      subs r5, r0, #0
005c1234  04 00 00 0a                                      beq #0x5c124c
005c1238  3a 30 d4 e5                                      ldrb r3, [r4, #0x3a]
005c123c  00 20 a0 e3                                      mov r2, #0
005c1240  38 20 c4 e5                                      strb r2, [r4, #0x38]
005c1244  02 00 53 e1                                      cmp r3, r2
005c1248  01 00 00 1a                                      bne #0x5c1254
005c124c  05 00 a0 e1                                      mov r0, r5
005c1250  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1254  04 00 a0 e1                                      mov r0, r4
005c1258  70 e5 ff eb                                      bl #0x5ba820
005c125c  05 00 a0 e1                                      mov r0, r5
005c1260  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005c126c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CGlobalMaterialParameterManager
; alias: _ZN6glitch5video31CGlobalMaterialParameterManager6removeEt
; demangled: glitch::video::CGlobalMaterialParameterManager::remove(unsigned short)
; decoder-mode: arm
005c126c  70 40 2d e9                                      push {r4, r5, r6, lr}
005c1270  00 20 a0 e3                                      mov r2, #0
005c1274  00 40 a0 e1                                      mov r4, r0
005c1278  3c ff ff eb                                      bl #0x5c0f70
005c127c  00 50 50 e2                                      subs r5, r0, #0
005c1280  04 00 00 0a                                      beq #0x5c1298
005c1284  3a 30 d4 e5                                      ldrb r3, [r4, #0x3a]
005c1288  00 20 a0 e3                                      mov r2, #0
005c128c  38 20 c4 e5                                      strb r2, [r4, #0x38]
005c1290  02 00 53 e1                                      cmp r3, r2
005c1294  01 00 00 1a                                      bne #0x5c12a0
005c1298  05 00 a0 e1                                      mov r0, r5
005c129c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c12a0  04 00 a0 e1                                      mov r0, r4
005c12a4  5d e5 ff eb                                      bl #0x5ba820
005c12a8  05 00 a0 e1                                      mov r0, r5
005c12ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
