package com.gameloft.android.GAND.GloftD2SS.iab;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Hashtable f110a = new Hashtable();
    private Hashtable b = new Hashtable();
    private String c = "";
    private String d = "";
    private String e = "";
    private String f = "";
    private String g = "";
    private String h = "";
    private String i = "";
    private String j = "";
    private String k = "";
    private String l = "";
    private String m = "";
    private String n = "";

    private String k() {
        return this.d;
    }

    private String l() {
        return this.f;
    }

    private String m() {
        return this.g;
    }

    private String n() {
        return this.h;
    }

    public final ArrayList a() {
        if (this.b == null || this.b.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Enumeration enumerationKeys = this.f110a.keys();
        while (enumerationKeys.hasMoreElements()) {
            arrayList.addAll((Collection) this.f110a.get((String) enumerationKeys.nextElement()));
        }
        return arrayList;
    }

    public final ArrayList a(String str) {
        if (str.equals("")) {
            return a();
        }
        if (this.f110a.containsKey(str)) {
            return (ArrayList) this.f110a.get(str);
        }
        return null;
    }

    public final void a(g gVar) {
        if (gVar != null) {
            String strD = gVar.d();
            if (this.f110a.containsKey(strD)) {
                ((ArrayList) this.f110a.get(strD)).add(gVar);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(gVar);
                this.f110a.put(strD, arrayList);
            }
            this.b.put(gVar.b(), gVar);
        }
    }

    public final void a(String str, String str2, String str3) {
        ((g) this.b.get(str)).a(str2, str3);
    }

    public final int b() {
        if (this.b != null) {
            return this.b.size();
        }
        return 0;
    }

    public final String b(String str) {
        if (str != null) {
            Enumeration enumerationKeys = this.b.keys();
            while (enumerationKeys.hasMoreElements()) {
                g gVar = (g) this.b.get(enumerationKeys.nextElement());
                if (str.equals(gVar.b(InAppBilling.a(0, 89)).a(InAppBilling.a(0, 63)))) {
                    return gVar.b();
                }
            }
        }
        return null;
    }

    public final g c(String str) {
        if (this.b.containsKey(str)) {
            return (g) this.b.get(str);
        }
        return null;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.e;
    }

    public final void d(String str) {
        this.c = str;
    }

    public final String e() {
        return this.i;
    }

    public final void e(String str) {
        this.d = str;
    }

    public final String f() {
        return this.j;
    }

    public final void f(String str) {
        this.e = str;
    }

    public final String g() {
        return this.k;
    }

    public final void g(String str) {
        this.f = str;
    }

    public final String h() {
        return this.l;
    }

    public final void h(String str) {
        this.g = str;
    }

    public final String i() {
        return this.m;
    }

    public final void i(String str) {
        this.i = str;
    }

    public final String j() {
        return this.n;
    }

    public final void j(String str) {
        this.h = str;
    }

    public final void k(String str) {
        this.j = str;
    }

    public final void l(String str) {
        this.k = str;
    }

    public final void m(String str) {
        this.l = str;
    }

    public final void n(String str) {
        this.m = str;
    }

    public final void o(String str) {
        this.n = str;
    }

    public final String toString() {
        return null;
    }
}
