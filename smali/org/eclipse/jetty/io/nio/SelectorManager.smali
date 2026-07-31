.class public abstract Lorg/eclipse/jetty/io/nio/SelectorManager;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/nio/SelectorManager$a;,
        Lorg/eclipse/jetty/io/nio/SelectorManager$b;,
        Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    }
.end annotation


# static fields
.field public static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private e:I

.field private f:I

.field private g:J

.field private h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field private i:I

.field private volatile j:I

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "org.eclipse.jetty.io.nio"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 63
    const-string v0, "org.eclipse.jetty.io.nio.MONITOR_PERIOD"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->a:I

    .line 64
    const-string v0, "org.eclipse.jetty.io.nio.MAX_SELECTS"

    const v1, 0x186a0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->b:I

    .line 65
    const-string v0, "org.eclipse.jetty.io.nio.BUSY_PAUSE"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->c:I

    .line 66
    const-string v0, "org.eclipse.jetty.io.nio.IDLE_TICK"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 72
    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    .line 73
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->j:I

    .line 74
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->k:Z

    .line 75
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->l:I

    .line 1030
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->a:I

    return v0
.end method

.method static synthetic a(Lorg/eclipse/jetty/io/nio/SelectorManager;)[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->c:I

    return v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/io/nio/SelectorManager;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->g:J

    return-wide v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->d:I

    return v0
.end method

.method static synthetic c(Lorg/eclipse/jetty/io/nio/SelectorManager;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->e:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->b:I

    return v0
.end method

.method static synthetic d(Lorg/eclipse/jetty/io/nio/SelectorManager;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->f:I

    return v0
.end method


# virtual methods
.method public connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 368
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 370
    return-void
.end method

.method public abstract dispatch(Ljava/lang/Runnable;)Z
.end method

.method protected doStart()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 259
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    new-array v0, v0, [Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move v0, v1

    .line 260
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 261
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    new-instance v3, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-direct {v3, p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V

    aput-object v3, v2, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 266
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectSets()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 269
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$1;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    .line 313
    if-nez v0, :cond_1

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!Selecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 316
    :cond_2
    return-void
.end method

.method protected doStop()V
    .locals 4

    .prologue
    .line 323
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 325
    if-eqz v1, :cond_1

    .line 327
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 329
    if-eqz v3, :cond_0

    .line 330
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->b()V

    .line 327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 334
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 381
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 382
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 383
    return-void
.end method

.method public abstract endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
.end method

.method public abstract endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
.end method

.method public abstract endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
.end method

.method public getLowResourcesConnections()J
    .locals 4

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->g:J

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getLowResourcesMaxIdleTime()J
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->f:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMaxIdleTime()J
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectSet(I)Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSelectSets()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    return v0
.end method

.method public getSelectorPriorityDelta()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->l:I

    return v0
.end method

.method public isDeferringInterestedOps0()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->k:Z

    return v0
.end method

.method public abstract newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
.end method

.method public abstract newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.end method

.method public register(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->j:I

    .line 181
    if-gez v0, :cond_0

    .line 182
    neg-int v0, v0

    .line 183
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    rem-int/2addr v0, v1

    .line 184
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    aget-object v0, v1, v0

    .line 185
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 187
    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;)V
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->j:I

    .line 162
    if-gez v0, :cond_0

    .line 163
    neg-int v0, v0

    .line 164
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    rem-int/2addr v0, v1

    .line 165
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 166
    if-eqz v1, :cond_1

    .line 168
    aget-object v0, v1, v0

    .line 169
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 172
    :cond_1
    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->j:I

    .line 138
    if-gez v0, :cond_0

    .line 139
    neg-int v0, v0

    .line 140
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    rem-int/2addr v0, v1

    .line 141
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->h:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 142
    if-eqz v1, :cond_1

    .line 144
    aget-object v0, v1, v0

    .line 145
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 148
    :cond_1
    return-void
.end method

.method public setDeferringInterestedOps0(Z)V
    .locals 0

    .prologue
    .line 1023
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->k:Z

    .line 1024
    return-void
.end method

.method public setLowResourcesConnections(J)V
    .locals 5

    .prologue
    .line 226
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->g:J

    .line 227
    return-void
.end method

.method public setLowResourcesMaxIdleTime(J)V
    .locals 1

    .prologue
    .line 245
    long-to-int v0, p1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->f:I

    .line 246
    return-void
.end method

.method public setMaxIdleTime(J)V
    .locals 1

    .prologue
    .line 84
    long-to-int v0, p1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->e:I

    .line 85
    return-void
.end method

.method public setSelectSets(I)V
    .locals 4

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->g:J

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 94
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    .line 95
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->i:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->g:J

    .line 96
    return-void
.end method

.method public setSelectorPriorityDelta(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->l:I

    .line 205
    return-void
.end method
