package com.kddi.market.alml.lib;

import java.util.Map;

final class h implements Runnable {

    final /* synthetic */ ALMLClient f207a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ Map d;

    h(ALMLClient aLMLClient, int i, String str, Map map) {
        this.f207a = aLMLClient;
        this.b = i;
        this.c = str;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (ALMLClient.k != null) {
            ac unused = ALMLClient.k;
            int i = this.b;
            String str = this.c;
            Map map = this.d;
        }
    }
}
