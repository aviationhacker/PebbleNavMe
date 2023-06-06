.class public final Lcom/google/common/collect/Range;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Range$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Lcom/google/common/collect/Range",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Range;",
            "Lic;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Range;",
            "Lic;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field public final b:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<TC;>;"
        }
    .end annotation
.end field

.field public final c:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/google/common/collect/Range$1;

    invoke-direct {v0}, Lcom/google/common/collect/Range$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range;->d:Lcom/google/common/base/Function;

    .line 130
    new-instance v0, Lcom/google/common/collect/Range$2;

    invoke-direct {v0}, Lcom/google/common/collect/Range$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range;->e:Lcom/google/common/base/Function;

    .line 143
    new-instance v0, Lcom/google/common/collect/Range$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/Range$a;-><init>(Lcom/google/common/collect/Range$1;)V

    sput-object v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/Ordering;

    .line 292
    new-instance v0, Lcom/google/common/collect/Range;

    .line 293
    invoke-static {}, Lic;->d()Lic;

    move-result-object v1

    invoke-static {}, Lic;->e()Lic;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lic;Lic;)V

    sput-object v0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Range;

    .line 292
    return-void
.end method

.method private constructor <init>(Lic;Lic;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<TC;>;",
            "Lic",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    iput-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    .line 348
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    iput-object v0, p0, Lcom/google/common/collect/Range;->c:Lic;

    .line 349
    invoke-virtual {p1, p2}, Lic;->a(Lic;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 350
    invoke-static {}, Lic;->e()Lic;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 351
    invoke-static {}, Lic;->d()Lic;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 352
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid range: "

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->b(Lic;Lic;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1

    .prologue
    .line 672
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static a()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;",
            "Lic",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/google/common/collect/Range;->d:Lcom/google/common/base/Function;

    return-object v0
.end method

.method public static a(Lic;Lic;)Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Lic",
            "<TC;>;",
            "Lic",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/common/collect/Range;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Range;-><init>(Lic;Lic;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 659
    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public static all()Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public static atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {p0}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    invoke-static {}, Lic;->e()Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lic;->d()Lic;

    move-result-object v0

    invoke-static {p0}, Lic;->c(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method static b()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;",
            "Lic",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/google/common/collect/Range;->e:Lcom/google/common/base/Function;

    return-object v0
.end method

.method private static b(Lic;Lic;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<*>;",
            "Lic",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 649
    invoke-virtual {p0, v0}, Lic;->a(Ljava/lang/StringBuilder;)V

    .line 650
    const/16 v1, 0x2025

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p1, v0}, Lic;->b(Ljava/lang/StringBuilder;)V

    .line 652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p0}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    invoke-static {p1}, Lic;->c(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p0}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    invoke-static {p1}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lcom/google/common/collect/Range$3;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 284
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/collect/Range;->greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/common/collect/Range;->atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encloseAll(Ljava/lang/Iterable;)Lcom/google/common/collect/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Ljava/lang/Iterable",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    instance-of v0, p0, Lcom/google/common/collect/ContiguousSet;

    if-eqz v0, :cond_0

    .line 330
    check-cast p0, Lcom/google/common/collect/ContiguousSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ContiguousSet;->range()Lcom/google/common/collect/Range;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 332
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 333
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    move-object v1, v0

    .line 335
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 337
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 338
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    .line 339
    goto :goto_1

    .line 340
    :cond_1
    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0
.end method

.method public static greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p0}, Lic;->c(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    invoke-static {}, Lic;->e()Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lic;->d()Lic;

    move-result-object v0

    invoke-static {p0}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p0}, Lic;->c(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    invoke-static {p1}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static openClosed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p0}, Lic;->c(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    invoke-static {p1}, Lic;->c(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            "TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne p1, v0, :cond_0

    .line 212
    invoke-static {p0}, Lic;->c(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    .line 213
    :goto_0
    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne p3, v1, :cond_1

    .line 214
    invoke-static {p2}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    .line 215
    :goto_1
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    invoke-static {p0}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {p2}, Lic;->c(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    goto :goto_1
.end method

.method public static singleton(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p0, p0}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 245
    sget-object v0, Lcom/google/common/collect/Range$3;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 247
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/collect/Range;->lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/common/collect/Range;->atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->apply(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 610
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0, p1}, Lic;->c(Lcom/google/common/collect/DiscreteDomain;)Lic;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v1, p1}, Lic;->c(Lcom/google/common/collect/DiscreteDomain;)Lic;

    move-result-object v1

    .line 613
    iget-object v2, p0, Lcom/google/common/collect/Range;->b:Lic;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Range;->c:Lic;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object p0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 431
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0, p1}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v0, p1}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TC;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 451
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_4

    .line 457
    invoke-static {p1}, Lcom/google/common/collect/Range;->a(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v3

    .line 458
    invoke-interface {v3}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 459
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_4

    .line 460
    :cond_2
    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 464
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 465
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    .line 466
    goto :goto_0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0, v1}, Lic;->a(Lic;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lic;

    .line 498
    invoke-virtual {v0, v1}, Lic;->a(Lic;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 625
    instance-of v1, p1, Lcom/google/common/collect/Range;

    if-eqz v1, :cond_0

    .line 626
    check-cast p1, Lcom/google/common/collect/Range;

    .line 627
    iget-object v1, p0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v1, v2}, Lic;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v1, v2}, Lic;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 629
    :cond_0
    return v0
.end method

.method public hasLowerBound()Z
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-static {}, Lic;->d()Lic;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpperBound()Z
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-static {}, Lic;->e()Lic;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0, v1}, Lic;->a(Lic;)I

    move-result v0

    .line 548
    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Lic;)I

    move-result v2

    .line 549
    if-ltz v0, :cond_0

    if-gtz v2, :cond_0

    .line 556
    :goto_0
    return-object p0

    .line 551
    :cond_0
    if-gtz v0, :cond_1

    if-ltz v2, :cond_1

    move-object p0, p1

    .line 552
    goto :goto_0

    .line 554
    :cond_1
    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    move-object v1, v0

    .line 555
    :goto_1
    if-gtz v2, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lic;

    .line 556
    :goto_2
    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object p0

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/Range;->b:Lic;

    move-object v1, v0

    goto :goto_1

    .line 555
    :cond_3
    iget-object v0, p1, Lcom/google/common/collect/Range;->c:Lic;

    goto :goto_2
.end method

.method public isConnected(Lcom/google/common/collect/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v0, v1}, Lic;->a(Lic;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p1, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lic;

    .line 527
    invoke-virtual {v0, v1}, Lic;->a(Lic;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v0, v1}, Lic;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lowerBoundType()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0}, Lic;->a()Lcom/google/common/collect/BoundType;

    move-result-object v0

    return-object v0
.end method

.method public lowerEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0}, Lic;->c()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 663
    sget-object v0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Range;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object p0

    .line 666
    :cond_0
    return-object p0
.end method

.method public span(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0, v1}, Lic;->a(Lic;)I

    move-result v0

    .line 573
    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Lic;)I

    move-result v2

    .line 574
    if-gtz v0, :cond_0

    if-ltz v2, :cond_0

    .line 581
    :goto_0
    return-object p0

    .line 576
    :cond_0
    if-ltz v0, :cond_1

    if-gtz v2, :cond_1

    move-object p0, p1

    .line 577
    goto :goto_0

    .line 579
    :cond_1
    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    move-object v1, v0

    .line 580
    :goto_1
    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lic;

    .line 581
    :goto_2
    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object p0

    goto :goto_0

    .line 579
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/Range;->b:Lic;

    move-object v1, v0

    goto :goto_1

    .line 580
    :cond_3
    iget-object v0, p1, Lcom/google/common/collect/Range;->c:Lic;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->b(Lic;Lic;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperBoundType()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v0}, Lic;->b()Lcom/google/common/collect/BoundType;

    move-result-object v0

    return-object v0
.end method

.method public upperEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v0}, Lic;->c()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
