package com.kddi.market.alml.util;

import java.io.UnsupportedEncodingException;

public class Base64 {

    public static final int f229a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 4;
    public static final int e = 8;
    public static final int f = 16;
    static final /* synthetic */ boolean g;

    static class Decoder extends b {
        private static final int[] c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int[] d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int e = -1;
        private static final int f = -2;
        private int g;
        private int h;
        private final int[] i;

        public Decoder(int i, byte[] bArr) {
            this.f231a = bArr;
            this.i = (i & 8) == 0 ? c : d;
            this.g = 0;
            this.h = 0;
        }

        @Override // com.kddi.market.alml.util.b
        public final int a(int i) {
            return ((i * 3) / 4) + 10;
        }

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

    static class Encoder extends b {
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

        public Encoder(int i2, byte[] bArr) {
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

    static {
        g = !Base64.class.desiredAssertionStatus();
    }

    private Base64() {
    }

    public static byte[] decode(String str, int i) {
        return decode(str.getBytes(), i);
    }

    public static byte[] decode(byte[] bArr, int i) {
        return decode(bArr, 0, bArr.length, i);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) {
        Decoder decoder = new Decoder(i3, new byte[(i2 * 3) / 4]);
        if (!decoder.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (decoder.b == decoder.f231a.length) {
            return decoder.f231a;
        }
        byte[] bArr2 = new byte[decoder.b];
        System.arraycopy(decoder.f231a, 0, bArr2, 0, decoder.b);
        return bArr2;
    }

    public static byte[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, bArr.length, i);
    }

    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        Encoder encoder = new Encoder(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!encoder.e) {
            switch (i2 % 3) {
                case 1:
                    i4 += 2;
                    break;
                case 2:
                    i4 += 3;
                    break;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (encoder.f && i2 > 0) {
            i4 += (encoder.g ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        encoder.f231a = new byte[i4];
        encoder.a(bArr, i, i2, true);
        if (g || encoder.b == i4) {
            return encoder.f231a;
        }
        throw new AssertionError();
    }

    public static String encodeToString(byte[] bArr, int i) {
        try {
            return new String(encode(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    public static String encodeToString(byte[] bArr, int i, int i2, int i3) {
        try {
            return new String(encode(bArr, i, i2, i3), "US-ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
