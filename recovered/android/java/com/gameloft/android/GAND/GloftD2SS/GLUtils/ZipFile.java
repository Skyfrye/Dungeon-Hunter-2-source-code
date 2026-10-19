package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import com.gameloft.android.GAND.GloftD2SS.installer.utils.f;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
public class ZipFile {
    public static void extract(String str, String str2) {
        try {
            byte[] bArr = new byte[1024];
            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(str));
            for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                String name = nextEntry.getName();
                File file = new File(name);
                if (file.getParent() == null && file.isDirectory()) {
                    break;
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str2 + "/" + name);
                while (true) {
                    int i = zipInputStream.read(bArr, 0, 1024);
                    if (i >= 0) {
                        fileOutputStream.write(bArr, 0, i);
                    }
                }
                fileOutputStream.close();
                zipInputStream.closeEntry();
            }
            zipInputStream.close();
        } catch (Exception e) {
        }
    }

    public static boolean unZip(f fVar, String str) {
        String strC = fVar.c();
        String str2 = str + "/" + fVar.a().replace(".\\\\", "").replace(".\\", "").replace("\\", "/") + "/";
        try {
            java.util.zip.ZipFile zipFile = new java.util.zip.ZipFile(str2 + strC);
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                String str3 = str2 + zipEntryNextElement.getName();
                File file = new File(str3);
                new File(file.getParent()).mkdirs();
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntryNextElement));
                byte[] bArr = new byte[16384];
                FileOutputStream fileOutputStream = new FileOutputStream(str3);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream, bArr.length);
                while (true) {
                    int i = bufferedInputStream.read(bArr, 0, bArr.length);
                    if (i != -1) {
                        bufferedOutputStream.write(bArr, 0, i);
                    }
                }
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                fileOutputStream.close();
                bufferedInputStream.close();
            }
            new File(str2 + strC).delete();
            return true;
        } catch (IOException e) {
            return false;
        } catch (Exception e2) {
            return false;
        }
    }
}
