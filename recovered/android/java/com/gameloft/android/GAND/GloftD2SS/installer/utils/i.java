package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CRC32 f152a;
    private CheckedInputStream b;

    public i(String str) {
        this.f152a = null;
        this.b = null;
        try {
            this.f152a = new CRC32();
            this.b = new CheckedInputStream(new FileInputStream(str), this.f152a);
        } catch (FileNotFoundException e) {
        }
    }

    private long b() {
        try {
            this.f152a.reset();
            this.b.skip(2048L);
            return this.b.getChecksum().getValue();
        } catch (Exception e) {
            return -1L;
        }
    }

    public final void a() {
        try {
            if (this.b != null) {
                this.b.close();
                this.b = null;
            }
            this.f152a = null;
        } catch (Exception e) {
        }
    }

    public final boolean a(long j) {
        return b() == j;
    }
}
