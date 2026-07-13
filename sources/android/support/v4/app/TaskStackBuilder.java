package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import defpackage.aj;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class TaskStackBuilder implements Iterable<Intent> {
    private static final a a;
    private final ArrayList<Intent> b = new ArrayList<>();
    private final Context c;

    public interface SupportParentable {
        Intent getSupportParentActivityIntent();
    }

    interface a {
        PendingIntent a(Context context, Intent[] intentArr, int i, int i2, Bundle bundle);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.app.TaskStackBuilder.a
        public PendingIntent a(Context context, Intent[] intentArr, int i, int i2, Bundle bundle) {
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            return PendingIntent.getActivity(context, i, intent, i2);
        }
    }

    static class c implements a {
        c() {
        }

        @Override // android.support.v4.app.TaskStackBuilder.a
        public PendingIntent a(Context context, Intent[] intentArr, int i, int i2, Bundle bundle) {
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            return aj.a(context, i, intentArr, i2);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            a = new c();
        } else {
            a = new b();
        }
    }

    private TaskStackBuilder(Context context) {
        this.c = context;
    }

    public static TaskStackBuilder create(Context context) {
        return new TaskStackBuilder(context);
    }

    public static TaskStackBuilder from(Context context) {
        return create(context);
    }

    public TaskStackBuilder addNextIntent(Intent intent) {
        this.b.add(intent);
        return this;
    }

    public TaskStackBuilder addNextIntentWithParentStack(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.c.getPackageManager());
        }
        if (component != null) {
            addParentStack(component);
        }
        addNextIntent(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TaskStackBuilder addParentStack(Activity activity) {
        Intent supportParentActivityIntent = null;
        if (activity instanceof SupportParentable) {
            supportParentActivityIntent = ((SupportParentable) activity).getSupportParentActivityIntent();
        }
        Intent parentActivityIntent = supportParentActivityIntent == null ? NavUtils.getParentActivityIntent(activity) : supportParentActivityIntent;
        if (parentActivityIntent != null) {
            ComponentName component = parentActivityIntent.getComponent();
            if (component == null) {
                component = parentActivityIntent.resolveActivity(this.c.getPackageManager());
            }
            addParentStack(component);
            addNextIntent(parentActivityIntent);
        }
        return this;
    }

    public TaskStackBuilder addParentStack(Class<?> cls) {
        return addParentStack(new ComponentName(this.c, cls));
    }

    public TaskStackBuilder addParentStack(ComponentName componentName) {
        int size = this.b.size();
        try {
            Intent parentActivityIntent = NavUtils.getParentActivityIntent(this.c, componentName);
            while (parentActivityIntent != null) {
                this.b.add(size, parentActivityIntent);
                parentActivityIntent = NavUtils.getParentActivityIntent(this.c, parentActivityIntent.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    public int getIntentCount() {
        return this.b.size();
    }

    public Intent getIntent(int i) {
        return editIntentAt(i);
    }

    public Intent editIntentAt(int i) {
        return this.b.get(i);
    }

    @Override // java.lang.Iterable
    public Iterator<Intent> iterator() {
        return this.b.iterator();
    }

    public void startActivities() {
        startActivities(null);
    }

    public void startActivities(Bundle bundle) {
        if (this.b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.b.toArray(new Intent[this.b.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (!ContextCompat.startActivities(this.c, intentArr, bundle)) {
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.c.startActivity(intent);
        }
    }

    public PendingIntent getPendingIntent(int i, int i2) {
        return getPendingIntent(i, i2, null);
    }

    public PendingIntent getPendingIntent(int i, int i2, Bundle bundle) {
        if (this.b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
        }
        Intent[] intentArr = (Intent[]) this.b.toArray(new Intent[this.b.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        return a.a(this.c, intentArr, i, i2, bundle);
    }

    public Intent[] getIntents() {
        Intent[] intentArr = new Intent[this.b.size()];
        if (intentArr.length == 0) {
            return intentArr;
        }
        intentArr[0] = new Intent(this.b.get(0)).addFlags(268484608);
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= intentArr.length) {
                return intentArr;
            }
            intentArr[i2] = new Intent(this.b.get(i2));
            i = i2 + 1;
        }
    }
}
