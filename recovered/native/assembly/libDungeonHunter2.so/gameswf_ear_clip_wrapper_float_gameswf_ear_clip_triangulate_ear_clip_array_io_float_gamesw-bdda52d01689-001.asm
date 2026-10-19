; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b063c, declared_size=724, range_size=724, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E14vertex_in_coneERKNS_4vec2IfEES8_S8_S8_
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vertex_in_cone(gameswf::vec2<float> const&, gameswf::vec2<float> const&, gameswf::vec2<float> const&, gameswf::vec2<float> const&)
; decoder-mode: arm
007b063c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b0640  00 40 a0 e1                                      mov r4, r0
007b0644  44 d0 4d e2                                      sub sp, sp, #0x44
007b0648  00 00 92 e5                                      ldr r0, [r2]
007b064c  03 50 a0 e1                                      mov r5, r3
007b0650  02 60 a0 e1                                      mov r6, r2
007b0654  01 70 a0 e1                                      mov r7, r1
007b0658  91 78 ed eb                                      bl #0x30e8a4
007b065c  f0 00 cd e1                                      strd r0, r1, [sp]
007b0660  00 00 97 e5                                      ldr r0, [r7]
007b0664  8e 78 ed eb                                      bl #0x30e8a4
007b0668  00 a0 a0 e1                                      mov sl, r0
007b066c  01 b0 a0 e1                                      mov fp, r1
007b0670  0a 20 a0 e1                                      mov r2, sl
007b0674  0b 30 a0 e1                                      mov r3, fp
007b0678  d0 00 cd e1                                      ldrd r0, r1, [sp]
007b067c  aa 77 ed eb                                      bl #0x30e52c
007b0680  f8 03 cd e1                                      strd r0, r1, [sp, #0x38]
007b0684  04 00 95 e5                                      ldr r0, [r5, #4]
007b0688  85 78 ed eb                                      bl #0x30e8a4
007b068c  f0 03 cd e1                                      strd r0, r1, [sp, #0x30]
007b0690  04 00 97 e5                                      ldr r0, [r7, #4]
007b0694  82 78 ed eb                                      bl #0x30e8a4
007b0698  00 80 a0 e1                                      mov r8, r0
007b069c  04 00 96 e5                                      ldr r0, [r6, #4]
007b06a0  01 90 a0 e1                                      mov sb, r1
007b06a4  7e 78 ed eb                                      bl #0x30e8a4
007b06a8  08 20 a0 e1                                      mov r2, r8
007b06ac  09 30 a0 e1                                      mov r3, sb
007b06b0  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
007b06b4  9c 77 ed eb                                      bl #0x30e52c
007b06b8  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
007b06bc  00 00 95 e5                                      ldr r0, [r5]
007b06c0  77 78 ed eb                                      bl #0x30e8a4
007b06c4  08 20 a0 e1                                      mov r2, r8
007b06c8  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007b06cc  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
007b06d0  09 30 a0 e1                                      mov r3, sb
007b06d4  94 77 ed eb                                      bl #0x30e52c
007b06d8  00 20 a0 e1                                      mov r2, r0
007b06dc  01 30 a0 e1                                      mov r3, r1
007b06e0  d8 03 cd e1                                      ldrd r0, r1, [sp, #0x38]
007b06e4  f2 78 ed eb                                      bl #0x30eab4
007b06e8  0a 20 a0 e1                                      mov r2, sl
007b06ec  00 60 a0 e1                                      mov r6, r0
007b06f0  01 70 a0 e1                                      mov r7, r1
007b06f4  0b 30 a0 e1                                      mov r3, fp
007b06f8  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007b06fc  8a 77 ed eb                                      bl #0x30e52c
007b0700  00 20 a0 e1                                      mov r2, r0
007b0704  01 30 a0 e1                                      mov r3, r1
007b0708  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
007b070c  e8 78 ed eb                                      bl #0x30eab4
007b0710  00 20 a0 e1                                      mov r2, r0
007b0714  01 30 a0 e1                                      mov r3, r1
007b0718  06 00 a0 e1                                      mov r0, r6
007b071c  07 10 a0 e1                                      mov r1, r7
007b0720  81 77 ed eb                                      bl #0x30e52c
007b0724  00 20 a0 e3                                      mov r2, #0
007b0728  00 30 a0 e3                                      mov r3, #0
007b072c  00 60 a0 e1                                      mov r6, r0
007b0730  01 70 a0 e1                                      mov r7, r1
007b0734  c9 75 ed eb                                      bl #0x30de60
007b0738  00 00 50 e3                                      cmp r0, #0
007b073c  01 50 a0 13                                      movne r5, #1
007b0740  07 00 00 1a                                      bne #0x7b0764
007b0744  06 00 a0 e1                                      mov r0, r6
007b0748  07 10 a0 e1                                      mov r1, r7
007b074c  00 20 a0 e3                                      mov r2, #0
007b0750  00 30 a0 e3                                      mov r3, #0
007b0754  01 78 ed eb                                      bl #0x30e760
007b0758  00 00 50 e3                                      cmp r0, #0
007b075c  00 50 e0 13                                      mvnne r5, #0
007b0760  00 50 a0 03                                      moveq r5, #0
007b0764  04 00 94 e5                                      ldr r0, [r4, #4]
007b0768  4d 78 ed eb                                      bl #0x30e8a4
007b076c  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
007b0770  00 00 94 e5                                      ldr r0, [r4]
007b0774  4a 78 ed eb                                      bl #0x30e8a4
007b0778  08 20 a0 e1                                      mov r2, r8
007b077c  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007b0780  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
007b0784  09 30 a0 e1                                      mov r3, sb
007b0788  67 77 ed eb                                      bl #0x30e52c
007b078c  00 20 a0 e1                                      mov r2, r0
007b0790  01 30 a0 e1                                      mov r3, r1
007b0794  d8 03 cd e1                                      ldrd r0, r1, [sp, #0x38]
007b0798  c5 78 ed eb                                      bl #0x30eab4
007b079c  0a 20 a0 e1                                      mov r2, sl
007b07a0  00 60 a0 e1                                      mov r6, r0
007b07a4  01 70 a0 e1                                      mov r7, r1
007b07a8  0b 30 a0 e1                                      mov r3, fp
007b07ac  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007b07b0  5d 77 ed eb                                      bl #0x30e52c
007b07b4  00 20 a0 e1                                      mov r2, r0
007b07b8  01 30 a0 e1                                      mov r3, r1
007b07bc  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
007b07c0  bb 78 ed eb                                      bl #0x30eab4
007b07c4  00 20 a0 e1                                      mov r2, r0
007b07c8  01 30 a0 e1                                      mov r3, r1
007b07cc  06 00 a0 e1                                      mov r0, r6
007b07d0  07 10 a0 e1                                      mov r1, r7
007b07d4  54 77 ed eb                                      bl #0x30e52c
007b07d8  00 20 a0 e3                                      mov r2, #0
007b07dc  00 30 a0 e3                                      mov r3, #0
007b07e0  00 60 a0 e1                                      mov r6, r0
007b07e4  01 70 a0 e1                                      mov r7, r1
007b07e8  9c 75 ed eb                                      bl #0x30de60
007b07ec  00 00 50 e3                                      cmp r0, #0
007b07f0  01 40 a0 13                                      movne r4, #1
007b07f4  09 00 00 1a                                      bne #0x7b0820
007b07f8  06 00 a0 e1                                      mov r0, r6
007b07fc  07 10 a0 e1                                      mov r1, r7
007b0800  00 20 a0 e3                                      mov r2, #0
007b0804  00 30 a0 e3                                      mov r3, #0
007b0808  d4 77 ed eb                                      bl #0x30e760
007b080c  00 00 50 e3                                      cmp r0, #0
007b0810  00 40 a0 e3                                      mov r4, #0
007b0814  01 40 a0 13                                      movne r4, #1
007b0818  01 40 24 e2                                      eor r4, r4, #1
007b081c  74 40 ef e6                                      uxtb r4, r4
007b0820  d0 20 cd e1                                      ldrd r2, r3, [sp]
007b0824  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007b0828  3f 77 ed eb                                      bl #0x30e52c
007b082c  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
007b0830  00 60 a0 e1                                      mov r6, r0
007b0834  01 70 a0 e1                                      mov r7, r1
007b0838  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
007b083c  3a 77 ed eb                                      bl #0x30e52c
007b0840  00 20 a0 e1                                      mov r2, r0
007b0844  01 30 a0 e1                                      mov r3, r1
007b0848  06 00 a0 e1                                      mov r0, r6
007b084c  07 10 a0 e1                                      mov r1, r7
007b0850  97 78 ed eb                                      bl #0x30eab4
007b0854  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
007b0858  00 80 a0 e1                                      mov r8, r0
007b085c  01 90 a0 e1                                      mov sb, r1
007b0860  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
007b0864  30 77 ed eb                                      bl #0x30e52c
007b0868  d0 20 cd e1                                      ldrd r2, r3, [sp]
007b086c  00 60 a0 e1                                      mov r6, r0
007b0870  01 70 a0 e1                                      mov r7, r1
007b0874  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007b0878  2b 77 ed eb                                      bl #0x30e52c
007b087c  00 20 a0 e1                                      mov r2, r0
007b0880  01 30 a0 e1                                      mov r3, r1
007b0884  06 00 a0 e1                                      mov r0, r6
007b0888  07 10 a0 e1                                      mov r1, r7
007b088c  88 78 ed eb                                      bl #0x30eab4
007b0890  00 20 a0 e1                                      mov r2, r0
007b0894  01 30 a0 e1                                      mov r3, r1
007b0898  08 00 a0 e1                                      mov r0, r8
007b089c  09 10 a0 e1                                      mov r1, sb
007b08a0  21 77 ed eb                                      bl #0x30e52c
007b08a4  00 20 a0 e3                                      mov r2, #0
007b08a8  00 30 a0 e3                                      mov r3, #0
007b08ac  00 60 a0 e1                                      mov r6, r0
007b08b0  01 70 a0 e1                                      mov r7, r1
007b08b4  69 75 ed eb                                      bl #0x30de60
007b08b8  00 00 50 e3                                      cmp r0, #0
007b08bc  01 00 a0 13                                      movne r0, #1
007b08c0  09 00 00 1a                                      bne #0x7b08ec
007b08c4  06 00 a0 e1                                      mov r0, r6
007b08c8  07 10 a0 e1                                      mov r1, r7
007b08cc  00 20 a0 e3                                      mov r2, #0
007b08d0  00 30 a0 e3                                      mov r3, #0
007b08d4  a1 77 ed eb                                      bl #0x30e760
007b08d8  00 00 50 e3                                      cmp r0, #0
007b08dc  00 00 a0 e3                                      mov r0, #0
007b08e0  01 00 a0 13                                      movne r0, #1
007b08e4  01 00 20 e2                                      eor r0, r0, #1
007b08e8  70 00 ef e6                                      uxtb r0, r0
007b08ec  01 00 55 e3                                      cmp r5, #1
007b08f0  03 00 00 1a                                      bne #0x7b0904
007b08f4  00 00 54 e3                                      cmp r4, #0
007b08f8  00 00 a0 03                                      moveq r0, #0
007b08fc  44 d0 8d e2                                      add sp, sp, #0x44
007b0900  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b0904  00 00 54 e3                                      cmp r4, #0
007b0908  01 00 a0 13                                      movne r0, #1
007b090c  fa ff ff ea                                      b #0x7b08fc

; FUNCTION 0x007b0910, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E14debug_centroidEPKNS4_8tristateEiii
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::debug_centroid(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate const*, int, int, int)
; decoder-mode: arm
007b0910  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007b0914  20 80 9d e5                                      ldr r8, [sp, #0x20]
007b0918  14 c0 a0 e3                                      mov ip, #0x14
007b091c  9c 02 06 e0                                      mul r6, ip, r2
007b0920  9c 03 07 e0                                      mul r7, ip, r3
007b0924  04 40 91 e5                                      ldr r4, [r1, #4]
007b0928  9c 08 08 e0                                      mul r8, ip, r8
007b092c  06 30 84 e0                                      add r3, r4, r6
007b0930  07 20 84 e0                                      add r2, r4, r7
007b0934  04 10 92 e5                                      ldr r1, [r2, #4]
007b0938  00 50 a0 e1                                      mov r5, r0
007b093c  08 a0 84 e0                                      add sl, r4, r8
007b0940  04 00 93 e5                                      ldr r0, [r3, #4]
007b0944  96 78 ed eb                                      bl #0x30eba4
007b0948  04 10 9a e5                                      ldr r1, [sl, #4]
007b094c  94 78 ed eb                                      bl #0x30eba4
007b0950  d3 77 ed eb                                      bl #0x30e8a4
007b0954  01 31 a0 e3                                      mov r3, #0x40000000
007b0958  00 20 a0 e3                                      mov r2, #0
007b095c  02 37 83 e2                                      add r3, r3, #0x80000
007b0960  76 76 ed eb                                      bl #0x30e340
007b0964  4d 77 ed eb                                      bl #0x30e6a0
007b0968  07 10 94 e7                                      ldr r1, [r4, r7]
007b096c  00 a0 a0 e1                                      mov sl, r0
007b0970  06 00 94 e7                                      ldr r0, [r4, r6]
007b0974  8a 78 ed eb                                      bl #0x30eba4
007b0978  08 10 94 e7                                      ldr r1, [r4, r8]
007b097c  88 78 ed eb                                      bl #0x30eba4
007b0980  c7 77 ed eb                                      bl #0x30e8a4
007b0984  01 31 a0 e3                                      mov r3, #0x40000000
007b0988  00 20 a0 e3                                      mov r2, #0
007b098c  02 37 83 e2                                      add r3, r3, #0x80000
007b0990  6a 76 ed eb                                      bl #0x30e340
007b0994  41 77 ed eb                                      bl #0x30e6a0
007b0998  04 a0 85 e5                                      str sl, [r5, #4]
007b099c  00 00 85 e5                                      str r0, [r5]
007b09a0  05 00 a0 e1                                      mov r0, r5
007b09a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007b0afc, declared_size=1284, range_size=1284, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E27any_reflex_vert_in_triangleEPKNS4_8tristateEiii
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::any_reflex_vert_in_triangle(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate const*, int, int, int)
; decoder-mode: arm
007b0afc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b0b00  00 40 a0 e1                                      mov r4, r0
007b0b04  14 00 a0 e3                                      mov r0, #0x14
007b0b08  04 c0 94 e5                                      ldr ip, [r4, #4]
007b0b0c  90 01 01 e0                                      mul r1, r0, r1
007b0b10  90 02 02 e0                                      mul r2, r0, r2
007b0b14  90 03 03 e0                                      mul r3, r0, r3
007b0b18  cc d0 4d e2                                      sub sp, sp, #0xcc
007b0b1c  01 50 9c e7                                      ldr r5, [ip, r1]
007b0b20  01 10 8c e0                                      add r1, ip, r1
007b0b24  02 70 9c e7                                      ldr r7, [ip, r2]
007b0b28  48 10 8d e5                                      str r1, [sp, #0x48]
007b0b2c  04 a0 91 e5                                      ldr sl, [r1, #4]
007b0b30  02 20 8c e0                                      add r2, ip, r2
007b0b34  03 10 8c e0                                      add r1, ip, r3
007b0b38  60 10 8d e5                                      str r1, [sp, #0x60]
007b0b3c  44 20 8d e5                                      str r2, [sp, #0x44]
007b0b40  03 30 9c e7                                      ldr r3, [ip, r3]
007b0b44  07 10 a0 e1                                      mov r1, r7
007b0b48  05 00 a0 e1                                      mov r0, r5
007b0b4c  4c 30 8d e5                                      str r3, [sp, #0x4c]
007b0b50  04 20 92 e5                                      ldr r2, [r2, #4]
007b0b54  60 30 9d e5                                      ldr r3, [sp, #0x60]
007b0b58  5c 20 8d e5                                      str r2, [sp, #0x5c]
007b0b5c  04 30 93 e5                                      ldr r3, [r3, #4]
007b0b60  bc a0 8d e5                                      str sl, [sp, #0xbc]
007b0b64  b8 50 8d e5                                      str r5, [sp, #0xb8]
007b0b68  68 30 8d e5                                      str r3, [sp, #0x68]
007b0b6c  c4 a0 8d e5                                      str sl, [sp, #0xc4]
007b0b70  c0 50 8d e5                                      str r5, [sp, #0xc0]
007b0b74  df 75 ed eb                                      bl #0x30e2f8
007b0b78  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
007b0b7c  00 00 50 e3                                      cmp r0, #0
007b0b80  0a 00 a0 e1                                      mov r0, sl
007b0b84  b8 70 8d 15                                      strne r7, [sp, #0xb8]
007b0b88  da 75 ed eb                                      bl #0x30e2f8
007b0b8c  00 00 50 e3                                      cmp r0, #0
007b0b90  5c 10 9d 15                                      ldrne r1, [sp, #0x5c]
007b0b94  07 00 a0 e1                                      mov r0, r7
007b0b98  bc 10 8d 15                                      strne r1, [sp, #0xbc]
007b0b9c  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
007b0ba0  d4 75 ed eb                                      bl #0x30e2f8
007b0ba4  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
007b0ba8  00 00 50 e3                                      cmp r0, #0
007b0bac  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
007b0bb0  c0 70 8d 15                                      strne r7, [sp, #0xc0]
007b0bb4  cf 75 ed eb                                      bl #0x30e2f8
007b0bb8  00 00 50 e3                                      cmp r0, #0
007b0bbc  5c 20 9d 15                                      ldrne r2, [sp, #0x5c]
007b0bc0  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
007b0bc4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007b0bc8  c4 20 8d 15                                      strne r2, [sp, #0xc4]
007b0bcc  ce 76 ed eb                                      bl #0x30e70c
007b0bd0  00 00 50 e3                                      cmp r0, #0
007b0bd4  4c 30 9d 15                                      ldrne r3, [sp, #0x4c]
007b0bd8  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
007b0bdc  68 00 9d e5                                      ldr r0, [sp, #0x68]
007b0be0  b8 30 8d 15                                      strne r3, [sp, #0xb8]
007b0be4  c8 76 ed eb                                      bl #0x30e70c
007b0be8  00 00 50 e3                                      cmp r0, #0
007b0bec  68 10 9d 15                                      ldrne r1, [sp, #0x68]
007b0bf0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007b0bf4  bc 10 8d 15                                      strne r1, [sp, #0xbc]
007b0bf8  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
007b0bfc  bd 75 ed eb                                      bl #0x30e2f8
007b0c00  00 00 50 e3                                      cmp r0, #0
007b0c04  4c 20 9d 15                                      ldrne r2, [sp, #0x4c]
007b0c08  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
007b0c0c  68 00 9d e5                                      ldr r0, [sp, #0x68]
007b0c10  c0 20 8d 15                                      strne r2, [sp, #0xc0]
007b0c14  b7 75 ed eb                                      bl #0x30e2f8
007b0c18  00 00 50 e3                                      cmp r0, #0
007b0c1c  68 30 9d 15                                      ldrne r3, [sp, #0x68]
007b0c20  b8 20 8d e2                                      add r2, sp, #0xb8
007b0c24  88 00 8d e2                                      add r0, sp, #0x88
007b0c28  c4 30 8d 15                                      strne r3, [sp, #0xc4]
007b0c2c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
007b0c30  5c ff ff eb                                      bl #0x7b09a8
007b0c34  b4 40 9d e5                                      ldr r4, [sp, #0xb4]
007b0c38  88 10 9d e5                                      ldr r1, [sp, #0x88]
007b0c3c  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
007b0c40  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
007b0c44  00 00 54 e3                                      cmp r4, #0
007b0c48  80 10 8d e5                                      str r1, [sp, #0x80]
007b0c4c  a4 80 9d e5                                      ldr r8, [sp, #0xa4]
007b0c50  78 20 8d e5                                      str r2, [sp, #0x78]
007b0c54  74 30 8d e5                                      str r3, [sp, #0x74]
007b0c58  ac 60 9d e5                                      ldr r6, [sp, #0xac]
007b0c5c  e5 00 00 0a                                      beq #0x7b0ff8
007b0c60  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
007b0c64  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
007b0c68  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
007b0c6c  6c 10 8d e5                                      str r1, [sp, #0x6c]
007b0c70  64 20 8d e5                                      str r2, [sp, #0x64]
007b0c74  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
007b0c78  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
007b0c7c  70 30 8d e5                                      str r3, [sp, #0x70]
007b0c80  7c 10 8d e5                                      str r1, [sp, #0x7c]
007b0c84  84 20 8d e5                                      str r2, [sp, #0x84]
007b0c88  00 90 94 e5                                      ldr sb, [r4]
007b0c8c  05 00 a0 e1                                      mov r0, r5
007b0c90  09 10 a0 e1                                      mov r1, sb
007b0c94  bc 74 ed eb                                      bl #0x30df8c
007b0c98  00 00 50 e3                                      cmp r0, #0
007b0c9c  28 00 00 0a                                      beq #0x7b0d44
007b0ca0  0a 00 a0 e1                                      mov r0, sl
007b0ca4  04 10 94 e5                                      ldr r1, [r4, #4]
007b0ca8  b7 74 ed eb                                      bl #0x30df8c
007b0cac  00 00 50 e3                                      cmp r0, #0
007b0cb0  23 00 00 0a                                      beq #0x7b0d44
007b0cb4  0c 40 94 e5                                      ldr r4, [r4, #0xc]
007b0cb8  00 00 54 e3                                      cmp r4, #0
007b0cbc  f1 ff ff 1a                                      bne #0x7b0c88
007b0cc0  74 30 9d e5                                      ldr r3, [sp, #0x74]
007b0cc4  78 10 9d e5                                      ldr r1, [sp, #0x78]
007b0cc8  01 00 53 e1                                      cmp r3, r1
007b0ccc  c9 00 00 ca                                      bgt #0x7b0ff8
007b0cd0  80 c0 9d e5                                      ldr ip, [sp, #0x80]
007b0cd4  01 60 86 e2                                      add r6, r6, #1
007b0cd8  03 00 a0 e1                                      mov r0, r3
007b0cdc  08 00 56 e1                                      cmp r6, r8
007b0ce0  11 00 00 ca                                      bgt #0x7b0d2c
007b0ce4  10 10 9c e5                                      ldr r1, [ip, #0x10]
007b0ce8  18 20 9c e5                                      ldr r2, [ip, #0x18]
007b0cec  91 00 01 e0                                      mul r1, r1, r0
007b0cf0  06 30 81 e0                                      add r3, r1, r6
007b0cf4  03 41 92 e7                                      ldr r4, [r2, r3, lsl #2]
007b0cf8  00 00 54 e3                                      cmp r4, #0
007b0cfc  bb 00 00 1a                                      bne #0x7b0ff0
007b0d00  01 30 86 e2                                      add r3, r6, #1
007b0d04  01 10 83 e0                                      add r1, r3, r1
007b0d08  01 21 82 e0                                      add r2, r2, r1, lsl #2
007b0d0c  03 00 00 ea                                      b #0x7b0d20
007b0d10  04 40 92 e4                                      ldr r4, [r2], #4
007b0d14  01 30 83 e2                                      add r3, r3, #1
007b0d18  00 00 54 e3                                      cmp r4, #0
007b0d1c  b3 00 00 1a                                      bne #0x7b0ff0
007b0d20  08 00 53 e1                                      cmp r3, r8
007b0d24  03 60 a0 e1                                      mov r6, r3
007b0d28  f8 ff ff da                                      ble #0x7b0d10
007b0d2c  78 20 9d e5                                      ldr r2, [sp, #0x78]
007b0d30  01 00 80 e2                                      add r0, r0, #1
007b0d34  02 00 50 e1                                      cmp r0, r2
007b0d38  ae 00 00 ca                                      bgt #0x7b0ff8
007b0d3c  84 60 9d e5                                      ldr r6, [sp, #0x84]
007b0d40  e5 ff ff ea                                      b #0x7b0cdc
007b0d44  07 00 a0 e1                                      mov r0, r7
007b0d48  09 10 a0 e1                                      mov r1, sb
007b0d4c  8e 74 ed eb                                      bl #0x30df8c
007b0d50  00 00 50 e3                                      cmp r0, #0
007b0d54  04 00 00 0a                                      beq #0x7b0d6c
007b0d58  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
007b0d5c  04 10 94 e5                                      ldr r1, [r4, #4]
007b0d60  89 74 ed eb                                      bl #0x30df8c
007b0d64  00 00 50 e3                                      cmp r0, #0
007b0d68  d1 ff ff 1a                                      bne #0x7b0cb4
007b0d6c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007b0d70  09 10 a0 e1                                      mov r1, sb
007b0d74  84 74 ed eb                                      bl #0x30df8c
007b0d78  00 00 50 e3                                      cmp r0, #0
007b0d7c  95 00 00 1a                                      bne #0x7b0fd8
007b0d80  09 00 a0 e1                                      mov r0, sb
007b0d84  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
007b0d88  c9 75 ed eb                                      bl #0x30e4b4
007b0d8c  00 00 50 e3                                      cmp r0, #0
007b0d90  c7 ff ff 0a                                      beq #0x7b0cb4
007b0d94  09 00 a0 e1                                      mov r0, sb
007b0d98  64 10 9d e5                                      ldr r1, [sp, #0x64]
007b0d9c  02 77 ed eb                                      bl #0x30e9ac
007b0da0  00 00 50 e3                                      cmp r0, #0
007b0da4  c2 ff ff 0a                                      beq #0x7b0cb4
007b0da8  04 b0 94 e5                                      ldr fp, [r4, #4]
007b0dac  70 10 9d e5                                      ldr r1, [sp, #0x70]
007b0db0  0b 00 a0 e1                                      mov r0, fp
007b0db4  be 75 ed eb                                      bl #0x30e4b4
007b0db8  00 00 50 e3                                      cmp r0, #0
007b0dbc  bc ff ff 0a                                      beq #0x7b0cb4
007b0dc0  0b 00 a0 e1                                      mov r0, fp
007b0dc4  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
007b0dc8  f7 76 ed eb                                      bl #0x30e9ac
007b0dcc  00 00 50 e3                                      cmp r0, #0
007b0dd0  b7 ff ff 0a                                      beq #0x7b0cb4
007b0dd4  44 30 9d e5                                      ldr r3, [sp, #0x44]
007b0dd8  00 00 93 e5                                      ldr r0, [r3]
007b0ddc  b0 76 ed eb                                      bl #0x30e8a4
007b0de0  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
007b0de4  48 10 9d e5                                      ldr r1, [sp, #0x48]
007b0de8  00 00 91 e5                                      ldr r0, [r1]
007b0dec  ac 76 ed eb                                      bl #0x30e8a4
007b0df0  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007b0df4  0b 00 a0 e1                                      mov r0, fp
007b0df8  a9 76 ed eb                                      bl #0x30e8a4
007b0dfc  48 20 9d e5                                      ldr r2, [sp, #0x48]
007b0e00  f8 03 cd e1                                      strd r0, r1, [sp, #0x38]
007b0e04  04 00 92 e5                                      ldr r0, [r2, #4]
007b0e08  a5 76 ed eb                                      bl #0x30e8a4
007b0e0c  44 30 9d e5                                      ldr r3, [sp, #0x44]
007b0e10  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007b0e14  04 00 93 e5                                      ldr r0, [r3, #4]
007b0e18  a1 76 ed eb                                      bl #0x30e8a4
007b0e1c  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
007b0e20  09 00 a0 e1                                      mov r0, sb
007b0e24  9e 76 ed eb                                      bl #0x30e8a4
007b0e28  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
007b0e2c  f0 03 cd e1                                      strd r0, r1, [sp, #0x30]
007b0e30  d8 02 cd e1                                      ldrd r0, r1, [sp, #0x28]
007b0e34  bc 75 ed eb                                      bl #0x30e52c
007b0e38  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
007b0e3c  f0 00 cd e1                                      strd r0, r1, [sp]
007b0e40  d8 03 cd e1                                      ldrd r0, r1, [sp, #0x38]
007b0e44  b8 75 ed eb                                      bl #0x30e52c
007b0e48  00 20 a0 e1                                      mov r2, r0
007b0e4c  01 30 a0 e1                                      mov r3, r1
007b0e50  d0 00 cd e1                                      ldrd r0, r1, [sp]
007b0e54  16 77 ed eb                                      bl #0x30eab4
007b0e58  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
007b0e5c  f0 00 cd e1                                      strd r0, r1, [sp]
007b0e60  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
007b0e64  b0 75 ed eb                                      bl #0x30e52c
007b0e68  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
007b0e6c  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
007b0e70  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
007b0e74  ac 75 ed eb                                      bl #0x30e52c
007b0e78  00 20 a0 e1                                      mov r2, r0
007b0e7c  01 30 a0 e1                                      mov r3, r1
007b0e80  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
007b0e84  0a 77 ed eb                                      bl #0x30eab4
007b0e88  00 20 a0 e1                                      mov r2, r0
007b0e8c  01 30 a0 e1                                      mov r3, r1
007b0e90  d0 00 cd e1                                      ldrd r0, r1, [sp]
007b0e94  a4 75 ed eb                                      bl #0x30e52c
007b0e98  00 20 a0 e3                                      mov r2, #0
007b0e9c  00 30 a0 e3                                      mov r3, #0
007b0ea0  4a 75 ed eb                                      bl #0x30e3d0
007b0ea4  00 00 50 e3                                      cmp r0, #0
007b0ea8  81 ff ff 0a                                      beq #0x7b0cb4
007b0eac  60 10 9d e5                                      ldr r1, [sp, #0x60]
007b0eb0  00 00 91 e5                                      ldr r0, [r1]
007b0eb4  7a 76 ed eb                                      bl #0x30e8a4
007b0eb8  60 20 9d e5                                      ldr r2, [sp, #0x60]
007b0ebc  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
007b0ec0  04 00 92 e5                                      ldr r0, [r2, #4]
007b0ec4  76 76 ed eb                                      bl #0x30e8a4
007b0ec8  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
007b0ecc  f0 00 cd e1                                      strd r0, r1, [sp]
007b0ed0  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
007b0ed4  94 75 ed eb                                      bl #0x30e52c
007b0ed8  d0 21 cd e1                                      ldrd r2, r3, [sp, #0x10]
007b0edc  f0 05 cd e1                                      strd r0, r1, [sp, #0x50]
007b0ee0  d8 03 cd e1                                      ldrd r0, r1, [sp, #0x38]
007b0ee4  90 75 ed eb                                      bl #0x30e52c
007b0ee8  00 20 a0 e1                                      mov r2, r0
007b0eec  01 30 a0 e1                                      mov r3, r1
007b0ef0  d0 05 cd e1                                      ldrd r0, r1, [sp, #0x50]
007b0ef4  ee 76 ed eb                                      bl #0x30eab4
007b0ef8  d0 21 cd e1                                      ldrd r2, r3, [sp, #0x10]
007b0efc  f0 05 cd e1                                      strd r0, r1, [sp, #0x50]
007b0f00  d0 00 cd e1                                      ldrd r0, r1, [sp]
007b0f04  88 75 ed eb                                      bl #0x30e52c
007b0f08  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
007b0f0c  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
007b0f10  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
007b0f14  84 75 ed eb                                      bl #0x30e52c
007b0f18  00 20 a0 e1                                      mov r2, r0
007b0f1c  01 30 a0 e1                                      mov r3, r1
007b0f20  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
007b0f24  e2 76 ed eb                                      bl #0x30eab4
007b0f28  00 20 a0 e1                                      mov r2, r0
007b0f2c  01 30 a0 e1                                      mov r3, r1
007b0f30  d0 05 cd e1                                      ldrd r0, r1, [sp, #0x50]
007b0f34  7c 75 ed eb                                      bl #0x30e52c
007b0f38  00 20 a0 e3                                      mov r2, #0
007b0f3c  00 30 a0 e3                                      mov r3, #0
007b0f40  22 75 ed eb                                      bl #0x30e3d0
007b0f44  00 00 50 e3                                      cmp r0, #0
007b0f48  59 ff ff 0a                                      beq #0x7b0cb4
007b0f4c  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007b0f50  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
007b0f54  74 75 ed eb                                      bl #0x30e52c
007b0f58  d0 20 cd e1                                      ldrd r2, r3, [sp]
007b0f5c  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007b0f60  d8 03 cd e1                                      ldrd r0, r1, [sp, #0x38]
007b0f64  70 75 ed eb                                      bl #0x30e52c
007b0f68  00 20 a0 e1                                      mov r2, r0
007b0f6c  01 30 a0 e1                                      mov r3, r1
007b0f70  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007b0f74  ce 76 ed eb                                      bl #0x30eab4
007b0f78  d0 20 cd e1                                      ldrd r2, r3, [sp]
007b0f7c  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007b0f80  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007b0f84  68 75 ed eb                                      bl #0x30e52c
007b0f88  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
007b0f8c  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007b0f90  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
007b0f94  64 75 ed eb                                      bl #0x30e52c
007b0f98  00 20 a0 e1                                      mov r2, r0
007b0f9c  01 30 a0 e1                                      mov r3, r1
007b0fa0  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007b0fa4  c2 76 ed eb                                      bl #0x30eab4
007b0fa8  00 20 a0 e1                                      mov r2, r0
007b0fac  01 30 a0 e1                                      mov r3, r1
007b0fb0  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007b0fb4  5c 75 ed eb                                      bl #0x30e52c
007b0fb8  00 20 a0 e3                                      mov r2, #0
007b0fbc  00 30 a0 e3                                      mov r3, #0
007b0fc0  02 75 ed eb                                      bl #0x30e3d0
007b0fc4  00 00 50 e3                                      cmp r0, #0
007b0fc8  39 ff ff 0a                                      beq #0x7b0cb4
007b0fcc  01 00 a0 e3                                      mov r0, #1
007b0fd0  cc d0 8d e2                                      add sp, sp, #0xcc
007b0fd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b0fd8  68 00 9d e5                                      ldr r0, [sp, #0x68]
007b0fdc  04 10 94 e5                                      ldr r1, [r4, #4]
007b0fe0  e9 73 ed eb                                      bl #0x30df8c
007b0fe4  00 00 50 e3                                      cmp r0, #0
007b0fe8  31 ff ff 1a                                      bne #0x7b0cb4
007b0fec  63 ff ff ea                                      b #0x7b0d80
007b0ff0  74 00 8d e5                                      str r0, [sp, #0x74]
007b0ff4  23 ff ff ea                                      b #0x7b0c88
007b0ff8  00 00 a0 e3                                      mov r0, #0
007b0ffc  f3 ff ff ea                                      b #0x7b0fd0

; FUNCTION 0x007b157c, declared_size=348, range_size=348, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E19any_edge_intersectsEPKNS4_8tristateERKNS4_4edgeEPNS_14grid_index_boxIfbEE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::any_edge_intersects(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate const*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::edge const&, gameswf::grid_index_box<float, bool>*)
; decoder-mode: arm
007b157c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b1580  00 e0 91 e5                                      ldr lr, [r1]
007b1584  14 c0 a0 e3                                      mov ip, #0x14
007b1588  04 30 90 e5                                      ldr r3, [r0, #4]
007b158c  9c 0e 0e e0                                      mul lr, ip, lr
007b1590  04 a0 91 e5                                      ldr sl, [r1, #4]
007b1594  0e 80 83 e0                                      add r8, r3, lr
007b1598  0e 00 93 e7                                      ldr r0, [r3, lr]
007b159c  04 40 98 e5                                      ldr r4, [r8, #4]
007b15a0  9c 0a 0a e0                                      mul sl, ip, sl
007b15a4  74 d0 4d e2                                      sub sp, sp, #0x74
007b15a8  4c 40 8d e5                                      str r4, [sp, #0x4c]
007b15ac  54 40 8d e5                                      str r4, [sp, #0x54]
007b15b0  48 00 8d e5                                      str r0, [sp, #0x48]
007b15b4  50 00 8d e5                                      str r0, [sp, #0x50]
007b15b8  0a 50 93 e7                                      ldr r5, [r3, sl]
007b15bc  02 70 a0 e1                                      mov r7, r2
007b15c0  0a a0 83 e0                                      add sl, r3, sl
007b15c4  05 10 a0 e1                                      mov r1, r5
007b15c8  4a 73 ed eb                                      bl #0x30e2f8
007b15cc  04 60 9a e5                                      ldr r6, [sl, #4]
007b15d0  00 00 50 e3                                      cmp r0, #0
007b15d4  04 00 a0 e1                                      mov r0, r4
007b15d8  06 10 a0 e1                                      mov r1, r6
007b15dc  48 50 8d 15                                      strne r5, [sp, #0x48]
007b15e0  44 73 ed eb                                      bl #0x30e2f8
007b15e4  50 10 9d e5                                      ldr r1, [sp, #0x50]
007b15e8  00 00 50 e3                                      cmp r0, #0
007b15ec  05 00 a0 e1                                      mov r0, r5
007b15f0  4c 60 8d 15                                      strne r6, [sp, #0x4c]
007b15f4  3f 73 ed eb                                      bl #0x30e2f8
007b15f8  54 10 9d e5                                      ldr r1, [sp, #0x54]
007b15fc  00 00 50 e3                                      cmp r0, #0
007b1600  06 00 a0 e1                                      mov r0, r6
007b1604  50 50 8d 15                                      strne r5, [sp, #0x50]
007b1608  3a 73 ed eb                                      bl #0x30e2f8
007b160c  14 30 8d e2                                      add r3, sp, #0x14
007b1610  00 00 50 e3                                      cmp r0, #0
007b1614  07 10 a0 e1                                      mov r1, r7
007b1618  03 00 a0 e1                                      mov r0, r3
007b161c  48 20 8d e2                                      add r2, sp, #0x48
007b1620  54 60 8d 15                                      strne r6, [sp, #0x54]
007b1624  0c 30 8d e5                                      str r3, [sp, #0xc]
007b1628  87 ff ff eb                                      bl #0x7b144c
007b162c  6c 90 8d e2                                      add sb, sp, #0x6c
007b1630  68 b0 8d e2                                      add fp, sp, #0x68
007b1634  60 50 8d e2                                      add r5, sp, #0x60
007b1638  58 40 8d e2                                      add r4, sp, #0x58
007b163c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
007b1640  09 00 a0 e1                                      mov r0, sb
007b1644  0b 10 a0 e1                                      mov r1, fp
007b1648  00 00 5c e3                                      cmp ip, #0
007b164c  08 20 a0 e1                                      mov r2, r8
007b1650  0a 30 a0 e1                                      mov r3, sl
007b1654  15 00 00 0a                                      beq #0x7b16b0
007b1658  00 60 9c e5                                      ldr r6, [ip]
007b165c  04 e0 9c e5                                      ldr lr, [ip, #4]
007b1660  60 60 8d e5                                      str r6, [sp, #0x60]
007b1664  64 e0 8d e5                                      str lr, [sp, #0x64]
007b1668  0c 60 9c e5                                      ldr r6, [ip, #0xc]
007b166c  08 70 9c e5                                      ldr r7, [ip, #8]
007b1670  5c 60 8d e5                                      str r6, [sp, #0x5c]
007b1674  58 70 8d e5                                      str r7, [sp, #0x58]
007b1678  10 c0 dc e5                                      ldrb ip, [ip, #0x10]
007b167c  00 50 8d e5                                      str r5, [sp]
007b1680  04 40 8d e5                                      str r4, [sp, #4]
007b1684  00 00 5c e3                                      cmp ip, #0
007b1688  64 60 8d 05                                      streq r6, [sp, #0x64]
007b168c  5c e0 8d 05                                      streq lr, [sp, #0x5c]
007b1690  7e fa ff eb                                      bl #0x7b0090
007b1694  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
007b1698  68 20 9d e5                                      ldr r2, [sp, #0x68]
007b169c  00 00 53 e3                                      cmp r3, #0
007b16a0  08 00 00 ba                                      blt #0x7b16c8
007b16a4  44 30 9d e5                                      ldr r3, [sp, #0x44]
007b16a8  00 00 53 e3                                      cmp r3, #0
007b16ac  02 00 00 1a                                      bne #0x7b16bc
007b16b0  00 00 a0 e3                                      mov r0, #0
007b16b4  74 d0 8d e2                                      add sp, sp, #0x74
007b16b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b16bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007b16c0  15 ff ff eb                                      bl #0x7b131c
007b16c4  dc ff ff ea                                      b #0x7b163c
007b16c8  00 00 52 e3                                      cmp r2, #0
007b16cc  f4 ff ff ca                                      bgt #0x7b16a4
007b16d0  01 00 a0 e3                                      mov r0, #1
007b16d4  f6 ff ff ea                                      b #0x7b16b4

; FUNCTION 0x007b20d0, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E8add_edgeEPNS_14grid_index_boxIfbEERKNS_4vec2IfEESB_
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::add_edge(gameswf::grid_index_box<float, bool>*, gameswf::vec2<float> const&, gameswf::vec2<float> const&)
; decoder-mode: arm
007b20d0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007b20d4  00 50 91 e5                                      ldr r5, [r1]
007b20d8  14 d0 4d e2                                      sub sp, sp, #0x14
007b20dc  04 40 91 e5                                      ldr r4, [r1, #4]
007b20e0  00 a0 a0 e1                                      mov sl, r0
007b20e4  05 10 a0 e1                                      mov r1, r5
007b20e8  00 00 92 e5                                      ldr r0, [r2]
007b20ec  02 60 a0 e1                                      mov r6, r2
007b20f0  ad 70 ed eb                                      bl #0x30e3ac
007b20f4  04 10 a0 e1                                      mov r1, r4
007b20f8  00 70 a0 e1                                      mov r7, r0
007b20fc  04 00 96 e5                                      ldr r0, [r6, #4]
007b2100  a9 70 ed eb                                      bl #0x30e3ac
007b2104  00 10 a0 e1                                      mov r1, r0
007b2108  07 00 a0 e1                                      mov r0, r7
007b210c  16 73 ed eb                                      bl #0x30ed6c
007b2110  00 10 a0 e3                                      mov r1, #0
007b2114  77 70 ed eb                                      bl #0x30e2f8
007b2118  00 70 96 e5                                      ldr r7, [r6]
007b211c  00 00 50 e3                                      cmp r0, #0
007b2120  05 00 a0 e1                                      mov r0, r5
007b2124  07 10 a0 e1                                      mov r1, r7
007b2128  00 50 8d e5                                      str r5, [sp]
007b212c  08 50 8d e5                                      str r5, [sp, #8]
007b2130  00 80 a0 e3                                      mov r8, #0
007b2134  04 40 8d e5                                      str r4, [sp, #4]
007b2138  01 80 a0 13                                      movne r8, #1
007b213c  0c 40 8d e5                                      str r4, [sp, #0xc]
007b2140  6c 70 ed eb                                      bl #0x30e2f8
007b2144  04 50 96 e5                                      ldr r5, [r6, #4]
007b2148  00 00 50 e3                                      cmp r0, #0
007b214c  04 00 a0 e1                                      mov r0, r4
007b2150  05 10 a0 e1                                      mov r1, r5
007b2154  00 70 8d 15                                      strne r7, [sp]
007b2158  66 70 ed eb                                      bl #0x30e2f8
007b215c  08 10 9d e5                                      ldr r1, [sp, #8]
007b2160  00 00 50 e3                                      cmp r0, #0
007b2164  07 00 a0 e1                                      mov r0, r7
007b2168  04 50 8d 15                                      strne r5, [sp, #4]
007b216c  61 70 ed eb                                      bl #0x30e2f8
007b2170  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007b2174  00 00 50 e3                                      cmp r0, #0
007b2178  05 00 a0 e1                                      mov r0, r5
007b217c  08 70 8d 15                                      strne r7, [sp, #8]
007b2180  5c 70 ed eb                                      bl #0x30e2f8
007b2184  78 80 ef e6                                      uxtb r8, r8
007b2188  00 00 50 e3                                      cmp r0, #0
007b218c  08 20 a0 e1                                      mov r2, r8
007b2190  0a 00 a0 e1                                      mov r0, sl
007b2194  0d 10 a0 e1                                      mov r1, sp
007b2198  0c 50 8d 15                                      strne r5, [sp, #0xc]
007b219c  99 ff ff eb                                      bl #0x7b2008
007b21a0  14 d0 8d e2                                      add sp, sp, #0x14
007b21a4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007b2408, declared_size=664, range_size=664, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E24join_paths_into_one_polyEPNS4_8tristateE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::join_paths_into_one_poly(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate*)
; decoder-mode: arm
007b2408  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b240c  18 30 90 e5                                      ldr r3, [r0, #0x18]
007b2410  4c d0 4d e2                                      sub sp, sp, #0x4c
007b2414  00 50 a0 e1                                      mov r5, r0
007b2418  01 00 53 e3                                      cmp r3, #1
007b241c  9d 00 00 da                                      ble #0x7b2698
007b2420  14 00 90 e5                                      ldr r0, [r0, #0x14]
007b2424  0c 10 a0 e3                                      mov r1, #0xc
007b2428  20 70 8d e2                                      add r7, sp, #0x20
007b242c  91 03 21 e0                                      mla r1, r1, r3, r0
007b2430  12 fe ff eb                                      bl #0x7b1c80
007b2434  08 e0 95 e5                                      ldr lr, [r5, #8]
007b2438  28 c0 85 e2                                      add ip, r5, #0x28
007b243c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
007b2440  00 40 a0 e3                                      mov r4, #0
007b2444  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
007b2448  0c 20 a0 e1                                      mov r2, ip
007b244c  0e 30 a0 e1                                      mov r3, lr
007b2450  10 00 87 e2                                      add r0, r7, #0x10
007b2454  14 10 87 e2                                      add r1, r7, #0x14
007b2458  38 40 8d e5                                      str r4, [sp, #0x38]
007b245c  8d ff ff eb                                      bl #0x7b2298
007b2460  34 30 9d e5                                      ldr r3, [sp, #0x34]
007b2464  30 60 9d e5                                      ldr r6, [sp, #0x30]
007b2468  04 10 a0 e1                                      mov r1, r4
007b246c  96 03 06 e0                                      mul r6, r6, r3
007b2470  06 02 a0 e1                                      lsl r0, r6, #4
007b2474  08 00 80 e2                                      add r0, r0, #8
007b2478  c9 81 fe eb                                      bl #0x752ba4
007b247c  10 30 a0 e3                                      mov r3, #0x10
007b2480  04 00 56 e1                                      cmp r6, r4
007b2484  48 00 80 e8                                      stm r0, {r3, r6}
007b2488  08 20 80 e2                                      add r2, r0, #8
007b248c  08 00 00 0a                                      beq #0x7b24b4
007b2490  04 30 a0 e1                                      mov r3, r4
007b2494  01 40 84 e2                                      add r4, r4, #1
007b2498  04 00 56 e1                                      cmp r6, r4
007b249c  08 30 80 e5                                      str r3, [r0, #8]
007b24a0  0c 30 80 e5                                      str r3, [r0, #0xc]
007b24a4  10 30 80 e5                                      str r3, [r0, #0x10]
007b24a8  14 30 c0 e5                                      strb r3, [r0, #0x14]
007b24ac  10 00 80 e2                                      add r0, r0, #0x10
007b24b0  f7 ff ff 1a                                      bne #0x7b2494
007b24b4  08 30 95 e5                                      ldr r3, [r5, #8]
007b24b8  3c 20 8d e5                                      str r2, [sp, #0x3c]
007b24bc  00 00 53 e3                                      cmp r3, #0
007b24c0  0d 00 00 da                                      ble #0x7b24fc
007b24c4  00 40 a0 e3                                      mov r4, #0
007b24c8  04 60 a0 e1                                      mov r6, r4
007b24cc  14 80 a0 e3                                      mov r8, #0x14
007b24d0  04 30 95 e5                                      ldr r3, [r5, #4]
007b24d4  07 00 a0 e1                                      mov r0, r7
007b24d8  01 60 86 e2                                      add r6, r6, #1
007b24dc  04 10 83 e0                                      add r1, r3, r4
007b24e0  08 20 91 e5                                      ldr r2, [r1, #8]
007b24e4  14 40 84 e2                                      add r4, r4, #0x14
007b24e8  98 32 22 e0                                      mla r2, r8, r2, r3
007b24ec  f7 fe ff eb                                      bl #0x7b20d0
007b24f0  08 30 95 e5                                      ldr r3, [r5, #8]
007b24f4  03 00 56 e1                                      cmp r6, r3
007b24f8  f4 ff ff ba                                      blt #0x7b24d0
007b24fc  18 20 95 e5                                      ldr r2, [r5, #0x18]
007b2500  01 00 52 e3                                      cmp r2, #1
007b2504  61 00 00 da                                      ble #0x7b2690
007b2508  04 10 85 e2                                      add r1, r5, #4
007b250c  1c 10 8d e5                                      str r1, [sp, #0x1c]
007b2510  0c 30 a0 e3                                      mov r3, #0xc
007b2514  01 10 a0 e3                                      mov r1, #1
007b2518  04 30 8d e5                                      str r3, [sp, #4]
007b251c  08 10 8d e5                                      str r1, [sp, #8]
007b2520  40 80 8d e2                                      add r8, sp, #0x40
007b2524  14 a0 a0 e3                                      mov sl, #0x14
007b2528  14 30 95 e5                                      ldr r3, [r5, #0x14]
007b252c  04 10 9d e5                                      ldr r1, [sp, #4]
007b2530  01 30 83 e0                                      add r3, r3, r1
007b2534  08 60 93 e5                                      ldr r6, [r3, #8]
007b2538  00 00 56 e3                                      cmp r6, #0
007b253c  4b 00 00 da                                      ble #0x7b2670
007b2540  01 90 46 e2                                      sub sb, r6, #1
007b2544  09 40 a0 e1                                      mov r4, sb
007b2548  05 00 a0 e1                                      mov r0, r5
007b254c  08 10 a0 e1                                      mov r1, r8
007b2550  07 20 a0 e1                                      mov r2, r7
007b2554  44 40 8d e5                                      str r4, [sp, #0x44]
007b2558  40 60 8d e5                                      str r6, [sp, #0x40]
007b255c  06 fc ff eb                                      bl #0x7b157c
007b2560  00 00 50 e3                                      cmp r0, #0
007b2564  02 00 00 0a                                      beq #0x7b2574
007b2568  01 40 54 e2                                      subs r4, r4, #1
007b256c  f5 ff ff 2a                                      bhs #0x7b2548
007b2570  09 40 a0 e1                                      mov r4, sb
007b2574  08 90 95 e5                                      ldr sb, [r5, #8]
007b2578  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007b257c  9a 04 0b e0                                      mul fp, sl, r4
007b2580  02 10 89 e2                                      add r1, sb, #2
007b2584  24 fe ff eb                                      bl #0x7b1e1c
007b2588  04 c0 95 e5                                      ldr ip, [r5, #4]
007b258c  9a 09 02 e0                                      mul r2, sl, sb
007b2590  9a 06 03 e0                                      mul r3, sl, r6
007b2594  14 20 8d e5                                      str r2, [sp, #0x14]
007b2598  10 30 8d e5                                      str r3, [sp, #0x10]
007b259c  02 e0 8c e0                                      add lr, ip, r2
007b25a0  03 c0 8c e0                                      add ip, ip, r3
007b25a4  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007b25a8  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007b25ac  01 10 89 e2                                      add r1, sb, #1
007b25b0  00 30 9c e5                                      ldr r3, [ip]
007b25b4  9a 01 02 e0                                      mul r2, sl, r1
007b25b8  18 10 8d e5                                      str r1, [sp, #0x18]
007b25bc  0c 20 8d e5                                      str r2, [sp, #0xc]
007b25c0  00 30 8e e5                                      str r3, [lr]
007b25c4  04 c0 95 e5                                      ldr ip, [r5, #4]
007b25c8  02 e0 8c e0                                      add lr, ip, r2
007b25cc  0b c0 8c e0                                      add ip, ip, fp
007b25d0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007b25d4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007b25d8  00 30 9c e5                                      ldr r3, [ip]
007b25dc  07 00 a0 e1                                      mov r0, r7
007b25e0  00 30 8e e5                                      str r3, [lr]
007b25e4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007b25e8  04 30 95 e5                                      ldr r3, [r5, #4]
007b25ec  01 30 83 e0                                      add r3, r3, r1
007b25f0  0c 40 83 e5                                      str r4, [r3, #0xc]
007b25f4  04 30 95 e5                                      ldr r3, [r5, #4]
007b25f8  0b 30 83 e0                                      add r3, r3, fp
007b25fc  08 60 83 e5                                      str r6, [r3, #8]
007b2600  14 20 9d e5                                      ldr r2, [sp, #0x14]
007b2604  04 30 95 e5                                      ldr r3, [r5, #4]
007b2608  18 10 9d e5                                      ldr r1, [sp, #0x18]
007b260c  02 30 83 e0                                      add r3, r3, r2
007b2610  08 10 83 e5                                      str r1, [r3, #8]
007b2614  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007b2618  04 30 95 e5                                      ldr r3, [r5, #4]
007b261c  02 30 83 e0                                      add r3, r3, r2
007b2620  0c 90 83 e5                                      str sb, [r3, #0xc]
007b2624  04 30 95 e5                                      ldr r3, [r5, #4]
007b2628  14 10 9d e5                                      ldr r1, [sp, #0x14]
007b262c  01 20 83 e0                                      add r2, r3, r1
007b2630  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007b2634  9a 32 23 e0                                      mla r3, sl, r2, r3
007b2638  08 90 83 e5                                      str sb, [r3, #8]
007b263c  04 30 95 e5                                      ldr r3, [r5, #4]
007b2640  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007b2644  01 20 83 e0                                      add r2, r3, r1
007b2648  08 20 92 e5                                      ldr r2, [r2, #8]
007b264c  9a 32 23 e0                                      mla r3, sl, r2, r3
007b2650  18 20 9d e5                                      ldr r2, [sp, #0x18]
007b2654  0c 20 83 e5                                      str r2, [r3, #0xc]
007b2658  04 10 95 e5                                      ldr r1, [r5, #4]
007b265c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b2660  0b 20 81 e0                                      add r2, r1, fp
007b2664  03 10 81 e0                                      add r1, r1, r3
007b2668  98 fe ff eb                                      bl #0x7b20d0
007b266c  18 20 95 e5                                      ldr r2, [r5, #0x18]
007b2670  08 10 9d e5                                      ldr r1, [sp, #8]
007b2674  04 30 9d e5                                      ldr r3, [sp, #4]
007b2678  01 10 81 e2                                      add r1, r1, #1
007b267c  0c 30 83 e2                                      add r3, r3, #0xc
007b2680  02 00 51 e1                                      cmp r1, r2
007b2684  08 10 8d e5                                      str r1, [sp, #8]
007b2688  04 30 8d e5                                      str r3, [sp, #4]
007b268c  a5 ff ff ba                                      blt #0x7b2528
007b2690  07 00 a0 e1                                      mov r0, r7
007b2694  e7 fe ff eb                                      bl #0x7b2238
007b2698  4c d0 8d e2                                      add sp, sp, #0x4c
007b269c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007b3178, declared_size=836, range_size=836, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E14sort_and_remapEPNS4_8tristateE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::sort_and_remap(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate*)
; decoder-mode: arm
007b3178  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b317c  34 d0 4d e2                                      sub sp, sp, #0x34
007b3180  00 40 a0 e1                                      mov r4, r0
007b3184  20 80 8d e2                                      add r8, sp, #0x20
007b3188  00 50 a0 e3                                      mov r5, #0
007b318c  08 10 94 e5                                      ldr r1, [r4, #8]
007b3190  08 00 a0 e1                                      mov r0, r8
007b3194  20 50 8d e5                                      str r5, [sp, #0x20]
007b3198  24 50 8d e5                                      str r5, [sp, #0x24]
007b319c  28 50 8d e5                                      str r5, [sp, #0x28]
007b31a0  2c 50 cd e5                                      strb r5, [sp, #0x2c]
007b31a4  1c fb ff eb                                      bl #0x7b1e1c
007b31a8  24 b0 9d e5                                      ldr fp, [sp, #0x24]
007b31ac  05 00 5b e1                                      cmp fp, r5
007b31b0  0b 70 a0 e1                                      mov r7, fp
007b31b4  0e 00 00 da                                      ble #0x7b31f4
007b31b8  05 60 a0 e1                                      mov r6, r5
007b31bc  04 e0 94 e5                                      ldr lr, [r4, #4]
007b31c0  20 c0 9d e5                                      ldr ip, [sp, #0x20]
007b31c4  01 60 86 e2                                      add r6, r6, #1
007b31c8  05 e0 8e e0                                      add lr, lr, r5
007b31cc  05 c0 8c e0                                      add ip, ip, r5
007b31d0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007b31d4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007b31d8  00 30 9e e5                                      ldr r3, [lr]
007b31dc  14 50 85 e2                                      add r5, r5, #0x14
007b31e0  00 30 8c e5                                      str r3, [ip]
007b31e4  24 b0 9d e5                                      ldr fp, [sp, #0x24]
007b31e8  0b 00 56 e1                                      cmp r6, fp
007b31ec  0b 70 a0 e1                                      mov r7, fp
007b31f0  f1 ff ff ba                                      blt #0x7b31bc
007b31f4  00 50 a0 e3                                      mov r5, #0
007b31f8  00 00 5b e3                                      cmp fp, #0
007b31fc  10 50 8d e5                                      str r5, [sp, #0x10]
007b3200  14 50 8d e5                                      str r5, [sp, #0x14]
007b3204  18 50 8d e5                                      str r5, [sp, #0x18]
007b3208  1c 50 cd e5                                      strb r5, [sp, #0x1c]
007b320c  8b 00 00 aa                                      bge #0x7b3440
007b3210  10 90 8d e2                                      add sb, sp, #0x10
007b3214  00 00 5b e3                                      cmp fp, #0
007b3218  14 70 8d e5                                      str r7, [sp, #0x14]
007b321c  07 00 00 da                                      ble #0x7b3240
007b3220  00 30 a0 e3                                      mov r3, #0
007b3224  10 20 9d e5                                      ldr r2, [sp, #0x10]
007b3228  03 31 82 e7                                      str r3, [r2, r3, lsl #2]
007b322c  24 b0 9d e5                                      ldr fp, [sp, #0x24]
007b3230  01 30 83 e2                                      add r3, r3, #1
007b3234  0b 00 53 e1                                      cmp r3, fp
007b3238  f9 ff ff ba                                      blt #0x7b3224
007b323c  14 70 9d e5                                      ldr r7, [sp, #0x14]
007b3240  00 00 57 e3                                      cmp r7, #0
007b3244  6a 00 00 1a                                      bne #0x7b33f4
007b3248  00 50 a0 e3                                      mov r5, #0
007b324c  00 00 5b e3                                      cmp fp, #0
007b3250  00 50 8d e5                                      str r5, [sp]
007b3254  04 50 8d e5                                      str r5, [sp, #4]
007b3258  08 50 8d e5                                      str r5, [sp, #8]
007b325c  0c 50 cd e5                                      strb r5, [sp, #0xc]
007b3260  69 00 00 aa                                      bge #0x7b340c
007b3264  0d a0 a0 e1                                      mov sl, sp
007b3268  14 10 9d e5                                      ldr r1, [sp, #0x14]
007b326c  04 b0 8d e5                                      str fp, [sp, #4]
007b3270  00 00 51 e3                                      cmp r1, #0
007b3274  08 00 00 da                                      ble #0x7b329c
007b3278  00 30 a0 e3                                      mov r3, #0
007b327c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007b3280  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
007b3284  00 20 9d e5                                      ldr r2, [sp]
007b3288  01 31 82 e7                                      str r3, [r2, r1, lsl #2]
007b328c  14 10 9d e5                                      ldr r1, [sp, #0x14]
007b3290  01 30 83 e2                                      add r3, r3, #1
007b3294  01 00 53 e1                                      cmp r3, r1
007b3298  f7 ff ff ba                                      blt #0x7b327c
007b329c  04 00 84 e2                                      add r0, r4, #4
007b32a0  dd fa ff eb                                      bl #0x7b1e1c
007b32a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b32a8  00 00 53 e3                                      cmp r3, #0
007b32ac  11 00 00 da                                      ble #0x7b32f8
007b32b0  00 50 a0 e3                                      mov r5, #0
007b32b4  05 e0 a0 e1                                      mov lr, r5
007b32b8  14 70 a0 e3                                      mov r7, #0x14
007b32bc  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b32c0  04 c0 94 e5                                      ldr ip, [r4, #4]
007b32c4  0e 61 93 e7                                      ldr r6, [r3, lr, lsl #2]
007b32c8  20 30 9d e5                                      ldr r3, [sp, #0x20]
007b32cc  05 c0 8c e0                                      add ip, ip, r5
007b32d0  01 e0 8e e2                                      add lr, lr, #1
007b32d4  97 36 26 e0                                      mla r6, r7, r6, r3
007b32d8  14 50 85 e2                                      add r5, r5, #0x14
007b32dc  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
007b32e0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007b32e4  00 30 96 e5                                      ldr r3, [r6]
007b32e8  00 30 8c e5                                      str r3, [ip]
007b32ec  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b32f0  03 00 5e e1                                      cmp lr, r3
007b32f4  f0 ff ff ba                                      blt #0x7b32bc
007b32f8  08 30 94 e5                                      ldr r3, [r4, #8]
007b32fc  00 00 53 e3                                      cmp r3, #0
007b3300  12 00 00 da                                      ble #0x7b3350
007b3304  00 30 a0 e3                                      mov r3, #0
007b3308  03 20 a0 e1                                      mov r2, r3
007b330c  04 10 94 e5                                      ldr r1, [r4, #4]
007b3310  00 00 9d e5                                      ldr r0, [sp]
007b3314  01 20 82 e2                                      add r2, r2, #1
007b3318  03 10 81 e0                                      add r1, r1, r3
007b331c  08 c0 91 e5                                      ldr ip, [r1, #8]
007b3320  0c 01 90 e7                                      ldr r0, [r0, ip, lsl #2]
007b3324  08 00 81 e5                                      str r0, [r1, #8]
007b3328  04 10 94 e5                                      ldr r1, [r4, #4]
007b332c  00 00 9d e5                                      ldr r0, [sp]
007b3330  03 10 81 e0                                      add r1, r1, r3
007b3334  0c c0 91 e5                                      ldr ip, [r1, #0xc]
007b3338  14 30 83 e2                                      add r3, r3, #0x14
007b333c  0c 01 90 e7                                      ldr r0, [r0, ip, lsl #2]
007b3340  0c 00 81 e5                                      str r0, [r1, #0xc]
007b3344  08 10 94 e5                                      ldr r1, [r4, #8]
007b3348  01 00 52 e1                                      cmp r2, r1
007b334c  ee ff ff ba                                      blt #0x7b330c
007b3350  18 c0 94 e5                                      ldr ip, [r4, #0x18]
007b3354  00 00 5c e3                                      cmp ip, #0
007b3358  0d 00 00 da                                      ble #0x7b3394
007b335c  00 30 a0 e3                                      mov r3, #0
007b3360  03 20 a0 e1                                      mov r2, r3
007b3364  14 10 94 e5                                      ldr r1, [r4, #0x14]
007b3368  01 20 82 e2                                      add r2, r2, #1
007b336c  03 10 81 e0                                      add r1, r1, r3
007b3370  08 00 91 e5                                      ldr r0, [r1, #8]
007b3374  0c 30 83 e2                                      add r3, r3, #0xc
007b3378  00 00 50 e3                                      cmp r0, #0
007b337c  00 c0 9d a5                                      ldrge ip, [sp]
007b3380  00 01 9c a7                                      ldrge r0, [ip, r0, lsl #2]
007b3384  08 00 81 a5                                      strge r0, [r1, #8]
007b3388  18 c0 94 a5                                      ldrge ip, [r4, #0x18]
007b338c  0c 00 52 e1                                      cmp r2, ip
007b3390  f3 ff ff ba                                      blt #0x7b3364
007b3394  04 30 9d e5                                      ldr r3, [sp, #4]
007b3398  00 00 53 e3                                      cmp r3, #0
007b339c  35 00 00 da                                      ble #0x7b3478
007b33a0  00 40 a0 e3                                      mov r4, #0
007b33a4  0d 00 a0 e1                                      mov r0, sp
007b33a8  04 10 a0 e1                                      mov r1, r4
007b33ac  04 40 8d e5                                      str r4, [sp, #4]
007b33b0  02 c4 fe eb                                      bl #0x7643c0
007b33b4  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b33b8  04 00 53 e1                                      cmp r3, r4
007b33bc  36 00 00 da                                      ble #0x7b349c
007b33c0  00 40 a0 e3                                      mov r4, #0
007b33c4  09 00 a0 e1                                      mov r0, sb
007b33c8  04 10 a0 e1                                      mov r1, r4
007b33cc  14 40 8d e5                                      str r4, [sp, #0x14]
007b33d0  fa c3 fe eb                                      bl #0x7643c0
007b33d4  08 00 a0 e1                                      mov r0, r8
007b33d8  04 10 a0 e1                                      mov r1, r4
007b33dc  8e fa ff eb                                      bl #0x7b1e1c
007b33e0  08 00 a0 e1                                      mov r0, r8
007b33e4  04 10 a0 e1                                      mov r1, r4
007b33e8  69 fa ff eb                                      bl #0x7b1d94
007b33ec  34 d0 8d e2                                      add sp, sp, #0x34
007b33f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b33f4  10 00 9d e5                                      ldr r0, [sp, #0x10]
007b33f8  08 20 a0 e1                                      mov r2, r8
007b33fc  07 11 80 e0                                      add r1, r0, r7, lsl #2
007b3400  23 ff ff eb                                      bl #0x7b3094
007b3404  24 b0 9d e5                                      ldr fp, [sp, #0x24]
007b3408  8e ff ff ea                                      b #0x7b3248
007b340c  94 ff ff 0a                                      beq #0x7b3264
007b3410  93 ff ff da                                      ble #0x7b3264
007b3414  0d 00 a0 e1                                      mov r0, sp
007b3418  cb 10 8b e0                                      add r1, fp, fp, asr #1
007b341c  e7 c3 fe eb                                      bl #0x7643c0
007b3420  0d a0 a0 e1                                      mov sl, sp
007b3424  05 20 a0 e1                                      mov r2, r5
007b3428  00 30 9d e5                                      ldr r3, [sp]
007b342c  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
007b3430  01 50 85 e2                                      add r5, r5, #1
007b3434  0b 00 55 e1                                      cmp r5, fp
007b3438  fa ff ff 1a                                      bne #0x7b3428
007b343c  89 ff ff ea                                      b #0x7b3268
007b3440  72 ff ff 0a                                      beq #0x7b3210
007b3444  71 ff ff da                                      ble #0x7b3210
007b3448  10 90 8d e2                                      add sb, sp, #0x10
007b344c  09 00 a0 e1                                      mov r0, sb
007b3450  cb 10 8b e0                                      add r1, fp, fp, asr #1
007b3454  d9 c3 fe eb                                      bl #0x7643c0
007b3458  05 20 a0 e1                                      mov r2, r5
007b345c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b3460  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
007b3464  01 50 85 e2                                      add r5, r5, #1
007b3468  0b 00 55 e1                                      cmp r5, fp
007b346c  fa ff ff 1a                                      bne #0x7b345c
007b3470  24 b0 9d e5                                      ldr fp, [sp, #0x24]
007b3474  66 ff ff ea                                      b #0x7b3214
007b3478  c8 ff ff aa                                      bge #0x7b33a0
007b347c  03 21 a0 e1                                      lsl r2, r3, #2
007b3480  00 00 a0 e3                                      mov r0, #0
007b3484  00 10 9d e5                                      ldr r1, [sp]
007b3488  01 30 93 e2                                      adds r3, r3, #1
007b348c  02 00 81 e7                                      str r0, [r1, r2]
007b3490  04 20 82 e2                                      add r2, r2, #4
007b3494  fa ff ff 1a                                      bne #0x7b3484
007b3498  c0 ff ff ea                                      b #0x7b33a0
007b349c  c7 ff ff aa                                      bge #0x7b33c0
007b34a0  03 21 a0 e1                                      lsl r2, r3, #2
007b34a4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007b34a8  01 30 93 e2                                      adds r3, r3, #1
007b34ac  02 40 81 e7                                      str r4, [r1, r2]
007b34b0  04 20 82 e2                                      add r2, r2, #4
007b34b4  fa ff ff 1a                                      bne #0x7b34a4
007b34b8  c0 ff ff ea                                      b #0x7b33c0

; FUNCTION 0x007b34bc, declared_size=1484, range_size=1484, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E4initEPNS4_8tristateEPS3_S7_iPNS_5arrayIfEE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::init(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate*, gameswf::ear_clip_triangulate::ear_clip_array_io<float>*, gameswf::ear_clip_triangulate::ear_clip_array_io<float>*, int, gameswf::array<float>*)
; decoder-mode: arm
007b34bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b34c0  00 40 a0 e1                                      mov r4, r0
007b34c4  00 10 84 e5                                      str r1, [r4]
007b34c8  40 30 84 e5                                      str r3, [r4, #0x40]
007b34cc  4c d0 4d e2                                      sub sp, sp, #0x4c
007b34d0  70 30 9d e5                                      ldr r3, [sp, #0x70]
007b34d4  00 00 a0 e3                                      mov r0, #0
007b34d8  44 30 84 e5                                      str r3, [r4, #0x44]
007b34dc  20 20 8d e5                                      str r2, [sp, #0x20]
007b34e0  38 00 84 e5                                      str r0, [r4, #0x38]
007b34e4  24 00 84 e5                                      str r0, [r4, #0x24]
007b34e8  04 50 92 e5                                      ldr r5, [r2, #4]
007b34ec  00 00 55 e1                                      cmp r5, r0
007b34f0  09 00 00 da                                      ble #0x7b351c
007b34f4  20 20 9d e5                                      ldr r2, [sp, #0x20]
007b34f8  00 30 a0 e1                                      mov r3, r0
007b34fc  08 10 92 e5                                      ldr r1, [r2, #8]
007b3500  00 22 81 e0                                      add r2, r1, r0, lsl #4
007b3504  04 20 92 e5                                      ldr r2, [r2, #4]
007b3508  01 00 80 e2                                      add r0, r0, #1
007b350c  05 00 50 e1                                      cmp r0, r5
007b3510  02 30 83 e0                                      add r3, r3, r2
007b3514  f9 ff ff 1a                                      bne #0x7b3500
007b3518  c3 00 a0 e1                                      asr r0, r3, #1
007b351c  01 20 45 e2                                      sub r2, r5, #1
007b3520  82 00 80 e0                                      add r0, r0, r2, lsl #1
007b3524  04 30 84 e2                                      add r3, r4, #4
007b3528  24 30 8d e5                                      str r3, [sp, #0x24]
007b352c  24 00 84 e5                                      str r0, [r4, #0x24]
007b3530  00 10 a0 e1                                      mov r1, r0
007b3534  14 c0 84 e2                                      add ip, r4, #0x14
007b3538  24 00 9d e5                                      ldr r0, [sp, #0x24]
007b353c  30 c0 8d e5                                      str ip, [sp, #0x30]
007b3540  13 fa ff eb                                      bl #0x7b1d94
007b3544  05 10 a0 e1                                      mov r1, r5
007b3548  30 00 9d e5                                      ldr r0, [sp, #0x30]
007b354c  51 fa ff eb                                      bl #0x7b1e98
007b3550  14 a0 a0 e3                                      mov sl, #0x14
007b3554  20 00 9d e5                                      ldr r0, [sp, #0x20]
007b3558  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007b355c  04 20 90 e5                                      ldr r2, [r0, #4]
007b3560  02 00 53 e1                                      cmp r3, r2
007b3564  ac 00 00 ba                                      blt #0x7b381c
007b3568  00 10 a0 e3                                      mov r1, #0
007b356c  1c 00 a0 e3                                      mov r0, #0x1c
007b3570  08 60 94 e5                                      ldr r6, [r4, #8]
007b3574  8b 7d fe eb                                      bl #0x752ba8
007b3578  a6 6f 86 e0                                      add r6, r6, r6, lsr #31
007b357c  00 50 a0 e1                                      mov r5, r0
007b3580  28 c0 84 e2                                      add ip, r4, #0x28
007b3584  c6 60 a0 e1                                      asr r6, r6, #1
007b3588  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
007b358c  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
007b3590  0c 20 a0 e1                                      mov r2, ip
007b3594  06 30 a0 e1                                      mov r3, r6
007b3598  10 00 85 e2                                      add r0, r5, #0x10
007b359c  14 10 85 e2                                      add r1, r5, #0x14
007b35a0  3c fb ff eb                                      bl #0x7b2298
007b35a4  14 30 95 e5                                      ldr r3, [r5, #0x14]
007b35a8  10 00 95 e5                                      ldr r0, [r5, #0x10]
007b35ac  00 10 a0 e3                                      mov r1, #0
007b35b0  90 03 00 e0                                      mul r0, r0, r3
007b35b4  00 01 a0 e1                                      lsl r0, r0, #2
007b35b8  79 7d fe eb                                      bl #0x752ba4
007b35bc  10 30 95 e5                                      ldr r3, [r5, #0x10]
007b35c0  14 20 95 e5                                      ldr r2, [r5, #0x14]
007b35c4  18 00 85 e5                                      str r0, [r5, #0x18]
007b35c8  00 10 a0 e3                                      mov r1, #0
007b35cc  92 03 02 e0                                      mul r2, r2, r3
007b35d0  02 21 a0 e1                                      lsl r2, r2, #2
007b35d4  a1 6b ed eb                                      bl #0x30e460
007b35d8  18 20 94 e5                                      ldr r2, [r4, #0x18]
007b35dc  3c 50 84 e5                                      str r5, [r4, #0x3c]
007b35e0  00 00 52 e3                                      cmp r2, #0
007b35e4  7a 00 00 da                                      ble #0x7b37d4
007b35e8  00 10 a0 e3                                      mov r1, #0
007b35ec  38 30 8d e2                                      add r3, sp, #0x38
007b35f0  40 c0 8d e2                                      add ip, sp, #0x40
007b35f4  28 10 8d e5                                      str r1, [sp, #0x28]
007b35f8  2c 10 8d e5                                      str r1, [sp, #0x2c]
007b35fc  30 30 8d e5                                      str r3, [sp, #0x30]
007b3600  34 c0 8d e5                                      str ip, [sp, #0x34]
007b3604  14 30 94 e5                                      ldr r3, [r4, #0x14]
007b3608  28 00 9d e5                                      ldr r0, [sp, #0x28]
007b360c  28 10 9d e5                                      ldr r1, [sp, #0x28]
007b3610  00 00 83 e0                                      add r0, r3, r0
007b3614  24 00 8d e5                                      str r0, [sp, #0x24]
007b3618  01 70 93 e7                                      ldr r7, [r3, r1]
007b361c  04 b0 90 e5                                      ldr fp, [r0, #4]
007b3620  0b 30 67 e0                                      rsb r3, r7, fp
007b3624  02 00 53 e3                                      cmp r3, #2
007b3628  61 00 00 da                                      ble #0x7b37b4
007b362c  07 00 5b e1                                      cmp fp, r7
007b3630  5f 00 00 da                                      ble #0x7b37b4
007b3634  14 20 a0 e3                                      mov r2, #0x14
007b3638  92 07 06 e0                                      mul r6, r2, r7
007b363c  01 80 4b e2                                      sub r8, fp, #1
007b3640  02 90 4b e2                                      sub sb, fp, #2
007b3644  04 50 a0 e1                                      mov r5, r4
007b3648  20 b0 8d e5                                      str fp, [sp, #0x20]
007b364c  01 00 00 ea                                      b #0x7b3658
007b3650  07 80 a0 e1                                      mov r8, r7
007b3654  03 70 a0 e1                                      mov r7, r3
007b3658  14 30 a0 e3                                      mov r3, #0x14
007b365c  04 40 95 e5                                      ldr r4, [r5, #4]
007b3660  93 09 09 e0                                      mul sb, r3, sb
007b3664  93 08 0b e0                                      mul fp, r3, r8
007b3668  09 00 94 e7                                      ldr r0, [r4, sb]
007b366c  8c 6c ed eb                                      bl #0x30e8a4
007b3670  0b a0 94 e7                                      ldr sl, [r4, fp]
007b3674  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007b3678  09 90 84 e0                                      add sb, r4, sb
007b367c  04 00 99 e5                                      ldr r0, [sb, #4]
007b3680  87 6c ed eb                                      bl #0x30e8a4
007b3684  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007b3688  0a 00 a0 e1                                      mov r0, sl
007b368c  84 6c ed eb                                      bl #0x30e8a4
007b3690  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
007b3694  a4 6b ed eb                                      bl #0x30e52c
007b3698  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
007b369c  06 90 84 e0                                      add sb, r4, r6
007b36a0  04 00 99 e5                                      ldr r0, [sb, #4]
007b36a4  7e 6c ed eb                                      bl #0x30e8a4
007b36a8  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
007b36ac  9e 6b ed eb                                      bl #0x30e52c
007b36b0  00 20 a0 e1                                      mov r2, r0
007b36b4  01 30 a0 e1                                      mov r3, r1
007b36b8  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
007b36bc  fc 6c ed eb                                      bl #0x30eab4
007b36c0  0b b0 84 e0                                      add fp, r4, fp
007b36c4  04 90 9b e5                                      ldr sb, [fp, #4]
007b36c8  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
007b36cc  09 00 a0 e1                                      mov r0, sb
007b36d0  73 6c ed eb                                      bl #0x30e8a4
007b36d4  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
007b36d8  93 6b ed eb                                      bl #0x30e52c
007b36dc  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007b36e0  06 00 94 e7                                      ldr r0, [r4, r6]
007b36e4  6e 6c ed eb                                      bl #0x30e8a4
007b36e8  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
007b36ec  8e 6b ed eb                                      bl #0x30e52c
007b36f0  00 20 a0 e1                                      mov r2, r0
007b36f4  01 30 a0 e1                                      mov r3, r1
007b36f8  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007b36fc  ec 6c ed eb                                      bl #0x30eab4
007b3700  00 20 a0 e1                                      mov r2, r0
007b3704  01 30 a0 e1                                      mov r3, r1
007b3708  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
007b370c  86 6b ed eb                                      bl #0x30e52c
007b3710  00 20 a0 e3                                      mov r2, #0
007b3714  00 30 a0 e3                                      mov r3, #0
007b3718  d0 69 ed eb                                      bl #0x30de60
007b371c  00 b0 50 e2                                      subs fp, r0, #0
007b3720  1b 00 00 1a                                      bne #0x7b3794
007b3724  3c 40 95 e5                                      ldr r4, [r5, #0x3c]
007b3728  34 20 9d e5                                      ldr r2, [sp, #0x34]
007b372c  30 00 9d e5                                      ldr r0, [sp, #0x30]
007b3730  04 10 a0 e1                                      mov r1, r4
007b3734  40 a0 8d e5                                      str sl, [sp, #0x40]
007b3738  44 90 8d e5                                      str sb, [sp, #0x44]
007b373c  82 f3 ff eb                                      bl #0x7b054c
007b3740  0b 10 a0 e1                                      mov r1, fp
007b3744  10 00 a0 e3                                      mov r0, #0x10
007b3748  16 7d fe eb                                      bl #0x752ba8
007b374c  40 30 9d e5                                      ldr r3, [sp, #0x40]
007b3750  00 c0 a0 e3                                      mov ip, #0
007b3754  00 30 80 e5                                      str r3, [r0]
007b3758  44 30 9d e5                                      ldr r3, [sp, #0x44]
007b375c  08 c0 c0 e5                                      strb ip, [r0, #8]
007b3760  04 30 80 e5                                      str r3, [r0, #4]
007b3764  10 10 94 e5                                      ldr r1, [r4, #0x10]
007b3768  38 20 9d e5                                      ldr r2, [sp, #0x38]
007b376c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b3770  18 30 94 e5                                      ldr r3, [r4, #0x18]
007b3774  9c 21 22 e0                                      mla r2, ip, r1, r2
007b3778  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007b377c  0c 30 80 e5                                      str r3, [r0, #0xc]
007b3780  18 30 94 e5                                      ldr r3, [r4, #0x18]
007b3784  02 01 83 e7                                      str r0, [r3, r2, lsl #2]
007b3788  24 00 9d e5                                      ldr r0, [sp, #0x24]
007b378c  04 00 90 e5                                      ldr r0, [r0, #4]
007b3790  20 00 8d e5                                      str r0, [sp, #0x20]
007b3794  20 10 9d e5                                      ldr r1, [sp, #0x20]
007b3798  01 30 87 e2                                      add r3, r7, #1
007b379c  08 90 a0 e1                                      mov sb, r8
007b37a0  03 00 51 e1                                      cmp r1, r3
007b37a4  14 60 86 e2                                      add r6, r6, #0x14
007b37a8  a8 ff ff ca                                      bgt #0x7b3650
007b37ac  18 20 95 e5                                      ldr r2, [r5, #0x18]
007b37b0  05 40 a0 e1                                      mov r4, r5
007b37b4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007b37b8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
007b37bc  01 30 83 e2                                      add r3, r3, #1
007b37c0  0c c0 8c e2                                      add ip, ip, #0xc
007b37c4  02 00 53 e1                                      cmp r3, r2
007b37c8  2c 30 8d e5                                      str r3, [sp, #0x2c]
007b37cc  28 c0 8d e5                                      str ip, [sp, #0x28]
007b37d0  8b ff ff ba                                      blt #0x7b3604
007b37d4  04 00 a0 e1                                      mov r0, r4
007b37d8  66 fe ff eb                                      bl #0x7b3178
007b37dc  18 30 94 e5                                      ldr r3, [r4, #0x18]
007b37e0  01 00 53 e3                                      cmp r3, #1
007b37e4  03 00 00 da                                      ble #0x7b37f8
007b37e8  04 00 a0 e1                                      mov r0, r4
007b37ec  05 fb ff eb                                      bl #0x7b2408
007b37f0  04 00 a0 e1                                      mov r0, r4
007b37f4  5f fe ff eb                                      bl #0x7b3178
007b37f8  08 20 94 e5                                      ldr r2, [r4, #8]
007b37fc  00 30 94 e5                                      ldr r3, [r4]
007b3800  06 10 a0 e3                                      mov r1, #6
007b3804  02 20 42 e2                                      sub r2, r2, #2
007b3808  91 02 01 e0                                      mul r1, r1, r2
007b380c  00 00 93 e5                                      ldr r0, [r3]
007b3810  76 19 ff eb                                      bl #0x779df0
007b3814  4c d0 8d e2                                      add sp, sp, #0x4c
007b3818  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b381c  08 20 90 e5                                      ldr r2, [r0, #8]
007b3820  03 12 82 e0                                      add r1, r2, r3, lsl #4
007b3824  04 10 91 e5                                      ldr r1, [r1, #4]
007b3828  00 00 51 e3                                      cmp r1, #0
007b382c  18 10 8d e5                                      str r1, [sp, #0x18]
007b3830  90 00 00 da                                      ble #0x7b3a78
007b3834  01 10 83 e2                                      add r1, r3, #1
007b3838  03 72 92 e7                                      ldr r7, [r2, r3, lsl #4]
007b383c  0c 10 80 e5                                      str r1, [r0, #0xc]
007b3840  18 10 94 e5                                      ldr r1, [r4, #0x18]
007b3844  30 00 9d e5                                      ldr r0, [sp, #0x30]
007b3848  00 80 a0 e3                                      mov r8, #0
007b384c  01 10 81 e2                                      add r1, r1, #1
007b3850  b2 f9 ff eb                                      bl #0x7b1f20
007b3854  18 20 94 e5                                      ldr r2, [r4, #0x18]
007b3858  14 10 94 e5                                      ldr r1, [r4, #0x14]
007b385c  0c c0 a0 e3                                      mov ip, #0xc
007b3860  01 20 42 e2                                      sub r2, r2, #1
007b3864  9c 02 02 e0                                      mul r2, ip, r2
007b3868  2c 10 8d e5                                      str r1, [sp, #0x2c]
007b386c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3870  02 00 81 e0                                      add r0, r1, r2
007b3874  28 20 8d e5                                      str r2, [sp, #0x28]
007b3878  02 30 81 e7                                      str r3, [r1, r2]
007b387c  08 00 8d e5                                      str r0, [sp, #8]
007b3880  2f 00 00 ea                                      b #0x7b3944
007b3884  04 60 94 e5                                      ldr r6, [r4, #4]
007b3888  00 20 96 e5                                      ldr r2, [r6]
007b388c  04 30 96 e5                                      ldr r3, [r6, #4]
007b3890  30 20 84 e5                                      str r2, [r4, #0x30]
007b3894  34 30 84 e5                                      str r3, [r4, #0x34]
007b3898  28 20 84 e5                                      str r2, [r4, #0x28]
007b389c  2c 30 84 e5                                      str r3, [r4, #0x2c]
007b38a0  08 00 9d e5                                      ldr r0, [sp, #8]
007b38a4  08 20 90 e5                                      ldr r2, [r0, #8]
007b38a8  01 00 72 e3                                      cmn r2, #1
007b38ac  1d 00 00 0a                                      beq #0x7b3928
007b38b0  9a 05 03 e0                                      mul r3, sl, r5
007b38b4  9a 02 02 e0                                      mul r2, sl, r2
007b38b8  03 90 96 e7                                      ldr sb, [r6, r3]
007b38bc  02 b0 96 e7                                      ldr fp, [r6, r2]
007b38c0  02 20 86 e0                                      add r2, r6, r2
007b38c4  09 10 a0 e1                                      mov r1, sb
007b38c8  0b 00 a0 e1                                      mov r0, fp
007b38cc  10 20 8d e5                                      str r2, [sp, #0x10]
007b38d0  03 60 86 e0                                      add r6, r6, r3
007b38d4  8c 6b ed eb                                      bl #0x30e70c
007b38d8  00 00 50 e3                                      cmp r0, #0
007b38dc  13 00 00 1a                                      bne #0x7b3930
007b38e0  0b 00 a0 e1                                      mov r0, fp
007b38e4  09 10 a0 e1                                      mov r1, sb
007b38e8  82 6a ed eb                                      bl #0x30e2f8
007b38ec  00 00 50 e3                                      cmp r0, #0
007b38f0  0c 00 00 1a                                      bne #0x7b3928
007b38f4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007b38f8  04 60 96 e5                                      ldr r6, [r6, #4]
007b38fc  04 90 91 e5                                      ldr sb, [r1, #4]
007b3900  06 10 a0 e1                                      mov r1, r6
007b3904  09 00 a0 e1                                      mov r0, sb
007b3908  7f 6b ed eb                                      bl #0x30e70c
007b390c  00 00 50 e3                                      cmp r0, #0
007b3910  06 00 00 1a                                      bne #0x7b3930
007b3914  09 00 a0 e1                                      mov r0, sb
007b3918  06 10 a0 e1                                      mov r1, r6
007b391c  75 6a ed eb                                      bl #0x30e2f8
007b3920  00 00 50 e3                                      cmp r0, #0
007b3924  01 00 00 0a                                      beq #0x7b3930
007b3928  08 20 9d e5                                      ldr r2, [sp, #8]
007b392c  08 50 82 e5                                      str r5, [r2, #8]
007b3930  18 30 9d e5                                      ldr r3, [sp, #0x18]
007b3934  02 80 88 e2                                      add r8, r8, #2
007b3938  08 70 87 e2                                      add r7, r7, #8
007b393c  03 00 58 e1                                      cmp r8, r3
007b3940  35 00 00 aa                                      bge #0x7b3a1c
007b3944  08 50 94 e5                                      ldr r5, [r4, #8]
007b3948  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007b394c  00 30 97 e5                                      ldr r3, [r7]
007b3950  01 60 85 e2                                      add r6, r5, #1
007b3954  02 00 56 e1                                      cmp r6, r2
007b3958  04 b0 97 e5                                      ldr fp, [r7, #4]
007b395c  01 90 45 e2                                      sub sb, r5, #1
007b3960  05 10 a0 d1                                      movle r1, r5
007b3964  25 00 00 ca                                      bgt #0x7b3a00
007b3968  04 00 94 e5                                      ldr r0, [r4, #4]
007b396c  9a 01 01 e0                                      mul r1, sl, r1
007b3970  00 c0 a0 e3                                      mov ip, #0
007b3974  01 20 80 e0                                      add r2, r0, r1
007b3978  00 00 55 e3                                      cmp r5, #0
007b397c  04 b0 82 e5                                      str fp, [r2, #4]
007b3980  0c 90 82 e5                                      str sb, [r2, #0xc]
007b3984  10 c0 82 e5                                      str ip, [r2, #0x10]
007b3988  08 60 82 e5                                      str r6, [r2, #8]
007b398c  01 30 80 e7                                      str r3, [r0, r1]
007b3990  08 60 84 e5                                      str r6, [r4, #8]
007b3994  ba ff ff 0a                                      beq #0x7b3884
007b3998  9a 05 03 e0                                      mul r3, sl, r5
007b399c  04 60 94 e5                                      ldr r6, [r4, #4]
007b39a0  28 10 94 e5                                      ldr r1, [r4, #0x28]
007b39a4  03 b0 96 e7                                      ldr fp, [r6, r3]
007b39a8  03 30 86 e0                                      add r3, r6, r3
007b39ac  04 90 93 e5                                      ldr sb, [r3, #4]
007b39b0  0b 00 a0 e1                                      mov r0, fp
007b39b4  54 6b ed eb                                      bl #0x30e70c
007b39b8  00 00 50 e3                                      cmp r0, #0
007b39bc  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007b39c0  28 b0 84 15                                      strne fp, [r4, #0x28]
007b39c4  09 00 a0 e1                                      mov r0, sb
007b39c8  4f 6b ed eb                                      bl #0x30e70c
007b39cc  00 00 50 e3                                      cmp r0, #0
007b39d0  30 10 94 e5                                      ldr r1, [r4, #0x30]
007b39d4  2c 90 84 15                                      strne sb, [r4, #0x2c]
007b39d8  0b 00 a0 e1                                      mov r0, fp
007b39dc  45 6a ed eb                                      bl #0x30e2f8
007b39e0  00 00 50 e3                                      cmp r0, #0
007b39e4  30 b0 84 15                                      strne fp, [r4, #0x30]
007b39e8  34 10 94 e5                                      ldr r1, [r4, #0x34]
007b39ec  09 00 a0 e1                                      mov r0, sb
007b39f0  40 6a ed eb                                      bl #0x30e2f8
007b39f4  00 00 50 e3                                      cmp r0, #0
007b39f8  34 90 84 15                                      strne sb, [r4, #0x34]
007b39fc  a7 ff ff ea                                      b #0x7b38a0
007b3a00  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b3a04  24 00 9d e5                                      ldr r0, [sp, #0x24]
007b3a08  04 30 8d e5                                      str r3, [sp, #4]
007b3a0c  e0 f8 ff eb                                      bl #0x7b1d94
007b3a10  08 10 94 e5                                      ldr r1, [r4, #8]
007b3a14  04 30 9d e5                                      ldr r3, [sp, #4]
007b3a18  d2 ff ff ea                                      b #0x7b3968
007b3a1c  08 c0 9d e5                                      ldr ip, [sp, #8]
007b3a20  00 00 5c e3                                      cmp ip, #0
007b3a24  ca fe ff 0a                                      beq #0x7b3554
007b3a28  08 30 94 e5                                      ldr r3, [r4, #8]
007b3a2c  00 00 53 e3                                      cmp r3, #0
007b3a30  0d 00 00 0a                                      beq #0x7b3a6c
007b3a34  04 10 94 e5                                      ldr r1, [r4, #4]
007b3a38  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
007b3a3c  28 00 9d e5                                      ldr r0, [sp, #0x28]
007b3a40  01 30 43 e2                                      sub r3, r3, #1
007b3a44  9a 13 23 e0                                      mla r3, sl, r3, r1
007b3a48  00 20 9c e7                                      ldr r2, [ip, r0]
007b3a4c  08 20 83 e5                                      str r2, [r3, #8]
007b3a50  00 10 9c e7                                      ldr r1, [ip, r0]
007b3a54  04 30 94 e5                                      ldr r3, [r4, #4]
007b3a58  08 20 94 e5                                      ldr r2, [r4, #8]
007b3a5c  9a 31 23 e0                                      mla r3, sl, r1, r3
007b3a60  01 20 42 e2                                      sub r2, r2, #1
007b3a64  0c 20 83 e5                                      str r2, [r3, #0xc]
007b3a68  08 30 94 e5                                      ldr r3, [r4, #8]
007b3a6c  08 00 9d e5                                      ldr r0, [sp, #8]
007b3a70  04 30 80 e5                                      str r3, [r0, #4]
007b3a74  b6 fe ff ea                                      b #0x7b3554
007b3a78  20 10 9d e5                                      ldr r1, [sp, #0x20]
007b3a7c  01 30 83 e2                                      add r3, r3, #1
007b3a80  0c 30 81 e5                                      str r3, [r1, #0xc]
007b3a84  b2 fe ff ea                                      b #0x7b3554

; FUNCTION 0x007b3a88, declared_size=592, range_size=592, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E14fill_debug_outEPNS4_8tristateE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::fill_debug_out(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate*)
; decoder-mode: arm
007b3a88  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b3a8c  44 30 90 e5                                      ldr r3, [r0, #0x44]
007b3a90  14 d0 4d e2                                      sub sp, sp, #0x14
007b3a94  00 40 a0 e1                                      mov r4, r0
007b3a98  00 00 53 e3                                      cmp r3, #0
007b3a9c  8b 00 00 0a                                      beq #0x7b3cd0
007b3aa0  08 20 90 e5                                      ldr r2, [r0, #8]
007b3aa4  00 00 52 e3                                      cmp r2, #0
007b3aa8  88 00 00 da                                      ble #0x7b3cd0
007b3aac  00 70 a0 e3                                      mov r7, #0
007b3ab0  07 80 a0 e1                                      mov r8, r7
007b3ab4  04 60 94 e5                                      ldr r6, [r4, #4]
007b3ab8  07 50 86 e0                                      add r5, r6, r7
007b3abc  10 30 95 e5                                      ldr r3, [r5, #0x10]
007b3ac0  02 00 53 e3                                      cmp r3, #2
007b3ac4  7d 00 00 0a                                      beq #0x7b3cc0
007b3ac8  44 a0 94 e5                                      ldr sl, [r4, #0x44]
007b3acc  08 90 95 e5                                      ldr sb, [r5, #8]
007b3ad0  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007b3ad4  04 30 9a e5                                      ldr r3, [sl, #4]
007b3ad8  14 00 a0 e3                                      mov r0, #0x14
007b3adc  08 20 9a e5                                      ldr r2, [sl, #8]
007b3ae0  90 09 09 e0                                      mul sb, r0, sb
007b3ae4  90 01 01 e0                                      mul r1, r0, r1
007b3ae8  01 b0 83 e2                                      add fp, r3, #1
007b3aec  02 00 5b e1                                      cmp fp, r2
007b3af0  01 00 86 e0                                      add r0, r6, r1
007b3af4  09 20 86 e0                                      add r2, r6, sb
007b3af8  04 10 8d e5                                      str r1, [sp, #4]
007b3afc  0c 20 8d e5                                      str r2, [sp, #0xc]
007b3b00  08 00 8d e5                                      str r0, [sp, #8]
007b3b04  03 00 00 da                                      ble #0x7b3b18
007b3b08  0a 00 a0 e1                                      mov r0, sl
007b3b0c  cb 10 8b e0                                      add r1, fp, fp, asr #1
007b3b10  b6 18 ff eb                                      bl #0x779df0
007b3b14  04 30 9a e5                                      ldr r3, [sl, #4]
007b3b18  00 20 9a e5                                      ldr r2, [sl]
007b3b1c  00 10 95 e5                                      ldr r1, [r5]
007b3b20  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007b3b24  04 b0 8a e5                                      str fp, [sl, #4]
007b3b28  44 a0 94 e5                                      ldr sl, [r4, #0x44]
007b3b2c  04 30 9a e5                                      ldr r3, [sl, #4]
007b3b30  08 20 9a e5                                      ldr r2, [sl, #8]
007b3b34  01 b0 83 e2                                      add fp, r3, #1
007b3b38  02 00 5b e1                                      cmp fp, r2
007b3b3c  03 00 00 da                                      ble #0x7b3b50
007b3b40  0a 00 a0 e1                                      mov r0, sl
007b3b44  cb 10 8b e0                                      add r1, fp, fp, asr #1
007b3b48  a8 18 ff eb                                      bl #0x779df0
007b3b4c  04 30 9a e5                                      ldr r3, [sl, #4]
007b3b50  00 20 9a e5                                      ldr r2, [sl]
007b3b54  04 10 95 e5                                      ldr r1, [r5, #4]
007b3b58  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007b3b5c  04 b0 8a e5                                      str fp, [sl, #4]
007b3b60  44 a0 94 e5                                      ldr sl, [r4, #0x44]
007b3b64  04 30 9a e5                                      ldr r3, [sl, #4]
007b3b68  08 20 9a e5                                      ldr r2, [sl, #8]
007b3b6c  01 b0 83 e2                                      add fp, r3, #1
007b3b70  02 00 5b e1                                      cmp fp, r2
007b3b74  03 00 00 da                                      ble #0x7b3b88
007b3b78  0a 00 a0 e1                                      mov r0, sl
007b3b7c  cb 10 8b e0                                      add r1, fp, fp, asr #1
007b3b80  9a 18 ff eb                                      bl #0x779df0
007b3b84  04 30 9a e5                                      ldr r3, [sl, #4]
007b3b88  09 10 96 e7                                      ldr r1, [r6, sb]
007b3b8c  00 20 9a e5                                      ldr r2, [sl]
007b3b90  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007b3b94  04 b0 8a e5                                      str fp, [sl, #4]
007b3b98  44 a0 94 e5                                      ldr sl, [r4, #0x44]
007b3b9c  04 30 9a e5                                      ldr r3, [sl, #4]
007b3ba0  08 20 9a e5                                      ldr r2, [sl, #8]
007b3ba4  01 90 83 e2                                      add sb, r3, #1
007b3ba8  02 00 59 e1                                      cmp sb, r2
007b3bac  03 00 00 da                                      ble #0x7b3bc0
007b3bb0  0a 00 a0 e1                                      mov r0, sl
007b3bb4  c9 10 89 e0                                      add r1, sb, sb, asr #1
007b3bb8  8c 18 ff eb                                      bl #0x779df0
007b3bbc  04 30 9a e5                                      ldr r3, [sl, #4]
007b3bc0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007b3bc4  04 10 92 e5                                      ldr r1, [r2, #4]
007b3bc8  00 20 9a e5                                      ldr r2, [sl]
007b3bcc  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007b3bd0  04 90 8a e5                                      str sb, [sl, #4]
007b3bd4  44 a0 94 e5                                      ldr sl, [r4, #0x44]
007b3bd8  04 30 9a e5                                      ldr r3, [sl, #4]
007b3bdc  08 20 9a e5                                      ldr r2, [sl, #8]
007b3be0  01 90 83 e2                                      add sb, r3, #1
007b3be4  02 00 59 e1                                      cmp sb, r2
007b3be8  03 00 00 da                                      ble #0x7b3bfc
007b3bec  0a 00 a0 e1                                      mov r0, sl
007b3bf0  c9 10 89 e0                                      add r1, sb, sb, asr #1
007b3bf4  7d 18 ff eb                                      bl #0x779df0
007b3bf8  04 30 9a e5                                      ldr r3, [sl, #4]
007b3bfc  00 20 9a e5                                      ldr r2, [sl]
007b3c00  00 10 95 e5                                      ldr r1, [r5]
007b3c04  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007b3c08  04 90 8a e5                                      str sb, [sl, #4]
007b3c0c  44 a0 94 e5                                      ldr sl, [r4, #0x44]
007b3c10  04 30 9a e5                                      ldr r3, [sl, #4]
007b3c14  08 20 9a e5                                      ldr r2, [sl, #8]
007b3c18  01 90 83 e2                                      add sb, r3, #1
007b3c1c  02 00 59 e1                                      cmp sb, r2
007b3c20  03 00 00 da                                      ble #0x7b3c34
007b3c24  0a 00 a0 e1                                      mov r0, sl
007b3c28  c9 10 89 e0                                      add r1, sb, sb, asr #1
007b3c2c  6f 18 ff eb                                      bl #0x779df0
007b3c30  04 30 9a e5                                      ldr r3, [sl, #4]
007b3c34  04 10 95 e5                                      ldr r1, [r5, #4]
007b3c38  00 20 9a e5                                      ldr r2, [sl]
007b3c3c  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007b3c40  04 90 8a e5                                      str sb, [sl, #4]
007b3c44  44 50 94 e5                                      ldr r5, [r4, #0x44]
007b3c48  04 30 95 e5                                      ldr r3, [r5, #4]
007b3c4c  08 20 95 e5                                      ldr r2, [r5, #8]
007b3c50  01 a0 83 e2                                      add sl, r3, #1
007b3c54  02 00 5a e1                                      cmp sl, r2
007b3c58  03 00 00 da                                      ble #0x7b3c6c
007b3c5c  05 00 a0 e1                                      mov r0, r5
007b3c60  ca 10 8a e0                                      add r1, sl, sl, asr #1
007b3c64  61 18 ff eb                                      bl #0x779df0
007b3c68  04 30 95 e5                                      ldr r3, [r5, #4]
007b3c6c  04 00 9d e5                                      ldr r0, [sp, #4]
007b3c70  00 20 95 e5                                      ldr r2, [r5]
007b3c74  00 10 96 e7                                      ldr r1, [r6, r0]
007b3c78  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007b3c7c  04 a0 85 e5                                      str sl, [r5, #4]
007b3c80  44 50 94 e5                                      ldr r5, [r4, #0x44]
007b3c84  04 30 95 e5                                      ldr r3, [r5, #4]
007b3c88  08 20 95 e5                                      ldr r2, [r5, #8]
007b3c8c  01 60 83 e2                                      add r6, r3, #1
007b3c90  02 00 56 e1                                      cmp r6, r2
007b3c94  03 00 00 da                                      ble #0x7b3ca8
007b3c98  05 00 a0 e1                                      mov r0, r5
007b3c9c  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b3ca0  52 18 ff eb                                      bl #0x779df0
007b3ca4  04 30 95 e5                                      ldr r3, [r5, #4]
007b3ca8  08 20 9d e5                                      ldr r2, [sp, #8]
007b3cac  04 10 92 e5                                      ldr r1, [r2, #4]
007b3cb0  00 20 95 e5                                      ldr r2, [r5]
007b3cb4  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007b3cb8  04 60 85 e5                                      str r6, [r5, #4]
007b3cbc  08 20 94 e5                                      ldr r2, [r4, #8]
007b3cc0  01 80 88 e2                                      add r8, r8, #1
007b3cc4  02 00 58 e1                                      cmp r8, r2
007b3cc8  14 70 87 e2                                      add r7, r7, #0x14
007b3ccc  78 ff ff ba                                      blt #0x7b3ab4
007b3cd0  14 d0 8d e2                                      add sp, sp, #0x14
007b3cd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007b3cd8, declared_size=1112, range_size=1112, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E17debug_make_squareEPNS_5arrayIfEERKNS_4vec2IfEE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::debug_make_square(gameswf::array<float>*, gameswf::vec2<float> const&)
; decoder-mode: arm
007b3cd8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007b3cdc  00 40 50 e2                                      subs r4, r0, #0
007b3ce0  01 50 a0 e1                                      mov r5, r1
007b3ce4  c0 00 00 0a                                      beq #0x7b3fec
007b3ce8  00 00 91 e5                                      ldr r0, [r1]
007b3cec  43 14 a0 e3                                      mov r1, #0x43000000
007b3cf0  12 17 81 e2                                      add r1, r1, #0x480000
007b3cf4  ac 69 ed eb                                      bl #0x30e3ac
007b3cf8  04 30 94 e5                                      ldr r3, [r4, #4]
007b3cfc  08 20 94 e5                                      ldr r2, [r4, #8]
007b3d00  00 60 a0 e1                                      mov r6, r0
007b3d04  01 80 83 e2                                      add r8, r3, #1
007b3d08  02 00 58 e1                                      cmp r8, r2
007b3d0c  02 01 00 ca                                      bgt #0x7b411c
007b3d10  00 20 94 e5                                      ldr r2, [r4]
007b3d14  43 14 a0 e3                                      mov r1, #0x43000000
007b3d18  12 17 81 e2                                      add r1, r1, #0x480000
007b3d1c  03 61 82 e7                                      str r6, [r2, r3, lsl #2]
007b3d20  04 80 84 e5                                      str r8, [r4, #4]
007b3d24  04 00 95 e5                                      ldr r0, [r5, #4]
007b3d28  9f 69 ed eb                                      bl #0x30e3ac
007b3d2c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3d30  01 70 88 e2                                      add r7, r8, #1
007b3d34  00 a0 a0 e1                                      mov sl, r0
007b3d38  03 00 57 e1                                      cmp r7, r3
007b3d3c  f1 00 00 ca                                      bgt #0x7b4108
007b3d40  00 30 94 e5                                      ldr r3, [r4]
007b3d44  43 14 a0 e3                                      mov r1, #0x43000000
007b3d48  12 17 81 e2                                      add r1, r1, #0x480000
007b3d4c  08 a1 83 e7                                      str sl, [r3, r8, lsl #2]
007b3d50  04 70 84 e5                                      str r7, [r4, #4]
007b3d54  00 00 95 e5                                      ldr r0, [r5]
007b3d58  91 6b ed eb                                      bl #0x30eba4
007b3d5c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3d60  01 60 87 e2                                      add r6, r7, #1
007b3d64  00 a0 a0 e1                                      mov sl, r0
007b3d68  03 00 56 e1                                      cmp r6, r3
007b3d6c  e0 00 00 ca                                      bgt #0x7b40f4
007b3d70  00 30 94 e5                                      ldr r3, [r4]
007b3d74  43 14 a0 e3                                      mov r1, #0x43000000
007b3d78  12 17 81 e2                                      add r1, r1, #0x480000
007b3d7c  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b3d80  04 60 84 e5                                      str r6, [r4, #4]
007b3d84  04 00 95 e5                                      ldr r0, [r5, #4]
007b3d88  87 69 ed eb                                      bl #0x30e3ac
007b3d8c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3d90  01 80 86 e2                                      add r8, r6, #1
007b3d94  00 a0 a0 e1                                      mov sl, r0
007b3d98  03 00 58 e1                                      cmp r8, r3
007b3d9c  cf 00 00 ca                                      bgt #0x7b40e0
007b3da0  00 30 94 e5                                      ldr r3, [r4]
007b3da4  43 14 a0 e3                                      mov r1, #0x43000000
007b3da8  12 17 81 e2                                      add r1, r1, #0x480000
007b3dac  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b3db0  04 80 84 e5                                      str r8, [r4, #4]
007b3db4  00 00 95 e5                                      ldr r0, [r5]
007b3db8  79 6b ed eb                                      bl #0x30eba4
007b3dbc  08 30 94 e5                                      ldr r3, [r4, #8]
007b3dc0  01 70 88 e2                                      add r7, r8, #1
007b3dc4  00 a0 a0 e1                                      mov sl, r0
007b3dc8  03 00 57 e1                                      cmp r7, r3
007b3dcc  be 00 00 ca                                      bgt #0x7b40cc
007b3dd0  00 30 94 e5                                      ldr r3, [r4]
007b3dd4  43 14 a0 e3                                      mov r1, #0x43000000
007b3dd8  12 17 81 e2                                      add r1, r1, #0x480000
007b3ddc  08 a1 83 e7                                      str sl, [r3, r8, lsl #2]
007b3de0  04 70 84 e5                                      str r7, [r4, #4]
007b3de4  04 00 95 e5                                      ldr r0, [r5, #4]
007b3de8  6f 69 ed eb                                      bl #0x30e3ac
007b3dec  08 30 94 e5                                      ldr r3, [r4, #8]
007b3df0  01 60 87 e2                                      add r6, r7, #1
007b3df4  00 a0 a0 e1                                      mov sl, r0
007b3df8  03 00 56 e1                                      cmp r6, r3
007b3dfc  ad 00 00 ca                                      bgt #0x7b40b8
007b3e00  00 30 94 e5                                      ldr r3, [r4]
007b3e04  43 14 a0 e3                                      mov r1, #0x43000000
007b3e08  12 17 81 e2                                      add r1, r1, #0x480000
007b3e0c  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b3e10  04 60 84 e5                                      str r6, [r4, #4]
007b3e14  00 00 95 e5                                      ldr r0, [r5]
007b3e18  61 6b ed eb                                      bl #0x30eba4
007b3e1c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3e20  01 80 86 e2                                      add r8, r6, #1
007b3e24  00 a0 a0 e1                                      mov sl, r0
007b3e28  03 00 58 e1                                      cmp r8, r3
007b3e2c  9c 00 00 ca                                      bgt #0x7b40a4
007b3e30  00 30 94 e5                                      ldr r3, [r4]
007b3e34  43 14 a0 e3                                      mov r1, #0x43000000
007b3e38  12 17 81 e2                                      add r1, r1, #0x480000
007b3e3c  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b3e40  04 80 84 e5                                      str r8, [r4, #4]
007b3e44  04 00 95 e5                                      ldr r0, [r5, #4]
007b3e48  55 6b ed eb                                      bl #0x30eba4
007b3e4c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3e50  01 70 88 e2                                      add r7, r8, #1
007b3e54  00 a0 a0 e1                                      mov sl, r0
007b3e58  03 00 57 e1                                      cmp r7, r3
007b3e5c  8b 00 00 ca                                      bgt #0x7b4090
007b3e60  00 30 94 e5                                      ldr r3, [r4]
007b3e64  43 14 a0 e3                                      mov r1, #0x43000000
007b3e68  12 17 81 e2                                      add r1, r1, #0x480000
007b3e6c  08 a1 83 e7                                      str sl, [r3, r8, lsl #2]
007b3e70  04 70 84 e5                                      str r7, [r4, #4]
007b3e74  00 00 95 e5                                      ldr r0, [r5]
007b3e78  49 6b ed eb                                      bl #0x30eba4
007b3e7c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3e80  01 60 87 e2                                      add r6, r7, #1
007b3e84  00 a0 a0 e1                                      mov sl, r0
007b3e88  03 00 56 e1                                      cmp r6, r3
007b3e8c  7a 00 00 ca                                      bgt #0x7b407c
007b3e90  00 30 94 e5                                      ldr r3, [r4]
007b3e94  43 14 a0 e3                                      mov r1, #0x43000000
007b3e98  12 17 81 e2                                      add r1, r1, #0x480000
007b3e9c  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b3ea0  04 60 84 e5                                      str r6, [r4, #4]
007b3ea4  04 00 95 e5                                      ldr r0, [r5, #4]
007b3ea8  3d 6b ed eb                                      bl #0x30eba4
007b3eac  08 30 94 e5                                      ldr r3, [r4, #8]
007b3eb0  01 80 86 e2                                      add r8, r6, #1
007b3eb4  00 a0 a0 e1                                      mov sl, r0
007b3eb8  03 00 58 e1                                      cmp r8, r3
007b3ebc  69 00 00 ca                                      bgt #0x7b4068
007b3ec0  00 30 94 e5                                      ldr r3, [r4]
007b3ec4  43 14 a0 e3                                      mov r1, #0x43000000
007b3ec8  12 17 81 e2                                      add r1, r1, #0x480000
007b3ecc  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b3ed0  04 80 84 e5                                      str r8, [r4, #4]
007b3ed4  00 00 95 e5                                      ldr r0, [r5]
007b3ed8  33 69 ed eb                                      bl #0x30e3ac
007b3edc  08 30 94 e5                                      ldr r3, [r4, #8]
007b3ee0  01 70 88 e2                                      add r7, r8, #1
007b3ee4  00 a0 a0 e1                                      mov sl, r0
007b3ee8  03 00 57 e1                                      cmp r7, r3
007b3eec  58 00 00 ca                                      bgt #0x7b4054
007b3ef0  00 30 94 e5                                      ldr r3, [r4]
007b3ef4  43 14 a0 e3                                      mov r1, #0x43000000
007b3ef8  12 17 81 e2                                      add r1, r1, #0x480000
007b3efc  08 a1 83 e7                                      str sl, [r3, r8, lsl #2]
007b3f00  04 70 84 e5                                      str r7, [r4, #4]
007b3f04  04 00 95 e5                                      ldr r0, [r5, #4]
007b3f08  25 6b ed eb                                      bl #0x30eba4
007b3f0c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3f10  01 60 87 e2                                      add r6, r7, #1
007b3f14  00 a0 a0 e1                                      mov sl, r0
007b3f18  03 00 56 e1                                      cmp r6, r3
007b3f1c  47 00 00 ca                                      bgt #0x7b4040
007b3f20  00 30 94 e5                                      ldr r3, [r4]
007b3f24  43 14 a0 e3                                      mov r1, #0x43000000
007b3f28  12 17 81 e2                                      add r1, r1, #0x480000
007b3f2c  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b3f30  04 60 84 e5                                      str r6, [r4, #4]
007b3f34  00 00 95 e5                                      ldr r0, [r5]
007b3f38  1b 69 ed eb                                      bl #0x30e3ac
007b3f3c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3f40  01 80 86 e2                                      add r8, r6, #1
007b3f44  00 a0 a0 e1                                      mov sl, r0
007b3f48  03 00 58 e1                                      cmp r8, r3
007b3f4c  36 00 00 ca                                      bgt #0x7b402c
007b3f50  00 30 94 e5                                      ldr r3, [r4]
007b3f54  43 14 a0 e3                                      mov r1, #0x43000000
007b3f58  12 17 81 e2                                      add r1, r1, #0x480000
007b3f5c  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b3f60  04 80 84 e5                                      str r8, [r4, #4]
007b3f64  04 00 95 e5                                      ldr r0, [r5, #4]
007b3f68  0d 6b ed eb                                      bl #0x30eba4
007b3f6c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3f70  01 70 88 e2                                      add r7, r8, #1
007b3f74  00 a0 a0 e1                                      mov sl, r0
007b3f78  03 00 57 e1                                      cmp r7, r3
007b3f7c  25 00 00 ca                                      bgt #0x7b4018
007b3f80  00 30 94 e5                                      ldr r3, [r4]
007b3f84  43 14 a0 e3                                      mov r1, #0x43000000
007b3f88  12 17 81 e2                                      add r1, r1, #0x480000
007b3f8c  08 a1 83 e7                                      str sl, [r3, r8, lsl #2]
007b3f90  04 70 84 e5                                      str r7, [r4, #4]
007b3f94  00 00 95 e5                                      ldr r0, [r5]
007b3f98  03 69 ed eb                                      bl #0x30e3ac
007b3f9c  08 30 94 e5                                      ldr r3, [r4, #8]
007b3fa0  01 60 87 e2                                      add r6, r7, #1
007b3fa4  00 a0 a0 e1                                      mov sl, r0
007b3fa8  03 00 56 e1                                      cmp r6, r3
007b3fac  14 00 00 ca                                      bgt #0x7b4004
007b3fb0  00 30 94 e5                                      ldr r3, [r4]
007b3fb4  43 14 a0 e3                                      mov r1, #0x43000000
007b3fb8  12 17 81 e2                                      add r1, r1, #0x480000
007b3fbc  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b3fc0  04 60 84 e5                                      str r6, [r4, #4]
007b3fc4  04 00 95 e5                                      ldr r0, [r5, #4]
007b3fc8  f7 68 ed eb                                      bl #0x30e3ac
007b3fcc  08 30 94 e5                                      ldr r3, [r4, #8]
007b3fd0  01 80 86 e2                                      add r8, r6, #1
007b3fd4  00 50 a0 e1                                      mov r5, r0
007b3fd8  03 00 58 e1                                      cmp r8, r3
007b3fdc  03 00 00 ca                                      bgt #0x7b3ff0
007b3fe0  00 30 94 e5                                      ldr r3, [r4]
007b3fe4  06 51 83 e7                                      str r5, [r3, r6, lsl #2]
007b3fe8  04 80 84 e5                                      str r8, [r4, #4]
007b3fec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007b3ff0  04 00 a0 e1                                      mov r0, r4
007b3ff4  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b3ff8  7c 17 ff eb                                      bl #0x779df0
007b3ffc  04 60 94 e5                                      ldr r6, [r4, #4]
007b4000  f6 ff ff ea                                      b #0x7b3fe0
007b4004  04 00 a0 e1                                      mov r0, r4
007b4008  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b400c  77 17 ff eb                                      bl #0x779df0
007b4010  04 70 94 e5                                      ldr r7, [r4, #4]
007b4014  e5 ff ff ea                                      b #0x7b3fb0
007b4018  04 00 a0 e1                                      mov r0, r4
007b401c  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b4020  72 17 ff eb                                      bl #0x779df0
007b4024  04 80 94 e5                                      ldr r8, [r4, #4]
007b4028  d4 ff ff ea                                      b #0x7b3f80
007b402c  04 00 a0 e1                                      mov r0, r4
007b4030  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b4034  6d 17 ff eb                                      bl #0x779df0
007b4038  04 60 94 e5                                      ldr r6, [r4, #4]
007b403c  c3 ff ff ea                                      b #0x7b3f50
007b4040  04 00 a0 e1                                      mov r0, r4
007b4044  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b4048  68 17 ff eb                                      bl #0x779df0
007b404c  04 70 94 e5                                      ldr r7, [r4, #4]
007b4050  b2 ff ff ea                                      b #0x7b3f20
007b4054  04 00 a0 e1                                      mov r0, r4
007b4058  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b405c  63 17 ff eb                                      bl #0x779df0
007b4060  04 80 94 e5                                      ldr r8, [r4, #4]
007b4064  a1 ff ff ea                                      b #0x7b3ef0
007b4068  04 00 a0 e1                                      mov r0, r4
007b406c  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b4070  5e 17 ff eb                                      bl #0x779df0
007b4074  04 60 94 e5                                      ldr r6, [r4, #4]
007b4078  90 ff ff ea                                      b #0x7b3ec0
007b407c  04 00 a0 e1                                      mov r0, r4
007b4080  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b4084  59 17 ff eb                                      bl #0x779df0
007b4088  04 70 94 e5                                      ldr r7, [r4, #4]
007b408c  7f ff ff ea                                      b #0x7b3e90
007b4090  04 00 a0 e1                                      mov r0, r4
007b4094  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b4098  54 17 ff eb                                      bl #0x779df0
007b409c  04 80 94 e5                                      ldr r8, [r4, #4]
007b40a0  6e ff ff ea                                      b #0x7b3e60
007b40a4  04 00 a0 e1                                      mov r0, r4
007b40a8  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b40ac  4f 17 ff eb                                      bl #0x779df0
007b40b0  04 60 94 e5                                      ldr r6, [r4, #4]
007b40b4  5d ff ff ea                                      b #0x7b3e30
007b40b8  04 00 a0 e1                                      mov r0, r4
007b40bc  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b40c0  4a 17 ff eb                                      bl #0x779df0
007b40c4  04 70 94 e5                                      ldr r7, [r4, #4]
007b40c8  4c ff ff ea                                      b #0x7b3e00
007b40cc  04 00 a0 e1                                      mov r0, r4
007b40d0  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b40d4  45 17 ff eb                                      bl #0x779df0
007b40d8  04 80 94 e5                                      ldr r8, [r4, #4]
007b40dc  3b ff ff ea                                      b #0x7b3dd0
007b40e0  04 00 a0 e1                                      mov r0, r4
007b40e4  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b40e8  40 17 ff eb                                      bl #0x779df0
007b40ec  04 60 94 e5                                      ldr r6, [r4, #4]
007b40f0  2a ff ff ea                                      b #0x7b3da0
007b40f4  04 00 a0 e1                                      mov r0, r4
007b40f8  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b40fc  3b 17 ff eb                                      bl #0x779df0
007b4100  04 70 94 e5                                      ldr r7, [r4, #4]
007b4104  19 ff ff ea                                      b #0x7b3d70
007b4108  04 00 a0 e1                                      mov r0, r4
007b410c  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b4110  36 17 ff eb                                      bl #0x779df0
007b4114  04 80 94 e5                                      ldr r8, [r4, #4]
007b4118  08 ff ff ea                                      b #0x7b3d40
007b411c  04 00 a0 e1                                      mov r0, r4
007b4120  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b4124  31 17 ff eb                                      bl #0x779df0
007b4128  04 30 94 e5                                      ldr r3, [r4, #4]
007b412c  f7 fe ff ea                                      b #0x7b3d10

; FUNCTION 0x007b4130, declared_size=568, range_size=568, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E12debug_make_xEPNS_5arrayIfEERKNS_4vec2IfEE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::debug_make_x(gameswf::array<float>*, gameswf::vec2<float> const&)
; decoder-mode: arm
007b4130  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007b4134  00 40 50 e2                                      subs r4, r0, #0
007b4138  01 50 a0 e1                                      mov r5, r1
007b413c  60 00 00 0a                                      beq #0x7b42c4
007b4140  00 00 91 e5                                      ldr r0, [r1]
007b4144  43 14 a0 e3                                      mov r1, #0x43000000
007b4148  12 17 81 e2                                      add r1, r1, #0x480000
007b414c  96 68 ed eb                                      bl #0x30e3ac
007b4150  04 30 94 e5                                      ldr r3, [r4, #4]
007b4154  08 20 94 e5                                      ldr r2, [r4, #8]
007b4158  00 70 a0 e1                                      mov r7, r0
007b415c  01 60 83 e2                                      add r6, r3, #1
007b4160  02 00 56 e1                                      cmp r6, r2
007b4164  7a 00 00 ca                                      bgt #0x7b4354
007b4168  00 20 94 e5                                      ldr r2, [r4]
007b416c  43 14 a0 e3                                      mov r1, #0x43000000
007b4170  12 17 81 e2                                      add r1, r1, #0x480000
007b4174  03 71 82 e7                                      str r7, [r2, r3, lsl #2]
007b4178  04 60 84 e5                                      str r6, [r4, #4]
007b417c  04 00 95 e5                                      ldr r0, [r5, #4]
007b4180  89 68 ed eb                                      bl #0x30e3ac
007b4184  08 30 94 e5                                      ldr r3, [r4, #8]
007b4188  01 80 86 e2                                      add r8, r6, #1
007b418c  00 a0 a0 e1                                      mov sl, r0
007b4190  03 00 58 e1                                      cmp r8, r3
007b4194  69 00 00 ca                                      bgt #0x7b4340
007b4198  00 30 94 e5                                      ldr r3, [r4]
007b419c  43 14 a0 e3                                      mov r1, #0x43000000
007b41a0  12 17 81 e2                                      add r1, r1, #0x480000
007b41a4  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b41a8  04 80 84 e5                                      str r8, [r4, #4]
007b41ac  00 00 95 e5                                      ldr r0, [r5]
007b41b0  7b 6a ed eb                                      bl #0x30eba4
007b41b4  08 30 94 e5                                      ldr r3, [r4, #8]
007b41b8  01 70 88 e2                                      add r7, r8, #1
007b41bc  00 a0 a0 e1                                      mov sl, r0
007b41c0  03 00 57 e1                                      cmp r7, r3
007b41c4  58 00 00 ca                                      bgt #0x7b432c
007b41c8  00 30 94 e5                                      ldr r3, [r4]
007b41cc  43 14 a0 e3                                      mov r1, #0x43000000
007b41d0  12 17 81 e2                                      add r1, r1, #0x480000
007b41d4  08 a1 83 e7                                      str sl, [r3, r8, lsl #2]
007b41d8  04 70 84 e5                                      str r7, [r4, #4]
007b41dc  04 00 95 e5                                      ldr r0, [r5, #4]
007b41e0  6f 6a ed eb                                      bl #0x30eba4
007b41e4  08 30 94 e5                                      ldr r3, [r4, #8]
007b41e8  01 60 87 e2                                      add r6, r7, #1
007b41ec  00 a0 a0 e1                                      mov sl, r0
007b41f0  03 00 56 e1                                      cmp r6, r3
007b41f4  47 00 00 ca                                      bgt #0x7b4318
007b41f8  00 30 94 e5                                      ldr r3, [r4]
007b41fc  43 14 a0 e3                                      mov r1, #0x43000000
007b4200  12 17 81 e2                                      add r1, r1, #0x480000
007b4204  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b4208  04 60 84 e5                                      str r6, [r4, #4]
007b420c  00 00 95 e5                                      ldr r0, [r5]
007b4210  65 68 ed eb                                      bl #0x30e3ac
007b4214  08 30 94 e5                                      ldr r3, [r4, #8]
007b4218  01 80 86 e2                                      add r8, r6, #1
007b421c  00 a0 a0 e1                                      mov sl, r0
007b4220  03 00 58 e1                                      cmp r8, r3
007b4224  36 00 00 ca                                      bgt #0x7b4304
007b4228  00 30 94 e5                                      ldr r3, [r4]
007b422c  43 14 a0 e3                                      mov r1, #0x43000000
007b4230  12 17 81 e2                                      add r1, r1, #0x480000
007b4234  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b4238  04 80 84 e5                                      str r8, [r4, #4]
007b423c  04 00 95 e5                                      ldr r0, [r5, #4]
007b4240  57 6a ed eb                                      bl #0x30eba4
007b4244  08 30 94 e5                                      ldr r3, [r4, #8]
007b4248  01 70 88 e2                                      add r7, r8, #1
007b424c  00 a0 a0 e1                                      mov sl, r0
007b4250  03 00 57 e1                                      cmp r7, r3
007b4254  25 00 00 ca                                      bgt #0x7b42f0
007b4258  00 30 94 e5                                      ldr r3, [r4]
007b425c  43 14 a0 e3                                      mov r1, #0x43000000
007b4260  12 17 81 e2                                      add r1, r1, #0x480000
007b4264  08 a1 83 e7                                      str sl, [r3, r8, lsl #2]
007b4268  04 70 84 e5                                      str r7, [r4, #4]
007b426c  00 00 95 e5                                      ldr r0, [r5]
007b4270  4b 6a ed eb                                      bl #0x30eba4
007b4274  08 30 94 e5                                      ldr r3, [r4, #8]
007b4278  01 60 87 e2                                      add r6, r7, #1
007b427c  00 a0 a0 e1                                      mov sl, r0
007b4280  03 00 56 e1                                      cmp r6, r3
007b4284  14 00 00 ca                                      bgt #0x7b42dc
007b4288  00 30 94 e5                                      ldr r3, [r4]
007b428c  43 14 a0 e3                                      mov r1, #0x43000000
007b4290  12 17 81 e2                                      add r1, r1, #0x480000
007b4294  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b4298  04 60 84 e5                                      str r6, [r4, #4]
007b429c  04 00 95 e5                                      ldr r0, [r5, #4]
007b42a0  41 68 ed eb                                      bl #0x30e3ac
007b42a4  08 30 94 e5                                      ldr r3, [r4, #8]
007b42a8  01 80 86 e2                                      add r8, r6, #1
007b42ac  00 50 a0 e1                                      mov r5, r0
007b42b0  03 00 58 e1                                      cmp r8, r3
007b42b4  03 00 00 ca                                      bgt #0x7b42c8
007b42b8  00 30 94 e5                                      ldr r3, [r4]
007b42bc  06 51 83 e7                                      str r5, [r3, r6, lsl #2]
007b42c0  04 80 84 e5                                      str r8, [r4, #4]
007b42c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007b42c8  04 00 a0 e1                                      mov r0, r4
007b42cc  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b42d0  c6 16 ff eb                                      bl #0x779df0
007b42d4  04 60 94 e5                                      ldr r6, [r4, #4]
007b42d8  f6 ff ff ea                                      b #0x7b42b8
007b42dc  04 00 a0 e1                                      mov r0, r4
007b42e0  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b42e4  c1 16 ff eb                                      bl #0x779df0
007b42e8  04 70 94 e5                                      ldr r7, [r4, #4]
007b42ec  e5 ff ff ea                                      b #0x7b4288
007b42f0  04 00 a0 e1                                      mov r0, r4
007b42f4  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b42f8  bc 16 ff eb                                      bl #0x779df0
007b42fc  04 80 94 e5                                      ldr r8, [r4, #4]
007b4300  d4 ff ff ea                                      b #0x7b4258
007b4304  04 00 a0 e1                                      mov r0, r4
007b4308  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b430c  b7 16 ff eb                                      bl #0x779df0
007b4310  04 60 94 e5                                      ldr r6, [r4, #4]
007b4314  c3 ff ff ea                                      b #0x7b4228
007b4318  04 00 a0 e1                                      mov r0, r4
007b431c  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b4320  b2 16 ff eb                                      bl #0x779df0
007b4324  04 70 94 e5                                      ldr r7, [r4, #4]
007b4328  b2 ff ff ea                                      b #0x7b41f8
007b432c  04 00 a0 e1                                      mov r0, r4
007b4330  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b4334  ad 16 ff eb                                      bl #0x779df0
007b4338  04 80 94 e5                                      ldr r8, [r4, #4]
007b433c  a1 ff ff ea                                      b #0x7b41c8
007b4340  04 00 a0 e1                                      mov r0, r4
007b4344  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b4348  a8 16 ff eb                                      bl #0x779df0
007b434c  04 60 94 e5                                      ldr r6, [r4, #4]
007b4350  90 ff ff ea                                      b #0x7b4198
007b4354  04 00 a0 e1                                      mov r0, r4
007b4358  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b435c  a3 16 ff eb                                      bl #0x779df0
007b4360  04 30 94 e5                                      ldr r3, [r4, #4]
007b4364  7f ff ff ea                                      b #0x7b4168

; FUNCTION 0x007b4368, declared_size=572, range_size=572, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E15debug_make_plusEPNS_5arrayIfEERKNS_4vec2IfEE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::debug_make_plus(gameswf::array<float>*, gameswf::vec2<float> const&)
; decoder-mode: arm
007b4368  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007b436c  00 40 50 e2                                      subs r4, r0, #0
007b4370  01 50 a0 e1                                      mov r5, r1
007b4374  50 00 00 0a                                      beq #0x7b44bc
007b4378  04 30 94 e5                                      ldr r3, [r4, #4]
007b437c  08 20 94 e5                                      ldr r2, [r4, #8]
007b4380  01 60 83 e2                                      add r6, r3, #1
007b4384  02 00 56 e1                                      cmp r6, r2
007b4388  81 00 00 ca                                      bgt #0x7b4594
007b438c  00 00 95 e5                                      ldr r0, [r5]
007b4390  00 20 94 e5                                      ldr r2, [r4]
007b4394  43 14 a0 e3                                      mov r1, #0x43000000
007b4398  12 17 81 e2                                      add r1, r1, #0x480000
007b439c  03 01 82 e7                                      str r0, [r2, r3, lsl #2]
007b43a0  04 60 84 e5                                      str r6, [r4, #4]
007b43a4  04 00 95 e5                                      ldr r0, [r5, #4]
007b43a8  ff 67 ed eb                                      bl #0x30e3ac
007b43ac  08 30 94 e5                                      ldr r3, [r4, #8]
007b43b0  01 80 86 e2                                      add r8, r6, #1
007b43b4  00 a0 a0 e1                                      mov sl, r0
007b43b8  03 00 58 e1                                      cmp r8, r3
007b43bc  69 00 00 ca                                      bgt #0x7b4568
007b43c0  00 30 94 e5                                      ldr r3, [r4]
007b43c4  01 70 88 e2                                      add r7, r8, #1
007b43c8  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b43cc  08 30 94 e5                                      ldr r3, [r4, #8]
007b43d0  04 80 84 e5                                      str r8, [r4, #4]
007b43d4  03 00 57 e1                                      cmp r7, r3
007b43d8  5d 00 00 ca                                      bgt #0x7b4554
007b43dc  00 20 95 e5                                      ldr r2, [r5]
007b43e0  00 30 94 e5                                      ldr r3, [r4]
007b43e4  43 14 a0 e3                                      mov r1, #0x43000000
007b43e8  12 17 81 e2                                      add r1, r1, #0x480000
007b43ec  08 21 83 e7                                      str r2, [r3, r8, lsl #2]
007b43f0  04 70 84 e5                                      str r7, [r4, #4]
007b43f4  04 00 95 e5                                      ldr r0, [r5, #4]
007b43f8  e9 69 ed eb                                      bl #0x30eba4
007b43fc  08 30 94 e5                                      ldr r3, [r4, #8]
007b4400  01 60 87 e2                                      add r6, r7, #1
007b4404  00 a0 a0 e1                                      mov sl, r0
007b4408  03 00 56 e1                                      cmp r6, r3
007b440c  4b 00 00 ca                                      bgt #0x7b4540
007b4410  00 30 94 e5                                      ldr r3, [r4]
007b4414  43 14 a0 e3                                      mov r1, #0x43000000
007b4418  12 17 81 e2                                      add r1, r1, #0x480000
007b441c  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b4420  04 60 84 e5                                      str r6, [r4, #4]
007b4424  00 00 95 e5                                      ldr r0, [r5]
007b4428  df 67 ed eb                                      bl #0x30e3ac
007b442c  08 30 94 e5                                      ldr r3, [r4, #8]
007b4430  01 80 86 e2                                      add r8, r6, #1
007b4434  00 a0 a0 e1                                      mov sl, r0
007b4438  03 00 58 e1                                      cmp r8, r3
007b443c  34 00 00 ca                                      bgt #0x7b4514
007b4440  00 30 94 e5                                      ldr r3, [r4]
007b4444  01 70 88 e2                                      add r7, r8, #1
007b4448  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b444c  08 30 94 e5                                      ldr r3, [r4, #8]
007b4450  04 80 84 e5                                      str r8, [r4, #4]
007b4454  03 00 57 e1                                      cmp r7, r3
007b4458  28 00 00 ca                                      bgt #0x7b4500
007b445c  04 20 95 e5                                      ldr r2, [r5, #4]
007b4460  00 30 94 e5                                      ldr r3, [r4]
007b4464  43 14 a0 e3                                      mov r1, #0x43000000
007b4468  12 17 81 e2                                      add r1, r1, #0x480000
007b446c  08 21 83 e7                                      str r2, [r3, r8, lsl #2]
007b4470  04 70 84 e5                                      str r7, [r4, #4]
007b4474  00 00 95 e5                                      ldr r0, [r5]
007b4478  c9 69 ed eb                                      bl #0x30eba4
007b447c  08 30 94 e5                                      ldr r3, [r4, #8]
007b4480  01 60 87 e2                                      add r6, r7, #1
007b4484  00 a0 a0 e1                                      mov sl, r0
007b4488  03 00 56 e1                                      cmp r6, r3
007b448c  10 00 00 ca                                      bgt #0x7b44d4
007b4490  00 30 94 e5                                      ldr r3, [r4]
007b4494  01 80 86 e2                                      add r8, r6, #1
007b4498  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b449c  08 30 94 e5                                      ldr r3, [r4, #8]
007b44a0  04 60 84 e5                                      str r6, [r4, #4]
007b44a4  03 00 58 e1                                      cmp r8, r3
007b44a8  04 00 00 ca                                      bgt #0x7b44c0
007b44ac  04 20 95 e5                                      ldr r2, [r5, #4]
007b44b0  00 30 94 e5                                      ldr r3, [r4]
007b44b4  06 21 83 e7                                      str r2, [r3, r6, lsl #2]
007b44b8  04 80 84 e5                                      str r8, [r4, #4]
007b44bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007b44c0  04 00 a0 e1                                      mov r0, r4
007b44c4  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b44c8  48 16 ff eb                                      bl #0x779df0
007b44cc  04 60 94 e5                                      ldr r6, [r4, #4]
007b44d0  f5 ff ff ea                                      b #0x7b44ac
007b44d4  04 00 a0 e1                                      mov r0, r4
007b44d8  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b44dc  43 16 ff eb                                      bl #0x779df0
007b44e0  88 00 94 e8                                      ldm r4, {r3, r7}
007b44e4  01 80 86 e2                                      add r8, r6, #1
007b44e8  07 a1 83 e7                                      str sl, [r3, r7, lsl #2]
007b44ec  08 30 94 e5                                      ldr r3, [r4, #8]
007b44f0  04 60 84 e5                                      str r6, [r4, #4]
007b44f4  03 00 58 e1                                      cmp r8, r3
007b44f8  eb ff ff da                                      ble #0x7b44ac
007b44fc  ef ff ff ea                                      b #0x7b44c0
007b4500  04 00 a0 e1                                      mov r0, r4
007b4504  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b4508  38 16 ff eb                                      bl #0x779df0
007b450c  04 80 94 e5                                      ldr r8, [r4, #4]
007b4510  d1 ff ff ea                                      b #0x7b445c
007b4514  04 00 a0 e1                                      mov r0, r4
007b4518  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b451c  33 16 ff eb                                      bl #0x779df0
007b4520  48 00 94 e8                                      ldm r4, {r3, r6}
007b4524  01 70 88 e2                                      add r7, r8, #1
007b4528  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b452c  08 30 94 e5                                      ldr r3, [r4, #8]
007b4530  04 80 84 e5                                      str r8, [r4, #4]
007b4534  03 00 57 e1                                      cmp r7, r3
007b4538  c7 ff ff da                                      ble #0x7b445c
007b453c  ef ff ff ea                                      b #0x7b4500
007b4540  04 00 a0 e1                                      mov r0, r4
007b4544  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b4548  28 16 ff eb                                      bl #0x779df0
007b454c  04 70 94 e5                                      ldr r7, [r4, #4]
007b4550  ae ff ff ea                                      b #0x7b4410
007b4554  04 00 a0 e1                                      mov r0, r4
007b4558  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b455c  23 16 ff eb                                      bl #0x779df0
007b4560  04 80 94 e5                                      ldr r8, [r4, #4]
007b4564  9c ff ff ea                                      b #0x7b43dc
007b4568  04 00 a0 e1                                      mov r0, r4
007b456c  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b4570  1e 16 ff eb                                      bl #0x779df0
007b4574  48 00 94 e8                                      ldm r4, {r3, r6}
007b4578  01 70 88 e2                                      add r7, r8, #1
007b457c  06 a1 83 e7                                      str sl, [r3, r6, lsl #2]
007b4580  08 30 94 e5                                      ldr r3, [r4, #8]
007b4584  04 80 84 e5                                      str r8, [r4, #4]
007b4588  03 00 57 e1                                      cmp r7, r3
007b458c  92 ff ff da                                      ble #0x7b43dc
007b4590  ef ff ff ea                                      b #0x7b4554
007b4594  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b4598  14 16 ff eb                                      bl #0x779df0
007b459c  04 30 94 e5                                      ldr r3, [r4, #4]
007b45a0  79 ff ff ea                                      b #0x7b438c

; FUNCTION 0x007b45a4, declared_size=2020, range_size=2020, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E15find_ear_vertexEPKNS4_8tristateEii
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::find_ear_vertex(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate const*, int, int)
; decoder-mode: arm
007b45a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b45a8  7c d0 4d e2                                      sub sp, sp, #0x7c
007b45ac  10 20 8d e5                                      str r2, [sp, #0x10]
007b45b0  14 50 a0 e3                                      mov r5, #0x14
007b45b4  95 02 06 e0                                      mul r6, r5, r2
007b45b8  04 40 90 e5                                      ldr r4, [r0, #4]
007b45bc  95 01 05 e0                                      mul r5, r5, r1
007b45c0  06 90 94 e7                                      ldr sb, [r4, r6]
007b45c4  00 70 a0 e1                                      mov r7, r0
007b45c8  01 80 a0 e1                                      mov r8, r1
007b45cc  05 00 94 e7                                      ldr r0, [r4, r5]
007b45d0  09 10 a0 e1                                      mov r1, sb
007b45d4  6c 66 ed eb                                      bl #0x30df8c
007b45d8  00 00 50 e3                                      cmp r0, #0
007b45dc  05 b0 84 e0                                      add fp, r4, r5
007b45e0  06 a0 84 e0                                      add sl, r4, r6
007b45e4  0a 00 00 0a                                      beq #0x7b4614
007b45e8  04 00 9b e5                                      ldr r0, [fp, #4]
007b45ec  04 10 9a e5                                      ldr r1, [sl, #4]
007b45f0  65 66 ed eb                                      bl #0x30df8c
007b45f4  00 00 50 e3                                      cmp r0, #0
007b45f8  05 00 00 0a                                      beq #0x7b4614
007b45fc  08 00 9a e5                                      ldr r0, [sl, #8]
007b4600  08 00 50 e1                                      cmp r0, r8
007b4604  00 00 00 1a                                      bne #0x7b460c
007b4608  00 00 e0 e3                                      mvn r0, #0
007b460c  7c d0 8d e2                                      add sp, sp, #0x7c
007b4610  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b4614  10 30 9a e5                                      ldr r3, [sl, #0x10]
007b4618  01 00 53 e3                                      cmp r3, #1
007b461c  f9 ff ff 0a                                      beq #0x7b4608
007b4620  10 10 9d e5                                      ldr r1, [sp, #0x10]
007b4624  00 00 51 e3                                      cmp r1, #0
007b4628  09 00 00 da                                      ble #0x7b4654
007b462c  01 30 41 e2                                      sub r3, r1, #1
007b4630  14 b0 a0 e3                                      mov fp, #0x14
007b4634  9b 03 03 e0                                      mul r3, fp, r3
007b4638  09 00 a0 e1                                      mov r0, sb
007b463c  03 10 94 e7                                      ldr r1, [r4, r3]
007b4640  03 30 84 e0                                      add r3, r4, r3
007b4644  08 30 8d e5                                      str r3, [sp, #8]
007b4648  4f 66 ed eb                                      bl #0x30df8c
007b464c  00 00 50 e3                                      cmp r0, #0
007b4650  99 01 00 1a                                      bne #0x7b4cbc
007b4654  10 20 9d e5                                      ldr r2, [sp, #0x10]
007b4658  48 20 8d e5                                      str r2, [sp, #0x48]
007b465c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007b4660  08 30 97 e5                                      ldr r3, [r7, #8]
007b4664  01 c0 8c e2                                      add ip, ip, #1
007b4668  03 00 5c e1                                      cmp ip, r3
007b466c  08 30 8d e5                                      str r3, [sp, #8]
007b4670  14 c0 8d e5                                      str ip, [sp, #0x14]
007b4674  1a 00 00 aa                                      bge #0x7b46e4
007b4678  14 10 a0 e3                                      mov r1, #0x14
007b467c  91 0c 03 e0                                      mul r3, r1, ip
007b4680  09 00 a0 e1                                      mov r0, sb
007b4684  03 10 94 e7                                      ldr r1, [r4, r3]
007b4688  03 30 84 e0                                      add r3, r4, r3
007b468c  28 30 8d e5                                      str r3, [sp, #0x28]
007b4690  3d 66 ed eb                                      bl #0x30df8c
007b4694  00 00 50 e3                                      cmp r0, #0
007b4698  11 00 00 0a                                      beq #0x7b46e4
007b469c  28 20 9d e5                                      ldr r2, [sp, #0x28]
007b46a0  04 b0 9a e5                                      ldr fp, [sl, #4]
007b46a4  04 00 92 e5                                      ldr r0, [r2, #4]
007b46a8  0b 10 a0 e1                                      mov r1, fp
007b46ac  36 66 ed eb                                      bl #0x30df8c
007b46b0  00 00 50 e3                                      cmp r0, #0
007b46b4  0a 00 00 0a                                      beq #0x7b46e4
007b46b8  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b46bc  14 c0 a0 e3                                      mov ip, #0x14
007b46c0  02 a0 83 e2                                      add sl, r3, #2
007b46c4  9c 0a 0a e0                                      mul sl, ip, sl
007b46c8  14 10 9d e5                                      ldr r1, [sp, #0x14]
007b46cc  08 20 9d e5                                      ldr r2, [sp, #8]
007b46d0  09 00 a0 e1                                      mov r0, sb
007b46d4  01 10 81 e2                                      add r1, r1, #1
007b46d8  02 00 51 e1                                      cmp r1, r2
007b46dc  14 10 8d e5                                      str r1, [sp, #0x14]
007b46e0  5b 00 00 1a                                      bne #0x7b4854
007b46e4  48 30 9d e5                                      ldr r3, [sp, #0x48]
007b46e8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007b46ec  0c 00 53 e1                                      cmp r3, ip
007b46f0  c4 ff ff aa                                      bge #0x7b4608
007b46f4  48 10 9d e5                                      ldr r1, [sp, #0x48]
007b46f8  14 30 a0 e3                                      mov r3, #0x14
007b46fc  48 b0 9d e5                                      ldr fp, [sp, #0x48]
007b4700  93 01 01 e0                                      mul r1, r3, r1
007b4704  00 20 e0 e3                                      mvn r2, #0
007b4708  4c 10 8d e5                                      str r1, [sp, #0x4c]
007b470c  01 90 a0 e1                                      mov sb, r1
007b4710  3c 20 8d e5                                      str r2, [sp, #0x3c]
007b4714  20 60 8d e5                                      str r6, [sp, #0x20]
007b4718  30 50 8d e5                                      str r5, [sp, #0x30]
007b471c  38 70 8d e5                                      str r7, [sp, #0x38]
007b4720  40 80 8d e5                                      str r8, [sp, #0x40]
007b4724  30 30 9d e5                                      ldr r3, [sp, #0x30]
007b4728  14 10 a0 e3                                      mov r1, #0x14
007b472c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
007b4730  03 80 84 e0                                      add r8, r4, r3
007b4734  09 30 84 e0                                      add r3, r4, sb
007b4738  08 70 93 e5                                      ldr r7, [r3, #8]
007b473c  0c a0 84 e0                                      add sl, r4, ip
007b4740  01 b0 8b e2                                      add fp, fp, #1
007b4744  91 07 06 e0                                      mul r6, r1, r7
007b4748  14 90 89 e2                                      add sb, sb, #0x14
007b474c  06 50 84 e0                                      add r5, r4, r6
007b4750  10 30 95 e5                                      ldr r3, [r5, #0x10]
007b4754  02 00 53 e3                                      cmp r3, #2
007b4758  37 00 00 0a                                      beq #0x7b483c
007b475c  30 20 9d e5                                      ldr r2, [sp, #0x30]
007b4760  02 00 94 e7                                      ldr r0, [r4, r2]
007b4764  4e 68 ed eb                                      bl #0x30e8a4
007b4768  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
007b476c  04 00 98 e5                                      ldr r0, [r8, #4]
007b4770  4b 68 ed eb                                      bl #0x30e8a4
007b4774  20 30 9d e5                                      ldr r3, [sp, #0x20]
007b4778  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007b477c  03 00 94 e7                                      ldr r0, [r4, r3]
007b4780  47 68 ed eb                                      bl #0x30e8a4
007b4784  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
007b4788  67 67 ed eb                                      bl #0x30e52c
007b478c  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007b4790  04 00 95 e5                                      ldr r0, [r5, #4]
007b4794  42 68 ed eb                                      bl #0x30e8a4
007b4798  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
007b479c  62 67 ed eb                                      bl #0x30e52c
007b47a0  00 20 a0 e1                                      mov r2, r0
007b47a4  01 30 a0 e1                                      mov r3, r1
007b47a8  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007b47ac  c0 68 ed eb                                      bl #0x30eab4
007b47b0  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007b47b4  04 00 9a e5                                      ldr r0, [sl, #4]
007b47b8  39 68 ed eb                                      bl #0x30e8a4
007b47bc  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
007b47c0  59 67 ed eb                                      bl #0x30e52c
007b47c4  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007b47c8  06 00 94 e7                                      ldr r0, [r4, r6]
007b47cc  34 68 ed eb                                      bl #0x30e8a4
007b47d0  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
007b47d4  54 67 ed eb                                      bl #0x30e52c
007b47d8  00 20 a0 e1                                      mov r2, r0
007b47dc  01 30 a0 e1                                      mov r3, r1
007b47e0  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007b47e4  b2 68 ed eb                                      bl #0x30eab4
007b47e8  00 20 a0 e1                                      mov r2, r0
007b47ec  01 30 a0 e1                                      mov r3, r1
007b47f0  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007b47f4  4c 67 ed eb                                      bl #0x30e52c
007b47f8  00 20 a0 e3                                      mov r2, #0
007b47fc  00 30 a0 e3                                      mov r3, #0
007b4800  96 65 ed eb                                      bl #0x30de60
007b4804  00 00 50 e3                                      cmp r0, #0
007b4808  0b 00 00 0a                                      beq #0x7b483c
007b480c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b4810  14 10 a0 e3                                      mov r1, #0x14
007b4814  05 00 a0 e1                                      mov r0, r5
007b4818  01 00 7c e3                                      cmn ip, #1
007b481c  91 4c 23 e0                                      mla r3, r1, ip, r4
007b4820  0a 20 a0 e1                                      mov r2, sl
007b4824  08 10 a0 e1                                      mov r1, r8
007b4828  02 00 00 0a                                      beq #0x7b4838
007b482c  82 ef ff eb                                      bl #0x7b063c
007b4830  00 00 50 e3                                      cmp r0, #0
007b4834  00 00 00 0a                                      beq #0x7b483c
007b4838  3c 70 8d e5                                      str r7, [sp, #0x3c]
007b483c  14 20 9d e5                                      ldr r2, [sp, #0x14]
007b4840  02 00 5b e1                                      cmp fp, r2
007b4844  0e 00 00 0a                                      beq #0x7b4884
007b4848  38 30 9d e5                                      ldr r3, [sp, #0x38]
007b484c  04 40 93 e5                                      ldr r4, [r3, #4]
007b4850  b3 ff ff ea                                      b #0x7b4724
007b4854  0a 10 94 e7                                      ldr r1, [r4, sl]
007b4858  cb 65 ed eb                                      bl #0x30df8c
007b485c  00 00 50 e3                                      cmp r0, #0
007b4860  0b 10 a0 e1                                      mov r1, fp
007b4864  0a 30 84 e0                                      add r3, r4, sl
007b4868  9d ff ff 0a                                      beq #0x7b46e4
007b486c  04 00 93 e5                                      ldr r0, [r3, #4]
007b4870  c5 65 ed eb                                      bl #0x30df8c
007b4874  00 00 50 e3                                      cmp r0, #0
007b4878  14 a0 8a e2                                      add sl, sl, #0x14
007b487c  98 ff ff 0a                                      beq #0x7b46e4
007b4880  90 ff ff ea                                      b #0x7b46c8
007b4884  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b4888  20 60 9d e5                                      ldr r6, [sp, #0x20]
007b488c  30 50 9d e5                                      ldr r5, [sp, #0x30]
007b4890  01 00 7c e3                                      cmn ip, #1
007b4894  38 70 9d e5                                      ldr r7, [sp, #0x38]
007b4898  40 80 9d e5                                      ldr r8, [sp, #0x40]
007b489c  59 ff ff 0a                                      beq #0x7b4608
007b48a0  14 30 a0 e3                                      mov r3, #0x14
007b48a4  93 0c 01 e0                                      mul r1, r3, ip
007b48a8  04 40 97 e5                                      ldr r4, [r7, #4]
007b48ac  4c b0 9d e5                                      ldr fp, [sp, #0x4c]
007b48b0  50 70 8d e5                                      str r7, [sp, #0x50]
007b48b4  28 10 8d e5                                      str r1, [sp, #0x28]
007b48b8  48 90 9d e5                                      ldr sb, [sp, #0x48]
007b48bc  38 60 8d e5                                      str r6, [sp, #0x38]
007b48c0  05 70 a0 e1                                      mov r7, r5
007b48c4  54 80 8d e5                                      str r8, [sp, #0x54]
007b48c8  06 00 00 ea                                      b #0x7b48e8
007b48cc  50 30 9d e5                                      ldr r3, [sp, #0x50]
007b48d0  04 40 93 e5                                      ldr r4, [r3, #4]
007b48d4  14 10 9d e5                                      ldr r1, [sp, #0x14]
007b48d8  01 90 89 e2                                      add sb, sb, #1
007b48dc  14 b0 8b e2                                      add fp, fp, #0x14
007b48e0  01 00 59 e1                                      cmp sb, r1
007b48e4  73 00 00 0a                                      beq #0x7b4ab8
007b48e8  0b 30 84 e0                                      add r3, r4, fp
007b48ec  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007b48f0  14 20 a0 e3                                      mov r2, #0x14
007b48f4  92 03 03 e0                                      mul r3, r2, r3
007b48f8  03 50 84 e0                                      add r5, r4, r3
007b48fc  10 20 95 e5                                      ldr r2, [r5, #0x10]
007b4900  02 00 52 e3                                      cmp r2, #2
007b4904  f2 ff ff 0a                                      beq #0x7b48d4
007b4908  03 60 94 e7                                      ldr r6, [r4, r3]
007b490c  07 a0 94 e7                                      ldr sl, [r4, r7]
007b4910  07 30 84 e0                                      add r3, r4, r7
007b4914  06 00 a0 e1                                      mov r0, r6
007b4918  0a 10 a0 e1                                      mov r1, sl
007b491c  08 30 8d e5                                      str r3, [sp, #8]
007b4920  99 65 ed eb                                      bl #0x30df8c
007b4924  00 00 50 e3                                      cmp r0, #0
007b4928  04 80 95 05                                      ldreq r8, [r5, #4]
007b492c  06 00 00 0a                                      beq #0x7b494c
007b4930  08 c0 9d e5                                      ldr ip, [sp, #8]
007b4934  04 80 95 e5                                      ldr r8, [r5, #4]
007b4938  04 10 9c e5                                      ldr r1, [ip, #4]
007b493c  08 00 a0 e1                                      mov r0, r8
007b4940  91 65 ed eb                                      bl #0x30df8c
007b4944  00 00 50 e3                                      cmp r0, #0
007b4948  e1 ff ff 1a                                      bne #0x7b48d4
007b494c  28 20 9d e5                                      ldr r2, [sp, #0x28]
007b4950  06 00 a0 e1                                      mov r0, r6
007b4954  02 10 94 e7                                      ldr r1, [r4, r2]
007b4958  8b 65 ed eb                                      bl #0x30df8c
007b495c  28 30 9d e5                                      ldr r3, [sp, #0x28]
007b4960  00 00 50 e3                                      cmp r0, #0
007b4964  03 30 84 e0                                      add r3, r4, r3
007b4968  18 30 8d e5                                      str r3, [sp, #0x18]
007b496c  05 00 00 0a                                      beq #0x7b4988
007b4970  18 20 9d e5                                      ldr r2, [sp, #0x18]
007b4974  08 00 a0 e1                                      mov r0, r8
007b4978  04 10 92 e5                                      ldr r1, [r2, #4]
007b497c  82 65 ed eb                                      bl #0x30df8c
007b4980  00 00 50 e3                                      cmp r0, #0
007b4984  d2 ff ff 1a                                      bne #0x7b48d4
007b4988  0a 00 a0 e1                                      mov r0, sl
007b498c  c4 67 ed eb                                      bl #0x30e8a4
007b4990  08 c0 9d e5                                      ldr ip, [sp, #8]
007b4994  f0 03 cd e1                                      strd r0, r1, [sp, #0x30]
007b4998  04 00 9c e5                                      ldr r0, [ip, #4]
007b499c  c0 67 ed eb                                      bl #0x30e8a4
007b49a0  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
007b49a4  38 10 9d e5                                      ldr r1, [sp, #0x38]
007b49a8  01 00 94 e7                                      ldr r0, [r4, r1]
007b49ac  bc 67 ed eb                                      bl #0x30e8a4
007b49b0  d0 23 cd e1                                      ldrd r2, r3, [sp, #0x30]
007b49b4  dc 66 ed eb                                      bl #0x30e52c
007b49b8  f0 04 cd e1                                      strd r0, r1, [sp, #0x40]
007b49bc  08 00 a0 e1                                      mov r0, r8
007b49c0  b7 67 ed eb                                      bl #0x30e8a4
007b49c4  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
007b49c8  38 c0 9d e5                                      ldr ip, [sp, #0x38]
007b49cc  0c 80 84 e0                                      add r8, r4, ip
007b49d0  d5 66 ed eb                                      bl #0x30e52c
007b49d4  00 20 a0 e1                                      mov r2, r0
007b49d8  01 30 a0 e1                                      mov r3, r1
007b49dc  d0 04 cd e1                                      ldrd r0, r1, [sp, #0x40]
007b49e0  33 68 ed eb                                      bl #0x30eab4
007b49e4  f0 04 cd e1                                      strd r0, r1, [sp, #0x40]
007b49e8  04 00 98 e5                                      ldr r0, [r8, #4]
007b49ec  ac 67 ed eb                                      bl #0x30e8a4
007b49f0  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
007b49f4  cc 66 ed eb                                      bl #0x30e52c
007b49f8  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
007b49fc  06 00 a0 e1                                      mov r0, r6
007b4a00  a7 67 ed eb                                      bl #0x30e8a4
007b4a04  d0 23 cd e1                                      ldrd r2, r3, [sp, #0x30]
007b4a08  c7 66 ed eb                                      bl #0x30e52c
007b4a0c  00 20 a0 e1                                      mov r2, r0
007b4a10  01 30 a0 e1                                      mov r3, r1
007b4a14  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
007b4a18  25 68 ed eb                                      bl #0x30eab4
007b4a1c  00 20 a0 e1                                      mov r2, r0
007b4a20  01 30 a0 e1                                      mov r3, r1
007b4a24  d0 04 cd e1                                      ldrd r0, r1, [sp, #0x40]
007b4a28  bf 66 ed eb                                      bl #0x30e52c
007b4a2c  00 20 a0 e3                                      mov r2, #0
007b4a30  00 30 a0 e3                                      mov r3, #0
007b4a34  09 65 ed eb                                      bl #0x30de60
007b4a38  00 00 50 e3                                      cmp r0, #0
007b4a3c  a4 ff ff 0a                                      beq #0x7b48d4
007b4a40  05 00 a0 e1                                      mov r0, r5
007b4a44  08 10 9d e5                                      ldr r1, [sp, #8]
007b4a48  08 20 a0 e1                                      mov r2, r8
007b4a4c  18 30 9d e5                                      ldr r3, [sp, #0x18]
007b4a50  f9 ee ff eb                                      bl #0x7b063c
007b4a54  00 00 50 e3                                      cmp r0, #0
007b4a58  9b ff ff 0a                                      beq #0x7b48cc
007b4a5c  50 70 9d e5                                      ldr r7, [sp, #0x50]
007b4a60  54 80 9d e5                                      ldr r8, [sp, #0x54]
007b4a64  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b4a68  58 00 8d e2                                      add r0, sp, #0x58
007b4a6c  07 10 a0 e1                                      mov r1, r7
007b4a70  08 20 a0 e1                                      mov r2, r8
007b4a74  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b4a78  00 c0 8d e5                                      str ip, [sp]
007b4a7c  a3 ef ff eb                                      bl #0x7b0910
007b4a80  44 50 97 e5                                      ldr r5, [r7, #0x44]
007b4a84  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b4a88  70 40 8d e2                                      add r4, sp, #0x70
007b4a8c  08 20 a0 e1                                      mov r2, r8
007b4a90  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b4a94  07 10 a0 e1                                      mov r1, r7
007b4a98  04 00 a0 e1                                      mov r0, r4
007b4a9c  00 c0 8d e5                                      str ip, [sp]
007b4aa0  9a ef ff eb                                      bl #0x7b0910
007b4aa4  05 00 a0 e1                                      mov r0, r5
007b4aa8  04 10 a0 e1                                      mov r1, r4
007b4aac  89 fc ff eb                                      bl #0x7b3cd8
007b4ab0  00 00 e0 e3                                      mvn r0, #0
007b4ab4  d4 fe ff ea                                      b #0x7b460c
007b4ab8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
007b4abc  07 50 a0 e1                                      mov r5, r7
007b4ac0  54 80 9d e5                                      ldr r8, [sp, #0x54]
007b4ac4  50 70 9d e5                                      ldr r7, [sp, #0x50]
007b4ac8  00 20 a0 e3                                      mov r2, #0
007b4acc  05 50 84 e0                                      add r5, r4, r5
007b4ad0  0c 30 84 e0                                      add r3, r4, ip
007b4ad4  14 50 8d e5                                      str r5, [sp, #0x14]
007b4ad8  20 20 8d e5                                      str r2, [sp, #0x20]
007b4adc  48 60 9d e5                                      ldr r6, [sp, #0x48]
007b4ae0  28 20 8d e5                                      str r2, [sp, #0x28]
007b4ae4  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
007b4ae8  03 b0 a0 e1                                      mov fp, r3
007b4aec  08 90 8d e5                                      str sb, [sp, #8]
007b4af0  30 70 8d e5                                      str r7, [sp, #0x30]
007b4af4  18 80 8d e5                                      str r8, [sp, #0x18]
007b4af8  1e 00 00 ea                                      b #0x7b4b78
007b4afc  04 00 98 e5                                      ldr r0, [r8, #4]
007b4b00  04 10 9b e5                                      ldr r1, [fp, #4]
007b4b04  20 65 ed eb                                      bl #0x30df8c
007b4b08  00 00 50 e3                                      cmp r0, #0
007b4b0c  28 00 00 0a                                      beq #0x7b4bb4
007b4b10  20 20 9d e5                                      ldr r2, [sp, #0x20]
007b4b14  01 20 42 e2                                      sub r2, r2, #1
007b4b18  20 20 8d e5                                      str r2, [sp, #0x20]
007b4b1c  08 80 97 e5                                      ldr r8, [r7, #8]
007b4b20  14 10 a0 e3                                      mov r1, #0x14
007b4b24  0a 00 a0 e1                                      mov r0, sl
007b4b28  91 08 08 e0                                      mul r8, r1, r8
007b4b2c  08 70 94 e7                                      ldr r7, [r4, r8]
007b4b30  08 80 84 e0                                      add r8, r4, r8
007b4b34  07 10 a0 e1                                      mov r1, r7
007b4b38  13 65 ed eb                                      bl #0x30df8c
007b4b3c  00 00 50 e3                                      cmp r0, #0
007b4b40  2a 00 00 0a                                      beq #0x7b4bf0
007b4b44  04 00 98 e5                                      ldr r0, [r8, #4]
007b4b48  04 10 9b e5                                      ldr r1, [fp, #4]
007b4b4c  0e 65 ed eb                                      bl #0x30df8c
007b4b50  00 00 50 e3                                      cmp r0, #0
007b4b54  25 00 00 0a                                      beq #0x7b4bf0
007b4b58  20 20 9d e5                                      ldr r2, [sp, #0x20]
007b4b5c  01 20 82 e2                                      add r2, r2, #1
007b4b60  20 20 8d e5                                      str r2, [sp, #0x20]
007b4b64  08 10 9d e5                                      ldr r1, [sp, #8]
007b4b68  01 60 86 e2                                      add r6, r6, #1
007b4b6c  14 50 85 e2                                      add r5, r5, #0x14
007b4b70  06 00 51 e1                                      cmp r1, r6
007b4b74  2c 00 00 0a                                      beq #0x7b4c2c
007b4b78  05 70 84 e0                                      add r7, r4, r5
007b4b7c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007b4b80  14 10 a0 e3                                      mov r1, #0x14
007b4b84  91 03 03 e0                                      mul r3, r1, r3
007b4b88  03 80 84 e0                                      add r8, r4, r3
007b4b8c  10 20 98 e5                                      ldr r2, [r8, #0x10]
007b4b90  02 00 52 e3                                      cmp r2, #2
007b4b94  f2 ff ff 0a                                      beq #0x7b4b64
007b4b98  03 90 94 e7                                      ldr sb, [r4, r3]
007b4b9c  00 a0 9b e5                                      ldr sl, [fp]
007b4ba0  09 00 a0 e1                                      mov r0, sb
007b4ba4  0a 10 a0 e1                                      mov r1, sl
007b4ba8  f7 64 ed eb                                      bl #0x30df8c
007b4bac  00 00 50 e3                                      cmp r0, #0
007b4bb0  d1 ff ff 1a                                      bne #0x7b4afc
007b4bb4  14 20 9d e5                                      ldr r2, [sp, #0x14]
007b4bb8  09 00 a0 e1                                      mov r0, sb
007b4bbc  00 10 92 e5                                      ldr r1, [r2]
007b4bc0  f1 64 ed eb                                      bl #0x30df8c
007b4bc4  00 00 50 e3                                      cmp r0, #0
007b4bc8  d3 ff ff 0a                                      beq #0x7b4b1c
007b4bcc  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b4bd0  04 00 98 e5                                      ldr r0, [r8, #4]
007b4bd4  04 10 93 e5                                      ldr r1, [r3, #4]
007b4bd8  eb 64 ed eb                                      bl #0x30df8c
007b4bdc  00 00 50 e3                                      cmp r0, #0
007b4be0  28 c0 9d 15                                      ldrne ip, [sp, #0x28]
007b4be4  01 c0 8c 12                                      addne ip, ip, #1
007b4be8  28 c0 8d 15                                      strne ip, [sp, #0x28]
007b4bec  ca ff ff ea                                      b #0x7b4b1c
007b4bf0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b4bf4  07 00 a0 e1                                      mov r0, r7
007b4bf8  00 10 93 e5                                      ldr r1, [r3]
007b4bfc  e2 64 ed eb                                      bl #0x30df8c
007b4c00  00 00 50 e3                                      cmp r0, #0
007b4c04  d6 ff ff 0a                                      beq #0x7b4b64
007b4c08  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b4c0c  04 00 98 e5                                      ldr r0, [r8, #4]
007b4c10  04 10 93 e5                                      ldr r1, [r3, #4]
007b4c14  dc 64 ed eb                                      bl #0x30df8c
007b4c18  00 00 50 e3                                      cmp r0, #0
007b4c1c  28 c0 9d 15                                      ldrne ip, [sp, #0x28]
007b4c20  01 c0 4c 12                                      subne ip, ip, #1
007b4c24  28 c0 8d 15                                      strne ip, [sp, #0x28]
007b4c28  cd ff ff ea                                      b #0x7b4b64
007b4c2c  20 20 9d e5                                      ldr r2, [sp, #0x20]
007b4c30  28 30 9d e5                                      ldr r3, [sp, #0x28]
007b4c34  30 70 9d e5                                      ldr r7, [sp, #0x30]
007b4c38  18 80 9d e5                                      ldr r8, [sp, #0x18]
007b4c3c  00 00 52 e3                                      cmp r2, #0
007b4c40  00 00 53 d3                                      cmple r3, #0
007b4c44  3a 00 00 da                                      ble #0x7b4d34
007b4c48  07 00 a0 e1                                      mov r0, r7
007b4c4c  08 10 a0 e1                                      mov r1, r8
007b4c50  10 20 9d e5                                      ldr r2, [sp, #0x10]
007b4c54  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007b4c58  a7 ef ff eb                                      bl #0x7b0afc
007b4c5c  00 00 50 e3                                      cmp r0, #0
007b4c60  3c 00 9d 05                                      ldreq r0, [sp, #0x3c]
007b4c64  68 fe ff 0a                                      beq #0x7b460c
007b4c68  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b4c6c  58 00 8d e2                                      add r0, sp, #0x58
007b4c70  07 10 a0 e1                                      mov r1, r7
007b4c74  08 20 a0 e1                                      mov r2, r8
007b4c78  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b4c7c  00 c0 8d e5                                      str ip, [sp]
007b4c80  22 ef ff eb                                      bl #0x7b0910
007b4c84  44 50 97 e5                                      ldr r5, [r7, #0x44]
007b4c88  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b4c8c  60 40 8d e2                                      add r4, sp, #0x60
007b4c90  08 20 a0 e1                                      mov r2, r8
007b4c94  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b4c98  07 10 a0 e1                                      mov r1, r7
007b4c9c  04 00 a0 e1                                      mov r0, r4
007b4ca0  00 c0 8d e5                                      str ip, [sp]
007b4ca4  19 ef ff eb                                      bl #0x7b0910
007b4ca8  05 00 a0 e1                                      mov r0, r5
007b4cac  04 10 a0 e1                                      mov r1, r4
007b4cb0  ac fd ff eb                                      bl #0x7b4368
007b4cb4  00 00 e0 e3                                      mvn r0, #0
007b4cb8  53 fe ff ea                                      b #0x7b460c
007b4cbc  04 20 9a e5                                      ldr r2, [sl, #4]
007b4cc0  08 30 9d e5                                      ldr r3, [sp, #8]
007b4cc4  14 20 8d e5                                      str r2, [sp, #0x14]
007b4cc8  04 00 93 e5                                      ldr r0, [r3, #4]
007b4ccc  02 10 a0 e1                                      mov r1, r2
007b4cd0  ad 64 ed eb                                      bl #0x30df8c
007b4cd4  00 00 50 e3                                      cmp r0, #0
007b4cd8  5d fe ff 0a                                      beq #0x7b4654
007b4cdc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007b4ce0  02 30 4c e2                                      sub r3, ip, #2
007b4ce4  9b 03 0b e0                                      mul fp, fp, r3
007b4ce8  48 c0 8d e5                                      str ip, [sp, #0x48]
007b4cec  04 00 00 ea                                      b #0x7b4d04
007b4cf0  04 00 93 e5                                      ldr r0, [r3, #4]
007b4cf4  a4 64 ed eb                                      bl #0x30df8c
007b4cf8  00 00 50 e3                                      cmp r0, #0
007b4cfc  14 b0 4b e2                                      sub fp, fp, #0x14
007b4d00  55 fe ff 0a                                      beq #0x7b465c
007b4d04  48 10 9d e5                                      ldr r1, [sp, #0x48]
007b4d08  09 00 a0 e1                                      mov r0, sb
007b4d0c  01 10 51 e2                                      subs r1, r1, #1
007b4d10  48 10 8d e5                                      str r1, [sp, #0x48]
007b4d14  50 fe ff 0a                                      beq #0x7b465c
007b4d18  0b 10 94 e7                                      ldr r1, [r4, fp]
007b4d1c  9a 64 ed eb                                      bl #0x30df8c
007b4d20  00 00 50 e3                                      cmp r0, #0
007b4d24  14 10 9d e5                                      ldr r1, [sp, #0x14]
007b4d28  0b 30 84 e0                                      add r3, r4, fp
007b4d2c  4a fe ff 0a                                      beq #0x7b465c
007b4d30  ee ff ff ea                                      b #0x7b4cf0
007b4d34  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b4d38  58 00 8d e2                                      add r0, sp, #0x58
007b4d3c  07 10 a0 e1                                      mov r1, r7
007b4d40  08 20 a0 e1                                      mov r2, r8
007b4d44  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b4d48  00 c0 8d e5                                      str ip, [sp]
007b4d4c  ef ee ff eb                                      bl #0x7b0910
007b4d50  44 50 97 e5                                      ldr r5, [r7, #0x44]
007b4d54  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b4d58  68 40 8d e2                                      add r4, sp, #0x68
007b4d5c  08 20 a0 e1                                      mov r2, r8
007b4d60  10 30 9d e5                                      ldr r3, [sp, #0x10]
007b4d64  07 10 a0 e1                                      mov r1, r7
007b4d68  04 00 a0 e1                                      mov r0, r4
007b4d6c  00 c0 8d e5                                      str ip, [sp]
007b4d70  e6 ee ff eb                                      bl #0x7b0910
007b4d74  05 00 a0 e1                                      mov r0, r5
007b4d78  04 10 a0 e1                                      mov r1, r4
007b4d7c  eb fc ff eb                                      bl #0x7b4130
007b4d80  00 00 e0 e3                                      mvn r0, #0
007b4d84  20 fe ff ea                                      b #0x7b460c

; FUNCTION 0x007b4d88, declared_size=784, range_size=784, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E17find_and_clip_earEPNS4_8tristateE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::find_and_clip_ear(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate*)
; decoder-mode: arm
007b4d88  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b4d8c  38 40 90 e5                                      ldr r4, [r0, #0x38]
007b4d90  08 c0 90 e5                                      ldr ip, [r0, #8]
007b4d94  1c d0 4d e2                                      sub sp, sp, #0x1c
007b4d98  00 50 a0 e1                                      mov r5, r0
007b4d9c  14 80 a0 e3                                      mov r8, #0x14
007b4da0  0c 00 54 e1                                      cmp r4, ip
007b4da4  98 04 07 e0                                      mul r7, r8, r4
007b4da8  01 30 84 e2                                      add r3, r4, #1
007b4dac  15 00 00 aa                                      bge #0x7b4e08
007b4db0  04 20 95 e5                                      ldr r2, [r5, #4]
007b4db4  14 a0 a0 e3                                      mov sl, #0x14
007b4db8  07 20 82 e0                                      add r2, r2, r7
007b4dbc  0c 60 92 e5                                      ldr r6, [r2, #0xc]
007b4dc0  38 30 85 e5                                      str r3, [r5, #0x38]
007b4dc4  10 20 92 e5                                      ldr r2, [r2, #0x10]
007b4dc8  02 00 52 e3                                      cmp r2, #2
007b4dcc  10 00 00 0a                                      beq #0x7b4e14
007b4dd0  04 00 56 e1                                      cmp r6, r4
007b4dd4  04 20 a0 e1                                      mov r2, r4
007b4dd8  05 00 a0 e1                                      mov r0, r5
007b4ddc  06 10 a0 e1                                      mov r1, r6
007b4de0  0b 00 00 0a                                      beq #0x7b4e14
007b4de4  ee fd ff eb                                      bl #0x7b45a4
007b4de8  00 00 50 e3                                      cmp r0, #0
007b4dec  0a 00 00 aa                                      bge #0x7b4e1c
007b4df0  38 40 95 e5                                      ldr r4, [r5, #0x38]
007b4df4  08 c0 95 e5                                      ldr ip, [r5, #8]
007b4df8  98 04 07 e0                                      mul r7, r8, r4
007b4dfc  0c 00 54 e1                                      cmp r4, ip
007b4e00  01 30 84 e2                                      add r3, r4, #1
007b4e04  e9 ff ff ba                                      blt #0x7b4db0
007b4e08  00 00 a0 e3                                      mov r0, #0
007b4e0c  1c d0 8d e2                                      add sp, sp, #0x1c
007b4e10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b4e14  03 40 a0 e1                                      mov r4, r3
007b4e18  e0 ff ff ea                                      b #0x7b4da0
007b4e1c  04 30 95 e5                                      ldr r3, [r5, #4]
007b4e20  9a 00 01 e0                                      mul r1, sl, r0
007b4e24  00 90 a0 e1                                      mov sb, r0
007b4e28  08 10 8d e5                                      str r1, [sp, #8]
007b4e2c  01 20 83 e0                                      add r2, r3, r1
007b4e30  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007b4e34  00 80 a0 e1                                      mov r8, r0
007b4e38  06 b0 a0 e1                                      mov fp, r6
007b4e3c  02 00 54 e1                                      cmp r4, r2
007b4e40  10 40 8d e5                                      str r4, [sp, #0x10]
007b4e44  0e 00 00 0a                                      beq #0x7b4e84
007b4e48  07 10 83 e0                                      add r1, r3, r7
007b4e4c  08 10 91 e5                                      ldr r1, [r1, #8]
007b4e50  9a 32 23 e0                                      mla r3, sl, r2, r3
007b4e54  08 10 83 e5                                      str r1, [r3, #8]
007b4e58  04 30 95 e5                                      ldr r3, [r5, #4]
007b4e5c  9a 31 23 e0                                      mla r3, sl, r1, r3
007b4e60  0c 20 83 e5                                      str r2, [r3, #0xc]
007b4e64  04 30 95 e5                                      ldr r3, [r5, #4]
007b4e68  08 20 9d e5                                      ldr r2, [sp, #8]
007b4e6c  02 30 83 e0                                      add r3, r3, r2
007b4e70  0c 40 83 e5                                      str r4, [r3, #0xc]
007b4e74  04 30 95 e5                                      ldr r3, [r5, #4]
007b4e78  07 30 83 e0                                      add r3, r3, r7
007b4e7c  08 00 83 e5                                      str r0, [r3, #8]
007b4e80  04 30 95 e5                                      ldr r3, [r5, #4]
007b4e84  07 30 83 e0                                      add r3, r3, r7
007b4e88  02 20 a0 e3                                      mov r2, #2
007b4e8c  10 20 83 e5                                      str r2, [r3, #0x10]
007b4e90  04 30 95 e5                                      ldr r3, [r5, #4]
007b4e94  14 20 a0 e3                                      mov r2, #0x14
007b4e98  92 06 02 e0                                      mul r2, r2, r6
007b4e9c  07 30 83 e0                                      add r3, r3, r7
007b4ea0  0c 20 8d e5                                      str r2, [sp, #0xc]
007b4ea4  0c 40 83 e5                                      str r4, [r3, #0xc]
007b4ea8  04 30 95 e5                                      ldr r3, [r5, #4]
007b4eac  07 30 83 e0                                      add r3, r3, r7
007b4eb0  08 40 83 e5                                      str r4, [r3, #8]
007b4eb4  04 30 95 e5                                      ldr r3, [r5, #4]
007b4eb8  02 30 83 e0                                      add r3, r3, r2
007b4ebc  08 90 83 e5                                      str sb, [r3, #8]
007b4ec0  08 a0 9d e5                                      ldr sl, [sp, #8]
007b4ec4  04 30 95 e5                                      ldr r3, [r5, #4]
007b4ec8  0a 30 83 e0                                      add r3, r3, sl
007b4ecc  0c 60 83 e5                                      str r6, [r3, #0xc]
007b4ed0  38 30 95 e5                                      ldr r3, [r5, #0x38]
007b4ed4  06 00 53 e1                                      cmp r3, r6
007b4ed8  03 60 a0 d1                                      movle r6, r3
007b4edc  38 60 85 c5                                      strgt r6, [r5, #0x38]
007b4ee0  06 00 54 e1                                      cmp r4, r6
007b4ee4  06 40 a0 a1                                      movge r4, r6
007b4ee8  38 40 85 b5                                      strlt r4, [r5, #0x38]
007b4eec  09 00 54 e1                                      cmp r4, sb
007b4ef0  04 90 a0 d1                                      movle sb, r4
007b4ef4  38 90 85 c5                                      strgt sb, [r5, #0x38]
007b4ef8  00 00 59 e3                                      cmp sb, #0
007b4efc  29 00 00 da                                      ble #0x7b4fa8
007b4f00  14 20 a0 e3                                      mov r2, #0x14
007b4f04  01 a0 49 e2                                      sub sl, sb, #1
007b4f08  04 40 95 e5                                      ldr r4, [r5, #4]
007b4f0c  92 0a 06 e0                                      mul r6, r2, sl
007b4f10  92 09 03 e0                                      mul r3, r2, sb
007b4f14  06 00 94 e7                                      ldr r0, [r4, r6]
007b4f18  03 10 94 e7                                      ldr r1, [r4, r3]
007b4f1c  03 30 84 e0                                      add r3, r4, r3
007b4f20  14 30 8d e5                                      str r3, [sp, #0x14]
007b4f24  04 20 8d e5                                      str r2, [sp, #4]
007b4f28  17 64 ed eb                                      bl #0x30df8c
007b4f2c  00 00 50 e3                                      cmp r0, #0
007b4f30  06 30 84 e0                                      add r3, r4, r6
007b4f34  1b 00 00 0a                                      beq #0x7b4fa8
007b4f38  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007b4f3c  04 00 93 e5                                      ldr r0, [r3, #4]
007b4f40  04 10 9c e5                                      ldr r1, [ip, #4]
007b4f44  10 64 ed eb                                      bl #0x30df8c
007b4f48  00 00 50 e3                                      cmp r0, #0
007b4f4c  04 20 9d e5                                      ldr r2, [sp, #4]
007b4f50  14 00 00 0a                                      beq #0x7b4fa8
007b4f54  02 90 49 e2                                      sub sb, sb, #2
007b4f58  92 09 09 e0                                      mul sb, r2, sb
007b4f5c  06 00 00 ea                                      b #0x7b4f7c
007b4f60  04 00 92 e5                                      ldr r0, [r2, #4]
007b4f64  04 10 93 e5                                      ldr r1, [r3, #4]
007b4f68  07 64 ed eb                                      bl #0x30df8c
007b4f6c  00 00 50 e3                                      cmp r0, #0
007b4f70  14 60 46 e2                                      sub r6, r6, #0x14
007b4f74  0b 00 00 0a                                      beq #0x7b4fa8
007b4f78  01 a0 4a e2                                      sub sl, sl, #1
007b4f7c  00 00 5a e3                                      cmp sl, #0
007b4f80  38 a0 85 e5                                      str sl, [r5, #0x38]
007b4f84  07 00 00 0a                                      beq #0x7b4fa8
007b4f88  09 00 94 e7                                      ldr r0, [r4, sb]
007b4f8c  06 10 94 e7                                      ldr r1, [r4, r6]
007b4f90  fd 63 ed eb                                      bl #0x30df8c
007b4f94  00 00 50 e3                                      cmp r0, #0
007b4f98  09 20 84 e0                                      add r2, r4, sb
007b4f9c  06 30 84 e0                                      add r3, r4, r6
007b4fa0  14 90 49 e2                                      sub sb, sb, #0x14
007b4fa4  ed ff ff 1a                                      bne #0x7b4f60
007b4fa8  08 00 5b e1                                      cmp fp, r8
007b4fac  2e 00 00 0a                                      beq #0x7b506c
007b4fb0  10 10 9d e5                                      ldr r1, [sp, #0x10]
007b4fb4  08 00 51 e1                                      cmp r1, r8
007b4fb8  2b 00 00 0a                                      beq #0x7b506c
007b4fbc  00 60 95 e5                                      ldr r6, [r5]
007b4fc0  04 30 95 e5                                      ldr r3, [r5, #4]
007b4fc4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007b4fc8  00 40 96 e5                                      ldr r4, [r6]
007b4fcc  08 80 9d e5                                      ldr r8, [sp, #8]
007b4fd0  02 00 83 e0                                      add r0, r3, r2
007b4fd4  04 50 94 e5                                      ldr r5, [r4, #4]
007b4fd8  0c a0 9d e5                                      ldr sl, [sp, #0xc]
007b4fdc  04 00 90 e5                                      ldr r0, [r0, #4]
007b4fe0  07 10 83 e0                                      add r1, r3, r7
007b4fe4  08 20 83 e0                                      add r2, r3, r8
007b4fe8  08 c0 93 e7                                      ldr ip, [r3, r8]
007b4fec  0a 90 93 e7                                      ldr sb, [r3, sl]
007b4ff0  06 80 95 e2                                      adds r8, r5, #6
007b4ff4  08 00 8d e5                                      str r0, [sp, #8]
007b4ff8  07 b0 93 e7                                      ldr fp, [r3, r7]
007b4ffc  04 a0 91 e5                                      ldr sl, [r1, #4]
007b5000  04 70 92 e5                                      ldr r7, [r2, #4]
007b5004  1a 00 00 1a                                      bne #0x7b5074
007b5008  00 00 a0 e3                                      mov r0, #0
007b500c  05 51 a0 e1                                      lsl r5, r5, #2
007b5010  00 30 a0 e3                                      mov r3, #0
007b5014  00 10 94 e5                                      ldr r1, [r4]
007b5018  03 20 85 e0                                      add r2, r5, r3
007b501c  04 30 83 e2                                      add r3, r3, #4
007b5020  18 00 53 e3                                      cmp r3, #0x18
007b5024  02 00 81 e7                                      str r0, [r1, r2]
007b5028  f9 ff ff 1a                                      bne #0x7b5014
007b502c  04 80 84 e5                                      str r8, [r4, #4]
007b5030  00 30 96 e5                                      ldr r3, [r6]
007b5034  01 00 a0 e3                                      mov r0, #1
007b5038  04 10 93 e5                                      ldr r1, [r3, #4]
007b503c  00 20 93 e5                                      ldr r2, [r3]
007b5040  01 10 41 e2                                      sub r1, r1, #1
007b5044  01 41 82 e0                                      add r4, r2, r1, lsl #2
007b5048  14 30 44 e2                                      sub r3, r4, #0x14
007b504c  14 90 04 e5                                      str sb, [r4, #-0x14]
007b5050  10 c0 83 e5                                      str ip, [r3, #0x10]
007b5054  08 c0 9d e5                                      ldr ip, [sp, #8]
007b5058  08 b0 83 e5                                      str fp, [r3, #8]
007b505c  0c a0 83 e5                                      str sl, [r3, #0xc]
007b5060  04 c0 83 e5                                      str ip, [r3, #4]
007b5064  01 71 82 e7                                      str r7, [r2, r1, lsl #2]
007b5068  67 ff ff ea                                      b #0x7b4e0c
007b506c  01 00 a0 e3                                      mov r0, #1
007b5070  65 ff ff ea                                      b #0x7b4e0c
007b5074  08 30 94 e5                                      ldr r3, [r4, #8]
007b5078  03 00 58 e1                                      cmp r8, r3
007b507c  e1 ff ff da                                      ble #0x7b5008
007b5080  04 00 a0 e1                                      mov r0, r4
007b5084  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b5088  04 c0 8d e5                                      str ip, [sp, #4]
007b508c  57 13 ff eb                                      bl #0x779df0
007b5090  04 c0 9d e5                                      ldr ip, [sp, #4]
007b5094  db ff ff ea                                      b #0x7b5008

; FUNCTION 0x007b5098, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E17triangulate_planeEPNS4_8tristateE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::triangulate_plane(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate*)
; decoder-mode: arm
007b5098  70 40 2d e9                                      push {r4, r5, r6, lr}
007b509c  00 40 a0 e1                                      mov r4, r0
007b50a0  00 60 a0 e3                                      mov r6, #0
007b50a4  00 50 a0 e3                                      mov r5, #0
007b50a8  04 00 a0 e1                                      mov r0, r4
007b50ac  35 ff ff eb                                      bl #0x7b4d88
007b50b0  00 00 50 e3                                      cmp r0, #0
007b50b4  11 00 00 0a                                      beq #0x7b5100
007b50b8  40 30 94 e5                                      ldr r3, [r4, #0x40]
007b50bc  00 00 53 e3                                      cmp r3, #0
007b50c0  03 00 00 da                                      ble #0x7b50d4
007b50c4  01 30 43 e2                                      sub r3, r3, #1
007b50c8  00 00 53 e3                                      cmp r3, #0
007b50cc  40 30 84 e5                                      str r3, [r4, #0x40]
007b50d0  0b 00 00 0a                                      beq #0x7b5104
007b50d4  44 00 94 e5                                      ldr r0, [r4, #0x44]
007b50d8  00 00 50 e3                                      cmp r0, #0
007b50dc  f1 ff ff 0a                                      beq #0x7b50a8
007b50e0  04 30 90 e5                                      ldr r3, [r0, #4]
007b50e4  00 00 53 e3                                      cmp r3, #0
007b50e8  08 00 00 da                                      ble #0x7b5110
007b50ec  04 60 80 e5                                      str r6, [r0, #4]
007b50f0  04 00 a0 e1                                      mov r0, r4
007b50f4  23 ff ff eb                                      bl #0x7b4d88
007b50f8  00 00 50 e3                                      cmp r0, #0
007b50fc  ed ff ff 1a                                      bne #0x7b50b8
007b5100  70 80 bd e8                                      pop {r4, r5, r6, pc}
007b5104  04 00 a0 e1                                      mov r0, r4
007b5108  70 40 bd e8                                      pop {r4, r5, r6, lr}
007b510c  5d fa ff ea                                      b #0x7b3a88
007b5110  f5 ff ff aa                                      bge #0x7b50ec
007b5114  03 21 a0 e1                                      lsl r2, r3, #2
007b5118  00 10 90 e5                                      ldr r1, [r0]
007b511c  01 30 93 e2                                      adds r3, r3, #1
007b5120  02 50 81 e7                                      str r5, [r1, r2]
007b5124  04 20 82 e2                                      add r2, r2, #4
007b5128  fa ff ff 1a                                      bne #0x7b5118
007b512c  04 60 80 e5                                      str r6, [r0, #4]
007b5130  ee ff ff ea                                      b #0x7b50f0

; FUNCTION 0x007b5134, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E26compute_triangulation_implEPS3_S5_iPNS_5arrayIfEE
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::compute_triangulation_impl(gameswf::ear_clip_triangulate::ear_clip_array_io<float>*, gameswf::ear_clip_triangulate::ear_clip_array_io<float>*, int, gameswf::array<float>*)
; decoder-mode: arm
007b5134  10 40 2d e9                                      push {r4, lr}
007b5138  50 d0 4d e2                                      sub sp, sp, #0x50
007b513c  01 e0 a0 e1                                      mov lr, r1
007b5140  08 40 8d e2                                      add r4, sp, #8
007b5144  02 c0 a0 e1                                      mov ip, r2
007b5148  00 10 a0 e1                                      mov r1, r0
007b514c  00 30 8d e5                                      str r3, [sp]
007b5150  0e 20 a0 e1                                      mov r2, lr
007b5154  0c 30 a0 e1                                      mov r3, ip
007b5158  04 00 a0 e1                                      mov r0, r4
007b515c  00 c0 a0 e3                                      mov ip, #0
007b5160  44 c0 8d e5                                      str ip, [sp, #0x44]
007b5164  08 c0 8d e5                                      str ip, [sp, #8]
007b5168  0c c0 8d e5                                      str ip, [sp, #0xc]
007b516c  10 c0 8d e5                                      str ip, [sp, #0x10]
007b5170  14 c0 8d e5                                      str ip, [sp, #0x14]
007b5174  18 c0 cd e5                                      strb ip, [sp, #0x18]
007b5178  1c c0 8d e5                                      str ip, [sp, #0x1c]
007b517c  20 c0 8d e5                                      str ip, [sp, #0x20]
007b5180  24 c0 8d e5                                      str ip, [sp, #0x24]
007b5184  28 c0 cd e5                                      strb ip, [sp, #0x28]
007b5188  2c c0 8d e5                                      str ip, [sp, #0x2c]
007b518c  40 c0 8d e5                                      str ip, [sp, #0x40]
007b5190  c9 f8 ff eb                                      bl #0x7b34bc
007b5194  04 00 a0 e1                                      mov r0, r4
007b5198  be ff ff eb                                      bl #0x7b5098
007b519c  04 00 a0 e1                                      mov r0, r4
007b51a0  da f7 ff eb                                      bl #0x7b3110
007b51a4  50 d0 8d e2                                      add sp, sp, #0x50
007b51a8  10 80 bd e8                                      pop {r4, pc}
