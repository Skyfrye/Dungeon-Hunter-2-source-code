package com.samsungapps.plasma;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

/* JADX INFO: loaded from: classes.dex */
class MicroPurchasePaymentMethod$4 implements View$OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f249a;
    final /* synthetic */ EditText b;
    final /* synthetic */ String c;
    final /* synthetic */ Spinner d;
    final /* synthetic */ EditText e;
    final /* synthetic */ EditText f;
    final /* synthetic */ EditText g;
    final /* synthetic */ MicroPurchasePaymentMethod h;

    MicroPurchasePaymentMethod$4(MicroPurchasePaymentMethod microPurchasePaymentMethod, String str, EditText editText, String str2, Spinner spinner, EditText editText2, EditText editText3, EditText editText4) {
        this.h = microPurchasePaymentMethod;
        this.f249a = str;
        this.b = editText;
        this.c = str2;
        this.d = spinner;
        this.e = editText2;
        this.f = editText3;
        this.g = editText4;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        boolean z = this.f249a != null && this.f249a.length() > 0 && this.f249a.equals(this.b.getText().toString());
        String str = z ? this.c : (String) this.d.getSelectedItem();
        String string = this.b.getText().toString();
        String string2 = this.e.getText().toString();
        String string3 = this.f.getText().toString();
        String string4 = this.g.getText().toString();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(string2);
        stringBuffer.append(string3);
        MicroPurchasePaymentMethod.a(this.h, str);
        MicroPurchasePaymentMethod.b(this.h, string);
        MicroPurchasePaymentMethod.c(this.h, stringBuffer.toString());
        MicroPurchasePaymentMethod.d(this.h, string4);
        MicroPurchasePaymentMethod.a(this.h, true);
        MicroPurchasePaymentMethod.b(this.h, z);
        this.h.r();
        this.h.f243a = this.d.getSelectedItemPosition();
        this.h.b = string;
        this.h.c = string2;
        this.h.d = string3;
        this.h.e = true;
    }
}
