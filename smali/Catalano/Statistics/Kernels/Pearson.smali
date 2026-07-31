.class public LCatalano/Statistics/Kernels/Pearson;
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

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 73
    invoke-direct {p0, v0, v1, v0, v1}, LCatalano/Statistics/Kernels/Pearson;-><init>(DD)V

    .line 74
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Pearson;->setOmega(D)V

    .line 83
    invoke-virtual {p0, p3, p4}, LCatalano/Statistics/Kernels/Pearson;->setSigma(D)V

    .line 84
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 29
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Pearson;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 12

    .prologue
    .line 90
    const-wide/16 v6, 0x0

    .line 91
    const-wide/16 v4, 0x0

    .line 92
    const-wide/16 v2, 0x0

    .line 93
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 94
    aget-wide v8, p1, v0

    aget-wide v10, p1, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 95
    aget-wide v8, p2, v0

    aget-wide v10, p2, v0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 96
    aget-wide v8, p1, v0

    aget-wide v10, p2, v0

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Pearson;->c:D

    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 100
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v0

    add-double/2addr v0, v4

    iget-wide v4, p0, LCatalano/Statistics/Kernels/Pearson;->a:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public getOmega()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Pearson;->a:D

    return-wide v0
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Pearson;->b:D

    return-wide v0
.end method

.method public setOmega(D)V
    .locals 7

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 48
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Pearson;->a:D

    .line 49
    div-double v0, v2, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    iget-wide v2, p0, LCatalano/Statistics/Kernels/Pearson;->b:D

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Statistics/Kernels/Pearson;->c:D

    .line 50
    return-void
.end method

.method public setSigma(D)V
    .locals 7

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 65
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Pearson;->b:D

    .line 66
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Pearson;->a:D

    div-double v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Statistics/Kernels/Pearson;->c:D

    .line 67
    return-void
.end method
