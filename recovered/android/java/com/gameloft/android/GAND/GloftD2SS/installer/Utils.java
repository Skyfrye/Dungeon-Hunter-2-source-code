package com.gameloft.android.GAND.GloftD2SS.installer;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences$Editor;
import android.os.Build;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
public class Utils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static HashMap f115a = new HashMap();

    public static void clearPreference(Context context, String str) {
        SharedPreferences$Editor sharedPreferences$EditorEdit = context.getSharedPreferences(str, 0).edit();
        sharedPreferences$EditorEdit.clear();
        sharedPreferences$EditorEdit.commit();
    }

    public static String getPhoneDevice() {
        return Build.DEVICE;
    }

    public static String getPhoneModel() {
        return Build.MODEL;
    }

    public static boolean getPreferenceBoolean(Context context, String str, String str2, boolean z) {
        return context.getSharedPreferences(str, 0).getBoolean(str2, z);
    }

    public static boolean getPreferenceExists(Context context, String str, String str2) {
        return context.getSharedPreferences(str, 0).contains(str2);
    }

    public static int getPreferenceInt(Context context, String str, String str2, int i) {
        return context.getSharedPreferences(str, 0).getInt(str2, i);
    }

    public static long getPreferenceLong(Context context, String str, String str2, long j) {
        return Long.valueOf(context.getSharedPreferences(str, 0).getLong(str2, j)).longValue();
    }

    public static String getPreferenceString(Context context, String str, String str2) {
        return context.getSharedPreferences(str, 0).getString(str2, "");
    }

    public static String getSplitName(String str) {
        if (!str.contains(".split_")) {
            return "";
        }
        try {
            return str.substring(0, str.lastIndexOf(46));
        } catch (Exception e) {
            return "";
        }
    }

    public static int getSplitNumber(String str) {
        if (!str.contains(".split_")) {
            return -1;
        }
        try {
            return Integer.parseInt(str.substring(str.lastIndexOf(95) + 1));
        } catch (Exception e) {
            return -1;
        }
    }

    public static synchronized boolean hasBeenDownloaded(com.gameloft.android.GAND.GloftD2SS.installer.utils.f fVar, boolean z) {
        boolean z2;
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(GameInstaller.sd_folder + "/d_o_w_n_l_o_a_d_e_d.txt"));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    dataInputStream.close();
                    break;
                }
                if (line.contains(fVar.a() + fVar.b())) {
                    z2 = true;
                }
            }
        } catch (Exception e) {
        }
        z2 = false;
        return z2;
    }

    public static synchronized void markAsSaved(com.gameloft.android.GAND.GloftD2SS.installer.utils.f fVar) {
        try {
            if (!hasBeenDownloaded(fVar, false)) {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(GameInstaller.sd_folder + "/d_o_w_n_l_o_a_d_e_d.txt", true));
                bufferedWriter.write(fVar.a() + fVar.b() + "\n");
                bufferedWriter.close();
            }
        } catch (Exception e) {
        }
    }

    public static void setPreference(Context context, String str, String str2, Object obj) {
        SharedPreferences$Editor sharedPreferences$EditorEdit = context.getSharedPreferences(str, 0).edit();
        if (obj instanceof String) {
            sharedPreferences$EditorEdit.putString(str2, (String) obj);
        } else if (obj instanceof Integer) {
            sharedPreferences$EditorEdit.putInt(str2, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            sharedPreferences$EditorEdit.putBoolean(str2, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Long) {
            sharedPreferences$EditorEdit.putLong(str2, ((Long) obj).longValue());
        }
        sharedPreferences$EditorEdit.commit();
    }

    public static void showAllTimers(boolean z) {
        Iterator it = f115a.entrySet().iterator();
        while (it.hasNext()) {
            ((Map$Entry) it.next()).getValue();
        }
    }

    public static void showDialog(Context context, String str) {
        Toast.makeText(context, str, 0);
    }

    public static void showDialog(Context context, String str, int i) {
        Toast.makeText(context, str, i);
    }

    public static void showTimer(String str, int i, int i2) {
        if (f115a.containsKey(str)) {
            f115a.get(str);
        }
    }

    public static void showTimer(String str, boolean z) {
        if (f115a.containsKey(str)) {
            f115a.get(str);
        }
    }

    public static void triggerEndTimer(String str) {
        if (f115a.containsKey(str)) {
            ((n) f115a.get(str)).a(Long.valueOf(System.currentTimeMillis()));
        }
    }

    public static void triggerStartTimer(String str) {
        if (f115a.containsKey(str)) {
            ((n) f115a.get(str)).a(Long.valueOf(System.currentTimeMillis()));
        } else {
            f115a.put(str, new n(Long.valueOf(System.currentTimeMillis())));
        }
    }

    public static void windowFullScreen(Activity activity) {
        if (activity != null) {
            activity.getWindow().setFlags(1024, 1024);
            activity.requestWindowFeature(1);
        }
    }
}
