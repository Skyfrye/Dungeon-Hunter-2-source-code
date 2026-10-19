package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import com.gameloft.android.GAND.GloftD2SS.installer.GameInstaller;
import com.gameloft.android.GAND.GloftD2SS.installer.x;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public final class SimpleDownload extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f142a;
    private final int b;
    private final int c;
    private Thread d;
    private FileOutputStream e;
    private HttpClient f;
    private boolean g;
    private boolean h;
    private boolean i;
    private long j;
    private long k;
    private String l;
    private String m;
    private int n;
    private byte[] o;
    private DataInputStream p;
    private Vector q;
    private long r;
    private int s;
    private int t;

    private SimpleDownload(SimpleDownload simpleDownload) {
        this.b = 3000;
        this.c = 32768;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = false;
        this.h = false;
        this.i = false;
        this.j = 0L;
        this.k = 0L;
        this.l = "";
        this.m = "";
        this.n = 0;
        this.o = null;
        this.q = null;
        this.r = 0L;
        this.s = 0;
        this.t = 0;
        this.f142a = false;
        this.l = simpleDownload.l;
        this.m = simpleDownload.m;
        this.n = simpleDownload.n;
        this.q = simpleDownload.q;
        this.g = false;
        this.h = false;
    }

    public SimpleDownload(String str, String str2, Vector vector, long j) {
        this.b = 3000;
        this.c = 32768;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = false;
        this.h = false;
        this.i = false;
        this.j = 0L;
        this.k = 0L;
        this.l = "";
        this.m = "";
        this.n = 0;
        this.o = null;
        this.q = null;
        this.r = 0L;
        this.s = 0;
        this.t = 0;
        this.f142a = false;
        this.l = str;
        this.m = str2;
        this.n = 0;
        this.q = vector;
        this.g = false;
        this.h = false;
        this.r = j;
    }

    private void a(String str, long j) throws Exception {
        InputStream inputStreamA;
        try {
            try {
                this.f = new HttpClient();
                try {
                    inputStreamA = str == "" ? this.f.a(this.l, j, 0L) : this.f.a(str, j, 0L);
                } catch (SocketTimeoutException e) {
                    HttpClient httpClient = this.f;
                    HttpClient.incrementConnectionTimeout();
                    GameInstaller.addErrorNumber(x.b);
                    inputStreamA = null;
                } catch (Exception e2) {
                    GameInstaller.addErrorNumber(x.f159a);
                    inputStreamA = null;
                }
                if (inputStreamA == null) {
                    this.f.b();
                    try {
                        sleep(3000L);
                    } catch (Exception e3) {
                    }
                }
                if (inputStreamA == null) {
                    throw new Exception();
                }
                this.p = new DataInputStream(inputStreamA);
                if (this.p == null) {
                    throw new Exception();
                }
                this.o = new byte[32768];
            } catch (Exception e4) {
                this.i = true;
                GameInstaller.addErrorNumber(x.f159a);
                throw new Exception();
            }
        } catch (SocketTimeoutException e5) {
            GameInstaller.addErrorNumber(x.b);
            HttpClient httpClient2 = this.f;
            HttpClient.incrementConnectionTimeout();
            this.i = true;
        }
    }

    private void f() {
        this.g = false;
        this.h = false;
        this.i = false;
    }

    private boolean g() {
        return !this.g && this.h;
    }

    private static FileOutputStream getOutputStream(String str) {
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
                return new FileOutputStream(file, true);
            }
        } catch (Exception e) {
            GameInstaller.addErrorNumber(x.e);
        }
        return null;
    }

    private Vector h() {
        return this.q;
    }

    private String i() {
        return this.m;
    }

    private String j() {
        return this.l;
    }

    public static void update() {
    }

    public final void a() {
        this.d = null;
        this.g = false;
        this.h = true;
    }

    public final boolean b() {
        return this.i;
    }

    public final boolean c() {
        return this.g;
    }

    public final long d() {
        return this.j + this.k;
    }

    public final void e() {
        this.k = 0L;
        this.j = 0L;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        InputStream inputStreamA;
        Thread.currentThread();
        this.d = Thread.currentThread();
        this.j = 0L;
        this.k = 0L;
        try {
            try {
                if (this.g || this.i || this.h) {
                    return;
                }
                while (this.d != null && this.n < this.q.size()) {
                    try {
                        sleep(10L);
                    } catch (Exception e) {
                    }
                    f fVar = (f) this.q.elementAt(this.n);
                    String str = this.m + "/" + (fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + fVar.b());
                    File file = new File(str.replace("//", "/"));
                    long length = file.exists() ? file.length() : 0L;
                    try {
                        try {
                            this.f = new HttpClient();
                            if ("" == "") {
                                try {
                                    inputStreamA = this.f.a(this.l, length, 0L);
                                } catch (SocketTimeoutException e2) {
                                    HttpClient httpClient = this.f;
                                    HttpClient.incrementConnectionTimeout();
                                    GameInstaller.addErrorNumber(x.b);
                                    inputStreamA = null;
                                } catch (Exception e3) {
                                    GameInstaller.addErrorNumber(x.f159a);
                                    inputStreamA = null;
                                }
                            } else {
                                inputStreamA = this.f.a("", length, 0L);
                            }
                            if (inputStreamA == null) {
                                this.f.b();
                                try {
                                    sleep(3000L);
                                } catch (Exception e4) {
                                }
                            }
                            if (inputStreamA == null) {
                                throw new Exception();
                            }
                            this.p = new DataInputStream(inputStreamA);
                            if (this.p == null) {
                                throw new Exception();
                            }
                            this.o = new byte[32768];
                            this.e = getOutputStream(str);
                            while (true) {
                                int i = this.p.read(this.o, 0, 32768);
                                if (i < 0) {
                                    break;
                                }
                                this.e.write(this.o, 0, i);
                                this.k += (long) i;
                                if (this.d == null) {
                                    this.g = false;
                                    this.h = true;
                                    break;
                                }
                            }
                            this.j += this.k;
                            this.k = 0L;
                            this.n++;
                        } catch (SocketTimeoutException e5) {
                            GameInstaller.addErrorNumber(x.b);
                            HttpClient httpClient2 = this.f;
                            HttpClient.incrementConnectionTimeout();
                            this.i = true;
                        }
                    } catch (Exception e6) {
                        this.i = true;
                        GameInstaller.addErrorNumber(x.f159a);
                        throw new Exception();
                    }
                }
                this.e.close();
                this.p.close();
                this.o = null;
                if (this.d != null) {
                    this.g = true;
                }
                if (this.f != null) {
                    this.f.b();
                    this.f = null;
                }
                this.f142a = true;
            } catch (SocketTimeoutException e7) {
                GameInstaller.addErrorNumber(x.c);
                HttpClient httpClient3 = this.f;
                HttpClient.incrementConnectionTimeout();
                this.i = true;
            }
        } catch (Exception e8) {
            GameInstaller.addErrorNumber(x.d);
            this.i = true;
            this.o = null;
            if (this.f != null) {
                this.f.b();
                this.f = null;
            }
        }
    }
}
