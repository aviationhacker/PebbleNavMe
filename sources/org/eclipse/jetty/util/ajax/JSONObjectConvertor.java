package org.eclipse.jetty.util.ajax;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.eclipse.jetty.util.ajax.JSON;

/* JADX INFO: loaded from: classes.dex */
public class JSONObjectConvertor implements JSON.Convertor {
    private boolean a;
    private Set b;

    public JSONObjectConvertor() {
        this.b = null;
        this.a = false;
    }

    public JSONObjectConvertor(boolean z) {
        this.b = null;
        this.a = z;
    }

    public JSONObjectConvertor(boolean z, String[] strArr) {
        this.b = null;
        this.a = z;
        if (strArr != null) {
            this.b = new HashSet(Arrays.asList(strArr));
        }
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        if (this.a) {
            throw new UnsupportedOperationException();
        }
        return map;
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        String str;
        try {
            obj.getClass();
            if (this.a) {
                output.addClass(obj.getClass());
            }
            for (Method method : obj.getClass().getMethods()) {
                if (!Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length == 0 && method.getReturnType() != null && method.getDeclaringClass() != Object.class) {
                    String name = method.getName();
                    if (name.startsWith("is")) {
                        str = name.substring(2, 3).toLowerCase(Locale.ENGLISH) + name.substring(3);
                    } else if (name.startsWith("get")) {
                        str = name.substring(3, 4).toLowerCase(Locale.ENGLISH) + name.substring(4);
                    }
                    if (includeField(str, obj, method)) {
                        output.add(str, method.invoke(obj, (Object[]) null));
                    }
                }
            }
        } catch (Throwable th) {
            throw new IllegalArgumentException(th);
        }
    }

    protected boolean includeField(String str, Object obj, Method method) {
        return this.b == null || !this.b.contains(str);
    }
}
