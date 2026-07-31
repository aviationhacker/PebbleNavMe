.class public final Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Schedule"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-wide p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->a:J

    .line 563
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->b:Ljava/util/concurrent/TimeUnit;

    .line 564
    return-void
.end method
