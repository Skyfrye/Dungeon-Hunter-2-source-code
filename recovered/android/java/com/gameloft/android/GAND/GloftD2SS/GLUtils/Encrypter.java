package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class Encrypter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f13a = getValue();

    private Encrypter() {
    }

    public static String PadString(String str) {
        int length = 16 - (str.length() % 16);
        if (length <= 0 || length >= 16) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() + length);
        stringBuffer.insert(0, str);
        while (length > 0) {
            stringBuffer.append(" ");
            length--;
        }
        return stringBuffer.toString();
    }

    public static String crypt(String str) {
        byte[] bArrDoFinal = null;
        try {
            String strPadString = PadString(str);
            SecretKeySpec secretKeySpec = new SecretKeySpec(Base64Coder.decodeLines(f13a), "ECB");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            bArrDoFinal = cipher.doFinal(strPadString.getBytes());
        } catch (Exception e) {
        }
        return new String(Base64Coder.encode(bArrDoFinal));
    }

    public static String decrypt(String str) {
        byte[] bArrDoFinal = null;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(Base64Coder.decodeLines(f13a), "ECB");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            bArrDoFinal = cipher.doFinal(Base64Coder.decodeLines(str));
        } catch (Exception e) {
        }
        return new String(bArrDoFinal);
    }

    private static String getValue() {
        byte[] bArr = new byte[25];
        byte[] bArr2 = {-48, -37, 4, 31, -39, -27, 52, -36, 41, 13, -32, 32, -35, 20, 5, 11, -8, -33, -5, -9, 5, -6, -4, 0, 0};
        bArr[0] = 118;
        for (int i = 1; i < 24; i++) {
            bArr[i] = (byte) (bArr[i - 1] + bArr2[i]);
        }
        return new String(bArr, 0, 24);
    }
}
