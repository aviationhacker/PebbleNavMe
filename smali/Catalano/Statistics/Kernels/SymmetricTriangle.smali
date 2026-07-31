.class public LCatalano/Statistics/Kernels/SymmetricTriangle;
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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, LCatalano/Statistics/Kernels/SymmetricTriangle;->a:D

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 31
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/SymmetricTriangle;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 10

    .prologue
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
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, LCatalano/Statistics/Kernels/SymmetricTriangle;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    .line 75
    cmpl-double v2, v0, v4

    if-lez v2, :cond_1

    move-wide v4, v0

    :cond_1
    return-wide v4
.end method

.method public getGamma()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, LCatalano/Statistics/Kernels/SymmetricTriangle;->a:D

    return-wide v0
.end method

.method public setGamma(D)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, LCatalano/Statistics/Kernels/SymmetricTriangle;->a:D

    .line 49
    return-void
.end method
