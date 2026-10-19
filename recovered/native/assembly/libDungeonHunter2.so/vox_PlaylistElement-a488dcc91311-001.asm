; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00881810, declared_size=36, range_size=36, mode=arm
; class-group: vox::PlaylistElement
; alias: _ZN3vox15PlaylistElementC2Ev
; demangled: vox::PlaylistElement::PlaylistElement()
; decoder-mode: arm
00881810  01 10 a0 e3                                      mov r1, #1
00881814  00 20 a0 e3                                      mov r2, #0
00881818  10 10 80 e5                                      str r1, [r0, #0x10]
0088181c  00 10 e0 e3                                      mvn r1, #0
00881820  00 10 80 e5                                      str r1, [r0]
00881824  0c 20 80 e5                                      str r2, [r0, #0xc]
00881828  04 20 80 e5                                      str r2, [r0, #4]
0088182c  08 20 80 e5                                      str r2, [r0, #8]
00881830  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881834, declared_size=36, range_size=36, mode=arm
; class-group: vox::PlaylistElement
; alias: _ZN3vox15PlaylistElementC1Ev
; demangled: vox::PlaylistElement::PlaylistElement()
; decoder-mode: arm
00881834  01 10 a0 e3                                      mov r1, #1
00881838  00 20 a0 e3                                      mov r2, #0
0088183c  10 10 80 e5                                      str r1, [r0, #0x10]
00881840  00 10 e0 e3                                      mvn r1, #0
00881844  00 10 80 e5                                      str r1, [r0]
00881848  0c 20 80 e5                                      str r2, [r0, #0xc]
0088184c  04 20 80 e5                                      str r2, [r0, #4]
00881850  08 20 80 e5                                      str r2, [r0, #8]
00881854  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881858, declared_size=44, range_size=44, mode=arm
; class-group: vox::PlaylistElement
; alias: _ZN3vox15PlaylistElementC2ERS0_
; demangled: vox::PlaylistElement::PlaylistElement(vox::PlaylistElement&)
; decoder-mode: arm
00881858  00 20 91 e5                                      ldr r2, [r1]
0088185c  00 20 80 e5                                      str r2, [r0]
00881860  04 20 91 e5                                      ldr r2, [r1, #4]
00881864  04 20 80 e5                                      str r2, [r0, #4]
00881868  08 20 91 e5                                      ldr r2, [r1, #8]
0088186c  08 20 80 e5                                      str r2, [r0, #8]
00881870  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00881874  0c 20 80 e5                                      str r2, [r0, #0xc]
00881878  10 20 91 e5                                      ldr r2, [r1, #0x10]
0088187c  10 20 80 e5                                      str r2, [r0, #0x10]
00881880  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881884, declared_size=44, range_size=44, mode=arm
; class-group: vox::PlaylistElement
; alias: _ZN3vox15PlaylistElementC1ERS0_
; demangled: vox::PlaylistElement::PlaylistElement(vox::PlaylistElement&)
; decoder-mode: arm
00881884  00 20 91 e5                                      ldr r2, [r1]
00881888  00 20 80 e5                                      str r2, [r0]
0088188c  04 20 91 e5                                      ldr r2, [r1, #4]
00881890  04 20 80 e5                                      str r2, [r0, #4]
00881894  08 20 91 e5                                      ldr r2, [r1, #8]
00881898  08 20 80 e5                                      str r2, [r0, #8]
0088189c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
008818a0  0c 20 80 e5                                      str r2, [r0, #0xc]
008818a4  10 20 91 e5                                      ldr r2, [r1, #0x10]
008818a8  10 20 80 e5                                      str r2, [r0, #0x10]
008818ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x008818b0, declared_size=36, range_size=36, mode=arm
; class-group: vox::PlaylistElement
; alias: _ZN3vox15PlaylistElement5ResetEv
; demangled: vox::PlaylistElement::Reset()
; decoder-mode: arm
008818b0  01 20 a0 e3                                      mov r2, #1
008818b4  00 30 a0 e3                                      mov r3, #0
008818b8  10 20 80 e5                                      str r2, [r0, #0x10]
008818bc  00 20 e0 e3                                      mvn r2, #0
008818c0  00 20 80 e5                                      str r2, [r0]
008818c4  0c 30 80 e5                                      str r3, [r0, #0xc]
008818c8  04 30 80 e5                                      str r3, [r0, #4]
008818cc  08 30 80 e5                                      str r3, [r0, #8]
008818d0  1e ff 2f e1                                      bx lr
