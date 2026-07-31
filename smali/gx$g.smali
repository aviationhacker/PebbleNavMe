.class abstract Lgx$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:Lgx$q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$q",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lgx$p",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lgx$ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx",
            "<TK;TV;>.ak;"
        }
    .end annotation
.end field

.field h:Lgx$ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx",
            "<TK;TV;>.ak;"
        }
    .end annotation
.end field

.field final synthetic i:Lgx;


# direct methods
.method constructor <init>(Lgx;)V
    .locals 1

    .prologue
    .line 4273
    iput-object p1, p0, Lgx$g;->i:Lgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4274
    iget-object v0, p1, Lgx;->d:[Lgx$q;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgx$g;->b:I

    .line 4275
    const/4 v0, -0x1

    iput v0, p0, Lgx$g;->c:I

    .line 4276
    invoke-virtual {p0}, Lgx$g;->b()V

    .line 4277
    return-void
.end method


# virtual methods
.method a(Lgx$p;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 4339
    :try_start_0
    iget-object v0, p0, Lgx$g;->i:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 4340
    invoke-interface {p1}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v2

    .line 4341
    iget-object v3, p0, Lgx$g;->i:Lgx;

    invoke-virtual {v3, p1, v0, v1}, Lgx;->a(Lgx$p;J)Ljava/lang/Object;

    move-result-object v0

    .line 4342
    if-eqz v0, :cond_0

    .line 4343
    new-instance v1, Lgx$ak;

    iget-object v3, p0, Lgx$g;->i:Lgx;

    invoke-direct {v1, v3, v2, v0}, Lgx$ak;-><init>(Lgx;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lgx$g;->g:Lgx$ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4344
    const/4 v0, 0x1

    .line 4350
    iget-object v1, p0, Lgx$g;->d:Lgx$q;

    invoke-virtual {v1}, Lgx$q;->l()V

    :goto_0
    return v0

    .line 4347
    :cond_0
    const/4 v0, 0x0

    .line 4350
    iget-object v1, p0, Lgx$g;->d:Lgx$q;

    invoke-virtual {v1}, Lgx$q;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgx$g;->d:Lgx$q;

    invoke-virtual {v1}, Lgx$q;->l()V

    throw v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 4283
    const/4 v0, 0x0

    iput-object v0, p0, Lgx$g;->g:Lgx$ak;

    .line 4285
    invoke-virtual {p0}, Lgx$g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4303
    :cond_0
    :goto_0
    return-void

    .line 4289
    :cond_1
    invoke-virtual {p0}, Lgx$g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4293
    :cond_2
    iget v0, p0, Lgx$g;->b:I

    if-ltz v0, :cond_0

    .line 4294
    iget-object v0, p0, Lgx$g;->i:Lgx;

    iget-object v0, v0, Lgx;->d:[Lgx$q;

    iget v1, p0, Lgx$g;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lgx$g;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lgx$g;->d:Lgx$q;

    .line 4295
    iget-object v0, p0, Lgx$g;->d:Lgx$q;

    iget v0, v0, Lgx$q;->b:I

    if-eqz v0, :cond_2

    .line 4296
    iget-object v0, p0, Lgx$g;->d:Lgx$q;

    iget-object v0, v0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lgx$g;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4297
    iget-object v0, p0, Lgx$g;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgx$g;->c:I

    .line 4298
    invoke-virtual {p0}, Lgx$g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 4309
    iget-object v0, p0, Lgx$g;->f:Lgx$p;

    if-eqz v0, :cond_1

    .line 4310
    iget-object v0, p0, Lgx$g;->f:Lgx$p;

    invoke-interface {v0}, Lgx$p;->b()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$g;->f:Lgx$p;

    :goto_0
    iget-object v0, p0, Lgx$g;->f:Lgx$p;

    if-eqz v0, :cond_1

    .line 4311
    iget-object v0, p0, Lgx$g;->f:Lgx$p;

    invoke-virtual {p0, v0}, Lgx$g;->a(Lgx$p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4312
    const/4 v0, 0x1

    .line 4316
    :goto_1
    return v0

    .line 4310
    :cond_0
    iget-object v0, p0, Lgx$g;->f:Lgx$p;

    invoke-interface {v0}, Lgx$p;->b()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$g;->f:Lgx$p;

    goto :goto_0

    .line 4316
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method d()Z
    .locals 3

    .prologue
    .line 4323
    :cond_0
    iget v0, p0, Lgx$g;->c:I

    if-ltz v0, :cond_2

    .line 4324
    iget-object v0, p0, Lgx$g;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lgx$g;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lgx$g;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    iput-object v0, p0, Lgx$g;->f:Lgx$p;

    if-eqz v0, :cond_0

    .line 4325
    iget-object v0, p0, Lgx$g;->f:Lgx$p;

    invoke-virtual {p0, v0}, Lgx$g;->a(Lgx$p;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgx$g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4326
    :cond_1
    const/4 v0, 0x1

    .line 4330
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Lgx$ak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx",
            "<TK;TV;>.ak;"
        }
    .end annotation

    .prologue
    .line 4360
    iget-object v0, p0, Lgx$g;->g:Lgx$ak;

    if-nez v0, :cond_0

    .line 4361
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 4363
    :cond_0
    iget-object v0, p0, Lgx$g;->g:Lgx$ak;

    iput-object v0, p0, Lgx$g;->h:Lgx$ak;

    .line 4364
    invoke-virtual {p0}, Lgx$g;->b()V

    .line 4365
    iget-object v0, p0, Lgx$g;->h:Lgx$ak;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 4356
    iget-object v0, p0, Lgx$g;->g:Lgx$ak;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 4370
    iget-object v0, p0, Lgx$g;->h:Lgx$ak;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4371
    iget-object v0, p0, Lgx$g;->i:Lgx;

    iget-object v1, p0, Lgx$g;->h:Lgx$ak;

    invoke-virtual {v1}, Lgx$ak;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgx;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4372
    const/4 v0, 0x0

    iput-object v0, p0, Lgx$g;->h:Lgx$ak;

    .line 4373
    return-void

    .line 4370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
