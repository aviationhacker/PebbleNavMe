.class public LCatalano/Imaging/Filters/Artistic/Opacity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:D


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    .line 73
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/Opacity;->a:LCatalano/Imaging/FastBitmap;

    .line 74
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;D)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    .line 82
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/Opacity;->a:LCatalano/Imaging/FastBitmap;

    .line 83
    invoke-virtual {p0, p2, p3}, LCatalano/Imaging/Filters/Artistic/Opacity;->setPercentage(D)V

    .line 84
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 20

    .prologue
    .line 88
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    .line 91
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    int-to-double v4, v4

    .line 93
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    int-to-double v6, v6

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v8

    int-to-double v8, v8

    .line 96
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v10, v2}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v10

    int-to-double v10, v10

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v12, v2}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v12

    int-to-double v12, v12

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v14, v2}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v14

    int-to-double v14, v14

    .line 100
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v4, v4, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    add-double/2addr v4, v10

    .line 101
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    mul-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 102
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    mul-double/2addr v10, v14

    add-double/2addr v8, v10

    .line 104
    double-to-int v4, v4

    double-to-int v5, v6

    double-to-int v6, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Opacity only works in RGB or ARGB images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_1
    return-void
.end method

.method public getOverlay()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, LCatalano/Imaging/Filters/Artistic/Opacity;->a:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public getPercentage()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    return-wide v0
.end method

.method public setOverlay(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/Opacity;->a:LCatalano/Imaging/FastBitmap;

    .line 50
    return-void
.end method

.method public setPercentage(D)V
    .locals 5

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Artistic/Opacity;->b:D

    .line 66
    return-void
.end method
