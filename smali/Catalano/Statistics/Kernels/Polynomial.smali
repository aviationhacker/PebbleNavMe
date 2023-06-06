.class public LCatalano/Statistics/Kernels/Polynomial;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, LCatalano/Statistics/Kernels/Polynomial;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 80
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, LCatalano/Statistics/Kernels/Polynomial;-><init>(ID)V

    .line 81
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, LCatalano/Statistics/Kernels/Polynomial;->setDegree(I)V

    .line 90
    iput-wide p2, p0, LCatalano/Statistics/Kernels/Polynomial;->b:D

    .line 91
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 31
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Polynomial;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 95
    iget-wide v2, p0, LCatalano/Statistics/Kernels/Polynomial;->b:D

    .line 96
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 97
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget v0, p0, LCatalano/Statistics/Kernels/Polynomial;->a:I

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getConstant()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Polynomial;->b:D

    return-wide v0
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LCatalano/Statistics/Kernels/Polynomial;->a:I

    return v0
.end method

.method public setConstant(D)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Polynomial;->b:D

    .line 66
    return-void
.end method

.method public setDegree(I)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Statistics/Kernels/Polynomial;->a:I

    .line 50
    return-void
.end method
