.class Lhc$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc$a;->iterator()Ljava/util/Iterator;
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
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lhc$a;


# direct methods
.method constructor <init>(Lhc$a;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lhc$a$1;->c:Lhc$a;

    iput-object p2, p0, Lhc$a$1;->b:Ljava/util/Iterator;

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
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lhc$a$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lhc$a$1;->a:Ljava/util/Map$Entry;

    .line 325
    iget-object v0, p0, Lhc$a$1;->a:Ljava/util/Map$Entry;

    .line 327
    new-instance v1, Lhc$a$1$1;

    invoke-direct {v1, p0, v0}, Lhc$a$1$1;-><init>(Lhc$a$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lhc$a$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lhc$a$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lhc$a$1;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lhu;->a(Z)V

    .line 353
    iget-object v0, p0, Lhc$a$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lhc$a$1;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 355
    iget-object v1, p0, Lhc$a$1;->c:Lhc$a;

    iget-object v1, v1, Lhc$a;->b:Lhc;

    invoke-static {v1, v0}, Lhc;->b(Lhc;Ljava/lang/Object;)V

    .line 356
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
