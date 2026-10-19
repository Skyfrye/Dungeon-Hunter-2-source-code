package com.samsungapps.plasma;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class CreditCardPaymentMethod$2 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Button f234a;
    final /* synthetic */ EditText b;
    final /* synthetic */ EditText c;
    final /* synthetic */ EditText d;
    final /* synthetic */ EditText e;
    final /* synthetic */ CreditCardPaymentMethod f;

    CreditCardPaymentMethod$2(CreditCardPaymentMethod creditCardPaymentMethod, Button button, EditText editText, EditText editText2, EditText editText3, EditText editText4) {
        this.f = creditCardPaymentMethod;
        this.f234a = button;
        this.b = editText;
        this.c = editText2;
        this.d = editText3;
        this.e = editText4;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.f234a.setEnabled(this.b.length() > 0 && this.c.length() > 0 && this.d.length() > 0 && this.e.length() > 0);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
