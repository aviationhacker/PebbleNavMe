.class public LCatalano/Statistics/Kernels/Spherical;
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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Spherical;->a:D

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 32
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Spherical;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 67
    .line 68
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    aget-wide v6, p1, v0

    aget-wide v8, p2, v0

    sub-double/2addr v6, v8

    .line 70
    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 75
    iget-wide v2, p0, LCatalano/Statistics/Kernels/Spherical;->a:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    .line 80
    :goto_1
    return-wide v4

    .line 79
    :cond_1
    iget-wide v2, p0, LCatalano/Statistics/Kernels/Spherical;->a:D

    div-double/2addr v0, v2

    .line 80
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    mul-double/2addr v0, v4

    add-double v4, v2, v0

    goto :goto_1
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Spherical;->a:D

    return-wide v0
.end method

.method public setDegree(D)V
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Spherical;->a:D

    .line 50
    return-void
.end method
