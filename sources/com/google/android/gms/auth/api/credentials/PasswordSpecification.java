package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.support.v4.media.TransportMediator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class PasswordSpecification implements SafeParcelable {
    public static final zze CREATOR = new zze();
    public static final PasswordSpecification zzSt = new zza().zzg(12, 16).zzbD("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").zzf("abcdefghijkmnopqrstxyz", 1).zzf("ABCDEFGHJKLMNPQRSTXY", 1).zzf("3456789", 1).zzlK();
    public static final PasswordSpecification zzSu = new zza().zzg(12, 16).zzbD("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").zzf("abcdefghijklmnopqrstuvwxyz", 1).zzf("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).zzf("1234567890", 1).zzlK();
    final int a;
    final String b;
    final List<String> c;
    final List<Integer> d;
    final int e;
    final int f;
    private final int[] g = a();
    private final Random h = new SecureRandom();

    public static class zza {
        private final TreeSet<Character> a = new TreeSet<>();
        private final List<String> b = new ArrayList();
        private final List<Integer> c = new ArrayList();
        private int d = 12;
        private int e = 16;

        private TreeSet<Character> a(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                throw new zzb(str2 + " cannot be null or empty");
            }
            TreeSet<Character> treeSet = new TreeSet<>();
            for (char c : str.toCharArray()) {
                if (PasswordSpecification.b(c, 32, TransportMediator.KEYCODE_MEDIA_PLAY)) {
                    throw new zzb(str2 + " must only contain ASCII printable characters");
                }
                treeSet.add(Character.valueOf(c));
            }
            return treeSet;
        }

        private void a() {
            int i;
            int iIntValue = 0;
            Iterator<Integer> it = this.c.iterator();
            while (true) {
                i = iIntValue;
                if (!it.hasNext()) {
                    break;
                } else {
                    iIntValue = it.next().intValue() + i;
                }
            }
            if (i > this.e) {
                throw new zzb("required character count cannot be greater than the max password size");
            }
        }

        private void b() {
            boolean[] zArr = new boolean[95];
            Iterator<String> it = this.b.iterator();
            while (it.hasNext()) {
                for (char c : it.next().toCharArray()) {
                    if (zArr[c - ' ']) {
                        throw new zzb("character " + c + " occurs in more than one required character set");
                    }
                    zArr[c - ' '] = true;
                }
            }
        }

        public zza zzbD(String str) {
            this.a.addAll(a(str, "allowedChars"));
            return this;
        }

        public zza zzf(String str, int i) {
            if (i < 1) {
                throw new zzb("count must be at least 1");
            }
            this.b.add(PasswordSpecification.b(a(str, "requiredChars")));
            this.c.add(Integer.valueOf(i));
            return this;
        }

        public zza zzg(int i, int i2) {
            if (i < 1) {
                throw new zzb("minimumSize must be at least 1");
            }
            if (i > i2) {
                throw new zzb("maximumSize must be greater than or equal to minimumSize");
            }
            this.d = i;
            this.e = i2;
            return this;
        }

        public PasswordSpecification zzlK() {
            if (this.a.isEmpty()) {
                throw new zzb("no allowed characters specified");
            }
            a();
            b();
            return new PasswordSpecification(1, PasswordSpecification.b(this.a), this.b, this.c, this.d, this.e);
        }
    }

    public static class zzb extends Error {
        public zzb(String str) {
            super(str);
        }
    }

    PasswordSpecification(int i, String str, List<String> list, List<Integer> list2, int i2, int i3) {
        this.a = i;
        this.b = str;
        this.c = Collections.unmodifiableList(list);
        this.d = Collections.unmodifiableList(list2);
        this.e = i2;
        this.f = i3;
    }

    private int a(char c) {
        return c - ' ';
    }

    private int[] a() {
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        Iterator<String> it = this.c.iterator();
        int i = 0;
        while (it.hasNext()) {
            for (char c : it.next().toCharArray()) {
                iArr[a(c)] = i;
            }
            i++;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        int i = 0;
        Iterator<Character> it = collection.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return new String(cArr);
            }
            i = i2 + 1;
            cArr[i2] = it.next().charValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(int i, int i2, int i3) {
        return i < i2 || i > i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.a(this, parcel, i);
    }
}
