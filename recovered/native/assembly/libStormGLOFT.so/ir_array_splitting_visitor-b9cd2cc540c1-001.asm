; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a0448, declared_size=248, range_size=248, mode=thumb
; class-group: ir_array_splitting_visitor
; alias: _ZN26ir_array_splitting_visitor11split_derefEPP14ir_dereference
; demangled: ir_array_splitting_visitor::split_deref(ir_dereference**)
; decoder-mode: thumb
000a0448  f0 b5                                            push {r4, r5, r6, r7, lr}
000a044a  03 af                                            add r7, sp, #0xc
000a044c  2d e9 00 0b                                      push.w {r8, sb, fp}
000a0450  82 b0                                            sub sp, #8
000a0452  0c 46                                            mov r4, r1
000a0454  26 68                                            ldr r6, [r4]
000a0456  00 2e                                            cmp r6, #0
000a0458  66 d0                                            beq #0xa0528
000a045a  f1 68                                            ldr r1, [r6, #0xc]
000a045c  00 29                                            cmp r1, #0
000a045e  63 d1                                            bne #0xa0528
000a0460  b1 69                                            ldr r1, [r6, #0x18]
000a0462  00 29                                            cmp r1, #0
000a0464  60 d0                                            beq #0xa0528
000a0466  ca 68                                            ldr r2, [r1, #0xc]
000a0468  02 2a                                            cmp r2, #2
000a046a  5d d1                                            bne #0xa0528
000a046c  c0 69                                            ldr r0, [r0, #0x1c]
000a046e  05 68                                            ldr r5, [r0]
000a0470  28 68                                            ldr r0, [r5]
000a0472  00 28                                            cmp r0, #0
000a0474  58 d0                                            beq #0xa0528
000a0476  88 69                                            ldr r0, [r1, #0x18]
000a0478  a9 68                                            ldr r1, [r5, #8]
000a047a  81 42                                            cmp r1, r0
000a047c  04 d0                                            beq #0xa0488
000a047e  2d 68                                            ldr r5, [r5]
000a0480  29 68                                            ldr r1, [r5]
000a0482  00 29                                            cmp r1, #0
000a0484  f8 d1                                            bne #0xa0478
000a0486  4f e0                                            b #0xa0528
000a0488  00 2d                                            cmp r5, #0
000a048a  4d d0                                            beq #0xa0528
000a048c  d6 f8 1c 80                                      ldr.w r8, [r6, #0x1c]
000a0490  ea 68                                            ldr r2, [r5, #0xc]
000a0492  a8 69                                            ldr r0, [r5, #0x18]
000a0494  d8 f8 0c 10                                      ldr.w r1, [r8, #0xc]
000a0498  03 29                                            cmp r1, #3
000a049a  18 bf                                            it ne
000a049c  4f f0 00 08                                      movne.w r8, #0
000a04a0  d8 f8 18 10                                      ldr.w r1, [r8, #0x18]
000a04a4  91 42                                            cmp r1, r2
000a04a6  10 da                                            bge #0xa04ca
000a04a8  1c 21                                            movs r1, #0x1c
000a04aa  92 f7 3a e9                                      blx #0x32720
000a04ae  06 46                                            mov r6, r0
000a04b0  22 48                                            ldr r0, [pc, #0x88]
000a04b2  78 44                                            add r0, pc
000a04b4  01 68                                            ldr r1, [r0]
000a04b6  30 46                                            mov r0, r6
000a04b8  92 f7 22 ea                                      blx #0x32900
000a04bc  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
000a04c0  69 69                                            ldr r1, [r5, #0x14]
000a04c2  51 f8 20 10                                      ldr.w r1, [r1, r0, lsl #2]
000a04c6  30 46                                            mov r0, r6
000a04c8  2b e0                                            b #0xa0522
000a04ca  44 21                                            movs r1, #0x44
000a04cc  92 f7 28 e9                                      blx #0x32720
000a04d0  81 46                                            mov sb, r0
000a04d2  17 48                                            ldr r0, [pc, #0x5c]
000a04d4  78 44                                            add r0, pc
000a04d6  d0 f8 00 80                                      ldr.w r8, [r0]
000a04da  48 46                                            mov r0, sb
000a04dc  41 46                                            mov r1, r8
000a04de  92 f7 10 ea                                      blx #0x32900
000a04e2  d6 e9 04 10                                      ldrd r1, r0, [r6, #0x10]
000a04e6  13 a2                                            adr r2, #0x4c
000a04e8  0a 23                                            movs r3, #0xa
000a04ea  00 90                                            str r0, [sp]
000a04ec  48 46                                            mov r0, sb
000a04ee  92 f7 44 ea                                      blx #0x32978
000a04f2  68 69                                            ldr r0, [r5, #0x14]
000a04f4  49 46                                            mov r1, sb
000a04f6  b9 f1 00 0f                                      cmp.w sb, #0
000a04fa  00 68                                            ldr r0, [r0]
000a04fc  18 bf                                            it ne
000a04fe  04 31                                            addne r1, #4
000a0500  02 1d                                            adds r2, r0, #4
000a0502  0a 60                                            str r2, [r1]
000a0504  82 68                                            ldr r2, [r0, #8]
000a0506  4a 60                                            str r2, [r1, #4]
000a0508  82 68                                            ldr r2, [r0, #8]
000a050a  11 60                                            str r1, [r2]
000a050c  81 60                                            str r1, [r0, #8]
000a050e  1c 21                                            movs r1, #0x1c
000a0510  a8 69                                            ldr r0, [r5, #0x18]
000a0512  92 f7 06 e9                                      blx #0x32720
000a0516  41 46                                            mov r1, r8
000a0518  06 46                                            mov r6, r0
000a051a  92 f7 f2 e9                                      blx #0x32900
000a051e  30 46                                            mov r0, r6
000a0520  49 46                                            mov r1, sb
000a0522  92 f7 48 ea                                      blx #0x329b4
000a0526  26 60                                            str r6, [r4]
000a0528  02 b0                                            add sp, #8
000a052a  bd e8 00 0b                                      pop.w {r8, sb, fp}
000a052e  f0 bd                                            pop {r4, r5, r6, r7, pc}
000a0530  64 c0                                            stm r0!, {r2, r5, r6}
000a0532  03 00                                            movs r3, r0
000a0534  75 6e                                            ldr r5, [r6, #0x64]
000a0536  64 65                                            str r4, [r4, #0x54]
000a0538  66 00                                            lsls r6, r4, #1
000a053a  00 00                                            movs r0, r0
000a053c  86 c0                                            stm r0!, {r1, r2, r7}
000a053e  03 00                                            movs r3, r0

; FUNCTION 0x000a0540, declared_size=76, range_size=76, mode=thumb
; class-group: ir_array_splitting_visitor
; alias: _ZN26ir_array_splitting_visitor13handle_rvalueEPP9ir_rvalue
; demangled: ir_array_splitting_visitor::handle_rvalue(ir_rvalue**)
; decoder-mode: thumb
000a0540  d0 b5                                            push {r4, r6, r7, lr}
000a0542  02 af                                            add r7, sp, #8
000a0544  82 b0                                            sub sp, #8
000a0546  0c 46                                            mov r4, r1
000a0548  0e 49                                            ldr r1, [pc, #0x38]
000a054a  79 44                                            add r1, pc
000a054c  09 68                                            ldr r1, [r1]
000a054e  09 68                                            ldr r1, [r1]
000a0550  01 91                                            str r1, [sp, #4]
000a0552  21 68                                            ldr r1, [r4]
000a0554  59 b1                                            cbz r1, #0xa056e
000a0556  ca 68                                            ldr r2, [r1, #0xc]
000a0558  03 2a                                            cmp r2, #3
000a055a  28 bf                                            it hs
000a055c  00 21                                            movhs r1, #0
000a055e  00 29                                            cmp r1, #0
000a0560  00 91                                            str r1, [sp]
000a0562  04 d0                                            beq #0xa056e
000a0564  69 46                                            mov r1, sp
000a0566  94 f7 ca ed                                      blx #0x350fc
000a056a  00 98                                            ldr r0, [sp]
000a056c  20 60                                            str r0, [r4]
000a056e  06 48                                            ldr r0, [pc, #0x18]
000a0570  01 99                                            ldr r1, [sp, #4]
000a0572  78 44                                            add r0, pc
000a0574  00 68                                            ldr r0, [r0]
000a0576  00 68                                            ldr r0, [r0]
000a0578  40 1a                                            subs r0, r0, r1
000a057a  04 bf                                            itt eq
000a057c  02 b0                                            addeq sp, #8
000a057e  d0 bd                                            popeq {r4, r6, r7, pc}
000a0580  91 f7 6e ed                                      blx #0x32060
000a0584  6a bf                                            itet vs
000a0586  03 00                                            movs r3, r0
000a0588  42 bf                                            ittt mi
000a058a  03 00                                            movs r3, r0

; FUNCTION 0x000a058c, declared_size=140, range_size=140, mode=thumb
; class-group: ir_array_splitting_visitor
; alias: _ZN26ir_array_splitting_visitor11visit_leaveEP13ir_assignment
; demangled: ir_array_splitting_visitor::visit_leave(ir_assignment*)
; decoder-mode: thumb
000a058c  b0 b5                                            push {r4, r5, r7, lr}
000a058e  02 af                                            add r7, sp, #8
000a0590  82 b0                                            sub sp, #8
000a0592  04 46                                            mov r4, r0
000a0594  1e 48                                            ldr r0, [pc, #0x78]
000a0596  0d 46                                            mov r5, r1
000a0598  69 46                                            mov r1, sp
000a059a  78 44                                            add r0, pc
000a059c  00 68                                            ldr r0, [r0]
000a059e  00 68                                            ldr r0, [r0]
000a05a0  01 90                                            str r0, [sp, #4]
000a05a2  28 69                                            ldr r0, [r5, #0x10]
000a05a4  00 90                                            str r0, [sp]
000a05a6  20 68                                            ldr r0, [r4]
000a05a8  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
000a05ac  20 46                                            mov r0, r4
000a05ae  90 47                                            blx r2
000a05b0  00 98                                            ldr r0, [sp]
000a05b2  c1 68                                            ldr r1, [r0, #0xc]
000a05b4  03 29                                            cmp r1, #3
000a05b6  28 bf                                            it hs
000a05b8  00 20                                            movhs r0, #0
000a05ba  28 61                                            str r0, [r5, #0x10]
000a05bc  01 68                                            ldr r1, [r0]
000a05be  ca 68                                            ldr r2, [r1, #0xc]
000a05c0  21 46                                            mov r1, r4
000a05c2  90 47                                            blx r2
000a05c4  20 68                                            ldr r0, [r4]
000a05c6  05 f1 14 01                                      add.w r1, r5, #0x14
000a05ca  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
000a05ce  20 46                                            mov r0, r4
000a05d0  90 47                                            blx r2
000a05d2  68 69                                            ldr r0, [r5, #0x14]
000a05d4  01 68                                            ldr r1, [r0]
000a05d6  ca 68                                            ldr r2, [r1, #0xc]
000a05d8  21 46                                            mov r1, r4
000a05da  90 47                                            blx r2
000a05dc  55 f8 18 0f                                      ldr r0, [r5, #0x18]!
000a05e0  50 b1                                            cbz r0, #0xa05f8
000a05e2  20 68                                            ldr r0, [r4]
000a05e4  29 46                                            mov r1, r5
000a05e6  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
000a05ea  20 46                                            mov r0, r4
000a05ec  90 47                                            blx r2
000a05ee  28 68                                            ldr r0, [r5]
000a05f0  01 68                                            ldr r1, [r0]
000a05f2  ca 68                                            ldr r2, [r1, #0xc]
000a05f4  21 46                                            mov r1, r4
000a05f6  90 47                                            blx r2
000a05f8  06 48                                            ldr r0, [pc, #0x18]
000a05fa  01 99                                            ldr r1, [sp, #4]
000a05fc  78 44                                            add r0, pc
000a05fe  00 68                                            ldr r0, [r0]
000a0600  00 68                                            ldr r0, [r0]
000a0602  40 1a                                            subs r0, r0, r1
000a0604  02 bf                                            ittt eq
000a0606  00 20                                            moveq r0, #0
000a0608  02 b0                                            addeq sp, #8
000a060a  b0 bd                                            popeq {r4, r5, r7, pc}
000a060c  91 f7 28 ed                                      blx #0x32060
000a0610  1a bf                                            itte ne
000a0612  03 00                                            movs r3, r0
000a0614  b8 be                                            bkpt #0xb8
000a0616  03 00                                            movs r3, r0

; FUNCTION 0x000a0894, declared_size=2, range_size=2, mode=thumb
; class-group: ir_array_splitting_visitor
; alias: _ZN26ir_array_splitting_visitorD2Ev
; demangled: ir_array_splitting_visitor::~ir_array_splitting_visitor()
; decoder-mode: thumb
000a0894  70 47                                            bx lr

; FUNCTION 0x000a0896, declared_size=4, range_size=4, mode=thumb
; class-group: ir_array_splitting_visitor
; alias: _ZN26ir_array_splitting_visitorD0Ev
; demangled: ir_array_splitting_visitor::~ir_array_splitting_visitor()
; decoder-mode: thumb
000a0896  10 f0 5f ba                                      b.w #0xb0d58
