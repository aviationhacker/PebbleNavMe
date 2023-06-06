.class Lgx$r;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lgx$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
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
    .line 1634
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1635
    iput-object p3, p0, Lgx$r;->a:Lgx$p;

    .line 1636
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1640
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
    .line 1654
    new-instance v0, Lgx$r;

    invoke-direct {v0, p1, p2, p3}, Lgx$r;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)V

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
    .line 1649
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
    .line 1645
    iget-object v0, p0, Lgx$r;->a:Lgx$p;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1659
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1664
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
    .line 1669
    invoke-virtual {p0}, Lgx$r;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
