.class public LCatalano/Statistics/Kernels/Bessel;
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
.field private a:I

.field private b:D


# direct methods
.method public constructor <init>(ID)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, LCatalano/Statistics/Kernels/Bessel;->a:I

    .line 76
    iput-wide p2, p0, LCatalano/Statistics/Kernels/Bessel;->b:D

    .line 77
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 32
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Bessel;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 81
    const-wide/16 v2, 0x0

    .line 83
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 85
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 86
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 90
    iget v2, p0, LCatalano/Statistics/Kernels/Bessel;->a:I

    iget-wide v4, p0, LCatalano/Statistics/Kernels/Bessel;->b:D

    mul-double/2addr v4, v0

    invoke-static {v2, v4, v5}, LCatalano/Math/Functions/Bessel;->J(ID)D

    move-result-wide v2

    neg-double v4, v0

    iget v6, p0, LCatalano/Statistics/Kernels/Bessel;->a:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    .line 91
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Statistics/Kernels/Bessel;->a:I

    return v0
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Bessel;->b:D

    return-wide v0
.end method

.method public setOrder(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, LCatalano/Statistics/Kernels/Bessel;->a:I

    .line 51
    return-void
.end method

.method public setSigma(D)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Bessel;->b:D

    .line 67
    return-void
.end method
