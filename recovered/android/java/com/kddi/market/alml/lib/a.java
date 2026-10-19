package com.kddi.market.alml.lib;

import com.kddi.market.alml.service.IAppAuthorizeServiceCallback$Stub;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class a extends IAppAuthorizeServiceCallback$Stub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ALMLClient f189a;

    a(ALMLClient aLMLClient) {
        this.f189a = aLMLClient;
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, String str, String str2, Map map) {
        if (ALMLClient.access$0() != null) {
            ALMLClient.access$0();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, String str, Map map) {
        if (ALMLClient.access$3() != null) {
            ALMLClient.access$3();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, Map map) {
        if (ALMLClient.access$1() != null) {
            ALMLClient.access$1();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void b(int i, String str, String str2, Map map) {
        if (ALMLClient.access$2() != null) {
            ALMLClient.access$2();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void b(int i, Map map) {
        if (ALMLClient.access$1() != null) {
            ALMLClient.access$1();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void c(int i, String str, String str2, Map map) {
        if (ALMLClient.access$2() != null) {
            ALMLClient.access$2();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void c(int i, Map map) {
        if (ALMLClient.access$2() != null) {
            ALMLClient.access$2();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void d(int i, String str, String str2, Map map) {
        if (ALMLClient.access$2() != null) {
            ALMLClient.access$2();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void e(int i, String str, String str2, Map map) {
        if (ALMLClient.access$4() != null) {
            ALMLClient.access$4();
        }
    }
}
