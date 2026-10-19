package com.gameloft.android.GAND.GloftD2SS.GLUtils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences$Editor;
import android.os.Build;
import android.os.StatFs;
import android.provider.Settings$System;
import com.gameloft.android.GAND.GloftD2SS.billing.common.LManager;
import com.gameloft.android.GAND.GloftD2SS.installer.GameInstaller;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Random;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class SUtils implements Config {
    private static Context t = null;
    private static LManager u = null;

    public static String GetSerialKey() {
        try {
            String line = new BufferedReader(new InputStreamReader(getContext().getResources().openRawResource(2130968581), Charset.forName("UTF-8"))).readLine();
            return line == null ? "null" : line;
        } catch (Exception e) {
            return "null";
        }
    }

    public static String ReadFile(int i) {
        InputStream inputStreamOpenRawResource = t.getResources().openRawResource(i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException e) {
        }
        return byteArrayOutputStream.toString();
    }

    public static String ReadFile(String str) {
        try {
            File file = new File(str);
            byte[] bArr = new byte[(int) file.length()];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr);
            fileInputStream.close();
            return new String(bArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static byte[] ReadFileByte(int i) {
        InputStream inputStreamOpenRawResource = t.getResources().openRawResource(i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException e) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] ReadFileByte(String str) {
        try {
            File file = new File(str);
            byte[] bArr = new byte[(int) file.length()];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr);
            fileInputStream.close();
            return bArr;
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean WriteFile(String str, String str2) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                new File(file.getParent()).mkdirs();
                file.createNewFile();
            }
        } catch (Exception e) {
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
            outputStreamWriter.append((CharSequence) str2);
            outputStreamWriter.flush();
            outputStreamWriter.close();
            fileOutputStream.close();
            return true;
        } catch (Exception e2) {
            return true;
        }
    }

    public static boolean WriteFile(String str, byte[] bArr) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                new File(file.getParent()).mkdirs();
                file.createNewFile();
            }
        } catch (Exception e) {
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.flush();
            dataOutputStream.close();
            fileOutputStream.close();
            return true;
        } catch (Exception e2) {
            return true;
        }
    }

    public static Context getContext() {
        Context context = t;
        return t;
    }

    public static float getFreeSpace(String str) {
        File file;
        try {
            if (str.contains("com.gameloft.android.GAND.GloftD2SS")) {
                file = new File(str.substring(0, str.indexOf("com.gameloft.android.GAND.GloftD2SS")));
            } else {
                file = str == "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files" ? new File("/sdcard/") : new File(str);
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            StatFs statFs = new StatFs(file.getAbsolutePath());
            return (((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / 1024;
        } catch (Exception e) {
            return 0.0f;
        }
    }

    public static LManager getLManager() {
        if (u == null) {
            u = new LManager();
        }
        return u;
    }

    public static String getOverriddenSetting(String str, String str2) {
        String line;
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            do {
                line = bufferedReader.readLine();
                if (line != null) {
                }
                bufferedReader.close();
                fileReader.close();
                return line;
            } while (!line.startsWith(str2));
            line = line.substring(line.indexOf("=") + 1).trim();
            bufferedReader.close();
            fileReader.close();
            return line;
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean getOverriddenSettingBoolean(String str, String str2) {
        String overriddenSetting = getOverriddenSetting(str, str2);
        if (overriddenSetting == null || overriddenSetting.length() <= 0) {
            return false;
        }
        return Boolean.valueOf(overriddenSetting).booleanValue();
    }

    public static String getPackage() {
        return "com.gameloft.android.GAND.GloftD2SS";
    }

    public static String getPhoneDevice() {
        return Build.DEVICE;
    }

    public static String getPhoneManufacture() {
        return "samsung";
    }

    public static String getPhoneModel() {
        return "GT-I9300";
    }

    public static String getPhoneProduct() {
        return Build.PRODUCT;
    }

    public static boolean getPreferenceBoolean(String str, boolean z, String str2) {
        try {
            return getContext().getSharedPreferences(str2, 0).getBoolean(str, z);
        } catch (Exception e) {
            return false;
        }
    }

    public static int getPreferenceInt(String str, int i, String str2) {
        return getContext().getSharedPreferences(str2, 0).getInt(str, i);
    }

    public static long getPreferenceLong(String str, long j, String str2) {
        return Long.valueOf(getContext().getSharedPreferences(str2, 0).getLong(str, j)).longValue();
    }

    public static String getPreferenceString(String str, String str2) {
        return getContext().getSharedPreferences(str2, 0).getString(str, "");
    }

    public static String getPreferenceString(String str, String str2, String str3) {
        return getContext().getSharedPreferences(str3, 0).getString(str, str2);
    }

    public static InputStream getResourceAsStream(String str) {
        try {
            return t.getAssets().open(str);
        } catch (IOException e) {
            return null;
        }
    }

    public static String getSDFolder() {
        String preferenceString = getPreferenceString("SDFolder", GameInstaller.mPreferencesName);
        return preferenceString != "" ? preferenceString : "/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files";
    }

    public static String getSaveFolder() {
        try {
            return t.getFilesDir().toString();
        } catch (Exception e) {
            return "";
        }
    }

    protected static int getUniqueCode(int i, int i2) {
        return (int) ((new Random().nextDouble() * ((double) ((i2 - i) + 1))) + ((double) i));
    }

    public static String getVersionInstalled() {
        try {
            return t.getPackageManager().getPackageInfo("com.gameloft.android.GAND.GloftD2SS", 128).versionName;
        } catch (Exception e) {
            return "1.0.2";
        }
    }

    public static boolean isAirplaneModeOn() {
        return Settings$System.getInt(t.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    protected static void logWindowMessage(Context context, String str) {
    }

    public static native void nativeInit();

    protected static String[] objectArrayToStringArray(Object[] objArr) {
        String[] strArr = new String[objArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = objArr[i].toString();
        }
        return strArr;
    }

    protected static String[] readTextFile(String str, String str2) {
        String str3;
        String str4;
        InputStream resourceAsStream = getResourceAsStream(str);
        try {
            byte[] bArr = new byte[resourceAsStream.available()];
            resourceAsStream.read(bArr);
            str3 = new String(bArr, str2);
            try {
                resourceAsStream.close();
                str4 = str3;
            } catch (IOException e) {
                str4 = str3;
            } catch (Exception e2) {
                str4 = str3;
            }
        } catch (IOException e3) {
            str3 = null;
        } catch (Exception e4) {
            str3 = null;
        }
        if (str4 == null) {
            return null;
        }
        Vector vector = new Vector();
        String str5 = "";
        for (int i = 0; i < str4.length(); i++) {
            char cCharAt = str4.charAt(i);
            if (cCharAt == '\n') {
                vector.addElement(str5);
                str5 = "";
            } else {
                str5 = str5 + cCharAt;
            }
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    public static void release() {
        t = null;
    }

    public static void runOnUiThread(Runnable runnable) {
        ((Activity) getContext()).runOnUiThread(runnable);
    }

    public static void setAirplaneMode(boolean z) {
        boolean zIsAirplaneModeOn = isAirplaneModeOn();
        if (zIsAirplaneModeOn && z) {
            return;
        }
        if (zIsAirplaneModeOn || z) {
            if (zIsAirplaneModeOn && !z) {
                Settings$System.putInt(t.getContentResolver(), "airplane_mode_on", 0);
                Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
                intent.putExtra("state", 0);
                t.sendBroadcast(intent);
                return;
            }
            if (zIsAirplaneModeOn || !z) {
                return;
            }
            Settings$System.putInt(t.getContentResolver(), "airplane_mode_on", 1);
            Intent intent2 = new Intent("android.intent.action.AIRPLANE_MODE");
            intent2.putExtra("state", 1);
            t.sendBroadcast(intent2);
        }
    }

    public static void setContext(Context context) {
        t = context;
    }

    public static void setOverriddenSetting(String str, String str2, String str3) {
        String strTrim;
        FileWriter fileWriter;
        BufferedWriter bufferedWriter;
        int i = 1;
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    i = 0;
                    strTrim = line;
                    break;
                } else if (line.startsWith(str2)) {
                    strTrim = line.substring(0, line.indexOf("=") + 1).trim();
                    break;
                }
            }
            bufferedReader.close();
            fileReader.close();
            if (strTrim != null) {
                fileWriter = new FileWriter(str);
                bufferedWriter = new BufferedWriter(fileWriter);
            } else {
                fileWriter = new FileWriter(str, true);
                bufferedWriter = new BufferedWriter(fileWriter);
            }
            while (i >= 0) {
                bufferedWriter.newLine();
                i--;
            }
            bufferedWriter.write(str2 + "=" + str3);
            bufferedWriter.close();
            fileWriter.close();
        } catch (Exception e) {
        }
    }

    public static void setPreference(String str, Object obj, String str2) {
        SharedPreferences$Editor sharedPreferences$EditorEdit = getContext().getSharedPreferences(str2, 0).edit();
        if (obj instanceof String) {
            sharedPreferences$EditorEdit.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            sharedPreferences$EditorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            sharedPreferences$EditorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Long) {
            sharedPreferences$EditorEdit.putLong(str, ((Long) obj).longValue());
        }
        sharedPreferences$EditorEdit.commit();
    }

    public static void shareInfo(String str, String str2, String str3) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        if (t != null) {
            t.startActivity(Intent.createChooser(intent, str3));
        }
    }
}
