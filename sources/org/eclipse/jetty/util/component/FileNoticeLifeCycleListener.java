package org.eclipse.jetty.util.component;

import java.io.FileWriter;
import org.eclipse.jetty.util.component.LifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class FileNoticeLifeCycleListener implements LifeCycle.Listener {
    Logger a = Log.getLogger((Class<?>) FileNoticeLifeCycleListener.class);
    private final String b;

    public FileNoticeLifeCycleListener(String str) {
        this.b = str;
    }

    private void a(String str, LifeCycle lifeCycle) {
        try {
            FileWriter fileWriter = new FileWriter(this.b, true);
            fileWriter.append((CharSequence) str).append((CharSequence) " ").append((CharSequence) lifeCycle.toString()).append((CharSequence) "\n");
            fileWriter.close();
        } catch (Exception e) {
            this.a.warn(e);
        }
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleStarting(LifeCycle lifeCycle) {
        a(AbstractLifeCycle.STARTING, lifeCycle);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleStarted(LifeCycle lifeCycle) {
        a(AbstractLifeCycle.STARTED, lifeCycle);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleFailure(LifeCycle lifeCycle, Throwable th) {
        a(AbstractLifeCycle.FAILED, lifeCycle);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleStopping(LifeCycle lifeCycle) {
        a(AbstractLifeCycle.STOPPING, lifeCycle);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleStopped(LifeCycle lifeCycle) {
        a(AbstractLifeCycle.STOPPED, lifeCycle);
    }
}
