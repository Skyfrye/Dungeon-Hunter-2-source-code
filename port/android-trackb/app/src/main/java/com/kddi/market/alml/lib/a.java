package com.kddi.market.alml.lib;

import com.kddi.market.alml.service.IAppAuthorizeServiceCallback;
import java.util.Map;

final class a extends IAppAuthorizeServiceCallback.Stub {

    final /* synthetic */ ALMLClient f189a;

    a(ALMLClient aLMLClient) {
        this.f189a = aLMLClient;
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, String str, String str2, Map map) {
        if (ALMLClient.c != null) {
            aa unused = ALMLClient.c;
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, String str, Map map) {
        if (ALMLClient.f != null) {
            af unused = ALMLClient.f;
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, Map map) {
        if (ALMLClient.d != null) {
            ah unused = ALMLClient.d;
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void b(int i, String str, String str2, Map map) {
        if (ALMLClient.e != null) {
            ag unused = ALMLClient.e;
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void b(int i, Map map) {
        if (ALMLClient.d != null) {
            ah unused = ALMLClient.d;
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void c(int i, String str, String str2, Map map) {
        if (ALMLClient.e != null) {
            ag unused = ALMLClient.e;
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void c(int i, Map map) {
        if (ALMLClient.e != null) {
            ag unused = ALMLClient.e;
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void d(int i, String str, String str2, Map map) {
        if (ALMLClient.e != null) {
            ag unused = ALMLClient.e;
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void e(int i, String str, String str2, Map map) {
        if (ALMLClient.g != null) {
            aj unused = ALMLClient.g;
        }
    }
}
