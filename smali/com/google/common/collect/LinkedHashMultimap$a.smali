.class final Lcom/google/common/collect/LinkedHashMultimap$a;
.super Lix;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$c;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lix",
        "<TK;TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$c",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Lcom/google/common/collect/LinkedHashMultimap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Lcom/google/common/collect/LinkedHashMultimap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lcom/google/common/collect/LinkedHashMultimap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/LinkedHashMultimap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/LinkedHashMultimap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/LinkedHashMultimap$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lix;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iput p3, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->a:I

    .line 176
    iput-object p4, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 177
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v0
.end method

.method public a(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->f:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 213
    return-void
.end method

.method public a(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:Lcom/google/common/collect/LinkedHashMultimap$c;

    .line 196
    return-void
.end method

.method a(Ljava/lang/Object;I)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 180
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->a:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->e:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 217
    return-void
.end method

.method public b(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    .line 201
    return-void
.end method

.method public c()Lcom/google/common/collect/LinkedHashMultimap$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->e:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object v0
.end method

.method public d()Lcom/google/common/collect/LinkedHashMultimap$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->f:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object v0
.end method
