package com.kddi.market.alml.util;

/* JADX INFO: loaded from: classes.dex */
class Base64$Decoder extends b {
    private static final int[] c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    private static final int[] d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    private static final int e = -1;
    private static final int f = -2;
    private int g;
    private int h;
    private final int[] i;

    public Base64$Decoder(int i, byte[] bArr) {
        this.f231a = bArr;
        this.i = (i & 8) == 0 ? c : d;
        this.g = 0;
        this.h = 0;
    }

    @Override // com.kddi.market.alml.util.b
    public final int a(int i) {
        return ((i * 3) / 4) + 10;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0112  */
    /* JADX WARN: Code duplicated, block: B:57:0x0118  */
    /* JADX WARN: Code duplicated, block: B:58:0x0122  */
    /* JADX WARN: Code duplicated, block: B:59:0x0132  */
    @Override // com.kddi.market.alml.util.b
    public final boolean a(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        if (this.g == 6) {
            return false;
        }
        int i4 = i2 + i;
        int i5 = this.g;
        int i6 = this.h;
        int i7 = 0;
        byte[] bArr2 = this.f231a;
        int[] iArr = this.i;
        int i8 = i5;
        int i9 = i;
        while (i9 < i4) {
            if (i8 == 0) {
                while (i9 + 4 <= i4 && (i6 = (iArr[bArr[i9] & 255] << 18) | (iArr[bArr[i9 + 1] & 255] << 12) | (iArr[bArr[i9 + 2] & 255] << 6) | iArr[bArr[i9 + 3] & 255]) >= 0) {
                    bArr2[i7 + 2] = (byte) i6;
                    bArr2[i7 + 1] = (byte) (i6 >> 8);
                    bArr2[i7] = (byte) (i6 >> 16);
                    i7 += 3;
                    i9 += 4;
                }
                if (i9 >= i4) {
                    i3 = i6;
                    switch (i8) {
                        case 1:
                            this.g = 6;
                            return false;
                        case 2:
                            bArr2[i7] = (byte) (i3 >> 4);
                            i7++;
                            break;
                        case 3:
                            int i10 = i7 + 1;
                            bArr2[i7] = (byte) (i3 >> 10);
                            i7 = i10 + 1;
                            bArr2[i10] = (byte) (i3 >> 2);
                            break;
                        case 4:
                            this.g = 6;
                            return false;
                    }
                    this.g = i8;
                    this.b = i7;
                    return true;
                }
            }
            i9++;
            int i11 = iArr[bArr[i9] & 255];
            switch (i8) {
                case 0:
                    if (i11 >= 0) {
                        i8++;
                        i6 = i11;
                    } else if (i11 != -1) {
                        this.g = 6;
                        return false;
                    }
                    break;
                case 1:
                    if (i11 >= 0) {
                        i6 = (i6 << 6) | i11;
                        i8++;
                    } else if (i11 != -1) {
                        this.g = 6;
                        return false;
                    }
                    break;
                case 2:
                    if (i11 >= 0) {
                        i6 = (i6 << 6) | i11;
                        i8++;
                    } else if (i11 == -2) {
                        bArr2[i7] = (byte) (i6 >> 4);
                        i8 = 4;
                        i7++;
                    } else if (i11 != -1) {
                        this.g = 6;
                        return false;
                    }
                    break;
                case 3:
                    if (i11 >= 0) {
                        i6 = (i6 << 6) | i11;
                        bArr2[i7 + 2] = (byte) i6;
                        bArr2[i7 + 1] = (byte) (i6 >> 8);
                        bArr2[i7] = (byte) (i6 >> 16);
                        i7 += 3;
                        i8 = 0;
                    } else if (i11 == -2) {
                        bArr2[i7 + 1] = (byte) (i6 >> 2);
                        bArr2[i7] = (byte) (i6 >> 10);
                        i7 += 2;
                        i8 = 5;
                    } else if (i11 != -1) {
                        this.g = 6;
                        return false;
                    }
                    break;
                case 4:
                    if (i11 == -2) {
                        i8++;
                    } else if (i11 != -1) {
                        this.g = 6;
                        return false;
                    }
                    break;
                case 5:
                    if (i11 != -1) {
                        this.g = 6;
                        return false;
                    }
                    break;
                default:
                    break;
            }
        }
        i3 = i6;
        switch (i8) {
            case 1:
                this.g = 6;
                return false;
            case 2:
                bArr2[i7] = (byte) (i3 >> 4);
                i7++;
                break;
            case 3:
                int i12 = i7 + 1;
                bArr2[i7] = (byte) (i3 >> 10);
                i7 = i12 + 1;
                bArr2[i12] = (byte) (i3 >> 2);
                break;
            case 4:
                this.g = 6;
                return false;
        }
        this.g = i8;
        this.b = i7;
        return true;
    }
}
