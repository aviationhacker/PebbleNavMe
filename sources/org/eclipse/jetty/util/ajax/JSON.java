package org.eclipse.jetty.util.ajax;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class JSON {
    private Map<String, Convertor> b = new ConcurrentHashMap();
    private int c = 1024;
    static final Logger a = Log.getLogger((Class<?>) JSON.class);
    public static final JSON DEFAULT = new JSON();

    public interface Convertible {
        void fromJSON(Map map);

        void toJSON(Output output);
    }

    public interface Convertor {
        Object fromJSON(Map map);

        void toJSON(Object obj, Output output);
    }

    public interface Generator {
        void addJSON(Appendable appendable);
    }

    public interface Output {
        void add(Object obj);

        void add(String str, double d);

        void add(String str, long j);

        void add(String str, Object obj);

        void add(String str, boolean z);

        void addClass(Class cls);
    }

    public interface Source {
        boolean hasNext();

        char next();

        char peek();

        char[] scratchBuffer();
    }

    public int getStringBufferSize() {
        return this.c;
    }

    public void setStringBufferSize(int i) {
        this.c = i;
    }

    public static void registerConvertor(Class cls, Convertor convertor) {
        DEFAULT.addConvertor(cls, convertor);
    }

    public static JSON getDefault() {
        return DEFAULT;
    }

    @Deprecated
    public static void setDefault(JSON json) {
    }

    public static String toString(Object obj) {
        StringBuilder sb = new StringBuilder(DEFAULT.getStringBufferSize());
        DEFAULT.append(sb, obj);
        return sb.toString();
    }

    public static String toString(Map map) {
        StringBuilder sb = new StringBuilder(DEFAULT.getStringBufferSize());
        DEFAULT.appendMap(sb, (Map<?, ?>) map);
        return sb.toString();
    }

    public static String toString(Object[] objArr) {
        StringBuilder sb = new StringBuilder(DEFAULT.getStringBufferSize());
        DEFAULT.appendArray(sb, objArr);
        return sb.toString();
    }

    public static Object parse(String str) {
        return DEFAULT.parse((Source) new StringSource(str), false);
    }

    public static Object parse(String str, boolean z) {
        return DEFAULT.parse(new StringSource(str), z);
    }

    public static Object parse(Reader reader) {
        return DEFAULT.parse((Source) new ReaderSource(reader), false);
    }

    public static Object parse(Reader reader, boolean z) {
        return DEFAULT.parse(new ReaderSource(reader), z);
    }

    @Deprecated
    public static Object parse(InputStream inputStream) {
        return DEFAULT.parse((Source) new StringSource(IO.toString(inputStream)), false);
    }

    @Deprecated
    public static Object parse(InputStream inputStream, boolean z) {
        return DEFAULT.parse(new StringSource(IO.toString(inputStream)), z);
    }

    public String toJSON(Object obj) {
        StringBuilder sb = new StringBuilder(getStringBufferSize());
        append(sb, obj);
        return sb.toString();
    }

    public Object fromJSON(String str) {
        return parse(new StringSource(str));
    }

    @Deprecated
    public void append(StringBuffer stringBuffer, Object obj) {
        append((Appendable) stringBuffer, obj);
    }

    public void append(Appendable appendable, Object obj) {
        try {
            if (obj == null) {
                appendable.append("null");
            } else if (obj instanceof Map) {
                appendMap(appendable, (Map<?, ?>) obj);
            } else if (obj instanceof String) {
                appendString(appendable, (String) obj);
            } else if (obj instanceof Number) {
                appendNumber(appendable, (Number) obj);
            } else if (obj instanceof Boolean) {
                appendBoolean(appendable, (Boolean) obj);
            } else if (obj.getClass().isArray()) {
                appendArray(appendable, obj);
            } else if (obj instanceof Character) {
                appendString(appendable, obj.toString());
            } else if (obj instanceof Convertible) {
                appendJSON(appendable, (Convertible) obj);
            } else if (obj instanceof Generator) {
                appendJSON(appendable, (Generator) obj);
            } else {
                Convertor convertor = getConvertor(obj.getClass());
                if (convertor != null) {
                    appendJSON(appendable, convertor, obj);
                } else if (obj instanceof Collection) {
                    appendArray(appendable, (Collection) obj);
                } else {
                    appendString(appendable, obj.toString());
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    public void appendNull(StringBuffer stringBuffer) {
        appendNull((Appendable) stringBuffer);
    }

    public void appendNull(Appendable appendable) {
        try {
            appendable.append("null");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    public void appendJSON(StringBuffer stringBuffer, Convertor convertor, Object obj) {
        appendJSON((Appendable) stringBuffer, convertor, obj);
    }

    public void appendJSON(Appendable appendable, final Convertor convertor, final Object obj) {
        appendJSON(appendable, new Convertible() { // from class: org.eclipse.jetty.util.ajax.JSON.1
            @Override // org.eclipse.jetty.util.ajax.JSON.Convertible
            public void fromJSON(Map map) {
            }

            @Override // org.eclipse.jetty.util.ajax.JSON.Convertible
            public void toJSON(Output output) {
                convertor.toJSON(obj, output);
            }
        });
    }

    @Deprecated
    public void appendJSON(StringBuffer stringBuffer, Convertible convertible) {
        appendJSON((Appendable) stringBuffer, convertible);
    }

    public void appendJSON(Appendable appendable, Convertible convertible) {
        a aVar = new a(appendable);
        convertible.toJSON(aVar);
        aVar.a();
    }

    @Deprecated
    public void appendJSON(StringBuffer stringBuffer, Generator generator) {
        generator.addJSON(stringBuffer);
    }

    public void appendJSON(Appendable appendable, Generator generator) {
        generator.addJSON(appendable);
    }

    @Deprecated
    public void appendMap(StringBuffer stringBuffer, Map<?, ?> map) {
        appendMap((Appendable) stringBuffer, map);
    }

    public void appendMap(Appendable appendable, Map<?, ?> map) {
        try {
            if (map == null) {
                appendNull(appendable);
                return;
            }
            appendable.append('{');
            Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                QuotedStringTokenizer.quote(appendable, next.getKey().toString());
                appendable.append(':');
                append(appendable, next.getValue());
                if (it.hasNext()) {
                    appendable.append(',');
                }
            }
            appendable.append('}');
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    public void appendArray(StringBuffer stringBuffer, Collection collection) {
        appendArray((Appendable) stringBuffer, collection);
    }

    public void appendArray(Appendable appendable, Collection collection) {
        try {
            if (collection == null) {
                appendNull(appendable);
                return;
            }
            appendable.append('[');
            Iterator it = collection.iterator();
            boolean z = true;
            while (it.hasNext()) {
                if (!z) {
                    appendable.append(',');
                }
                z = false;
                append(appendable, it.next());
            }
            appendable.append(']');
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    public void appendArray(StringBuffer stringBuffer, Object obj) {
        appendArray((Appendable) stringBuffer, obj);
    }

    public void appendArray(Appendable appendable, Object obj) {
        try {
            if (obj == null) {
                appendNull(appendable);
                return;
            }
            appendable.append('[');
            int length = Array.getLength(obj);
            for (int i = 0; i < length; i++) {
                if (i != 0) {
                    appendable.append(',');
                }
                append(appendable, Array.get(obj, i));
            }
            appendable.append(']');
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    public void appendBoolean(StringBuffer stringBuffer, Boolean bool) {
        appendBoolean((Appendable) stringBuffer, bool);
    }

    public void appendBoolean(Appendable appendable, Boolean bool) {
        try {
            if (bool == null) {
                appendNull(appendable);
            } else {
                appendable.append(bool.booleanValue() ? "true" : "false");
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    public void appendNumber(StringBuffer stringBuffer, Number number) {
        appendNumber((Appendable) stringBuffer, number);
    }

    public void appendNumber(Appendable appendable, Number number) {
        try {
            if (number == null) {
                appendNull(appendable);
            } else {
                appendable.append(String.valueOf(number));
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    public void appendString(StringBuffer stringBuffer, String str) {
        appendString((Appendable) stringBuffer, str);
    }

    public void appendString(Appendable appendable, String str) {
        if (str == null) {
            appendNull(appendable);
        } else {
            QuotedStringTokenizer.quote(appendable, str);
        }
    }

    protected String toString(char[] cArr, int i, int i2) {
        return new String(cArr, i, i2);
    }

    protected Map<String, Object> newMap() {
        return new HashMap();
    }

    protected Object[] newArray(int i) {
        return new Object[i];
    }

    protected JSON contextForArray() {
        return this;
    }

    protected JSON contextFor(String str) {
        return this;
    }

    protected Object convertTo(Class cls, Map map) {
        if (cls != null && Convertible.class.isAssignableFrom(cls)) {
            try {
                Convertible convertible = (Convertible) cls.newInstance();
                convertible.fromJSON(map);
                return convertible;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        Convertor convertor = getConvertor(cls);
        return convertor != null ? convertor.fromJSON(map) : map;
    }

    public void addConvertor(Class cls, Convertor convertor) {
        this.b.put(cls.getName(), convertor);
    }

    protected Convertor getConvertor(Class cls) {
        Convertor convertor;
        Class superclass;
        Convertor convertor2 = this.b.get(cls.getName());
        if (convertor2 != null || this == DEFAULT) {
            convertor = convertor2;
            superclass = cls;
        } else {
            convertor = DEFAULT.getConvertor(cls);
            superclass = cls;
        }
        while (convertor == null && superclass != Object.class) {
            Class<?>[] interfaces = superclass.getInterfaces();
            Convertor convertor3 = convertor;
            for (int i = 0; convertor3 == null && interfaces != null && i < interfaces.length; i++) {
                convertor3 = this.b.get(interfaces[i].getName());
            }
            if (convertor3 == null) {
                superclass = superclass.getSuperclass();
                convertor3 = this.b.get(superclass.getName());
            }
            convertor = convertor3;
        }
        return convertor;
    }

    public void addConvertorFor(String str, Convertor convertor) {
        this.b.put(str, convertor);
    }

    public Convertor getConvertorFor(String str) {
        Convertor convertor = this.b.get(str);
        if (convertor == null && this != DEFAULT) {
            return DEFAULT.getConvertorFor(str);
        }
        return convertor;
    }

    public Object parse(Source source, boolean z) {
        if (!z) {
            return parse(source);
        }
        Object obj = null;
        char c = 1;
        byte b = 0;
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (b == 1) {
                switch (cPeek) {
                    case '*':
                        if (c != 1) {
                            b = 2;
                        } else {
                            c = 2;
                            b = 0;
                        }
                        break;
                    case '/':
                        b = -1;
                        break;
                }
            } else if (b > 1) {
                switch (cPeek) {
                    case '*':
                        b = 3;
                        break;
                    case '/':
                        if (b != 3) {
                            b = 2;
                        } else {
                            if (c == 2) {
                                return obj;
                            }
                            b = 0;
                        }
                        break;
                    default:
                        b = 2;
                        break;
                }
            } else if (b < 0) {
                switch (cPeek) {
                    case '\n':
                    case '\r':
                        b = 0;
                        break;
                }
            } else if (!Character.isWhitespace(cPeek)) {
                if (cPeek == '/') {
                    b = 1;
                } else if (cPeek == '*') {
                    b = 3;
                } else if (obj == null) {
                    obj = parse(source);
                }
            }
            source.next();
        }
        return obj;
    }

    public Object parse(Source source) {
        byte b = 0;
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (b == 1) {
                switch (cPeek) {
                    case '*':
                        b = 2;
                        break;
                    case '/':
                        b = -1;
                        break;
                }
            } else if (b > 1) {
                switch (cPeek) {
                    case '*':
                        b = 3;
                        break;
                    case '/':
                        b = b != 3 ? (byte) 2 : (byte) 0;
                        break;
                    default:
                        b = 2;
                        break;
                }
            } else if (b < 0) {
                switch (cPeek) {
                    case '\n':
                    case '\r':
                        b = 0;
                        break;
                }
            } else {
                switch (cPeek) {
                    case '\"':
                        return parseString(source);
                    case '-':
                        return parseNumber(source);
                    case '/':
                        b = 1;
                        break;
                    case 'N':
                        complete("NaN", source);
                        return null;
                    case '[':
                        return parseArray(source);
                    case 'f':
                        complete("false", source);
                        return Boolean.FALSE;
                    case 'n':
                        complete("null", source);
                        return null;
                    case 't':
                        complete("true", source);
                        return Boolean.TRUE;
                    case 'u':
                        complete("undefined", source);
                        return null;
                    case '{':
                        return parseObject(source);
                    default:
                        if (Character.isDigit(cPeek)) {
                            return parseNumber(source);
                        }
                        if (!Character.isWhitespace(cPeek)) {
                            return handleUnknown(source, cPeek);
                        }
                        break;
                        break;
                }
            }
            source.next();
        }
        return null;
    }

    protected Object handleUnknown(Source source, char c) {
        throw new IllegalStateException("unknown char '" + c + "'(" + ((int) c) + ") in " + source);
    }

    protected Object parseObject(Source source) {
        if (source.next() != '{') {
            throw new IllegalStateException();
        }
        Map<String, Object> mapNewMap = newMap();
        char cSeekTo = seekTo("\"}", source);
        while (true) {
            if (!source.hasNext()) {
                break;
            }
            if (cSeekTo == '}') {
                source.next();
                break;
            }
            String string = parseString(source);
            seekTo(':', source);
            source.next();
            mapNewMap.put(string, contextFor(string).parse(source));
            seekTo(",}", source);
            if (source.next() == '}') {
                break;
            }
            cSeekTo = seekTo("\"}", source);
        }
        String str = (String) mapNewMap.get("x-class");
        if (str != null) {
            Convertor convertorFor = getConvertorFor(str);
            if (convertorFor != null) {
                return convertorFor.fromJSON(mapNewMap);
            }
            a.warn("No Convertor for x-class '{}'", str);
        }
        String str2 = (String) mapNewMap.get("class");
        if (str2 != null) {
            try {
                return convertTo(Loader.loadClass(JSON.class, str2), mapNewMap);
            } catch (ClassNotFoundException e) {
                a.warn("No Class for '{}'", str2);
            }
        }
        return mapNewMap;
    }

    protected Object parseArray(Source source) {
        if (source.next() != '[') {
            throw new IllegalStateException();
        }
        boolean z = true;
        Object obj = null;
        ArrayList arrayList = null;
        int i = 0;
        while (source.hasNext()) {
            char cPeek = source.peek();
            switch (cPeek) {
                case ',':
                    if (z) {
                        throw new IllegalStateException();
                    }
                    source.next();
                    z = true;
                    break;
                    break;
                case ']':
                    source.next();
                    switch (i) {
                        case 0:
                            return newArray(0);
                        case 1:
                            Object[] objArrNewArray = newArray(1);
                            Array.set(objArrNewArray, 0, obj);
                            return objArrNewArray;
                        default:
                            return arrayList.toArray(newArray(arrayList.size()));
                    }
                default:
                    if (Character.isWhitespace(cPeek)) {
                        source.next();
                    } else {
                        int i2 = i + 1;
                        if (i == 0) {
                            obj = contextForArray().parse(source);
                            i = i2;
                            z = false;
                        } else if (arrayList == null) {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(obj);
                            arrayList2.add(contextForArray().parse(source));
                            obj = null;
                            arrayList = arrayList2;
                            i = i2;
                            z = false;
                        } else {
                            arrayList.add(contextForArray().parse(source));
                            z = false;
                            obj = null;
                            i = i2;
                        }
                    }
                    break;
            }
        }
        throw new IllegalStateException("unexpected end of array");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
    
        if (r3 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        return toString(r6, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ca, code lost:
    
        r0 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String parseString(org.eclipse.jetty.util.ajax.JSON.Source r12) {
        /*
            Method dump skipped, instruction units count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.ajax.JSON.parseString(org.eclipse.jetty.util.ajax.JSON$Source):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        r0 = r0 * (-1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001f, code lost:
    
        return java.lang.Long.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        r2.append(r0);
        r11.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
    
        if (r11.hasNext() == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
    
        r0 = r11.peek();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
    
        switch(r0) {
            case 43: goto L23;
            case 45: goto L23;
            case 46: goto L23;
            case 48: goto L23;
            case 49: goto L23;
            case 50: goto L23;
            case 51: goto L23;
            case 52: goto L23;
            case 53: goto L23;
            case 54: goto L23;
            case 55: goto L23;
            case 56: goto L23;
            case 57: goto L23;
            case 69: goto L23;
            case 101: goto L23;
            default: goto L40;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:?, code lost:
    
        return new java.lang.Double(r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
    
        if (r2 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        if (r4 == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Number parseNumber(org.eclipse.jetty.util.ajax.JSON.Source r11) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.ajax.JSON.parseNumber(org.eclipse.jetty.util.ajax.JSON$Source):java.lang.Number");
    }

    protected void seekTo(char c, Source source) {
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (cPeek == c) {
                return;
            }
            if (!Character.isWhitespace(cPeek)) {
                throw new IllegalStateException("Unexpected '" + cPeek + " while seeking '" + c + "'");
            }
            source.next();
        }
        throw new IllegalStateException("Expected '" + c + "'");
    }

    protected char seekTo(String str, Source source) {
        while (source.hasNext()) {
            char cPeek = source.peek();
            if (str.indexOf(cPeek) >= 0) {
                return cPeek;
            }
            if (!Character.isWhitespace(cPeek)) {
                throw new IllegalStateException("Unexpected '" + cPeek + "' while seeking one of '" + str + "'");
            }
            source.next();
        }
        throw new IllegalStateException("Expected one of '" + str + "'");
    }

    protected static void complete(String str, Source source) {
        int i = 0;
        while (source.hasNext() && i < str.length()) {
            char next = source.next();
            int i2 = i + 1;
            if (next != str.charAt(i)) {
                throw new IllegalStateException("Unexpected '" + next + " while seeking  \"" + str + "\"");
            }
            i = i2;
        }
        if (i < str.length()) {
            throw new IllegalStateException("Expected \"" + str + "\"");
        }
    }

    final class a implements Output {
        char a;
        private final Appendable c;

        private a(Appendable appendable) {
            this.a = '{';
            this.c = appendable;
        }

        public void a() {
            try {
                if (this.a == '{') {
                    this.c.append("{}");
                } else if (this.a != 0) {
                    this.c.append("}");
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(Object obj) {
            if (this.a == 0) {
                throw new IllegalStateException();
            }
            JSON.this.append(this.c, obj);
            this.a = (char) 0;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void addClass(Class cls) {
            try {
                if (this.a == 0) {
                    throw new IllegalStateException();
                }
                this.c.append(this.a);
                this.c.append("\"class\":");
                JSON.this.append(this.c, cls.getName());
                this.a = ',';
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(String str, Object obj) {
            try {
                if (this.a == 0) {
                    throw new IllegalStateException();
                }
                this.c.append(this.a);
                QuotedStringTokenizer.quote(this.c, str);
                this.c.append(':');
                JSON.this.append(this.c, obj);
                this.a = ',';
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(String str, double d) {
            try {
                if (this.a == 0) {
                    throw new IllegalStateException();
                }
                this.c.append(this.a);
                QuotedStringTokenizer.quote(this.c, str);
                this.c.append(':');
                JSON.this.appendNumber(this.c, Double.valueOf(d));
                this.a = ',';
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(String str, long j) {
            try {
                if (this.a == 0) {
                    throw new IllegalStateException();
                }
                this.c.append(this.a);
                QuotedStringTokenizer.quote(this.c, str);
                this.c.append(':');
                JSON.this.appendNumber(this.c, Long.valueOf(j));
                this.a = ',';
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Output
        public void add(String str, boolean z) {
            try {
                if (this.a == 0) {
                    throw new IllegalStateException();
                }
                this.c.append(this.a);
                QuotedStringTokenizer.quote(this.c, str);
                this.c.append(':');
                JSON.this.appendBoolean(this.c, z ? Boolean.TRUE : Boolean.FALSE);
                this.a = ',';
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static class StringSource implements Source {
        private final String a;
        private int b;
        private char[] c;

        public StringSource(String str) {
            this.a = str;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public boolean hasNext() {
            if (this.b < this.a.length()) {
                return true;
            }
            this.c = null;
            return false;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char next() {
            String str = this.a;
            int i = this.b;
            this.b = i + 1;
            return str.charAt(i);
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char peek() {
            return this.a.charAt(this.b);
        }

        public String toString() {
            return this.a.substring(0, this.b) + "|||" + this.a.substring(this.b);
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char[] scratchBuffer() {
            if (this.c == null) {
                this.c = new char[this.a.length()];
            }
            return this.c;
        }
    }

    public static class ReaderSource implements Source {
        private Reader a;
        private int b = -1;
        private char[] c;

        public ReaderSource(Reader reader) {
            this.a = reader;
        }

        public void setReader(Reader reader) {
            this.a = reader;
            this.b = -1;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public boolean hasNext() {
            a();
            if (this.b >= 0) {
                return true;
            }
            this.c = null;
            return false;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char next() {
            a();
            char c = (char) this.b;
            this.b = -1;
            return c;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char peek() {
            a();
            return (char) this.b;
        }

        private void a() {
            if (this.b < 0) {
                try {
                    this.b = this.a.read();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Source
        public char[] scratchBuffer() {
            if (this.c == null) {
                this.c = new char[1024];
            }
            return this.c;
        }
    }

    public static class Literal implements Generator {
        private String a;

        public Literal(String str) {
            if (JSON.a.isDebugEnabled()) {
                JSON.parse(str);
            }
            this.a = str;
        }

        public String toString() {
            return this.a;
        }

        @Override // org.eclipse.jetty.util.ajax.JSON.Generator
        public void addJSON(Appendable appendable) {
            try {
                appendable.append(this.a);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
