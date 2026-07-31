.class final Lgx$ag;
.super Lgx$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgx$r",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lgx$p",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 1755
    invoke-direct {p0, p1, p2, p3}, Lgx$r;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)V

    .line 1756
    iput p4, p0, Lgx$ag;->b:I

    .line 1757
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1761
    iget v0, p0, Lgx$ag;->b:I

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)Lgx$z;
    .locals 2
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
    .line 1766
    new-instance v0, Lgx$ag;

    iget v1, p0, Lgx$ag;->b:I

    invoke-direct {v0, p1, p2, p3, v1}, Lgx$ag;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;I)V

    return-object v0
.end method
