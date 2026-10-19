package com.samsung.zirconia;

import android.app.Activity;
import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class Zirconia {
    public static final int EZIRCONIA_APPLICATION_MODIFIED = 82;
    public static final int EZIRCONIA_CANNOT_CHECK = 31;
    public static final int EZIRCONIA_CLIENT_MISMATCH = 21;
    public static final int EZIRCONIA_INVALID_VALUE = 23;
    public static final int EZIRCONIA_KEY_CREATION_FAILED = 81;
    public static final int EZIRCONIA_LICENSE_MISMATCH = 50;
    public static final int EZIRCONIA_NOT_PURCHASED = 11;
    public static final int EZIRCONIA_RECEIVE_FAILED = 61;
    public static final int EZIRCONIA_SEND_FAILED = 62;
    public static final int EZIRCONIA_SERVER_MISMATCH = 71;
    public static final int EZIRCONIA_SUCCESS = 0;
    public static final int EZIRCONIA_VERSION_MISMATCH = 22;
    private String applicationID;
    private boolean checkLocalOnly;
    private Activity currentActivity;
    private String deviceIMEI;
    private String deviceIMSI;
    private String deviceMIN;
    private String deviceModel;
    private boolean isApplicationHacked;
    private boolean isEmulator;
    private boolean isWorking;
    private LicenseCheckListener licenseCheckListener;
    private String licenseFilePath;
    private int threadPriority;
    private int zirconiaError;

    public Zirconia(Activity activity) {
        this.currentActivity = activity;
        DevInfoRetriever devInfoRetriever = new DevInfoRetriever(this.currentActivity);
        this.licenseCheckListener = null;
        this.isEmulator = devInfoRetriever.isEmulator();
        this.isApplicationHacked = false;
        this.threadPriority = 5;
        this.zirconiaError = 0;
        this.checkLocalOnly = false;
        this.applicationID = activity.getPackageName();
        this.deviceIMEI = devInfoRetriever.getIMEI();
        this.deviceIMSI = devInfoRetriever.getIMSI();
        this.deviceModel = devInfoRetriever.getModel();
        this.deviceMIN = devInfoRetriever.getMIN();
        this.licenseFilePath = String.valueOf(activity.getDir("zirconia", 0).getAbsolutePath()) + "/zirconia.dat";
        this.isWorking = false;
    }

    static /* synthetic */ void access$0(Zirconia zirconia, int i) {
        zirconia.zirconiaError = i;
    }

    static /* synthetic */ void access$1(Zirconia zirconia, boolean z) {
        zirconia.isApplicationHacked = z;
    }

    static /* synthetic */ int access$10(Zirconia zirconia) {
        return zirconia.zirconiaError;
    }

    static /* synthetic */ LicenseCheckListener access$11(Zirconia zirconia) {
        return zirconia.licenseCheckListener;
    }

    static /* synthetic */ void access$12(Zirconia zirconia, boolean z) {
        zirconia.isWorking = z;
    }

    static /* synthetic */ boolean access$2(Zirconia zirconia) {
        return zirconia.checkLocalOnly;
    }

    static /* synthetic */ Activity access$3(Zirconia zirconia) {
        return zirconia.currentActivity;
    }

    static /* synthetic */ String access$4(Zirconia zirconia) {
        return zirconia.deviceIMEI;
    }

    static /* synthetic */ String access$5(Zirconia zirconia) {
        return zirconia.applicationID;
    }

    static /* synthetic */ String access$6(Zirconia zirconia) {
        return zirconia.deviceIMSI;
    }

    static /* synthetic */ String access$7(Zirconia zirconia) {
        return zirconia.deviceModel;
    }

    static /* synthetic */ String access$8(Zirconia zirconia) {
        return zirconia.deviceMIN;
    }

    static /* synthetic */ String access$9(Zirconia zirconia) {
        return zirconia.licenseFilePath;
    }

    public void checkLicense(boolean z, boolean z2) {
        if (isWorking()) {
            return;
        }
        this.isWorking = true;
        this.checkLocalOnly = z;
        Zirconia$CheckerRunnable zirconia$CheckerRunnable = new Zirconia$CheckerRunnable(this, null);
        if (z2) {
            zirconia$CheckerRunnable.run();
            return;
        }
        Thread thread = new Thread(zirconia$CheckerRunnable);
        thread.setPriority(this.threadPriority);
        thread.start();
    }

    public boolean deleteLicense() {
        File file = new File(this.licenseFilePath);
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }

    public void doVariablesTest() {
        Log.d("Zirconia", "isEmulator: " + this.isEmulator);
        Log.d("Zirconia", "isApplicationHacked: " + this.isApplicationHacked);
        Log.d("Zirconia", "threadPriority :" + this.threadPriority);
        Log.d("Zirconia", "zirconiaError :" + this.zirconiaError);
        Log.d("Zirconia", "checkLocalOnly :" + this.checkLocalOnly);
        Log.d("Zirconia", "applicationID :" + this.applicationID);
        Log.d("Zirconia", "deviceIMEI :" + this.deviceIMEI);
        Log.d("Zirconia", "deviceIMSI :" + this.deviceIMSI);
        Log.d("Zirconia", "deviceModel :" + this.deviceModel);
        Log.d("Zirconia", "deviceMIN :" + this.deviceMIN);
        Log.d("Zirconia", "licenseFilePath :" + this.licenseFilePath);
    }

    public int getError() {
        return this.zirconiaError;
    }

    public boolean isWorking() {
        return this.isWorking;
    }

    public void setBogusIMEI(String str) {
        if (this.isEmulator) {
            this.deviceIMEI = str;
        }
    }

    public void setLicenseCheckListener(LicenseCheckListener licenseCheckListener) {
        this.licenseCheckListener = licenseCheckListener;
    }

    public void setThreadPriority(int i) {
        int i2 = i <= 0 ? 1 : i;
        this.threadPriority = i2 >= 10 ? i2 : 1;
    }

    public ZirconiaVersion version() {
        return new ZirconiaVersion(1, 120, 0);
    }
}
