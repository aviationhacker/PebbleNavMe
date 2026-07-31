.class public final LCatalano/Imaging/Tools/Interpolation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BiCubicKernel(D)D
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 29
    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 31
    neg-double p0, p0

    .line 36
    :cond_0
    cmpg-double v2, p0, v4

    if-gtz v2, :cond_2

    .line 38
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, p0

    sub-double/2addr v0, v8

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    add-double/2addr v0, v4

    .line 45
    :cond_1
    :goto_0
    return-wide v0

    .line 40
    :cond_2
    cmpg-double v2, p0, v6

    if-gez v2, :cond_1

    .line 42
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, p0

    add-double/2addr v0, v8

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    sub-double/2addr v0, v2

    mul-double/2addr v0, p0

    add-double/2addr v0, v6

    goto :goto_0
.end method
