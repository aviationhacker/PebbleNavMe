package org.eclipse.jetty.util.ajax;

import java.lang.reflect.Method;
import java.util.Map;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.ajax.JSON;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class JSONEnumConvertor implements JSON.Convertor {
    private static final Logger a = Log.getLogger((Class<?>) JSONEnumConvertor.class);
    private boolean b;
    private Method c;

    public JSONEnumConvertor() {
        this(false);
    }

    public JSONEnumConvertor(boolean z) {
        try {
            this.c = Loader.loadClass(getClass(), "java.lang.Enum").getMethod("valueOf", Class.class, String.class);
            this.b = z;
        } catch (Exception e) {
            throw new RuntimeException("!Enums", e);
        }
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        if (!this.b) {
            throw new UnsupportedOperationException();
        }
        try {
            return this.c.invoke(null, Loader.loadClass(getClass(), (String) map.get("class")), map.get("value"));
        } catch (Exception e) {
            a.warn(e);
            return null;
        }
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        if (this.b) {
            output.addClass(obj.getClass());
            output.add("value", ((Enum) obj).name());
        } else {
            output.add(((Enum) obj).name());
        }
    }
}
