package org.eclipse.jetty.util.ajax;

import java.util.Map;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.ajax.JSON;

/* JADX INFO: loaded from: classes.dex */
public class JSONPojoConvertorFactory implements JSON.Convertor {
    private final JSON a;
    private final boolean b;

    public JSONPojoConvertorFactory(JSON json) {
        if (json == null) {
            throw new IllegalArgumentException();
        }
        this.a = json;
        this.b = true;
    }

    public JSONPojoConvertorFactory(JSON json, boolean z) {
        if (json == null) {
            throw new IllegalArgumentException();
        }
        this.a = json;
        this.b = z;
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        JSON.Convertor jSONPojoConvertor;
        String name = obj.getClass().getName();
        JSON.Convertor convertorFor = this.a.getConvertorFor(name);
        if (convertorFor == null) {
            try {
                jSONPojoConvertor = new JSONPojoConvertor((Class<?>) Loader.loadClass(JSON.class, name), this.b);
            } catch (ClassNotFoundException e) {
                e = e;
                jSONPojoConvertor = convertorFor;
            }
            try {
                this.a.addConvertorFor(name, jSONPojoConvertor);
            } catch (ClassNotFoundException e2) {
                e = e2;
                JSON.a.warn(e);
            }
        } else {
            jSONPojoConvertor = convertorFor;
        }
        if (jSONPojoConvertor != null) {
            jSONPojoConvertor.toJSON(obj, output);
        }
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        JSON.Convertor jSONPojoConvertor;
        String str = (String) map.get("class");
        if (str != null) {
            JSON.Convertor convertorFor = this.a.getConvertorFor(str);
            if (convertorFor == null) {
                try {
                    jSONPojoConvertor = new JSONPojoConvertor((Class<?>) Loader.loadClass(JSON.class, str), this.b);
                    try {
                        this.a.addConvertorFor(str, jSONPojoConvertor);
                    } catch (ClassNotFoundException e) {
                        e = e;
                        JSON.a.warn(e);
                    }
                } catch (ClassNotFoundException e2) {
                    e = e2;
                    jSONPojoConvertor = convertorFor;
                }
            } else {
                jSONPojoConvertor = convertorFor;
            }
            if (jSONPojoConvertor != null) {
                return jSONPojoConvertor.fromJSON(map);
            }
            return map;
        }
        return map;
    }
}
