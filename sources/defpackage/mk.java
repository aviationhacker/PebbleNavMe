package defpackage;

import java.io.Serializable;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class mk implements Serializable, Iterable<Character> {
    private static final long serialVersionUID = 8270183163158333422L;
    private final char a;
    private final char b;
    private final boolean c;
    private transient String d;

    private mk(char c, char c2, boolean z) {
        if (c <= c2) {
            c2 = c;
            c = c2;
        }
        this.a = c2;
        this.b = c;
        this.c = z;
    }

    public static mk a(char c) {
        return new mk(c, c, false);
    }

    public static mk b(char c) {
        return new mk(c, c, true);
    }

    public static mk a(char c, char c2) {
        return new mk(c, c2, false);
    }

    public static mk b(char c, char c2) {
        return new mk(c, c2, true);
    }

    public boolean a() {
        return this.c;
    }

    public boolean c(char c) {
        return (c >= this.a && c <= this.b) != this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof mk)) {
            return false;
        }
        mk mkVar = (mk) obj;
        return this.a == mkVar.a && this.b == mkVar.b && this.c == mkVar.c;
    }

    public int hashCode() {
        return (this.c ? 1 : 0) + (this.b * 7) + this.a + 'S';
    }

    public String toString() {
        if (this.d == null) {
            StringBuilder sb = new StringBuilder(4);
            if (a()) {
                sb.append('^');
            }
            sb.append(this.a);
            if (this.a != this.b) {
                sb.append('-');
                sb.append(this.b);
            }
            this.d = sb.toString();
        }
        return this.d;
    }

    @Override // java.lang.Iterable
    public Iterator<Character> iterator() {
        return new a();
    }

    static class a implements Iterator<Character> {
        private char a;
        private final mk b;
        private boolean c;

        private a(mk mkVar) {
            this.b = mkVar;
            this.c = true;
            if (this.b.c) {
                if (this.b.a == 0) {
                    if (this.b.b != 65535) {
                        this.a = (char) (this.b.b + 1);
                        return;
                    } else {
                        this.c = false;
                        return;
                    }
                }
                this.a = (char) 0;
                return;
            }
            this.a = this.b.a;
        }

        private void b() {
            if (!this.b.c) {
                if (this.a < this.b.b) {
                    this.a = (char) (this.a + 1);
                    return;
                } else {
                    this.c = false;
                    return;
                }
            }
            if (this.a != 65535) {
                if (this.a + 1 == this.b.a) {
                    if (this.b.b != 65535) {
                        this.a = (char) (this.b.b + 1);
                        return;
                    } else {
                        this.c = false;
                        return;
                    }
                }
                this.a = (char) (this.a + 1);
                return;
            }
            this.c = false;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Character next() {
            if (!this.c) {
                throw new NoSuchElementException();
            }
            char c = this.a;
            b();
            return Character.valueOf(c);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
