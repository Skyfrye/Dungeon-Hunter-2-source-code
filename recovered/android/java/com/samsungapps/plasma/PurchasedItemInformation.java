package com.samsungapps.plasma;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class PurchasedItemInformation extends ItemInformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f272a = null;
    private Date b = null;

    public String getPaymentId() {
        return this.f272a;
    }

    public Date getPurchaseDate() {
        return this.b;
    }

    public void setPaymentId(String str) {
        this.f272a = str;
    }

    public void setPurchaseDate(Date date) {
        this.b = date;
    }
}
