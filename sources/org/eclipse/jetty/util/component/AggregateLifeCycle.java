package org.eclipse.jetty.util.component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class AggregateLifeCycle extends AbstractLifeCycle implements Destroyable, Dumpable {
    private static final Logger a = Log.getLogger((Class<?>) AggregateLifeCycle.class);
    private final List<a> b = new CopyOnWriteArrayList();
    private boolean c = false;

    class a {
        final Object a;
        volatile boolean b = true;

        a(Object obj) {
            this.a = obj;
        }

        public String toString() {
            return "{" + this.a + "," + this.b + "}";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        for (a aVar : this.b) {
            if (aVar.b && (aVar.a instanceof LifeCycle)) {
                LifeCycle lifeCycle = (LifeCycle) aVar.a;
                if (!lifeCycle.isRunning()) {
                    lifeCycle.start();
                }
            }
        }
        this.c = true;
        super.doStart();
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        this.c = false;
        super.doStop();
        ArrayList<a> arrayList = new ArrayList(this.b);
        Collections.reverse(arrayList);
        for (a aVar : arrayList) {
            if (aVar.b && (aVar.a instanceof LifeCycle)) {
                LifeCycle lifeCycle = (LifeCycle) aVar.a;
                if (lifeCycle.isRunning()) {
                    lifeCycle.stop();
                }
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.Destroyable
    public void destroy() {
        ArrayList<a> arrayList = new ArrayList(this.b);
        Collections.reverse(arrayList);
        for (a aVar : arrayList) {
            if ((aVar.a instanceof Destroyable) && aVar.b) {
                ((Destroyable) aVar.a).destroy();
            }
        }
        this.b.clear();
    }

    public boolean contains(Object obj) {
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            if (it.next().a == obj) {
                return true;
            }
        }
        return false;
    }

    public boolean isManaged(Object obj) {
        for (a aVar : this.b) {
            if (aVar.a == obj) {
                return aVar.b;
            }
        }
        return false;
    }

    public boolean addBean(Object obj) {
        return addBean(obj, ((obj instanceof LifeCycle) && ((LifeCycle) obj).isStarted()) ? false : true);
    }

    public boolean addBean(Object obj, boolean z) {
        if (contains(obj)) {
            return false;
        }
        a aVar = new a(obj);
        aVar.b = z;
        this.b.add(aVar);
        if (obj instanceof LifeCycle) {
            LifeCycle lifeCycle = (LifeCycle) obj;
            if (z && this.c) {
                try {
                    lifeCycle.start();
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return true;
    }

    public void manage(Object obj) {
        for (a aVar : this.b) {
            if (aVar.a == obj) {
                aVar.b = true;
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    public void unmanage(Object obj) {
        for (a aVar : this.b) {
            if (aVar.a == obj) {
                aVar.b = false;
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    public Collection<Object> getBeans() {
        return getBeans(Object.class);
    }

    public <T> List<T> getBeans(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        for (a aVar : this.b) {
            if (cls.isInstance(aVar.a)) {
                arrayList.add(aVar.a);
            }
        }
        return arrayList;
    }

    public <T> T getBean(Class<T> cls) {
        for (a aVar : this.b) {
            if (cls.isInstance(aVar.a)) {
                return (T) aVar.a;
            }
        }
        return null;
    }

    public void removeBeans() {
        this.b.clear();
    }

    public boolean removeBean(Object obj) {
        for (a aVar : this.b) {
            if (aVar.a == obj) {
                this.b.remove(aVar);
                return true;
            }
        }
        return false;
    }

    public void dumpStdErr() {
        try {
            dump(System.err, "");
        } catch (IOException e) {
            a.warn(e);
        }
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public String dump() {
        return dump(this);
    }

    public static String dump(Dumpable dumpable) {
        StringBuilder sb = new StringBuilder();
        try {
            dumpable.dump(sb, "");
        } catch (IOException e) {
            a.warn(e);
        }
        return sb.toString();
    }

    public void dump(Appendable appendable) throws IOException {
        dump(appendable, "");
    }

    protected void dumpThis(Appendable appendable) throws IOException {
        appendable.append(String.valueOf(this)).append(" - ").append(getState()).append("\n");
    }

    public static void dumpObject(Appendable appendable, Object obj) throws IOException {
        try {
            if (obj instanceof LifeCycle) {
                appendable.append(String.valueOf(obj)).append(" - ").append(AbstractLifeCycle.getState((LifeCycle) obj)).append("\n");
            } else {
                appendable.append(String.valueOf(obj)).append("\n");
            }
        } catch (Throwable th) {
            appendable.append(" => ").append(th.toString()).append('\n');
        }
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) throws IOException {
        dumpThis(appendable);
        int size = this.b.size();
        if (size != 0) {
            int i = 0;
            for (a aVar : this.b) {
                i++;
                appendable.append(str).append(" +- ");
                if (aVar.b) {
                    if (aVar.a instanceof Dumpable) {
                        ((Dumpable) aVar.a).dump(appendable, str + (i == size ? "    " : " |  "));
                    } else {
                        dumpObject(appendable, aVar.a);
                    }
                } else {
                    dumpObject(appendable, aVar.a);
                }
            }
            if (i != size) {
                appendable.append(str).append(" |\n");
            }
        }
    }

    public static void dump(Appendable appendable, String str, Collection<?>... collectionArr) throws IOException {
        int i = 0;
        if (collectionArr.length != 0) {
            int length = collectionArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                int size = collectionArr[i2].size() + i3;
                i2++;
                i3 = size;
            }
            if (i3 != 0) {
                int length2 = collectionArr.length;
                int i4 = 0;
                while (i4 < length2) {
                    int i5 = i;
                    for (Object obj : collectionArr[i4]) {
                        i5++;
                        appendable.append(str).append(" +- ");
                        if (obj instanceof Dumpable) {
                            ((Dumpable) obj).dump(appendable, str + (i5 == i3 ? "    " : " |  "));
                        } else {
                            dumpObject(appendable, obj);
                        }
                    }
                    if (i5 != i3) {
                        appendable.append(str).append(" |\n");
                    }
                    i4++;
                    i = i5;
                }
            }
        }
    }
}
