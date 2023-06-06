.class public Lhj$b;
.super Lcom/google/common/collect/Multisets$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$c",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhj;


# direct methods
.method protected constructor <init>(Lhj;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lhj$b;->a:Lhj;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lhj$b;->a:Lhj;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lhj$b;->a:Lhj;

    invoke-virtual {v0}, Lhj;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lhj$b;->a:Lhj;

    invoke-virtual {v0}, Lhj;->b()I

    move-result v0

    return v0
.end method
