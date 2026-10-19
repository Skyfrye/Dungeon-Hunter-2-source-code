package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import android.content.Context;
import com.gameloft.android.GAND.GloftD2SS.installer.GameInstaller;
import com.gameloft.android.GAND.GloftD2SS.installer.Utils;
import com.gameloft.android.GAND.GloftD2SS.installer.p;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class DownloadComponent {
    public static String l = "/data/data/com.gameloft.android.GAND.GloftD2SS/libs/";
    public static String m = "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files";
    static String n = m + "/";
    private Vector A;
    private long B;
    private int C;
    private HttpClient D;
    private HttpClient E;
    private boolean F;
    private SimpleDownload G;
    private Downloader H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f137a;
    Vector b;
    int c;
    long d;
    long e;
    long f;
    long g;
    long h;
    long i;
    long j;
    boolean k;
    int o;
    boolean p;
    private final int q;
    private String r;
    private long s;
    private String t;
    private DataInputStream u;
    private String v;
    private String w;
    private boolean x;
    private boolean y;
    private String z;

    public DownloadComponent(String str, String str2) {
        this.q = 32768;
        this.r = "";
        this.f137a = "";
        this.s = -1L;
        this.t = "";
        this.v = "";
        this.w = "";
        this.x = false;
        this.y = false;
        this.z = "";
        this.B = -1L;
        this.C = 0;
        this.b = new Vector();
        this.F = false;
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.k = false;
        this.o = 1;
        this.p = false;
        this.v = str;
        this.r = str2;
        this.z = "/data/data/com.gameloft.android.GAND.GloftD2SS/pack" + this.r + ".info";
    }

    private DownloadComponent(String str, String str2, String str3, String str4) {
        this.q = 32768;
        this.r = "";
        this.f137a = "";
        this.s = -1L;
        this.t = "";
        this.v = "";
        this.w = "";
        this.x = false;
        this.y = false;
        this.z = "";
        this.B = -1L;
        this.C = 0;
        this.b = new Vector();
        this.F = false;
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.k = false;
        this.o = 1;
        this.p = false;
        this.v = str;
        this.r = str2;
        this.w = str3;
        this.t = str4;
        this.z = "/data/data/com.gameloft.android.GAND.GloftD2SS/pack" + this.r + ".info";
    }

    private DownloadComponent(String str, String str2, String str3, String str4, long j, boolean z) {
        this.q = 32768;
        this.r = "";
        this.f137a = "";
        this.s = -1L;
        this.t = "";
        this.v = "";
        this.w = "";
        this.x = false;
        this.y = false;
        this.z = "";
        this.B = -1L;
        this.C = 0;
        this.b = new Vector();
        this.F = false;
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.k = false;
        this.o = 1;
        this.p = false;
        this.v = str;
        this.r = str2;
        this.w = str3;
        this.f137a = str4;
        this.s = j;
        this.p = z;
        this.z = "/data/data/com.gameloft.android.GAND.GloftD2SS/pack" + this.r + ".info";
    }

    private String A() {
        return this.v;
    }

    private boolean B() {
        try {
            if (this.D == null) {
                this.D = new HttpClient();
            } else {
                this.D.b();
            }
            InputStream inputStreamA = this.D.a(this.v);
            if (inputStreamA == null) {
                return false;
            }
            if (this.u != null) {
                this.u.close();
                this.u = null;
            }
            this.u = new DataInputStream(inputStreamA);
            return true;
        } catch (FileNotFoundException e) {
            return false;
        } catch (SocketTimeoutException e2) {
            HttpClient httpClient = this.D;
            HttpClient.incrementConnectionTimeout();
            return false;
        } catch (Exception e3) {
            return false;
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:7:0x000d */
    private ArrayList C() {
        if (this.A == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.A.size()) {
                return arrayList;
            }
            if (((f) this.A.get(i2)).b().endsWith(".so") && !arrayList.contains(((f) this.A.get(i2)).b())) {
                arrayList.add(((f) this.A.get(i2)).b());
            }
            i = i2 + 1;
        }
    }

    private int a(String str, int i) {
        int iF;
        int i2 = 0;
        i iVar = null;
        while (i < this.A.size()) {
            f fVar = (f) this.A.get(i);
            if (iVar == null) {
                iVar = new i(n + fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + str);
            }
            if (!Utils.getSplitName(fVar.b()).equals(str)) {
                break;
            }
            if (iVar.a(fVar.e())) {
                this.h += (long) fVar.f();
                Utils.markAsSaved(fVar);
            } else {
                this.b.add(fVar);
                this.d += fVar.d();
                this.i += (long) fVar.f();
                if (fVar.f() > i2) {
                    iF = fVar.f();
                }
                i++;
                i2 = iF;
            }
            iF = i2;
            i++;
            i2 = iF;
        }
        iVar.a();
        return i2;
    }

    private void a(int i) {
        this.o = i;
    }

    private void a(long j) {
        this.s = j;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:52:0x0155  */
    /* JADX WARN: Code duplicated, block: B:55:0x0162 A[ADDED_TO_REGION] */
    private boolean a(f fVar, boolean z, boolean z2, String str) {
        String strSubstring;
        int i;
        boolean zIsValidChecksum;
        String str2 = (this.r.startsWith("patch") || this.r.startsWith("main")) ? GameInstaller.marketPath + fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + fVar.b() : GameInstaller.DATA_PATH + fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + fVar.b();
        long jE = fVar.e();
        if (str2.contains(".split_")) {
            int i2 = Integer.parseInt(str2.substring(str2.lastIndexOf(95) + 1));
            strSubstring = str2.substring(0, str2.lastIndexOf(46));
            i = i2;
        } else {
            strSubstring = str2;
            i = 0;
        }
        File file = new File(strSubstring);
        boolean z3 = !file.exists() || (i <= 0 ? file.length() != fVar.d() : !(Utils.hasBeenDownloaded(fVar, false) && goodSize(fVar)));
        if (!z3 && jE != 0) {
            if ((str.equals(fVar.b()) || i <= 0) && i <= 0) {
                if (!z) {
                    zIsValidChecksum = false;
                } else if (fVar.i().equals("")) {
                    zIsValidChecksum = !CRC.isValidChecksum(strSubstring, jE, i);
                } else {
                    zIsValidChecksum = MD5.isValidChecksum(strSubstring, fVar.i());
                }
            }
            if (z3 || zIsValidChecksum) {
                if (this.A.size() == 1 || this.x) {
                    this.x = false;
                    this.j = 0L;
                    try {
                        if (file.exists() && i <= 0) {
                            file.delete();
                        }
                    } catch (Exception e) {
                    }
                } else {
                    fVar.d();
                    file.length();
                    fVar.f();
                    file.length();
                    this.j = file.length();
                }
            }
            return !z3 || zIsValidChecksum;
        }
        if (i > 0) {
            Utils.hasBeenDownloaded(fVar, false);
        }
        zIsValidChecksum = false;
        if (z3) {
            if (this.A.size() == 1) {
                this.x = false;
                this.j = 0L;
                if (file.exists()) {
                    file.delete();
                }
            } else {
                this.x = false;
                this.j = 0L;
                if (file.exists()) {
                    file.delete();
                }
            }
        } else if (this.A.size() == 1) {
            this.x = false;
            this.j = 0L;
            if (file.exists()) {
                file.delete();
            }
        } else {
            this.x = false;
            this.j = 0L;
            if (file.exists()) {
                file.delete();
            }
        }
        if (z3) {
        }
    }

    private void b(boolean z) {
        this.p = z;
    }

    private void c(String str) {
        this.w = str;
    }

    private void d(String str) {
        this.v = str;
    }

    private void e(String str) {
        this.f137a = str;
    }

    public static boolean goodSize(f fVar) {
        String str = GameInstaller.DATA_PATH + fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + fVar.b();
        File file = new File(str.substring(0, str.lastIndexOf(46)));
        if (!file.exists()) {
            return false;
        }
        if (((int) (((file.length() + 2048) - 1) / 2048)) == Utils.getSplitNumber(fVar.b())) {
            return file.length() % 2048 == fVar.d();
        }
        return file.length() >= ((long) (Utils.getSplitNumber(fVar.b()) * 2048));
    }

    private static boolean verifySplitChecksum(boolean z) {
        return z;
    }

    private String w() {
        return this.z;
    }

    private String x() {
        return this.w;
    }

    private boolean y() {
        return this.x;
    }

    private long z() {
        return this.f;
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:39:0x0125 */
    /* JADX WARN: Code duplicated, block: B:58:0x01a8  */
    public final int a(boolean z) {
        String splitName;
        int i;
        if (this.A == null) {
            return this.o == 0 ? 0 : 1;
        }
        int size = this.A.size();
        this.b.clear();
        this.d = 0L;
        this.h = 0L;
        this.i = 0L;
        int i2 = 0;
        int i3 = -1;
        String str = "";
        int i4 = 0;
        while (i4 < size) {
            f fVar = (f) this.A.get(i4);
            if (a(fVar, z, false, str)) {
                this.b.add(fVar);
                this.d += fVar.d();
                this.i += (long) fVar.f();
                int iF = fVar.f() > i2 ? fVar.f() : i2;
                this.h += this.j;
                this.d -= this.j;
                this.i -= this.j;
                String str2 = str;
                i = iF;
                splitName = str2;
            } else if (Utils.getSplitName(fVar.b()).equals(str) || (Utils.hasBeenDownloaded(fVar, false) && goodSize(fVar))) {
                this.h += (long) fVar.f();
                splitName = str;
                i = i2;
            } else {
                if (str != "") {
                    int iF2 = 0;
                    i iVar = null;
                    int i5 = i3;
                    while (i5 < this.A.size()) {
                        f fVar2 = (f) this.A.get(i5);
                        if (iVar == null) {
                            iVar = new i(n + fVar2.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + str);
                        }
                        if (!Utils.getSplitName(fVar2.b()).equals(str)) {
                            break;
                        }
                        if (iVar.a(fVar2.e())) {
                            this.h += (long) fVar2.f();
                            Utils.markAsSaved(fVar2);
                        } else {
                            this.b.add(fVar2);
                            this.d += fVar2.d();
                            this.i += (long) fVar2.f();
                            if (fVar2.f() > iF2) {
                                iF2 = fVar2.f();
                            }
                        }
                        i5++;
                        iF2 = iF2;
                    }
                    iVar.a();
                    if (iF2 > i2) {
                        i = iF2;
                    } else {
                        i = i2;
                    }
                } else {
                    i = i2;
                }
                if (fVar.b().contains(".split_")) {
                    splitName = Utils.getSplitName(fVar.b());
                    i3 = i4;
                } else {
                    i3 = -1;
                    splitName = "";
                }
                this.h += this.j;
            }
            i4++;
            i2 = i;
            str = splitName;
        }
        this.g = this.i + this.h;
        this.f = (int) ((this.d >> 20) + 1);
        this.e = (int) ((this.d >> 20) + 1);
        if (this.d == 0) {
            this.k = true;
        }
        return this.b.size() > 0 ? 1 : 0;
    }

    public final String a() {
        return this.r;
    }

    public final void a(Context context) {
        try {
            g gVar = new g(context);
            this.A = gVar.a(this.z);
            this.B = gVar.e;
            this.C = this.A.size();
        } catch (IOException e) {
        }
    }

    public final boolean a(String str) {
        if (this.A == null) {
            return false;
        }
        for (int i = 0; i < this.A.size(); i++) {
            if (((f) this.A.get(i)).b().equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Unreachable blocks removed: 8, instructions: 27 */
    public final void b(String str) {
        if (this.b == null || this.b.size() <= 0) {
            if (this.G != null) {
                this.G.e();
                return;
            }
            return;
        }
        this.f137a.endsWith(".amz");
        if (this.H == null) {
            this.H = new Downloader(this.v, str, this.b, this.c + 4, this.i);
        } else {
            Downloader downloader = this.H;
            downloader.i = this.b;
            downloader.f = false;
            try {
                downloader.a();
            } catch (Exception e) {
                GameInstaller.addErrorNumber(p.c);
                downloader.f = true;
            }
        }
        this.H.b();
    }

    public final boolean b() {
        return this.y;
    }

    public final void c() {
        this.x = true;
    }

    public final int d() {
        try {
            return Integer.parseInt(this.w);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    public final long e() {
        return this.i;
    }

    public final long f() {
        return this.e;
    }

    public final int g() {
        return this.b.size();
    }

    public final int h() {
        if (this.A == null) {
            return 0;
        }
        return this.A.size();
    }

    public final long i() {
        return this.g;
    }

    public final long j() {
        return this.h;
    }

    public final boolean k() {
        return this.p;
    }

    public final long l() {
        return this.B;
    }

    public final int m() {
        return this.C;
    }

    /* JADX DEBUG: Null handler block in: IOException -> 0x010e */
    /* JADX WARN: Code duplicated, block: B:16:0x005f A[Catch: IOException -> 0x0113, TryCatch #2 {IOException -> 0x0113, blocks: (B:14:0x0052, B:16:0x005f, B:17:0x0062), top: B:55:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0083 A[Catch: Exception -> 0x0110, TryCatch #0 {Exception -> 0x0110, blocks: (B:21:0x007f, B:23:0x0083, B:25:0x0089, B:26:0x0092, B:28:0x0096, B:31:0x009c, B:38:0x00b7), top: B:50:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0089 A[Catch: Exception -> 0x0110, TryCatch #0 {Exception -> 0x0110, blocks: (B:21:0x007f, B:23:0x0083, B:25:0x0089, B:26:0x0092, B:28:0x0096, B:31:0x009c, B:38:0x00b7), top: B:50:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0096 A[Catch: Exception -> 0x0110, TryCatch #0 {Exception -> 0x0110, blocks: (B:21:0x007f, B:23:0x0083, B:25:0x0089, B:26:0x0092, B:28:0x0096, B:31:0x009c, B:38:0x00b7), top: B:50:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:30:0x009b  */
    /* JADX WARN: Code duplicated, block: B:55:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 5, instructions: 34 */
    public final boolean n() {
        File file;
        FileOutputStream fileOutputStream;
        int i;
        int i2;
        boolean z = false;
        if (!this.f137a.equals("")) {
            try {
                file = new File(this.z);
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                fileOutputStream = new FileOutputStream(this.z);
                this.f137a.endsWith(".amz");
                try {
                    if (this.u == null || B()) {
                        this.c = this.u.readInt();
                        i = 0;
                        while (i < this.c) {
                            i2 = this.c - i;
                            if (i2 > 32768) {
                                i2 = 32768;
                            }
                            byte[] bArr = new byte[i2];
                            this.u.readFully(bArr);
                            fileOutputStream.write(bArr);
                            fileOutputStream.flush();
                            i = i2 + i;
                        }
                        fileOutputStream.close();
                        this.u.close();
                        this.u = null;
                        z = true;
                    }
                } catch (Exception e) {
                }
            } catch (IOException e2) {
            }
        } else if (this.u != null || B()) {
            try {
                String strB = this.D.b(this.v);
                HttpClient httpClient = new HttpClient();
                httpClient.a(strB);
                long jA = httpClient.a();
                httpClient.b();
                if (jA > 0) {
                    int iLastIndexOf = strB.lastIndexOf(47);
                    strB.lastIndexOf(46, iLastIndexOf);
                    this.f137a = strB.substring(iLastIndexOf + 1);
                    this.s = jA;
                    if (this.s > 0) {
                        file = new File(this.z);
                        if (file.exists()) {
                            file.delete();
                        }
                        file.createNewFile();
                        fileOutputStream = new FileOutputStream(this.z);
                        this.f137a.endsWith(".amz");
                        if (this.u == null) {
                            this.c = this.u.readInt();
                            i = 0;
                            while (i < this.c) {
                                i2 = this.c - i;
                                if (i2 > 32768) {
                                    i2 = 32768;
                                }
                                byte[] bArr2 = new byte[i2];
                                this.u.readFully(bArr2);
                                fileOutputStream.write(bArr2);
                                fileOutputStream.flush();
                                i = i2 + i;
                            }
                            fileOutputStream.close();
                            this.u.close();
                            this.u = null;
                            z = true;
                        } else {
                            this.c = this.u.readInt();
                            i = 0;
                            while (i < this.c) {
                                i2 = this.c - i;
                                if (i2 > 32768) {
                                    i2 = 32768;
                                }
                                byte[] bArr3 = new byte[i2];
                                this.u.readFully(bArr3);
                                fileOutputStream.write(bArr3);
                                fileOutputStream.flush();
                                i = i2 + i;
                            }
                            fileOutputStream.close();
                            this.u.close();
                            this.u = null;
                            z = true;
                        }
                    }
                } else if (this.o != 1) {
                    if (this.o == 0) {
                        z = true;
                    } else {
                        file = new File(this.z);
                        if (file.exists()) {
                            file.delete();
                        }
                        file.createNewFile();
                        fileOutputStream = new FileOutputStream(this.z);
                        this.f137a.endsWith(".amz");
                        if (this.u == null) {
                            this.c = this.u.readInt();
                            i = 0;
                            while (i < this.c) {
                                i2 = this.c - i;
                                if (i2 > 32768) {
                                    i2 = 32768;
                                }
                                byte[] bArr4 = new byte[i2];
                                this.u.readFully(bArr4);
                                fileOutputStream.write(bArr4);
                                fileOutputStream.flush();
                                i = i2 + i;
                            }
                            fileOutputStream.close();
                            this.u.close();
                            this.u = null;
                            z = true;
                        } else {
                            this.c = this.u.readInt();
                            i = 0;
                            while (i < this.c) {
                                i2 = this.c - i;
                                if (i2 > 32768) {
                                    i2 = 32768;
                                }
                                byte[] bArr5 = new byte[i2];
                                this.u.readFully(bArr5);
                                fileOutputStream.write(bArr5);
                                fileOutputStream.flush();
                                i = i2 + i;
                            }
                            fileOutputStream.close();
                            this.u.close();
                            this.u = null;
                            z = true;
                        }
                    }
                }
            } catch (IOException e3) {
            }
        }
        return z;
    }

    public final boolean o() {
        if (!this.w.equals("")) {
            return true;
        }
        try {
            String str = this.v + "&head=1";
            if (this.E == null) {
                this.E = new HttpClient();
            } else {
                this.E.b();
            }
            this.E.a(str);
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    public final void p() {
        if (this.w.equals("")) {
            this.w = Integer.toString(this.E.a("x-gl-version", -1));
            this.y = this.E.a("x-gl-generic", true);
        }
    }

    public final void q() {
        if (this.H != null) {
            this.H.d();
        } else if (this.G != null) {
            this.G.a();
        }
    }

    public final void r() {
        if (this.H != null) {
            this.H.c();
        }
        if (this.G != null) {
            SimpleDownload simpleDownload = this.G;
            SimpleDownload.update();
        }
    }

    public final boolean s() {
        if (this.k) {
            return true;
        }
        if (this.H != null) {
            return this.H.e;
        }
        if (this.G != null) {
            return this.G.c();
        }
        return true;
    }

    public final long t() {
        if (this.H != null) {
            return this.H.e();
        }
        if (this.G != null) {
            return this.G.d();
        }
        return 0L;
    }

    public final boolean u() {
        if (this.H != null) {
            return this.H.f;
        }
        if (this.G != null) {
            return this.G.b();
        }
        return false;
    }

    public final void v() {
        if (this.H != null) {
            this.H.f = true;
        } else if (this.G != null) {
            this.G.a();
        }
    }
}
