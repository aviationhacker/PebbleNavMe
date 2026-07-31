.class final Lic$c;
.super Lic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lic",
        "<",
        "Ljava/lang/Comparable",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final b:Lic$c;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lic$c;

    invoke-direct {v0}, Lic$c;-><init>()V

    sput-object v0, Lic$c;->b:Lic$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic;-><init>(Ljava/lang/Comparable;)V

    .line 122
    return-void
.end method

.method static synthetic f()Lic$c;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lic$c;->b:Lic$c;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lic$c;->b:Lic$c;

    return-object v0
.end method


# virtual methods
.method public a(Lic;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 187
    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method a()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method a(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lic",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method a(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->minValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 158
    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    return-void
.end method

.method a(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method b()Lcom/google/common/collect/BoundType;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method b(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lic",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method b(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method b(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method c(Lcom/google/common/collect/DiscreteDomain;)Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lic",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->minValue()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Lic;->b(Ljava/lang/Comparable;)Lic;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 181
    :goto_0
    return-object p0

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method c()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 117
    check-cast p1, Lic;

    invoke-virtual {p0, p1}, Lic$c;->a(Lic;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "-\u221e"

    return-object v0
.end method
