package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

final class v implements z {

    final /* synthetic */ ALMLClient f221a;
    private final /* synthetic */ ag b;
    private final /* synthetic */ String c;
    private final /* synthetic */ String d;
    private final /* synthetic */ String e;
    private final /* synthetic */ String f;
    private final /* synthetic */ String g;
    private final /* synthetic */ String h;

    v(ALMLClient aLMLClient, ag agVar, String str, String str2, String str3, String str4, String str5, String str6) {
        this.f221a = aLMLClient;
        this.b = agVar;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = str6;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a() {
        ALMLClient.e = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        ag agVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            this.f221a.b.a(this.c, this.f221a.s, this.d, this.e, this.f, this.g, this.h);
        } catch (DeadObjectException e) {
            ag agVar = this.b;
            this.f221a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
        } catch (RemoteException e2) {
            ag agVar2 = this.b;
        }
    }
}
