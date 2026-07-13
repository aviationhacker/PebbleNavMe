package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.support.v4.os.AsyncTaskCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class ActivityChooserModel extends DataSetObservable {
    public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
    public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
    private static final String a = ActivityChooserModel.class.getSimpleName();
    private static final Object b = new Object();
    private static final Map<String, ActivityChooserModel> c = new HashMap();
    private final Context g;
    private final String h;
    private Intent i;
    private OnChooseActivityListener p;
    private final Object d = new Object();
    private final List<ActivityResolveInfo> e = new ArrayList();
    private final List<HistoricalRecord> f = new ArrayList();
    private ActivitySorter j = new a();
    private int k = 50;
    private boolean l = true;
    private boolean m = false;
    private boolean n = true;
    private boolean o = false;

    public interface ActivityChooserModelClient {
        void setActivityChooserModel(ActivityChooserModel activityChooserModel);
    }

    public interface ActivitySorter {
        void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    public interface OnChooseActivityListener {
        boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent);
    }

    public static ActivityChooserModel get(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (b) {
            activityChooserModel = c.get(str);
            if (activityChooserModel == null) {
                activityChooserModel = new ActivityChooserModel(context, str);
                c.put(str, activityChooserModel);
            }
        }
        return activityChooserModel;
    }

    private ActivityChooserModel(Context context, String str) {
        this.g = context.getApplicationContext();
        if (!TextUtils.isEmpty(str) && !str.endsWith(".xml")) {
            this.h = str + ".xml";
        } else {
            this.h = str;
        }
    }

    public void setIntent(Intent intent) {
        synchronized (this.d) {
            if (this.i != intent) {
                this.i = intent;
                this.o = true;
                c();
            }
        }
    }

    public Intent getIntent() {
        Intent intent;
        synchronized (this.d) {
            intent = this.i;
        }
        return intent;
    }

    public int getActivityCount() {
        int size;
        synchronized (this.d) {
            c();
            size = this.e.size();
        }
        return size;
    }

    public ResolveInfo getActivity(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.d) {
            c();
            resolveInfo = this.e.get(i).resolveInfo;
        }
        return resolveInfo;
    }

    public int getActivityIndex(ResolveInfo resolveInfo) {
        synchronized (this.d) {
            c();
            List<ActivityResolveInfo> list = this.e;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).resolveInfo == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    public Intent chooseActivity(int i) {
        synchronized (this.d) {
            if (this.i == null) {
                return null;
            }
            c();
            ActivityResolveInfo activityResolveInfo = this.e.get(i);
            ComponentName componentName = new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name);
            Intent intent = new Intent(this.i);
            intent.setComponent(componentName);
            if (this.p != null) {
                if (this.p.onChooseActivity(this, new Intent(intent))) {
                    return null;
                }
            }
            a(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    public void setOnChooseActivityListener(OnChooseActivityListener onChooseActivityListener) {
        synchronized (this.d) {
            this.p = onChooseActivityListener;
        }
    }

    public ResolveInfo getDefaultActivity() {
        synchronized (this.d) {
            c();
            if (!this.e.isEmpty()) {
                return this.e.get(0).resolveInfo;
            }
            return null;
        }
    }

    public void setDefaultActivity(int i) {
        float f;
        synchronized (this.d) {
            c();
            ActivityResolveInfo activityResolveInfo = this.e.get(i);
            ActivityResolveInfo activityResolveInfo2 = this.e.get(0);
            if (activityResolveInfo2 != null) {
                f = (activityResolveInfo2.weight - activityResolveInfo.weight) + 5.0f;
            } else {
                f = 1.0f;
            }
            a(new HistoricalRecord(new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
        }
    }

    private void b() {
        if (!this.m) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (this.n) {
            this.n = false;
            if (!TextUtils.isEmpty(this.h)) {
                AsyncTaskCompat.executeParallel(new b(), new ArrayList(this.f), this.h);
            }
        }
    }

    public void setActivitySorter(ActivitySorter activitySorter) {
        synchronized (this.d) {
            if (this.j != activitySorter) {
                this.j = activitySorter;
                if (d()) {
                    notifyChanged();
                }
            }
        }
    }

    public void setHistoryMaxSize(int i) {
        synchronized (this.d) {
            if (this.k != i) {
                this.k = i;
                g();
                if (d()) {
                    notifyChanged();
                }
            }
        }
    }

    public int getHistoryMaxSize() {
        int i;
        synchronized (this.d) {
            i = this.k;
        }
        return i;
    }

    public int getHistorySize() {
        int size;
        synchronized (this.d) {
            c();
            size = this.f.size();
        }
        return size;
    }

    private void c() {
        boolean zE = e() | f();
        g();
        if (zE) {
            d();
            notifyChanged();
        }
    }

    private boolean d() {
        if (this.j == null || this.i == null || this.e.isEmpty() || this.f.isEmpty()) {
            return false;
        }
        this.j.sort(this.i, this.e, Collections.unmodifiableList(this.f));
        return true;
    }

    private boolean e() {
        if (!this.o || this.i == null) {
            return false;
        }
        this.o = false;
        this.e.clear();
        List<ResolveInfo> listQueryIntentActivities = this.g.getPackageManager().queryIntentActivities(this.i, 0);
        int size = listQueryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.e.add(new ActivityResolveInfo(listQueryIntentActivities.get(i)));
        }
        return true;
    }

    private boolean f() {
        if (!this.l || !this.n || TextUtils.isEmpty(this.h)) {
            return false;
        }
        this.l = false;
        this.m = true;
        h();
        return true;
    }

    private boolean a(HistoricalRecord historicalRecord) {
        boolean zAdd = this.f.add(historicalRecord);
        if (zAdd) {
            this.n = true;
            g();
            b();
            d();
            notifyChanged();
        }
        return zAdd;
    }

    private void g() {
        int size = this.f.size() - this.k;
        if (size > 0) {
            this.n = true;
            for (int i = 0; i < size; i++) {
                this.f.remove(0);
            }
        }
    }

    public static final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public HistoricalRecord(ComponentName componentName, long j, float f) {
            this.activity = componentName;
            this.time = j;
            this.weight = f;
        }

        public int hashCode() {
            return (((((this.activity == null ? 0 : this.activity.hashCode()) + 31) * 31) + ((int) (this.time ^ (this.time >>> 32)))) * 31) + Float.floatToIntBits(this.weight);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                HistoricalRecord historicalRecord = (HistoricalRecord) obj;
                if (this.activity == null) {
                    if (historicalRecord.activity != null) {
                        return false;
                    }
                } else if (!this.activity.equals(historicalRecord.activity)) {
                    return false;
                }
                return this.time == historicalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(historicalRecord.weight);
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("; activity:").append(this.activity);
            sb.append("; time:").append(this.time);
            sb.append("; weight:").append(new BigDecimal(this.weight));
            sb.append("]");
            return sb.toString();
        }
    }

    public final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        public final ResolveInfo resolveInfo;
        public float weight;

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.resolveInfo = resolveInfo;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityResolveInfo) obj).weight);
        }

        @Override // java.lang.Comparable
        public int compareTo(ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.weight) - Float.floatToIntBits(this.weight);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("resolveInfo:").append(this.resolveInfo.toString());
            sb.append("; weight:").append(new BigDecimal(this.weight));
            sb.append("]");
            return sb.toString();
        }
    }

    final class a implements ActivitySorter {
        private final Map<ComponentName, ActivityResolveInfo> b;

        private a() {
            this.b = new HashMap();
        }

        @Override // android.support.v7.internal.widget.ActivityChooserModel.ActivitySorter
        public void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2) {
            float f;
            Map<ComponentName, ActivityResolveInfo> map = this.b;
            map.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ActivityResolveInfo activityResolveInfo = list.get(i);
                activityResolveInfo.weight = 0.0f;
                map.put(new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name), activityResolveInfo);
            }
            float f2 = 1.0f;
            int size2 = list2.size() - 1;
            while (size2 >= 0) {
                HistoricalRecord historicalRecord = list2.get(size2);
                ActivityResolveInfo activityResolveInfo2 = map.get(historicalRecord.activity);
                if (activityResolveInfo2 != null) {
                    activityResolveInfo2.weight = (historicalRecord.weight * f2) + activityResolveInfo2.weight;
                    f = 0.95f * f2;
                } else {
                    f = f2;
                }
                size2--;
                f2 = f;
            }
            Collections.sort(list);
        }
    }

    private void h() {
        FileInputStream fileInputStreamOpenFileInput;
        try {
            try {
                fileInputStreamOpenFileInput = this.g.openFileInput(this.h);
                try {
                    try {
                        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                        xmlPullParserNewPullParser.setInput(fileInputStreamOpenFileInput, "UTF-8");
                        for (int next = 0; next != 1 && next != 2; next = xmlPullParserNewPullParser.next()) {
                        }
                        if (!"historical-records".equals(xmlPullParserNewPullParser.getName())) {
                            throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                        }
                        List<HistoricalRecord> list = this.f;
                        list.clear();
                        while (true) {
                            int next2 = xmlPullParserNewPullParser.next();
                            if (next2 == 1) {
                                if (fileInputStreamOpenFileInput != null) {
                                    try {
                                        fileInputStreamOpenFileInput.close();
                                        return;
                                    } catch (IOException e) {
                                        return;
                                    }
                                }
                                return;
                            }
                            if (next2 != 3 && next2 != 4) {
                                if (!"historical-record".equals(xmlPullParserNewPullParser.getName())) {
                                    throw new XmlPullParserException("Share records file not well-formed.");
                                }
                                list.add(new HistoricalRecord(xmlPullParserNewPullParser.getAttributeValue(null, "activity"), Long.parseLong(xmlPullParserNewPullParser.getAttributeValue(null, "time")), Float.parseFloat(xmlPullParserNewPullParser.getAttributeValue(null, "weight"))));
                            }
                        }
                    } catch (XmlPullParserException e2) {
                        Log.e(a, "Error reading historical recrod file: " + this.h, e2);
                        if (fileInputStreamOpenFileInput != null) {
                            try {
                                fileInputStreamOpenFileInput.close();
                            } catch (IOException e3) {
                            }
                        }
                    }
                } catch (IOException e4) {
                    Log.e(a, "Error reading historical recrod file: " + this.h, e4);
                    if (fileInputStreamOpenFileInput != null) {
                        try {
                            fileInputStreamOpenFileInput.close();
                        } catch (IOException e5) {
                        }
                    }
                }
            } catch (FileNotFoundException e6) {
            }
        } catch (Throwable th) {
            if (fileInputStreamOpenFileInput != null) {
                try {
                    fileInputStreamOpenFileInput.close();
                } catch (IOException e7) {
                }
            }
            throw th;
        }
    }

    final class b extends AsyncTask<Object, Void, Void> {
        private b() {
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream fileOutputStreamOpenFileOutput = ActivityChooserModel.this.g.openFileOutput(str, 0);
                XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
                try {
                    try {
                        xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                        xmlSerializerNewSerializer.startDocument("UTF-8", true);
                        xmlSerializerNewSerializer.startTag(null, "historical-records");
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            HistoricalRecord historicalRecord = (HistoricalRecord) list.remove(0);
                            xmlSerializerNewSerializer.startTag(null, "historical-record");
                            xmlSerializerNewSerializer.attribute(null, "activity", historicalRecord.activity.flattenToString());
                            xmlSerializerNewSerializer.attribute(null, "time", String.valueOf(historicalRecord.time));
                            xmlSerializerNewSerializer.attribute(null, "weight", String.valueOf(historicalRecord.weight));
                            xmlSerializerNewSerializer.endTag(null, "historical-record");
                        }
                        xmlSerializerNewSerializer.endTag(null, "historical-records");
                        xmlSerializerNewSerializer.endDocument();
                        ActivityChooserModel.this.l = true;
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (IOException e) {
                            }
                        }
                    } catch (Throwable th) {
                        ActivityChooserModel.this.l = true;
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (IOException e2) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    Log.e(ActivityChooserModel.a, "Error writing historical recrod file: " + ActivityChooserModel.this.h, e3);
                    ActivityChooserModel.this.l = true;
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException e4) {
                        }
                    }
                } catch (IllegalArgumentException e5) {
                    Log.e(ActivityChooserModel.a, "Error writing historical recrod file: " + ActivityChooserModel.this.h, e5);
                    ActivityChooserModel.this.l = true;
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException e6) {
                        }
                    }
                } catch (IllegalStateException e7) {
                    Log.e(ActivityChooserModel.a, "Error writing historical recrod file: " + ActivityChooserModel.this.h, e7);
                    ActivityChooserModel.this.l = true;
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException e8) {
                        }
                    }
                }
            } catch (FileNotFoundException e9) {
                Log.e(ActivityChooserModel.a, "Error writing historical recrod file: " + str, e9);
            }
            return null;
        }
    }
}
