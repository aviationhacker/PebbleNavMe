package org.eclipse.jetty.util;

import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class PatternMatcher {
    public abstract void matched(URI uri);

    public void match(Pattern pattern, URI[] uriArr, boolean z) {
        if (uriArr != null) {
            String[] strArrSplit = pattern == null ? null : pattern.pattern().split(",");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; strArrSplit != null && i < strArrSplit.length; i++) {
                arrayList.add(Pattern.compile(strArrSplit[i]));
            }
            if (arrayList.isEmpty()) {
                arrayList.add(pattern);
            }
            if (arrayList.isEmpty()) {
                matchPatterns(null, uriArr, z);
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                matchPatterns((Pattern) it.next(), uriArr, z);
            }
        }
    }

    public void matchPatterns(Pattern pattern, URI[] uriArr, boolean z) {
        for (int i = 0; i < uriArr.length; i++) {
            String string = uriArr[i].toString();
            if ((pattern == null && z) || (pattern != null && pattern.matcher(string).matches())) {
                matched(uriArr[i]);
            }
        }
    }
}
