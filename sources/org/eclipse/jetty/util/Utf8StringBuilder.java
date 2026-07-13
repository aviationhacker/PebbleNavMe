package org.eclipse.jetty.util;

/* JADX INFO: loaded from: classes.dex */
public class Utf8StringBuilder extends Utf8Appendable {
    final StringBuilder a;

    public Utf8StringBuilder() {
        super(new StringBuilder());
        this.a = (StringBuilder) this._appendable;
    }

    public Utf8StringBuilder(int i) {
        super(new StringBuilder(i));
        this.a = (StringBuilder) this._appendable;
    }

    @Override // org.eclipse.jetty.util.Utf8Appendable
    public int length() {
        return this.a.length();
    }

    @Override // org.eclipse.jetty.util.Utf8Appendable
    public void reset() {
        super.reset();
        this.a.setLength(0);
    }

    public StringBuilder getStringBuilder() {
        checkState();
        return this.a;
    }

    public String toString() {
        checkState();
        return this.a.toString();
    }
}
