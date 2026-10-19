package com.samsungapps.plasma;

import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class ItemInformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f242a = null;
    private String b = null;
    private String c = null;
    private boolean d = true;
    private boolean e = true;
    private double f = -1.0d;
    private URL g = null;
    private URL h = null;
    private String i = null;
    private String j = null;
    private String k = null;
    private int l = 0;

    int a() {
        return this.l;
    }

    void a(int i) {
        this.l = i;
    }

    public String getCurrencyUnit() {
        return this.c;
    }

    public boolean getCurrencyUnitHasPenny() {
        return this.e;
    }

    public boolean getCurrencyUnitPrecedes() {
        return this.d;
    }

    public String getItemDescription() {
        return this.i;
    }

    public URL getItemDownloadUrl() {
        return this.g;
    }

    public String getItemId() {
        return this.f242a;
    }

    public URL getItemImageUrl() {
        return this.h;
    }

    public String getItemName() {
        return this.b;
    }

    public double getItemPrice() {
        return this.f;
    }

    public String getReserved1() {
        return this.j;
    }

    public String getReserved2() {
        return this.k;
    }

    public void setCurrencyUnit(String str) {
        this.c = str;
    }

    public void setCurrencyUnitHasPenny(boolean z) {
        this.e = z;
    }

    public void setCurrencyUnitPrecedes(boolean z) {
        this.d = z;
    }

    public void setItemDescription(String str) {
        this.i = str;
    }

    public void setItemDownloadUrl(URL url) {
        this.g = url;
    }

    public void setItemId(String str) {
        this.f242a = str;
    }

    public void setItemImageUrl(URL url) {
        this.h = url;
    }

    public void setItemName(String str) {
        this.b = str;
    }

    public void setItemPrice(double d) {
        this.f = d;
    }

    public void setReserved1(String str) {
        this.j = str;
    }

    public void setReserved2(String str) {
        this.k = str;
    }
}
