package com.gameloft.android.GAND.GloftD2SS;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
class GLResLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f8a = 20;
    static Resources b;
    static AssetManager c;
    static InputStream d;
    static OutputStream e;
    static boolean f = false;

    GLResLoader() {
    }

    public static String copyMovieFileFromAssetsToTMP(String str) {
        File fileCreateTempFile;
        try {
            fileCreateTempFile = File.createTempFile("intro", ".mp4");
        } catch (Exception e2) {
            fileCreateTempFile = null;
        }
        String absolutePath = fileCreateTempFile.getAbsolutePath();
        if (fileCreateTempFile == null) {
            return absolutePath;
        }
        if (getResourceOpen(str) <= 0) {
            return null;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            int resourceLength2 = getResourceLength2();
            int i = 0;
            while (i < resourceLength2) {
                if (i + 1024 < resourceLength2) {
                    fileOutputStream.write(getResourceRead(1024));
                    i += 1024;
                } else if (i < resourceLength2) {
                    fileOutputStream.write(getResourceRead(resourceLength2 - i));
                    i += i;
                }
            }
            getResourceClose();
            fileOutputStream.close();
            return absolutePath;
        } catch (Exception e3) {
            return null;
        }
    }

    public static int copyResourceFromAssets(String str, String str2, boolean z) {
        int i = 0;
        File file = new File(str2);
        if (file.exists() && !z) {
            return 0;
        }
        if (z && file.exists()) {
            try {
                file.delete();
                file.createNewFile();
            } catch (Exception e2) {
            }
        }
        if (getResourceOpen(str) <= 0) {
            return -1;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            int resourceLength2 = getResourceLength2();
            while (i < resourceLength2) {
                if (i + 1024 < resourceLength2) {
                    fileOutputStream.write(getResourceRead(1024));
                    i += 1024;
                } else if (i < resourceLength2) {
                    fileOutputStream.write(getResourceRead(resourceLength2 - i));
                    i += i;
                }
            }
            getResourceClose();
            fileOutputStream.close();
            return 1;
        } catch (Exception e3) {
            return -1;
        }
    }

    public static byte[] getRawResource(int i, Context context) {
        try {
            InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
            d = inputStreamOpenRawResource;
            int iAvailable = inputStreamOpenRawResource.available();
            byte[] bArr = new byte[iAvailable];
            d.read(bArr, 0, iAvailable);
            d.close();
            d = null;
            return bArr;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static byte[] getResourceBytes(String str, int i, int i2) {
        if (str.startsWith(".//")) {
            str = str.substring(3);
        } else if (str.startsWith("./")) {
            str = str.substring(2);
        }
        String strTrim = str.trim();
        String lowerCase = strTrim.substring(strTrim.lastIndexOf(47) + 1).toLowerCase();
        int iIndexOf = lowerCase.indexOf(46);
        if (iIndexOf != -1) {
            lowerCase = lowerCase.substring(0, iIndexOf);
        }
        int identifier = b.getIdentifier(strTrim.substring(0, strTrim.lastIndexOf(47) + 1) + "res_" + lowerCase, "drawable", GameRenderer.f26a.getPackageName());
        d = null;
        if (identifier != 0) {
            try {
                InputStream inputStreamOpenRawResource = b.openRawResource(identifier);
                d = inputStreamOpenRawResource;
                if (inputStreamOpenRawResource != null) {
                    byte[] bArr = new byte[i2];
                    d.skip(i);
                    d.read(bArr, 0, i2);
                    d.close();
                    d = null;
                    return bArr;
                }
            } catch (Exception e2) {
                return null;
            }
        }
        try {
            d = c.open(strTrim, 1);
            byte[] bArr2 = new byte[i2];
            if (i > 0) {
                d.skip(i);
            }
            d.read(bArr2, 0, i2);
            d.close();
            d = null;
            return bArr2;
        } catch (Exception e3) {
            return null;
        }
    }

    public static void getResourceClose() {
        try {
            if (d != null) {
                d.close();
                d = null;
            }
        } catch (Exception e2) {
        }
    }

    public static byte[] getResourceFull(int i) {
        try {
            InputStream inputStreamOpenRawResource = b.openRawResource(i);
            d = inputStreamOpenRawResource;
            int iAvailable = inputStreamOpenRawResource.available();
            byte[] bArr = new byte[iAvailable];
            d.read(bArr, 0, iAvailable);
            d.close();
            d = null;
            return bArr;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] getResourceFull(String str) {
        if (str.startsWith(".//")) {
            str = str.substring(3);
        } else if (str.startsWith("./")) {
            str = str.substring(2);
        }
        String strTrim = str.trim();
        String lowerCase = strTrim.substring(strTrim.lastIndexOf(47) + 1).toLowerCase();
        int iIndexOf = lowerCase.indexOf(46);
        if (iIndexOf != -1) {
            lowerCase = lowerCase.substring(0, iIndexOf);
        }
        int identifier = b.getIdentifier(strTrim.substring(0, strTrim.lastIndexOf(47) + 1) + "res_" + lowerCase, "drawable", GameRenderer.f26a.getPackageName());
        d = null;
        if (identifier != 0) {
            try {
                InputStream inputStreamOpenRawResource = b.openRawResource(identifier);
                d = inputStreamOpenRawResource;
                if (inputStreamOpenRawResource != null) {
                    int iAvailable = d.available();
                    byte[] bArr = new byte[iAvailable];
                    d.read(bArr, 0, iAvailable);
                    d.close();
                    d = null;
                    return bArr;
                }
            } catch (Exception e2) {
                return null;
            }
        }
        try {
            InputStream inputStreamOpen = c.open(strTrim, 1);
            d = inputStreamOpen;
            if (inputStreamOpen != null) {
                int iAvailable2 = d.available();
                byte[] bArr2 = new byte[iAvailable2];
                d.read(bArr2, 0, iAvailable2);
                d.close();
                d = null;
                return bArr2;
            }
        } catch (Exception e3) {
        }
        File file = new File("/sdcard/gameloft/games/letsgolf/" + strTrim);
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            int iAvailable3 = fileInputStream.available();
            byte[] bArr3 = new byte[iAvailable3];
            fileInputStream.read(bArr3, 0, iAvailable3);
            fileInputStream.close();
            return bArr3;
        } catch (Exception e4) {
            return null;
        }
    }

    private static int getResourceLength(String str) {
        if (str.startsWith(".//")) {
            str = str.substring(3);
        } else if (str.startsWith("./")) {
            str = str.substring(2);
        }
        String strTrim = str.trim();
        String lowerCase = strTrim.substring(strTrim.lastIndexOf(47) + 1).toLowerCase();
        int iIndexOf = lowerCase.indexOf(46);
        if (iIndexOf != -1) {
            lowerCase = lowerCase.substring(0, iIndexOf);
        }
        int identifier = b.getIdentifier(strTrim.substring(0, strTrim.lastIndexOf(47) + 1) + "res_" + lowerCase, "drawable", GameRenderer.f26a.getPackageName());
        d = null;
        if (identifier != 0) {
            try {
                InputStream inputStreamOpenRawResource = b.openRawResource(identifier);
                d = inputStreamOpenRawResource;
                if (inputStreamOpenRawResource != null) {
                    int iAvailable = d.available();
                    d.close();
                    d = null;
                    return iAvailable;
                }
            } catch (Exception e2) {
                return 0;
            }
        }
        try {
            InputStream inputStreamOpen = c.open(strTrim, 2);
            d = inputStreamOpen;
            if (inputStreamOpen != null) {
                int iAvailable2 = d.available();
                d.close();
                d = null;
                return iAvailable2;
            }
        } catch (Exception e3) {
        }
        File file = new File("/sdcard/gameloft/games/letsgolf/" + strTrim);
        if (!file.exists()) {
            return 0;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            int iAvailable3 = fileInputStream.available();
            fileInputStream.close();
            return iAvailable3;
        } catch (Exception e4) {
            return 0;
        }
    }

    public static int getResourceLength2() {
        try {
            if (d != null) {
                return d.available();
            }
            return 0;
        } catch (Exception e2) {
            return 0;
        }
    }

    public static int getResourceOpen(String str) {
        if (str.startsWith(".//")) {
            str = str.substring(3);
        } else if (str.startsWith("./")) {
            str = str.substring(2);
        }
        String strTrim = str.trim();
        String lowerCase = strTrim.substring(strTrim.lastIndexOf(47) + 1).toLowerCase();
        int iIndexOf = lowerCase.indexOf(46);
        if (iIndexOf != -1) {
            lowerCase = lowerCase.substring(0, iIndexOf);
        }
        int identifier = b.getIdentifier(strTrim.substring(0, strTrim.lastIndexOf(47) + 1) + "res_" + lowerCase, "drawable", GameRenderer.f26a.getPackageName());
        d = null;
        if (identifier != 0) {
            try {
                InputStream inputStreamOpenRawResource = b.openRawResource(identifier);
                d = inputStreamOpenRawResource;
                if (inputStreamOpenRawResource != null) {
                    return 1;
                }
            } catch (Exception e2) {
                return 0;
            }
        }
        try {
            f = true;
            InputStream inputStreamOpen = c.open(strTrim, 1);
            d = inputStreamOpen;
            return inputStreamOpen != null ? 1 : 0;
        } catch (Exception e3) {
            return 0;
        }
    }

    public static byte[] getResourceRead(int i) {
        try {
            if (d == null) {
                return null;
            }
            byte[] bArr = new byte[i];
            d.read(bArr, 0, i);
            return bArr;
        } catch (Exception e2) {
            return null;
        }
    }

    public static byte getResourceReadByte() {
        try {
            if (d != null) {
                return (byte) d.read();
            }
            return (byte) 0;
        } catch (Exception e2) {
            return (byte) 0;
        }
    }

    public static int getResourceSkip(int i) {
        try {
            if (d == null || i <= 0) {
                return 0;
            }
            return (int) d.skip(i);
        } catch (Exception e2) {
            return 0;
        }
    }

    public static String getString(int i, Context context) {
        try {
            return context.getResources().getString(i);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    static void init() {
        nativeInit(0);
        b = GameRenderer.f26a.getResources();
        c = GameRenderer.f26a.getAssets();
        d = null;
    }

    public static native void nativeInit(int i);
}
