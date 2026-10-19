; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b8210, declared_size=54, range_size=54, mode=thumb
; class-group: std::basic_filebuf<char, std::char_traits<char> >* std
; alias: _ZSt19_Stl_create_filebufIP7__sFILEEPSt13basic_filebufIcSt11char_traitsIcEET_i
; demangled: std::basic_filebuf<char, std::char_traits<char> >* std::_Stl_create_filebuf<__sFILE*>(__sFILE*, int)
; decoder-mode: thumb
008b8210  70 b5                                            push {r4, r5, r6, lr}
008b8212  06 1c                                            adds r6, r0, #0
008b8214  7c 20                                            movs r0, #0x7c
008b8216  0d 1c                                            adds r5, r1, #0
008b8218  56 f6 38 e3                                      blx #0x30e88c
008b821c  04 1c                                            adds r4, r0, #0
008b821e  ff f7 fb fe                                      bl #0x8b8018
008b8222  20 1c                                            adds r0, r4, #0
008b8224  0e 23                                            movs r3, #0xe
008b8226  f1 5e                                            ldrsh r1, [r6, r3]
008b8228  20 30                                            adds r0, #0x20
008b822a  2a 1c                                            adds r2, r5, #0
008b822c  05 f0 ec fc                                      bl #0x8bdc08
008b8230  28 23                                            movs r3, #0x28
008b8232  e3 5c                                            ldrb r3, [r4, r3]
008b8234  00 2b                                            cmp r3, #0
008b8236  04 d1                                            bne #0x8b8242
008b8238  23 68                                            ldr r3, [r4]
008b823a  20 1c                                            adds r0, r4, #0
008b823c  00 24                                            movs r4, #0
008b823e  5b 68                                            ldr r3, [r3, #4]
008b8240  98 47                                            blx r3
008b8242  20 1c                                            adds r0, r4, #0
008b8244  70 bd                                            pop {r4, r5, r6, pc}
