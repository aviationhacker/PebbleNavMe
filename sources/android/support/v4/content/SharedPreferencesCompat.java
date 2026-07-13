package android.support.v4.content;

import android.content.SharedPreferences;
import android.os.Build;
import android.support.annotation.NonNull;
import defpackage.ar;

/* JADX INFO: loaded from: classes.dex */
public class SharedPreferencesCompat {

    public static class EditorCompat {
        private static EditorCompat a;
        private final c b;

        interface c {
            void a(@NonNull SharedPreferences.Editor editor);
        }

        static class b implements c {
            private b() {
            }

            @Override // android.support.v4.content.SharedPreferencesCompat.EditorCompat.c
            public void a(@NonNull SharedPreferences.Editor editor) {
                editor.commit();
            }
        }

        static class a implements c {
            private a() {
            }

            @Override // android.support.v4.content.SharedPreferencesCompat.EditorCompat.c
            public void a(@NonNull SharedPreferences.Editor editor) {
                ar.a(editor);
            }
        }

        private EditorCompat() {
            if (Build.VERSION.SDK_INT >= 9) {
                this.b = new a();
            } else {
                this.b = new b();
            }
        }

        public static EditorCompat getInstance() {
            if (a == null) {
                a = new EditorCompat();
            }
            return a;
        }

        public void apply(@NonNull SharedPreferences.Editor editor) {
            this.b.a(editor);
        }
    }
}
