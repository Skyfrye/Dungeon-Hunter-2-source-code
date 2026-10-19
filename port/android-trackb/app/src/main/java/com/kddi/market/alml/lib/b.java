package com.kddi.market.alml.lib;

import android.os.RemoteException;

final class b implements z {

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
        ALMLClient.f = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        af afVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            this.f201a.b.c(this.c, this.f201a.s);
        } catch (RemoteException e) {
            af afVar = this.b;
        }
    }
}
