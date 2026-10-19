; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f1910, declared_size=112, range_size=112, mode=arm
; class-group: Point3D<float>* std::vector<Point3D<float>, std::allocator<Point3D<float> > >
; alias: _ZNSt6vectorI7Point3DIfESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_RjT_S9_
; demangled: Point3D<float>* std::vector<Point3D<float>, std::allocator<Point3D<float> > >::_M_allocate_and_copy<Point3D<float> const*>(unsigned int&, Point3D<float> const*, Point3D<float> const*)
; decoder-mode: arm
003f1910  70 40 2d e9                                      push {r4, r5, r6, lr}
003f1914  03 50 a0 e1                                      mov r5, r3
003f1918  02 40 a0 e1                                      mov r4, r2
003f191c  05 50 64 e0                                      rsb r5, r4, r5
003f1920  01 20 a0 e1                                      mov r2, r1
003f1924  08 00 80 e2                                      add r0, r0, #8
003f1928  00 10 91 e5                                      ldr r1, [r1]
003f192c  5a 85 fc eb                                      bl #0x312e9c
003f1930  45 31 a0 e1                                      asr r3, r5, #2
003f1934  03 51 83 e0                                      add r5, r3, r3, lsl #2
003f1938  05 52 85 e0                                      add r5, r5, r5, lsl #4
003f193c  05 54 85 e0                                      add r5, r5, r5, lsl #8
003f1940  05 58 85 e0                                      add r5, r5, r5, lsl #16
003f1944  85 50 83 e0                                      add r5, r3, r5, lsl #1
003f1948  00 00 55 e3                                      cmp r5, #0
003f194c  0a 00 00 da                                      ble #0x3f197c
003f1950  00 30 a0 e1                                      mov r3, r0
003f1954  00 20 94 e5                                      ldr r2, [r4]
003f1958  01 50 55 e2                                      subs r5, r5, #1
003f195c  00 20 83 e5                                      str r2, [r3]
003f1960  04 20 94 e5                                      ldr r2, [r4, #4]
003f1964  04 20 83 e5                                      str r2, [r3, #4]
003f1968  08 20 94 e5                                      ldr r2, [r4, #8]
003f196c  0c 40 84 e2                                      add r4, r4, #0xc
003f1970  08 20 83 e5                                      str r2, [r3, #8]
003f1974  0c 30 83 e2                                      add r3, r3, #0xc
003f1978  f5 ff ff 1a                                      bne #0x3f1954
003f197c  70 80 bd e8                                      pop {r4, r5, r6, pc}
