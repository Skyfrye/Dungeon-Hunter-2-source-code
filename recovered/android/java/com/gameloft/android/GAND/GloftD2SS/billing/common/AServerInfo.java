package com.gameloft.android.GAND.GloftD2SS.billing.common;

import com.gameloft.android.GAND.GloftD2SS.GLUtils.Device;
import com.gameloft.android.GAND.GloftD2SS.GLUtils.XPlayer;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes.dex */
public abstract class AServerInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected SAXParserFactory f73a;
    protected SAXParser b;
    protected XMLReader c;
    protected Device d;
    protected XPlayer e;

    private static String getBillingAttribute$16915f7f() {
        return null;
    }

    private static int getIntegerCurrencyValue() {
        return -1;
    }

    private static int getPromoCode() {
        return -1;
    }

    private static String getPromoCodeURL() {
        return null;
    }

    private static boolean searchForAditionalProfile$552c4dfd() {
        return false;
    }

    public String a(int i) {
        return null;
    }

    public String a(String str, String str2) {
        return null;
    }

    public abstract boolean a();

    public boolean a(String str) {
        return false;
    }

    public String b() {
        return null;
    }

    public String b(String str, String str2) {
        return null;
    }

    public boolean b(String str) {
        return false;
    }

    public abstract String c();

    public String d() {
        return null;
    }

    public String e() {
        return null;
    }

    public String f() {
        return null;
    }

    public String g() {
        return null;
    }

    public String h() {
        return null;
    }

    public String i() {
        return null;
    }

    public String j() {
        return null;
    }

    public abstract String k();

    public abstract String l();

    public String m() {
        return null;
    }

    public abstract String n();

    public String o() {
        return null;
    }

    public String p() {
        return "1";
    }

    public String q() {
        return null;
    }

    public String r() {
        return null;
    }

    public String s() {
        return null;
    }

    public String t() {
        return null;
    }

    public abstract String u();

    public String v() {
        return null;
    }

    public String w() {
        return null;
    }

    public String x() {
        return null;
    }

    public abstract boolean y();

    public abstract String z();
}
