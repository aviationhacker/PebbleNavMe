.class Lcom/batescorp/pebble/nav/listener/NavMeListenerService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/listener/NavMeListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/listener/NavMeListenerService;


# direct methods
.method private constructor <init>(Lcom/batescorp/pebble/nav/listener/NavMeListenerService;)V
    .locals 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService$a;->a:Lcom/batescorp/pebble/nav/listener/NavMeListenerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 238
    const-string v0, "ListenerService"

    const-string v1, "Instantiated InitializationReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lcom/batescorp/pebble/nav/listener/NavMeListenerService;Lcom/batescorp/pebble/nav/listener/NavMeListenerService$1;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService$a;-><init>(Lcom/batescorp/pebble/nav/listener/NavMeListenerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 243
    const-string v0, "ListenerService"

    const-string v2, "Cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService$a;->a:Lcom/batescorp/pebble/nav/listener/NavMeListenerService;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 247
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 248
    const-string v6, "ListenerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNotificationPosted 001 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v5, p0, Lcom/batescorp/pebble/nav/listener/NavMeListenerService$a;->a:Lcom/batescorp/pebble/nav/listener/NavMeListenerService;

    invoke-static {v5, v4}, Lcom/batescorp/pebble/nav/listener/NavMeListenerService;->a(Lcom/batescorp/pebble/nav/listener/NavMeListenerService;Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 256
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {v0, v2, p1}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getCloseableInstance(Landroid/app/Notification;Ljava/lang/String;Landroid/content/Context;)Lcom/batescorp/pebble/nav/lib/NotificationHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const/4 v3, 0x0

    .line 260
    :try_start_1
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getButtons()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    goto :goto_1

    .line 263
    :cond_1
    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 274
    :cond_3
    :goto_2
    return-void

    .line 266
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 271
    :catch_1
    move-exception v0

    .line 272
    const-string v1, "ListenerService"

    const-string v2, "Unexpected error - onNotificationPosted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 266
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 255
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    if-eqz v2, :cond_5

    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_4
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method
