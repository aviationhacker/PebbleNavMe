.class final Ljj$ac;
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
    name = "ac"
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

.field g:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field h:Ljj$l;
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
    .line 1618
    invoke-direct {p0, p1, p2, p3, p4}, Ljj$z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILjj$l;)V

    .line 1623
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljj$ac;->d:J

    .line 1636
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$ac;->e:Ljj$l;

    .line 1649
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$ac;->f:Ljj$l;

    .line 1664
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$ac;->g:Ljj$l;

    .line 1677
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$ac;->h:Ljj$l;

    .line 1619
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 1632
    iput-wide p1, p0, Ljj$ac;->d:J

    .line 1633
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
    .line 1645
    iput-object p1, p0, Ljj$ac;->e:Ljj$l;

    .line 1646
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
    .line 1658
    iput-object p1, p0, Ljj$ac;->f:Ljj$l;

    .line 1659
    return-void
.end method

.method public c(Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1673
    iput-object p1, p0, Ljj$ac;->g:Ljj$l;

    .line 1674
    return-void
.end method

.method public d(Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1686
    iput-object p1, p0, Ljj$ac;->h:Ljj$l;

    .line 1687
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1627
    iget-wide v0, p0, Ljj$ac;->d:J

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
    .line 1640
    iget-object v0, p0, Ljj$ac;->e:Ljj$l;

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
    .line 1653
    iget-object v0, p0, Ljj$ac;->f:Ljj$l;

    return-object v0
.end method

.method public h()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1668
    iget-object v0, p0, Ljj$ac;->g:Ljj$l;

    return-object v0
.end method

.method public i()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1681
    iget-object v0, p0, Ljj$ac;->h:Ljj$l;

    return-object v0
.end method
