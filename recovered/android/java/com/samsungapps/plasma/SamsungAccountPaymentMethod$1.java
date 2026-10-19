package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class SamsungAccountPaymentMethod$1 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ EditText f273a;
    final /* synthetic */ EditText b;
    final /* synthetic */ SamsungAccountPaymentMethod c;

    SamsungAccountPaymentMethod$1(SamsungAccountPaymentMethod samsungAccountPaymentMethod, EditText editText, EditText editText2) {
        this.c = samsungAccountPaymentMethod;
        this.f273a = editText;
        this.b = editText2;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.c.l = this.f273a.getText().toString();
        this.c.m = this.b.getText().toString();
        this.c.a(this.c.l, this.c.m);
    }
}
