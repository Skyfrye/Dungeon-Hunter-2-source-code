package com.samsungapps.plasma;

import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class PSMSPaymentMethod$1 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PSMSPaymentMethod f253a;

    PSMSPaymentMethod$1(PSMSPaymentMethod pSMSPaymentMethod) {
        this.f253a = pSMSPaymentMethod;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (PSMSPaymentMethod.a(this.f253a) != null) {
            PSMSPaymentMethod.a(this.f253a).dismiss();
            PSMSPaymentMethod.a(this.f253a, (ProgressDialog) null);
        }
        if (message.what == 0) {
            PSMSPaymentMethod.b(this.f253a);
        }
    }
}
