.class final Lgx$ai;
.super Lgx$ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ai"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgx$ae",
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
    .line 1731
    invoke-direct {p0, p1, p2, p3}, Lgx$ae;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)V

    .line 1732
    iput p4, p0, Lgx$ai;->b:I

    .line 1733
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1737
    iget v0, p0, Lgx$ai;->b:I

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
    .line 1743
    new-instance v0, Lgx$ai;

    iget v1, p0, Lgx$ai;->b:I

    invoke-direct {v0, p1, p2, p3, v1}, Lgx$ai;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;I)V

    return-object v0
.end method
