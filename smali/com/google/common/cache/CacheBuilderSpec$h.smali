.class Lcom/google/common/cache/CacheBuilderSpec$h;
.super Lcom/google/common/cache/CacheBuilderSpec$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/common/cache/CacheBuilderSpec;J)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "maximum size was already set to "

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "maximum weight was already set to "

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    .line 337
    return-void

    :cond_0
    move v0, v2

    .line 332
    goto :goto_0

    :cond_1
    move v0, v2

    .line 334
    goto :goto_1
.end method
