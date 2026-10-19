package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.io.FilterInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class b extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f146a;
    private long b;

    public b(InputStream inputStream) {
        super(inputStream);
        this.f146a = 0L;
        this.b = 0L;
    }

    private synchronized long c() {
        return this.f146a;
    }

    public final synchronized void a() {
        this.f146a = 0L;
    }

    public final synchronized void a(long j) {
        this.b = j;
    }

    public final synchronized void b() {
        try {
            long j = this.b - this.f146a;
            if (j > 0) {
                skip(j);
            }
        } catch (Exception e) {
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i;
        if (this.f146a + 1 > this.b) {
            i = -2;
        } else {
            i = super.read();
            if (i >= 0) {
                this.f146a++;
            }
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i2) {
        int i3;
        if (this.f146a + ((long) i2) <= this.b || (i2 = (int) (this.b - this.f146a)) > 0) {
            i3 = super.read(bArr, i, i2);
            if (i3 > 0) {
                this.f146a += (long) i3;
            }
        } else {
            i3 = -2;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) {
        long jSkip;
        jSkip = super.skip(j);
        if (jSkip > 0) {
            this.f146a += jSkip;
        }
        return jSkip;
    }
}
