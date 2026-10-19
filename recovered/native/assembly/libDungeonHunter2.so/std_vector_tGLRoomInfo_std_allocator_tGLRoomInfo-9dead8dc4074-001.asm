; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081ccc4, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<tGLRoomInfo*, std::allocator<tGLRoomInfo*> >
; alias: _ZNSt6vectorIP11tGLRoomInfoSaIS1_EEC1ERKS3_
; demangled: std::vector<tGLRoomInfo*, std::allocator<tGLRoomInfo*> >::vector(std::vector<tGLRoomInfo*, std::allocator<tGLRoomInfo*> > const&)
; decoder-mode: arm
0081ccc4  30 40 2d e9                                      push {r4, r5, lr}
0081ccc8  01 50 a0 e1                                      mov r5, r1
0081cccc  00 30 95 e5                                      ldr r3, [r5]
0081ccd0  04 10 91 e5                                      ldr r1, [r1, #4]
0081ccd4  0c d0 4d e2                                      sub sp, sp, #0xc
0081ccd8  00 40 a0 e1                                      mov r4, r0
0081ccdc  01 10 63 e0                                      rsb r1, r3, r1
0081cce0  00 c0 a0 e3                                      mov ip, #0
0081cce4  41 11 a0 e1                                      asr r1, r1, #2
0081cce8  08 20 8d e2                                      add r2, sp, #8
0081ccec  04 10 22 e5                                      str r1, [r2, #-4]!
0081ccf0  00 c0 84 e5                                      str ip, [r4]
0081ccf4  04 c0 84 e5                                      str ip, [r4, #4]
0081ccf8  08 c0 a0 e5                                      str ip, [r0, #8]!
0081ccfc  d4 ff ff eb                                      bl #0x81cc54
0081cd00  04 20 9d e5                                      ldr r2, [sp, #4]
0081cd04  00 00 84 e5                                      str r0, [r4]
0081cd08  04 00 84 e5                                      str r0, [r4, #4]
0081cd0c  02 21 80 e0                                      add r2, r0, r2, lsl #2
0081cd10  08 20 84 e5                                      str r2, [r4, #8]
0081cd14  06 00 95 e8                                      ldm r5, {r1, r2}
0081cd18  00 30 a0 e1                                      mov r3, r0
0081cd1c  02 00 51 e1                                      cmp r1, r2
0081cd20  03 00 00 0a                                      beq #0x81cd34
0081cd24  02 50 61 e0                                      rsb r5, r1, r2
0081cd28  05 20 a0 e1                                      mov r2, r5
0081cd2c  cd c6 eb eb                                      bl #0x30e868
0081cd30  05 30 80 e0                                      add r3, r0, r5
0081cd34  04 30 84 e5                                      str r3, [r4, #4]
0081cd38  04 00 a0 e1                                      mov r0, r4
0081cd3c  0c d0 8d e2                                      add sp, sp, #0xc
0081cd40  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00821760, declared_size=72, range_size=72, mode=arm
; class-group: std::vector<tGLRoomInfo*, std::allocator<tGLRoomInfo*> >
; alias: _ZNSt6vectorIP11tGLRoomInfoSaIS1_EEC1Ej.clone.1
; demangled: std::vector<tGLRoomInfo*, std::allocator<tGLRoomInfo*> >::vector(unsigned int) [clone .clone.1]
; decoder-mode: arm
00821760  10 40 2d e9                                      push {r4, lr}
00821764  08 d0 4d e2                                      sub sp, sp, #8
00821768  00 40 a0 e1                                      mov r4, r0
0082176c  00 10 a0 e3                                      mov r1, #0
00821770  08 20 8d e2                                      add r2, sp, #8
00821774  04 10 22 e5                                      str r1, [r2, #-4]!
00821778  00 10 84 e5                                      str r1, [r4]
0082177c  04 10 84 e5                                      str r1, [r4, #4]
00821780  08 10 a0 e5                                      str r1, [r0, #8]!
00821784  32 ed ff eb                                      bl #0x81cc54
00821788  04 30 9d e5                                      ldr r3, [sp, #4]
0082178c  00 00 84 e5                                      str r0, [r4]
00821790  04 00 84 e5                                      str r0, [r4, #4]
00821794  03 01 80 e0                                      add r0, r0, r3, lsl #2
00821798  08 00 84 e5                                      str r0, [r4, #8]
0082179c  04 00 a0 e1                                      mov r0, r4
008217a0  08 d0 8d e2                                      add sp, sp, #8
008217a4  10 80 bd e8                                      pop {r4, pc}
