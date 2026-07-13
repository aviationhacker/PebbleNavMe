package org.eclipse.jetty.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HostMap<TYPE> extends HashMap<String, TYPE> {
    public HostMap() {
        super(11);
    }

    public HostMap(int i) {
        super(i);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public TYPE put(String str, TYPE type) {
        return (TYPE) super.put(str, type);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public TYPE get(Object obj) {
        return (TYPE) super.get(obj);
    }

    public Object getLazyMatches(String str) {
        int iIndexOf;
        if (str == null) {
            return LazyList.getList(super.entrySet());
        }
        String strTrim = str.trim();
        HashSet hashSet = new HashSet();
        do {
            hashSet.add(strTrim);
            iIndexOf = strTrim.indexOf(46);
            if (iIndexOf > 0) {
                strTrim = strTrim.substring(iIndexOf + 1);
            }
        } while (iIndexOf > 0);
        Object objAdd = null;
        for (Map.Entry entry : super.entrySet()) {
            objAdd = hashSet.contains(entry.getKey()) ? LazyList.add(objAdd, entry) : objAdd;
        }
        return objAdd;
    }
}
