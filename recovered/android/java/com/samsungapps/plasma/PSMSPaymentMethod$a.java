package com.samsungapps.plasma;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
final class PSMSPaymentMethod$a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f261a = 5;
    static final int b = 5;
    final /* synthetic */ PSMSPaymentMethod c;
    private String d;
    private String e;
    private ArrayList f;
    private ArrayList g;
    private String h;
    private String i;
    private String j;
    private boolean k;
    private int l;
    private int m;

    private PSMSPaymentMethod$a(PSMSPaymentMethod pSMSPaymentMethod) {
        this.c = pSMSPaymentMethod;
        this.l = 5;
        this.m = 5;
    }

    /* synthetic */ PSMSPaymentMethod$a(PSMSPaymentMethod pSMSPaymentMethod, PSMSPaymentMethod$1 pSMSPaymentMethod$1) {
        this(pSMSPaymentMethod);
    }

    static /* synthetic */ String a(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.j;
    }

    private boolean a() {
        return this.h != null && this.h.length() > 0;
    }

    static /* synthetic */ boolean a(PSMSPaymentMethod$a pSMSPaymentMethod$a, HashMap map, boolean z) {
        return pSMSPaymentMethod$a.a(map, z);
    }

    private boolean a(String str) {
        return str != null && str.length() > 0;
    }

    private boolean a(HashMap map, boolean z) {
        this.d = (String) map.get("paymentID");
        if (a(this.d)) {
            this.e = (String) map.get("orderID");
            if (a(this.e)) {
                String str = (String) map.get("shortCode");
                String str2 = (String) map.get("message");
                this.f = i.a(str, ";");
                this.g = i.a(str2, ";");
                if (z || (!this.f.isEmpty() && !this.g.isEmpty())) {
                    this.h = (String) map.get("randomKey");
                    this.i = (String) map.get("confirmMsg");
                    this.j = (String) map.get("tncMsg");
                    if (i.b("sendSMS") == 0) {
                        this.k = true;
                    }
                    this.l = i.b("retryCount");
                    if (this.l < 0) {
                        this.l = 5;
                    }
                    this.m = i.b("responseTime");
                    if (this.m < 0) {
                        this.m = 5;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    static /* synthetic */ String b(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.i;
    }

    private boolean b() {
        return this.j != null && this.j.length() > 0;
    }

    static /* synthetic */ boolean c(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.b();
    }

    static /* synthetic */ boolean d(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.a();
    }

    static /* synthetic */ int e(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.l;
    }

    static /* synthetic */ String f(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.d;
    }

    static /* synthetic */ int g(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        int i = pSMSPaymentMethod$a.l;
        pSMSPaymentMethod$a.l = i - 1;
        return i;
    }

    static /* synthetic */ String h(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.e;
    }

    static /* synthetic */ int i(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.m;
    }

    static /* synthetic */ String j(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.h;
    }

    static /* synthetic */ boolean k(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.k;
    }

    static /* synthetic */ ArrayList l(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.f;
    }

    static /* synthetic */ ArrayList m(PSMSPaymentMethod$a pSMSPaymentMethod$a) {
        return pSMSPaymentMethod$a.g;
    }
}
