package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes.dex */
public final class a extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Checksum f145a;

    private a(InputStream inputStream, Checksum checksum) {
        super(inputStream);
        this.f145a = checksum;
    }

    private Checksum a() {
        return this.f145a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i = this.in.read();
        if (i != -1) {
            this.f145a.update(i);
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.in.read(bArr, i, i2);
        if (i3 != -1) {
            this.f145a.update(bArr, i, i3);
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        int i;
        if (j == 0) {
            return 0L;
        }
        int iMin = (int) Math.min(j, 1024L);
        byte[] bArr = new byte[iMin];
        int iMin2 = iMin;
        long j2 = 0;
        while (j > 0 && (i = this.in.read(bArr, 0, iMin2)) != -1) {
            j -= (long) i;
            j2 += (long) i;
            iMin2 = (int) Math.min(j, 1024L);
            this.f145a.update(bArr, 0, i);
        }
        this.f145a.reset();
        return j2;
    }
}
