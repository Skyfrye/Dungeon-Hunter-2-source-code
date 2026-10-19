package com.gameloft.android.GAND.GloftD2SS.billing.common;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f78a = null;
    private String b = null;
    private String c = null;
    private String d = null;
    private String e = null;
    private String f = null;
    private String g = null;
    private String h = null;
    private String i = null;
    private String j = null;

    private String a() {
        return this.j;
    }

    private void a(String str) {
        this.j = str;
    }

    private void b(String str) {
        this.f78a = str;
    }

    private boolean b() {
        return this.j != null && this.j.split("\\@").length == 2;
    }

    private String c() {
        return this.f78a;
    }

    private void c(String str) {
        this.b = str;
    }

    private void d(String str) {
        this.c = str;
    }

    private boolean d() {
        return this.f78a != null && this.f78a.length() > 3;
    }

    private String e() {
        return this.b;
    }

    private void e(String str) {
        this.d = str;
    }

    private void f(String str) {
        this.e = str;
    }

    private boolean f() {
        return this.b != null && this.b.length() > 3;
    }

    private String g() {
        if (this.c == null || this.d == null || this.e == null || this.f == null) {
            return null;
        }
        return this.c + this.d + this.e + this.f;
    }

    private void g(String str) {
        this.f = str;
    }

    private String h() {
        if (this.f == null) {
            return null;
        }
        return this.f;
    }

    private void h(String str) {
        this.g = str;
    }

    private String i() {
        return this.c;
    }

    private void i(String str) {
        this.h = str;
    }

    private String j() {
        return this.d;
    }

    private void j(String str) {
        this.i = str;
    }

    private String k() {
        return this.e;
    }

    private String l() {
        return this.f;
    }

    private boolean m() {
        return g() != null && g().length() >= 16;
    }

    private String n() {
        return this.g;
    }

    private String o() {
        if (this.g == null || this.h == null || this.h.length() < 4) {
            return null;
        }
        return this.g + this.h.substring(2, 4);
    }

    private String p() {
        return this.h;
    }

    private boolean q() {
        return o() != null && o().length() >= 4;
    }

    private String r() {
        return this.i;
    }

    private boolean s() {
        return this.i != null && this.i.length() >= 3;
    }

    private boolean t() {
        if (g() != null && g().length() >= 16) {
            if (o() != null && o().length() >= 4) {
                if (this.i != null && this.i.length() >= 3) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean u() {
        if (t() && b() && f()) {
            if (this.f78a != null && this.f78a.length() > 3) {
                return true;
            }
        }
        return false;
    }

    private boolean v() {
        return t() && b() && f();
    }
}
