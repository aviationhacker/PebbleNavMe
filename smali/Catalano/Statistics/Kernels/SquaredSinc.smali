.class public LCatalano/Statistics/Kernels/SquaredSinc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Kernels/IMercerKernel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LCatalano/Statistics/Kernels/IMercerKernel",
        "<[D>;"
    }
.end annotation


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, LCatalano/Statistics/Kernels/SquaredSinc;->a:D

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 31
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/SquaredSinc;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 66
    const-wide/16 v2, 0x0

    .line 67
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 70
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-wide v0, p0, LCatalano/Statistics/Kernels/SquaredSinc;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    .line 74
    iget-wide v4, p0, LCatalano/Statistics/Kernels/SquaredSinc;->a:D

    iget-wide v6, p0, LCatalano/Statistics/Kernels/SquaredSinc;->a:D

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getGamma()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, LCatalano/Statistics/Kernels/SquaredSinc;->a:D

    return-wide v0
.end method

.method public setGamma(D)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, LCatalano/Statistics/Kernels/SquaredSinc;->a:D

    .line 49
    return-void
.end method
