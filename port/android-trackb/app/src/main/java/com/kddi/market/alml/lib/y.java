package com.kddi.market.alml.lib;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.kddi.market.alml.service.IAppAuthorizeService;

public final class y implements ServiceConnection {

    final /* synthetic */ ALMLClient f224a;
    private z b;

    public y(ALMLClient aLMLClient) {
        this.f224a = aLMLClient;
    }

    public final void a(z zVar) {
        this.b = zVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (ALMLClient.q) {
            this.f224a.o = ALMLClient.CONNECTION_STATUS.CONNECTING;
            this.f224a.b = IAppAuthorizeService.Stub.asInterface(iBinder);
            if (this.f224a.b == null) {
                if (this.b != null) {
                    this.b.a(-99);
                }
                this.f224a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
                return;
            }
            this.f224a.o = ALMLClient.CONNECTION_STATUS.CONNECTED;
            if (this.b != null) {
                this.b.b();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (this.b != null) {
            this.b.a(-98);
        }
        this.f224a.b = null;
        this.f224a.o = ALMLClient.CONNECTION_STATUS.DISCONNECT;
    }
}
