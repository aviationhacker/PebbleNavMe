.class public LCatalano/Statistics/Kernels/HistogramIntersection;
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

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 3

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v0, p0, LCatalano/Statistics/Kernels/HistogramIntersection;->a:D

    .line 39
    iput-wide v0, p0, LCatalano/Statistics/Kernels/HistogramIntersection;->b:D

    .line 47
    iput-wide p1, p0, LCatalano/Statistics/Kernels/HistogramIntersection;->a:D

    .line 48
    iput-wide p3, p0, LCatalano/Statistics/Kernels/HistogramIntersection;->b:D

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 36
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/HistogramIntersection;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 10

    .prologue
    .line 53
    const-wide/16 v2, 0x0

    .line 55
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 57
    aget-wide v4, p1, v0

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, LCatalano/Statistics/Kernels/HistogramIntersection;->a:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    aget-wide v6, p2, v0

    .line 59
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-wide v8, p0, LCatalano/Statistics/Kernels/HistogramIntersection;->b:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 57
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-wide v2
.end method
