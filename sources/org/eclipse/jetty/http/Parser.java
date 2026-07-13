package org.eclipse.jetty.http;

/* JADX INFO: loaded from: classes.dex */
public interface Parser {
    boolean isComplete();

    boolean isIdle();

    boolean isMoreInBuffer();

    boolean isPersistent();

    boolean parseAvailable();

    void reset();

    void returnBuffers();

    void setPersistent(boolean z);
}
