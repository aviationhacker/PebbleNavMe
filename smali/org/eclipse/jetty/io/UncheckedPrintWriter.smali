.class public Lorg/eclipse/jetty/io/UncheckedPrintWriter;
.super Ljava/io/PrintWriter;
.source "SourceFile"


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private b:Z

.field private c:Ljava/io/IOException;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 42
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->b:Z

    .line 44
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->d:Z

    .line 71
    iput-boolean p2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->b:Z

    .line 72
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lorg/eclipse/jetty/io/RuntimeIOException;

    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->c:Ljava/io/IOException;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 149
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->d:Z

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Ljava/io/PrintWriter;->setError()V

    .line 124
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Ljava/io/IOException;

    iput-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->c:Ljava/io/IOException;

    .line 132
    :goto_0
    sget-object v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 133
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->c:Ljava/io/IOException;

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->c:Ljava/io/IOException;

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a()V

    .line 322
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->b:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 325
    :cond_0
    monitor-exit v1

    .line 335
    :goto_0
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 327
    :catch_0
    move-exception v0

    .line 329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 331
    :catch_1
    move-exception v0

    .line 333
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkError()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->c:Ljava/io/IOException;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->d:Z

    .line 187
    monitor-exit v1

    .line 193
    :goto_0
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a()V

    .line 165
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 166
    monitor-exit v1

    .line 172
    :goto_0
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public print(C)V
    .locals 0

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(I)V

    .line 368
    return-void
.end method

.method public print(D)V
    .locals 1

    .prologue
    .line 437
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public print(F)V
    .locals 1

    .prologue
    .line 419
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public print(I)V
    .locals 1

    .prologue
    .line 384
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public print(J)V
    .locals 1

    .prologue
    .line 401
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 495
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 475
    const-string p1, "null"

    .line 477
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public print(Z)V
    .locals 1

    .prologue
    .line 351
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 352
    return-void

    .line 351
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public print([C)V
    .locals 0

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write([C)V

    .line 457
    return-void
.end method

.method public println()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->b()V

    .line 509
    return-void
.end method

.method public println(C)V
    .locals 2

    .prologue
    .line 542
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(C)V

    .line 545
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 546
    monitor-exit v1

    .line 547
    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(D)V
    .locals 3

    .prologue
    .line 619
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(D)V

    .line 622
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(F)V
    .locals 2

    .prologue
    .line 599
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(F)V

    .line 602
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 603
    monitor-exit v1

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(I)V
    .locals 2

    .prologue
    .line 561
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 563
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(I)V

    .line 564
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 565
    monitor-exit v1

    .line 566
    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(J)V
    .locals 3

    .prologue
    .line 580
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(J)V

    .line 583
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 584
    monitor-exit v1

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 676
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(Ljava/lang/Object;)V

    .line 679
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 680
    monitor-exit v1

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 657
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 661
    monitor-exit v1

    .line 662
    return-void

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Z)V
    .locals 2

    .prologue
    .line 523
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print(Z)V

    .line 526
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 527
    monitor-exit v1

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println([C)V
    .locals 2

    .prologue
    .line 638
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->print([C)V

    .line 641
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->println()V

    .line 642
    monitor-exit v1

    .line 643
    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setError()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a(Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a()V

    .line 210
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 211
    monitor-exit v1

    .line 221
    :goto_0
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 213
    :catch_0
    move-exception v0

    .line 215
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    .line 219
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write(Ljava/lang/String;II)V

    .line 313
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a()V

    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 289
    monitor-exit v1

    .line 299
    :goto_0
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    :catch_0
    move-exception v0

    .line 293
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 295
    :catch_1
    move-exception v0

    .line 297
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public write([C)V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->write([CII)V

    .line 267
    return-void
.end method

.method public write([CII)V
    .locals 2

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a()V

    .line 242
    iget-object v0, p0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 243
    monitor-exit v1

    .line 253
    :goto_0
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 245
    :catch_0
    move-exception v0

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    .line 251
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
