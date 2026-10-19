package com.kddi.market.alml.service;

import android.os.RemoteException;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.Map;

public interface IAppAuthorizeServiceCallback extends IInterface {

    public abstract class Stub extends Binder implements IAppAuthorizeServiceCallback {

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

        static final class Proxy implements IAppAuthorizeServiceCallback {

            private IBinder f228a;

            Proxy(IBinder iBinder) {
                this.f228a = iBinder;
            }

            private static String getInterfaceDescriptor() {
                return Stub.f227a;
            }

            @Override // com.kddi.market.alml.service.IAppAuthorizeServiceCallback
            public final void a(int i, String str, String str2, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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
            public final void a(int i, String str, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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
            public final void a(int i, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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
            public final void b(int i, String str, String str2, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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
            public final void b(int i, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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
            public final void c(int i, String str, String str2, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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
            public final void c(int i, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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
            public final void d(int i, String str, String str2, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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
            public final void e(int i, String str, String str2, Map map) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.f227a);
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

        public Stub() {
            attachInterface(this, f227a);
        }

        public static IAppAuthorizeServiceCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f227a);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAppAuthorizeServiceCallback)) ? new Proxy(iBinder) : (IAppAuthorizeServiceCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
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

    void a(int i, String str, String str2, Map map) throws RemoteException;

    void a(int i, String str, Map map) throws RemoteException;

    void a(int i, Map map) throws RemoteException;

    void b(int i, String str, String str2, Map map) throws RemoteException;

    void b(int i, Map map) throws RemoteException;

    void c(int i, String str, String str2, Map map) throws RemoteException;

    void c(int i, Map map) throws RemoteException;

    void d(int i, String str, String str2, Map map) throws RemoteException;

    void e(int i, String str, String str2, Map map) throws RemoteException;
}
