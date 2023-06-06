.class public Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$a;,
        Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$b;
    }
.end annotation


# instance fields
.field private a:[J

.field private b:I

.field private c:[I

.field private d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Ljava/lang/Long;

.field private h:Ljava/util/concurrent/CountDownLatch;

.field private i:Ljava/util/Timer;

.field private j:Ljava/util/Timer;

.field private k:Ljava/lang/Thread;

.field private l:Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;

.field private m:Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;

.field private n:Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;

.field private o:I

.field private final p:I

.field private q:I

.field private final r:Lcom/batescorp/pebble/nav/service/NavProcessingService;


# direct methods
.method public constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a:[J

    .line 42
    iput v2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b:I

    .line 43
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c:[I

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->f:Ljava/lang/Object;

    .line 49
    iput-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->g:Ljava/lang/Long;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->h:Ljava/util/concurrent/CountDownLatch;

    .line 51
    iput-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i:Ljava/util/Timer;

    .line 52
    iput-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->j:Ljava/util/Timer;

    .line 59
    const/16 v0, 0x96

    iput v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->o:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->p:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->q:I

    .line 68
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->r:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    .line 69
    return-void

    .line 41
    nop

    :array_0
    .array-data 8
        0x2d
        0x2e
        0x2f
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0xa7
        0x9b
        0x65
        0x6f
        0x62
        0xc9
        0xce
        0xcb
        0xcf
        0xca
        0xa5
        0x9c
        0x87
        0x85
        0x4c
        0x69
        0x21
        0xf0
    .end array-data
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->q:I

    return p1
.end method

.method private a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;
    .locals 2

    .prologue
    .line 379
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleDictionary;

    invoke-direct {v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;-><init>()V

    .line 380
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addInt32(II)V

    .line 381
    return-object v0
.end method

.method private a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleDictionary;

    invoke-direct {v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;-><init>()V

    .line 374
    invoke-virtual {v0, p1, p2}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addString(ILjava/lang/String;)V

    .line 375
    return-object v0
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->g:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 91
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;

    invoke-direct {v1, p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "PebbleMessageManager"

    const-string v2, "consumeAsync interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x1

    .line 598
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v1

    .line 599
    const-string v0, "PebbleMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pebble (keepalive) - Received value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : navRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->isRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x1

    .line 603
    :try_start_0
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/util/SystemUtil;->notificationEnable(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 608
    :goto_0
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->isInErrorState()Z

    move-result v2

    .line 612
    cmp-long v3, p1, v6

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a:[J

    invoke-static {v3}, Lcom/batescorp/pebble/nav/util/SystemUtil;->maxInArray([J)J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    .line 613
    const-string v0, "Update NavMe Android app."

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v0, v3}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 614
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->setNavErrorState()V

    .line 635
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    .line 636
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->isInErrorState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 637
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->clearState()V

    .line 639
    :cond_1
    invoke-virtual {v0, p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 641
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->resend()V

    .line 642
    return-void

    .line 615
    :cond_2
    cmp-long v3, p1, v6

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a:[J

    invoke-static {v3}, Lcom/batescorp/pebble/nav/util/SystemUtil;->minInArray([J)J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-gez v3, :cond_3

    .line 616
    const-string v0, "Update NavMe watch app."

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v0, v3}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 617
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->setNavErrorState()V

    goto :goto_1

    .line 618
    :cond_3
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v3

    invoke-static {v3}, Lcom/batescorp/pebble/nav/processor/NavLicense;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavLicense;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/processor/NavLicense;->haveLicense()Z

    move-result v3

    if-nez v3, :cond_4

    .line 619
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    const v3, 0x7f06005a

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v0, v3}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 620
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->setNavErrorState()V

    goto :goto_1

    .line 621
    :cond_4
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->f()Z

    move-result v3

    if-nez v3, :cond_5

    .line 622
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    const v3, 0x7f0600bc

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v0, v3}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 623
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->setNavErrorState()V

    goto :goto_1

    .line 624
    :cond_5
    if-nez v0, :cond_6

    .line 625
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    const v3, 0x7f0600c5

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v0, v3}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 626
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->setNavErrorState()V

    goto/16 :goto_1

    .line 628
    :cond_6
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->clearNavErrorState()V

    .line 630
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->clearState()V

    goto/16 :goto_1

    .line 604
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private a(Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b(Ljava/util/UUID;)V

    .line 367
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->HAVE_UUID:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 368
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - haveUUID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->HAVE_UUID:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 370
    return-void
.end method

.method private b()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->r:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    return-object v0
.end method

.method static synthetic b(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->g:Ljava/lang/Long;

    return-object v0
.end method

.method private b(Ljava/util/UUID;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    const-string v1, "NAV_MESSAGE_MGR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 649
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 650
    const-string v1, "NAV_MESSAGE_MGR_LAST_UUID"

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 651
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 652
    return-void
.end method

.method static synthetic c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;

    invoke-direct {v1, p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 182
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->q:I

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e()V

    return-void
.end method

.method static synthetic e(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b:I

    .line 227
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c:[I

    iget v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b:I

    aget v0, v0, v1

    iput v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->o:I

    .line 228
    return-void
.end method

.method static synthetic f(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->o:I

    return v0
.end method

.method private f()Z
    .locals 4

    .prologue
    const v3, 0x7f06003f

    .line 330
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLaungageSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v0, "true"

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 484
    const-string v0, "PebbleMessageManager"

    const-string v1, "returnToOldApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 488
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v1

    const-class v2, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 489
    const-string v1, "CLOSE_NAVME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 491
    return-void
.end method

.method static synthetic g(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->h()V

    return-void
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->j:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 528
    :goto_0
    monitor-exit p0

    return-void

    .line 526
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Start-CheckFlash"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->j:Ljava/util/Timer;

    .line 527
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->j:Ljava/util/Timer;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$b;

    invoke-direct {v1, p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$b;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i()V

    return-void
.end method

.method private declared-synchronized i()V
    .locals 1

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->j:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 536
    :goto_0
    monitor-exit p0

    return-void

    .line 534
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->j:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a()V

    return-void
.end method

.method static synthetic j(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->q:I

    return v0
.end method

.method static synthetic k(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->q:I

    return v0
.end method

.method static synthetic l(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->d()V

    return-void
.end method

.method static synthetic m(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c()V

    return-void
.end method

.method static synthetic n(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->g()V

    return-void
.end method


# virtual methods
.method public flashScreen(Ljava/util/UUID;I)V
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->stopCheckFlashTimer()V

    .line 350
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flashScreen - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz p1, :cond_0

    .line 353
    sget-object v0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(Ljava/util/UUID;)V

    .line 360
    :cond_0
    if-lez p2, :cond_1

    .line 361
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->startCheckFlashTimer(J)V

    .line 363
    :cond_1
    return-void
.end method

.method public notifyAckReceivedAsync()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;

    invoke-direct {v1, p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public notifyNackReceivedAsync()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c()V

    .line 156
    return-void
.end method

.method public offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;

    invoke-direct {v1, p2, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;-><init>(Lcom/getpebble/android/kit/util/PebbleDictionary;Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 189
    const-string v1, "PebbleMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pebble - offer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a()V

    .line 195
    :cond_0
    return v0
.end method

.method public pebbleDataReceiver(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 540
    const-string v1, "PebbleMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pebbleDataReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-ne p2, v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendConfig()V

    .line 544
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - Received value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-direct {p0, p3, p4}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(J)V

    .line 546
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendDesinationVersion()V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 548
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - Received (ack) value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 551
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - Received (flashcancel) value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->stopCheckFlashTimer()V

    goto :goto_0

    .line 553
    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 554
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - Received (return to old app) value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->g()V

    goto :goto_0

    .line 556
    :cond_4
    const/4 v1, 0x5

    if-ne p2, v1, :cond_6

    .line 557
    const-string v1, "PebbleMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pebble - Received (alertEnabled) value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for key: 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {p1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_5

    :goto_1
    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 559
    :cond_6
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    .line 560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 561
    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 562
    const-string v1, "com.batescorp.pebble.nav.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 564
    :cond_7
    const/16 v0, 0x8

    if-ne p2, v0, :cond_8

    .line 565
    const-string v0, "PebbleMessageManager"

    const-string v1, "Pebble - Received (startNav)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 569
    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 570
    const-string v1, "com.batescorp.pebble.nav.START_NAV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v1, "map.direction"

    long-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 575
    :cond_8
    const/16 v0, 0x9

    if-ne p2, v0, :cond_9

    .line 576
    const-string v0, "PebbleMessageManager"

    const-string v1, "Pebble - Received (sendDestinations)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendDestinations()V

    goto/16 :goto_0

    .line 578
    :cond_9
    const/16 v0, 0xa

    if-ne p2, v0, :cond_a

    .line 579
    const-string v0, "PebbleMessageManager"

    const-string v1, "Pebble - Received (sendDesinationVersion)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendDesinationVersion()V

    goto/16 :goto_0

    .line 581
    :cond_a
    const/16 v0, 0xb

    if-ne p2, v0, :cond_b

    .line 582
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble (close) - Received value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 583
    :cond_b
    const/16 v0, 0xc

    if-ne p2, v0, :cond_c

    .line 585
    invoke-direct {p0, p3, p4}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(J)V

    goto/16 :goto_0

    .line 587
    :cond_c
    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    .line 588
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 589
    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 590
    const-string v1, "com.batescorp.pebble.nav.START_NAV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v1, "map.direction.text"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V
    .locals 6

    .prologue
    .line 199
    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->g:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;

    .line 202
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;->getType()Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->g:Ljava/lang/Long;

    .line 204
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e()V

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;

    .line 213
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;->getType()Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 222
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 220
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v4}, Ljava/util/concurrent/BlockingQueue;->removeAll(Ljava/util/Collection;)Z

    .line 221
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 223
    return-void
.end method

.method public resend()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "PebbleMessageManager"

    const-string v1, "resend"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->clearState()V

    .line 325
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    .line 326
    invoke-virtual {v0, p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 327
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 74
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$1;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$1;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->d:Landroid/os/Handler;

    .line 82
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 83
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 84
    return-void
.end method

.method public sendAlert(I)V
    .locals 3

    .prologue
    .line 231
    .line 232
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->buzzOnAlert()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const/4 p1, 0x1

    .line 235
    :cond_0
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ALERT:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 236
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ALERT:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 237
    return-void
.end method

.method public sendConfig()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v3

    .line 311
    const-string v4, "PebbleMessageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendConfig - alertEnabled - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ALERT_ENABLED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v4, 0xc

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 314
    return-void

    :cond_0
    move v0, v2

    .line 311
    goto :goto_0

    :cond_1
    move v1, v2

    .line 312
    goto :goto_1
.end method

.method public sendDesinationVersion()V
    .locals 3

    .prologue
    .line 279
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION_VER:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 280
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION_VER:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v1, 0x13

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getDestinationVer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 281
    return-void
.end method

.method public sendDestinations()V
    .locals 6

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v0

    .line 265
    const-string v1, "PebbleMessageManager"

    const-string v2, "Pebble - sendDestinations"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 267
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getDestinationVer()I

    move-result v1

    .line 268
    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 269
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getDestinations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    .line 270
    const-string v3, "PebbleMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pebble - sendDestinations 001 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v3, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v4, 0x11

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    goto :goto_0

    .line 274
    :cond_0
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v2, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 275
    const-string v0, "PebbleMessageManager"

    const-string v1, "Pebble - sendDestinations 999 : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method public sendDirection(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - sendDirection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DIRECTION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 242
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DIRECTION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 243
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/google/common/base/Splitter;->fixedLength(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DIRECTION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    goto :goto_0

    .line 246
    :cond_0
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DIRECTION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/4 v1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 247
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - sendDirection 001 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public sendDistance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 286
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - sendDistance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 289
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/4 v1, 0x5

    invoke-direct {p0, v1, p2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 290
    return-void
.end method

.method public sendEtaArrivalTime(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 342
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ETA_TIME:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 343
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - sendEtaArrivalTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ETA_TIME:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/4 v1, 0x6

    invoke-direct {p0, v1, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 345
    return-void
.end method

.method public sendEtaDistance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 336
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ETA_DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 337
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - sendEtaDistance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ETA_DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 339
    return-void
.end method

.method public sendGpsAccuracy(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 300
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->GPS_ACCURACY:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 301
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - sendGpsAccuracy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->GPS_ACCURACY:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v1, 0xf

    invoke-direct {p0, v1, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 303
    return-void
.end method

.method public sendIcon(Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V
    .locals 3

    .prologue
    .line 253
    :try_start_0
    const-string v0, "PebbleMessageManager"

    const-string v1, "Pebble - sendIcon : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->NAV_ICON:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 256
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->NAV_ICON:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v1, 0x8

    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->getWatchImageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/Integer;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string v1, "PebbleMessageManager"

    const-string v2, "Failed to send icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendSpeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 293
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->SPEED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->removeAll(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V

    .line 294
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - sendSpeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->SPEED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v1, 0xd

    invoke-direct {p0, v1, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 296
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->SPEED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const/16 v1, 0xe

    invoke-direct {p0, v1, p2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(ILjava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->offer(Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;Lcom/getpebble/android/kit/util/PebbleDictionary;)Z

    .line 297
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$5;

    sget-object v1, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-direct {v0, p0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$5;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->l:Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;

    .line 398
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->l:Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;

    invoke-static {v0, v1}, Lcom/getpebble/android/kit/PebbleKit;->registerReceivedAckHandler(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;)Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$6;

    sget-object v1, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-direct {v0, p0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$6;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->m:Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;

    .line 413
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->m:Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;

    invoke-static {v0, v1}, Lcom/getpebble/android/kit/PebbleKit;->registerReceivedNackHandler(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;)Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->k:Ljava/lang/Thread;

    .line 432
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 433
    return-void
.end method

.method protected startCheckFlashTimer(J)V
    .locals 5

    .prologue
    .line 498
    const-string v0, "PebbleMessageManager"

    const-string v1, "CheckFlashTimerTask (start)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Start-CheckFlash"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i:Ljava/util/Timer;

    .line 501
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i:Ljava/util/Timer;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$a;

    invoke-direct {v1, p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$a;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 502
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->n:Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;

    if-eqz v0, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->n:Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    iput-object v2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->n:Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->l:Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;

    if-eqz v0, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->l:Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    iput-object v2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->l:Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->m:Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;

    if-eqz v0, :cond_3

    .line 452
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->m:Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    iput-object v2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->m:Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;

    .line 456
    :cond_3
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->stopCheckFlashTimer()V

    .line 458
    return-void
.end method

.method protected stopCheckFlashTimer()V
    .locals 2

    .prologue
    .line 511
    const-string v0, "PebbleMessageManager"

    const-string v1, "CheckFlashTimerTask (stop)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i:Ljava/util/Timer;

    goto :goto_0
.end method
