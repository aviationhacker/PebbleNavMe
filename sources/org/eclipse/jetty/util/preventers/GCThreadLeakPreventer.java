package org.eclipse.jetty.util.preventers;

/* JADX INFO: loaded from: classes.dex */
public class GCThreadLeakPreventer extends AbstractLeakPreventer {
    @Override // org.eclipse.jetty.util.preventers.AbstractLeakPreventer
    public void prevent(ClassLoader classLoader) {
        try {
            Class.forName("sun.misc.GC").getMethod("requestLatency", Long.TYPE).invoke(null, 9223372036854775806L);
        } catch (ClassNotFoundException e) {
            LOG.ignore(e);
        } catch (Exception e2) {
            LOG.warn(e2);
        }
    }
}
