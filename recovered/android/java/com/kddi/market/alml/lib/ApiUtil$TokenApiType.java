package com.kddi.market.alml.lib;

/* JADX INFO: loaded from: classes.dex */
enum ApiUtil$TokenApiType {
    GET_AUONE_TOKEN,
    GET_AU_TOKEN,
    GET_AUONE_OTHER,
    GET_AU_OTHER,
    GET_OPEN_ID,
    GET_EZNO;

    /* JADX DEBUG: Replace access to removed values field (g) with 'values()' method */
    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static ApiUtil$TokenApiType[] valuesCustom() {
        ApiUtil$TokenApiType[] apiUtil$TokenApiTypeArrValuesCustom = values();
        int length = apiUtil$TokenApiTypeArrValuesCustom.length;
        ApiUtil$TokenApiType[] apiUtil$TokenApiTypeArr = new ApiUtil$TokenApiType[length];
        System.arraycopy(apiUtil$TokenApiTypeArrValuesCustom, 0, apiUtil$TokenApiTypeArr, 0, length);
        return apiUtil$TokenApiTypeArr;
    }
}
