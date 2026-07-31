.class final Lgx$x;
.super Lgx$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgx$v",
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
.method constructor <init>(Ljava/lang/Object;ILgx$p;)V
    .locals 2
    .param p3    # Lgx$p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1157
    invoke-direct {p0, p1, p2, p3}, Lgx$v;-><init>(Ljava/lang/Object;ILgx$p;)V

    .line 1162
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lgx$x;->a:J

    .line 1175
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$x;->b:Lgx$p;

    .line 1188
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$x;->c:Lgx$p;

    .line 1158
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 1

    .prologue
    .line 1171
    iput-wide p1, p0, Lgx$x;->a:J

    .line 1172
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
    .line 1184
    iput-object p1, p0, Lgx$x;->b:Lgx$p;

    .line 1185
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
    .line 1197
    iput-object p1, p0, Lgx$x;->c:Lgx$p;

    .line 1198
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 1166
    iget-wide v0, p0, Lgx$x;->a:J

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
    .line 1179
    iget-object v0, p0, Lgx$x;->b:Lgx$p;

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
    .line 1192
    iget-object v0, p0, Lgx$x;->c:Lgx$p;

    return-object v0
.end method
