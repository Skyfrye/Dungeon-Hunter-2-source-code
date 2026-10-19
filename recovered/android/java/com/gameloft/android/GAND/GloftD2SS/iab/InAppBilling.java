package com.gameloft.android.GAND.GloftD2SS.iab;

import android.content.Context;
import android.os.Bundle;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.SUtils;
import com.gameloft.android.GAND.GloftD2SS.billing.common.StringEncrypter;
import com.gameloft.android.GAND.GloftD2SS.installer.GameInstaller;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public class InAppBilling {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ServerInfo f105a = null;
    static final int c = 60000;
    static final int d = 1800000;
    static int n;
    private static a q;
    static int b = 0;
    static String e = null;
    static String f = null;
    static String g = null;
    static String h = null;
    static String i = null;
    static String j = null;
    static String k = null;
    static String l = null;
    static boolean m = false;
    static boolean o = false;
    static boolean p = false;

    public static int GetState() {
        return SUtils.getPreferenceInt(StringEncrypter.getString(2131034561), 0, StringEncrypter.getString(2131034552));
    }

    public static void GoogleAnalyticsTrackTransaction() {
    }

    static boolean IsInternetAvaliable() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://www.google.com").openConnection();
            httpURLConnection.setConnectTimeout(3000);
            httpURLConnection.connect();
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    public static String a(int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt("O", i2);
        bundle.putInt("I", i3);
        Bundle bundleNativeSendData = nativeSendData(bundle);
        if (bundleNativeSendData != null) {
            return bundleNativeSendData.getString("R");
        }
        return null;
    }

    static /* synthetic */ boolean access$000(int i2) {
        return handleOperations(i2);
    }

    static void clear() {
        Boolean bool = new Boolean(false);
        Boolean bool2 = new Boolean(true);
        SUtils.setPreference(StringEncrypter.getString(2131034554), SUtils.getContext().getString(2131034568), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034555), SUtils.getContext().getString(2131034592), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034556), SUtils.getContext().getString(2131034592), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034557), SUtils.getContext().getString(2131034592), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034558), bool2.toString(), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034561), 0, StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034559), bool.toString(), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034564), bool.toString(), StringEncrypter.getString(2131034552));
    }

    public static Bundle getData(Bundle bundle) {
        int i2 = bundle.getInt(a(0, 34));
        if (i2 != 3 && i2 != 4 && i2 != 5 && i2 != 6 && i2 != 7 && i2 != 8 && i2 != 9 && i2 != 14 && i2 != 15 && i2 != 16 && i2 != 17) {
            h = bundle.getString(a(0, 40));
            i = bundle.getString(a(0, 42));
            if (i2 == 2) {
                f = bundle.getString(a(0, 38));
            }
            if (i2 == 1) {
                e = bundle.getString(a(0, 39));
            }
            if (i2 == 10) {
                k = bundle.getString(a(0, 41));
            }
        }
        if (i2 == 1 || i2 == 2 || i2 == 0 || i2 == 3 || i2 == 17 || i2 == 10) {
            new Thread(new c(i2)).start();
        }
        return getDataAid(i2, bundle);
    }

    private static Bundle getDataAid(int i2, Bundle bundle) {
        g gVarE;
        byte[] bArrE = null;
        if (i2 == 4) {
            String lastItem = getLastItem();
            String string = SUtils.getContext().getString(2131034592);
            if (lastItem != null && (gVarE = f105a.e(lastItem)) != null) {
                string = gVarE.a(a(0, 47));
            }
            bundle.putByteArray(a(0, 35), string != null ? string.getBytes() : null);
            bundle.putInt(a(0, 37), getLastState());
        } else if (i2 == 5) {
            int i3 = bundle.getInt(a(0, 36));
            if (i3 >= 0) {
                bundle.putByteArray(a(0, 35), f105a.a(e, i3));
            }
        } else if (i2 == 6) {
            int i4 = bundle.getInt(a(0, 36));
            if (i4 >= 0) {
                bundle.putByteArray(a(0, 35), f105a.b(e, i4));
            }
        } else if (i2 == 7) {
            String string2 = bundle.getString(a(0, 47));
            int i5 = bundle.getInt(a(0, 36));
            if (string2 != null && i5 >= 0) {
                bundle.putByteArray(a(0, 35), f105a.a(e, string2, i5));
            }
        } else if (i2 == 8) {
            String string3 = bundle.getString(a(0, 47));
            int i6 = bundle.getInt(a(0, 36));
            if (string3 != null && i6 >= 0) {
                bundle.putByteArray(a(0, 35), f105a.b(e, string3, i6));
            }
        } else if (i2 == 9) {
            String string4 = bundle.getString(a(0, 47));
            if (string4 != null) {
                if (string4.equals(a(0, 86))) {
                    bArrE = f105a.C();
                } else if (string4.equals(a(0, 87))) {
                    bArrE = f105a.D();
                } else if (string4.equals(a(0, 88))) {
                    bArrE = f105a.E();
                }
                bundle.putByteArray(a(0, 35), bArrE);
            }
        } else if (i2 == 14) {
            String string5 = bundle.getString(a(0, 63));
            if (string5 != null) {
                String strC = f105a.c(string5);
                bundle.putByteArray(a(0, 35), strC != null ? strC.getBytes() : null);
            }
        } else if (i2 == 15) {
            String string6 = bundle.getString(a(0, 47));
            String string7 = bundle.getString(a(0, 63));
            if (string6 != null && string7 != null) {
                String strA = f105a.a(string7, string6);
                bundle.putByteArray(a(0, 35), strA != null ? strA.getBytes() : null);
            }
        } else if (i2 == 16) {
            String string8 = bundle.getString(a(0, 47));
            String string9 = bundle.getString(a(0, 63));
            if (string8 != null && string9 != null) {
                String strB = f105a.b(string9, string8);
                bundle.putByteArray(a(0, 35), strB != null ? strB.getBytes() : null);
            }
        }
        return bundle;
    }

    static String getLastItem() {
        try {
            return new StringEncrypter(StringEncrypter.getString(2131034551), StringEncrypter.getString(2131034567)).b(SUtils.getPreferenceString(StringEncrypter.getString(2131034560), StringEncrypter.getString(2131034552))).split(StringEncrypter.getString(2131034553))[0];
        } catch (Exception e2) {
            return null;
        }
    }

    static int getLastState() {
        try {
            return Integer.parseInt(new StringEncrypter(StringEncrypter.getString(2131034551), StringEncrypter.getString(2131034567)).b(SUtils.getPreferenceString(StringEncrypter.getString(2131034560), StringEncrypter.getString(2131034552))).split(StringEncrypter.getString(2131034553))[2]);
        } catch (Exception e2) {
            return 0;
        }
    }

    private static String getSDFolder() {
        String preferenceString = SUtils.getPreferenceString("SDFolder", GameInstaller.mPreferencesName);
        return preferenceString != "" ? preferenceString : "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files";
    }

    public static int getTotalItems() {
        if (f105a != null) {
            return e.equals("") ? f105a.B() : f105a.d(e);
        }
        return 0;
    }

    private static synchronized boolean handleOperations(int i2) {
        boolean z;
        n = i2;
        if (i2 == 1) {
            try {
                int totalItems = getTotalItems();
                boolean z2 = false;
                for (int i3 = 0; i3 < totalItems && !z2; i3++) {
                    byte[] bArrA = f105a.a(e, a(0, 48), 0);
                    String str = bArrA == null ? null : new String(bArrA);
                    if (str != null && str.indexOf(a(0, 49)) != -1) {
                        z2 = true;
                    }
                }
                if (totalItems == 0 || z2) {
                    if (totalItems == 0) {
                        f105a.a();
                        int totalItems2 = getTotalItems();
                        if (totalItems2 > 0) {
                            m = true;
                        }
                        totalItems = totalItems2;
                    }
                    for (int i4 = 0; i4 < totalItems; i4++) {
                        byte[] bArrA2 = f105a.a(e, a(0, 48), i4);
                        String str2 = bArrA2 == null ? null : new String(bArrA2);
                        if (str2 != null && str2.indexOf(a(0, 49)) != -1) {
                            String str3 = new String(f105a.a(e, i4));
                            g = str3;
                            String str4 = "imgiab" + str3 + ".bin";
                            String str5 = getSDFolder() + "/" + str4;
                            try {
                                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
                                httpURLConnection.setConnectTimeout(10000);
                                httpURLConnection.setRequestMethod("GET");
                                httpURLConnection.setRequestProperty("Connection", "close");
                                File file = new File(str5);
                                int length = 0;
                                if (file.exists()) {
                                    length = (int) file.length();
                                } else {
                                    new File(file.getParent()).mkdirs();
                                    file.createNewFile();
                                }
                                if (httpURLConnection.getResponseCode() == 200) {
                                    int contentLength = httpURLConnection.getContentLength();
                                    if (contentLength == 1) {
                                        continue;
                                    } else if (contentLength == length) {
                                        f105a.a(e, a(0, 48), str4, i4);
                                    } else {
                                        synchronized (httpURLConnection) {
                                            try {
                                                InputStream inputStream = httpURLConnection.getInputStream();
                                                DataInputStream dataInputStream = new DataInputStream(inputStream);
                                                FileOutputStream fileOutputStream = new FileOutputStream(str5);
                                                int i5 = 0;
                                                while (i5 < contentLength) {
                                                    int i6 = contentLength - i5;
                                                    if (i6 > 131072) {
                                                        i6 = com.gameloft.android.GAND.GloftD2SS.installer.utils.c.bm;
                                                    }
                                                    byte[] bArr = new byte[i6];
                                                    dataInputStream.readFully(bArr);
                                                    fileOutputStream.write(bArr);
                                                    fileOutputStream.flush();
                                                    i5 = i6 + i5;
                                                }
                                                fileOutputStream.close();
                                                dataInputStream.close();
                                                inputStream.close();
                                                f105a.a(e, a(0, 48), str4, i4);
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            } catch (UnknownHostException e2) {
                            } catch (Exception e3) {
                            }
                        }
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putInt(a(0, 34), 4);
                bundle.putByteArray(a(0, 38), f != null ? f.getBytes() : null);
                bundle.putByteArray(a(0, 39), e != null ? e.getBytes() : null);
                bundle.putByteArray(a(0, 42), i != null ? i.getBytes() : null);
                bundle.putByteArray(a(0, 40), h != null ? h.getBytes() : null);
                bundle.putInt(a(0, 36), 1);
                bundle.putInt(a(0, 35), 0);
                try {
                    Class.forName(a(5, 108)).getMethod(a(0, 118), Bundle.class).invoke(null, bundle);
                } catch (Exception e4) {
                }
            } catch (Exception e5) {
            }
            z = true;
        } else if (i2 == 2) {
            try {
                if (q == null) {
                    q = new SamsungHelper(f105a);
                }
                f105a.a(f);
                q.b(f);
            } catch (Exception e6) {
            }
            z = true;
        } else if (i2 == 0) {
            try {
                a aVar = q;
                a aVar2 = q;
            } catch (Exception e7) {
            }
            z = true;
        } else if (i2 == 10) {
            GoogleAnalyticsTrackTransaction();
            z = true;
        } else if (i2 == 17) {
            if (f105a == null) {
                f105a = new ServerInfo();
            }
            if (q == null) {
                q = new SamsungHelper(f105a);
            }
            f105a.a(g);
            q.c();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public static void init(Context context) {
        SUtils.setContext(context);
        nativeInit(context);
        o = true;
        if (f105a == null) {
            f105a = new ServerInfo();
        }
    }

    static boolean isGoogleResponse() {
        try {
            return new Boolean(SUtils.getPreferenceString(StringEncrypter.getString(2131034564), StringEncrypter.getString(2131034552))).booleanValue();
        } catch (Exception e2) {
            return false;
        }
    }

    static boolean isPending() {
        try {
            return new Boolean(new StringEncrypter(StringEncrypter.getString(2131034551), StringEncrypter.getString(2131034567)).b(SUtils.getPreferenceString(StringEncrypter.getString(2131034554), StringEncrypter.getString(2131034552))).split(StringEncrypter.getString(2131034553))[0]).booleanValue();
        } catch (Exception e2) {
            return false;
        }
    }

    static void load() {
        Boolean bool;
        StringEncrypter stringEncrypter = new StringEncrypter(StringEncrypter.getString(2131034551), StringEncrypter.getString(2131034566));
        String preferenceString = SUtils.getPreferenceString(StringEncrypter.getString(2131034554), StringEncrypter.getString(2131034552));
        if (preferenceString == null || (preferenceString != null && preferenceString.length() == 0)) {
            if (Boolean.valueOf(SUtils.getPreferenceBoolean(StringEncrypter.getString(2131034586), new Boolean(false).booleanValue(), StringEncrypter.getString(2131034552))).booleanValue()) {
                e = SUtils.getPreferenceString(StringEncrypter.getString(2131034587), StringEncrypter.getString(2131034552));
                f = SUtils.getPreferenceString(StringEncrypter.getString(2131034588), StringEncrypter.getString(2131034552));
                h = SUtils.getPreferenceString(StringEncrypter.getString(2131034589), StringEncrypter.getString(2131034552));
                i = SUtils.getPreferenceString(StringEncrypter.getString(2131034590), StringEncrypter.getString(2131034552));
                b = SUtils.getPreferenceInt(StringEncrypter.getString(2131034591), 0, StringEncrypter.getString(2131034552));
                e = e == null ? "" : e;
                f = f == null ? "" : f;
                h = (h == null || h.length() == 0) ? "0" : h;
                i = i == null ? "" : i;
                f105a.a(f);
                return;
            }
            return;
        }
        try {
            bool = new Boolean(stringEncrypter.b(preferenceString).split(StringEncrypter.getString(2131034553))[0]);
        } catch (Exception e2) {
            bool = new Boolean(false);
        }
        if (bool.booleanValue()) {
            e = stringEncrypter.b(SUtils.getPreferenceString(StringEncrypter.getString(2131034555), StringEncrypter.getString(2131034552)));
            f = stringEncrypter.b(SUtils.getPreferenceString(StringEncrypter.getString(2131034556), StringEncrypter.getString(2131034552)));
            h = stringEncrypter.b(SUtils.getPreferenceString(StringEncrypter.getString(2131034557), StringEncrypter.getString(2131034552)));
            i = stringEncrypter.b(SUtils.getPreferenceString(StringEncrypter.getString(2131034558), StringEncrypter.getString(2131034552)));
            b = Integer.parseInt(stringEncrypter.b(SUtils.getPreferenceString(StringEncrypter.getString(2131034561), StringEncrypter.getString(2131034552))));
            j = stringEncrypter.b(SUtils.getPreferenceString(StringEncrypter.getString(2131034563), StringEncrypter.getString(2131034552)));
            k = stringEncrypter.b(SUtils.getPreferenceString(StringEncrypter.getString(2131034570), StringEncrypter.getString(2131034552)));
            f105a.a(f);
        }
    }

    public static native void nativeInit(Context context);

    public static native Bundle nativeSendData(Bundle bundle);

    public static native void nativeSetContext(Context context);

    public static native void nativeSetIABObject(InAppBilling inAppBilling);

    static void save(int i2) {
        StringEncrypter stringEncrypter = new StringEncrypter(StringEncrypter.getString(2131034551), StringEncrypter.getString(2131034565));
        String str = strArr[1] + StringEncrypter.getString(2131034553) + stringEncrypter.a() + StringEncrypter.getString(2131034553) + strArr[0];
        String[] strArr = {new Boolean(true).toString(), new Boolean(false).toString(), new Boolean(false).toString()};
        String str2 = strArr[2] + StringEncrypter.getString(2131034553) + stringEncrypter.a() + StringEncrypter.getString(2131034553) + strArr[1];
        String str3 = strArr[0] + StringEncrypter.getString(2131034553) + strArr[2] + StringEncrypter.getString(2131034553) + strArr[1];
        String str4 = strArr[0] + StringEncrypter.getString(2131034553) + stringEncrypter.a() + StringEncrypter.getString(2131034553) + strArr[0];
        SUtils.setPreference(StringEncrypter.getString(2131034554), stringEncrypter.a(str3), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034555), stringEncrypter.a(e != null ? e : SUtils.getContext().getString(2131034592)), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034556), stringEncrypter.a(f != null ? f : SUtils.getContext().getString(2131034592)), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034557), stringEncrypter.a(h != null ? h : SUtils.getContext().getString(2131034592)), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034558), stringEncrypter.a(i != null ? i : SUtils.getContext().getString(2131034592)), StringEncrypter.getString(2131034552));
        SUtils.setPreference(StringEncrypter.getString(2131034561), stringEncrypter.a(i2 + SUtils.getContext().getString(2131034592)), StringEncrypter.getString(2131034552));
        long jCurrentTimeMillis = 0;
        if (i2 == 1) {
            jCurrentTimeMillis = 1800000;
        } else if (i2 == 2 || i2 == 4 || i2 == 3) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        SUtils.setPreference(StringEncrypter.getString(2131034562), jCurrentTimeMillis + SUtils.getContext().getString(2131034592), StringEncrypter.getString(2131034552));
        b = i2;
    }

    static void saveLastItem(int i2) {
        StringEncrypter stringEncrypter = new StringEncrypter(StringEncrypter.getString(2131034551), StringEncrypter.getString(2131034567));
        String str = strArr[1] + StringEncrypter.getString(2131034553) + stringEncrypter.a() + StringEncrypter.getString(2131034553) + strArr[0];
        String[] strArr = {new Boolean(true).toString(), new Boolean(false).toString(), new Boolean(false).toString()};
        String str2 = strArr[2] + StringEncrypter.getString(2131034553) + stringEncrypter.a() + StringEncrypter.getString(2131034553) + strArr[1];
        String str3 = f + StringEncrypter.getString(2131034553) + strArr[2] + StringEncrypter.getString(2131034553) + i2;
        String str4 = strArr[0] + StringEncrypter.getString(2131034553) + stringEncrypter.a() + StringEncrypter.getString(2131034553) + strArr[0];
        SUtils.setPreference(StringEncrypter.getString(2131034560), stringEncrypter.a(str3), StringEncrypter.getString(2131034552));
    }

    static void saveNoGoogleReponse() {
        SUtils.setPreference(StringEncrypter.getString(2131034564), StringEncrypter.getString(2131034568), StringEncrypter.getString(2131034552));
    }
}
