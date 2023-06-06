.class public abstract Lcom/google/common/collect/ImmutableSet$a;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method f()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/google/common/collect/ImmutableSet$a$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$a$1;-><init>(Lcom/google/common/collect/ImmutableSet$a;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$a;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
