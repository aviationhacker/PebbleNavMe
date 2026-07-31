.class public LCatalano/Statistics/Kernels/Dirichlet;
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


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, LCatalano/Statistics/Kernels/Dirichlet;->a:I

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

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Dirichlet;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 64
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 65
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 67
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 68
    iget v1, p0, LCatalano/Statistics/Kernels/Dirichlet;->a:I

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 69
    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    .line 70
    div-double v4, v6, v4

    mul-double/2addr v2, v4

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-wide v2
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, LCatalano/Statistics/Kernels/Dirichlet;->a:I

    return v0
.end method

.method public setDimension(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, LCatalano/Statistics/Kernels/Dirichlet;->a:I

    .line 49
    return-void
.end method
