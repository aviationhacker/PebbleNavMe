.class Lho$a;
.super Lig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lho;->g()Lcom/google/common/collect/SortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lig",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lho;


# direct methods
.method constructor <init>(Lho;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lho$a;->a:Lho;

    invoke-direct {p0}, Lig;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lho$a;->a:Lho;

    return-object v0
.end method

.method b()Ljava/util/Iterator;
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
    .line 138
    iget-object v0, p0, Lho$a;->a:Lho;

    invoke-virtual {v0}, Lho;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
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
    .line 143
    iget-object v0, p0, Lho$a;->a:Lho;

    invoke-virtual {v0}, Lho;->f()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
