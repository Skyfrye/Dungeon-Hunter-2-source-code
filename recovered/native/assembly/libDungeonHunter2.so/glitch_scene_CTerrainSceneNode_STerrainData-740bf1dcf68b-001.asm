; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d00f4, declared_size=208, range_size=208, mode=arm
; class-group: glitch::scene::CTerrainSceneNode::STerrainData
; alias: _ZN6glitch5scene17CTerrainSceneNode12STerrainDataC1EiiRKNS_4core8vector3dIfEERKNS3_10quaternionES7_
; demangled: glitch::scene::CTerrainSceneNode::STerrainData::STerrainData(int, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006d00f4  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
006d00f8  00 40 a0 e3                                      mov r4, #0
006d00fc  00 40 80 e5                                      str r4, [r0]
006d0100  00 50 93 e5                                      ldr r5, [r3]
006d0104  00 c0 a0 e1                                      mov ip, r0
006d0108  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d010c  04 50 8c e5                                      str r5, [ip, #4]
006d0110  04 50 93 e5                                      ldr r5, [r3, #4]
006d0114  10 a0 8c e2                                      add sl, ip, #0x10
006d0118  01 70 a0 e1                                      mov r7, r1
006d011c  08 50 8c e5                                      str r5, [ip, #8]
006d0120  08 30 93 e5                                      ldr r3, [r3, #8]
006d0124  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
006d0128  02 80 a0 e1                                      mov r8, r2
006d012c  0c 30 8c e5                                      str r3, [ip, #0xc]
006d0130  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006d0134  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
006d0138  00 50 a0 e3                                      mov r5, #0
006d013c  20 50 8c e5                                      str r5, [ip, #0x20]
006d0140  24 50 8c e5                                      str r5, [ip, #0x24]
006d0144  28 50 8c e5                                      str r5, [ip, #0x28]
006d0148  00 10 96 e5                                      ldr r1, [r6]
006d014c  f3 2f 04 e3                                      movw r2, #0x4ff3
006d0150  f3 3f 04 e3                                      movw r3, #0x4ff3
006d0154  2c 10 8c e5                                      str r1, [ip, #0x2c]
006d0158  04 10 96 e5                                      ldr r1, [r6, #4]
006d015c  c3 27 44 e3                                      movt r2, #0x47c3
006d0160  c3 37 4c e3                                      movt r3, #0xc7c3
006d0164  30 10 8c e5                                      str r1, [ip, #0x30]
006d0168  08 10 96 e5                                      ldr r1, [r6, #8]
006d016c  01 a0 47 e2                                      sub sl, r7, #1
006d0170  40 50 8c e5                                      str r5, [ip, #0x40]
006d0174  48 a0 8c e5                                      str sl, [ip, #0x48]
006d0178  34 10 8c e5                                      str r1, [ip, #0x34]
006d017c  50 80 8c e5                                      str r8, [ip, #0x50]
006d0180  38 50 8c e5                                      str r5, [ip, #0x38]
006d0184  3c 50 8c e5                                      str r5, [ip, #0x3c]
006d0188  44 70 8c e5                                      str r7, [ip, #0x44]
006d018c  0c 00 a0 e1                                      mov r0, ip
006d0190  4c 40 8c e5                                      str r4, [ip, #0x4c]
006d0194  54 20 8c e5                                      str r2, [ip, #0x54]
006d0198  5c 20 8c e5                                      str r2, [ip, #0x5c]
006d019c  68 30 8c e5                                      str r3, [ip, #0x68]
006d01a0  78 40 8c e5                                      str r4, [ip, #0x78]
006d01a4  58 20 8c e5                                      str r2, [ip, #0x58]
006d01a8  60 30 8c e5                                      str r3, [ip, #0x60]
006d01ac  64 30 8c e5                                      str r3, [ip, #0x64]
006d01b0  6c 40 8c e5                                      str r4, [ip, #0x6c]
006d01b4  70 40 8c e5                                      str r4, [ip, #0x70]
006d01b8  74 40 8c e5                                      str r4, [ip, #0x74]
006d01bc  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
006d01c0  1e ff 2f e1                                      bx lr
