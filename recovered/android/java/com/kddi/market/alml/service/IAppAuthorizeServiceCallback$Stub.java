package com.kddi.market.alml.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class IAppAuthorizeServiceCallback$Stub extends Binder implements IAppAuthorizeServiceCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f227a = "com.kddi.market.alml.service.IAppAuthorizeServiceCallback";
    static final int b = 1;
    static final int c = 2;
    static final int d = 3;
    static final int e = 4;
    static final int f = 5;
    static final int g = 6;
    static final int h = 7;
    static final int i = 8;
    static final int j = 9;

    public IAppAuthorizeServiceCallback$Stub() {
        attachInterface(this, f227a);
    }

    public static IAppAuthorizeServiceCallback asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f227a);
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAppAuthorizeServiceCallback)) ? new IAppAuthorizeServiceCallback$Stub$Proxy(iBinder) : (IAppAuthorizeServiceCallback) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                parcel.enforceInterface(f227a);
                a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface(f227a);
                a(parcel.readInt(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 3:
                parcel.enforceInterface(f227a);
                b(parcel.readInt(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface(f227a);
                b(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 5:
                parcel.enforceInterface(f227a);
                c(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 6:
                parcel.enforceInterface(f227a);
                d(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 7:
                parcel.enforceInterface(f227a);
                c(parcel.readInt(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 8:
                parcel.enforceInterface(f227a);
                a(parcel.readInt(), parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 9:
                parcel.enforceInterface(f227a);
                e(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString(f227a);
                return true;
            default:
                return super.onTransact(i2, parcel, parcel2, i3);
        }
    }
}
