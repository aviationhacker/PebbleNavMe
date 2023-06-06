.class public Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;,
        Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/ContextWrapper;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->c:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->d:Z

    .line 21
    iput-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->e:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->f:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    .line 29
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->b:Landroid/content/ContextWrapper;

    .line 31
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->getApplicationContext()Landroid/content/ContextWrapper;

    move-result-object v0

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$1;

    sget-object v2, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$1;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Ljava/util/UUID;)V

    invoke-static {v0, v1}, Lcom/getpebble/android/kit/PebbleKit;->registerReceivedDataHandler(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;)Landroid/content/BroadcastReceiver;

    .line 42
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->getApplicationContext()Landroid/content/ContextWrapper;

    move-result-object v0

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$2;

    sget-object v2, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$2;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Ljava/util/UUID;)V

    invoke-static {v0, v1}, Lcom/getpebble/android/kit/PebbleKit;->registerReceivedAckHandler(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;)Landroid/content/BroadcastReceiver;

    .line 51
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->getApplicationContext()Landroid/content/ContextWrapper;

    move-result-object v0

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$3;

    sget-object v2, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$3;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Ljava/util/UUID;)V

    invoke-static {v0, v1}, Lcom/getpebble/android/kit/PebbleKit;->registerReceivedNackHandler(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;)Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method private declared-synchronized a()V
    .locals 5

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/common/base/Splitter;->fixedLength(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    new-instance v3, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;

    sget-object v4, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->b:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    invoke-direct {v3, p0, v4, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->c:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(IZ)V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 90
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->d:Z

    .line 86
    if-eqz p2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;IZ)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a(IZ)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->d:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    iget-object v3, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->f:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;-><init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 5

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    const-string v0, "PebbleMessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - sendToPebble (checking) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a()V

    .line 106
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->b()V

    .line 108
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->d:Z

    .line 115
    iget v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->c:I

    rem-int/lit16 v1, v1, 0xc8

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->c:I

    .line 117
    new-instance v1, Lcom/getpebble/android/kit/util/PebbleDictionary;

    invoke-direct {v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;-><init>()V

    .line 118
    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$4;->a:[I

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->a()Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 134
    :goto_1
    const-string v2, "PebbleMessageQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pebble - sendToPebble (sending)  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->a()Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : transaction "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->getApplicationContext()Landroid/content/ContextWrapper;

    move-result-object v0

    sget-object v2, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    iget v3, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->c:I

    invoke-static {v0, v2, v1, v3}, Lcom/getpebble/android/kit/PebbleKit;->sendDataToPebbleWithTransactionId(Landroid/content/Context;Ljava/util/UUID;Lcom/getpebble/android/kit/util/PebbleDictionary;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :pswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v3}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addInt32(II)V

    goto :goto_1

    .line 123
    :pswitch_1
    const/4 v2, 0x1

    iget-object v3, v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addString(ILjava/lang/String;)V

    goto :goto_1

    .line 126
    :pswitch_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addInt32(II)V

    goto :goto_1

    .line 129
    :pswitch_3
    const-string v2, "PebbleMessageQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pebble - sendToPebble (TURN_DISTANCE) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v2, 0x3

    iget-object v3, v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getApplicationContext()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->b:Landroid/content/ContextWrapper;

    return-object v0
.end method
