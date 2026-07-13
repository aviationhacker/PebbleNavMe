package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    private boolean d;
    private double a = -1.0d;
    private int b = 136;
    private boolean c = true;
    private List<ExclusionStrategy> e = Collections.emptyList();
    private List<ExclusionStrategy> f = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Excluder m4clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public Excluder withVersion(double d) {
        Excluder excluderM4clone = m4clone();
        excluderM4clone.a = d;
        return excluderM4clone;
    }

    public Excluder withModifiers(int... iArr) {
        Excluder excluderM4clone = m4clone();
        excluderM4clone.b = 0;
        for (int i : iArr) {
            excluderM4clone.b = i | excluderM4clone.b;
        }
        return excluderM4clone;
    }

    public Excluder disableInnerClassSerialization() {
        Excluder excluderM4clone = m4clone();
        excluderM4clone.c = false;
        return excluderM4clone;
    }

    public Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder excluderM4clone = m4clone();
        excluderM4clone.d = true;
        return excluderM4clone;
    }

    public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z, boolean z2) {
        Excluder excluderM4clone = m4clone();
        if (z) {
            excluderM4clone.e = new ArrayList(this.e);
            excluderM4clone.e.add(exclusionStrategy);
        }
        if (z2) {
            excluderM4clone.f = new ArrayList(this.f);
            excluderM4clone.f.add(exclusionStrategy);
        }
        return excluderM4clone;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        final boolean zExcludeClass = excludeClass(rawType, true);
        final boolean zExcludeClass2 = excludeClass(rawType, false);
        if (zExcludeClass || zExcludeClass2) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
                private TypeAdapter<T> f;

                @Override // com.google.gson.TypeAdapter
                public T read(JsonReader jsonReader) throws IOException {
                    if (!zExcludeClass2) {
                        return a().read(jsonReader);
                    }
                    jsonReader.skipValue();
                    return null;
                }

                @Override // com.google.gson.TypeAdapter
                public void write(JsonWriter jsonWriter, T t) throws IOException {
                    if (zExcludeClass) {
                        jsonWriter.nullValue();
                    } else {
                        a().write(jsonWriter, t);
                    }
                }

                private TypeAdapter<T> a() {
                    TypeAdapter<T> typeAdapter = this.f;
                    if (typeAdapter != null) {
                        return typeAdapter;
                    }
                    TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.f = delegateAdapter;
                    return delegateAdapter;
                }
            };
        }
        return null;
    }

    public boolean excludeField(Field field, boolean z) {
        Expose expose;
        if ((this.b & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.a == -1.0d || a((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) && !field.isSynthetic()) {
            if (this.d && ((expose = (Expose) field.getAnnotation(Expose.class)) == null || (!z ? expose.deserialize() : expose.serialize()))) {
                return true;
            }
            if ((this.c || !b(field.getType())) && !a(field.getType())) {
                List<ExclusionStrategy> list = z ? this.e : this.f;
                if (!list.isEmpty()) {
                    FieldAttributes fieldAttributes = new FieldAttributes(field);
                    Iterator<ExclusionStrategy> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().shouldSkipField(fieldAttributes)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public boolean excludeClass(Class<?> cls, boolean z) {
        if (this.a != -1.0d && !a((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return true;
        }
        if ((this.c || !b(cls)) && !a(cls)) {
            Iterator<ExclusionStrategy> it = (z ? this.e : this.f).iterator();
            while (it.hasNext()) {
                if (it.next().shouldSkipClass(cls)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    private boolean a(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean b(Class<?> cls) {
        return cls.isMemberClass() && !c(cls);
    }

    private boolean c(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean a(Since since, Until until) {
        return a(since) && a(until);
    }

    private boolean a(Since since) {
        return since == null || since.value() <= this.a;
    }

    private boolean a(Until until) {
        return until == null || until.value() > this.a;
    }
}
