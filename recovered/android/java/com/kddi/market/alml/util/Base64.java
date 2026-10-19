package com.kddi.market.alml.util;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class Base64 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f229a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 4;
    public static final int e = 8;
    public static final int f = 16;
    static final /* synthetic */ boolean g;

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
        Base64$Decoder base64$Decoder = new Base64$Decoder(i3, new byte[(i2 * 3) / 4]);
        if (!base64$Decoder.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (base64$Decoder.b == base64$Decoder.f231a.length) {
            return base64$Decoder.f231a;
        }
        byte[] bArr2 = new byte[base64$Decoder.b];
        System.arraycopy(base64$Decoder.f231a, 0, bArr2, 0, base64$Decoder.b);
        return bArr2;
    }

    public static byte[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, bArr.length, i);
    }

    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        Base64$Encoder base64$Encoder = new Base64$Encoder(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!base64$Encoder.e) {
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
        if (base64$Encoder.f && i2 > 0) {
            i4 += (base64$Encoder.g ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        base64$Encoder.f231a = new byte[i4];
        base64$Encoder.a(bArr, i, i2, true);
        if (g || base64$Encoder.b == i4) {
            return base64$Encoder.f231a;
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
