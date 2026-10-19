package com.samsungapps.plasma;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Dialog;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
abstract class SamsungAccountPaymentMethod extends g {
    protected static final int n = 9211;
    protected static final int o = 9212;
    protected Dialog k = null;
    protected String l = null;
    protected String m = null;

    SamsungAccountPaymentMethod() {
    }

    private boolean u() {
        try {
            PackageInfo packageInfo = this.u.getPackageManager().getPackageInfo("com.osp.app.signin", 0);
            return packageInfo != null && packageInfo.versionCode >= 12001;
        } catch (PackageManager$NameNotFoundException e) {
            a.a(e);
            return false;
        }
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected void a(int i, int i2, int i3, String str) {
        switch (i3) {
            case 9211:
            case o /* 9212 */:
                this.t.b(i3, c.a("IDS_SAPPS_HEADER_INVALID_EMAIL_OR_PASSWORD"));
                break;
            default:
                super.a(i, i2, i3, str);
                break;
        }
    }

    protected abstract void a(String str, String str2);

    @Override // com.samsungapps.plasma.g
    boolean a_() {
        return true;
    }

    protected abstract View b();

    @Override // com.samsungapps.plasma.g
    View d() {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        linearLayout$LayoutParams2.setMargins(0, 0, 0, 10);
        TextView textView = new TextView(this.u);
        textView.setText(c.a("IDS_SAPPS_HEADER_SAMSUNG_APPS_SIGN_IN"));
        linearLayout.addView(textView, linearLayout$LayoutParams);
        EditText editText = new EditText(this.u);
        editText.setHint(c.a("IDS_SAPPS_BODY_EMAIL"));
        editText.setInputType(33);
        String strT = t();
        if (!TextUtils.isEmpty(strT)) {
            editText.setText(strT);
            editText.setEnabled(false);
        }
        linearLayout.addView(editText, linearLayout$LayoutParams);
        EditText editText2 = new EditText(this.u);
        editText2.setHint(c.a("IDS_SAPPS_BODY_PASSWORD"));
        editText2.setInputType(129);
        linearLayout.addView(editText2, linearLayout$LayoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout2, linearLayout$LayoutParams);
        Button button = new Button(this.u);
        button.setText(c.a("IDS_SAPPS_SK3_PURCHASE"));
        button.setEnabled(false);
        linearLayout2.addView(button, new LinearLayout$LayoutParams(-1, -2, 1.0f));
        button.setOnClickListener(new SamsungAccountPaymentMethod$1(this, editText, editText2));
        SamsungAccountPaymentMethod$2 samsungAccountPaymentMethod$2 = new SamsungAccountPaymentMethod$2(this, button, editText, editText2);
        editText.addTextChangedListener(samsungAccountPaymentMethod$2);
        editText2.addTextChangedListener(samsungAccountPaymentMethod$2);
        Date dateB = this.t.b();
        Date date = new Date();
        if (dateB != null && date.before(dateB)) {
            if (this.l != null) {
                editText.setText(this.l);
            }
            if (this.m != null) {
                editText2.setText(this.m);
            }
        }
        return linearLayout;
    }

    String t() {
        try {
            if (!u()) {
                return null;
            }
            Account[] accountsByType = AccountManager.get(this.u).getAccountsByType("com.osp.app.signin");
            if (accountsByType.length > 0) {
                return accountsByType[0].name;
            }
            return null;
        } catch (Exception e) {
            a.a(e);
            return null;
        }
    }
}
