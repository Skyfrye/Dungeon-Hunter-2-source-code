package com.samsung.zirconia;

class NativeInterface {
    static {
        // Deviation from the dex: the original loads the separate arm32 libnativeinterface.so. Its four natives were
        // reconstructed into libDungeonHunter2.so (same Java_com_samsung_zirconia_NativeInterface_* exports), so load that.
        System.loadLibrary("DungeonHunter2");
    }

    NativeInterface() {
    }

    public static native boolean checkLicenseFile(String str, String str2, String str3);

    public static native boolean checkLicenseFile2(String str, String str2);

    public static native String doPassphraseTest(String str, String str2);

    public static native boolean storeLicenseKey(String str, byte[] bArr, String str2);
}
