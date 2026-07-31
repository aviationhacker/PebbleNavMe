.class final enum Ljj$c$3;
.super Ljj$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljj$c;-><init>(Ljava/lang/String;ILjj$1;)V

    return-void
.end method


# virtual methods
.method a(Ljj$n;Ljava/lang/Object;ILjj$l;)Ljj$l;
    .locals 1
    .param p4    # Ljj$l;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$n",
            "<TK;TV;>;TK;I",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljj$s;

    invoke-direct {v0, p2, p3, p4}, Ljj$s;-><init>(Ljava/lang/Object;ILjj$l;)V

    return-object v0
.end method

.method a(Ljj$n;Ljj$l;Ljj$l;)Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$n",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-super {p0, p1, p2, p3}, Ljj$c;->a(Ljj$n;Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 387
    invoke-virtual {p0, p2, v0}, Ljj$c$3;->b(Ljj$l;Ljj$l;)V

    .line 388
    return-object v0
.end method
