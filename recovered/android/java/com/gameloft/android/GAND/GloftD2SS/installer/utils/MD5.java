package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.io.FileInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class MD5 {
    public static byte[] createChecksum(String str) {
        int i;
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            byte[] bArr = new byte[1024];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            do {
                i = fileInputStream.read(bArr);
                if (i > 0) {
                    messageDigest.update(bArr, 0, i);
                }
            } while (i != -1);
            fileInputStream.close();
            return messageDigest.digest();
        } catch (Exception e) {
            return null;
        }
    }

    public static String getMD5Checksum(String str) {
        String str2 = "";
        for (byte b : createChecksum(str)) {
            str2 = str2 + Integer.toString((b & 255) + 256, 16).substring(1);
        }
        return str2;
    }

    public static boolean isValidChecksum(String str, String str2) {
        return getMD5Checksum(str).equals(str2);
    }
}
