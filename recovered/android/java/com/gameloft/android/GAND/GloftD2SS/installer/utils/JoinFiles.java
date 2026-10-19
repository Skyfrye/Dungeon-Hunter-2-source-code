package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class JoinFiles implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f140a = 524288;
    static long b = 0;
    static int c = 0;

    public static void join(String str, long j, int i) {
        join(str, null, j, i);
    }

    public static void join(String str, f fVar, long j, int i) {
        FileOutputStream fileOutputStream;
        int i2;
        String str2 = fVar == null ? str + "/joinedFile.zip" : str + "/" + fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/" + fVar.c();
        byte[][] bArr = new byte[2][];
        bArr[0] = new byte[f140a];
        try {
            b = j;
            c = i;
            File file = new File(str2);
            file.getParentFile().mkdirs();
            if (i > 0) {
                file.createNewFile();
                fileOutputStream = new FileOutputStream(str2);
            } else {
                fileOutputStream = null;
            }
            for (int i3 = 0; i3 < i; i3++) {
                File file2 = new File(str + "/section." + i3);
                if (i == 1) {
                    file2.renameTo(file);
                    return;
                }
                FileInputStream fileInputStream = new FileInputStream(file2);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
                DataInputStream dataInputStream = new DataInputStream(bufferedInputStream);
                long jAvailable = dataInputStream.available();
                for (long j2 = 0; j2 < jAvailable; j2 += (long) i2) {
                    i2 = (int) (jAvailable - j2);
                    if (i2 > f140a) {
                        i2 = f140a;
                    }
                    if (i2 == f140a) {
                        dataInputStream.readFully(bArr[0]);
                        fileOutputStream.write(bArr[0]);
                    } else {
                        bArr[1] = new byte[i2];
                        dataInputStream.readFully(bArr[1]);
                        fileOutputStream.write(bArr[1]);
                    }
                }
                fileInputStream.close();
                bufferedInputStream.close();
                dataInputStream.close();
                file2.delete();
            }
            fileOutputStream.close();
            System.gc();
        } catch (Exception e) {
        }
    }
}
