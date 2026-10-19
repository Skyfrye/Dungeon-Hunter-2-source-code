package com.samsung.zirconia;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes.dex */
class DevInfoRetriever {
    private String deviceMIN;
    private String deviceOEMInfo;
    private String deviceSerialNumber;
    private String deviceSubscriberNumber;
    private boolean isEmulator;

    public DevInfoRetriever(Activity activity) {
        Context applicationContext = activity.getApplicationContext();
        TelephonyManager telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
        String deviceId = telephonyManager.getDeviceId();
        String systemProperties = getSystemProperties(applicationContext, "ro.serialno", "Unknown");
        this.deviceSubscriberNumber = telephonyManager.getSubscriberId();
        this.deviceMIN = telephonyManager.getLine1Number();
        this.deviceOEMInfo = Build.PRODUCT;
        if (deviceId == null || deviceId.compareTo("000000000000000") != 0) {
            this.isEmulator = false;
        } else {
            this.isEmulator = true;
        }
        if (this.isEmulator || telephonyManager.getPhoneType() != 0) {
            this.deviceSerialNumber = deviceId;
        } else if (systemProperties == null || systemProperties.equals("Unknown")) {
            this.deviceSerialNumber = "000000000000000";
        } else {
            this.deviceSerialNumber = systemProperties;
        }
    }

    private static String getSystemProperties(Context context, String str, String str2) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class, String.class).invoke(clsLoadClass, new String(str), new String(str2));
        } catch (IllegalArgumentException e) {
            return str2;
        } catch (Exception e2) {
            return str2;
        }
    }

    public String getIMEI() {
        return this.deviceSerialNumber == null ? "" : this.deviceSerialNumber;
    }

    public String getIMSI() {
        return this.deviceSubscriberNumber == null ? "" : this.deviceSubscriberNumber;
    }

    public String getMIN() {
        return this.deviceMIN == null ? "" : this.deviceMIN;
    }

    public String getModel() {
        return this.deviceOEMInfo == null ? "" : this.deviceOEMInfo;
    }

    public boolean isEmulator() {
        return this.isEmulator;
    }
}
