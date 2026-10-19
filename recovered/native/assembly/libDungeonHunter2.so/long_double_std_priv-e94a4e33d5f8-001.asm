; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008ba6f0, declared_size=784, range_size=784, mode=thumb
; class-group: long double std::priv
; alias: _ZNSt4priv10_Stl_atodTIe19ieee854_long_doubleLi16ELi16383EEET_Pcii
; demangled: long double std::priv::_Stl_atodT<long double, ieee854_long_double, 16, 16383>(char*, int, int)
; decoder-mode: thumb
008ba6f0  f0 b5                                            push {r4, r5, r6, r7, lr}
008ba6f2  47 46                                            mov r7, r8
008ba6f4  80 b4                                            push {r7}
008ba6f6  47 18                                            adds r7, r0, r1
008ba6f8  94 b0                                            sub sp, #0x50
008ba6fa  04 1c                                            adds r4, r0, #0
008ba6fc  90 46                                            mov r8, r2
008ba6fe  b8 42                                            cmp r0, r7
008ba700  00 d3                                            blo #0x8ba704
008ba702  9e e0                                            b #0x8ba842
008ba704  00 20                                            movs r0, #0
008ba706  00 21                                            movs r1, #0
008ba708  0a 22                                            movs r2, #0xa
008ba70a  00 23                                            movs r3, #0
008ba70c  54 f6 24 e1                                      blx #0x30e958
008ba710  25 78                                            ldrb r5, [r4]
008ba712  00 26                                            movs r6, #0
008ba714  01 34                                            adds r4, #1
008ba716  40 19                                            adds r0, r0, r5
008ba718  71 41                                            adcs r1, r6
008ba71a  bc 42                                            cmp r4, r7
008ba71c  f4 d1                                            bne #0x8ba708
008ba71e  02 1c                                            adds r2, r0, #0
008ba720  0a 43                                            orrs r2, r1
008ba722  00 d1                                            bne #0x8ba726
008ba724  8d e0                                            b #0x8ba842
008ba726  00 29                                            cmp r1, #0
008ba728  00 d0                                            beq #0x8ba72c
008ba72a  86 e0                                            b #0x8ba83a
008ba72c  10 23                                            movs r3, #0x10
008ba72e  00 24                                            movs r4, #0
008ba730  05 0c                                            lsrs r5, r0, #0x10
008ba732  0a 1c                                            adds r2, r1, #0
008ba734  da 40                                            lsrs r2, r3
008ba736  15 43                                            orrs r5, r2
008ba738  00 d0                                            beq #0x8ba73c
008ba73a  1c 1c                                            adds r4, r3, #0
008ba73c  18 25                                            movs r5, #0x18
008ba73e  23 1c                                            adds r3, r4, #0
008ba740  6d 42                                            rsbs r5, r5, #0
008ba742  08 33                                            adds r3, #8
008ba744  62 19                                            adds r2, r4, r5
008ba746  00 d5                                            bpl #0x8ba74a
008ba748  16 e1                                            b #0x8ba978
008ba74a  0d 1c                                            adds r5, r1, #0
008ba74c  d5 40                                            lsrs r5, r2
008ba74e  2a 1c                                            adds r2, r5, #0
008ba750  0d 1c                                            adds r5, r1, #0
008ba752  dd 40                                            lsrs r5, r3
008ba754  2a 43                                            orrs r2, r5
008ba756  00 d0                                            beq #0x8ba75a
008ba758  1c 1c                                            adds r4, r3, #0
008ba75a  1c 25                                            movs r5, #0x1c
008ba75c  6d 42                                            rsbs r5, r5, #0
008ba75e  23 1d                                            adds r3, r4, #4
008ba760  62 19                                            adds r2, r4, r5
008ba762  00 d5                                            bpl #0x8ba766
008ba764  ff e0                                            b #0x8ba966
008ba766  0d 1c                                            adds r5, r1, #0
008ba768  d5 40                                            lsrs r5, r2
008ba76a  2a 1c                                            adds r2, r5, #0
008ba76c  0d 1c                                            adds r5, r1, #0
008ba76e  dd 40                                            lsrs r5, r3
008ba770  2a 43                                            orrs r2, r5
008ba772  00 d0                                            beq #0x8ba776
008ba774  1c 1c                                            adds r4, r3, #0
008ba776  1e 25                                            movs r5, #0x1e
008ba778  6d 42                                            rsbs r5, r5, #0
008ba77a  a3 1c                                            adds r3, r4, #2
008ba77c  62 19                                            adds r2, r4, r5
008ba77e  00 d5                                            bpl #0x8ba782
008ba780  e8 e0                                            b #0x8ba954
008ba782  0d 1c                                            adds r5, r1, #0
008ba784  d5 40                                            lsrs r5, r2
008ba786  2a 1c                                            adds r2, r5, #0
008ba788  0d 1c                                            adds r5, r1, #0
008ba78a  dd 40                                            lsrs r5, r3
008ba78c  2a 43                                            orrs r2, r5
008ba78e  00 d0                                            beq #0x8ba792
008ba790  1c 1c                                            adds r4, r3, #0
008ba792  1f 25                                            movs r5, #0x1f
008ba794  6d 42                                            rsbs r5, r5, #0
008ba796  63 1c                                            adds r3, r4, #1
008ba798  62 19                                            adds r2, r4, r5
008ba79a  00 d5                                            bpl #0x8ba79e
008ba79c  d1 e0                                            b #0x8ba942
008ba79e  0d 1c                                            adds r5, r1, #0
008ba7a0  d5 40                                            lsrs r5, r2
008ba7a2  2a 1c                                            adds r2, r5, #0
008ba7a4  0d 1c                                            adds r5, r1, #0
008ba7a6  dd 40                                            lsrs r5, r3
008ba7a8  2a 43                                            orrs r2, r5
008ba7aa  50 d0                                            beq #0x8ba84e
008ba7ac  01 33                                            adds r3, #1
008ba7ae  1c 1c                                            adds r4, r3, #0
008ba7b0  40 22                                            movs r2, #0x40
008ba7b2  20 25                                            movs r5, #0x20
008ba7b4  12 1b                                            subs r2, r2, r4
008ba7b6  6d 42                                            rsbs r5, r5, #0
008ba7b8  53 19                                            adds r3, r2, r5
008ba7ba  5a d4                                            bmi #0x8ba872
008ba7bc  05 1c                                            adds r5, r0, #0
008ba7be  9d 40                                            lsls r5, r3
008ba7c0  11 95                                            str r5, [sp, #0x44]
008ba7c2  03 1c                                            adds r3, r0, #0
008ba7c4  93 40                                            lsls r3, r2
008ba7c6  10 a8                                            add r0, sp, #0x40
008ba7c8  13 aa                                            add r2, sp, #0x4c
008ba7ca  41 46                                            mov r1, r8
008ba7cc  10 93                                            str r3, [sp, #0x40]
008ba7ce  ff f7 33 fc                                      bl #0x8ba038
008ba7d2  13 9a                                            ldr r2, [sp, #0x4c]
008ba7d4  86 4b                                            ldr r3, [pc, #0x218]
008ba7d6  a2 18                                            adds r2, r4, r2
008ba7d8  9a 42                                            cmp r2, r3
008ba7da  54 db                                            blt #0x8ba886
008ba7dc  11 98                                            ldr r0, [sp, #0x44]
008ba7de  10 9d                                            ldr r5, [sp, #0x40]
008ba7e0  83 04                                            lsls r3, r0, #0x12
008ba7e2  a9 0b                                            lsrs r1, r5, #0xe
008ba7e4  86 0b                                            lsrs r6, r0, #0xe
008ba7e6  19 43                                            orrs r1, r3
008ba7e8  f6 07                                            lsls r6, r6, #0x1f
008ba7ea  4b 08                                            lsrs r3, r1, #1
008ba7ec  c4 0b                                            lsrs r4, r0, #0xf
008ba7ee  01 20                                            movs r0, #1
008ba7f0  33 43                                            orrs r3, r6
008ba7f2  08 42                                            tst r0, r1
008ba7f4  13 d0                                            beq #0x8ba81e
008ba7f6  18 42                                            tst r0, r3
008ba7f8  02 d1                                            bne #0x8ba800
008ba7fa  6d 05                                            lsls r5, r5, #0x15
008ba7fc  00 2d                                            cmp r5, #0
008ba7fe  0e d0                                            beq #0x8ba81e
008ba800  01 20                                            movs r0, #1
008ba802  00 21                                            movs r1, #0
008ba804  1b 18                                            adds r3, r3, r0
008ba806  4c 41                                            adcs r4, r1
008ba808  61 0d                                            lsrs r1, r4, #0x15
008ba80a  00 29                                            cmp r1, #0
008ba80c  07 d0                                            beq #0x8ba81e
008ba80e  e6 07                                            lsls r6, r4, #0x1f
008ba810  5d 08                                            lsrs r5, r3, #1
008ba812  30 1c                                            adds r0, r6, #0
008ba814  28 43                                            orrs r0, r5
008ba816  61 08                                            lsrs r1, r4, #1
008ba818  03 1c                                            adds r3, r0, #0
008ba81a  0c 1c                                            adds r4, r1, #0
008ba81c  01 32                                            adds r2, #1
008ba81e  80 21                                            movs r1, #0x80
008ba820  c9 00                                            lsls r1, r1, #3
008ba822  8a 42                                            cmp r2, r1
008ba824  00 dc                                            bgt #0x8ba828
008ba826  80 e0                                            b #0x8ba92a
008ba828  72 4a                                            ldr r2, [pc, #0x1c8]
008ba82a  00 23                                            movs r3, #0
008ba82c  01 93                                            str r3, [sp, #4]
008ba82e  00 93                                            str r3, [sp]
008ba830  6b 46                                            mov r3, sp
008ba832  da 80                                            strh r2, [r3, #6]
008ba834  00 98                                            ldr r0, [sp]
008ba836  01 99                                            ldr r1, [sp, #4]
008ba838  05 e0                                            b #0x8ba846
008ba83a  30 23                                            movs r3, #0x30
008ba83c  20 24                                            movs r4, #0x20
008ba83e  0d 0c                                            lsrs r5, r1, #0x10
008ba840  77 e7                                            b #0x8ba732
008ba842  6a 49                                            ldr r1, [pc, #0x1a8]
008ba844  68 48                                            ldr r0, [pc, #0x1a0]
008ba846  14 b0                                            add sp, #0x50
008ba848  04 bc                                            pop {r2}
008ba84a  90 46                                            mov r8, r2
008ba84c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ba84e  20 25                                            movs r5, #0x20
008ba850  6d 42                                            rsbs r5, r5, #0
008ba852  62 19                                            adds r2, r4, r5
008ba854  00 d5                                            bpl #0x8ba858
008ba856  98 e0                                            b #0x8ba98a
008ba858  0d 1c                                            adds r5, r1, #0
008ba85a  d5 40                                            lsrs r5, r2
008ba85c  2a 1c                                            adds r2, r5, #0
008ba85e  0d 1c                                            adds r5, r1, #0
008ba860  e5 40                                            lsrs r5, r4
008ba862  2a 43                                            orrs r2, r5
008ba864  a3 d1                                            bne #0x8ba7ae
008ba866  40 22                                            movs r2, #0x40
008ba868  20 25                                            movs r5, #0x20
008ba86a  12 1b                                            subs r2, r2, r4
008ba86c  6d 42                                            rsbs r5, r5, #0
008ba86e  53 19                                            adds r3, r2, r5
008ba870  a4 d5                                            bpl #0x8ba7bc
008ba872  20 23                                            movs r3, #0x20
008ba874  9b 1a                                            subs r3, r3, r2
008ba876  05 1c                                            adds r5, r0, #0
008ba878  dd 40                                            lsrs r5, r3
008ba87a  2b 1c                                            adds r3, r5, #0
008ba87c  0d 1c                                            adds r5, r1, #0
008ba87e  95 40                                            lsls r5, r2
008ba880  2b 43                                            orrs r3, r5
008ba882  11 93                                            str r3, [sp, #0x44]
008ba884  9d e7                                            b #0x8ba7c2
008ba886  5c 4d                                            ldr r5, [pc, #0x170]
008ba888  52 19                                            adds r2, r2, r5
008ba88a  11 1c                                            adds r1, r2, #0
008ba88c  35 31                                            adds r1, #0x35
008ba88e  3c db                                            blt #0x8ba90a
008ba890  10 23                                            movs r3, #0x10
008ba892  9a 1a                                            subs r2, r3, r2
008ba894  40 2a                                            cmp r2, #0x40
008ba896  38 dc                                            bgt #0x8ba90a
008ba898  40 2a                                            cmp r2, #0x40
008ba89a  00 d1                                            bne #0x8ba89e
008ba89c  84 e0                                            b #0x8ba9a8
008ba89e  20 21                                            movs r1, #0x20
008ba8a0  49 42                                            rsbs r1, r1, #0
008ba8a2  10 9d                                            ldr r5, [sp, #0x40]
008ba8a4  11 9b                                            ldr r3, [sp, #0x44]
008ba8a6  54 18                                            adds r4, r2, r1
008ba8a8  78 d4                                            bmi #0x8ba99c
008ba8aa  01 26                                            movs r6, #1
008ba8ac  31 1c                                            adds r1, r6, #0
008ba8ae  a1 40                                            lsls r1, r4
008ba8b0  01 26                                            movs r6, #1
008ba8b2  30 1c                                            adds r0, r6, #0
008ba8b4  90 40                                            lsls r0, r2
008ba8b6  02 26                                            movs r6, #2
008ba8b8  76 42                                            rsbs r6, r6, #0
008ba8ba  f7 17                                            asrs r7, r6, #0x1f
008ba8bc  80 19                                            adds r0, r0, r6
008ba8be  79 41                                            adcs r1, r7
008ba8c0  0e 1c                                            adds r6, r1, #0
008ba8c2  07 1c                                            adds r7, r0, #0
008ba8c4  19 1c                                            adds r1, r3, #0
008ba8c6  2f 40                                            ands r7, r5
008ba8c8  1e 40                                            ands r6, r3
008ba8ca  e1 40                                            lsrs r1, r4
008ba8cc  00 2c                                            cmp r4, #0
008ba8ce  75 db                                            blt #0x8ba9bc
008ba8d0  d3 40                                            lsrs r3, r2
008ba8d2  1a 1c                                            adds r2, r3, #0
008ba8d4  48 1e                                            subs r0, r1, #1
008ba8d6  01 23                                            movs r3, #1
008ba8d8  18 40                                            ands r0, r3
008ba8da  10 91                                            str r1, [sp, #0x40]
008ba8dc  11 92                                            str r2, [sp, #0x44]
008ba8de  00 28                                            cmp r0, #0
008ba8e0  17 d0                                            beq #0x8ba912
008ba8e2  01 22                                            movs r2, #1
008ba8e4  10 9b                                            ldr r3, [sp, #0x40]
008ba8e6  11 9c                                            ldr r4, [sp, #0x44]
008ba8e8  1a 42                                            tst r2, r3
008ba8ea  01 d1                                            bne #0x8ba8f0
008ba8ec  37 43                                            orrs r7, r6
008ba8ee  10 d0                                            beq #0x8ba912
008ba8f0  01 21                                            movs r1, #1
008ba8f2  00 22                                            movs r2, #0
008ba8f4  5b 18                                            adds r3, r3, r1
008ba8f6  54 41                                            adcs r4, r2
008ba8f8  00 2b                                            cmp r3, #0
008ba8fa  03 d1                                            bne #0x8ba904
008ba8fc  80 22                                            movs r2, #0x80
008ba8fe  52 03                                            lsls r2, r2, #0xd
008ba900  94 42                                            cmp r4, r2
008ba902  64 d0                                            beq #0x8ba9ce
008ba904  10 93                                            str r3, [sp, #0x40]
008ba906  11 94                                            str r4, [sp, #0x44]
008ba908  03 e0                                            b #0x8ba912
008ba90a  00 23                                            movs r3, #0
008ba90c  00 24                                            movs r4, #0
008ba90e  10 93                                            str r3, [sp, #0x40]
008ba910  11 94                                            str r4, [sp, #0x44]
008ba912  11 9a                                            ldr r2, [sp, #0x44]
008ba914  04 ab                                            add r3, sp, #0x10
008ba916  5a 60                                            str r2, [r3, #4]
008ba918  10 9a                                            ldr r2, [sp, #0x40]
008ba91a  04 92                                            str r2, [sp, #0x10]
008ba91c  59 7a                                            ldrb r1, [r3, #9]
008ba91e  7f 22                                            movs r2, #0x7f
008ba920  0a 40                                            ands r2, r1
008ba922  5a 72                                            strb r2, [r3, #9]
008ba924  04 98                                            ldr r0, [sp, #0x10]
008ba926  05 99                                            ldr r1, [sp, #0x14]
008ba928  8d e7                                            b #0x8ba846
008ba92a  34 49                                            ldr r1, [pc, #0xd0]
008ba92c  0c 93                                            str r3, [sp, #0x30]
008ba92e  0c aa                                            add r2, sp, #0x30
008ba930  21 40                                            ands r1, r4
008ba932  51 60                                            str r1, [r2, #4]
008ba934  51 7a                                            ldrb r1, [r2, #9]
008ba936  7f 23                                            movs r3, #0x7f
008ba938  0b 40                                            ands r3, r1
008ba93a  53 72                                            strb r3, [r2, #9]
008ba93c  0c 98                                            ldr r0, [sp, #0x30]
008ba93e  0d 99                                            ldr r1, [sp, #0x34]
008ba940  81 e7                                            b #0x8ba846
008ba942  20 25                                            movs r5, #0x20
008ba944  ed 1a                                            subs r5, r5, r3
008ba946  0a 1c                                            adds r2, r1, #0
008ba948  aa 40                                            lsls r2, r5
008ba94a  15 1c                                            adds r5, r2, #0
008ba94c  02 1c                                            adds r2, r0, #0
008ba94e  da 40                                            lsrs r2, r3
008ba950  2a 43                                            orrs r2, r5
008ba952  27 e7                                            b #0x8ba7a4
008ba954  20 25                                            movs r5, #0x20
008ba956  ed 1a                                            subs r5, r5, r3
008ba958  0a 1c                                            adds r2, r1, #0
008ba95a  aa 40                                            lsls r2, r5
008ba95c  15 1c                                            adds r5, r2, #0
008ba95e  02 1c                                            adds r2, r0, #0
008ba960  da 40                                            lsrs r2, r3
008ba962  2a 43                                            orrs r2, r5
008ba964  10 e7                                            b #0x8ba788
008ba966  20 25                                            movs r5, #0x20
008ba968  ed 1a                                            subs r5, r5, r3
008ba96a  0a 1c                                            adds r2, r1, #0
008ba96c  aa 40                                            lsls r2, r5
008ba96e  15 1c                                            adds r5, r2, #0
008ba970  02 1c                                            adds r2, r0, #0
008ba972  da 40                                            lsrs r2, r3
008ba974  2a 43                                            orrs r2, r5
008ba976  f9 e6                                            b #0x8ba76c
008ba978  20 25                                            movs r5, #0x20
008ba97a  ed 1a                                            subs r5, r5, r3
008ba97c  0a 1c                                            adds r2, r1, #0
008ba97e  aa 40                                            lsls r2, r5
008ba980  15 1c                                            adds r5, r2, #0
008ba982  02 1c                                            adds r2, r0, #0
008ba984  da 40                                            lsrs r2, r3
008ba986  2a 43                                            orrs r2, r5
008ba988  e2 e6                                            b #0x8ba750
008ba98a  20 25                                            movs r5, #0x20
008ba98c  2d 1b                                            subs r5, r5, r4
008ba98e  0a 1c                                            adds r2, r1, #0
008ba990  aa 40                                            lsls r2, r5
008ba992  15 1c                                            adds r5, r2, #0
008ba994  02 1c                                            adds r2, r0, #0
008ba996  e2 40                                            lsrs r2, r4
008ba998  2a 43                                            orrs r2, r5
008ba99a  60 e7                                            b #0x8ba85e
008ba99c  20 26                                            movs r6, #0x20
008ba99e  01 27                                            movs r7, #1
008ba9a0  b6 1a                                            subs r6, r6, r2
008ba9a2  39 1c                                            adds r1, r7, #0
008ba9a4  f1 40                                            lsrs r1, r6
008ba9a6  83 e7                                            b #0x8ba8b0
008ba9a8  11 98                                            ldr r0, [sp, #0x44]
008ba9aa  00 23                                            movs r3, #0
008ba9ac  00 24                                            movs r4, #0
008ba9ae  10 9f                                            ldr r7, [sp, #0x40]
008ba9b0  46 00                                            lsls r6, r0, #1
008ba9b2  76 08                                            lsrs r6, r6, #1
008ba9b4  c0 0f                                            lsrs r0, r0, #0x1f
008ba9b6  10 93                                            str r3, [sp, #0x40]
008ba9b8  11 94                                            str r4, [sp, #0x44]
008ba9ba  90 e7                                            b #0x8ba8de
008ba9bc  20 20                                            movs r0, #0x20
008ba9be  80 1a                                            subs r0, r0, r2
008ba9c0  19 1c                                            adds r1, r3, #0
008ba9c2  81 40                                            lsls r1, r0
008ba9c4  08 1c                                            adds r0, r1, #0
008ba9c6  29 1c                                            adds r1, r5, #0
008ba9c8  d1 40                                            lsrs r1, r2
008ba9ca  01 43                                            orrs r1, r0
008ba9cc  80 e7                                            b #0x8ba8d0
008ba9ce  00 22                                            movs r2, #0
008ba9d0  08 92                                            str r2, [sp, #0x20]
008ba9d2  08 ab                                            add r3, sp, #0x20
008ba9d4  59 7a                                            ldrb r1, [r3, #9]
008ba9d6  5a 60                                            str r2, [r3, #4]
008ba9d8  7f 22                                            movs r2, #0x7f
008ba9da  0a 40                                            ands r2, r1
008ba9dc  5a 72                                            strb r2, [r3, #9]
008ba9de  08 98                                            ldr r0, [sp, #0x20]
008ba9e0  09 99                                            ldr r1, [sp, #0x24]
008ba9e2  30 e7                                            b #0x8ba846
008ba9e4  c0 46                                            mov r8, r8
008ba9e6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ba9e8  00 00 00 00 00 00 00 00 03 fc ff ff f0 7f 00 00  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xfc, 0xff, 0xff, 0xf0, 0x7f, 0x00, 0x00
008ba9f8  fe 3f 00 00 ff ff ef ff                          .byte 0xfe, 0x3f, 0x00, 0x00, 0xff, 0xff, 0xef, 0xff

; FUNCTION 0x008baa00, declared_size=360, range_size=360, mode=thumb
; class-group: long double std::priv
; alias: _ZNSt4priv22_Stl_string_to_doubleTIe19ieee854_long_doubleLi16ELi16383EEET_PKc
; demangled: long double std::priv::_Stl_string_to_doubleT<long double, ieee854_long_double, 16, 16383>(char const*)
; decoder-mode: thumb
008baa00  f0 b5                                            push {r4, r5, r6, r7, lr}
008baa02  57 46                                            mov r7, sl
008baa04  4e 46                                            mov r6, sb
008baa06  45 46                                            mov r5, r8
008baa08  e0 b4                                            push {r5, r6, r7}
008baa0a  52 4c                                            ldr r4, [pc, #0x148]
008baa0c  52 4d                                            ldr r5, [pc, #0x148]
008baa0e  8a b0                                            sub sp, #0x28
008baa10  7c 44                                            add r4, pc
008baa12  63 59                                            ldr r3, [r4, r5]
008baa14  47 1c                                            adds r7, r0, #1
008baa16  1b 68                                            ldr r3, [r3]
008baa18  09 93                                            str r3, [sp, #0x24]
008baa1a  03 78                                            ldrb r3, [r0]
008baa1c  2b 2b                                            cmp r3, #0x2b
008baa1e  00 d1                                            bne #0x8baa22
008baa20  7b e0                                            b #0x8bab1a
008baa22  00 21                                            movs r1, #0
008baa24  8a 46                                            mov sl, r1
008baa26  2d 2b                                            cmp r3, #0x2d
008baa28  00 d1                                            bne #0x8baa2c
008baa2a  80 e0                                            b #0x8bab2e
008baa2c  05 ae                                            add r6, sp, #0x14
008baa2e  b0 46                                            mov r8, r6
008baa30  31 1c                                            adds r1, r6, #0
008baa32  01 26                                            movs r6, #1
008baa34  b1 46                                            mov sb, r6
008baa36  23 26                                            movs r6, #0x23
008baa38  6e 44                                            add r6, sp, r6
008baa3a  30 3b                                            subs r3, #0x30
008baa3c  00 22                                            movs r2, #0
008baa3e  00 20                                            movs r0, #0
008baa40  b4 46                                            mov ip, r6
008baa42  09 2b                                            cmp r3, #9
008baa44  0d d8                                            bhi #0x8baa62
008baa46  61 45                                            cmp r1, ip
008baa48  3d d0                                            beq #0x8baac6
008baa4a  00 2b                                            cmp r3, #0
008baa4c  01 d1                                            bne #0x8baa52
008baa4e  41 45                                            cmp r1, r8
008baa50  01 d0                                            beq #0x8baa56
008baa52  0b 70                                            strb r3, [r1]
008baa54  01 31                                            adds r1, #1
008baa56  12 1a                                            subs r2, r2, r0
008baa58  3b 78                                            ldrb r3, [r7]
008baa5a  01 37                                            adds r7, #1
008baa5c  30 3b                                            subs r3, #0x30
008baa5e  09 2b                                            cmp r3, #9
008baa60  f1 d9                                            bls #0x8baa46
008baa62  9e 1c                                            adds r6, r3, #2
008baa64  2b d0                                            beq #0x8baabe
008baa66  41 45                                            cmp r1, r8
008baa68  54 d0                                            beq #0x8bab14
008baa6a  15 2b                                            cmp r3, #0x15
008baa6c  2f d0                                            beq #0x8baace
008baa6e  35 2b                                            cmp r3, #0x35
008baa70  2d d0                                            beq #0x8baace
008baa72  46 46                                            mov r6, r8
008baa74  39 48                                            ldr r0, [pc, #0xe4]
008baa76  89 1b                                            subs r1, r1, r6
008baa78  53 18                                            adds r3, r2, r1
008baa7a  83 42                                            cmp r3, r0
008baa7c  4a db                                            blt #0x8bab14
008baa7e  38 48                                            ldr r0, [pc, #0xe0]
008baa80  83 42                                            cmp r3, r0
008baa82  59 dd                                            ble #0x8bab38
008baa84  00 23                                            movs r3, #0
008baa86  01 93                                            str r3, [sp, #4]
008baa88  00 93                                            str r3, [sp]
008baa8a  02 93                                            str r3, [sp, #8]
008baa8c  03 93                                            str r3, [sp, #0xc]
008baa8e  35 4b                                            ldr r3, [pc, #0xd4]
008baa90  6a 46                                            mov r2, sp
008baa92  d3 80                                            strh r3, [r2, #6]
008baa94  01 9a                                            ldr r2, [sp, #4]
008baa96  00 23                                            movs r3, #0
008baa98  50 46                                            mov r0, sl
008baa9a  00 28                                            cmp r0, #0
008baa9c  02 d0                                            beq #0x8baaa4
008baa9e  80 21                                            movs r1, #0x80
008baaa0  09 06                                            lsls r1, r1, #0x18
008baaa2  52 18                                            adds r2, r2, r1
008baaa4  18 1c                                            adds r0, r3, #0
008baaa6  63 59                                            ldr r3, [r4, r5]
008baaa8  11 1c                                            adds r1, r2, #0
008baaaa  09 9a                                            ldr r2, [sp, #0x24]
008baaac  1b 68                                            ldr r3, [r3]
008baaae  9a 42                                            cmp r2, r3
008baab0  4d d1                                            bne #0x8bab4e
008baab2  0a b0                                            add sp, #0x28
008baab4  1c bc                                            pop {r2, r3, r4}
008baab6  90 46                                            mov r8, r2
008baab8  99 46                                            mov sb, r3
008baaba  a2 46                                            mov sl, r4
008baabc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008baabe  00 28                                            cmp r0, #0
008baac0  d1 d1                                            bne #0x8baa66
008baac2  01 20                                            movs r0, #1
008baac4  c8 e7                                            b #0x8baa58
008baac6  4b 46                                            mov r3, sb
008baac8  43 40                                            eors r3, r0
008baaca  d2 18                                            adds r2, r2, r3
008baacc  c4 e7                                            b #0x8baa58
008baace  3b 78                                            ldrb r3, [r7]
008baad0  01 37                                            adds r7, #1
008baad2  20 2b                                            cmp r3, #0x20
008baad4  26 d0                                            beq #0x8bab24
008baad6  2b 2b                                            cmp r3, #0x2b
008baad8  24 d0                                            beq #0x8bab24
008baada  00 26                                            movs r6, #0
008baadc  b4 46                                            mov ip, r6
008baade  2d 2b                                            cmp r3, #0x2d
008baae0  30 d0                                            beq #0x8bab44
008baae2  30 3b                                            subs r3, #0x30
008baae4  09 2b                                            cmp r3, #9
008baae6  c4 d8                                            bhi #0x8baa72
008baae8  00 20                                            movs r0, #0
008baaea  86 00                                            lsls r6, r0, #2
008baaec  b1 46                                            mov sb, r6
008baaee  48 44                                            add r0, sb
008baaf0  40 00                                            lsls r0, r0, #1
008baaf2  18 18                                            adds r0, r3, r0
008baaf4  3b 78                                            ldrb r3, [r7]
008baaf6  01 37                                            adds r7, #1
008baaf8  30 3b                                            subs r3, #0x30
008baafa  09 2b                                            cmp r3, #9
008baafc  f5 d9                                            bls #0x8baaea
008baafe  63 46                                            mov r3, ip
008bab00  00 2b                                            cmp r3, #0
008bab02  00 d0                                            beq #0x8bab06
008bab04  40 42                                            rsbs r0, r0, #0
008bab06  82 18                                            adds r2, r0, r2
008bab08  46 46                                            mov r6, r8
008bab0a  14 48                                            ldr r0, [pc, #0x50]
008bab0c  89 1b                                            subs r1, r1, r6
008bab0e  53 18                                            adds r3, r2, r1
008bab10  83 42                                            cmp r3, r0
008bab12  b4 da                                            bge #0x8baa7e
008bab14  00 23                                            movs r3, #0
008bab16  00 22                                            movs r2, #0
008bab18  c4 e7                                            b #0x8baaa4
008bab1a  43 78                                            ldrb r3, [r0, #1]
008bab1c  00 20                                            movs r0, #0
008bab1e  01 37                                            adds r7, #1
008bab20  82 46                                            mov sl, r0
008bab22  83 e7                                            b #0x8baa2c
008bab24  00 20                                            movs r0, #0
008bab26  3b 78                                            ldrb r3, [r7]
008bab28  84 46                                            mov ip, r0
008bab2a  01 37                                            adds r7, #1
008bab2c  d9 e7                                            b #0x8baae2
008bab2e  01 22                                            movs r2, #1
008bab30  43 78                                            ldrb r3, [r0, #1]
008bab32  01 37                                            adds r7, #1
008bab34  92 46                                            mov sl, r2
008bab36  79 e7                                            b #0x8baa2c
008bab38  40 46                                            mov r0, r8
008bab3a  ff f7 d9 fd                                      bl #0x8ba6f0
008bab3e  03 1c                                            adds r3, r0, #0
008bab40  0a 1c                                            adds r2, r1, #0
008bab42  a9 e7                                            b #0x8baa98
008bab44  01 20                                            movs r0, #1
008bab46  3b 78                                            ldrb r3, [r7]
008bab48  84 46                                            mov ip, r0
008bab4a  01 37                                            adds r7, #1
008bab4c  c9 e7                                            b #0x8baae2
008bab4e  53 f6 e0 e3                                      blx #0x30e310
008bab52  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bab54  84 a0 0d 00 ac 40 00 00 ce fe ff ff 35 01 00 00  .byte 0x84, 0xa0, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xce, 0xfe, 0xff, 0xff, 0x35, 0x01, 0x00, 0x00
008bab64  f0 7f 00 00                                      .byte 0xf0, 0x7f, 0x00, 0x00
