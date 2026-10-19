package com.samsungapps.plasma;

/* JADX INFO: loaded from: classes.dex */
abstract class j {
    static final String A = "cardNum";
    static final String B = "expirationYear";
    static final String C = "expirationMonth";
    static final String D = "countryURL";
    static final String E = "countryCode";
    static final String F = "currencyUnitPrecedes";
    static final String G = "currencyUnitHasPenny";
    static final String H = "paymentMethod";
    static final String I = "Company";
    static final String J = "itemPrice";
    static final String K = "currencyUnit";
    static final String L = "paymentTypeId";
    static final String M = "paymentID";
    static final String N = "orderID";
    static final String O = "lastReqYn";
    static final String P = "result";
    static final String d = "itemID";
    static final String e = "itemGroupID";
    static final String f = "guid";
    static final String g = "imei";
    static final String h = "mcc";
    static final String i = "mnc";
    static final String j = "cvs";
    static final String k = "latestCountryCode";
    static final String l = "whoAmI";
    static final String m = "startNum";
    static final String n = "endNum";
    static final String o = "mode";
    static final String p = "resultCode";
    static final String q = "transID";
    static final String r = "reserved01";
    static final String s = "reserved02";
    static final String t = "reserved03";
    static final String u = "reserved04";
    static final String v = "reserved05";
    static final String w = "loginID";
    static final String x = "emailID";
    static final String y = "password";
    static final String z = "cardType";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f293a = -1;
    protected String b = "";
    protected int c = -1;

    j() {
    }

    int a() {
        return this.f293a;
    }

    void a(int i2) {
        this.f293a = i2;
    }

    void a(String str) {
        this.b = str;
    }

    String b() {
        return this.b;
    }

    void b(int i2) {
        this.c = i2;
    }

    int c() {
        return this.c;
    }
}
