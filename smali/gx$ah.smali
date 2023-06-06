.class final Lgx$ah;
.super Lgx$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ah"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgx$w",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 1778
    invoke-direct {p0, p1}, Lgx$w;-><init>(Ljava/lang/Object;)V

    .line 1779
    iput p2, p0, Lgx$ah;->b:I

    .line 1780
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1784
    iget v0, p0, Lgx$ah;->b:I

    return v0
.end method
