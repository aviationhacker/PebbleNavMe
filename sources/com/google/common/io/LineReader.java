package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import defpackage.li;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class LineReader {
    private final Readable a;
    private final Reader b;
    private final char[] c = new char[4096];
    private final CharBuffer d = CharBuffer.wrap(this.c);
    private final Queue<String> e = new LinkedList();
    private final li f = new li() { // from class: com.google.common.io.LineReader.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // defpackage.li
        public void a(String str, String str2) {
            LineReader.this.e.add(str);
        }
    };

    public LineReader(Readable readable) {
        this.a = (Readable) Preconditions.checkNotNull(readable);
        this.b = readable instanceof Reader ? (Reader) readable : null;
    }

    public String readLine() throws IOException {
        int i;
        while (true) {
            if (this.e.peek() != null) {
                break;
            }
            this.d.clear();
            if (this.b != null) {
                i = this.b.read(this.c, 0, this.c.length);
            } else {
                i = this.a.read(this.d);
            }
            if (i == -1) {
                this.f.a();
                break;
            }
            this.f.a(this.c, 0, i);
        }
        return this.e.poll();
    }
}
