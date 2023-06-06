.class public LCatalano/Statistics/Kernels/BSpline;
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, LCatalano/Statistics/Kernels/BSpline;->a:I

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 35
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/BSpline;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 65
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 66
    iget v0, p0, LCatalano/Statistics/Kernels/BSpline;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 68
    const/4 v0, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 69
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    invoke-static {v1, v4, v5}, LCatalano/Math/Special;->BSpline(ID)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-wide v2
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, LCatalano/Statistics/Kernels/BSpline;->a:I

    return v0
.end method

.method public setOrder(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, LCatalano/Statistics/Kernels/BSpline;->a:I

    .line 53
    return-void
.end method
