; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004947f8, declared_size=156, range_size=156, mode=arm
; class-group: std::list<VisualFXManager::AnimFXSetData*, std::allocator<VisualFXManager::AnimFXSetData*> >
; alias: _ZNSt4listIPN15VisualFXManager13AnimFXSetDataESaIS2_EEaSERKS4_
; demangled: std::list<VisualFXManager::AnimFXSetData*, std::allocator<VisualFXManager::AnimFXSetData*> >::operator=(std::list<VisualFXManager::AnimFXSetData*, std::allocator<VisualFXManager::AnimFXSetData*> > const&)
; decoder-mode: arm
004947f8  30 40 2d e9                                      push {r4, r5, lr}
004947fc  01 00 50 e1                                      cmp r0, r1
00494800  14 d0 4d e2                                      sub sp, sp, #0x14
00494804  00 40 a0 e1                                      mov r4, r0
00494808  01 30 a0 e1                                      mov r3, r1
0049480c  13 00 00 0a                                      beq #0x494860
00494810  00 00 90 e5                                      ldr r0, [r0]
00494814  00 20 91 e5                                      ldr r2, [r1]
00494818  06 00 00 ea                                      b #0x494838
0049481c  02 00 53 e1                                      cmp r3, r2
00494820  12 00 00 0a                                      beq #0x494870
00494824  08 c0 92 e5                                      ldr ip, [r2, #8]
00494828  00 10 90 e5                                      ldr r1, [r0]
0049482c  00 20 92 e5                                      ldr r2, [r2]
00494830  08 c0 80 e5                                      str ip, [r0, #8]
00494834  01 00 a0 e1                                      mov r0, r1
00494838  00 00 54 e1                                      cmp r4, r0
0049483c  f6 ff ff 1a                                      bne #0x49481c
00494840  02 00 53 e1                                      cmp r3, r2
00494844  05 00 00 0a                                      beq #0x494860
00494848  10 10 8d e2                                      add r1, sp, #0x10
0049484c  08 40 21 e5                                      str r4, [r1, #-8]!
00494850  0c c0 8d e2                                      add ip, sp, #0xc
00494854  04 00 a0 e1                                      mov r0, r4
00494858  00 c0 8d e5                                      str ip, [sp]
0049485c  f8 fc ff eb                                      bl #0x493c44
00494860  04 00 a0 e1                                      mov r0, r4
00494864  14 d0 8d e2                                      add sp, sp, #0x14
00494868  30 80 bd e8                                      pop {r4, r5, pc}
0049486c  05 00 a0 e1                                      mov r0, r5
00494870  00 50 90 e5                                      ldr r5, [r0]
00494874  04 30 90 e5                                      ldr r3, [r0, #4]
00494878  0c 10 a0 e3                                      mov r1, #0xc
0049487c  00 50 83 e5                                      str r5, [r3]
00494880  04 30 85 e5                                      str r3, [r5, #4]
00494884  9d d1 09 eb                                      bl #0x708f00
00494888  05 00 54 e1                                      cmp r4, r5
0049488c  f6 ff ff 1a                                      bne #0x49486c
00494890  f2 ff ff ea                                      b #0x494860
