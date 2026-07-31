.class public LCatalano/Imaging/Filters/StereoAnaglyph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    .line 102
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    .line 111
    iput-object p2, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->b:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    .line 112
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const-wide v12, 0x3fe2c8b439581062L    # 0.587

    const-wide v10, 0x3fd322d0e5604189L    # 0.299

    const-wide v8, 0x3fbd2f1a9fbe76c9L    # 0.114

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 151
    sget-object v1, LCatalano/Imaging/Filters/StereoAnaglyph$1;->a:[I

    iget-object v3, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->b:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    invoke-virtual {v3}, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 197
    :cond_0
    return-void

    :pswitch_0
    move v1, v0

    .line 153
    :goto_0
    if-ge v1, v2, :cond_0

    .line 154
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v10

    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 156
    iget-object v4, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v10

    iget-object v6, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    iget-object v6, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 157
    invoke-virtual {p1, v1, v3, v0, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :goto_1
    :pswitch_1
    if-ge v0, v2, :cond_0

    .line 163
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v10

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 164
    iget-object v3, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v10

    iget-object v3, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    iget-object v3, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 166
    invoke-virtual {p1, v0, v1, v3, v3}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :goto_2
    :pswitch_2
    if-ge v0, v2, :cond_0

    .line 172
    iget-object v1, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    .line 173
    iget-object v3, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    .line 174
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 175
    invoke-virtual {p1, v0, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 180
    :goto_3
    :pswitch_3
    if-ge v0, v2, :cond_0

    .line 181
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v10

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 182
    iget-object v3, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    .line 183
    iget-object v4, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    .line 184
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 189
    :goto_4
    :pswitch_4
    if-ge v0, v2, :cond_0

    .line 190
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 191
    iget-object v3, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    .line 192
    iget-object v4, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    .line 193
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAlgorithm()LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->b:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    return-object v0
.end method

.method public getOverlayImage()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public setAlgorithm(LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->b:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    .line 128
    return-void
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, LCatalano/Imaging/Filters/StereoAnaglyph;->a:LCatalano/Imaging/FastBitmap;

    .line 144
    return-void
.end method
