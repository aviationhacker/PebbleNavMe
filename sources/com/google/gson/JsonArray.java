package com.google.gson;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class JsonArray extends JsonElement implements Iterable<JsonElement> {
    private final List<JsonElement> a = new ArrayList();

    public void add(JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        this.a.add(jsonElement);
    }

    public void addAll(JsonArray jsonArray) {
        this.a.addAll(jsonArray.a);
    }

    public JsonElement set(int i, JsonElement jsonElement) {
        return this.a.set(i, jsonElement);
    }

    public boolean remove(JsonElement jsonElement) {
        return this.a.remove(jsonElement);
    }

    public JsonElement remove(int i) {
        return this.a.remove(i);
    }

    public boolean contains(JsonElement jsonElement) {
        return this.a.contains(jsonElement);
    }

    public int size() {
        return this.a.size();
    }

    @Override // java.lang.Iterable
    public Iterator<JsonElement> iterator() {
        return this.a.iterator();
    }

    public JsonElement get(int i) {
        return this.a.get(i);
    }

    @Override // com.google.gson.JsonElement
    public Number getAsNumber() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsNumber();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public String getAsString() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsString();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public double getAsDouble() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsDouble();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public BigDecimal getAsBigDecimal() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsBigDecimal();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public BigInteger getAsBigInteger() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsBigInteger();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public float getAsFloat() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsFloat();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public long getAsLong() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsLong();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public int getAsInt() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsInt();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public byte getAsByte() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsByte();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public char getAsCharacter() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsCharacter();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public short getAsShort() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsShort();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.JsonElement
    public boolean getAsBoolean() {
        if (this.a.size() == 1) {
            return this.a.get(0).getAsBoolean();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof JsonArray) && ((JsonArray) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
