.class public LCatalano/Statistics/Kernels/Cauchy;
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Statistics/Kernels/Cauchy;->a:D

    .line 62
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Cauchy;->a:D

    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 36
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Cauchy;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 10

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 76
    if-ne p1, p2, :cond_0

    move-wide v0, v4

    .line 85
    :goto_0
    return-wide v0

    .line 78
    :cond_0
    const-wide/16 v2, 0x0

    .line 79
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 81
    aget-wide v6, p1, v0

    aget-wide v8, p2, v0

    sub-double/2addr v6, v8

    .line 82
    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Cauchy;->a:D

    div-double v0, v2, v0

    add-double/2addr v0, v4

    div-double v0, v4, v0

    goto :goto_0
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Cauchy;->a:D

    return-wide v0
.end method

.method public setSigma(D)V
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Cauchy;->a:D

    .line 54
    return-void
.end method
