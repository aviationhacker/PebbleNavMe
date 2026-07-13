package org.eclipse.jetty.util.preventers;

import javax.xml.parsers.DocumentBuilderFactory;

/* JADX INFO: loaded from: classes.dex */
public class DOMLeakPreventer extends AbstractLeakPreventer {
    @Override // org.eclipse.jetty.util.preventers.AbstractLeakPreventer
    public void prevent(ClassLoader classLoader) {
        try {
            DocumentBuilderFactory.newInstance().newDocumentBuilder();
        } catch (Exception e) {
            LOG.warn(e);
        }
    }
}
