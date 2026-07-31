.class final Lgx$t;
.super Lgx$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "t"
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
    .line 1111
    invoke-direct {p0, p1, p2, p3}, Lgx$v;-><init>(Ljava/lang/Object;ILgx$p;)V

    .line 1116
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lgx$t;->a:J

    .line 1129
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$t;->b:Lgx$p;

    .line 1142
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$t;->c:Lgx$p;

    .line 1112
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 1125
    iput-wide p1, p0, Lgx$t;->a:J

    .line 1126
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
    .line 1138
    iput-object p1, p0, Lgx$t;->b:Lgx$p;

    .line 1139
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
    .line 1151
    iput-object p1, p0, Lgx$t;->c:Lgx$p;

    .line 1152
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1120
    iget-wide v0, p0, Lgx$t;->a:J

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
    .line 1133
    iget-object v0, p0, Lgx$t;->b:Lgx$p;

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
    .line 1146
    iget-object v0, p0, Lgx$t;->c:Lgx$p;

    return-object v0
.end method
