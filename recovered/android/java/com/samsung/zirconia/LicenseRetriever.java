package com.samsung.zirconia;

import com.gameloft.android.GAND.GloftD2SS.installer.u;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: classes.dex */
class LicenseRetriever {
    private String applicationID;
    private String deviceIMEI;
    private String deviceIMSI;
    private String deviceMIN;
    private String deviceModel;
    private int errorCode = 0;
    private String executableFilePath;
    private URL httpURL;
    private HttpURLConnection httpUrlConnection;
    private String licenseFilePath;
    private int numRedirects;

    static {
        disableSSLCertificateChecking();
    }

    public LicenseRetriever(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.deviceIMEI = str;
        this.applicationID = str2;
        this.deviceIMSI = str3;
        this.deviceModel = str4;
        this.deviceMIN = str5;
        this.licenseFilePath = str6;
        this.executableFilePath = str7;
    }

    private void close() {
        this.httpURL = null;
        if (this.httpUrlConnection != null) {
            this.httpUrlConnection.disconnect();
        }
        this.httpUrlConnection = null;
    }

    private static void disableSSLCertificateChecking() {
        TrustManager[] trustManagerArr = {new LicenseRetriever$1()};
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (KeyManagementException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
    }

    private String makeParameter() {
        return String.format("deviceid=%s&applicationid=%s&subscriberid=%s&model=%s&min=%s&version=%s", urlEncode(this.deviceIMEI), urlEncode(this.applicationID), urlEncode(this.deviceIMSI), urlEncode(this.deviceModel), urlEncode(this.deviceMIN), urlEncode(String.format("%02d%03d", 1, 120)));
    }

    private void open() {
        String str = "POST".compareToIgnoreCase("GET") == 0 ? String.valueOf("https://zirconia.samsungapps.com:443/chkLicense.as") + "?" + makeParameter() : "https://zirconia.samsungapps.com:443/chkLicense.as";
        this.numRedirects = 0;
        this.httpURL = new URL(str);
        this.httpUrlConnection = null;
        HttpURLConnection.setFollowRedirects(false);
    }

    private void receiveResponse() throws IOException, LicenseRetriever$LicenseRetrieverException {
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(this.httpUrlConnection.getInputStream()));
        byte[] bArr = new byte[u.m];
        dataInputStream.read(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[12];
        System.arraycopy(bArr, 0, bArr2, 0, 11);
        String str = new String(bArr2);
        if (!str.startsWith("ZrO2")) {
            this.errorCode = 71;
            throw new LicenseRetriever$LicenseRetrieverException(this, null);
        }
        int iIntValue = Integer.valueOf(str.substring(9, 11)).intValue();
        if (iIntValue != iIntValue) {
            this.errorCode = iIntValue;
            throw new LicenseRetriever$LicenseRetrieverException(this, null);
        }
        byte[] bArr3 = new byte[40];
        System.arraycopy(bArr, 11, bArr3, 0, 20);
        if (NativeInterface.storeLicenseKey(this.licenseFilePath, bArr3, this.executableFilePath)) {
            this.errorCode = 50;
        } else {
            this.errorCode = 81;
            throw new LicenseRetriever$LicenseRetrieverException(this, null);
        }
    }

    private void sendRequest() throws IOException {
        while (true) {
            this.httpUrlConnection = (HttpURLConnection) this.httpURL.openConnection();
            this.httpUrlConnection.setRequestProperty("Acceept", "*/*");
            this.httpUrlConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            this.httpUrlConnection.setRequestProperty("User-agent", "ZrO2-ADR");
            this.httpUrlConnection.setDefaultUseCaches(false);
            this.httpUrlConnection.setUseCaches(false);
            if (this.numRedirects == 0 && "POST".compareToIgnoreCase("POST") == 0) {
                String strMakeParameter = makeParameter();
                this.httpUrlConnection.setDoOutput(true);
                this.httpUrlConnection.setRequestMethod("POST");
                OutputStream outputStream = this.httpUrlConnection.getOutputStream();
                outputStream.write(strMakeParameter.getBytes("UTF-8"));
                outputStream.flush();
                outputStream.close();
            }
            int responseCode = this.httpUrlConnection.getResponseCode();
            if (responseCode < 300 || responseCode > 307 || responseCode == 306 || responseCode == 304) {
                return;
            }
            URL url = this.httpUrlConnection.getURL();
            String headerField = this.httpUrlConnection.getHeaderField("Location");
            if (headerField != null) {
                this.httpURL = new URL(url, headerField);
            }
            this.httpUrlConnection.disconnect();
            if (this.httpURL == null || this.numRedirects >= 5) {
                throw new SecurityException("illegal URL redirect");
            }
            this.numRedirects++;
        }
    }

    private String urlEncode(String str) {
        return URLEncoder.encode(str).replaceAll("\\+", "%20");
    }

    public int retrieveLicense() {
        try {
            this.errorCode = 62;
            open();
            sendRequest();
            this.errorCode = 61;
            receiveResponse();
            close();
        } catch (LicenseRetriever$LicenseRetrieverException e) {
        } catch (MalformedURLException e2) {
        } catch (IOException e3) {
        }
        return this.errorCode;
    }
}
