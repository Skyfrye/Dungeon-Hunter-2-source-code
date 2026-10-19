package com.samsungapps.plasma;

import java.net.URL;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f292a = new AtomicInteger();
    private static final String b = ";";

    i() {
    }

    static double a(String str) {
        if (str == null) {
            return -1.0d;
        }
        String strTrim = str.trim();
        if (strTrim.length() <= 0) {
            return -1.0d;
        }
        try {
            return Double.parseDouble(strTrim);
        } catch (Exception e) {
            return -1.0d;
        }
    }

    static int a() {
        return f292a.getAndIncrement();
    }

    static String a(double d, String str, boolean z, boolean z2) {
        String str2 = String.format(z ? "%.2f" : "%.0f", Double.valueOf(d));
        StringBuffer stringBuffer = new StringBuffer();
        if (z2) {
            stringBuffer.append(str);
            stringBuffer.append(str2);
        } else {
            stringBuffer.append(str2);
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }

    static ArrayList a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (str != null && str.length() > 0 && str2 != null && str.length() > 0) {
            while (str.length() > 0) {
                int iIndexOf = str.indexOf(str2);
                if (iIndexOf == -1) {
                    arrayList.add(str);
                    break;
                }
                String strSubstring = str.substring(0, iIndexOf);
                str = str.substring(iIndexOf + 1);
                arrayList.add(strSubstring);
            }
        }
        return arrayList;
    }

    static int b(String str) {
        if (str == null) {
            return -1;
        }
        String strTrim = str.trim();
        if (strTrim.length() <= 0) {
            return -1;
        }
        try {
            return Integer.parseInt(strTrim);
        } catch (Exception e) {
            return -1;
        }
    }

    static URL c(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.length() > 0) {
                try {
                    return new URL(strTrim);
                } catch (Exception e) {
                }
            }
        }
        return null;
    }

    static Date d(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.length() > 0) {
                try {
                    StringTokenizer stringTokenizer = new StringTokenizer(strTrim, b);
                    int iB = b(stringTokenizer.nextToken());
                    int iB2 = b(stringTokenizer.nextToken()) - 1;
                    int iB3 = b(stringTokenizer.nextToken());
                    int iB4 = b(stringTokenizer.nextToken());
                    int iB5 = b(stringTokenizer.nextToken());
                    int iB6 = b(stringTokenizer.nextToken());
                    Calendar calendar = Calendar.getInstance();
                    calendar.set(iB, iB2, iB3, iB4, iB5, iB6);
                    return calendar.getTime();
                } catch (Exception e) {
                }
            }
        }
        return null;
    }
}
