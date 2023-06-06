.class Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;->a:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;->a:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->handle()V

    return-void
.end method
