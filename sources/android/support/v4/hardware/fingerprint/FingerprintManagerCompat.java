package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.hardware.fingerprint.FingerprintManagerCompatApi23;
import android.support.v4.os.CancellationSignal;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public class FingerprintManagerCompat {
    static final b a;
    private Context b;

    interface b {
        void a(Context context, CryptoObject cryptoObject, int i, CancellationSignal cancellationSignal, AuthenticationCallback authenticationCallback, Handler handler);

        boolean a(Context context);

        boolean b(Context context);
    }

    public static FingerprintManagerCompat from(Context context) {
        return new FingerprintManagerCompat(context);
    }

    private FingerprintManagerCompat(Context context) {
        this.b = context;
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            a = new a();
        } else {
            a = new c();
        }
    }

    public boolean hasEnrolledFingerprints() {
        return a.a(this.b);
    }

    public boolean isHardwareDetected() {
        return a.b(this.b);
    }

    public void authenticate(@Nullable CryptoObject cryptoObject, int i, @Nullable CancellationSignal cancellationSignal, @NonNull AuthenticationCallback authenticationCallback, @Nullable Handler handler) {
        a.a(this.b, cryptoObject, i, cancellationSignal, authenticationCallback, handler);
    }

    public static class CryptoObject {
        private final Signature a;
        private final Cipher b;
        private final Mac c;

        public CryptoObject(Signature signature) {
            this.a = signature;
            this.b = null;
            this.c = null;
        }

        public CryptoObject(Cipher cipher) {
            this.b = cipher;
            this.a = null;
            this.c = null;
        }

        public CryptoObject(Mac mac) {
            this.c = mac;
            this.b = null;
            this.a = null;
        }

        public Signature getSignature() {
            return this.a;
        }

        public Cipher getCipher() {
            return this.b;
        }

        public Mac getMac() {
            return this.c;
        }
    }

    public static final class AuthenticationResult {
        private CryptoObject a;

        public AuthenticationResult(CryptoObject cryptoObject) {
            this.a = cryptoObject;
        }

        public CryptoObject getCryptoObject() {
            return this.a;
        }
    }

    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int i, CharSequence charSequence) {
        }

        public void onAuthenticationHelp(int i, CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
        }

        public void onAuthenticationFailed() {
        }
    }

    static class c implements b {
        @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompat.b
        public boolean a(Context context) {
            return false;
        }

        @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompat.b
        public boolean b(Context context) {
            return false;
        }

        @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompat.b
        public void a(Context context, CryptoObject cryptoObject, int i, CancellationSignal cancellationSignal, AuthenticationCallback authenticationCallback, Handler handler) {
        }
    }

    static class a implements b {
        @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompat.b
        public boolean a(Context context) {
            return FingerprintManagerCompatApi23.hasEnrolledFingerprints(context);
        }

        @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompat.b
        public boolean b(Context context) {
            return FingerprintManagerCompatApi23.isHardwareDetected(context);
        }

        @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompat.b
        public void a(Context context, CryptoObject cryptoObject, int i, CancellationSignal cancellationSignal, AuthenticationCallback authenticationCallback, Handler handler) {
            FingerprintManagerCompatApi23.authenticate(context, a(cryptoObject), i, cancellationSignal != null ? cancellationSignal.getCancellationSignalObject() : null, a(authenticationCallback), handler);
        }

        private static FingerprintManagerCompatApi23.CryptoObject a(CryptoObject cryptoObject) {
            if (cryptoObject == null) {
                return null;
            }
            if (cryptoObject.getCipher() != null) {
                return new FingerprintManagerCompatApi23.CryptoObject(cryptoObject.getCipher());
            }
            if (cryptoObject.getSignature() != null) {
                return new FingerprintManagerCompatApi23.CryptoObject(cryptoObject.getSignature());
            }
            if (cryptoObject.getMac() != null) {
                return new FingerprintManagerCompatApi23.CryptoObject(cryptoObject.getMac());
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static CryptoObject b(FingerprintManagerCompatApi23.CryptoObject cryptoObject) {
            if (cryptoObject == null) {
                return null;
            }
            if (cryptoObject.getCipher() != null) {
                return new CryptoObject(cryptoObject.getCipher());
            }
            if (cryptoObject.getSignature() != null) {
                return new CryptoObject(cryptoObject.getSignature());
            }
            if (cryptoObject.getMac() != null) {
                return new CryptoObject(cryptoObject.getMac());
            }
            return null;
        }

        private static FingerprintManagerCompatApi23.AuthenticationCallback a(final AuthenticationCallback authenticationCallback) {
            return new FingerprintManagerCompatApi23.AuthenticationCallback() { // from class: android.support.v4.hardware.fingerprint.FingerprintManagerCompat.a.1
                @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompatApi23.AuthenticationCallback
                public void onAuthenticationError(int i, CharSequence charSequence) {
                    authenticationCallback.onAuthenticationError(i, charSequence);
                }

                @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompatApi23.AuthenticationCallback
                public void onAuthenticationHelp(int i, CharSequence charSequence) {
                    authenticationCallback.onAuthenticationHelp(i, charSequence);
                }

                @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompatApi23.AuthenticationCallback
                public void onAuthenticationSucceeded(FingerprintManagerCompatApi23.AuthenticationResultInternal authenticationResultInternal) {
                    authenticationCallback.onAuthenticationSucceeded(new AuthenticationResult(a.b(authenticationResultInternal.getCryptoObject())));
                }

                @Override // android.support.v4.hardware.fingerprint.FingerprintManagerCompatApi23.AuthenticationCallback
                public void onAuthenticationFailed() {
                    authenticationCallback.onAuthenticationFailed();
                }
            };
        }
    }
}
