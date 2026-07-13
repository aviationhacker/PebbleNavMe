package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.mh;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor a;
    private final FieldNamingStrategy b;
    private final Excluder c;

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder) {
        this.a = constructorConstructor;
        this.b = fieldNamingStrategy;
        this.c = excluder;
    }

    public boolean excludeField(Field field, boolean z) {
        return (this.c.excludeClass(field.getType(), z) || this.c.excludeField(field, z)) ? false : true;
    }

    private String a(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        return serializedName == null ? this.b.translateName(field) : serializedName.value();
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new Adapter(this.a.get(typeToken), a(gson, (TypeToken<?>) typeToken, (Class<?>) rawType));
        }
        return null;
    }

    private a a(final Gson gson, final Field field, String str, final TypeToken<?> typeToken, boolean z, boolean z2) {
        final boolean zIsPrimitive = Primitives.isPrimitive(typeToken.getRawType());
        return new a(str, z, z2) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            final TypeAdapter<?> a;

            {
                this.a = ReflectiveTypeAdapterFactory.this.a(gson, field, (TypeToken<?>) typeToken);
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.a
            void a(JsonWriter jsonWriter, Object obj) throws IllegalAccessException {
                new mh(gson, this.a, typeToken.getType()).write(jsonWriter, field.get(obj));
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.a
            void a(JsonReader jsonReader, Object obj) throws IllegalAccessException {
                Object obj2 = this.a.read(jsonReader);
                if (obj2 != null || !zIsPrimitive) {
                    field.set(obj, obj2);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TypeAdapter<?> a(Gson gson, Field field, TypeToken<?> typeToken) {
        TypeAdapter<?> typeAdapterA;
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        return (jsonAdapter == null || (typeAdapterA = JsonAdapterAnnotationTypeAdapterFactory.a(this.a, gson, typeToken, jsonAdapter)) == null) ? gson.getAdapter(typeToken) : typeAdapterA;
    }

    private Map<String, a> a(Gson gson, TypeToken<?> typeToken, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = typeToken.getType();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean zExcludeField = excludeField(field, true);
                boolean zExcludeField2 = excludeField(field, false);
                if (zExcludeField || zExcludeField2) {
                    field.setAccessible(true);
                    a aVarA = a(gson, field, a(field), TypeToken.get(C$Gson$Types.resolve(typeToken.getType(), cls, field.getGenericType())), zExcludeField, zExcludeField2);
                    a aVar = (a) linkedHashMap.put(aVarA.g, aVarA);
                    if (aVar != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + aVar.g);
                    }
                }
            }
            typeToken = TypeToken.get(C$Gson$Types.resolve(typeToken.getType(), cls, cls.getGenericSuperclass()));
            cls = typeToken.getRawType();
        }
        return linkedHashMap;
    }

    static abstract class a {
        final String g;
        final boolean h;
        final boolean i;

        abstract void a(JsonReader jsonReader, Object obj);

        abstract void a(JsonWriter jsonWriter, Object obj);

        protected a(String str, boolean z, boolean z2) {
            this.g = str;
            this.h = z;
            this.i = z2;
        }
    }

    public static final class Adapter<T> extends TypeAdapter<T> {
        private final ObjectConstructor<T> a;
        private final Map<String, a> b;

        private Adapter(ObjectConstructor<T> objectConstructor, Map<String, a> map) {
            this.a = objectConstructor;
            this.b = map;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T tConstruct = this.a.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    a aVar = this.b.get(jsonReader.nextName());
                    if (aVar == null || !aVar.i) {
                        jsonReader.skipValue();
                    } else {
                        aVar.a(jsonReader, tConstruct);
                    }
                }
                jsonReader.endObject();
                return tConstruct;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (a aVar : this.b.values()) {
                    if (aVar.h) {
                        jsonWriter.name(aVar.g);
                        aVar.a(jsonWriter, t);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            }
        }
    }
}
