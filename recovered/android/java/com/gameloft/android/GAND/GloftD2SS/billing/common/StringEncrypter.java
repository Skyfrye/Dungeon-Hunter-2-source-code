package com.gameloft.android.GAND.GloftD2SS.billing.common;

import android.content.Context;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class StringEncrypter {
    static StringEncrypter i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f76a;
    SecretKeySpec b;
    Cipher c;
    Cipher d;
    int[] e;
    String[] f;
    String g;
    int h;
    private final String j;

    public StringEncrypter(String str) {
        this.j = "AES";
        this.e = new int[10];
        this.f = new String[10];
        this.f76a = str;
        this.e[0] = -1;
        this.e[1] = -1;
        this.e[2] = -1;
        this.e[3] = -1;
        this.e[4] = -1;
        this.e[5] = -1;
        try {
            this.b = new SecretKeySpec(getRawKey(this.f76a.getBytes()), "AES");
            this.c = Cipher.getInstance("AES");
            this.c.init(1, this.b);
            this.d = Cipher.getInstance("AES");
            this.d.init(2, this.b);
        } catch (Exception e) {
        }
        this.e[6] = -1;
        this.e[7] = -1;
        this.e[8] = -1;
        this.e[9] = -1;
    }

    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: (wrap char:INVOKE) */
    public StringEncrypter(String str, String str2) {
        this.j = "AES";
        this.e = new int[10];
        this.f = new String[10];
        this.f76a = str;
        this.g = str2;
        this.e[0] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(2)).toString()));
        this.e[1] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(3)).toString()));
        this.e[2] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(4)).toString()));
        this.e[3] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(5)).toString()));
        this.e[4] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(6)).toString()));
        this.e[5] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(7)).toString()));
        try {
            this.b = new SecretKeySpec(getRawKey(this.f76a.getBytes()), "AES");
            this.c = Cipher.getInstance("AES");
            this.c.init(1, this.b);
            this.d = Cipher.getInstance("AES");
            this.d.init(2, this.b);
        } catch (Exception e) {
        }
        this.e[6] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(0)).toString()));
        this.e[7] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(1)).toString()));
        this.e[8] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(2)).toString()) + new String(new StringBuilder().append(str2.charAt(5)).toString()));
        this.e[9] = Integer.parseInt(new String(new StringBuilder().append(str2.charAt(3)).toString()) + new String(new StringBuilder().append(str2.charAt(7)).toString()));
    }

    static String decryptBase64(int i2) {
        Context context = SUtils.getContext();
        try {
            return new String(Base64.decode(context.getString(i2).getBytes()));
        } catch (Exception e) {
            try {
                return new String(i.d.doFinal(context.getString(i2).getBytes()));
            } catch (Exception e2) {
                return "";
            }
        }
    }

    private static byte[] getRawKey(byte[] bArr) throws NoSuchAlgorithmException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
        secureRandom.setSeed(bArr);
        keyGenerator.init(128, secureRandom);
        return keyGenerator.generateKey().getEncoded();
    }

    public static String getString(int i2) {
        Context context = SUtils.getContext();
        if (i == null) {
            i = new StringEncrypter(context.getString(2131034551));
        }
        context.getString(i2);
        StringEncrypter stringEncrypter = i;
        return decryptBase64(i2);
    }

    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: (wrap int:AGET) */
    public final String a() {
        int i2 = this.h % 6;
        String str = new String(new StringBuilder().append(this.e[i2]).toString());
        int i3 = (i2 + 1) % 10;
        return new String((str + i3) + ((i3 + 1) % 8));
    }

    public final String a(String str) {
        try {
            this.h++;
            String strEncode = Base64.encode(this.c.doFinal(str.getBytes()));
            this.f[this.h - 1] = new String(str);
            return strEncode;
        } catch (Exception e) {
            return "";
        }
    }

    public final String b(String str) {
        try {
            this.h++;
            String str2 = new String(this.d.doFinal(Base64.decode(str)));
            this.f[this.h - 1] = new String(str2);
            return str2;
        } catch (Exception e) {
            return null;
        }
    }
}
