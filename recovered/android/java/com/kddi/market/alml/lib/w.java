package com.kddi.market.alml.lib;

import android.os.DeadObjectException;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class w implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
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
        ALMLClient.access$12(this.b);
    }

    @Override // com.kddi.market.alml.lib.z
    public final void a(int i) {
        ag agVar = this.b;
    }

    @Override // com.kddi.market.alml.lib.z
    public final void b() {
        try {
            ALMLClient.access$8(this.f222a).b(this.c, ALMLClient.access$10(this.f222a), this.d, this.e, this.f, this.g);
        } catch (DeadObjectException e) {
            ag agVar = this.b;
            ALMLClient.access$6(this.f222a, ALMLClient$CONNECTION_STATUS.DISCONNECT);
        } catch (RemoteException e2) {
            ag agVar2 = this.b;
        }
    }
}
