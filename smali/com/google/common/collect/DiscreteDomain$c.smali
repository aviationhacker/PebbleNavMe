.class final Lcom/google/common/collect/DiscreteDomain$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/DiscreteDomain$c;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$c;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$c;->a:Lcom/google/common/collect/DiscreteDomain$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method static synthetic c()Lcom/google/common/collect/DiscreteDomain$c;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$c;->a:Lcom/google/common/collect/DiscreteDomain$c;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$c;->a:Lcom/google/common/collect/DiscreteDomain$c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 125
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 126
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 127
    const-wide v0, 0x7fffffffffffffffL

    .line 132
    :cond_0
    :goto_0
    return-wide v0

    .line 129
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 130
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public a()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 137
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 114
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 142
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 120
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 2

    .prologue
    .line 108
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$c;->a(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic maxValue()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$c;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic minValue()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$c;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 108
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$c;->a(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 108
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$c;->b(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "DiscreteDomain.longs()"

    return-object v0
.end method
