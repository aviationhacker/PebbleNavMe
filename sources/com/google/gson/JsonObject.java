package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class JsonObject extends JsonElement {
    private final LinkedTreeMap<String, JsonElement> a = new LinkedTreeMap<>();

    public void add(String str, JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        this.a.put(str, jsonElement);
    }

    public JsonElement remove(String str) {
        return this.a.remove(str);
    }

    public void addProperty(String str, String str2) {
        add(str, a(str2));
    }

    public void addProperty(String str, Number number) {
        add(str, a(number));
    }

    public void addProperty(String str, Boolean bool) {
        add(str, a(bool));
    }

    public void addProperty(String str, Character ch) {
        add(str, a(ch));
    }

    private JsonElement a(Object obj) {
        return obj == null ? JsonNull.INSTANCE : new JsonPrimitive(obj);
    }

    public Set<Map.Entry<String, JsonElement>> entrySet() {
        return this.a.entrySet();
    }

    public boolean has(String str) {
        return this.a.containsKey(str);
    }

    public JsonElement get(String str) {
        return this.a.get(str);
    }

    public JsonPrimitive getAsJsonPrimitive(String str) {
        return (JsonPrimitive) this.a.get(str);
    }

    public JsonArray getAsJsonArray(String str) {
        return (JsonArray) this.a.get(str);
    }

    public JsonObject getAsJsonObject(String str) {
        return (JsonObject) this.a.get(str);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof JsonObject) && ((JsonObject) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
