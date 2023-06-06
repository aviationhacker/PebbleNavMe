.class final Lic$b;
.super Lic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lic",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lic;-><init>(Ljava/lang/Comparable;)V

    .line 377
    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method a(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lic",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 396
    sget-object v0, Lic$1;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 403
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 400
    :pswitch_0
    iget-object v0, p0, Lic$b;->a:Ljava/lang/Comparable;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 401
    if-nez v0, :cond_0

    invoke-static {}, Lic;->d()Lic;

    move-result-object v0

    :goto_0
    move-object p0, v0

    :pswitch_1
    return-object p0

    :cond_0
    invoke-static {v0}, Lic$b;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lic$b;->a:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 422
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lic$b;->a:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    return-void
.end method

.method a(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lic$b;->a:Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method b(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lic",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 409
    sget-object v0, Lic$1;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 416
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 411
    :pswitch_0
    iget-object v0, p0, Lic$b;->a:Ljava/lang/Comparable;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 412
    if-nez v0, :cond_0

    invoke-static {}, Lic;->e()Lic;

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    .line 412
    :cond_0
    invoke-static {v0}, Lic$b;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    .line 414
    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lic$b;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method b(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lic$b;->a:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    return-void
.end method

.method c(Lcom/google/common/collect/DiscreteDomain;)Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lic",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lic$b;->a(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    invoke-static {v0}, Lic$b;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lic;->e()Lic;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 374
    check-cast p1, Lic;

    invoke-super {p0, p1}, Lic;->a(Lic;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lic$b;->a:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lic$b;->a:Ljava/lang/Comparable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
