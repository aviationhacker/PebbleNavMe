.class public Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.super Lorg/eclipse/jetty/io/nio/ChannelEndPoint;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/AsyncEndPoint;
.implements Lorg/eclipse/jetty/io/ConnectedEndPoint;


# static fields
.field public static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final a:Z

.field private final b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field private final c:Lorg/eclipse/jetty/io/nio/SelectorManager;

.field private d:Ljava/nio/channels/SelectionKey;

.field private final e:Ljava/lang/Runnable;

.field private f:I

.field private volatile g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

.field private h:I

.field private i:Z

.field private volatile j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private volatile n:J

.field private volatile o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "org.eclipse.jetty.io.nio"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;-><init>(Ljava/nio/channels/ByteChannel;I)V

    .line 46
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->a:Z

    .line 50
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;-><init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->e:Ljava/lang/Runnable;

    .line 75
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    .line 98
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->c:Lorg/eclipse/jetty/io/nio/SelectorManager;

    .line 99
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 100
    iput v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    .line 101
    iput-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->i:Z

    .line 102
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Z

    .line 103
    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    .line 105
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 106
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 551
    monitor-enter p0

    .line 554
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->isSuspended()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    move v4, v2

    .line 557
    :goto_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-ge v1, v2, :cond_5

    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    if-nez v1, :cond_5

    :cond_1
    move v1, v2

    .line 559
    :goto_1
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    move v4, v2

    :goto_2
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    :goto_3
    or-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 572
    :cond_2
    :goto_4
    :try_start_2
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->f:I

    if-eq v1, v0, :cond_8

    move v0, v2

    .line 573
    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 580
    :cond_3
    return-void

    :cond_4
    move v4, v3

    .line 556
    goto :goto_0

    :cond_5
    move v1, v3

    .line 557
    goto :goto_1

    :cond_6
    move v4, v3

    .line 559
    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    .line 566
    :catch_0
    move-exception v1

    .line 568
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    .line 569
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_8
    move v0, v3

    .line 572
    goto :goto_5
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 589
    monitor-enter p0

    .line 591
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 593
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->f:I

    if-lez v0, :cond_5

    .line 595
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 597
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 598
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 650
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    return-void

    .line 606
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->a()Ljava/nio/channels/Selector;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->f:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 610
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 611
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 616
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Z

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 620
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Z

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 627
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->f:I

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 632
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 633
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 635
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 640
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 641
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 643
    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Z

    if-eqz v0, :cond_9

    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Z

    .line 646
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 648
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public asyncDispatch()V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    .line 209
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    monitor-exit p0

    .line 222
    return-void

    .line 213
    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :pswitch_1
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public blockReadable(J)Z
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 429
    monitor-enter p0

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 434
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v2

    .line 435
    add-long v4, v2, p1

    .line 436
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isCheckForIdle()Z

    move-result v6

    .line 437
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    .line 441
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v7, :cond_3

    .line 445
    :try_start_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 446
    cmp-long v7, p1, v8

    if-lez v7, :cond_2

    sub-long v2, v4, v2

    :goto_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 454
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v2

    .line 457
    :goto_1
    iget-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_1

    cmp-long v7, p1, v8

    if-lez v7, :cond_1

    cmp-long v7, v2, v4

    if-ltz v7, :cond_1

    .line 463
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    .line 464
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 467
    :goto_2
    return v0

    .line 446
    :cond_2
    const-wide/16 v2, 0x2710

    goto :goto_0

    .line 448
    :catch_0
    move-exception v2

    .line 450
    :try_start_6
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 454
    :try_start_7
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v2

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 463
    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    .line 464
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    throw v0

    .line 463
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    .line 464
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 466
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v1

    .line 467
    goto :goto_2
.end method

.method public blockWritable(J)Z
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 477
    monitor-enter p0

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 482
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v2

    .line 483
    add-long v4, v2, p1

    .line 484
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isCheckForIdle()Z

    move-result v6

    .line 485
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    .line 489
    :cond_1
    iget-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    if-nez v7, :cond_3

    .line 493
    :try_start_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 494
    cmp-long v7, p1, v8

    if-lez v7, :cond_2

    sub-long v2, v4, v2

    :goto_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 502
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v2

    .line 504
    :goto_1
    iget-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_1

    cmp-long v7, p1, v8

    if-lez v7, :cond_1

    cmp-long v7, v2, v4

    if-ltz v7, :cond_1

    .line 510
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    .line 511
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 514
    :goto_2
    return v0

    .line 494
    :cond_2
    const-wide/16 v2, 0x2710

    goto :goto_0

    .line 496
    :catch_0
    move-exception v2

    .line 498
    :try_start_6
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 502
    :try_start_7
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v2

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 510
    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    .line 511
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    throw v0

    .line 510
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    .line 511
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 513
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v1

    .line 514
    goto :goto_2
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 277
    return-void
.end method

.method public checkIdleTimestamp(J)V
    .locals 5

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isCheckForIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    if-lez v0, :cond_0

    .line 314
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:J

    sub-long v0, p1, v0

    .line 316
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 319
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 320
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->c:Lorg/eclipse/jetty/io/nio/SelectorManager;

    new-instance v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;

    invoke-direct {v3, p0, v0, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;-><init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;J)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 751
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->a:Z

    if-eqz v0, :cond_0

    .line 755
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    .line 756
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 777
    :goto_1
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 761
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 769
    :catch_1
    move-exception v0

    .line 771
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 775
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    throw v0
.end method

.method public dispatch()V
    .locals 3

    .prologue
    .line 227
    monitor-enter p0

    .line 229
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-gtz v0, :cond_0

    .line 231
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->i:Z

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    .line 246
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->c:Lorg/eclipse/jetty/io/nio/SelectorManager;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    .line 237
    if-nez v0, :cond_0

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    .line 240
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatched Failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->c:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1

    .prologue
    .line 365
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 366
    if-lez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    .line 368
    :cond_0
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 404
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    monitor-enter p0

    .line 408
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    .line 409
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-ge v1, v2, :cond_0

    .line 410
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 411
    :cond_0
    monitor-exit p0

    .line 419
    :cond_1
    :goto_0
    return v0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 413
    :cond_2
    if-lez v0, :cond_1

    .line 415
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    .line 416
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    goto :goto_0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 375
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 378
    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    :cond_2
    monitor-enter p0

    .line 382
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    .line 383
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-ge v1, v2, :cond_3

    .line 384
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 385
    :cond_3
    monitor-exit p0

    .line 392
    :cond_4
    :goto_0
    return v0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 387
    :cond_5
    if-lez v0, :cond_4

    .line 389
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    .line 390
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    goto :goto_0
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object v0
.end method

.method public getIdleTimestamp()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:J

    return-wide v0
.end method

.method public getSelectManager()Lorg/eclipse/jetty/io/nio/SelectorManager;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->c:Lorg/eclipse/jetty/io/nio/SelectorManager;

    return-object v0
.end method

.method public getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    return-object v0
.end method

.method public getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    monitor-exit p0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handle()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 658
    move v4, v1

    .line 661
    :goto_0
    if-eqz v4, :cond_d

    .line 667
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 668
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v0, v3, :cond_1

    .line 670
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} replaced {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    aput-object v8, v6, v7

    invoke-interface {v3, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 672
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 673
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->c:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0, p0, v3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    .line 679
    :catch_0
    move-exception v0

    .line 681
    :try_start_1
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 703
    :try_start_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 708
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 718
    :try_start_4
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 721
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    move v4, v0

    goto :goto_0

    .line 703
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 708
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 718
    :try_start_6
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 721
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 710
    :catch_1
    move-exception v0

    .line 712
    :try_start_7
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 713
    :try_start_8
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 718
    :goto_5
    :try_start_9
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 727
    :catchall_0
    move-exception v0

    move-object v3, v0

    move v0, v4

    :goto_6
    if-eqz v0, :cond_12

    .line 729
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 730
    :goto_7
    if-eqz v0, :cond_12

    .line 732
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "SCEP.run() finally DISPATCHED"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_7

    .line 714
    :catch_2
    move-exception v0

    :try_start_a
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 718
    :catchall_1
    move-exception v0

    :try_start_b
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_3
    move v0, v2

    .line 721
    goto :goto_3

    .line 710
    :catch_3
    move-exception v0

    .line 712
    :try_start_c
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 713
    :try_start_d
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 718
    :goto_8
    :try_start_e
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 714
    :catch_4
    move-exception v0

    :try_start_f
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    .line 718
    :catchall_2
    move-exception v0

    :try_start_10
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_4
    move v0, v2

    .line 721
    goto :goto_3

    .line 683
    :catch_5
    move-exception v0

    .line 685
    :try_start_11
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EOF"

    invoke-interface {v3, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 686
    :try_start_12
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 703
    :goto_9
    :try_start_13
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 708
    :try_start_14
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 718
    :try_start_15
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 721
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto/16 :goto_3

    .line 687
    :catch_6
    move-exception v0

    :try_start_16
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_9

    .line 703
    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_17
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 708
    :try_start_18
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_11
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 718
    :try_start_19
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 721
    :cond_6
    :goto_b
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 727
    :catchall_4
    move-exception v3

    goto/16 :goto_6

    .line 710
    :catch_7
    move-exception v0

    .line 712
    :try_start_1b
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 713
    :try_start_1c
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 718
    :goto_d
    :try_start_1d
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_a

    .line 714
    :catch_8
    move-exception v0

    :try_start_1e
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    goto :goto_d

    .line 718
    :catchall_5
    move-exception v0

    :try_start_1f
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :cond_7
    move v0, v2

    .line 721
    goto/16 :goto_3

    .line 689
    :catch_9
    move-exception v0

    .line 691
    :try_start_20
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 692
    :try_start_21
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 703
    :goto_e
    :try_start_22
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 708
    :try_start_23
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    .line 718
    :try_start_24
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 721
    :cond_8
    :goto_f
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto/16 :goto_3

    .line 693
    :catch_a
    move-exception v0

    :try_start_25
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    goto :goto_e

    .line 710
    :catch_b
    move-exception v0

    .line 712
    :try_start_26
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    .line 713
    :try_start_27
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_c
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    .line 718
    :goto_10
    :try_start_28
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto :goto_f

    .line 714
    :catch_c
    move-exception v0

    :try_start_29
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    goto :goto_10

    .line 718
    :catchall_6
    move-exception v0

    :try_start_2a
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :cond_9
    move v0, v2

    .line 721
    goto/16 :goto_3

    .line 695
    :catch_d
    move-exception v0

    .line 697
    :try_start_2b
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "handle failed"

    invoke-interface {v3, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 698
    :try_start_2c
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    .line 703
    :goto_11
    :try_start_2d
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 708
    :try_start_2e
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_f
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    .line 718
    :try_start_2f
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 721
    :cond_a
    :goto_12
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    goto/16 :goto_3

    .line 699
    :catch_e
    move-exception v0

    :try_start_30
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_3

    goto :goto_11

    .line 710
    :catch_f
    move-exception v0

    .line 712
    :try_start_31
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_7

    .line 713
    :try_start_32
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_10
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    .line 718
    :goto_13
    :try_start_33
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto :goto_12

    .line 714
    :catch_10
    move-exception v0

    :try_start_34
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_7

    goto :goto_13

    .line 718
    :catchall_7
    move-exception v0

    :try_start_35
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    throw v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    :cond_b
    move v0, v2

    .line 721
    goto/16 :goto_3

    .line 710
    :catch_11
    move-exception v0

    .line 712
    :try_start_36
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "onInputShutdown failed"

    invoke-interface {v5, v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_8

    .line 713
    :try_start_37
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_12
    .catchall {:try_start_37 .. :try_end_37} :catchall_8

    .line 718
    :goto_14
    :try_start_38
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    goto/16 :goto_b

    .line 714
    :catch_12
    move-exception v0

    :try_start_39
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_8

    goto :goto_14

    .line 718
    :catchall_8
    move-exception v0

    :try_start_3a
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    throw v0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    :cond_c
    move v0, v2

    .line 721
    goto/16 :goto_c

    .line 727
    :cond_d
    if-eqz v4, :cond_13

    .line 729
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 730
    :goto_15
    if-eqz v0, :cond_13

    .line 732
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "SCEP.run() finally DISPATCHED"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_15

    :cond_e
    move v0, v2

    .line 729
    goto :goto_15

    :cond_f
    move v0, v2

    .line 733
    goto :goto_15

    :cond_10
    move v0, v2

    .line 729
    goto/16 :goto_7

    :cond_11
    move v0, v2

    .line 733
    goto/16 :goto_7

    :cond_12
    throw v3

    .line 737
    :cond_13
    return-void
.end method

.method public hasProgressed()Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckForIdle()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->o:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    return v0
.end method

.method protected notIdle()V
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:J

    .line 307
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 343
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->i:Z

    .line 346
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onIdleExpired(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 352
    monitor-enter p0

    .line 354
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->i:Z

    .line 355
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-ne v0, v2, :cond_0

    .line 356
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 357
    :cond_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 359
    return-void

    .line 346
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 352
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 354
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->i:Z

    .line 355
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-ne v1, v2, :cond_1

    .line 356
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 357
    :cond_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public schedule()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 150
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit p0

    .line 202
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    if-eqz v0, :cond_6

    .line 165
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    .line 167
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    .line 171
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 175
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-ge v0, v2, :cond_5

    .line 176
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 177
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v1, :cond_7

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->f:I

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->f:I

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    .line 190
    :cond_7
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-lt v0, v2, :cond_9

    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 201
    :cond_8
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 195
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 196
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    if-lt v0, v2, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isDeferringInterestedOps0()Z

    move-result v0

    if-nez v0, :cond_8

    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 283
    return-void
.end method

.method public scheduleWrite()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 523
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Required scheduleWrite {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    .line 527
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 528
    return-void
.end method

.method public setCheckForIdle(Z)V
    .locals 2

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:J

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->o:Z

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->o:Z

    goto :goto_0
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 133
    check-cast p1, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 134
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->c:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v1, p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    .prologue
    .line 836
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    .line 837
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 786
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->d:Ljava/nio/channels/SelectionKey;

    .line 787
    const-string v0, ""

    .line 788
    if-eqz v1, :cond_3

    .line 790
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    :cond_0
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    :cond_1
    :goto_0
    const-string v1, "SCEP@%x{l(%s)<->r(%s),s=%d,open=%b,ishut=%b,oshut=%b,rb=%b,wb=%b,w=%b,i=%d%s}-{%s}"

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object v0, v2, v3

    const/16 v0, 0xc

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->g:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 799
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 804
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected undispatch()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 257
    monitor-enter p0

    .line 259
    :try_start_0
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    packed-switch v2, :pswitch_data_0

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    .line 267
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->b()V

    .line 268
    monitor-exit p0

    move v0, v1

    :goto_0
    return v0

    .line 262
    :pswitch_0
    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->h:I

    .line 263
    monitor-exit p0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
