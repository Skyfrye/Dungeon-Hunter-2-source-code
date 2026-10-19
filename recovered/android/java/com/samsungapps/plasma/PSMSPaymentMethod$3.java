package com.samsungapps.plasma;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;

/* JADX INFO: loaded from: classes.dex */
class PSMSPaymentMethod$3 implements DialogInterface$OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PSMSPaymentMethod f255a;

    PSMSPaymentMethod$3(PSMSPaymentMethod pSMSPaymentMethod) {
        this.f255a = pSMSPaymentMethod;
    }

    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f255a.f252a = null;
    }
}
