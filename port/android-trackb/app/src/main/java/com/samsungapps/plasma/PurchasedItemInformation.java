package com.samsungapps.plasma;

import java.util.Date;

public class PurchasedItemInformation extends ItemInformation {

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
