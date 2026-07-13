package Catalano.Math;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SparseArray implements Iterable<Entry> {
    private List<Entry> a;

    public class Entry {
        public int i;
        public double x;

        public Entry(int i, double d) {
            this.i = i;
            this.x = d;
        }
    }

    public SparseArray() {
        this(10);
    }

    private SparseArray(int i) {
        this.a = new ArrayList(i);
    }

    public int size() {
        return this.a.size();
    }

    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<Entry> iterator() {
        return this.a.iterator();
    }

    public double get(int i) {
        for (Entry entry : this.a) {
            if (entry.i == i) {
                return entry.x;
            }
        }
        return 0.0d;
    }

    public boolean set(int i, double d) {
        if (d == 0.0d) {
            remove(i);
            return false;
        }
        int i2 = 0;
        for (Entry entry : this.a) {
            if (entry.i == i) {
                entry.x = d;
                return false;
            }
            if (entry.i <= i) {
                i2++;
            } else {
                this.a.add(i2, new Entry(i, d));
                return true;
            }
        }
        this.a.add(new Entry(i, d));
        return true;
    }

    public void append(int i, double d) {
        if (d != 0.0d) {
            this.a.add(new Entry(i, d));
        }
    }

    public void remove(int i) {
        Iterator<Entry> it = this.a.iterator();
        while (it.hasNext()) {
            if (it.next().i == i) {
                it.remove();
                return;
            }
        }
    }
}
