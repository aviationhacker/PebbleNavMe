.class final Ljj$ad;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Ljj$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
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
    .line 1698
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1699
    iput-object p3, p0, Ljj$ad;->a:Ljj$l;

    .line 1700
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
    .line 1704
    iget-object v0, p0, Ljj$ad;->a:Ljj$l;

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
    .line 1715
    new-instance v0, Ljj$ad;

    invoke-direct {v0, p1, p2, p3}, Ljj$ad;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljj$l;)V

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
    .line 1709
    invoke-virtual {p0}, Ljj$ad;->clear()V

    .line 1710
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1720
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
    .line 1725
    invoke-virtual {p0}, Ljj$ad;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
