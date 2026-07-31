.class final Lcom/google/common/util/concurrent/AbstractFuture$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/AbstractFuture$c;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$c$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$c$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->a:Lcom/google/common/util/concurrent/AbstractFuture$c;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$c;->b:Ljava/lang/Throwable;

    .line 242
    return-void
.end method
