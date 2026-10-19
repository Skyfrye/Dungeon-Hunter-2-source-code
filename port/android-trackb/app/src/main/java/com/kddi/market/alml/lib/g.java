package com.kddi.market.alml.lib;

import java.util.Map;

final class g implements Runnable {

    final /* synthetic */ ALMLClient f206a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ Map d;

    g(ALMLClient aLMLClient, int i, String str, Map map) {
        this.f206a = aLMLClient;
        this.b = i;
        this.c = str;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (ALMLClient.j != null) {
            ae unused = ALMLClient.j;
            int i = this.b;
            String str = this.c;
            Map map = this.d;
        }
    }
}
