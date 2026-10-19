package com.kddi.market.alml.lib;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class b implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ALMLClient f201a;
    private final /* synthetic */ af b;
    private final /* synthetic */ String c;

    b(ALMLClient aLMLClient, af afVar, String str) {
        this.f201a = aLMLClient;
        this.b = afVar;
        this.c = str;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a() {
        ALMLClient.access$13(this.b);
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        af afVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            ALMLClient.access$8(this.f201a).c(this.c, ALMLClient.access$10(this.f201a));
        } catch (RemoteException e) {
            af afVar = this.b;
        }
    }
}
