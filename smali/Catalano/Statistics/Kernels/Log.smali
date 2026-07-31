.class public LCatalano/Statistics/Kernels/Log;
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


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 32
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Log;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 59
    const-wide/16 v2, 0x0

    .line 61
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 64
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Log;->a:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method public getDegree()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Log;->a:D

    return-wide v0
.end method

.method public setDegree(D)V
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Log;->a:D

    .line 50
    return-void
.end method
