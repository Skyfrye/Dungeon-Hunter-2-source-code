package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import android.content.Context;
import android.content.res.Resources;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Vector f150a;
    Resources b;
    long c = 0;
    long d = 0;
    long e = 0;
    long f;

    public g(Context context) {
        this.f150a = null;
        this.f150a = new Vector();
        this.b = context.getResources();
    }

    private Vector a(int i) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(this.b.openRawResource(i));
        if (dataInputStream.available() > 0) {
            a(dataInputStream);
            dataInputStream.close();
        }
        return this.f150a;
    }

    private void a(DataInputStream dataInputStream) throws IOException {
        int i;
        int i2 = 0;
        long j = 0;
        f fVar = null;
        while (true) {
            String utf = dataInputStream.readUTF();
            if (utf.startsWith("version: ")) {
                i = Integer.parseInt(utf.substring(9));
                this.f = dataInputStream.readInt() * 1024;
                utf = dataInputStream.readUTF();
            } else {
                i = -1;
                this.f = 0L;
            }
            int i3 = dataInputStream.readInt();
            int i4 = 0;
            f fVar2 = fVar;
            long j2 = j;
            f fVar3 = fVar2;
            while (i4 < i3) {
                f fVar4 = new f();
                int i5 = dataInputStream.readInt();
                int i6 = dataInputStream.readInt();
                long j3 = dataInputStream.readLong();
                String utf2 = dataInputStream.readUTF();
                if (i >= 101) {
                    if (utf2.endsWith(".split_0001")) {
                        j2 = dataInputStream.readLong();
                        fVar4.c(j2);
                        System.out.println("\tfileName: " + utf2 + " entireFileSize: " + j2);
                    } else if (utf2.contains(".split_")) {
                        fVar4.c(j2);
                    } else {
                        fVar4.c(i6);
                    }
                }
                int i7 = dataInputStream.readInt();
                String utf3 = dataInputStream.readUTF();
                fVar4.a(utf);
                fVar4.b(utf2);
                fVar4.c(utf3);
                fVar4.a(i6);
                fVar4.b(j3);
                fVar4.a(i7);
                fVar4.b(i5);
                int i8 = i2 + 1;
                fVar4.c(i2);
                this.f150a.add(fVar4);
                if (i7 > this.d) {
                    this.d = i7;
                }
                if (i6 > this.e) {
                    this.e = i6;
                }
                i4++;
                i2 = i8;
                fVar3 = fVar4;
            }
            if (dataInputStream.available() <= 0) {
                this.c = fVar3.g() + fVar3.f();
                return;
            } else {
                j = j2;
                fVar = fVar3;
            }
        }
    }

    private long b() {
        return this.c;
    }

    private long c() {
        return this.d;
    }

    public final long a() {
        return this.e;
    }

    public final Vector a(String str) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(str));
        if (dataInputStream.available() > 0) {
            a(dataInputStream);
            dataInputStream.close();
        }
        return this.f150a;
    }
}
