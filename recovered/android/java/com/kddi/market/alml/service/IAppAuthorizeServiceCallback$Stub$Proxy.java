package com.kddi.market.alml.service;

import android.os.IBinder;
import android.os.Parcel;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class IAppAuthorizeServiceCallback$Stub$Proxy implements IAppAuthorizeServiceCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IBinder f228a;

    IAppAuthorizeServiceCallback$Stub$Proxy(IBinder iBinder) {
        this.f228a = iBinder;
    }

    private static String getInterfaceDescriptor() {
        return "com.kddi.market.alml.service.IAppAuthorizeServiceCallback";
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, String str, String str2, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeMap(map);
            this.f228a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, String str, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeString(str);
            parcelObtain.writeMap(map);
            this.f228a.transact(8, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void a(int i, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeMap(map);
            this.f228a.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f228a;
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void b(int i, String str, String str2, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeMap(map);
            this.f228a.transact(4, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void b(int i, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeMap(map);
            this.f228a.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void c(int i, String str, String str2, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeMap(map);
            this.f228a.transact(5, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void c(int i, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeMap(map);
            this.f228a.transact(7, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void d(int i, String str, String str2, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeMap(map);
            this.f228a.transact(6, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
    public final void e(int i, String str, String str2, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeServiceCallback");
            parcelObtain.writeInt(i);
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeMap(map);
            this.f228a.transact(9, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
