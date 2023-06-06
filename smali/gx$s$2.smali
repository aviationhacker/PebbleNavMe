.class final enum Lgx$s$2;
.super Lgx$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgx$s;-><init>(Ljava/lang/String;ILgx$1;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {}, Lcom/google/common/base/Equivalence;->identity()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method a(Lgx$q;Lgx$p;Ljava/lang/Object;I)Lgx$z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgx$q",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;TV;I)",
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 401
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    new-instance v0, Lgx$r;

    iget-object v1, p1, Lgx$q;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lgx$r;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgx$ag;

    iget-object v1, p1, Lgx$q;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2, p4}, Lgx$ag;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;I)V

    goto :goto_0
.end method
