; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a5748, declared_size=280, range_size=280, mode=arm
; class-group: std::vector<unsigned int, std::allocator<unsigned int> >& std::map<unsigned int, std::vector<unsigned int, std::allocator<unsigned int> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >
; alias: _ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEEixIjEERS2_RKT_
; demangled: std::vector<unsigned int, std::allocator<unsigned int> >& std::map<unsigned int, std::vector<unsigned int, std::allocator<unsigned int> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >::operator[]<unsigned int>(unsigned int const&)
; decoder-mode: arm
005a5748  70 40 2d e9                                      push {r4, r5, r6, lr}
005a574c  04 40 90 e5                                      ldr r4, [r0, #4]
005a5750  28 d0 4d e2                                      sub sp, sp, #0x28
005a5754  00 50 a0 e1                                      mov r5, r0
005a5758  00 00 54 e3                                      cmp r4, #0
005a575c  3c 00 00 0a                                      beq #0x5a5854
005a5760  00 10 91 e5                                      ldr r1, [r1]
005a5764  00 20 a0 e1                                      mov r2, r0
005a5768  00 00 00 ea                                      b #0x5a5770
005a576c  03 40 a0 e1                                      mov r4, r3
005a5770  10 30 94 e5                                      ldr r3, [r4, #0x10]
005a5774  03 00 51 e1                                      cmp r1, r3
005a5778  0c 30 94 85                                      ldrhi r3, [r4, #0xc]
005a577c  08 30 94 95                                      ldrls r3, [r4, #8]
005a5780  02 40 a0 81                                      movhi r4, r2
005a5784  04 20 a0 e1                                      mov r2, r4
005a5788  00 00 53 e3                                      cmp r3, #0
005a578c  f6 ff ff 1a                                      bne #0x5a576c
005a5790  04 00 55 e1                                      cmp r5, r4
005a5794  03 00 00 0a                                      beq #0x5a57a8
005a5798  10 30 94 e5                                      ldr r3, [r4, #0x10]
005a579c  04 00 a0 e1                                      mov r0, r4
005a57a0  03 00 51 e1                                      cmp r1, r3
005a57a4  22 00 00 2a                                      bhs #0x5a5834
005a57a8  28 60 8d e2                                      add r6, sp, #0x28
005a57ac  24 10 26 e5                                      str r1, [r6, #-0x24]!
005a57b0  00 30 a0 e3                                      mov r3, #0
005a57b4  14 10 8d e2                                      add r1, sp, #0x14
005a57b8  04 00 86 e2                                      add r0, r6, #4
005a57bc  1c 30 8d e5                                      str r3, [sp, #0x1c]
005a57c0  14 30 8d e5                                      str r3, [sp, #0x14]
005a57c4  18 30 8d e5                                      str r3, [sp, #0x18]
005a57c8  81 fc ff eb                                      bl #0x5a49d4
005a57cc  24 00 8d e2                                      add r0, sp, #0x24
005a57d0  05 10 a0 e1                                      mov r1, r5
005a57d4  06 30 a0 e1                                      mov r3, r6
005a57d8  20 20 8d e2                                      add r2, sp, #0x20
005a57dc  20 40 8d e5                                      str r4, [sp, #0x20]
005a57e0  fb fe ff eb                                      bl #0x5a53d4
005a57e4  08 00 9d e5                                      ldr r0, [sp, #8]
005a57e8  24 40 9d e5                                      ldr r4, [sp, #0x24]
005a57ec  00 00 50 e3                                      cmp r0, #0
005a57f0  05 00 00 0a                                      beq #0x5a580c
005a57f4  10 10 9d e5                                      ldr r1, [sp, #0x10]
005a57f8  01 10 60 e0                                      rsb r1, r0, r1
005a57fc  03 10 c1 e3                                      bic r1, r1, #3
005a5800  80 00 51 e3                                      cmp r1, #0x80
005a5804  10 00 00 8a                                      bhi #0x5a584c
005a5808  bc 8d 05 eb                                      bl #0x708f00
005a580c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005a5810  00 00 50 e3                                      cmp r0, #0
005a5814  05 00 00 0a                                      beq #0x5a5830
005a5818  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005a581c  01 10 60 e0                                      rsb r1, r0, r1
005a5820  03 10 c1 e3                                      bic r1, r1, #3
005a5824  80 00 51 e3                                      cmp r1, #0x80
005a5828  04 00 00 8a                                      bhi #0x5a5840
005a582c  b3 8d 05 eb                                      bl #0x708f00
005a5830  04 00 a0 e1                                      mov r0, r4
005a5834  14 00 80 e2                                      add r0, r0, #0x14
005a5838  28 d0 8d e2                                      add sp, sp, #0x28
005a583c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005a5840  9a a2 f5 eb                                      bl #0x30e2b0
005a5844  04 00 a0 e1                                      mov r0, r4
005a5848  f9 ff ff ea                                      b #0x5a5834
005a584c  97 a2 f5 eb                                      bl #0x30e2b0
005a5850  ed ff ff ea                                      b #0x5a580c
005a5854  00 10 91 e5                                      ldr r1, [r1]
005a5858  00 40 a0 e1                                      mov r4, r0
005a585c  cb ff ff ea                                      b #0x5a5790
