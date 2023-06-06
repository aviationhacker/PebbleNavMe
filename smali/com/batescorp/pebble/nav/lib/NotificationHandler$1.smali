.class final Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getCloseableInstance(Landroid/app/Notification;Ljava/lang/String;Landroid/content/Context;)Lcom/batescorp/pebble/nav/lib/NotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Notification;

.field final synthetic d:Lcom/batescorp/pebble/nav/lib/NotificationHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Lcom/batescorp/pebble/nav/lib/NotificationHandler;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->c:Landroid/app/Notification;

    iput-object p4, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->d:Lcom/batescorp/pebble/nav/lib/NotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 144
    const-string v0, "NotificationHandler"

    const-string v1, "onNotificationPosted RUN!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 149
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Application Context is Null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "NotificationHandler"

    const-string v2, "onNotificationPosted ERROR"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 221
    :cond_0
    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 156
    const-string v0, "layout_inflater"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 161
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->c:Landroid/app/Notification;

    iget-object v3, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 163
    if-nez v3, :cond_2

    .line 164
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->c:Landroid/app/Notification;

    invoke-static {v1, v3}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 167
    :cond_2
    if-eqz v3, :cond_8

    .line 169
    :try_start_2
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v1

    .line 177
    :goto_1
    if-nez v3, :cond_3

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->c:Landroid/app/Notification;

    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 180
    :cond_3
    if-eqz v3, :cond_7

    .line 182
    :try_start_4
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    .line 190
    :goto_2
    if-eqz v1, :cond_6

    .line 192
    :try_start_5
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 199
    :goto_3
    if-nez v0, :cond_4

    .line 200
    :try_start_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No remote view found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :catch_1
    move-exception v1

    .line 171
    const-string v3, "NotificationHandler"

    const-string v4, "Failed to inflate bigContentView"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v2

    move-object v4, v2

    .line 172
    goto :goto_1

    .line 183
    :catch_2
    move-exception v1

    .line 184
    const-string v3, "NotificationHandler"

    const-string v6, "Failed to inflate contentView"

    invoke-static {v3, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    move-object v3, v4

    .line 185
    goto :goto_2

    .line 193
    :catch_3
    move-exception v0

    .line 194
    const-string v1, "NotificationHandler"

    const-string v4, "Failed to inflate tickerView"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    move-object v1, v3

    .line 195
    goto :goto_3

    .line 204
    :cond_4
    if-nez v1, :cond_5

    .line 205
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to inflate RemoteView"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_5
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->d:Lcom/batescorp/pebble/nav/lib/NotificationHandler;

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;->a:Landroid/content/Context;

    invoke-static {v0, v2, v5, v1}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->a(Lcom/batescorp/pebble/nav/lib/NotificationHandler;Landroid/content/Context;Landroid/content/Context;Landroid/view/ViewGroup;)Ljava/lang/String;

    .line 212
    const-string v0, "NotificationHandler"

    const-string v1, "onNotificationPosted DONE!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :cond_7
    move-object v1, v3

    move-object v3, v4

    goto :goto_2

    :cond_8
    move-object v4, v2

    goto :goto_1
.end method
