package com.samsungapps.plasma;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class d$1 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f279a;

    d$1(d dVar) {
        this.f279a = dVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.f279a.a(message.what, message.arg1, (String) message.obj);
    }
}
