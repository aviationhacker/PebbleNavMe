package org.eclipse.jetty.util;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
public class MultiMap<K> implements Serializable, ConcurrentMap<K, Object> {
    private static final long serialVersionUID = -6878723138353851005L;
    Map<K, Object> a;
    ConcurrentMap<K, Object> b;

    public MultiMap() {
        this.a = new HashMap();
    }

    public MultiMap(Map<K, Object> map) {
        if (map instanceof ConcurrentMap) {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(map);
            this.b = concurrentHashMap;
            this.a = concurrentHashMap;
            return;
        }
        this.a = new HashMap(map);
    }

    public MultiMap(MultiMap<K> multiMap) {
        if (multiMap.b != null) {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(multiMap.b);
            this.b = concurrentHashMap;
            this.a = concurrentHashMap;
            return;
        }
        this.a = new HashMap(multiMap.a);
    }

    public MultiMap(int i) {
        this.a = new HashMap(i);
    }

    public MultiMap(boolean z) {
        if (z) {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            this.b = concurrentHashMap;
            this.a = concurrentHashMap;
            return;
        }
        this.a = new HashMap();
    }

    public List getValues(Object obj) {
        return LazyList.getList(this.a.get(obj), true);
    }

    public Object getValue(Object obj, int i) {
        Object obj2 = this.a.get(obj);
        if (i == 0 && LazyList.size(obj2) == 0) {
            return null;
        }
        return LazyList.get(obj2, i);
    }

    public String getString(Object obj) {
        Object obj2 = this.a.get(obj);
        switch (LazyList.size(obj2)) {
            case 0:
                break;
            case 1:
                Object obj3 = LazyList.get(obj2, 0);
                if (obj3 != null) {
                    break;
                }
                break;
            default:
                StringBuilder sb = new StringBuilder(128);
                for (int i = 0; i < LazyList.size(obj2); i++) {
                    Object obj4 = LazyList.get(obj2, i);
                    if (obj4 != null) {
                        if (sb.length() > 0) {
                            sb.append(',');
                        }
                        sb.append(obj4.toString());
                    }
                }
                break;
        }
        return null;
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        Object obj2 = this.a.get(obj);
        switch (LazyList.size(obj2)) {
            case 0:
                return null;
            case 1:
                return LazyList.get(obj2, 0);
            default:
                return LazyList.getList(obj2, true);
        }
    }

    @Override // java.util.Map
    public Object put(K k, Object obj) {
        return this.a.put(k, LazyList.add(null, obj));
    }

    public Object putValues(K k, List<? extends Object> list) {
        return this.a.put(k, list);
    }

    public Object putValues(K k, String... strArr) {
        Object objAdd = null;
        for (String str : strArr) {
            objAdd = LazyList.add(objAdd, str);
        }
        return this.a.put(k, objAdd);
    }

    public void add(K k, Object obj) {
        Object obj2 = this.a.get(k);
        Object objAdd = LazyList.add(obj2, obj);
        if (obj2 != objAdd) {
            this.a.put(k, objAdd);
        }
    }

    public void addValues(K k, List<? extends Object> list) {
        Object obj = this.a.get(k);
        Object objAddCollection = LazyList.addCollection(obj, list);
        if (obj != objAddCollection) {
            this.a.put(k, objAddCollection);
        }
    }

    public void addValues(K k, String[] strArr) {
        Object obj = this.a.get(k);
        Object objAddCollection = LazyList.addCollection(obj, Arrays.asList(strArr));
        if (obj != objAddCollection) {
            this.a.put(k, objAddCollection);
        }
    }

    public boolean removeValue(K k, Object obj) {
        Object objRemove = this.a.get(k);
        int size = LazyList.size(objRemove);
        if (size > 0) {
            objRemove = LazyList.remove(objRemove, obj);
            if (objRemove == null) {
                this.a.remove(k);
            } else {
                this.a.put(k, objRemove);
            }
        }
        return LazyList.size(objRemove) != size;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends Object> map) {
        if (map instanceof MultiMap) {
            for (Map.Entry<? extends K, ? extends Object> entry : map.entrySet()) {
                this.a.put(entry.getKey(), LazyList.clone(entry.getValue()));
            }
            return;
        }
        this.a.putAll(map);
    }

    public Map<K, String[]> toStringArrayMap() {
        HashMap<K, String[]> map = new HashMap<K, String[]>((this.a.size() * 3) / 2) { // from class: org.eclipse.jetty.util.MultiMap.1
            @Override // java.util.AbstractMap
            public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append('{');
                for (K k : keySet()) {
                    if (sb.length() > 1) {
                        sb.append(',');
                    }
                    sb.append(k);
                    sb.append('=');
                    sb.append(Arrays.asList(get(k)));
                }
                sb.append('}');
                return sb.toString();
            }
        };
        for (Map.Entry<K, Object> entry : this.a.entrySet()) {
            map.put(entry.getKey(), LazyList.toStringArray(entry.getValue()));
        }
        return map;
    }

    public String toString() {
        return this.b == null ? this.a.toString() : this.b.toString();
    }

    @Override // java.util.Map
    public void clear() {
        this.a.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.a.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, Object>> entrySet() {
        return this.a.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return this.a.equals(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return this.a.keySet();
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return this.a.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.a.size();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.a.values();
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public Object putIfAbsent(K k, Object obj) {
        if (this.b == null) {
            throw new UnsupportedOperationException();
        }
        return this.b.putIfAbsent(k, obj);
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public boolean remove(Object obj, Object obj2) {
        if (this.b == null) {
            throw new UnsupportedOperationException();
        }
        return this.b.remove(obj, obj2);
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public boolean replace(K k, Object obj, Object obj2) {
        if (this.b == null) {
            throw new UnsupportedOperationException();
        }
        return this.b.replace(k, obj, obj2);
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public Object replace(K k, Object obj) {
        if (this.b == null) {
            throw new UnsupportedOperationException();
        }
        return this.b.replace(k, obj);
    }
}
