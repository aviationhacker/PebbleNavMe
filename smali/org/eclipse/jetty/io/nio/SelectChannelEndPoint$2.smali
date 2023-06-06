.class Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->checkIdleTimestamp(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;J)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;->b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iput-wide p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 326
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;->b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iget-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;->a:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->onIdleExpired(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;->b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 332
    return-void

    .line 330
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;->b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    throw v0
.end method
