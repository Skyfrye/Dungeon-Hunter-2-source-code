; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ba0b8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE7getThisEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getThis()
; decoder-mode: arm
005ba0b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba0bc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE7getThisEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getThis() const
; decoder-mode: arm
005ba0bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba0c0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE17getParameterBlockEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterBlock()
; decoder-mode: arm
005ba0c0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005ba0c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba0c8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE17getParameterBlockEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterBlock() const
; decoder-mode: arm
005ba0c8  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005ba0cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba0d0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE8setDirtyEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setDirty()
; decoder-mode: arm
005ba0d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba0d4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14setParameterAtEPif
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(int*, float)
; decoder-mode: arm
005ba0d4  10 40 2d e9                                      push {r4, lr}
005ba0d8  02 00 a0 e1                                      mov r0, r2
005ba0dc  01 40 a0 e1                                      mov r4, r1
005ba0e0  f9 50 f5 eb                                      bl #0x30e4cc
005ba0e4  00 00 84 e5                                      str r0, [r4]
005ba0e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ba0ec, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14setParameterAtEPfi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(float*, int)
; decoder-mode: arm
005ba0ec  10 40 2d e9                                      push {r4, lr}
005ba0f0  02 00 a0 e1                                      mov r0, r2
005ba0f4  01 40 a0 e1                                      mov r4, r1
005ba0f8  19 52 f5 eb                                      bl #0x30e964
005ba0fc  00 00 84 e5                                      str r0, [r4]
005ba100  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ba104, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14setParameterAtEPNS0_7SColorfERKNS_4core8vector4dIfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(glitch::video::SColorf*, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005ba104  01 c0 a0 e1                                      mov ip, r1
005ba108  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
005ba10c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005ba110  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba114, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14setParameterAtEPNS_4core8vector4dIfEERKNS0_7SColorfE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterAt(glitch::core::vector4d<float>*, glitch::video::SColorf const&)
; decoder-mode: arm
005ba114  00 30 92 e5                                      ldr r3, [r2]
005ba118  00 30 81 e5                                      str r3, [r1]
005ba11c  04 30 92 e5                                      ldr r3, [r2, #4]
005ba120  04 30 81 e5                                      str r3, [r1, #4]
005ba124  08 30 92 e5                                      ldr r3, [r2, #8]
005ba128  08 30 81 e5                                      str r3, [r1, #8]
005ba12c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005ba130  0c 30 81 e5                                      str r3, [r1, #0xc]
005ba134  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba138, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14getParameterAtEPKiRf
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(int const*, float&) const
; decoder-mode: arm
005ba138  10 40 2d e9                                      push {r4, lr}
005ba13c  00 00 91 e5                                      ldr r0, [r1]
005ba140  02 40 a0 e1                                      mov r4, r2
005ba144  06 52 f5 eb                                      bl #0x30e964
005ba148  00 00 84 e5                                      str r0, [r4]
005ba14c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ba150, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14getParameterAtEPKfRi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(float const*, int&) const
; decoder-mode: arm
005ba150  10 40 2d e9                                      push {r4, lr}
005ba154  00 00 91 e5                                      ldr r0, [r1]
005ba158  02 40 a0 e1                                      mov r4, r2
005ba15c  da 50 f5 eb                                      bl #0x30e4cc
005ba160  00 00 84 e5                                      str r0, [r4]
005ba164  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ba168, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14getParameterAtEPKNS0_7SColorfERNS_4core8vector4dIfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(glitch::video::SColorf const*, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005ba168  00 30 91 e5                                      ldr r3, [r1]
005ba16c  00 30 82 e5                                      str r3, [r2]
005ba170  04 30 91 e5                                      ldr r3, [r1, #4]
005ba174  04 30 82 e5                                      str r3, [r2, #4]
005ba178  08 30 91 e5                                      ldr r3, [r1, #8]
005ba17c  08 30 82 e5                                      str r3, [r2, #8]
005ba180  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005ba184  0c 30 82 e5                                      str r3, [r2, #0xc]
005ba188  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba18c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14getParameterAtEPKNS_4core8vector4dIfEERNS0_7SColorfE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterAt(glitch::core::vector4d<float> const*, glitch::video::SColorf&) const
; decoder-mode: arm
005ba18c  02 c0 a0 e1                                      mov ip, r2
005ba190  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
005ba194  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005ba198  1e ff 2f e1                                      bx lr

; FUNCTION 0x005bafec, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterDefEt
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterDef(unsigned short) const
; decoder-mode: arm
005bafec  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005baff0  18 20 90 e5                                      ldr r2, [r0, #0x18]
005baff4  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005baff8  0c c0 62 e0                                      rsb ip, r2, ip
005baffc  4c c1 a0 e1                                      asr ip, ip, #2
005bb000  03 30 8f e0                                      add r3, pc, r3
005bb004  8c 00 8c e0                                      add r0, ip, ip, lsl #1
005bb008  00 02 80 e0                                      add r0, r0, r0, lsl #4
005bb00c  00 04 80 e0                                      add r0, r0, r0, lsl #8
005bb010  00 08 80 e0                                      add r0, r0, r0, lsl #16
005bb014  00 c1 8c e0                                      add ip, ip, r0, lsl #2
005bb018  0c 00 51 e1                                      cmp r1, ip
005bb01c  06 00 00 2a                                      bhs #0x5bb03c
005bb020  14 30 a0 e3                                      mov r3, #0x14
005bb024  93 21 22 e0                                      mla r2, r3, r1, r2
005bb028  00 00 92 e5                                      ldr r0, [r2]
005bb02c  00 00 50 e3                                      cmp r0, #0
005bb030  02 00 a0 11                                      movne r0, r2
005bb034  00 00 a0 03                                      moveq r0, #0
005bb038  1e ff 2f e1                                      bx lr
005bb03c  18 20 9f e5                                      ldr r2, [pc, #0x18]
005bb040  02 20 93 e7                                      ldr r2, [r3, r2]
005bb044  00 00 92 e5                                      ldr r0, [r2]
005bb048  00 00 50 e3                                      cmp r0, #0
005bb04c  02 00 a0 11                                      movne r0, r2
005bb050  00 00 a0 03                                      moveq r0, #0
005bb054  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005bb058  90 9a 3d 00 14 28 00 00                          .byte 0x90, 0x9a, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bcc80, declared_size=2440, range_size=2440, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
005bcc80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005bcc84  54 29 9f e5                                      ldr r2, [pc, #0x954]
005bcc88  54 39 9f e5                                      ldr r3, [pc, #0x954]
005bcc8c  a7 df 4d e2                                      sub sp, sp, #0x29c
005bcc90  02 20 8f e0                                      add r2, pc, r2
005bcc94  44 30 8d e5                                      str r3, [sp, #0x44]
005bcc98  03 30 92 e7                                      ldr r3, [r2, r3]
005bcc9c  30 00 8d e5                                      str r0, [sp, #0x30]
005bcca0  34 20 8d e5                                      str r2, [sp, #0x34]
005bcca4  08 00 90 e5                                      ldr r0, [r0, #8]
005bcca8  01 60 a0 e1                                      mov r6, r1
005bccac  30 10 9d e5                                      ldr r1, [sp, #0x30]
005bccb0  00 30 93 e5                                      ldr r3, [r3]
005bccb4  2c 00 8d e5                                      str r0, [sp, #0x2c]
005bccb8  01 00 50 e1                                      cmp r0, r1
005bccbc  94 32 8d e5                                      str r3, [sp, #0x294]
005bccc0  fc 00 00 0a                                      beq #0x5bd0b8
005bccc4  1c 39 9f e5                                      ldr r3, [pc, #0x91c]
005bccc8  1c 29 9f e5                                      ldr r2, [pc, #0x91c]
005bcccc  94 00 8d e2                                      add r0, sp, #0x94
005bccd0  3c 30 8d e5                                      str r3, [sp, #0x3c]
005bccd4  14 39 9f e5                                      ldr r3, [pc, #0x914]
005bccd8  38 20 8d e5                                      str r2, [sp, #0x38]
005bccdc  18 00 8d e5                                      str r0, [sp, #0x18]
005bcce0  03 30 8f e0                                      add r3, pc, r3
005bcce4  1c 30 8d e5                                      str r3, [sp, #0x1c]
005bcce8  04 39 9f e5                                      ldr r3, [pc, #0x904]
005bccec  03 30 8f e0                                      add r3, pc, r3
005bccf0  24 30 8d e5                                      str r3, [sp, #0x24]
005bccf4  fc 38 9f e5                                      ldr r3, [pc, #0x8fc]
005bccf8  03 30 8f e0                                      add r3, pc, r3
005bccfc  28 30 8d e5                                      str r3, [sp, #0x28]
005bcd00  30 20 9d e5                                      ldr r2, [sp, #0x30]
005bcd04  18 10 92 e5                                      ldr r1, [r2, #0x18]
005bcd08  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
005bcd0c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005bcd10  03 30 61 e0                                      rsb r3, r1, r3
005bcd14  43 31 a0 e1                                      asr r3, r3, #2
005bcd18  bc 01 d2 e1                                      ldrh r0, [r2, #0x1c]
005bcd1c  83 20 83 e0                                      add r2, r3, r3, lsl #1
005bcd20  02 22 82 e0                                      add r2, r2, r2, lsl #4
005bcd24  02 24 82 e0                                      add r2, r2, r2, lsl #8
005bcd28  02 28 82 e0                                      add r2, r2, r2, lsl #16
005bcd2c  02 21 83 e0                                      add r2, r3, r2, lsl #2
005bcd30  02 00 50 e1                                      cmp r0, r2
005bcd34  ea 01 00 2a                                      bhs #0x5bd4e4
005bcd38  14 90 a0 e3                                      mov sb, #0x14
005bcd3c  99 10 29 e0                                      mla sb, sb, r0, r1
005bcd40  00 10 99 e5                                      ldr r1, [sb]
005bcd44  00 00 51 e3                                      cmp r1, #0
005bcd48  eb 01 00 0a                                      beq #0x5bd4fc
005bcd4c  00 30 96 e5                                      ldr r3, [r6]
005bcd50  30 30 93 e5                                      ldr r3, [r3, #0x30]
005bcd54  04 10 81 e2                                      add r1, r1, #4
005bcd58  06 00 a0 e1                                      mov r0, r6
005bcd5c  33 ff 2f e1                                      blx r3
005bcd60  06 00 a0 e1                                      mov r0, r6
005bcd64  b4 10 d9 e1                                      ldrh r1, [sb, #4]
005bcd68  01 20 a0 e3                                      mov r2, #1
005bcd6c  50 f7 ff eb                                      bl #0x5baab4
005bcd70  38 20 9d e5                                      ldr r2, [sp, #0x38]
005bcd74  06 00 a0 e1                                      mov r0, r6
005bcd78  01 30 a0 e3                                      mov r3, #1
005bcd7c  02 10 8f e0                                      add r1, pc, r2
005bcd80  06 20 d9 e5                                      ldrb r2, [sb, #6]
005bcd84  38 f6 ff eb                                      bl #0x5ba66c
005bcd88  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005bcd8c  08 20 99 e5                                      ldr r2, [sb, #8]
005bcd90  06 00 a0 e1                                      mov r0, r6
005bcd94  03 10 8f e0                                      add r1, pc, r3
005bcd98  00 c0 96 e5                                      ldr ip, [r6]
005bcd9c  01 30 a0 e3                                      mov r3, #1
005bcda0  0f e0 a0 e1                                      mov lr, pc
005bcda4  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005bcda8  30 10 9d e5                                      ldr r1, [sp, #0x30]
005bcdac  18 00 9d e5                                      ldr r0, [sp, #0x18]
005bcdb0  0c 50 99 e5                                      ldr r5, [sb, #0xc]
005bcdb4  2c a0 91 e5                                      ldr sl, [r1, #0x2c]
005bcdb8  50 f7 ff eb                                      bl #0x5bab00
005bcdbc  08 20 99 e5                                      ldr r2, [sb, #8]
005bcdc0  01 00 52 e3                                      cmp r2, #1
005bcdc4  20 20 8d e5                                      str r2, [sp, #0x20]
005bcdc8  e5 01 00 0a                                      beq #0x5bd564
005bcdcc  20 10 9d e5                                      ldr r1, [sp, #0x20]
005bcdd0  00 00 51 e3                                      cmp r1, #0
005bcdd4  a3 00 00 0a                                      beq #0x5bd068
005bcdd8  1c 28 9f e5                                      ldr r2, [pc, #0x81c]
005bcddc  05 a0 8a e0                                      add sl, sl, r5
005bcde0  fe 45 a0 e3                                      mov r4, #0x3f800000
005bcde4  40 20 8d e5                                      str r2, [sp, #0x40]
005bcde8  01 30 a0 e1                                      mov r3, r1
005bcdec  00 50 a0 e3                                      mov r5, #0
005bcdf0  48 b0 8d e2                                      add fp, sp, #0x48
005bcdf4  9f 8f 8d e2                                      add r8, sp, #0x27c
005bcdf8  06 70 a0 e1                                      mov r7, r6
005bcdfc  01 00 53 e3                                      cmp r3, #1
005bce00  19 00 00 9a                                      bls #0x5bce6c
005bce04  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005bce08  08 00 a0 e1                                      mov r0, r8
005bce0c  8c 82 8d e5                                      str r8, [sp, #0x28c]
005bce10  01 20 a0 e1                                      mov r2, r1
005bce14  90 82 8d e5                                      str r8, [sp, #0x290]
005bce18  75 a4 f5 eb                                      bl #0x325ff4
005bce1c  18 30 9d e5                                      ldr r3, [sp, #0x18]
005bce20  08 10 a0 e1                                      mov r1, r8
005bce24  0c 00 83 e2                                      add r0, r3, #0xc
005bce28  41 f6 ff eb                                      bl #0x5ba734
005bce2c  90 02 9d e5                                      ldr r0, [sp, #0x290]
005bce30  08 00 50 e1                                      cmp r0, r8
005bce34  02 00 00 0a                                      beq #0x5bce44
005bce38  00 00 50 e3                                      cmp r0, #0
005bce3c  00 00 00 0a                                      beq #0x5bce44
005bce40  82 4d f5 eb                                      bl #0x310450
005bce44  18 00 9d e5                                      ldr r0, [sp, #0x18]
005bce48  24 10 9d e5                                      ldr r1, [sp, #0x24]
005bce4c  08 60 80 e2                                      add r6, r0, #8
005bce50  06 00 a0 e1                                      mov r0, r6
005bce54  cf 58 f5 eb                                      bl #0x313198
005bce58  05 10 a0 e1                                      mov r1, r5
005bce5c  06 00 a0 e1                                      mov r0, r6
005bce60  31 1f fb eb                                      bl #0x484b2c
005bce64  28 10 9d e5                                      ldr r1, [sp, #0x28]
005bce68  ca 58 f5 eb                                      bl #0x313198
005bce6c  00 60 a0 e3                                      mov r6, #0
005bce70  40 20 a0 e3                                      mov r2, #0x40
005bce74  06 10 a0 e1                                      mov r1, r6
005bce78  0b 00 a0 e1                                      mov r0, fp
005bce7c  77 45 f5 eb                                      bl #0x30e460
005bce80  0b 00 a0 e1                                      mov r0, fp
005bce84  06 10 a0 e1                                      mov r1, r6
005bce88  40 20 a0 e3                                      mov r2, #0x40
005bce8c  73 45 f5 eb                                      bl #0x30e460
005bce90  01 30 a0 e3                                      mov r3, #1
005bce94  88 30 cd e5                                      strb r3, [sp, #0x88]
005bce98  48 40 8d e5                                      str r4, [sp, #0x48]
005bce9c  5c 40 8d e5                                      str r4, [sp, #0x5c]
005bcea0  70 40 8d e5                                      str r4, [sp, #0x70]
005bcea4  84 40 8d e5                                      str r4, [sp, #0x84]
005bcea8  06 30 d9 e5                                      ldrb r3, [sb, #6]
005bceac  01 30 43 e2                                      sub r3, r3, #1
005bceb0  11 00 53 e3                                      cmp r3, #0x11
005bceb4  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005bceb8  43 00 00 ea                                      b #0x5bcfcc
005bcebc  34 01 00 ea                                      b #0x5bd394
005bcec0  1b 01 00 ea                                      b #0x5bd334
005bcec4  02 01 00 ea                                      b #0x5bd2d4
005bcec8  ec 00 00 ea                                      b #0x5bd280
005bcecc  5a 01 00 ea                                      b #0x5bd43c
005bced0  44 01 00 ea                                      b #0x5bd3e8
005bced4  6d 01 00 ea                                      b #0x5bd490
005bced8  d3 00 00 ea                                      b #0x5bd22c
005bcedc  3a 00 00 ea                                      b #0x5bcfcc
005bcee0  39 00 00 ea                                      b #0x5bcfcc
005bcee4  b6 00 00 ea                                      b #0x5bd1c4
005bcee8  96 00 00 ea                                      b #0x5bd148
005bceec  95 00 00 ea                                      b #0x5bd148
005bcef0  94 00 00 ea                                      b #0x5bd148
005bcef4  93 00 00 ea                                      b #0x5bd148
005bcef8  77 00 00 ea                                      b #0x5bd0dc
005bcefc  38 00 00 ea                                      b #0x5bcfe4
005bcf00  ff ff ff ea                                      b #0x5bcf04
005bcf04  00 30 97 e5                                      ldr r3, [r7]
005bcf08  4b 6f 8d e2                                      add r6, sp, #0x12c
005bcf0c  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bcf10  c8 c2 93 e5                                      ldr ip, [r3, #0x2c8]
005bcf14  06 00 a0 e1                                      mov r0, r6
005bcf18  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bcf1c  10 c0 8d e5                                      str ip, [sp, #0x10]
005bcf20  3c 61 8d e5                                      str r6, [sp, #0x13c]
005bcf24  40 61 8d e5                                      str r6, [sp, #0x140]
005bcf28  31 a4 f5 eb                                      bl #0x325ff4
005bcf2c  00 30 9a e5                                      ldr r3, [sl]
005bcf30  40 11 9d e5                                      ldr r1, [sp, #0x140]
005bcf34  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bcf38  00 00 53 e3                                      cmp r3, #0
005bcf3c  8c 30 8d e5                                      str r3, [sp, #0x8c]
005bcf40  00 20 93 15                                      ldrne r2, [r3]
005bcf44  07 00 a0 e1                                      mov r0, r7
005bcf48  01 20 82 12                                      addne r2, r2, #1
005bcf4c  00 20 83 15                                      strne r2, [r3]
005bcf50  8c 20 8d e2                                      add r2, sp, #0x8c
005bcf54  00 30 a0 e3                                      mov r3, #0
005bcf58  3c ff 2f e1                                      blx ip
005bcf5c  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005bcf60  00 00 50 e3                                      cmp r0, #0
005bcf64  11 00 00 0a                                      beq #0x5bcfb0
005bcf68  00 30 90 e5                                      ldr r3, [r0]
005bcf6c  01 30 43 e2                                      sub r3, r3, #1
005bcf70  00 00 53 e3                                      cmp r3, #0
005bcf74  00 30 80 e5                                      str r3, [r0]
005bcf78  0c 00 00 1a                                      bne #0x5bcfb0
005bcf7c  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005bcf80  00 00 53 e3                                      cmp r3, #0
005bcf84  06 00 00 1a                                      bne #0x5bcfa4
005bcf88  34 20 9d e5                                      ldr r2, [sp, #0x34]
005bcf8c  40 10 9d e5                                      ldr r1, [sp, #0x40]
005bcf90  01 30 92 e7                                      ldr r3, [r2, r1]
005bcf94  50 20 90 e5                                      ldr r2, [r0, #0x50]
005bcf98  00 10 93 e5                                      ldr r1, [r3]
005bcf9c  00 10 82 e5                                      str r1, [r2]
005bcfa0  00 20 83 e5                                      str r2, [r3]
005bcfa4  00 30 a0 e3                                      mov r3, #0
005bcfa8  50 30 80 e5                                      str r3, [r0, #0x50]
005bcfac  bf 44 f5 eb                                      bl #0x30e2b0
005bcfb0  40 01 9d e5                                      ldr r0, [sp, #0x140]
005bcfb4  06 00 50 e1                                      cmp r0, r6
005bcfb8  02 00 00 0a                                      beq #0x5bcfc8
005bcfbc  00 00 50 e3                                      cmp r0, #0
005bcfc0  00 00 00 0a                                      beq #0x5bcfc8
005bcfc4  21 4d f5 eb                                      bl #0x310450
005bcfc8  04 a0 8a e2                                      add sl, sl, #4
005bcfcc  20 30 9d e5                                      ldr r3, [sp, #0x20]
005bcfd0  01 50 85 e2                                      add r5, r5, #1
005bcfd4  03 00 55 e1                                      cmp r5, r3
005bcfd8  21 00 00 0a                                      beq #0x5bd064
005bcfdc  08 30 99 e5                                      ldr r3, [sb, #8]
005bcfe0  85 ff ff ea                                      b #0x5bcdfc
005bcfe4  00 30 97 e5                                      ldr r3, [r7]
005bcfe8  51 6f 8d e2                                      add r6, sp, #0x144
005bcfec  06 00 a0 e1                                      mov r0, r6
005bcff0  30 c1 93 e5                                      ldr ip, [r3, #0x130]
005bcff4  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bcff8  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bcffc  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd000  54 61 8d e5                                      str r6, [sp, #0x154]
005bd004  58 61 8d e5                                      str r6, [sp, #0x158]
005bd008  f9 a3 f5 eb                                      bl #0x325ff4
005bd00c  00 30 a0 e3                                      mov r3, #0
005bd010  08 30 8d e5                                      str r3, [sp, #8]
005bd014  08 30 9a e5                                      ldr r3, [sl, #8]
005bd018  07 00 a0 e1                                      mov r0, r7
005bd01c  58 11 9d e5                                      ldr r1, [sp, #0x158]
005bd020  00 30 8d e5                                      str r3, [sp]
005bd024  0c 30 9a e5                                      ldr r3, [sl, #0xc]
005bd028  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd02c  04 30 8d e5                                      str r3, [sp, #4]
005bd030  0c 00 9a e8                                      ldm sl, {r2, r3}
005bd034  3c ff 2f e1                                      blx ip
005bd038  58 01 9d e5                                      ldr r0, [sp, #0x158]
005bd03c  06 00 50 e1                                      cmp r0, r6
005bd040  02 00 00 0a                                      beq #0x5bd050
005bd044  00 00 50 e3                                      cmp r0, #0
005bd048  00 00 00 0a                                      beq #0x5bd050
005bd04c  ff 4c f5 eb                                      bl #0x310450
005bd050  10 a0 8a e2                                      add sl, sl, #0x10
005bd054  20 30 9d e5                                      ldr r3, [sp, #0x20]
005bd058  01 50 85 e2                                      add r5, r5, #1
005bd05c  03 00 55 e1                                      cmp r5, r3
005bd060  dd ff ff 1a                                      bne #0x5bcfdc
005bd064  07 60 a0 e1                                      mov r6, r7
005bd068  00 30 96 e5                                      ldr r3, [r6]
005bd06c  06 00 a0 e1                                      mov r0, r6
005bd070  0f e0 a0 e1                                      mov lr, pc
005bd074  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005bd078  18 00 9d e5                                      ldr r0, [sp, #0x18]
005bd07c  aa fd ff eb                                      bl #0x5bc72c
005bd080  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005bd084  0c 30 90 e5                                      ldr r3, [r0, #0xc]
005bd088  00 00 53 e3                                      cmp r3, #0
005bd08c  01 00 00 1a                                      bne #0x5bd098
005bd090  21 01 00 ea                                      b #0x5bd51c
005bd094  02 30 a0 e1                                      mov r3, r2
005bd098  08 20 93 e5                                      ldr r2, [r3, #8]
005bd09c  00 00 52 e3                                      cmp r2, #0
005bd0a0  fb ff ff 1a                                      bne #0x5bd094
005bd0a4  2c 30 8d e5                                      str r3, [sp, #0x2c]
005bd0a8  30 20 9d e5                                      ldr r2, [sp, #0x30]
005bd0ac  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005bd0b0  03 00 52 e1                                      cmp r2, r3
005bd0b4  11 ff ff 1a                                      bne #0x5bcd00
005bd0b8  34 10 9d e5                                      ldr r1, [sp, #0x34]
005bd0bc  44 00 9d e5                                      ldr r0, [sp, #0x44]
005bd0c0  94 22 9d e5                                      ldr r2, [sp, #0x294]
005bd0c4  00 30 91 e7                                      ldr r3, [r1, r0]
005bd0c8  00 30 93 e5                                      ldr r3, [r3]
005bd0cc  03 00 52 e1                                      cmp r2, r3
005bd0d0  41 01 00 1a                                      bne #0x5bd5dc
005bd0d4  a7 df 8d e2                                      add sp, sp, #0x29c
005bd0d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005bd0dc  00 30 97 e5                                      ldr r3, [r7]
005bd0e0  57 6f 8d e2                                      add r6, sp, #0x15c
005bd0e4  06 00 a0 e1                                      mov r0, r6
005bd0e8  18 c1 93 e5                                      ldr ip, [r3, #0x118]
005bd0ec  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd0f0  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd0f4  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd0f8  6c 61 8d e5                                      str r6, [sp, #0x16c]
005bd0fc  70 61 8d e5                                      str r6, [sp, #0x170]
005bd100  bb a3 f5 eb                                      bl #0x325ff4
005bd104  01 10 da e5                                      ldrb r1, [sl, #1]
005bd108  00 20 da e5                                      ldrb r2, [sl]
005bd10c  02 00 da e5                                      ldrb r0, [sl, #2]
005bd110  03 30 da e5                                      ldrb r3, [sl, #3]
005bd114  01 24 82 e1                                      orr r2, r2, r1, lsl #8
005bd118  00 28 82 e1                                      orr r2, r2, r0, lsl #16
005bd11c  03 2c 82 e1                                      orr r2, r2, r3, lsl #24
005bd120  07 00 a0 e1                                      mov r0, r7
005bd124  70 11 9d e5                                      ldr r1, [sp, #0x170]
005bd128  00 30 a0 e3                                      mov r3, #0
005bd12c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd130  3c ff 2f e1                                      blx ip
005bd134  70 01 9d e5                                      ldr r0, [sp, #0x170]
005bd138  06 00 50 e1                                      cmp r0, r6
005bd13c  9e ff ff 1a                                      bne #0x5bcfbc
005bd140  04 a0 8a e2                                      add sl, sl, #4
005bd144  a0 ff ff ea                                      b #0x5bcfcc
005bd148  00 30 97 e5                                      ldr r3, [r7]
005bd14c  5d 6f 8d e2                                      add r6, sp, #0x174
005bd150  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd154  b0 c2 93 e5                                      ldr ip, [r3, #0x2b0]
005bd158  06 00 a0 e1                                      mov r0, r6
005bd15c  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd160  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd164  84 61 8d e5                                      str r6, [sp, #0x184]
005bd168  88 61 8d e5                                      str r6, [sp, #0x188]
005bd16c  a0 a3 f5 eb                                      bl #0x325ff4
005bd170  00 30 9a e5                                      ldr r3, [sl]
005bd174  88 11 9d e5                                      ldr r1, [sp, #0x188]
005bd178  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd17c  00 00 53 e3                                      cmp r3, #0
005bd180  90 30 8d e5                                      str r3, [sp, #0x90]
005bd184  04 20 93 15                                      ldrne r2, [r3, #4]
005bd188  07 00 a0 e1                                      mov r0, r7
005bd18c  01 20 82 12                                      addne r2, r2, #1
005bd190  04 20 83 15                                      strne r2, [r3, #4]
005bd194  90 20 8d e2                                      add r2, sp, #0x90
005bd198  00 30 a0 e3                                      mov r3, #0
005bd19c  3c ff 2f e1                                      blx ip
005bd1a0  90 00 9d e5                                      ldr r0, [sp, #0x90]
005bd1a4  00 00 50 e3                                      cmp r0, #0
005bd1a8  00 00 00 0a                                      beq #0x5bd1b0
005bd1ac  f4 80 f5 eb                                      bl #0x31d584
005bd1b0  88 01 9d e5                                      ldr r0, [sp, #0x188]
005bd1b4  06 00 50 e1                                      cmp r0, r6
005bd1b8  7f ff ff 1a                                      bne #0x5bcfbc
005bd1bc  04 a0 8a e2                                      add sl, sl, #4
005bd1c0  81 ff ff ea                                      b #0x5bcfcc
005bd1c4  00 30 9a e5                                      ldr r3, [sl]
005bd1c8  00 00 53 e3                                      cmp r3, #0
005bd1cc  ec 00 00 0a                                      beq #0x5bd584
005bd1d0  00 e0 97 e5                                      ldr lr, [r7]
005bd1d4  69 cf 8d e2                                      add ip, sp, #0x1a4
005bd1d8  0c 00 a0 e1                                      mov r0, ip
005bd1dc  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd1e0  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd1e4  08 62 9e e5                                      ldr r6, [lr, #0x208]
005bd1e8  b4 c1 8d e5                                      str ip, [sp, #0x1b4]
005bd1ec  b8 c1 8d e5                                      str ip, [sp, #0x1b8]
005bd1f0  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd1f4  14 30 8d e5                                      str r3, [sp, #0x14]
005bd1f8  7d a3 f5 eb                                      bl #0x325ff4
005bd1fc  14 30 9d e5                                      ldr r3, [sp, #0x14]
005bd200  07 00 a0 e1                                      mov r0, r7
005bd204  b8 11 9d e5                                      ldr r1, [sp, #0x1b8]
005bd208  03 20 a0 e1                                      mov r2, r3
005bd20c  00 30 a0 e3                                      mov r3, #0
005bd210  36 ff 2f e1                                      blx r6
005bd214  b8 01 9d e5                                      ldr r0, [sp, #0x1b8]
005bd218  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd21c  0c 00 50 e1                                      cmp r0, ip
005bd220  65 ff ff 1a                                      bne #0x5bcfbc
005bd224  04 a0 8a e2                                      add sl, sl, #4
005bd228  67 ff ff ea                                      b #0x5bcfcc
005bd22c  00 30 97 e5                                      ldr r3, [r7]
005bd230  6f cf 8d e2                                      add ip, sp, #0x1bc
005bd234  0c 00 a0 e1                                      mov r0, ip
005bd238  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd23c  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd240  c0 61 93 e5                                      ldr r6, [r3, #0x1c0]
005bd244  cc c1 8d e5                                      str ip, [sp, #0x1cc]
005bd248  d0 c1 8d e5                                      str ip, [sp, #0x1d0]
005bd24c  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd250  67 a3 f5 eb                                      bl #0x325ff4
005bd254  07 00 a0 e1                                      mov r0, r7
005bd258  d0 11 9d e5                                      ldr r1, [sp, #0x1d0]
005bd25c  0a 20 a0 e1                                      mov r2, sl
005bd260  00 30 a0 e3                                      mov r3, #0
005bd264  36 ff 2f e1                                      blx r6
005bd268  d0 01 9d e5                                      ldr r0, [sp, #0x1d0]
005bd26c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd270  0c 00 50 e1                                      cmp r0, ip
005bd274  72 ff ff 1a                                      bne #0x5bd044
005bd278  10 a0 8a e2                                      add sl, sl, #0x10
005bd27c  74 ff ff ea                                      b #0x5bd054
005bd280  00 30 97 e5                                      ldr r3, [r7]
005bd284  87 cf 8d e2                                      add ip, sp, #0x21c
005bd288  0c 00 a0 e1                                      mov r0, ip
005bd28c  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd290  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd294  78 61 93 e5                                      ldr r6, [r3, #0x178]
005bd298  2c c2 8d e5                                      str ip, [sp, #0x22c]
005bd29c  30 c2 8d e5                                      str ip, [sp, #0x230]
005bd2a0  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd2a4  52 a3 f5 eb                                      bl #0x325ff4
005bd2a8  07 00 a0 e1                                      mov r0, r7
005bd2ac  30 12 9d e5                                      ldr r1, [sp, #0x230]
005bd2b0  0a 20 a0 e1                                      mov r2, sl
005bd2b4  00 30 a0 e3                                      mov r3, #0
005bd2b8  36 ff 2f e1                                      blx r6
005bd2bc  30 02 9d e5                                      ldr r0, [sp, #0x230]
005bd2c0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd2c4  0c 00 50 e1                                      cmp r0, ip
005bd2c8  5d ff ff 1a                                      bne #0x5bd044
005bd2cc  10 a0 8a e2                                      add sl, sl, #0x10
005bd2d0  5f ff ff ea                                      b #0x5bd054
005bd2d4  00 30 97 e5                                      ldr r3, [r7]
005bd2d8  8d cf 8d e2                                      add ip, sp, #0x234
005bd2dc  0c 00 a0 e1                                      mov r0, ip
005bd2e0  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd2e4  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd2e8  60 61 93 e5                                      ldr r6, [r3, #0x160]
005bd2ec  44 c2 8d e5                                      str ip, [sp, #0x244]
005bd2f0  48 c2 8d e5                                      str ip, [sp, #0x248]
005bd2f4  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd2f8  3d a3 f5 eb                                      bl #0x325ff4
005bd2fc  07 00 a0 e1                                      mov r0, r7
005bd300  48 12 9d e5                                      ldr r1, [sp, #0x248]
005bd304  0a 20 a0 e1                                      mov r2, sl
005bd308  00 30 a0 e3                                      mov r3, #0
005bd30c  36 ff 2f e1                                      blx r6
005bd310  48 02 9d e5                                      ldr r0, [sp, #0x248]
005bd314  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd318  0c 00 50 e1                                      cmp r0, ip
005bd31c  02 00 00 0a                                      beq #0x5bd32c
005bd320  00 00 50 e3                                      cmp r0, #0
005bd324  00 00 00 0a                                      beq #0x5bd32c
005bd328  48 4c f5 eb                                      bl #0x310450
005bd32c  0c a0 8a e2                                      add sl, sl, #0xc
005bd330  25 ff ff ea                                      b #0x5bcfcc
005bd334  00 30 97 e5                                      ldr r3, [r7]
005bd338  93 cf 8d e2                                      add ip, sp, #0x24c
005bd33c  0c 00 a0 e1                                      mov r0, ip
005bd340  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd344  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd348  48 61 93 e5                                      ldr r6, [r3, #0x148]
005bd34c  5c c2 8d e5                                      str ip, [sp, #0x25c]
005bd350  60 c2 8d e5                                      str ip, [sp, #0x260]
005bd354  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd358  25 a3 f5 eb                                      bl #0x325ff4
005bd35c  07 00 a0 e1                                      mov r0, r7
005bd360  60 12 9d e5                                      ldr r1, [sp, #0x260]
005bd364  0a 20 a0 e1                                      mov r2, sl
005bd368  00 30 a0 e3                                      mov r3, #0
005bd36c  36 ff 2f e1                                      blx r6
005bd370  60 02 9d e5                                      ldr r0, [sp, #0x260]
005bd374  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd378  0c 00 50 e1                                      cmp r0, ip
005bd37c  02 00 00 0a                                      beq #0x5bd38c
005bd380  00 00 50 e3                                      cmp r0, #0
005bd384  00 00 00 0a                                      beq #0x5bd38c
005bd388  30 4c f5 eb                                      bl #0x310450
005bd38c  08 a0 8a e2                                      add sl, sl, #8
005bd390  0d ff ff ea                                      b #0x5bcfcc
005bd394  00 30 97 e5                                      ldr r3, [r7]
005bd398  99 cf 8d e2                                      add ip, sp, #0x264
005bd39c  0c 00 a0 e1                                      mov r0, ip
005bd3a0  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd3a4  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd3a8  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
005bd3ac  74 c2 8d e5                                      str ip, [sp, #0x274]
005bd3b0  78 c2 8d e5                                      str ip, [sp, #0x278]
005bd3b4  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd3b8  0d a3 f5 eb                                      bl #0x325ff4
005bd3bc  07 00 a0 e1                                      mov r0, r7
005bd3c0  78 12 9d e5                                      ldr r1, [sp, #0x278]
005bd3c4  00 20 9a e5                                      ldr r2, [sl]
005bd3c8  00 30 a0 e3                                      mov r3, #0
005bd3cc  36 ff 2f e1                                      blx r6
005bd3d0  78 02 9d e5                                      ldr r0, [sp, #0x278]
005bd3d4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd3d8  0c 00 50 e1                                      cmp r0, ip
005bd3dc  f6 fe ff 1a                                      bne #0x5bcfbc
005bd3e0  04 a0 8a e2                                      add sl, sl, #4
005bd3e4  f8 fe ff ea                                      b #0x5bcfcc
005bd3e8  00 30 97 e5                                      ldr r3, [r7]
005bd3ec  7b cf 8d e2                                      add ip, sp, #0x1ec
005bd3f0  0c 00 a0 e1                                      mov r0, ip
005bd3f4  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd3f8  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd3fc  90 61 93 e5                                      ldr r6, [r3, #0x190]
005bd400  fc c1 8d e5                                      str ip, [sp, #0x1fc]
005bd404  00 c2 8d e5                                      str ip, [sp, #0x200]
005bd408  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd40c  f8 a2 f5 eb                                      bl #0x325ff4
005bd410  07 00 a0 e1                                      mov r0, r7
005bd414  00 12 9d e5                                      ldr r1, [sp, #0x200]
005bd418  0a 20 a0 e1                                      mov r2, sl
005bd41c  00 30 a0 e3                                      mov r3, #0
005bd420  36 ff 2f e1                                      blx r6
005bd424  00 02 9d e5                                      ldr r0, [sp, #0x200]
005bd428  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd42c  0c 00 50 e1                                      cmp r0, ip
005bd430  d2 ff ff 1a                                      bne #0x5bd380
005bd434  08 a0 8a e2                                      add sl, sl, #8
005bd438  e3 fe ff ea                                      b #0x5bcfcc
005bd43c  00 30 97 e5                                      ldr r3, [r7]
005bd440  81 cf 8d e2                                      add ip, sp, #0x204
005bd444  0c 00 a0 e1                                      mov r0, ip
005bd448  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd44c  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd450  64 60 93 e5                                      ldr r6, [r3, #0x64]
005bd454  14 c2 8d e5                                      str ip, [sp, #0x214]
005bd458  18 c2 8d e5                                      str ip, [sp, #0x218]
005bd45c  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd460  e3 a2 f5 eb                                      bl #0x325ff4
005bd464  07 00 a0 e1                                      mov r0, r7
005bd468  18 12 9d e5                                      ldr r1, [sp, #0x218]
005bd46c  00 20 9a e5                                      ldr r2, [sl]
005bd470  00 30 a0 e3                                      mov r3, #0
005bd474  36 ff 2f e1                                      blx r6
005bd478  18 02 9d e5                                      ldr r0, [sp, #0x218]
005bd47c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd480  0c 00 50 e1                                      cmp r0, ip
005bd484  cc fe ff 1a                                      bne #0x5bcfbc
005bd488  04 a0 8a e2                                      add sl, sl, #4
005bd48c  ce fe ff ea                                      b #0x5bcfcc
005bd490  00 30 97 e5                                      ldr r3, [r7]
005bd494  75 cf 8d e2                                      add ip, sp, #0x1d4
005bd498  0c 00 a0 e1                                      mov r0, ip
005bd49c  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd4a0  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd4a4  a8 61 93 e5                                      ldr r6, [r3, #0x1a8]
005bd4a8  e4 c1 8d e5                                      str ip, [sp, #0x1e4]
005bd4ac  e8 c1 8d e5                                      str ip, [sp, #0x1e8]
005bd4b0  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd4b4  ce a2 f5 eb                                      bl #0x325ff4
005bd4b8  07 00 a0 e1                                      mov r0, r7
005bd4bc  e8 11 9d e5                                      ldr r1, [sp, #0x1e8]
005bd4c0  0a 20 a0 e1                                      mov r2, sl
005bd4c4  00 30 a0 e3                                      mov r3, #0
005bd4c8  36 ff 2f e1                                      blx r6
005bd4cc  e8 01 9d e5                                      ldr r0, [sp, #0x1e8]
005bd4d0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd4d4  0c 00 50 e1                                      cmp r0, ip
005bd4d8  90 ff ff 1a                                      bne #0x5bd320
005bd4dc  0c a0 8a e2                                      add sl, sl, #0xc
005bd4e0  b9 fe ff ea                                      b #0x5bcfcc
005bd4e4  14 31 9f e5                                      ldr r3, [pc, #0x114]
005bd4e8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005bd4ec  03 90 90 e7                                      ldr sb, [r0, r3]
005bd4f0  00 10 99 e5                                      ldr r1, [sb]
005bd4f4  00 00 51 e3                                      cmp r1, #0
005bd4f8  13 fe ff 1a                                      bne #0x5bcd4c
005bd4fc  01 90 a0 e1                                      mov sb, r1
005bd500  00 10 91 e5                                      ldr r1, [r1]
005bd504  00 30 96 e5                                      ldr r3, [r6]
005bd508  00 00 51 e3                                      cmp r1, #0
005bd50c  30 30 93 e5                                      ldr r3, [r3, #0x30]
005bd510  01 90 a0 01                                      moveq sb, r1
005bd514  0f fe ff 0a                                      beq #0x5bcd58
005bd518  0d fe ff ea                                      b #0x5bcd54
005bd51c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005bd520  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005bd524  04 20 91 e5                                      ldr r2, [r1, #4]
005bd528  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005bd52c  00 00 51 e1                                      cmp r1, r0
005bd530  06 00 00 1a                                      bne #0x5bd550
005bd534  02 30 a0 e1                                      mov r3, r2
005bd538  04 20 92 e5                                      ldr r2, [r2, #4]
005bd53c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005bd540  01 00 53 e1                                      cmp r3, r1
005bd544  fa ff ff 0a                                      beq #0x5bd534
005bd548  2c 30 8d e5                                      str r3, [sp, #0x2c]
005bd54c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005bd550  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005bd554  02 00 53 e1                                      cmp r3, r2
005bd558  02 10 a0 11                                      movne r1, r2
005bd55c  2c 10 8d e5                                      str r1, [sp, #0x2c]
005bd560  d0 fe ff ea                                      b #0x5bd0a8
005bd564  18 30 9d e5                                      ldr r3, [sp, #0x18]
005bd568  94 10 9f e5                                      ldr r1, [pc, #0x94]
005bd56c  08 00 83 e2                                      add r0, r3, #8
005bd570  01 10 8f e0                                      add r1, pc, r1
005bd574  07 57 f5 eb                                      bl #0x313198
005bd578  08 00 99 e5                                      ldr r0, [sb, #8]
005bd57c  20 00 8d e5                                      str r0, [sp, #0x20]
005bd580  11 fe ff ea                                      b #0x5bcdcc
005bd584  00 e0 97 e5                                      ldr lr, [r7]
005bd588  63 cf 8d e2                                      add ip, sp, #0x18c
005bd58c  0c 00 a0 e1                                      mov r0, ip
005bd590  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005bd594  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
005bd598  08 62 9e e5                                      ldr r6, [lr, #0x208]
005bd59c  9c c1 8d e5                                      str ip, [sp, #0x19c]
005bd5a0  a0 c1 8d e5                                      str ip, [sp, #0x1a0]
005bd5a4  10 c0 8d e5                                      str ip, [sp, #0x10]
005bd5a8  14 30 8d e5                                      str r3, [sp, #0x14]
005bd5ac  90 a2 f5 eb                                      bl #0x325ff4
005bd5b0  07 00 a0 e1                                      mov r0, r7
005bd5b4  14 30 9d e5                                      ldr r3, [sp, #0x14]
005bd5b8  a0 11 9d e5                                      ldr r1, [sp, #0x1a0]
005bd5bc  0b 20 a0 e1                                      mov r2, fp
005bd5c0  36 ff 2f e1                                      blx r6
005bd5c4  a0 01 9d e5                                      ldr r0, [sp, #0x1a0]
005bd5c8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005bd5cc  0c 00 50 e1                                      cmp r0, ip
005bd5d0  79 fe ff 1a                                      bne #0x5bcfbc
005bd5d4  04 a0 8a e2                                      add sl, sl, #4
005bd5d8  7b fe ff ea                                      b #0x5bcfcc
005bd5dc  4b 43 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005bd5e0  00 7e 3d 00 ac 40 00 00 7c 3c 32 00 84 3c 32 00  .byte 0x00, 0x7e, 0x3d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x7c, 0x3c, 0x32, 0x00, 0x84, 0x3c, 0x32, 0x00
005bd5f0  28 eb 30 00 cc f4 31 00 58 27 30 00 c0 3c 00 00  .byte 0x28, 0xeb, 0x30, 0x00, 0xcc, 0xf4, 0x31, 0x00, 0x58, 0x27, 0x30, 0x00, 0xc0, 0x3c, 0x00, 0x00
005bd600  14 28 00 00 60 33 35 00                          .byte 0x14, 0x28, 0x00, 0x00, 0x60, 0x33, 0x35, 0x00

; FUNCTION 0x005bd8d4, declared_size=448, range_size=448, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14grabParametersEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::grabParameters()
; decoder-mode: arm
005bd8d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005bd8d8  08 60 90 e5                                      ldr r6, [r0, #8]
005bd8dc  a4 a1 9f e5                                      ldr sl, [pc, #0x1a4]
005bd8e0  0c d0 4d e2                                      sub sp, sp, #0xc
005bd8e4  00 00 56 e1                                      cmp r6, r0
005bd8e8  00 70 a0 e1                                      mov r7, r0
005bd8ec  0a a0 8f e0                                      add sl, pc, sl
005bd8f0  31 00 00 0a                                      beq #0x5bd9bc
005bd8f4  90 21 9f e5                                      ldr r2, [pc, #0x190]
005bd8f8  90 91 9f e5                                      ldr sb, [pc, #0x190]
005bd8fc  14 b0 a0 e3                                      mov fp, #0x14
005bd900  04 20 8d e5                                      str r2, [sp, #4]
005bd904  18 30 97 e5                                      ldr r3, [r7, #0x18]
005bd908  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
005bd90c  bc 01 d6 e1                                      ldrh r0, [r6, #0x1c]
005bd910  02 20 63 e0                                      rsb r2, r3, r2
005bd914  42 21 a0 e1                                      asr r2, r2, #2
005bd918  82 10 82 e0                                      add r1, r2, r2, lsl #1
005bd91c  01 12 81 e0                                      add r1, r1, r1, lsl #4
005bd920  01 14 81 e0                                      add r1, r1, r1, lsl #8
005bd924  01 18 81 e0                                      add r1, r1, r1, lsl #16
005bd928  01 21 82 e0                                      add r2, r2, r1, lsl #2
005bd92c  02 00 50 e1                                      cmp r0, r2
005bd930  04 20 9d 25                                      ldrhs r2, [sp, #4]
005bd934  9b 30 23 30                                      mlalo r3, fp, r0, r3
005bd938  02 30 9a 27                                      ldrhs r3, [sl, r2]
005bd93c  00 20 93 e5                                      ldr r2, [r3]
005bd940  00 00 52 e3                                      cmp r2, #0
005bd944  00 30 a0 03                                      moveq r3, #0
005bd948  06 20 d3 e5                                      ldrb r2, [r3, #6]
005bd94c  0b 20 42 e2                                      sub r2, r2, #0xb
005bd950  07 00 52 e3                                      cmp r2, #7
005bd954  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
005bd958  0c 00 00 ea                                      b #0x5bd990
005bd95c  2d 00 00 ea                                      b #0x5bda18
005bd960  05 00 00 ea                                      b #0x5bd97c
005bd964  04 00 00 ea                                      b #0x5bd97c
005bd968  03 00 00 ea                                      b #0x5bd97c
005bd96c  02 00 00 ea                                      b #0x5bd97c
005bd970  06 00 00 ea                                      b #0x5bd990
005bd974  05 00 00 ea                                      b #0x5bd990
005bd978  11 00 00 ea                                      b #0x5bd9c4
005bd97c  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
005bd980  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005bd984  08 10 93 e5                                      ldr r1, [r3, #8]
005bd988  02 00 80 e0                                      add r0, r0, r2
005bd98c  3b f6 ff eb                                      bl #0x5bb280
005bd990  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005bd994  00 00 52 e3                                      cmp r2, #0
005bd998  01 00 00 1a                                      bne #0x5bd9a4
005bd99c  10 00 00 ea                                      b #0x5bd9e4
005bd9a0  03 20 a0 e1                                      mov r2, r3
005bd9a4  08 30 92 e5                                      ldr r3, [r2, #8]
005bd9a8  00 00 53 e3                                      cmp r3, #0
005bd9ac  fb ff ff 1a                                      bne #0x5bd9a0
005bd9b0  02 60 a0 e1                                      mov r6, r2
005bd9b4  06 00 57 e1                                      cmp r7, r6
005bd9b8  d1 ff ff 1a                                      bne #0x5bd904
005bd9bc  0c d0 8d e2                                      add sp, sp, #0xc
005bd9c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005bd9c4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005bd9c8  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
005bd9cc  08 10 93 e5                                      ldr r1, [r3, #8]
005bd9d0  02 00 80 e0                                      add r0, r0, r2
005bd9d4  f5 f6 ff eb                                      bl #0x5bb5b0
005bd9d8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005bd9dc  00 00 52 e3                                      cmp r2, #0
005bd9e0  ef ff ff 1a                                      bne #0x5bd9a4
005bd9e4  04 30 96 e5                                      ldr r3, [r6, #4]
005bd9e8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005bd9ec  06 00 51 e1                                      cmp r1, r6
005bd9f0  05 00 00 1a                                      bne #0x5bda0c
005bd9f4  03 60 a0 e1                                      mov r6, r3
005bd9f8  04 30 93 e5                                      ldr r3, [r3, #4]
005bd9fc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005bda00  02 00 56 e1                                      cmp r6, r2
005bda04  fa ff ff 0a                                      beq #0x5bd9f4
005bda08  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005bda0c  02 00 53 e1                                      cmp r3, r2
005bda10  03 60 a0 11                                      movne r6, r3
005bda14  e6 ff ff ea                                      b #0x5bd9b4
005bda18  2c 40 97 e5                                      ldr r4, [r7, #0x2c]
005bda1c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005bda20  08 80 93 e5                                      ldr r8, [r3, #8]
005bda24  02 40 84 e0                                      add r4, r4, r2
005bda28  08 81 84 e0                                      add r8, r4, r8, lsl #2
005bda2c  08 00 54 e1                                      cmp r4, r8
005bda30  d6 ff ff 0a                                      beq #0x5bd990
005bda34  00 10 94 e5                                      ldr r1, [r4]
005bda38  00 00 51 e3                                      cmp r1, #0
005bda3c  08 00 00 0a                                      beq #0x5bda64
005bda40  09 30 9a e7                                      ldr r3, [sl, sb]
005bda44  00 50 93 e5                                      ldr r5, [r3]
005bda48  00 00 55 e3                                      cmp r5, #0
005bda4c  08 00 00 0a                                      beq #0x5bda74
005bda50  00 20 95 e5                                      ldr r2, [r5]
005bda54  00 20 83 e5                                      str r2, [r3]
005bda58  05 00 a0 e1                                      mov r0, r5
005bda5c  0c f4 ff eb                                      bl #0x5baa94
005bda60  00 50 84 e5                                      str r5, [r4]
005bda64  04 40 84 e2                                      add r4, r4, #4
005bda68  04 00 58 e1                                      cmp r8, r4
005bda6c  f0 ff ff 1a                                      bne #0x5bda34
005bda70  c6 ff ff ea                                      b #0x5bd990
005bda74  00 10 8d e5                                      str r1, [sp]
005bda78  80 f4 ff eb                                      bl #0x5bac80
005bda7c  00 10 9d e5                                      ldr r1, [sp]
005bda80  00 50 a0 e1                                      mov r5, r0
005bda84  f3 ff ff ea                                      b #0x5bda58
; mapping-symbol data/literal pool
005bda88  a4 71 3d 00 14 28 00 00 c0 3c 00 00              .byte 0xa4, 0x71, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005bda94, declared_size=1796, range_size=1796, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
005bda94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005bda98  e8 26 9f e5                                      ldr r2, [pc, #0x6e8]
005bda9c  e8 36 9f e5                                      ldr r3, [pc, #0x6e8]
005bdaa0  73 df 4d e2                                      sub sp, sp, #0x1cc
005bdaa4  02 20 8f e0                                      add r2, pc, r2
005bdaa8  34 30 8d e5                                      str r3, [sp, #0x34]
005bdaac  03 30 92 e7                                      ldr r3, [r2, r3]
005bdab0  14 20 8d e5                                      str r2, [sp, #0x14]
005bdab4  08 90 90 e5                                      ldr sb, [r0, #8]
005bdab8  00 30 93 e5                                      ldr r3, [r3]
005bdabc  00 b0 a0 e1                                      mov fp, r0
005bdac0  00 00 59 e1                                      cmp sb, r0
005bdac4  01 80 a0 e1                                      mov r8, r1
005bdac8  c4 31 8d e5                                      str r3, [sp, #0x1c4]
005bdacc  a6 00 00 0a                                      beq #0x5bdd6c
005bdad0  b8 c6 9f e5                                      ldr ip, [pc, #0x6b8]
005bdad4  b8 06 9f e5                                      ldr r0, [pc, #0x6b8]
005bdad8  4b 1f 8d e2                                      add r1, sp, #0x12c
005bdadc  49 2f 8d e2                                      add r2, sp, #0x124
005bdae0  38 30 8d e2                                      add r3, sp, #0x38
005bdae4  30 c0 8d e5                                      str ip, [sp, #0x30]
005bdae8  2c 00 8d e5                                      str r0, [sp, #0x2c]
005bdaec  fe 55 a0 e3                                      mov r5, #0x3f800000
005bdaf0  0c 10 8d e5                                      str r1, [sp, #0xc]
005bdaf4  28 20 8d e5                                      str r2, [sp, #0x28]
005bdaf8  04 30 8d e5                                      str r3, [sp, #4]
005bdafc  18 10 9b e5                                      ldr r1, [fp, #0x18]
005bdb00  1c 30 9b e5                                      ldr r3, [fp, #0x1c]
005bdb04  bc 01 d9 e1                                      ldrh r0, [sb, #0x1c]
005bdb08  03 30 61 e0                                      rsb r3, r1, r3
005bdb0c  43 31 a0 e1                                      asr r3, r3, #2
005bdb10  83 20 83 e0                                      add r2, r3, r3, lsl #1
005bdb14  02 22 82 e0                                      add r2, r2, r2, lsl #4
005bdb18  02 24 82 e0                                      add r2, r2, r2, lsl #8
005bdb1c  02 28 82 e0                                      add r2, r2, r2, lsl #16
005bdb20  02 21 83 e0                                      add r2, r3, r2, lsl #2
005bdb24  02 00 50 e1                                      cmp r0, r2
005bdb28  14 00 9d 25                                      ldrhs r0, [sp, #0x14]
005bdb2c  30 c0 9d 25                                      ldrhs ip, [sp, #0x30]
005bdb30  14 70 a0 33                                      movlo r7, #0x14
005bdb34  97 10 27 30                                      mlalo r7, r7, r0, r1
005bdb38  0c 70 90 27                                      ldrhs r7, [r0, ip]
005bdb3c  00 10 97 e5                                      ldr r1, [r7]
005bdb40  00 00 51 e3                                      cmp r1, #0
005bdb44  76 01 00 0a                                      beq #0x5be124
005bdb48  00 30 98 e5                                      ldr r3, [r8]
005bdb4c  30 30 93 e5                                      ldr r3, [r3, #0x30]
005bdb50  04 10 81 e2                                      add r1, r1, #4
005bdb54  08 00 a0 e1                                      mov r0, r8
005bdb58  33 ff 2f e1                                      blx r3
005bdb5c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005bdb60  2c 60 9b e5                                      ldr r6, [fp, #0x2c]
005bdb64  0c 40 97 e5                                      ldr r4, [r7, #0xc]
005bdb68  e4 f3 ff eb                                      bl #0x5bab00
005bdb6c  08 30 97 e5                                      ldr r3, [r7, #8]
005bdb70  00 00 53 e3                                      cmp r3, #0
005bdb74  6b 00 00 0a                                      beq #0x5bdd28
005bdb78  48 10 8d e2                                      add r1, sp, #0x48
005bdb7c  4a 2f 8d e2                                      add r2, sp, #0x128
005bdb80  54 30 8d e2                                      add r3, sp, #0x54
005bdb84  dc c0 8d e2                                      add ip, sp, #0xdc
005bdb88  fc 00 8d e2                                      add r0, sp, #0xfc
005bdb8c  04 60 86 e0                                      add r6, r6, r4
005bdb90  98 a0 8d e2                                      add sl, sp, #0x98
005bdb94  03 40 a0 e3                                      mov r4, #3
005bdb98  18 10 8d e5                                      str r1, [sp, #0x18]
005bdb9c  1c 20 8d e5                                      str r2, [sp, #0x1c]
005bdba0  08 30 8d e5                                      str r3, [sp, #8]
005bdba4  20 c0 8d e5                                      str ip, [sp, #0x20]
005bdba8  24 00 8d e5                                      str r0, [sp, #0x24]
005bdbac  10 90 8d e5                                      str sb, [sp, #0x10]
005bdbb0  0a 00 a0 e1                                      mov r0, sl
005bdbb4  00 10 a0 e3                                      mov r1, #0
005bdbb8  40 20 a0 e3                                      mov r2, #0x40
005bdbbc  27 42 f5 eb                                      bl #0x30e460
005bdbc0  01 30 a0 e3                                      mov r3, #1
005bdbc4  d8 30 cd e5                                      strb r3, [sp, #0xd8]
005bdbc8  98 50 8d e5                                      str r5, [sp, #0x98]
005bdbcc  ac 50 8d e5                                      str r5, [sp, #0xac]
005bdbd0  c0 50 8d e5                                      str r5, [sp, #0xc0]
005bdbd4  d4 50 8d e5                                      str r5, [sp, #0xd4]
005bdbd8  06 30 d7 e5                                      ldrb r3, [r7, #6]
005bdbdc  01 30 43 e2                                      sub r3, r3, #1
005bdbe0  11 00 53 e3                                      cmp r3, #0x11
005bdbe4  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005bdbe8  48 00 00 ea                                      b #0x5bdd10
005bdbec  40 01 00 ea                                      b #0x5be0f4
005bdbf0  2e 01 00 ea                                      b #0x5be0b0
005bdbf4  1a 01 00 ea                                      b #0x5be064
005bdbf8  04 01 00 ea                                      b #0x5be010
005bdbfc  f7 00 00 ea                                      b #0x5bdfe0
005bdc00  e5 00 00 ea                                      b #0x5bdf9c
005bdc04  d1 00 00 ea                                      b #0x5bdf50
005bdc08  bb 00 00 ea                                      b #0x5bdefc
005bdc0c  3f 00 00 ea                                      b #0x5bdd10
005bdc10  3e 00 00 ea                                      b #0x5bdd10
005bdc14  9a 00 00 ea                                      b #0x5bde84
005bdc18  83 00 00 ea                                      b #0x5bde2c
005bdc1c  82 00 00 ea                                      b #0x5bde2c
005bdc20  81 00 00 ea                                      b #0x5bde2c
005bdc24  80 00 00 ea                                      b #0x5bde2c
005bdc28  68 00 00 ea                                      b #0x5bddd0
005bdc2c  57 00 00 ea                                      b #0x5bdd90
005bdc30  ff ff ff ea                                      b #0x5bdc34
005bdc34  04 20 a0 e1                                      mov r2, r4
005bdc38  00 30 98 e5                                      ldr r3, [r8]
005bdc3c  28 00 9d e5                                      ldr r0, [sp, #0x28]
005bdc40  08 10 a0 e1                                      mov r1, r8
005bdc44  0f e0 a0 e1                                      mov lr, pc
005bdc48  d8 f2 93 e5                                      ldr pc, [r3, #0x2d8]
005bdc4c  24 31 9d e5                                      ldr r3, [sp, #0x124]
005bdc50  00 00 53 e3                                      cmp r3, #0
005bdc54  00 20 93 15                                      ldrne r2, [r3]
005bdc58  01 20 82 12                                      addne r2, r2, #1
005bdc5c  00 20 83 15                                      strne r2, [r3]
005bdc60  00 00 96 e5                                      ldr r0, [r6]
005bdc64  00 30 86 e5                                      str r3, [r6]
005bdc68  00 00 50 e3                                      cmp r0, #0
005bdc6c  11 00 00 0a                                      beq #0x5bdcb8
005bdc70  00 30 90 e5                                      ldr r3, [r0]
005bdc74  01 30 43 e2                                      sub r3, r3, #1
005bdc78  00 00 53 e3                                      cmp r3, #0
005bdc7c  00 30 80 e5                                      str r3, [r0]
005bdc80  0c 00 00 1a                                      bne #0x5bdcb8
005bdc84  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005bdc88  00 00 53 e3                                      cmp r3, #0
005bdc8c  06 00 00 1a                                      bne #0x5bdcac
005bdc90  14 20 9d e5                                      ldr r2, [sp, #0x14]
005bdc94  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005bdc98  01 30 92 e7                                      ldr r3, [r2, r1]
005bdc9c  50 20 90 e5                                      ldr r2, [r0, #0x50]
005bdca0  00 10 93 e5                                      ldr r1, [r3]
005bdca4  00 10 82 e5                                      str r1, [r2]
005bdca8  00 20 83 e5                                      str r2, [r3]
005bdcac  00 30 a0 e3                                      mov r3, #0
005bdcb0  50 30 80 e5                                      str r3, [r0, #0x50]
005bdcb4  7d 41 f5 eb                                      bl #0x30e2b0
005bdcb8  24 01 9d e5                                      ldr r0, [sp, #0x124]
005bdcbc  00 00 50 e3                                      cmp r0, #0
005bdcc0  11 00 00 0a                                      beq #0x5bdd0c
005bdcc4  00 30 90 e5                                      ldr r3, [r0]
005bdcc8  01 30 43 e2                                      sub r3, r3, #1
005bdccc  00 00 53 e3                                      cmp r3, #0
005bdcd0  00 30 80 e5                                      str r3, [r0]
005bdcd4  0c 00 00 1a                                      bne #0x5bdd0c
005bdcd8  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005bdcdc  00 00 53 e3                                      cmp r3, #0
005bdce0  06 00 00 1a                                      bne #0x5bdd00
005bdce4  14 10 9d e5                                      ldr r1, [sp, #0x14]
005bdce8  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005bdcec  50 20 90 e5                                      ldr r2, [r0, #0x50]
005bdcf0  0c 30 91 e7                                      ldr r3, [r1, ip]
005bdcf4  00 10 93 e5                                      ldr r1, [r3]
005bdcf8  00 10 82 e5                                      str r1, [r2]
005bdcfc  00 20 83 e5                                      str r2, [r3]
005bdd00  00 30 a0 e3                                      mov r3, #0
005bdd04  50 30 80 e5                                      str r3, [r0, #0x50]
005bdd08  68 41 f5 eb                                      bl #0x30e2b0
005bdd0c  04 60 86 e2                                      add r6, r6, #4
005bdd10  08 20 97 e5                                      ldr r2, [r7, #8]
005bdd14  02 30 44 e2                                      sub r3, r4, #2
005bdd18  01 40 84 e2                                      add r4, r4, #1
005bdd1c  03 00 52 e1                                      cmp r2, r3
005bdd20  a2 ff ff 8a                                      bhi #0x5bdbb0
005bdd24  10 90 9d e5                                      ldr sb, [sp, #0x10]
005bdd28  00 30 98 e5                                      ldr r3, [r8]
005bdd2c  08 00 a0 e1                                      mov r0, r8
005bdd30  0f e0 a0 e1                                      mov lr, pc
005bdd34  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005bdd38  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005bdd3c  7a fa ff eb                                      bl #0x5bc72c
005bdd40  0c 30 99 e5                                      ldr r3, [sb, #0xc]
005bdd44  00 00 53 e3                                      cmp r3, #0
005bdd48  01 00 00 1a                                      bne #0x5bdd54
005bdd4c  fc 00 00 ea                                      b #0x5be144
005bdd50  02 30 a0 e1                                      mov r3, r2
005bdd54  08 20 93 e5                                      ldr r2, [r3, #8]
005bdd58  00 00 52 e3                                      cmp r2, #0
005bdd5c  fb ff ff 1a                                      bne #0x5bdd50
005bdd60  03 90 a0 e1                                      mov sb, r3
005bdd64  09 00 5b e1                                      cmp fp, sb
005bdd68  63 ff ff 1a                                      bne #0x5bdafc
005bdd6c  34 20 9d e5                                      ldr r2, [sp, #0x34]
005bdd70  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005bdd74  02 30 9c e7                                      ldr r3, [ip, r2]
005bdd78  c4 21 9d e5                                      ldr r2, [sp, #0x1c4]
005bdd7c  00 30 93 e5                                      ldr r3, [r3]
005bdd80  03 00 52 e1                                      cmp r2, r3
005bdd84  fe 00 00 1a                                      bne #0x5be184
005bdd88  73 df 8d e2                                      add sp, sp, #0x1cc
005bdd8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005bdd90  04 20 a0 e1                                      mov r2, r4
005bdd94  04 00 9d e5                                      ldr r0, [sp, #4]
005bdd98  08 10 a0 e1                                      mov r1, r8
005bdd9c  00 30 98 e5                                      ldr r3, [r8]
005bdda0  0f e0 a0 e1                                      mov lr, pc
005bdda4  40 f1 93 e5                                      ldr pc, [r3, #0x140]
005bdda8  04 c0 9d e5                                      ldr ip, [sp, #4]
005bddac  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
005bddb0  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005bddb4  08 20 97 e5                                      ldr r2, [r7, #8]
005bddb8  02 30 44 e2                                      sub r3, r4, #2
005bddbc  10 60 86 e2                                      add r6, r6, #0x10
005bddc0  03 00 52 e1                                      cmp r2, r3
005bddc4  01 40 84 e2                                      add r4, r4, #1
005bddc8  78 ff ff 8a                                      bhi #0x5bdbb0
005bddcc  d4 ff ff ea                                      b #0x5bdd24
005bddd0  04 10 a0 e1                                      mov r1, r4
005bddd4  00 30 98 e5                                      ldr r3, [r8]
005bddd8  08 00 a0 e1                                      mov r0, r8
005bdddc  0f e0 a0 e1                                      mov lr, pc
005bdde0  28 f1 93 e5                                      ldr pc, [r3, #0x128]
005bdde4  04 20 a0 e3                                      mov r2, #4
005bdde8  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005bddec  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
005bddf0  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
005bddf4  48 00 cd e5                                      strb r0, [sp, #0x48]
005bddf8  18 10 9d e5                                      ldr r1, [sp, #0x18]
005bddfc  06 00 a0 e1                                      mov r0, r6
005bde00  4a 30 cd e5                                      strb r3, [sp, #0x4a]
005bde04  49 c0 cd e5                                      strb ip, [sp, #0x49]
005bde08  4b e0 cd e5                                      strb lr, [sp, #0x4b]
005bde0c  95 42 f5 eb                                      bl #0x30e868
005bde10  08 20 97 e5                                      ldr r2, [r7, #8]
005bde14  02 30 44 e2                                      sub r3, r4, #2
005bde18  04 60 86 e2                                      add r6, r6, #4
005bde1c  03 00 52 e1                                      cmp r2, r3
005bde20  01 40 84 e2                                      add r4, r4, #1
005bde24  61 ff ff 8a                                      bhi #0x5bdbb0
005bde28  bd ff ff ea                                      b #0x5bdd24
005bde2c  04 20 a0 e1                                      mov r2, r4
005bde30  00 30 98 e5                                      ldr r3, [r8]
005bde34  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005bde38  08 10 a0 e1                                      mov r1, r8
005bde3c  0f e0 a0 e1                                      mov lr, pc
005bde40  c0 f2 93 e5                                      ldr pc, [r3, #0x2c0]
005bde44  28 31 9d e5                                      ldr r3, [sp, #0x128]
005bde48  00 00 53 e3                                      cmp r3, #0
005bde4c  04 20 93 15                                      ldrne r2, [r3, #4]
005bde50  01 20 82 12                                      addne r2, r2, #1
005bde54  04 20 83 15                                      strne r2, [r3, #4]
005bde58  00 00 96 e5                                      ldr r0, [r6]
005bde5c  00 30 86 e5                                      str r3, [r6]
005bde60  00 00 50 e3                                      cmp r0, #0
005bde64  00 00 00 0a                                      beq #0x5bde6c
005bde68  c5 7d f5 eb                                      bl #0x31d584
005bde6c  28 01 9d e5                                      ldr r0, [sp, #0x128]
005bde70  00 00 50 e3                                      cmp r0, #0
005bde74  a4 ff ff 0a                                      beq #0x5bdd0c
005bde78  c1 7d f5 eb                                      bl #0x31d584
005bde7c  04 60 86 e2                                      add r6, r6, #4
005bde80  a2 ff ff ea                                      b #0x5bdd10
005bde84  00 30 98 e5                                      ldr r3, [r8]
005bde88  04 20 a0 e1                                      mov r2, r4
005bde8c  08 00 9d e5                                      ldr r0, [sp, #8]
005bde90  08 10 a0 e1                                      mov r1, r8
005bde94  0f e0 a0 e1                                      mov lr, pc
005bde98  18 f2 93 e5                                      ldr pc, [r3, #0x218]
005bde9c  08 10 9d e5                                      ldr r1, [sp, #8]
005bdea0  41 20 a0 e3                                      mov r2, #0x41
005bdea4  0a 00 a0 e1                                      mov r0, sl
005bdea8  6e 42 f5 eb                                      bl #0x30e868
005bdeac  0a 00 a0 e1                                      mov r0, sl
005bdeb0  b9 f0 ff eb                                      bl #0x5ba19c
005bdeb4  00 00 50 e3                                      cmp r0, #0
005bdeb8  00 30 a0 13                                      movne r3, #0
005bdebc  00 30 86 15                                      strne r3, [r6]
005bdec0  91 ff ff 1a                                      bne #0x5bdd0c
005bdec4  14 20 9d e5                                      ldr r2, [sp, #0x14]
005bdec8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005bdecc  01 30 92 e7                                      ldr r3, [r2, r1]
005bded0  00 90 93 e5                                      ldr sb, [r3]
005bded4  00 00 59 e3                                      cmp sb, #0
005bded8  a6 00 00 0a                                      beq #0x5be178
005bdedc  00 20 99 e5                                      ldr r2, [sb]
005bdee0  00 20 83 e5                                      str r2, [r3]
005bdee4  09 00 a0 e1                                      mov r0, sb
005bdee8  0a 10 a0 e1                                      mov r1, sl
005bdeec  e8 f2 ff eb                                      bl #0x5baa94
005bdef0  00 90 86 e5                                      str sb, [r6]
005bdef4  04 60 86 e2                                      add r6, r6, #4
005bdef8  84 ff ff ea                                      b #0x5bdd10
005bdefc  04 20 a0 e1                                      mov r2, r4
005bdf00  00 30 98 e5                                      ldr r3, [r8]
005bdf04  20 00 9d e5                                      ldr r0, [sp, #0x20]
005bdf08  08 10 a0 e1                                      mov r1, r8
005bdf0c  0f e0 a0 e1                                      mov lr, pc
005bdf10  d0 f1 93 e5                                      ldr pc, [r3, #0x1d0]
005bdf14  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
005bdf18  00 30 86 e5                                      str r3, [r6]
005bdf1c  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005bdf20  04 30 86 e5                                      str r3, [r6, #4]
005bdf24  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
005bdf28  08 30 86 e5                                      str r3, [r6, #8]
005bdf2c  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005bdf30  0c 30 86 e5                                      str r3, [r6, #0xc]
005bdf34  08 20 97 e5                                      ldr r2, [r7, #8]
005bdf38  02 30 44 e2                                      sub r3, r4, #2
005bdf3c  10 60 86 e2                                      add r6, r6, #0x10
005bdf40  03 00 52 e1                                      cmp r2, r3
005bdf44  01 40 84 e2                                      add r4, r4, #1
005bdf48  18 ff ff 8a                                      bhi #0x5bdbb0
005bdf4c  74 ff ff ea                                      b #0x5bdd24
005bdf50  04 20 a0 e1                                      mov r2, r4
005bdf54  00 30 98 e5                                      ldr r3, [r8]
005bdf58  24 00 9d e5                                      ldr r0, [sp, #0x24]
005bdf5c  08 10 a0 e1                                      mov r1, r8
005bdf60  0f e0 a0 e1                                      mov lr, pc
005bdf64  b8 f1 93 e5                                      ldr pc, [r3, #0x1b8]
005bdf68  fc 30 9d e5                                      ldr r3, [sp, #0xfc]
005bdf6c  00 30 86 e5                                      str r3, [r6]
005bdf70  00 31 9d e5                                      ldr r3, [sp, #0x100]
005bdf74  04 30 86 e5                                      str r3, [r6, #4]
005bdf78  04 31 9d e5                                      ldr r3, [sp, #0x104]
005bdf7c  08 30 86 e5                                      str r3, [r6, #8]
005bdf80  08 20 97 e5                                      ldr r2, [r7, #8]
005bdf84  02 30 44 e2                                      sub r3, r4, #2
005bdf88  0c 60 86 e2                                      add r6, r6, #0xc
005bdf8c  03 00 52 e1                                      cmp r2, r3
005bdf90  01 40 84 e2                                      add r4, r4, #1
005bdf94  05 ff ff 8a                                      bhi #0x5bdbb0
005bdf98  61 ff ff ea                                      b #0x5bdd24
005bdf9c  04 20 a0 e1                                      mov r2, r4
005bdfa0  00 30 98 e5                                      ldr r3, [r8]
005bdfa4  45 0f 8d e2                                      add r0, sp, #0x114
005bdfa8  08 10 a0 e1                                      mov r1, r8
005bdfac  0f e0 a0 e1                                      mov lr, pc
005bdfb0  a0 f1 93 e5                                      ldr pc, [r3, #0x1a0]
005bdfb4  14 31 9d e5                                      ldr r3, [sp, #0x114]
005bdfb8  00 30 86 e5                                      str r3, [r6]
005bdfbc  18 31 9d e5                                      ldr r3, [sp, #0x118]
005bdfc0  04 30 86 e5                                      str r3, [r6, #4]
005bdfc4  08 20 97 e5                                      ldr r2, [r7, #8]
005bdfc8  02 30 44 e2                                      sub r3, r4, #2
005bdfcc  08 60 86 e2                                      add r6, r6, #8
005bdfd0  03 00 52 e1                                      cmp r2, r3
005bdfd4  01 40 84 e2                                      add r4, r4, #1
005bdfd8  f4 fe ff 8a                                      bhi #0x5bdbb0
005bdfdc  50 ff ff ea                                      b #0x5bdd24
005bdfe0  00 30 98 e5                                      ldr r3, [r8]
005bdfe4  04 10 a0 e1                                      mov r1, r4
005bdfe8  08 00 a0 e1                                      mov r0, r8
005bdfec  0f e0 a0 e1                                      mov lr, pc
005bdff0  74 f0 93 e5                                      ldr pc, [r3, #0x74]
005bdff4  04 00 86 e4                                      str r0, [r6], #4
005bdff8  08 20 97 e5                                      ldr r2, [r7, #8]
005bdffc  02 30 44 e2                                      sub r3, r4, #2
005be000  01 40 84 e2                                      add r4, r4, #1
005be004  03 00 52 e1                                      cmp r2, r3
005be008  e8 fe ff 8a                                      bhi #0x5bdbb0
005be00c  44 ff ff ea                                      b #0x5bdd24
005be010  04 20 a0 e1                                      mov r2, r4
005be014  00 30 98 e5                                      ldr r3, [r8]
005be018  ec 00 8d e2                                      add r0, sp, #0xec
005be01c  08 10 a0 e1                                      mov r1, r8
005be020  0f e0 a0 e1                                      mov lr, pc
005be024  88 f1 93 e5                                      ldr pc, [r3, #0x188]
005be028  ec 30 9d e5                                      ldr r3, [sp, #0xec]
005be02c  00 30 86 e5                                      str r3, [r6]
005be030  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
005be034  04 30 86 e5                                      str r3, [r6, #4]
005be038  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
005be03c  08 30 86 e5                                      str r3, [r6, #8]
005be040  f8 30 9d e5                                      ldr r3, [sp, #0xf8]
005be044  0c 30 86 e5                                      str r3, [r6, #0xc]
005be048  08 20 97 e5                                      ldr r2, [r7, #8]
005be04c  02 30 44 e2                                      sub r3, r4, #2
005be050  10 60 86 e2                                      add r6, r6, #0x10
005be054  03 00 52 e1                                      cmp r2, r3
005be058  01 40 84 e2                                      add r4, r4, #1
005be05c  d3 fe ff 8a                                      bhi #0x5bdbb0
005be060  2f ff ff ea                                      b #0x5bdd24
005be064  04 20 a0 e1                                      mov r2, r4
005be068  00 30 98 e5                                      ldr r3, [r8]
005be06c  42 0f 8d e2                                      add r0, sp, #0x108
005be070  08 10 a0 e1                                      mov r1, r8
005be074  0f e0 a0 e1                                      mov lr, pc
005be078  70 f1 93 e5                                      ldr pc, [r3, #0x170]
005be07c  08 31 9d e5                                      ldr r3, [sp, #0x108]
005be080  00 30 86 e5                                      str r3, [r6]
005be084  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
005be088  04 30 86 e5                                      str r3, [r6, #4]
005be08c  10 31 9d e5                                      ldr r3, [sp, #0x110]
005be090  08 30 86 e5                                      str r3, [r6, #8]
005be094  08 20 97 e5                                      ldr r2, [r7, #8]
005be098  02 30 44 e2                                      sub r3, r4, #2
005be09c  0c 60 86 e2                                      add r6, r6, #0xc
005be0a0  03 00 52 e1                                      cmp r2, r3
005be0a4  01 40 84 e2                                      add r4, r4, #1
005be0a8  c0 fe ff 8a                                      bhi #0x5bdbb0
005be0ac  1c ff ff ea                                      b #0x5bdd24
005be0b0  04 20 a0 e1                                      mov r2, r4
005be0b4  00 30 98 e5                                      ldr r3, [r8]
005be0b8  47 0f 8d e2                                      add r0, sp, #0x11c
005be0bc  08 10 a0 e1                                      mov r1, r8
005be0c0  0f e0 a0 e1                                      mov lr, pc
005be0c4  58 f1 93 e5                                      ldr pc, [r3, #0x158]
005be0c8  1c 31 9d e5                                      ldr r3, [sp, #0x11c]
005be0cc  00 30 86 e5                                      str r3, [r6]
005be0d0  20 31 9d e5                                      ldr r3, [sp, #0x120]
005be0d4  04 30 86 e5                                      str r3, [r6, #4]
005be0d8  08 20 97 e5                                      ldr r2, [r7, #8]
005be0dc  02 30 44 e2                                      sub r3, r4, #2
005be0e0  08 60 86 e2                                      add r6, r6, #8
005be0e4  03 00 52 e1                                      cmp r2, r3
005be0e8  01 40 84 e2                                      add r4, r4, #1
005be0ec  af fe ff 8a                                      bhi #0x5bdbb0
005be0f0  0b ff ff ea                                      b #0x5bdd24
005be0f4  00 30 98 e5                                      ldr r3, [r8]
005be0f8  04 10 a0 e1                                      mov r1, r4
005be0fc  08 00 a0 e1                                      mov r0, r8
005be100  0f e0 a0 e1                                      mov lr, pc
005be104  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005be108  04 00 86 e4                                      str r0, [r6], #4
005be10c  08 20 97 e5                                      ldr r2, [r7, #8]
005be110  02 30 44 e2                                      sub r3, r4, #2
005be114  01 40 84 e2                                      add r4, r4, #1
005be118  03 00 52 e1                                      cmp r2, r3
005be11c  a3 fe ff 8a                                      bhi #0x5bdbb0
005be120  ff fe ff ea                                      b #0x5bdd24
005be124  01 70 a0 e1                                      mov r7, r1
005be128  00 10 91 e5                                      ldr r1, [r1]
005be12c  00 30 98 e5                                      ldr r3, [r8]
005be130  00 00 51 e3                                      cmp r1, #0
005be134  30 30 93 e5                                      ldr r3, [r3, #0x30]
005be138  01 70 a0 01                                      moveq r7, r1
005be13c  84 fe ff 0a                                      beq #0x5bdb54
005be140  82 fe ff ea                                      b #0x5bdb50
005be144  04 20 99 e5                                      ldr r2, [sb, #4]
005be148  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005be14c  01 00 59 e1                                      cmp sb, r1
005be150  05 00 00 1a                                      bne #0x5be16c
005be154  02 90 a0 e1                                      mov sb, r2
005be158  04 20 92 e5                                      ldr r2, [r2, #4]
005be15c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005be160  09 00 53 e1                                      cmp r3, sb
005be164  fa ff ff 0a                                      beq #0x5be154
005be168  0c 30 99 e5                                      ldr r3, [sb, #0xc]
005be16c  03 00 52 e1                                      cmp r2, r3
005be170  02 90 a0 11                                      movne sb, r2
005be174  fa fe ff ea                                      b #0x5bdd64
005be178  c0 f2 ff eb                                      bl #0x5bac80
005be17c  00 90 a0 e1                                      mov sb, r0
005be180  57 ff ff ea                                      b #0x5bdee4
005be184  61 40 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005be188  ec 6f 3d 00 ac 40 00 00 14 28 00 00 c0 3c 00 00  .byte 0xec, 0x6f, 0x3d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005be3ec, declared_size=672, range_size=672, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE24initParametersToIdentityEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::initParametersToIdentity()
; decoder-mode: arm
005be3ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005be3f0  08 40 90 e5                                      ldr r4, [r0, #8]
005be3f4  84 72 9f e5                                      ldr r7, [pc, #0x284]
005be3f8  0c d0 4d e2                                      sub sp, sp, #0xc
005be3fc  00 00 54 e1                                      cmp r4, r0
005be400  00 50 a0 e1                                      mov r5, r0
005be404  07 70 8f e0                                      add r7, pc, r7
005be408  44 00 00 0a                                      beq #0x5be520
005be40c  70 12 9f e5                                      ldr r1, [pc, #0x270]
005be410  70 b2 9f e5                                      ldr fp, [pc, #0x270]
005be414  fe a5 a0 e3                                      mov sl, #0x3f800000
005be418  04 10 8d e5                                      str r1, [sp, #4]
005be41c  00 90 a0 e3                                      mov sb, #0
005be420  14 80 a0 e3                                      mov r8, #0x14
005be424  00 60 a0 e3                                      mov r6, #0
005be428  00 c0 e0 e3                                      mvn ip, #0
005be42c  18 10 95 e5                                      ldr r1, [r5, #0x18]
005be430  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
005be434  bc 01 d4 e1                                      ldrh r0, [r4, #0x1c]
005be438  03 30 61 e0                                      rsb r3, r1, r3
005be43c  43 31 a0 e1                                      asr r3, r3, #2
005be440  83 20 83 e0                                      add r2, r3, r3, lsl #1
005be444  02 22 82 e0                                      add r2, r2, r2, lsl #4
005be448  02 24 82 e0                                      add r2, r2, r2, lsl #8
005be44c  02 28 82 e0                                      add r2, r2, r2, lsl #16
005be450  02 21 83 e0                                      add r2, r3, r2, lsl #2
005be454  02 00 50 e1                                      cmp r0, r2
005be458  0b 00 97 27                                      ldrhs r0, [r7, fp]
005be45c  98 10 20 30                                      mlalo r0, r8, r0, r1
005be460  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
005be464  00 30 90 e5                                      ldr r3, [r0]
005be468  00 00 53 e3                                      cmp r3, #0
005be46c  00 00 a0 03                                      moveq r0, #0
005be470  06 10 d0 e5                                      ldrb r1, [r0, #6]
005be474  0c 30 90 e5                                      ldr r3, [r0, #0xc]
005be478  03 00 82 e0                                      add r0, r2, r3
005be47c  12 00 51 e3                                      cmp r1, #0x12
005be480  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
005be484  1a 00 00 ea                                      b #0x5be4f4
005be488  7a 00 00 ea                                      b #0x5be678
005be48c  77 00 00 ea                                      b #0x5be670
005be490  73 00 00 ea                                      b #0x5be664
005be494  6e 00 00 ea                                      b #0x5be654
005be498  68 00 00 ea                                      b #0x5be640
005be49c  65 00 00 ea                                      b #0x5be638
005be4a0  61 00 00 ea                                      b #0x5be62c
005be4a4  5c 00 00 ea                                      b #0x5be61c
005be4a8  56 00 00 ea                                      b #0x5be608
005be4ac  10 00 00 ea                                      b #0x5be4f4
005be4b0  0f 00 00 ea                                      b #0x5be4f4
005be4b4  06 00 00 ea                                      b #0x5be4d4
005be4b8  2e 00 00 ea                                      b #0x5be578
005be4bc  2d 00 00 ea                                      b #0x5be578
005be4c0  2c 00 00 ea                                      b #0x5be578
005be4c4  2b 00 00 ea                                      b #0x5be578
005be4c8  16 00 00 ea                                      b #0x5be528
005be4cc  31 00 00 ea                                      b #0x5be598
005be4d0  35 00 00 ea                                      b #0x5be5ac
005be4d4  03 30 92 e7                                      ldr r3, [r2, r3]
005be4d8  00 00 53 e3                                      cmp r3, #0
005be4dc  04 00 00 0a                                      beq #0x5be4f4
005be4e0  04 10 9d e5                                      ldr r1, [sp, #4]
005be4e4  01 20 97 e7                                      ldr r2, [r7, r1]
005be4e8  00 10 92 e5                                      ldr r1, [r2]
005be4ec  00 10 83 e5                                      str r1, [r3]
005be4f0  00 30 82 e5                                      str r3, [r2]
005be4f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005be4f8  00 00 53 e3                                      cmp r3, #0
005be4fc  01 00 00 1a                                      bne #0x5be508
005be500  0f 00 00 ea                                      b #0x5be544
005be504  02 30 a0 e1                                      mov r3, r2
005be508  08 20 93 e5                                      ldr r2, [r3, #8]
005be50c  00 00 52 e3                                      cmp r2, #0
005be510  fb ff ff 1a                                      bne #0x5be504
005be514  03 40 a0 e1                                      mov r4, r3
005be518  04 00 55 e1                                      cmp r5, r4
005be51c  c2 ff ff 1a                                      bne #0x5be42c
005be520  0c d0 8d e2                                      add sp, sp, #0xc
005be524  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005be528  01 c0 c0 e5                                      strb ip, [r0, #1]
005be52c  03 c0 c0 e5                                      strb ip, [r0, #3]
005be530  02 c0 c0 e5                                      strb ip, [r0, #2]
005be534  03 c0 c2 e7                                      strb ip, [r2, r3]
005be538  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005be53c  00 00 53 e3                                      cmp r3, #0
005be540  f0 ff ff 1a                                      bne #0x5be508
005be544  04 20 94 e5                                      ldr r2, [r4, #4]
005be548  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005be54c  01 00 54 e1                                      cmp r4, r1
005be550  05 00 00 1a                                      bne #0x5be56c
005be554  02 40 a0 e1                                      mov r4, r2
005be558  04 20 92 e5                                      ldr r2, [r2, #4]
005be55c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005be560  04 00 53 e1                                      cmp r3, r4
005be564  fa ff ff 0a                                      beq #0x5be554
005be568  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005be56c  03 00 52 e1                                      cmp r2, r3
005be570  02 40 a0 11                                      movne r4, r2
005be574  e7 ff ff ea                                      b #0x5be518
005be578  03 00 92 e7                                      ldr r0, [r2, r3]
005be57c  03 60 82 e7                                      str r6, [r2, r3]
005be580  00 00 50 e3                                      cmp r0, #0
005be584  da ff ff 0a                                      beq #0x5be4f4
005be588  00 c0 8d e5                                      str ip, [sp]
005be58c  fc 7b f5 eb                                      bl #0x31d584
005be590  00 c0 9d e5                                      ldr ip, [sp]
005be594  d6 ff ff ea                                      b #0x5be4f4
005be598  04 a0 80 e5                                      str sl, [r0, #4]
005be59c  0c a0 80 e5                                      str sl, [r0, #0xc]
005be5a0  08 a0 80 e5                                      str sl, [r0, #8]
005be5a4  03 a0 82 e7                                      str sl, [r2, r3]
005be5a8  d1 ff ff ea                                      b #0x5be4f4
005be5ac  03 00 92 e7                                      ldr r0, [r2, r3]
005be5b0  03 60 82 e7                                      str r6, [r2, r3]
005be5b4  00 00 50 e3                                      cmp r0, #0
005be5b8  cd ff ff 0a                                      beq #0x5be4f4
005be5bc  00 30 90 e5                                      ldr r3, [r0]
005be5c0  01 30 43 e2                                      sub r3, r3, #1
005be5c4  00 00 53 e3                                      cmp r3, #0
005be5c8  00 30 80 e5                                      str r3, [r0]
005be5cc  c8 ff ff 1a                                      bne #0x5be4f4
005be5d0  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005be5d4  00 00 53 e3                                      cmp r3, #0
005be5d8  05 00 00 1a                                      bne #0x5be5f4
005be5dc  04 20 9d e5                                      ldr r2, [sp, #4]
005be5e0  02 30 97 e7                                      ldr r3, [r7, r2]
005be5e4  50 20 90 e5                                      ldr r2, [r0, #0x50]
005be5e8  00 10 93 e5                                      ldr r1, [r3]
005be5ec  00 10 82 e5                                      str r1, [r2]
005be5f0  00 20 83 e5                                      str r2, [r3]
005be5f4  50 60 80 e5                                      str r6, [r0, #0x50]
005be5f8  00 c0 8d e5                                      str ip, [sp]
005be5fc  2b 3f f5 eb                                      bl #0x30e2b0
005be600  00 c0 9d e5                                      ldr ip, [sp]
005be604  ba ff ff ea                                      b #0x5be4f4
005be608  03 a0 82 e7                                      str sl, [r2, r3]
005be60c  0c a0 80 e5                                      str sl, [r0, #0xc]
005be610  04 a0 80 e5                                      str sl, [r0, #4]
005be614  08 a0 80 e5                                      str sl, [r0, #8]
005be618  b5 ff ff ea                                      b #0x5be4f4
005be61c  03 90 82 e7                                      str sb, [r2, r3]
005be620  08 90 80 e5                                      str sb, [r0, #8]
005be624  04 90 80 e5                                      str sb, [r0, #4]
005be628  b1 ff ff ea                                      b #0x5be4f4
005be62c  03 90 82 e7                                      str sb, [r2, r3]
005be630  04 90 80 e5                                      str sb, [r0, #4]
005be634  ae ff ff ea                                      b #0x5be4f4
005be638  03 90 82 e7                                      str sb, [r2, r3]
005be63c  ac ff ff ea                                      b #0x5be4f4
005be640  03 60 82 e7                                      str r6, [r2, r3]
005be644  0c 60 80 e5                                      str r6, [r0, #0xc]
005be648  04 60 80 e5                                      str r6, [r0, #4]
005be64c  08 60 80 e5                                      str r6, [r0, #8]
005be650  a7 ff ff ea                                      b #0x5be4f4
005be654  03 60 82 e7                                      str r6, [r2, r3]
005be658  08 60 80 e5                                      str r6, [r0, #8]
005be65c  04 60 80 e5                                      str r6, [r0, #4]
005be660  a3 ff ff ea                                      b #0x5be4f4
005be664  03 60 82 e7                                      str r6, [r2, r3]
005be668  04 60 80 e5                                      str r6, [r0, #4]
005be66c  a0 ff ff ea                                      b #0x5be4f4
005be670  03 60 82 e7                                      str r6, [r2, r3]
005be674  9e ff ff ea                                      b #0x5be4f4
005be678  03 60 c2 e7                                      strb r6, [r2, r3]
005be67c  9c ff ff ea                                      b #0x5be4f4
; mapping-symbol data/literal pool
005be680  8c 66 3d 00 c0 3c 00 00 14 28 00 00              .byte 0x8c, 0x66, 0x3d, 0x00, 0xc0, 0x3c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bee04, declared_size=208, range_size=208, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterEtPKNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(unsigned short, glitch::core::CMatrix4<float> const*, int)
; decoder-mode: arm
005bee04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bee08  18 50 90 e5                                      ldr r5, [r0, #0x18]
005bee0c  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005bee10  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
005bee14  04 40 65 e0                                      rsb r4, r5, r4
005bee18  44 61 a0 e1                                      asr r6, r4, #2
005bee1c  0c c0 8f e0                                      add ip, pc, ip
005bee20  86 70 86 e0                                      add r7, r6, r6, lsl #1
005bee24  02 40 a0 e1                                      mov r4, r2
005bee28  07 72 87 e0                                      add r7, r7, r7, lsl #4
005bee2c  07 74 87 e0                                      add r7, r7, r7, lsl #8
005bee30  07 78 87 e0                                      add r7, r7, r7, lsl #16
005bee34  07 61 86 e0                                      add r6, r6, r7, lsl #2
005bee38  06 00 51 e1                                      cmp r1, r6
005bee3c  09 00 00 2a                                      bhs #0x5bee68
005bee40  14 20 a0 e3                                      mov r2, #0x14
005bee44  92 51 25 e0                                      mla r5, r2, r1, r5
005bee48  00 20 95 e5                                      ldr r2, [r5]
005bee4c  00 00 52 e3                                      cmp r2, #0
005bee50  02 00 00 0a                                      beq #0x5bee60
005bee54  06 20 d5 e5                                      ldrb r2, [r5, #6]
005bee58  0b 00 52 e3                                      cmp r2, #0xb
005bee5c  04 00 00 0a                                      beq #0x5bee74
005bee60  00 00 a0 e3                                      mov r0, #0
005bee64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bee68  60 20 9f e5                                      ldr r2, [pc, #0x60]
005bee6c  02 50 9c e7                                      ldr r5, [ip, r2]
005bee70  f4 ff ff ea                                      b #0x5bee48
005bee74  08 80 95 e5                                      ldr r8, [r5, #8]
005bee78  00 00 53 e3                                      cmp r3, #0
005bee7c  03 70 a0 11                                      movne r7, r3
005bee80  44 70 a0 03                                      moveq r7, #0x44
005bee84  98 47 28 e0                                      mla r8, r8, r7, r4
005bee88  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005bee8c  08 00 54 e1                                      cmp r4, r8
005bee90  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005bee94  0a 00 00 0a                                      beq #0x5beec4
005bee98  03 60 86 e0                                      add r6, r6, r3
005bee9c  00 50 a0 e3                                      mov r5, #0
005beea0  04 10 a0 e1                                      mov r1, r4
005beea4  06 00 a0 e1                                      mov r0, r6
005beea8  07 50 85 e0                                      add r5, r5, r7
005beeac  00 20 a0 e3                                      mov r2, #0
005beeb0  c0 ef ff eb                                      bl #0x5badb8
005beeb4  04 10 85 e0                                      add r1, r5, r4
005beeb8  01 00 58 e1                                      cmp r8, r1
005beebc  04 60 86 e2                                      add r6, r6, #4
005beec0  f7 ff ff 1a                                      bne #0x5beea4
005beec4  01 00 a0 e3                                      mov r0, #1
005beec8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005beecc  74 5c 3d 00 14 28 00 00                          .byte 0x74, 0x5c, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005beed4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtEtPKNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(unsigned short, glitch::core::CMatrix4<float> const*, int)
; decoder-mode: arm
005beed4  ca ff ff ea                                      b #0x5bee04

; FUNCTION 0x005beed8, declared_size=164, range_size=164, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterEtjRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(unsigned short, unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005beed8  70 40 2d e9                                      push {r4, r5, r6, lr}
005beedc  18 40 90 e5                                      ldr r4, [r0, #0x18]
005beee0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005beee4  88 c0 9f e5                                      ldr ip, [pc, #0x88]
005beee8  05 50 64 e0                                      rsb r5, r4, r5
005beeec  45 51 a0 e1                                      asr r5, r5, #2
005beef0  0c c0 8f e0                                      add ip, pc, ip
005beef4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005beef8  06 62 86 e0                                      add r6, r6, r6, lsl #4
005beefc  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bef00  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bef04  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bef08  05 00 51 e1                                      cmp r1, r5
005bef0c  09 00 00 2a                                      bhs #0x5bef38
005bef10  14 c0 a0 e3                                      mov ip, #0x14
005bef14  9c 41 24 e0                                      mla r4, ip, r1, r4
005bef18  00 c0 94 e5                                      ldr ip, [r4]
005bef1c  00 00 5c e3                                      cmp ip, #0
005bef20  02 00 00 0a                                      beq #0x5bef30
005bef24  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bef28  0b 00 51 e3                                      cmp r1, #0xb
005bef2c  04 00 00 0a                                      beq #0x5bef44
005bef30  00 00 a0 e3                                      mov r0, #0
005bef34  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bef38  38 10 9f e5                                      ldr r1, [pc, #0x38]
005bef3c  01 40 9c e7                                      ldr r4, [ip, r1]
005bef40  f4 ff ff ea                                      b #0x5bef18
005bef44  08 10 94 e5                                      ldr r1, [r4, #8]
005bef48  01 00 52 e1                                      cmp r2, r1
005bef4c  f7 ff ff 2a                                      bhs #0x5bef30
005bef50  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005bef54  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bef58  03 10 a0 e1                                      mov r1, r3
005bef5c  02 21 8c e0                                      add r2, ip, r2, lsl #2
005bef60  02 00 80 e0                                      add r0, r0, r2
005bef64  00 20 a0 e3                                      mov r2, #0
005bef68  92 ef ff eb                                      bl #0x5badb8
005bef6c  01 00 a0 e3                                      mov r0, #1
005bef70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005bef74  a0 5b 3d 00 14 28 00 00                          .byte 0xa0, 0x5b, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bef7c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtEtjRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(unsigned short, unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005bef7c  d5 ff ff ea                                      b #0x5beed8

; FUNCTION 0x005bef80, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterEtRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(unsigned short, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005bef80  02 30 a0 e1                                      mov r3, r2
005bef84  00 20 a0 e3                                      mov r2, #0
005bef88  d2 ff ff ea                                      b #0x5beed8

; FUNCTION 0x005bef8c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtEtRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(unsigned short, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005bef8c  02 30 a0 e1                                      mov r3, r2
005bef90  00 20 a0 e3                                      mov r2, #0
005bef94  cf ff ff ea                                      b #0x5beed8

; FUNCTION 0x005c091c, declared_size=204, range_size=204, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterEtPNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(unsigned short, glitch::core::CMatrix4<float>*, int) const
; decoder-mode: arm
005c091c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c0920  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c0924  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c0928  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
005c092c  04 40 65 e0                                      rsb r4, r5, r4
005c0930  44 61 a0 e1                                      asr r6, r4, #2
005c0934  0c c0 8f e0                                      add ip, pc, ip
005c0938  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c093c  02 40 a0 e1                                      mov r4, r2
005c0940  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c0944  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c0948  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c094c  07 61 86 e0                                      add r6, r6, r7, lsl #2
005c0950  06 00 51 e1                                      cmp r1, r6
005c0954  09 00 00 2a                                      bhs #0x5c0980
005c0958  14 20 a0 e3                                      mov r2, #0x14
005c095c  92 51 25 e0                                      mla r5, r2, r1, r5
005c0960  00 20 95 e5                                      ldr r2, [r5]
005c0964  00 00 52 e3                                      cmp r2, #0
005c0968  02 00 00 0a                                      beq #0x5c0978
005c096c  06 20 d5 e5                                      ldrb r2, [r5, #6]
005c0970  0b 00 52 e3                                      cmp r2, #0xb
005c0974  04 00 00 0a                                      beq #0x5c098c
005c0978  00 00 a0 e3                                      mov r0, #0
005c097c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c0980  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
005c0984  02 50 9c e7                                      ldr r5, [ip, r2]
005c0988  f4 ff ff ea                                      b #0x5c0960
005c098c  08 80 95 e5                                      ldr r8, [r5, #8]
005c0990  00 00 53 e3                                      cmp r3, #0
005c0994  03 70 a0 11                                      movne r7, r3
005c0998  44 70 a0 03                                      moveq r7, #0x44
005c099c  98 47 28 e0                                      mla r8, r8, r7, r4
005c09a0  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005c09a4  08 00 54 e1                                      cmp r4, r8
005c09a8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c09ac  09 00 00 0a                                      beq #0x5c09d8
005c09b0  03 60 86 e0                                      add r6, r6, r3
005c09b4  00 50 a0 e3                                      mov r5, #0
005c09b8  04 10 a0 e1                                      mov r1, r4
005c09bc  06 00 a0 e1                                      mov r0, r6
005c09c0  07 50 85 e0                                      add r5, r5, r7
005c09c4  18 e7 ff eb                                      bl #0x5ba62c
005c09c8  04 10 85 e0                                      add r1, r5, r4
005c09cc  01 00 58 e1                                      cmp r8, r1
005c09d0  04 60 86 e2                                      add r6, r6, #4
005c09d4  f8 ff ff 1a                                      bne #0x5c09bc
005c09d8  01 00 a0 e3                                      mov r0, #1
005c09dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c09e0  5c 41 3d 00 14 28 00 00                          .byte 0x5c, 0x41, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c09e8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtEtPNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(unsigned short, glitch::core::CMatrix4<float>*, int) const
; decoder-mode: arm
005c09e8  cb ff ff ea                                      b #0x5c091c

; FUNCTION 0x005c09ec, declared_size=160, range_size=160, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterEtjRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(unsigned short, unsigned int, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005c09ec  70 40 2d e9                                      push {r4, r5, r6, lr}
005c09f0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c09f4  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c09f8  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005c09fc  05 50 64 e0                                      rsb r5, r4, r5
005c0a00  45 51 a0 e1                                      asr r5, r5, #2
005c0a04  0c c0 8f e0                                      add ip, pc, ip
005c0a08  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c0a0c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c0a10  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c0a14  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c0a18  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c0a1c  05 00 51 e1                                      cmp r1, r5
005c0a20  09 00 00 2a                                      bhs #0x5c0a4c
005c0a24  14 c0 a0 e3                                      mov ip, #0x14
005c0a28  9c 41 24 e0                                      mla r4, ip, r1, r4
005c0a2c  00 c0 94 e5                                      ldr ip, [r4]
005c0a30  00 00 5c e3                                      cmp ip, #0
005c0a34  02 00 00 0a                                      beq #0x5c0a44
005c0a38  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c0a3c  0b 00 51 e3                                      cmp r1, #0xb
005c0a40  04 00 00 0a                                      beq #0x5c0a58
005c0a44  00 00 a0 e3                                      mov r0, #0
005c0a48  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0a4c  34 10 9f e5                                      ldr r1, [pc, #0x34]
005c0a50  01 40 9c e7                                      ldr r4, [ip, r1]
005c0a54  f4 ff ff ea                                      b #0x5c0a2c
005c0a58  08 10 94 e5                                      ldr r1, [r4, #8]
005c0a5c  01 00 52 e1                                      cmp r2, r1
005c0a60  f7 ff ff 2a                                      bhs #0x5c0a44
005c0a64  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005c0a68  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0a6c  03 10 a0 e1                                      mov r1, r3
005c0a70  02 21 8c e0                                      add r2, ip, r2, lsl #2
005c0a74  02 00 80 e0                                      add r0, r0, r2
005c0a78  eb e6 ff eb                                      bl #0x5ba62c
005c0a7c  01 00 a0 e3                                      mov r0, #1
005c0a80  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c0a84  8c 40 3d 00 14 28 00 00                          .byte 0x8c, 0x40, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0a8c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtEtjRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(unsigned short, unsigned int, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005c0a8c  d6 ff ff ea                                      b #0x5c09ec

; FUNCTION 0x005c0a90, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterEtRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(unsigned short, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005c0a90  02 30 a0 e1                                      mov r3, r2
005c0a94  00 20 a0 e3                                      mov r2, #0
005c0a98  d3 ff ff ea                                      b #0x5c09ec

; FUNCTION 0x005c0a9c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtEtRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(unsigned short, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005c0a9c  02 30 a0 e1                                      mov r3, r2
005c0aa0  00 20 a0 e3                                      mov r2, #0
005c0aa4  d0 ff ff ea                                      b #0x5c09ec

; FUNCTION 0x005c0d30, declared_size=428, range_size=428, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE13dropParameterEt
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameter(unsigned short)
; decoder-mode: arm
005c0d30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c0d34  18 30 90 e5                                      ldr r3, [r0, #0x18]
005c0d38  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
005c0d3c  8c 41 9f e5                                      ldr r4, [pc, #0x18c]
005c0d40  02 20 63 e0                                      rsb r2, r3, r2
005c0d44  42 21 a0 e1                                      asr r2, r2, #2
005c0d48  04 40 8f e0                                      add r4, pc, r4
005c0d4c  82 c0 82 e0                                      add ip, r2, r2, lsl #1
005c0d50  0c c2 8c e0                                      add ip, ip, ip, lsl #4
005c0d54  0c c4 8c e0                                      add ip, ip, ip, lsl #8
005c0d58  0c c8 8c e0                                      add ip, ip, ip, lsl #16
005c0d5c  0c 21 82 e0                                      add r2, r2, ip, lsl #2
005c0d60  02 00 51 e1                                      cmp r1, r2
005c0d64  56 00 00 2a                                      bhs #0x5c0ec4
005c0d68  14 20 a0 e3                                      mov r2, #0x14
005c0d6c  92 31 23 e0                                      mla r3, r2, r1, r3
005c0d70  00 20 93 e5                                      ldr r2, [r3]
005c0d74  00 00 52 e3                                      cmp r2, #0
005c0d78  00 30 a0 03                                      moveq r3, #0
005c0d7c  06 20 d3 e5                                      ldrb r2, [r3, #6]
005c0d80  0b 20 42 e2                                      sub r2, r2, #0xb
005c0d84  07 00 52 e3                                      cmp r2, #7
005c0d88  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
005c0d8c  26 00 00 ea                                      b #0x5c0e2c
005c0d90  37 00 00 ea                                      b #0x5c0e74
005c0d94  25 00 00 ea                                      b #0x5c0e30
005c0d98  24 00 00 ea                                      b #0x5c0e30
005c0d9c  23 00 00 ea                                      b #0x5c0e30
005c0da0  22 00 00 ea                                      b #0x5c0e30
005c0da4  20 00 00 ea                                      b #0x5c0e2c
005c0da8  1f 00 00 ea                                      b #0x5c0e2c
005c0dac  ff ff ff ea                                      b #0x5c0db0
005c0db0  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c0db4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005c0db8  08 70 93 e5                                      ldr r7, [r3, #8]
005c0dbc  02 50 85 e0                                      add r5, r5, r2
005c0dc0  07 71 85 e0                                      add r7, r5, r7, lsl #2
005c0dc4  07 00 55 e1                                      cmp r5, r7
005c0dc8  17 00 00 0a                                      beq #0x5c0e2c
005c0dcc  00 81 9f e5                                      ldr r8, [pc, #0x100]
005c0dd0  00 60 a0 e3                                      mov r6, #0
005c0dd4  00 30 95 e5                                      ldr r3, [r5]
005c0dd8  00 60 85 e5                                      str r6, [r5]
005c0ddc  04 50 85 e2                                      add r5, r5, #4
005c0de0  00 00 53 e3                                      cmp r3, #0
005c0de4  03 00 a0 e1                                      mov r0, r3
005c0de8  0d 00 00 0a                                      beq #0x5c0e24
005c0dec  00 20 93 e5                                      ldr r2, [r3]
005c0df0  01 20 42 e2                                      sub r2, r2, #1
005c0df4  00 00 52 e3                                      cmp r2, #0
005c0df8  00 20 83 e5                                      str r2, [r3]
005c0dfc  08 00 00 1a                                      bne #0x5c0e24
005c0e00  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
005c0e04  00 00 52 e3                                      cmp r2, #0
005c0e08  08 20 94 07                                      ldreq r2, [r4, r8]
005c0e0c  50 10 93 05                                      ldreq r1, [r3, #0x50]
005c0e10  00 c0 92 05                                      ldreq ip, [r2]
005c0e14  00 c0 81 05                                      streq ip, [r1]
005c0e18  00 10 82 05                                      streq r1, [r2]
005c0e1c  50 60 83 e5                                      str r6, [r3, #0x50]
005c0e20  22 35 f5 eb                                      bl #0x30e2b0
005c0e24  05 00 57 e1                                      cmp r7, r5
005c0e28  e9 ff ff 1a                                      bne #0x5c0dd4
005c0e2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c0e30  2c 40 90 e5                                      ldr r4, [r0, #0x2c]
005c0e34  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005c0e38  08 50 93 e5                                      ldr r5, [r3, #8]
005c0e3c  02 40 84 e0                                      add r4, r4, r2
005c0e40  05 51 84 e0                                      add r5, r4, r5, lsl #2
005c0e44  05 00 54 e1                                      cmp r4, r5
005c0e48  f7 ff ff 0a                                      beq #0x5c0e2c
005c0e4c  00 60 a0 e3                                      mov r6, #0
005c0e50  00 00 94 e5                                      ldr r0, [r4]
005c0e54  00 60 84 e5                                      str r6, [r4]
005c0e58  04 40 84 e2                                      add r4, r4, #4
005c0e5c  00 00 50 e3                                      cmp r0, #0
005c0e60  00 00 00 0a                                      beq #0x5c0e68
005c0e64  c6 71 f5 eb                                      bl #0x31d584
005c0e68  04 00 55 e1                                      cmp r5, r4
005c0e6c  f7 ff ff 1a                                      bne #0x5c0e50
005c0e70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c0e74  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c0e78  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005c0e7c  08 c0 93 e5                                      ldr ip, [r3, #8]
005c0e80  02 30 81 e0                                      add r3, r1, r2
005c0e84  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005c0e88  0c 00 53 e1                                      cmp r3, ip
005c0e8c  e6 ff ff 0a                                      beq #0x5c0e2c
005c0e90  3c 60 9f e5                                      ldr r6, [pc, #0x3c]
005c0e94  00 50 a0 e3                                      mov r5, #0
005c0e98  00 20 93 e5                                      ldr r2, [r3]
005c0e9c  00 00 52 e3                                      cmp r2, #0
005c0ea0  06 10 94 17                                      ldrne r1, [r4, r6]
005c0ea4  00 00 91 15                                      ldrne r0, [r1]
005c0ea8  00 00 82 15                                      strne r0, [r2]
005c0eac  00 20 81 15                                      strne r2, [r1]
005c0eb0  00 50 83 15                                      strne r5, [r3]
005c0eb4  04 30 83 e2                                      add r3, r3, #4
005c0eb8  03 00 5c e1                                      cmp ip, r3
005c0ebc  f5 ff ff 1a                                      bne #0x5c0e98
005c0ec0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c0ec4  0c 30 9f e5                                      ldr r3, [pc, #0xc]
005c0ec8  03 30 94 e7                                      ldr r3, [r4, r3]
005c0ecc  a7 ff ff ea                                      b #0x5c0d70
; mapping-symbol data/literal pool
005c0ed0  48 3d 3d 00 c0 3c 00 00 14 28 00 00              .byte 0x48, 0x3d, 0x3d, 0x00, 0xc0, 0x3c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0edc, declared_size=132, range_size=132, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE14dropParametersEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameters()
; decoder-mode: arm
005c0edc  70 40 2d e9                                      push {r4, r5, r6, lr}
005c0ee0  08 40 90 e5                                      ldr r4, [r0, #8]
005c0ee4  00 50 a0 e1                                      mov r5, r0
005c0ee8  00 00 54 e1                                      cmp r4, r0
005c0eec  0d 00 00 0a                                      beq #0x5c0f28
005c0ef0  05 00 a0 e1                                      mov r0, r5
005c0ef4  bc 11 d4 e1                                      ldrh r1, [r4, #0x1c]
005c0ef8  8c ff ff eb                                      bl #0x5c0d30
005c0efc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c0f00  00 00 52 e3                                      cmp r2, #0
005c0f04  01 00 00 1a                                      bne #0x5c0f10
005c0f08  07 00 00 ea                                      b #0x5c0f2c
005c0f0c  03 20 a0 e1                                      mov r2, r3
005c0f10  08 30 92 e5                                      ldr r3, [r2, #8]
005c0f14  00 00 53 e3                                      cmp r3, #0
005c0f18  fb ff ff 1a                                      bne #0x5c0f0c
005c0f1c  02 40 a0 e1                                      mov r4, r2
005c0f20  04 00 55 e1                                      cmp r5, r4
005c0f24  f1 ff ff 1a                                      bne #0x5c0ef0
005c0f28  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0f2c  04 30 94 e5                                      ldr r3, [r4, #4]
005c0f30  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005c0f34  04 00 51 e1                                      cmp r1, r4
005c0f38  05 00 00 1a                                      bne #0x5c0f54
005c0f3c  03 40 a0 e1                                      mov r4, r3
005c0f40  04 30 93 e5                                      ldr r3, [r3, #4]
005c0f44  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005c0f48  04 00 52 e1                                      cmp r2, r4
005c0f4c  fa ff ff 0a                                      beq #0x5c0f3c
005c0f50  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c0f54  03 00 52 e1                                      cmp r2, r3
005c0f58  03 40 a0 11                                      movne r4, r3
005c0f5c  ef ff ff ea                                      b #0x5c0f20

; FUNCTION 0x005c2d60, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*, int) const
; decoder-mode: arm
005c2d60  04 40 2d e5                                      str r4, [sp, #-4]!
005c2d64  01 c0 42 e2                                      sub ip, r2, #1
005c2d68  04 40 9d e5                                      ldr r4, [sp, #4]
005c2d6c  11 00 5c e3                                      cmp ip, #0x11
005c2d70  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c2d74  19 00 00 ea                                      b #0x5c2de0
005c2d78  1b 00 00 ea                                      b #0x5c2dec
005c2d7c  1e 00 00 ea                                      b #0x5c2dfc
005c2d80  21 00 00 ea                                      b #0x5c2e0c
005c2d84  24 00 00 ea                                      b #0x5c2e1c
005c2d88  27 00 00 ea                                      b #0x5c2e2c
005c2d8c  2a 00 00 ea                                      b #0x5c2e3c
005c2d90  2d 00 00 ea                                      b #0x5c2e4c
005c2d94  30 00 00 ea                                      b #0x5c2e5c
005c2d98  10 00 00 ea                                      b #0x5c2de0
005c2d9c  0f 00 00 ea                                      b #0x5c2de0
005c2da0  31 00 00 ea                                      b #0x5c2e6c
005c2da4  05 00 00 ea                                      b #0x5c2dc0
005c2da8  04 00 00 ea                                      b #0x5c2dc0
005c2dac  03 00 00 ea                                      b #0x5c2dc0
005c2db0  02 00 00 ea                                      b #0x5c2dc0
005c2db4  05 00 00 ea                                      b #0x5c2dd0
005c2db8  33 00 00 ea                                      b #0x5c2e8c
005c2dbc  2e 00 00 ea                                      b #0x5c2e7c
005c2dc0  03 20 a0 e1                                      mov r2, r3
005c2dc4  04 30 a0 e1                                      mov r3, r4
005c2dc8  10 00 bd e8                                      ldm sp!, {r4}
005c2dcc  c1 fd ff ea                                      b #0x5c24d8
005c2dd0  03 20 a0 e1                                      mov r2, r3
005c2dd4  04 30 a0 e1                                      mov r3, r4
005c2dd8  10 00 bd e8                                      ldm sp!, {r4}
005c2ddc  7f fd ff ea                                      b #0x5c23e0
005c2de0  00 00 a0 e3                                      mov r0, #0
005c2de4  10 00 bd e8                                      ldm sp!, {r4}
005c2de8  1e ff 2f e1                                      bx lr
005c2dec  03 20 a0 e1                                      mov r2, r3
005c2df0  04 30 a0 e1                                      mov r3, r4
005c2df4  10 00 bd e8                                      ldm sp!, {r4}
005c2df8  a0 ff ff ea                                      b #0x5c2c80
005c2dfc  03 20 a0 e1                                      mov r2, r3
005c2e00  04 30 a0 e1                                      mov r3, r4
005c2e04  10 00 bd e8                                      ldm sp!, {r4}
005c2e08  5f ff ff ea                                      b #0x5c2b8c
005c2e0c  03 20 a0 e1                                      mov r2, r3
005c2e10  04 30 a0 e1                                      mov r3, r4
005c2e14  10 00 bd e8                                      ldm sp!, {r4}
005c2e18  1e ff ff ea                                      b #0x5c2a98
005c2e1c  03 20 a0 e1                                      mov r2, r3
005c2e20  04 30 a0 e1                                      mov r3, r4
005c2e24  10 00 bd e8                                      ldm sp!, {r4}
005c2e28  dd fe ff ea                                      b #0x5c29a4
005c2e2c  03 20 a0 e1                                      mov r2, r3
005c2e30  04 30 a0 e1                                      mov r3, r4
005c2e34  10 00 bd e8                                      ldm sp!, {r4}
005c2e38  a1 fe ff ea                                      b #0x5c28c4
005c2e3c  03 20 a0 e1                                      mov r2, r3
005c2e40  04 30 a0 e1                                      mov r3, r4
005c2e44  10 00 bd e8                                      ldm sp!, {r4}
005c2e48  60 fe ff ea                                      b #0x5c27d0
005c2e4c  03 20 a0 e1                                      mov r2, r3
005c2e50  04 30 a0 e1                                      mov r3, r4
005c2e54  10 00 bd e8                                      ldm sp!, {r4}
005c2e58  1f fe ff ea                                      b #0x5c26dc
005c2e5c  03 20 a0 e1                                      mov r2, r3
005c2e60  04 30 a0 e1                                      mov r3, r4
005c2e64  10 00 bd e8                                      ldm sp!, {r4}
005c2e68  de fd ff ea                                      b #0x5c25e8
005c2e6c  03 20 a0 e1                                      mov r2, r3
005c2e70  04 30 a0 e1                                      mov r3, r4
005c2e74  10 00 bd e8                                      ldm sp!, {r4}
005c2e78  a7 f6 ff ea                                      b #0x5c091c
005c2e7c  03 20 a0 e1                                      mov r2, r3
005c2e80  04 30 a0 e1                                      mov r3, r4
005c2e84  10 00 bd e8                                      ldm sp!, {r4}
005c2e88  c2 fc ff ea                                      b #0x5c2198
005c2e8c  03 20 a0 e1                                      mov r2, r3
005c2e90  04 30 a0 e1                                      mov r3, r4
005c2e94  10 00 bd e8                                      ldm sp!, {r4}
005c2e98  12 fd ff ea                                      b #0x5c22e8

; FUNCTION 0x005c4f10, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*)
; decoder-mode: arm
005c4f10  01 c0 43 e2                                      sub ip, r3, #1
005c4f14  00 30 9d e5                                      ldr r3, [sp]
005c4f18  11 00 5c e3                                      cmp ip, #0x11
005c4f1c  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c4f20  13 00 00 ea                                      b #0x5c4f74
005c4f24  14 00 00 ea                                      b #0x5c4f7c
005c4f28  14 00 00 ea                                      b #0x5c4f80
005c4f2c  14 00 00 ea                                      b #0x5c4f84
005c4f30  14 00 00 ea                                      b #0x5c4f88
005c4f34  14 00 00 ea                                      b #0x5c4f8c
005c4f38  14 00 00 ea                                      b #0x5c4f90
005c4f3c  14 00 00 ea                                      b #0x5c4f94
005c4f40  14 00 00 ea                                      b #0x5c4f98
005c4f44  0a 00 00 ea                                      b #0x5c4f74
005c4f48  09 00 00 ea                                      b #0x5c4f74
005c4f4c  12 00 00 ea                                      b #0x5c4f9c
005c4f50  05 00 00 ea                                      b #0x5c4f6c
005c4f54  04 00 00 ea                                      b #0x5c4f6c
005c4f58  03 00 00 ea                                      b #0x5c4f6c
005c4f5c  02 00 00 ea                                      b #0x5c4f6c
005c4f60  02 00 00 ea                                      b #0x5c4f70
005c4f64  0e 00 00 ea                                      b #0x5c4fa4
005c4f68  0c 00 00 ea                                      b #0x5c4fa0
005c4f6c  4b fe ff ea                                      b #0x5c48a0
005c4f70  21 fe ff ea                                      b #0x5c47fc
005c4f74  00 00 a0 e3                                      mov r0, #0
005c4f78  1e ff 2f e1                                      bx lr
005c4f7c  bb ff ff ea                                      b #0x5c4e70
005c4f80  8f ff ff ea                                      b #0x5c4dc4
005c4f84  60 ff ff ea                                      b #0x5c4d0c
005c4f88  30 ff ff ea                                      b #0x5c4c50
005c4f8c  07 ff ff ea                                      b #0x5c4bb0
005c4f90  db fe ff ea                                      b #0x5c4b04
005c4f94  ac fe ff ea                                      b #0x5c4a4c
005c4f98  7c fe ff ea                                      b #0x5c4990
005c4f9c  cd e7 ff ea                                      b #0x5beed8
005c4fa0  b9 e5 ff ea                                      b #0x5be68c
005c4fa4  ea fd ff ea                                      b #0x5c4754

; FUNCTION 0x005c52d0, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*, int) const
; decoder-mode: arm
005c52d0  04 40 2d e5                                      str r4, [sp, #-4]!
005c52d4  01 c0 42 e2                                      sub ip, r2, #1
005c52d8  04 40 9d e5                                      ldr r4, [sp, #4]
005c52dc  11 00 5c e3                                      cmp ip, #0x11
005c52e0  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c52e4  19 00 00 ea                                      b #0x5c5350
005c52e8  1b 00 00 ea                                      b #0x5c535c
005c52ec  1e 00 00 ea                                      b #0x5c536c
005c52f0  21 00 00 ea                                      b #0x5c537c
005c52f4  24 00 00 ea                                      b #0x5c538c
005c52f8  27 00 00 ea                                      b #0x5c539c
005c52fc  2a 00 00 ea                                      b #0x5c53ac
005c5300  2d 00 00 ea                                      b #0x5c53bc
005c5304  30 00 00 ea                                      b #0x5c53cc
005c5308  10 00 00 ea                                      b #0x5c5350
005c530c  0f 00 00 ea                                      b #0x5c5350
005c5310  31 00 00 ea                                      b #0x5c53dc
005c5314  05 00 00 ea                                      b #0x5c5330
005c5318  04 00 00 ea                                      b #0x5c5330
005c531c  03 00 00 ea                                      b #0x5c5330
005c5320  02 00 00 ea                                      b #0x5c5330
005c5324  05 00 00 ea                                      b #0x5c5340
005c5328  33 00 00 ea                                      b #0x5c53fc
005c532c  2e 00 00 ea                                      b #0x5c53ec
005c5330  03 20 a0 e1                                      mov r2, r3
005c5334  04 30 a0 e1                                      mov r3, r4
005c5338  10 00 bd e8                                      ldm sp!, {r4}
005c533c  19 ff ff ea                                      b #0x5c4fa8
005c5340  03 20 a0 e1                                      mov r2, r3
005c5344  04 30 a0 e1                                      mov r3, r4
005c5348  10 00 bd e8                                      ldm sp!, {r4}
005c534c  59 f0 ff ea                                      b #0x5c14b8
005c5350  00 00 a0 e3                                      mov r0, #0
005c5354  10 00 bd e8                                      ldm sp!, {r4}
005c5358  1e ff 2f e1                                      bx lr
005c535c  03 20 a0 e1                                      mov r2, r3
005c5360  04 30 a0 e1                                      mov r3, r4
005c5364  10 00 bd e8                                      ldm sp!, {r4}
005c5368  45 f3 ff ea                                      b #0x5c2084
005c536c  03 20 a0 e1                                      mov r2, r3
005c5370  04 30 a0 e1                                      mov r3, r4
005c5374  10 00 bd e8                                      ldm sp!, {r4}
005c5378  f8 f2 ff ea                                      b #0x5c1f60
005c537c  03 20 a0 e1                                      mov r2, r3
005c5380  04 30 a0 e1                                      mov r3, r4
005c5384  10 00 bd e8                                      ldm sp!, {r4}
005c5388  a9 f2 ff ea                                      b #0x5c1e34
005c538c  03 20 a0 e1                                      mov r2, r3
005c5390  04 30 a0 e1                                      mov r3, r4
005c5394  10 00 bd e8                                      ldm sp!, {r4}
005c5398  5a f2 ff ea                                      b #0x5c1d08
005c539c  03 20 a0 e1                                      mov r2, r3
005c53a0  04 30 a0 e1                                      mov r3, r4
005c53a4  10 00 bd e8                                      ldm sp!, {r4}
005c53a8  03 f2 ff ea                                      b #0x5c1bbc
005c53ac  03 20 a0 e1                                      mov r2, r3
005c53b0  04 30 a0 e1                                      mov r3, r4
005c53b4  10 00 bd e8                                      ldm sp!, {r4}
005c53b8  b6 f1 ff ea                                      b #0x5c1a98
005c53bc  03 20 a0 e1                                      mov r2, r3
005c53c0  04 30 a0 e1                                      mov r3, r4
005c53c4  10 00 bd e8                                      ldm sp!, {r4}
005c53c8  67 f1 ff ea                                      b #0x5c196c
005c53cc  03 20 a0 e1                                      mov r2, r3
005c53d0  04 30 a0 e1                                      mov r3, r4
005c53d4  10 00 bd e8                                      ldm sp!, {r4}
005c53d8  ce f0 ff ea                                      b #0x5c1718
005c53dc  03 20 a0 e1                                      mov r2, r3
005c53e0  04 30 a0 e1                                      mov r3, r4
005c53e4  10 00 bd e8                                      ldm sp!, {r4}
005c53e8  4b ed ff ea                                      b #0x5c091c
005c53ec  03 20 a0 e1                                      mov r2, r3
005c53f0  04 30 a0 e1                                      mov r3, r4
005c53f4  10 00 bd e8                                      ldm sp!, {r4}
005c53f8  63 ff ff ea                                      b #0x5c518c
005c53fc  03 20 a0 e1                                      mov r2, r3
005c5400  04 30 a0 e1                                      mov r3, r4
005c5404  10 00 bd e8                                      ldm sp!, {r4}
005c5408  a8 ef ff ea                                      b #0x5c12b0

; FUNCTION 0x005c5550, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*, int)
; decoder-mode: arm
005c5550  04 40 2d e5                                      str r4, [sp, #-4]!
005c5554  01 c0 42 e2                                      sub ip, r2, #1
005c5558  04 40 9d e5                                      ldr r4, [sp, #4]
005c555c  11 00 5c e3                                      cmp ip, #0x11
005c5560  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c5564  19 00 00 ea                                      b #0x5c55d0
005c5568  1b 00 00 ea                                      b #0x5c55dc
005c556c  1e 00 00 ea                                      b #0x5c55ec
005c5570  21 00 00 ea                                      b #0x5c55fc
005c5574  24 00 00 ea                                      b #0x5c560c
005c5578  27 00 00 ea                                      b #0x5c561c
005c557c  2a 00 00 ea                                      b #0x5c562c
005c5580  2d 00 00 ea                                      b #0x5c563c
005c5584  30 00 00 ea                                      b #0x5c564c
005c5588  10 00 00 ea                                      b #0x5c55d0
005c558c  0f 00 00 ea                                      b #0x5c55d0
005c5590  31 00 00 ea                                      b #0x5c565c
005c5594  05 00 00 ea                                      b #0x5c55b0
005c5598  04 00 00 ea                                      b #0x5c55b0
005c559c  03 00 00 ea                                      b #0x5c55b0
005c55a0  02 00 00 ea                                      b #0x5c55b0
005c55a4  05 00 00 ea                                      b #0x5c55c0
005c55a8  33 00 00 ea                                      b #0x5c567c
005c55ac  2e 00 00 ea                                      b #0x5c566c
005c55b0  03 20 a0 e1                                      mov r2, r3
005c55b4  04 30 a0 e1                                      mov r3, r4
005c55b8  10 00 bd e8                                      ldm sp!, {r4}
005c55bc  84 ed ff ea                                      b #0x5c0bd4
005c55c0  03 20 a0 e1                                      mov r2, r3
005c55c4  04 30 a0 e1                                      mov r3, r4
005c55c8  10 00 bd e8                                      ldm sp!, {r4}
005c55cc  b7 f6 ff ea                                      b #0x5c30b0
005c55d0  00 00 a0 e3                                      mov r0, #0
005c55d4  10 00 bd e8                                      ldm sp!, {r4}
005c55d8  1e ff 2f e1                                      bx lr
005c55dc  03 20 a0 e1                                      mov r2, r3
005c55e0  04 30 a0 e1                                      mov r3, r4
005c55e4  10 00 bd e8                                      ldm sp!, {r4}
005c55e8  1e ea ff ea                                      b #0x5bfe68
005c55ec  03 20 a0 e1                                      mov r2, r3
005c55f0  04 30 a0 e1                                      mov r3, r4
005c55f4  10 00 bd e8                                      ldm sp!, {r4}
005c55f8  d1 e9 ff ea                                      b #0x5bfd44
005c55fc  03 20 a0 e1                                      mov r2, r3
005c5600  04 30 a0 e1                                      mov r3, r4
005c5604  10 00 bd e8                                      ldm sp!, {r4}
005c5608  82 e9 ff ea                                      b #0x5bfc18
005c560c  03 20 a0 e1                                      mov r2, r3
005c5610  04 30 a0 e1                                      mov r3, r4
005c5614  10 00 bd e8                                      ldm sp!, {r4}
005c5618  a4 f8 ff ea                                      b #0x5c38b0
005c561c  03 20 a0 e1                                      mov r2, r3
005c5620  04 30 a0 e1                                      mov r3, r4
005c5624  10 00 bd e8                                      ldm sp!, {r4}
005c5628  4d f8 ff ea                                      b #0x5c3764
005c562c  03 20 a0 e1                                      mov r2, r3
005c5630  04 30 a0 e1                                      mov r3, r4
005c5634  10 00 bd e8                                      ldm sp!, {r4}
005c5638  00 f8 ff ea                                      b #0x5c3640
005c563c  03 20 a0 e1                                      mov r2, r3
005c5640  04 30 a0 e1                                      mov r3, r4
005c5644  10 00 bd e8                                      ldm sp!, {r4}
005c5648  b1 f7 ff ea                                      b #0x5c3514
005c564c  03 20 a0 e1                                      mov r2, r3
005c5650  04 30 a0 e1                                      mov r3, r4
005c5654  10 00 bd e8                                      ldm sp!, {r4}
005c5658  2a f7 ff ea                                      b #0x5c3308
005c565c  03 20 a0 e1                                      mov r2, r3
005c5660  04 30 a0 e1                                      mov r3, r4
005c5664  10 00 bd e8                                      ldm sp!, {r4}
005c5668  e5 e5 ff ea                                      b #0x5bee04
005c566c  03 20 a0 e1                                      mov r2, r3
005c5670  04 30 a0 e1                                      mov r3, r4
005c5674  10 00 bd e8                                      ldm sp!, {r4}
005c5678  63 ff ff ea                                      b #0x5c540c
005c567c  03 20 a0 e1                                      mov r2, r3
005c5680  04 30 a0 e1                                      mov r3, r4
005c5684  10 00 bd e8                                      ldm sp!, {r4}
005c5688  03 f6 ff ea                                      b #0x5c2e9c

; FUNCTION 0x005c57b0, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*, int)
; decoder-mode: arm
005c57b0  04 40 2d e5                                      str r4, [sp, #-4]!
005c57b4  01 c0 42 e2                                      sub ip, r2, #1
005c57b8  04 40 9d e5                                      ldr r4, [sp, #4]
005c57bc  11 00 5c e3                                      cmp ip, #0x11
005c57c0  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c57c4  19 00 00 ea                                      b #0x5c5830
005c57c8  1b 00 00 ea                                      b #0x5c583c
005c57cc  1e 00 00 ea                                      b #0x5c584c
005c57d0  21 00 00 ea                                      b #0x5c585c
005c57d4  24 00 00 ea                                      b #0x5c586c
005c57d8  27 00 00 ea                                      b #0x5c587c
005c57dc  2a 00 00 ea                                      b #0x5c588c
005c57e0  2d 00 00 ea                                      b #0x5c589c
005c57e4  30 00 00 ea                                      b #0x5c58ac
005c57e8  10 00 00 ea                                      b #0x5c5830
005c57ec  0f 00 00 ea                                      b #0x5c5830
005c57f0  31 00 00 ea                                      b #0x5c58bc
005c57f4  05 00 00 ea                                      b #0x5c5810
005c57f8  04 00 00 ea                                      b #0x5c5810
005c57fc  03 00 00 ea                                      b #0x5c5810
005c5800  02 00 00 ea                                      b #0x5c5810
005c5804  05 00 00 ea                                      b #0x5c5820
005c5808  33 00 00 ea                                      b #0x5c58dc
005c580c  2e 00 00 ea                                      b #0x5c58cc
005c5810  03 20 a0 e1                                      mov r2, r3
005c5814  04 30 a0 e1                                      mov r3, r4
005c5818  10 00 bd e8                                      ldm sp!, {r4}
005c581c  1c ed ff ea                                      b #0x5c0c94
005c5820  03 20 a0 e1                                      mov r2, r3
005c5824  04 30 a0 e1                                      mov r3, r4
005c5828  10 00 bd e8                                      ldm sp!, {r4}
005c582c  1e ea ff ea                                      b #0x5c00ac
005c5830  00 00 a0 e3                                      mov r0, #0
005c5834  10 00 bd e8                                      ldm sp!, {r4}
005c5838  1e ff 2f e1                                      bx lr
005c583c  03 20 a0 e1                                      mov r2, r3
005c5840  04 30 a0 e1                                      mov r3, r4
005c5844  10 00 bd e8                                      ldm sp!, {r4}
005c5848  fb eb ff ea                                      b #0x5c083c
005c584c  03 20 a0 e1                                      mov r2, r3
005c5850  04 30 a0 e1                                      mov r3, r4
005c5854  10 00 bd e8                                      ldm sp!, {r4}
005c5858  ba eb ff ea                                      b #0x5c0748
005c585c  03 20 a0 e1                                      mov r2, r3
005c5860  04 30 a0 e1                                      mov r3, r4
005c5864  10 00 bd e8                                      ldm sp!, {r4}
005c5868  79 eb ff ea                                      b #0x5c0654
005c586c  03 20 a0 e1                                      mov r2, r3
005c5870  04 30 a0 e1                                      mov r3, r4
005c5874  10 00 bd e8                                      ldm sp!, {r4}
005c5878  38 eb ff ea                                      b #0x5c0560
005c587c  03 20 a0 e1                                      mov r2, r3
005c5880  04 30 a0 e1                                      mov r3, r4
005c5884  10 00 bd e8                                      ldm sp!, {r4}
005c5888  fc ea ff ea                                      b #0x5c0480
005c588c  03 20 a0 e1                                      mov r2, r3
005c5890  04 30 a0 e1                                      mov r3, r4
005c5894  10 00 bd e8                                      ldm sp!, {r4}
005c5898  bb ea ff ea                                      b #0x5c038c
005c589c  03 20 a0 e1                                      mov r2, r3
005c58a0  04 30 a0 e1                                      mov r3, r4
005c58a4  10 00 bd e8                                      ldm sp!, {r4}
005c58a8  7a ea ff ea                                      b #0x5c0298
005c58ac  03 20 a0 e1                                      mov r2, r3
005c58b0  04 30 a0 e1                                      mov r3, r4
005c58b4  10 00 bd e8                                      ldm sp!, {r4}
005c58b8  39 ea ff ea                                      b #0x5c01a4
005c58bc  03 20 a0 e1                                      mov r2, r3
005c58c0  04 30 a0 e1                                      mov r3, r4
005c58c4  10 00 bd e8                                      ldm sp!, {r4}
005c58c8  4d e5 ff ea                                      b #0x5bee04
005c58cc  03 20 a0 e1                                      mov r2, r3
005c58d0  04 30 a0 e1                                      mov r3, r4
005c58d4  10 00 bd e8                                      ldm sp!, {r4}
005c58d8  6b ff ff ea                                      b #0x5c568c
005c58dc  03 20 a0 e1                                      mov r2, r3
005c58e0  04 30 a0 e1                                      mov r3, r4
005c58e4  10 00 bd e8                                      ldm sp!, {r4}
005c58e8  b1 e9 ff ea                                      b #0x5bffb4

; FUNCTION 0x005c59a8, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*) const
; decoder-mode: arm
005c59a8  01 c0 43 e2                                      sub ip, r3, #1
005c59ac  00 30 9d e5                                      ldr r3, [sp]
005c59b0  11 00 5c e3                                      cmp ip, #0x11
005c59b4  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c59b8  13 00 00 ea                                      b #0x5c5a0c
005c59bc  14 00 00 ea                                      b #0x5c5a14
005c59c0  14 00 00 ea                                      b #0x5c5a18
005c59c4  14 00 00 ea                                      b #0x5c5a1c
005c59c8  14 00 00 ea                                      b #0x5c5a20
005c59cc  14 00 00 ea                                      b #0x5c5a24
005c59d0  14 00 00 ea                                      b #0x5c5a28
005c59d4  14 00 00 ea                                      b #0x5c5a2c
005c59d8  14 00 00 ea                                      b #0x5c5a30
005c59dc  0a 00 00 ea                                      b #0x5c5a0c
005c59e0  09 00 00 ea                                      b #0x5c5a0c
005c59e4  12 00 00 ea                                      b #0x5c5a34
005c59e8  05 00 00 ea                                      b #0x5c5a04
005c59ec  04 00 00 ea                                      b #0x5c5a04
005c59f0  03 00 00 ea                                      b #0x5c5a04
005c59f4  02 00 00 ea                                      b #0x5c5a04
005c59f8  02 00 00 ea                                      b #0x5c5a08
005c59fc  0e 00 00 ea                                      b #0x5c5a3c
005c5a00  0c 00 00 ea                                      b #0x5c5a38
005c5a04  26 e4 ff ea                                      b #0x5beaa4
005c5a08  b5 e3 ff ea                                      b #0x5be8e4
005c5a0c  00 00 a0 e3                                      mov r0, #0
005c5a10  1e ff 2f e1                                      bx lr
005c5a14  e8 e6 ff ea                                      b #0x5bf5bc
005c5a18  b7 e6 ff ea                                      b #0x5bf4fc
005c5a1c  84 e6 ff ea                                      b #0x5bf434
005c5a20  4e e6 ff ea                                      b #0x5bf360
005c5a24  17 e6 ff ea                                      b #0x5bf288
005c5a28  e6 e5 ff ea                                      b #0x5bf1c8
005c5a2c  b3 e5 ff ea                                      b #0x5bf100
005c5a30  58 e5 ff ea                                      b #0x5bef98
005c5a34  ec eb ff ea                                      b #0x5c09ec
005c5a38  ab ff ff ea                                      b #0x5c58ec
005c5a3c  54 e3 ff ea                                      b #0x5be794

; FUNCTION 0x005c5b48, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*) const
; decoder-mode: arm
005c5b48  01 c0 43 e2                                      sub ip, r3, #1
005c5b4c  00 30 9d e5                                      ldr r3, [sp]
005c5b50  11 00 5c e3                                      cmp ip, #0x11
005c5b54  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c5b58  13 00 00 ea                                      b #0x5c5bac
005c5b5c  14 00 00 ea                                      b #0x5c5bb4
005c5b60  14 00 00 ea                                      b #0x5c5bb8
005c5b64  14 00 00 ea                                      b #0x5c5bbc
005c5b68  14 00 00 ea                                      b #0x5c5bc0
005c5b6c  14 00 00 ea                                      b #0x5c5bc4
005c5b70  14 00 00 ea                                      b #0x5c5bc8
005c5b74  14 00 00 ea                                      b #0x5c5bcc
005c5b78  14 00 00 ea                                      b #0x5c5bd0
005c5b7c  0a 00 00 ea                                      b #0x5c5bac
005c5b80  09 00 00 ea                                      b #0x5c5bac
005c5b84  12 00 00 ea                                      b #0x5c5bd4
005c5b88  05 00 00 ea                                      b #0x5c5ba4
005c5b8c  04 00 00 ea                                      b #0x5c5ba4
005c5b90  03 00 00 ea                                      b #0x5c5ba4
005c5b94  02 00 00 ea                                      b #0x5c5ba4
005c5b98  02 00 00 ea                                      b #0x5c5ba8
005c5b9c  0e 00 00 ea                                      b #0x5c5bdc
005c5ba0  0c 00 00 ea                                      b #0x5c5bd8
005c5ba4  0c e7 ff ea                                      b #0x5bf7dc
005c5ba8  e2 e6 ff ea                                      b #0x5bf738
005c5bac  00 00 a0 e3                                      mov r0, #0
005c5bb0  1e ff 2f e1                                      bx lr
005c5bb4  e1 f7 ff ea                                      b #0x5c3b40
005c5bb8  b5 f7 ff ea                                      b #0x5c3a94
005c5bbc  86 f7 ff ea                                      b #0x5c39dc
005c5bc0  e5 e7 ff ea                                      b #0x5bfb5c
005c5bc4  bc e7 ff ea                                      b #0x5bfabc
005c5bc8  90 e7 ff ea                                      b #0x5bfa10
005c5bcc  61 e7 ff ea                                      b #0x5bf958
005c5bd0  31 e7 ff ea                                      b #0x5bf89c
005c5bd4  84 eb ff ea                                      b #0x5c09ec
005c5bd8  98 ff ff ea                                      b #0x5c5a40
005c5bdc  aa e6 ff ea                                      b #0x5bf68c

; FUNCTION 0x005c5c9c, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*)
; decoder-mode: arm
005c5c9c  01 c0 43 e2                                      sub ip, r3, #1
005c5ca0  00 30 9d e5                                      ldr r3, [sp]
005c5ca4  11 00 5c e3                                      cmp ip, #0x11
005c5ca8  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c5cac  13 00 00 ea                                      b #0x5c5d00
005c5cb0  14 00 00 ea                                      b #0x5c5d08
005c5cb4  14 00 00 ea                                      b #0x5c5d0c
005c5cb8  14 00 00 ea                                      b #0x5c5d10
005c5cbc  14 00 00 ea                                      b #0x5c5d14
005c5cc0  14 00 00 ea                                      b #0x5c5d18
005c5cc4  14 00 00 ea                                      b #0x5c5d1c
005c5cc8  14 00 00 ea                                      b #0x5c5d20
005c5ccc  14 00 00 ea                                      b #0x5c5d24
005c5cd0  0a 00 00 ea                                      b #0x5c5d00
005c5cd4  09 00 00 ea                                      b #0x5c5d00
005c5cd8  12 00 00 ea                                      b #0x5c5d28
005c5cdc  05 00 00 ea                                      b #0x5c5cf8
005c5ce0  04 00 00 ea                                      b #0x5c5cf8
005c5ce4  03 00 00 ea                                      b #0x5c5cf8
005c5ce8  02 00 00 ea                                      b #0x5c5cf8
005c5cec  02 00 00 ea                                      b #0x5c5cfc
005c5cf0  0e 00 00 ea                                      b #0x5c5d30
005c5cf4  0c 00 00 ea                                      b #0x5c5d2c
005c5cf8  90 f8 ff ea                                      b #0x5c3f40
005c5cfc  16 f8 ff ea                                      b #0x5c3d5c
005c5d00  00 00 a0 e3                                      mov r0, #0
005c5d04  1e ff 2f e1                                      bx lr
005c5d08  5e fa ff ea                                      b #0x5c4688
005c5d0c  2d fa ff ea                                      b #0x5c45c8
005c5d10  fa f9 ff ea                                      b #0x5c4500
005c5d14  c4 f9 ff ea                                      b #0x5c442c
005c5d18  8e f9 ff ea                                      b #0x5c4358
005c5d1c  5d f9 ff ea                                      b #0x5c4298
005c5d20  2a f9 ff ea                                      b #0x5c41d0
005c5d24  ca f8 ff ea                                      b #0x5c4054
005c5d28  6a e4 ff ea                                      b #0x5beed8
005c5d2c  ab ff ff ea                                      b #0x5c5be0
005c5d30  aa f7 ff ea                                      b #0x5c3be0
