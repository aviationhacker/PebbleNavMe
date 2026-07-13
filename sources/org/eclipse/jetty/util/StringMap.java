package org.eclipse.jetty.util;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class StringMap extends AbstractMap implements Externalizable {
    public static final boolean CASE_INSENSTIVE = true;
    protected static final int __HASH_WIDTH = 17;
    protected HashSet _entrySet;
    protected boolean _ignoreCase;
    protected b _nullEntry;
    protected Object _nullValue;
    protected a _root;
    protected Set _umEntrySet;
    protected int _width;

    public StringMap() {
        this._width = 17;
        this._root = new a();
        this._ignoreCase = false;
        this._nullEntry = null;
        this._nullValue = null;
        this._entrySet = new HashSet(3);
        this._umEntrySet = Collections.unmodifiableSet(this._entrySet);
    }

    public StringMap(boolean z) {
        this();
        this._ignoreCase = z;
    }

    public StringMap(boolean z, int i) {
        this();
        this._ignoreCase = z;
        this._width = i;
    }

    public void setIgnoreCase(boolean z) {
        if (this._root.d != null) {
            throw new IllegalStateException("Must be set before first put");
        }
        this._ignoreCase = z;
    }

    public boolean isIgnoreCase() {
        return this._ignoreCase;
    }

    public void setWidth(int i) {
        this._width = i;
    }

    public int getWidth() {
        return this._width;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        return obj == null ? put((String) null, obj2) : put(obj.toString(), obj2);
    }

    public Object put(String str, Object obj) {
        int i;
        a aVar;
        int i2;
        a aVar2;
        int i3;
        if (str == null) {
            Object obj2 = this._nullValue;
            this._nullValue = obj;
            if (this._nullEntry == null) {
                this._nullEntry = new b();
                this._entrySet.add(this._nullEntry);
            }
            return obj2;
        }
        int i4 = 0;
        a aVar3 = null;
        int i5 = -1;
        a aVar4 = this._root;
        a aVar5 = null;
        while (true) {
            if (i4 >= str.length()) {
                break;
            }
            char cCharAt = str.charAt(i4);
            if (i5 == -1) {
                aVar = aVar4;
                aVar3 = null;
                i = 0;
                aVar4 = aVar4.d == null ? null : aVar4.d[cCharAt % this._width];
            } else {
                i = i5;
                aVar = aVar5;
            }
            while (aVar4 != null) {
                if (aVar4.a[i] == cCharAt || (this._ignoreCase && aVar4.b[i] == cCharAt)) {
                    int i6 = i + 1;
                    if (i6 == aVar4.a.length) {
                        i3 = i4;
                        i2 = -1;
                        aVar2 = null;
                    } else {
                        i2 = i6;
                        i3 = i4;
                        aVar2 = null;
                    }
                    int i7 = i3 + 1;
                    aVar5 = aVar;
                    i5 = i2;
                    aVar3 = aVar2;
                    i4 = i7;
                } else if (i == 0) {
                    aVar3 = aVar4;
                    aVar4 = aVar4.c;
                } else {
                    aVar4.a(this, i);
                    i3 = i4 - 1;
                    aVar2 = aVar3;
                    i2 = -1;
                    int i72 = i3 + 1;
                    aVar5 = aVar;
                    i5 = i2;
                    aVar3 = aVar2;
                    i4 = i72;
                }
            }
            aVar4 = new a(this._ignoreCase, str, i4);
            if (aVar3 != null) {
                aVar3.c = aVar4;
                i5 = i;
            } else if (aVar != null) {
                if (aVar.d == null) {
                    aVar.d = new a[this._width];
                }
                aVar.d[cCharAt % this._width] = aVar4;
                int i8 = aVar4.b[0] % this._width;
                if (aVar4.b != null && aVar4.a[0] % this._width != i8) {
                    if (aVar.d[i8] == null) {
                        aVar.d[i8] = aVar4;
                    } else {
                        a aVar6 = aVar.d[i8];
                        while (aVar6.c != null) {
                            aVar6 = aVar6.c;
                        }
                        aVar6.c = aVar4;
                    }
                }
                i5 = i;
            } else {
                this._root = aVar4;
                i5 = i;
            }
        }
        if (aVar4 == null) {
            return null;
        }
        if (i5 > 0) {
            aVar4.a(this, i5);
        }
        Object obj3 = aVar4.f;
        aVar4.e = str;
        aVar4.f = obj;
        this._entrySet.add(aVar4);
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        if (obj == null) {
            return this._nullValue;
        }
        if (obj instanceof String) {
            return get((String) obj);
        }
        return get(obj.toString());
    }

    public Object get(String str) {
        if (str == null) {
            return this._nullValue;
        }
        Map.Entry entry = getEntry(str, 0, str.length());
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public Map.Entry getEntry(String str, int i, int i2) {
        a aVar;
        int i3;
        if (str == null) {
            return this._nullEntry;
        }
        a aVar2 = this._root;
        int i4 = 0;
        int i5 = -1;
        while (i4 < i2) {
            char cCharAt = str.charAt(i + i4);
            if (i5 == -1) {
                aVar = aVar2.d == null ? null : aVar2.d[cCharAt % this._width];
                i3 = 0;
            } else {
                int i6 = i5;
                aVar = aVar2;
                i3 = i6;
            }
            while (aVar != null) {
                if (aVar.a[i3] == cCharAt || (this._ignoreCase && aVar.b[i3] == cCharAt)) {
                    int i7 = i3 + 1;
                    if (i7 == aVar.a.length) {
                        i7 = -1;
                    }
                    i4++;
                    int i8 = i7;
                    aVar2 = aVar;
                    i5 = i8;
                } else {
                    if (i3 > 0) {
                        return null;
                    }
                    aVar = aVar.c;
                }
            }
            return null;
        }
        if (i5 > 0) {
            return null;
        }
        if (aVar2 == null || aVar2.e != null) {
            return aVar2;
        }
        return null;
    }

    public Map.Entry getEntry(char[] cArr, int i, int i2) {
        a aVar;
        int i3;
        if (cArr == null) {
            return this._nullEntry;
        }
        a aVar2 = this._root;
        int i4 = 0;
        int i5 = -1;
        while (i4 < i2) {
            char c = cArr[i + i4];
            if (i5 == -1) {
                aVar = aVar2.d == null ? null : aVar2.d[c % this._width];
                i3 = 0;
            } else {
                int i6 = i5;
                aVar = aVar2;
                i3 = i6;
            }
            while (aVar != null) {
                if (aVar.a[i3] == c || (this._ignoreCase && aVar.b[i3] == c)) {
                    int i7 = i3 + 1;
                    if (i7 == aVar.a.length) {
                        i7 = -1;
                    }
                    i4++;
                    int i8 = i7;
                    aVar2 = aVar;
                    i5 = i8;
                } else {
                    if (i3 > 0) {
                        return null;
                    }
                    aVar = aVar.c;
                }
            }
            return null;
        }
        if (i5 > 0) {
            return null;
        }
        if (aVar2 == null || aVar2.e != null) {
            return aVar2;
        }
        return null;
    }

    public Map.Entry getBestEntry(byte[] bArr, int i, int i2) {
        a aVar;
        int i3;
        if (bArr == null) {
            return this._nullEntry;
        }
        a aVar2 = this._root;
        int i4 = 0;
        int i5 = -1;
        while (i4 < i2) {
            char c = (char) bArr[i + i4];
            if (i5 == -1) {
                aVar = aVar2.d == null ? null : aVar2.d[c % this._width];
                if (aVar == null && i4 > 0) {
                    return aVar2;
                }
                i3 = 0;
            } else {
                int i6 = i5;
                aVar = aVar2;
                i3 = i6;
            }
            while (aVar != null) {
                if (aVar.a[i3] == c || (this._ignoreCase && aVar.b[i3] == c)) {
                    int i7 = i3 + 1;
                    if (i7 == aVar.a.length) {
                        i7 = -1;
                    }
                    i4++;
                    int i8 = i7;
                    aVar2 = aVar;
                    i5 = i8;
                } else {
                    if (i3 > 0) {
                        return null;
                    }
                    aVar = aVar.c;
                }
            }
            return null;
        }
        if (i5 > 0) {
            return null;
        }
        if (aVar2 == null || aVar2.e != null) {
            return aVar2;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        return obj == null ? remove((String) null) : remove(obj.toString());
    }

    public Object remove(String str) {
        if (str == null) {
            Object obj = this._nullValue;
            if (this._nullEntry != null) {
                this._entrySet.remove(this._nullEntry);
                this._nullEntry = null;
                this._nullValue = null;
            }
            return obj;
        }
        int i = -1;
        a aVar = this._root;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (i == -1) {
                aVar = aVar.d == null ? null : aVar.d[cCharAt % this._width];
                i = 0;
            }
            while (aVar != null) {
                if (aVar.a[i] == cCharAt || (this._ignoreCase && aVar.b[i] == cCharAt)) {
                    i++;
                    if (i == aVar.a.length) {
                        i = -1;
                    }
                } else {
                    if (i > 0) {
                        return null;
                    }
                    aVar = aVar.c;
                }
            }
            return null;
        }
        if (i > 0) {
            return null;
        }
        if (aVar != null && aVar.e == null) {
            return null;
        }
        Object obj2 = aVar.f;
        this._entrySet.remove(aVar);
        aVar.f = null;
        aVar.e = null;
        return obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        return this._umEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this._entrySet.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this._entrySet.isEmpty();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return this._nullEntry != null;
        }
        return getEntry(obj.toString(), 0, obj == null ? 0 : obj.toString().length()) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this._root = new a();
        this._nullEntry = null;
        this._nullValue = null;
        this._entrySet.clear();
    }

    static class a implements Map.Entry {
        char[] a;
        char[] b;
        a c;
        a[] d;
        String e;
        Object f;

        a() {
        }

        a(boolean z, String str, int i) {
            int length = str.length() - i;
            this.a = new char[length];
            this.b = new char[length];
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i + i2);
                this.a[i2] = cCharAt;
                if (z) {
                    if (Character.isUpperCase(cCharAt)) {
                        cCharAt = Character.toLowerCase(cCharAt);
                    } else if (Character.isLowerCase(cCharAt)) {
                        cCharAt = Character.toUpperCase(cCharAt);
                    }
                    this.b[i2] = cCharAt;
                }
            }
        }

        a a(StringMap stringMap, int i) {
            a aVar = new a();
            int length = this.a.length - i;
            char[] cArr = this.a;
            this.a = new char[i];
            aVar.a = new char[length];
            System.arraycopy(cArr, 0, this.a, 0, i);
            System.arraycopy(cArr, i, aVar.a, 0, length);
            if (this.b != null) {
                char[] cArr2 = this.b;
                this.b = new char[i];
                aVar.b = new char[length];
                System.arraycopy(cArr2, 0, this.b, 0, i);
                System.arraycopy(cArr2, i, aVar.b, 0, length);
            }
            aVar.e = this.e;
            aVar.f = this.f;
            this.e = null;
            this.f = null;
            if (stringMap._entrySet.remove(this)) {
                stringMap._entrySet.add(aVar);
            }
            aVar.d = this.d;
            this.d = new a[stringMap._width];
            this.d[aVar.a[0] % stringMap._width] = aVar;
            if (aVar.b != null && this.d[aVar.b[0] % stringMap._width] != aVar) {
                this.d[aVar.b[0] % stringMap._width] = aVar;
            }
            return aVar;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.e;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.f;
            this.f = obj;
            return obj2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            a(sb);
            return sb.toString();
        }

        private void a(StringBuilder sb) {
            sb.append("{[");
            if (this.a == null) {
                sb.append('-');
            } else {
                for (int i = 0; i < this.a.length; i++) {
                    sb.append(this.a[i]);
                }
            }
            sb.append(':');
            sb.append(this.e);
            sb.append('=');
            sb.append(this.f);
            sb.append(']');
            if (this.d != null) {
                for (int i2 = 0; i2 < this.d.length; i2++) {
                    sb.append('|');
                    if (this.d[i2] != null) {
                        this.d[i2].a(sb);
                    } else {
                        sb.append("-");
                    }
                }
            }
            sb.append('}');
            if (this.c != null) {
                sb.append(",\n");
                this.c.a(sb);
            }
        }
    }

    class b implements Map.Entry {
        private b() {
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return null;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return StringMap.this._nullValue;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = StringMap.this._nullValue;
            StringMap.this._nullValue = obj;
            return obj2;
        }

        public String toString() {
            return "[:null=" + StringMap.this._nullValue + "]";
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        HashMap map = new HashMap(this);
        objectOutput.writeBoolean(this._ignoreCase);
        objectOutput.writeObject(map);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        boolean z = objectInput.readBoolean();
        HashMap map = (HashMap) objectInput.readObject();
        setIgnoreCase(z);
        putAll(map);
    }
}
