package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import defpackage.mf;
import defpackage.mg;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class GsonBuilder {
    private boolean g;
    private String h;
    private boolean k;
    private boolean l;
    private boolean n;
    private boolean o;
    private Excluder a = Excluder.DEFAULT;
    private LongSerializationPolicy b = LongSerializationPolicy.DEFAULT;
    private FieldNamingStrategy c = FieldNamingPolicy.IDENTITY;
    private final Map<Type, InstanceCreator<?>> d = new HashMap();
    private final List<TypeAdapterFactory> e = new ArrayList();
    private final List<TypeAdapterFactory> f = new ArrayList();
    private int i = 2;
    private int j = 2;
    private boolean m = true;

    public GsonBuilder setVersion(double d) {
        this.a = this.a.withVersion(d);
        return this;
    }

    public GsonBuilder excludeFieldsWithModifiers(int... iArr) {
        this.a = this.a.withModifiers(iArr);
        return this;
    }

    public GsonBuilder generateNonExecutableJson() {
        this.o = true;
        return this;
    }

    public GsonBuilder excludeFieldsWithoutExposeAnnotation() {
        this.a = this.a.excludeFieldsWithoutExposeAnnotation();
        return this;
    }

    public GsonBuilder serializeNulls() {
        this.g = true;
        return this;
    }

    public GsonBuilder enableComplexMapKeySerialization() {
        this.k = true;
        return this;
    }

    public GsonBuilder disableInnerClassSerialization() {
        this.a = this.a.disableInnerClassSerialization();
        return this;
    }

    public GsonBuilder setLongSerializationPolicy(LongSerializationPolicy longSerializationPolicy) {
        this.b = longSerializationPolicy;
        return this;
    }

    public GsonBuilder setFieldNamingPolicy(FieldNamingPolicy fieldNamingPolicy) {
        this.c = fieldNamingPolicy;
        return this;
    }

    public GsonBuilder setFieldNamingStrategy(FieldNamingStrategy fieldNamingStrategy) {
        this.c = fieldNamingStrategy;
        return this;
    }

    public GsonBuilder setExclusionStrategies(ExclusionStrategy... exclusionStrategyArr) {
        for (ExclusionStrategy exclusionStrategy : exclusionStrategyArr) {
            this.a = this.a.withExclusionStrategy(exclusionStrategy, true, true);
        }
        return this;
    }

    public GsonBuilder addSerializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        this.a = this.a.withExclusionStrategy(exclusionStrategy, true, false);
        return this;
    }

    public GsonBuilder addDeserializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        this.a = this.a.withExclusionStrategy(exclusionStrategy, false, true);
        return this;
    }

    public GsonBuilder setPrettyPrinting() {
        this.n = true;
        return this;
    }

    public GsonBuilder disableHtmlEscaping() {
        this.m = false;
        return this;
    }

    public GsonBuilder setDateFormat(String str) {
        this.h = str;
        return this;
    }

    public GsonBuilder setDateFormat(int i) {
        this.i = i;
        this.h = null;
        return this;
    }

    public GsonBuilder setDateFormat(int i, int i2) {
        this.i = i;
        this.j = i2;
        this.h = null;
        return this;
    }

    public GsonBuilder registerTypeAdapter(Type type, Object obj) {
        C$Gson$Preconditions.checkArgument((obj instanceof JsonSerializer) || (obj instanceof JsonDeserializer) || (obj instanceof InstanceCreator) || (obj instanceof TypeAdapter));
        if (obj instanceof InstanceCreator) {
            this.d.put(type, (InstanceCreator) obj);
        }
        if ((obj instanceof JsonSerializer) || (obj instanceof JsonDeserializer)) {
            this.e.add(mg.b(TypeToken.get(type), obj));
        }
        if (obj instanceof TypeAdapter) {
            this.e.add(TypeAdapters.newFactory(TypeToken.get(type), (TypeAdapter) obj));
        }
        return this;
    }

    public GsonBuilder registerTypeAdapterFactory(TypeAdapterFactory typeAdapterFactory) {
        this.e.add(typeAdapterFactory);
        return this;
    }

    public GsonBuilder registerTypeHierarchyAdapter(Class<?> cls, Object obj) {
        C$Gson$Preconditions.checkArgument((obj instanceof JsonSerializer) || (obj instanceof JsonDeserializer) || (obj instanceof TypeAdapter));
        if ((obj instanceof JsonDeserializer) || (obj instanceof JsonSerializer)) {
            this.f.add(0, mg.a(cls, obj));
        }
        if (obj instanceof TypeAdapter) {
            this.e.add(TypeAdapters.newTypeHierarchyFactory(cls, (TypeAdapter) obj));
        }
        return this;
    }

    public GsonBuilder serializeSpecialFloatingPointValues() {
        this.l = true;
        return this;
    }

    public Gson create() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        arrayList.addAll(this.f);
        a(this.h, this.i, this.j, arrayList);
        return new Gson(this.a, this.c, this.d, this.g, this.k, this.o, this.m, this.n, this.l, this.b, arrayList);
    }

    private void a(String str, int i, int i2, List<TypeAdapterFactory> list) {
        mf mfVar;
        if (str != null && !"".equals(str.trim())) {
            mfVar = new mf(str);
        } else if (i != 2 && i2 != 2) {
            mfVar = new mf(i, i2);
        } else {
            return;
        }
        list.add(mg.a((TypeToken<?>) TypeToken.get(Date.class), mfVar));
        list.add(mg.a((TypeToken<?>) TypeToken.get(Timestamp.class), mfVar));
        list.add(mg.a((TypeToken<?>) TypeToken.get(java.sql.Date.class), mfVar));
    }
}
