package com.samsungapps.plasma;

import android.R$attr;
import android.R$layout;
import android.text.InputFilter;
import android.text.InputFilter$LengthFilter;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.Tracker;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
final class MicroPurchasePaymentMethod extends g {
    protected static final String f = "+82";
    protected static final String g = "SKT";
    protected static final String h = "LGT";
    protected static final String i = "KT";
    protected static final int j = 26209;
    protected static final int k = 26210;
    protected static final int l = 6012;
    protected static final int m = 6013;
    protected static final int n = 5800;
    protected static final int o = 5801;
    protected static final int p = 5802;
    protected static final int q = 5803;
    protected static final int r = 5804;
    protected static final int s = 5805;
    private String U = null;
    private String V = null;
    private String W = null;
    private String X = null;
    private boolean Y = false;
    private boolean Z = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f243a = -1;
    protected String b = null;
    protected String c = null;
    protected String d = null;
    protected boolean e = false;

    MicroPurchasePaymentMethod() {
        this.M = l;
    }

    static /* synthetic */ String a(MicroPurchasePaymentMethod microPurchasePaymentMethod, String str) {
        microPurchasePaymentMethod.U = str;
        return str;
    }

    static /* synthetic */ boolean a(MicroPurchasePaymentMethod microPurchasePaymentMethod, boolean z) {
        microPurchasePaymentMethod.Y = z;
        return z;
    }

    static /* synthetic */ String b(MicroPurchasePaymentMethod microPurchasePaymentMethod, String str) {
        microPurchasePaymentMethod.V = str;
        return str;
    }

    static /* synthetic */ boolean b(MicroPurchasePaymentMethod microPurchasePaymentMethod, boolean z) {
        microPurchasePaymentMethod.Z = z;
        return z;
    }

    static /* synthetic */ String c(MicroPurchasePaymentMethod microPurchasePaymentMethod, String str) {
        microPurchasePaymentMethod.W = str;
        return str;
    }

    static /* synthetic */ String d(MicroPurchasePaymentMethod microPurchasePaymentMethod, String str) {
        microPurchasePaymentMethod.X = str;
        return str;
    }

    @Override // com.samsungapps.plasma.g
    final String a() {
        return c.a("IDS_SAPPS_HEADER_PHONE_BILL");
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i2, int i3, int i4, String str) {
        switch (i4) {
            case n /* 5800 */:
                this.t.b(i4, str);
                break;
            case o /* 5801 */:
                this.t.b(i4, c.a("IDS_SAPPS_POP_SERVICE_PROVIDER_SELECTION_ERROR_OCCURRED"));
                break;
            case p /* 5802 */:
                this.t.b(i4, c.a("IDS_SAPPS_POP_INVALID_RESIDENT_REGISTRATION_NUMBER"));
                break;
            case q /* 5803 */:
                this.t.b(i4, c.a("IDS_SAPPS_POP_INCORRECT_VERIFICATION_CODE"));
                break;
            case r /* 5804 */:
                this.t.b(i4, c.a("IDS_SAPPS_POP_TRANSACTION_CANCELLED_TIMED_OUT"));
                break;
            case s /* 5805 */:
                this.t.b(i4, String.format(c.a("IDS_SAPPS_BODY_PROHIBITED_FOR_AGES_UNDER_PD"), 19));
                break;
            default:
                super.a(i2, i3, i4, str);
                break;
        }
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i2, m mVar) {
        if (mVar == null) {
        }
        switch (mVar.c()) {
            case l /* 6012 */:
                this.t.b(i2, mVar);
                break;
            case m /* 6013 */:
                this.t.b(0, c.a("IDS_SAPPS_POP_VERIFICATION_CODE_HAS_BEEN_SENT_CHECK_SMS_AND_ENTER_VERIFICATION_CODE"));
                break;
            default:
                super.a(i2, mVar);
                break;
        }
    }

    protected final boolean a(int i2, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        String str6;
        int i3;
        String str7;
        String str8 = z2 ? "U" : "K";
        if (z) {
            i3 = l;
            str7 = "microPurchase";
            str6 = str8;
        } else {
            str6 = Tracker.f;
            i3 = m;
            str7 = "microPurchaseAuthCode";
        }
        b bVarC = this.t.c();
        s();
        l lVar = new l();
        lVar.a(true);
        lVar.b(i3);
        lVar.a(str7);
        HashMap map = new HashMap();
        map.put("itemID", str);
        map.put("itemGroupID", this.I);
        map.put("imei", bVarC.a());
        map.put("mcc", String.valueOf(bVarC.b()));
        map.put("mnc", String.valueOf(bVarC.c()));
        map.put("authNID", str4);
        map.put("authPNum", str3);
        map.put("usimCD", str8);
        map.put("agreeCD", "01");
        map.put("carrier", str2);
        map.put("typeCD", str6);
        map.put("otp", str5);
        map.put("udid", bVarC.a());
        map.put("transID", this.L);
        map.put("mode", String.valueOf(this.t.a()));
        lVar.a(map);
        return this.t.a(i2, lVar, (h) this, false);
    }

    @Override // com.samsungapps.plasma.g
    protected final boolean a_() {
        return true;
    }

    @Override // com.samsungapps.plasma.g
    final boolean c() {
        return a(this.F, this.G, this.U, this.V, this.W, this.X, this.Y, this.Z);
    }

    @Override // com.samsungapps.plasma.g
    final View d() {
        String str;
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        linearLayout$LayoutParams2.setMargins(0, 0, 0, 10);
        TextView textView = new TextView(this.u);
        textView.setText(c.a("IDS_SAPPS_BODY_ENTER_PHONE_NUMBER_CHARGES_WILL_BE_ADDED_TO_YOUR_PHONE_BILL_NEXT_MONTH"));
        textView.setTextAppearance(this.u, R$attr.textAppearanceLarge);
        linearLayout.addView(textView, linearLayout$LayoutParams2);
        TextView textView2 = new TextView(this.u);
        textView2.setText(c.a("IDS_SAPPS_BODY_MOBILE_PHONE"));
        linearLayout.addView(textView2, linearLayout$LayoutParams);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, linearLayout$LayoutParams2);
        Spinner spinner = new Spinner(this.u);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.u, R$layout.simple_spinner_item, new String[]{g, i, h});
        arrayAdapter.setDropDownViewResource(R$layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        linearLayout2.addView(spinner, new LinearLayout$LayoutParams(-1, -2));
        EditText editText = new EditText(this.u);
        editText.setHint(c.a("IDS_SAPPS_BODY_PHONE_NUMBER"));
        editText.setInputType(3);
        linearLayout2.addView(editText, new LinearLayout$LayoutParams(-1, -2));
        editText.setNextFocusDownId(j);
        Button button = new Button(this.u);
        linearLayout.addView(button, new LinearLayout$LayoutParams(-1, -2));
        TextView textView3 = new TextView(this.u);
        textView3.setText(c.a("IDS_SAPPS_BODY_RESIDENT_REGISTRATION_NUMBER"));
        linearLayout.addView(textView3, linearLayout$LayoutParams);
        LinearLayout linearLayout3 = new LinearLayout(this.u);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3, linearLayout$LayoutParams2);
        EditText editText2 = new EditText(this.u);
        editText2.setInputType(2);
        editText2.setFilters(new InputFilter[]{new InputFilter$LengthFilter(6)});
        linearLayout3.addView(editText2, new LinearLayout$LayoutParams(-1, -2, 1.0f));
        editText2.setId(j);
        editText2.setNextFocusDownId(k);
        TextView textView4 = new TextView(this.u);
        textView4.setText("-");
        linearLayout3.addView(textView4, new LinearLayout$LayoutParams(-2, -2));
        EditText editText3 = new EditText(this.u);
        editText3.setInputType(129);
        editText3.setFilters(new InputFilter[]{new InputFilter$LengthFilter(7)});
        editText3.setKeyListener(new DigitsKeyListener(true, true));
        linearLayout3.addView(editText3, new LinearLayout$LayoutParams(-1, -2, 1.0f));
        editText3.setId(k);
        TextView textView5 = new TextView(this.u);
        textView5.setText(c.a("IDS_SAPPS_MBODY_VERIFICATION_CODE"));
        linearLayout.addView(textView5, linearLayout$LayoutParams);
        LinearLayout linearLayout4 = new LinearLayout(this.u);
        linearLayout4.setOrientation(0);
        linearLayout.addView(linearLayout4, linearLayout$LayoutParams2);
        Button button2 = new Button(this.u);
        button2.setText(c.a("IDS_SAPPS_BODY_REQUEST"));
        button2.setEnabled(false);
        linearLayout4.addView(button2, new LinearLayout$LayoutParams(-2, -2));
        button2.setOnClickListener(new MicroPurchasePaymentMethod$1(this, spinner, editText2, editText3, editText));
        EditText editText4 = new EditText(this.u);
        editText4.setInputType(2);
        linearLayout4.addView(editText4, new LinearLayout$LayoutParams(-1, -2));
        Button button3 = new Button(this.u);
        button3.setText(c.a("IDS_SAPPS_HEADER_TERMS_AND_CONDITIONS"));
        linearLayout.addView(button3, linearLayout$LayoutParams);
        button3.setOnClickListener(new MicroPurchasePaymentMethod$2(this));
        CheckBox checkBox = new CheckBox(this.u);
        checkBox.setText(c.a("IDS_SAPPS_BODY_I_HAVE_READ_AND_ACCEPT_THE_TERMS_AND_CONDITIONS"));
        linearLayout.addView(checkBox, linearLayout$LayoutParams2);
        String str2 = null;
        b bVarC = this.t.c();
        if (bVarC != null) {
            String strF = bVarC.f();
            if (strF.startsWith(f)) {
                strF = strF.replace(f, "0");
            }
            switch (bVarC.c()) {
                case 5:
                    str2 = g;
                    str = strF;
                    break;
                case 6:
                    str2 = h;
                    str = strF;
                    break;
                case 7:
                default:
                    str2 = "";
                    str = "";
                    break;
                case 8:
                    str2 = i;
                    str = strF;
                    break;
            }
        } else {
            str = null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(" (");
        stringBuffer.append(str2);
        stringBuffer.append(")");
        button.setText(stringBuffer.toString());
        button.setOnClickListener(new MicroPurchasePaymentMethod$3(this, editText));
        LinearLayout linearLayout5 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout5, linearLayout$LayoutParams);
        Button button4 = new Button(this.u);
        button4.setText(c.a("IDS_SAPPS_SK3_PURCHASE"));
        button4.setEnabled(false);
        linearLayout5.addView(button4, linearLayout$LayoutParams);
        button4.setOnClickListener(new MicroPurchasePaymentMethod$4(this, str, editText, str2, spinner, editText2, editText3, editText4));
        MicroPurchasePaymentMethod$5 microPurchasePaymentMethod$5 = new MicroPurchasePaymentMethod$5(this, str, editText, button4, editText2, editText3, editText4, checkBox, button2, button, linearLayout2, spinner, textView5, linearLayout4);
        checkBox.setOnCheckedChangeListener(new MicroPurchasePaymentMethod$6(this, str, editText, button4, editText2, editText3, editText4, checkBox));
        editText.addTextChangedListener(microPurchasePaymentMethod$5);
        editText2.addTextChangedListener(microPurchasePaymentMethod$5);
        editText3.addTextChangedListener(microPurchasePaymentMethod$5);
        editText4.addTextChangedListener(microPurchasePaymentMethod$5);
        editText.setText(str);
        Date dateB = this.t.b();
        Date date = new Date();
        if (dateB != null && date.before(dateB)) {
            if (this.f243a >= 0) {
                spinner.setSelection(this.f243a);
            }
            if (this.b != null) {
                editText.setText(this.b);
            }
            if (this.c != null) {
                editText2.setText(this.c);
            }
            if (this.d != null) {
                editText3.setText(this.d);
            }
            if (this.e) {
                checkBox.setChecked(this.e);
            }
        }
        return linearLayout;
    }
}
