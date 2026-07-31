.class Lcom/google/common/collect/ArrayTable$a$1$1;
.super Lhh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$a$1;->b(I)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhh",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/collect/ArrayTable$a$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$a$1;I)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$a$1$1;->b:Lcom/google/common/collect/ArrayTable$a$1;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$a$1$1;->a:I

    invoke-direct {p0}, Lhh;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$a$1$1;->b:Lcom/google/common/collect/ArrayTable$a$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$a$1;->a:Lcom/google/common/collect/ArrayTable$a;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$a$1$1;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ArrayTable$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$a$1$1;->b:Lcom/google/common/collect/ArrayTable$a$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$a$1;->a:Lcom/google/common/collect/ArrayTable$a;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$a$1$1;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ArrayTable$a;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$a$1$1;->b:Lcom/google/common/collect/ArrayTable$a$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$a$1;->a:Lcom/google/common/collect/ArrayTable$a;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$a$1$1;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ArrayTable$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
