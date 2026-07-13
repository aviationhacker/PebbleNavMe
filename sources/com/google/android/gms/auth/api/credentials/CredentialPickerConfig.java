package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class CredentialPickerConfig implements SafeParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new zzb();
    final int a;
    private final boolean b;
    private final boolean c;

    public static class Builder {
        private boolean a = false;
        private boolean b = true;

        public CredentialPickerConfig build() {
            return new CredentialPickerConfig(this);
        }

        public Builder setShowAddAccountButton(boolean z) {
            this.a = z;
            return this;
        }

        public Builder setShowCancelButton(boolean z) {
            this.b = z;
            return this;
        }
    }

    CredentialPickerConfig(int i, boolean z, boolean z2) {
        this.a = i;
        this.b = z;
        this.c = z2;
    }

    private CredentialPickerConfig(Builder builder) {
        this(1, builder.a, builder.b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean shouldShowAddAccountButton() {
        return this.b;
    }

    public boolean shouldShowCancelButton() {
        return this.c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.a(this, parcel, i);
    }
}
