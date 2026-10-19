package com.gameloft.android.GAND.GloftD2SS;

import org.xmlpull.v1.XmlPullParserException;

final class bw extends Thread {

    final /* synthetic */ boolean f90a;
    final /* synthetic */ String b;

    bw(boolean z, String str) {
        this.f90a = z;
        this.b = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int iB;
        if (this.f90a) {
            VZBilling.d.i = "";
            VZBilling.d.j = "";
            VZBilling.d.k = "";
            VZBilling.d.i = null;
            VZBilling.d.j = null;
            VZBilling.d.k = null;
        }
        Billing billing = VZBilling.d;
        Billing.setsUrl(null);
        VZBilling.d.a(this.b);
        VZBilling.d.a();
        do {
            try {
                Thread.sleep(10L);
            } catch (Exception e) {
            }
            iB = VZBilling.d.b();
            Billing billing2 = VZBilling.d;
        } while (iB == 0);
        Billing billing3 = VZBilling.d;
        if (Billing.getsResponse() != null) {
            Billing billing4 = VZBilling.d;
            if (Billing.getsResponse().equals("")) {
                VZBilling.f = "A network error has occurred.\nPlease try again later.";
                VZBilling.c = true;
            } else {
                Billing billing5 = VZBilling.d;
                try {
                    VZBilling.parserXML(Billing.getsResponse());
                } catch (XmlPullParserException e) {
                    throw new RuntimeException(e);
                }
                if (VZBilling.CodeEvaluation(VZBilling.e.U)) {
                    VZBilling.f = VZBilling.e.V;
                    VZBilling.c = true;
                } else {
                    VZBilling.f = VZBilling.e.W;
                    VZBilling.c = false;
                }
            }
        } else {
            VZBilling.f = "A network error has occurred.\nPlease try again later.";
            VZBilling.c = true;
        }
        VZBilling.b = false;
    }
}
