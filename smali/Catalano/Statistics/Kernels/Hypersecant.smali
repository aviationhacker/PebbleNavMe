.class public LCatalano/Statistics/Kernels/Hypersecant;
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
.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Hypersecant;->a:D

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 31
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Hypersecant;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 64
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 65
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 70
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, LCatalano/Statistics/Kernels/Hypersecant;->a:D

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Statistics/Kernels/Hypersecant;->a:D

    neg-double v4, v4

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getGamma()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Hypersecant;->a:D

    return-wide v0
.end method

.method public setGamma(D)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Hypersecant;->a:D

    .line 49
    return-void
.end method
