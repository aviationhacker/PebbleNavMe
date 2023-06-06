.class public Lcom/batescorp/pebble/nav/listener/NavMeListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/listener/NavMeListenerService$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/batescorp/pebble/nav/lib/NotificationHandler;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Thread;

.field c:Landroid/content/IntentFilter;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->b:Ljava/lang/Thread;

    .line 236
    return-void
.end method

.method private a(I)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    const-string v1, "com.batescorp.pebble.nav.RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/16 v1, 0x270f

    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    .line 148
    const-string v0, "ListenerService"

    const-string v1, "startAutoRefresh - 001"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 151
    const/high16 v1, 0x20000000

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a(I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x8000000

    invoke-direct {p0, v6}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a(I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 154
    const-string v0, "ListenerService"

    const-string v1, "startAutoRefresh - 002"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method private a(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 212
    const-string v3, "ListenerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotificationPosted 001 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "com.google.android.apps.maps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "ListenerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationPosted 001 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 233
    goto :goto_0
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/listener/NavMeListenerService;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "ListenerService"

    const-string v1, "stopAutoRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/high16 v0, 0x8000000

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a(I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 163
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "ListenerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 45
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->b:Ljava/lang/Thread;

    .line 46
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    new-instance v0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService$a;-><init>(Lcom/batescorp/pebble/nav/listener/NavMeListenerService;Lcom/batescorp/pebble/nav/listener/NavMeListenerService$1;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->d:Landroid/content/BroadcastReceiver;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->c:Landroid/content/IntentFilter;

    .line 49
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->c:Landroid/content/IntentFilter;

    const-string v1, "pebble.nav.cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->d:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->c:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "ListenerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->b:Ljava/lang/Thread;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 64
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "ListenerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationPosted 001 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a()V

    .line 110
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;

    .line 111
    if-eqz v0, :cond_1

    .line 112
    const-string v1, "ListenerService"

    const-string v2, "SLIPPING !!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->close()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 116
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v1, v2, p0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getCloseableInstance(Landroid/app/Notification;Ljava/lang/String;Landroid/content/Context;)Lcom/batescorp/pebble/nav/lib/NotificationHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "ListenerService"

    const-string v2, "Unexpected error - onNotificationPosted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "ListenerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->b()V

    .line 140
    invoke-static {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->processNavCanceled(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "ListenerService"

    const-string v2, "Unexpected error - onNotificationRemoved"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onStartCommand(Landroid/content/Intent;II)I

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 179
    .line 182
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    if-eqz v0, :cond_0

    .line 188
    :try_start_1
    invoke-static {p0, v0}, Lcom/batescorp/pebble/nav/lib/NotificationData;->createInstance(Landroid/content/Context;Lcom/batescorp/pebble/nav/lib/NotificationHandler;)Lcom/batescorp/pebble/nav/lib/NotificationData;

    move-result-object v1

    .line 189
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 190
    const-class v3, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const-string v3, "PROCESS_NAV_DATA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v3, "navData"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    :try_start_3
    const-string v1, "ListenerService"

    const-string v2, "Unexpected error - run"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    const-string v1, "ListenerService"

    const-string v2, "InterruptedException - run"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return-void

    .line 195
    :catch_2
    move-exception v1

    .line 196
    :try_start_4
    const-string v2, "ListenerService"

    const-string v3, "Unexpected error - run"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    :try_start_5
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 200
    :catch_3
    move-exception v0

    .line 201
    :try_start_6
    const-string v1, "ListenerService"

    const-string v2, "Unexpected error - run"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    .line 199
    :try_start_7
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 202
    :goto_1
    :try_start_8
    throw v1

    .line 200
    :catch_4
    move-exception v0

    .line 201
    const-string v2, "ListenerService"

    const-string v3, "Unexpected error - run"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method
