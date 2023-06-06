.class final Lcom/google/common/collect/DiscreteDomain$b;
.super Lcom/google/common/collect/DiscreteDomain;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/DiscreteDomain$b;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$b;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$b;->a:Lcom/google/common/collect/DiscreteDomain$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method static synthetic c()Lcom/google/common/collect/DiscreteDomain$b;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$b;->a:Lcom/google/common/collect/DiscreteDomain$b;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$b;->a:Lcom/google/common/collect/DiscreteDomain$b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/Integer;)J
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 79
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 84
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 2

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$b;->a(Ljava/lang/Integer;Ljava/lang/Integer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic maxValue()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$b;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic minValue()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$b;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$b;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$b;->b(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "DiscreteDomain.integers()"

    return-object v0
.end method
