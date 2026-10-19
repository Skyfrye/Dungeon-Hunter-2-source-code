package com.kddi.market.alml.lib;

import java.util.Map;

final class i implements Runnable {

    final /* synthetic */ ALMLClient f208a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ Map d;

    i(ALMLClient aLMLClient, int i, String str, Map map) {
        this.f208a = aLMLClient;
        this.b = i;
        this.c = str;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (ALMLClient.l != null) {
            ab unused = ALMLClient.l;
            int i = this.b;
            String str = this.c;
            Map map = this.d;
        }
    }
}
