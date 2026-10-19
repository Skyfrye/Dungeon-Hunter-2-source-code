package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import com.gameloft.android.GAND.GloftD2SS.installer.GameInstaller;
import com.gameloft.android.GAND.GloftD2SS.installer.p;
import java.util.ArrayList;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public final class Downloader implements c {
    public static boolean g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f138a;
    public String b;
    public long c;
    public int d;
    public boolean e;
    public boolean f;
    ArrayList h;
    Vector i;
    private int j = 0;
    private int k = 0;
    private final int l = 1048576;

    public Downloader(String str, String str2, Vector vector, int i, long j) {
        this.f138a = "";
        this.b = "";
        this.c = 0L;
        this.d = 0;
        this.d = i;
        this.i = vector;
        this.f138a = str;
        this.b = str2;
        this.c = j;
        try {
            a();
        } catch (Exception e) {
            GameInstaller.addErrorNumber(p.b);
            this.f = true;
        }
    }

    private void a(int i) {
        this.d = i;
    }

    /* JADX DEBUG: Move duplicate insns, count: 2 to block B:6:0x004c */
    private void a(long j) {
        this.h = new ArrayList();
        this.j = 0;
        if (this.i.size() == 0) {
            return;
        }
        Vector vector = new Vector();
        int iH = ((f) this.i.get(0)).h();
        int iF = ((f) this.i.get(0)).f();
        vector.add(this.i.get(0));
        HttpClient httpClient = new HttpClient();
        this.f138a = httpClient.b(this.f138a);
        httpClient.b();
        int i = 1;
        while (true) {
            int i2 = i;
            int i3 = iH;
            if (i2 >= this.i.size()) {
                break;
            }
            if (i3 + 1 != ((f) this.i.get(i2)).h() || iF >= j) {
                this.h.add(new Section(this.f138a, this.b, vector, this.d, this.h.size()));
                this.j++;
                vector = new Vector();
                vector.add(this.i.get(i2));
                iF = ((f) this.i.get(i2)).f();
            } else {
                vector.add(this.i.get(i2));
                iF += ((f) this.i.get(i2)).f();
            }
            iH = ((f) this.i.get(i2)).h();
            i = i2 + 1;
        }
        this.h.add(new Section(this.f138a, this.b, vector, this.d, this.h.size()));
        this.j++;
        for (int i4 = 0; i4 < this.j; i4++) {
            for (int i5 = 0; i5 < ((Section) this.h.get(i4)).g().size(); i5++) {
            }
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 2 to block B:8:0x005a */
    private void f() {
        this.k = 0;
        long j = this.c / 5;
        long j2 = 20971520 < j ? 20971520L : j;
        this.h = new ArrayList();
        this.j = 0;
        if (this.i.size() != 0) {
            Vector vector = new Vector();
            int iH = ((f) this.i.get(0)).h();
            int iF = ((f) this.i.get(0)).f();
            vector.add(this.i.get(0));
            HttpClient httpClient = new HttpClient();
            this.f138a = httpClient.b(this.f138a);
            httpClient.b();
            int i = 1;
            while (true) {
                int i2 = i;
                int i3 = iH;
                if (i2 >= this.i.size()) {
                    break;
                }
                if (i3 + 1 != ((f) this.i.get(i2)).h() || iF >= j2) {
                    this.h.add(new Section(this.f138a, this.b, vector, this.d, this.h.size()));
                    this.j++;
                    vector = new Vector();
                    vector.add(this.i.get(i2));
                    iF = ((f) this.i.get(i2)).f();
                } else {
                    vector.add(this.i.get(i2));
                    iF += ((f) this.i.get(i2)).f();
                }
                iH = ((f) this.i.get(i2)).h();
                i = i2 + 1;
            }
            this.h.add(new Section(this.f138a, this.b, vector, this.d, this.h.size()));
            this.j++;
            for (int i4 = 0; i4 < this.j; i4++) {
                for (int i5 = 0; i5 < ((Section) this.h.get(i4)).g().size(); i5++) {
                }
            }
        }
    }

    private String g() {
        return this.b + "/joinedFile.zip";
    }

    private int h() {
        int iF = 0;
        for (int i = 0; i < this.j; i++) {
            iF += ((Section) this.h.get(i)).f();
        }
        return iF;
    }

    private static void pause() {
        g = true;
    }

    private static void resume() {
        g = false;
    }

    /* JADX DEBUG: Move duplicate insns, count: 2 to block B:12:0x0066 */
    public final void a() throws Exception {
        if (this.i == null || this.i.size() <= 0) {
            throw new Exception();
        }
        this.k = 0;
        long j = this.c / 5;
        long j2 = 20971520 < j ? 20971520L : j;
        this.h = new ArrayList();
        this.j = 0;
        if (this.i.size() != 0) {
            Vector vector = new Vector();
            int iH = ((f) this.i.get(0)).h();
            int iF = ((f) this.i.get(0)).f();
            vector.add(this.i.get(0));
            HttpClient httpClient = new HttpClient();
            this.f138a = httpClient.b(this.f138a);
            httpClient.b();
            int i = 1;
            while (true) {
                int i2 = i;
                int i3 = iH;
                if (i2 >= this.i.size()) {
                    break;
                }
                if (i3 + 1 != ((f) this.i.get(i2)).h() || iF >= j2) {
                    this.h.add(new Section(this.f138a, this.b, vector, this.d, this.h.size()));
                    this.j++;
                    vector = new Vector();
                    vector.add(this.i.get(i2));
                    iF = ((f) this.i.get(i2)).f();
                } else {
                    vector.add(this.i.get(i2));
                    iF += ((f) this.i.get(i2)).f();
                }
                iH = ((f) this.i.get(i2)).h();
                i = i2 + 1;
            }
            this.h.add(new Section(this.f138a, this.b, vector, this.d, this.h.size()));
            this.j++;
            for (int i4 = 0; i4 < this.j; i4++) {
                for (int i5 = 0; i5 < ((Section) this.h.get(i4)).g().size(); i5++) {
                }
            }
        }
        this.e = false;
        g = false;
    }

    public final void a(Vector vector) {
        this.i = vector;
        this.f = false;
        try {
            a();
        } catch (Exception e) {
            GameInstaller.addErrorNumber(p.c);
            this.f = true;
        }
    }

    public final void b() {
        if (this.f) {
            return;
        }
        try {
            int i = this.j < 5 ? this.j : 5;
            for (int i2 = 0; i2 < i; i2++) {
                ((Section) this.h.get(i2)).start();
                this.k++;
            }
        } catch (Exception e) {
            GameInstaller.addErrorNumber(p.d);
            this.f = true;
        }
    }

    public final void c() {
        if (this.f) {
            d();
            return;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.j; i3++) {
            if (((Section) this.h.get(i3)).c()) {
                if (((Section) this.h.get(i3)).d()) {
                    ((Section) this.h.get(i3)).a();
                    this.h.set(i3, new Section((Section) this.h.get(i3)));
                    ((Section) this.h.get(i3)).start();
                } else {
                    i++;
                }
            } else if (((Section) this.h.get(i3)).b()) {
                i2++;
            }
        }
        if (i > 0 && i + i2 == this.j) {
            this.f = true;
            d();
            return;
        }
        if (this.k - (i + i2) < 5 && this.k < this.j) {
            ((Section) this.h.get(this.k)).start();
            this.k++;
        }
        if (i + i2 >= this.j) {
            this.e = true;
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0002 */
    public final void d() {
        int i = 0;
        while (true) {
            try {
                int i2 = i;
                if (i2 >= this.h.size()) {
                    return;
                }
                if (this.h.get(i2) != null) {
                    ((Section) this.h.get(i2)).a();
                }
                i = i2 + 1;
            } catch (Exception e) {
                GameInstaller.addErrorNumber(p.e);
                this.f = true;
                return;
            }
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0006 */
    public final long e() {
        int i = 0;
        long jE = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.j) {
                return jE;
            }
            jE += ((Section) this.h.get(i2)).e();
            i = i2 + 1;
        }
    }
}
