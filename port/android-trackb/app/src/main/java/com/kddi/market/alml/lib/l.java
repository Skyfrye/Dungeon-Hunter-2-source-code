package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

final class l implements z {

    final /* synthetic */ ALMLClient f211a;
    private final /* synthetic */ aa b;
    private final /* synthetic */ String c;
    private final /* synthetic */ long d;
    private final /* synthetic */ String e;

    l(ALMLClient aLMLClient, aa aaVar, String str, long j, String str2) {
        this.f211a = aLMLClient;
        this.b = aaVar;
        this.c = str;
        this.d = j;
        this.e = str2;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a() {
        ALMLClient.c = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        aa aaVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            this.f211a.b.a(this.c, this.f211a.s, this.d, this.e);
        } catch (DeadObjectException e) {
            aa aaVar = this.b;
            this.f211a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
        } catch (RemoteException e2) {
            aa aaVar2 = this.b;
        }
    }
}
