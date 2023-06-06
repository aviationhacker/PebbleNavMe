.class final Ljj$s;
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
    name = "s"
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
.field e:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjj$l;)V
    .locals 1
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
    .line 1068
    invoke-direct {p0, p1, p2, p3}, Ljj$r;-><init>(Ljava/lang/Object;ILjj$l;)V

    .line 1074
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$s;->e:Ljj$l;

    .line 1087
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$s;->f:Ljj$l;

    .line 1069
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
    .line 1083
    iput-object p1, p0, Ljj$s;->e:Ljj$l;

    .line 1084
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
    .line 1096
    iput-object p1, p0, Ljj$s;->f:Ljj$l;

    .line 1097
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
    .line 1078
    iget-object v0, p0, Ljj$s;->e:Ljj$l;

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
    .line 1091
    iget-object v0, p0, Ljj$s;->f:Ljj$l;

    return-object v0
.end method
