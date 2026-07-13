package com.batescorp.pebble.nav.lib;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.batescorp.pebble.nav.processor.NavDirectionIcon;

/* JADX INFO: loaded from: classes.dex */
public class NotificationData implements Parcelable {
    public static final Parcelable.Creator<NotificationData> CREATOR = new Parcelable.Creator<NotificationData>() { // from class: com.batescorp.pebble.nav.lib.NotificationData.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NotificationData createFromParcel(Parcel parcel) {
            return new NotificationData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NotificationData[] newArray(int i) {
            return new NotificationData[i];
        }
    };
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final NavDirectionIcon f;

    public static NotificationData createInstance(Context context, NotificationHandler notificationHandler) {
        return new NotificationData(context, notificationHandler);
    }

    private NotificationData(Context context, NotificationHandler notificationHandler) {
        this.a = notificationHandler.getPackageName();
        this.b = notificationHandler.getNavTitle();
        this.c = notificationHandler.getNavDescription();
        this.d = notificationHandler.getNavHtmlDescription();
        this.e = notificationHandler.getNavTime();
        this.f = NavDirectionIcon.fromBitmap(context, notificationHandler.getNavBitmap());
    }

    private NotificationData(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = NavDirectionIcon.fromInt(parcel.readInt());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeInt(this.f.ordinal());
    }

    public NavDirectionIcon getNavImage() {
        return this.f;
    }

    public String getNavTitle() {
        return this.b;
    }

    public String getNavDescription() {
        return this.c;
    }

    public String getNavHtmlDescription() {
        return this.d;
    }

    public String getNavTime() {
        return this.e;
    }

    public String getPackageName() {
        return this.a;
    }
}
