package com.samsungapps.plasma;

import android.app.AlertDialog$Builder;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class MicroPurchasePaymentMethod$3 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f246a;
    final /* synthetic */ MicroPurchasePaymentMethod b;

    MicroPurchasePaymentMethod$3(MicroPurchasePaymentMethod microPurchasePaymentMethod, EditText editText) {
        this.b = microPurchasePaymentMethod;
        this.f246a = editText;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.b.u);
        alertDialog$Builder.setMessage(c.a("IDS_SAPPS_POP_PURCHASE_WITH_A_DIFFERENT_PHONE_NUMBER_Q"));
        alertDialog$Builder.setCancelable(false);
        alertDialog$Builder.setPositiveButton(c.a("IDS_SAPPS_SK_YES_ABB"), new MicroPurchasePaymentMethod$3$1(this));
        alertDialog$Builder.setNegativeButton(c.a("IDS_SAPPS_SK_NO_ABB"), new MicroPurchasePaymentMethod$3$2(this));
        alertDialog$Builder.show();
    }
}
