; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d0794, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::entry
; alias: _ZN7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE5entry5clearEv
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::entry::clear()
; decoder-mode: arm
007d0794  10 40 2d e9                                      push {r4, lr}
007d0798  d8 30 d0 e1                                      ldrsb r3, [r0, #8]
007d079c  00 40 a0 e1                                      mov r4, r0
007d07a0  01 00 73 e3                                      cmn r3, #1
007d07a4  08 00 00 0a                                      beq #0x7d07cc
007d07a8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
007d07ac  00 00 50 e3                                      cmp r0, #0
007d07b0  00 00 00 0a                                      beq #0x7d07b8
007d07b4  a1 26 fe eb                                      bl #0x75a240
007d07b8  00 30 a0 e3                                      mov r3, #0
007d07bc  04 30 84 e5                                      str r3, [r4, #4]
007d07c0  01 30 e0 e3                                      mvn r3, #1
007d07c4  00 30 84 e5                                      str r3, [r4]
007d07c8  10 80 bd e8                                      pop {r4, pc}
007d07cc  14 00 90 e5                                      ldr r0, [r0, #0x14]
007d07d0  10 10 94 e5                                      ldr r1, [r4, #0x10]
007d07d4  d7 08 fe eb                                      bl #0x752b38
007d07d8  f2 ff ff ea                                      b #0x7d07a8

; FUNCTION 0x007d081c, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::entry
; alias: _ZN7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE5entryC1ERKS1_RKS4_ii
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::entry::entry(gameswf::tu_string const&, gameswf::smart_ptr<gameswf::face_entity> const&, int, int)
; decoder-mode: arm
007d081c  70 40 2d e9                                      push {r4, r5, r6, lr}
007d0820  00 30 80 e5                                      str r3, [r0]
007d0824  10 30 9d e5                                      ldr r3, [sp, #0x10]
007d0828  00 40 a0 e1                                      mov r4, r0
007d082c  02 50 a0 e1                                      mov r5, r2
007d0830  04 30 80 e5                                      str r3, [r0, #4]
007d0834  08 00 80 e2                                      add r0, r0, #8
007d0838  fb 09 fe eb                                      bl #0x75302c
007d083c  00 00 95 e5                                      ldr r0, [r5]
007d0840  00 00 50 e3                                      cmp r0, #0
007d0844  1c 00 84 e5                                      str r0, [r4, #0x1c]
007d0848  00 00 00 0a                                      beq #0x7d0850
007d084c  04 25 fe eb                                      bl #0x759c64
007d0850  04 00 a0 e1                                      mov r0, r4
007d0854  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d0858, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::entry
; alias: _ZN7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE5entryC1ERKS8_
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::entry::entry(gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::entry const&)
; decoder-mode: arm
007d0858  70 40 2d e9                                      push {r4, r5, r6, lr}
007d085c  00 30 91 e5                                      ldr r3, [r1]
007d0860  00 40 a0 e1                                      mov r4, r0
007d0864  01 50 a0 e1                                      mov r5, r1
007d0868  00 30 84 e5                                      str r3, [r4]
007d086c  04 30 91 e5                                      ldr r3, [r1, #4]
007d0870  08 00 80 e2                                      add r0, r0, #8
007d0874  08 10 81 e2                                      add r1, r1, #8
007d0878  04 30 84 e5                                      str r3, [r4, #4]
007d087c  ea 09 fe eb                                      bl #0x75302c
007d0880  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007d0884  00 00 50 e3                                      cmp r0, #0
007d0888  1c 00 84 e5                                      str r0, [r4, #0x1c]
007d088c  00 00 00 0a                                      beq #0x7d0894
007d0890  f3 24 fe eb                                      bl #0x759c64
007d0894  04 00 a0 e1                                      mov r0, r4
007d0898  70 80 bd e8                                      pop {r4, r5, r6, pc}
