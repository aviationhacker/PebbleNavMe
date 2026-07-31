.class Lcom/google/common/collect/ArrayTable$a$1;
.super Lhd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$a;->b()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhd",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$a;I)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$a$1;->a:Lcom/google/common/collect/ArrayTable$a;

    invoke-direct {p0, p2}, Lhd;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$a$1;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/google/common/collect/ArrayTable$a$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$a$1$1;-><init>(Lcom/google/common/collect/ArrayTable$a$1;I)V

    return-object v0
.end method
