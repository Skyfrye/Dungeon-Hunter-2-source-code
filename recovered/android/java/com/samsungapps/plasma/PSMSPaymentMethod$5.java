package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class PSMSPaymentMethod$5 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f257a;
    final /* synthetic */ PSMSPaymentMethod b;

    PSMSPaymentMethod$5(PSMSPaymentMethod pSMSPaymentMethod, EditText editText) {
        this.b = pSMSPaymentMethod;
        this.f257a = editText;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (!PSMSPaymentMethod$a.j(PSMSPaymentMethod.c(this.b)).equals(this.f257a.getText().toString())) {
            this.b.t.b(0, c.a("IDS_SAPPS_POP_INVALID_PASSWORD"));
            return;
        }
        if (this.b.f252a != null) {
            this.b.f252a.dismiss();
            this.b.f252a = null;
        }
        PSMSPaymentMethod.a(this.b, PSMSPaymentMethod$c.SEND_SMS);
        PSMSPaymentMethod.b(this.b);
    }
}
