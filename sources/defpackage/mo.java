package defpackage;

import org.eclipse.jetty.util.log.Slf4jLog;
import org.slf4j.Logger;
import org.slf4j.spi.LocationAwareLogger;

/* JADX INFO: loaded from: classes.dex */
public class mo implements Logger {
    private static final String a = Slf4jLog.class.getName();
    private final LocationAwareLogger b;

    public mo(LocationAwareLogger locationAwareLogger) {
        this.b = locationAwareLogger;
    }

    public String toString() {
        return this.b.toString();
    }
}
