.class public LCatalano/Statistics/Kernels/ThinPlateSpline;
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Statistics/Kernels/ThinPlateSpline;->a:D

    .line 51
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Statistics/Kernels/ThinPlateSpline;->a:D

    .line 58
    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/ThinPlateSpline;->setSigma(D)V

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 28
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/ThinPlateSpline;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 64
    const-wide/16 v2, 0x0

    .line 65
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 66
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 67
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-wide v0, p0, LCatalano/Statistics/Kernels/ThinPlateSpline;->a:D

    iget-wide v4, p0, LCatalano/Statistics/Kernels/ThinPlateSpline;->a:D

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Statistics/Kernels/ThinPlateSpline;->a:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, LCatalano/Statistics/Kernels/ThinPlateSpline;->a:D

    return-wide v0
.end method

.method public setSigma(D)V
    .locals 3

    .prologue
    .line 45
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Kernels/ThinPlateSpline;->a:D

    .line 46
    return-void
.end method
