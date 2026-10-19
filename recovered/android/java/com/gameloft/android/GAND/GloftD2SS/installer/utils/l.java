package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
public final class l extends ZipInputStream {
    public l(InputStream inputStream) {
        super(inputStream);
    }

    private long b() {
        return this.inf.getRemaining();
    }

    private long c() {
        return this.inf.getTotalIn();
    }

    private long d() {
        return this.inf.getTotalOut();
    }

    public final long a() {
        return this.inf.getBytesRead();
    }
}
