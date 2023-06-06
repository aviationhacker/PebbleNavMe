.class Lid$c$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid$c;->d()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lid$c;

.field private b:I

.field private final c:I


# direct methods
.method constructor <init>(Lid$c;)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lid$c$1;->a:Lid$c;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lid$c$1;->b:I

    .line 122
    iget-object v0, p0, Lid$c$1;->a:Lid$c;

    invoke-virtual {v0}, Lid$c;->b_()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    iput v0, p0, Lid$c$1;->c:I

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget v0, p0, Lid$c$1;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lid$c$1;->b:I

    :goto_0
    iget v0, p0, Lid$c$1;->b:I

    iget v1, p0, Lid$c$1;->c:I

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lid$c$1;->a:Lid$c;

    iget v1, p0, Lid$c$1;->b:I

    invoke-virtual {v0, v1}, Lid$c;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lid$c$1;->a:Lid$c;

    iget v2, p0, Lid$c$1;->b:I

    invoke-virtual {v1, v2}, Lid$c;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 132
    :goto_1
    return-object v0

    .line 126
    :cond_0
    iget v0, p0, Lid$c$1;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lid$c$1;->b:I

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lid$c$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_1
.end method

.method protected synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lid$c$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
