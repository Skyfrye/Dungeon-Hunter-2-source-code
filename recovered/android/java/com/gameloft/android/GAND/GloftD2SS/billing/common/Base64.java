package com.gameloft.android.GAND.GloftD2SS.billing.common;

/* JADX INFO: loaded from: classes.dex */
public class Base64 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f74a = true;
    public static final boolean b = false;
    static final /* synthetic */ boolean c;
    private static final byte d = 61;
    private static final byte e = 10;
    private static final byte[] f;
    private static final byte[] g;
    private static final byte[] h;
    private static final byte[] i;
    private static final byte j = -5;
    private static final byte k = -1;

    static {
        c = !Base64.class.desiredAssertionStatus();
        f = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        g = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        h = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, j, j, -9, -9, j, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, j, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, d, -9, -9, -9, k, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, e, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};
        i = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, j, j, -9, -9, j, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, j, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, d, -9, -9, -9, k, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, e, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};
    }

    private Base64() {
    }

    public static byte[] decode(String str) {
        byte[] bytes = str.getBytes();
        return decode(bytes, 0, bytes.length);
    }

    public static byte[] decode(byte[] bArr) {
        return decode(bArr, 0, bArr.length);
    }

    public static byte[] decode(byte[] bArr, int i2, int i3) {
        return decode(bArr, i2, i3, h);
    }

    public static byte[] decode(byte[] bArr, int i2, int i3, byte[] bArr2) throws a {
        int i4;
        int iDecode4to3;
        byte[] bArr3 = new byte[((i3 * 3) / 4) + 2];
        byte[] bArr4 = new byte[4];
        int i5 = 0;
        int i6 = 0;
        int iDecode4to4 = 0;
        while (i5 < i3) {
            byte b2 = (byte) (bArr[i5 + i2] & 127);
            byte b3 = bArr2[b2];
            if (b3 < -5) {
                throw new a("Bad Base64 input character at " + i5 + ": " + ((int) bArr[i5 + i2]) + "(decimal)");
            }
            if (b3 < -1) {
                i4 = i6;
                iDecode4to3 = iDecode4to4;
            } else {
                if (b2 == 61) {
                    int i7 = i3 - i5;
                    byte b4 = (byte) (bArr[(i3 - 1) + i2] & 127);
                    if (i6 == 0 || i6 == 1) {
                        throw new a("invalid padding byte '=' at byte offset " + i5);
                    }
                    if ((i6 == 3 && i7 > 2) || (i6 == 4 && i7 > 1)) {
                        throw new a("padding byte '=' falsely signals end of encoded value at offset " + i5);
                    }
                    if (b4 != 61 && b4 != 10) {
                        throw new a("encoded value has invalid trailing byte");
                    }
                    break;
                    break;
                }
                i4 = i6 + 1;
                bArr4[i6] = b2;
                if (i4 == 4) {
                    iDecode4to3 = decode4to3(bArr4, 0, bArr3, iDecode4to4, bArr2) + iDecode4to4;
                    i4 = 0;
                } else {
                    iDecode4to3 = iDecode4to4;
                }
            }
            i5++;
            iDecode4to4 = iDecode4to3;
            i6 = i4;
        }
        if (i6 != 0) {
            if (i6 == 1) {
                throw new a("single trailing character at offset " + (i3 - 1));
            }
            bArr4[i6] = d;
            iDecode4to4 += decode4to3(bArr4, 0, bArr3, iDecode4to4, bArr2);
        }
        byte[] bArr5 = new byte[iDecode4to4];
        System.arraycopy(bArr3, 0, bArr5, 0, iDecode4to4);
        return bArr5;
    }

    private static int decode4to3(byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3) {
        if (bArr[i2 + 2] == 61) {
            bArr2[i3] = (byte) ((((bArr3[bArr[i2]] << 24) >>> 6) | ((bArr3[bArr[i2 + 1]] << 24) >>> 12)) >>> 16);
            return 1;
        }
        if (bArr[i2 + 3] == 61) {
            int i4 = ((bArr3[bArr[i2]] << 24) >>> 6) | ((bArr3[bArr[i2 + 1]] << 24) >>> 12) | ((bArr3[bArr[i2 + 2]] << 24) >>> 18);
            bArr2[i3] = (byte) (i4 >>> 16);
            bArr2[i3 + 1] = (byte) (i4 >>> 8);
            return 2;
        }
        int i5 = ((bArr3[bArr[i2]] << 24) >>> 6) | ((bArr3[bArr[i2 + 1]] << 24) >>> 12) | ((bArr3[bArr[i2 + 2]] << 24) >>> 18) | ((bArr3[bArr[i2 + 3]] << 24) >>> 24);
        bArr2[i3] = (byte) (i5 >> 16);
        bArr2[i3 + 1] = (byte) (i5 >> 8);
        bArr2[i3 + 2] = (byte) i5;
        return 3;
    }

    public static byte[] decodeWebSafe(String str) {
        byte[] bytes = str.getBytes();
        return decodeWebSafe(bytes, 0, bytes.length);
    }

    public static byte[] decodeWebSafe(byte[] bArr) {
        return decodeWebSafe(bArr, 0, bArr.length);
    }

    public static byte[] decodeWebSafe(byte[] bArr, int i2, int i3) {
        return decode(bArr, i2, i3, i);
    }

    public static String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length, f, true);
    }

    public static String encode(byte[] bArr, int i2, int i3, byte[] bArr2, boolean z) {
        byte[] bArrEncode = encode(bArr, i2, i3, bArr2, Integer.MAX_VALUE);
        int length = bArrEncode.length;
        while (!z && length > 0 && bArrEncode[length - 1] == 61) {
            length--;
        }
        return new String(bArrEncode, 0, length);
    }

    public static byte[] encode(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        int i5 = ((i3 + 2) / 3) * 4;
        byte[] bArr3 = new byte[i5 + (i5 / i4)];
        int i6 = i3 - 2;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i9 < i6) {
            int i10 = ((bArr[i9 + i2] << 24) >>> 8) | ((bArr[(i9 + 1) + i2] << 24) >>> 16) | ((bArr[(i9 + 2) + i2] << 24) >>> 24);
            bArr3[i8] = bArr2[i10 >>> 18];
            bArr3[i8 + 1] = bArr2[(i10 >>> 12) & 63];
            bArr3[i8 + 2] = bArr2[(i10 >>> 6) & 63];
            bArr3[i8 + 3] = bArr2[i10 & 63];
            int i11 = i7 + 4;
            if (i11 == i4) {
                bArr3[i8 + 4] = e;
                i8++;
                i11 = 0;
            }
            i9 += 3;
            i8 += 4;
            i7 = i11;
        }
        if (i9 < i3) {
            encode3to4(bArr, i9 + i2, i3 - i9, bArr3, i8, bArr2);
            if (i7 + 4 == i4) {
                bArr3[i8 + 4] = e;
                i8++;
            }
            i8 += 4;
        }
        if (c || i8 == bArr3.length) {
            return bArr3;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static byte[] encode3to4(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, byte[] bArr3) {
        int i5 = (i3 > 2 ? (bArr[i2 + 2] << 24) >>> 24 : 0) | (i3 > 1 ? (bArr[i2 + 1] << 24) >>> 16 : 0) | (i3 > 0 ? (bArr[i2] << 24) >>> 8 : 0);
        switch (i3) {
            case 1:
                bArr2[i4] = bArr3[i5 >>> 18];
                bArr2[i4 + 1] = bArr3[(i5 >>> 12) & 63];
                bArr2[i4 + 2] = d;
                bArr2[i4 + 3] = d;
                return bArr2;
            case 2:
                bArr2[i4] = bArr3[i5 >>> 18];
                bArr2[i4 + 1] = bArr3[(i5 >>> 12) & 63];
                bArr2[i4 + 2] = bArr3[(i5 >>> 6) & 63];
                bArr2[i4 + 3] = d;
                return bArr2;
            case 3:
                bArr2[i4] = bArr3[i5 >>> 18];
                bArr2[i4 + 1] = bArr3[(i5 >>> 12) & 63];
                bArr2[i4 + 2] = bArr3[(i5 >>> 6) & 63];
                bArr2[i4 + 3] = bArr3[i5 & 63];
                return bArr2;
            default:
                return bArr2;
        }
    }

    public static String encodeWebSafe(byte[] bArr, boolean z) {
        return encode(bArr, 0, bArr.length, g, z);
    }
}
