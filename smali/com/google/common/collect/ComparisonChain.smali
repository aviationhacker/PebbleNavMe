.class public abstract Lcom/google/common/collect/ComparisonChain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ComparisonChain$a;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ComparisonChain;

.field private static final b:Lcom/google/common/collect/ComparisonChain;

.field private static final c:Lcom/google/common/collect/ComparisonChain;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/common/collect/ComparisonChain$1;

    invoke-direct {v0}, Lcom/google/common/collect/ComparisonChain$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    .line 131
    new-instance v0, Lcom/google/common/collect/ComparisonChain$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ComparisonChain$a;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/ComparisonChain;->b:Lcom/google/common/collect/ComparisonChain;

    .line 133
    new-instance v0, Lcom/google/common/collect/ComparisonChain$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ComparisonChain$a;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/ComparisonChain;->c:Lcom/google/common/collect/ComparisonChain;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ComparisonChain$1;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/common/collect/ComparisonChain;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/collect/ComparisonChain;->b:Lcom/google/common/collect/ComparisonChain;

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/collect/ComparisonChain;->c:Lcom/google/common/collect/ComparisonChain;

    return-object v0
.end method

.method static synthetic c()Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    return-object v0
.end method

.method public static start()Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    return-object v0
.end method


# virtual methods
.method public abstract compare(DD)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract compare(FF)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract compare(II)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract compare(JJ)Lcom/google/common/collect/ComparisonChain;
.end method

.method public final compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/common/collect/ComparisonChain;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;",
            "Ljava/lang/Comparable",
            "<*>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation
.end method

.method public abstract compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract result()I
.end method
