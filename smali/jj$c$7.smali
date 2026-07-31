.class final enum Ljj$c$7;
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
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljj$c;-><init>(Ljava/lang/String;ILjj$1;)V

    return-void
.end method


# virtual methods
.method a(Ljj$n;Ljava/lang/Object;ILjj$l;)Ljj$l;
    .locals 2
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
    .line 434
    new-instance v0, Ljj$aa;

    iget-object v1, p1, Ljj$n;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Ljj$aa;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILjj$l;)V

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
    .line 440
    invoke-super {p0, p1, p2, p3}, Ljj$c;->a(Ljj$n;Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 441
    invoke-virtual {p0, p2, v0}, Ljj$c$7;->b(Ljj$l;Ljj$l;)V

    .line 442
    return-object v0
.end method
