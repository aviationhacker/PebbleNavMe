package org.eclipse.jetty.util;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class IPAddressMap<TYPE> extends HashMap<String, TYPE> {
    private final HashMap<String, a> a;

    public IPAddressMap() {
        super(11);
        this.a = new HashMap<>();
    }

    public IPAddressMap(int i) {
        super(i);
        this.a = new HashMap<>();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public TYPE put(String str, TYPE type) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("Invalid IP address pattern: " + str);
        }
        String strTrim = str.trim();
        if (this.a.get(strTrim) == null) {
            this.a.put(strTrim, new a(strTrim));
        }
        return (TYPE) super.put(strTrim, type);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public TYPE get(Object obj) {
        return (TYPE) super.get(obj);
    }

    public TYPE match(String str) {
        Map.Entry<String, TYPE> match = getMatch(str);
        if (match == null) {
            return null;
        }
        return match.getValue();
    }

    public Map.Entry<String, TYPE> getMatch(String str) {
        if (str != null) {
            for (Map.Entry<String, TYPE> entry : super.entrySet()) {
                if (this.a.get(entry.getKey()).a(str)) {
                    return entry;
                }
            }
        }
        return null;
    }

    public Object getLazyMatches(String str) {
        if (str == null) {
            return LazyList.getList(super.entrySet());
        }
        Object objAdd = null;
        for (Map.Entry entry : super.entrySet()) {
            objAdd = this.a.get(entry.getKey()).a(str) ? LazyList.add(objAdd, entry) : objAdd;
        }
        return objAdd;
    }

    static class a {
        private final b[] a = new b[4];

        public a(String str) {
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException("Invalid IP address pattern: " + str);
            }
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
                for (int i = 0; i < 4; i++) {
                    String strTrim = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken().trim() : "0-255";
                    int length = strTrim.length();
                    if (length == 0 && stringTokenizer.hasMoreTokens()) {
                        throw new IllegalArgumentException("Invalid IP address pattern: " + str);
                    }
                    this.a[i] = new b(length == 0 ? "0-255" : strTrim);
                }
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid IP address pattern: " + str, e);
            }
        }

        public boolean a(String str) {
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException("Invalid IP address: " + str);
            }
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
                boolean zA = true;
                for (int i = 0; i < 4; i++) {
                    if (!stringTokenizer.hasMoreTokens()) {
                        throw new IllegalArgumentException("Invalid IP address: " + str);
                    }
                    zA &= this.a[i].a(stringTokenizer.nextToken());
                    if (!zA) {
                        break;
                    }
                }
                return zA;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid IP address: " + str, e);
            }
        }
    }

    static class b extends BitSet {
        private final BitSet a = new BitSet(256);

        public b(String str) {
            if (str != null) {
                try {
                    String strTrim = str.trim();
                    if (strTrim.length() == 0) {
                        this.a.set(0, 255);
                        return;
                    }
                    StringTokenizer stringTokenizer = new StringTokenizer(strTrim, ",");
                    while (stringTokenizer.hasMoreTokens()) {
                        String strTrim2 = stringTokenizer.nextToken().trim();
                        if (strTrim2.length() > 0) {
                            if (strTrim2.indexOf(45) < 0) {
                                this.a.set(Integer.valueOf(strTrim2).intValue());
                            } else {
                                String[] strArrSplit = strTrim2.split("-", -2);
                                if (strArrSplit.length != 2) {
                                    throw new IllegalArgumentException("Invalid octet spec: " + str);
                                }
                                int i = strArrSplit[0].length() > 0 ? Integer.parseInt(strArrSplit[0]) : 0;
                                int i2 = strArrSplit[1].length() > 0 ? Integer.parseInt(strArrSplit[1]) : 255;
                                if (i > i2) {
                                    throw new IllegalArgumentException("Invalid octet spec: " + str);
                                }
                                this.a.set(i, i2 + 1);
                            }
                        }
                    }
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException("Invalid octet spec: " + str, e);
                }
            }
        }

        public boolean a(String str) {
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException("Invalid octet: " + str);
            }
            try {
                return a(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException("Invalid octet: " + str);
            }
        }

        public boolean a(int i) {
            if (i < 0 || i > 255) {
                throw new IllegalArgumentException("Invalid octet: " + i);
            }
            return this.a.get(i);
        }
    }
}
