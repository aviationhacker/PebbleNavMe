.class public LCatalano/Statistics/Kernels/ChiSquare;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
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

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/ChiSquare;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 12

    .prologue
    .line 41
    const-wide/16 v2, 0x0

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 44
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 45
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-wide v8, p1, v0

    aget-wide v10, p2, v0

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    .line 47
    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_0

    .line 48
    mul-double/2addr v4, v4

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    return-wide v0
.end method
