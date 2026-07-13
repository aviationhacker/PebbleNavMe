package defpackage;

import android.content.ComponentName;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class as {
    public static Intent a(ComponentName componentName) {
        return Intent.makeMainActivity(componentName);
    }

    public static Intent b(ComponentName componentName) {
        return Intent.makeRestartActivityTask(componentName);
    }
}
