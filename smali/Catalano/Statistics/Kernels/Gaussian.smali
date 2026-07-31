.class public LCatalano/Statistics/Kernels/Gaussian;
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
    .locals 2

    .prologue
    .line 48
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1}, LCatalano/Statistics/Kernels/Gaussian;-><init>(D)V

    .line 49
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Gaussian;->setGamma(D)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 24
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Gaussian;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 68
    if-ne p1, p2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 76
    :goto_0
    return-wide v0

    .line 70
    :cond_0
    const-wide/16 v2, 0x0

    .line 71
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 72
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 73
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_1
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Gaussian;->a:D

    neg-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getGamma()D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Gaussian;->a:D

    return-wide v0
.end method

.method public setGamma(D)V
    .locals 3

    .prologue
    .line 41
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p1, v0

    iput-wide v0, p0, LCatalano/Statistics/Kernels/Gaussian;->a:D

    .line 42
    return-void
.end method
