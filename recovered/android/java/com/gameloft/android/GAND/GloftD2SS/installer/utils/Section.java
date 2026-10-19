package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import com.gameloft.android.GAND.GloftD2SS.installer.GameInstaller;
import com.gameloft.android.GAND.GloftD2SS.installer.Utils;
import com.gameloft.android.GAND.GloftD2SS.installer.x;
import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;
import java.util.Vector;
import java.util.zip.DataFormatException;
import java.util.zip.ZipEntry;

/* JADX INFO: loaded from: classes.dex */
public class Section extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f141a = 2097152;
    private static Object e = new Object();
    private final int b;
    private final int c;
    private final int d;
    private Thread f;
    private RandomAccessFile g;
    private HttpClient h;
    private boolean i;
    private boolean j;
    private long k;
    private long l;
    private long m;
    private int n;
    private int o;
    private int p;
    private String q;
    private String r;
    private Vector s;
    private l t;
    private ZipEntry u;
    private byte[] v;
    private b w;

    public Section(Section section) {
        this.b = 3;
        this.c = 3000;
        this.d = 32768;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = false;
        this.j = false;
        this.k = 0L;
        this.l = 0L;
        this.m = 0L;
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.q = "";
        this.r = "";
        this.s = null;
        this.v = null;
        this.q = section.q;
        this.r = section.r;
        this.m = section.m;
        this.n = section.n;
        this.s = section.s;
        this.p = section.p + 1;
        this.o = section.o;
        this.i = false;
        this.j = false;
        this.k = section.e();
    }

    public Section(String str, String str2, Vector vector, long j, int i) {
        this.b = 3;
        this.c = 3000;
        this.d = 32768;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = false;
        this.j = false;
        this.k = 0L;
        this.l = 0L;
        this.m = 0L;
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.q = "";
        this.r = "";
        this.s = null;
        this.v = null;
        this.q = str;
        this.r = str2;
        this.m = j;
        this.n = i;
        this.s = vector;
        this.p = 0;
        this.i = false;
        this.j = false;
    }

    private static RandomAccessFile getOutputStream(String str, int i) {
        try {
            File file = new File(str);
            String parent = str.endsWith("/") ? str : file.getParent();
            if (parent != null) {
                File file2 = new File(parent);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                File file3 = new File(parent + "/.nomedia");
                if (!file3.exists()) {
                    file3.createNewFile();
                }
            }
            if (!str.endsWith("/")) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                if (i <= 0) {
                    return randomAccessFile;
                }
                if (!file.exists() && randomAccessFile.length() < ((long) i) * f141a) {
                    randomAccessFile.setLength(((long) i) * f141a);
                }
                randomAccessFile.seek(((long) (i - 1)) * f141a);
                return randomAccessFile;
            }
        } catch (Exception e2) {
            GameInstaller.addErrorNumber(x.e);
        }
        return null;
    }

    private void h() throws Exception {
        InputStream inputStream;
        InputStream inputStreamA;
        try {
            try {
                this.h = new HttpClient();
                try {
                    try {
                        inputStreamA = this.o < this.s.size() ? this.h.a(this.q, ((f) this.s.get(this.o)).g(), this.m, 0L) : null;
                        try {
                            this.k = ((f) this.s.get(this.o)).g() - ((f) this.s.get(0)).g();
                        } catch (SocketTimeoutException e2) {
                            inputStream = inputStreamA;
                            HttpClient httpClient = this.h;
                            HttpClient.incrementConnectionTimeout();
                            GameInstaller.addErrorNumber(x.b);
                            inputStreamA = inputStream;
                        }
                    } catch (Exception e3) {
                        GameInstaller.addErrorNumber(x.f159a);
                        inputStreamA = null;
                    }
                } catch (SocketTimeoutException e4) {
                    inputStream = null;
                }
                if (inputStreamA == null) {
                    this.h.b();
                    try {
                        sleep(3000L);
                    } catch (Exception e5) {
                    }
                }
                if (inputStreamA == null) {
                    throw new Exception();
                }
                this.w = new b(inputStreamA);
                if (this.w == null) {
                    throw new Exception();
                }
                this.v = new byte[32768];
            } catch (SocketTimeoutException e6) {
                GameInstaller.addErrorNumber(x.b);
                HttpClient httpClient2 = this.h;
                HttpClient.incrementConnectionTimeout();
            }
        } catch (Exception e7) {
            GameInstaller.addErrorNumber(x.f159a);
            throw new Exception();
        }
    }

    private int i() {
        return this.p;
    }

    private int j() {
        return this.n;
    }

    private long k() {
        return this.m;
    }

    private String l() {
        return this.r;
    }

    private String m() {
        return this.q;
    }

    public final void a() {
        this.f = null;
        this.i = false;
        this.j = true;
    }

    public final boolean b() {
        return this.i;
    }

    public final boolean c() {
        return !this.i && this.j;
    }

    public final boolean d() {
        return this.p < 3;
    }

    public final long e() {
        return this.k + this.l;
    }

    public final int f() {
        return this.o;
    }

    public final Vector g() {
        return this.s;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i;
        InputStream inputStream;
        InputStream inputStreamA;
        Thread threadCurrentThread = Thread.currentThread();
        this.f = Thread.currentThread();
        try {
            try {
                try {
                    try {
                        this.h = new HttpClient();
                        try {
                            try {
                                inputStreamA = this.o < this.s.size() ? this.h.a(this.q, ((f) this.s.get(this.o)).g(), this.m, 0L) : null;
                                try {
                                    this.k = ((f) this.s.get(this.o)).g() - ((f) this.s.get(0)).g();
                                } catch (SocketTimeoutException e2) {
                                    inputStream = inputStreamA;
                                    HttpClient httpClient = this.h;
                                    HttpClient.incrementConnectionTimeout();
                                    GameInstaller.addErrorNumber(x.b);
                                    inputStreamA = inputStream;
                                }
                            } catch (Exception e3) {
                                GameInstaller.addErrorNumber(x.f159a);
                                inputStreamA = null;
                            }
                        } catch (SocketTimeoutException e4) {
                            inputStream = null;
                        }
                        if (inputStreamA == null) {
                            this.h.b();
                            try {
                                sleep(3000L);
                            } catch (Exception e5) {
                            }
                        }
                        if (inputStreamA == null) {
                            throw new Exception();
                        }
                        this.w = new b(inputStreamA);
                        if (this.w == null) {
                            throw new Exception();
                        }
                        this.v = new byte[32768];
                        if (this.i) {
                            return;
                        }
                        while (this.f == threadCurrentThread && this.s.size() > this.o) {
                            try {
                                sleep(10L);
                            } catch (Exception e6) {
                            }
                            f fVar = (f) this.s.get(this.o);
                            this.w.a(fVar.f());
                            this.t = new l(this.w);
                            this.u = this.t.getNextEntry();
                            if (this.u == null) {
                                GameInstaller.addErrorNumber(x.f);
                                throw new DataFormatException("m_zipEntry = null");
                            }
                            String strSubstring = fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + fVar.b();
                            if (strSubstring.contains(".split_")) {
                                i = Integer.parseInt(strSubstring.substring(strSubstring.lastIndexOf("_") + 1));
                                strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf(46));
                            } else {
                                i = 0;
                            }
                            String str = this.r + "/" + strSubstring;
                            synchronized (e) {
                                this.g = getOutputStream(str, i);
                            }
                            if (this.g == null) {
                                this.t.closeEntry();
                                this.u = this.t.getNextEntry();
                                if (this.u == null) {
                                    GameInstaller.addErrorNumber(x.f);
                                    throw new DataFormatException("m_zipEntry = null");
                                }
                            } else {
                                while (true) {
                                    int i2 = this.t.read(this.v, 0, 32768);
                                    if (i2 < 0) {
                                        break;
                                    }
                                    this.g.write(this.v, 0, i2);
                                    this.l = this.t.a();
                                }
                                this.k += this.l;
                                this.l = 0L;
                                Utils.markAsSaved((f) this.s.get(this.o));
                                this.o++;
                                this.g.close();
                                this.t.closeEntry();
                                this.w.b();
                                this.w.a();
                            }
                        }
                        this.w.close();
                        this.t = null;
                        this.v = null;
                        this.i = true;
                        if (this.h != null) {
                            this.h.b();
                            this.h = null;
                        }
                        this.j = true;
                    } catch (SocketTimeoutException e7) {
                        GameInstaller.addErrorNumber(x.c);
                        HttpClient httpClient2 = this.h;
                        HttpClient.incrementConnectionTimeout();
                        this.j = true;
                    }
                } catch (Exception e8) {
                    GameInstaller.addErrorNumber(x.f159a);
                    throw new Exception();
                }
            } catch (SocketTimeoutException e9) {
                GameInstaller.addErrorNumber(x.b);
                HttpClient httpClient3 = this.h;
                HttpClient.incrementConnectionTimeout();
            }
        } catch (Exception e10) {
            GameInstaller.addErrorNumber(x.d);
            this.j = true;
            this.v = null;
            if (this.h != null) {
                this.h.b();
                this.h = null;
            }
            this.k += this.l;
        }
    }
}
