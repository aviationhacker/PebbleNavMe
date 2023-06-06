.class public abstract Lcom/google/common/collect/Maps$m;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 3454
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 3477
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$m;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;)V

    .line 3478
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3462
    new-instance v0, Lcom/google/common/collect/Maps$m$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$m$1;-><init>(Lcom/google/common/collect/Maps$m;)V

    return-object v0
.end method

.method public abstract size()I
.end method
