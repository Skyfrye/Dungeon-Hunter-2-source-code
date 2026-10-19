package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class r implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
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
        ALMLClient.access$9(this.b);
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        aa aaVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            ALMLClient.access$8(this.f217a).a(this.c, ALMLClient.access$10(this.f217a), this.d);
        } catch (DeadObjectException e) {
            aa aaVar = this.b;
            ALMLClient.access$6(this.f217a, ALMLClient$CONNECTION_STATUS.DISCONNECT);
        } catch (RemoteException e2) {
            aa aaVar2 = this.b;
        }
    }
}
