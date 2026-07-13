package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.v4.app.NotificationCompatApi20;
import android.support.v4.app.NotificationCompatApi21;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.NotificationCompatIceCreamSandwich;
import android.support.v4.app.NotificationCompatJellybean;
import android.support.v4.app.NotificationCompatKitKat;
import android.support.v4.app.RemoteInputCompatBase;
import android.support.v4.view.GravityCompat;
import android.widget.RemoteViews;
import defpackage.aa;
import defpackage.ab;
import defpackage.ac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat {
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";

    @ColorInt
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
    public static final String EXTRA_BIG_TEXT = "android.bigText";
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_INFO_TEXT = "android.infoText";
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEMPLATE = "android.template";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;
    private static final a a;

    public interface Extender {
        Builder extend(Builder builder);
    }

    interface a {
        Notification a(Builder builder, BuilderExtender builderExtender);

        Bundle a(Notification notification);

        Bundle a(NotificationCompatBase.UnreadConversation unreadConversation);

        Action a(Notification notification, int i);

        NotificationCompatBase.UnreadConversation a(Bundle bundle, NotificationCompatBase.UnreadConversation.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2);

        ArrayList<Parcelable> a(Action[] actionArr);

        Action[] a(ArrayList<Parcelable> arrayList);

        int b(Notification notification);

        String c(Notification notification);

        boolean d(Notification notification);

        String e(Notification notification);

        boolean f(Notification notification);

        String g(Notification notification);
    }

    public static class BuilderExtender {
        protected BuilderExtender() {
        }

        public Notification build(Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return notificationBuilderWithBuilderAccessor.build();
        }
    }

    static class d implements a {
        d() {
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public Notification a(Builder builder, BuilderExtender builderExtender) {
            Notification notification = builder.mNotification;
            notification.setLatestEventInfo(builder.mContext, builder.mContentTitle, builder.mContentText, builder.a);
            if (builder.d > 0) {
                notification.flags |= 128;
            }
            return notification;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public Bundle a(Notification notification) {
            return null;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public int b(Notification notification) {
            return 0;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public Action a(Notification notification, int i) {
            return null;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public Action[] a(ArrayList<Parcelable> arrayList) {
            return null;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public ArrayList<Parcelable> a(Action[] actionArr) {
            return null;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public String c(Notification notification) {
            return null;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public boolean d(Notification notification) {
            return false;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public String e(Notification notification) {
            return null;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public boolean f(Notification notification) {
            return false;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public String g(Notification notification) {
            return null;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public Bundle a(NotificationCompatBase.UnreadConversation unreadConversation) {
            return null;
        }

        @Override // android.support.v4.app.NotificationCompat.a
        public NotificationCompatBase.UnreadConversation a(Bundle bundle, NotificationCompatBase.UnreadConversation.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
            return null;
        }
    }

    static class e extends d {
        e() {
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Notification a(Builder builder, BuilderExtender builderExtender) {
            Notification notification = builder.mNotification;
            notification.setLatestEventInfo(builder.mContext, builder.mContentTitle, builder.mContentText, builder.a);
            Notification notificationA = ab.a(notification, builder.mContext, builder.mContentTitle, builder.mContentText, builder.a, builder.b);
            if (builder.d > 0) {
                notificationA.flags |= 128;
            }
            return notificationA;
        }
    }

    static class f extends d {
        f() {
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Notification a(Builder builder, BuilderExtender builderExtender) {
            return ac.a(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.c, builder.mNumber, builder.a, builder.b, builder.mLargeIcon);
        }
    }

    static class g extends d {
        g() {
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Notification a(Builder builder, BuilderExtender builderExtender) {
            return builderExtender.build(builder, new NotificationCompatIceCreamSandwich.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.c, builder.mNumber, builder.a, builder.b, builder.mLargeIcon, builder.f, builder.g, builder.h));
        }
    }

    static class h extends d {
        h() {
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Notification a(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatJellybean.Builder builder2 = new NotificationCompatJellybean.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.c, builder.mNumber, builder.a, builder.b, builder.mLargeIcon, builder.f, builder.g, builder.h, builder.mUseChronometer, builder.d, builder.mSubText, builder.l, builder.n, builder.i, builder.j, builder.k);
            NotificationCompat.b(builder2, builder.mActions);
            NotificationCompat.b(builder2, builder.mStyle);
            return builderExtender.build(builder, builder2);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Bundle a(Notification notification) {
            return NotificationCompatJellybean.a(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public int b(Notification notification) {
            return NotificationCompatJellybean.b(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Action a(Notification notification, int i) {
            return (Action) NotificationCompatJellybean.a(notification, i, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Action[] a(ArrayList<Parcelable> arrayList) {
            return (Action[]) NotificationCompatJellybean.a(arrayList, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public ArrayList<Parcelable> a(Action[] actionArr) {
            return NotificationCompatJellybean.a(actionArr);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public boolean d(Notification notification) {
            return NotificationCompatJellybean.c(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public String e(Notification notification) {
            return NotificationCompatJellybean.d(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public boolean f(Notification notification) {
            return NotificationCompatJellybean.e(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public String g(Notification notification) {
            return NotificationCompatJellybean.f(notification);
        }
    }

    static class i extends h {
        i() {
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Notification a(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatKitKat.Builder builder2 = new NotificationCompatKitKat.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.c, builder.mNumber, builder.a, builder.b, builder.mLargeIcon, builder.f, builder.g, builder.h, builder.e, builder.mUseChronometer, builder.d, builder.mSubText, builder.l, builder.mPeople, builder.n, builder.i, builder.j, builder.k);
            NotificationCompat.b(builder2, builder.mActions);
            NotificationCompat.b(builder2, builder.mStyle);
            return builderExtender.build(builder, builder2);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Bundle a(Notification notification) {
            return NotificationCompatKitKat.a(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public int b(Notification notification) {
            return NotificationCompatKitKat.b(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Action a(Notification notification, int i) {
            return (Action) NotificationCompatKitKat.a(notification, i, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public boolean d(Notification notification) {
            return NotificationCompatKitKat.c(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public String e(Notification notification) {
            return NotificationCompatKitKat.d(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public boolean f(Notification notification) {
            return NotificationCompatKitKat.e(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public String g(Notification notification) {
            return NotificationCompatKitKat.f(notification);
        }
    }

    static class b extends i {
        b() {
        }

        @Override // android.support.v4.app.NotificationCompat.i, android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Notification a(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatApi20.Builder builder2 = new NotificationCompatApi20.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.c, builder.mNumber, builder.a, builder.b, builder.mLargeIcon, builder.f, builder.g, builder.h, builder.e, builder.mUseChronometer, builder.d, builder.mSubText, builder.l, builder.mPeople, builder.n, builder.i, builder.j, builder.k);
            NotificationCompat.b(builder2, builder.mActions);
            NotificationCompat.b(builder2, builder.mStyle);
            return builderExtender.build(builder, builder2);
        }

        @Override // android.support.v4.app.NotificationCompat.i, android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Action a(Notification notification, int i) {
            return (Action) NotificationCompatApi20.a(notification, i, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Action[] a(ArrayList<Parcelable> arrayList) {
            return (Action[]) NotificationCompatApi20.a(arrayList, Action.FACTORY, RemoteInput.FACTORY);
        }

        @Override // android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public ArrayList<Parcelable> a(Action[] actionArr) {
            return NotificationCompatApi20.a(actionArr);
        }

        @Override // android.support.v4.app.NotificationCompat.i, android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public boolean d(Notification notification) {
            return NotificationCompatApi20.a(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.i, android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public String e(Notification notification) {
            return NotificationCompatApi20.b(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.i, android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public boolean f(Notification notification) {
            return NotificationCompatApi20.c(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.i, android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public String g(Notification notification) {
            return NotificationCompatApi20.d(notification);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.app.NotificationCompat.b, android.support.v4.app.NotificationCompat.i, android.support.v4.app.NotificationCompat.h, android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Notification a(Builder builder, BuilderExtender builderExtender) {
            NotificationCompatApi21.Builder builder2 = new NotificationCompatApi21.Builder(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.c, builder.mNumber, builder.a, builder.b, builder.mLargeIcon, builder.f, builder.g, builder.h, builder.e, builder.mUseChronometer, builder.d, builder.mSubText, builder.l, builder.m, builder.mPeople, builder.n, builder.o, builder.p, builder.q, builder.i, builder.j, builder.k);
            NotificationCompat.b(builder2, builder.mActions);
            NotificationCompat.b(builder2, builder.mStyle);
            return builderExtender.build(builder, builder2);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public String c(Notification notification) {
            return NotificationCompatApi21.a(notification);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public Bundle a(NotificationCompatBase.UnreadConversation unreadConversation) {
            return NotificationCompatApi21.a(unreadConversation);
        }

        @Override // android.support.v4.app.NotificationCompat.d, android.support.v4.app.NotificationCompat.a
        public NotificationCompatBase.UnreadConversation a(Bundle bundle, NotificationCompatBase.UnreadConversation.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
            return NotificationCompatApi21.a(bundle, factory, factory2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(aa aaVar, ArrayList<Action> arrayList) {
        Iterator<Action> it = arrayList.iterator();
        while (it.hasNext()) {
            aaVar.addAction(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, Style style) {
        if (style != null) {
            if (style instanceof BigTextStyle) {
                BigTextStyle bigTextStyle = (BigTextStyle) style;
                NotificationCompatJellybean.a(notificationBuilderWithBuilderAccessor, bigTextStyle.e, bigTextStyle.g, bigTextStyle.f, bigTextStyle.a);
            } else if (style instanceof InboxStyle) {
                InboxStyle inboxStyle = (InboxStyle) style;
                NotificationCompatJellybean.a(notificationBuilderWithBuilderAccessor, inboxStyle.e, inboxStyle.g, inboxStyle.f, inboxStyle.a);
            } else if (style instanceof BigPictureStyle) {
                BigPictureStyle bigPictureStyle = (BigPictureStyle) style;
                NotificationCompatJellybean.a(notificationBuilderWithBuilderAccessor, bigPictureStyle.e, bigPictureStyle.g, bigPictureStyle.f, bigPictureStyle.a, bigPictureStyle.b, bigPictureStyle.c);
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            a = new c();
            return;
        }
        if (Build.VERSION.SDK_INT >= 20) {
            a = new b();
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            a = new i();
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            a = new h();
            return;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            a = new g();
            return;
        }
        if (Build.VERSION.SDK_INT >= 11) {
            a = new f();
        } else if (Build.VERSION.SDK_INT >= 9) {
            a = new e();
        } else {
            a = new d();
        }
    }

    public static class Builder {
        PendingIntent a;
        PendingIntent b;
        RemoteViews c;
        int d;
        int f;
        int g;
        boolean h;
        String i;
        boolean j;
        String k;
        String m;
        public CharSequence mContentInfo;
        public CharSequence mContentText;
        public CharSequence mContentTitle;
        public Context mContext;
        public Bitmap mLargeIcon;
        public int mNumber;
        public ArrayList<String> mPeople;
        public Style mStyle;
        public CharSequence mSubText;
        public boolean mUseChronometer;
        Bundle n;
        Notification q;
        boolean e = true;
        public ArrayList<Action> mActions = new ArrayList<>();
        boolean l = false;
        int o = 0;
        int p = 0;
        public Notification mNotification = new Notification();

        public Builder(Context context) {
            this.mContext = context;
            this.mNotification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.d = 0;
            this.mPeople = new ArrayList<>();
        }

        public Builder setWhen(long j) {
            this.mNotification.when = j;
            return this;
        }

        public Builder setShowWhen(boolean z) {
            this.e = z;
            return this;
        }

        public Builder setUsesChronometer(boolean z) {
            this.mUseChronometer = z;
            return this;
        }

        public Builder setSmallIcon(int i) {
            this.mNotification.icon = i;
            return this;
        }

        public Builder setSmallIcon(int i, int i2) {
            this.mNotification.icon = i;
            this.mNotification.iconLevel = i2;
            return this;
        }

        public Builder setContentTitle(CharSequence charSequence) {
            this.mContentTitle = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setSubText(CharSequence charSequence) {
            this.mSubText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setNumber(int i) {
            this.mNumber = i;
            return this;
        }

        public Builder setContentInfo(CharSequence charSequence) {
            this.mContentInfo = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setProgress(int i, int i2, boolean z) {
            this.f = i;
            this.g = i2;
            this.h = z;
            return this;
        }

        public Builder setContent(RemoteViews remoteViews) {
            this.mNotification.contentView = remoteViews;
            return this;
        }

        public Builder setContentIntent(PendingIntent pendingIntent) {
            this.a = pendingIntent;
            return this;
        }

        public Builder setDeleteIntent(PendingIntent pendingIntent) {
            this.mNotification.deleteIntent = pendingIntent;
            return this;
        }

        public Builder setFullScreenIntent(PendingIntent pendingIntent, boolean z) {
            this.b = pendingIntent;
            a(128, z);
            return this;
        }

        public Builder setTicker(CharSequence charSequence) {
            this.mNotification.tickerText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
            this.mNotification.tickerText = limitCharSequenceLength(charSequence);
            this.c = remoteViews;
            return this;
        }

        public Builder setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = bitmap;
            return this;
        }

        public Builder setSound(Uri uri) {
            this.mNotification.sound = uri;
            this.mNotification.audioStreamType = -1;
            return this;
        }

        public Builder setSound(Uri uri, int i) {
            this.mNotification.sound = uri;
            this.mNotification.audioStreamType = i;
            return this;
        }

        public Builder setVibrate(long[] jArr) {
            this.mNotification.vibrate = jArr;
            return this;
        }

        public Builder setLights(@ColorInt int i, int i2, int i3) {
            this.mNotification.ledARGB = i;
            this.mNotification.ledOnMS = i2;
            this.mNotification.ledOffMS = i3;
            this.mNotification.flags = (this.mNotification.flags & (-2)) | (this.mNotification.ledOnMS != 0 && this.mNotification.ledOffMS != 0 ? 1 : 0);
            return this;
        }

        public Builder setOngoing(boolean z) {
            a(2, z);
            return this;
        }

        public Builder setOnlyAlertOnce(boolean z) {
            a(8, z);
            return this;
        }

        public Builder setAutoCancel(boolean z) {
            a(16, z);
            return this;
        }

        public Builder setLocalOnly(boolean z) {
            this.l = z;
            return this;
        }

        public Builder setCategory(String str) {
            this.m = str;
            return this;
        }

        public Builder setDefaults(int i) {
            this.mNotification.defaults = i;
            if ((i & 4) != 0) {
                this.mNotification.flags |= 1;
            }
            return this;
        }

        private void a(int i, boolean z) {
            if (z) {
                this.mNotification.flags |= i;
            } else {
                this.mNotification.flags &= i ^ (-1);
            }
        }

        public Builder setPriority(int i) {
            this.d = i;
            return this;
        }

        public Builder addPerson(String str) {
            this.mPeople.add(str);
            return this;
        }

        public Builder setGroup(String str) {
            this.i = str;
            return this;
        }

        public Builder setGroupSummary(boolean z) {
            this.j = z;
            return this;
        }

        public Builder setSortKey(String str) {
            this.k = str;
            return this;
        }

        public Builder addExtras(Bundle bundle) {
            if (bundle != null) {
                if (this.n == null) {
                    this.n = new Bundle(bundle);
                } else {
                    this.n.putAll(bundle);
                }
            }
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.n = bundle;
            return this;
        }

        public Bundle getExtras() {
            if (this.n == null) {
                this.n = new Bundle();
            }
            return this.n;
        }

        public Builder addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        public Builder addAction(Action action) {
            this.mActions.add(action);
            return this;
        }

        public Builder setStyle(Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (this.mStyle != null) {
                    this.mStyle.setBuilder(this);
                }
            }
            return this;
        }

        public Builder setColor(@ColorInt int i) {
            this.o = i;
            return this;
        }

        public Builder setVisibility(int i) {
            this.p = i;
            return this;
        }

        public Builder setPublicVersion(Notification notification) {
            this.q = notification;
            return this;
        }

        public Builder extend(Extender extender) {
            extender.extend(this);
            return this;
        }

        @Deprecated
        public Notification getNotification() {
            return build();
        }

        public Notification build() {
            return NotificationCompat.a.a(this, getExtender());
        }

        protected BuilderExtender getExtender() {
            return new BuilderExtender();
        }

        protected static CharSequence limitCharSequenceLength(CharSequence charSequence) {
            if (charSequence != null && charSequence.length() > 5120) {
                return charSequence.subSequence(0, 5120);
            }
            return charSequence;
        }
    }

    public static abstract class Style {
        Builder d;
        CharSequence e;
        CharSequence f;
        boolean g = false;

        public void setBuilder(Builder builder) {
            if (this.d != builder) {
                this.d = builder;
                if (this.d != null) {
                    this.d.setStyle(this);
                }
            }
        }

        public Notification build() {
            if (this.d == null) {
                return null;
            }
            return this.d.build();
        }
    }

    public static class BigPictureStyle extends Style {
        Bitmap a;
        Bitmap b;
        boolean c;

        public BigPictureStyle() {
        }

        public BigPictureStyle(Builder builder) {
            setBuilder(builder);
        }

        public BigPictureStyle setBigContentTitle(CharSequence charSequence) {
            this.e = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public BigPictureStyle setSummaryText(CharSequence charSequence) {
            this.f = Builder.limitCharSequenceLength(charSequence);
            this.g = true;
            return this;
        }

        public BigPictureStyle bigPicture(Bitmap bitmap) {
            this.a = bitmap;
            return this;
        }

        public BigPictureStyle bigLargeIcon(Bitmap bitmap) {
            this.b = bitmap;
            this.c = true;
            return this;
        }
    }

    public static class BigTextStyle extends Style {
        CharSequence a;

        public BigTextStyle() {
        }

        public BigTextStyle(Builder builder) {
            setBuilder(builder);
        }

        public BigTextStyle setBigContentTitle(CharSequence charSequence) {
            this.e = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public BigTextStyle setSummaryText(CharSequence charSequence) {
            this.f = Builder.limitCharSequenceLength(charSequence);
            this.g = true;
            return this;
        }

        public BigTextStyle bigText(CharSequence charSequence) {
            this.a = Builder.limitCharSequenceLength(charSequence);
            return this;
        }
    }

    public static class InboxStyle extends Style {
        ArrayList<CharSequence> a = new ArrayList<>();

        public InboxStyle() {
        }

        public InboxStyle(Builder builder) {
            setBuilder(builder);
        }

        public InboxStyle setBigContentTitle(CharSequence charSequence) {
            this.e = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public InboxStyle setSummaryText(CharSequence charSequence) {
            this.f = Builder.limitCharSequenceLength(charSequence);
            this.g = true;
            return this;
        }

        public InboxStyle addLine(CharSequence charSequence) {
            this.a.add(Builder.limitCharSequenceLength(charSequence));
            return this;
        }
    }

    public static class Action extends NotificationCompatBase.Action {
        public static final NotificationCompatBase.Action.Factory FACTORY = new NotificationCompatBase.Action.Factory() { // from class: android.support.v4.app.NotificationCompat.Action.1
            @Override // android.support.v4.app.NotificationCompatBase.Action.Factory
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Action build(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInputCompatBase.RemoteInput[] remoteInputArr) {
                return new Action(i, charSequence, pendingIntent, bundle, (RemoteInput[]) remoteInputArr);
            }

            @Override // android.support.v4.app.NotificationCompatBase.Action.Factory
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Action[] newArray(int i) {
                return new Action[i];
            }
        };
        private final Bundle a;
        public PendingIntent actionIntent;
        private final RemoteInput[] b;
        public int icon;
        public CharSequence title;

        public interface Extender {
            Builder extend(Builder builder);
        }

        public Action(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i, charSequence, pendingIntent, new Bundle(), null);
        }

        private Action(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr) {
            this.icon = i;
            this.title = Builder.limitCharSequenceLength(charSequence);
            this.actionIntent = pendingIntent;
            this.a = bundle == null ? new Bundle() : bundle;
            this.b = remoteInputArr;
        }

        @Override // android.support.v4.app.NotificationCompatBase.Action
        public int getIcon() {
            return this.icon;
        }

        @Override // android.support.v4.app.NotificationCompatBase.Action
        public CharSequence getTitle() {
            return this.title;
        }

        @Override // android.support.v4.app.NotificationCompatBase.Action
        public PendingIntent getActionIntent() {
            return this.actionIntent;
        }

        @Override // android.support.v4.app.NotificationCompatBase.Action
        public Bundle getExtras() {
            return this.a;
        }

        @Override // android.support.v4.app.NotificationCompatBase.Action
        public RemoteInput[] getRemoteInputs() {
            return this.b;
        }

        public static final class Builder {
            private final int a;
            private final CharSequence b;
            private final PendingIntent c;
            private final Bundle d;
            private ArrayList<RemoteInput> e;

            public Builder(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i, charSequence, pendingIntent, new Bundle());
            }

            public Builder(Action action) {
                this(action.icon, action.title, action.actionIntent, new Bundle(action.a));
            }

            private Builder(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
                this.a = i;
                this.b = Builder.limitCharSequenceLength(charSequence);
                this.c = pendingIntent;
                this.d = bundle;
            }

            public Builder addExtras(Bundle bundle) {
                if (bundle != null) {
                    this.d.putAll(bundle);
                }
                return this;
            }

            public Bundle getExtras() {
                return this.d;
            }

            public Builder addRemoteInput(RemoteInput remoteInput) {
                if (this.e == null) {
                    this.e = new ArrayList<>();
                }
                this.e.add(remoteInput);
                return this;
            }

            public Builder extend(Extender extender) {
                extender.extend(this);
                return this;
            }

            public Action build() {
                return new Action(this.a, this.b, this.c, this.d, this.e != null ? (RemoteInput[]) this.e.toArray(new RemoteInput[this.e.size()]) : null);
            }
        }

        public static final class WearableExtender implements Extender {
            private int a;
            private CharSequence b;
            private CharSequence c;
            private CharSequence d;

            public WearableExtender() {
                this.a = 1;
            }

            public WearableExtender(Action action) {
                this.a = 1;
                Bundle bundle = action.getExtras().getBundle("android.wearable.EXTENSIONS");
                if (bundle != null) {
                    this.a = bundle.getInt("flags", 1);
                    this.b = bundle.getCharSequence("inProgressLabel");
                    this.c = bundle.getCharSequence("confirmLabel");
                    this.d = bundle.getCharSequence("cancelLabel");
                }
            }

            @Override // android.support.v4.app.NotificationCompat.Action.Extender
            public Builder extend(Builder builder) {
                Bundle bundle = new Bundle();
                if (this.a != 1) {
                    bundle.putInt("flags", this.a);
                }
                if (this.b != null) {
                    bundle.putCharSequence("inProgressLabel", this.b);
                }
                if (this.c != null) {
                    bundle.putCharSequence("confirmLabel", this.c);
                }
                if (this.d != null) {
                    bundle.putCharSequence("cancelLabel", this.d);
                }
                builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
                return builder;
            }

            /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
            public WearableExtender m0clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.a = this.a;
                wearableExtender.b = this.b;
                wearableExtender.c = this.c;
                wearableExtender.d = this.d;
                return wearableExtender;
            }

            public WearableExtender setAvailableOffline(boolean z) {
                a(1, z);
                return this;
            }

            public boolean isAvailableOffline() {
                return (this.a & 1) != 0;
            }

            private void a(int i, boolean z) {
                if (z) {
                    this.a |= i;
                } else {
                    this.a &= i ^ (-1);
                }
            }

            public WearableExtender setInProgressLabel(CharSequence charSequence) {
                this.b = charSequence;
                return this;
            }

            public CharSequence getInProgressLabel() {
                return this.b;
            }

            public WearableExtender setConfirmLabel(CharSequence charSequence) {
                this.c = charSequence;
                return this;
            }

            public CharSequence getConfirmLabel() {
                return this.c;
            }

            public WearableExtender setCancelLabel(CharSequence charSequence) {
                this.d = charSequence;
                return this;
            }

            public CharSequence getCancelLabel() {
                return this.d;
            }
        }
    }

    public static final class WearableExtender implements Extender {
        public static final int SCREEN_TIMEOUT_LONG = -1;
        public static final int SCREEN_TIMEOUT_SHORT = 0;
        public static final int SIZE_DEFAULT = 0;
        public static final int SIZE_FULL_SCREEN = 5;
        public static final int SIZE_LARGE = 4;
        public static final int SIZE_MEDIUM = 3;
        public static final int SIZE_SMALL = 2;
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;
        private ArrayList<Action> a;
        private int b;
        private PendingIntent c;
        private ArrayList<Notification> d;
        private Bitmap e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;
        private int k;
        private int l;

        public WearableExtender() {
            this.a = new ArrayList<>();
            this.b = 1;
            this.d = new ArrayList<>();
            this.g = GravityCompat.END;
            this.h = -1;
            this.i = 0;
            this.k = 80;
        }

        public WearableExtender(Notification notification) {
            this.a = new ArrayList<>();
            this.b = 1;
            this.d = new ArrayList<>();
            this.g = GravityCompat.END;
            this.h = -1;
            this.i = 0;
            this.k = 80;
            Bundle extras = NotificationCompat.getExtras(notification);
            Bundle bundle = extras != null ? extras.getBundle("android.wearable.EXTENSIONS") : null;
            if (bundle != null) {
                Action[] actionArrA = NotificationCompat.a.a(bundle.getParcelableArrayList("actions"));
                if (actionArrA != null) {
                    Collections.addAll(this.a, actionArrA);
                }
                this.b = bundle.getInt("flags", 1);
                this.c = (PendingIntent) bundle.getParcelable("displayIntent");
                Notification[] notificationArrB = NotificationCompat.b(bundle, "pages");
                if (notificationArrB != null) {
                    Collections.addAll(this.d, notificationArrB);
                }
                this.e = (Bitmap) bundle.getParcelable("background");
                this.f = bundle.getInt("contentIcon");
                this.g = bundle.getInt("contentIconGravity", GravityCompat.END);
                this.h = bundle.getInt("contentActionIndex", -1);
                this.i = bundle.getInt("customSizePreset", 0);
                this.j = bundle.getInt("customContentHeight");
                this.k = bundle.getInt("gravity", 80);
                this.l = bundle.getInt("hintScreenTimeout");
            }
        }

        @Override // android.support.v4.app.NotificationCompat.Extender
        public Builder extend(Builder builder) {
            Bundle bundle = new Bundle();
            if (!this.a.isEmpty()) {
                bundle.putParcelableArrayList("actions", NotificationCompat.a.a((Action[]) this.a.toArray(new Action[this.a.size()])));
            }
            if (this.b != 1) {
                bundle.putInt("flags", this.b);
            }
            if (this.c != null) {
                bundle.putParcelable("displayIntent", this.c);
            }
            if (!this.d.isEmpty()) {
                bundle.putParcelableArray("pages", (Parcelable[]) this.d.toArray(new Notification[this.d.size()]));
            }
            if (this.e != null) {
                bundle.putParcelable("background", this.e);
            }
            if (this.f != 0) {
                bundle.putInt("contentIcon", this.f);
            }
            if (this.g != 8388613) {
                bundle.putInt("contentIconGravity", this.g);
            }
            if (this.h != -1) {
                bundle.putInt("contentActionIndex", this.h);
            }
            if (this.i != 0) {
                bundle.putInt("customSizePreset", this.i);
            }
            if (this.j != 0) {
                bundle.putInt("customContentHeight", this.j);
            }
            if (this.k != 80) {
                bundle.putInt("gravity", this.k);
            }
            if (this.l != 0) {
                bundle.putInt("hintScreenTimeout", this.l);
            }
            builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
            return builder;
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public WearableExtender m1clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.a = new ArrayList<>(this.a);
            wearableExtender.b = this.b;
            wearableExtender.c = this.c;
            wearableExtender.d = new ArrayList<>(this.d);
            wearableExtender.e = this.e;
            wearableExtender.f = this.f;
            wearableExtender.g = this.g;
            wearableExtender.h = this.h;
            wearableExtender.i = this.i;
            wearableExtender.j = this.j;
            wearableExtender.k = this.k;
            wearableExtender.l = this.l;
            return wearableExtender;
        }

        public WearableExtender addAction(Action action) {
            this.a.add(action);
            return this;
        }

        public WearableExtender addActions(List<Action> list) {
            this.a.addAll(list);
            return this;
        }

        public WearableExtender clearActions() {
            this.a.clear();
            return this;
        }

        public List<Action> getActions() {
            return this.a;
        }

        public WearableExtender setDisplayIntent(PendingIntent pendingIntent) {
            this.c = pendingIntent;
            return this;
        }

        public PendingIntent getDisplayIntent() {
            return this.c;
        }

        public WearableExtender addPage(Notification notification) {
            this.d.add(notification);
            return this;
        }

        public WearableExtender addPages(List<Notification> list) {
            this.d.addAll(list);
            return this;
        }

        public WearableExtender clearPages() {
            this.d.clear();
            return this;
        }

        public List<Notification> getPages() {
            return this.d;
        }

        public WearableExtender setBackground(Bitmap bitmap) {
            this.e = bitmap;
            return this;
        }

        public Bitmap getBackground() {
            return this.e;
        }

        public WearableExtender setContentIcon(int i) {
            this.f = i;
            return this;
        }

        public int getContentIcon() {
            return this.f;
        }

        public WearableExtender setContentIconGravity(int i) {
            this.g = i;
            return this;
        }

        public int getContentIconGravity() {
            return this.g;
        }

        public WearableExtender setContentAction(int i) {
            this.h = i;
            return this;
        }

        public int getContentAction() {
            return this.h;
        }

        public WearableExtender setGravity(int i) {
            this.k = i;
            return this;
        }

        public int getGravity() {
            return this.k;
        }

        public WearableExtender setCustomSizePreset(int i) {
            this.i = i;
            return this;
        }

        public int getCustomSizePreset() {
            return this.i;
        }

        public WearableExtender setCustomContentHeight(int i) {
            this.j = i;
            return this;
        }

        public int getCustomContentHeight() {
            return this.j;
        }

        public WearableExtender setStartScrollBottom(boolean z) {
            a(8, z);
            return this;
        }

        public boolean getStartScrollBottom() {
            return (this.b & 8) != 0;
        }

        public WearableExtender setContentIntentAvailableOffline(boolean z) {
            a(1, z);
            return this;
        }

        public boolean getContentIntentAvailableOffline() {
            return (this.b & 1) != 0;
        }

        public WearableExtender setHintHideIcon(boolean z) {
            a(2, z);
            return this;
        }

        public boolean getHintHideIcon() {
            return (this.b & 2) != 0;
        }

        public WearableExtender setHintShowBackgroundOnly(boolean z) {
            a(4, z);
            return this;
        }

        public boolean getHintShowBackgroundOnly() {
            return (this.b & 4) != 0;
        }

        public WearableExtender setHintAvoidBackgroundClipping(boolean z) {
            a(16, z);
            return this;
        }

        public boolean getHintAvoidBackgroundClipping() {
            return (this.b & 16) != 0;
        }

        public WearableExtender setHintScreenTimeout(int i) {
            this.l = i;
            return this;
        }

        public int getHintScreenTimeout() {
            return this.l;
        }

        private void a(int i, boolean z) {
            if (z) {
                this.b |= i;
            } else {
                this.b &= i ^ (-1);
            }
        }
    }

    public static final class CarExtender implements Extender {
        private Bitmap a;
        private UnreadConversation b;
        private int c;

        public CarExtender() {
            this.c = 0;
        }

        public CarExtender(Notification notification) {
            this.c = 0;
            if (Build.VERSION.SDK_INT >= 21) {
                Bundle bundle = NotificationCompat.getExtras(notification) == null ? null : NotificationCompat.getExtras(notification).getBundle("android.car.EXTENSIONS");
                if (bundle != null) {
                    this.a = (Bitmap) bundle.getParcelable("large_icon");
                    this.c = bundle.getInt("app_color", 0);
                    this.b = (UnreadConversation) NotificationCompat.a.a(bundle.getBundle("car_conversation"), UnreadConversation.a, RemoteInput.FACTORY);
                }
            }
        }

        @Override // android.support.v4.app.NotificationCompat.Extender
        public Builder extend(Builder builder) {
            if (Build.VERSION.SDK_INT >= 21) {
                Bundle bundle = new Bundle();
                if (this.a != null) {
                    bundle.putParcelable("large_icon", this.a);
                }
                if (this.c != 0) {
                    bundle.putInt("app_color", this.c);
                }
                if (this.b != null) {
                    bundle.putBundle("car_conversation", NotificationCompat.a.a(this.b));
                }
                builder.getExtras().putBundle("android.car.EXTENSIONS", bundle);
            }
            return builder;
        }

        public CarExtender setColor(@ColorInt int i) {
            this.c = i;
            return this;
        }

        @ColorInt
        public int getColor() {
            return this.c;
        }

        public CarExtender setLargeIcon(Bitmap bitmap) {
            this.a = bitmap;
            return this;
        }

        public Bitmap getLargeIcon() {
            return this.a;
        }

        public CarExtender setUnreadConversation(UnreadConversation unreadConversation) {
            this.b = unreadConversation;
            return this;
        }

        public UnreadConversation getUnreadConversation() {
            return this.b;
        }

        public static class UnreadConversation extends NotificationCompatBase.UnreadConversation {
            static final NotificationCompatBase.UnreadConversation.Factory a = new NotificationCompatBase.UnreadConversation.Factory() { // from class: android.support.v4.app.NotificationCompat.CarExtender.UnreadConversation.1
                @Override // android.support.v4.app.NotificationCompatBase.UnreadConversation.Factory
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public UnreadConversation build(String[] strArr, RemoteInputCompatBase.RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j) {
                    return new UnreadConversation(strArr, (RemoteInput) remoteInput, pendingIntent, pendingIntent2, strArr2, j);
                }
            };
            private final String[] b;
            private final RemoteInput c;
            private final PendingIntent d;
            private final PendingIntent e;
            private final String[] f;
            private final long g;

            UnreadConversation(String[] strArr, RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j) {
                this.b = strArr;
                this.c = remoteInput;
                this.e = pendingIntent2;
                this.d = pendingIntent;
                this.f = strArr2;
                this.g = j;
            }

            @Override // android.support.v4.app.NotificationCompatBase.UnreadConversation
            public String[] getMessages() {
                return this.b;
            }

            @Override // android.support.v4.app.NotificationCompatBase.UnreadConversation
            public RemoteInput getRemoteInput() {
                return this.c;
            }

            @Override // android.support.v4.app.NotificationCompatBase.UnreadConversation
            public PendingIntent getReplyPendingIntent() {
                return this.d;
            }

            @Override // android.support.v4.app.NotificationCompatBase.UnreadConversation
            public PendingIntent getReadPendingIntent() {
                return this.e;
            }

            @Override // android.support.v4.app.NotificationCompatBase.UnreadConversation
            public String[] getParticipants() {
                return this.f;
            }

            public String getParticipant() {
                if (this.f.length > 0) {
                    return this.f[0];
                }
                return null;
            }

            @Override // android.support.v4.app.NotificationCompatBase.UnreadConversation
            public long getLatestTimestamp() {
                return this.g;
            }

            public static class Builder {
                private final List<String> a = new ArrayList();
                private final String b;
                private RemoteInput c;
                private PendingIntent d;
                private PendingIntent e;
                private long f;

                public Builder(String str) {
                    this.b = str;
                }

                public Builder addMessage(String str) {
                    this.a.add(str);
                    return this;
                }

                public Builder setReplyAction(PendingIntent pendingIntent, RemoteInput remoteInput) {
                    this.c = remoteInput;
                    this.e = pendingIntent;
                    return this;
                }

                public Builder setReadPendingIntent(PendingIntent pendingIntent) {
                    this.d = pendingIntent;
                    return this;
                }

                public Builder setLatestTimestamp(long j) {
                    this.f = j;
                    return this;
                }

                public UnreadConversation build() {
                    return new UnreadConversation((String[]) this.a.toArray(new String[this.a.size()]), this.c, this.e, this.d, new String[]{this.b}, this.f);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Notification[] b(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = new Notification[parcelableArray.length];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < parcelableArray.length) {
                notificationArr[i3] = (Notification) parcelableArray[i3];
                i2 = i3 + 1;
            } else {
                bundle.putParcelableArray(str, notificationArr);
                return notificationArr;
            }
        }
    }

    public static Bundle getExtras(Notification notification) {
        return a.a(notification);
    }

    public static int getActionCount(Notification notification) {
        return a.b(notification);
    }

    public static Action getAction(Notification notification, int i2) {
        return a.a(notification, i2);
    }

    public static String getCategory(Notification notification) {
        return a.c(notification);
    }

    public static boolean getLocalOnly(Notification notification) {
        return a.d(notification);
    }

    public static String getGroup(Notification notification) {
        return a.e(notification);
    }

    public static boolean isGroupSummary(Notification notification) {
        return a.f(notification);
    }

    public static String getSortKey(Notification notification) {
        return a.g(notification);
    }
}
