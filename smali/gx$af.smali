.class final Lgx$af;
.super Lgx$ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "af"
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


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILgx$p;)V
    .locals 2
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
    .line 1448
    invoke-direct {p0, p1, p2, p3, p4}, Lgx$ad;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILgx$p;)V

    .line 1453
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lgx$af;->a:J

    .line 1466
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$af;->b:Lgx$p;

    .line 1479
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$af;->c:Lgx$p;

    .line 1449
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 1

    .prologue
    .line 1462
    iput-wide p1, p0, Lgx$af;->a:J

    .line 1463
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
    .line 1475
    iput-object p1, p0, Lgx$af;->b:Lgx$p;

    .line 1476
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
    .line 1488
    iput-object p1, p0, Lgx$af;->c:Lgx$p;

    .line 1489
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 1457
    iget-wide v0, p0, Lgx$af;->a:J

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
    .line 1470
    iget-object v0, p0, Lgx$af;->b:Lgx$p;

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
    .line 1483
    iget-object v0, p0, Lgx$af;->c:Lgx$p;

    return-object v0
.end method
