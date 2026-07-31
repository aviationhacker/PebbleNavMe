.class Ljj$g$1;
.super Ljj$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljj$a",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Ljj$g;


# direct methods
.method constructor <init>(Ljj$g;)V
    .locals 0

    .prologue
    .line 3255
    iput-object p1, p0, Ljj$g$1;->c:Ljj$g;

    invoke-direct {p0}, Ljj$a;-><init>()V

    .line 3265
    iput-object p0, p0, Ljj$g$1;->a:Ljj$l;

    .line 3277
    iput-object p0, p0, Ljj$g$1;->b:Ljj$l;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .prologue
    .line 3263
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
    .line 3274
    iput-object p1, p0, Ljj$g$1;->a:Ljj$l;

    .line 3275
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
    .line 3286
    iput-object p1, p0, Ljj$g$1;->b:Ljj$l;

    .line 3287
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 3259
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3269
    iget-object v0, p0, Ljj$g$1;->a:Ljj$l;

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
    .line 3281
    iget-object v0, p0, Ljj$g$1;->b:Ljj$l;

    return-object v0
.end method
