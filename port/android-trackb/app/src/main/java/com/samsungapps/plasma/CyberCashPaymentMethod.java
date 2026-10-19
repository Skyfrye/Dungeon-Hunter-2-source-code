package com.samsungapps.plasma;

import android.R;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.StringTokenizer;

final class CyberCashPaymentMethod extends g {
    protected static final String e = ";";
    protected static final int f = 6006;
    protected static final int g = 9216;

    protected ArrayAdapter f238a = null;
    private CyberCashType h = null;
    private String i = null;
    private String j = null;
    protected int b = -1;
    protected String c = null;
    protected String d = null;

    public class CyberCashType {

        protected String f241a = null;
        protected String b = null;
        protected String c = null;

        protected CyberCashType() {
        }

        public String getProviderName() {
            return this.f241a;
        }

        public String getProviderType() {
            return this.b;
        }

        public String getTermsUrl() {
            return this.c;
        }

        public void setProviderName(String str) {
            this.f241a = str;
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

    CyberCashPaymentMethod() {
        this.M = f;
    }

    @Override // com.samsungapps.plasma.g
    final String a() {
        return com.samsungapps.plasma.c.a("IDS_SAPPS_BUTTON_CYBERCASH");
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, int i2, int i3, String str) {
        switch (i3) {
            case g /* 9216 */:
                this.t.b(i3, com.samsungapps.plasma.c.a("IDS_SAPPS_HEADER_INVALID_EMAIL_OR_PASSWORD"));
                break;
            default:
                super.a(i, i2, i3, str);
                break;
        }
    }

    @Override // com.samsungapps.plasma.g, com.samsungapps.plasma.h
    protected final void a(int i, m mVar) {
        if (mVar == null) {
        }
        switch (mVar.c()) {
            case f /* 6006 */:
                this.t.b(i, mVar);
                break;
            default:
                super.a(i, mVar);
                break;
        }
    }

    protected final boolean a(int i, String str, String str2, String str3, double d, String str4, String str5) {
        b bVarC = this.t.c();
        s();
        l lVar = new l();
        lVar.a(true);
        lVar.b(f);
        lVar.a("appItemPurchaseCyberCash");
        HashMap map = new HashMap();
        map.put("itemID", str);
        map.put("itemGroupID", this.I);
        map.put("imei", bVarC.a());
        map.put("itemPrice", String.valueOf(d));
        map.put("paymentTypeId", str4);
        map.put("Company", str5);
        map.put("loginID", str2);
        map.put("password", str3);
        map.put("transID", this.L);
        map.put("resultCode", String.valueOf(this.t.a()));
        lVar.a(map);
        return this.t.a(i, lVar, (h) this, false);
    }

    @Override // com.samsungapps.plasma.g
    protected final boolean a_() {
        return true;
    }

    @Override // com.samsungapps.plasma.g
    final boolean c() {
        return a(this.F, this.G, this.i, this.j, this.y, this.h.getProviderType(), this.h.getProviderName());
    }

    @Override // com.samsungapps.plasma.g
    final View d() {
        LinearLayout linearLayout = new LinearLayout(this.u);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        layoutParams2.setMargins(0, 0, 0, 10);
        TextView textView = new TextView(this.u);
        textView.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_PAYMENT_METHOD"));
        linearLayout.addView(textView, layoutParams);
        ArrayList arrayList = new ArrayList();
        final Spinner spinner = new Spinner(this.u);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.u, android.R.layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        linearLayout.addView(spinner, layoutParams);
        this.f238a = arrayAdapter;
        StringTokenizer stringTokenizer = new StringTokenizer(this.E, e);
        while (stringTokenizer.hasMoreTokens()) {
            CyberCashType cyberCashType = new CyberCashType();
            StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), "@");
            if (stringTokenizer2.hasMoreTokens()) {
                cyberCashType.setProviderName(stringTokenizer2.nextToken());
            }
            if (stringTokenizer2.hasMoreTokens()) {
                cyberCashType.setProviderType(stringTokenizer2.nextToken());
            }
            if (stringTokenizer2.hasMoreTokens()) {
                cyberCashType.setTermsUrl(stringTokenizer2.nextToken());
            }
            this.f238a.add(cyberCashType);
        }
        final EditText editText = new EditText(this.u);
        editText.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_ID"));
        editText.setInputType(33);
        linearLayout.addView(editText, layoutParams);
        final EditText editText2 = new EditText(this.u);
        editText2.setHint(com.samsungapps.plasma.c.a("IDS_SAPPS_BODY_PASSWORD"));
        editText2.setInputType(129);
        linearLayout.addView(editText2, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this.u);
        linearLayout.addView(linearLayout2, layoutParams);
        final Button button = new Button(this.u);
        button.setText(com.samsungapps.plasma.c.a("IDS_SAPPS_SK3_PURCHASE"));
        button.setEnabled(false);
        linearLayout2.addView(button, new LinearLayout.LayoutParams(-1, -2, 1.0f));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.samsungapps.plasma.CyberCashPaymentMethod.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CyberCashType cyberCashType2 = (CyberCashType) spinner.getSelectedItem();
                String string = editText.getText().toString();
                String string2 = editText2.getText().toString();
                int selectedItemPosition = spinner.getSelectedItemPosition();
                CyberCashPaymentMethod.this.i = string;
                CyberCashPaymentMethod.this.j = string2;
                CyberCashPaymentMethod.this.h = cyberCashType2;
                CyberCashPaymentMethod.this.r();
                CyberCashPaymentMethod.this.c = string;
                CyberCashPaymentMethod.this.d = string2;
                CyberCashPaymentMethod.this.b = selectedItemPosition;
            }
        });
        TextWatcher textWatcher = new TextWatcher() { // from class: com.samsungapps.plasma.CyberCashPaymentMethod.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                button.setEnabled(editText.length() > 0 && editText2.length() > 0);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        editText.addTextChangedListener(textWatcher);
        editText2.addTextChangedListener(textWatcher);
        Date dateB = this.t.b();
        Date date = new Date();
        if (dateB != null && date.before(dateB)) {
            if (this.b >= 0) {
                spinner.setSelection(this.b);
            }
            if (this.c != null) {
                editText.setText(this.c);
            }
            if (this.d != null) {
                editText2.setText(this.d);
            }
        }
        return linearLayout;
    }
}
