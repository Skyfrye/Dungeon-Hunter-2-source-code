package com.kddi.market.alml.lib;

import java.util.Map;

final class f implements Runnable {

    final /* synthetic */ ALMLClient f205a;
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ Map d;

    f(ALMLClient aLMLClient, int i, String str, Map map) {
        this.f205a = aLMLClient;
        this.b = i;
        this.c = str;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (ALMLClient.i != null) {
            ai unused = ALMLClient.i;
            int i = this.b;
            String str = this.c;
            Map map = this.d;
        }
    }
}
