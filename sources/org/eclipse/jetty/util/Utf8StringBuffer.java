package org.eclipse.jetty.util;

/* JADX INFO: loaded from: classes.dex */
public class Utf8StringBuffer extends Utf8Appendable {
    final StringBuffer a;

    public Utf8StringBuffer() {
        super(new StringBuffer());
        this.a = (StringBuffer) this._appendable;
    }

    public Utf8StringBuffer(int i) {
        super(new StringBuffer(i));
        this.a = (StringBuffer) this._appendable;
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

    public StringBuffer getStringBuffer() {
        checkState();
        return this.a;
    }

    public String toString() {
        checkState();
        return this.a.toString();
    }
}
