package com.kddi.market.alml.lib;

import android.os.RemoteException;
import java.util.Map;

final class c implements z {

    final /* synthetic */ ALMLClient f202a;
    private final /* synthetic */ aj b;
    private final /* synthetic */ String c;
    private final /* synthetic */ String d;
    private final /* synthetic */ boolean e;

    c(ALMLClient aLMLClient, aj ajVar, String str, String str2, boolean z) {
        this.f202a = aLMLClient;
        this.b = ajVar;
        this.c = str;
        this.d = str2;
        this.e = z;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a() {
        ALMLClient.g = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        this.f202a.a(i, (String) null, (String) null, (Map) null);
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            this.f202a.b.a(this.c, this.d, this.f202a.s, this.e);
        } catch (RemoteException e) {
            a(-99);
        }
    }
}
