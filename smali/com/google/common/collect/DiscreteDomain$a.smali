.class final Lcom/google/common/collect/DiscreteDomain$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain",
        "<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/DiscreteDomain$a;

.field private static final b:Ljava/math/BigInteger;

.field private static final c:Ljava/math/BigInteger;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$a;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$a;->a:Lcom/google/common/collect/DiscreteDomain$a;

    .line 170
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$a;->b:Ljava/math/BigInteger;

    .line 171
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$a;->c:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/collect/DiscreteDomain$a;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$a;->a:Lcom/google/common/collect/DiscreteDomain$a;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$a;->a:Lcom/google/common/collect/DiscreteDomain$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;)J
    .locals 2

    .prologue
    .line 185
    .line 186
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/DiscreteDomain$a;->b:Ljava/math/BigInteger;

    .line 187
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/DiscreteDomain$a;->c:Ljava/math/BigInteger;

    .line 188
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 2

    .prologue
    .line 166
    check-cast p1, Ljava/math/BigInteger;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$a;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 166
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$a;->a(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 166
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$a;->b(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "DiscreteDomain.bigIntegers()"

    return-object v0
.end method
