package com.samsung.zirconia;

/* JADX INFO: loaded from: classes.dex */
class Zirconia$CheckerRunnable implements Runnable {
    final /* synthetic */ Zirconia this$0;

    private Zirconia$CheckerRunnable(Zirconia zirconia) {
        this.this$0 = zirconia;
    }

    /* synthetic */ Zirconia$CheckerRunnable(Zirconia zirconia, Zirconia$CheckerRunnable zirconia$CheckerRunnable) {
        this(zirconia);
    }

    boolean checkLicenseFile() {
        NativeInterface.checkLicenseFile(Zirconia.access$9(this.this$0), Zirconia.access$4(this.this$0), Zirconia.access$5(this.this$0));
        return true;
    }

    boolean checkLicenseFilePhase2() {
        NativeInterface.checkLicenseFile2(Zirconia.access$9(this.this$0), Zirconia.access$3(this.this$0).getPackageCodePath());
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00b1  */
    void checkerThreadWorker() {
        boolean z;
        Zirconia.access$0(this.this$0, 11);
        if (checkLicenseFile()) {
            if (checkLicenseFilePhase2()) {
                Zirconia.access$0(this.this$0, 0);
                z = true;
            } else {
                Zirconia.access$0(this.this$0, 82);
                Zirconia.access$1(this.this$0, true);
                z = false;
            }
        } else if (Zirconia.access$2(this.this$0)) {
            z = false;
        } else {
            Zirconia.access$0(this.this$0, new LicenseRetriever(Zirconia.access$4(this.this$0), Zirconia.access$5(this.this$0), Zirconia.access$6(this.this$0), Zirconia.access$7(this.this$0), Zirconia.access$8(this.this$0), Zirconia.access$9(this.this$0), Zirconia.access$3(this.this$0).getPackageCodePath()).retrieveLicense());
            if (Zirconia.access$10(this.this$0) == 50 && checkLicenseFile()) {
                Zirconia.access$0(this.this$0, 0);
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            if (Zirconia.access$11(this.this$0) != null) {
                Zirconia.access$11(this.this$0).licenseCheckedAsValid();
            }
        } else if (Zirconia.access$11(this.this$0) != null) {
            Zirconia.access$11(this.this$0).licenseCheckedAsInvalid();
        }
        Zirconia.access$12(this.this$0, false);
    }

    @Override // java.lang.Runnable
    public void run() {
        checkerThreadWorker();
    }
}
