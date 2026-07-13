package org.apache.commons.lang3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SerializationUtils {
    public static <T extends Serializable> T clone(T t) {
        return (T) deserialize(serialize(t));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void serialize(java.io.Serializable r3, java.io.OutputStream r4) throws java.lang.Throwable {
        /*
            if (r4 != 0) goto La
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The OutputStream must not be null"
            r0.<init>(r1)
            throw r0
        La:
            r2 = 0
            java.io.ObjectOutputStream r1 = new java.io.ObjectOutputStream     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L2c
            r1.<init>(r4)     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L2c
            r1.writeObject(r3)     // Catch: java.lang.Throwable -> L21 java.io.IOException -> L2f
            if (r1 == 0) goto L18
            r1.close()     // Catch: java.io.IOException -> L28
        L18:
            return
        L19:
            r0 = move-exception
            r1 = r2
        L1b:
            org.apache.commons.lang3.SerializationException r2 = new org.apache.commons.lang3.SerializationException     // Catch: java.lang.Throwable -> L21
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L21
            throw r2     // Catch: java.lang.Throwable -> L21
        L21:
            r0 = move-exception
        L22:
            if (r1 == 0) goto L27
            r1.close()     // Catch: java.io.IOException -> L2a
        L27:
            throw r0
        L28:
            r0 = move-exception
            goto L18
        L2a:
            r1 = move-exception
            goto L27
        L2c:
            r0 = move-exception
            r1 = r2
            goto L22
        L2f:
            r0 = move-exception
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.SerializationUtils.serialize(java.io.Serializable, java.io.OutputStream):void");
    }

    public static byte[] serialize(Serializable serializable) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        serialize(serializable, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0023: MOVE (r2 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:16:0x0023 */
    public static Object deserialize(InputStream inputStream) throws Throwable {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2;
        if (inputStream == null) {
            throw new IllegalArgumentException("The InputStream must not be null");
        }
        ObjectInputStream objectInputStream3 = null;
        try {
            try {
                try {
                    objectInputStream2 = new ObjectInputStream(inputStream);
                } catch (Throwable th) {
                    th = th;
                    if (objectInputStream3 != null) {
                        try {
                            objectInputStream3.close();
                        } catch (IOException e) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            } catch (ClassNotFoundException e3) {
                e = e3;
            }
            try {
                Object object = objectInputStream2.readObject();
                if (objectInputStream2 != null) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException e4) {
                    }
                }
                return object;
            } catch (IOException e5) {
                e = e5;
                throw new SerializationException(e);
            } catch (ClassNotFoundException e6) {
                e = e6;
                throw new SerializationException(e);
            }
        } catch (Throwable th2) {
            th = th2;
            objectInputStream3 = objectInputStream;
        }
    }

    public static Object deserialize(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("The byte[] must not be null");
        }
        return deserialize(new ByteArrayInputStream(bArr));
    }
}
