.class final Ljj$u;
.super Ljj$r;
.source "SourceFile"

# interfaces
.implements Ljj$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
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
        "Ljj$r",
        "<TK;TV;>;",
        "Ljj$l",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile e:J

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

.field i:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjj$l;)V
    .locals 2
    .param p3    # Ljj$l;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1103
    invoke-direct {p0, p1, p2, p3}, Ljj$r;-><init>(Ljava/lang/Object;ILjj$l;)V

    .line 1108
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljj$u;->e:J

    .line 1121
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$u;->f:Ljj$l;

    .line 1134
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$u;->g:Ljj$l;

    .line 1149
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$u;->h:Ljj$l;

    .line 1162
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$u;->i:Ljj$l;

    .line 1104
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 1117
    iput-wide p1, p0, Ljj$u;->e:J

    .line 1118
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
    .line 1130
    iput-object p1, p0, Ljj$u;->f:Ljj$l;

    .line 1131
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
    .line 1143
    iput-object p1, p0, Ljj$u;->g:Ljj$l;

    .line 1144
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
    .line 1158
    iput-object p1, p0, Ljj$u;->h:Ljj$l;

    .line 1159
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
    .line 1171
    iput-object p1, p0, Ljj$u;->i:Ljj$l;

    .line 1172
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 1112
    iget-wide v0, p0, Ljj$u;->e:J

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
    .line 1125
    iget-object v0, p0, Ljj$u;->f:Ljj$l;

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
    .line 1138
    iget-object v0, p0, Ljj$u;->g:Ljj$l;

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
    .line 1153
    iget-object v0, p0, Ljj$u;->h:Ljj$l;

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
    .line 1166
    iget-object v0, p0, Ljj$u;->i:Ljj$l;

    return-object v0
.end method
