package com.gameloft.android.GAND.GloftD2SS;

import android.os.Handler;
import com.samsung.zirconia.LicenseCheckListener;
import com.samsung.zirconia.Zirconia;

/* JADX INFO: loaded from: classes.dex */
final class ay implements LicenseCheckListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Zirconia_DRM f61a;
    Zirconia b;
    Handler c;

    public ay(Zirconia_DRM zirconia_DRM, Zirconia zirconia) {
        this.f61a = zirconia_DRM;
        this.b = zirconia;
    }

    @Override // com.samsung.zirconia.LicenseCheckListener
    public final void licenseCheckedAsInvalid() {
        this.c.post(new ba(this));
    }

    @Override // com.samsung.zirconia.LicenseCheckListener
    public final void licenseCheckedAsValid() {
        this.c.post(new az(this));
    }
}
