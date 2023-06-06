.class Ljj$z;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Ljj$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;",
        "Ljj$l",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile c:Ljj$x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILjj$l;)V
    .locals 1
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
    .line 1437
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1505
    invoke-static {}, Ljj;->g()Ljj$x;

    move-result-object v0

    iput-object v0, p0, Ljj$z;->c:Ljj$x;

    .line 1438
    iput p3, p0, Ljj$z;->a:I

    .line 1439
    iput-object p4, p0, Ljj$z;->b:Ljj$l;

    .line 1440
    return-void
.end method


# virtual methods
.method public a()Ljj$x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1509
    iget-object v0, p0, Ljj$z;->c:Ljj$x;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 1456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljj$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1466
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljj$x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$x",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1514
    iget-object v0, p0, Ljj$z;->c:Ljj$x;

    .line 1515
    iput-object p1, p0, Ljj$z;->c:Ljj$x;

    .line 1516
    invoke-interface {v0, p1}, Ljj$x;->a(Ljj$x;)V

    .line 1517
    return-void
.end method

.method public b()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1526
    iget-object v0, p0, Ljj$z;->b:Ljj$l;

    return-object v0
.end method

.method public b(Ljj$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1521
    iget v0, p0, Ljj$z;->a:I

    return v0
.end method

.method public c(Ljj$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1488
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1444
    invoke-virtual {p0}, Ljj$z;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljj$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()J
    .locals 1

    .prologue
    .line 1451
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1461
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1483
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1493
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
