package com.samsungapps.plasma;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class b {
    private static final String h = "SamsungAppsSharedPreferences";
    private static final String i = "SelectedMcc";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f276a;
    private String b = null;
    private int c = 0;
    private int d = 0;
    private String e = null;
    private String f = null;
    private String g = null;

    b(Context context) throws Throwable {
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

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:57:0x00e1 */
    /* JADX WARN: Code duplicated, block: B:66:0x00d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v8 */
    final boolean g() throws Throwable {
        FileInputStream fileInputStream;
        TelephonyManager telephonyManager = (TelephonyManager) this.f276a.getSystemService("phone");
        this.b = telephonyManager.getDeviceId();
        if (this.b == null) {
            this.b = a(this.f276a, "ro.serialno", "Unknown");
        }
        if (this.b == null) {
            this.b = "";
        }
        File file = new File("/system/csc/sales_code.dat");
        ?? IsFile = file.isFile();
        if (IsFile != 0) {
            byte[] bArr = new byte[3];
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        if (fileInputStream.read(bArr, 0, 3) == bArr.length) {
                            this.e = new String(bArr);
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                        }
                    } catch (IOException e2) {
                        e = e2;
                        a.a(e);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e3) {
                            }
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (IsFile != 0) {
                        try {
                            IsFile.close();
                        } catch (IOException e4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                IsFile = 0;
                if (IsFile != 0) {
                    IsFile.close();
                }
                throw th;
            }
        }
        if (this.e == null) {
            this.e = "";
        }
        String simOperator = telephonyManager.getSimOperator();
        if (simOperator != null && simOperator.length() > 0) {
            this.c = i.b(simOperator.substring(0, 3));
            this.d = i.b(simOperator.substring(3));
        }
        if (this.c == 0) {
            try {
                this.c = this.f276a.createPackageContext("com.sec.android.app.samsungapps", 0).getSharedPreferences(h, 1).getInt(i, 0);
                this.d = 0;
            } catch (PackageManager$NameNotFoundException e6) {
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
        this.g = telephonyManager.getLine1Number();
        if (this.g == null) {
            this.g = "";
        }
        return true;
    }
}
