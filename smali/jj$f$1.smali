.class Ljj$f$1;
.super Ljj$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj$f;
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

.field final synthetic c:Ljj$f;


# direct methods
.method constructor <init>(Ljj$f;)V
    .locals 0

    .prologue
    .line 3126
    iput-object p1, p0, Ljj$f$1;->c:Ljj$f;

    invoke-direct {p0}, Ljj$a;-><init>()V

    .line 3128
    iput-object p0, p0, Ljj$f$1;->a:Ljj$l;

    .line 3140
    iput-object p0, p0, Ljj$f$1;->b:Ljj$l;

    return-void
.end method


# virtual methods
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
    .line 3137
    iput-object p1, p0, Ljj$f$1;->a:Ljj$l;

    .line 3138
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
    .line 3149
    iput-object p1, p0, Ljj$f$1;->b:Ljj$l;

    .line 3150
    return-void
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
    .line 3132
    iget-object v0, p0, Ljj$f$1;->a:Ljj$l;

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
    .line 3144
    iget-object v0, p0, Ljj$f$1;->b:Ljj$l;

    return-object v0
.end method
