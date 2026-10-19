package com.samsungapps.plasma;

import android.R;
import android.content.Intent;
import android.net.Uri;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

final class PrepaidCardPaymentMethod extends SamsungAccountPaymentMethod {
    protected static final int b = 6009;
    protected static final int c = 6015;
    protected static final int d = 9210;
    protected static final int e = 9214;
    protected static final int f = 9215;

    protected ArrayAdapter f265a = null;
    private String g = null;
    private String h = null;

    public class PrepaidCardType {

        protected String f270a = null;
        protected String b = null;
        protected String c = null;

        protected PrepaidCardType() {
        }

        public String getProviderName() {
            return this.f270a;
        }

        public String getProviderType() {
            return this.b;
        }

        public String getTermsUrl() {
            return this.c;
        }

        public void setProviderName(String str) {
            this.f270a = str;
        }

        public void setProviderType(String str) {
            this.b = str;
        }

        public void setTermsUrl(String str) {
            this.c = str;
        }

        public String toString() {
            return getProviderName();
        }
    }

    PrepaidCardPaymentMethod() {
        this.M = b;
    }

    @Override // com.samsungapps.plasma.g
    final String a() {
        return com.samsungapps.plasma.c.a("IDS_SAPPS_BUTTON_PREPAID_CARD");
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod, com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, int i2, int i3, String str) {
        switch (i3) {
            case d /* 9210 */:
            case e /* 9214 */:
            case f /* 9215 */:
                this.k = this.t.a(com.samsungapps.plasma.c.a("IDS_SAPPS_HEADER_PREPAID_CARD_REGISTRATION_ABB"), b());
                break;
            case Plasma.STATUS_CODE_INVALIDACCOUNT /* 9211 */:
            case 9212:
            case 9213:
            default:
                if (i3 >= 5000 && i3 < 6000) {
                    this.t.b(i3, com.samsungapps.plasma.c.a("IDS_SAPPS_POP_FAILED_TO_REGISTER_PREPAID_CARD"));
                } else {
                    super.a(i, i2, i3, str);
                }
                break;
        }
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, m mVar) {
        if (mVar == null) {
            return;
        }
        switch (mVar.c()) {
            case b /* 6009 */:
                this.t.b(i, mVar);
                return;
            case c /* 6015 */:
                Toast.makeText(this.u, com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_PREPAID_CARD_REGISTERED_PAYMENTS_WILL_AUTOMATICALLY_BE_DEDUCTED_FROM_REGISTERED_CARD"), 1);
                if (this.k != null) {
                    this.k.dismiss();
                    this.k = null;
                }
                break;
        }
        super.a(i, mVar);
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod
    protected final void a(String str, String str2) {
        this.g = str;
        this.h = str2;
        r();
    }

    protected final boolean a(int i, String str, String str2, String str3, double d2, String str4) {
        b bVarC = this.t.c();
        s();
        l lVar = new l();
        lVar.a(true);
        lVar.b(b);
        lVar.a("appItemPurchasePrepaid");
        HashMap map = new HashMap();
        map.put("itemID", str);
        map.put("itemGroupID", this.I);
        map.put("imei", bVarC.a());
        map.put("itemPrice", String.valueOf(d2));
        map.put("paymentTypeId", str4);
        map.put("loginID", str2);
        map.put("password", str3);
        map.put("transID", this.L);
        map.put("mode", String.valueOf(this.t.a()));
        lVar.a(map);
        return this.t.a(i, lVar, (h) this, false);
    }

    protected final boolean a(int i, String str, String str2, String str3, String str4, String str5, String str6) {
        l lVar = new l();
        lVar.a(true);
        lVar.b(c);
        lVar.a("registerPrepaidCardWithLoginInformation");
        HashMap map = new HashMap();
        map.put("emailID", str);
        map.put("password", str2);
        map.put("cardCorpSEQ", str3);
        map.put("cardValue", str4);
        map.put("cardNumber", str5);
        map.put("cardPassword", str6);
        lVar.a(map);
        return this.t.a(i, lVar, (h) this, false);
    }

    @Override // com.samsungapps.plasma.SamsungAccountPaymentMethod
    protected final View b() {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        layoutParams2.setMargins(0, 0, 0, 10);
        TextView textView = new TextView(this.u);
        textView.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_NOTE_C_YOU_CAN_ONLY_USE_NATIONAL_PREPAID_CARDS"));
        linearLayout.addView(textView, layoutParams2);
        TextView textView2 = new TextView(this.u);
        textView2.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_PREPAID_CARD_TYPE_ABB"));
        linearLayout.addView(textView2, layoutParams);
        ArrayList arrayList = new ArrayList();
        final Spinner spinner = new Spinner(this.u);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.u, android.R.layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        TextView textView3 = new TextView(this.u);
        textView3.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_WAITING_ING"));
        textView3.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        textView3.setGravity(19);
        textView3.setPadding(10, 10, 10, 10);
        textView3.setTextSize(15.0f);
        linearLayout.addView(textView3, layoutParams);
        spinner.setEmptyView(textView3);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        linearLayout.addView(spinner, layoutParams);
        this.f265a = arrayAdapter;
        StringTokenizer stringTokenizer = new StringTokenizer(this.E, ";");
        while (stringTokenizer.hasMoreTokens()) {
            PrepaidCardType prepaidCardType = new PrepaidCardType();
            StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), "@");
            if (stringTokenizer2.hasMoreTokens()) {
                prepaidCardType.setProviderName(stringTokenizer2.nextToken());
            }
            if (stringTokenizer2.hasMoreTokens()) {
                stringTokenizer2.nextToken();
            }
            if (stringTokenizer2.hasMoreTokens()) {
                prepaidCardType.setTermsUrl(stringTokenizer2.nextToken());
            }
            if (stringTokenizer2.hasMoreTokens()) {
                prepaidCardType.setProviderType(stringTokenizer2.nextToken());
            }
            this.f265a.add(prepaidCardType);
        }
        TextView textView4 = new TextView(this.u);
        textView4.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_PREPAID_CARD_INFORMATION_ABB"));
        linearLayout.addView(textView4, layoutParams);
        final EditText editText = new EditText(this.u);
        editText.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_PREPAID_CARD_FACE_VALUE") + " (" + this.z + ")");
        editText.setInputType(2);
        linearLayout.addView(editText, layoutParams);
        final EditText editText2 = new EditText(this.u);
        editText2.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_CARD_NUMBER"));
        editText2.setInputType(2);
        linearLayout.addView(editText2, layoutParams);
        final EditText editText3 = new EditText(this.u);
        editText3.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_SECURITY_CODE"));
        editText3.setInputType(129);
        editText3.setKeyListener(new DigitsKeyListener(true, true));
        linearLayout.addView(editText3, layoutParams2);
        Button button = new Button(this.u);
        button.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_HEADER_TERMS_AND_CONDITIONS"));
        linearLayout.addView(button, layoutParams);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.samsungapps.plasma.PrepaidCardPaymentMethod.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PrepaidCardPaymentMethod.this.u.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((PrepaidCardType) spinner.getSelectedItem()).getTermsUrl())));
            }
        });
        final CheckBox checkBox = new CheckBox(this.u);
        checkBox.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_I_HAVE_READ_AND_ACCEPT_THE_TERMS_AND_CONDITIONS"));
        linearLayout.addView(checkBox, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout2, layoutParams);
        final Button button2 = new Button(this.u);
        button2.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_SK3_REGISTER"));
        button2.setEnabled(false);
        linearLayout2.addView(button2, new LinearLayout.LayoutParams(-1, -2, 1.0f));
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.samsungapps.plasma.PrepaidCardPaymentMethod.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PrepaidCardType prepaidCardType2 = (PrepaidCardType) spinner.getSelectedItem();
                PrepaidCardPaymentMethod.this.a(PrepaidCardPaymentMethod.this.F, PrepaidCardPaymentMethod.this.l, PrepaidCardPaymentMethod.this.m, prepaidCardType2.getProviderType(), editText.getText().toString(), editText2.getText().toString(), editText3.getText().toString());
            }
        });
        TextWatcher textWatcher = new TextWatcher() { // from class: com.samsungapps.plasma.PrepaidCardPaymentMethod.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                button2.setEnabled(editText.length() > 0 && editText2.length() > 0 && editText3.length() > 0 && checkBox.isChecked());
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.samsungapps.plasma.PrepaidCardPaymentMethod.4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                button2.setEnabled(editText.length() > 0 && editText2.length() > 0 && editText3.length() > 0 && checkBox.isChecked());
            }
        });
        editText.addTextChangedListener(textWatcher);
        editText2.addTextChangedListener(textWatcher);
        editText3.addTextChangedListener(textWatcher);
        return linearLayout;
    }

    @Override // com.samsungapps.plasma.g
    final boolean c() {
        return a(this.F, this.G, this.g, this.h, this.y, this.C);
    }
}
