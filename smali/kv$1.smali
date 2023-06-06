.class final Lkv$1;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p1}, Lkv;->b(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lkv$1;->a(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
