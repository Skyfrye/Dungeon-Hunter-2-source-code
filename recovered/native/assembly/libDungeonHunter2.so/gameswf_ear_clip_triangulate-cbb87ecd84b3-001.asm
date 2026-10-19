; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b51ac, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::ear_clip_triangulate
; alias: _ZN7gameswf20ear_clip_triangulate7computeEPNS_5arrayIfEEiPKS2_iS3_
; demangled: gameswf::ear_clip_triangulate::compute(gameswf::array<float>*, int, gameswf::array<float> const*, int, gameswf::array<float>*)
; decoder-mode: arm
007b51ac  04 e0 2d e5                                      str lr, [sp, #-4]!
007b51b0  14 d0 4d e2                                      sub sp, sp, #0x14
007b51b4  07 00 8d e8                                      stm sp, {r0, r1, r2}
007b51b8  00 c0 a0 e3                                      mov ip, #0
007b51bc  03 20 a0 e1                                      mov r2, r3
007b51c0  0d 00 a0 e1                                      mov r0, sp
007b51c4  0d 10 a0 e1                                      mov r1, sp
007b51c8  18 30 9d e5                                      ldr r3, [sp, #0x18]
007b51cc  0c c0 8d e5                                      str ip, [sp, #0xc]
007b51d0  d7 ff ff eb                                      bl #0x7b5134
007b51d4  14 d0 8d e2                                      add sp, sp, #0x14
007b51d8  00 80 bd e8                                      ldm sp!, {pc}
