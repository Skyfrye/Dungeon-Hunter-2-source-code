package com.kddi.market.alml.service;

import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public interface IAppAuthorizeService extends IInterface {
    void a(String str);

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback);

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, long j, String str2);

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2);

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i);

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, String str5);

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, String str5, String str6);

    void a(String str, String str2, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, boolean z);

    void b(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback);

    void b(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i);

    void c(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback);

    void c(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i);
}
