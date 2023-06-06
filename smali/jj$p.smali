.class final Ljj$p;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Ljj$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
        "Ljj$x",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1737
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1738
    iput-object p3, p0, Ljj$p;->a:Ljj$l;

    .line 1739
    return-void
.end method


# virtual methods
.method public a()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1743
    iget-object v0, p0, Ljj$p;->a:Ljj$l;

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljj$l;)Ljj$x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1754
    new-instance v0, Ljj$p;

    invoke-direct {v0, p1, p2, p3}, Ljj$p;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljj$l;)V

    return-object v0
.end method

.method public a(Ljj$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$x",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1748
    invoke-virtual {p0}, Ljj$p;->clear()V

    .line 1749
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1759
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1764
    invoke-virtual {p0}, Ljj$p;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
