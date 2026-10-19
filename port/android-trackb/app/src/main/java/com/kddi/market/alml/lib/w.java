package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

final class w implements z {

    final /* synthetic */ ALMLClient f222a;
    private final /* synthetic */ ag b;
    private final /* synthetic */ String c;
    private final /* synthetic */ String d;
    private final /* synthetic */ String e;
    private final /* synthetic */ String f;
    private final /* synthetic */ int g;

    w(ALMLClient aLMLClient, ag agVar, String str, String str2, String str3, String str4, int i) {
        this.f222a = aLMLClient;
        this.b = agVar;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = i;
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
            this.f222a.b.b(this.c, this.f222a.s, this.d, this.e, this.f, this.g);
        } catch (DeadObjectException e) {
            ag agVar = this.b;
            this.f222a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
        } catch (RemoteException e2) {
            ag agVar2 = this.b;
        }
    }
}
