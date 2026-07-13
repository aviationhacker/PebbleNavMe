package org.eclipse.jetty.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import javax.servlet.MultipartConfigElement;
import javax.servlet.http.Part;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class MultiPartInputStream {
    protected MultipartConfigElement _config;
    protected String _contentType;
    protected File _contextTmpDir;
    protected boolean _deleteOnExit;
    protected InputStream _in;
    protected MultiMap<String> _parts;
    protected File _tmpDir;
    private static final Logger a = Log.getLogger((Class<?>) MultiPartInputStream.class);
    public static final MultipartConfigElement __DEFAULT_MULTIPART_CONFIG = new MultipartConfigElement(System.getProperty("java.io.tmpdir"));

    public class MultiPart implements Part {
        protected ByteArrayOutputStream2 _bout;
        protected String _contentType;
        protected File _file;
        protected String _filename;
        protected MultiMap<String> _headers;
        protected String _name;
        protected OutputStream _out;
        protected long _size = 0;
        protected boolean _temporary = true;

        public MultiPart(String str, String str2) {
            this._name = str;
            this._filename = str2;
        }

        protected void setContentType(String str) {
            this._contentType = str;
        }

        protected void open() throws IOException {
            if (this._filename != null && this._filename.trim().length() > 0) {
                createFile();
                return;
            }
            ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2();
            this._bout = byteArrayOutputStream2;
            this._out = byteArrayOutputStream2;
        }

        protected void close() throws IOException {
            this._out.close();
        }

        protected void write(int i) throws IOException {
            if (MultiPartInputStream.this._config.getMaxFileSize() > 0 && this._size + 1 > MultiPartInputStream.this._config.getMaxFileSize()) {
                throw new IllegalStateException("Multipart Mime part " + this._name + " exceeds max filesize");
            }
            if (MultiPartInputStream.this._config.getFileSizeThreshold() > 0 && this._size + 1 > MultiPartInputStream.this._config.getFileSizeThreshold() && this._file == null) {
                createFile();
            }
            this._out.write(i);
            this._size++;
        }

        protected void write(byte[] bArr, int i, int i2) throws IOException {
            if (MultiPartInputStream.this._config.getMaxFileSize() > 0 && this._size + ((long) i2) > MultiPartInputStream.this._config.getMaxFileSize()) {
                throw new IllegalStateException("Multipart Mime part " + this._name + " exceeds max filesize");
            }
            if (MultiPartInputStream.this._config.getFileSizeThreshold() > 0 && this._size + ((long) i2) > MultiPartInputStream.this._config.getFileSizeThreshold() && this._file == null) {
                createFile();
            }
            this._out.write(bArr, i, i2);
            this._size += (long) i2;
        }

        protected void createFile() throws IOException {
            this._file = File.createTempFile("MultiPart", "", MultiPartInputStream.this._tmpDir);
            if (MultiPartInputStream.this._deleteOnExit) {
                this._file.deleteOnExit();
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this._file));
            if (this._size > 0 && this._out != null) {
                this._out.flush();
                this._bout.writeTo(bufferedOutputStream);
                this._out.close();
                this._bout = null;
            }
            this._out = bufferedOutputStream;
        }

        protected void setHeaders(MultiMap<String> multiMap) {
            this._headers = multiMap;
        }

        public String getContentType() {
            return this._contentType;
        }

        public String getHeader(String str) {
            if (str == null) {
                return null;
            }
            return (String) this._headers.getValue(str.toLowerCase(Locale.ENGLISH), 0);
        }

        public Collection<String> getHeaderNames() {
            return this._headers.keySet();
        }

        public Collection<String> getHeaders(String str) {
            return this._headers.getValues(str);
        }

        public InputStream getInputStream() {
            return this._file != null ? new BufferedInputStream(new FileInputStream(this._file)) : new ByteArrayInputStream(this._bout.getBuf(), 0, this._bout.size());
        }

        public byte[] getBytes() {
            if (this._bout != null) {
                return this._bout.toByteArray();
            }
            return null;
        }

        public String getName() {
            return this._name;
        }

        public long getSize() {
            return this._size;
        }

        public void write(String str) throws Throwable {
            BufferedOutputStream bufferedOutputStream;
            if (this._file == null) {
                this._temporary = false;
                this._file = new File(MultiPartInputStream.this._tmpDir, str);
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this._file));
                    try {
                        this._bout.writeTo(bufferedOutputStream);
                        bufferedOutputStream.flush();
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        this._bout = null;
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        this._bout = null;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = null;
                }
            } else {
                this._temporary = false;
                File file = new File(MultiPartInputStream.this._tmpDir, str);
                if (this._file.renameTo(file)) {
                    this._file = file;
                }
            }
        }

        public void delete() {
            if (this._file != null && this._file.exists()) {
                this._file.delete();
            }
        }

        public void cleanUp() {
            if (this._temporary && this._file != null && this._file.exists()) {
                this._file.delete();
            }
        }

        public File getFile() {
            return this._file;
        }

        public String getContentDispositionFilename() {
            return this._filename;
        }
    }

    public MultiPartInputStream(InputStream inputStream, String str, MultipartConfigElement multipartConfigElement, File file) {
        this._in = new ReadLineInputStream(inputStream);
        this._contentType = str;
        this._config = multipartConfigElement;
        this._contextTmpDir = file;
        if (this._contextTmpDir == null) {
            this._contextTmpDir = new File(System.getProperty("java.io.tmpdir"));
        }
        if (this._config == null) {
            this._config = new MultipartConfigElement(this._contextTmpDir.getAbsolutePath());
        }
    }

    public Collection<Part> getParsedParts() {
        if (this._parts == null) {
            return Collections.emptyList();
        }
        Collection<Object> collectionValues = this._parts.values();
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList.addAll(LazyList.getList(it.next(), false));
        }
        return arrayList;
    }

    public void deleteParts() throws MultiException {
        Collection<Part> parsedParts = getParsedParts();
        MultiException multiException = new MultiException();
        Iterator<Part> it = parsedParts.iterator();
        while (it.hasNext()) {
            try {
                ((MultiPart) it.next()).cleanUp();
            } catch (Exception e) {
                multiException.add(e);
            }
        }
        this._parts.clear();
        multiException.ifExceptionThrowMulti();
    }

    public Collection<Part> getParts() throws IOException {
        parse();
        Collection<Object> collectionValues = this._parts.values();
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList.addAll(LazyList.getList(it.next(), false));
        }
        return arrayList;
    }

    public Part getPart(String str) throws IOException {
        parse();
        return (Part) this._parts.getValue(str, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0296, code lost:
    
        if (r3 == (-2)) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0298, code lost:
    
        r12 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x029a, code lost:
    
        if (r12 == (-1)) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x029c, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02ab, code lost:
    
        if (r19._config.getMaxRequestSize() <= 0) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02b7, code lost:
    
        if (r6 <= r19._config.getMaxRequestSize()) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02df, code lost:
    
        throw new java.lang.IllegalStateException("Request exceeds maxRequestSize (" + r19._config.getMaxRequestSize() + ")");
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02e0, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02e1, code lost:
    
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02e4, code lost:
    
        throw r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02eb, code lost:
    
        if ("quoted-printable".equalsIgnoreCase(r3) == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02ed, code lost:
    
        r2 = new org.eclipse.jetty.util.MultiPartInputStream.AnonymousClass1(r19, r19._in);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02f9, code lost:
    
        r2 = r19._in;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02fe, code lost:
    
        r12 = r2.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0304, code lost:
    
        r3 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0307, code lost:
    
        if (r12 == 13) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x030b, code lost:
    
        if (r12 != 10) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x030f, code lost:
    
        if (r12 != 13) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0311, code lost:
    
        r2.mark(1);
        r4 = r2.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x031b, code lost:
    
        if (r4 == 10) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x031d, code lost:
    
        r2.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0320, code lost:
    
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0321, code lost:
    
        if (r8 <= 0) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0326, code lost:
    
        if (r8 < (r13.length - 2)) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x032b, code lost:
    
        if (r8 != (r13.length - 1)) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x032d, code lost:
    
        if (r11 == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x032f, code lost:
    
        r14.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0334, code lost:
    
        if (r10 == false) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0336, code lost:
    
        r14.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x033b, code lost:
    
        r4 = false;
        r14.write(r13, 0, r8);
        r3 = -1;
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0342, code lost:
    
        if (r3 > 0) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0345, code lost:
    
        if (r12 != (-1)) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0348, code lost:
    
        if (r3 != r13.length) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x034a, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x034d, code lost:
    
        if (r5 != 10) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x034f, code lost:
    
        r14.close();
        r9 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0355, code lost:
    
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0357, code lost:
    
        if (r8 < 0) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x035a, code lost:
    
        if (r8 >= r13.length) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x035e, code lost:
    
        if (r12 != r13[r8]) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0360, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0364, code lost:
    
        if (r11 == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0366, code lost:
    
        r14.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x036b, code lost:
    
        if (r10 == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x036d, code lost:
    
        r14.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0372, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0373, code lost:
    
        if (r8 <= 0) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0375, code lost:
    
        r14.write(r13, 0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0379, code lost:
    
        r8 = -1;
        r14.write(r12);
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0380, code lost:
    
        if (r8 == false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0382, code lost:
    
        r14.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0387, code lost:
    
        if (r4 == false) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0389, code lost:
    
        r14.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0390, code lost:
    
        if (r12 != 13) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0392, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0395, code lost:
    
        if (r12 == 10) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0399, code lost:
    
        if (r5 != 10) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x039b, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x039e, code lost:
    
        if (r5 != 10) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03a0, code lost:
    
        r5 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x03a3, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x03a5, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x03a7, code lost:
    
        r2 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x03a9, code lost:
    
        r3 = r8;
        r4 = r10;
        r8 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x03ad, code lost:
    
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0153, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x017b, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x017c, code lost:
    
        if (r5 != null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0185, code lost:
    
        throw new java.io.IOException("Missing content-disposition");
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0217, code lost:
    
        r11 = new org.eclipse.jetty.util.QuotedStringTokenizer(r5, ";", false, true);
        r5 = null;
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0226, code lost:
    
        if (r11.hasMoreTokens() == false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0228, code lost:
    
        r12 = r11.nextToken().trim();
        r14 = r12.toLowerCase(java.util.Locale.ENGLISH);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x023c, code lost:
    
        if (r12.startsWith("form-data") == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x023e, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0246, code lost:
    
        if (r14.startsWith("name=") == false) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0248, code lost:
    
        r5 = a(r12, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0256, code lost:
    
        if (r14.startsWith("filename=") == false) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0258, code lost:
    
        r2 = a(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x025f, code lost:
    
        if (r8 == false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0261, code lost:
    
        if (r5 == null) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0263, code lost:
    
        r14 = new org.eclipse.jetty.util.MultiPartInputStream.MultiPart(r19, r5, r2);
        r14.setHeaders(r10);
        r14.setContentType(r4);
        r19._parts.add(r5, r14);
        r14.open();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0280, code lost:
    
        if ("base64".equalsIgnoreCase(r3) == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0282, code lost:
    
        r2 = new org.eclipse.jetty.util.MultiPartInputStream.a((org.eclipse.jetty.util.ReadLineInputStream) r19._in);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x028e, code lost:
    
        r5 = -2;
        r4 = false;
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0291, code lost:
    
        r8 = 0;
        r10 = r3;
        r11 = r4;
        r3 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03b0 A[PHI: r4 r5
  0x03b0: PHI (r4v36 java.lang.String) = (r4v7 java.lang.String), (r4v40 java.lang.String) binds: [B:70:0x01d4, B:78:0x020e] A[DONT_GENERATE, DONT_INLINE]
  0x03b0: PHI (r5v17 java.lang.String) = (r5v3 java.lang.String), (r5v20 java.lang.String) binds: [B:70:0x01d4, B:78:0x020e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void parse() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.MultiPartInputStream.parse():void");
    }

    public void setDeleteOnExit(boolean z) {
        this._deleteOnExit = z;
    }

    public boolean isDeleteOnExit() {
        return this._deleteOnExit;
    }

    private String a(String str, boolean z) {
        return QuotedStringTokenizer.unquoteOnly(str.substring(str.indexOf(61) + 1).trim());
    }

    private String a(String str) {
        String strTrim = str.substring(str.indexOf(61) + 1).trim();
        if (!strTrim.matches(".??[a-z,A-Z]\\:\\\\[^\\\\].*")) {
            return QuotedStringTokenizer.unquoteOnly(strTrim, true);
        }
        char cCharAt = strTrim.charAt(0);
        if (cCharAt == '\"' || cCharAt == '\'') {
            strTrim = strTrim.substring(1);
        }
        char cCharAt2 = strTrim.charAt(strTrim.length() - 1);
        if (cCharAt2 == '\"' || cCharAt2 == '\'') {
            return strTrim.substring(0, strTrim.length() - 1);
        }
        return strTrim;
    }

    static class a extends InputStream {
        ReadLineInputStream a;
        String b;
        byte[] c;
        int d;

        public a(ReadLineInputStream readLineInputStream) {
            this.a = readLineInputStream;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.c == null || this.d >= this.c.length) {
                this.b = this.a.readLine();
                if (this.b == null) {
                    return -1;
                }
                if (this.b.startsWith("--")) {
                    this.c = (this.b + "\r\n").getBytes();
                } else if (this.b.length() == 0) {
                    this.c = "\r\n".getBytes();
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(((this.b.length() * 4) / 3) + 2);
                    B64Code.decode(this.b, byteArrayOutputStream);
                    byteArrayOutputStream.write(13);
                    byteArrayOutputStream.write(10);
                    this.c = byteArrayOutputStream.toByteArray();
                }
                this.d = 0;
            }
            byte[] bArr = this.c;
            int i = this.d;
            this.d = i + 1;
            return bArr[i];
        }
    }
}
