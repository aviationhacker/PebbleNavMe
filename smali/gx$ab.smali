.class final Lgx$ab;
.super Lgx$ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
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
    .line 1401
    invoke-direct {p0, p1, p2, p3, p4}, Lgx$ad;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILgx$p;)V

    .line 1406
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lgx$ab;->a:J

    .line 1419
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$ab;->b:Lgx$p;

    .line 1432
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$ab;->c:Lgx$p;

    .line 1402
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 1415
    iput-wide p1, p0, Lgx$ab;->a:J

    .line 1416
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
    .line 1428
    iput-object p1, p0, Lgx$ab;->b:Lgx$p;

    .line 1429
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
    .line 1441
    iput-object p1, p0, Lgx$ab;->c:Lgx$p;

    .line 1442
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1410
    iget-wide v0, p0, Lgx$ab;->a:J

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
    .line 1423
    iget-object v0, p0, Lgx$ab;->b:Lgx$p;

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
    .line 1436
    iget-object v0, p0, Lgx$ab;->c:Lgx$p;

    return-object v0
.end method
