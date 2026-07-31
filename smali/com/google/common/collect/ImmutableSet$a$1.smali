.class Lcom/google/common/collect/ImmutableSet$a$1;
.super Liw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSet$a;->f()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liw",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSet$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$a;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$a$1;->a:Lcom/google/common/collect/ImmutableSet$a;

    invoke-direct {p0}, Liw;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic b()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$a$1;->c()Lcom/google/common/collect/ImmutableSet$a;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/google/common/collect/ImmutableSet$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a$1;->a:Lcom/google/common/collect/ImmutableSet$a;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a$1;->a:Lcom/google/common/collect/ImmutableSet$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
