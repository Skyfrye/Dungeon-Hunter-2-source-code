package com.gameloft.android.GAND.GloftD2SS.GLUtils;

/* JADX INFO: loaded from: classes.dex */
public class Encoder {
    public static String Blob2String(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes();
        int i = 8;
        int length = ((str.length() * 6) / 8) + 1;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < str.length(); i4++) {
            byte bSSEncDec_GetKeyFromChar = SSEncDec_GetKeyFromChar(bytes[i4]);
            bArr[i3] = (byte) (bArr[i3] | (bSSEncDec_GetKeyFromChar << (8 - i)));
            if (i > 6) {
                i -= 6;
            } else if (i3 < length - 2) {
                i3++;
                bArr[i3] = (byte) ((bSSEncDec_GetKeyFromChar >> i) | bArr[i3]);
                i += 2;
            }
        }
        return new String(bArr, 0, length).trim();
    }

    private static byte SSEncDec_GetCharFromKeyByIndex(byte b) {
        if (b < 26) {
            return (byte) (b + 97);
        }
        if (b < 52) {
            return (byte) (b + 39);
        }
        if (b < 62) {
            return (byte) (b - 4);
        }
        return b == 62 ? (byte) 95 : (byte) 45;
    }

    private static byte SSEncDec_GetKeyFromChar(byte b) {
        if (b == 45) {
            return (byte) 63;
        }
        if (b == 95) {
            return (byte) 62;
        }
        if (b < 58) {
            return (byte) (b + 4);
        }
        return b < 91 ? (byte) (b - 39) : (byte) (b - 97);
    }

    public static String String2Blob(String str) {
        byte[] bytes = str.getBytes();
        int length = (str.length() * 8) / 6;
        int i = (str.length() * 8) % 6 != 0 ? length + 2 : length + 1;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = 0;
        }
        int i3 = 8;
        int i4 = 0;
        int i5 = 0;
        while (i5 < str.length()) {
            byte b = (byte) (((byte) (bytes[i5] & 127)) >> (8 - i3));
            if (i3 < 6) {
                int i6 = i5 + 1;
                if (i6 < str.length()) {
                    byte b2 = (byte) ((bytes[i6] << i3) | b);
                    i3 += 2;
                    b = b2;
                    i5 = i6;
                } else {
                    i5 = i6;
                }
            } else {
                i3 -= 6;
            }
            bArr[i4] = SSEncDec_GetCharFromKeyByIndex((byte) (b & 63));
            i4++;
        }
        return new String(bArr, 0, i4);
    }
}
