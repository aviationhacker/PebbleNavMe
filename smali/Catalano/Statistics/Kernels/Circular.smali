.class public LCatalano/Statistics/Kernels/Circular;
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
.field private final a:D

.field private b:D


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide v0, 0x3fe45f306dc9c883L    # 0.6366197723675814

    iput-wide v0, p0, LCatalano/Statistics/Kernels/Circular;->a:D

    .line 61
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Circular;->b:D

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 35
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Circular;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 12

    .prologue
    const-wide v10, 0x3fe45f306dc9c883L    # 0.6366197723675814

    const-wide/16 v4, 0x0

    .line 66
    .line 67
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

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 75
    iget-wide v2, p0, LCatalano/Statistics/Kernels/Circular;->b:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    .line 86
    :goto_1
    return-wide v4

    .line 81
    :cond_1
    iget-wide v2, p0, LCatalano/Statistics/Kernels/Circular;->b:D

    div-double/2addr v0, v2

    .line 82
    neg-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    .line 83
    mul-double v4, v10, v0

    .line 84
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v0

    sub-double v0, v6, v0

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double v4, v2, v0

    goto :goto_1
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Circular;->b:D

    return-wide v0
.end method

.method public setSigma(D)V
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Circular;->b:D

    .line 54
    return-void
.end method
