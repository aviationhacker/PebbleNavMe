.class public LCatalano/Imaging/Filters/WhitePatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 21

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 46
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v10

    .line 48
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 49
    const/4 v2, 0x0

    move/from16 v20, v2

    move-wide v2, v8

    move/from16 v8, v20

    :goto_0
    if-ge v8, v10, :cond_3

    .line 50
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v9

    int-to-double v12, v9

    cmpl-double v9, v12, v2

    if-lez v9, :cond_0

    .line 51
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    int-to-double v2, v2

    .line 53
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v9

    int-to-double v12, v9

    cmpl-double v9, v12, v4

    if-lez v9, :cond_1

    .line 54
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    int-to-double v4, v4

    .line 56
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v9

    int-to-double v12, v9

    cmpl-double v9, v12, v6

    if-lez v9, :cond_2

    .line 57
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    int-to-double v6, v6

    .line 49
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 60
    :cond_3
    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v12, v8, v2

    .line 61
    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double v14, v2, v4

    .line 62
    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double v16, v2, v6

    .line 64
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v10, :cond_8

    .line 65
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v6, v12, v2

    .line 66
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v4, v14, v2

    .line 67
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v16

    .line 69
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v6, v18

    if-lez v9, :cond_4

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 70
    :cond_4
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v4, v18

    if-lez v9, :cond_5

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 71
    :cond_5
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v2, v18

    if-lez v9, :cond_6

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 73
    :cond_6
    double-to-int v6, v6

    double-to-int v4, v4

    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v6, v4, v2}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 64
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    .line 77
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "White Patch only works in RGB space."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_8
    return-void
.end method
