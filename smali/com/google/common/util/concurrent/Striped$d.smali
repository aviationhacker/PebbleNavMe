.class Lcom/google/common/util/concurrent/Striped$d;
.super Ljava/util/concurrent/Semaphore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 486
    return-void
.end method
