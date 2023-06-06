.class Lgx$aj$1;
.super Lgx$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx$aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgx$b",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lgx$aj;


# direct methods
.method constructor <init>(Lgx$aj;)V
    .locals 0

    .prologue
    .line 3611
    iput-object p1, p0, Lgx$aj$1;->c:Lgx$aj;

    invoke-direct {p0}, Lgx$b;-><init>()V

    .line 3621
    iput-object p0, p0, Lgx$aj$1;->a:Lgx$p;

    .line 3633
    iput-object p0, p0, Lgx$aj$1;->b:Lgx$p;

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 0

    .prologue
    .line 3619
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
    .line 3630
    iput-object p1, p0, Lgx$aj$1;->a:Lgx$p;

    .line 3631
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
    .line 3642
    iput-object p1, p0, Lgx$aj$1;->b:Lgx$p;

    .line 3643
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 3615
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3625
    iget-object v0, p0, Lgx$aj$1;->a:Lgx$p;

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
    .line 3637
    iget-object v0, p0, Lgx$aj$1;->b:Lgx$p;

    return-object v0
.end method
