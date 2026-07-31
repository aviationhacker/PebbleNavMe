.class public final Lcom/google/common/base/Functions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Functions$g;,
        Lcom/google/common/base/Functions$a;,
        Lcom/google/common/base/Functions$f;,
        Lcom/google/common/base/Functions$c;,
        Lcom/google/common/base/Functions$b;,
        Lcom/google/common/base/Functions$d;,
        Lcom/google/common/base/Functions$e;,
        Lcom/google/common/base/Functions$h;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<TB;TC;>;",
            "Lcom/google/common/base/Function",
            "<TA;+TB;>;)",
            "Lcom/google/common/base/Function",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lcom/google/common/base/Functions$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Functions$c;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static constant(Ljava/lang/Object;)Lcom/google/common/base/Function;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Object;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lcom/google/common/base/Functions$a;

    invoke-direct {v0, p0}, Lcom/google/common/base/Functions$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Lcom/google/common/base/Function",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/base/Functions$d;

    invoke-direct {v0, p0}, Lcom/google/common/base/Functions$d;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;TV;)",
            "Lcom/google/common/base/Function",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/google/common/base/Functions$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Functions$b;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forPredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<TT;>;)",
            "Lcom/google/common/base/Function",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/google/common/base/Functions$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Functions$f;-><init>(Lcom/google/common/base/Predicate;Lcom/google/common/base/Functions$1;)V

    return-object v0
.end method

.method public static forSupplier(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Function;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lcom/google/common/base/Functions$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Functions$g;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Functions$1;)V

    return-object v0
.end method

.method public static identity()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/google/common/base/Functions$e;->a:Lcom/google/common/base/Functions$e;

    return-object v0
.end method

.method public static toStringFunction()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/google/common/base/Functions$h;->a:Lcom/google/common/base/Functions$h;

    return-object v0
.end method
