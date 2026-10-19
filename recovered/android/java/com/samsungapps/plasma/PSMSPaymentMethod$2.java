package com.samsungapps.plasma;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
class PSMSPaymentMethod$2 implements DialogInterface$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PSMSPaymentMethod f254a;

    PSMSPaymentMethod$2(PSMSPaymentMethod pSMSPaymentMethod) {
        this.f254a = pSMSPaymentMethod;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.f254a.f252a != null) {
            this.f254a.f252a.dismiss();
            this.f254a.f252a = null;
        }
        PSMSPaymentMethod.a(this.f254a, PSMSPaymentMethod$c.ERROR);
        PSMSPaymentMethod.a(this.f254a, PSMSPaymentMethod$b.NORMAL);
    }
}
