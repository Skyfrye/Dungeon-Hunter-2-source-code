package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

final class s implements z {

    final /* synthetic */ ALMLClient f218a;
    private final /* synthetic */ ah b;
    private final /* synthetic */ String c;

    s(ALMLClient aLMLClient, ah ahVar, String str) {
        this.f218a = aLMLClient;
        this.b = ahVar;
        this.c = str;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a() {
        ALMLClient.d = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        ah ahVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            this.f218a.b.a(this.c, this.f218a.s);
        } catch (DeadObjectException e) {
            ah ahVar = this.b;
            this.f218a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
        } catch (RemoteException e2) {
            ah ahVar2 = this.b;
        }
    }
}
