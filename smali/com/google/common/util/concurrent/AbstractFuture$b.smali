.class final Lcom/google/common/util/concurrent/AbstractFuture$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Z

.field final b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$b;->a:Z

    .line 252
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$b;->b:Ljava/lang/Throwable;

    .line 253
    return-void
.end method
