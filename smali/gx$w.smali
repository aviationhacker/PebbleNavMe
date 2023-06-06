.class Lgx$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgx$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgx$z",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1680
    iput-object p1, p0, Lgx$w;->a:Ljava/lang/Object;

    .line 1681
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1690
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)Lgx$z;
    .locals 0
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
    .line 1701
    return-object p0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1720
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
    .line 1695
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1706
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1711
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
    .line 1716
    invoke-virtual {p0}, Lgx$w;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1685
    iget-object v0, p0, Lgx$w;->a:Ljava/lang/Object;

    return-object v0
.end method
