package com.batescorp.pebble.nav.lib;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Looper;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RemoteViews;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class NotificationHandler implements AutoCloseable {
    public static final int HAVE_UUID = 9;
    public static final int NAV_ALERT = 4;
    public static final int NAV_ALERT_ENABLED = 12;
    public static final int NAV_DEST_BEGIN = 16;
    public static final int NAV_DEST_DESC = 17;
    public static final int NAV_DEST_END = 18;
    public static final int NAV_DEST_VER = 19;
    public static final int NAV_ETA_DIST = 7;
    public static final int NAV_ETA_TIME = 6;
    public static final int NAV_GPS_ACCURACY = 15;
    public static final int NAV_SPEED = 13;
    public static final int NAV_SPEED_UNIT = 14;
    public static final int NAV_TEXT_BEGIN = 0;
    public static final int NAV_TEXT_DATA = 1;
    public static final int NAV_TEXT_END = 2;
    public static final int NAV_TURN = 8;
    public static final int NAV_TURN_DISTANCE = 3;
    public static final int NAV_TURN_DISTANCE_UNIT = 5;
    public static final UUID PEBBLE_NAV_UUID = UUID.fromString("1bdfe435-6a34-42d5-aed7-ace29fec1259");
    public static final UUID PEBBLE_SYSTEM_UUID = UUID.fromString("00000000-0000-0000-0000-000000000000");
    private String a = "";
    private String b = "";
    private String c = "";
    private String d = "";
    private String e = null;
    private Bitmap f = null;
    private Collection<Button> g = new ArrayList();

    public static class ALERT_TYPE {
        public static final int BASIC_BOTH = 0;
        public static final int BASIC_DOUBLE = 2;
        public static final int BASIC_TRIPLE = 3;
        public static final int HARD = 50;
        public static final int HARD_DOUBLE = 51;
        public static final int HARD_TRIPLE = 52;
        public static final int LIGHT_ONLY = 1;
    }

    public String getPackageName() {
        return this.a;
    }

    protected void setPackageName(String str) {
        this.a = str;
    }

    public String getNavTitle() {
        return this.b;
    }

    protected void setNavTitle(String str) {
        this.b = str;
    }

    public Collection<Button> getButtons() {
        return this.g;
    }

    public String getNavDescription() {
        return this.c;
    }

    protected void setNavDescription(String str) {
        this.c = str;
    }

    public String getNavHtmlDescription() {
        return this.d;
    }

    protected void setNavHtmlDescription(String str) {
        this.d = str;
    }

    public String getNavTime() {
        return this.e;
    }

    protected void setNavTime(String str) {
        this.e = str;
    }

    protected String getNavTitleId() {
        return "nav_title";
    }

    protected String getNavTimeId() {
        return "nav_time";
    }

    protected String getNavDescriptionId() {
        return "nav_description";
    }

    public static NotificationHandler getCloseableInstance(final Notification notification, final String str, final Context context) {
        final NotificationHandler notificationHandler = new NotificationHandler();
        notificationHandler.setPackageName(str);
        Thread thread = new Thread(new Runnable() { // from class: com.batescorp.pebble.nav.lib.NotificationHandler.1
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup viewGroup;
                RemoteViews remoteViews;
                ViewGroup viewGroup2;
                RemoteViews remoteViews2;
                ViewGroup viewGroup3;
                Log.d("NotificationHandler", "onNotificationPosted RUN!!!");
                try {
                    Looper.prepare();
                    if (context == null) {
                        throw new Exception("Application Context is Null");
                    }
                    Context contextCreatePackageContext = context.createPackageContext(str, 2);
                    LayoutInflater layoutInflater = (LayoutInflater) contextCreatePackageContext.getSystemService("layout_inflater");
                    RemoteViews remoteViewsCreateBigContentView = notification.bigContentView;
                    if (remoteViewsCreateBigContentView == null) {
                        remoteViewsCreateBigContentView = Notification.Builder.recoverBuilder(context, notification).createBigContentView();
                    }
                    if (remoteViewsCreateBigContentView != null) {
                        try {
                            viewGroup = (ViewGroup) layoutInflater.inflate(remoteViewsCreateBigContentView.getLayoutId(), (ViewGroup) null);
                        } catch (Exception e) {
                            Log.d("NotificationHandler", "Failed to inflate bigContentView", e);
                            remoteViewsCreateBigContentView = null;
                            viewGroup = null;
                        }
                    } else {
                        viewGroup = null;
                    }
                    if (remoteViewsCreateBigContentView == null) {
                        remoteViewsCreateBigContentView = notification.contentView;
                    }
                    if (remoteViewsCreateBigContentView != null) {
                        try {
                            RemoteViews remoteViews3 = remoteViewsCreateBigContentView;
                            viewGroup2 = (ViewGroup) layoutInflater.inflate(remoteViewsCreateBigContentView.getLayoutId(), (ViewGroup) null);
                            remoteViews = remoteViews3;
                        } catch (Exception e2) {
                            Log.d("NotificationHandler", "Failed to inflate contentView", e2);
                            remoteViews = null;
                            viewGroup2 = viewGroup;
                        }
                    } else {
                        remoteViews = remoteViewsCreateBigContentView;
                        viewGroup2 = viewGroup;
                    }
                    if (remoteViews != null) {
                        try {
                            RemoteViews remoteViews4 = remoteViews;
                            viewGroup3 = (ViewGroup) layoutInflater.inflate(remoteViews.getLayoutId(), (ViewGroup) null);
                            remoteViews2 = remoteViews4;
                        } catch (Exception e3) {
                            Log.d("NotificationHandler", "Failed to inflate tickerView", e3);
                            remoteViews2 = null;
                            viewGroup3 = viewGroup2;
                        }
                    } else {
                        remoteViews2 = remoteViews;
                        viewGroup3 = viewGroup2;
                    }
                    if (remoteViews2 == null) {
                        throw new Exception("No remote view found");
                    }
                    if (viewGroup3 == null) {
                        throw new Exception("Failed to inflate RemoteView");
                    }
                    remoteViews2.reapply(contextCreatePackageContext, viewGroup3);
                    notificationHandler.a(context, contextCreatePackageContext, viewGroup3);
                    Log.d("NotificationHandler", "onNotificationPosted DONE!!!");
                } catch (Throwable th) {
                    Log.d("NotificationHandler", "onNotificationPosted ERROR", th);
                }
                Looper looperMyLooper = Looper.myLooper();
                if (looperMyLooper != null) {
                    looperMyLooper.quit();
                }
            }
        });
        thread.start();
        try {
            thread.join();
        } catch (InterruptedException e) {
            Log.d("NotificationHandler", "onNotificationPosted ERROR", e);
        }
        return notificationHandler;
    }

    public Bitmap getNavBitmap() {
        return this.f;
    }

    public void setNavBitmap(Bitmap bitmap) {
        this.f = bitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(Context context, Context context2, ViewGroup viewGroup) {
        String resourceEntryName;
        Bitmap bitmap;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            try {
                View childAt = viewGroup.getChildAt(i);
                if (childAt != null) {
                    try {
                        resourceEntryName = context2.getResources().getResourceEntryName(childAt.getId());
                    } catch (Exception e) {
                        Log.d("NotificationHandler", "getResources failed", e);
                        resourceEntryName = null;
                    }
                    Log.d("NotificationHandler", "onNotificationPosted (???) before: " + childAt.getClass() + " - " + resourceEntryName);
                    if (childAt instanceof ImageView) {
                        Log.d("NotificationHandler", "onNotificationPosted (ImageView) before: " + childAt.getClass());
                        ImageView imageView = (ImageView) childAt;
                        Log.d("NotificationHandler", "onNotificationPosted (view - ImageView) (" + resourceEntryName + ") " + childAt.getId());
                        if (("nav_notification_icon".equals(resourceEntryName) || "right_icon".equals(resourceEntryName)) && (bitmap = ((BitmapDrawable) imageView.getDrawable()).getBitmap()) != null) {
                            setNavBitmap(bitmap.copy(bitmap.getConfig(), false));
                        }
                    }
                    if (childAt instanceof ViewStub) {
                        Log.d("NotificationHandler", "onNotificationPosted (ViewStub) before: " + childAt.getClass());
                        childAt = ((ViewStub) childAt).inflate();
                        Log.d("NotificationHandler", "onNotificationPosted (ViewStub) after: " + childAt.getClass());
                    }
                    Log.d("NotificationHandler", "onNotificationPosted (view - class): " + childAt.getClass());
                    if (childAt instanceof ProgressBar) {
                        ProgressBar progressBar = (ProgressBar) childAt;
                        Log.d("NotificationHandler", "onNotificationPosted (view - progress) " + childAt.getId() + ": [" + progressBar.getProgress() + "]");
                        Log.d("NotificationHandler", "onNotificationPosted (view - progress) " + childAt.getId() + ": [" + progressBar.getMax() + "]");
                    }
                    if (childAt instanceof Button) {
                        Button button = (Button) childAt;
                        Log.d("NotificationHandler", "onNotificationPosted (view - button) (" + resourceEntryName + ")(" + ((Object) button.getText()) + ") " + childAt.getId());
                        this.g.add(button);
                    }
                    if (childAt instanceof ImageButton) {
                        Log.d("NotificationHandler", "onNotificationPosted (view - ImageButton) (" + resourceEntryName + ") " + ((ImageButton) childAt).getId());
                    }
                    if (childAt instanceof TextView) {
                        TextView textView = (TextView) childAt;
                        CharSequence text = textView.getText();
                        if (text != null) {
                            Log.d("NotificationHandler", "onNotificationPosted (view - text) " + childAt.getId() + ": [" + text.toString() + "]");
                        } else {
                            Log.d("NotificationHandler", "onNotificationPosted (view - text) is NULL!!!");
                        }
                        processTextView(context2, textView);
                    }
                    if (childAt instanceof ViewGroup) {
                        Log.d("NotificationHandler", "onNotificationPosted (processRemoteView - ViewGroup): " + childAt.getClass());
                        a(context, context2, (ViewGroup) childAt);
                    }
                }
            } catch (Exception e2) {
            }
        }
        return "Failed to process";
    }

    protected void processTextView(Context context, TextView textView) {
        String string;
        String resourceEntryName = context.getResources().getResourceEntryName(textView.getId());
        if (textView.getText() == null) {
            string = "";
        } else {
            string = textView.getText().toString();
        }
        Log.d("NotificationHandler", "onNotificationPosted (view - text) " + textView.getId() + "(" + resourceEntryName + ") : [" + string + "] []");
        if (resourceEntryName.equals(getNavDescriptionId()) || resourceEntryName.equals("title")) {
            setNavDescription(string);
            setNavHtmlDescription(textView.getText() instanceof Spanned ? Html.toHtml((Spanned) textView.getText()) : string);
        }
        if (resourceEntryName.equals(getNavTitleId())) {
            setNavTitle(string);
        }
        if (resourceEntryName.equals(getNavTimeId()) || resourceEntryName.equals("header_text")) {
            setNavTime(string);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("packageName : ").append(this.a).append("\n");
        sb.append("navTitle : ").append(this.b).append("\n");
        sb.append("navDescription : ").append(this.c).append("\n");
        sb.append("navTime : ").append(this.e).append("\n");
        return sb.toString();
    }

    private NotificationHandler() {
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.f != null) {
            this.f.recycle();
            this.f = null;
        }
    }
}
