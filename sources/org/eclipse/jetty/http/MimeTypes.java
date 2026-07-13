package org.eclipse.jetty.http;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.security.Constraint;

/* JADX INFO: loaded from: classes.dex */
public class MimeTypes {
    private Map e;
    private static final Logger a = Log.getLogger((Class<?>) MimeTypes.class);
    private static int b = 15;
    public static final BufferCache CACHE = new BufferCache();
    public static final String FORM_ENCODED = "application/x-www-form-urlencoded";
    public static final BufferCache.CachedBuffer FORM_ENCODED_BUFFER = CACHE.add(FORM_ENCODED, 1);
    public static final String MESSAGE_HTTP = "message/http";
    public static final BufferCache.CachedBuffer MESSAGE_HTTP_BUFFER = CACHE.add(MESSAGE_HTTP, 2);
    public static final String MULTIPART_BYTERANGES = "multipart/byteranges";
    public static final BufferCache.CachedBuffer MULTIPART_BYTERANGES_BUFFER = CACHE.add(MULTIPART_BYTERANGES, 3);
    public static final String TEXT_HTML = "text/html";
    public static final BufferCache.CachedBuffer TEXT_HTML_BUFFER = CACHE.add(TEXT_HTML, 4);
    public static final String TEXT_PLAIN = "text/plain";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_BUFFER = CACHE.add(TEXT_PLAIN, 5);
    public static final String TEXT_XML = "text/xml";
    public static final BufferCache.CachedBuffer TEXT_XML_BUFFER = CACHE.add(TEXT_XML, 6);
    public static final String TEXT_JSON = "text/json";
    public static final BufferCache.CachedBuffer TEXT_JSON_BUFFER = CACHE.add(TEXT_JSON, 7);
    public static final String TEXT_HTML_8859_1 = "text/html;charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_HTML_8859_1_BUFFER = CACHE.add(TEXT_HTML_8859_1, 8);
    public static final String TEXT_PLAIN_8859_1 = "text/plain;charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_8859_1_BUFFER = CACHE.add(TEXT_PLAIN_8859_1, 9);
    public static final String TEXT_XML_8859_1 = "text/xml;charset=ISO-8859-1";
    public static final BufferCache.CachedBuffer TEXT_XML_8859_1_BUFFER = CACHE.add(TEXT_XML_8859_1, 10);
    public static final String TEXT_HTML_UTF_8 = "text/html;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_HTML_UTF_8_BUFFER = CACHE.add(TEXT_HTML_UTF_8, 11);
    public static final String TEXT_PLAIN_UTF_8 = "text/plain;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_UTF_8_BUFFER = CACHE.add(TEXT_PLAIN_UTF_8, 12);
    public static final String TEXT_XML_UTF_8 = "text/xml;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_XML_UTF_8_BUFFER = CACHE.add(TEXT_XML_UTF_8, 13);
    public static final String TEXT_JSON_UTF_8 = "text/json;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_JSON_UTF_8_BUFFER = CACHE.add(TEXT_JSON_UTF_8, 14);
    public static final BufferCache.CachedBuffer TEXT_HTML__8859_1_BUFFER = CACHE.add("text/html; charset=ISO-8859-1", 8);
    public static final BufferCache.CachedBuffer TEXT_PLAIN__8859_1_BUFFER = CACHE.add("text/plain; charset=ISO-8859-1", 9);
    public static final BufferCache.CachedBuffer TEXT_XML__8859_1_BUFFER = CACHE.add("text/xml; charset=ISO-8859-1", 10);
    public static final BufferCache.CachedBuffer TEXT_HTML__UTF_8_BUFFER = CACHE.add("text/html; charset=UTF-8", 11);
    public static final BufferCache.CachedBuffer TEXT_PLAIN__UTF_8_BUFFER = CACHE.add("text/plain; charset=UTF-8", 12);
    public static final BufferCache.CachedBuffer TEXT_XML__UTF_8_BUFFER = CACHE.add("text/xml; charset=UTF-8", 13);
    public static final BufferCache.CachedBuffer TEXT_JSON__UTF_8_BUFFER = CACHE.add("text/json; charset=UTF-8", 14);
    private static final Map c = new HashMap();
    private static final Map d = new HashMap();

    static {
        try {
            ResourceBundle bundle = ResourceBundle.getBundle("org/eclipse/jetty/http/mime");
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                String strNextElement = keys.nextElement();
                c.put(StringUtil.asciiToLowerCase(strNextElement), a(bundle.getString(strNextElement)));
            }
        } catch (MissingResourceException e) {
            a.warn(e.toString(), new Object[0]);
            a.debug(e);
        }
        try {
            ResourceBundle bundle2 = ResourceBundle.getBundle("org/eclipse/jetty/http/encoding");
            Enumeration<String> keys2 = bundle2.getKeys();
            while (keys2.hasMoreElements()) {
                Buffer bufferA = a(keys2.nextElement());
                d.put(bufferA, bundle2.getString(bufferA.toString()));
            }
        } catch (MissingResourceException e2) {
            a.warn(e2.toString(), new Object[0]);
            a.debug(e2);
        }
        TEXT_HTML_BUFFER.setAssociate("ISO-8859-1", TEXT_HTML_8859_1_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("ISO_8859_1", TEXT_HTML_8859_1_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("iso-8859-1", TEXT_HTML_8859_1_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("ISO-8859-1", TEXT_PLAIN_8859_1_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("ISO_8859_1", TEXT_PLAIN_8859_1_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("iso-8859-1", TEXT_PLAIN_8859_1_BUFFER);
        TEXT_XML_BUFFER.setAssociate("ISO-8859-1", TEXT_XML_8859_1_BUFFER);
        TEXT_XML_BUFFER.setAssociate("ISO_8859_1", TEXT_XML_8859_1_BUFFER);
        TEXT_XML_BUFFER.setAssociate("iso-8859-1", TEXT_XML_8859_1_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("UTF-8", TEXT_HTML_UTF_8_BUFFER);
        TEXT_HTML_BUFFER.setAssociate(StringUtil.__UTF8Alt, TEXT_HTML_UTF_8_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("utf8", TEXT_HTML_UTF_8_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("utf-8", TEXT_HTML_UTF_8_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("UTF-8", TEXT_PLAIN_UTF_8_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate(StringUtil.__UTF8Alt, TEXT_PLAIN_UTF_8_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("utf8", TEXT_PLAIN_UTF_8_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("utf-8", TEXT_PLAIN_UTF_8_BUFFER);
        TEXT_XML_BUFFER.setAssociate("UTF-8", TEXT_XML_UTF_8_BUFFER);
        TEXT_XML_BUFFER.setAssociate(StringUtil.__UTF8Alt, TEXT_XML_UTF_8_BUFFER);
        TEXT_XML_BUFFER.setAssociate("utf8", TEXT_XML_UTF_8_BUFFER);
        TEXT_XML_BUFFER.setAssociate("utf-8", TEXT_XML_UTF_8_BUFFER);
        TEXT_JSON_BUFFER.setAssociate("UTF-8", TEXT_JSON_UTF_8_BUFFER);
        TEXT_JSON_BUFFER.setAssociate(StringUtil.__UTF8Alt, TEXT_JSON_UTF_8_BUFFER);
        TEXT_JSON_BUFFER.setAssociate("utf8", TEXT_JSON_UTF_8_BUFFER);
        TEXT_JSON_BUFFER.setAssociate("utf-8", TEXT_JSON_UTF_8_BUFFER);
    }

    public synchronized Map getMimeMap() {
        return this.e;
    }

    public void setMimeMap(Map map) {
        if (map == null) {
            this.e = null;
            return;
        }
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            map2.put(entry.getKey(), a(entry.getValue().toString()));
        }
        this.e = map2;
    }

    public Buffer getMimeByExtension(String str) {
        Buffer buffer = null;
        if (str != null) {
            int iIndexOf = -1;
            while (buffer == null) {
                iIndexOf = str.indexOf(".", iIndexOf + 1);
                if (iIndexOf < 0 || iIndexOf >= str.length()) {
                    break;
                }
                String strAsciiToLowerCase = StringUtil.asciiToLowerCase(str.substring(iIndexOf + 1));
                if (this.e != null) {
                    buffer = (Buffer) this.e.get(strAsciiToLowerCase);
                }
                if (buffer == null) {
                    buffer = (Buffer) c.get(strAsciiToLowerCase);
                }
            }
        }
        if (buffer == null) {
            if (this.e != null) {
                buffer = (Buffer) this.e.get(Constraint.ANY_ROLE);
            }
            if (buffer == null) {
                return (Buffer) c.get(Constraint.ANY_ROLE);
            }
            return buffer;
        }
        return buffer;
    }

    public void addMimeMapping(String str, String str2) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        this.e.put(StringUtil.asciiToLowerCase(str), a(str2));
    }

    private static synchronized Buffer a(String str) {
        BufferCache.CachedBuffer cachedBufferAdd;
        cachedBufferAdd = CACHE.get(str);
        if (cachedBufferAdd == null) {
            BufferCache bufferCache = CACHE;
            int i = b;
            b = i + 1;
            cachedBufferAdd = bufferCache.add(str, i);
        }
        return cachedBufferAdd;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x002e, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCharsetFromContentType(org.eclipse.jetty.io.Buffer r12) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.MimeTypes.getCharsetFromContentType(org.eclipse.jetty.io.Buffer):java.lang.String");
    }
}
