package org.eclipse.jetty.util.ajax;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.eclipse.jetty.util.ajax.JSON;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class JSONPojoConvertor implements JSON.Convertor {
    protected Set<String> _excluded;
    protected boolean _fromJSON;
    protected Map<String, Method> _getters;
    protected Class<?> _pojoClass;
    protected Map<String, Setter> _setters;
    private static final Logger a = Log.getLogger((Class<?>) JSONPojoConvertor.class);
    public static final Object[] GETTER_ARG = new Object[0];
    public static final Object[] NULL_ARG = {null};
    private static final Map<Class<?>, NumberType> b = new HashMap();
    public static final NumberType SHORT = new NumberType() { // from class: org.eclipse.jetty.util.ajax.JSONPojoConvertor.1
        @Override // org.eclipse.jetty.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return new Short(number.shortValue());
        }
    };
    public static final NumberType INTEGER = new NumberType() { // from class: org.eclipse.jetty.util.ajax.JSONPojoConvertor.2
        @Override // org.eclipse.jetty.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return new Integer(number.intValue());
        }
    };
    public static final NumberType FLOAT = new NumberType() { // from class: org.eclipse.jetty.util.ajax.JSONPojoConvertor.3
        @Override // org.eclipse.jetty.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return new Float(number.floatValue());
        }
    };
    public static final NumberType LONG = new NumberType() { // from class: org.eclipse.jetty.util.ajax.JSONPojoConvertor.4
        @Override // org.eclipse.jetty.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return number instanceof Long ? number : new Long(number.longValue());
        }
    };
    public static final NumberType DOUBLE = new NumberType() { // from class: org.eclipse.jetty.util.ajax.JSONPojoConvertor.5
        @Override // org.eclipse.jetty.util.ajax.JSONPojoConvertor.NumberType
        public Object getActualValue(Number number) {
            return number instanceof Double ? number : new Double(number.doubleValue());
        }
    };

    public interface NumberType {
        Object getActualValue(Number number);
    }

    static {
        b.put(Short.class, SHORT);
        b.put(Short.TYPE, SHORT);
        b.put(Integer.class, INTEGER);
        b.put(Integer.TYPE, INTEGER);
        b.put(Long.class, LONG);
        b.put(Long.TYPE, LONG);
        b.put(Float.class, FLOAT);
        b.put(Float.TYPE, FLOAT);
        b.put(Double.class, DOUBLE);
        b.put(Double.TYPE, DOUBLE);
    }

    public static NumberType getNumberType(Class<?> cls) {
        return b.get(cls);
    }

    public JSONPojoConvertor(Class<?> cls) {
        this(cls, (Set) null, true);
    }

    public JSONPojoConvertor(Class<?> cls, String[] strArr) {
        this(cls, new HashSet(Arrays.asList(strArr)), true);
    }

    public JSONPojoConvertor(Class<?> cls, Set<String> set) {
        this(cls, set, true);
    }

    public JSONPojoConvertor(Class<?> cls, Set<String> set, boolean z) {
        this._getters = new HashMap();
        this._setters = new HashMap();
        this._pojoClass = cls;
        this._excluded = set;
        this._fromJSON = z;
        init();
    }

    public JSONPojoConvertor(Class<?> cls, boolean z) {
        this(cls, (Set) null, z);
    }

    protected void init() {
        String str;
        for (Method method : this._pojoClass.getMethods()) {
            if (!Modifier.isStatic(method.getModifiers()) && method.getDeclaringClass() != Object.class) {
                String name = method.getName();
                switch (method.getParameterTypes().length) {
                    case 0:
                        if (method.getReturnType() != null) {
                            if (name.startsWith("is") && name.length() > 2) {
                                str = name.substring(2, 3).toLowerCase(Locale.ENGLISH) + name.substring(3);
                            } else if (name.startsWith("get") && name.length() > 3) {
                                str = name.substring(3, 4).toLowerCase(Locale.ENGLISH) + name.substring(4);
                            }
                            if (includeField(str, method)) {
                                addGetter(str, method);
                            }
                            break;
                        }
                        break;
                    case 1:
                        if (name.startsWith("set") && name.length() > 3) {
                            String str2 = name.substring(3, 4).toLowerCase(Locale.ENGLISH) + name.substring(4);
                            if (includeField(str2, method)) {
                                addSetter(str2, method);
                            }
                        }
                        break;
                }
            }
        }
    }

    protected void addGetter(String str, Method method) {
        this._getters.put(str, method);
    }

    protected void addSetter(String str, Method method) {
        this._setters.put(str, new Setter(str, method));
    }

    protected Setter getSetter(String str) {
        return this._setters.get(str);
    }

    protected boolean includeField(String str, Method method) {
        return this._excluded == null || !this._excluded.contains(str);
    }

    protected int getExcludedCount() {
        if (this._excluded == null) {
            return 0;
        }
        return this._excluded.size();
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        try {
            Object objNewInstance = this._pojoClass.newInstance();
            setProps(objNewInstance, map);
            return objNewInstance;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public int setProps(Object obj, Map<?, ?> map) {
        int i = 0;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Setter setter = getSetter((String) entry.getKey());
            if (setter != null) {
                try {
                    setter.invoke(obj, entry.getValue());
                    i++;
                } catch (Exception e) {
                    a.warn(this._pojoClass.getName() + "#" + setter.getPropertyName() + " not set from " + entry.getValue().getClass().getName() + "=" + entry.getValue().toString(), new Object[0]);
                    log(e);
                }
            }
            i = i;
        }
        return i;
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        if (this._fromJSON) {
            output.addClass(this._pojoClass);
        }
        for (Map.Entry<String, Method> entry : this._getters.entrySet()) {
            try {
                output.add(entry.getKey(), entry.getValue().invoke(obj, GETTER_ARG));
            } catch (Exception e) {
                a.warn("{} property '{}' excluded. (errors)", this._pojoClass.getName(), entry.getKey());
                log(e);
            }
        }
    }

    protected void log(Throwable th) {
        a.ignore(th);
    }

    public static class Setter {
        protected Class<?> _componentType;
        protected NumberType _numberType;
        protected String _propertyName;
        protected Method _setter;
        protected Class<?> _type;

        public Setter(String str, Method method) {
            this._propertyName = str;
            this._setter = method;
            this._type = method.getParameterTypes()[0];
            this._numberType = (NumberType) JSONPojoConvertor.b.get(this._type);
            if (this._numberType == null && this._type.isArray()) {
                this._componentType = this._type.getComponentType();
                this._numberType = (NumberType) JSONPojoConvertor.b.get(this._componentType);
            }
        }

        public String getPropertyName() {
            return this._propertyName;
        }

        public Method getMethod() {
            return this._setter;
        }

        public NumberType getNumberType() {
            return this._numberType;
        }

        public Class<?> getType() {
            return this._type;
        }

        public Class<?> getComponentType() {
            return this._componentType;
        }

        public boolean isPropertyNumber() {
            return this._numberType != null;
        }

        public void invoke(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
            if (obj2 == null) {
                this._setter.invoke(obj, JSONPojoConvertor.NULL_ARG);
            } else {
                invokeObject(obj, obj2);
            }
        }

        protected void invokeObject(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
            if (this._type.isEnum()) {
                if (obj2 instanceof Enum) {
                    this._setter.invoke(obj, obj2);
                    return;
                } else {
                    this._setter.invoke(obj, Enum.valueOf(this._type, obj2.toString()));
                    return;
                }
            }
            if (this._numberType != null && (obj2 instanceof Number)) {
                this._setter.invoke(obj, this._numberType.getActualValue((Number) obj2));
                return;
            }
            if (Character.TYPE.equals(this._type) || Character.class.equals(this._type)) {
                this._setter.invoke(obj, Character.valueOf(String.valueOf(obj2).charAt(0)));
                return;
            }
            if (this._componentType != null && obj2.getClass().isArray()) {
                if (this._numberType == null) {
                    int length = Array.getLength(obj2);
                    Object objNewInstance = Array.newInstance(this._componentType, length);
                    try {
                        System.arraycopy(obj2, 0, objNewInstance, 0, length);
                        this._setter.invoke(obj, objNewInstance);
                        return;
                    } catch (Exception e) {
                        JSONPojoConvertor.a.ignore(e);
                        this._setter.invoke(obj, obj2);
                        return;
                    }
                }
                Object[] objArr = (Object[]) obj2;
                Object objNewInstance2 = Array.newInstance(this._componentType, objArr.length);
                for (int i = 0; i < objArr.length; i++) {
                    try {
                        Array.set(objNewInstance2, i, this._numberType.getActualValue((Number) objArr[i]));
                    } catch (Exception e2) {
                        JSONPojoConvertor.a.ignore(e2);
                        this._setter.invoke(obj, obj2);
                        return;
                    }
                }
                this._setter.invoke(obj, objNewInstance2);
                return;
            }
            this._setter.invoke(obj, obj2);
        }
    }
}
