package com.samsungapps.plasma;

import android.R$style;
import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.graphics.Typeface;
import android.preference.PreferenceManager;
import android.text.TextUtils$TruncateAt;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.AbsListView$LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
final class d extends h {
    private static final int N = 1;
    private static final int O = 15;
    private static final int P = 30;
    private static final int Q = 320;
    private static final int R = 10;
    private static final int S = 10;
    private static final String T = "http://hub-odc.samsungapps.com/ods.as";
    private static final int U = 100;
    private static final int V = 101;
    private static final int W = 102;
    private static final int X = 103;
    private static final String Y = "LastCountryUrl";
    private static final String Z = "LastCountryCode";
    private static final String aa = "LastMcc";
    private static final String ab = "LastMnc";
    private static final String ac = "LastCsc";
    private static final String ad = "LastQa";
    private static final String ae = "LastCurrencyUnitPrecedes";
    private static final String af = "LastCurrencyUnitHasPenny";
    protected static final int c = 2300;
    protected static final int d = 6003;
    protected static final int e = 6005;
    protected static final int f = 6007;
    protected static final String g = "countrySearchEx";
    protected static final String h = "getItemsInbox";
    protected static final String i = "getItemList";
    protected static final String j = "getPaymentMethodSearch";
    private SharedPreferences G;
    private Context k;
    private b l;
    private e p;
    private String q;
    private HashMap s;
    private HashMap t;
    private HashMap u;
    private HashMap v;
    private HashMap w;
    private HashMap x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f278a = false;
    static boolean b = false;
    private String m = null;
    private Date n = null;
    private l o = null;
    private int r = 0;
    private ListView y = null;
    private LinearLayout z = null;
    private ArrayAdapter A = null;
    private ArrayList B = null;
    private boolean C = true;
    private boolean D = false;
    private Dialog E = null;
    private Dialog F = null;
    private boolean H = true;
    private int I = 0;
    private boolean J = true;
    private boolean K = true;
    private String L = null;
    private g M = null;

    d(e eVar, String str, Context context) throws Throwable {
        this.k = null;
        this.l = null;
        this.p = null;
        this.q = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.G = null;
        a.a("Motor is starting up.");
        this.p = eVar;
        this.q = str;
        this.k = context;
        this.l = new b(this.k);
        this.G = PreferenceManager.getDefaultSharedPreferences(this.k);
        f();
        e();
        this.s = new HashMap();
        this.t = new HashMap();
        this.u = new HashMap();
        this.v = new HashMap();
        this.w = new HashMap();
        this.x = new HashMap();
    }

    private Dialog a(int i2, ArrayList arrayList) {
        if (this.E != null) {
            this.E.dismiss();
            this.E = null;
        }
        if (this.F != null) {
            this.F.dismiss();
            this.F = null;
        }
        this.C = true;
        int iA = ((ItemInformation) arrayList.get(0)).a();
        Dialog dialog = new Dialog(this.k);
        dialog.setCancelable(true);
        dialog.setTitle(c.a("IDS_SAPPS_BUTTON_LIST"));
        LinearLayout linearLayout = new LinearLayout(this.k);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        linearLayout.setMinimumWidth(Q);
        dialog.setContentView(linearLayout, new ViewGroup$LayoutParams(-1, -2));
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        this.y = new ListView(this.k);
        this.y.setChoiceMode(1);
        this.y.setFocusable(false);
        this.y.setCacheColorHint(0);
        this.y.setVerticalFadingEdgeEnabled(true);
        TextView textView = new TextView(this.k);
        textView.setText(c.a("IDS_SAPPS_BODY_NO_DATA"));
        textView.setLayoutParams(new AbsListView$LayoutParams(-1, -2));
        textView.setGravity(19);
        textView.setPadding(10, 10, 10, 10);
        textView.setTextSize(20.0f);
        linearLayout.addView(textView, linearLayout$LayoutParams);
        this.y.setEmptyView(textView);
        this.z = new LinearLayout(this.k);
        this.z.setPadding(10, 10, 10, 10);
        this.z.setGravity(17);
        ProgressBar progressBar = new ProgressBar(this.k);
        TextView textView2 = new TextView(this.k);
        textView2.setText(c.a("IDS_SAPPS_BODY_WAITING_ING"));
        textView2.setTextAppearance(this.k, R$style.TextAppearance.Medium);
        textView2.setGravity(16);
        this.z.addView(progressBar, new ViewGroup$LayoutParams(-2, -2));
        this.z.addView(textView2, new ViewGroup$LayoutParams(-2, -1));
        if (iA > arrayList.size()) {
            this.y.addFooterView(this.z);
        }
        linearLayout.addView(this.y, linearLayout$LayoutParams);
        this.A = new d$4(this, this.k, 0, arrayList);
        this.y.setAdapter((ListAdapter) this.A);
        this.y.setOnItemClickListener(new d$5(this, arrayList, i2));
        this.y.setOnScrollListener(new d$6(this, iA, i2));
        dialog.setOnCancelListener(new d$7(this, i2));
        dialog.setOnDismissListener(new d$8(this));
        dialog.show();
        return dialog;
    }

    static /* synthetic */ Dialog a(d dVar, Dialog dialog) {
        dVar.E = dialog;
        return dialog;
    }

    static /* synthetic */ ArrayAdapter a(d dVar, ArrayAdapter arrayAdapter) {
        dVar.A = arrayAdapter;
        return arrayAdapter;
    }

    static /* synthetic */ LinearLayout a(d dVar, LinearLayout linearLayout) {
        dVar.z = linearLayout;
        return linearLayout;
    }

    static /* synthetic */ ListView a(d dVar, ListView listView) {
        dVar.y = listView;
        return listView;
    }

    static /* synthetic */ g a(d dVar, g gVar) {
        dVar.M = gVar;
        return gVar;
    }

    static /* synthetic */ ArrayList a(d dVar, ArrayList arrayList) {
        dVar.B = arrayList;
        return arrayList;
    }

    static /* synthetic */ void a(d dVar, int i2, int i3) {
        dVar.b(i2, i3);
    }

    private boolean a(int i2, int i3, int i4, boolean z) {
        l lVar = new l();
        lVar.b(e);
        lVar.a(i);
        HashMap map = new HashMap();
        map.put("guid", this.q);
        map.put("imei", this.l.a());
        map.put("startNum", String.valueOf(i3));
        map.put("endNum", String.valueOf(i4));
        map.put("resultCode", String.valueOf(this.I));
        lVar.a(map);
        return a(i2, lVar, this, z);
    }

    static /* synthetic */ boolean a(d dVar) {
        return dVar.K;
    }

    static /* synthetic */ boolean a(d dVar, int i2, int i3, int i4, boolean z) {
        return dVar.a(i2, i3, i4, z);
    }

    static /* synthetic */ boolean a(d dVar, int i2, String str) {
        return dVar.c(i2, str);
    }

    static /* synthetic */ boolean a(d dVar, boolean z) {
        dVar.C = z;
        return z;
    }

    private Dialog b(int i2, ArrayList arrayList) {
        g gVar;
        if (this.F != null) {
            this.F.dismiss();
            this.F = null;
        }
        Dialog dialog = new Dialog(this.k);
        dialog.setCancelable(true);
        dialog.setTitle(c.a("IDS_SAPPS_HEADER_PAYMENT_INFORMATION"));
        LinearLayout linearLayout = new LinearLayout(this.k);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        linearLayout.setMinimumWidth(Q);
        dialog.setContentView(linearLayout, new ViewGroup$LayoutParams(-1, -2));
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2, 1.0f);
        ViewGroup$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2);
        TextView textView = new TextView(this.k);
        if (!arrayList.isEmpty() && (gVar = (g) arrayList.get(0)) != null) {
            LinearLayout linearLayout2 = new LinearLayout(this.k);
            TextView textView2 = new TextView(this.k);
            textView2.setText(gVar.g());
            textView2.setGravity(19);
            textView2.setPadding(10, 10, 10, 10);
            textView2.setTextSize(20.0f);
            textView2.setSingleLine(true);
            textView2.setEllipsize(TextUtils$TruncateAt.END);
            linearLayout2.addView(textView2, linearLayout$LayoutParams);
            textView.setText(i.a(gVar.h(), gVar.i(), this.K, this.J));
            textView.setGravity(21);
            textView.setPadding(10, 10, 10, 10);
            textView.setTextSize(20.0f);
            linearLayout2.addView(textView, linearLayout$LayoutParams);
            linearLayout.addView(linearLayout2, linearLayout$LayoutParams2);
        }
        ExpandableListView expandableListView = new ExpandableListView(this.k);
        expandableListView.setChoiceMode(1);
        expandableListView.setFocusable(false);
        expandableListView.setCacheColorHint(0);
        expandableListView.setVerticalFadingEdgeEnabled(true);
        expandableListView.setGroupIndicator(null);
        expandableListView.setOnGroupExpandListener(new d$9(this, expandableListView, arrayList, textView));
        expandableListView.setOnGroupCollapseListener(new d$10(this, arrayList));
        TextView textView3 = new TextView(this.k);
        textView3.setText(c.a("IDS_SAPPS_BODY_PAYMENT_METHOD"));
        textView3.setGravity(19);
        textView3.setPadding(10, 15, 10, 10);
        textView3.setTypeface(Typeface.DEFAULT_BOLD);
        textView3.setTextAppearance(this.k, R$style.TextAppearance.Large);
        linearLayout.addView(textView3, linearLayout$LayoutParams2);
        TextView textView4 = new TextView(this.k);
        textView4.setText(c.a("IDS_SAPPS_POP_NO_VALID_PAYMENT_METHODS"));
        textView4.setLayoutParams(new AbsListView$LayoutParams(-1, -2));
        textView4.setGravity(19);
        textView4.setPadding(10, 10, 10, 10);
        textView4.setTextSize(20.0f);
        linearLayout.addView(textView4, linearLayout$LayoutParams2);
        expandableListView.setEmptyView(textView4);
        linearLayout.addView(expandableListView, linearLayout$LayoutParams2);
        expandableListView.setAdapter(new d$11(this, arrayList));
        dialog.setOnCancelListener(new d$2(this, i2));
        dialog.setOnDismissListener(new d$3(this));
        dialog.show();
        return dialog;
    }

    static /* synthetic */ Dialog b(d dVar, Dialog dialog) {
        dVar.F = dialog;
        return dialog;
    }

    private void b(int i2, int i3) {
        if (this.F != null) {
            this.F.dismiss();
            this.F = null;
        }
        if (this.E != null) {
            this.E.dismiss();
            this.E = null;
        }
        switch (((Integer) this.v.remove(Integer.valueOf(i2))).intValue()) {
            case 100:
                if (this.p != null) {
                    this.p.a(i2, i3, (ArrayList) null);
                }
                break;
            case V /* 101 */:
                if (this.p != null) {
                    this.p.b(i2, i3, null);
                }
                break;
            case W /* 102 */:
                if (this.v.containsKey(Integer.valueOf(i2))) {
                    this.w.remove(Integer.valueOf(i2));
                }
                if (this.p != null) {
                    this.p.a(i2, i3, (PurchasedItemInformation) null);
                }
                break;
            case X /* 103 */:
                if (this.v.containsKey(Integer.valueOf(i2))) {
                    this.w.remove(Integer.valueOf(i2));
                }
                if (this.p != null) {
                    this.p.a(i2, i3, (PurchasedItemInformation) null);
                }
                break;
        }
    }

    static /* synthetic */ boolean b(d dVar) {
        return dVar.J;
    }

    static /* synthetic */ boolean b(d dVar, boolean z) {
        dVar.D = z;
        return z;
    }

    private void c(int i2, m mVar) {
        if (mVar == null) {
            return;
        }
        ArrayList arrayListD = mVar.d();
        if (arrayListD != null) {
            for (int i3 = 0; i3 < arrayListD.size() && i3 <= 0; i3++) {
                HashMap map = (HashMap) arrayListD.get(0);
                if (map != null) {
                    this.m = (String) map.get("countryURL");
                    this.L = (String) map.get("countryCode");
                    this.J = i.b((String) map.get("currencyUnitPrecedes")) == 1;
                    this.K = i.b((String) map.get("currencyUnitHasPenny")) == 1;
                }
            }
        }
        d();
        if (this.o != null) {
            a(i2, this.o, (h) this, false);
            this.o = null;
        }
    }

    private boolean c(int i2) {
        l lVar = new l();
        lVar.b(c);
        lVar.a(g);
        HashMap map = new HashMap();
        String str = String.format("%d", Integer.valueOf(this.l.b()));
        if (b) {
            str = "000";
        }
        map.put("latestCountryCode", str);
        map.put("whoAmI", "odc");
        lVar.a(map);
        this.m = T;
        return a(i2, lVar, (h) this, false);
    }

    private boolean c(int i2, int i3, int i4) {
        return a(i2, i3, i4, false);
    }

    private boolean c(int i2, String str) {
        l lVar = new l();
        lVar.b(f);
        lVar.a(j);
        HashMap map = new HashMap();
        map.put("itemID", str);
        map.put("itemGroupID", this.q);
        map.put("mode", String.valueOf(this.I));
        lVar.a(map);
        return a(i2, lVar, (h) this, false);
    }

    static /* synthetic */ boolean c(d dVar) {
        return dVar.D;
    }

    static /* synthetic */ HashMap d(d dVar) {
        return dVar.w;
    }

    private void d() {
        if (this.G == null || this.l == null) {
            return;
        }
        int iB = this.l.b();
        int iC = this.l.c();
        String strD = this.l.d();
        SharedPreferences$Editor sharedPreferences$EditorEdit = this.G.edit();
        sharedPreferences$EditorEdit.putInt(aa, iB);
        sharedPreferences$EditorEdit.putInt(ab, iC);
        sharedPreferences$EditorEdit.putString(ac, strD);
        sharedPreferences$EditorEdit.putString(Y, this.m);
        sharedPreferences$EditorEdit.putString(Z, this.L);
        sharedPreferences$EditorEdit.putBoolean(ad, b);
        sharedPreferences$EditorEdit.putBoolean(ae, this.J);
        sharedPreferences$EditorEdit.putBoolean(af, this.K);
        sharedPreferences$EditorEdit.commit();
    }

    private void d(int i2, m mVar) {
        if (mVar == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayListD = mVar.d();
        if (arrayListD != null) {
            for (int i3 = 0; i3 < arrayListD.size(); i3++) {
                HashMap map = (HashMap) arrayListD.get(i3);
                if (map != null) {
                    ItemInformation itemInformation = new ItemInformation();
                    itemInformation.setCurrencyUnit((String) map.get("currencyUnit"));
                    itemInformation.setCurrencyUnitPrecedes(this.J);
                    itemInformation.setCurrencyUnitHasPenny(this.K);
                    itemInformation.setItemDescription((String) map.get("itemDesc"));
                    itemInformation.setItemId((String) map.get("itemID"));
                    itemInformation.setItemName((String) map.get("itemName"));
                    itemInformation.setItemPrice(i.a((String) map.get("itemPrice")));
                    itemInformation.setItemDownloadUrl(i.c((String) map.get("itemDownloadUrl")));
                    itemInformation.setItemImageUrl(i.c((String) map.get("itemImageUrl")));
                    itemInformation.setReserved1((String) map.get("reserved1"));
                    itemInformation.setReserved2((String) map.get("reserved2"));
                    itemInformation.a(mVar.e());
                    arrayList.add(itemInformation);
                }
            }
        }
        if (((Integer) this.v.get(Integer.valueOf(i2))).intValue() != X) {
            this.v.remove(Integer.valueOf(i2));
            if (this.p != null) {
                this.p.a(i2, 0, arrayList);
                return;
            }
            return;
        }
        if (arrayList.isEmpty()) {
            this.v.remove(Integer.valueOf(i2));
            if (this.p != null) {
                this.p.a(i2, Plasma.STATUS_CODE_SERVICEUNAVAILABLE, (PurchasedItemInformation) null);
                return;
            }
            return;
        }
        if (this.E == null) {
            this.B = arrayList;
            this.E = a(i2, this.B);
        } else {
            this.B.addAll(arrayList);
            this.A.notifyDataSetChanged();
            this.y.removeFooterView(this.z);
            this.D = false;
        }
    }

    private boolean d(int i2, int i3, int i4) {
        l lVar = new l();
        lVar.b(d);
        lVar.a(h);
        HashMap map = new HashMap();
        map.put("guid", this.q);
        map.put("imei", this.l.a());
        map.put("startNum", String.valueOf(i3));
        map.put("endNum", String.valueOf(i4));
        map.put("resultCode", String.valueOf(this.I));
        lVar.a(map);
        return a(i2, lVar, (h) this, false);
    }

    private void e() {
        if (this.G == null || this.l == null) {
            return;
        }
        int i2 = this.G.getInt(aa, 0);
        int i3 = this.G.getInt(ab, 0);
        String string = this.G.getString(ac, "");
        boolean z = this.G.getBoolean(ad, false);
        this.L = this.G.getString(Z, null);
        int iB = this.l.b();
        int iC = this.l.c();
        String strD = this.l.d();
        if (i2 != iB || i3 != iC || !string.equals(strD) || z != b || this.L == null) {
            SharedPreferences$Editor sharedPreferences$EditorEdit = this.G.edit();
            sharedPreferences$EditorEdit.remove(Y);
            sharedPreferences$EditorEdit.commit();
        }
        this.m = this.G.getString(Y, null);
        this.J = this.G.getBoolean(ae, true);
        this.K = this.G.getBoolean(af, true);
    }

    private void e(int i2, m mVar) {
        if (mVar == null) {
            return;
        }
        ArrayList arrayListD = mVar.d();
        ArrayList arrayList = new ArrayList();
        if (arrayListD != null) {
            for (int i3 = 0; i3 < arrayListD.size(); i3++) {
                HashMap map = (HashMap) arrayListD.get(i3);
                if (map != null) {
                    PurchasedItemInformation purchasedItemInformation = new PurchasedItemInformation();
                    purchasedItemInformation.setCurrencyUnit((String) map.get("currencyUnit"));
                    purchasedItemInformation.setCurrencyUnitPrecedes(this.J);
                    purchasedItemInformation.setCurrencyUnitHasPenny(this.K);
                    purchasedItemInformation.setItemDescription((String) map.get("itemDesc"));
                    purchasedItemInformation.setItemId((String) map.get("itemID"));
                    purchasedItemInformation.setItemName((String) map.get("itemName"));
                    purchasedItemInformation.setItemPrice(i.a((String) map.get("itemPrice")));
                    purchasedItemInformation.setItemDownloadUrl(i.c((String) map.get("itemDownloadUrl")));
                    purchasedItemInformation.setItemImageUrl(i.c((String) map.get("itemImageUrl")));
                    purchasedItemInformation.setReserved1((String) map.get("reserved1"));
                    purchasedItemInformation.setReserved2((String) map.get("reserved2"));
                    purchasedItemInformation.setPurchaseDate(i.d((String) map.get("purchaseDate")));
                    purchasedItemInformation.setPaymentId((String) map.get("paymentID"));
                    arrayList.add(purchasedItemInformation);
                }
            }
        }
        this.v.remove(Integer.valueOf(i2));
        if (this.p != null) {
            this.p.b(i2, 0, arrayList);
        }
    }

    static /* synthetic */ boolean e(d dVar) {
        return dVar.C;
    }

    static /* synthetic */ LinearLayout f(d dVar) {
        return dVar.z;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:63:0x00d6 */
    /* JADX WARN: Code duplicated, block: B:74:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.FileInputStream] */
    private void f() throws Throwable {
        FileInputStream fileInputStream;
        if (this.l == null) {
            return;
        }
        if (new File("/sdcard/go_to_andromeda.test").exists()) {
            b = true;
        }
        File file = new File("/sdcard/saconfig.ini");
        ?? Exists = file.exists();
        if (Exists == 0) {
            return;
        }
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    Properties properties = new Properties();
                    properties.load(fileInputStream);
                    if (i.b(properties.getProperty("C32")) > 0) {
                        f278a = true;
                    }
                    String property = properties.getProperty("C9");
                    if (property != null) {
                        String strTrim = property.trim();
                        if (strTrim.length() > 0) {
                            this.l.a(strTrim);
                        }
                    }
                    int iB = i.b(properties.getProperty("C10"));
                    if (iB >= 0) {
                        this.l.a(iB);
                    }
                    int iB2 = i.b(properties.getProperty("C11"));
                    if (iB2 >= 0) {
                        this.l.b(iB2);
                    }
                    String property2 = properties.getProperty("C13");
                    if (property2 != null) {
                        String strTrim2 = property2.trim();
                        if (strTrim2.length() > 0) {
                            this.l.b(strTrim2);
                        }
                    }
                    String property3 = properties.getProperty("C12");
                    if (property3 != null) {
                        String strTrim3 = property3.trim();
                        if (strTrim3.length() > 0) {
                            this.l.c(strTrim3);
                        }
                    }
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                    }
                } catch (FileNotFoundException e3) {
                    e = e3;
                    a.a(e);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                } catch (IOException e5) {
                    e = e5;
                    a.a(e);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (Exists != 0) {
                    try {
                        Exists.close();
                    } catch (IOException e7) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e8) {
            e = e8;
            fileInputStream = null;
        } catch (IOException e9) {
            e = e9;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            Exists = 0;
            if (Exists != 0) {
                Exists.close();
            }
            throw th;
        }
    }

    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:7:0x0010 */
    private void f(int i2, m mVar) {
        if (mVar == null) {
            return;
        }
        ArrayList arrayListD = mVar.d();
        ArrayList arrayList = new ArrayList();
        if (arrayListD != null) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= arrayListD.size()) {
                    break;
                }
                HashMap map = (HashMap) arrayListD.get(i4);
                if (map != null) {
                    String str = (String) map.get("paymentMethod");
                    String name = getClass().getPackage().getName();
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(name);
                    stringBuffer.append(".");
                    stringBuffer.append(str);
                    stringBuffer.append("PaymentMethod");
                    g gVar = null;
                    try {
                        Class<?> cls = Class.forName(stringBuffer.toString());
                        gVar = cls != null ? (g) cls.newInstance() : null;
                    } catch (ClassNotFoundException e2) {
                        a.a(e2);
                    } catch (IllegalAccessException e3) {
                        a.a(e3);
                    } catch (InstantiationException e4) {
                        a.a(e4);
                    }
                    if (gVar != null) {
                        gVar.a(this);
                        gVar.a(this.k);
                        gVar.a(str);
                        gVar.i(this.q);
                        gVar.b(i2);
                        gVar.h((String) this.w.get(Integer.valueOf(i2)));
                        gVar.b((String) map.get("Company"));
                        gVar.f(this.L);
                        gVar.c((String) map.get("itemName"));
                        gVar.a(i.a((String) map.get("itemPrice")));
                        gVar.d((String) map.get("currencyUnit"));
                        gVar.a(this.K);
                        gVar.b(this.J);
                        gVar.e((String) map.get("paymentTypeId"));
                        gVar.g((String) map.get("list"));
                        arrayList.add(gVar);
                    }
                }
                i3 = i4 + 1;
            }
        }
        this.F = b(i2, arrayList);
    }

    static /* synthetic */ ListView g(d dVar) {
        return dVar.y;
    }

    static /* synthetic */ ArrayList h(d dVar) {
        return dVar.B;
    }

    static /* synthetic */ g i(d dVar) {
        return dVar.M;
    }

    static /* synthetic */ HashMap j(d dVar) {
        return dVar.v;
    }

    static /* synthetic */ Dialog k(d dVar) {
        return dVar.F;
    }

    final int a() {
        return this.I;
    }

    final Dialog a(String str, View view) {
        if (view == null) {
            return null;
        }
        Dialog dialog = new Dialog(this.k);
        dialog.setCancelable(true);
        dialog.setTitle(str);
        ScrollView scrollView = new ScrollView(this.k);
        scrollView.setPadding(10, 10, 10, 10);
        scrollView.setMinimumWidth(Q);
        dialog.setContentView(scrollView, new ViewGroup$LayoutParams(-1, -2));
        scrollView.addView(view, new LinearLayout$LayoutParams(-1, -2, 1.0f));
        dialog.show();
        return dialog;
    }

    final Dialog a(String str, View view, boolean z) {
        if (view == null) {
            return null;
        }
        if (!z) {
            return a(str, view);
        }
        Dialog dialog = new Dialog(this.k);
        dialog.setCancelable(true);
        dialog.setTitle(str);
        view.setPadding(10, 10, 10, 10);
        view.setMinimumWidth(Q);
        dialog.setContentView(view, new ViewGroup$LayoutParams(-1, -2));
        dialog.show();
        return dialog;
    }

    @Override // com.samsungapps.plasma.h
    protected final void a(int i2, int i3) {
        b(i2, 200);
    }

    @Override // com.samsungapps.plasma.h
    protected final void a(int i2, int i3, int i4, String str) {
        b(i2, i4);
    }

    final void a(int i2, int i3, PurchaseTicket purchaseTicket) {
        if (this.p != null) {
            this.p.a(i2, i3, purchaseTicket);
        } else {
            a.a("MotorListener is null");
        }
    }

    final void a(int i2, int i3, String str) {
        int iIntValue = ((Integer) this.s.remove(Integer.valueOf(i2))).intValue();
        int iIntValue2 = ((Integer) this.u.remove(Integer.valueOf(i2))).intValue();
        h hVar = (h) this.t.remove(Integer.valueOf(i2));
        ProgressDialog progressDialog = (ProgressDialog) this.x.remove(Integer.valueOf(i2));
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        switch (i3) {
            case 200:
                m mVarA = k.a(str);
                if (mVarA == null) {
                    hVar.a(iIntValue, iIntValue2);
                } else if (mVarA.h() != 0) {
                    hVar.a(iIntValue, iIntValue2, mVarA.i(), mVarA.j());
                } else {
                    hVar.a(iIntValue, mVarA);
                }
                break;
            default:
                hVar.a(iIntValue, iIntValue2);
                break;
        }
    }

    @Override // com.samsungapps.plasma.h
    protected final void a(int i2, m mVar) {
        if (mVar == null) {
        }
        switch (mVar.c()) {
            case c /* 2300 */:
                c(i2, mVar);
                break;
            case d /* 6003 */:
                e(i2, mVar);
                break;
            case e /* 6005 */:
                d(i2, mVar);
                break;
            case f /* 6007 */:
                f(i2, mVar);
                break;
        }
    }

    final void a(boolean z) {
        this.H = z;
    }

    final boolean a(int i2) {
        this.v.put(Integer.valueOf(i2), Integer.valueOf(X));
        return c(i2, 1, 15);
    }

    final boolean a(int i2, int i3, int i4) {
        this.v.put(Integer.valueOf(i2), 100);
        return c(i2, i3, i4);
    }

    final boolean a(int i2, l lVar, h hVar, boolean z) {
        return a(i2, lVar, hVar, z, 0);
    }

    final boolean a(int i2, l lVar, h hVar, boolean z, int i3) {
        if (lVar == null || hVar == null) {
            return false;
        }
        if (this.m == null && lVar.c() != c) {
            this.o = lVar;
            return c(i2);
        }
        int i4 = this.r;
        this.r = i4 + 1;
        lVar.a(i4);
        String strA = k.a(lVar, this.l);
        if (strA.length() <= 0) {
            return false;
        }
        if (this.H && !z) {
            this.x.put(Integer.valueOf(i4), ProgressDialog.show(this.k, "", c.a("IDS_SAPPS_BODY_WAITING_ING"), true));
        }
        String strReplaceFirst = this.m;
        if (lVar.e()) {
            strReplaceFirst = strReplaceFirst.replaceFirst("^http[s]?://", "https://");
        }
        f fVar = new f(new d$1(this));
        fVar.a(i4);
        fVar.a(strReplaceFirst);
        fVar.b(strA);
        fVar.a(lVar.e());
        fVar.b(i3);
        fVar.start();
        this.s.put(Integer.valueOf(i4), Integer.valueOf(i2));
        this.u.put(Integer.valueOf(i4), Integer.valueOf(lVar.c()));
        this.t.put(Integer.valueOf(i4), hVar);
        return true;
    }

    final boolean a(int i2, String str) {
        this.v.put(Integer.valueOf(i2), Integer.valueOf(W));
        this.w.put(Integer.valueOf(i2), str);
        return c(i2, str);
    }

    final Dialog b(int i2, String str) {
        String strA;
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.k);
        switch (i2) {
            case 0:
                strA = c.a("IDS_SAPPS_BODY_INFORMATION");
                break;
            default:
                strA = c.a("IDS_SAPPS_BODY_ERROR");
                break;
        }
        if (str == null || str.length() <= 0) {
            str = c.a("IDS_SAPPS_BODY_OTHER_ERROR");
        }
        alertDialog$Builder.setTitle(strA);
        alertDialog$Builder.setMessage(str);
        return alertDialog$Builder.show();
    }

    final Date b() {
        return this.n;
    }

    final void b(int i2) {
        this.I = i2;
    }

    final void b(int i2, m mVar) {
        PurchasedItemInformation purchasedItemInformation = null;
        if (mVar == null) {
            return;
        }
        if (this.F != null) {
            this.F.dismiss();
            this.F = null;
        }
        if (this.E != null) {
            this.E.dismiss();
            this.E = null;
        }
        ArrayList arrayListD = mVar.d();
        if (arrayListD != null) {
            int i3 = 0;
            while (i3 < arrayListD.size() && i3 <= 0) {
                HashMap map = (HashMap) arrayListD.get(0);
                if (map != null) {
                    purchasedItemInformation = new PurchasedItemInformation();
                    purchasedItemInformation.setCurrencyUnit((String) map.get("currencyUnit"));
                    purchasedItemInformation.setCurrencyUnitPrecedes(this.J);
                    purchasedItemInformation.setCurrencyUnitHasPenny(this.K);
                    purchasedItemInformation.setItemDescription((String) map.get("itemDesc"));
                    purchasedItemInformation.setItemId((String) map.get("itemID"));
                    purchasedItemInformation.setItemName((String) map.get("itemName"));
                    purchasedItemInformation.setItemPrice(i.a((String) map.get("itemPrice")));
                    purchasedItemInformation.setItemDownloadUrl(i.c((String) map.get("itemDownloadUrl")));
                    purchasedItemInformation.setItemImageUrl(i.c((String) map.get("itemImageUrl")));
                    purchasedItemInformation.setReserved1((String) map.get("reserved1"));
                    purchasedItemInformation.setReserved2((String) map.get("reserved2"));
                    purchasedItemInformation.setPurchaseDate(i.d((String) map.get("purchaseDate")));
                    purchasedItemInformation.setPaymentId((String) map.get("paymentID"));
                }
                i3++;
                purchasedItemInformation = purchasedItemInformation;
            }
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(12, P);
        this.n = calendar.getTime();
        this.w.remove(Integer.valueOf(i2));
        this.v.remove(Integer.valueOf(i2));
        if (this.p != null) {
            this.p.a(i2, 0, purchasedItemInformation);
        }
    }

    final boolean b(int i2, int i3, int i4) {
        this.v.put(Integer.valueOf(i2), Integer.valueOf(V));
        return d(i2, i3, i4);
    }

    final b c() {
        return this.l;
    }
}
