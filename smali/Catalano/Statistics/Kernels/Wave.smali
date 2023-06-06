.class public LCatalano/Statistics/Kernels/Wave;
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Wave;->a:D

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 13
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Wave;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 34
    aget-wide v6, p1, v0

    aget-wide v8, p2, v0

    sub-double/2addr v6, v8

    .line 35
    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 39
    iget-wide v2, p0, LCatalano/Statistics/Kernels/Wave;->a:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    cmpl-double v2, v0, v4

    if-nez v2, :cond_2

    .line 42
    :cond_1
    :goto_1
    return-wide v4

    :cond_2
    iget-wide v2, p0, LCatalano/Statistics/Kernels/Wave;->a:D

    div-double/2addr v2, v0

    iget-wide v4, p0, LCatalano/Statistics/Kernels/Wave;->a:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v4, v2, v0

    goto :goto_1
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Wave;->a:D

    return-wide v0
.end method

.method public setSigma(D)V
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Wave;->a:D

    .line 23
    return-void
.end method
