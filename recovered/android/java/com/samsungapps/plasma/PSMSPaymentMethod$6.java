package com.samsungapps.plasma;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class PSMSPaymentMethod$6 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Button f258a;
    final /* synthetic */ EditText b;
    final /* synthetic */ PSMSPaymentMethod c;

    PSMSPaymentMethod$6(PSMSPaymentMethod pSMSPaymentMethod, Button button, EditText editText) {
        this.c = pSMSPaymentMethod;
        this.f258a = button;
        this.b = editText;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.f258a.setEnabled(this.b.length() > 0);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
