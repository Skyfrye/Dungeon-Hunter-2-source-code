; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053a2d0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui
; alias: _ZN6glitch3gui20createGUIEnvironmentERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_5video12IVideoDriverEPNS_11IOSOperatorE
; demangled: glitch::gui::createGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)
; decoder-mode: arm
0053a2d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053a2d4  00 70 a0 e1                                      mov r7, r0
0053a2d8  01 60 a0 e1                                      mov r6, r1
0053a2dc  76 0f a0 e3                                      mov r0, #0x1d8
0053a2e0  00 10 a0 e3                                      mov r1, #0
0053a2e4  02 50 a0 e1                                      mov r5, r2
0053a2e8  af e7 ff eb                                      bl #0x5341ac
0053a2ec  07 10 a0 e1                                      mov r1, r7
0053a2f0  00 40 a0 e1                                      mov r4, r0
0053a2f4  06 20 a0 e1                                      mov r2, r6
0053a2f8  05 30 a0 e1                                      mov r3, r5
0053a2fc  6f ff ff eb                                      bl #0x53a0c0
0053a300  04 00 a0 e1                                      mov r0, r4
0053a304  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
