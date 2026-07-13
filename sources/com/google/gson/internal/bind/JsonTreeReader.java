package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class JsonTreeReader extends JsonReader {
    private static final Reader a = new Reader() { // from class: com.google.gson.internal.bind.JsonTreeReader.1
        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }
    };
    private static final Object b = new Object();
    private final List<Object> c;

    public JsonTreeReader(JsonElement jsonElement) {
        super(a);
        this.c = new ArrayList();
        this.c.add(jsonElement);
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginArray() {
        a(JsonToken.BEGIN_ARRAY);
        this.c.add(((JsonArray) a()).iterator());
    }

    @Override // com.google.gson.stream.JsonReader
    public void endArray() {
        a(JsonToken.END_ARRAY);
        b();
        b();
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginObject() {
        a(JsonToken.BEGIN_OBJECT);
        this.c.add(((JsonObject) a()).entrySet().iterator());
    }

    @Override // com.google.gson.stream.JsonReader
    public void endObject() {
        a(JsonToken.END_OBJECT);
        b();
        b();
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean hasNext() {
        JsonToken jsonTokenPeek = peek();
        return (jsonTokenPeek == JsonToken.END_OBJECT || jsonTokenPeek == JsonToken.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.stream.JsonReader
    public JsonToken peek() {
        if (this.c.isEmpty()) {
            return JsonToken.END_DOCUMENT;
        }
        Object objA = a();
        if (objA instanceof Iterator) {
            boolean z = this.c.get(this.c.size() - 2) instanceof JsonObject;
            Iterator it = (Iterator) objA;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z) {
                return JsonToken.NAME;
            }
            this.c.add(it.next());
            return peek();
        }
        if (objA instanceof JsonObject) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (objA instanceof JsonArray) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (objA instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) objA;
            if (jsonPrimitive.isString()) {
                return JsonToken.STRING;
            }
            if (jsonPrimitive.isBoolean()) {
                return JsonToken.BOOLEAN;
            }
            if (jsonPrimitive.isNumber()) {
                return JsonToken.NUMBER;
            }
            throw new AssertionError();
        }
        if (objA instanceof JsonNull) {
            return JsonToken.NULL;
        }
        if (objA == b) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new AssertionError();
    }

    private Object a() {
        return this.c.get(this.c.size() - 1);
    }

    private Object b() {
        return this.c.remove(this.c.size() - 1);
    }

    private void a(JsonToken jsonToken) {
        if (peek() != jsonToken) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek());
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextName() {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) a()).next();
        this.c.add(entry.getValue());
        return (String) entry.getKey();
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextString() {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.STRING && jsonTokenPeek != JsonToken.NUMBER) {
            throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + jsonTokenPeek);
        }
        return ((JsonPrimitive) b()).getAsString();
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean nextBoolean() {
        a(JsonToken.BOOLEAN);
        return ((JsonPrimitive) b()).getAsBoolean();
    }

    @Override // com.google.gson.stream.JsonReader
    public void nextNull() {
        a(JsonToken.NULL);
        b();
    }

    @Override // com.google.gson.stream.JsonReader
    public double nextDouble() {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.NUMBER && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + jsonTokenPeek);
        }
        double asDouble = ((JsonPrimitive) a()).getAsDouble();
        if (!isLenient() && (Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + asDouble);
        }
        b();
        return asDouble;
    }

    @Override // com.google.gson.stream.JsonReader
    public long nextLong() {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.NUMBER && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + jsonTokenPeek);
        }
        long asLong = ((JsonPrimitive) a()).getAsLong();
        b();
        return asLong;
    }

    @Override // com.google.gson.stream.JsonReader
    public int nextInt() {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.NUMBER && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + jsonTokenPeek);
        }
        int asInt = ((JsonPrimitive) a()).getAsInt();
        b();
        return asInt;
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.c.clear();
        this.c.add(b);
    }

    @Override // com.google.gson.stream.JsonReader
    public void skipValue() {
        if (peek() == JsonToken.NAME) {
            nextName();
        } else {
            b();
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String toString() {
        return getClass().getSimpleName();
    }

    public void promoteNameToValue() {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) a()).next();
        this.c.add(entry.getValue());
        this.c.add(new JsonPrimitive((String) entry.getKey()));
    }
}
