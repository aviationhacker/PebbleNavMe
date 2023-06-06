.class Lgx$ae;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lgx$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ae"
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
        "Lgx$z",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1587
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1588
    iput-object p3, p0, Lgx$ae;->a:Lgx$p;

    .line 1589
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1593
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)Lgx$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1607
    new-instance v0, Lgx$ae;

    invoke-direct {v0, p1, p2, p3}, Lgx$ae;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1602
    return-void
.end method

.method public b()Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1598
    iget-object v0, p0, Lgx$ae;->a:Lgx$p;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1617
    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1622
    invoke-virtual {p0}, Lgx$ae;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
