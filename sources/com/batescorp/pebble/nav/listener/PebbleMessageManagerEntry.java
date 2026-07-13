package com.batescorp.pebble.nav.listener;

import com.getpebble.android.kit.util.PebbleDictionary;

/* JADX INFO: loaded from: classes.dex */
public class PebbleMessageManagerEntry {
    private PebbleDictionary a;
    private PebbleMessageManagerEntryType b;

    public PebbleMessageManagerEntry(PebbleDictionary pebbleDictionary, PebbleMessageManagerEntryType pebbleMessageManagerEntryType) {
        this.a = pebbleDictionary;
        this.b = pebbleMessageManagerEntryType;
    }

    public PebbleDictionary getPebbleDictionary() {
        return this.a;
    }

    public PebbleMessageManagerEntryType getType() {
        return this.b;
    }
}
