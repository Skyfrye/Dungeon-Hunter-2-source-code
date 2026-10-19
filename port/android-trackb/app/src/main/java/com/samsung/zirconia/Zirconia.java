package com.samsung.zirconia;

import android.app.Activity;
import android.util.Log;
import java.io.File;

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

    class CheckerRunnable implements Runnable {
        private CheckerRunnable() {
        }

        /* synthetic */ CheckerRunnable(Zirconia zirconia, CheckerRunnable checkerRunnable) {
            this();
        }

        boolean checkLicenseFile() {
            NativeInterface.checkLicenseFile(Zirconia.this.licenseFilePath, Zirconia.this.deviceIMEI, Zirconia.this.applicationID);
            return true;
        }

        boolean checkLicenseFilePhase2() {
            NativeInterface.checkLicenseFile2(Zirconia.this.licenseFilePath, Zirconia.this.currentActivity.getPackageCodePath());
            return true;
        }

        void checkerThreadWorker() {
            boolean z;
            Zirconia.this.zirconiaError = 11;
            if (checkLicenseFile()) {
                if (checkLicenseFilePhase2()) {
                    Zirconia.this.zirconiaError = 0;
                    z = true;
                } else {
                    Zirconia.this.zirconiaError = 82;
                    Zirconia.this.isApplicationHacked = true;
                    z = false;
                }
            } else if (Zirconia.this.checkLocalOnly) {
                z = false;
            } else {
                Zirconia.this.zirconiaError = new LicenseRetriever(Zirconia.this.deviceIMEI, Zirconia.this.applicationID, Zirconia.this.deviceIMSI, Zirconia.this.deviceModel, Zirconia.this.deviceMIN, Zirconia.this.licenseFilePath, Zirconia.this.currentActivity.getPackageCodePath()).retrieveLicense();
                if (Zirconia.this.zirconiaError == 50 && checkLicenseFile()) {
                    Zirconia.this.zirconiaError = 0;
                    z = true;
                } else {
                    z = false;
                }
            }
            if (z) {
                if (Zirconia.this.licenseCheckListener != null) {
                    Zirconia.this.licenseCheckListener.licenseCheckedAsValid();
                }
            } else if (Zirconia.this.licenseCheckListener != null) {
                Zirconia.this.licenseCheckListener.licenseCheckedAsInvalid();
            }
            Zirconia.this.isWorking = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            checkerThreadWorker();
        }
    }

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

    public void checkLicense(boolean z, boolean z2) {
        if (isWorking()) {
            return;
        }
        this.isWorking = true;
        this.checkLocalOnly = z;
        CheckerRunnable checkerRunnable = new CheckerRunnable(this, null);
        if (z2) {
            checkerRunnable.run();
            return;
        }
        Thread thread = new Thread(checkerRunnable);
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
