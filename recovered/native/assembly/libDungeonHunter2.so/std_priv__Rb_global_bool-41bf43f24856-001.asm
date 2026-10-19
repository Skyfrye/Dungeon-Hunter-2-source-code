; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313760, declared_size=564, range_size=564, mode=arm
; class-group: std::priv::_Rb_global<bool>
; alias: _ZNSt4priv10_Rb_globalIbE10_RebalanceEPNS_18_Rb_tree_node_baseERS3_
; demangled: std::priv::_Rb_global<bool>::_Rebalance(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*&)
; decoder-mode: arm
00313760  00 30 a0 e3                                      mov r3, #0
00313764  70 00 2d e9                                      push {r4, r5, r6}
00313768  00 30 c0 e5                                      strb r3, [r0]
0031376c  01 50 a0 e3                                      mov r5, #1
00313770  00 c0 91 e5                                      ldr ip, [r1]
00313774  00 00 5c e1                                      cmp ip, r0
00313778  03 00 00 0a                                      beq #0x31378c
0031377c  04 20 90 e5                                      ldr r2, [r0, #4]
00313780  00 40 d2 e5                                      ldrb r4, [r2]
00313784  00 00 54 e3                                      cmp r4, #0
00313788  03 00 00 0a                                      beq #0x31379c
0031378c  01 30 a0 e3                                      mov r3, #1
00313790  00 30 cc e5                                      strb r3, [ip]
00313794  70 00 bd e8                                      pop {r4, r5, r6}
00313798  1e ff 2f e1                                      bx lr
0031379c  04 60 92 e5                                      ldr r6, [r2, #4]
003137a0  08 c0 96 e5                                      ldr ip, [r6, #8]
003137a4  0c 00 52 e1                                      cmp r2, ip
003137a8  2d 00 00 0a                                      beq #0x313864
003137ac  00 00 5c e3                                      cmp ip, #0
003137b0  0b 00 00 0a                                      beq #0x3137e4
003137b4  00 40 dc e5                                      ldrb r4, [ip]
003137b8  00 00 54 e3                                      cmp r4, #0
003137bc  08 00 00 1a                                      bne #0x3137e4
003137c0  00 50 c2 e5                                      strb r5, [r2]
003137c4  00 50 cc e5                                      strb r5, [ip]
003137c8  04 20 90 e5                                      ldr r2, [r0, #4]
003137cc  04 20 92 e5                                      ldr r2, [r2, #4]
003137d0  00 40 c2 e5                                      strb r4, [r2]
003137d4  04 20 90 e5                                      ldr r2, [r0, #4]
003137d8  04 20 92 e5                                      ldr r2, [r2, #4]
003137dc  02 00 a0 e1                                      mov r0, r2
003137e0  e2 ff ff ea                                      b #0x313770
003137e4  08 c0 92 e5                                      ldr ip, [r2, #8]
003137e8  00 00 5c e1                                      cmp ip, r0
003137ec  02 c0 a0 11                                      movne ip, r2
003137f0  00 20 a0 11                                      movne r2, r0
003137f4  40 00 00 0a                                      beq #0x3138fc
003137f8  00 50 cc e5                                      strb r5, [ip]
003137fc  04 00 92 e5                                      ldr r0, [r2, #4]
00313800  04 00 90 e5                                      ldr r0, [r0, #4]
00313804  00 30 c0 e5                                      strb r3, [r0]
00313808  04 00 92 e5                                      ldr r0, [r2, #4]
0031380c  04 00 90 e5                                      ldr r0, [r0, #4]
00313810  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00313814  08 40 9c e5                                      ldr r4, [ip, #8]
00313818  0c 40 80 e5                                      str r4, [r0, #0xc]
0031381c  08 40 9c e5                                      ldr r4, [ip, #8]
00313820  00 00 54 e3                                      cmp r4, #0
00313824  04 00 84 15                                      strne r0, [r4, #4]
00313828  04 40 90 e5                                      ldr r4, [r0, #4]
0031382c  04 40 8c e5                                      str r4, [ip, #4]
00313830  00 40 91 e5                                      ldr r4, [r1]
00313834  04 00 50 e1                                      cmp r0, r4
00313838  00 c0 81 05                                      streq ip, [r1]
0031383c  04 00 00 0a                                      beq #0x313854
00313840  04 40 90 e5                                      ldr r4, [r0, #4]
00313844  08 60 94 e5                                      ldr r6, [r4, #8]
00313848  06 00 50 e1                                      cmp r0, r6
0031384c  08 c0 84 05                                      streq ip, [r4, #8]
00313850  0c c0 84 15                                      strne ip, [r4, #0xc]
00313854  08 00 8c e5                                      str r0, [ip, #8]
00313858  04 c0 80 e5                                      str ip, [r0, #4]
0031385c  02 00 a0 e1                                      mov r0, r2
00313860  c2 ff ff ea                                      b #0x313770
00313864  0c c0 96 e5                                      ldr ip, [r6, #0xc]
00313868  00 00 5c e3                                      cmp ip, #0
0031386c  02 00 00 0a                                      beq #0x31387c
00313870  00 40 dc e5                                      ldrb r4, [ip]
00313874  00 00 54 e3                                      cmp r4, #0
00313878  d0 ff ff 0a                                      beq #0x3137c0
0031387c  0c c0 92 e5                                      ldr ip, [r2, #0xc]
00313880  00 00 5c e1                                      cmp ip, r0
00313884  02 c0 a0 11                                      movne ip, r2
00313888  00 20 a0 11                                      movne r2, r0
0031388c  2d 00 00 0a                                      beq #0x313948
00313890  00 50 cc e5                                      strb r5, [ip]
00313894  04 00 92 e5                                      ldr r0, [r2, #4]
00313898  04 00 90 e5                                      ldr r0, [r0, #4]
0031389c  00 30 c0 e5                                      strb r3, [r0]
003138a0  04 00 92 e5                                      ldr r0, [r2, #4]
003138a4  04 00 90 e5                                      ldr r0, [r0, #4]
003138a8  08 c0 90 e5                                      ldr ip, [r0, #8]
003138ac  0c 40 9c e5                                      ldr r4, [ip, #0xc]
003138b0  08 40 80 e5                                      str r4, [r0, #8]
003138b4  0c 40 9c e5                                      ldr r4, [ip, #0xc]
003138b8  00 00 54 e3                                      cmp r4, #0
003138bc  04 00 84 15                                      strne r0, [r4, #4]
003138c0  04 40 90 e5                                      ldr r4, [r0, #4]
003138c4  04 40 8c e5                                      str r4, [ip, #4]
003138c8  00 40 91 e5                                      ldr r4, [r1]
003138cc  04 00 50 e1                                      cmp r0, r4
003138d0  00 c0 81 05                                      streq ip, [r1]
003138d4  04 00 00 0a                                      beq #0x3138ec
003138d8  04 40 90 e5                                      ldr r4, [r0, #4]
003138dc  0c 60 94 e5                                      ldr r6, [r4, #0xc]
003138e0  06 00 50 e1                                      cmp r0, r6
003138e4  0c c0 84 05                                      streq ip, [r4, #0xc]
003138e8  08 c0 84 15                                      strne ip, [r4, #8]
003138ec  0c 00 8c e5                                      str r0, [ip, #0xc]
003138f0  04 c0 80 e5                                      str ip, [r0, #4]
003138f4  02 00 a0 e1                                      mov r0, r2
003138f8  9c ff ff ea                                      b #0x313770
003138fc  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00313900  08 40 82 e5                                      str r4, [r2, #8]
00313904  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00313908  00 00 50 e3                                      cmp r0, #0
0031390c  04 20 80 15                                      strne r2, [r0, #4]
00313910  04 60 92 15                                      ldrne r6, [r2, #4]
00313914  04 60 8c e5                                      str r6, [ip, #4]
00313918  00 00 91 e5                                      ldr r0, [r1]
0031391c  00 00 52 e1                                      cmp r2, r0
00313920  00 c0 81 05                                      streq ip, [r1]
00313924  04 00 00 0a                                      beq #0x31393c
00313928  04 00 92 e5                                      ldr r0, [r2, #4]
0031392c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00313930  04 00 52 e1                                      cmp r2, r4
00313934  0c c0 80 05                                      streq ip, [r0, #0xc]
00313938  08 c0 80 15                                      strne ip, [r0, #8]
0031393c  0c 20 8c e5                                      str r2, [ip, #0xc]
00313940  04 c0 82 e5                                      str ip, [r2, #4]
00313944  ab ff ff ea                                      b #0x3137f8
00313948  08 40 90 e5                                      ldr r4, [r0, #8]
0031394c  0c 40 82 e5                                      str r4, [r2, #0xc]
00313950  08 00 90 e5                                      ldr r0, [r0, #8]
00313954  00 00 50 e3                                      cmp r0, #0
00313958  04 20 80 15                                      strne r2, [r0, #4]
0031395c  04 60 92 15                                      ldrne r6, [r2, #4]
00313960  04 60 8c e5                                      str r6, [ip, #4]
00313964  00 00 91 e5                                      ldr r0, [r1]
00313968  00 00 52 e1                                      cmp r2, r0
0031396c  00 c0 81 05                                      streq ip, [r1]
00313970  04 00 00 0a                                      beq #0x313988
00313974  04 00 92 e5                                      ldr r0, [r2, #4]
00313978  08 40 90 e5                                      ldr r4, [r0, #8]
0031397c  04 00 52 e1                                      cmp r2, r4
00313980  08 c0 80 05                                      streq ip, [r0, #8]
00313984  0c c0 80 15                                      strne ip, [r0, #0xc]
00313988  08 20 8c e5                                      str r2, [ip, #8]
0031398c  04 c0 82 e5                                      str ip, [r2, #4]
00313990  be ff ff ea                                      b #0x313890

; FUNCTION 0x00336004, declared_size=1256, range_size=1256, mode=arm
; class-group: std::priv::_Rb_global<bool>
; alias: _ZNSt4priv10_Rb_globalIbE20_Rebalance_for_eraseEPNS_18_Rb_tree_node_baseERS3_S4_S4_
; demangled: std::priv::_Rb_global<bool>::_Rebalance_for_erase(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*&, std::priv::_Rb_tree_node_base*&, std::priv::_Rb_tree_node_base*&)
; decoder-mode: arm
00336004  f0 00 2d e9                                      push {r4, r5, r6, r7}
00336008  08 c0 90 e5                                      ldr ip, [r0, #8]
0033600c  00 00 5c e3                                      cmp ip, #0
00336010  0c c0 90 05                                      ldreq ip, [r0, #0xc]
00336014  e4 00 00 0a                                      beq #0x3363ac
00336018  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0033601c  00 00 55 e3                                      cmp r5, #0
00336020  01 00 00 1a                                      bne #0x33602c
00336024  e0 00 00 ea                                      b #0x3363ac
00336028  04 50 a0 e1                                      mov r5, r4
0033602c  08 40 95 e5                                      ldr r4, [r5, #8]
00336030  00 00 54 e3                                      cmp r4, #0
00336034  fb ff ff 1a                                      bne #0x336028
00336038  05 00 50 e1                                      cmp r0, r5
0033603c  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00336040  db 00 00 0a                                      beq #0x3363b4
00336044  04 50 8c e5                                      str r5, [ip, #4]
00336048  08 30 90 e5                                      ldr r3, [r0, #8]
0033604c  08 30 85 e5                                      str r3, [r5, #8]
00336050  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00336054  05 00 5c e1                                      cmp ip, r5
00336058  09 00 00 0a                                      beq #0x336084
0033605c  04 c0 95 e5                                      ldr ip, [r5, #4]
00336060  00 00 54 e3                                      cmp r4, #0
00336064  04 c0 84 15                                      strne ip, [r4, #4]
00336068  04 30 95 15                                      ldrne r3, [r5, #4]
0033606c  0c 30 a0 01                                      moveq r3, ip
00336070  08 40 83 e5                                      str r4, [r3, #8]
00336074  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00336078  0c 30 85 e5                                      str r3, [r5, #0xc]
0033607c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00336080  04 50 83 e5                                      str r5, [r3, #4]
00336084  00 30 91 e5                                      ldr r3, [r1]
00336088  00 00 53 e1                                      cmp r3, r0
0033608c  00 50 81 05                                      streq r5, [r1]
00336090  04 00 00 0a                                      beq #0x3360a8
00336094  04 30 90 e5                                      ldr r3, [r0, #4]
00336098  08 20 93 e5                                      ldr r2, [r3, #8]
0033609c  00 00 52 e1                                      cmp r2, r0
003360a0  08 50 83 05                                      streq r5, [r3, #8]
003360a4  0c 50 83 15                                      strne r5, [r3, #0xc]
003360a8  04 20 90 e5                                      ldr r2, [r0, #4]
003360ac  00 30 d5 e5                                      ldrb r3, [r5]
003360b0  04 20 85 e5                                      str r2, [r5, #4]
003360b4  00 20 d0 e5                                      ldrb r2, [r0]
003360b8  00 20 c5 e5                                      strb r2, [r5]
003360bc  00 30 c0 e5                                      strb r3, [r0]
003360c0  00 50 a0 e1                                      mov r5, r0
003360c4  00 00 53 e3                                      cmp r3, #0
003360c8  00 60 a0 13                                      movne r6, #0
003360cc  01 70 a0 13                                      movne r7, #1
003360d0  09 00 00 0a                                      beq #0x3360fc
003360d4  00 30 91 e5                                      ldr r3, [r1]
003360d8  04 00 53 e1                                      cmp r3, r4
003360dc  af 00 00 0a                                      beq #0x3363a0
003360e0  00 00 54 e3                                      cmp r4, #0
003360e4  07 00 00 0a                                      beq #0x336108
003360e8  00 30 d4 e5                                      ldrb r3, [r4]
003360ec  00 00 53 e3                                      cmp r3, #0
003360f0  04 00 00 1a                                      bne #0x336108
003360f4  01 30 a0 e3                                      mov r3, #1
003360f8  00 30 c4 e5                                      strb r3, [r4]
003360fc  05 00 a0 e1                                      mov r0, r5
00336100  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00336104  1e ff 2f e1                                      bx lr
00336108  08 30 9c e5                                      ldr r3, [ip, #8]
0033610c  04 00 53 e1                                      cmp r3, r4
00336110  29 00 00 0a                                      beq #0x3361bc
00336114  00 00 d3 e5                                      ldrb r0, [r3]
00336118  00 00 50 e3                                      cmp r0, #0
0033611c  15 00 00 1a                                      bne #0x336178
00336120  00 70 c3 e5                                      strb r7, [r3]
00336124  08 20 9c e5                                      ldr r2, [ip, #8]
00336128  00 00 cc e5                                      strb r0, [ip]
0033612c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00336130  08 30 8c e5                                      str r3, [ip, #8]
00336134  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00336138  00 00 53 e3                                      cmp r3, #0
0033613c  04 c0 83 15                                      strne ip, [r3, #4]
00336140  04 30 9c e5                                      ldr r3, [ip, #4]
00336144  04 30 82 e5                                      str r3, [r2, #4]
00336148  00 30 91 e5                                      ldr r3, [r1]
0033614c  03 00 5c e1                                      cmp ip, r3
00336150  00 20 81 05                                      streq r2, [r1]
00336154  04 00 00 0a                                      beq #0x33616c
00336158  04 30 9c e5                                      ldr r3, [ip, #4]
0033615c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00336160  00 00 5c e1                                      cmp ip, r0
00336164  0c 20 83 05                                      streq r2, [r3, #0xc]
00336168  08 20 83 15                                      strne r2, [r3, #8]
0033616c  0c c0 82 e5                                      str ip, [r2, #0xc]
00336170  08 30 9c e5                                      ldr r3, [ip, #8]
00336174  04 20 8c e5                                      str r2, [ip, #4]
00336178  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0033617c  00 00 52 e3                                      cmp r2, #0
00336180  02 00 00 0a                                      beq #0x336190
00336184  00 00 d2 e5                                      ldrb r0, [r2]
00336188  00 00 50 e3                                      cmp r0, #0
0033618c  4b 00 00 0a                                      beq #0x3362c0
00336190  08 20 93 e5                                      ldr r2, [r3, #8]
00336194  00 00 52 e3                                      cmp r2, #0
00336198  02 00 00 0a                                      beq #0x3361a8
0033619c  00 20 d2 e5                                      ldrb r2, [r2]
003361a0  00 00 52 e3                                      cmp r2, #0
003361a4  63 00 00 0a                                      beq #0x336338
003361a8  00 60 c3 e5                                      strb r6, [r3]
003361ac  04 30 9c e5                                      ldr r3, [ip, #4]
003361b0  0c 40 a0 e1                                      mov r4, ip
003361b4  03 c0 a0 e1                                      mov ip, r3
003361b8  c5 ff ff ea                                      b #0x3360d4
003361bc  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003361c0  00 00 d3 e5                                      ldrb r0, [r3]
003361c4  00 00 50 e3                                      cmp r0, #0
003361c8  15 00 00 1a                                      bne #0x336224
003361cc  00 70 c3 e5                                      strb r7, [r3]
003361d0  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003361d4  00 00 cc e5                                      strb r0, [ip]
003361d8  08 30 92 e5                                      ldr r3, [r2, #8]
003361dc  0c 30 8c e5                                      str r3, [ip, #0xc]
003361e0  08 30 92 e5                                      ldr r3, [r2, #8]
003361e4  00 00 53 e3                                      cmp r3, #0
003361e8  04 c0 83 15                                      strne ip, [r3, #4]
003361ec  04 30 9c e5                                      ldr r3, [ip, #4]
003361f0  04 30 82 e5                                      str r3, [r2, #4]
003361f4  00 30 91 e5                                      ldr r3, [r1]
003361f8  03 00 5c e1                                      cmp ip, r3
003361fc  00 20 81 05                                      streq r2, [r1]
00336200  04 00 00 0a                                      beq #0x336218
00336204  04 30 9c e5                                      ldr r3, [ip, #4]
00336208  08 00 93 e5                                      ldr r0, [r3, #8]
0033620c  00 00 5c e1                                      cmp ip, r0
00336210  08 20 83 05                                      streq r2, [r3, #8]
00336214  0c 20 83 15                                      strne r2, [r3, #0xc]
00336218  08 c0 82 e5                                      str ip, [r2, #8]
0033621c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00336220  04 20 8c e5                                      str r2, [ip, #4]
00336224  08 20 93 e5                                      ldr r2, [r3, #8]
00336228  00 00 52 e3                                      cmp r2, #0
0033622c  02 00 00 0a                                      beq #0x33623c
00336230  00 00 d2 e5                                      ldrb r0, [r2]
00336234  00 00 50 e3                                      cmp r0, #0
00336238  7f 00 00 0a                                      beq #0x33643c
0033623c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00336240  00 00 52 e3                                      cmp r2, #0
00336244  d7 ff ff 0a                                      beq #0x3361a8
00336248  00 20 d2 e5                                      ldrb r2, [r2]
0033624c  00 00 52 e3                                      cmp r2, #0
00336250  d4 ff ff 1a                                      bne #0x3361a8
00336254  00 00 dc e5                                      ldrb r0, [ip]
00336258  01 20 a0 e3                                      mov r2, #1
0033625c  00 00 c3 e5                                      strb r0, [r3]
00336260  00 20 cc e5                                      strb r2, [ip]
00336264  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00336268  00 00 53 e3                                      cmp r3, #0
0033626c  00 20 c3 15                                      strbne r2, [r3]
00336270  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00336274  08 20 93 e5                                      ldr r2, [r3, #8]
00336278  0c 20 8c e5                                      str r2, [ip, #0xc]
0033627c  08 20 93 e5                                      ldr r2, [r3, #8]
00336280  00 00 52 e3                                      cmp r2, #0
00336284  04 c0 82 15                                      strne ip, [r2, #4]
00336288  04 20 9c e5                                      ldr r2, [ip, #4]
0033628c  04 20 83 e5                                      str r2, [r3, #4]
00336290  00 20 91 e5                                      ldr r2, [r1]
00336294  02 00 5c e1                                      cmp ip, r2
00336298  00 30 81 05                                      streq r3, [r1]
0033629c  04 00 00 0a                                      beq #0x3362b4
003362a0  04 20 9c e5                                      ldr r2, [ip, #4]
003362a4  08 10 92 e5                                      ldr r1, [r2, #8]
003362a8  01 00 5c e1                                      cmp ip, r1
003362ac  08 30 82 05                                      streq r3, [r2, #8]
003362b0  0c 30 82 15                                      strne r3, [r2, #0xc]
003362b4  08 c0 83 e5                                      str ip, [r3, #8]
003362b8  04 30 8c e5                                      str r3, [ip, #4]
003362bc  37 00 00 ea                                      b #0x3363a0
003362c0  08 00 93 e5                                      ldr r0, [r3, #8]
003362c4  00 00 50 e3                                      cmp r0, #0
003362c8  02 00 00 0a                                      beq #0x3362d8
003362cc  00 00 d0 e5                                      ldrb r0, [r0]
003362d0  00 00 50 e3                                      cmp r0, #0
003362d4  17 00 00 0a                                      beq #0x336338
003362d8  01 00 a0 e3                                      mov r0, #1
003362dc  00 00 c2 e5                                      strb r0, [r2]
003362e0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003362e4  00 00 a0 e3                                      mov r0, #0
003362e8  00 00 c3 e5                                      strb r0, [r3]
003362ec  08 00 92 e5                                      ldr r0, [r2, #8]
003362f0  0c 00 83 e5                                      str r0, [r3, #0xc]
003362f4  08 00 92 e5                                      ldr r0, [r2, #8]
003362f8  00 00 50 e3                                      cmp r0, #0
003362fc  04 30 80 15                                      strne r3, [r0, #4]
00336300  04 00 93 e5                                      ldr r0, [r3, #4]
00336304  04 00 82 e5                                      str r0, [r2, #4]
00336308  00 00 91 e5                                      ldr r0, [r1]
0033630c  00 00 53 e1                                      cmp r3, r0
00336310  00 20 81 05                                      streq r2, [r1]
00336314  04 00 00 0a                                      beq #0x33632c
00336318  04 00 93 e5                                      ldr r0, [r3, #4]
0033631c  08 60 90 e5                                      ldr r6, [r0, #8]
00336320  06 00 53 e1                                      cmp r3, r6
00336324  08 20 80 05                                      streq r2, [r0, #8]
00336328  0c 20 80 15                                      strne r2, [r0, #0xc]
0033632c  08 30 82 e5                                      str r3, [r2, #8]
00336330  04 20 83 e5                                      str r2, [r3, #4]
00336334  08 30 9c e5                                      ldr r3, [ip, #8]
00336338  00 00 dc e5                                      ldrb r0, [ip]
0033633c  01 20 a0 e3                                      mov r2, #1
00336340  00 00 c3 e5                                      strb r0, [r3]
00336344  00 20 cc e5                                      strb r2, [ip]
00336348  08 30 93 e5                                      ldr r3, [r3, #8]
0033634c  00 00 53 e3                                      cmp r3, #0
00336350  00 20 c3 15                                      strbne r2, [r3]
00336354  08 30 9c e5                                      ldr r3, [ip, #8]
00336358  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0033635c  08 20 8c e5                                      str r2, [ip, #8]
00336360  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00336364  00 00 52 e3                                      cmp r2, #0
00336368  04 c0 82 15                                      strne ip, [r2, #4]
0033636c  04 20 9c e5                                      ldr r2, [ip, #4]
00336370  04 20 83 e5                                      str r2, [r3, #4]
00336374  00 20 91 e5                                      ldr r2, [r1]
00336378  02 00 5c e1                                      cmp ip, r2
0033637c  00 30 81 05                                      streq r3, [r1]
00336380  04 00 00 0a                                      beq #0x336398
00336384  04 20 9c e5                                      ldr r2, [ip, #4]
00336388  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0033638c  01 00 5c e1                                      cmp ip, r1
00336390  0c 30 82 05                                      streq r3, [r2, #0xc]
00336394  08 30 82 15                                      strne r3, [r2, #8]
00336398  0c c0 83 e5                                      str ip, [r3, #0xc]
0033639c  04 30 8c e5                                      str r3, [ip, #4]
003363a0  00 00 54 e3                                      cmp r4, #0
003363a4  54 ff ff 0a                                      beq #0x3360fc
003363a8  51 ff ff ea                                      b #0x3360f4
003363ac  0c 40 a0 e1                                      mov r4, ip
003363b0  00 50 a0 e1                                      mov r5, r0
003363b4  04 c0 95 e5                                      ldr ip, [r5, #4]
003363b8  00 00 54 e3                                      cmp r4, #0
003363bc  04 c0 84 15                                      strne ip, [r4, #4]
003363c0  00 60 91 e5                                      ldr r6, [r1]
003363c4  00 00 56 e1                                      cmp r6, r0
003363c8  00 40 81 05                                      streq r4, [r1]
003363cc  04 00 00 0a                                      beq #0x3363e4
003363d0  04 60 90 e5                                      ldr r6, [r0, #4]
003363d4  08 70 96 e5                                      ldr r7, [r6, #8]
003363d8  00 00 57 e1                                      cmp r7, r0
003363dc  08 40 86 05                                      streq r4, [r6, #8]
003363e0  0c 40 86 15                                      strne r4, [r6, #0xc]
003363e4  00 60 92 e5                                      ldr r6, [r2]
003363e8  00 00 56 e1                                      cmp r6, r0
003363ec  31 00 00 0a                                      beq #0x3364b8
003363f0  00 20 93 e5                                      ldr r2, [r3]
003363f4  00 00 52 e1                                      cmp r2, r0
003363f8  00 30 d5 15                                      ldrbne r3, [r5]
003363fc  30 ff ff 1a                                      bne #0x3360c4
00336400  08 20 90 e5                                      ldr r2, [r0, #8]
00336404  00 00 52 e3                                      cmp r2, #0
00336408  04 20 90 05                                      ldreq r2, [r0, #4]
0033640c  00 20 83 05                                      streq r2, [r3]
00336410  00 30 d5 05                                      ldrbeq r3, [r5]
00336414  2a ff ff 0a                                      beq #0x3360c4
00336418  04 00 a0 e1                                      mov r0, r4
0033641c  00 00 00 ea                                      b #0x336424
00336420  02 00 a0 e1                                      mov r0, r2
00336424  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00336428  00 00 52 e3                                      cmp r2, #0
0033642c  fb ff ff 1a                                      bne #0x336420
00336430  00 00 83 e5                                      str r0, [r3]
00336434  00 30 d5 e5                                      ldrb r3, [r5]
00336438  21 ff ff ea                                      b #0x3360c4
0033643c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00336440  00 00 50 e3                                      cmp r0, #0
00336444  02 00 00 0a                                      beq #0x336454
00336448  00 00 d0 e5                                      ldrb r0, [r0]
0033644c  00 00 50 e3                                      cmp r0, #0
00336450  7f ff ff 0a                                      beq #0x336254
00336454  01 00 a0 e3                                      mov r0, #1
00336458  00 00 c2 e5                                      strb r0, [r2]
0033645c  08 20 93 e5                                      ldr r2, [r3, #8]
00336460  00 00 a0 e3                                      mov r0, #0
00336464  00 00 c3 e5                                      strb r0, [r3]
00336468  0c 00 92 e5                                      ldr r0, [r2, #0xc]
0033646c  08 00 83 e5                                      str r0, [r3, #8]
00336470  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00336474  00 00 50 e3                                      cmp r0, #0
00336478  04 30 80 15                                      strne r3, [r0, #4]
0033647c  04 00 93 e5                                      ldr r0, [r3, #4]
00336480  04 00 82 e5                                      str r0, [r2, #4]
00336484  00 00 91 e5                                      ldr r0, [r1]
00336488  00 00 53 e1                                      cmp r3, r0
0033648c  00 20 81 05                                      streq r2, [r1]
00336490  04 00 00 0a                                      beq #0x3364a8
00336494  04 00 93 e5                                      ldr r0, [r3, #4]
00336498  0c 60 90 e5                                      ldr r6, [r0, #0xc]
0033649c  06 00 53 e1                                      cmp r3, r6
003364a0  0c 20 80 05                                      streq r2, [r0, #0xc]
003364a4  08 20 80 15                                      strne r2, [r0, #8]
003364a8  0c 30 82 e5                                      str r3, [r2, #0xc]
003364ac  04 20 83 e5                                      str r2, [r3, #4]
003364b0  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003364b4  66 ff ff ea                                      b #0x336254
003364b8  0c 60 90 e5                                      ldr r6, [r0, #0xc]
003364bc  00 00 56 e3                                      cmp r6, #0
003364c0  04 60 90 05                                      ldreq r6, [r0, #4]
003364c4  00 60 82 05                                      streq r6, [r2]
003364c8  c8 ff ff 0a                                      beq #0x3363f0
003364cc  04 70 a0 e1                                      mov r7, r4
003364d0  00 00 00 ea                                      b #0x3364d8
003364d4  06 70 a0 e1                                      mov r7, r6
003364d8  08 60 97 e5                                      ldr r6, [r7, #8]
003364dc  00 00 56 e3                                      cmp r6, #0
003364e0  fb ff ff 1a                                      bne #0x3364d4
003364e4  00 70 82 e5                                      str r7, [r2]
003364e8  c0 ff ff ea                                      b #0x3363f0
