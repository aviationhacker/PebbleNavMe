.class Landroid/support/v4/media/session/MediaSessionCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$c$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$c$a;,
        Landroid/support/v4/media/session/MediaSessionCompat$c$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/support/v4/media/VolumeProviderCompat;

.field private C:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/support/v4/media/session/MediaSessionCompat$c$b;

.field private final f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final g:Landroid/support/v4/media/session/MediaSessionCompat$c$c;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Landroid/media/AudioManager;

.field private final k:Ljava/lang/Object;

.field private final l:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private r:I

.field private s:Landroid/support/v4/media/MediaMetadataCompat;

.field private t:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private u:Landroid/app/PendingIntent;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/CharSequence;

.field private x:I

.field private y:Landroid/os/Bundle;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->k:Ljava/lang/Object;

    .line 976
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    .line 979
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->m:Z

    .line 980
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->n:Z

    .line 981
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->o:Z

    .line 982
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->p:Z

    .line 999
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$c$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->C:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    .line 1015
    if-nez p3, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaButtonReceiver component may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    .line 1020
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->h:Ljava/lang/String;

    .line 1021
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->j:Landroid/media/AudioManager;

    .line 1022
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->i:Ljava/lang/String;

    .line 1023
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Landroid/content/ComponentName;

    .line 1024
    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/app/PendingIntent;

    .line 1025
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$c$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->e:Landroid/support/v4/media/session/MediaSessionCompat$c$b;

    .line 1026
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->e:Landroid/support/v4/media/session/MediaSessionCompat$c$b;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1027
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->g:Landroid/support/v4/media/session/MediaSessionCompat$c$c;

    .line 1029
    iput v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->x:I

    .line 1030
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->z:I

    .line 1031
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->A:I

    .line 1032
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1033
    invoke-static {p4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/VolumeProviderCompat;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1371
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1372
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->j:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->A:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/MediaSessionCompat$c;II)V
    .locals 0

    .prologue
    .line 963
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(II)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 0

    .prologue
    .line 963
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method private a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1429
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1430
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1432
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1436
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1437
    return-void

    .line 1433
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v4/media/session/MediaSessionCompat$c;)I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->z:I

    return v0
.end method

.method private b(II)V
    .locals 2

    .prologue
    .line 1381
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1382
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->j:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->A:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private b(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1478
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1479
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1481
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1485
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1486
    return-void

    .line 1482
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v4/media/session/MediaSessionCompat$c;II)V
    .locals 0

    .prologue
    .line 963
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(II)V

    return-void
.end method

.method private b(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1466
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1467
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1469
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1473
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1474
    return-void

    .line 1470
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1501
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1502
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1503
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1505
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1509
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1510
    return-void

    .line 1506
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1453
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1454
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1455
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1457
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1461
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1462
    return-void

    .line 1458
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1490
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1491
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1493
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1497
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1498
    return-void

    .line 1494
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(Landroid/support/v4/media/session/MediaSessionCompat$c;)I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->A:I

    return v0
.end method

.method static synthetic d(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$c$c;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->g:Landroid/support/v4/media/session/MediaSessionCompat$c$c;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v4/media/session/MediaSessionCompat$c;)I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->r:I

    return v0
.end method

.method private f()Z
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1304
    .line 1305
    iget-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->n:Z

    if-eqz v2, :cond_5

    .line 1308
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 1309
    iget-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->p:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->r:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1310
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    .line 1311
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1317
    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->p:Z

    .line 1331
    :cond_0
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_7

    .line 1332
    iget-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->o:Z

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->r:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 1333
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1334
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->o:Z

    .line 1367
    :goto_2
    return v0

    .line 1314
    :cond_1
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1318
    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->p:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->r:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 1319
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    .line 1320
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1326
    :goto_3
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->p:Z

    goto :goto_1

    .line 1323
    :cond_3
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_3

    .line 1336
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->o:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->r:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 1341
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1342
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1343
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->o:Z

    move v0, v1

    goto :goto_2

    .line 1348
    :cond_5
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->p:Z

    if-eqz v0, :cond_6

    .line 1349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_8

    .line 1350
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/app/PendingIntent;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1356
    :goto_4
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->p:Z

    .line 1358
    :cond_6
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->o:Z

    if-eqz v0, :cond_7

    .line 1362
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1363
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1364
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->o:Z

    :cond_7
    move v0, v1

    goto :goto_2

    .line 1353
    :cond_8
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_4
.end method

.method static synthetic f(Landroid/support/v4/media/session/MediaSessionCompat$c;)Z
    .locals 1

    .prologue
    .line 963
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->m:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private g()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 1392
    const-wide/16 v2, -0x1

    .line 1393
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->k:Ljava/lang/Object;

    monitor-enter v4

    .line 1394
    :try_start_0
    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1395
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->s:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->s:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1397
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->s:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1399
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    const/4 v4, 0x0

    .line 1402
    if-eqz v7, :cond_5

    .line 1403
    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 1406
    :cond_1
    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v8

    .line 1407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1408
    cmp-long v10, v8, v0

    if-lez v10, :cond_5

    .line 1409
    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    sub-long v8, v5, v8

    long-to-float v8, v8

    mul-float/2addr v4, v8

    float-to-long v8, v4

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 1411
    cmp-long v4, v2, v0

    if-ltz v4, :cond_3

    cmp-long v4, v8, v2

    if-lez v4, :cond_3

    .line 1416
    :goto_0
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0, v7}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1418
    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1420
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 1424
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v7

    :cond_2
    return-object v0

    .line 1399
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1413
    :cond_3
    cmp-long v2, v8, v0

    if-gez v2, :cond_4

    move-wide v2, v0

    .line 1414
    goto :goto_0

    :cond_4
    move-wide v2, v8

    goto :goto_0

    :cond_5
    move-object v0, v4

    goto :goto_1
.end method

.method static synthetic h(Landroid/support/v4/media/session/MediaSessionCompat$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->h:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 1440
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1441
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1442
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1444
    :try_start_0
    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1448
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1449
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1450
    return-void

    .line 1445
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic i(Landroid/support/v4/media/session/MediaSessionCompat$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v4/media/session/MediaSessionCompat$c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->u:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic l(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->j:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic m(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->s:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method static synthetic n(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 963
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->g()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Landroid/support/v4/media/session/MediaSessionCompat$c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Landroid/support/v4/media/session/MediaSessionCompat$c;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->w:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic q(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->y:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic r(Landroid/support/v4/media/session/MediaSessionCompat$c;)I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->x:I

    return v0
.end method

.method static synthetic s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->q:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    return-object v0
.end method

.method static synthetic t(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 1131
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1132
    :try_start_0
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->r:I

    .line 1133
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()Z

    .line 1135
    return-void

    .line 1133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 1260
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1261
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->u:Landroid/app/PendingIntent;

    .line 1262
    monitor-exit v1

    .line 1263
    return-void

    .line 1262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1299
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->y:Landroid/os/Bundle;

    .line 1300
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1240
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1241
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->s:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1244
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->n:Z

    if-nez v1, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1248
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    .line 1249
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    if-nez p1, :cond_2

    :goto_1
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    goto :goto_2

    .line 1252
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1253
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    if-nez p1, :cond_5

    :goto_3
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 6

    .prologue
    .line 1152
    if-nez p1, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volumeProvider may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1158
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->z:I

    .line 1159
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    .line 1160
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->z:I

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->A:I

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1163
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1165
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->C:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1166
    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x13

    const/16 v2, 0x12

    .line 1041
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->q:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    if-ne p1, v0, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1044
    :cond_0
    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_4

    .line 1047
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 1048
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1050
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 1051
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1126
    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->q:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    goto :goto_0

    .line 1054
    :cond_4
    if-nez p2, :cond_5

    .line 1055
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1057
    :cond_5
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c$2;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 1113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_6

    .line 1114
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;

    move-result-object v1

    .line 1116
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1119
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    .line 1120
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;

    move-result-object v0

    .line 1122
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 9

    .prologue
    const/16 v8, 0x12

    const/16 v7, 0xe

    .line 1205
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1206
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1207
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1209
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->n:Z

    if-nez v0, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1213
    :cond_1
    if-nez p1, :cond_2

    .line 1214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    .line 1215
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1216
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1220
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_4

    .line 1221
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setState(Ljava/lang/Object;IJFJ)V

    .line 1228
    :cond_3
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 1229
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1223
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_3

    .line 1224
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1230
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_6

    .line 1231
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1232
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    .line 1233
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1278
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->w:Ljava/lang/CharSequence;

    .line 1279
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Ljava/lang/CharSequence;)V

    .line 1280
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1187
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1188
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1272
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->v:Ljava/util/List;

    .line 1273
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Ljava/util/List;)V

    .line 1274
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->n:Z

    if-ne p1, v0, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->n:Z

    .line 1174
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->s:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1176
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1182
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->n:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->n:Z

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->m:Z

    .line 1194
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()Z

    .line 1195
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V

    .line 1196
    return-void
.end method

.method public b(I)V
    .locals 7

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->B:Landroid/support/v4/media/VolumeProviderCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1142
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->z:I

    .line 1143
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->z:I

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->A:I

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->j:Landroid/media/AudioManager;

    iget v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->A:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->j:Landroid/media/AudioManager;

    iget v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->A:I

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1147
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1148
    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 1268
    return-void
.end method

.method public c()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 1294
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->x:I

    .line 1295
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1284
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    return-object v0
.end method
