package com.samsungapps.plasma;

import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
final class c {
    private static c b = null;
    private static final String c = "en_US.properties";
    private static final String d = "i18n/";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Properties f277a;

    private c() {
        InputStream resourceAsStream = null;
        this.f277a = null;
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String str = language + "_" + locale.getCountry();
        a.a("Loading i18n for " + str);
        String str2 = str + ".properties";
        try {
            ClassLoader classLoader = getClass().getClassLoader();
            resourceAsStream = classLoader.getResourceAsStream(d + str2);
            if (resourceAsStream == null) {
                resourceAsStream = classLoader.getResourceAsStream(d + (language + ".properties"));
            }
            resourceAsStream = resourceAsStream == null ? classLoader.getResourceAsStream("i18n/en_US.properties") : resourceAsStream;
            if (resourceAsStream != null) {
                this.f277a = new Properties();
                this.f277a.load(resourceAsStream);
            }
        } catch (IOException e) {
            a.a(e);
        } finally {
            if (resourceAsStream != null) {
                try {
                    resourceAsStream.close();
                } catch (IOException e2) {
                }
            }
        }
    }

    private static c a() {
        if (b == null) {
            b = new c();
        }
        return b;
    }

    static String a(String str) {
        return a().b(str);
    }

    private String b(String str) {
        return this.f277a == null ? str : this.f277a.getProperty(str, str);
    }
}
