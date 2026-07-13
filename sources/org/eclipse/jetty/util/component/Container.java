package org.eclipse.jetty.util.component;

import java.lang.ref.WeakReference;
import java.util.EventListener;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class Container {
    private static final Logger a = Log.getLogger((Class<?>) Container.class);
    private final CopyOnWriteArrayList<Listener> b = new CopyOnWriteArrayList<>();

    public interface Listener extends EventListener {
        void add(Relationship relationship);

        void addBean(Object obj);

        void remove(Relationship relationship);

        void removeBean(Object obj);
    }

    public void addEventListener(Listener listener) {
        this.b.add(listener);
    }

    public void removeEventListener(Listener listener) {
        this.b.remove(listener);
    }

    public void update(Object obj, Object obj2, Object obj3, String str) {
        if (obj2 != null && !obj2.equals(obj3)) {
            b(obj, obj2, str);
        }
        if (obj3 != null && !obj3.equals(obj2)) {
            a(obj, obj3, str);
        }
    }

    public void update(Object obj, Object obj2, Object obj3, String str, boolean z) {
        if (obj2 != null && !obj2.equals(obj3)) {
            b(obj, obj2, str);
            if (z) {
                removeBean(obj2);
            }
        }
        if (obj3 != null && !obj3.equals(obj2)) {
            if (z) {
                addBean(obj3);
            }
            a(obj, obj3, str);
        }
    }

    public void update(Object obj, Object[] objArr, Object[] objArr2, String str) {
        update(obj, objArr, objArr2, str, false);
    }

    public void update(Object obj, Object[] objArr, Object[] objArr2, String str, boolean z) {
        Object[] objArr3;
        if (objArr2 != null) {
            Object[] objArr4 = new Object[objArr2.length];
            int length = objArr2.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                boolean z2 = true;
                if (objArr != null) {
                    int length2 = objArr.length;
                    while (true) {
                        int i2 = length2 - 1;
                        if (length2 <= 0) {
                            break;
                        }
                        if (objArr2[i] == null || !objArr2[i].equals(objArr[i2])) {
                            length2 = i2;
                        } else {
                            objArr[i2] = null;
                            length2 = i2;
                            z2 = false;
                        }
                    }
                }
                if (z2) {
                    objArr4[i] = objArr2[i];
                }
                length = i;
            }
            objArr3 = objArr4;
        } else {
            objArr3 = null;
        }
        if (objArr != null) {
            int length3 = objArr.length;
            while (true) {
                int i3 = length3 - 1;
                if (length3 <= 0) {
                    break;
                }
                if (objArr[i3] != null) {
                    b(obj, objArr[i3], str);
                    if (z) {
                        removeBean(objArr[i3]);
                        length3 = i3;
                    }
                }
                length3 = i3;
            }
        }
        if (objArr3 != null) {
            for (int i4 = 0; i4 < objArr3.length; i4++) {
                if (objArr3[i4] != null) {
                    if (z) {
                        addBean(objArr3[i4]);
                    }
                    a(obj, objArr3[i4], str);
                }
            }
        }
    }

    public void addBean(Object obj) {
        if (this.b != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < LazyList.size(this.b)) {
                    ((Listener) LazyList.get(this.b, i2)).addBean(obj);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void removeBean(Object obj) {
        if (this.b != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < LazyList.size(this.b)) {
                    ((Listener) LazyList.get(this.b, i2)).removeBean(obj);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void a(Object obj, Object obj2, String str) {
        if (a.isDebugEnabled()) {
            a.debug("Container " + obj + " + " + obj2 + " as " + str, new Object[0]);
        }
        if (this.b != null) {
            Relationship relationship = new Relationship(obj, obj2, str);
            for (int i = 0; i < LazyList.size(this.b); i++) {
                ((Listener) LazyList.get(this.b, i)).add(relationship);
            }
        }
    }

    private void b(Object obj, Object obj2, String str) {
        if (a.isDebugEnabled()) {
            a.debug("Container " + obj + " - " + obj2 + " as " + str, new Object[0]);
        }
        if (this.b != null) {
            Relationship relationship = new Relationship(obj, obj2, str);
            for (int i = 0; i < LazyList.size(this.b); i++) {
                ((Listener) LazyList.get(this.b, i)).remove(relationship);
            }
        }
    }

    public static class Relationship {
        private final WeakReference<Object> a;
        private final WeakReference<Object> b;
        private String c;
        private Container d;

        private Relationship(Container container, Object obj, Object obj2, String str) {
            this.d = container;
            this.a = new WeakReference<>(obj);
            this.b = new WeakReference<>(obj2);
            this.c = str;
        }

        public Container getContainer() {
            return this.d;
        }

        public Object getChild() {
            return this.b.get();
        }

        public Object getParent() {
            return this.a.get();
        }

        public String getRelationship() {
            return this.c;
        }

        public String toString() {
            return this.a + "---" + this.c + "-->" + this.b;
        }

        public int hashCode() {
            return this.a.hashCode() + this.b.hashCode() + this.c.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Relationship)) {
                return false;
            }
            Relationship relationship = (Relationship) obj;
            return relationship.a.get() == this.a.get() && relationship.b.get() == this.b.get() && relationship.c.equals(this.c);
        }
    }
}
