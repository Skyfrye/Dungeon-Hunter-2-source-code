package com.kddi.market.alml.lib;

/* JADX INFO: loaded from: classes.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ALMLClient f209a;
    private final /* synthetic */ z b;

    j(ALMLClient aLMLClient, z zVar) {
        this.f209a = aLMLClient;
        this.b = zVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (ALMLClient.access$7()) {
            this.b.a();
            if (ALMLClient.access$8(this.f209a) != null) {
                this.b.b();
            } else if (ALMLClient.access$8(this.f209a) == null && ALMLClient$CONNECTION_STATUS.CONNECTING == ALMLClient.access$21(this.f209a)) {
                ((y) ALMLClient.access$22(this.f209a)).a(this.b);
            } else {
                this.b.a(-99);
                ALMLClient.access$6(this.f209a, ALMLClient$CONNECTION_STATUS.DISCONNECT);
            }
        }
    }
}
