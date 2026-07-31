.class final Lgx$ac;
.super Lgx$ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgx$ad",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field b:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile d:J

.field e:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILgx$p;)V
    .locals 4
    .param p4    # Lgx$p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 1495
    invoke-direct {p0, p1, p2, p3, p4}, Lgx$ad;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILgx$p;)V

    .line 1500
    iput-wide v2, p0, Lgx$ac;->a:J

    .line 1513
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$ac;->b:Lgx$p;

    .line 1526
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$ac;->c:Lgx$p;

    .line 1540
    iput-wide v2, p0, Lgx$ac;->d:J

    .line 1553
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$ac;->e:Lgx$p;

    .line 1566
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$ac;->f:Lgx$p;

    .line 1496
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 1509
    iput-wide p1, p0, Lgx$ac;->a:J

    .line 1510
    return-void
.end method

.method public a(Lgx$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1522
    iput-object p1, p0, Lgx$ac;->b:Lgx$p;

    .line 1523
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 1549
    iput-wide p1, p0, Lgx$ac;->d:J

    .line 1550
    return-void
.end method

.method public b(Lgx$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1535
    iput-object p1, p0, Lgx$ac;->c:Lgx$p;

    .line 1536
    return-void
.end method

.method public c(Lgx$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1562
    iput-object p1, p0, Lgx$ac;->e:Lgx$p;

    .line 1563
    return-void
.end method

.method public d(Lgx$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1575
    iput-object p1, p0, Lgx$ac;->f:Lgx$p;

    .line 1576
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1504
    iget-wide v0, p0, Lgx$ac;->a:J

    return-wide v0
.end method

.method public f()Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1517
    iget-object v0, p0, Lgx$ac;->b:Lgx$p;

    return-object v0
.end method

.method public g()Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1530
    iget-object v0, p0, Lgx$ac;->c:Lgx$p;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 1544
    iget-wide v0, p0, Lgx$ac;->d:J

    return-wide v0
.end method

.method public i()Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1557
    iget-object v0, p0, Lgx$ac;->e:Lgx$p;

    return-object v0
.end method

.method public j()Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1570
    iget-object v0, p0, Lgx$ac;->f:Lgx$p;

    return-object v0
.end method
