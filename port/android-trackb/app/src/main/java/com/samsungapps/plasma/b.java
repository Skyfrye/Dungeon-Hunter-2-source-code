package com.samsungapps.plasma;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

final class b {
    private static final String h = "SamsungAppsSharedPreferences";
    private static final String i = "SelectedMcc";

    private Context f276a;
    private String b = null;
    private int c = 0;
    private int d = 0;
    private String e = null;
    private String f = null;
    private String g = null;

    b(Context context) {
        this.f276a = null;
        this.f276a = context;
        g();
    }

    private static String a(Context context, String str, String str2) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class, String.class).invoke(clsLoadClass, new String(str), new String(str2));
        } catch (IllegalArgumentException e) {
            return str2;
        } catch (Exception e2) {
            return str2;
        }
    }

    final String a() {
        return this.b;
    }

    final void a(int i2) {
        this.c = i2;
    }

    final void a(String str) {
        this.b = str;
    }

    final int b() {
        return this.c;
    }

    final void b(int i2) {
        this.d = i2;
    }

    final void b(String str) {
        this.e = str;
    }

    final int c() {
        return this.d;
    }

    final void c(String str) {
        this.f = str;
    }

    final String d() {
        return this.e;
    }

    final void d(String str) {
        this.g = str;
    }

    final String e() {
        return this.f;
    }

    final String f() {
        return this.g;
    }

    final boolean g() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f276a.getSystemService("phone");
        this.b = com.gameloft.android.GAND.GloftD2SS.Phone.deviceId(telephonyManager);
        if (this.b == null) {
            this.b = a(this.f276a, "ro.serialno", "Unknown");
        }
        if (this.b == null) {
            this.b = "";
        }
        File file = new File("/system/csc/sales_code.dat");
        if (file.isFile()) {
            byte[] bArr = new byte[3];
            FileInputStream fileInputStream = null;
            try {
                fileInputStream = new FileInputStream(file);
                if (fileInputStream.read(bArr, 0, 3) == bArr.length) {
                    this.e = new String(bArr);
                }
            } catch (IOException e) {
                a.a(e);
            } finally {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                    }
                }
            }
        }
        if (this.e == null) {
            this.e = "";
        }
        String simOperator = com.gameloft.android.GAND.GloftD2SS.Phone.simOperator(telephonyManager);
        if (simOperator != null && simOperator.length() > 0) {
            this.c = com.samsungapps.plasma.i.b(simOperator.substring(0, 3));
            this.d = com.samsungapps.plasma.i.b(simOperator.substring(3));
        }
        if (this.c == 0) {
            try {
                this.c = this.f276a.createPackageContext("com.sec.android.app.samsungapps", 0).getSharedPreferences(h, 1).getInt(i, 0);
                this.d = 0;
            } catch (PackageManager.NameNotFoundException e6) {
                a.a(e6);
            }
        }
        if (this.e.length() <= 0) {
            this.e = "WIFI";
        }
        this.f = Build.MODEL;
        if (this.f == null) {
            this.f = "";
        }
        this.g = com.gameloft.android.GAND.GloftD2SS.Phone.line1(telephonyManager);
        if (this.g == null) {
            this.g = "";
        }
        return true;
    }
}
