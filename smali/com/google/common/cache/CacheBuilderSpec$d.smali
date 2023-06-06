.class Lcom/google/common/cache/CacheBuilderSpec$d;
.super Lcom/google/common/cache/CacheBuilderSpec$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/common/cache/CacheBuilderSpec;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "initial capacity was already set to "

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 324
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    .line 325
    return-void

    :cond_0
    move v0, v2

    .line 322
    goto :goto_0
.end method
