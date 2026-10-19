package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class CreditCardPaymentMethod$3 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f235a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ CreditCardPaymentMethod d;

    CreditCardPaymentMethod$3(CreditCardPaymentMethod creditCardPaymentMethod, EditText editText, String str, String str2) {
        this.d = creditCardPaymentMethod;
        this.f235a = editText;
        this.b = str;
        this.c = str2;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (this.d.b != null) {
            this.d.b.dismiss();
            this.d.b = null;
        }
        String string = this.f235a.getText().toString();
        CreditCardPaymentMethod.a(this.d, this.b);
        CreditCardPaymentMethod.b(this.d, this.c);
        CreditCardPaymentMethod.c(this.d, string);
        this.d.r();
    }
}
