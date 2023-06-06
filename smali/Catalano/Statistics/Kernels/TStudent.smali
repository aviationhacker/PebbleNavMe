.class public LCatalano/Statistics/Kernels/TStudent;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, LCatalano/Statistics/Kernels/TStudent;->a:I

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 32
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/TStudent;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 67
    const-wide/16 v2, 0x0

    .line 68
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 70
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 74
    iget v2, p0, LCatalano/Statistics/Kernels/TStudent;->a:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v8

    div-double v0, v8, v0

    return-wide v0
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LCatalano/Statistics/Kernels/TStudent;->a:I

    return v0
.end method

.method public setDegree(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, LCatalano/Statistics/Kernels/TStudent;->a:I

    .line 50
    return-void
.end method
