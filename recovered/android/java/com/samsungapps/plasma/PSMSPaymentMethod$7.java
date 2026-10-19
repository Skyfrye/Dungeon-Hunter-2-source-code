package com.samsungapps.plasma;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
class PSMSPaymentMethod$7 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PSMSPaymentMethod f259a;

    PSMSPaymentMethod$7(PSMSPaymentMethod pSMSPaymentMethod) {
        this.f259a = pSMSPaymentMethod;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (PSMSPaymentMethod.a(this.f259a) != null) {
            PSMSPaymentMethod.a(this.f259a).dismiss();
            PSMSPaymentMethod.a(this.f259a, (ProgressDialog) null);
        }
        this.f259a.u.unregisterReceiver(PSMSPaymentMethod.d(this.f259a));
        int resultCode = getResultCode();
        if (resultCode == -1) {
            a.a("SMS message sent");
            PSMSPaymentMethod.b(this.f259a);
        } else {
            a.a("SMS send failed code = " + resultCode);
            PSMSPaymentMethod.a(this.f259a, PSMSPaymentMethod$c.ERROR);
            this.f259a.t.b(Plasma.STATUS_CODE_PROCESSERROR, c.a("IDS_SAPPS_POP_FAILED_TO_SEND_MESSAGE"));
        }
    }
}
