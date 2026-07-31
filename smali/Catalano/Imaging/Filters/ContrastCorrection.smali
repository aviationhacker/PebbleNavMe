.class public LCatalano/Imaging/Filters/ContrastCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/Filters/LevelsLinear;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, LCatalano/Imaging/Filters/LevelsLinear;

    invoke-direct {v0}, LCatalano/Imaging/Filters/LevelsLinear;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    .line 38
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->b:I

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, LCatalano/Imaging/Filters/LevelsLinear;

    invoke-direct {v0}, LCatalano/Imaging/Filters/LevelsLinear;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    .line 38
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->b:I

    .line 91
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/ContrastCorrection;->setFactor(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/LevelsLinear;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 97
    return-void
.end method

.method public getFactor()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->b:I

    return v0
.end method

.method public setFactor(I)V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 53
    const/16 v0, -0x7f

    const/16 v1, 0x7f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->b:I

    .line 55
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 57
    iget-object v1, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v2, LCatalano/Core/IntRange;

    rsub-int v3, v0, 0xff

    invoke-direct {v2, v0, v3}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/LevelsLinear;->setInRed(LCatalano/Core/IntRange;)V

    .line 58
    iget-object v1, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v2, LCatalano/Core/IntRange;

    rsub-int v3, v0, 0xff

    invoke-direct {v2, v0, v3}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/LevelsLinear;->setInGreen(LCatalano/Core/IntRange;)V

    .line 59
    iget-object v1, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v2, LCatalano/Core/IntRange;

    rsub-int v3, v0, 0xff

    invoke-direct {v2, v0, v3}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/LevelsLinear;->setInBlue(LCatalano/Core/IntRange;)V

    .line 60
    iget-object v1, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v2, LCatalano/Core/IntRange;

    rsub-int v3, v0, 0xff

    invoke-direct {v2, v0, v3}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/LevelsLinear;->setInGray(LCatalano/Core/IntRange;)V

    .line 62
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v1, LCatalano/Core/IntRange;

    invoke-direct {v1, v5, v6}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->setOutRed(LCatalano/Core/IntRange;)V

    .line 63
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v1, LCatalano/Core/IntRange;

    invoke-direct {v1, v5, v6}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->setOutGreen(LCatalano/Core/IntRange;)V

    .line 64
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v1, LCatalano/Core/IntRange;

    invoke-direct {v1, v5, v6}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->setOutBlue(LCatalano/Core/IntRange;)V

    .line 65
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v1, LCatalano/Core/IntRange;

    invoke-direct {v1, v5, v6}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->setOutGray(LCatalano/Core/IntRange;)V

    .line 79
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v2, LCatalano/Core/IntRange;

    neg-int v3, v0

    add-int/lit16 v4, v0, 0xff

    invoke-direct {v2, v3, v4}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/LevelsLinear;->setInRed(LCatalano/Core/IntRange;)V

    .line 70
    iget-object v1, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v2, LCatalano/Core/IntRange;

    neg-int v3, v0

    add-int/lit16 v4, v0, 0xff

    invoke-direct {v2, v3, v4}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/LevelsLinear;->setInGreen(LCatalano/Core/IntRange;)V

    .line 71
    iget-object v1, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v2, LCatalano/Core/IntRange;

    neg-int v3, v0

    add-int/lit16 v4, v0, 0xff

    invoke-direct {v2, v3, v4}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/LevelsLinear;->setInBlue(LCatalano/Core/IntRange;)V

    .line 72
    iget-object v1, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v2, LCatalano/Core/IntRange;

    neg-int v3, v0

    add-int/lit16 v0, v0, 0xff

    invoke-direct {v2, v3, v0}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v1, v2}, LCatalano/Imaging/Filters/LevelsLinear;->setInGray(LCatalano/Core/IntRange;)V

    .line 74
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v1, LCatalano/Core/IntRange;

    invoke-direct {v1, v5, v6}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->setOutRed(LCatalano/Core/IntRange;)V

    .line 75
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v1, LCatalano/Core/IntRange;

    invoke-direct {v1, v5, v6}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->setOutGreen(LCatalano/Core/IntRange;)V

    .line 76
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v1, LCatalano/Core/IntRange;

    invoke-direct {v1, v5, v6}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->setOutBlue(LCatalano/Core/IntRange;)V

    .line 77
    iget-object v0, p0, LCatalano/Imaging/Filters/ContrastCorrection;->a:LCatalano/Imaging/Filters/LevelsLinear;

    new-instance v1, LCatalano/Core/IntRange;

    invoke-direct {v1, v5, v6}, LCatalano/Core/IntRange;-><init>(II)V

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/LevelsLinear;->setOutGray(LCatalano/Core/IntRange;)V

    goto :goto_0
.end method
