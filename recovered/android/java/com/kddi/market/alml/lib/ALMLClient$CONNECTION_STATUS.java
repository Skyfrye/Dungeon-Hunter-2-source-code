package com.kddi.market.alml.lib;

/* JADX INFO: loaded from: classes.dex */
public enum ALMLClient$CONNECTION_STATUS {
    DISCONNECT,
    CONNECTING,
    CONNECTED;

    /* JADX DEBUG: Replace access to removed values field (d) with 'values()' method */
    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static ALMLClient$CONNECTION_STATUS[] valuesCustom() {
        ALMLClient$CONNECTION_STATUS[] aLMLClient$CONNECTION_STATUSArrValuesCustom = values();
        int length = aLMLClient$CONNECTION_STATUSArrValuesCustom.length;
        ALMLClient$CONNECTION_STATUS[] aLMLClient$CONNECTION_STATUSArr = new ALMLClient$CONNECTION_STATUS[length];
        System.arraycopy(aLMLClient$CONNECTION_STATUSArrValuesCustom, 0, aLMLClient$CONNECTION_STATUSArr, 0, length);
        return aLMLClient$CONNECTION_STATUSArr;
    }
}
