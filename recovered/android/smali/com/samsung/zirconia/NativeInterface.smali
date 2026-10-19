.class Lcom/samsung/zirconia/NativeInterface;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nativeinterface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkLicenseFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native checkLicenseFile2(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native doPassphraseTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native storeLicenseKey(Ljava/lang/String;[BLjava/lang/String;)Z
.end method
