; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e0804, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::ICodeShaderManager::CShaderCodeManager
; alias: _ZN6glitch5video18ICodeShaderManager18CShaderCodeManagerC1Ev
; demangled: glitch::video::ICodeShaderManager::CShaderCodeManager::CShaderCodeManager()
; decoder-mode: arm
006e0804  10 40 2d e9                                      push {r4, lr}
006e0808  00 40 a0 e1                                      mov r4, r0
006e080c  ef ff ff eb                                      bl #0x6e07d0
006e0810  04 00 a0 e1                                      mov r0, r4
006e0814  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e0818, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::ICodeShaderManager::CShaderCodeManager
; alias: _ZN6glitch5video18ICodeShaderManager18CShaderCodeManagerC2Ev
; demangled: glitch::video::ICodeShaderManager::CShaderCodeManager::CShaderCodeManager()
; decoder-mode: arm
006e0818  10 40 2d e9                                      push {r4, lr}
006e081c  00 40 a0 e1                                      mov r4, r0
006e0820  ea ff ff eb                                      bl #0x6e07d0
006e0824  04 00 a0 e1                                      mov r0, r4
006e0828  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e1758, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::ICodeShaderManager::CShaderCodeManager
; alias: _ZN6glitch5video18ICodeShaderManager18CShaderCodeManagerD1Ev
; demangled: glitch::video::ICodeShaderManager::CShaderCodeManager::~CShaderCodeManager()
; decoder-mode: arm
006e1758  10 40 2d e9                                      push {r4, lr}
006e175c  00 40 a0 e1                                      mov r4, r0
006e1760  ec ff ff eb                                      bl #0x6e1718
006e1764  04 00 a0 e1                                      mov r0, r4
006e1768  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e1828, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::ICodeShaderManager::CShaderCodeManager
; alias: _ZN6glitch5video18ICodeShaderManager18CShaderCodeManagerD2Ev
; demangled: glitch::video::ICodeShaderManager::CShaderCodeManager::~CShaderCodeManager()
; decoder-mode: arm
006e1828  10 40 2d e9                                      push {r4, lr}
006e182c  00 40 a0 e1                                      mov r4, r0
006e1830  b8 ff ff eb                                      bl #0x6e1718
006e1834  04 00 a0 e1                                      mov r0, r4
006e1838  10 80 bd e8                                      pop {r4, pc}
