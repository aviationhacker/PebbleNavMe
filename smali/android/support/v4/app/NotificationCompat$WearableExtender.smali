.class public final Landroid/support/v4/app/NotificationCompat$WearableExtender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field public static final SCREEN_TIMEOUT_LONG:I = -0x1

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0

.field public static final SIZE_DEFAULT:I = 0x0

.field public static final SIZE_FULL_SCREEN:I = 0x5

.field public static final SIZE_LARGE:I = 0x4

.field public static final SIZE_MEDIUM:I = 0x3

.field public static final SIZE_SMALL:I = 0x2

.field public static final SIZE_XSMALL:I = 0x1

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/app/PendingIntent;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    .line 2339
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    .line 2341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    .line 2344
    const v0, 0x800005

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    .line 2345
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    .line 2346
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    .line 2348
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    .line 2356
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 8

    .prologue
    const v7, 0x800005

    const/16 v6, 0x50

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    .line 2339
    iput v5, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    .line 2341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    .line 2344
    iput v7, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    .line 2345
    iput v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    .line 2346
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    .line 2348
    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    .line 2359
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 2360
    if-eqz v0, :cond_3

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    .line 2362
    :goto_0
    if-eqz v1, :cond_2

    .line 2363
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->a()Landroid/support/v4/app/NotificationCompat$a;

    move-result-object v0

    const-string v2, "actions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v4/app/NotificationCompat$a;->a(Ljava/util/ArrayList;)[Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 2365
    if-eqz v0, :cond_0

    .line 2366
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2369
    :cond_0
    const-string v0, "flags"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    .line 2370
    const-string v0, "displayIntent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    .line 2372
    const-string v0, "pages"

    invoke-static {v1, v0}, Landroid/support/v4/app/NotificationCompat;->a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    .line 2374
    if-eqz v0, :cond_1

    .line 2375
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2378
    :cond_1
    const-string v0, "background"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    .line 2379
    const-string v0, "contentIcon"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->f:I

    .line 2380
    const-string v0, "contentIconGravity"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    .line 2382
    const-string v0, "contentActionIndex"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    .line 2384
    const-string v0, "customSizePreset"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    .line 2386
    const-string v0, "customContentHeight"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->j:I

    .line 2387
    const-string v0, "gravity"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    .line 2388
    const-string v0, "hintScreenTimeout"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->l:I

    .line 2390
    :cond_2
    return-void

    .line 2360
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 2

    .prologue
    .line 2903
    if-eqz p2, :cond_0

    .line 2904
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    .line 2908
    :goto_0
    return-void

    .line 2906
    :cond_0
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2478
    return-object p0
.end method

.method public addActions(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 2494
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2495
    return-object p0
.end method

.method public addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    return-object p0
.end method

.method public addPages(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 2584
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2585
    return-object p0
.end method

.method public clearActions()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2504
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2505
    return-object p0
.end method

.method public clearPages()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2595
    return-object p0
.end method

.method public clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 3

    .prologue
    .line 2448
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 2449
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    .line 2450
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    .line 2451
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    .line 2452
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    .line 2453
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    .line 2454
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->f:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->f:I

    .line 2455
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    .line 2456
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    .line 2457
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    .line 2458
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->j:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->j:I

    .line 2459
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    .line 2460
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->l:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->l:I

    .line 2461
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2240
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 2399
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2401
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2402
    const-string v2, "actions"

    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->a()Landroid/support/v4/app/NotificationCompat$a;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/support/v4/app/NotificationCompat$Action;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/NotificationCompat$Action;

    invoke-interface {v3, v0}, Landroid/support/v4/app/NotificationCompat$a;->a([Landroid/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2406
    :cond_0
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2407
    const-string v0, "flags"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2409
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 2410
    const-string v0, "displayIntent"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2412
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2413
    const-string v2, "pages"

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2416
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2417
    const-string v0, "background"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2419
    :cond_4
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->f:I

    if-eqz v0, :cond_5

    .line 2420
    const-string v0, "contentIcon"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->f:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2422
    :cond_5
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    const v2, 0x800005

    if-eq v0, v2, :cond_6

    .line 2423
    const-string v0, "contentIconGravity"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2425
    :cond_6
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 2426
    const-string v0, "contentActionIndex"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2429
    :cond_7
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    if-eqz v0, :cond_8

    .line 2430
    const-string v0, "customSizePreset"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2432
    :cond_8
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->j:I

    if-eqz v0, :cond_9

    .line 2433
    const-string v0, "customContentHeight"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->j:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2435
    :cond_9
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_a

    .line 2436
    const-string v0, "gravity"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2438
    :cond_a
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->l:I

    if-eqz v0, :cond_b

    .line 2439
    const-string v0, "hintScreenTimeout"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->l:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2442
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2443
    return-object p1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2512
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContentAction()I
    .locals 1

    .prologue
    .line 2705
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    return v0
.end method

.method public getContentIcon()I
    .locals 1

    .prologue
    .line 2647
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->f:I

    return v0
.end method

.method public getContentIconGravity()I
    .locals 1

    .prologue
    .line 2668
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 1

    .prologue
    .line 2815
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomContentHeight()I
    .locals 1

    .prologue
    .line 2774
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->j:I

    return v0
.end method

.method public getCustomSizePreset()I
    .locals 1

    .prologue
    .line 2752
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    return v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2726
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    return v0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 1

    .prologue
    .line 2877
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHintHideIcon()Z
    .locals 1

    .prologue
    .line 2834
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHintScreenTimeout()I
    .locals 1

    .prologue
    .line 2899
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->l:I

    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 1

    .prologue
    .line 2853
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2606
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 1

    .prologue
    .line 2793
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2619
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    .line 2620
    return-object p0
.end method

.method public setContentAction(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2686
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->h:I

    .line 2687
    return-object p0
.end method

.method public setContentIcon(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2639
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->f:I

    .line 2640
    return-object p0
.end method

.method public setContentIconGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2657
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->g:I

    .line 2658
    return-object p0
.end method

.method public setContentIntentAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2804
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a(IZ)V

    .line 2805
    return-object p0
.end method

.method public setCustomContentHeight(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2763
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->j:I

    .line 2764
    return-object p0
.end method

.method public setCustomSizePreset(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2739
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->i:I

    .line 2740
    return-object p0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2546
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    .line 2547
    return-object p0
.end method

.method public setGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2715
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->k:I

    .line 2716
    return-object p0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2865
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a(IZ)V

    .line 2866
    return-object p0
.end method

.method public setHintHideIcon(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2824
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a(IZ)V

    .line 2825
    return-object p0
.end method

.method public setHintScreenTimeout(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2888
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->l:I

    .line 2889
    return-object p0
.end method

.method public setHintShowBackgroundOnly(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2843
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a(IZ)V

    .line 2844
    return-object p0
.end method

.method public setStartScrollBottom(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2783
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->a(IZ)V

    .line 2784
    return-object p0
.end method
