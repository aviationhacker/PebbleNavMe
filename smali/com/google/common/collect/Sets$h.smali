.class final Lcom/google/common/collect/Sets$h;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1284
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1285
    iput-object p1, p0, Lcom/google/common/collect/Sets$h;->a:Lcom/google/common/collect/ImmutableMap;

    .line 1286
    iput p2, p0, Lcom/google/common/collect/Sets$h;->b:I

    .line 1287
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/Sets$h;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/common/collect/Sets$h;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/Sets$h;)I
    .locals 1

    .prologue
    .line 1280
    iget v0, p0, Lcom/google/common/collect/Sets$h;->b:I

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 1319
    iget-object v0, p0, Lcom/google/common/collect/Sets$h;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1320
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/common/collect/Sets$h;->b:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int v0, v1, v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1291
    new-instance v0, Lcom/google/common/collect/Sets$h$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$h$1;-><init>(Lcom/google/common/collect/Sets$h;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/common/collect/Sets$h;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
