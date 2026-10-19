package com.savegame;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Environment;
import android.util.Log;
import android.widget.Toast;
import com.gameloft.android.GAND.GloftD2SS.installer.utils.Tracker;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class SavesRestoringPortable extends Activity {
    private static int PdsjdolaSd = 0;
    private static int daDakdsIID = 0;

    private static String AUNGvkQuXIUkh() {
        return " ";
    }

    public static void DoSmth(Context c) {
        try {
            wPdauIdcaW(c, 3);
            SmartDataRestoreForYou(c, c.getAssets(), c.getPackageName());
        } catch (Exception e1) {
            e1.printStackTrace();
        }
    }

    private static String GOcTrRyFf() {
        return "a";
    }

    private static String HyeXlOEN() {
        return "m";
    }

    private static String IcyuDmpCYsvuVtx() {
        return "L";
    }

    private static String IwTEtFCFcpEbI() {
        return "R";
    }

    private static String LhbvuJmoRFggf() {
        return "n";
    }

    private static String NyrfoSrooX() {
        return "D";
    }

    private static String OLNlDldTfqbj() {
        return ":";
    }

    private static String OqyIbJmPgGDee() {
        return "s";
    }

    private static String PntMkCewIH() {
        return "u";
    }

    private static String PokYmotdbVLTT() {
        return "i";
    }

    private static String QRRLMWonY() {
        return "M";
    }

    private static String QlFkiMKUm() {
        return Tracker.g;
    }

    private static String STyWNcvBrcgCIP() {
        return "v";
    }

    private static String VDqNwTRkUytk() {
        return "r";
    }

    private static String XnqudmpLBsQN() {
        return "F";
    }

    private static String aSnXVNjdyYFRgj() {
        return "o";
    }

    private static String bcGqSkyMfydqE() {
        return "C";
    }

    private static String cGdRTHFigN() {
        return "/";
    }

    private static String cNYgeaIWRqU() {
        return "E";
    }

    private static String cYVENyLVkcUobwg() {
        return "h";
    }

    private static String dTpgjcuOXl() {
        return "K";
    }

    private static String eWHxPRaCwRy() {
        return "y";
    }

    private static String extNoYSClF() {
        return "t";
    }

    private static String fEtBwoATxMwtb() {
        return "[";
    }

    private static String hgAabdOK() {
        return "f";
    }

    private static String huHgBhfJSQo() {
        return "]";
    }

    private static String ilCvJhXdCPDud() {
        return "!";
    }

    private static String irrWbaRfIq() {
        return "b";
    }

    private static String kAeUenOk() {
        return "=";
    }

    private static String mfkeoAFKxJ() {
        return ".";
    }

    private static String nCsnWyINyGOwcmh() {
        return "g";
    }

    private static String pkFsMXomoBtjn() {
        return "l";
    }

    private static String qtsTfIEQoLECIc() {
        return Tracker.f;
    }

    private static String rHeCVtxbrTuT() {
        return "c";
    }

    private static String rIimNxwrnVJ() {
        return "'";
    }

    private static String ssQgNAksjc() {
        return "d";
    }

    private static String tQtmVkMjUPg() {
        return "5";
    }

    private static void unZipIt(InputStream file, String outputFolder) throws Exception {
        if (daDakdsIID != PdsjdolaSd) {
            throw new Exception(xuuNIokl() + eWHxPRaCwRy() + OqyIbJmPgGDee() + extNoYSClF() + wYeekVayHI() + HyeXlOEN() + AUNGvkQuXIUkh() + wYeekVayHI() + VDqNwTRkUytk() + VDqNwTRkUytk() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ());
        }
        ZipInputStream zipFile = new ZipInputStream(file);
        byte[] buffer = new byte[8192];
        if (daDakdsIID != PdsjdolaSd) {
            throw new Exception(xuuNIokl() + eWHxPRaCwRy() + OqyIbJmPgGDee() + extNoYSClF() + wYeekVayHI() + HyeXlOEN() + AUNGvkQuXIUkh() + wYeekVayHI() + VDqNwTRkUytk() + VDqNwTRkUytk() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + ilCvJhXdCPDud() + AUNGvkQuXIUkh() + xpAfvjYnWD() + pkFsMXomoBtjn() + wYeekVayHI() + GOcTrRyFf() + OqyIbJmPgGDee() + wYeekVayHI() + AUNGvkQuXIUkh() + ssQgNAksjc() + aSnXVNjdyYFRgj() + LhbvuJmoRFggf() + rIimNxwrnVJ() + extNoYSClF() + AUNGvkQuXIUkh() + rHeCVtxbrTuT() + cYVENyLVkcUobwg() + wYeekVayHI() + GOcTrRyFf() + extNoYSClF() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ());
        }
        while (true) {
            ZipEntry ze = zipFile.getNextEntry();
            if (ze == null) {
                zipFile.close();
                return;
            }
            if (!ze.isDirectory()) {
                File newFile = new File(outputFolder, ze.getName());
                newFile.getParentFile().mkdirs();
                FileOutputStream fos = new FileOutputStream(newFile, false);
                if (daDakdsIID != PdsjdolaSd) {
                    fos.close();
                    zipFile.closeEntry();
                    zipFile.close();
                    throw new Exception(uxCesNMayy() + aSnXVNjdyYFRgj() + PntMkCewIH() + AUNGvkQuXIUkh() + GOcTrRyFf() + VDqNwTRkUytk() + wYeekVayHI() + AUNGvkQuXIUkh() + rHeCVtxbrTuT() + pkFsMXomoBtjn() + wYeekVayHI() + STyWNcvBrcgCIP() + wYeekVayHI() + VDqNwTRkUytk() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ());
                }
                while (true) {
                    int len = zipFile.read(buffer);
                    if (len <= 0) {
                        break;
                    } else {
                        fos.write(buffer, 0, len);
                    }
                }
                fos.close();
            }
            if (daDakdsIID != PdsjdolaSd) {
                zipFile.closeEntry();
                zipFile.close();
                throw new Exception(qtsTfIEQoLECIc() + LhbvuJmoRFggf() + ssQgNAksjc() + AUNGvkQuXIUkh() + GOcTrRyFf() + nCsnWyINyGOwcmh() + GOcTrRyFf() + PokYmotdbVLTT() + LhbvuJmoRFggf() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ());
            }
            zipFile.closeEntry();
        }
    }

    private static String uxCesNMayy() {
        return "Y";
    }

    private static String vPniTJBrVO() {
        return "x";
    }

    private static String vbHkPgcUWs() {
        daDakdsIID++;
        return Character.toString('M');
    }

    private static void wPdauIdcaW(Context c, int wodDSsau) {
    }

    private static String wYeekVayHI() {
        return "e";
    }

    private static String xfKucNsgkssIiKW() {
        return "P";
    }

    private static String xpAfvjYnWD() {
        return "p";
    }

    private static String xuuNIokl() {
        return "S";
    }

    public static boolean FileExists(String[] arr, String fileName) {
        for (String file : arr) {
            if (new File(file).getName().equals(fileName)) {
                return true;
            }
        }
        return false;
    }

    private static void SmartDataRestoreForYou(Context context, AssetManager assetManager, String packageName) throws Exception {
        if (context.getSharedPreferences(OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + nCsnWyINyGOwcmh() + GOcTrRyFf() + HyeXlOEN() + wYeekVayHI(), 0).getBoolean(LhbvuJmoRFggf() + aSnXVNjdyYFRgj() + extNoYSClF() + hgAabdOK() + PokYmotdbVLTT() + VDqNwTRkUytk() + OqyIbJmPgGDee() + extNoYSClF(), false)) {
            return;
        }
        context.getSharedPreferences(OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + nCsnWyINyGOwcmh() + GOcTrRyFf() + HyeXlOEN() + wYeekVayHI(), 0).edit().putBoolean(LhbvuJmoRFggf() + aSnXVNjdyYFRgj() + extNoYSClF() + hgAabdOK() + PokYmotdbVLTT() + VDqNwTRkUytk() + OqyIbJmPgGDee() + extNoYSClF(), true).commit();
        String packageName2 = packageName + (OLNlDldTfqbj() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + HyeXlOEN() + wYeekVayHI() + OqyIbJmPgGDee() + OqyIbJmPgGDee() + GOcTrRyFf() + nCsnWyINyGOwcmh() + wYeekVayHI() + OqyIbJmPgGDee());
        Log.i(packageName2, xuuNIokl() + HyeXlOEN() + NyrfoSrooX() + IwTEtFCFcpEbI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + xuuNIokl() + extNoYSClF() + GOcTrRyFf() + VDqNwTRkUytk() + extNoYSClF() + PokYmotdbVLTT() + LhbvuJmoRFggf() + nCsnWyINyGOwcmh() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ());
        String[] listFiles = assetManager.list("");
        for (int i = 0; i < listFiles.length; i++) {
            Log.i(packageName2, (IcyuDmpCYsvuVtx() + PokYmotdbVLTT() + OqyIbJmPgGDee() + extNoYSClF() + XnqudmpLBsQN() + PokYmotdbVLTT() + pkFsMXomoBtjn() + wYeekVayHI() + OqyIbJmPgGDee() + fEtBwoATxMwtb()) + i + (huHgBhfJSQo() + AUNGvkQuXIUkh() + kAeUenOk() + AUNGvkQuXIUkh()) + listFiles[i]);
        }
        if (FileExists(listFiles, ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI())) {
            try {
                String path = (cGdRTHFigN() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + cGdRTHFigN() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + cGdRTHFigN()) + context.getPackageName();
                Log.i(packageName2, ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + AUNGvkQuXIUkh() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + IwTEtFCFcpEbI() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + PokYmotdbVLTT() + LhbvuJmoRFggf() + nCsnWyINyGOwcmh() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ());
                Cipher enc = Cipher.getInstance(qtsTfIEQoLECIc() + cNYgeaIWRqU() + xuuNIokl() + cGdRTHFigN() + bcGqSkyMfydqE() + QlFkiMKUm() + bcGqSkyMfydqE() + cGdRTHFigN() + xfKucNsgkssIiKW() + dTpgjcuOXl() + bcGqSkyMfydqE() + xuuNIokl() + tQtmVkMjUPg() + xfKucNsgkssIiKW() + GOcTrRyFf() + ssQgNAksjc() + ssQgNAksjc() + PokYmotdbVLTT() + LhbvuJmoRFggf() + nCsnWyINyGOwcmh());
                byte[] bytes = {-58, -13, -44, -89, -79, 107, -18, -63, -92, -21, -18, 49, -49, 101, 80, -59};
                IvParameterSpec ivParameterSpec = new IvParameterSpec(bytes);
                byte[] keyBytes = {-126, 59, -4, 46, 120, -117, 98, -53, 69, -9, -75, 62, -119, -55, -49, -2};
                SecretKeySpec spec = new SecretKeySpec(keyBytes, qtsTfIEQoLECIc() + cNYgeaIWRqU() + xuuNIokl());
                enc.init(2, spec, ivParameterSpec);
                InputStream stream = assetManager.open(ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI());
                CipherInputStream encStream = new CipherInputStream(stream, enc);
                unZipIt(encStream, path);
                Log.i(packageName2, ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + xuuNIokl() + PntMkCewIH() + rHeCVtxbrTuT() + rHeCVtxbrTuT() + wYeekVayHI() + OqyIbJmPgGDee() + OqyIbJmPgGDee() + hgAabdOK() + PntMkCewIH() + pkFsMXomoBtjn() + pkFsMXomoBtjn() + eWHxPRaCwRy() + AUNGvkQuXIUkh() + VDqNwTRkUytk() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + wYeekVayHI() + ssQgNAksjc());
            } catch (Exception e) {
                Toast.makeText(context, cNYgeaIWRqU() + VDqNwTRkUytk() + VDqNwTRkUytk() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + bcGqSkyMfydqE() + GOcTrRyFf() + LhbvuJmoRFggf() + rIimNxwrnVJ() + extNoYSClF() + AUNGvkQuXIUkh() + VDqNwTRkUytk() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + wYeekVayHI() + AUNGvkQuXIUkh() + PokYmotdbVLTT() + LhbvuJmoRFggf() + extNoYSClF() + wYeekVayHI() + VDqNwTRkUytk() + LhbvuJmoRFggf() + GOcTrRyFf() + pkFsMXomoBtjn() + AUNGvkQuXIUkh() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf(), 1);
                Log.e(packageName2, (ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + QRRLMWonY() + wYeekVayHI() + OqyIbJmPgGDee() + OqyIbJmPgGDee() + GOcTrRyFf() + nCsnWyINyGOwcmh() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh()) + e.getMessage());
                e.printStackTrace();
            }
        }
        if (FileExists(listFiles, wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + aSnXVNjdyYFRgj() + irrWbaRfIq() + irrWbaRfIq() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI())) {
            try {
                String path2 = context.getObbDir().getAbsolutePath() + (cGdRTHFigN());
                Log.i(packageName2, wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + aSnXVNjdyYFRgj() + irrWbaRfIq() + irrWbaRfIq() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + IwTEtFCFcpEbI() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + PokYmotdbVLTT() + LhbvuJmoRFggf() + nCsnWyINyGOwcmh() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ());
                unZipIt(assetManager.open(wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + aSnXVNjdyYFRgj() + irrWbaRfIq() + irrWbaRfIq() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI()), path2);
                Log.i(packageName2, wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + aSnXVNjdyYFRgj() + irrWbaRfIq() + irrWbaRfIq() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + xuuNIokl() + PntMkCewIH() + rHeCVtxbrTuT() + rHeCVtxbrTuT() + wYeekVayHI() + OqyIbJmPgGDee() + OqyIbJmPgGDee() + hgAabdOK() + PntMkCewIH() + pkFsMXomoBtjn() + pkFsMXomoBtjn() + eWHxPRaCwRy() + AUNGvkQuXIUkh() + VDqNwTRkUytk() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + wYeekVayHI() + ssQgNAksjc());
            } catch (Exception e2) {
                Toast.makeText(context, cNYgeaIWRqU() + VDqNwTRkUytk() + VDqNwTRkUytk() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + bcGqSkyMfydqE() + GOcTrRyFf() + LhbvuJmoRFggf() + rIimNxwrnVJ() + extNoYSClF() + AUNGvkQuXIUkh() + VDqNwTRkUytk() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + wYeekVayHI() + AUNGvkQuXIUkh() + aSnXVNjdyYFRgj() + irrWbaRfIq() + irrWbaRfIq(), 1);
                Log.e(packageName2, (wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + aSnXVNjdyYFRgj() + irrWbaRfIq() + irrWbaRfIq() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + QRRLMWonY() + wYeekVayHI() + OqyIbJmPgGDee() + OqyIbJmPgGDee() + GOcTrRyFf() + nCsnWyINyGOwcmh() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh()) + e2.getMessage());
                e2.printStackTrace();
            }
        }
        if (FileExists(listFiles, wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI())) {
            try {
                String path3 = Environment.getExternalStorageDirectory() + (cGdRTHFigN() + qtsTfIEQoLECIc() + LhbvuJmoRFggf() + ssQgNAksjc() + VDqNwTRkUytk() + aSnXVNjdyYFRgj() + PokYmotdbVLTT() + ssQgNAksjc() + cGdRTHFigN() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + cGdRTHFigN()) + context.getPackageName() + (cGdRTHFigN());
                Log.i(packageName2, wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + IwTEtFCFcpEbI() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + PokYmotdbVLTT() + LhbvuJmoRFggf() + nCsnWyINyGOwcmh() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ());
                unZipIt(assetManager.open(wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI()), path3);
                Log.i(packageName2, wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + xuuNIokl() + PntMkCewIH() + rHeCVtxbrTuT() + rHeCVtxbrTuT() + wYeekVayHI() + OqyIbJmPgGDee() + OqyIbJmPgGDee() + hgAabdOK() + PntMkCewIH() + pkFsMXomoBtjn() + pkFsMXomoBtjn() + eWHxPRaCwRy() + AUNGvkQuXIUkh() + VDqNwTRkUytk() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + wYeekVayHI() + ssQgNAksjc());
            } catch (Exception e3) {
                Toast.makeText(context, cNYgeaIWRqU() + VDqNwTRkUytk() + VDqNwTRkUytk() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + bcGqSkyMfydqE() + GOcTrRyFf() + LhbvuJmoRFggf() + rIimNxwrnVJ() + extNoYSClF() + AUNGvkQuXIUkh() + VDqNwTRkUytk() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + wYeekVayHI() + AUNGvkQuXIUkh() + wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + wYeekVayHI() + VDqNwTRkUytk() + LhbvuJmoRFggf() + GOcTrRyFf() + pkFsMXomoBtjn() + AUNGvkQuXIUkh() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + mfkeoAFKxJ() + mfkeoAFKxJ(), 1);
                Log.e(packageName2, (wYeekVayHI() + vPniTJBrVO() + extNoYSClF() + ssQgNAksjc() + GOcTrRyFf() + extNoYSClF() + GOcTrRyFf() + mfkeoAFKxJ() + OqyIbJmPgGDee() + GOcTrRyFf() + STyWNcvBrcgCIP() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh() + QRRLMWonY() + wYeekVayHI() + OqyIbJmPgGDee() + OqyIbJmPgGDee() + GOcTrRyFf() + nCsnWyINyGOwcmh() + wYeekVayHI() + OLNlDldTfqbj() + AUNGvkQuXIUkh()) + e3.getMessage());
                e3.printStackTrace();
            }
        }
        Log.i(packageName2, IwTEtFCFcpEbI() + wYeekVayHI() + OqyIbJmPgGDee() + extNoYSClF() + aSnXVNjdyYFRgj() + VDqNwTRkUytk() + PokYmotdbVLTT() + LhbvuJmoRFggf() + nCsnWyINyGOwcmh() + AUNGvkQuXIUkh() + rHeCVtxbrTuT() + aSnXVNjdyYFRgj() + HyeXlOEN() + xpAfvjYnWD() + pkFsMXomoBtjn() + wYeekVayHI() + extNoYSClF() + wYeekVayHI() + ssQgNAksjc());
    }

    private static void wPdauIdcaW(Context c) {
        vbHkPgcUWs();
    }
}
