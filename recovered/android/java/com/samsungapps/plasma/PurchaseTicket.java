package com.samsungapps.plasma;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseTicket {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f271a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;

    PurchaseTicket() {
    }

    void a(String str) {
        this.f271a = str;
    }

    void b(String str) {
        this.b = str;
    }

    void c(String str) {
        this.c = str;
    }

    void d(String str) {
        this.d = str;
    }

    void e(String str) {
        this.e = str;
    }

    void f(String str) {
        this.f = str;
    }

    public String getItemId() {
        return this.f271a;
    }

    public String getParam1() {
        return this.d;
    }

    public String getParam2() {
        return this.e;
    }

    public String getParam3() {
        return this.f;
    }

    public String getPurchaseId() {
        return this.b;
    }

    public String getVerifyUrl() {
        return this.c;
    }
}
