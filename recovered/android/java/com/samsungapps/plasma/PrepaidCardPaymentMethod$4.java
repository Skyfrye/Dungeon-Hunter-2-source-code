package com.samsungapps.plasma;

import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class PrepaidCardPaymentMethod$4 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Button f269a;
    final /* synthetic */ EditText b;
    final /* synthetic */ EditText c;
    final /* synthetic */ EditText d;
    final /* synthetic */ CheckBox e;
    final /* synthetic */ PrepaidCardPaymentMethod f;

    PrepaidCardPaymentMethod$4(PrepaidCardPaymentMethod prepaidCardPaymentMethod, Button button, EditText editText, EditText editText2, EditText editText3, CheckBox checkBox) {
        this.f = prepaidCardPaymentMethod;
        this.f269a = button;
        this.b = editText;
        this.c = editText2;
        this.d = editText3;
        this.e = checkBox;
    }

    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f269a.setEnabled(this.b.length() > 0 && this.c.length() > 0 && this.d.length() > 0 && this.e.isChecked());
    }
}
