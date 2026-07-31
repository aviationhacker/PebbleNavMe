.class Lkl$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkl$f;->b()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lkl$f;


# direct methods
.method constructor <init>(Lkl$f;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lkl$f$1;->b:Lkl$f;

    iput-object p2, p0, Lkl$f$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lkl$f$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 360
    new-instance v1, Lkl$f$1$1;

    invoke-direct {v1, p0, v0}, Lkl$f$1$1;-><init>(Lkl$f$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lkl$f$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lkl$f$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lkl$f$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 382
    iget-object v0, p0, Lkl$f$1;->b:Lkl$f;

    invoke-virtual {v0}, Lkl$f;->d()V

    .line 383
    return-void
.end method
