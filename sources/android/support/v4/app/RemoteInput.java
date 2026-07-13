package android.support.v4.app;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;
import android.util.Log;
import defpackage.ae;
import defpackage.af;

/* JADX INFO: loaded from: classes.dex */
public class RemoteInput extends RemoteInputCompatBase.RemoteInput {
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    public static final RemoteInputCompatBase.RemoteInput.Factory FACTORY;
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    private static final a f;
    private final String a;
    private final CharSequence b;
    private final CharSequence[] c;
    private final boolean d;
    private final Bundle e;

    interface a {
        Bundle a(Intent intent);

        void a(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle);
    }

    RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle) {
        this.a = str;
        this.b = charSequence;
        this.c = charSequenceArr;
        this.d = z;
        this.e = bundle;
    }

    @Override // android.support.v4.app.RemoteInputCompatBase.RemoteInput
    public String getResultKey() {
        return this.a;
    }

    @Override // android.support.v4.app.RemoteInputCompatBase.RemoteInput
    public CharSequence getLabel() {
        return this.b;
    }

    @Override // android.support.v4.app.RemoteInputCompatBase.RemoteInput
    public CharSequence[] getChoices() {
        return this.c;
    }

    @Override // android.support.v4.app.RemoteInputCompatBase.RemoteInput
    public boolean getAllowFreeFormInput() {
        return this.d;
    }

    @Override // android.support.v4.app.RemoteInputCompatBase.RemoteInput
    public Bundle getExtras() {
        return this.e;
    }

    public static final class Builder {
        private final String a;
        private CharSequence b;
        private CharSequence[] c;
        private boolean d = true;
        private Bundle e = new Bundle();

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.a = str;
        }

        public Builder setLabel(CharSequence charSequence) {
            this.b = charSequence;
            return this;
        }

        public Builder setChoices(CharSequence[] charSequenceArr) {
            this.c = charSequenceArr;
            return this;
        }

        public Builder setAllowFreeFormInput(boolean z) {
            this.d = z;
            return this;
        }

        public Builder addExtras(Bundle bundle) {
            if (bundle != null) {
                this.e.putAll(bundle);
            }
            return this;
        }

        public Bundle getExtras() {
            return this.e;
        }

        public RemoteInput build() {
            return new RemoteInput(this.a, this.b, this.c, this.d, this.e);
        }
    }

    public static Bundle getResultsFromIntent(Intent intent) {
        return f.a(intent);
    }

    public static void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
        f.a(remoteInputArr, intent, bundle);
    }

    static class c implements a {
        c() {
        }

        @Override // android.support.v4.app.RemoteInput.a
        public Bundle a(Intent intent) {
            Log.w("RemoteInput", "RemoteInput is only supported from API Level 16");
            return null;
        }

        @Override // android.support.v4.app.RemoteInput.a
        public void a(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
            Log.w("RemoteInput", "RemoteInput is only supported from API Level 16");
        }
    }

    static class d implements a {
        d() {
        }

        @Override // android.support.v4.app.RemoteInput.a
        public Bundle a(Intent intent) {
            return af.a(intent);
        }

        @Override // android.support.v4.app.RemoteInput.a
        public void a(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
            af.a(remoteInputArr, intent, bundle);
        }
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.app.RemoteInput.a
        public Bundle a(Intent intent) {
            return ae.a(intent);
        }

        @Override // android.support.v4.app.RemoteInput.a
        public void a(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
            ae.a(remoteInputArr, intent, bundle);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 20) {
            f = new b();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f = new d();
        } else {
            f = new c();
        }
        FACTORY = new RemoteInputCompatBase.RemoteInput.Factory() { // from class: android.support.v4.app.RemoteInput.1
            @Override // android.support.v4.app.RemoteInputCompatBase.RemoteInput.Factory
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public RemoteInput build(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle) {
                return new RemoteInput(str, charSequence, charSequenceArr, z, bundle);
            }

            @Override // android.support.v4.app.RemoteInputCompatBase.RemoteInput.Factory
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public RemoteInput[] newArray(int i) {
                return new RemoteInput[i];
            }
        };
    }
}
