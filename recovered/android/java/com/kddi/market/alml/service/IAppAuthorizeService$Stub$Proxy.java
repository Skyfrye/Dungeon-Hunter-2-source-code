package com.kddi.market.alml.service;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
final class IAppAuthorizeService$Stub$Proxy implements IAppAuthorizeService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IBinder f226a;

    IAppAuthorizeService$Stub$Proxy(IBinder iBinder) {
        this.f226a = iBinder;
    }

    private static String getInterfaceDescriptor() {
        return "com.kddi.market.alml.service.IAppAuthorizeService";
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void a(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            this.f226a.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            this.f226a.transact(4, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, long j, String str2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            parcelObtain.writeLong(j);
            parcelObtain.writeString(str2);
            this.f226a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            parcelObtain.writeString(str2);
            this.f226a.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            parcelObtain.writeString(str2);
            parcelObtain.writeString(str3);
            parcelObtain.writeString(str4);
            parcelObtain.writeInt(i);
            this.f226a.transact(6, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, String str5) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            parcelObtain.writeString(str2);
            parcelObtain.writeString(str3);
            parcelObtain.writeString(str4);
            parcelObtain.writeString(str5);
            this.f226a.transact(7, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, String str5, String str6) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            parcelObtain.writeString(str2);
            parcelObtain.writeString(str3);
            parcelObtain.writeString(str4);
            parcelObtain.writeString(str5);
            parcelObtain.writeString(str6);
            this.f226a.transact(8, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void a(String str, String str2, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, boolean z) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            parcelObtain.writeInt(z ? 1 : 0);
            this.f226a.transact(12, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f226a;
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void b(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            this.f226a.transact(5, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void b(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            parcelObtain.writeString(str2);
            parcelObtain.writeString(str3);
            parcelObtain.writeString(str4);
            parcelObtain.writeInt(i);
            this.f226a.transact(9, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void c(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            this.f226a.transact(11, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.kddi.market.alml.service.IAppAuthorizeService
    public final void c(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.kddi.market.alml.service.IAppAuthorizeService");
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(iAppAuthorizeServiceCallback != null ? iAppAuthorizeServiceCallback.asBinder() : null);
            parcelObtain.writeString(str2);
            parcelObtain.writeString(str3);
            parcelObtain.writeString(str4);
            parcelObtain.writeInt(i);
            this.f226a.transact(10, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
