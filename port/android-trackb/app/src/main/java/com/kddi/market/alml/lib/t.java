package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

final class t implements z {

    final /* synthetic */ ALMLClient f219a;
    private final /* synthetic */ ah b;
    private final /* synthetic */ String c;

    t(ALMLClient aLMLClient, ah ahVar, String str) {
        this.f219a = aLMLClient;
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
            this.f219a.b.b(this.c, this.f219a.s);
        } catch (DeadObjectException e) {
            ah ahVar = this.b;
            this.f219a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
        } catch (RemoteException e2) {
            ah ahVar2 = this.b;
        }
    }
}
