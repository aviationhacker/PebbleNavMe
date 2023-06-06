.class Ljd$2;
.super Liw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljd;->f()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liw",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableList;

.field final synthetic b:Ljd;


# direct methods
.method constructor <init>(Ljd;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Ljd$2;->b:Ljd;

    iput-object p2, p0, Ljd$2;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Liw;-><init>()V

    return-void
.end method


# virtual methods
.method b()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Ljd$2;->b:Ljd;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Ljd$2;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
