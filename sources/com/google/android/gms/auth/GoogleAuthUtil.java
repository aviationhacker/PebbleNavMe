package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzau;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class GoogleAuthUtil {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    public static final String KEY_REQUEST_ACTIONS = "request_visible_actions";

    @Deprecated
    public static final String KEY_REQUEST_VISIBLE_ACTIVITIES = "request_visible_actions";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    private static final ComponentName a;
    private static final ComponentName b;

    static {
        KEY_CALLER_UID = Build.VERSION.SDK_INT >= 11 ? "callerUid" : "callerUid";
        KEY_ANDROID_PACKAGE_NAME = Build.VERSION.SDK_INT >= 14 ? "androidPackageName" : "androidPackageName";
        a = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
        b = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
    }

    private GoogleAuthUtil() {
    }

    private static TokenData a(Context context, Account account, String str, Bundle bundle) throws GoogleAuthException, IOException {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            TokenData tokenDataZza = zza(context, account, str, bundle);
            GooglePlayServicesUtil.zzac(context);
            return tokenDataZza;
        } catch (GooglePlayServicesAvailabilityException e) {
            GooglePlayServicesUtil.showErrorNotification(e.getConnectionStatusCode(), context);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        } catch (UserRecoverableAuthException e2) {
            GooglePlayServicesUtil.zzac(context);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
    }

    private static void a(Context context) throws GoogleAuthException {
        try {
            GooglePlayServicesUtil.zzaa(context);
        } catch (GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage());
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    private static void a(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    public static void clearToken(Context context, String str) throws GoogleAuthException, IOException {
        Context applicationContext = context.getApplicationContext();
        zzx.zzcj("Calling this from your main thread can lead to deadlock");
        a(applicationContext);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        com.google.android.gms.common.zza zzaVar = new com.google.android.gms.common.zza();
        zzl zzlVarZzal = zzl.zzal(applicationContext);
        try {
            if (!zzlVarZzal.zza(a, zzaVar, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service with the given context.");
            }
            try {
                Bundle bundleZza = zzau.zza.zza(zzaVar.zzno()).zza(str, bundle);
                String string = bundleZza.getString("Error");
                if (bundleZza.getBoolean("booleanResult")) {
                } else {
                    throw new GoogleAuthException(string);
                }
            } catch (RemoteException e) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", e);
                throw new IOException("remote exception");
            } catch (InterruptedException e2) {
                throw new GoogleAuthException("Interrupted");
            }
        } finally {
            zzlVarZzal.zzb(a, zzaVar, "GoogleAuthUtil");
        }
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int i, String str) throws GoogleAuthException, IOException {
        zzx.zzh(str, "accountName must be provided");
        zzx.zzcj("Calling this from your main thread can lead to deadlock");
        Context applicationContext = context.getApplicationContext();
        a(applicationContext);
        com.google.android.gms.common.zza zzaVar = new com.google.android.gms.common.zza();
        zzl zzlVarZzal = zzl.zzal(applicationContext);
        try {
            if (!zzlVarZzal.zza(a, zzaVar, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service with the given context.");
            }
            try {
                return zzau.zza.zza(zzaVar.zzno()).zza(new AccountChangeEventsRequest().setAccountName(str).setEventIndex(i)).getEvents();
            } catch (RemoteException e) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", e);
                throw new IOException("remote exception");
            } catch (InterruptedException e2) {
                throw new GoogleAuthException("Interrupted");
            }
        } finally {
            zzlVarZzal.zzb(a, zzaVar, "GoogleAuthUtil");
        }
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException {
        zzx.zzh(str, "accountName must be provided");
        zzx.zzcj("Calling this from your main thread can lead to deadlock");
        a(context.getApplicationContext());
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str) {
        return getToken(context, account, str, new Bundle());
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) {
        return zza(context, account, str, bundle).getToken();
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) {
        return getToken(context, new Account(str, GOOGLE_ACCOUNT_TYPE), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) {
        return getToken(context, new Account(str, GOOGLE_ACCOUNT_TYPE), str2, bundle);
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle) {
        return zzb(context, account, str, bundle).getToken();
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle, Intent intent) {
        a(intent);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putParcelable("callback_intent", intent);
        bundle.putBoolean("handle_notification", true);
        return a(context, account, str, bundle).getToken();
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle, String str2, Bundle bundle2) {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("Authority cannot be empty or null.");
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        ContentResolver.validateSyncExtrasBundle(bundle2);
        bundle.putString("authority", str2);
        bundle.putBundle("sync_extras", bundle2);
        bundle.putBoolean("handle_notification", true);
        return a(context, account, str, bundle).getToken();
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle) {
        return getTokenWithNotification(context, new Account(str, GOOGLE_ACCOUNT_TYPE), str2, bundle);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle, Intent intent) {
        return getTokenWithNotification(context, new Account(str, GOOGLE_ACCOUNT_TYPE), str2, bundle, intent);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle, String str3, Bundle bundle2) {
        return getTokenWithNotification(context, new Account(str, GOOGLE_ACCOUNT_TYPE), str2, bundle, str3, bundle2);
    }

    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken(GOOGLE_ACCOUNT_TYPE, str);
    }

    public static TokenData zza(Context context, Account account, String str, Bundle bundle) throws GoogleAuthException, IOException {
        Context applicationContext = context.getApplicationContext();
        zzx.zzcj("Calling this from your main thread can lead to deadlock");
        a(applicationContext);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        if (TextUtils.isEmpty(bundle2.getString(KEY_ANDROID_PACKAGE_NAME))) {
            bundle2.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        com.google.android.gms.common.zza zzaVar = new com.google.android.gms.common.zza();
        zzl zzlVarZzal = zzl.zzal(applicationContext);
        try {
            if (!zzlVarZzal.zza(a, zzaVar, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service with the given context.");
            }
            try {
                Bundle bundleZza = zzau.zza.zza(zzaVar.zzno()).zza(account, str, bundle2);
                if (bundleZza == null) {
                    Log.w("GoogleAuthUtil", "Binder call returned null.");
                    throw new GoogleAuthException("ServiceUnavailable");
                }
                TokenData tokenDataZza = TokenData.zza(bundleZza, "tokenDetails");
                if (tokenDataZza != null) {
                    return tokenDataZza;
                }
                String string = bundleZza.getString("Error");
                Intent intent = (Intent) bundleZza.getParcelable("userRecoveryIntent");
                com.google.android.gms.auth.firstparty.shared.zzd zzdVarZzbE = com.google.android.gms.auth.firstparty.shared.zzd.zzbE(string);
                if (com.google.android.gms.auth.firstparty.shared.zzd.zza(zzdVarZzbE)) {
                    throw new UserRecoverableAuthException(string, intent);
                }
                if (com.google.android.gms.auth.firstparty.shared.zzd.zzc(zzdVarZzbE)) {
                    throw new IOException(string);
                }
                throw new GoogleAuthException(string);
            } catch (RemoteException e) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", e);
                throw new IOException("remote exception");
            } catch (InterruptedException e2) {
                throw new GoogleAuthException("Interrupted");
            }
        } finally {
            zzlVarZzal.zzb(a, zzaVar, "GoogleAuthUtil");
        }
    }

    public static TokenData zzb(Context context, Account account, String str, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBoolean("handle_notification", true);
        return a(context, account, str, bundle);
    }
}
