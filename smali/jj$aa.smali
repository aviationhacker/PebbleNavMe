.class final Ljj$aa;
.super Ljj$z;
.source "SourceFile"

# interfaces
.implements Ljj$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljj$z",
        "<TK;TV;>;",
        "Ljj$l",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field d:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILjj$l;)V
    .locals 1
    .param p4    # Ljj$l;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1582
    invoke-direct {p0, p1, p2, p3, p4}, Ljj$z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILjj$l;)V

    .line 1588
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$aa;->d:Ljj$l;

    .line 1601
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$aa;->e:Ljj$l;

    .line 1583
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
    .line 1597
    iput-object p1, p0, Ljj$aa;->d:Ljj$l;

    .line 1598
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
    .line 1610
    iput-object p1, p0, Ljj$aa;->e:Ljj$l;

    .line 1611
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
    .line 1592
    iget-object v0, p0, Ljj$aa;->d:Ljj$l;

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
    .line 1605
    iget-object v0, p0, Ljj$aa;->e:Ljj$l;

    return-object v0
.end method
