package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public abstract class zza<T extends LifecycleDelegate> {
    private T a;
    private Bundle b;
    private LinkedList<a> c;
    private final zzf<T> d = (zzf<T>) new zzf<T>() { // from class: com.google.android.gms.dynamic.zza.1
        @Override // com.google.android.gms.dynamic.zzf
        public void zza(T t) {
            zza.this.a = t;
            Iterator it = zza.this.c.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a(zza.this.a);
            }
            zza.this.c.clear();
            zza.this.b = null;
        }
    };

    interface a {
        int a();

        void a(LifecycleDelegate lifecycleDelegate);
    }

    private void a(int i) {
        while (!this.c.isEmpty() && this.c.getLast().a() >= i) {
            this.c.removeLast();
        }
    }

    private void a(Bundle bundle, a aVar) {
        if (this.a != null) {
            aVar.a(this.a);
            return;
        }
        if (this.c == null) {
            this.c = new LinkedList<>();
        }
        this.c.add(aVar);
        if (bundle != null) {
            if (this.b == null) {
                this.b = (Bundle) bundle.clone();
            } else {
                this.b.putAll(bundle);
            }
        }
        zza(this.d);
    }

    public static void zzb(FrameLayout frameLayout) {
        final Context context = frameLayout.getContext();
        final int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        String strZzc = com.google.android.gms.common.internal.zzg.zzc(context, iIsGooglePlayServicesAvailable, GooglePlayServicesUtil.zzaf(context));
        String strZzh = com.google.android.gms.common.internal.zzg.zzh(context, iIsGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(strZzc);
        linearLayout.addView(textView);
        if (strZzh != null) {
            Button button = new Button(context);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(strZzh);
            linearLayout.addView(button);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.dynamic.zza.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    context.startActivity(GooglePlayServicesUtil.zzbj(iIsGooglePlayServicesAvailable));
                }
            });
        }
    }

    public void onCreate(final Bundle bundle) {
        a(bundle, new a() { // from class: com.google.android.gms.dynamic.zza.3
            @Override // com.google.android.gms.dynamic.zza.a
            public int a() {
                return 1;
            }

            @Override // com.google.android.gms.dynamic.zza.a
            public void a(LifecycleDelegate lifecycleDelegate) {
                zza.this.a.onCreate(bundle);
            }
        });
    }

    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        a(bundle, new a() { // from class: com.google.android.gms.dynamic.zza.4
            @Override // com.google.android.gms.dynamic.zza.a
            public int a() {
                return 2;
            }

            @Override // com.google.android.gms.dynamic.zza.a
            public void a(LifecycleDelegate lifecycleDelegate) {
                frameLayout.removeAllViews();
                frameLayout.addView(zza.this.a.onCreateView(layoutInflater, viewGroup, bundle));
            }
        });
        if (this.a == null) {
            zza(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        if (this.a != null) {
            this.a.onDestroy();
        } else {
            a(1);
        }
    }

    public void onDestroyView() {
        if (this.a != null) {
            this.a.onDestroyView();
        } else {
            a(2);
        }
    }

    public void onInflate(final Activity activity, final Bundle bundle, final Bundle bundle2) {
        a(bundle2, new a() { // from class: com.google.android.gms.dynamic.zza.2
            @Override // com.google.android.gms.dynamic.zza.a
            public int a() {
                return 0;
            }

            @Override // com.google.android.gms.dynamic.zza.a
            public void a(LifecycleDelegate lifecycleDelegate) {
                zza.this.a.onInflate(activity, bundle, bundle2);
            }
        });
    }

    public void onLowMemory() {
        if (this.a != null) {
            this.a.onLowMemory();
        }
    }

    public void onPause() {
        if (this.a != null) {
            this.a.onPause();
        } else {
            a(5);
        }
    }

    public void onResume() {
        a((Bundle) null, new a() { // from class: com.google.android.gms.dynamic.zza.7
            @Override // com.google.android.gms.dynamic.zza.a
            public int a() {
                return 5;
            }

            @Override // com.google.android.gms.dynamic.zza.a
            public void a(LifecycleDelegate lifecycleDelegate) {
                zza.this.a.onResume();
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.a != null) {
            this.a.onSaveInstanceState(bundle);
        } else if (this.b != null) {
            bundle.putAll(this.b);
        }
    }

    public void onStart() {
        a((Bundle) null, new a() { // from class: com.google.android.gms.dynamic.zza.6
            @Override // com.google.android.gms.dynamic.zza.a
            public int a() {
                return 4;
            }

            @Override // com.google.android.gms.dynamic.zza.a
            public void a(LifecycleDelegate lifecycleDelegate) {
                zza.this.a.onStart();
            }
        });
    }

    public void onStop() {
        if (this.a != null) {
            this.a.onStop();
        } else {
            a(4);
        }
    }

    protected void zza(FrameLayout frameLayout) {
        zzb(frameLayout);
    }

    protected abstract void zza(zzf<T> zzfVar);

    public T zzrZ() {
        return this.a;
    }
}
