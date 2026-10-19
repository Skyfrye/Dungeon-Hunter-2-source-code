package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class t implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
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
        ALMLClient.access$11(this.b);
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        ah ahVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            ALMLClient.access$8(this.f219a).b(this.c, ALMLClient.access$10(this.f219a));
        } catch (DeadObjectException e) {
            ah ahVar = this.b;
            ALMLClient.access$6(this.f219a, ALMLClient$CONNECTION_STATUS.DISCONNECT);
        } catch (RemoteException e2) {
            ah ahVar2 = this.b;
        }
    }
}
