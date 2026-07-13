package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.BufferedWriter;
import java.io.Writer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class CharSink {
    public abstract Writer openStream();

    protected CharSink() {
    }

    public Writer openBufferedStream() {
        Writer writerOpenStream = openStream();
        return writerOpenStream instanceof BufferedWriter ? (BufferedWriter) writerOpenStream : new BufferedWriter(writerOpenStream);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public void write(CharSequence charSequence) throws X {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(charSequence);
        Closer closerCreate = Closer.create();
        try {
            try {
                Writer writer = (Writer) closerCreate.register(openStream());
                writer.append(charSequence);
                writer.flush();
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public void writeLines(Iterable<? extends CharSequence> iterable) throws X {
        writeLines(iterable, System.getProperty("line.separator"));
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public void writeLines(Iterable<? extends CharSequence> iterable, String str) throws X {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(str);
        Closer closerCreate = Closer.create();
        try {
            try {
                Writer writer = (Writer) closerCreate.register(openBufferedStream());
                Iterator<? extends CharSequence> it = iterable.iterator();
                while (it.hasNext()) {
                    writer.append(it.next()).append((CharSequence) str);
                }
                writer.flush();
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public long writeFrom(Readable readable) throws X {
        Preconditions.checkNotNull(readable);
        Closer closerCreate = Closer.create();
        try {
            try {
                Writer writer = (Writer) closerCreate.register(openStream());
                long jCopy = CharStreams.copy(readable, writer);
                writer.flush();
                return jCopy;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }
}
