package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FiltersSequence implements IApplyInPlace {
    private List<IApplyInPlace> a;

    public FiltersSequence() {
        this.a = new ArrayList();
    }

    public FiltersSequence(List<IApplyInPlace> list) {
        this.a = new ArrayList();
        this.a = list;
    }

    public void add(IApplyInPlace iApplyInPlace) {
        this.a.add(iApplyInPlace);
    }

    public void clear() {
        this.a.clear();
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        Iterator<IApplyInPlace> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().applyInPlace(fastBitmap);
        }
    }
}
