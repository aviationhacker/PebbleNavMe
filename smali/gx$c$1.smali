.class Lgx$c$1;
.super Lgx$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx$c;
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

.field final synthetic c:Lgx$c;


# direct methods
.method constructor <init>(Lgx$c;)V
    .locals 0

    .prologue
    .line 3748
    iput-object p1, p0, Lgx$c$1;->c:Lgx$c;

    invoke-direct {p0}, Lgx$b;-><init>()V

    .line 3758
    iput-object p0, p0, Lgx$c$1;->a:Lgx$p;

    .line 3770
    iput-object p0, p0, Lgx$c$1;->b:Lgx$p;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .prologue
    .line 3756
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
    .line 3767
    iput-object p1, p0, Lgx$c$1;->a:Lgx$p;

    .line 3768
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
    .line 3779
    iput-object p1, p0, Lgx$c$1;->b:Lgx$p;

    .line 3780
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 3752
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3762
    iget-object v0, p0, Lgx$c$1;->a:Lgx$p;

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
    .line 3774
    iget-object v0, p0, Lgx$c$1;->b:Lgx$p;

    return-object v0
.end method
