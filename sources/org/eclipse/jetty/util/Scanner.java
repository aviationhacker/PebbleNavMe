package org.eclipse.jetty.util;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class Scanner extends AbstractLifeCycle {
    private static final Logger a = Log.getLogger((Class<?>) Scanner.class);
    private static int b = 0;
    private int c;
    private FilenameFilter h;
    private Timer m;
    private TimerTask n;
    private int d = 0;
    private final List<Listener> e = new ArrayList();
    private final Map<String, a> f = new HashMap();
    private final Map<String, a> g = new HashMap();
    private final List<File> i = new ArrayList();
    private volatile boolean j = false;
    private boolean k = true;
    private boolean l = true;
    private int o = 0;
    private final Map<String, Notification> p = new HashMap();

    public interface BulkListener extends Listener {
        void filesChanged(List<String> list);
    }

    public interface DiscreteListener extends Listener {
        void fileAdded(String str);

        void fileChanged(String str);

        void fileRemoved(String str);
    }

    public interface Listener {
    }

    public enum Notification {
        ADDED,
        CHANGED,
        REMOVED
    }

    public interface ScanCycleListener extends Listener {
        void scanEnded(int i);

        void scanStarted(int i);
    }

    public interface ScanListener extends Listener {
        void scan();
    }

    static class a {
        final long a;
        final long b;

        public a(long j, long j2) {
            this.a = j;
            this.b = j2;
        }

        public int hashCode() {
            return ((int) this.a) ^ ((int) this.b);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aVar.a == this.a && aVar.b == this.b;
        }

        public String toString() {
            return "[lm=" + this.a + ",s=" + this.b + "]";
        }
    }

    public int getScanInterval() {
        return this.c;
    }

    public synchronized void setScanInterval(int i) {
        this.c = i;
        schedule();
    }

    @Deprecated
    public void setScanDir(File file) {
        this.i.clear();
        this.i.add(file);
    }

    @Deprecated
    public File getScanDir() {
        if (this.i == null) {
            return null;
        }
        return this.i.get(0);
    }

    public void setScanDirs(List<File> list) {
        this.i.clear();
        this.i.addAll(list);
    }

    public synchronized void addScanDir(File file) {
        this.i.add(file);
    }

    public List<File> getScanDirs() {
        return Collections.unmodifiableList(this.i);
    }

    public void setRecursive(boolean z) {
        this.o = z ? -1 : 0;
    }

    public boolean getRecursive() {
        return this.o == -1;
    }

    public int getScanDepth() {
        return this.o;
    }

    public void setScanDepth(int i) {
        this.o = i;
    }

    public void setFilenameFilter(FilenameFilter filenameFilter) {
        this.h = filenameFilter;
    }

    public FilenameFilter getFilenameFilter() {
        return this.h;
    }

    public void setReportExistingFilesOnStartup(boolean z) {
        this.k = z;
    }

    public boolean getReportExistingFilesOnStartup() {
        return this.k;
    }

    public void setReportDirs(boolean z) {
        this.l = z;
    }

    public boolean getReportDirs() {
        return this.l;
    }

    public synchronized void addListener(Listener listener) {
        if (listener != null) {
            this.e.add(listener);
        }
    }

    public synchronized void removeListener(Listener listener) {
        if (listener != null) {
            this.e.remove(listener);
        }
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public synchronized void doStart() {
        if (!this.j) {
            this.j = true;
            if (this.k) {
                scan();
                scan();
            } else {
                scanFiles();
                this.f.putAll(this.g);
            }
            schedule();
        }
    }

    public TimerTask newTimerTask() {
        return new TimerTask() { // from class: org.eclipse.jetty.util.Scanner.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Scanner.this.scan();
            }
        };
    }

    public Timer newTimer() {
        StringBuilder sbAppend = new StringBuilder().append("Scanner-");
        int i = b;
        b = i + 1;
        return new Timer(sbAppend.append(i).toString(), true);
    }

    public void schedule() {
        if (this.j) {
            if (this.m != null) {
                this.m.cancel();
            }
            if (this.n != null) {
                this.n.cancel();
            }
            if (getScanInterval() > 0) {
                this.m = newTimer();
                this.n = newTimerTask();
                this.m.schedule(this.n, ((long) getScanInterval()) * 1010, ((long) getScanInterval()) * 1010);
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public synchronized void doStop() {
        if (this.j) {
            this.j = false;
            if (this.m != null) {
                this.m.cancel();
            }
            if (this.n != null) {
                this.n.cancel();
            }
            this.n = null;
            this.m = null;
        }
    }

    public synchronized void scan() {
        int i = this.d + 1;
        this.d = i;
        a(i);
        scanFiles();
        reportDifferences(this.g, this.f);
        this.f.clear();
        this.f.putAll(this.g);
        b(this.d);
        for (Listener listener : this.e) {
            try {
                if (listener instanceof ScanListener) {
                    ((ScanListener) listener).scan();
                }
            } catch (Error e) {
                a.warn(e);
            } catch (Exception e2) {
                a.warn(e2);
            }
        }
    }

    public synchronized void scanFiles() {
        if (this.i != null) {
            this.g.clear();
            for (File file : this.i) {
                if (file != null && file.exists()) {
                    try {
                        a(file.getCanonicalFile(), this.g, 0);
                    } catch (IOException e) {
                        a.warn("Error scanning files.", e);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0140 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0134 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void reportDifferences(java.util.Map<java.lang.String, org.eclipse.jetty.util.Scanner.a> r7, java.util.Map<java.lang.String, org.eclipse.jetty.util.Scanner.a> r8) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.Scanner.reportDifferences(java.util.Map, java.util.Map):void");
    }

    private void a(File file, Map<String, a> map, int i) {
        try {
            if (file.exists()) {
                if ((file.isFile() || (i > 0 && this.l && file.isDirectory())) && (this.h == null || (this.h != null && this.h.accept(file.getParentFile(), file.getName())))) {
                    map.put(file.getCanonicalPath(), new a(file.lastModified(), file.length()));
                }
                if (file.isDirectory()) {
                    if (i < this.o || this.o == -1 || this.i.contains(file)) {
                        File[] fileArrListFiles = file.listFiles();
                        if (fileArrListFiles != null) {
                            for (File file2 : fileArrListFiles) {
                                a(file2, map, i + 1);
                            }
                            return;
                        }
                        a.warn("Error listing files in directory {}", file);
                    }
                }
            }
        } catch (IOException e) {
            a.warn("Error scanning watched files", e);
        }
    }

    private void a(Object obj, String str, Throwable th) {
        a.warn(obj + " failed on '" + str, th);
    }

    private void a(String str) {
        for (Listener listener : this.e) {
            try {
                if (listener instanceof DiscreteListener) {
                    ((DiscreteListener) listener).fileAdded(str);
                }
            } catch (Error e) {
                a(listener, str, e);
            } catch (Exception e2) {
                a(listener, str, e2);
            }
        }
    }

    private void b(String str) {
        for (Listener listener : this.e) {
            try {
                if (listener instanceof DiscreteListener) {
                    ((DiscreteListener) listener).fileRemoved(str);
                }
            } catch (Error e) {
                a(listener, str, e);
            } catch (Exception e2) {
                a(listener, str, e2);
            }
        }
    }

    private void c(String str) {
        for (Listener listener : this.e) {
            try {
                if (listener instanceof DiscreteListener) {
                    ((DiscreteListener) listener).fileChanged(str);
                }
            } catch (Error e) {
                a(listener, str, e);
            } catch (Exception e2) {
                a(listener, str, e2);
            }
        }
    }

    private void a(List<String> list) {
        for (Listener listener : this.e) {
            try {
                if (listener instanceof BulkListener) {
                    ((BulkListener) listener).filesChanged(list);
                }
            } catch (Error e) {
                a(listener, list.toString(), e);
            } catch (Exception e2) {
                a(listener, list.toString(), e2);
            }
        }
    }

    private void a(int i) {
        for (Listener listener : this.e) {
            try {
                if (listener instanceof ScanCycleListener) {
                    ((ScanCycleListener) listener).scanStarted(i);
                }
            } catch (Exception e) {
                a.warn(listener + " failed on scan start for cycle " + i, e);
            }
        }
    }

    private void b(int i) {
        for (Listener listener : this.e) {
            try {
                if (listener instanceof ScanCycleListener) {
                    ((ScanCycleListener) listener).scanEnded(i);
                }
            } catch (Exception e) {
                a.warn(listener + " failed on scan end for cycle " + i, e);
            }
        }
    }
}
