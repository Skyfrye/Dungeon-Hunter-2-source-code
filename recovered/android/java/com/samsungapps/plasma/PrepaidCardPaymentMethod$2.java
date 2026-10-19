package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

/* JADX INFO: loaded from: classes.dex */
class PrepaidCardPaymentMethod$2 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Spinner f267a;
    final /* synthetic */ EditText b;
    final /* synthetic */ EditText c;
    final /* synthetic */ EditText d;
    final /* synthetic */ PrepaidCardPaymentMethod e;

    PrepaidCardPaymentMethod$2(PrepaidCardPaymentMethod prepaidCardPaymentMethod, Spinner spinner, EditText editText, EditText editText2, EditText editText3) {
        this.e = prepaidCardPaymentMethod;
        this.f267a = spinner;
        this.b = editText;
        this.c = editText2;
        this.d = editText3;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        PrepaidCardPaymentMethod$PrepaidCardType prepaidCardPaymentMethod$PrepaidCardType = (PrepaidCardPaymentMethod$PrepaidCardType) this.f267a.getSelectedItem();
        this.e.a(this.e.F, this.e.l, this.e.m, prepaidCardPaymentMethod$PrepaidCardType.getProviderType(), this.b.getText().toString(), this.c.getText().toString(), this.d.getText().toString());
    }
}
