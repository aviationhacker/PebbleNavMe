package org.eclipse.jetty.http;

import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes.dex */
public interface Generator {
    public static final boolean LAST = true;
    public static final boolean MORE = false;

    void addContent(Buffer buffer, boolean z);

    void complete();

    void completeHeader(HttpFields httpFields, boolean z);

    int flushBuffer();

    int getContentBufferSize();

    long getContentWritten();

    void increaseContentBufferSize(int i);

    boolean isAllContentWritten();

    boolean isBufferFull();

    boolean isCommitted();

    boolean isComplete();

    boolean isIdle();

    boolean isPersistent();

    boolean isWritten();

    void reset();

    void resetBuffer();

    void returnBuffers();

    void sendError(int i, String str, String str2, boolean z);

    void setContentLength(long j);

    void setDate(Buffer buffer);

    void setHead(boolean z);

    void setPersistent(boolean z);

    void setRequest(String str, String str2);

    void setResponse(int i, String str);

    void setSendServerVersion(boolean z);

    void setVersion(int i);
}
