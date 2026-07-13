package defpackage;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class mg<T> extends TypeAdapter<T> {
    private final JsonSerializer<T> a;
    private final JsonDeserializer<T> b;
    private final Gson c;
    private final TypeToken<T> d;
    private final TypeAdapterFactory e;
    private TypeAdapter<T> f;

    private mg(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory) {
        this.a = jsonSerializer;
        this.b = jsonDeserializer;
        this.c = gson;
        this.d = typeToken;
        this.e = typeAdapterFactory;
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) {
        if (this.b == null) {
            return a().read(jsonReader);
        }
        JsonElement jsonElement = Streams.parse(jsonReader);
        if (jsonElement.isJsonNull()) {
            return null;
        }
        return this.b.deserialize(jsonElement, this.d.getType(), this.c.a);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        if (this.a == null) {
            a().write(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.nullValue();
        } else {
            Streams.write(this.a.serialize(t, this.d.getType(), this.c.b), jsonWriter);
        }
    }

    private TypeAdapter<T> a() {
        TypeAdapter<T> typeAdapter = this.f;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        TypeAdapter<T> delegateAdapter = this.c.getDelegateAdapter(this.e, this.d);
        this.f = delegateAdapter;
        return delegateAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static TypeAdapterFactory a(TypeToken<?> typeToken, Object obj) {
        return new a(obj, typeToken, false, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static TypeAdapterFactory b(TypeToken<?> typeToken, Object obj) {
        return new a(obj, typeToken, typeToken.getType() == typeToken.getRawType(), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static TypeAdapterFactory a(Class<?> cls, Object obj) {
        return new a(obj, null, false, cls);
    }

    static class a implements TypeAdapterFactory {
        private final TypeToken<?> a;
        private final boolean b;
        private final Class<?> c;
        private final JsonSerializer<?> d;
        private final JsonDeserializer<?> e;

        private a(Object obj, TypeToken<?> typeToken, boolean z, Class<?> cls) {
            this.d = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.e = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : null;
            C$Gson$Preconditions.checkArgument((this.d == null && this.e == null) ? false : true);
            this.a = typeToken;
            this.b = z;
            this.c = cls;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            boolean zIsAssignableFrom;
            if (this.a != null) {
                zIsAssignableFrom = this.a.equals(typeToken) || (this.b && this.a.getType() == typeToken.getRawType());
            } else {
                zIsAssignableFrom = this.c.isAssignableFrom(typeToken.getRawType());
            }
            if (zIsAssignableFrom) {
                return new mg(this.d, this.e, gson, typeToken, this);
            }
            return null;
        }
    }
}
