package com.kddi.market.alml.lib;

final class j implements Runnable {

    final /* synthetic */ ALMLClient f209a;
    private final /* synthetic */ z b;

    j(ALMLClient aLMLClient, z zVar) {
        this.f209a = aLMLClient;
        this.b = zVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (ALMLClient.q) {
            this.b.a();
            if (this.f209a.b != null) {
                this.b.b();
            } else if (this.f209a.b == null && ALMLClient.CONNECTION_STATUS.CONNECTING == this.f209a.o) {
                ((y) this.f209a.p).a(this.b);
            } else {
                this.b.a(-99);
                this.f209a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
            }
        }
    }
}
