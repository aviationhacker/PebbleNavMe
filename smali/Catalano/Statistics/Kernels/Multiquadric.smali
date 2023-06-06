.class public LCatalano/Statistics/Kernels/Multiquadric;
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
    .line 57
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1}, LCatalano/Statistics/Kernels/Multiquadric;-><init>(D)V

    .line 58
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Multiquadric;->a:D

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 33
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Multiquadric;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 70
    const-wide/16 v2, 0x0

    .line 71
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 73
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 74
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Multiquadric;->a:D

    iget-wide v4, p0, LCatalano/Statistics/Kernels/Multiquadric;->a:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    neg-double v0, v0

    return-wide v0
.end method

.method public getConstant()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Multiquadric;->a:D

    return-wide v0
.end method

.method public setConstant(D)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Multiquadric;->a:D

    .line 51
    return-void
.end method
