.class public LCatalano/Imaging/Filters/LevelsCurve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/Tools/Curve;

.field private b:LCatalano/Imaging/Tools/Curve;

.field private c:LCatalano/Imaging/Tools/Curve;

.field private d:LCatalano/Imaging/Tools/Curve;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, LCatalano/Imaging/Tools/Curve;

    invoke-direct {v0}, LCatalano/Imaging/Tools/Curve;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsCurve;->a:LCatalano/Imaging/Tools/Curve;

    .line 123
    new-instance v0, LCatalano/Imaging/Tools/Curve;

    invoke-direct {v0}, LCatalano/Imaging/Tools/Curve;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsCurve;->b:LCatalano/Imaging/Tools/Curve;

    .line 124
    new-instance v0, LCatalano/Imaging/Tools/Curve;

    invoke-direct {v0}, LCatalano/Imaging/Tools/Curve;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsCurve;->c:LCatalano/Imaging/Tools/Curve;

    .line 125
    new-instance v0, LCatalano/Imaging/Tools/Curve;

    invoke-direct {v0}, LCatalano/Imaging/Tools/Curve;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/LevelsCurve;->d:LCatalano/Imaging/Tools/Curve;

    .line 126
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Tools/Curve;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsCurve;->d:LCatalano/Imaging/Tools/Curve;

    .line 134
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Tools/Curve;LCatalano/Imaging/Tools/Curve;LCatalano/Imaging/Tools/Curve;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsCurve;->a:LCatalano/Imaging/Tools/Curve;

    .line 144
    iput-object p2, p0, LCatalano/Imaging/Filters/LevelsCurve;->b:LCatalano/Imaging/Tools/Curve;

    .line 145
    iput-object p3, p0, LCatalano/Imaging/Filters/LevelsCurve;->c:LCatalano/Imaging/Tools/Curve;

    .line 146
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsCurve;->d:LCatalano/Imaging/Tools/Curve;

    invoke-virtual {v1}, LCatalano/Imaging/Tools/Curve;->makeLut()[I

    move-result-object v1

    .line 154
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 155
    :goto_0
    if-ge v0, v2, :cond_2

    .line 156
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    aget v3, v1, v3

    invoke-virtual {p1, v0, v3}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, LCatalano/Imaging/Filters/LevelsCurve;->a:LCatalano/Imaging/Tools/Curve;

    invoke-virtual {v1}, LCatalano/Imaging/Tools/Curve;->makeLut()[I

    move-result-object v1

    .line 163
    iget-object v2, p0, LCatalano/Imaging/Filters/LevelsCurve;->b:LCatalano/Imaging/Tools/Curve;

    invoke-virtual {v2}, LCatalano/Imaging/Tools/Curve;->makeLut()[I

    move-result-object v2

    .line 164
    iget-object v3, p0, LCatalano/Imaging/Filters/LevelsCurve;->c:LCatalano/Imaging/Tools/Curve;

    invoke-virtual {v3}, LCatalano/Imaging/Tools/Curve;->makeLut()[I

    move-result-object v3

    .line 166
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 167
    :goto_1
    if-ge v0, v4, :cond_2

    .line 168
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v5

    aget v5, v1, v5

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    aget v6, v2, v6

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v7

    aget v7, v3, v7

    invoke-virtual {p1, v0, v5, v6, v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Levels Curve only supports grayscale and rgb images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    return-void
.end method

.method public getCurveBlue()LCatalano/Imaging/Tools/Curve;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsCurve;->c:LCatalano/Imaging/Tools/Curve;

    return-object v0
.end method

.method public getCurveGray()LCatalano/Imaging/Tools/Curve;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsCurve;->d:LCatalano/Imaging/Tools/Curve;

    return-object v0
.end method

.method public getCurveGreen()LCatalano/Imaging/Tools/Curve;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsCurve;->b:LCatalano/Imaging/Tools/Curve;

    return-object v0
.end method

.method public getCurveRed()LCatalano/Imaging/Tools/Curve;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, LCatalano/Imaging/Filters/LevelsCurve;->a:LCatalano/Imaging/Tools/Curve;

    return-object v0
.end method

.method public setCurve(LCatalano/Imaging/Tools/Curve;LCatalano/Imaging/Tools/Curve;LCatalano/Imaging/Tools/Curve;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsCurve;->a:LCatalano/Imaging/Tools/Curve;

    .line 98
    iput-object p2, p0, LCatalano/Imaging/Filters/LevelsCurve;->b:LCatalano/Imaging/Tools/Curve;

    .line 99
    iput-object p3, p0, LCatalano/Imaging/Filters/LevelsCurve;->c:LCatalano/Imaging/Tools/Curve;

    .line 100
    return-void
.end method

.method public setCurveBlue(LCatalano/Imaging/Tools/Curve;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsCurve;->c:LCatalano/Imaging/Tools/Curve;

    .line 88
    return-void
.end method

.method public setCurveGray(LCatalano/Imaging/Tools/Curve;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsCurve;->d:LCatalano/Imaging/Tools/Curve;

    .line 116
    return-void
.end method

.method public setCurveGreen(LCatalano/Imaging/Tools/Curve;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsCurve;->b:LCatalano/Imaging/Tools/Curve;

    .line 72
    return-void
.end method

.method public setCurveRed(LCatalano/Imaging/Tools/Curve;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, LCatalano/Imaging/Filters/LevelsCurve;->a:LCatalano/Imaging/Tools/Curve;

    .line 56
    return-void
.end method
