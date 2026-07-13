package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public final class FieldAttributes {
    private final Field a;

    public FieldAttributes(Field field) {
        C$Gson$Preconditions.checkNotNull(field);
        this.a = field;
    }

    public Class<?> getDeclaringClass() {
        return this.a.getDeclaringClass();
    }

    public String getName() {
        return this.a.getName();
    }

    public Type getDeclaredType() {
        return this.a.getGenericType();
    }

    public Class<?> getDeclaredClass() {
        return this.a.getType();
    }

    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) this.a.getAnnotation(cls);
    }

    public Collection<Annotation> getAnnotations() {
        return Arrays.asList(this.a.getAnnotations());
    }

    public boolean hasModifier(int i) {
        return (this.a.getModifiers() & i) != 0;
    }
}
