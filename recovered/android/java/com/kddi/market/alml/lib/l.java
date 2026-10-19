package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class l implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
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
        ALMLClient.access$9(this.b);
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        aa aaVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            ALMLClient.access$8(this.f211a).a(this.c, ALMLClient.access$10(this.f211a), this.d, this.e);
        } catch (DeadObjectException e) {
            aa aaVar = this.b;
            ALMLClient.access$6(this.f211a, ALMLClient$CONNECTION_STATUS.DISCONNECT);
        } catch (RemoteException e2) {
            aa aaVar2 = this.b;
        }
    }
}
