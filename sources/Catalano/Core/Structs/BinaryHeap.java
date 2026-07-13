package Catalano.Core.Structs;

import java.lang.Comparable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BinaryHeap<E extends Comparable<E>> {
    private int b = 0;
    List<E> a = new ArrayList();

    public int count() {
        return this.b;
    }

    public int size() {
        return this.a.size();
    }

    public BinaryHeap() {
    }

    public BinaryHeap(E[] eArr) {
        for (E e : eArr) {
            this.a.add(e);
        }
        for (int size = (this.a.size() / 2) - 1; size >= 0; size--) {
            b(size, this.a.get(size));
        }
    }

    public void add(E e) {
        this.a.add(null);
        a(this.a.size() - 1, e);
        this.b++;
    }

    public E remove() {
        E e = this.a.get(0);
        b(0, this.a.remove(this.a.size() - 1));
        this.b--;
        return e;
    }

    public void remove(E e) {
        this.a.remove(e);
    }

    public E min() {
        return this.a.get(0);
    }

    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    private void a(int i, E e) {
        while (i > 0) {
            int i2 = (i - 1) / 2;
            E e2 = this.a.get(i2);
            if (e.compareTo(e2) >= 0) {
                break;
            }
            this.a.set(i, e2);
            i = i2;
        }
        this.a.set(i, e);
    }

    private void b(int i, E e) {
        if (!this.a.isEmpty()) {
            while (i < this.a.size() / 2) {
                int i2 = (i * 2) + 1;
                int i3 = (i2 >= this.a.size() + (-1) || this.a.get(i2).compareTo(this.a.get(i2 + 1)) <= 0) ? i2 : i2 + 1;
                if (e.compareTo(this.a.get(i3)) < 0) {
                    break;
                }
                this.a.set(i, this.a.get(i3));
                i = i3;
            }
            this.a.set(i, e);
        }
    }
}
