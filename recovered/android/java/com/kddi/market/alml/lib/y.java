package com.kddi.market.alml.lib;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.kddi.market.alml.service.IAppAuthorizeService$Stub;

/* JADX INFO: loaded from: classes.dex */
public final class y implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
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
        synchronized (ALMLClient.access$7()) {
            ALMLClient.access$6(this.f224a, ALMLClient$CONNECTION_STATUS.CONNECTING);
            ALMLClient.access$5(this.f224a, IAppAuthorizeService$Stub.asInterface(iBinder));
            if (ALMLClient.access$8(this.f224a) == null) {
                if (this.b != null) {
                    this.b.a(-99);
                }
                ALMLClient.access$6(this.f224a, ALMLClient$CONNECTION_STATUS.DISCONNECT);
            } else {
                ALMLClient.access$6(this.f224a, ALMLClient$CONNECTION_STATUS.CONNECTED);
                if (this.b != null) {
                    this.b.b();
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (this.b != null) {
            this.b.a(-98);
        }
        ALMLClient.access$5(this.f224a, null);
        ALMLClient.access$6(this.f224a, ALMLClient$CONNECTION_STATUS.DISCONNECT);
    }
}
