.class public abstract Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;
.super Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CustomScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V

    .line 551
    return-void
.end method


# virtual methods
.method protected abstract getNextSchedule()Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
.end method
