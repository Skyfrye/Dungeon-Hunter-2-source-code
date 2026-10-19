package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class PSMSPaymentMethod$4 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PSMSPaymentMethod f256a;

    PSMSPaymentMethod$4(PSMSPaymentMethod pSMSPaymentMethod) {
        this.f256a = pSMSPaymentMethod;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (this.f256a.f252a != null) {
            this.f256a.f252a.dismiss();
            this.f256a.f252a = null;
        }
        PSMSPaymentMethod.a(this.f256a, PSMSPaymentMethod$c.SEND_SMS);
        PSMSPaymentMethod.b(this.f256a);
    }
}
