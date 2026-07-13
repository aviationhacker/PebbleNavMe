package org.eclipse.jetty.io;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.StringMap;

/* JADX INFO: loaded from: classes.dex */
public class BufferCache {
    private final HashMap a = new HashMap();
    private final StringMap b = new StringMap(true);
    private final ArrayList c = new ArrayList();

    public CachedBuffer add(String str, int i) {
        CachedBuffer cachedBuffer = new CachedBuffer(str, i);
        this.a.put(cachedBuffer, cachedBuffer);
        this.b.put(str, (Object) cachedBuffer);
        while (i - this.c.size() >= 0) {
            this.c.add(null);
        }
        if (this.c.get(i) == null) {
            this.c.add(i, cachedBuffer);
        }
        return cachedBuffer;
    }

    public CachedBuffer get(int i) {
        if (i < 0 || i >= this.c.size()) {
            return null;
        }
        return (CachedBuffer) this.c.get(i);
    }

    public CachedBuffer get(Buffer buffer) {
        return (CachedBuffer) this.a.get(buffer);
    }

    public CachedBuffer get(String str) {
        return (CachedBuffer) this.b.get(str);
    }

    public Buffer lookup(Buffer buffer) {
        if (!(buffer instanceof CachedBuffer)) {
            CachedBuffer cachedBuffer = get(buffer);
            if (cachedBuffer != null) {
                return cachedBuffer;
            }
            if (!(buffer instanceof Buffer.CaseInsensitve)) {
                return new ByteArrayBuffer.CaseInsensitive(buffer.asArray(), 0, buffer.length(), 0);
            }
            return buffer;
        }
        return buffer;
    }

    public CachedBuffer getBest(byte[] bArr, int i, int i2) {
        Map.Entry bestEntry = this.b.getBestEntry(bArr, i, i2);
        if (bestEntry != null) {
            return (CachedBuffer) bestEntry.getValue();
        }
        return null;
    }

    public Buffer lookup(String str) {
        CachedBuffer cachedBuffer = get(str);
        if (cachedBuffer == null) {
            return new CachedBuffer(str, -1);
        }
        return cachedBuffer;
    }

    public String toString(Buffer buffer) {
        return lookup(buffer).toString();
    }

    public int getOrdinal(String str) {
        CachedBuffer cachedBuffer = (CachedBuffer) this.b.get(str);
        if (cachedBuffer == null) {
            return -1;
        }
        return cachedBuffer.getOrdinal();
    }

    public int getOrdinal(Buffer buffer) {
        if (buffer instanceof CachedBuffer) {
            return ((CachedBuffer) buffer).getOrdinal();
        }
        Buffer bufferLookup = lookup(buffer);
        if (bufferLookup != null && (bufferLookup instanceof CachedBuffer)) {
            return ((CachedBuffer) bufferLookup).getOrdinal();
        }
        return -1;
    }

    public static class CachedBuffer extends ByteArrayBuffer.CaseInsensitive {
        private final int c;
        private HashMap d;

        public CachedBuffer(String str, int i) {
            super(str);
            this.d = null;
            this.c = i;
        }

        public int getOrdinal() {
            return this.c;
        }

        public CachedBuffer getAssociate(Object obj) {
            if (this.d == null) {
                return null;
            }
            return (CachedBuffer) this.d.get(obj);
        }

        public void setAssociate(Object obj, CachedBuffer cachedBuffer) {
            if (this.d == null) {
                this.d = new HashMap();
            }
            this.d.put(obj, cachedBuffer);
        }
    }

    public String toString() {
        return "CACHE[bufferMap=" + this.a + ",stringMap=" + this.b + ",index=" + this.c + "]";
    }
}
