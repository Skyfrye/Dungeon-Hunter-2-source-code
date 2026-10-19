package com.gameloft.android.GAND.GloftD2SS.iab;

import android.text.Html;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f112a = "";
    private String b = "";
    private String c = "";
    private Hashtable d = new Hashtable();
    private Hashtable e = new Hashtable();

    private int e() {
        if (this.e == null) {
            return 0;
        }
        return this.e.size();
    }

    public final f a() {
        return b(this.f112a);
    }

    public final String a(String str) {
        return (this.d.isEmpty() || !this.d.containsKey(str)) ? "" : (String) this.d.get(str);
    }

    public final void a(f fVar) {
        if (fVar != null) {
            this.e.put(fVar.a(), fVar);
        }
    }

    public final void a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        if (str2.equals(InAppBilling.a(0, 73)) || str2.equals(InAppBilling.a(0, 60)) || str2.equals(InAppBilling.a(0, 59))) {
            str2 = Html.fromHtml(str2).toString();
        }
        this.d.put(str, str2);
    }

    public final f b(String str) {
        if (this.e.isEmpty()) {
            return null;
        }
        return (f) this.e.get(str);
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.f112a;
    }

    public final void c(String str) {
        this.c = str;
    }

    public final String d() {
        return this.b;
    }

    public final void d(String str) {
        this.f112a = str;
    }

    public final void e(String str) {
        this.b = str;
    }

    public final String toString() {
        return null;
    }
}
