package com.gameloft.android.GAND.GloftD2SS.installer.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;

/* JADX INFO: loaded from: classes.dex */
public class CRC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f136a = true;

    public static long calcChecksum(String str) {
        try {
            try {
                CheckedInputStream checkedInputStream = new CheckedInputStream(new FileInputStream(str), new CRC32());
                while (checkedInputStream.read(new byte[128]) >= 0) {
                }
                long value = checkedInputStream.getChecksum().getValue();
                checkedInputStream.close();
                return value;
            } catch (IOException e) {
                return 0L;
            }
        } catch (FileNotFoundException e2) {
            return 0L;
        }
    }

    public static long calcChecksum(String str, int i) {
        try {
            CRC32 crc32 = new CRC32();
            try {
                CheckedInputStream checkedInputStream = new CheckedInputStream(new FileInputStream(str), crc32);
                if (i > 0) {
                    checkedInputStream.skip((i - 1) * 2048);
                }
                crc32.reset();
                byte[] bArr = new byte[128];
                long j = 0;
                while (true) {
                    if ((i != 0 && j >= 2048) || checkedInputStream.read(bArr) < 0) {
                        break;
                    }
                    j += 128;
                }
                long value = checkedInputStream.getChecksum().getValue();
                checkedInputStream.close();
                return value;
            } catch (FileNotFoundException e) {
                return 0L;
            }
        } catch (IOException e2) {
            return 0L;
        }
    }

    public static boolean isValidChecksum(String str, long j) {
        long jCalcChecksum = calcChecksum(str);
        if (jCalcChecksum != j) {
            new File(str).delete();
        }
        return jCalcChecksum == j;
    }

    public static boolean isValidChecksum(String str, long j, int i) {
        long jCalcChecksum = calcChecksum(str, i);
        if (i <= 0 && jCalcChecksum != j) {
            new File(str).delete();
        }
        return jCalcChecksum == j;
    }
}
