package com.kddi.market.alml.lib;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class c implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
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
        ALMLClient.access$14(this.b);
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        ALMLClient.access$15(this.f202a, i, null, null, null);
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            ALMLClient.access$8(this.f202a).a(this.c, this.d, ALMLClient.access$10(this.f202a), this.e);
        } catch (RemoteException e) {
            a(-99);
        }
    }
}
