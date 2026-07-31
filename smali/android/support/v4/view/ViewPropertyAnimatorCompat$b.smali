.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$b;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;
    }
.end annotation


# instance fields
.field b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$a;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b;->b:Ljava/util/WeakHashMap;

    .line 524
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .locals 2

    .prologue
    .line 387
    invoke-static {p2}, Lds;->a(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 372
    invoke-static {p2, p3}, Lds;->a(Landroid/view/View;F)V

    .line 373
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 367
    invoke-static {p2, p3, p4}, Lds;->a(Landroid/view/View;J)V

    .line 368
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .locals 1

    .prologue
    .line 502
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 503
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Lds;->a(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 504
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 392
    invoke-static {p2, p3}, Lds;->a(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 393
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 508
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Lds;->a(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 509
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 510
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 377
    invoke-static {p2, p3}, Lds;->b(Landroid/view/View;F)V

    .line 378
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 397
    invoke-static {p2, p3, p4}, Lds;->b(Landroid/view/View;J)V

    .line 398
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 514
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Lds;->a(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 515
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 516
    return-void
.end method

.method public c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .locals 2

    .prologue
    .line 402
    invoke-static {p2}, Lds;->b(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 382
    invoke-static {p2, p3}, Lds;->c(Landroid/view/View;F)V

    .line 383
    return-void
.end method

.method public d(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 462
    invoke-static {p2}, Lds;->c(Landroid/view/View;)V

    .line 463
    return-void
.end method

.method public d(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 407
    invoke-static {p2, p3}, Lds;->d(Landroid/view/View;F)V

    .line 408
    return-void
.end method

.method public e(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 497
    invoke-static {p2}, Lds;->d(Landroid/view/View;)V

    .line 498
    return-void
.end method

.method public e(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 412
    invoke-static {p2, p3}, Lds;->e(Landroid/view/View;F)V

    .line 413
    return-void
.end method

.method public f(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 520
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I

    .line 521
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$b$a;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Lds;->a(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 522
    return-void
.end method

.method public f(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 417
    invoke-static {p2, p3}, Lds;->f(Landroid/view/View;F)V

    .line 418
    return-void
.end method

.method public g(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 422
    invoke-static {p2, p3}, Lds;->g(Landroid/view/View;F)V

    .line 423
    return-void
.end method

.method public h(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 427
    invoke-static {p2, p3}, Lds;->h(Landroid/view/View;F)V

    .line 428
    return-void
.end method

.method public i(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 432
    invoke-static {p2, p3}, Lds;->i(Landroid/view/View;F)V

    .line 433
    return-void
.end method

.method public j(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 437
    invoke-static {p2, p3}, Lds;->j(Landroid/view/View;F)V

    .line 438
    return-void
.end method

.method public k(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 442
    invoke-static {p2, p3}, Lds;->k(Landroid/view/View;F)V

    .line 443
    return-void
.end method

.method public l(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 447
    invoke-static {p2, p3}, Lds;->l(Landroid/view/View;F)V

    .line 448
    return-void
.end method

.method public m(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 452
    invoke-static {p2, p3}, Lds;->m(Landroid/view/View;F)V

    .line 453
    return-void
.end method

.method public n(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 457
    invoke-static {p2, p3}, Lds;->n(Landroid/view/View;F)V

    .line 458
    return-void
.end method

.method public o(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 467
    invoke-static {p2, p3}, Lds;->o(Landroid/view/View;F)V

    .line 468
    return-void
.end method

.method public p(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 472
    invoke-static {p2, p3}, Lds;->p(Landroid/view/View;F)V

    .line 473
    return-void
.end method

.method public q(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 477
    invoke-static {p2, p3}, Lds;->q(Landroid/view/View;F)V

    .line 478
    return-void
.end method

.method public r(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 482
    invoke-static {p2, p3}, Lds;->r(Landroid/view/View;F)V

    .line 483
    return-void
.end method

.method public u(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 487
    invoke-static {p2, p3}, Lds;->s(Landroid/view/View;F)V

    .line 488
    return-void
.end method

.method public v(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 492
    invoke-static {p2, p3}, Lds;->t(Landroid/view/View;F)V

    .line 493
    return-void
.end method
