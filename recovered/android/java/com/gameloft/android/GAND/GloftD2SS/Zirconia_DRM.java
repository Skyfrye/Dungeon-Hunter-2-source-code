package com.gameloft.android.GAND.GloftD2SS;

import android.app.Activity;
import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.util.Log;
import com.samsung.zirconia.Zirconia;
import com.savegame.SavesRestoringPortable;

/* JADX INFO: loaded from: classes.dex */
public class Zirconia_DRM extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ProgressDialog f35a;
    private String e;
    private boolean b = false;
    private boolean c = false;
    private boolean d = false;
    private Handler f = new Handler();
    private Zirconia g = null;
    private ay h = null;

    static /* synthetic */ boolean access$002(Zirconia_DRM zirconia_DRM, boolean z) {
        zirconia_DRM.d = z;
        return z;
    }

    private void e() {
        this.g = new Zirconia(this);
        this.h = new ay(this, this.g);
        this.h.c = this.f;
        this.g.setLicenseCheckListener(this.h);
        this.g.doVariablesTest();
    }

    private void f() {
        boolean z = true;
        if (this.f35a != null) {
            this.f35a.dismiss();
            z = false;
        }
        startActivity(new Intent(this, (Class<?>) DungeonHunter2.class));
        finish();
        if (z) {
            return;
        }
        Process.killProcess(Process.myPid());
    }

    public final void a(String str) {
        boolean z = false;
        if (!this.c) {
            this.e = str;
            showDialog(0);
            return;
        }
        if (this.f35a != null) {
            this.f35a.dismiss();
        } else {
            z = true;
        }
        startActivity(new Intent(this, (Class<?>) DungeonHunter2.class));
        finish();
        if (z) {
            return;
        }
        Process.killProcess(Process.myPid());
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final boolean a() {
        return this.b;
    }

    public final void b(boolean z) {
        this.b = z;
        this.g.checkLicense(z, false);
        if (z) {
            return;
        }
        this.f35a = ProgressDialog.show(this, "Check license.", "Please wait...", true);
    }

    public final boolean b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        boolean zIsAvailable = networkInfo.isAvailable();
        boolean zIsConnected = networkInfo.isConnected();
        boolean zIsAvailable2 = networkInfo2.isAvailable();
        boolean zIsConnected2 = networkInfo2.isConnected();
        String str = "isWifiAvail = " + zIsAvailable + "\nisWifiConn = " + zIsConnected + "\nisMobileAvail = " + zIsAvailable2 + "\nisMobileConn = " + zIsConnected2;
        return zIsConnected || zIsConnected2;
    }

    public final void c() {
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
        alertDialog$Builder.setPositiveButton("Yes", new bz(this)).setNegativeButton("No", new by(this)).setOnKeyListener(new bx(this));
        alertDialog$Builder.setMessage(getString(2131034113));
        alertDialog$Builder.show();
    }

    public final void d() {
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
        alertDialog$Builder.setPositiveButton("Yes", new cc(this)).setNegativeButton("No", new cb(this)).setOnKeyListener(new ca(this));
        alertDialog$Builder.setMessage(getString(2131034112));
        alertDialog$Builder.show();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        SavesRestoringPortable.DoSmth(this);
        super.onCreate(bundle);
        if (!isTaskRoot()) {
            Log.i("Zicornia DRM", "!isTaskRoot");
            finish();
            return;
        }
        this.g = new Zirconia(this);
        this.h = new ay(this, this.g);
        this.h.c = this.f;
        this.g.setLicenseCheckListener(this.h);
        this.g.doVariablesTest();
        b(true);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        return new AlertDialog$Builder(this).setIcon((Drawable) null).setTitle("").setMessage(this.e).setPositiveButton("OK", new ce(this)).setOnKeyListener(new cd(this)).create();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.d) {
            if (b()) {
                b(false);
            } else {
                d();
            }
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
