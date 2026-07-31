.class public LCatalano/Imaging/Filters/ModifiedWhitePatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x80

    iput v0, p0, LCatalano/Imaging/Filters/ModifiedWhitePatch;->a:I

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x80

    iput v0, p0, LCatalano/Imaging/Filters/ModifiedWhitePatch;->a:I

    .line 48
    iput p1, p0, LCatalano/Imaging/Filters/ModifiedWhitePatch;->a:I

    .line 49
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 20

    .prologue
    .line 54
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 56
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v14

    .line 58
    const-wide/16 v12, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    .line 59
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 60
    const/4 v2, 0x0

    move v9, v2

    move v2, v4

    move-wide v4, v12

    :goto_0
    if-ge v9, v14, :cond_3

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/ModifiedWhitePatch;->a:I

    if-le v12, v13, :cond_0

    .line 62
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v4, v12

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 66
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/ModifiedWhitePatch;->a:I

    if-le v12, v13, :cond_1

    .line 67
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v6, v12

    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 71
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/ModifiedWhitePatch;->a:I

    if-le v12, v13, :cond_2

    .line 72
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v10, v12

    .line 73
    add-int/lit8 v8, v8, 0x1

    .line 60
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 77
    :cond_3
    const-wide v12, 0x406fe00000000000L    # 255.0

    int-to-double v0, v2

    move-wide/from16 v16, v0

    div-double v4, v4, v16

    div-double/2addr v12, v4

    .line 78
    const-wide v4, 0x406fe00000000000L    # 255.0

    int-to-double v2, v3

    div-double v2, v6, v2

    div-double v16, v4, v2

    .line 79
    const-wide v2, 0x406fe00000000000L    # 255.0

    int-to-double v4, v8

    div-double v4, v10, v4

    div-double v10, v2, v4

    .line 81
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v14, :cond_8

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v6, v12, v2

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v2

    int-to-double v2, v2

    mul-double v4, v16, v2

    .line 84
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v10

    .line 86
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v6, v18

    if-lez v9, :cond_4

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 87
    :cond_4
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v4, v18

    if-lez v9, :cond_5

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 88
    :cond_5
    const-wide v18, 0x406fe00000000000L    # 255.0

    cmpl-double v9, v2, v18

    if-lez v9, :cond_6

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 90
    :cond_6
    double-to-int v6, v6

    double-to-int v4, v4

    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v6, v4, v2}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 81
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    .line 94
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Modified White Patch only works in RGB images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_8
    return-void
.end method
