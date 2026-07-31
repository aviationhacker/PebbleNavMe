.class Lcom/google/common/cache/CacheBuilderSpec$a;
.super Lcom/google/common/cache/CacheBuilderSpec$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "expireAfterAccess already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 452
    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->j:J

    .line 453
    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    .line 454
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
