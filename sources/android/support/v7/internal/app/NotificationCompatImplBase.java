package android.support.v7.internal.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatBase;
import android.support.v7.appcompat.R;
import android.widget.RemoteViews;
import java.text.NumberFormat;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompatImplBase {
    public static <T extends NotificationCompatBase.Action> void overrideContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, List<T> list, int[] iArr, boolean z2, PendingIntent pendingIntent) {
        notificationBuilderWithBuilderAccessor.getBuilder().setContent(a(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, list, iArr, z2, pendingIntent));
        if (z2) {
            notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
        }
    }

    private static <T extends NotificationCompatBase.Action> RemoteViews a(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, List<T> list, int[] iArr, boolean z2, PendingIntent pendingIntent) {
        RemoteViews remoteViewsA = a(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, R.layout.notification_template_media, true);
        int size = list.size();
        int iMin = iArr == null ? 0 : Math.min(iArr.length, 3);
        remoteViewsA.removeAllViews(R.id.media_actions);
        if (iMin > 0) {
            for (int i2 = 0; i2 < iMin; i2++) {
                if (i2 >= size) {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i2), Integer.valueOf(size - 1)));
                }
                remoteViewsA.addView(R.id.media_actions, a(context, list.get(iArr[i2])));
            }
        }
        if (z2) {
            remoteViewsA.setViewVisibility(R.id.end_padder, 8);
            remoteViewsA.setViewVisibility(R.id.cancel_action, 0);
            remoteViewsA.setOnClickPendingIntent(R.id.cancel_action, pendingIntent);
            remoteViewsA.setInt(R.id.cancel_action, "setAlpha", context.getResources().getInteger(R.integer.cancel_button_image_alpha));
        } else {
            remoteViewsA.setViewVisibility(R.id.end_padder, 0);
            remoteViewsA.setViewVisibility(R.id.cancel_action, 8);
        }
        return remoteViewsA;
    }

    public static <T extends NotificationCompatBase.Action> void overrideBigContentView(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, List<T> list, boolean z2, PendingIntent pendingIntent) {
        notification.bigContentView = a(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, list, z2, pendingIntent);
        if (z2) {
            notification.flags |= 2;
        }
    }

    private static <T extends NotificationCompatBase.Action> RemoteViews a(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, List<T> list, boolean z2, PendingIntent pendingIntent) {
        int iMin = Math.min(list.size(), 5);
        RemoteViews remoteViewsA = a(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, a(iMin), false);
        remoteViewsA.removeAllViews(R.id.media_actions);
        if (iMin > 0) {
            for (int i2 = 0; i2 < iMin; i2++) {
                remoteViewsA.addView(R.id.media_actions, a(context, list.get(i2)));
            }
        }
        if (z2) {
            remoteViewsA.setViewVisibility(R.id.cancel_action, 0);
            remoteViewsA.setInt(R.id.cancel_action, "setAlpha", context.getResources().getInteger(R.integer.cancel_button_image_alpha));
            remoteViewsA.setOnClickPendingIntent(R.id.cancel_action, pendingIntent);
        } else {
            remoteViewsA.setViewVisibility(R.id.cancel_action, 8);
        }
        return remoteViewsA;
    }

    private static RemoteViews a(Context context, NotificationCompatBase.Action action) {
        boolean z = action.getActionIntent() == null;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.notification_media_action);
        remoteViews.setImageViewResource(R.id.action0, action.getIcon());
        if (!z) {
            remoteViews.setOnClickPendingIntent(R.id.action0, action.getActionIntent());
        }
        if (Build.VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(R.id.action0, action.getTitle());
        }
        return remoteViews;
    }

    private static int a(int i) {
        return i <= 3 ? R.layout.notification_template_big_media_narrow : R.layout.notification_template_big_media;
    }

    private static RemoteViews a(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, boolean z2) {
        boolean z3;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i2);
        boolean z4 = false;
        boolean z5 = false;
        if (bitmap != null && Build.VERSION.SDK_INT >= 16) {
            remoteViews.setImageViewBitmap(R.id.icon, bitmap);
        } else {
            remoteViews.setViewVisibility(R.id.icon, 8);
        }
        if (charSequence != null) {
            remoteViews.setTextViewText(R.id.title, charSequence);
        }
        if (charSequence2 != null) {
            remoteViews.setTextViewText(R.id.text, charSequence2);
            z4 = true;
        }
        if (charSequence3 != null) {
            remoteViews.setTextViewText(R.id.info, charSequence3);
            remoteViews.setViewVisibility(R.id.info, 0);
            z3 = true;
        } else if (i > 0) {
            if (i > context.getResources().getInteger(R.integer.status_bar_notification_info_maxnum)) {
                remoteViews.setTextViewText(R.id.info, context.getResources().getString(R.string.status_bar_notification_info_overflow));
            } else {
                remoteViews.setTextViewText(R.id.info, NumberFormat.getIntegerInstance().format(i));
            }
            remoteViews.setViewVisibility(R.id.info, 0);
            z3 = true;
        } else {
            remoteViews.setViewVisibility(R.id.info, 8);
            z3 = z4;
        }
        if (charSequence4 != null && Build.VERSION.SDK_INT >= 16) {
            remoteViews.setTextViewText(R.id.text, charSequence4);
            if (charSequence2 != null) {
                remoteViews.setTextViewText(R.id.text2, charSequence2);
                remoteViews.setViewVisibility(R.id.text2, 0);
                z5 = true;
            } else {
                remoteViews.setViewVisibility(R.id.text2, 8);
            }
        }
        if (z5 && Build.VERSION.SDK_INT >= 16) {
            if (z2) {
                remoteViews.setTextViewTextSize(R.id.text, 0, context.getResources().getDimensionPixelSize(R.dimen.notification_subtext_size));
            }
            remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
        }
        if (j != 0) {
            if (z) {
                remoteViews.setViewVisibility(R.id.chronometer, 0);
                remoteViews.setLong(R.id.chronometer, "setBase", (SystemClock.elapsedRealtime() - System.currentTimeMillis()) + j);
                remoteViews.setBoolean(R.id.chronometer, "setStarted", true);
            } else {
                remoteViews.setViewVisibility(R.id.time, 0);
                remoteViews.setLong(R.id.time, "setTime", j);
            }
        }
        remoteViews.setViewVisibility(R.id.line3, z3 ? 0 : 8);
        return remoteViews;
    }
}
