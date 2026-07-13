package org.eclipse.jetty.http;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.StringMap;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class PathMap extends HashMap implements Externalizable {
    private static String i = ":,";
    final StringMap a;
    final StringMap b;
    final StringMap c;
    List d;
    Entry e;
    Entry f;
    final Set g;
    boolean h;

    public static void setPathSpecSeparators(String str) {
        i = str;
    }

    public PathMap() {
        super(11);
        this.a = new StringMap();
        this.b = new StringMap();
        this.c = new StringMap();
        this.d = null;
        this.e = null;
        this.f = null;
        this.h = false;
        this.g = entrySet();
    }

    public PathMap(boolean z) {
        super(11);
        this.a = new StringMap();
        this.b = new StringMap();
        this.c = new StringMap();
        this.d = null;
        this.e = null;
        this.f = null;
        this.h = false;
        this.g = entrySet();
        this.h = z;
    }

    public PathMap(int i2) {
        super(i2);
        this.a = new StringMap();
        this.b = new StringMap();
        this.c = new StringMap();
        this.d = null;
        this.e = null;
        this.f = null;
        this.h = false;
        this.g = entrySet();
    }

    public PathMap(Map map) {
        this.a = new StringMap();
        this.b = new StringMap();
        this.c = new StringMap();
        this.d = null;
        this.e = null;
        this.f = null;
        this.h = false;
        putAll(map);
        this.g = entrySet();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(new HashMap(this));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        putAll((HashMap) objectInput.readObject());
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        String string = obj.toString();
        if ("".equals(string.trim())) {
            Entry entry = new Entry("", obj2);
            entry.a("");
            this.c.put("", (Object) entry);
            return super.put("", obj2);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(string, i);
        Object objPut = null;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!strNextToken.startsWith(URIUtil.SLASH) && !strNextToken.startsWith("*.")) {
                throw new IllegalArgumentException("PathSpec " + strNextToken + ". must start with '/' or '*.'");
            }
            objPut = super.put(strNextToken, obj2);
            Entry entry2 = new Entry(strNextToken, obj2);
            if (entry2.getKey().equals(strNextToken)) {
                if (strNextToken.equals("/*")) {
                    this.e = entry2;
                } else if (strNextToken.endsWith("/*")) {
                    String strSubstring = strNextToken.substring(0, strNextToken.length() - 2);
                    entry2.a(strSubstring);
                    this.a.put(strSubstring, (Object) entry2);
                    this.c.put(strSubstring, (Object) entry2);
                    this.c.put(strNextToken.substring(0, strNextToken.length() - 1), (Object) entry2);
                } else if (strNextToken.startsWith("*.")) {
                    this.b.put(strNextToken.substring(2), (Object) entry2);
                } else if (strNextToken.equals(URIUtil.SLASH)) {
                    if (this.h) {
                        this.c.put(strNextToken, (Object) entry2);
                    } else {
                        this.f = entry2;
                        this.d = Collections.singletonList(this.f);
                    }
                } else {
                    entry2.a(strNextToken);
                    this.c.put(strNextToken, (Object) entry2);
                }
            }
        }
        return objPut;
    }

    public Object match(String str) {
        Entry match = getMatch(str);
        if (match != null) {
            return match.getValue();
        }
        return null;
    }

    public Entry getMatch(String str) {
        Map.Entry entry;
        Map.Entry entry2;
        Map.Entry entry3;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 1 && str.charAt(0) == '/' && (entry3 = (Map.Entry) this.c.get("")) != null) {
            return (Entry) entry3;
        }
        Map.Entry entry4 = this.c.getEntry(str, 0, length);
        if (entry4 != null) {
            return (Entry) entry4.getValue();
        }
        int iLastIndexOf = length;
        do {
            iLastIndexOf = str.lastIndexOf(47, iLastIndexOf - 1);
            if (iLastIndexOf >= 0) {
                entry2 = this.a.getEntry(str, 0, iLastIndexOf);
            } else {
                if (this.e != null) {
                    return this.e;
                }
                int iIndexOf = 0;
                do {
                    iIndexOf = str.indexOf(46, iIndexOf + 1);
                    if (iIndexOf > 0) {
                        entry = this.b.getEntry(str, iIndexOf + 1, (length - iIndexOf) - 1);
                    } else {
                        return this.f;
                    }
                } while (entry == null);
                return (Entry) entry.getValue();
            }
        } while (entry2 == null);
        return (Entry) entry2.getValue();
    }

    public Object getLazyMatches(String str) {
        if (str == null) {
            return LazyList.getList(null);
        }
        int length = str.length();
        Map.Entry entry = this.c.getEntry(str, 0, length);
        Object objAdd = entry != null ? LazyList.add(null, entry.getValue()) : null;
        int iLastIndexOf = length - 1;
        while (true) {
            iLastIndexOf = str.lastIndexOf(47, iLastIndexOf - 1);
            if (iLastIndexOf < 0) {
                break;
            }
            Map.Entry entry2 = this.a.getEntry(str, 0, iLastIndexOf);
            if (entry2 != null) {
                objAdd = LazyList.add(objAdd, entry2.getValue());
            }
        }
        if (this.e != null) {
            objAdd = LazyList.add(objAdd, this.e);
        }
        int iIndexOf = 0;
        while (true) {
            iIndexOf = str.indexOf(46, iIndexOf + 1);
            if (iIndexOf <= 0) {
                break;
            }
            Map.Entry entry3 = this.b.getEntry(str, iIndexOf + 1, (length - iIndexOf) - 1);
            if (entry3 != null) {
                objAdd = LazyList.add(objAdd, entry3.getValue());
            }
        }
        if (this.f != null) {
            if (objAdd == null) {
                return this.d;
            }
            return LazyList.add(objAdd, this.f);
        }
        return objAdd;
    }

    public List getMatches(String str) {
        return LazyList.getList(getLazyMatches(str));
    }

    public boolean containsMatch(String str) {
        Entry match = getMatch(str);
        return (match == null || match.equals(this.f)) ? false : true;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        if (obj != null) {
            String str = (String) obj;
            if (str.equals("/*")) {
                this.e = null;
            } else if (str.endsWith("/*")) {
                this.a.remove(str.substring(0, str.length() - 2));
                this.c.remove(str.substring(0, str.length() - 1));
                this.c.remove(str.substring(0, str.length() - 2));
            } else if (str.startsWith("*.")) {
                this.b.remove(str.substring(2));
            } else if (str.equals(URIUtil.SLASH)) {
                this.f = null;
                this.d = null;
            } else {
                this.c.remove(str);
            }
        }
        return super.remove(obj);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        this.c.clear();
        this.a.clear();
        this.b.clear();
        this.f = null;
        this.d = null;
        super.clear();
    }

    public static boolean match(String str, String str2) {
        return match(str, str2, false);
    }

    public static boolean match(String str, String str2, boolean z) {
        if (str.length() == 0) {
            return URIUtil.SLASH.equals(str2);
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == '/') {
            if ((!z && str.length() == 1) || str.equals(str2) || a(str, str2)) {
                return true;
            }
        } else if (cCharAt == '*') {
            return str2.regionMatches((str2.length() - str.length()) + 1, str, 1, str.length() - 1);
        }
        return false;
    }

    private static boolean a(String str, String str2) {
        int length = str.length() - 2;
        if (str.endsWith("/*") && str2.regionMatches(0, str, 0, length)) {
            return str2.length() == length || '/' == str2.charAt(length);
        }
        return false;
    }

    public static String pathMatch(String str, String str2) {
        char cCharAt = str.charAt(0);
        if (cCharAt == '/') {
            if (str.length() != 1 && !str.equals(str2)) {
                if (a(str, str2)) {
                    return str2.substring(0, str.length() - 2);
                }
            } else {
                return str2;
            }
        } else if (cCharAt == '*' && str2.regionMatches(str2.length() - (str.length() - 1), str, 1, str.length() - 1)) {
            return str2;
        }
        return null;
    }

    public static String pathInfo(String str, String str2) {
        if (!"".equals(str)) {
            if (str.charAt(0) == '/') {
                if (str.length() == 1) {
                    return null;
                }
                boolean zA = a(str, str2);
                if (str.equals(str2) && !zA) {
                    return null;
                }
                if (zA) {
                    if (str2.length() == str.length() - 2) {
                        return null;
                    }
                    return str2.substring(str.length() - 2);
                }
            }
            return null;
        }
        return str2;
    }

    public static String relativePath(String str, String str2, String str3) {
        String strPathInfo = pathInfo(str2, str3);
        if (strPathInfo != null) {
            str3 = strPathInfo;
        }
        if (str3.startsWith("./")) {
            str3 = str3.substring(2);
        }
        if (str.endsWith(URIUtil.SLASH)) {
            if (str3.startsWith(URIUtil.SLASH)) {
                return str + str3.substring(1);
            }
            return str + str3;
        }
        if (str3.startsWith(URIUtil.SLASH)) {
            return str + str3;
        }
        return str + URIUtil.SLASH + str3;
    }

    public static class Entry implements Map.Entry {
        private final Object a;
        private final Object b;
        private String c;
        private transient String d;

        Entry(Object obj, Object obj2) {
            this.a = obj;
            this.b = obj2;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            if (this.d == null) {
                this.d = this.a + "=" + this.b;
            }
            return this.d;
        }

        public String getMapped() {
            return this.c;
        }

        void a(String str) {
            this.c = str;
        }
    }
}
