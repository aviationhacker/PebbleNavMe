package com.google.android.gms.playlog.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zza extends IInterface {

    /* JADX INFO: renamed from: com.google.android.gms.playlog.internal.zza$zza, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0010zza extends Binder implements zza {

        /* JADX INFO: renamed from: com.google.android.gms.playlog.internal.zza$zza$a */
        static class a implements zza {
            private IBinder a;

            a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.google.android.gms.playlog.internal.zza
            public void zza(String str, PlayLoggerContext playLoggerContext, LogEvent logEvent) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
                    parcelObtain.writeString(str);
                    if (playLoggerContext != null) {
                        parcelObtain.writeInt(1);
                        playLoggerContext.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (logEvent != null) {
                        parcelObtain.writeInt(1);
                        logEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.playlog.internal.zza
            public void zza(String str, PlayLoggerContext playLoggerContext, List<LogEvent> list) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
                    parcelObtain.writeString(str);
                    if (playLoggerContext != null) {
                        parcelObtain.writeInt(1);
                        playLoggerContext.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeTypedList(list);
                    this.a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.playlog.internal.zza
            public void zza(String str, PlayLoggerContext playLoggerContext, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
                    parcelObtain.writeString(str);
                    if (playLoggerContext != null) {
                        parcelObtain.writeInt(1);
                        playLoggerContext.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeByteArray(bArr);
                    this.a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static zza zzdz(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.playlog.internal.IPlayLogService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zza)) ? new a(iBinder) : (zza) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? PlayLoggerContext.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? LogEvent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? PlayLoggerContext.CREATOR.createFromParcel(parcel) : null, parcel.createTypedArrayList(LogEvent.CREATOR));
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? PlayLoggerContext.CREATOR.createFromParcel(parcel) : null, parcel.createByteArray());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.playlog.internal.IPlayLogService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(String str, PlayLoggerContext playLoggerContext, LogEvent logEvent);

    void zza(String str, PlayLoggerContext playLoggerContext, List<LogEvent> list);

    void zza(String str, PlayLoggerContext playLoggerContext, byte[] bArr);
}
