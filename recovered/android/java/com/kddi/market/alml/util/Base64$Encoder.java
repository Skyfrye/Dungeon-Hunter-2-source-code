package com.kddi.market.alml.util;

/* JADX INFO: loaded from: classes.dex */
class Base64$Encoder extends b {
    public static final int c = 19;
    static final /* synthetic */ boolean h;
    private static final byte[] i;
    private static final byte[] j;
    int d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    private final byte[] k;
    private int l;
    private final byte[] m;

    static {
        h = !Base64.class.desiredAssertionStatus();
        i = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        j = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    }

    public Base64$Encoder(int i2, byte[] bArr) {
        this.f231a = null;
        this.e = (i2 & 1) == 0;
        this.f = (i2 & 2) == 0;
        this.g = (i2 & 4) != 0;
        this.m = (i2 & 8) == 0 ? i : j;
        this.k = new byte[2];
        this.d = 0;
        this.l = this.f ? 19 : -1;
    }

    @Override // com.kddi.market.alml.util.b
    public final int a(int i2) {
        return ((i2 * 8) / 5) + 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x000f  */
    /* JADX WARN: Code duplicated, block: B:85:0x0207 A[PHI: r0 r1
      0x0207: PHI (r0v47 int) = (r0v39 int), (r0v64 int) binds: [B:61:0x01b5, B:24:0x0092] A[DONT_GENERATE, DONT_INLINE]
      0x0207: PHI (r1v22 int) = (r1v21 int), (r1v25 int) binds: [B:61:0x01b5, B:24:0x0092] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.kddi.market.alml.util.b
    public final boolean a(byte[] bArr, int i2, int i3, boolean z) {
        int i4;
        int i5;
        int i6;
        int i7;
        byte b;
        int i8;
        byte b2;
        int i9;
        byte b3;
        int i10;
        int i11;
        byte[] bArr2 = this.m;
        byte[] bArr3 = this.f231a;
        int i12 = 0;
        int i13 = this.l;
        int i14 = i3 + i2;
        switch (this.d) {
            case 0:
                i5 = -1;
                i4 = i2;
                break;
            case 1:
                if (i2 + 2 > i14) {
                    i5 = -1;
                    i4 = i2;
                } else {
                    int i15 = i2 + 1;
                    int i16 = ((this.k[0] & 255) << 16) | ((bArr[i2] & 255) << 8) | (bArr[i15] & 255);
                    this.d = 0;
                    i5 = i16;
                    i4 = i15 + 1;
                }
                break;
            case 2:
                if (i2 + 1 > i14) {
                    i5 = -1;
                    i4 = i2;
                } else {
                    i4 = i2 + 1;
                    int i17 = ((this.k[0] & 255) << 16) | ((this.k[1] & 255) << 8) | (bArr[i2] & 255);
                    this.d = 0;
                    i5 = i17;
                }
                break;
            default:
                i5 = -1;
                i4 = i2;
                break;
        }
        if (i5 != -1) {
            bArr3[0] = bArr2[(i5 >> 18) & 63];
            bArr3[1] = bArr2[(i5 >> 12) & 63];
            bArr3[2] = bArr2[(i5 >> 6) & 63];
            int i18 = 4;
            bArr3[3] = bArr2[i5 & 63];
            int i19 = i13 - 1;
            if (i19 == 0) {
                if (this.g) {
                    i18 = 5;
                    bArr3[4] = 13;
                }
                i12 = i18 + 1;
                bArr3[i18] = 10;
                i6 = 19;
            } else {
                i6 = i19;
                i12 = 4;
            }
        } else {
            i6 = i13;
        }
        while (i4 + 3 <= i14) {
            int i20 = ((bArr[i4] & 255) << 16) | ((bArr[i4 + 1] & 255) << 8) | (bArr[i4 + 2] & 255);
            bArr3[i12] = bArr2[(i20 >> 18) & 63];
            bArr3[i12 + 1] = bArr2[(i20 >> 12) & 63];
            bArr3[i12 + 2] = bArr2[(i20 >> 6) & 63];
            bArr3[i12 + 3] = bArr2[i20 & 63];
            i4 += 3;
            int i21 = i12 + 4;
            int i22 = i6 - 1;
            if (i22 == 0) {
                if (this.g) {
                    i11 = i21 + 1;
                    bArr3[i21] = 13;
                } else {
                    i11 = i21;
                }
                i12 = i11 + 1;
                bArr3[i11] = 10;
                i6 = 19;
            } else {
                i6 = i22;
                i12 = i21;
            }
        }
        if (i4 - this.d == i14 - 1) {
            if (this.d > 0) {
                i10 = 1;
                b3 = this.k[0];
            } else {
                b3 = bArr[i4];
                i4++;
                i10 = 0;
            }
            int i23 = (b3 & 255) << 4;
            this.d -= i10;
            int i24 = i12 + 1;
            bArr3[i12] = bArr2[(i23 >> 6) & 63];
            i9 = i24 + 1;
            bArr3[i24] = bArr2[i23 & 63];
            if (this.e) {
                int i25 = i9 + 1;
                bArr3[i9] = 61;
                i9 = i25 + 1;
                bArr3[i25] = 61;
            }
            if (this.f) {
                if (this.g) {
                    bArr3[i9] = 13;
                    i9++;
                }
                i12 = i9 + 1;
                bArr3[i9] = 10;
            } else {
                i12 = i9;
            }
        } else if (i4 - this.d == i14 - 2) {
            if (this.d > 1) {
                i8 = 1;
                b = this.k[0];
            } else {
                b = bArr[i4];
                i4++;
                i8 = 0;
            }
            int i26 = (b & 255) << 10;
            if (this.d > 0) {
                b2 = this.k[i8];
                i8++;
            } else {
                b2 = bArr[i4];
                i4++;
            }
            int i27 = ((b2 & 255) << 2) | i26;
            this.d -= i8;
            int i28 = i12 + 1;
            bArr3[i12] = bArr2[(i27 >> 12) & 63];
            int i29 = i28 + 1;
            bArr3[i28] = bArr2[(i27 >> 6) & 63];
            int i30 = i29 + 1;
            bArr3[i29] = bArr2[i27 & 63];
            if (this.e) {
                i9 = i30 + 1;
                bArr3[i30] = 61;
            } else {
                i9 = i30;
            }
            if (this.f) {
                if (this.g) {
                    bArr3[i9] = 13;
                    i9++;
                }
                i12 = i9 + 1;
                bArr3[i9] = 10;
            } else {
                i12 = i9;
            }
        } else if (this.f && i12 > 0 && i6 != 19) {
            if (this.g) {
                i7 = i12 + 1;
                bArr3[i12] = 13;
            } else {
                i7 = i12;
            }
            i12 = i7 + 1;
            bArr3[i7] = 10;
        }
        if (!h && this.d != 0) {
            throw new AssertionError();
        }
        if (!h && i4 != i14) {
            throw new AssertionError();
        }
        this.b = i12;
        this.l = i6;
        return true;
    }
}
