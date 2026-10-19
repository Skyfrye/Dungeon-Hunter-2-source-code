package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

final class r implements z {

    final /* synthetic */ ALMLClient f217a;
    private final /* synthetic */ aa b;
    private final /* synthetic */ String c;
    private final /* synthetic */ String d;

    r(ALMLClient aLMLClient, aa aaVar, String str, String str2) {
        this.f217a = aLMLClient;
        this.b = aaVar;
        this.c = str;
        this.d = str2;
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
            this.f217a.b.a(this.c, this.f217a.s, this.d);
        } catch (DeadObjectException e) {
            aa aaVar = this.b;
            this.f217a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
        } catch (RemoteException e2) {
            aa aaVar2 = this.b;
        }
    }
}
