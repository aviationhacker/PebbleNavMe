.class final Lcom/google/common/util/concurrent/ServiceManager$b;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ServiceManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$b;->notifyStarted()V

    return-void
.end method

.method protected doStop()V
    .locals 0

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$b;->notifyStopped()V

    return-void
.end method
