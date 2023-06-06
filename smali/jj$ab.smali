.class final Ljj$ab;
.super Ljj$z;
.source "SourceFile"

# interfaces
.implements Ljj$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljj$z",
        "<TK;TV;>;",
        "Ljj$l",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile d:J

.field e:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILjj$l;)V
    .locals 2
    .param p4    # Ljj$l;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1534
    invoke-direct {p0, p1, p2, p3, p4}, Ljj$z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILjj$l;)V

    .line 1539
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljj$ab;->d:J

    .line 1552
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$ab;->e:Ljj$l;

    .line 1565
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$ab;->f:Ljj$l;

    .line 1535
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 1548
    iput-wide p1, p0, Ljj$ab;->d:J

    .line 1549
    return-void
.end method

.method public a(Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1561
    iput-object p1, p0, Ljj$ab;->e:Ljj$l;

    .line 1562
    return-void
.end method

.method public b(Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1574
    iput-object p1, p0, Ljj$ab;->f:Ljj$l;

    .line 1575
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1543
    iget-wide v0, p0, Ljj$ab;->d:J

    return-wide v0
.end method

.method public f()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1556
    iget-object v0, p0, Ljj$ab;->e:Ljj$l;

    return-object v0
.end method

.method public g()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1569
    iget-object v0, p0, Ljj$ab;->f:Ljj$l;

    return-object v0
.end method
