package Catalano.Math.Geometry;

import Catalano.Core.IntPoint;
import defpackage.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class GrahamConvexHull {
    public ArrayList<IntPoint> FindFull(ArrayList<IntPoint> arrayList) {
        b bVar;
        int i;
        ArrayList arrayList2 = new ArrayList();
        Iterator<IntPoint> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new b(it.next()));
        }
        b bVar2 = (b) arrayList2.get(0);
        int size = arrayList2.size();
        int i2 = 1;
        b bVar3 = bVar2;
        int i3 = 0;
        while (i2 < size) {
            if (((b) arrayList2.get(i2)).a < bVar3.a || (((b) arrayList2.get(i2)).a == bVar3.a && ((b) arrayList2.get(i2)).b < bVar3.b)) {
                bVar = (b) arrayList2.get(i2);
                i = i2;
            } else {
                bVar = bVar3;
                i = i3;
            }
            i2++;
            i3 = i;
            bVar3 = bVar;
        }
        arrayList2.remove(i3);
        int size2 = arrayList2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            int i5 = ((b) arrayList2.get(i4)).a - bVar3.a;
            int i6 = ((b) arrayList2.get(i4)).b - bVar3.b;
            ((b) arrayList2.get(i4)).d = (i5 * i5) + (i6 * i6);
            ((b) arrayList2.get(i4)).c = i5 == 0 ? Float.POSITIVE_INFINITY : i6 / i5;
        }
        Collections.sort(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(bVar3);
        arrayList3.add(arrayList2.get(0));
        arrayList2.remove(0);
        b bVar4 = (b) arrayList3.get(1);
        b bVar5 = (b) arrayList3.get(0);
        b bVar6 = bVar4;
        while (!arrayList2.isEmpty()) {
            b bVar7 = (b) arrayList2.get(0);
            if (bVar7.c == bVar6.c || bVar7.d == 0.0f) {
                arrayList2.remove(0);
            } else {
                if (((bVar7.a - bVar5.a) * (bVar6.b - bVar7.b)) - ((bVar6.a - bVar7.a) * (bVar7.b - bVar5.b)) < 0) {
                    arrayList3.add(bVar7);
                    arrayList2.remove(0);
                    bVar5 = bVar6;
                } else {
                    arrayList3.remove(arrayList3.size() - 1);
                    bVar7 = bVar5;
                    bVar5 = (b) arrayList3.get(arrayList3.size() - 2);
                }
                bVar6 = bVar7;
            }
        }
        ArrayList<IntPoint> arrayList4 = new ArrayList<>();
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((b) it2.next()).a());
        }
        return arrayList4;
    }
}
