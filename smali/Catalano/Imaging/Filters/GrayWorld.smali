.class public LCatalano/Imaging/Filters/GrayWorld;
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
    .locals 20

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v10

    .line 47
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 48
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_0

    .line 49
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    int-to-double v12, v3

    add-double/2addr v8, v12

    .line 50
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    int-to-double v12, v3

    add-double/2addr v6, v12

    .line 51
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    int-to-double v12, v3

    add-double/2addr v4, v12

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    int-to-double v2, v10

    div-double v2, v8, v2

    .line 54
    int-to-double v8, v10

    div-double/2addr v6, v8

    .line 55
    int-to-double v8, v10

    div-double/2addr v4, v8

    .line 57
    add-double v8, v2, v6

    add-double/2addr v8, v4

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v12

    .line 59
    div-double v12, v8, v2

    .line 60
    div-double v14, v8, v6

    .line 61
    div-double v16, v8, v4

    .line 63
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v10, :cond_5

    .line 64
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v6, v12, v2

    .line 65
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v4, v14, v2

    .line 66
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v16

    .line 68
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v6, v18

    if-lez v9, :cond_1

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 69
    :cond_1
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v4, v18

    if-lez v9, :cond_2

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 70
    :cond_2
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v2, v18

    if-lez v9, :cond_3

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 72
    :cond_3
    double-to-int v6, v6

    double-to-int v4, v4

    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v6, v4, v2}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 63
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    .line 76
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Gray World only works in RGB images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_5
    return-void
.end method
