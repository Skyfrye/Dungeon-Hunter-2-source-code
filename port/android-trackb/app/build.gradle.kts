plugins {
    id("com.android.application")
}

android {
    namespace = "com.gameloft.android.GAND.GloftD2SS"
    compileSdk {
        version = release(37)
    }

    defaultConfig {
        applicationId = "com.gameloft.android.GAND.GloftD2SS"
        minSdk = 26
        // Port (SDK1): 35 (was 28). The Java was audited for the 28 -> 35 behaviour changes (PortCompat.java: receiver flags, Bluetooth runtime
        // permissions, PendingIntent mutability; ScreenFit.java: edge-to-edge/cutout; telephony in Phone.java). The data root stays the app-specific
        // external dir. tools/trackb/android/build_release.py builds the origdex variant (unpatched original dex) at 28.
        targetSdk = 35
        versionCode = 102
        versionName = "1.0.2"
        ndk { abiFilters += listOf("arm64-v8a") }
    }

    // org.apache.http.* left android.jar in API 28; GLiveMain and the installer still use it.
    useLibrary("org.apache.http.legacy")

    // The APK's *.9.png come in compiled form (npTc chunk); import_resources.py renames them to .png, they must be copied untouched.
    buildTypes {
        debug { isCrunchPngs = false }
        release {
            isCrunchPngs = false
            isMinifyEnabled = false
            signingConfig = signingConfigs.getByName("debug")
        }
    }
    compileOptions {
        // jadx-style reconstruction uses static members in inner classes (Java 16+); d8 desugars for minSdk 26.
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    lint {
        abortOnError = false
        checkReleaseBuilds = false
    }
    packaging { jniLibs { useLegacyPackaging = false } }
}

tasks.withType<JavaCompile>().configureEach {
    options.encoding = "UTF-8"
    options.compilerArgs.addAll(listOf("-Xlint:none", "-nowarn"))
}
