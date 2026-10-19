; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d5d0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute6getIntEv
; demangled: glitch::io::IAttribute::getInt()
; decoder-mode: arm
0031d5d0  00 00 a0 e3                                      mov r0, #0
0031d5d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d5d8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8getFloatEv
; demangled: glitch::io::IAttribute::getFloat()
; decoder-mode: arm
0031d5d8  00 00 a0 e3                                      mov r0, #0
0031d5dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d5e0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9getColorfEv
; demangled: glitch::io::IAttribute::getColorf()
; decoder-mode: arm
0031d5e0  fe 25 a0 e3                                      mov r2, #0x3f800000
0031d5e4  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d5e8  00 20 80 e5                                      str r2, [r0]
0031d5ec  04 20 80 e5                                      str r2, [r0, #4]
0031d5f0  08 20 80 e5                                      str r2, [r0, #8]
0031d5f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d5f8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8getColorEv
; demangled: glitch::io::IAttribute::getColor()
; decoder-mode: arm
0031d5f8  ff 30 a0 e3                                      mov r3, #0xff
0031d5fc  00 00 a0 e3                                      mov r0, #0
0031d600  13 00 c7 e7                                      bfi r0, r3, #0, #8
0031d604  13 04 cf e7                                      bfi r0, r3, #8, #8
0031d608  13 08 d7 e7                                      bfi r0, r3, #0x10, #8
0031d60c  08 d0 4d e2                                      sub sp, sp, #8
0031d610  ff 04 80 e3                                      orr r0, r0, #0xff000000
0031d614  08 d0 8d e2                                      add sp, sp, #8
0031d618  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d61c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8getArrayEv
; demangled: glitch::io::IAttribute::getArray()
; decoder-mode: arm
0031d61c  00 20 a0 e3                                      mov r2, #0
0031d620  08 20 80 e5                                      str r2, [r0, #8]
0031d624  00 20 80 e5                                      str r2, [r0]
0031d628  04 20 80 e5                                      str r2, [r0, #4]
0031d62c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d630, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute7getBoolEv
; demangled: glitch::io::IAttribute::getBool()
; decoder-mode: arm
0031d630  00 00 a0 e3                                      mov r0, #0
0031d634  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d638, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9getBinaryEPvi
; demangled: glitch::io::IAttribute::getBinary(void*, int)
; decoder-mode: arm
0031d638  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d63c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11getVector3dEv
; demangled: glitch::io::IAttribute::getVector3d()
; decoder-mode: arm
0031d63c  00 20 a0 e3                                      mov r2, #0
0031d640  08 20 80 e5                                      str r2, [r0, #8]
0031d644  00 20 80 e5                                      str r2, [r0]
0031d648  04 20 80 e5                                      str r2, [r0, #4]
0031d64c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d650, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11getVector4dEv
; demangled: glitch::io::IAttribute::getVector4d()
; decoder-mode: arm
0031d650  00 20 a0 e3                                      mov r2, #0
0031d654  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d658  00 20 80 e5                                      str r2, [r0]
0031d65c  04 20 80 e5                                      str r2, [r0, #4]
0031d660  08 20 80 e5                                      str r2, [r0, #8]
0031d664  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d668, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11getPositionEv
; demangled: glitch::io::IAttribute::getPosition()
; decoder-mode: arm
0031d668  00 20 a0 e3                                      mov r2, #0
0031d66c  04 20 80 e5                                      str r2, [r0, #4]
0031d670  00 20 80 e5                                      str r2, [r0]
0031d674  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d678, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute7getRectEv
; demangled: glitch::io::IAttribute::getRect()
; decoder-mode: arm
0031d678  00 20 a0 e3                                      mov r2, #0
0031d67c  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d680  00 20 80 e5                                      str r2, [r0]
0031d684  04 20 80 e5                                      str r2, [r0, #4]
0031d688  08 20 80 e5                                      str r2, [r0, #8]
0031d68c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d690, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute13getQuaternionEv
; demangled: glitch::io::IAttribute::getQuaternion()
; decoder-mode: arm
0031d690  00 20 a0 e3                                      mov r2, #0
0031d694  fe 15 a0 e3                                      mov r1, #0x3f800000
0031d698  08 20 80 e5                                      str r2, [r0, #8]
0031d69c  0c 10 80 e5                                      str r1, [r0, #0xc]
0031d6a0  00 20 80 e5                                      str r2, [r0]
0031d6a4  04 20 80 e5                                      str r2, [r0, #4]
0031d6a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d6ac, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11getTriangleEv
; demangled: glitch::io::IAttribute::getTriangle()
; decoder-mode: arm
0031d6ac  00 20 a0 e3                                      mov r2, #0
0031d6b0  20 20 80 e5                                      str r2, [r0, #0x20]
0031d6b4  00 20 80 e5                                      str r2, [r0]
0031d6b8  04 20 80 e5                                      str r2, [r0, #4]
0031d6bc  08 20 80 e5                                      str r2, [r0, #8]
0031d6c0  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d6c4  10 20 80 e5                                      str r2, [r0, #0x10]
0031d6c8  14 20 80 e5                                      str r2, [r0, #0x14]
0031d6cc  18 20 80 e5                                      str r2, [r0, #0x18]
0031d6d0  1c 20 80 e5                                      str r2, [r0, #0x1c]
0031d6d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d6d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11getVector2dEv
; demangled: glitch::io::IAttribute::getVector2d()
; decoder-mode: arm
0031d6d8  00 20 a0 e3                                      mov r2, #0
0031d6dc  04 20 80 e5                                      str r2, [r0, #4]
0031d6e0  00 20 80 e5                                      str r2, [r0]
0031d6e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d6e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute12getVector2diEv
; demangled: glitch::io::IAttribute::getVector2di()
; decoder-mode: arm
0031d6e8  00 20 a0 e3                                      mov r2, #0
0031d6ec  04 20 80 e5                                      str r2, [r0, #4]
0031d6f0  00 20 80 e5                                      str r2, [r0]
0031d6f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d6f8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute12getVector3diEv
; demangled: glitch::io::IAttribute::getVector3di()
; decoder-mode: arm
0031d6f8  00 20 a0 e3                                      mov r2, #0
0031d6fc  08 20 80 e5                                      str r2, [r0, #8]
0031d700  00 20 80 e5                                      str r2, [r0]
0031d704  04 20 80 e5                                      str r2, [r0, #4]
0031d708  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d70c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute12getVector4diEv
; demangled: glitch::io::IAttribute::getVector4di()
; decoder-mode: arm
0031d70c  00 20 a0 e3                                      mov r2, #0
0031d710  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d714  00 20 80 e5                                      str r2, [r0]
0031d718  04 20 80 e5                                      str r2, [r0, #4]
0031d71c  08 20 80 e5                                      str r2, [r0, #8]
0031d720  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d724, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9getLine2dEv
; demangled: glitch::io::IAttribute::getLine2d()
; decoder-mode: arm
0031d724  00 10 a0 e3                                      mov r1, #0
0031d728  fe 25 a0 e3                                      mov r2, #0x3f800000
0031d72c  04 10 80 e5                                      str r1, [r0, #4]
0031d730  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d734  00 10 80 e5                                      str r1, [r0]
0031d738  08 20 80 e5                                      str r2, [r0, #8]
0031d73c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d740, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute10getLine2diEv
; demangled: glitch::io::IAttribute::getLine2di()
; decoder-mode: arm
0031d740  00 10 a0 e3                                      mov r1, #0
0031d744  01 20 a0 e3                                      mov r2, #1
0031d748  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d74c  04 10 80 e5                                      str r1, [r0, #4]
0031d750  00 10 80 e5                                      str r1, [r0]
0031d754  08 20 80 e5                                      str r2, [r0, #8]
0031d758  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d75c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9getLine3dEv
; demangled: glitch::io::IAttribute::getLine3d()
; decoder-mode: arm
0031d75c  00 10 a0 e3                                      mov r1, #0
0031d760  fe 25 a0 e3                                      mov r2, #0x3f800000
0031d764  08 10 80 e5                                      str r1, [r0, #8]
0031d768  14 20 80 e5                                      str r2, [r0, #0x14]
0031d76c  00 10 80 e5                                      str r1, [r0]
0031d770  04 10 80 e5                                      str r1, [r0, #4]
0031d774  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d778  10 20 80 e5                                      str r2, [r0, #0x10]
0031d77c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d780, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute10getLine3diEv
; demangled: glitch::io::IAttribute::getLine3di()
; decoder-mode: arm
0031d780  00 10 a0 e3                                      mov r1, #0
0031d784  01 20 a0 e3                                      mov r2, #1
0031d788  14 20 80 e5                                      str r2, [r0, #0x14]
0031d78c  08 10 80 e5                                      str r1, [r0, #8]
0031d790  00 10 80 e5                                      str r1, [r0]
0031d794  04 10 80 e5                                      str r1, [r0, #4]
0031d798  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d79c  10 20 80 e5                                      str r2, [r0, #0x10]
0031d7a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d7a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute14getDimension2dEv
; demangled: glitch::io::IAttribute::getDimension2d()
; decoder-mode: arm
0031d7a4  00 20 a0 e3                                      mov r2, #0
0031d7a8  04 20 80 e5                                      str r2, [r0, #4]
0031d7ac  00 20 80 e5                                      str r2, [r0]
0031d7b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d7b4, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute7getBBoxEv
; demangled: glitch::io::IAttribute::getBBox()
; decoder-mode: arm
0031d7b4  bf 14 a0 e3                                      mov r1, #0xbf000000
0031d7b8  02 15 81 e2                                      add r1, r1, #0x800000
0031d7bc  fe 25 a0 e3                                      mov r2, #0x3f800000
0031d7c0  08 10 80 e5                                      str r1, [r0, #8]
0031d7c4  14 20 80 e5                                      str r2, [r0, #0x14]
0031d7c8  00 10 80 e5                                      str r1, [r0]
0031d7cc  04 10 80 e5                                      str r1, [r0, #4]
0031d7d0  0c 20 80 e5                                      str r2, [r0, #0xc]
0031d7d4  10 20 80 e5                                      str r2, [r0, #0x10]
0031d7d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d7dc, declared_size=32, range_size=32, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8getPlaneEv
; demangled: glitch::io::IAttribute::getPlane()
; decoder-mode: arm
0031d7dc  fe 15 a0 e3                                      mov r1, #0x3f800000
0031d7e0  00 20 a0 e3                                      mov r2, #0
0031d7e4  04 10 80 e5                                      str r1, [r0, #4]
0031d7e8  02 11 a0 e3                                      mov r1, #0x80000000
0031d7ec  0c 10 80 e5                                      str r1, [r0, #0xc]
0031d7f0  08 20 80 e5                                      str r2, [r0, #8]
0031d7f4  00 20 80 e5                                      str r2, [r0]
0031d7f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d7fc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute10getTextureEv
; demangled: glitch::io::IAttribute::getTexture()
; decoder-mode: arm
0031d7fc  00 20 a0 e3                                      mov r2, #0
0031d800  00 20 80 e5                                      str r2, [r0]
0031d804  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d808, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8getLightEv
; demangled: glitch::io::IAttribute::getLight()
; decoder-mode: arm
0031d808  00 20 a0 e3                                      mov r2, #0
0031d80c  00 20 80 e5                                      str r2, [r0]
0031d810  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d814, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute7getEnumEv
; demangled: glitch::io::IAttribute::getEnum()
; decoder-mode: arm
0031d814  00 00 a0 e3                                      mov r0, #0
0031d818  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d81c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute14getUserPointerEv
; demangled: glitch::io::IAttribute::getUserPointer()
; decoder-mode: arm
0031d81c  00 00 a0 e3                                      mov r0, #0
0031d820  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d824, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute6setIntEi
; demangled: glitch::io::IAttribute::setInt(int)
; decoder-mode: arm
0031d824  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d828, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8setFloatEf
; demangled: glitch::io::IAttribute::setFloat(float)
; decoder-mode: arm
0031d828  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d82c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9setStringEPKc
; demangled: glitch::io::IAttribute::setString(char const*)
; decoder-mode: arm
0031d82c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d830, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8setArrayESt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS6_ISA_LS8_0EEEE
; demangled: glitch::io::IAttribute::setArray(std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >)
; decoder-mode: arm
0031d830  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d834, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8setColorENS_5video7SColorfE
; demangled: glitch::io::IAttribute::setColor(glitch::video::SColorf)
; decoder-mode: arm
0031d834  10 d0 4d e2                                      sub sp, sp, #0x10
0031d838  04 00 8d e2                                      add r0, sp, #4
0031d83c  0e 00 80 e8                                      stm r0, {r1, r2, r3}
0031d840  10 d0 8d e2                                      add sp, sp, #0x10
0031d844  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d848, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8setColorENS_5video6SColorE
; demangled: glitch::io::IAttribute::setColor(glitch::video::SColor)
; decoder-mode: arm
0031d848  08 d0 4d e2                                      sub sp, sp, #8
0031d84c  08 d0 8d e2                                      add sp, sp, #8
0031d850  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d854, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute7setBoolEb
; demangled: glitch::io::IAttribute::setBool(bool)
; decoder-mode: arm
0031d854  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d858, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9setBinaryEPvi
; demangled: glitch::io::IAttribute::setBinary(void*, int)
; decoder-mode: arm
0031d858  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d85c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11setVector2dENS_4core8vector2dIfEE
; demangled: glitch::io::IAttribute::setVector2d(glitch::core::vector2d<float>)
; decoder-mode: arm
0031d85c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d860, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11setVector3dERKNS_4core8vector3dIfEE
; demangled: glitch::io::IAttribute::setVector3d(glitch::core::vector3d<float> const&)
; decoder-mode: arm
0031d860  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d864, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11setVector4dERKNS_4core8vector4dIfEE
; demangled: glitch::io::IAttribute::setVector4d(glitch::core::vector4d<float> const&)
; decoder-mode: arm
0031d864  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d868, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11setPositionENS_4core10position2dIiEE
; demangled: glitch::io::IAttribute::setPosition(glitch::core::position2d<int>)
; decoder-mode: arm
0031d868  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d86c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute7setRectENS_4core4rectIiEE
; demangled: glitch::io::IAttribute::setRect(glitch::core::rect<int>)
; decoder-mode: arm
0031d86c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d870, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute13setQuaternionENS_4core10quaternionE
; demangled: glitch::io::IAttribute::setQuaternion(glitch::core::quaternion)
; decoder-mode: arm
0031d870  10 d0 4d e2                                      sub sp, sp, #0x10
0031d874  04 00 8d e2                                      add r0, sp, #4
0031d878  0e 00 80 e8                                      stm r0, {r1, r2, r3}
0031d87c  10 d0 8d e2                                      add sp, sp, #0x10
0031d880  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d884, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9setMatrixENS_4core8CMatrix4IfEE
; demangled: glitch::io::IAttribute::setMatrix(glitch::core::CMatrix4<float>)
; decoder-mode: arm
0031d884  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d888, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute11setTriangleENS_4core10triangle3dIfEE
; demangled: glitch::io::IAttribute::setTriangle(glitch::core::triangle3d<float>)
; decoder-mode: arm
0031d888  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d88c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute12setVector2diENS_4core8vector2dIiEE
; demangled: glitch::io::IAttribute::setVector2di(glitch::core::vector2d<int>)
; decoder-mode: arm
0031d88c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d890, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute12setVector3diERKNS_4core8vector3dIiEE
; demangled: glitch::io::IAttribute::setVector3di(glitch::core::vector3d<int> const&)
; decoder-mode: arm
0031d890  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d894, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute12setVector4diERKNS_4core8vector4dIiEE
; demangled: glitch::io::IAttribute::setVector4di(glitch::core::vector4d<int> const&)
; decoder-mode: arm
0031d894  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d898, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9setLine2dENS_4core6line2dIfEE
; demangled: glitch::io::IAttribute::setLine2d(glitch::core::line2d<float>)
; decoder-mode: arm
0031d898  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d89c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9setLine2dENS_4core6line2dIiEE
; demangled: glitch::io::IAttribute::setLine2d(glitch::core::line2d<int>)
; decoder-mode: arm
0031d89c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8a0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9setLine3dENS_4core6line3dIfEE
; demangled: glitch::io::IAttribute::setLine3d(glitch::core::line3d<float>)
; decoder-mode: arm
0031d8a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8a4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9setLine3dENS_4core6line3dIiEE
; demangled: glitch::io::IAttribute::setLine3d(glitch::core::line3d<int>)
; decoder-mode: arm
0031d8a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8a8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute14setDimension2dENS_4core11dimension2dIiEE
; demangled: glitch::io::IAttribute::setDimension2d(glitch::core::dimension2d<int>)
; decoder-mode: arm
0031d8a8  08 d0 4d e2                                      sub sp, sp, #8
0031d8ac  08 d0 8d e2                                      add sp, sp, #8
0031d8b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8b4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute7setBBoxENS_4core8aabbox3dIfEE
; demangled: glitch::io::IAttribute::setBBox(glitch::core::aabbox3d<float>)
; decoder-mode: arm
0031d8b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8b8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8setPlaneENS_4core7plane3dIfEE
; demangled: glitch::io::IAttribute::setPlane(glitch::core::plane3d<float>)
; decoder-mode: arm
0031d8b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8bc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute14setUserPointerEPv
; demangled: glitch::io::IAttribute::setUserPointer(void*)
; decoder-mode: arm
0031d8bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8c0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute7setEnumEPKcPKS3_
; demangled: glitch::io::IAttribute::setEnum(char const*, char const* const*)
; decoder-mode: arm
0031d8c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8c4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute10setTextureERKN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::io::IAttribute::setTexture(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
0031d8c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d8c8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute8setLightEN5boost13intrusive_ptrINS_5video6CLightEEE
; demangled: glitch::io::IAttribute::setLight(boost::intrusive_ptr<glitch::video::CLight>)
; decoder-mode: arm
0031d8c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0032097c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute10getStringWEv
; demangled: glitch::io::IAttribute::getStringW()
; decoder-mode: arm
0032097c  10 40 2d e9                                      push {r4, lr}
00320980  00 40 a0 e1                                      mov r4, r0
00320984  40 00 84 e5                                      str r0, [r4, #0x40]
00320988  44 00 84 e5                                      str r0, [r4, #0x44]
0032098c  10 10 a0 e3                                      mov r1, #0x10
00320990  e2 ff ff eb                                      bl #0x320920
00320994  40 30 94 e5                                      ldr r3, [r4, #0x40]
00320998  00 20 a0 e3                                      mov r2, #0
0032099c  04 00 a0 e1                                      mov r0, r4
003209a0  00 20 83 e5                                      str r2, [r3]
003209a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00326268, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9getStringEv
; demangled: glitch::io::IAttribute::getString()
; decoder-mode: arm
00326268  30 40 2d e9                                      push {r4, r5, lr}
0032626c  54 d0 4d e2                                      sub sp, sp, #0x54
00326270  04 50 8d e2                                      add r5, sp, #4
00326274  00 40 a0 e1                                      mov r4, r0
00326278  00 30 91 e5                                      ldr r3, [r1]
0032627c  05 00 a0 e1                                      mov r0, r5
00326280  0f e0 a0 e1                                      mov lr, pc
00326284  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00326288  48 10 9d e5                                      ldr r1, [sp, #0x48]
0032628c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00326290  04 00 a0 e1                                      mov r0, r4
00326294  10 40 84 e5                                      str r4, [r4, #0x10]
00326298  14 40 84 e5                                      str r4, [r4, #0x14]
0032629c  4c 30 8d e2                                      add r3, sp, #0x4c
003262a0  d4 e9 ff eb                                      bl #0x3209f8
003262a4  48 00 9d e5                                      ldr r0, [sp, #0x48]
003262a8  05 00 50 e1                                      cmp r0, r5
003262ac  02 00 00 0a                                      beq #0x3262bc
003262b0  00 00 50 e3                                      cmp r0, #0
003262b4  00 00 00 0a                                      beq #0x3262bc
003262b8  64 a8 ff eb                                      bl #0x310450
003262bc  04 00 a0 e1                                      mov r0, r4
003262c0  54 d0 8d e2                                      add sp, sp, #0x54
003262c4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00326588, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9getMatrixEv
; demangled: glitch::io::IAttribute::getMatrix()
; decoder-mode: arm
00326588  00 10 a0 e3                                      mov r1, #0
0032658c  10 40 2d e9                                      push {r4, lr}
00326590  40 20 a0 e3                                      mov r2, #0x40
00326594  40 10 c0 e5                                      strb r1, [r0, #0x40]
00326598  00 40 a0 e1                                      mov r4, r0
0032659c  af 9f ff eb                                      bl #0x30e460
003265a0  fe 35 a0 e3                                      mov r3, #0x3f800000
003265a4  01 20 a0 e3                                      mov r2, #1
003265a8  40 20 c4 e5                                      strb r2, [r4, #0x40]
003265ac  3c 30 84 e5                                      str r3, [r4, #0x3c]
003265b0  00 30 84 e5                                      str r3, [r4]
003265b4  14 30 84 e5                                      str r3, [r4, #0x14]
003265b8  28 30 84 e5                                      str r3, [r4, #0x28]
003265bc  04 00 a0 e1                                      mov r0, r4
003265c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00326aa8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttributeD1Ev
; demangled: glitch::io::IAttribute::~IAttribute()
; decoder-mode: arm
00326aa8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00326aac  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00326ab0  10 40 2d e9                                      push {r4, lr}
00326ab4  03 30 8f e0                                      add r3, pc, r3
00326ab8  02 20 93 e7                                      ldr r2, [r3, r2]
00326abc  00 10 a0 e1                                      mov r1, r0
00326ac0  00 40 a0 e1                                      mov r4, r0
00326ac4  08 20 82 e2                                      add r2, r2, #8
00326ac8  08 20 81 e4                                      str r2, [r1], #8
00326acc  14 00 91 e5                                      ldr r0, [r1, #0x14]
00326ad0  01 00 50 e1                                      cmp r0, r1
00326ad4  02 00 00 0a                                      beq #0x326ae4
00326ad8  00 00 50 e3                                      cmp r0, #0
00326adc  00 00 00 0a                                      beq #0x326ae4
00326ae0  5a a6 ff eb                                      bl #0x310450
00326ae4  04 00 a0 e1                                      mov r0, r4
00326ae8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00326aec  dc df 66 00 44 2c 00 00                          .byte 0xdc, 0xdf, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00326bf0, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttributeD0Ev
; demangled: glitch::io::IAttribute::~IAttribute()
; decoder-mode: arm
00326bf0  70 40 2d e9                                      push {r4, r5, r6, lr}
00326bf4  50 40 9f e5                                      ldr r4, [pc, #0x50]
00326bf8  50 30 9f e5                                      ldr r3, [pc, #0x50]
00326bfc  00 20 a0 e1                                      mov r2, r0
00326c00  04 40 8f e0                                      add r4, pc, r4
00326c04  03 30 94 e7                                      ldr r3, [r4, r3]
00326c08  00 50 a0 e1                                      mov r5, r0
00326c0c  08 30 83 e2                                      add r3, r3, #8
00326c10  08 30 82 e4                                      str r3, [r2], #8
00326c14  14 00 92 e5                                      ldr r0, [r2, #0x14]
00326c18  02 00 50 e1                                      cmp r0, r2
00326c1c  02 00 00 0a                                      beq #0x326c2c
00326c20  00 00 50 e3                                      cmp r0, #0
00326c24  00 00 00 0a                                      beq #0x326c2c
00326c28  08 a6 ff eb                                      bl #0x310450
00326c2c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00326c30  05 00 a0 e1                                      mov r0, r5
00326c34  03 30 94 e7                                      ldr r3, [r4, r3]
00326c38  08 30 83 e2                                      add r3, r3, #8
00326c3c  00 30 85 e5                                      str r3, [r5]
00326c40  fe a5 ff eb                                      bl #0x310440
00326c44  05 00 a0 e1                                      mov r0, r5
00326c48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00326c4c  90 de 66 00 44 2c 00 00 44 2b 00 00              .byte 0x90, 0xde, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x00326d20, declared_size=132, range_size=132, mode=arm
; class-group: glitch::io::IAttribute
; alias: _ZN6glitch2io10IAttribute9setStringEPKw
; demangled: glitch::io::IAttribute::setString(wchar_t const*)
; decoder-mode: arm
00326d20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00326d24  70 40 9f e5                                      ldr r4, [pc, #0x70]
00326d28  70 50 9f e5                                      ldr r5, [pc, #0x70]
00326d2c  20 d0 4d e2                                      sub sp, sp, #0x20
00326d30  04 40 8f e0                                      add r4, pc, r4
00326d34  05 20 94 e7                                      ldr r2, [r4, r5]
00326d38  00 30 90 e5                                      ldr r3, [r0]
00326d3c  04 60 8d e2                                      add r6, sp, #4
00326d40  00 20 92 e5                                      ldr r2, [r2]
00326d44  00 70 a0 e1                                      mov r7, r0
00326d48  06 00 a0 e1                                      mov r0, r6
00326d4c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00326d50  90 80 93 e5                                      ldr r8, [r3, #0x90]
00326d54  bf ff ff eb                                      bl #0x326c58
00326d58  07 00 a0 e1                                      mov r0, r7
00326d5c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00326d60  38 ff 2f e1                                      blx r8
00326d64  18 00 9d e5                                      ldr r0, [sp, #0x18]
00326d68  06 00 50 e1                                      cmp r0, r6
00326d6c  02 00 00 0a                                      beq #0x326d7c
00326d70  00 00 50 e3                                      cmp r0, #0
00326d74  00 00 00 0a                                      beq #0x326d7c
00326d78  b4 a5 ff eb                                      bl #0x310450
00326d7c  05 30 94 e7                                      ldr r3, [r4, r5]
00326d80  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00326d84  00 30 93 e5                                      ldr r3, [r3]
00326d88  03 00 52 e1                                      cmp r2, r3
00326d8c  01 00 00 1a                                      bne #0x326d98
00326d90  20 d0 8d e2                                      add sp, sp, #0x20
00326d94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00326d98  5c 9d ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00326d9c  60 dd 66 00 ac 40 00 00                          .byte 0x60, 0xdd, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00
