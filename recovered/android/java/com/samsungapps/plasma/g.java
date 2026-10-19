package com.samsungapps.plasma;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
abstract class g extends h {
    protected static final int N = 3;
    protected static final int O = 5000;
    protected static final int P = 6016;
    protected static final int Q = 6020;
    protected static final String R = "getPurchaseID";
    protected static final int S = 3013;
    protected static final int T = 9219;
    protected boolean A;
    protected boolean B;
    protected d t = null;
    protected Context u = null;
    protected String v = null;
    protected String w = null;
    protected String x = null;
    protected double y = -1.0d;
    protected String z = null;
    protected String C = null;
    protected String D = null;
    protected String E = null;
    protected int F = -1;
    protected String G = null;
    protected String H = null;
    protected String I = null;
    protected View J = null;
    protected int K = 0;
    protected String L = null;
    protected int M = 0;

    g() {
    }

    private boolean a(int i, String str) {
        l lVar = new l();
        lVar.b(Q);
        lVar.a(R);
        HashMap map = new HashMap();
        map.put("imei", this.t.c().a());
        map.put("itemID", str);
        map.put("timeStamp", String.valueOf(System.currentTimeMillis()));
        lVar.a(map);
        return this.t.a(i, lVar, (h) this, false);
    }

    private void b(int i, m mVar) {
        if (mVar == null) {
            a.a("responseData is null");
            return;
        }
        ArrayList arrayListD = mVar.d();
        PurchaseTicket purchaseTicket = null;
        if (arrayListD != null) {
            int i2 = 0;
            while (i2 < arrayListD.size() && i2 <= 0) {
                HashMap map = (HashMap) arrayListD.get(0);
                if (map != null) {
                    purchaseTicket = new PurchaseTicket();
                    purchaseTicket.a(this.G);
                    this.H = (String) map.get("purchaseID");
                    purchaseTicket.b(this.H);
                    purchaseTicket.c((String) map.get("verifyUrl"));
                    purchaseTicket.d((String) map.get("param1"));
                    purchaseTicket.e((String) map.get("param2"));
                    purchaseTicket.f((String) map.get("param3"));
                }
                i2++;
                purchaseTicket = purchaseTicket;
            }
        }
        if (c()) {
            this.t.a(i, 0, purchaseTicket);
        }
    }

    abstract String a();

    void a(double d) {
        this.y = d;
    }

    @Override // com.samsungapps.plasma.h
    protected void a(int i, int i2) {
        if (i2 != this.M || this.K >= 3) {
            this.t.b(200, c.a("IDS_SAPPS_POP_NETWORK_UNAVAILABLE"));
            return;
        }
        this.K++;
        a.a("Purchase retry count " + this.K);
        a(this.F, this.G, this.L);
    }

    @Override // com.samsungapps.plasma.h
    protected void a(int i, int i2, int i3, String str) {
        switch (i3) {
            case S /* 3013 */:
                this.t.b(i3, c.a("IDS_SAPPS_BODY_THIS_EMAIL_ADDRESS_CANNOT_BE_USED_IN_THIS_COUNTRY_SAMSUNG_APPS_LAUNCH_ERROR_MSG"));
                break;
            case T /* 9219 */:
                if (this.K >= 3) {
                    this.t.b(i3, c.a("IDS_SAPPS_POP_PURCHASE_FAILED_TRY_LATER"));
                } else {
                    this.K++;
                    a.a("Purchase retry count " + this.K);
                    a(this.F, this.G, this.L);
                }
                break;
            default:
                this.t.b(i3, str);
                break;
        }
    }

    @Override // com.samsungapps.plasma.h
    protected void a(int i, m mVar) {
        if (mVar == null) {
        }
        switch (mVar.c()) {
            case P /* 6016 */:
                this.t.b(i, mVar);
                break;
            case Q /* 6020 */:
                b(i, mVar);
                break;
        }
    }

    void a(Context context) {
        this.u = context;
    }

    void a(d dVar) {
        this.t = dVar;
    }

    void a(String str) {
        this.v = str;
    }

    void a(boolean z) {
        this.A = z;
    }

    protected boolean a(int i, String str, String str2) {
        l lVar = new l();
        lVar.a(true);
        lVar.b(P);
        lVar.a("checkPurchasedItem");
        HashMap map = new HashMap();
        map.put("itemID", str);
        map.put("imei", this.t.c().a());
        map.put("transID", str2);
        map.put("mode", String.valueOf(this.t.a()));
        lVar.a(map);
        return this.t.a(i, lVar, (h) this, false, O);
    }

    abstract boolean a_();

    void b(int i) {
        this.F = i;
    }

    void b(String str) {
        this.w = str;
    }

    void b(boolean z) {
        this.B = z;
    }

    void c(String str) {
        this.x = str;
    }

    abstract boolean c();

    abstract View d();

    void d(String str) {
        this.z = str;
    }

    String e() {
        return this.v;
    }

    void e(String str) {
        this.C = str;
    }

    String f() {
        return this.w;
    }

    void f(String str) {
        this.D = str;
    }

    String g() {
        return this.x;
    }

    void g(String str) {
        this.E = str;
    }

    double h() {
        return this.y;
    }

    void h(String str) {
        this.G = str;
    }

    String i() {
        return this.z;
    }

    void i(String str) {
        this.I = str;
    }

    boolean j() {
        return this.A;
    }

    boolean k() {
        return this.B;
    }

    String l() {
        return this.C;
    }

    String m() {
        return this.D;
    }

    String n() {
        return this.E;
    }

    int o() {
        return this.F;
    }

    String p() {
        return this.G;
    }

    String q() {
        return this.I;
    }

    protected boolean r() {
        return a(this.F, this.G);
    }

    protected void s() {
        if (this.H != null) {
            this.L = this.H;
        } else {
            this.L = String.valueOf(System.currentTimeMillis());
        }
        this.K = 0;
    }
}
