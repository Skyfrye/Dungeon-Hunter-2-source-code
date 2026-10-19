package com.kddi.market.alml.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class IAppAuthorizeService$Stub extends Binder implements IAppAuthorizeService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f225a = 1;
    static final int b = 2;
    static final int c = 3;
    static final int d = 4;
    static final int e = 5;
    static final int f = 6;
    static final int g = 7;
    static final int h = 8;
    static final int i = 9;
    static final int j = 10;
    static final int k = 11;
    static final int l = 12;
    private static final String m = "com.kddi.market.alml.service.IAppAuthorizeService";

    public IAppAuthorizeService$Stub() {
        attachInterface(this, m);
    }

    public static IAppAuthorizeService asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(m);
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAppAuthorizeService)) ? new IAppAuthorizeService$Stub$Proxy(iBinder) : (IAppAuthorizeService) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                parcel.enforceInterface(m);
                a(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readLong(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface(m);
                a(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 3:
                parcel.enforceInterface(m);
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface(m);
                a(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                parcel.enforceInterface(m);
                b(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                parcel.enforceInterface(m);
                a(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 7:
                parcel.enforceInterface(m);
                a(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 8:
                parcel.enforceInterface(m);
                a(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 9:
                parcel.enforceInterface(m);
                b(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 10:
                parcel.enforceInterface(m);
                c(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 11:
                parcel.enforceInterface(m);
                c(parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                parcel.enforceInterface(m);
                a(parcel.readString(), parcel.readString(), IAppAuthorizeServiceCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString(m);
                return true;
            default:
                return super.onTransact(i2, parcel, parcel2, i3);
        }
    }
}
