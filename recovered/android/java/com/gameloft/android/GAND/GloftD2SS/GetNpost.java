package com.gameloft.android.GAND.GloftD2SS;

import android.content.Context;
import android.os.Build;
import android.os.Build$VERSION;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes.dex */
public final class GetNpost {
    String B;
    String U;
    String V;
    String W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f27a = "GameLoft";
    int b = 14;
    int c = 38;
    int d = 10;
    int e = 6;
    int f = 39;
    String g = "6465996161";
    String h = Build.MODEL;
    String i = Build$VERSION.RELEASE;
    String j = "3.0";
    String k = "1.0";
    String l = "";
    String m = "";
    String n = "800055";
    public String o = "j*__$33+yPQzz92!!~+";
    String p = this.j;
    String q = this.k;
    String r = "0";
    String s = "1";
    String t = "";
    String u = "";
    String v = "";
    double w = 0.0d;
    String x = "";
    String y = "";
    String z = "0";
    String A = "";
    String C = "N";
    String D = "";
    String E = "";
    String F = "";
    String G = "";
    double H = 0.0d;
    int I = 0;
    double J = 7.99d;
    String K = "";
    String L = "";
    String M = "1";
    String N = "FromPage";
    String O = "0";
    String P = "";
    String Q = "";
    String R = "";
    String S = "CATITEMS";
    String T = "2";

    private static String getDeviceMEID() {
        Context context = null;
        return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
    }
}
