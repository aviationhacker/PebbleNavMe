package org.eclipse.jetty.util.component;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes.dex */
public class FileDestroyable implements Destroyable {
    private static final Logger b = Log.getLogger((Class<?>) FileDestroyable.class);
    final List<File> a = new ArrayList();

    public FileDestroyable() {
    }

    public FileDestroyable(String str) {
        this.a.add(Resource.newResource(str).getFile());
    }

    public FileDestroyable(File file) {
        this.a.add(file);
    }

    public void addFile(String str) {
        this.a.add(Resource.newResource(str).getFile());
    }

    public void addFile(File file) {
        this.a.add(file);
    }

    public void addFiles(Collection<File> collection) {
        this.a.addAll(collection);
    }

    public void removeFile(String str) {
        this.a.remove(Resource.newResource(str).getFile());
    }

    public void removeFile(File file) {
        this.a.remove(file);
    }

    @Override // org.eclipse.jetty.util.component.Destroyable
    public void destroy() {
        for (File file : this.a) {
            if (file.exists()) {
                b.debug("Destroy {}", file);
                IO.delete(file);
            }
        }
    }
}
