package com.batescorp.pebble.nav.lib.billing;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Inventory {
    Map<String, SkuDetails> a = new HashMap();
    Map<String, Purchase> b = new HashMap();

    Inventory() {
    }

    public SkuDetails getSkuDetails(String str) {
        return this.a.get(str);
    }

    public Purchase getPurchase(String str) {
        return this.b.get(str);
    }

    public boolean hasPurchase(String str) {
        return this.b.containsKey(str);
    }

    public boolean hasDetails(String str) {
        return this.a.containsKey(str);
    }

    public void erasePurchase(String str) {
        if (this.b.containsKey(str)) {
            this.b.remove(str);
        }
    }

    List<String> a(String str) {
        ArrayList arrayList = new ArrayList();
        for (Purchase purchase : this.b.values()) {
            if (purchase.getItemType().equals(str)) {
                arrayList.add(purchase.getSku());
            }
        }
        return arrayList;
    }

    void a(SkuDetails skuDetails) {
        this.a.put(skuDetails.getSku(), skuDetails);
    }

    void a(Purchase purchase) {
        this.b.put(purchase.getSku(), purchase);
    }
}
