.class final enum Ljj$q$1;
.super Ljj$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljj$q;-><init>(Ljava/lang/String;ILjj$1;)V

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
    .line 306
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method a(Ljj$n;Ljj$l;Ljava/lang/Object;)Ljj$x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$n",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;TV;)",
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Ljj$v;

    invoke-direct {v0, p3}, Ljj$v;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
