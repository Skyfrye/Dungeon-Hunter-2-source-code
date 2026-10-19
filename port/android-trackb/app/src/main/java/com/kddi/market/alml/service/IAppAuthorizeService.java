package com.kddi.market.alml.service;

import android.os.RemoteException;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface IAppAuthorizeService extends IInterface {

    public abstract class Stub extends Binder implements IAppAuthorizeService {

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

        static final class Proxy implements IAppAuthorizeService {

            private IBinder f226a;

            Proxy(IBinder iBinder) {
                this.f226a = iBinder;
            }

            private static String getInterfaceDescriptor() {
                return Stub.m;
            }

            @Override // com.kddi.market.alml.service.IAppAuthorizeService
            public final void a(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
                    parcelObtain.writeString(str);
                    this.f226a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.kddi.market.alml.service.IAppAuthorizeService
            public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, long j, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, String str5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, String str5, String str6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void a(String str, String str2, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void b(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void b(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void c(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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
            public final void c(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.m);
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

        public Stub() {
            attachInterface(this, m);
        }

        public static IAppAuthorizeService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(m);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAppAuthorizeService)) ? new Proxy(iBinder) : (IAppAuthorizeService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            switch (i2) {
                case 1:
                    parcel.enforceInterface(m);
                    a(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(m);
                    a(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(m);
                    a(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(m);
                    a(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(m);
                    b(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(m);
                    a(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(m);
                    a(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(m);
                    a(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(m);
                    b(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(m);
                    c(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(m);
                    c(parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(m);
                    a(parcel.readString(), parcel.readString(), IAppAuthorizeServiceCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
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

    void a(String str) throws RemoteException;

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) throws RemoteException;

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, long j, String str2) throws RemoteException;

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2) throws RemoteException;

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) throws RemoteException;

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, String str5) throws RemoteException;

    void a(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, String str5, String str6) throws RemoteException;

    void a(String str, String str2, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, boolean z) throws RemoteException;

    void b(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) throws RemoteException;

    void b(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) throws RemoteException;

    void c(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback) throws RemoteException;

    void c(String str, IAppAuthorizeServiceCallback iAppAuthorizeServiceCallback, String str2, String str3, String str4, int i) throws RemoteException;
}
