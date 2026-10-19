package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

/* JADX INFO: loaded from: classes.dex */
class CreditCardPaymentMethod$1 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Spinner f233a;
    final /* synthetic */ EditText b;
    final /* synthetic */ EditText c;
    final /* synthetic */ EditText d;
    final /* synthetic */ EditText e;
    final /* synthetic */ CreditCardPaymentMethod f;

    CreditCardPaymentMethod$1(CreditCardPaymentMethod creditCardPaymentMethod, Spinner spinner, EditText editText, EditText editText2, EditText editText3, EditText editText4) {
        this.f = creditCardPaymentMethod;
        this.f233a = spinner;
        this.b = editText;
        this.c = editText2;
        this.d = editText3;
        this.e = editText4;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        CreditCardPaymentMethod$CreditCardType creditCardPaymentMethod$CreditCardType = (CreditCardPaymentMethod$CreditCardType) this.f233a.getSelectedItem();
        this.f.a(this.f.F, this.f.l, this.f.m, creditCardPaymentMethod$CreditCardType.getCardType(), this.b.getText().toString(), this.c.getText().toString(), this.d.getText().toString(), this.e.getText().toString());
    }
}
