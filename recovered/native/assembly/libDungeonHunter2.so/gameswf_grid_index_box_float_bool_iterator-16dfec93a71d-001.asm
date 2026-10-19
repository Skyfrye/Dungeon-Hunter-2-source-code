; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b131c, declared_size=304, range_size=304, mode=arm
; class-group: gameswf::grid_index_box<float, bool>::iterator
; alias: _ZN7gameswf14grid_index_boxIfbE8iterator7advanceEv
; demangled: gameswf::grid_index_box<float, bool>::iterator::advance()
; decoder-mode: arm
007b131c  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
007b1320  00 60 90 e5                                      ldr r6, [r0]
007b1324  28 70 90 e5                                      ldr r7, [r0, #0x28]
007b1328  24 c0 90 e5                                      ldr ip, [r0, #0x24]
007b132c  10 40 96 e5                                      ldr r4, [r6, #0x10]
007b1330  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
007b1334  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
007b1338  97 c4 24 e0                                      mla r4, r7, r4, ip
007b133c  18 80 96 e5                                      ldr r8, [r6, #0x18]
007b1340  01 30 83 e2                                      add r3, r3, #1
007b1344  04 42 82 e0                                      add r4, r2, r4, lsl #4
007b1348  03 21 a0 e1                                      lsl r2, r3, #2
007b134c  2c 30 80 e5                                      str r3, [r0, #0x2c]
007b1350  04 10 94 e5                                      ldr r1, [r4, #4]
007b1354  01 00 53 e1                                      cmp r3, r1
007b1358  0a 00 00 aa                                      bge #0x7b1388
007b135c  00 10 94 e5                                      ldr r1, [r4]
007b1360  01 30 83 e2                                      add r3, r3, #1
007b1364  02 10 91 e7                                      ldr r1, [r1, r2]
007b1368  04 20 82 e2                                      add r2, r2, #4
007b136c  30 10 80 e5                                      str r1, [r0, #0x30]
007b1370  14 50 91 e5                                      ldr r5, [r1, #0x14]
007b1374  05 00 58 e1                                      cmp r8, r5
007b1378  f3 ff ff 0a                                      beq #0x7b134c
007b137c  14 80 81 e5                                      str r8, [r1, #0x14]
007b1380  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
007b1384  1e ff 2f e1                                      bx lr
007b1388  20 b0 90 e5                                      ldr fp, [r0, #0x20]
007b138c  01 c0 8c e2                                      add ip, ip, #1
007b1390  00 90 a0 e3                                      mov sb, #0
007b1394  07 00 5b e1                                      cmp fp, r7
007b1398  00 80 e0 e3                                      mvn r8, #0
007b139c  30 90 80 e5                                      str sb, [r0, #0x30]
007b13a0  2c 80 80 e5                                      str r8, [r0, #0x2c]
007b13a4  24 c0 80 e5                                      str ip, [r0, #0x24]
007b13a8  1c a0 90 a5                                      ldrge sl, [r0, #0x1c]
007b13ac  f3 ff ff ba                                      blt #0x7b1380
007b13b0  0c 00 5a e1                                      cmp sl, ip
007b13b4  2c 30 90 a5                                      ldrge r3, [r0, #0x2c]
007b13b8  1c 00 00 ba                                      blt #0x7b1430
007b13bc  10 10 96 e5                                      ldr r1, [r6, #0x10]
007b13c0  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
007b13c4  18 50 96 e5                                      ldr r5, [r6, #0x18]
007b13c8  91 c7 2c e0                                      mla ip, r1, r7, ip
007b13cc  01 30 83 e2                                      add r3, r3, #1
007b13d0  0c c2 82 e0                                      add ip, r2, ip, lsl #4
007b13d4  03 21 a0 e1                                      lsl r2, r3, #2
007b13d8  2c 30 80 e5                                      str r3, [r0, #0x2c]
007b13dc  04 10 9c e5                                      ldr r1, [ip, #4]
007b13e0  01 00 53 e1                                      cmp r3, r1
007b13e4  09 00 00 aa                                      bge #0x7b1410
007b13e8  00 10 9c e5                                      ldr r1, [ip]
007b13ec  01 30 83 e2                                      add r3, r3, #1
007b13f0  02 10 91 e7                                      ldr r1, [r1, r2]
007b13f4  04 20 82 e2                                      add r2, r2, #4
007b13f8  30 10 80 e5                                      str r1, [r0, #0x30]
007b13fc  14 40 91 e5                                      ldr r4, [r1, #0x14]
007b1400  04 00 55 e1                                      cmp r5, r4
007b1404  f3 ff ff 0a                                      beq #0x7b13d8
007b1408  14 50 81 e5                                      str r5, [r1, #0x14]
007b140c  db ff ff ea                                      b #0x7b1380
007b1410  24 c0 90 e5                                      ldr ip, [r0, #0x24]
007b1414  30 90 80 e5                                      str sb, [r0, #0x30]
007b1418  2c 80 80 e5                                      str r8, [r0, #0x2c]
007b141c  01 c0 8c e2                                      add ip, ip, #1
007b1420  0c 00 5a e1                                      cmp sl, ip
007b1424  24 c0 80 e5                                      str ip, [r0, #0x24]
007b1428  08 30 a0 e1                                      mov r3, r8
007b142c  e2 ff ff aa                                      bge #0x7b13bc
007b1430  14 c0 90 e5                                      ldr ip, [r0, #0x14]
007b1434  01 70 87 e2                                      add r7, r7, #1
007b1438  07 00 5b e1                                      cmp fp, r7
007b143c  24 c0 80 e5                                      str ip, [r0, #0x24]
007b1440  28 70 80 e5                                      str r7, [r0, #0x28]
007b1444  d9 ff ff aa                                      bge #0x7b13b0
007b1448  cc ff ff ea                                      b #0x7b1380
