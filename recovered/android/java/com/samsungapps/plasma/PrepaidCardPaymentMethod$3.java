package com.samsungapps.plasma;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class PrepaidCardPaymentMethod$3 implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Button f268a;
    final /* synthetic */ EditText b;
    final /* synthetic */ EditText c;
    final /* synthetic */ EditText d;
    final /* synthetic */ CheckBox e;
    final /* synthetic */ PrepaidCardPaymentMethod f;

    PrepaidCardPaymentMethod$3(PrepaidCardPaymentMethod prepaidCardPaymentMethod, Button button, EditText editText, EditText editText2, EditText editText3, CheckBox checkBox) {
        this.f = prepaidCardPaymentMethod;
        this.f268a = button;
        this.b = editText;
        this.c = editText2;
        this.d = editText3;
        this.e = checkBox;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.f268a.setEnabled(this.b.length() > 0 && this.c.length() > 0 && this.d.length() > 0 && this.e.isChecked());
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
