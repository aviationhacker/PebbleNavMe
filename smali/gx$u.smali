.class final Lgx$u;
.super Lgx$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "u"
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
.method constructor <init>(Ljava/lang/Object;ILgx$p;)V
    .locals 4
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
    const-wide v2, 0x7fffffffffffffffL

    .line 1203
    invoke-direct {p0, p1, p2, p3}, Lgx$v;-><init>(Ljava/lang/Object;ILgx$p;)V

    .line 1208
    iput-wide v2, p0, Lgx$u;->a:J

    .line 1221
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$u;->b:Lgx$p;

    .line 1234
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$u;->c:Lgx$p;

    .line 1248
    iput-wide v2, p0, Lgx$u;->d:J

    .line 1261
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$u;->e:Lgx$p;

    .line 1274
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    iput-object v0, p0, Lgx$u;->f:Lgx$p;

    .line 1204
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 1217
    iput-wide p1, p0, Lgx$u;->a:J

    .line 1218
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
    .line 1230
    iput-object p1, p0, Lgx$u;->b:Lgx$p;

    .line 1231
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 1257
    iput-wide p1, p0, Lgx$u;->d:J

    .line 1258
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
    .line 1243
    iput-object p1, p0, Lgx$u;->c:Lgx$p;

    .line 1244
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
    .line 1270
    iput-object p1, p0, Lgx$u;->e:Lgx$p;

    .line 1271
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
    .line 1283
    iput-object p1, p0, Lgx$u;->f:Lgx$p;

    .line 1284
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1212
    iget-wide v0, p0, Lgx$u;->a:J

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
    .line 1225
    iget-object v0, p0, Lgx$u;->b:Lgx$p;

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
    .line 1238
    iget-object v0, p0, Lgx$u;->c:Lgx$p;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 1252
    iget-wide v0, p0, Lgx$u;->d:J

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
    .line 1265
    iget-object v0, p0, Lgx$u;->e:Lgx$p;

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
    .line 1278
    iget-object v0, p0, Lgx$u;->f:Lgx$p;

    return-object v0
.end method
